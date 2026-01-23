; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528182 () Bool)

(assert start!528182)

(declare-fun b!4998471 () Bool)

(declare-fun e!3123506 () Bool)

(declare-fun e!3123500 () Bool)

(assert (=> b!4998471 (= e!3123506 e!3123500)))

(declare-fun res!2132967 () Bool)

(assert (=> b!4998471 (=> (not res!2132967) (not e!3123500))))

(declare-datatypes ((C!27792 0))(
  ( (C!27793 (val!23262 Int)) )
))
(declare-datatypes ((List!57917 0))(
  ( (Nil!57793) (Cons!57793 (h!64241 C!27792) (t!370257 List!57917)) )
))
(declare-fun lt!2067330 () List!57917)

(declare-fun lt!2067317 () List!57917)

(declare-fun isSuffix!1337 (List!57917 List!57917) Bool)

(assert (=> b!4998471 (= res!2132967 (isSuffix!1337 lt!2067330 lt!2067317))))

(declare-datatypes ((IArray!30641 0))(
  ( (IArray!30642 (innerList!15378 List!57917)) )
))
(declare-datatypes ((Conc!15290 0))(
  ( (Node!15290 (left!42269 Conc!15290) (right!42599 Conc!15290) (csize!30810 Int) (cheight!15501 Int)) (Leaf!25384 (xs!18616 IArray!30641) (csize!30811 Int)) (Empty!15290) )
))
(declare-datatypes ((BalanceConc!30010 0))(
  ( (BalanceConc!30011 (c!853063 Conc!15290)) )
))
(declare-fun totalInput!1012 () BalanceConc!30010)

(declare-fun list!18586 (BalanceConc!30010) List!57917)

(assert (=> b!4998471 (= lt!2067317 (list!18586 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30010)

(assert (=> b!4998471 (= lt!2067330 (list!18586 input!5597))))

(declare-fun b!4998472 () Bool)

(declare-fun e!3123512 () Bool)

(declare-fun e!3123499 () Bool)

(assert (=> b!4998472 (= e!3123512 (not e!3123499))))

(declare-fun res!2132955 () Bool)

(assert (=> b!4998472 (=> res!2132955 e!3123499)))

(declare-fun e!3123513 () Bool)

(assert (=> b!4998472 (= res!2132955 e!3123513)))

(declare-fun res!2132963 () Bool)

(assert (=> b!4998472 (=> (not res!2132963) (not e!3123513))))

(declare-fun lt!2067329 () Bool)

(assert (=> b!4998472 (= res!2132963 (not lt!2067329))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13771 0))(
  ( (ElementMatch!13771 (c!853064 C!27792)) (Concat!22564 (regOne!28054 Regex!13771) (regTwo!28054 Regex!13771)) (EmptyExpr!13771) (Star!13771 (reg!14100 Regex!13771)) (EmptyLang!13771) (Union!13771 (regOne!28055 Regex!13771) (regTwo!28055 Regex!13771)) )
))
(declare-datatypes ((List!57918 0))(
  ( (Nil!57794) (Cons!57794 (h!64242 Regex!13771) (t!370258 List!57918)) )
))
(declare-datatypes ((Context!6392 0))(
  ( (Context!6393 (exprs!3696 List!57918)) )
))
(declare-fun z!4183 () (InoxSet Context!6392))

(declare-fun lt!2067319 () List!57917)

(declare-fun matchZipper!543 ((InoxSet Context!6392) List!57917) Bool)

(assert (=> b!4998472 (= lt!2067329 (matchZipper!543 z!4183 lt!2067319))))

(declare-fun e!3123498 () Bool)

(assert (=> b!4998472 e!3123498))

(declare-fun res!2132964 () Bool)

(assert (=> b!4998472 (=> res!2132964 e!3123498)))

(declare-datatypes ((tuple2!62916 0))(
  ( (tuple2!62917 (_1!34761 List!57917) (_2!34761 List!57917)) )
))
(declare-fun lt!2067324 () tuple2!62916)

(declare-fun isEmpty!31278 (List!57917) Bool)

(assert (=> b!4998472 (= res!2132964 (isEmpty!31278 (_1!34761 lt!2067324)))))

(declare-fun r!12727 () Regex!13771)

(declare-fun findLongestMatchInner!1960 (Regex!13771 List!57917 Int List!57917 List!57917 Int) tuple2!62916)

(declare-fun size!38404 (List!57917) Int)

(assert (=> b!4998472 (= lt!2067324 (findLongestMatchInner!1960 r!12727 Nil!57793 (size!38404 Nil!57793) lt!2067330 lt!2067330 (size!38404 lt!2067330)))))

(declare-datatypes ((Unit!148957 0))(
  ( (Unit!148958) )
))
(declare-fun lt!2067321 () Unit!148957)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1917 (Regex!13771 List!57917) Unit!148957)

(assert (=> b!4998472 (= lt!2067321 (longestMatchIsAcceptedByMatchOrIsEmpty!1917 r!12727 lt!2067330))))

(declare-fun e!3123508 () Bool)

(assert (=> b!4998472 e!3123508))

(declare-fun res!2132962 () Bool)

(assert (=> b!4998472 (=> res!2132962 e!3123508)))

(declare-fun lt!2067334 () Int)

(assert (=> b!4998472 (= res!2132962 (= lt!2067334 0))))

(declare-fun lt!2067333 () Int)

(declare-fun lt!2067318 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!111 ((InoxSet Context!6392) Int BalanceConc!30010 Int) Int)

(assert (=> b!4998472 (= lt!2067334 (findLongestMatchInnerZipperFastV2!111 z!4183 lt!2067318 totalInput!1012 lt!2067333))))

(declare-fun lt!2067313 () Unit!148957)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!34 ((InoxSet Context!6392) Int BalanceConc!30010) Unit!148957)

