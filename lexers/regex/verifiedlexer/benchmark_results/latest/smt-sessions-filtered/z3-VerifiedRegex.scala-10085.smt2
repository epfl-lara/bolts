; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527466 () Bool)

(assert start!527466)

(declare-fun b!4990676 () Bool)

(declare-fun lt!2064224 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27760 0))(
  ( (C!27761 (val!23246 Int)) )
))
(declare-datatypes ((Regex!13755 0))(
  ( (ElementMatch!13755 (c!851375 C!27760)) (Concat!22548 (regOne!28022 Regex!13755) (regTwo!28022 Regex!13755)) (EmptyExpr!13755) (Star!13755 (reg!14084 Regex!13755)) (EmptyLang!13755) (Union!13755 (regOne!28023 Regex!13755) (regTwo!28023 Regex!13755)) )
))
(declare-datatypes ((List!57869 0))(
  ( (Nil!57745) (Cons!57745 (h!64193 Regex!13755) (t!370195 List!57869)) )
))
(declare-datatypes ((Context!6360 0))(
  ( (Context!6361 (exprs!3680 List!57869)) )
))
(declare-fun z!4183 () (InoxSet Context!6360))

(declare-datatypes ((List!57870 0))(
  ( (Nil!57746) (Cons!57746 (h!64194 C!27760) (t!370196 List!57870)) )
))
(declare-fun lt!2064230 () List!57870)

(declare-fun e!3119245 () Bool)

(declare-fun lt!2064222 () Int)

(declare-fun matchZipper!531 ((InoxSet Context!6360) List!57870) Bool)

(declare-fun take!620 (List!57870 Int) List!57870)

(declare-fun drop!2418 (List!57870 Int) List!57870)

(assert (=> b!4990676 (= e!3119245 (matchZipper!531 z!4183 (take!620 (drop!2418 lt!2064230 lt!2064224) lt!2064222)))))

(declare-fun b!4990677 () Bool)

(declare-fun e!3119244 () Bool)

(declare-datatypes ((IArray!30609 0))(
  ( (IArray!30610 (innerList!15362 List!57870)) )
))
(declare-datatypes ((Conc!15274 0))(
  ( (Node!15274 (left!42241 Conc!15274) (right!42571 Conc!15274) (csize!30778 Int) (cheight!15485 Int)) (Leaf!25360 (xs!18600 IArray!30609) (csize!30779 Int)) (Empty!15274) )
))
(declare-datatypes ((BalanceConc!29978 0))(
  ( (BalanceConc!29979 (c!851376 Conc!15274)) )
))
(declare-fun input!5597 () BalanceConc!29978)

(declare-fun tp!1399068 () Bool)

(declare-fun inv!75785 (Conc!15274) Bool)

(assert (=> b!4990677 (= e!3119244 (and (inv!75785 (c!851376 input!5597)) tp!1399068))))

(declare-fun b!4990678 () Bool)

(declare-fun e!3119254 () Bool)

(declare-fun e!3119243 () Bool)

(assert (=> b!4990678 (= e!3119254 e!3119243)))

(declare-fun res!2130682 () Bool)

(assert (=> b!4990678 (=> (not res!2130682) (not e!3119243))))

(declare-fun lt!2064220 () List!57870)

(declare-fun lt!2064232 () List!57870)

(assert (=> b!4990678 (= res!2130682 (= lt!2064220 lt!2064232))))

(declare-datatypes ((tuple2!62848 0))(
  ( (tuple2!62849 (_1!34727 List!57870) (_2!34727 List!57870)) )
))
(declare-fun lt!2064227 () tuple2!62848)

(declare-fun ++!12599 (List!57870 List!57870) List!57870)

(assert (=> b!4990678 (= lt!2064220 (++!12599 (_1!34727 lt!2064227) (_2!34727 lt!2064227)))))

(declare-fun b!4990679 () Bool)

(declare-fun e!3119250 () Bool)

(declare-fun r!12727 () Regex!13755)

(declare-fun lt!2064228 () tuple2!62848)

(declare-fun matchR!6727 (Regex!13755 List!57870) Bool)

(assert (=> b!4990679 (= e!3119250 (matchR!6727 r!12727 (_1!34727 lt!2064228)))))

