; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209642 () Bool)

(assert start!209642)

(declare-fun b!2161430 () Bool)

(declare-fun e!1383151 () Bool)

(declare-fun e!1383144 () Bool)

(assert (=> b!2161430 (= e!1383151 e!1383144)))

(declare-fun res!931508 () Bool)

(assert (=> b!2161430 (=> res!931508 e!1383144)))

(declare-fun e!1383153 () Bool)

(assert (=> b!2161430 (= res!931508 e!1383153)))

(declare-fun res!931504 () Bool)

(assert (=> b!2161430 (=> (not res!931504) (not e!1383153))))

(declare-fun lt!804647 () Bool)

(assert (=> b!2161430 (= res!931504 (not lt!804647))))

(declare-datatypes ((C!12124 0))(
  ( (C!12125 (val!7048 Int)) )
))
(declare-datatypes ((Regex!5989 0))(
  ( (ElementMatch!5989 (c!341986 C!12124)) (Concat!10291 (regOne!12490 Regex!5989) (regTwo!12490 Regex!5989)) (EmptyExpr!5989) (Star!5989 (reg!6318 Regex!5989)) (EmptyLang!5989) (Union!5989 (regOne!12491 Regex!5989) (regTwo!12491 Regex!5989)) )
))
(declare-fun r!12534 () Regex!5989)

(declare-datatypes ((List!25180 0))(
  ( (Nil!25096) (Cons!25096 (h!30497 C!12124) (t!197728 List!25180)) )
))
(declare-datatypes ((tuple2!24822 0))(
  ( (tuple2!24823 (_1!14781 List!25180) (_2!14781 List!25180)) )
))
(declare-fun lt!804631 () tuple2!24822)

(declare-fun matchR!2750 (Regex!5989 List!25180) Bool)

(assert (=> b!2161430 (= lt!804647 (matchR!2750 r!12534 (_1!14781 lt!804631)))))

(declare-fun b!2161432 () Bool)

(declare-fun e!1383140 () Bool)

(declare-fun tp_is_empty!9585 () Bool)

(assert (=> b!2161432 (= e!1383140 tp_is_empty!9585)))

(declare-fun b!2161433 () Bool)

(declare-fun isEmpty!14393 (List!25180) Bool)

(assert (=> b!2161433 (= e!1383153 (not (isEmpty!14393 (_1!14781 lt!804631))))))

(declare-fun b!2161434 () Bool)

(declare-fun tp!674316 () Bool)

(assert (=> b!2161434 (= e!1383140 tp!674316)))

(declare-fun b!2161435 () Bool)

(declare-fun e!1383147 () Bool)

(declare-fun e!1383141 () Bool)

(assert (=> b!2161435 (= e!1383147 e!1383141)))

(declare-fun res!931510 () Bool)

(assert (=> b!2161435 (=> (not res!931510) (not e!1383141))))

(declare-fun lt!804645 () List!25180)

(declare-fun lt!804634 () List!25180)

(assert (=> b!2161435 (= res!931510 (= lt!804645 lt!804634))))

(declare-fun lt!804630 () List!25180)

(declare-fun lt!804626 () List!25180)

(declare-fun ++!6346 (List!25180 List!25180) List!25180)

(assert (=> b!2161435 (= lt!804645 (++!6346 lt!804630 lt!804626))))

(declare-datatypes ((IArray!16255 0))(
  ( (IArray!16256 (innerList!8185 List!25180)) )
))
(declare-datatypes ((Conc!8125 0))(
  ( (Node!8125 (left!19298 Conc!8125) (right!19628 Conc!8125) (csize!16480 Int) (cheight!8336 Int)) (Leaf!11887 (xs!11067 IArray!16255) (csize!16481 Int)) (Empty!8125) )
))
(declare-datatypes ((BalanceConc!16012 0))(
  ( (BalanceConc!16013 (c!341987 Conc!8125)) )
))
(declare-datatypes ((tuple2!24824 0))(
  ( (tuple2!24825 (_1!14782 BalanceConc!16012) (_2!14782 BalanceConc!16012)) )
))
(declare-fun lt!804635 () tuple2!24824)

(declare-fun list!9608 (BalanceConc!16012) List!25180)

(assert (=> b!2161435 (= lt!804626 (list!9608 (_2!14782 lt!804635)))))