(assert (=> b!4998472 (= lt!2067313 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!34 z!4183 lt!2067318 totalInput!1012))))

(declare-fun isPrefix!5324 (List!57917 List!57917) Bool)

(declare-fun take!632 (List!57917 Int) List!57917)

(assert (=> b!4998472 (isPrefix!5324 (take!632 lt!2067317 lt!2067318) lt!2067317)))

(declare-fun lt!2067326 () Unit!148957)

(declare-fun lemmaTakeIsPrefix!126 (List!57917 Int) Unit!148957)

(assert (=> b!4998472 (= lt!2067326 (lemmaTakeIsPrefix!126 lt!2067317 lt!2067318))))

(declare-fun lt!2067327 () tuple2!62916)

(declare-fun lt!2067335 () List!57917)

(assert (=> b!4998472 (isPrefix!5324 (_1!34761 lt!2067327) lt!2067335)))

(declare-fun lt!2067316 () Unit!148957)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3422 (List!57917 List!57917) Unit!148957)

(assert (=> b!4998472 (= lt!2067316 (lemmaConcatTwoListThenFirstIsPrefix!3422 (_1!34761 lt!2067327) (_2!34761 lt!2067327)))))

(declare-fun lt!2067328 () List!57917)

(assert (=> b!4998472 (isPrefix!5324 lt!2067319 lt!2067328)))

(declare-fun lt!2067314 () Unit!148957)

(declare-fun lt!2067322 () List!57917)

(assert (=> b!4998472 (= lt!2067314 (lemmaConcatTwoListThenFirstIsPrefix!3422 lt!2067319 lt!2067322))))

(declare-fun b!4998473 () Bool)

(declare-fun e!3123510 () Bool)

(declare-fun tp!1401818 () Bool)

(declare-fun inv!75886 (Conc!15290) Bool)

(assert (=> b!4998473 (= e!3123510 (and (inv!75886 (c!853063 input!5597)) tp!1401818))))

(declare-fun res!2132956 () Bool)

(declare-fun e!3123502 () Bool)

(assert (=> start!528182 (=> (not res!2132956) (not e!3123502))))

(declare-fun validRegex!6068 (Regex!13771) Bool)

(assert (=> start!528182 (= res!2132956 (validRegex!6068 r!12727))))

(assert (=> start!528182 e!3123502))

(declare-fun e!3123509 () Bool)

(assert (=> start!528182 e!3123509))

(declare-fun inv!75887 (BalanceConc!30010) Bool)

(assert (=> start!528182 (and (inv!75887 input!5597) e!3123510)))

(declare-fun condSetEmpty!28302 () Bool)

(assert (=> start!528182 (= condSetEmpty!28302 (= z!4183 ((as const (Array Context!6392 Bool)) false)))))

(declare-fun setRes!28302 () Bool)