(declare-fun b!4990680 () Bool)

(declare-fun e!3119248 () Bool)

(declare-fun isEmpty!31244 (List!57870) Bool)

(assert (=> b!4990680 (= e!3119248 (not (isEmpty!31244 (_1!34727 lt!2064227))))))

(declare-fun setRes!28220 () Bool)

(declare-fun e!3119249 () Bool)

(declare-fun tp!1399069 () Bool)

(declare-fun setElem!28220 () Context!6360)

(declare-fun setNonEmpty!28220 () Bool)

(declare-fun inv!75786 (Context!6360) Bool)

(assert (=> setNonEmpty!28220 (= setRes!28220 (and tp!1399069 (inv!75786 setElem!28220) e!3119249))))

(declare-fun setRest!28220 () (InoxSet Context!6360))

(assert (=> setNonEmpty!28220 (= z!4183 ((_ map or) (store ((as const (Array Context!6360 Bool)) false) setElem!28220 true) setRest!28220))))

(declare-fun b!4990681 () Bool)

(declare-fun e!3119242 () Bool)

(declare-fun e!3119251 () Bool)

(assert (=> b!4990681 (= e!3119242 e!3119251)))

(declare-fun res!2130695 () Bool)

(assert (=> b!4990681 (=> res!2130695 e!3119251)))

(assert (=> b!4990681 (= res!2130695 e!3119248)))

(declare-fun res!2130692 () Bool)

(assert (=> b!4990681 (=> (not res!2130692) (not e!3119248))))

(declare-fun lt!2064233 () Bool)

(assert (=> b!4990681 (= res!2130692 (not lt!2064233))))

(assert (=> b!4990681 (= lt!2064233 (matchR!6727 r!12727 (_1!34727 lt!2064227)))))

(declare-fun b!4990683 () Bool)

(declare-fun res!2130686 () Bool)

(declare-fun e!3119240 () Bool)

(assert (=> b!4990683 (=> res!2130686 e!3119240)))

(declare-fun isPrefix!5312 (List!57870 List!57870) Bool)

(assert (=> b!4990683 (= res!2130686 (not (isPrefix!5312 (_1!34727 lt!2064227) lt!2064232)))))

(declare-fun b!4990684 () Bool)

(assert (=> b!4990684 (= e!3119240 true)))

(declare-fun lt!2064242 () Int)

(declare-fun lt!2064241 () List!57870)

(declare-fun size!38362 (List!57870) Int)

(assert (=> b!4990684 (= lt!2064242 (size!38362 lt!2064241))))

(declare-fun b!4990685 () Bool)

(declare-fun e!3119252 () Bool)

(declare-fun tp!1399073 () Bool)

(declare-fun tp!1399072 () Bool)

(assert (=> b!4990685 (= e!3119252 (and tp!1399073 tp!1399072))))

(declare-fun b!4990686 () Bool)

(declare-fun e!3119253 () Bool)

(declare-fun e!3119247 () Bool)

(assert (=> b!4990686 (= e!3119253 e!3119247)))

(declare-fun res!2130689 () Bool)

(assert (=> b!4990686 (=> (not res!2130689) (not e!3119247))))

(declare-fun isSuffix!1321 (List!57870 List!57870) Bool)

(assert (=> b!4990686 (= res!2130689 (isSuffix!1321 lt!2064232 lt!2064230))))

(declare-fun totalInput!1012 () BalanceConc!29978)

(declare-fun list!18558 (BalanceConc!29978) List!57870)

(assert (=> b!4990686 (= lt!2064230 (list!18558 totalInput!1012))))

(assert (=> b!4990686 (= lt!2064232 (list!18558 input!5597))))

(declare-fun setIsEmpty!28220 () Bool)

(assert (=> setIsEmpty!28220 setRes!28220))

(declare-fun b!4990687 () Bool)

(declare-fun tp_is_empty!36507 () Bool)

(assert (=> b!4990687 (= e!3119252 tp_is_empty!36507)))

(declare-fun b!4990688 () Bool)

(declare-fun tp!1399071 () Bool)

(declare-fun tp!1399066 () Bool)

(assert (=> b!4990688 (= e!3119252 (and tp!1399071 tp!1399066))))

(declare-fun b!4990689 () Bool)

