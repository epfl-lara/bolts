; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528186 () Bool)

(assert start!528186)

(declare-fun b!4998591 () Bool)

(declare-fun e!3123613 () Bool)

(declare-fun tp!1401874 () Bool)

(assert (=> b!4998591 (= e!3123613 tp!1401874)))

(declare-fun b!4998592 () Bool)

(declare-fun e!3123604 () Bool)

(declare-fun tp!1401876 () Bool)

(assert (=> b!4998592 (= e!3123604 tp!1401876)))

(declare-fun b!4998593 () Bool)

(declare-fun tp!1401872 () Bool)

(declare-fun tp!1401875 () Bool)

(assert (=> b!4998593 (= e!3123604 (and tp!1401872 tp!1401875))))

(declare-fun b!4998594 () Bool)

(declare-fun e!3123614 () Bool)

(declare-datatypes ((C!27796 0))(
  ( (C!27797 (val!23264 Int)) )
))
(declare-datatypes ((Regex!13773 0))(
  ( (ElementMatch!13773 (c!853067 C!27796)) (Concat!22566 (regOne!28058 Regex!13773) (regTwo!28058 Regex!13773)) (EmptyExpr!13773) (Star!13773 (reg!14102 Regex!13773)) (EmptyLang!13773) (Union!13773 (regOne!28059 Regex!13773) (regTwo!28059 Regex!13773)) )
))
(declare-fun r!12727 () Regex!13773)

(declare-datatypes ((List!57923 0))(
  ( (Nil!57799) (Cons!57799 (h!64247 C!27796) (t!370263 List!57923)) )
))
(declare-datatypes ((tuple2!62924 0))(
  ( (tuple2!62925 (_1!34765 List!57923) (_2!34765 List!57923)) )
))
(declare-fun lt!2067500 () tuple2!62924)

(declare-fun matchR!6741 (Regex!13773 List!57923) Bool)

(assert (=> b!4998594 (= e!3123614 (matchR!6741 r!12727 (_1!34765 lt!2067500)))))

(declare-fun b!4998595 () Bool)

(declare-fun e!3123606 () Bool)

(declare-fun lt!2067501 () tuple2!62924)

(declare-fun isEmpty!31282 (List!57923) Bool)

(assert (=> b!4998595 (= e!3123606 (not (isEmpty!31282 (_1!34765 lt!2067501))))))

(declare-fun b!4998596 () Bool)

(declare-fun e!3123603 () Bool)

(declare-fun e!3123599 () Bool)

(assert (=> b!4998596 (= e!3123603 e!3123599)))

(declare-fun res!2133042 () Bool)

(assert (=> b!4998596 (=> (not res!2133042) (not e!3123599))))

(declare-fun lt!2067502 () List!57923)

(declare-fun lt!2067491 () List!57923)

(assert (=> b!4998596 (= res!2133042 (= lt!2067502 lt!2067491))))

(declare-fun lt!2067498 () List!57923)

(declare-fun lt!2067484 () List!57923)

(declare-fun ++!12619 (List!57923 List!57923) List!57923)

(assert (=> b!4998596 (= lt!2067502 (++!12619 lt!2067498 lt!2067484))))

(declare-datatypes ((IArray!30645 0))(
  ( (IArray!30646 (innerList!15380 List!57923)) )
))
(declare-datatypes ((Conc!15292 0))(
  ( (Node!15292 (left!42272 Conc!15292) (right!42602 Conc!15292) (csize!30814 Int) (cheight!15503 Int)) (Leaf!25387 (xs!18618 IArray!30645) (csize!30815 Int)) (Empty!15292) )
))
(declare-datatypes ((BalanceConc!30014 0))(
  ( (BalanceConc!30015 (c!853068 Conc!15292)) )
))
(declare-datatypes ((tuple2!62926 0))(
  ( (tuple2!62927 (_1!34766 BalanceConc!30014) (_2!34766 BalanceConc!30014)) )
))
(declare-fun lt!2067477 () tuple2!62926)

(declare-fun list!18588 (BalanceConc!30014) List!57923)

(assert (=> b!4998596 (= lt!2067484 (list!18588 (_2!34766 lt!2067477)))))

(assert (=> b!4998596 (= lt!2067498 (list!18588 (_1!34766 lt!2067477)))))