(assert (=> start!528182 setRes!28302))

(declare-fun e!3123507 () Bool)

(assert (=> start!528182 (and (inv!75887 totalInput!1012) e!3123507)))

(declare-fun b!4998474 () Bool)

(declare-fun tp_is_empty!36539 () Bool)

(assert (=> b!4998474 (= e!3123509 tp_is_empty!36539)))

(declare-fun b!4998475 () Bool)

(declare-fun e!3123511 () Bool)

(declare-fun e!3123501 () Bool)

(assert (=> b!4998475 (= e!3123511 e!3123501)))

(declare-fun res!2132961 () Bool)

(assert (=> b!4998475 (=> res!2132961 e!3123501)))

(declare-fun lt!2067340 () Int)

(declare-datatypes ((tuple2!62918 0))(
  ( (tuple2!62919 (_1!34762 BalanceConc!30010) (_2!34762 BalanceConc!30010)) )
))
(declare-fun lt!2067315 () tuple2!62918)

(declare-fun size!38405 (BalanceConc!30010) Int)

(assert (=> b!4998475 (= res!2132961 (<= lt!2067340 (size!38405 (_1!34762 lt!2067315))))))

(assert (=> b!4998475 (= lt!2067340 (size!38404 (_1!34761 lt!2067327)))))

(declare-fun matchR!6739 (Regex!13771 List!57917) Bool)

(assert (=> b!4998475 (= (matchR!6739 r!12727 lt!2067319) lt!2067329)))

(declare-fun lt!2067320 () Unit!148957)

(declare-datatypes ((List!57919 0))(
  ( (Nil!57795) (Cons!57795 (h!64243 Context!6392) (t!370259 List!57919)) )
))
(declare-fun lt!2067323 () List!57919)

(declare-fun theoremZipperRegexEquiv!149 ((InoxSet Context!6392) List!57919 Regex!13771 List!57917) Unit!148957)

(assert (=> b!4998475 (= lt!2067320 (theoremZipperRegexEquiv!149 z!4183 lt!2067323 r!12727 lt!2067319))))

(declare-fun lt!2067338 () Bool)

(assert (=> b!4998475 (= lt!2067338 (matchZipper!543 z!4183 (_1!34761 lt!2067327)))))

(declare-fun lt!2067325 () Unit!148957)

(assert (=> b!4998475 (= lt!2067325 (theoremZipperRegexEquiv!149 z!4183 lt!2067323 r!12727 (_1!34761 lt!2067327)))))

(declare-fun b!4998476 () Bool)

(declare-fun e!3123497 () Bool)

(assert (=> b!4998476 (= e!3123501 e!3123497)))

(declare-fun res!2132966 () Bool)

(assert (=> b!4998476 (=> res!2132966 e!3123497)))

(declare-fun lt!2067337 () List!57917)

(assert (=> b!4998476 (= res!2132966 (not (= lt!2067337 lt!2067330)))))

(declare-fun lt!2067332 () List!57917)

(assert (=> b!4998476 (= lt!2067332 (take!632 lt!2067337 lt!2067340))))

(declare-fun drop!2434 (List!57917 Int) List!57917)

(assert (=> b!4998476 (= lt!2067337 (drop!2434 lt!2067317 lt!2067318))))

(declare-fun b!4998477 () Bool)

(assert (=> b!4998477 (= e!3123502 e!3123506)))

(declare-fun res!2132959 () Bool)

(assert (=> b!4998477 (=> (not res!2132959) (not e!3123506))))

(declare-fun unfocusZipper!298 (List!57919) Regex!13771)

(assert (=> b!4998477 (= res!2132959 (= (unfocusZipper!298 lt!2067323) r!12727))))

(declare-fun toList!8056 ((InoxSet Context!6392)) List!57919)

(assert (=> b!4998477 (= lt!2067323 (toList!8056 z!4183))))

(declare-fun b!4998478 () Bool)

(declare-fun tp!1401821 () Bool)

(assert (=> b!4998478 (= e!3123507 (and (inv!75886 (c!853063 totalInput!1012)) tp!1401821))))

(declare-fun b!4998479 () Bool)

(declare-fun tp!1401822 () Bool)

(declare-fun tp!1401816 () Bool)

(assert (=> b!4998479 (= e!3123509 (and tp!1401822 tp!1401816))))