(declare-fun e!3119246 () Bool)

(assert (=> b!4990689 (= e!3119246 e!3119253)))

(declare-fun res!2130693 () Bool)

(assert (=> b!4990689 (=> (not res!2130693) (not e!3119253))))

(declare-datatypes ((List!57871 0))(
  ( (Nil!57747) (Cons!57747 (h!64195 Context!6360) (t!370197 List!57871)) )
))
(declare-fun lt!2064219 () List!57871)

(declare-fun unfocusZipper!282 (List!57871) Regex!13755)

(assert (=> b!4990689 (= res!2130693 (= (unfocusZipper!282 lt!2064219) r!12727))))

(declare-fun toList!8040 ((InoxSet Context!6360)) List!57871)

(assert (=> b!4990689 (= lt!2064219 (toList!8040 z!4183))))

(declare-fun b!4990690 () Bool)

(declare-fun tp!1399067 () Bool)

(assert (=> b!4990690 (= e!3119252 tp!1399067)))

(declare-fun b!4990691 () Bool)

(declare-fun e!3119255 () Bool)

(declare-datatypes ((tuple2!62850 0))(
  ( (tuple2!62851 (_1!34728 BalanceConc!29978) (_2!34728 BalanceConc!29978)) )
))
(declare-fun lt!2064221 () tuple2!62850)

(declare-fun isEmpty!31245 (BalanceConc!29978) Bool)

(assert (=> b!4990691 (= e!3119255 (not (isEmpty!31245 (_1!34728 lt!2064221))))))

(declare-fun b!4990692 () Bool)

(assert (=> b!4990692 (= e!3119251 e!3119240)))

(declare-fun res!2130685 () Bool)

(assert (=> b!4990692 (=> res!2130685 e!3119240)))

(declare-fun lt!2064226 () Int)

(declare-fun lt!2064234 () Int)

(assert (=> b!4990692 (= res!2130685 (or (> lt!2064226 lt!2064234) (> lt!2064234 lt!2064226)))))

(declare-fun size!38363 (BalanceConc!29978) Int)

(assert (=> b!4990692 (= lt!2064234 (size!38363 (_1!34728 lt!2064221)))))

(assert (=> b!4990692 (= lt!2064226 (size!38362 (_1!34727 lt!2064227)))))

(declare-fun lt!2064229 () Bool)

(assert (=> b!4990692 (= (matchR!6727 r!12727 lt!2064241) lt!2064229)))

(declare-datatypes ((Unit!148875 0))(
  ( (Unit!148876) )
))
(declare-fun lt!2064231 () Unit!148875)

(declare-fun theoremZipperRegexEquiv!141 ((InoxSet Context!6360) List!57871 Regex!13755 List!57870) Unit!148875)

(assert (=> b!4990692 (= lt!2064231 (theoremZipperRegexEquiv!141 z!4183 lt!2064219 r!12727 lt!2064241))))

(assert (=> b!4990692 (= lt!2064233 (matchZipper!531 z!4183 (_1!34727 lt!2064227)))))

(declare-fun lt!2064238 () Unit!148875)

(assert (=> b!4990692 (= lt!2064238 (theoremZipperRegexEquiv!141 z!4183 lt!2064219 r!12727 (_1!34727 lt!2064227)))))

(declare-fun b!4990693 () Bool)

(declare-fun tp!1399070 () Bool)

(assert (=> b!4990693 (= e!3119249 tp!1399070)))

(declare-fun b!4990694 () Bool)

(assert (=> b!4990694 (= e!3119243 (not e!3119242))))

(declare-fun res!2130690 () Bool)

(assert (=> b!4990694 (=> res!2130690 e!3119242)))

(assert (=> b!4990694 (= res!2130690 e!3119255)))

(declare-fun res!2130691 () Bool)

(assert (=> b!4990694 (=> (not res!2130691) (not e!3119255))))

(assert (=> b!4990694 (= res!2130691 (not lt!2064229))))

(assert (=> b!4990694 (= lt!2064229 (matchZipper!531 z!4183 lt!2064241))))

(assert (=> b!4990694 e!3119250))

(declare-fun res!2130687 () Bool)

(assert (=> b!4990694 (=> res!2130687 e!3119250)))

