; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527446 () Bool)

(assert start!527446)

(declare-fun b!4990057 () Bool)

(declare-fun e!3118740 () Bool)

(declare-fun tp!1398802 () Bool)

(declare-fun tp!1398798 () Bool)

(assert (=> b!4990057 (= e!3118740 (and tp!1398802 tp!1398798))))

(declare-fun setIsEmpty!28190 () Bool)

(declare-fun setRes!28190 () Bool)

(assert (=> setIsEmpty!28190 setRes!28190))

(declare-fun b!4990058 () Bool)

(declare-fun e!3118745 () Bool)

(declare-datatypes ((C!27740 0))(
  ( (C!27741 (val!23236 Int)) )
))
(declare-datatypes ((List!57839 0))(
  ( (Nil!57715) (Cons!57715 (h!64163 C!27740) (t!370165 List!57839)) )
))
(declare-datatypes ((tuple2!62808 0))(
  ( (tuple2!62809 (_1!34707 List!57839) (_2!34707 List!57839)) )
))
(declare-fun lt!2063428 () tuple2!62808)

(declare-fun isEmpty!31224 (List!57839) Bool)

(assert (=> b!4990058 (= e!3118745 (not (isEmpty!31224 (_1!34707 lt!2063428))))))

(declare-fun b!4990059 () Bool)

(declare-fun e!3118746 () Bool)

(declare-datatypes ((IArray!30589 0))(
  ( (IArray!30590 (innerList!15352 List!57839)) )
))
(declare-datatypes ((Conc!15264 0))(
  ( (Node!15264 (left!42226 Conc!15264) (right!42556 Conc!15264) (csize!30758 Int) (cheight!15475 Int)) (Leaf!25345 (xs!18590 IArray!30589) (csize!30759 Int)) (Empty!15264) )
))
(declare-datatypes ((BalanceConc!29958 0))(
  ( (BalanceConc!29959 (c!851355 Conc!15264)) )
))
(declare-fun input!5597 () BalanceConc!29958)

(declare-fun tp!1398800 () Bool)

(declare-fun inv!75740 (Conc!15264) Bool)

(assert (=> b!4990059 (= e!3118746 (and (inv!75740 (c!851355 input!5597)) tp!1398800))))

(declare-fun b!4990060 () Bool)

(declare-fun res!2130285 () Bool)

(declare-fun e!3118738 () Bool)

(assert (=> b!4990060 (=> res!2130285 e!3118738)))

(declare-fun lt!2063437 () List!57839)

(declare-fun isPrefix!5302 (List!57839 List!57839) Bool)

(assert (=> b!4990060 (= res!2130285 (not (isPrefix!5302 (_1!34707 lt!2063428) lt!2063437)))))

(declare-fun b!4990061 () Bool)

(assert (=> b!4990061 (= e!3118738 true)))

(declare-fun lt!2063416 () Int)

(declare-fun lt!2063423 () List!57839)

(declare-fun size!38342 (List!57839) Int)

(assert (=> b!4990061 (= lt!2063416 (size!38342 lt!2063423))))

(declare-fun b!4990062 () Bool)

(declare-fun e!3118737 () Bool)

(declare-fun e!3118748 () Bool)

(assert (=> b!4990062 (= e!3118737 e!3118748)))

(declare-fun res!2130287 () Bool)

(assert (=> b!4990062 (=> (not res!2130287) (not e!3118748))))

(declare-fun lt!2063418 () List!57839)

(assert (=> b!4990062 (= res!2130287 (= lt!2063418 lt!2063437))))

(declare-fun lt!2063429 () List!57839)

(declare-fun lt!2063415 () List!57839)

(declare-fun ++!12589 (List!57839 List!57839) List!57839)

(assert (=> b!4990062 (= lt!2063418 (++!12589 lt!2063429 lt!2063415))))

(declare-datatypes ((tuple2!62810 0))(
  ( (tuple2!62811 (_1!34708 BalanceConc!29958) (_2!34708 BalanceConc!29958)) )
))
(declare-fun lt!2063419 () tuple2!62810)

(declare-fun list!18548 (BalanceConc!29958) List!57839)

(assert (=> b!4990062 (= lt!2063415 (list!18548 (_2!34708 lt!2063419)))))

(assert (=> b!4990062 (= lt!2063429 (list!18548 (_1!34708 lt!2063419)))))