(declare-fun b!4998480 () Bool)

(declare-fun e!3123503 () Bool)

(assert (=> b!4998480 (= e!3123503 (not (isEmpty!31278 (_1!34761 lt!2067327))))))

(declare-fun b!4998481 () Bool)

(assert (=> b!4998481 (= e!3123508 (matchZipper!543 z!4183 (take!632 (drop!2434 lt!2067317 lt!2067318) lt!2067334)))))

(declare-fun b!4998482 () Bool)

(declare-fun tp!1401823 () Bool)

(declare-fun tp!1401824 () Bool)

(assert (=> b!4998482 (= e!3123509 (and tp!1401823 tp!1401824))))

(declare-fun b!4998483 () Bool)

(declare-fun e!3123504 () Bool)

(declare-fun tp!1401820 () Bool)

(assert (=> b!4998483 (= e!3123504 tp!1401820)))

(declare-fun b!4998484 () Bool)

(declare-fun isEmpty!31279 (BalanceConc!30010) Bool)

(assert (=> b!4998484 (= e!3123513 (not (isEmpty!31279 (_1!34762 lt!2067315))))))

(declare-fun b!4998485 () Bool)

(declare-fun e!3123505 () Bool)

(assert (=> b!4998485 (= e!3123500 e!3123505)))

(declare-fun res!2132958 () Bool)

(assert (=> b!4998485 (=> (not res!2132958) (not e!3123505))))

(assert (=> b!4998485 (= res!2132958 (= lt!2067328 lt!2067330))))

(declare-fun ++!12617 (List!57917 List!57917) List!57917)

(assert (=> b!4998485 (= lt!2067328 (++!12617 lt!2067319 lt!2067322))))

(assert (=> b!4998485 (= lt!2067322 (list!18586 (_2!34762 lt!2067315)))))

(assert (=> b!4998485 (= lt!2067319 (list!18586 (_1!34762 lt!2067315)))))

(declare-fun findLongestMatch!1784 (Regex!13771 List!57917) tuple2!62916)

(assert (=> b!4998485 (= lt!2067327 (findLongestMatch!1784 r!12727 lt!2067330))))

(assert (=> b!4998485 (= lt!2067318 (- lt!2067333 (size!38405 input!5597)))))