(assert (=> b!4990694 (= res!2130687 (isEmpty!31244 (_1!34727 lt!2064228)))))

(declare-fun findLongestMatchInner!1944 (Regex!13755 List!57870 Int List!57870 List!57870 Int) tuple2!62848)

(assert (=> b!4990694 (= lt!2064228 (findLongestMatchInner!1944 r!12727 Nil!57746 (size!38362 Nil!57746) lt!2064232 lt!2064232 (size!38362 lt!2064232)))))

(declare-fun lt!2064237 () Unit!148875)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1905 (Regex!13755 List!57870) Unit!148875)

(assert (=> b!4990694 (= lt!2064237 (longestMatchIsAcceptedByMatchOrIsEmpty!1905 r!12727 lt!2064232))))

(assert (=> b!4990694 e!3119245))

(declare-fun res!2130683 () Bool)

(assert (=> b!4990694 (=> res!2130683 e!3119245)))

(assert (=> b!4990694 (= res!2130683 (= lt!2064222 0))))

(declare-fun lt!2064235 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!95 ((InoxSet Context!6360) Int BalanceConc!29978 Int) Int)

(assert (=> b!4990694 (= lt!2064222 (findLongestMatchInnerZipperFastV2!95 z!4183 lt!2064224 totalInput!1012 lt!2064235))))

(declare-fun lt!2064236 () Unit!148875)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!22 ((InoxSet Context!6360) Int BalanceConc!29978) Unit!148875)

(assert (=> b!4990694 (= lt!2064236 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!22 z!4183 lt!2064224 totalInput!1012))))

(assert (=> b!4990694 (isPrefix!5312 (take!620 lt!2064230 lt!2064224) lt!2064230)))

(declare-fun lt!2064223 () Unit!148875)

(declare-fun lemmaTakeIsPrefix!114 (List!57870 Int) Unit!148875)

(assert (=> b!4990694 (= lt!2064223 (lemmaTakeIsPrefix!114 lt!2064230 lt!2064224))))

(assert (=> b!4990694 (isPrefix!5312 (_1!34727 lt!2064227) lt!2064220)))

(declare-fun lt!2064239 () Unit!148875)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3410 (List!57870 List!57870) Unit!148875)

(assert (=> b!4990694 (= lt!2064239 (lemmaConcatTwoListThenFirstIsPrefix!3410 (_1!34727 lt!2064227) (_2!34727 lt!2064227)))))

(declare-fun lt!2064218 () List!57870)

(assert (=> b!4990694 (isPrefix!5312 lt!2064241 lt!2064218)))

(declare-fun lt!2064225 () Unit!148875)

(declare-fun lt!2064240 () List!57870)

(assert (=> b!4990694 (= lt!2064225 (lemmaConcatTwoListThenFirstIsPrefix!3410 lt!2064241 lt!2064240))))

(declare-fun b!4990695 () Bool)

(declare-fun e!3119241 () Bool)

(declare-fun tp!1399074 () Bool)

(assert (=> b!4990695 (= e!3119241 (and (inv!75785 (c!851376 totalInput!1012)) tp!1399074))))

(declare-fun b!4990696 () Bool)

(assert (=> b!4990696 (= e!3119247 e!3119254)))

(declare-fun res!2130688 () Bool)

(assert (=> b!4990696 (=> (not res!2130688) (not e!3119254))))

(assert (=> b!4990696 (= res!2130688 (= lt!2064218 lt!2064232))))

(assert (=> b!4990696 (= lt!2064218 (++!12599 lt!2064241 lt!2064240))))

(assert (=> b!4990696 (= lt!2064240 (list!18558 (_2!34728 lt!2064221)))))

(assert (=> b!4990696 (= lt!2064241 (list!18558 (_1!34728 lt!2064221)))))

(declare-fun findLongestMatch!1768 (Regex!13755 List!57870) tuple2!62848)

(assert (=> b!4990696 (= lt!2064227 (findLongestMatch!1768 r!12727 lt!2064232))))

(assert (=> b!4990696 (= lt!2064224 (- lt!2064235 (size!38363 input!5597)))))