(declare-datatypes ((Regex!13745 0))(
  ( (ElementMatch!13745 (c!851356 C!27740)) (Concat!22538 (regOne!28002 Regex!13745) (regTwo!28002 Regex!13745)) (EmptyExpr!13745) (Star!13745 (reg!14074 Regex!13745)) (EmptyLang!13745) (Union!13745 (regOne!28003 Regex!13745) (regTwo!28003 Regex!13745)) )
))
(declare-fun r!12727 () Regex!13745)

(declare-fun findLongestMatch!1758 (Regex!13745 List!57839) tuple2!62808)

(assert (=> b!4990062 (= lt!2063428 (findLongestMatch!1758 r!12727 lt!2063437))))

(declare-fun lt!2063427 () Int)

(declare-fun lt!2063435 () Int)

(declare-fun size!38343 (BalanceConc!29958) Int)

(assert (=> b!4990062 (= lt!2063427 (- lt!2063435 (size!38343 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29958)

(assert (=> b!4990062 (= lt!2063435 (size!38343 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57840 0))(
  ( (Nil!57716) (Cons!57716 (h!64164 Regex!13745) (t!370166 List!57840)) )
))
(declare-datatypes ((Context!6340 0))(
  ( (Context!6341 (exprs!3670 List!57840)) )
))
(declare-fun z!4183 () (InoxSet Context!6340))

(declare-fun findLongestMatchZipperFastV2!47 ((InoxSet Context!6340) BalanceConc!29958 BalanceConc!29958) tuple2!62810)

(assert (=> b!4990062 (= lt!2063419 (findLongestMatchZipperFastV2!47 z!4183 input!5597 totalInput!1012))))

(declare-fun res!2130274 () Bool)

(declare-fun e!3118750 () Bool)

(assert (=> start!527446 (=> (not res!2130274) (not e!3118750))))

(declare-fun validRegex!6042 (Regex!13745) Bool)

(assert (=> start!527446 (= res!2130274 (validRegex!6042 r!12727))))

(assert (=> start!527446 e!3118750))

(assert (=> start!527446 e!3118740))

(declare-fun inv!75741 (BalanceConc!29958) Bool)

(assert (=> start!527446 (and (inv!75741 input!5597) e!3118746)))

(declare-fun condSetEmpty!28190 () Bool)

(assert (=> start!527446 (= condSetEmpty!28190 (= z!4183 ((as const (Array Context!6340 Bool)) false)))))

(assert (=> start!527446 setRes!28190))

(declare-fun e!3118741 () Bool)

(assert (=> start!527446 (and (inv!75741 totalInput!1012) e!3118741)))

(declare-fun b!4990063 () Bool)

(declare-fun e!3118739 () Bool)

(declare-fun e!3118743 () Bool)

(assert (=> b!4990063 (= e!3118739 e!3118743)))

(declare-fun res!2130278 () Bool)

(assert (=> b!4990063 (=> res!2130278 e!3118743)))

(assert (=> b!4990063 (= res!2130278 e!3118745)))

(declare-fun res!2130273 () Bool)

(assert (=> b!4990063 (=> (not res!2130273) (not e!3118745))))

(declare-fun lt!2063417 () Bool)

(assert (=> b!4990063 (= res!2130273 (not lt!2063417))))

(declare-fun matchR!6717 (Regex!13745 List!57839) Bool)

(assert (=> b!4990063 (= lt!2063417 (matchR!6717 r!12727 (_1!34707 lt!2063428)))))

(declare-fun setNonEmpty!28190 () Bool)

(declare-fun e!3118744 () Bool)

(declare-fun setElem!28190 () Context!6340)

(declare-fun tp!1398799 () Bool)

(declare-fun inv!75742 (Context!6340) Bool)

(assert (=> setNonEmpty!28190 (= setRes!28190 (and tp!1398799 (inv!75742 setElem!28190) e!3118744))))

(declare-fun setRest!28190 () (InoxSet Context!6340))

(assert (=> setNonEmpty!28190 (= z!4183 ((_ map or) (store ((as const (Array Context!6340 Bool)) false) setElem!28190 true) setRest!28190))))

(declare-fun b!4990064 () Bool)

(declare-fun tp!1398801 () Bool)

(assert (=> b!4990064 (= e!3118741 (and (inv!75740 (c!851355 totalInput!1012)) tp!1398801))))

(declare-fun b!4990065 () Bool)

(declare-fun e!3118749 () Bool)

(declare-fun lt!2063420 () tuple2!62808)

(assert (=> b!4990065 (= e!3118749 (matchR!6717 r!12727 (_1!34707 lt!2063420)))))

(declare-fun b!4990066 () Bool)

(declare-fun e!3118751 () Bool)

(assert (=> b!4990066 (= e!3118751 e!3118737)))

(declare-fun res!2130282 () Bool)

(assert (=> b!4990066 (=> (not res!2130282) (not e!3118737))))

(declare-fun lt!2063433 () List!57839)

(declare-fun isSuffix!1311 (List!57839 List!57839) Bool)

(assert (=> b!4990066 (= res!2130282 (isSuffix!1311 lt!2063437 lt!2063433))))

(assert (=> b!4990066 (= lt!2063433 (list!18548 totalInput!1012))))

(assert (=> b!4990066 (= lt!2063437 (list!18548 input!5597))))

(declare-fun b!4990067 () Bool)

(declare-fun tp_is_empty!36487 () Bool)

(assert (=> b!4990067 (= e!3118740 tp_is_empty!36487)))

(declare-fun b!4990068 () Bool)

(declare-fun e!3118742 () Bool)

(assert (=> b!4990068 (= e!3118743 e!3118742)))

(declare-fun res!2130280 () Bool)

(assert (=> b!4990068 (=> res!2130280 e!3118742)))

(declare-fun lt!2063422 () Int)

(assert (=> b!4990068 (= res!2130280 (<= lt!2063422 (size!38343 (_1!34708 lt!2063419))))))

(assert (=> b!4990068 (= lt!2063422 (size!38342 (_1!34707 lt!2063428)))))

(declare-fun lt!2063432 () Bool)

(assert (=> b!4990068 (= (matchR!6717 r!12727 lt!2063429) lt!2063432)))

(declare-datatypes ((Unit!148855 0))(
  ( (Unit!148856) )
))
(declare-fun lt!2063413 () Unit!148855)

(declare-datatypes ((List!57841 0))(
  ( (Nil!57717) (Cons!57717 (h!64165 Context!6340) (t!370167 List!57841)) )
))
(declare-fun lt!2063424 () List!57841)

(declare-fun theoremZipperRegexEquiv!131 ((InoxSet Context!6340) List!57841 Regex!13745 List!57839) Unit!148855)

(assert (=> b!4990068 (= lt!2063413 (theoremZipperRegexEquiv!131 z!4183 lt!2063424 r!12727 lt!2063429))))

(declare-fun matchZipper!521 ((InoxSet Context!6340) List!57839) Bool)

(assert (=> b!4990068 (= lt!2063417 (matchZipper!521 z!4183 (_1!34707 lt!2063428)))))

(declare-fun lt!2063425 () Unit!148855)

(assert (=> b!4990068 (= lt!2063425 (theoremZipperRegexEquiv!131 z!4183 lt!2063424 r!12727 (_1!34707 lt!2063428)))))

(declare-fun b!4990069 () Bool)

(declare-fun tp!1398804 () Bool)

(assert (=> b!4990069 (= e!3118740 tp!1398804)))

(declare-fun b!4990070 () Bool)

(assert (=> b!4990070 (= e!3118750 e!3118751)))

(declare-fun res!2130279 () Bool)

(assert (=> b!4990070 (=> (not res!2130279) (not e!3118751))))

(declare-fun unfocusZipper!272 (List!57841) Regex!13745)

(assert (=> b!4990070 (= res!2130279 (= (unfocusZipper!272 lt!2063424) r!12727))))

(declare-fun toList!8030 ((InoxSet Context!6340)) List!57841)

(assert (=> b!4990070 (= lt!2063424 (toList!8030 z!4183))))

(declare-fun b!4990071 () Bool)

(declare-fun e!3118735 () Bool)

(assert (=> b!4990071 (= e!3118735 e!3118738)))

(declare-fun res!2130283 () Bool)

(assert (=> b!4990071 (=> res!2130283 e!3118738)))

(assert (=> b!4990071 (= res!2130283 (not (isPrefix!5302 lt!2063423 lt!2063437)))))

(declare-fun take!610 (List!57839 Int) List!57839)

(assert (=> b!4990071 (isPrefix!5302 (take!610 lt!2063437 lt!2063422) lt!2063437)))

(declare-fun lt!2063412 () Unit!148855)

(declare-fun lemmaTakeIsPrefix!104 (List!57839 Int) Unit!148855)

(assert (=> b!4990071 (= lt!2063412 (lemmaTakeIsPrefix!104 lt!2063437 lt!2063422))))

(declare-fun b!4990072 () Bool)

(declare-fun e!3118734 () Bool)

(declare-fun isEmpty!31225 (BalanceConc!29958) Bool)

(assert (=> b!4990072 (= e!3118734 (not (isEmpty!31225 (_1!34708 lt!2063419))))))

(declare-fun b!4990073 () Bool)

(declare-fun tp!1398797 () Bool)

(declare-fun tp!1398796 () Bool)

(assert (=> b!4990073 (= e!3118740 (and tp!1398797 tp!1398796))))

(declare-fun b!4990074 () Bool)

(declare-fun e!3118747 () Bool)

(declare-fun lt!2063436 () Int)

(declare-fun drop!2408 (List!57839 Int) List!57839)

(assert (=> b!4990074 (= e!3118747 (matchZipper!521 z!4183 (take!610 (drop!2408 lt!2063433 lt!2063427) lt!2063436)))))

(declare-fun b!4990075 () Bool)

(declare-fun e!3118736 () Bool)

(assert (=> b!4990075 (= e!3118748 e!3118736)))

(declare-fun res!2130281 () Bool)

(assert (=> b!4990075 (=> (not res!2130281) (not e!3118736))))

(declare-fun lt!2063426 () List!57839)

(assert (=> b!4990075 (= res!2130281 (= lt!2063426 lt!2063437))))

(assert (=> b!4990075 (= lt!2063426 (++!12589 (_1!34707 lt!2063428) (_2!34707 lt!2063428)))))

(declare-fun b!4990076 () Bool)

(assert (=> b!4990076 (= e!3118742 e!3118735)))

(declare-fun res!2130276 () Bool)

(assert (=> b!4990076 (=> res!2130276 e!3118735)))

(declare-fun lt!2063438 () List!57839)

(assert (=> b!4990076 (= res!2130276 (not (= lt!2063438 lt!2063437)))))

(assert (=> b!4990076 (= lt!2063423 (take!610 lt!2063438 lt!2063422))))

(assert (=> b!4990076 (= lt!2063438 (drop!2408 lt!2063433 lt!2063427))))

(declare-fun b!4990077 () Bool)

(assert (=> b!4990077 (= e!3118736 (not e!3118739))))

(declare-fun res!2130284 () Bool)

(assert (=> b!4990077 (=> res!2130284 e!3118739)))

(assert (=> b!4990077 (= res!2130284 e!3118734)))

(declare-fun res!2130286 () Bool)

(assert (=> b!4990077 (=> (not res!2130286) (not e!3118734))))

(assert (=> b!4990077 (= res!2130286 (not lt!2063432))))

(assert (=> b!4990077 (= lt!2063432 (matchZipper!521 z!4183 lt!2063429))))

(assert (=> b!4990077 e!3118749))

(declare-fun res!2130275 () Bool)

(assert (=> b!4990077 (=> res!2130275 e!3118749)))

(assert (=> b!4990077 (= res!2130275 (isEmpty!31224 (_1!34707 lt!2063420)))))

(declare-fun findLongestMatchInner!1934 (Regex!13745 List!57839 Int List!57839 List!57839 Int) tuple2!62808)

(assert (=> b!4990077 (= lt!2063420 (findLongestMatchInner!1934 r!12727 Nil!57715 (size!38342 Nil!57715) lt!2063437 lt!2063437 (size!38342 lt!2063437)))))

(declare-fun lt!2063421 () Unit!148855)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1895 (Regex!13745 List!57839) Unit!148855)

(assert (=> b!4990077 (= lt!2063421 (longestMatchIsAcceptedByMatchOrIsEmpty!1895 r!12727 lt!2063437))))

(assert (=> b!4990077 e!3118747))

(declare-fun res!2130277 () Bool)

(assert (=> b!4990077 (=> res!2130277 e!3118747)))

(assert (=> b!4990077 (= res!2130277 (= lt!2063436 0))))

(declare-fun findLongestMatchInnerZipperFastV2!85 ((InoxSet Context!6340) Int BalanceConc!29958 Int) Int)

(assert (=> b!4990077 (= lt!2063436 (findLongestMatchInnerZipperFastV2!85 z!4183 lt!2063427 totalInput!1012 lt!2063435))))

(declare-fun lt!2063434 () Unit!148855)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!12 ((InoxSet Context!6340) Int BalanceConc!29958) Unit!148855)

(assert (=> b!4990077 (= lt!2063434 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!12 z!4183 lt!2063427 totalInput!1012))))

(assert (=> b!4990077 (isPrefix!5302 (take!610 lt!2063433 lt!2063427) lt!2063433)))

(declare-fun lt!2063431 () Unit!148855)

(assert (=> b!4990077 (= lt!2063431 (lemmaTakeIsPrefix!104 lt!2063433 lt!2063427))))

(assert (=> b!4990077 (isPrefix!5302 (_1!34707 lt!2063428) lt!2063426)))

(declare-fun lt!2063414 () Unit!148855)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3400 (List!57839 List!57839) Unit!148855)

(assert (=> b!4990077 (= lt!2063414 (lemmaConcatTwoListThenFirstIsPrefix!3400 (_1!34707 lt!2063428) (_2!34707 lt!2063428)))))

(assert (=> b!4990077 (isPrefix!5302 lt!2063429 lt!2063418)))

(declare-fun lt!2063430 () Unit!148855)

(assert (=> b!4990077 (= lt!2063430 (lemmaConcatTwoListThenFirstIsPrefix!3400 lt!2063429 lt!2063415))))

(declare-fun b!4990078 () Bool)

(declare-fun tp!1398803 () Bool)

(assert (=> b!4990078 (= e!3118744 tp!1398803)))

(assert (= (and start!527446 res!2130274) b!4990070))

(assert (= (and b!4990070 res!2130279) b!4990066))

(assert (= (and b!4990066 res!2130282) b!4990062))

(assert (= (and b!4990062 res!2130287) b!4990075))

(assert (= (and b!4990075 res!2130281) b!4990077))

(assert (= (and b!4990077 (not res!2130277)) b!4990074))

(assert (= (and b!4990077 (not res!2130275)) b!4990065))

(assert (= (and b!4990077 res!2130286) b!4990072))

(assert (= (and b!4990077 (not res!2130284)) b!4990063))

(assert (= (and b!4990063 res!2130273) b!4990058))

(assert (= (and b!4990063 (not res!2130278)) b!4990068))

(assert (= (and b!4990068 (not res!2130280)) b!4990076))

(assert (= (and b!4990076 (not res!2130276)) b!4990071))

(assert (= (and b!4990071 (not res!2130283)) b!4990060))

(assert (= (and b!4990060 (not res!2130285)) b!4990061))

(get-info :version)

(assert (= (and start!527446 ((_ is ElementMatch!13745) r!12727)) b!4990067))

(assert (= (and start!527446 ((_ is Concat!22538) r!12727)) b!4990073))

(assert (= (and start!527446 ((_ is Star!13745) r!12727)) b!4990069))

(assert (= (and start!527446 ((_ is Union!13745) r!12727)) b!4990057))

(assert (= start!527446 b!4990059))

(assert (= (and start!527446 condSetEmpty!28190) setIsEmpty!28190))

(assert (= (and start!527446 (not condSetEmpty!28190)) setNonEmpty!28190))

(assert (= setNonEmpty!28190 b!4990078))

(assert (= start!527446 b!4990064))

(declare-fun m!6022342 () Bool)

(assert (=> b!4990074 m!6022342))

(assert (=> b!4990074 m!6022342))

(declare-fun m!6022344 () Bool)

(assert (=> b!4990074 m!6022344))

(assert (=> b!4990074 m!6022344))

(declare-fun m!6022346 () Bool)

(assert (=> b!4990074 m!6022346))

(declare-fun m!6022348 () Bool)

(assert (=> setNonEmpty!28190 m!6022348))

(declare-fun m!6022350 () Bool)

(assert (=> b!4990075 m!6022350))

(declare-fun m!6022352 () Bool)

(assert (=> b!4990071 m!6022352))

(declare-fun m!6022354 () Bool)

(assert (=> b!4990071 m!6022354))

(assert (=> b!4990071 m!6022354))

(declare-fun m!6022356 () Bool)

(assert (=> b!4990071 m!6022356))

(declare-fun m!6022358 () Bool)

(assert (=> b!4990071 m!6022358))

(declare-fun m!6022360 () Bool)

(assert (=> b!4990065 m!6022360))

(declare-fun m!6022362 () Bool)

(assert (=> b!4990068 m!6022362))

(declare-fun m!6022364 () Bool)

(assert (=> b!4990068 m!6022364))

(declare-fun m!6022366 () Bool)

(assert (=> b!4990068 m!6022366))

(declare-fun m!6022368 () Bool)

(assert (=> b!4990068 m!6022368))

(declare-fun m!6022370 () Bool)

(assert (=> b!4990068 m!6022370))

(declare-fun m!6022372 () Bool)

(assert (=> b!4990068 m!6022372))

(declare-fun m!6022374 () Bool)

(assert (=> start!527446 m!6022374))

(declare-fun m!6022376 () Bool)

(assert (=> start!527446 m!6022376))

(declare-fun m!6022378 () Bool)

(assert (=> start!527446 m!6022378))

(declare-fun m!6022380 () Bool)

(assert (=> b!4990058 m!6022380))

(declare-fun m!6022382 () Bool)

(assert (=> b!4990070 m!6022382))

(declare-fun m!6022384 () Bool)

(assert (=> b!4990070 m!6022384))

(declare-fun m!6022386 () Bool)

(assert (=> b!4990062 m!6022386))

(declare-fun m!6022388 () Bool)

(assert (=> b!4990062 m!6022388))

(declare-fun m!6022390 () Bool)

(assert (=> b!4990062 m!6022390))

(declare-fun m!6022392 () Bool)

(assert (=> b!4990062 m!6022392))

(declare-fun m!6022394 () Bool)

(assert (=> b!4990062 m!6022394))

(declare-fun m!6022396 () Bool)

(assert (=> b!4990062 m!6022396))

(declare-fun m!6022398 () Bool)

(assert (=> b!4990062 m!6022398))

(declare-fun m!6022400 () Bool)

(assert (=> b!4990064 m!6022400))

(declare-fun m!6022402 () Bool)

(assert (=> b!4990076 m!6022402))

(assert (=> b!4990076 m!6022342))

(declare-fun m!6022404 () Bool)

(assert (=> b!4990061 m!6022404))

(declare-fun m!6022406 () Bool)

(assert (=> b!4990066 m!6022406))

(declare-fun m!6022408 () Bool)

(assert (=> b!4990066 m!6022408))

(declare-fun m!6022410 () Bool)

(assert (=> b!4990066 m!6022410))

(declare-fun m!6022412 () Bool)

(assert (=> b!4990060 m!6022412))

(declare-fun m!6022414 () Bool)

(assert (=> b!4990072 m!6022414))

(declare-fun m!6022416 () Bool)

(assert (=> b!4990077 m!6022416))

(declare-fun m!6022418 () Bool)

(assert (=> b!4990077 m!6022418))

(declare-fun m!6022420 () Bool)

(assert (=> b!4990077 m!6022420))

(declare-fun m!6022422 () Bool)

(assert (=> b!4990077 m!6022422))

(declare-fun m!6022424 () Bool)

(assert (=> b!4990077 m!6022424))

(declare-fun m!6022426 () Bool)

(assert (=> b!4990077 m!6022426))

(declare-fun m!6022428 () Bool)

(assert (=> b!4990077 m!6022428))

(assert (=> b!4990077 m!6022428))

(declare-fun m!6022430 () Bool)

(assert (=> b!4990077 m!6022430))

(declare-fun m!6022432 () Bool)

(assert (=> b!4990077 m!6022432))

(declare-fun m!6022434 () Bool)

(assert (=> b!4990077 m!6022434))

(assert (=> b!4990077 m!6022420))

(assert (=> b!4990077 m!6022416))

(declare-fun m!6022436 () Bool)

(assert (=> b!4990077 m!6022436))

(declare-fun m!6022438 () Bool)

(assert (=> b!4990077 m!6022438))

(declare-fun m!6022440 () Bool)

(assert (=> b!4990077 m!6022440))

(declare-fun m!6022442 () Bool)

(assert (=> b!4990077 m!6022442))

(declare-fun m!6022444 () Bool)

(assert (=> b!4990077 m!6022444))

(declare-fun m!6022446 () Bool)

(assert (=> b!4990063 m!6022446))

(declare-fun m!6022448 () Bool)

(assert (=> b!4990059 m!6022448))

(check-sat (not b!4990078) (not b!4990059) (not b!4990072) (not b!4990066) (not b!4990058) (not b!4990069) (not b!4990074) (not b!4990062) (not b!4990065) (not b!4990073) (not b!4990060) tp_is_empty!36487 (not start!527446) (not b!4990076) (not b!4990071) (not b!4990057) (not b!4990070) (not setNonEmpty!28190) (not b!4990075) (not b!4990061) (not b!4990077) (not b!4990063) (not b!4990068) (not b!4990064))
(check-sat)