(assert (=> b!4998485 (= lt!2067333 (size!38405 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!73 ((InoxSet Context!6392) BalanceConc!30010 BalanceConc!30010) tuple2!62918)

(assert (=> b!4998485 (= lt!2067315 (findLongestMatchZipperFastV2!73 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4998486 () Bool)

(assert (=> b!4998486 (= e!3123498 (matchR!6739 r!12727 (_1!34761 lt!2067324)))))

(declare-fun setIsEmpty!28302 () Bool)

(assert (=> setIsEmpty!28302 setRes!28302))

(declare-fun b!4998487 () Bool)

(assert (=> b!4998487 (= e!3123505 e!3123512)))

(declare-fun res!2132957 () Bool)

(assert (=> b!4998487 (=> (not res!2132957) (not e!3123512))))

(assert (=> b!4998487 (= res!2132957 (= lt!2067335 lt!2067330))))

(assert (=> b!4998487 (= lt!2067335 (++!12617 (_1!34761 lt!2067327) (_2!34761 lt!2067327)))))

(declare-fun b!4998488 () Bool)

(declare-fun lt!2067331 () List!57917)

(assert (=> b!4998488 (= e!3123497 (= lt!2067331 (_1!34761 lt!2067327)))))

(assert (=> b!4998488 (= lt!2067332 (_1!34761 lt!2067327))))

(declare-fun lt!2067339 () Unit!148957)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1261 (List!57917 List!57917 List!57917) Unit!148957)

(assert (=> b!4998488 (= lt!2067339 (lemmaIsPrefixSameLengthThenSameList!1261 lt!2067332 (_1!34761 lt!2067327) lt!2067330))))

(assert (=> b!4998488 (isPrefix!5324 lt!2067331 lt!2067330)))

(assert (=> b!4998488 (= lt!2067331 (take!632 lt!2067330 lt!2067340))))

(declare-fun lt!2067336 () Unit!148957)

(assert (=> b!4998488 (= lt!2067336 (lemmaTakeIsPrefix!126 lt!2067330 lt!2067340))))

(declare-fun b!4998489 () Bool)

(assert (=> b!4998489 (= e!3123499 e!3123511)))

(declare-fun res!2132965 () Bool)

(assert (=> b!4998489 (=> res!2132965 e!3123511)))

(assert (=> b!4998489 (= res!2132965 e!3123503)))

(declare-fun res!2132960 () Bool)

(assert (=> b!4998489 (=> (not res!2132960) (not e!3123503))))

(assert (=> b!4998489 (= res!2132960 (not lt!2067338))))

(assert (=> b!4998489 (= lt!2067338 (matchR!6739 r!12727 (_1!34761 lt!2067327)))))

(declare-fun tp!1401817 () Bool)

(declare-fun setNonEmpty!28302 () Bool)

(declare-fun setElem!28302 () Context!6392)

(declare-fun inv!75888 (Context!6392) Bool)

(assert (=> setNonEmpty!28302 (= setRes!28302 (and tp!1401817 (inv!75888 setElem!28302) e!3123504))))

(declare-fun setRest!28302 () (InoxSet Context!6392))

(assert (=> setNonEmpty!28302 (= z!4183 ((_ map or) (store ((as const (Array Context!6392 Bool)) false) setElem!28302 true) setRest!28302))))

(declare-fun b!4998490 () Bool)

(declare-fun tp!1401819 () Bool)

(assert (=> b!4998490 (= e!3123509 tp!1401819)))

(assert (= (and start!528182 res!2132956) b!4998477))

(assert (= (and b!4998477 res!2132959) b!4998471))

(assert (= (and b!4998471 res!2132967) b!4998485))

(assert (= (and b!4998485 res!2132958) b!4998487))

(assert (= (and b!4998487 res!2132957) b!4998472))

(assert (= (and b!4998472 (not res!2132962)) b!4998481))

(assert (= (and b!4998472 (not res!2132964)) b!4998486))

(assert (= (and b!4998472 res!2132963) b!4998484))

(assert (= (and b!4998472 (not res!2132955)) b!4998489))

(assert (= (and b!4998489 res!2132960) b!4998480))

(assert (= (and b!4998489 (not res!2132965)) b!4998475))

(assert (= (and b!4998475 (not res!2132961)) b!4998476))

(assert (= (and b!4998476 (not res!2132966)) b!4998488))

(get-info :version)

(assert (= (and start!528182 ((_ is ElementMatch!13771) r!12727)) b!4998474))

(assert (= (and start!528182 ((_ is Concat!22564) r!12727)) b!4998479))

(assert (= (and start!528182 ((_ is Star!13771) r!12727)) b!4998490))

(assert (= (and start!528182 ((_ is Union!13771) r!12727)) b!4998482))

(assert (= start!528182 b!4998473))

(assert (= (and start!528182 condSetEmpty!28302) setIsEmpty!28302))

(assert (= (and start!528182 (not condSetEmpty!28302)) setNonEmpty!28302))

(assert (= setNonEmpty!28302 b!4998483))

(assert (= start!528182 b!4998478))

(declare-fun m!6031650 () Bool)

(assert (=> setNonEmpty!28302 m!6031650))

(declare-fun m!6031652 () Bool)

(assert (=> b!4998481 m!6031652))

(assert (=> b!4998481 m!6031652))

(declare-fun m!6031654 () Bool)

(assert (=> b!4998481 m!6031654))

(assert (=> b!4998481 m!6031654))

(declare-fun m!6031656 () Bool)

(assert (=> b!4998481 m!6031656))

(declare-fun m!6031658 () Bool)

(assert (=> b!4998485 m!6031658))

(declare-fun m!6031660 () Bool)

(assert (=> b!4998485 m!6031660))

(declare-fun m!6031662 () Bool)

(assert (=> b!4998485 m!6031662))

(declare-fun m!6031664 () Bool)

(assert (=> b!4998485 m!6031664))

(declare-fun m!6031666 () Bool)

(assert (=> b!4998485 m!6031666))

(declare-fun m!6031668 () Bool)

(assert (=> b!4998485 m!6031668))

(declare-fun m!6031670 () Bool)

(assert (=> b!4998485 m!6031670))

(declare-fun m!6031672 () Bool)

(assert (=> b!4998486 m!6031672))

(declare-fun m!6031674 () Bool)

(assert (=> b!4998478 m!6031674))

(declare-fun m!6031676 () Bool)

(assert (=> b!4998487 m!6031676))

(declare-fun m!6031678 () Bool)

(assert (=> b!4998477 m!6031678))

(declare-fun m!6031680 () Bool)

(assert (=> b!4998477 m!6031680))

(declare-fun m!6031682 () Bool)

(assert (=> b!4998475 m!6031682))

(declare-fun m!6031684 () Bool)

(assert (=> b!4998475 m!6031684))

(declare-fun m!6031686 () Bool)

(assert (=> b!4998475 m!6031686))

(declare-fun m!6031688 () Bool)

(assert (=> b!4998475 m!6031688))

(declare-fun m!6031690 () Bool)

(assert (=> b!4998475 m!6031690))

(declare-fun m!6031692 () Bool)

(assert (=> b!4998475 m!6031692))

(declare-fun m!6031694 () Bool)

(assert (=> b!4998472 m!6031694))

(declare-fun m!6031696 () Bool)

(assert (=> b!4998472 m!6031696))

(declare-fun m!6031698 () Bool)

(assert (=> b!4998472 m!6031698))

(declare-fun m!6031700 () Bool)

(assert (=> b!4998472 m!6031700))

(declare-fun m!6031702 () Bool)

(assert (=> b!4998472 m!6031702))

(declare-fun m!6031704 () Bool)

(assert (=> b!4998472 m!6031704))

(declare-fun m!6031706 () Bool)

(assert (=> b!4998472 m!6031706))

(assert (=> b!4998472 m!6031694))

(declare-fun m!6031708 () Bool)

(assert (=> b!4998472 m!6031708))

(assert (=> b!4998472 m!6031704))

(declare-fun m!6031710 () Bool)

(assert (=> b!4998472 m!6031710))

(declare-fun m!6031712 () Bool)

(assert (=> b!4998472 m!6031712))

(declare-fun m!6031714 () Bool)

(assert (=> b!4998472 m!6031714))

(declare-fun m!6031716 () Bool)

(assert (=> b!4998472 m!6031716))

(declare-fun m!6031718 () Bool)

(assert (=> b!4998472 m!6031718))

(declare-fun m!6031720 () Bool)

(assert (=> b!4998472 m!6031720))

(assert (=> b!4998472 m!6031708))

(declare-fun m!6031722 () Bool)

(assert (=> b!4998472 m!6031722))

(declare-fun m!6031724 () Bool)

(assert (=> b!4998488 m!6031724))

(declare-fun m!6031726 () Bool)

(assert (=> b!4998488 m!6031726))

(declare-fun m!6031728 () Bool)

(assert (=> b!4998488 m!6031728))

(declare-fun m!6031730 () Bool)

(assert (=> b!4998488 m!6031730))

(declare-fun m!6031732 () Bool)

(assert (=> b!4998476 m!6031732))

(assert (=> b!4998476 m!6031652))

(declare-fun m!6031734 () Bool)

(assert (=> b!4998489 m!6031734))

(declare-fun m!6031736 () Bool)

(assert (=> b!4998484 m!6031736))

(declare-fun m!6031738 () Bool)

(assert (=> start!528182 m!6031738))

(declare-fun m!6031740 () Bool)

(assert (=> start!528182 m!6031740))

(declare-fun m!6031742 () Bool)

(assert (=> start!528182 m!6031742))

(declare-fun m!6031744 () Bool)

(assert (=> b!4998473 m!6031744))

(declare-fun m!6031746 () Bool)

(assert (=> b!4998471 m!6031746))

(declare-fun m!6031748 () Bool)

(assert (=> b!4998471 m!6031748))

(declare-fun m!6031750 () Bool)

(assert (=> b!4998471 m!6031750))

(declare-fun m!6031752 () Bool)

(assert (=> b!4998480 m!6031752))

(check-sat (not b!4998486) (not b!4998489) (not start!528182) (not b!4998472) (not b!4998477) (not b!4998475) (not b!4998481) (not b!4998478) (not b!4998487) (not b!4998488) (not b!4998483) (not b!4998480) (not b!4998484) (not b!4998482) (not b!4998490) (not b!4998485) tp_is_empty!36539 (not setNonEmpty!28302) (not b!4998471) (not b!4998479) (not b!4998473) (not b!4998476))
(check-sat)