(assert (=> b!4990696 (= lt!2064235 (size!38363 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!57 ((InoxSet Context!6360) BalanceConc!29978 BalanceConc!29978) tuple2!62850)

(assert (=> b!4990696 (= lt!2064221 (findLongestMatchZipperFastV2!57 z!4183 input!5597 totalInput!1012))))

(declare-fun res!2130684 () Bool)

(assert (=> start!527466 (=> (not res!2130684) (not e!3119246))))

(declare-fun validRegex!6052 (Regex!13755) Bool)

(assert (=> start!527466 (= res!2130684 (validRegex!6052 r!12727))))

(assert (=> start!527466 e!3119246))

(assert (=> start!527466 e!3119252))

(declare-fun inv!75787 (BalanceConc!29978) Bool)

(assert (=> start!527466 (and (inv!75787 input!5597) e!3119244)))

(declare-fun condSetEmpty!28220 () Bool)

(assert (=> start!527466 (= condSetEmpty!28220 (= z!4183 ((as const (Array Context!6360 Bool)) false)))))

(assert (=> start!527466 setRes!28220))

(assert (=> start!527466 (and (inv!75787 totalInput!1012) e!3119241)))

(declare-fun b!4990682 () Bool)

(declare-fun res!2130694 () Bool)

(assert (=> b!4990682 (=> res!2130694 e!3119240)))

(assert (=> b!4990682 (= res!2130694 (not (isPrefix!5312 lt!2064241 lt!2064232)))))

(assert (= (and start!527466 res!2130684) b!4990689))

(assert (= (and b!4990689 res!2130693) b!4990686))

(assert (= (and b!4990686 res!2130689) b!4990696))

(assert (= (and b!4990696 res!2130688) b!4990678))

(assert (= (and b!4990678 res!2130682) b!4990694))

(assert (= (and b!4990694 (not res!2130683)) b!4990676))

(assert (= (and b!4990694 (not res!2130687)) b!4990679))

(assert (= (and b!4990694 res!2130691) b!4990691))

(assert (= (and b!4990694 (not res!2130690)) b!4990681))

(assert (= (and b!4990681 res!2130692) b!4990680))

(assert (= (and b!4990681 (not res!2130695)) b!4990692))

(assert (= (and b!4990692 (not res!2130685)) b!4990682))

(assert (= (and b!4990682 (not res!2130694)) b!4990683))

(assert (= (and b!4990683 (not res!2130686)) b!4990684))

(get-info :version)

(assert (= (and start!527466 ((_ is ElementMatch!13755) r!12727)) b!4990687))

(assert (= (and start!527466 ((_ is Concat!22548) r!12727)) b!4990685))

(assert (= (and start!527466 ((_ is Star!13755) r!12727)) b!4990690))

(assert (= (and start!527466 ((_ is Union!13755) r!12727)) b!4990688))

(assert (= start!527466 b!4990677))

(assert (= (and start!527466 condSetEmpty!28220) setIsEmpty!28220))

(assert (= (and start!527466 (not condSetEmpty!28220)) setNonEmpty!28220))

(assert (= setNonEmpty!28220 b!4990693))

(assert (= start!527466 b!4990695))

(declare-fun m!6023366 () Bool)

(assert (=> b!4990683 m!6023366))

(declare-fun m!6023368 () Bool)

(assert (=> b!4990696 m!6023368))

(declare-fun m!6023370 () Bool)

(assert (=> b!4990696 m!6023370))

(declare-fun m!6023372 () Bool)

(assert (=> b!4990696 m!6023372))

(declare-fun m!6023374 () Bool)

(assert (=> b!4990696 m!6023374))

(declare-fun m!6023376 () Bool)

(assert (=> b!4990696 m!6023376))

(declare-fun m!6023378 () Bool)

(assert (=> b!4990696 m!6023378))

(declare-fun m!6023380 () Bool)

(assert (=> b!4990696 m!6023380))

(declare-fun m!6023382 () Bool)

(assert (=> b!4990684 m!6023382))

(declare-fun m!6023384 () Bool)

(assert (=> b!4990689 m!6023384))

(declare-fun m!6023386 () Bool)

(assert (=> b!4990689 m!6023386))

(declare-fun m!6023388 () Bool)

(assert (=> b!4990680 m!6023388))

(declare-fun m!6023390 () Bool)

(assert (=> b!4990677 m!6023390))

(declare-fun m!6023392 () Bool)

(assert (=> b!4990686 m!6023392))

(declare-fun m!6023394 () Bool)

(assert (=> b!4990686 m!6023394))

(declare-fun m!6023396 () Bool)

(assert (=> b!4990686 m!6023396))

(declare-fun m!6023398 () Bool)

(assert (=> b!4990694 m!6023398))

(declare-fun m!6023400 () Bool)

(assert (=> b!4990694 m!6023400))

(declare-fun m!6023402 () Bool)

(assert (=> b!4990694 m!6023402))

(assert (=> b!4990694 m!6023398))

(assert (=> b!4990694 m!6023400))

(declare-fun m!6023404 () Bool)

(assert (=> b!4990694 m!6023404))

(declare-fun m!6023406 () Bool)

(assert (=> b!4990694 m!6023406))

(declare-fun m!6023408 () Bool)

(assert (=> b!4990694 m!6023408))

(declare-fun m!6023410 () Bool)

(assert (=> b!4990694 m!6023410))

(declare-fun m!6023412 () Bool)

(assert (=> b!4990694 m!6023412))

(declare-fun m!6023414 () Bool)

(assert (=> b!4990694 m!6023414))

(assert (=> b!4990694 m!6023406))

(declare-fun m!6023416 () Bool)

(assert (=> b!4990694 m!6023416))

(declare-fun m!6023418 () Bool)

(assert (=> b!4990694 m!6023418))

(declare-fun m!6023420 () Bool)

(assert (=> b!4990694 m!6023420))

(declare-fun m!6023422 () Bool)

(assert (=> b!4990694 m!6023422))

(declare-fun m!6023424 () Bool)

(assert (=> b!4990694 m!6023424))

(declare-fun m!6023426 () Bool)

(assert (=> b!4990694 m!6023426))

(declare-fun m!6023428 () Bool)

(assert (=> b!4990678 m!6023428))

(declare-fun m!6023430 () Bool)

(assert (=> b!4990692 m!6023430))

(declare-fun m!6023432 () Bool)

(assert (=> b!4990692 m!6023432))

(declare-fun m!6023434 () Bool)

(assert (=> b!4990692 m!6023434))

(declare-fun m!6023436 () Bool)

(assert (=> b!4990692 m!6023436))

(declare-fun m!6023438 () Bool)

(assert (=> b!4990692 m!6023438))

(declare-fun m!6023440 () Bool)

(assert (=> b!4990692 m!6023440))

(declare-fun m!6023442 () Bool)

(assert (=> b!4990691 m!6023442))

(declare-fun m!6023444 () Bool)

(assert (=> start!527466 m!6023444))

(declare-fun m!6023446 () Bool)

(assert (=> start!527466 m!6023446))

(declare-fun m!6023448 () Bool)

(assert (=> start!527466 m!6023448))

(declare-fun m!6023450 () Bool)

(assert (=> b!4990682 m!6023450))

(declare-fun m!6023452 () Bool)

(assert (=> setNonEmpty!28220 m!6023452))

(declare-fun m!6023454 () Bool)

(assert (=> b!4990681 m!6023454))

(declare-fun m!6023456 () Bool)

(assert (=> b!4990695 m!6023456))

(declare-fun m!6023458 () Bool)

(assert (=> b!4990679 m!6023458))

(declare-fun m!6023460 () Bool)

(assert (=> b!4990676 m!6023460))

(assert (=> b!4990676 m!6023460))

(declare-fun m!6023462 () Bool)

(assert (=> b!4990676 m!6023462))

(assert (=> b!4990676 m!6023462))

(declare-fun m!6023464 () Bool)

(assert (=> b!4990676 m!6023464))

(check-sat (not setNonEmpty!28220) (not b!4990695) (not b!4990680) (not b!4990676) (not start!527466) (not b!4990691) (not b!4990693) (not b!4990692) (not b!4990678) tp_is_empty!36507 (not b!4990689) (not b!4990696) (not b!4990679) (not b!4990690) (not b!4990682) (not b!4990686) (not b!4990683) (not b!4990681) (not b!4990684) (not b!4990677) (not b!4990694) (not b!4990685) (not b!4990688))
(check-sat)