(declare-fun findLongestMatch!1786 (Regex!13773 List!57923) tuple2!62924)

(assert (=> b!4998596 (= lt!2067501 (findLongestMatch!1786 r!12727 lt!2067491))))

(declare-fun lt!2067480 () Int)

(declare-fun lt!2067494 () Int)

(declare-fun input!5597 () BalanceConc!30014)

(declare-fun size!38408 (BalanceConc!30014) Int)

(assert (=> b!4998596 (= lt!2067480 (- lt!2067494 (size!38408 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!30014)

(assert (=> b!4998596 (= lt!2067494 (size!38408 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57924 0))(
  ( (Nil!57800) (Cons!57800 (h!64248 Regex!13773) (t!370264 List!57924)) )
))
(declare-datatypes ((Context!6396 0))(
  ( (Context!6397 (exprs!3698 List!57924)) )
))
(declare-fun z!4183 () (InoxSet Context!6396))

(declare-fun findLongestMatchZipperFastV2!75 ((InoxSet Context!6396) BalanceConc!30014 BalanceConc!30014) tuple2!62926)

(assert (=> b!4998596 (= lt!2067477 (findLongestMatchZipperFastV2!75 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4998597 () Bool)

(declare-fun tp!1401877 () Bool)

(declare-fun tp!1401871 () Bool)

(assert (=> b!4998597 (= e!3123604 (and tp!1401877 tp!1401871))))

(declare-fun setIsEmpty!28308 () Bool)

(declare-fun setRes!28308 () Bool)

(assert (=> setIsEmpty!28308 setRes!28308))

(declare-fun lt!2067499 () Int)

(declare-fun b!4998598 () Bool)

(declare-fun e!3123611 () Bool)

(declare-fun lt!2067483 () List!57923)

(declare-fun matchZipper!545 ((InoxSet Context!6396) List!57923) Bool)

(declare-fun take!634 (List!57923 Int) List!57923)

(declare-fun drop!2436 (List!57923 Int) List!57923)

(assert (=> b!4998598 (= e!3123611 (matchZipper!545 z!4183 (take!634 (drop!2436 lt!2067483 lt!2067480) lt!2067499)))))

(declare-fun b!4998599 () Bool)

(declare-fun e!3123600 () Bool)

(declare-fun e!3123615 () Bool)

(assert (=> b!4998599 (= e!3123600 e!3123615)))

(declare-fun res!2133045 () Bool)

(assert (=> b!4998599 (=> (not res!2133045) (not e!3123615))))

(declare-datatypes ((List!57925 0))(
  ( (Nil!57801) (Cons!57801 (h!64249 Context!6396) (t!370265 List!57925)) )
))
(declare-fun lt!2067486 () List!57925)

(declare-fun unfocusZipper!300 (List!57925) Regex!13773)

(assert (=> b!4998599 (= res!2133045 (= (unfocusZipper!300 lt!2067486) r!12727))))

(declare-fun toList!8058 ((InoxSet Context!6396)) List!57925)

(assert (=> b!4998599 (= lt!2067486 (toList!8058 z!4183))))

(declare-fun b!4998600 () Bool)

(declare-fun e!3123608 () Bool)

(declare-fun isEmpty!31283 (BalanceConc!30014) Bool)

(assert (=> b!4998600 (= e!3123608 (not (isEmpty!31283 (_1!34766 lt!2067477))))))

(declare-fun b!4998601 () Bool)

(assert (=> b!4998601 (= e!3123615 e!3123603)))

(declare-fun res!2133041 () Bool)

(assert (=> b!4998601 (=> (not res!2133041) (not e!3123603))))

(declare-fun isSuffix!1339 (List!57923 List!57923) Bool)

(assert (=> b!4998601 (= res!2133041 (isSuffix!1339 lt!2067491 lt!2067483))))

(assert (=> b!4998601 (= lt!2067483 (list!18588 totalInput!1012))))

(assert (=> b!4998601 (= lt!2067491 (list!18588 input!5597))))

(declare-fun b!4998602 () Bool)

(declare-fun e!3123601 () Bool)

(declare-fun tp!1401873 () Bool)

(declare-fun inv!75895 (Conc!15292) Bool)

(assert (=> b!4998602 (= e!3123601 (and (inv!75895 (c!853068 totalInput!1012)) tp!1401873))))

(declare-fun b!4998603 () Bool)

(declare-fun e!3123607 () Bool)

(assert (=> b!4998603 (= e!3123607 true)))

(declare-fun lt!2067478 () List!57923)

(assert (=> b!4998603 (= lt!2067478 (_1!34765 lt!2067501))))

(declare-datatypes ((Unit!148961 0))(
  ( (Unit!148962) )
))
(declare-fun lt!2067492 () Unit!148961)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1263 (List!57923 List!57923 List!57923) Unit!148961)

(assert (=> b!4998603 (= lt!2067492 (lemmaIsPrefixSameLengthThenSameList!1263 lt!2067478 (_1!34765 lt!2067501) lt!2067491))))

(declare-fun lt!2067496 () Int)

(declare-fun isPrefix!5326 (List!57923 List!57923) Bool)

(assert (=> b!4998603 (isPrefix!5326 (take!634 lt!2067491 lt!2067496) lt!2067491)))

(declare-fun lt!2067490 () Unit!148961)

(declare-fun lemmaTakeIsPrefix!128 (List!57923 Int) Unit!148961)

(assert (=> b!4998603 (= lt!2067490 (lemmaTakeIsPrefix!128 lt!2067491 lt!2067496))))

(declare-fun b!4998604 () Bool)

(declare-fun e!3123602 () Bool)

(declare-fun e!3123610 () Bool)

(assert (=> b!4998604 (= e!3123602 (not e!3123610))))

(declare-fun res!2133043 () Bool)

(assert (=> b!4998604 (=> res!2133043 e!3123610)))

(assert (=> b!4998604 (= res!2133043 e!3123608)))

(declare-fun res!2133044 () Bool)

(assert (=> b!4998604 (=> (not res!2133044) (not e!3123608))))

(declare-fun lt!2067479 () Bool)

(assert (=> b!4998604 (= res!2133044 (not lt!2067479))))

(assert (=> b!4998604 (= lt!2067479 (matchZipper!545 z!4183 lt!2067498))))

(assert (=> b!4998604 e!3123614))

(declare-fun res!2133033 () Bool)

(assert (=> b!4998604 (=> res!2133033 e!3123614)))

(assert (=> b!4998604 (= res!2133033 (isEmpty!31282 (_1!34765 lt!2067500)))))

(declare-fun findLongestMatchInner!1962 (Regex!13773 List!57923 Int List!57923 List!57923 Int) tuple2!62924)

(declare-fun size!38409 (List!57923) Int)

(assert (=> b!4998604 (= lt!2067500 (findLongestMatchInner!1962 r!12727 Nil!57799 (size!38409 Nil!57799) lt!2067491 lt!2067491 (size!38409 lt!2067491)))))

(declare-fun lt!2067497 () Unit!148961)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1919 (Regex!13773 List!57923) Unit!148961)

(assert (=> b!4998604 (= lt!2067497 (longestMatchIsAcceptedByMatchOrIsEmpty!1919 r!12727 lt!2067491))))

(assert (=> b!4998604 e!3123611))

(declare-fun res!2133035 () Bool)

(assert (=> b!4998604 (=> res!2133035 e!3123611)))

(assert (=> b!4998604 (= res!2133035 (= lt!2067499 0))))

(declare-fun findLongestMatchInnerZipperFastV2!113 ((InoxSet Context!6396) Int BalanceConc!30014 Int) Int)

(assert (=> b!4998604 (= lt!2067499 (findLongestMatchInnerZipperFastV2!113 z!4183 lt!2067480 totalInput!1012 lt!2067494))))

(declare-fun lt!2067485 () Unit!148961)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!36 ((InoxSet Context!6396) Int BalanceConc!30014) Unit!148961)

(assert (=> b!4998604 (= lt!2067485 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!36 z!4183 lt!2067480 totalInput!1012))))

(assert (=> b!4998604 (isPrefix!5326 (take!634 lt!2067483 lt!2067480) lt!2067483)))

(declare-fun lt!2067488 () Unit!148961)

(assert (=> b!4998604 (= lt!2067488 (lemmaTakeIsPrefix!128 lt!2067483 lt!2067480))))

(declare-fun lt!2067489 () List!57923)

(assert (=> b!4998604 (isPrefix!5326 (_1!34765 lt!2067501) lt!2067489)))

(declare-fun lt!2067487 () Unit!148961)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3424 (List!57923 List!57923) Unit!148961)

(assert (=> b!4998604 (= lt!2067487 (lemmaConcatTwoListThenFirstIsPrefix!3424 (_1!34765 lt!2067501) (_2!34765 lt!2067501)))))

(assert (=> b!4998604 (isPrefix!5326 lt!2067498 lt!2067502)))

(declare-fun lt!2067493 () Unit!148961)

(assert (=> b!4998604 (= lt!2067493 (lemmaConcatTwoListThenFirstIsPrefix!3424 lt!2067498 lt!2067484))))

(declare-fun b!4998605 () Bool)

(declare-fun e!3123605 () Bool)

(declare-fun tp!1401870 () Bool)

(assert (=> b!4998605 (= e!3123605 (and (inv!75895 (c!853068 input!5597)) tp!1401870))))

(declare-fun b!4998606 () Bool)

(assert (=> b!4998606 (= e!3123599 e!3123602)))

(declare-fun res!2133040 () Bool)

(assert (=> b!4998606 (=> (not res!2133040) (not e!3123602))))

(assert (=> b!4998606 (= res!2133040 (= lt!2067489 lt!2067491))))

(assert (=> b!4998606 (= lt!2067489 (++!12619 (_1!34765 lt!2067501) (_2!34765 lt!2067501)))))

(declare-fun b!4998607 () Bool)

(declare-fun tp_is_empty!36543 () Bool)

(assert (=> b!4998607 (= e!3123604 tp_is_empty!36543)))

(declare-fun b!4998608 () Bool)

(declare-fun e!3123612 () Bool)

(assert (=> b!4998608 (= e!3123612 e!3123607)))

(declare-fun res!2133039 () Bool)

(assert (=> b!4998608 (=> res!2133039 e!3123607)))

(declare-fun lt!2067476 () List!57923)

(assert (=> b!4998608 (= res!2133039 (not (= lt!2067476 lt!2067491)))))

(assert (=> b!4998608 (= lt!2067478 (take!634 lt!2067476 lt!2067496))))

(assert (=> b!4998608 (= lt!2067476 (drop!2436 lt!2067483 lt!2067480))))

(declare-fun b!4998609 () Bool)

(declare-fun e!3123609 () Bool)

(assert (=> b!4998609 (= e!3123610 e!3123609)))

(declare-fun res!2133037 () Bool)

(assert (=> b!4998609 (=> res!2133037 e!3123609)))

(assert (=> b!4998609 (= res!2133037 e!3123606)))

(declare-fun res!2133036 () Bool)

(assert (=> b!4998609 (=> (not res!2133036) (not e!3123606))))

(declare-fun lt!2067481 () Bool)

(assert (=> b!4998609 (= res!2133036 (not lt!2067481))))

(assert (=> b!4998609 (= lt!2067481 (matchR!6741 r!12727 (_1!34765 lt!2067501)))))

(declare-fun b!4998610 () Bool)

(assert (=> b!4998610 (= e!3123609 e!3123612)))

(declare-fun res!2133038 () Bool)

(assert (=> b!4998610 (=> res!2133038 e!3123612)))

(assert (=> b!4998610 (= res!2133038 (<= lt!2067496 (size!38408 (_1!34766 lt!2067477))))))

(assert (=> b!4998610 (= lt!2067496 (size!38409 (_1!34765 lt!2067501)))))

(assert (=> b!4998610 (= (matchR!6741 r!12727 lt!2067498) lt!2067479)))

(declare-fun lt!2067495 () Unit!148961)

(declare-fun theoremZipperRegexEquiv!151 ((InoxSet Context!6396) List!57925 Regex!13773 List!57923) Unit!148961)

(assert (=> b!4998610 (= lt!2067495 (theoremZipperRegexEquiv!151 z!4183 lt!2067486 r!12727 lt!2067498))))

(assert (=> b!4998610 (= lt!2067481 (matchZipper!545 z!4183 (_1!34765 lt!2067501)))))

(declare-fun lt!2067482 () Unit!148961)

(assert (=> b!4998610 (= lt!2067482 (theoremZipperRegexEquiv!151 z!4183 lt!2067486 r!12727 (_1!34765 lt!2067501)))))

(declare-fun tp!1401878 () Bool)

(declare-fun setNonEmpty!28308 () Bool)

(declare-fun setElem!28308 () Context!6396)

(declare-fun inv!75896 (Context!6396) Bool)

(assert (=> setNonEmpty!28308 (= setRes!28308 (and tp!1401878 (inv!75896 setElem!28308) e!3123613))))

(declare-fun setRest!28308 () (InoxSet Context!6396))

(assert (=> setNonEmpty!28308 (= z!4183 ((_ map or) (store ((as const (Array Context!6396 Bool)) false) setElem!28308 true) setRest!28308))))

(declare-fun res!2133034 () Bool)

(assert (=> start!528186 (=> (not res!2133034) (not e!3123600))))

(declare-fun validRegex!6070 (Regex!13773) Bool)

(assert (=> start!528186 (= res!2133034 (validRegex!6070 r!12727))))

(assert (=> start!528186 e!3123600))

(assert (=> start!528186 e!3123604))

(declare-fun inv!75897 (BalanceConc!30014) Bool)

(assert (=> start!528186 (and (inv!75897 input!5597) e!3123605)))

(declare-fun condSetEmpty!28308 () Bool)

(assert (=> start!528186 (= condSetEmpty!28308 (= z!4183 ((as const (Array Context!6396 Bool)) false)))))

(assert (=> start!528186 setRes!28308))

(assert (=> start!528186 (and (inv!75897 totalInput!1012) e!3123601)))

(assert (= (and start!528186 res!2133034) b!4998599))

(assert (= (and b!4998599 res!2133045) b!4998601))

(assert (= (and b!4998601 res!2133041) b!4998596))

(assert (= (and b!4998596 res!2133042) b!4998606))

(assert (= (and b!4998606 res!2133040) b!4998604))

(assert (= (and b!4998604 (not res!2133035)) b!4998598))

(assert (= (and b!4998604 (not res!2133033)) b!4998594))

(assert (= (and b!4998604 res!2133044) b!4998600))

(assert (= (and b!4998604 (not res!2133043)) b!4998609))

(assert (= (and b!4998609 res!2133036) b!4998595))

(assert (= (and b!4998609 (not res!2133037)) b!4998610))

(assert (= (and b!4998610 (not res!2133038)) b!4998608))

(assert (= (and b!4998608 (not res!2133039)) b!4998603))

(get-info :version)

(assert (= (and start!528186 ((_ is ElementMatch!13773) r!12727)) b!4998607))

(assert (= (and start!528186 ((_ is Concat!22566) r!12727)) b!4998597))

(assert (= (and start!528186 ((_ is Star!13773) r!12727)) b!4998592))

(assert (= (and start!528186 ((_ is Union!13773) r!12727)) b!4998593))

(assert (= start!528186 b!4998605))

(assert (= (and start!528186 condSetEmpty!28308) setIsEmpty!28308))

(assert (= (and start!528186 (not condSetEmpty!28308)) setNonEmpty!28308))

(assert (= setNonEmpty!28308 b!4998591))

(assert (= start!528186 b!4998602))

(declare-fun m!6031858 () Bool)

(assert (=> setNonEmpty!28308 m!6031858))

(declare-fun m!6031860 () Bool)

(assert (=> b!4998606 m!6031860))

(declare-fun m!6031862 () Bool)

(assert (=> b!4998596 m!6031862))

(declare-fun m!6031864 () Bool)

(assert (=> b!4998596 m!6031864))

(declare-fun m!6031866 () Bool)

(assert (=> b!4998596 m!6031866))

(declare-fun m!6031868 () Bool)

(assert (=> b!4998596 m!6031868))

(declare-fun m!6031870 () Bool)

(assert (=> b!4998596 m!6031870))

(declare-fun m!6031872 () Bool)

(assert (=> b!4998596 m!6031872))

(declare-fun m!6031874 () Bool)

(assert (=> b!4998596 m!6031874))

(declare-fun m!6031876 () Bool)

(assert (=> b!4998595 m!6031876))

(declare-fun m!6031878 () Bool)

(assert (=> b!4998609 m!6031878))

(declare-fun m!6031880 () Bool)

(assert (=> b!4998599 m!6031880))

(declare-fun m!6031882 () Bool)

(assert (=> b!4998599 m!6031882))

(declare-fun m!6031884 () Bool)

(assert (=> b!4998601 m!6031884))

(declare-fun m!6031886 () Bool)

(assert (=> b!4998601 m!6031886))

(declare-fun m!6031888 () Bool)

(assert (=> b!4998601 m!6031888))

(declare-fun m!6031890 () Bool)

(assert (=> b!4998610 m!6031890))

(declare-fun m!6031892 () Bool)

(assert (=> b!4998610 m!6031892))

(declare-fun m!6031894 () Bool)

(assert (=> b!4998610 m!6031894))

(declare-fun m!6031896 () Bool)

(assert (=> b!4998610 m!6031896))

(declare-fun m!6031898 () Bool)

(assert (=> b!4998610 m!6031898))

(declare-fun m!6031900 () Bool)

(assert (=> b!4998610 m!6031900))

(declare-fun m!6031902 () Bool)

(assert (=> b!4998598 m!6031902))

(assert (=> b!4998598 m!6031902))

(declare-fun m!6031904 () Bool)

(assert (=> b!4998598 m!6031904))

(assert (=> b!4998598 m!6031904))

(declare-fun m!6031906 () Bool)

(assert (=> b!4998598 m!6031906))

(declare-fun m!6031908 () Bool)

(assert (=> b!4998594 m!6031908))

(declare-fun m!6031910 () Bool)

(assert (=> b!4998608 m!6031910))

(assert (=> b!4998608 m!6031902))

(declare-fun m!6031912 () Bool)

(assert (=> b!4998603 m!6031912))

(declare-fun m!6031914 () Bool)

(assert (=> b!4998603 m!6031914))

(assert (=> b!4998603 m!6031914))

(declare-fun m!6031916 () Bool)

(assert (=> b!4998603 m!6031916))

(declare-fun m!6031918 () Bool)

(assert (=> b!4998603 m!6031918))

(declare-fun m!6031920 () Bool)

(assert (=> b!4998602 m!6031920))

(declare-fun m!6031922 () Bool)

(assert (=> b!4998605 m!6031922))

(declare-fun m!6031924 () Bool)

(assert (=> b!4998604 m!6031924))

(declare-fun m!6031926 () Bool)

(assert (=> b!4998604 m!6031926))

(assert (=> b!4998604 m!6031924))

(declare-fun m!6031928 () Bool)

(assert (=> b!4998604 m!6031928))

(declare-fun m!6031930 () Bool)

(assert (=> b!4998604 m!6031930))

(declare-fun m!6031932 () Bool)

(assert (=> b!4998604 m!6031932))

(declare-fun m!6031934 () Bool)

(assert (=> b!4998604 m!6031934))

(declare-fun m!6031936 () Bool)

(assert (=> b!4998604 m!6031936))

(assert (=> b!4998604 m!6031928))

(declare-fun m!6031938 () Bool)

(assert (=> b!4998604 m!6031938))

(declare-fun m!6031940 () Bool)

(assert (=> b!4998604 m!6031940))

(declare-fun m!6031942 () Bool)

(assert (=> b!4998604 m!6031942))

(declare-fun m!6031944 () Bool)

(assert (=> b!4998604 m!6031944))

(declare-fun m!6031946 () Bool)

(assert (=> b!4998604 m!6031946))

(declare-fun m!6031948 () Bool)

(assert (=> b!4998604 m!6031948))

(declare-fun m!6031950 () Bool)

(assert (=> b!4998604 m!6031950))

(assert (=> b!4998604 m!6031948))

(declare-fun m!6031952 () Bool)

(assert (=> b!4998604 m!6031952))

(declare-fun m!6031954 () Bool)

(assert (=> start!528186 m!6031954))

(declare-fun m!6031956 () Bool)

(assert (=> start!528186 m!6031956))

(declare-fun m!6031958 () Bool)

(assert (=> start!528186 m!6031958))

(declare-fun m!6031960 () Bool)

(assert (=> b!4998600 m!6031960))

(check-sat (not b!4998595) (not b!4998604) (not b!4998592) (not start!528186) (not b!4998591) (not b!4998599) (not b!4998610) (not b!4998597) (not b!4998602) (not b!4998603) (not setNonEmpty!28308) (not b!4998609) (not b!4998600) (not b!4998596) (not b!4998601) tp_is_empty!36543 (not b!4998593) (not b!4998606) (not b!4998594) (not b!4998608) (not b!4998598) (not b!4998605))
(check-sat)