(assert (=> b!2161435 (= lt!804630 (list!9608 (_1!14782 lt!804635)))))

(declare-fun findLongestMatch!543 (Regex!5989 List!25180) tuple2!24822)

(assert (=> b!2161435 (= lt!804631 (findLongestMatch!543 r!12534 lt!804634))))

(declare-fun lt!804648 () Int)

(declare-fun lt!804628 () Int)

(declare-fun input!5540 () BalanceConc!16012)

(declare-fun size!19605 (BalanceConc!16012) Int)

(assert (=> b!2161435 (= lt!804648 (- lt!804628 (size!19605 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16012)

(assert (=> b!2161435 (= lt!804628 (size!19605 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25181 0))(
  ( (Nil!25097) (Cons!25097 (h!30498 Regex!5989) (t!197729 List!25181)) )
))
(declare-datatypes ((Context!3118 0))(
  ( (Context!3119 (exprs!2059 List!25181)) )
))
(declare-fun z!4055 () (InoxSet Context!3118))

(declare-fun findLongestMatchZipperSequenceV3!38 ((InoxSet Context!3118) BalanceConc!16012 BalanceConc!16012) tuple2!24824)

(assert (=> b!2161435 (= lt!804635 (findLongestMatchZipperSequenceV3!38 z!4055 input!5540 totalInput!977))))

(declare-fun b!2161436 () Bool)

(declare-fun e!1383136 () Bool)

(assert (=> b!2161436 (= e!1383144 e!1383136)))

(declare-fun res!931501 () Bool)

(assert (=> b!2161436 (=> res!931501 e!1383136)))

(declare-fun lt!804640 () Int)

(declare-fun lt!804629 () Int)

(assert (=> b!2161436 (= res!931501 (or (> lt!804640 lt!804629) (> lt!804629 lt!804640)))))

(assert (=> b!2161436 (= lt!804629 (size!19605 (_1!14782 lt!804635)))))

(declare-fun size!19606 (List!25180) Int)

(assert (=> b!2161436 (= lt!804640 (size!19606 (_1!14781 lt!804631)))))

(declare-fun lt!804641 () Bool)

(assert (=> b!2161436 (= (matchR!2750 r!12534 lt!804630) lt!804641)))

(declare-datatypes ((Unit!38129 0))(
  ( (Unit!38130) )
))
(declare-fun lt!804627 () Unit!38129)

(declare-datatypes ((List!25182 0))(
  ( (Nil!25098) (Cons!25098 (h!30499 Context!3118) (t!197730 List!25182)) )
))
(declare-fun lt!804624 () List!25182)

(declare-fun theoremZipperRegexEquiv!33 ((InoxSet Context!3118) List!25182 Regex!5989 List!25180) Unit!38129)

(assert (=> b!2161436 (= lt!804627 (theoremZipperRegexEquiv!33 z!4055 lt!804624 r!12534 lt!804630))))

(declare-fun matchZipper!117 ((InoxSet Context!3118) List!25180) Bool)

(assert (=> b!2161436 (= lt!804647 (matchZipper!117 z!4055 (_1!14781 lt!804631)))))

(declare-fun lt!804643 () Unit!38129)

(assert (=> b!2161436 (= lt!804643 (theoremZipperRegexEquiv!33 z!4055 lt!804624 r!12534 (_1!14781 lt!804631)))))

(declare-fun b!2161437 () Bool)

(declare-fun e!1383137 () Bool)

(declare-fun e!1383149 () Bool)

(assert (=> b!2161437 (= e!1383137 e!1383149)))

(declare-fun res!931506 () Bool)

(assert (=> b!2161437 (=> (not res!931506) (not e!1383149))))

(declare-fun unfocusZipper!96 (List!25182) Regex!5989)

(assert (=> b!2161437 (= res!931506 (= (unfocusZipper!96 lt!804624) r!12534))))

(declare-fun toList!1172 ((InoxSet Context!3118)) List!25182)

(assert (=> b!2161437 (= lt!804624 (toList!1172 z!4055))))

(declare-fun setNonEmpty!18076 () Bool)

(declare-fun e!1383145 () Bool)

(declare-fun setElem!18076 () Context!3118)

(declare-fun setRes!18076 () Bool)

(declare-fun tp!674318 () Bool)

(declare-fun inv!33253 (Context!3118) Bool)

(assert (=> setNonEmpty!18076 (= setRes!18076 (and tp!674318 (inv!33253 setElem!18076) e!1383145))))

(declare-fun setRest!18076 () (InoxSet Context!3118))

(assert (=> setNonEmpty!18076 (= z!4055 ((_ map or) (store ((as const (Array Context!3118 Bool)) false) setElem!18076 true) setRest!18076))))

(declare-fun b!2161438 () Bool)

(declare-fun e!1383142 () Bool)

(assert (=> b!2161438 (= e!1383142 true)))

(declare-fun lt!804649 () Bool)

(declare-fun isPrefix!2109 (List!25180 List!25180) Bool)

(assert (=> b!2161438 (= lt!804649 (isPrefix!2109 (_1!14781 lt!804631) lt!804634))))

(declare-fun b!2161439 () Bool)

(declare-fun e!1383150 () Bool)

(assert (=> b!2161439 (= e!1383141 e!1383150)))

(declare-fun res!931509 () Bool)

(assert (=> b!2161439 (=> (not res!931509) (not e!1383150))))

(declare-fun lt!804625 () List!25180)

(assert (=> b!2161439 (= res!931509 (= lt!804625 lt!804634))))

(assert (=> b!2161439 (= lt!804625 (++!6346 (_1!14781 lt!804631) (_2!14781 lt!804631)))))

(declare-fun b!2161440 () Bool)

(declare-fun tp!674317 () Bool)

(declare-fun tp!674323 () Bool)

(assert (=> b!2161440 (= e!1383140 (and tp!674317 tp!674323))))

(declare-fun b!2161441 () Bool)

(declare-fun e!1383139 () Bool)

(declare-fun tp!674324 () Bool)

(declare-fun inv!33254 (Conc!8125) Bool)

(assert (=> b!2161441 (= e!1383139 (and (inv!33254 (c!341987 input!5540)) tp!674324))))

(declare-fun b!2161442 () Bool)

(declare-fun e!1383146 () Int)

(assert (=> b!2161442 (= e!1383146 (- 1))))

(declare-fun b!2161443 () Bool)

(assert (=> b!2161443 (= e!1383136 e!1383142)))

(declare-fun res!931511 () Bool)

(assert (=> b!2161443 (=> res!931511 e!1383142)))

(assert (=> b!2161443 (= res!931511 (not (isPrefix!2109 lt!804630 lt!804634)))))

(assert (=> b!2161443 (= lt!804630 (_1!14781 lt!804631))))

(declare-fun lt!804646 () Unit!38129)

(declare-fun lemmaIsPrefixSameLengthThenSameList!335 (List!25180 List!25180 List!25180) Unit!38129)

(assert (=> b!2161443 (= lt!804646 (lemmaIsPrefixSameLengthThenSameList!335 lt!804630 (_1!14781 lt!804631) lt!804634))))

(declare-fun b!2161444 () Bool)

(assert (=> b!2161444 (= e!1383149 e!1383147)))

(declare-fun res!931503 () Bool)

(assert (=> b!2161444 (=> (not res!931503) (not e!1383147))))

(declare-fun lt!804639 () List!25180)

(declare-fun isSuffix!656 (List!25180 List!25180) Bool)

(assert (=> b!2161444 (= res!931503 (isSuffix!656 lt!804634 lt!804639))))

(assert (=> b!2161444 (= lt!804639 (list!9608 totalInput!977))))

(assert (=> b!2161444 (= lt!804634 (list!9608 input!5540))))

(declare-fun b!2161445 () Bool)

(declare-fun e!1383138 () Bool)

(declare-fun isEmpty!14394 (BalanceConc!16012) Bool)

(assert (=> b!2161445 (= e!1383138 (not (isEmpty!14394 (_1!14782 lt!804635))))))

(declare-fun res!931513 () Bool)

(assert (=> start!209642 (=> (not res!931513) (not e!1383137))))

(declare-fun validRegex!2265 (Regex!5989) Bool)

(assert (=> start!209642 (= res!931513 (validRegex!2265 r!12534))))

(assert (=> start!209642 e!1383137))

(assert (=> start!209642 e!1383140))

(declare-fun e!1383152 () Bool)

(declare-fun inv!33255 (BalanceConc!16012) Bool)

(assert (=> start!209642 (and (inv!33255 totalInput!977) e!1383152)))

(assert (=> start!209642 (and (inv!33255 input!5540) e!1383139)))

(declare-fun condSetEmpty!18076 () Bool)

(assert (=> start!209642 (= condSetEmpty!18076 (= z!4055 ((as const (Array Context!3118 Bool)) false)))))

(assert (=> start!209642 setRes!18076))

(declare-fun b!2161431 () Bool)

(declare-fun tp!674320 () Bool)

(declare-fun tp!674321 () Bool)

(assert (=> b!2161431 (= e!1383140 (and tp!674320 tp!674321))))

(declare-fun b!2161446 () Bool)

(assert (=> b!2161446 (= e!1383150 (not e!1383151))))

(declare-fun res!931507 () Bool)

(assert (=> b!2161446 (=> res!931507 e!1383151)))

(assert (=> b!2161446 (= res!931507 e!1383138)))

(declare-fun res!931512 () Bool)

(assert (=> b!2161446 (=> (not res!931512) (not e!1383138))))

(assert (=> b!2161446 (= res!931512 (not lt!804641))))

(assert (=> b!2161446 (= lt!804641 (matchZipper!117 z!4055 lt!804630))))

(declare-fun e!1383148 () Bool)

(assert (=> b!2161446 e!1383148))

(declare-fun res!931505 () Bool)

(assert (=> b!2161446 (=> res!931505 e!1383148)))

(declare-fun lt!804633 () tuple2!24822)

(assert (=> b!2161446 (= res!931505 (isEmpty!14393 (_1!14781 lt!804633)))))

(declare-fun findLongestMatchInner!618 (Regex!5989 List!25180 Int List!25180 List!25180 Int) tuple2!24822)

(assert (=> b!2161446 (= lt!804633 (findLongestMatchInner!618 r!12534 Nil!25096 (size!19606 Nil!25096) lt!804634 lt!804634 (size!19606 lt!804634)))))

(declare-fun lt!804636 () Unit!38129)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!599 (Regex!5989 List!25180) Unit!38129)

(assert (=> b!2161446 (= lt!804636 (longestMatchIsAcceptedByMatchOrIsEmpty!599 r!12534 lt!804634))))

(declare-fun e!1383143 () Bool)

(assert (=> b!2161446 e!1383143))

(declare-fun res!931502 () Bool)

(assert (=> b!2161446 (=> res!931502 e!1383143)))

(declare-fun lt!804642 () Int)

(assert (=> b!2161446 (= res!931502 (<= lt!804642 0))))

(declare-fun lt!804638 () Int)

(declare-fun furthestNullablePosition!176 ((InoxSet Context!3118) Int BalanceConc!16012 Int Int) Int)

(assert (=> b!2161446 (= lt!804642 (+ 1 (- (furthestNullablePosition!176 z!4055 lt!804648 totalInput!977 lt!804628 lt!804638) lt!804648)))))

(declare-fun lt!804637 () Unit!38129)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!24 ((InoxSet Context!3118) Int BalanceConc!16012 Int) Unit!38129)

(assert (=> b!2161446 (= lt!804637 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!24 z!4055 lt!804648 totalInput!977 lt!804638))))

(assert (=> b!2161446 (= lt!804638 e!1383146)))

(declare-fun c!341985 () Bool)

(declare-fun nullableZipper!270 ((InoxSet Context!3118)) Bool)

(assert (=> b!2161446 (= c!341985 (nullableZipper!270 z!4055))))

(declare-fun take!203 (List!25180 Int) List!25180)

(assert (=> b!2161446 (isPrefix!2109 (take!203 lt!804639 lt!804648) lt!804639)))

(declare-fun lt!804650 () Unit!38129)

(declare-fun lemmaTakeIsPrefix!26 (List!25180 Int) Unit!38129)

(assert (=> b!2161446 (= lt!804650 (lemmaTakeIsPrefix!26 lt!804639 lt!804648))))

(assert (=> b!2161446 (isPrefix!2109 (_1!14781 lt!804631) lt!804625)))

(declare-fun lt!804644 () Unit!38129)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1392 (List!25180 List!25180) Unit!38129)

(assert (=> b!2161446 (= lt!804644 (lemmaConcatTwoListThenFirstIsPrefix!1392 (_1!14781 lt!804631) (_2!14781 lt!804631)))))

(assert (=> b!2161446 (isPrefix!2109 lt!804630 lt!804645)))

(declare-fun lt!804632 () Unit!38129)

(assert (=> b!2161446 (= lt!804632 (lemmaConcatTwoListThenFirstIsPrefix!1392 lt!804630 lt!804626))))

(declare-fun b!2161447 () Bool)

(assert (=> b!2161447 (= e!1383148 (matchR!2750 r!12534 (_1!14781 lt!804633)))))

(declare-fun setIsEmpty!18076 () Bool)

(assert (=> setIsEmpty!18076 setRes!18076))

(declare-fun b!2161448 () Bool)

(declare-fun drop!1212 (List!25180 Int) List!25180)

(assert (=> b!2161448 (= e!1383143 (matchZipper!117 z!4055 (take!203 (drop!1212 lt!804639 lt!804648) lt!804642)))))

(declare-fun b!2161449 () Bool)

(declare-fun tp!674319 () Bool)

(assert (=> b!2161449 (= e!1383152 (and (inv!33254 (c!341987 totalInput!977)) tp!674319))))

(declare-fun b!2161450 () Bool)

(assert (=> b!2161450 (= e!1383146 (- lt!804648 1))))

(declare-fun b!2161451 () Bool)

(declare-fun tp!674322 () Bool)

(assert (=> b!2161451 (= e!1383145 tp!674322)))

(assert (= (and start!209642 res!931513) b!2161437))

(assert (= (and b!2161437 res!931506) b!2161444))

(assert (= (and b!2161444 res!931503) b!2161435))

(assert (= (and b!2161435 res!931510) b!2161439))

(assert (= (and b!2161439 res!931509) b!2161446))

(assert (= (and b!2161446 c!341985) b!2161450))

(assert (= (and b!2161446 (not c!341985)) b!2161442))

(assert (= (and b!2161446 (not res!931502)) b!2161448))

(assert (= (and b!2161446 (not res!931505)) b!2161447))

(assert (= (and b!2161446 res!931512) b!2161445))

(assert (= (and b!2161446 (not res!931507)) b!2161430))

(assert (= (and b!2161430 res!931504) b!2161433))

(assert (= (and b!2161430 (not res!931508)) b!2161436))

(assert (= (and b!2161436 (not res!931501)) b!2161443))

(assert (= (and b!2161443 (not res!931511)) b!2161438))

(get-info :version)

(assert (= (and start!209642 ((_ is ElementMatch!5989) r!12534)) b!2161432))

(assert (= (and start!209642 ((_ is Concat!10291) r!12534)) b!2161440))

(assert (= (and start!209642 ((_ is Star!5989) r!12534)) b!2161434))

(assert (= (and start!209642 ((_ is Union!5989) r!12534)) b!2161431))

(assert (= start!209642 b!2161449))

(assert (= start!209642 b!2161441))

(assert (= (and start!209642 condSetEmpty!18076) setIsEmpty!18076))

(assert (= (and start!209642 (not condSetEmpty!18076)) setNonEmpty!18076))

(assert (= setNonEmpty!18076 b!2161451))

(declare-fun m!2601933 () Bool)

(assert (=> b!2161430 m!2601933))

(declare-fun m!2601935 () Bool)

(assert (=> b!2161439 m!2601935))

(declare-fun m!2601937 () Bool)

(assert (=> b!2161438 m!2601937))

(declare-fun m!2601939 () Bool)

(assert (=> b!2161444 m!2601939))

(declare-fun m!2601941 () Bool)

(assert (=> b!2161444 m!2601941))

(declare-fun m!2601943 () Bool)

(assert (=> b!2161444 m!2601943))

(declare-fun m!2601945 () Bool)

(assert (=> b!2161448 m!2601945))

(assert (=> b!2161448 m!2601945))

(declare-fun m!2601947 () Bool)

(assert (=> b!2161448 m!2601947))

(assert (=> b!2161448 m!2601947))

(declare-fun m!2601949 () Bool)

(assert (=> b!2161448 m!2601949))

(declare-fun m!2601951 () Bool)

(assert (=> b!2161449 m!2601951))

(declare-fun m!2601953 () Bool)

(assert (=> b!2161447 m!2601953))

(declare-fun m!2601955 () Bool)

(assert (=> b!2161446 m!2601955))

(declare-fun m!2601957 () Bool)

(assert (=> b!2161446 m!2601957))

(declare-fun m!2601959 () Bool)

(assert (=> b!2161446 m!2601959))

(declare-fun m!2601961 () Bool)

(assert (=> b!2161446 m!2601961))

(declare-fun m!2601963 () Bool)

(assert (=> b!2161446 m!2601963))

(declare-fun m!2601965 () Bool)

(assert (=> b!2161446 m!2601965))

(declare-fun m!2601967 () Bool)

(assert (=> b!2161446 m!2601967))

(declare-fun m!2601969 () Bool)

(assert (=> b!2161446 m!2601969))

(assert (=> b!2161446 m!2601963))

(declare-fun m!2601971 () Bool)

(assert (=> b!2161446 m!2601971))

(declare-fun m!2601973 () Bool)

(assert (=> b!2161446 m!2601973))

(assert (=> b!2161446 m!2601973))

(declare-fun m!2601975 () Bool)

(assert (=> b!2161446 m!2601975))

(declare-fun m!2601977 () Bool)

(assert (=> b!2161446 m!2601977))

(declare-fun m!2601979 () Bool)

(assert (=> b!2161446 m!2601979))

(declare-fun m!2601981 () Bool)

(assert (=> b!2161446 m!2601981))

(declare-fun m!2601983 () Bool)

(assert (=> b!2161446 m!2601983))

(assert (=> b!2161446 m!2601961))

(declare-fun m!2601985 () Bool)

(assert (=> b!2161446 m!2601985))

(declare-fun m!2601987 () Bool)

(assert (=> b!2161441 m!2601987))

(declare-fun m!2601989 () Bool)

(assert (=> b!2161437 m!2601989))

(declare-fun m!2601991 () Bool)

(assert (=> b!2161437 m!2601991))

(declare-fun m!2601993 () Bool)

(assert (=> setNonEmpty!18076 m!2601993))

(declare-fun m!2601995 () Bool)

(assert (=> b!2161435 m!2601995))

(declare-fun m!2601997 () Bool)

(assert (=> b!2161435 m!2601997))

(declare-fun m!2601999 () Bool)

(assert (=> b!2161435 m!2601999))

(declare-fun m!2602001 () Bool)

(assert (=> b!2161435 m!2602001))

(declare-fun m!2602003 () Bool)

(assert (=> b!2161435 m!2602003))

(declare-fun m!2602005 () Bool)

(assert (=> b!2161435 m!2602005))

(declare-fun m!2602007 () Bool)

(assert (=> b!2161435 m!2602007))

(declare-fun m!2602009 () Bool)

(assert (=> b!2161436 m!2602009))

(declare-fun m!2602011 () Bool)

(assert (=> b!2161436 m!2602011))

(declare-fun m!2602013 () Bool)

(assert (=> b!2161436 m!2602013))

(declare-fun m!2602015 () Bool)

(assert (=> b!2161436 m!2602015))

(declare-fun m!2602017 () Bool)

(assert (=> b!2161436 m!2602017))

(declare-fun m!2602019 () Bool)

(assert (=> b!2161436 m!2602019))

(declare-fun m!2602021 () Bool)

(assert (=> start!209642 m!2602021))

(declare-fun m!2602023 () Bool)

(assert (=> start!209642 m!2602023))

(declare-fun m!2602025 () Bool)

(assert (=> start!209642 m!2602025))

(declare-fun m!2602027 () Bool)

(assert (=> b!2161445 m!2602027))

(declare-fun m!2602029 () Bool)

(assert (=> b!2161443 m!2602029))

(declare-fun m!2602031 () Bool)

(assert (=> b!2161443 m!2602031))

(declare-fun m!2602033 () Bool)

(assert (=> b!2161433 m!2602033))

(check-sat (not b!2161436) (not b!2161435) (not b!2161440) (not b!2161433) tp_is_empty!9585 (not b!2161449) (not b!2161445) (not b!2161431) (not b!2161430) (not b!2161438) (not b!2161434) (not b!2161451) (not start!209642) (not b!2161441) (not b!2161443) (not b!2161437) (not b!2161446) (not setNonEmpty!18076) (not b!2161439) (not b!2161448) (not b!2161444) (not b!2161447))
(check-sat)
