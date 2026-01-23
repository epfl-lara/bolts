; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!528772 () Bool)

(assert start!528772)

(declare-fun b!5003437 () Bool)

(declare-fun e!3126577 () Bool)

(declare-datatypes ((C!27834 0))(
  ( (C!27835 (val!23283 Int)) )
))
(declare-datatypes ((List!57980 0))(
  ( (Nil!57856) (Cons!57856 (h!64304 C!27834) (t!370326 List!57980)) )
))
(declare-datatypes ((IArray!30683 0))(
  ( (IArray!30684 (innerList!15399 List!57980)) )
))
(declare-datatypes ((Conc!15311 0))(
  ( (Node!15311 (left!42301 Conc!15311) (right!42631 Conc!15311) (csize!30852 Int) (cheight!15522 Int)) (Leaf!25416 (xs!18637 IArray!30683) (csize!30853 Int)) (Empty!15311) )
))
(declare-datatypes ((BalanceConc!30052 0))(
  ( (BalanceConc!30053 (c!853987 Conc!15311)) )
))
(declare-datatypes ((tuple2!63004 0))(
  ( (tuple2!63005 (_1!34805 BalanceConc!30052) (_2!34805 BalanceConc!30052)) )
))
(declare-fun lt!2070397 () tuple2!63004)

(declare-fun isEmpty!31324 (BalanceConc!30052) Bool)

(assert (=> b!5003437 (= e!3126577 (not (isEmpty!31324 (_1!34805 lt!2070397))))))

(declare-fun b!5003438 () Bool)

(declare-fun e!3126588 () Bool)

(declare-datatypes ((tuple2!63006 0))(
  ( (tuple2!63007 (_1!34806 List!57980) (_2!34806 List!57980)) )
))
(declare-fun lt!2070393 () tuple2!63006)

(declare-fun isEmpty!31325 (List!57980) Bool)

(assert (=> b!5003438 (= e!3126588 (not (isEmpty!31325 (_1!34806 lt!2070393))))))

(declare-fun b!5003439 () Bool)

(declare-fun e!3126574 () Bool)

(declare-fun tp_is_empty!36581 () Bool)

(assert (=> b!5003439 (= e!3126574 tp_is_empty!36581)))

(declare-fun b!5003440 () Bool)

(declare-fun e!3126583 () Bool)

(declare-fun input!5597 () BalanceConc!30052)

(declare-fun tp!1403289 () Bool)

(declare-fun inv!76011 (Conc!15311) Bool)

(assert (=> b!5003440 (= e!3126583 (and (inv!76011 (c!853987 input!5597)) tp!1403289))))

(declare-fun b!5003441 () Bool)

(declare-fun e!3126590 () Bool)

(declare-fun e!3126578 () Bool)

(assert (=> b!5003441 (= e!3126590 e!3126578)))

(declare-fun res!2134922 () Bool)

(assert (=> b!5003441 (=> res!2134922 e!3126578)))

(declare-fun lt!2070376 () Int)

(declare-fun size!38456 (BalanceConc!30052) Int)

(assert (=> b!5003441 (= res!2134922 (<= lt!2070376 (size!38456 (_1!34805 lt!2070397))))))

(declare-fun size!38457 (List!57980) Int)

(assert (=> b!5003441 (= lt!2070376 (size!38457 (_1!34806 lt!2070393)))))

(declare-datatypes ((Regex!13792 0))(
  ( (ElementMatch!13792 (c!853988 C!27834)) (Concat!22585 (regOne!28096 Regex!13792) (regTwo!28096 Regex!13792)) (EmptyExpr!13792) (Star!13792 (reg!14121 Regex!13792)) (EmptyLang!13792) (Union!13792 (regOne!28097 Regex!13792) (regTwo!28097 Regex!13792)) )
))
(declare-fun r!12727 () Regex!13792)

(declare-fun lt!2070387 () List!57980)

(declare-fun lt!2070390 () Bool)

(declare-fun matchR!6756 (Regex!13792 List!57980) Bool)

(assert (=> b!5003441 (= (matchR!6756 r!12727 lt!2070387) lt!2070390)))

(declare-datatypes ((List!57981 0))(
  ( (Nil!57857) (Cons!57857 (h!64305 Regex!13792) (t!370327 List!57981)) )
))
(declare-datatypes ((Context!6434 0))(
  ( (Context!6435 (exprs!3717 List!57981)) )
))
(declare-datatypes ((List!57982 0))(
  ( (Nil!57858) (Cons!57858 (h!64306 Context!6434) (t!370328 List!57982)) )
))
(declare-fun lt!2070383 () List!57982)

(declare-fun z!4183 () (Set Context!6434))

(declare-datatypes ((Unit!149023 0))(
  ( (Unit!149024) )
))
(declare-fun lt!2070373 () Unit!149023)

(declare-fun theoremZipperRegexEquiv!164 ((Set Context!6434) List!57982 Regex!13792 List!57980) Unit!149023)

(assert (=> b!5003441 (= lt!2070373 (theoremZipperRegexEquiv!164 z!4183 lt!2070383 r!12727 lt!2070387))))

(declare-fun lt!2070394 () Bool)

(declare-fun matchZipper!560 ((Set Context!6434) List!57980) Bool)

(assert (=> b!5003441 (= lt!2070394 (matchZipper!560 z!4183 (_1!34806 lt!2070393)))))

(declare-fun lt!2070378 () Unit!149023)

(assert (=> b!5003441 (= lt!2070378 (theoremZipperRegexEquiv!164 z!4183 lt!2070383 r!12727 (_1!34806 lt!2070393)))))

(declare-fun b!5003442 () Bool)

(declare-fun e!3126582 () Bool)

(assert (=> b!5003442 (= e!3126578 e!3126582)))

(declare-fun res!2134924 () Bool)

(assert (=> b!5003442 (=> res!2134924 e!3126582)))

(declare-fun lt!2070380 () List!57980)

(declare-fun lt!2070379 () List!57980)

(assert (=> b!5003442 (= res!2134924 (not (= lt!2070380 lt!2070379)))))

(declare-fun lt!2070395 () List!57980)

(declare-fun take!651 (List!57980 Int) List!57980)

(assert (=> b!5003442 (= lt!2070395 (take!651 lt!2070380 lt!2070376))))

(declare-fun lt!2070392 () List!57980)

(declare-fun lt!2070381 () Int)

(declare-fun drop!2455 (List!57980 Int) List!57980)

(assert (=> b!5003442 (= lt!2070380 (drop!2455 lt!2070392 lt!2070381))))

(declare-fun b!5003443 () Bool)

(declare-fun e!3126587 () Bool)

(declare-fun totalInput!1012 () BalanceConc!30052)

(declare-fun tp!1403296 () Bool)

(assert (=> b!5003443 (= e!3126587 (and (inv!76011 (c!853987 totalInput!1012)) tp!1403296))))

(declare-fun setIsEmpty!28397 () Bool)

(declare-fun setRes!28397 () Bool)

(assert (=> setIsEmpty!28397 setRes!28397))

(declare-fun e!3126584 () Bool)

(declare-fun tp!1403291 () Bool)

(declare-fun setElem!28397 () Context!6434)

(declare-fun setNonEmpty!28397 () Bool)

(declare-fun inv!76012 (Context!6434) Bool)

(assert (=> setNonEmpty!28397 (= setRes!28397 (and tp!1403291 (inv!76012 setElem!28397) e!3126584))))

(declare-fun setRest!28397 () (Set Context!6434))

(assert (=> setNonEmpty!28397 (= z!4183 (set.union (set.insert setElem!28397 (as set.empty (Set Context!6434))) setRest!28397))))

(declare-fun b!5003444 () Bool)

(declare-fun e!3126585 () Bool)

(declare-fun e!3126579 () Bool)

(assert (=> b!5003444 (= e!3126585 e!3126579)))

(declare-fun res!2134926 () Bool)

(assert (=> b!5003444 (=> (not res!2134926) (not e!3126579))))

(declare-fun isSuffix!1358 (List!57980 List!57980) Bool)

(assert (=> b!5003444 (= res!2134926 (isSuffix!1358 lt!2070379 lt!2070392))))

(declare-fun list!18619 (BalanceConc!30052) List!57980)

(assert (=> b!5003444 (= lt!2070392 (list!18619 totalInput!1012))))

(assert (=> b!5003444 (= lt!2070379 (list!18619 input!5597))))

(declare-fun b!5003445 () Bool)

(declare-fun e!3126586 () Bool)

(assert (=> b!5003445 (= e!3126579 e!3126586)))

(declare-fun res!2134931 () Bool)

(assert (=> b!5003445 (=> (not res!2134931) (not e!3126586))))

(declare-fun lt!2070389 () List!57980)

(assert (=> b!5003445 (= res!2134931 (= lt!2070389 lt!2070379))))

(declare-fun lt!2070385 () List!57980)

(declare-fun ++!12638 (List!57980 List!57980) List!57980)

(assert (=> b!5003445 (= lt!2070389 (++!12638 lt!2070387 lt!2070385))))

(assert (=> b!5003445 (= lt!2070385 (list!18619 (_2!34805 lt!2070397)))))

(assert (=> b!5003445 (= lt!2070387 (list!18619 (_1!34805 lt!2070397)))))

(declare-fun findLongestMatch!1805 (Regex!13792 List!57980) tuple2!63006)

(assert (=> b!5003445 (= lt!2070393 (findLongestMatch!1805 r!12727 lt!2070379))))

(declare-fun lt!2070386 () Int)

(assert (=> b!5003445 (= lt!2070381 (- lt!2070386 (size!38456 input!5597)))))

(assert (=> b!5003445 (= lt!2070386 (size!38456 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!94 ((Set Context!6434) BalanceConc!30052 BalanceConc!30052) tuple2!63004)

(assert (=> b!5003445 (= lt!2070397 (findLongestMatchZipperFastV2!94 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5003446 () Bool)

(declare-fun e!3126580 () Bool)

(declare-fun lt!2070400 () tuple2!63006)

(assert (=> b!5003446 (= e!3126580 (matchR!6756 r!12727 (_1!34806 lt!2070400)))))

(declare-fun b!5003447 () Bool)

(declare-fun e!3126581 () Bool)

(assert (=> b!5003447 (= e!3126586 e!3126581)))

(declare-fun res!2134923 () Bool)

(assert (=> b!5003447 (=> (not res!2134923) (not e!3126581))))

(declare-fun lt!2070396 () List!57980)

(assert (=> b!5003447 (= res!2134923 (= lt!2070396 lt!2070379))))

(assert (=> b!5003447 (= lt!2070396 (++!12638 (_1!34806 lt!2070393) (_2!34806 lt!2070393)))))

(declare-fun b!5003448 () Bool)

(declare-fun e!3126589 () Bool)

(assert (=> b!5003448 (= e!3126589 e!3126590)))

(declare-fun res!2134927 () Bool)

(assert (=> b!5003448 (=> res!2134927 e!3126590)))

(assert (=> b!5003448 (= res!2134927 e!3126588)))

(declare-fun res!2134928 () Bool)

(assert (=> b!5003448 (=> (not res!2134928) (not e!3126588))))

(assert (=> b!5003448 (= res!2134928 (not lt!2070394))))

(assert (=> b!5003448 (= lt!2070394 (matchR!6756 r!12727 (_1!34806 lt!2070393)))))

(declare-fun b!5003449 () Bool)

(declare-fun tp!1403294 () Bool)

(declare-fun tp!1403295 () Bool)

(assert (=> b!5003449 (= e!3126574 (and tp!1403294 tp!1403295))))

(declare-fun res!2134920 () Bool)

(declare-fun e!3126576 () Bool)

(assert (=> start!528772 (=> (not res!2134920) (not e!3126576))))

(declare-fun validRegex!6089 (Regex!13792) Bool)

(assert (=> start!528772 (= res!2134920 (validRegex!6089 r!12727))))

(assert (=> start!528772 e!3126576))

(assert (=> start!528772 e!3126574))

(declare-fun inv!76013 (BalanceConc!30052) Bool)

(assert (=> start!528772 (and (inv!76013 input!5597) e!3126583)))

(declare-fun condSetEmpty!28397 () Bool)

(assert (=> start!528772 (= condSetEmpty!28397 (= z!4183 (as set.empty (Set Context!6434))))))

(assert (=> start!528772 setRes!28397))

(assert (=> start!528772 (and (inv!76013 totalInput!1012) e!3126587)))

(declare-fun b!5003450 () Bool)

(declare-fun tp!1403292 () Bool)

(declare-fun tp!1403297 () Bool)

(assert (=> b!5003450 (= e!3126574 (and tp!1403292 tp!1403297))))

(declare-fun lt!2070374 () List!57980)

(declare-fun b!5003451 () Bool)

(assert (=> b!5003451 (= e!3126582 (or (not (= lt!2070374 (_1!34806 lt!2070393))) (< lt!2070381 0) (> lt!2070381 lt!2070386) (and (>= lt!2070376 0) (<= lt!2070376 (- lt!2070386 lt!2070381)))))))

(assert (=> b!5003451 (= lt!2070395 (_1!34806 lt!2070393))))

(declare-fun lt!2070398 () Unit!149023)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1272 (List!57980 List!57980 List!57980) Unit!149023)

(assert (=> b!5003451 (= lt!2070398 (lemmaIsPrefixSameLengthThenSameList!1272 lt!2070395 (_1!34806 lt!2070393) lt!2070379))))

(declare-fun isPrefix!5345 (List!57980 List!57980) Bool)

(assert (=> b!5003451 (isPrefix!5345 lt!2070374 lt!2070379)))

(assert (=> b!5003451 (= lt!2070374 (take!651 lt!2070379 lt!2070376))))

(declare-fun lt!2070399 () Unit!149023)

(declare-fun lemmaTakeIsPrefix!145 (List!57980 Int) Unit!149023)

(assert (=> b!5003451 (= lt!2070399 (lemmaTakeIsPrefix!145 lt!2070379 lt!2070376))))

(declare-fun b!5003452 () Bool)

(declare-fun tp!1403293 () Bool)

(assert (=> b!5003452 (= e!3126584 tp!1403293)))

(declare-fun b!5003453 () Bool)

(assert (=> b!5003453 (= e!3126576 e!3126585)))

(declare-fun res!2134921 () Bool)

(assert (=> b!5003453 (=> (not res!2134921) (not e!3126585))))

(declare-fun unfocusZipper!319 (List!57982) Regex!13792)

(assert (=> b!5003453 (= res!2134921 (= (unfocusZipper!319 lt!2070383) r!12727))))

(declare-fun toList!8077 ((Set Context!6434)) List!57982)

(assert (=> b!5003453 (= lt!2070383 (toList!8077 z!4183))))

(declare-fun b!5003454 () Bool)

(assert (=> b!5003454 (= e!3126581 (not e!3126589))))

(declare-fun res!2134930 () Bool)

(assert (=> b!5003454 (=> res!2134930 e!3126589)))

(assert (=> b!5003454 (= res!2134930 e!3126577)))

(declare-fun res!2134925 () Bool)

(assert (=> b!5003454 (=> (not res!2134925) (not e!3126577))))

(assert (=> b!5003454 (= res!2134925 (not lt!2070390))))

(assert (=> b!5003454 (= lt!2070390 (matchZipper!560 z!4183 lt!2070387))))

(assert (=> b!5003454 e!3126580))

(declare-fun res!2134932 () Bool)

(assert (=> b!5003454 (=> res!2134932 e!3126580)))

(assert (=> b!5003454 (= res!2134932 (isEmpty!31325 (_1!34806 lt!2070400)))))

(declare-fun findLongestMatchInner!1981 (Regex!13792 List!57980 Int List!57980 List!57980 Int) tuple2!63006)

(assert (=> b!5003454 (= lt!2070400 (findLongestMatchInner!1981 r!12727 Nil!57856 (size!38457 Nil!57856) lt!2070379 lt!2070379 (size!38457 lt!2070379)))))

(declare-fun lt!2070391 () Unit!149023)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1934 (Regex!13792 List!57980) Unit!149023)

(assert (=> b!5003454 (= lt!2070391 (longestMatchIsAcceptedByMatchOrIsEmpty!1934 r!12727 lt!2070379))))

(declare-fun e!3126575 () Bool)

(assert (=> b!5003454 e!3126575))

(declare-fun res!2134929 () Bool)

(assert (=> b!5003454 (=> res!2134929 e!3126575)))

(declare-fun lt!2070382 () Int)

(assert (=> b!5003454 (= res!2134929 (= lt!2070382 0))))

(declare-fun findLongestMatchInnerZipperFastV2!132 ((Set Context!6434) Int BalanceConc!30052 Int) Int)

(assert (=> b!5003454 (= lt!2070382 (findLongestMatchInnerZipperFastV2!132 z!4183 lt!2070381 totalInput!1012 lt!2070386))))

(declare-fun lt!2070388 () Unit!149023)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!51 ((Set Context!6434) Int BalanceConc!30052) Unit!149023)

(assert (=> b!5003454 (= lt!2070388 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!51 z!4183 lt!2070381 totalInput!1012))))

(assert (=> b!5003454 (isPrefix!5345 (take!651 lt!2070392 lt!2070381) lt!2070392)))

(declare-fun lt!2070375 () Unit!149023)

(assert (=> b!5003454 (= lt!2070375 (lemmaTakeIsPrefix!145 lt!2070392 lt!2070381))))

(assert (=> b!5003454 (isPrefix!5345 (_1!34806 lt!2070393) lt!2070396)))

(declare-fun lt!2070384 () Unit!149023)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3443 (List!57980 List!57980) Unit!149023)

(assert (=> b!5003454 (= lt!2070384 (lemmaConcatTwoListThenFirstIsPrefix!3443 (_1!34806 lt!2070393) (_2!34806 lt!2070393)))))

(assert (=> b!5003454 (isPrefix!5345 lt!2070387 lt!2070389)))

(declare-fun lt!2070377 () Unit!149023)

(assert (=> b!5003454 (= lt!2070377 (lemmaConcatTwoListThenFirstIsPrefix!3443 lt!2070387 lt!2070385))))

(declare-fun b!5003455 () Bool)

(declare-fun tp!1403290 () Bool)

(assert (=> b!5003455 (= e!3126574 tp!1403290)))

(declare-fun b!5003456 () Bool)

(assert (=> b!5003456 (= e!3126575 (matchZipper!560 z!4183 (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382)))))

(assert (= (and start!528772 res!2134920) b!5003453))

(assert (= (and b!5003453 res!2134921) b!5003444))

(assert (= (and b!5003444 res!2134926) b!5003445))

(assert (= (and b!5003445 res!2134931) b!5003447))

(assert (= (and b!5003447 res!2134923) b!5003454))

(assert (= (and b!5003454 (not res!2134929)) b!5003456))

(assert (= (and b!5003454 (not res!2134932)) b!5003446))

(assert (= (and b!5003454 res!2134925) b!5003437))

(assert (= (and b!5003454 (not res!2134930)) b!5003448))

(assert (= (and b!5003448 res!2134928) b!5003438))

(assert (= (and b!5003448 (not res!2134927)) b!5003441))

(assert (= (and b!5003441 (not res!2134922)) b!5003442))

(assert (= (and b!5003442 (not res!2134924)) b!5003451))

(assert (= (and start!528772 (is-ElementMatch!13792 r!12727)) b!5003439))

(assert (= (and start!528772 (is-Concat!22585 r!12727)) b!5003449))

(assert (= (and start!528772 (is-Star!13792 r!12727)) b!5003455))

(assert (= (and start!528772 (is-Union!13792 r!12727)) b!5003450))

(assert (= start!528772 b!5003440))

(assert (= (and start!528772 condSetEmpty!28397) setIsEmpty!28397))

(assert (= (and start!528772 (not condSetEmpty!28397)) setNonEmpty!28397))

(assert (= setNonEmpty!28397 b!5003452))

(assert (= start!528772 b!5003443))

(declare-fun m!6037262 () Bool)

(assert (=> start!528772 m!6037262))

(declare-fun m!6037264 () Bool)

(assert (=> start!528772 m!6037264))

(declare-fun m!6037266 () Bool)

(assert (=> start!528772 m!6037266))

(declare-fun m!6037268 () Bool)

(assert (=> b!5003445 m!6037268))

(declare-fun m!6037270 () Bool)

(assert (=> b!5003445 m!6037270))

(declare-fun m!6037272 () Bool)

(assert (=> b!5003445 m!6037272))

(declare-fun m!6037274 () Bool)

(assert (=> b!5003445 m!6037274))

(declare-fun m!6037276 () Bool)

(assert (=> b!5003445 m!6037276))

(declare-fun m!6037278 () Bool)

(assert (=> b!5003445 m!6037278))

(declare-fun m!6037280 () Bool)

(assert (=> b!5003445 m!6037280))

(declare-fun m!6037282 () Bool)

(assert (=> b!5003454 m!6037282))

(declare-fun m!6037284 () Bool)

(assert (=> b!5003454 m!6037284))

(declare-fun m!6037286 () Bool)

(assert (=> b!5003454 m!6037286))

(declare-fun m!6037288 () Bool)

(assert (=> b!5003454 m!6037288))

(assert (=> b!5003454 m!6037284))

(declare-fun m!6037290 () Bool)

(assert (=> b!5003454 m!6037290))

(declare-fun m!6037292 () Bool)

(assert (=> b!5003454 m!6037292))

(declare-fun m!6037294 () Bool)

(assert (=> b!5003454 m!6037294))

(declare-fun m!6037296 () Bool)

(assert (=> b!5003454 m!6037296))

(assert (=> b!5003454 m!6037290))

(declare-fun m!6037298 () Bool)

(assert (=> b!5003454 m!6037298))

(declare-fun m!6037300 () Bool)

(assert (=> b!5003454 m!6037300))

(declare-fun m!6037302 () Bool)

(assert (=> b!5003454 m!6037302))

(declare-fun m!6037304 () Bool)

(assert (=> b!5003454 m!6037304))

(declare-fun m!6037306 () Bool)

(assert (=> b!5003454 m!6037306))

(assert (=> b!5003454 m!6037300))

(declare-fun m!6037308 () Bool)

(assert (=> b!5003454 m!6037308))

(declare-fun m!6037310 () Bool)

(assert (=> b!5003454 m!6037310))

(declare-fun m!6037312 () Bool)

(assert (=> b!5003442 m!6037312))

(declare-fun m!6037314 () Bool)

(assert (=> b!5003442 m!6037314))

(declare-fun m!6037316 () Bool)

(assert (=> b!5003446 m!6037316))

(declare-fun m!6037318 () Bool)

(assert (=> b!5003453 m!6037318))

(declare-fun m!6037320 () Bool)

(assert (=> b!5003453 m!6037320))

(declare-fun m!6037322 () Bool)

(assert (=> b!5003448 m!6037322))

(declare-fun m!6037324 () Bool)

(assert (=> setNonEmpty!28397 m!6037324))

(declare-fun m!6037326 () Bool)

(assert (=> b!5003441 m!6037326))

(declare-fun m!6037328 () Bool)

(assert (=> b!5003441 m!6037328))

(declare-fun m!6037330 () Bool)

(assert (=> b!5003441 m!6037330))

(declare-fun m!6037332 () Bool)

(assert (=> b!5003441 m!6037332))

(declare-fun m!6037334 () Bool)

(assert (=> b!5003441 m!6037334))

(declare-fun m!6037336 () Bool)

(assert (=> b!5003441 m!6037336))

(declare-fun m!6037338 () Bool)

(assert (=> b!5003437 m!6037338))

(assert (=> b!5003456 m!6037314))

(assert (=> b!5003456 m!6037314))

(declare-fun m!6037340 () Bool)

(assert (=> b!5003456 m!6037340))

(assert (=> b!5003456 m!6037340))

(declare-fun m!6037342 () Bool)

(assert (=> b!5003456 m!6037342))

(declare-fun m!6037344 () Bool)

(assert (=> b!5003438 m!6037344))

(declare-fun m!6037346 () Bool)

(assert (=> b!5003447 m!6037346))

(declare-fun m!6037348 () Bool)

(assert (=> b!5003444 m!6037348))

(declare-fun m!6037350 () Bool)

(assert (=> b!5003444 m!6037350))

(declare-fun m!6037352 () Bool)

(assert (=> b!5003444 m!6037352))

(declare-fun m!6037354 () Bool)

(assert (=> b!5003443 m!6037354))

(declare-fun m!6037356 () Bool)

(assert (=> b!5003440 m!6037356))

(declare-fun m!6037358 () Bool)

(assert (=> b!5003451 m!6037358))

(declare-fun m!6037360 () Bool)

(assert (=> b!5003451 m!6037360))

(declare-fun m!6037362 () Bool)

(assert (=> b!5003451 m!6037362))

(declare-fun m!6037364 () Bool)

(assert (=> b!5003451 m!6037364))

(push 1)

(assert (not b!5003441))

(assert (not b!5003438))

(assert (not b!5003445))

(assert (not b!5003446))

(assert (not b!5003449))

(assert (not b!5003437))

(assert (not b!5003455))

(assert (not b!5003444))

(assert (not b!5003456))

(assert (not b!5003443))

(assert tp_is_empty!36581)

(assert (not b!5003453))

(assert (not b!5003451))

(assert (not setNonEmpty!28397))

(assert (not b!5003447))

(assert (not start!528772))

(assert (not b!5003440))

(assert (not b!5003452))

(assert (not b!5003454))

(assert (not b!5003442))

(assert (not b!5003448))

(assert (not b!5003450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5003545 () Bool)

(declare-fun res!2134990 () Bool)

(declare-fun e!3126661 () Bool)

(assert (=> b!5003545 (=> (not res!2134990) (not e!3126661))))

(declare-fun call!349234 () Bool)

(assert (=> b!5003545 (= res!2134990 (not call!349234))))

(declare-fun b!5003546 () Bool)

(declare-fun e!3126658 () Bool)

(declare-fun derivativeStep!3976 (Regex!13792 C!27834) Regex!13792)

(declare-fun head!10730 (List!57980) C!27834)

(declare-fun tail!9863 (List!57980) List!57980)

(assert (=> b!5003546 (= e!3126658 (matchR!6756 (derivativeStep!3976 r!12727 (head!10730 (_1!34806 lt!2070393))) (tail!9863 (_1!34806 lt!2070393))))))

(declare-fun d!1610413 () Bool)

(declare-fun e!3126656 () Bool)

(assert (=> d!1610413 e!3126656))

(declare-fun c!853999 () Bool)

(assert (=> d!1610413 (= c!853999 (is-EmptyExpr!13792 r!12727))))

(declare-fun lt!2070487 () Bool)

(assert (=> d!1610413 (= lt!2070487 e!3126658)))

(declare-fun c!853998 () Bool)

(assert (=> d!1610413 (= c!853998 (isEmpty!31325 (_1!34806 lt!2070393)))))

(assert (=> d!1610413 (validRegex!6089 r!12727)))

(assert (=> d!1610413 (= (matchR!6756 r!12727 (_1!34806 lt!2070393)) lt!2070487)))

(declare-fun b!5003547 () Bool)

(declare-fun nullable!4686 (Regex!13792) Bool)

(assert (=> b!5003547 (= e!3126658 (nullable!4686 r!12727))))

(declare-fun b!5003548 () Bool)

(declare-fun e!3126660 () Bool)

(declare-fun e!3126659 () Bool)

(assert (=> b!5003548 (= e!3126660 e!3126659)))

(declare-fun res!2134991 () Bool)

(assert (=> b!5003548 (=> (not res!2134991) (not e!3126659))))

(assert (=> b!5003548 (= res!2134991 (not lt!2070487))))

(declare-fun b!5003549 () Bool)

(declare-fun e!3126662 () Bool)

(assert (=> b!5003549 (= e!3126662 (not lt!2070487))))

(declare-fun b!5003550 () Bool)

(assert (=> b!5003550 (= e!3126661 (= (head!10730 (_1!34806 lt!2070393)) (c!853988 r!12727)))))

(declare-fun b!5003551 () Bool)

(declare-fun res!2134992 () Bool)

(assert (=> b!5003551 (=> res!2134992 e!3126660)))

(assert (=> b!5003551 (= res!2134992 e!3126661)))

(declare-fun res!2134989 () Bool)

(assert (=> b!5003551 (=> (not res!2134989) (not e!3126661))))

(assert (=> b!5003551 (= res!2134989 lt!2070487)))

(declare-fun b!5003552 () Bool)

(assert (=> b!5003552 (= e!3126656 e!3126662)))

(declare-fun c!853997 () Bool)

(assert (=> b!5003552 (= c!853997 (is-EmptyLang!13792 r!12727))))

(declare-fun b!5003553 () Bool)

(declare-fun res!2134988 () Bool)

(assert (=> b!5003553 (=> (not res!2134988) (not e!3126661))))

(assert (=> b!5003553 (= res!2134988 (isEmpty!31325 (tail!9863 (_1!34806 lt!2070393))))))

(declare-fun bm!349229 () Bool)

(assert (=> bm!349229 (= call!349234 (isEmpty!31325 (_1!34806 lt!2070393)))))

(declare-fun b!5003554 () Bool)

(declare-fun e!3126657 () Bool)

(assert (=> b!5003554 (= e!3126659 e!3126657)))

(declare-fun res!2134993 () Bool)

(assert (=> b!5003554 (=> res!2134993 e!3126657)))

(assert (=> b!5003554 (= res!2134993 call!349234)))

(declare-fun b!5003555 () Bool)

(declare-fun res!2134994 () Bool)

(assert (=> b!5003555 (=> res!2134994 e!3126660)))

(assert (=> b!5003555 (= res!2134994 (not (is-ElementMatch!13792 r!12727)))))

(assert (=> b!5003555 (= e!3126662 e!3126660)))

(declare-fun b!5003556 () Bool)

(assert (=> b!5003556 (= e!3126657 (not (= (head!10730 (_1!34806 lt!2070393)) (c!853988 r!12727))))))

(declare-fun b!5003557 () Bool)

(assert (=> b!5003557 (= e!3126656 (= lt!2070487 call!349234))))

(declare-fun b!5003558 () Bool)

(declare-fun res!2134995 () Bool)

(assert (=> b!5003558 (=> res!2134995 e!3126657)))

(assert (=> b!5003558 (= res!2134995 (not (isEmpty!31325 (tail!9863 (_1!34806 lt!2070393)))))))

(assert (= (and d!1610413 c!853998) b!5003547))

(assert (= (and d!1610413 (not c!853998)) b!5003546))

(assert (= (and d!1610413 c!853999) b!5003557))

(assert (= (and d!1610413 (not c!853999)) b!5003552))

(assert (= (and b!5003552 c!853997) b!5003549))

(assert (= (and b!5003552 (not c!853997)) b!5003555))

(assert (= (and b!5003555 (not res!2134994)) b!5003551))

(assert (= (and b!5003551 res!2134989) b!5003545))

(assert (= (and b!5003545 res!2134990) b!5003553))

(assert (= (and b!5003553 res!2134988) b!5003550))

(assert (= (and b!5003551 (not res!2134992)) b!5003548))

(assert (= (and b!5003548 res!2134991) b!5003554))

(assert (= (and b!5003554 (not res!2134993)) b!5003558))

(assert (= (and b!5003558 (not res!2134995)) b!5003556))

(assert (= (or b!5003557 b!5003545 b!5003554) bm!349229))

(declare-fun m!6037470 () Bool)

(assert (=> b!5003546 m!6037470))

(assert (=> b!5003546 m!6037470))

(declare-fun m!6037472 () Bool)

(assert (=> b!5003546 m!6037472))

(declare-fun m!6037474 () Bool)

(assert (=> b!5003546 m!6037474))

(assert (=> b!5003546 m!6037472))

(assert (=> b!5003546 m!6037474))

(declare-fun m!6037476 () Bool)

(assert (=> b!5003546 m!6037476))

(assert (=> b!5003558 m!6037474))

(assert (=> b!5003558 m!6037474))

(declare-fun m!6037478 () Bool)

(assert (=> b!5003558 m!6037478))

(assert (=> d!1610413 m!6037344))

(assert (=> d!1610413 m!6037262))

(assert (=> b!5003553 m!6037474))

(assert (=> b!5003553 m!6037474))

(assert (=> b!5003553 m!6037478))

(assert (=> bm!349229 m!6037344))

(assert (=> b!5003556 m!6037470))

(assert (=> b!5003550 m!6037470))

(declare-fun m!6037480 () Bool)

(assert (=> b!5003547 m!6037480))

(assert (=> b!5003448 d!1610413))

(declare-fun b!5003559 () Bool)

(declare-fun res!2134998 () Bool)

(declare-fun e!3126668 () Bool)

(assert (=> b!5003559 (=> (not res!2134998) (not e!3126668))))

(declare-fun call!349235 () Bool)

(assert (=> b!5003559 (= res!2134998 (not call!349235))))

(declare-fun b!5003560 () Bool)

(declare-fun e!3126665 () Bool)

(assert (=> b!5003560 (= e!3126665 (matchR!6756 (derivativeStep!3976 r!12727 (head!10730 (_1!34806 lt!2070400))) (tail!9863 (_1!34806 lt!2070400))))))

(declare-fun d!1610415 () Bool)

(declare-fun e!3126663 () Bool)

(assert (=> d!1610415 e!3126663))

(declare-fun c!854002 () Bool)

(assert (=> d!1610415 (= c!854002 (is-EmptyExpr!13792 r!12727))))

(declare-fun lt!2070488 () Bool)

(assert (=> d!1610415 (= lt!2070488 e!3126665)))

(declare-fun c!854001 () Bool)

(assert (=> d!1610415 (= c!854001 (isEmpty!31325 (_1!34806 lt!2070400)))))

(assert (=> d!1610415 (validRegex!6089 r!12727)))

(assert (=> d!1610415 (= (matchR!6756 r!12727 (_1!34806 lt!2070400)) lt!2070488)))

(declare-fun b!5003561 () Bool)

(assert (=> b!5003561 (= e!3126665 (nullable!4686 r!12727))))

(declare-fun b!5003562 () Bool)

(declare-fun e!3126667 () Bool)

(declare-fun e!3126666 () Bool)

(assert (=> b!5003562 (= e!3126667 e!3126666)))

(declare-fun res!2134999 () Bool)

(assert (=> b!5003562 (=> (not res!2134999) (not e!3126666))))

(assert (=> b!5003562 (= res!2134999 (not lt!2070488))))

(declare-fun b!5003563 () Bool)

(declare-fun e!3126669 () Bool)

(assert (=> b!5003563 (= e!3126669 (not lt!2070488))))

(declare-fun b!5003564 () Bool)

(assert (=> b!5003564 (= e!3126668 (= (head!10730 (_1!34806 lt!2070400)) (c!853988 r!12727)))))

(declare-fun b!5003565 () Bool)

(declare-fun res!2135000 () Bool)

(assert (=> b!5003565 (=> res!2135000 e!3126667)))

(assert (=> b!5003565 (= res!2135000 e!3126668)))

(declare-fun res!2134997 () Bool)

(assert (=> b!5003565 (=> (not res!2134997) (not e!3126668))))

(assert (=> b!5003565 (= res!2134997 lt!2070488)))

(declare-fun b!5003566 () Bool)

(assert (=> b!5003566 (= e!3126663 e!3126669)))

(declare-fun c!854000 () Bool)

(assert (=> b!5003566 (= c!854000 (is-EmptyLang!13792 r!12727))))

(declare-fun b!5003567 () Bool)

(declare-fun res!2134996 () Bool)

(assert (=> b!5003567 (=> (not res!2134996) (not e!3126668))))

(assert (=> b!5003567 (= res!2134996 (isEmpty!31325 (tail!9863 (_1!34806 lt!2070400))))))

(declare-fun bm!349230 () Bool)

(assert (=> bm!349230 (= call!349235 (isEmpty!31325 (_1!34806 lt!2070400)))))

(declare-fun b!5003568 () Bool)

(declare-fun e!3126664 () Bool)

(assert (=> b!5003568 (= e!3126666 e!3126664)))

(declare-fun res!2135001 () Bool)

(assert (=> b!5003568 (=> res!2135001 e!3126664)))

(assert (=> b!5003568 (= res!2135001 call!349235)))

(declare-fun b!5003569 () Bool)

(declare-fun res!2135002 () Bool)

(assert (=> b!5003569 (=> res!2135002 e!3126667)))

(assert (=> b!5003569 (= res!2135002 (not (is-ElementMatch!13792 r!12727)))))

(assert (=> b!5003569 (= e!3126669 e!3126667)))

(declare-fun b!5003570 () Bool)

(assert (=> b!5003570 (= e!3126664 (not (= (head!10730 (_1!34806 lt!2070400)) (c!853988 r!12727))))))

(declare-fun b!5003571 () Bool)

(assert (=> b!5003571 (= e!3126663 (= lt!2070488 call!349235))))

(declare-fun b!5003572 () Bool)

(declare-fun res!2135003 () Bool)

(assert (=> b!5003572 (=> res!2135003 e!3126664)))

(assert (=> b!5003572 (= res!2135003 (not (isEmpty!31325 (tail!9863 (_1!34806 lt!2070400)))))))

(assert (= (and d!1610415 c!854001) b!5003561))

(assert (= (and d!1610415 (not c!854001)) b!5003560))

(assert (= (and d!1610415 c!854002) b!5003571))

(assert (= (and d!1610415 (not c!854002)) b!5003566))

(assert (= (and b!5003566 c!854000) b!5003563))

(assert (= (and b!5003566 (not c!854000)) b!5003569))

(assert (= (and b!5003569 (not res!2135002)) b!5003565))

(assert (= (and b!5003565 res!2134997) b!5003559))

(assert (= (and b!5003559 res!2134998) b!5003567))

(assert (= (and b!5003567 res!2134996) b!5003564))

(assert (= (and b!5003565 (not res!2135000)) b!5003562))

(assert (= (and b!5003562 res!2134999) b!5003568))

(assert (= (and b!5003568 (not res!2135001)) b!5003572))

(assert (= (and b!5003572 (not res!2135003)) b!5003570))

(assert (= (or b!5003571 b!5003559 b!5003568) bm!349230))

(declare-fun m!6037482 () Bool)

(assert (=> b!5003560 m!6037482))

(assert (=> b!5003560 m!6037482))

(declare-fun m!6037484 () Bool)

(assert (=> b!5003560 m!6037484))

(declare-fun m!6037486 () Bool)

(assert (=> b!5003560 m!6037486))

(assert (=> b!5003560 m!6037484))

(assert (=> b!5003560 m!6037486))

(declare-fun m!6037488 () Bool)

(assert (=> b!5003560 m!6037488))

(assert (=> b!5003572 m!6037486))

(assert (=> b!5003572 m!6037486))

(declare-fun m!6037490 () Bool)

(assert (=> b!5003572 m!6037490))

(assert (=> d!1610415 m!6037294))

(assert (=> d!1610415 m!6037262))

(assert (=> b!5003567 m!6037486))

(assert (=> b!5003567 m!6037486))

(assert (=> b!5003567 m!6037490))

(assert (=> bm!349230 m!6037294))

(assert (=> b!5003570 m!6037482))

(assert (=> b!5003564 m!6037482))

(assert (=> b!5003561 m!6037480))

(assert (=> b!5003446 d!1610415))

(declare-fun d!1610419 () Bool)

(assert (=> d!1610419 (= (isEmpty!31325 (_1!34806 lt!2070393)) (is-Nil!57856 (_1!34806 lt!2070393)))))

(assert (=> b!5003438 d!1610419))

(declare-fun b!5003581 () Bool)

(declare-fun e!3126675 () List!57980)

(assert (=> b!5003581 (= e!3126675 (_2!34806 lt!2070393))))

(declare-fun b!5003584 () Bool)

(declare-fun e!3126674 () Bool)

(declare-fun lt!2070491 () List!57980)

(assert (=> b!5003584 (= e!3126674 (or (not (= (_2!34806 lt!2070393) Nil!57856)) (= lt!2070491 (_1!34806 lt!2070393))))))

(declare-fun d!1610421 () Bool)

(assert (=> d!1610421 e!3126674))

(declare-fun res!2135009 () Bool)

(assert (=> d!1610421 (=> (not res!2135009) (not e!3126674))))

(declare-fun content!10246 (List!57980) (Set C!27834))

(assert (=> d!1610421 (= res!2135009 (= (content!10246 lt!2070491) (set.union (content!10246 (_1!34806 lt!2070393)) (content!10246 (_2!34806 lt!2070393)))))))

(assert (=> d!1610421 (= lt!2070491 e!3126675)))

(declare-fun c!854005 () Bool)

(assert (=> d!1610421 (= c!854005 (is-Nil!57856 (_1!34806 lt!2070393)))))

(assert (=> d!1610421 (= (++!12638 (_1!34806 lt!2070393) (_2!34806 lt!2070393)) lt!2070491)))

(declare-fun b!5003583 () Bool)

(declare-fun res!2135008 () Bool)

(assert (=> b!5003583 (=> (not res!2135008) (not e!3126674))))

(assert (=> b!5003583 (= res!2135008 (= (size!38457 lt!2070491) (+ (size!38457 (_1!34806 lt!2070393)) (size!38457 (_2!34806 lt!2070393)))))))

(declare-fun b!5003582 () Bool)

(assert (=> b!5003582 (= e!3126675 (Cons!57856 (h!64304 (_1!34806 lt!2070393)) (++!12638 (t!370326 (_1!34806 lt!2070393)) (_2!34806 lt!2070393))))))

(assert (= (and d!1610421 c!854005) b!5003581))

(assert (= (and d!1610421 (not c!854005)) b!5003582))

(assert (= (and d!1610421 res!2135009) b!5003583))

(assert (= (and b!5003583 res!2135008) b!5003584))

(declare-fun m!6037492 () Bool)

(assert (=> d!1610421 m!6037492))

(declare-fun m!6037494 () Bool)

(assert (=> d!1610421 m!6037494))

(declare-fun m!6037496 () Bool)

(assert (=> d!1610421 m!6037496))

(declare-fun m!6037498 () Bool)

(assert (=> b!5003583 m!6037498))

(assert (=> b!5003583 m!6037334))

(declare-fun m!6037500 () Bool)

(assert (=> b!5003583 m!6037500))

(declare-fun m!6037502 () Bool)

(assert (=> b!5003582 m!6037502))

(assert (=> b!5003447 d!1610421))

(declare-fun b!5003591 () Bool)

(declare-fun e!3126681 () List!57980)

(assert (=> b!5003591 (= e!3126681 lt!2070385)))

(declare-fun e!3126680 () Bool)

(declare-fun lt!2070492 () List!57980)

(declare-fun b!5003594 () Bool)

(assert (=> b!5003594 (= e!3126680 (or (not (= lt!2070385 Nil!57856)) (= lt!2070492 lt!2070387)))))

(declare-fun d!1610423 () Bool)

(assert (=> d!1610423 e!3126680))

(declare-fun res!2135013 () Bool)

(assert (=> d!1610423 (=> (not res!2135013) (not e!3126680))))

(assert (=> d!1610423 (= res!2135013 (= (content!10246 lt!2070492) (set.union (content!10246 lt!2070387) (content!10246 lt!2070385))))))

(assert (=> d!1610423 (= lt!2070492 e!3126681)))

(declare-fun c!854008 () Bool)

(assert (=> d!1610423 (= c!854008 (is-Nil!57856 lt!2070387))))

(assert (=> d!1610423 (= (++!12638 lt!2070387 lt!2070385) lt!2070492)))

(declare-fun b!5003593 () Bool)

(declare-fun res!2135012 () Bool)

(assert (=> b!5003593 (=> (not res!2135012) (not e!3126680))))

(assert (=> b!5003593 (= res!2135012 (= (size!38457 lt!2070492) (+ (size!38457 lt!2070387) (size!38457 lt!2070385))))))

(declare-fun b!5003592 () Bool)

(assert (=> b!5003592 (= e!3126681 (Cons!57856 (h!64304 lt!2070387) (++!12638 (t!370326 lt!2070387) lt!2070385)))))

(assert (= (and d!1610423 c!854008) b!5003591))

(assert (= (and d!1610423 (not c!854008)) b!5003592))

(assert (= (and d!1610423 res!2135013) b!5003593))

(assert (= (and b!5003593 res!2135012) b!5003594))

(declare-fun m!6037504 () Bool)

(assert (=> d!1610423 m!6037504))

(declare-fun m!6037506 () Bool)

(assert (=> d!1610423 m!6037506))

(declare-fun m!6037508 () Bool)

(assert (=> d!1610423 m!6037508))

(declare-fun m!6037510 () Bool)

(assert (=> b!5003593 m!6037510))

(declare-fun m!6037512 () Bool)

(assert (=> b!5003593 m!6037512))

(declare-fun m!6037514 () Bool)

(assert (=> b!5003593 m!6037514))

(declare-fun m!6037516 () Bool)

(assert (=> b!5003592 m!6037516))

(assert (=> b!5003445 d!1610423))

(declare-fun d!1610425 () Bool)

(declare-fun lt!2070495 () Int)

(assert (=> d!1610425 (= lt!2070495 (size!38457 (list!18619 input!5597)))))

(declare-fun size!38460 (Conc!15311) Int)

(assert (=> d!1610425 (= lt!2070495 (size!38460 (c!853987 input!5597)))))

(assert (=> d!1610425 (= (size!38456 input!5597) lt!2070495)))

(declare-fun bs!1185867 () Bool)

(assert (= bs!1185867 d!1610425))

(assert (=> bs!1185867 m!6037352))

(assert (=> bs!1185867 m!6037352))

(declare-fun m!6037518 () Bool)

(assert (=> bs!1185867 m!6037518))

(declare-fun m!6037520 () Bool)

(assert (=> bs!1185867 m!6037520))

(assert (=> b!5003445 d!1610425))

(declare-fun d!1610427 () Bool)

(declare-fun lt!2070500 () tuple2!63004)

(assert (=> d!1610427 (= (++!12638 (list!18619 (_1!34805 lt!2070500)) (list!18619 (_2!34805 lt!2070500))) (list!18619 input!5597))))

(declare-fun lt!2070501 () Int)

(declare-fun splitAt!446 (BalanceConc!30052 Int) tuple2!63004)

(assert (=> d!1610427 (= lt!2070500 (splitAt!446 input!5597 (findLongestMatchInnerZipperFastV2!132 z!4183 (- lt!2070501 (size!38456 input!5597)) totalInput!1012 lt!2070501)))))

(assert (=> d!1610427 (= lt!2070501 (size!38456 totalInput!1012))))

(assert (=> d!1610427 (isSuffix!1358 (list!18619 input!5597) (list!18619 totalInput!1012))))

(assert (=> d!1610427 (= (findLongestMatchZipperFastV2!94 z!4183 input!5597 totalInput!1012) lt!2070500)))

(declare-fun bs!1185870 () Bool)

(assert (= bs!1185870 d!1610427))

(assert (=> bs!1185870 m!6037280))

(declare-fun m!6037532 () Bool)

(assert (=> bs!1185870 m!6037532))

(declare-fun m!6037534 () Bool)

(assert (=> bs!1185870 m!6037534))

(declare-fun m!6037536 () Bool)

(assert (=> bs!1185870 m!6037536))

(assert (=> bs!1185870 m!6037274))

(assert (=> bs!1185870 m!6037534))

(assert (=> bs!1185870 m!6037350))

(declare-fun m!6037538 () Bool)

(assert (=> bs!1185870 m!6037538))

(assert (=> bs!1185870 m!6037538))

(declare-fun m!6037540 () Bool)

(assert (=> bs!1185870 m!6037540))

(assert (=> bs!1185870 m!6037352))

(assert (=> bs!1185870 m!6037350))

(declare-fun m!6037542 () Bool)

(assert (=> bs!1185870 m!6037542))

(assert (=> bs!1185870 m!6037532))

(assert (=> bs!1185870 m!6037352))

(assert (=> b!5003445 d!1610427))

(declare-fun d!1610435 () Bool)

(declare-fun list!18621 (Conc!15311) List!57980)

(assert (=> d!1610435 (= (list!18619 (_1!34805 lt!2070397)) (list!18621 (c!853987 (_1!34805 lt!2070397))))))

(declare-fun bs!1185871 () Bool)

(assert (= bs!1185871 d!1610435))

(declare-fun m!6037544 () Bool)

(assert (=> bs!1185871 m!6037544))

(assert (=> b!5003445 d!1610435))

(declare-fun d!1610437 () Bool)

(assert (=> d!1610437 (= (list!18619 (_2!34805 lt!2070397)) (list!18621 (c!853987 (_2!34805 lt!2070397))))))

(declare-fun bs!1185872 () Bool)

(assert (= bs!1185872 d!1610437))

(declare-fun m!6037546 () Bool)

(assert (=> bs!1185872 m!6037546))

(assert (=> b!5003445 d!1610437))

(declare-fun d!1610439 () Bool)

(declare-fun lt!2070502 () Int)

(assert (=> d!1610439 (= lt!2070502 (size!38457 (list!18619 totalInput!1012)))))

(assert (=> d!1610439 (= lt!2070502 (size!38460 (c!853987 totalInput!1012)))))

(assert (=> d!1610439 (= (size!38456 totalInput!1012) lt!2070502)))

(declare-fun bs!1185873 () Bool)

(assert (= bs!1185873 d!1610439))

(assert (=> bs!1185873 m!6037350))

(assert (=> bs!1185873 m!6037350))

(declare-fun m!6037548 () Bool)

(assert (=> bs!1185873 m!6037548))

(declare-fun m!6037550 () Bool)

(assert (=> bs!1185873 m!6037550))

(assert (=> b!5003445 d!1610439))

(declare-fun d!1610441 () Bool)

(declare-fun lt!2070525 () tuple2!63006)

(assert (=> d!1610441 (= (++!12638 (_1!34806 lt!2070525) (_2!34806 lt!2070525)) lt!2070379)))

(declare-fun sizeTr!397 (List!57980 Int) Int)

(assert (=> d!1610441 (= lt!2070525 (findLongestMatchInner!1981 r!12727 Nil!57856 0 lt!2070379 lt!2070379 (sizeTr!397 lt!2070379 0)))))

(declare-fun lt!2070520 () Unit!149023)

(declare-fun lt!2070521 () Unit!149023)

(assert (=> d!1610441 (= lt!2070520 lt!2070521)))

(declare-fun lt!2070524 () List!57980)

(declare-fun lt!2070519 () Int)

(assert (=> d!1610441 (= (sizeTr!397 lt!2070524 lt!2070519) (+ (size!38457 lt!2070524) lt!2070519))))

(declare-fun lemmaSizeTrEqualsSize!396 (List!57980 Int) Unit!149023)

(assert (=> d!1610441 (= lt!2070521 (lemmaSizeTrEqualsSize!396 lt!2070524 lt!2070519))))

(assert (=> d!1610441 (= lt!2070519 0)))

(assert (=> d!1610441 (= lt!2070524 Nil!57856)))

(declare-fun lt!2070523 () Unit!149023)

(declare-fun lt!2070526 () Unit!149023)

(assert (=> d!1610441 (= lt!2070523 lt!2070526)))

(declare-fun lt!2070522 () Int)

(assert (=> d!1610441 (= (sizeTr!397 lt!2070379 lt!2070522) (+ (size!38457 lt!2070379) lt!2070522))))

(assert (=> d!1610441 (= lt!2070526 (lemmaSizeTrEqualsSize!396 lt!2070379 lt!2070522))))

(assert (=> d!1610441 (= lt!2070522 0)))

(assert (=> d!1610441 (validRegex!6089 r!12727)))

(assert (=> d!1610441 (= (findLongestMatch!1805 r!12727 lt!2070379) lt!2070525)))

(declare-fun bs!1185874 () Bool)

(assert (= bs!1185874 d!1610441))

(declare-fun m!6037556 () Bool)

(assert (=> bs!1185874 m!6037556))

(declare-fun m!6037558 () Bool)

(assert (=> bs!1185874 m!6037558))

(declare-fun m!6037560 () Bool)

(assert (=> bs!1185874 m!6037560))

(declare-fun m!6037562 () Bool)

(assert (=> bs!1185874 m!6037562))

(declare-fun m!6037564 () Bool)

(assert (=> bs!1185874 m!6037564))

(declare-fun m!6037566 () Bool)

(assert (=> bs!1185874 m!6037566))

(assert (=> bs!1185874 m!6037262))

(declare-fun m!6037568 () Bool)

(assert (=> bs!1185874 m!6037568))

(declare-fun m!6037570 () Bool)

(assert (=> bs!1185874 m!6037570))

(assert (=> bs!1185874 m!6037290))

(assert (=> bs!1185874 m!6037562))

(assert (=> b!5003445 d!1610441))

(declare-fun d!1610445 () Bool)

(declare-fun c!854018 () Bool)

(assert (=> d!1610445 (= c!854018 (isEmpty!31325 (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382)))))

(declare-fun e!3126707 () Bool)

(assert (=> d!1610445 (= (matchZipper!560 z!4183 (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382)) e!3126707)))

(declare-fun b!5003629 () Bool)

(declare-fun nullableZipper!881 ((Set Context!6434)) Bool)

(assert (=> b!5003629 (= e!3126707 (nullableZipper!881 z!4183))))

(declare-fun b!5003630 () Bool)

(declare-fun derivationStepZipper!630 ((Set Context!6434) C!27834) (Set Context!6434))

(assert (=> b!5003630 (= e!3126707 (matchZipper!560 (derivationStepZipper!630 z!4183 (head!10730 (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382))) (tail!9863 (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382))))))

(assert (= (and d!1610445 c!854018) b!5003629))

(assert (= (and d!1610445 (not c!854018)) b!5003630))

(assert (=> d!1610445 m!6037340))

(declare-fun m!6037572 () Bool)

(assert (=> d!1610445 m!6037572))

(declare-fun m!6037574 () Bool)

(assert (=> b!5003629 m!6037574))

(assert (=> b!5003630 m!6037340))

(declare-fun m!6037576 () Bool)

(assert (=> b!5003630 m!6037576))

(assert (=> b!5003630 m!6037576))

(declare-fun m!6037578 () Bool)

(assert (=> b!5003630 m!6037578))

(assert (=> b!5003630 m!6037340))

(declare-fun m!6037580 () Bool)

(assert (=> b!5003630 m!6037580))

(assert (=> b!5003630 m!6037578))

(assert (=> b!5003630 m!6037580))

(declare-fun m!6037582 () Bool)

(assert (=> b!5003630 m!6037582))

(assert (=> b!5003456 d!1610445))

(declare-fun b!5003673 () Bool)

(declare-fun e!3126733 () Int)

(assert (=> b!5003673 (= e!3126733 (size!38457 (drop!2455 lt!2070392 lt!2070381)))))

(declare-fun e!3126732 () List!57980)

(declare-fun b!5003674 () Bool)

(assert (=> b!5003674 (= e!3126732 (Cons!57856 (h!64304 (drop!2455 lt!2070392 lt!2070381)) (take!651 (t!370326 (drop!2455 lt!2070392 lt!2070381)) (- lt!2070382 1))))))

(declare-fun b!5003675 () Bool)

(declare-fun e!3126731 () Bool)

(declare-fun lt!2070531 () List!57980)

(declare-fun e!3126730 () Int)

(assert (=> b!5003675 (= e!3126731 (= (size!38457 lt!2070531) e!3126730))))

(declare-fun c!854031 () Bool)

(assert (=> b!5003675 (= c!854031 (<= lt!2070382 0))))

(declare-fun b!5003676 () Bool)

(assert (=> b!5003676 (= e!3126730 e!3126733)))

(declare-fun c!854033 () Bool)

(assert (=> b!5003676 (= c!854033 (>= lt!2070382 (size!38457 (drop!2455 lt!2070392 lt!2070381))))))

(declare-fun b!5003677 () Bool)

(assert (=> b!5003677 (= e!3126733 lt!2070382)))

(declare-fun b!5003678 () Bool)

(assert (=> b!5003678 (= e!3126732 Nil!57856)))

(declare-fun b!5003679 () Bool)

(assert (=> b!5003679 (= e!3126730 0)))

(declare-fun d!1610447 () Bool)

(assert (=> d!1610447 e!3126731))

(declare-fun res!2135048 () Bool)

(assert (=> d!1610447 (=> (not res!2135048) (not e!3126731))))

(assert (=> d!1610447 (= res!2135048 (set.subset (content!10246 lt!2070531) (content!10246 (drop!2455 lt!2070392 lt!2070381))))))

(assert (=> d!1610447 (= lt!2070531 e!3126732)))

(declare-fun c!854032 () Bool)

(assert (=> d!1610447 (= c!854032 (or (is-Nil!57856 (drop!2455 lt!2070392 lt!2070381)) (<= lt!2070382 0)))))

(assert (=> d!1610447 (= (take!651 (drop!2455 lt!2070392 lt!2070381) lt!2070382) lt!2070531)))

(assert (= (and d!1610447 c!854032) b!5003678))

(assert (= (and d!1610447 (not c!854032)) b!5003674))

(assert (= (and d!1610447 res!2135048) b!5003675))

(assert (= (and b!5003675 c!854031) b!5003679))

(assert (= (and b!5003675 (not c!854031)) b!5003676))

(assert (= (and b!5003676 c!854033) b!5003673))

(assert (= (and b!5003676 (not c!854033)) b!5003677))

(declare-fun m!6037584 () Bool)

(assert (=> d!1610447 m!6037584))

(assert (=> d!1610447 m!6037314))

(declare-fun m!6037586 () Bool)

(assert (=> d!1610447 m!6037586))

(declare-fun m!6037588 () Bool)

(assert (=> b!5003674 m!6037588))

(declare-fun m!6037590 () Bool)

(assert (=> b!5003675 m!6037590))

(assert (=> b!5003673 m!6037314))

(declare-fun m!6037592 () Bool)

(assert (=> b!5003673 m!6037592))

(assert (=> b!5003676 m!6037314))

(assert (=> b!5003676 m!6037592))

(assert (=> b!5003456 d!1610447))

(declare-fun b!5003712 () Bool)

(declare-fun e!3126753 () List!57980)

(assert (=> b!5003712 (= e!3126753 Nil!57856)))

(declare-fun b!5003713 () Bool)

(declare-fun e!3126752 () Int)

(assert (=> b!5003713 (= e!3126752 0)))

(declare-fun b!5003714 () Bool)

(declare-fun e!3126755 () List!57980)

(assert (=> b!5003714 (= e!3126755 lt!2070392)))

(declare-fun b!5003715 () Bool)

(declare-fun e!3126751 () Bool)

(declare-fun lt!2070535 () List!57980)

(declare-fun e!3126754 () Int)

(assert (=> b!5003715 (= e!3126751 (= (size!38457 lt!2070535) e!3126754))))

(declare-fun c!854047 () Bool)

(assert (=> b!5003715 (= c!854047 (<= lt!2070381 0))))

(declare-fun bm!349245 () Bool)

(declare-fun call!349250 () Int)

(assert (=> bm!349245 (= call!349250 (size!38457 lt!2070392))))

(declare-fun b!5003716 () Bool)

(assert (=> b!5003716 (= e!3126753 e!3126755)))

(declare-fun c!854048 () Bool)

(assert (=> b!5003716 (= c!854048 (<= lt!2070381 0))))

(declare-fun b!5003717 () Bool)

(assert (=> b!5003717 (= e!3126754 call!349250)))

(declare-fun b!5003718 () Bool)

(assert (=> b!5003718 (= e!3126754 e!3126752)))

(declare-fun c!854046 () Bool)

(assert (=> b!5003718 (= c!854046 (>= lt!2070381 call!349250))))

(declare-fun d!1610449 () Bool)

(assert (=> d!1610449 e!3126751))

(declare-fun res!2135059 () Bool)

(assert (=> d!1610449 (=> (not res!2135059) (not e!3126751))))

(assert (=> d!1610449 (= res!2135059 (set.subset (content!10246 lt!2070535) (content!10246 lt!2070392)))))

(assert (=> d!1610449 (= lt!2070535 e!3126753)))

(declare-fun c!854045 () Bool)

(assert (=> d!1610449 (= c!854045 (is-Nil!57856 lt!2070392))))

(assert (=> d!1610449 (= (drop!2455 lt!2070392 lt!2070381) lt!2070535)))

(declare-fun b!5003719 () Bool)

(assert (=> b!5003719 (= e!3126755 (drop!2455 (t!370326 lt!2070392) (- lt!2070381 1)))))

(declare-fun b!5003720 () Bool)

(assert (=> b!5003720 (= e!3126752 (- call!349250 lt!2070381))))

(assert (= (and d!1610449 c!854045) b!5003712))

(assert (= (and d!1610449 (not c!854045)) b!5003716))

(assert (= (and b!5003716 c!854048) b!5003714))

(assert (= (and b!5003716 (not c!854048)) b!5003719))

(assert (= (and d!1610449 res!2135059) b!5003715))

(assert (= (and b!5003715 c!854047) b!5003717))

(assert (= (and b!5003715 (not c!854047)) b!5003718))

(assert (= (and b!5003718 c!854046) b!5003713))

(assert (= (and b!5003718 (not c!854046)) b!5003720))

(assert (= (or b!5003717 b!5003718 b!5003720) bm!349245))

(declare-fun m!6037594 () Bool)

(assert (=> b!5003715 m!6037594))

(declare-fun m!6037596 () Bool)

(assert (=> bm!349245 m!6037596))

(declare-fun m!6037598 () Bool)

(assert (=> d!1610449 m!6037598))

(declare-fun m!6037600 () Bool)

(assert (=> d!1610449 m!6037600))

(declare-fun m!6037602 () Bool)

(assert (=> b!5003719 m!6037602))

(assert (=> b!5003456 d!1610449))

(declare-fun d!1610451 () Bool)

(declare-fun lt!2070538 () Bool)

(assert (=> d!1610451 (= lt!2070538 (isEmpty!31325 (list!18619 (_1!34805 lt!2070397))))))

(declare-fun isEmpty!31328 (Conc!15311) Bool)

(assert (=> d!1610451 (= lt!2070538 (isEmpty!31328 (c!853987 (_1!34805 lt!2070397))))))

(assert (=> d!1610451 (= (isEmpty!31324 (_1!34805 lt!2070397)) lt!2070538)))

(declare-fun bs!1185875 () Bool)

(assert (= bs!1185875 d!1610451))

(assert (=> bs!1185875 m!6037278))

(assert (=> bs!1185875 m!6037278))

(declare-fun m!6037616 () Bool)

(assert (=> bs!1185875 m!6037616))

(declare-fun m!6037618 () Bool)

(assert (=> bs!1185875 m!6037618))

(assert (=> b!5003437 d!1610451))

(declare-fun d!1610455 () Bool)

(declare-fun c!854049 () Bool)

(assert (=> d!1610455 (= c!854049 (isEmpty!31325 lt!2070387))))

(declare-fun e!3126756 () Bool)

(assert (=> d!1610455 (= (matchZipper!560 z!4183 lt!2070387) e!3126756)))

(declare-fun b!5003721 () Bool)

(assert (=> b!5003721 (= e!3126756 (nullableZipper!881 z!4183))))

(declare-fun b!5003722 () Bool)

(assert (=> b!5003722 (= e!3126756 (matchZipper!560 (derivationStepZipper!630 z!4183 (head!10730 lt!2070387)) (tail!9863 lt!2070387)))))

(assert (= (and d!1610455 c!854049) b!5003721))

(assert (= (and d!1610455 (not c!854049)) b!5003722))

(declare-fun m!6037620 () Bool)

(assert (=> d!1610455 m!6037620))

(assert (=> b!5003721 m!6037574))

(declare-fun m!6037622 () Bool)

(assert (=> b!5003722 m!6037622))

(assert (=> b!5003722 m!6037622))

(declare-fun m!6037624 () Bool)

(assert (=> b!5003722 m!6037624))

(declare-fun m!6037626 () Bool)

(assert (=> b!5003722 m!6037626))

(assert (=> b!5003722 m!6037624))

(assert (=> b!5003722 m!6037626))

(declare-fun m!6037628 () Bool)

(assert (=> b!5003722 m!6037628))

(assert (=> b!5003454 d!1610455))

(declare-fun d!1610457 () Bool)

(assert (=> d!1610457 (isPrefix!5345 (_1!34806 lt!2070393) (++!12638 (_1!34806 lt!2070393) (_2!34806 lt!2070393)))))

(declare-fun lt!2070541 () Unit!149023)

(declare-fun choose!36995 (List!57980 List!57980) Unit!149023)

(assert (=> d!1610457 (= lt!2070541 (choose!36995 (_1!34806 lt!2070393) (_2!34806 lt!2070393)))))

(assert (=> d!1610457 (= (lemmaConcatTwoListThenFirstIsPrefix!3443 (_1!34806 lt!2070393) (_2!34806 lt!2070393)) lt!2070541)))

(declare-fun bs!1185876 () Bool)

(assert (= bs!1185876 d!1610457))

(assert (=> bs!1185876 m!6037346))

(assert (=> bs!1185876 m!6037346))

(declare-fun m!6037630 () Bool)

(assert (=> bs!1185876 m!6037630))

(declare-fun m!6037632 () Bool)

(assert (=> bs!1185876 m!6037632))

(assert (=> b!5003454 d!1610457))

(declare-fun b!5003732 () Bool)

(declare-fun res!2135068 () Bool)

(declare-fun e!3126764 () Bool)

(assert (=> b!5003732 (=> (not res!2135068) (not e!3126764))))

(assert (=> b!5003732 (= res!2135068 (= (head!10730 lt!2070387) (head!10730 lt!2070389)))))

(declare-fun b!5003731 () Bool)

(declare-fun e!3126763 () Bool)

(assert (=> b!5003731 (= e!3126763 e!3126764)))

(declare-fun res!2135070 () Bool)

(assert (=> b!5003731 (=> (not res!2135070) (not e!3126764))))

(assert (=> b!5003731 (= res!2135070 (not (is-Nil!57856 lt!2070389)))))

(declare-fun b!5003734 () Bool)

(declare-fun e!3126765 () Bool)

(assert (=> b!5003734 (= e!3126765 (>= (size!38457 lt!2070389) (size!38457 lt!2070387)))))

(declare-fun d!1610459 () Bool)

(assert (=> d!1610459 e!3126765))

(declare-fun res!2135071 () Bool)

(assert (=> d!1610459 (=> res!2135071 e!3126765)))

(declare-fun lt!2070544 () Bool)

(assert (=> d!1610459 (= res!2135071 (not lt!2070544))))

(assert (=> d!1610459 (= lt!2070544 e!3126763)))

(declare-fun res!2135069 () Bool)

(assert (=> d!1610459 (=> res!2135069 e!3126763)))

(assert (=> d!1610459 (= res!2135069 (is-Nil!57856 lt!2070387))))

(assert (=> d!1610459 (= (isPrefix!5345 lt!2070387 lt!2070389) lt!2070544)))

(declare-fun b!5003733 () Bool)

(assert (=> b!5003733 (= e!3126764 (isPrefix!5345 (tail!9863 lt!2070387) (tail!9863 lt!2070389)))))

(assert (= (and d!1610459 (not res!2135069)) b!5003731))

(assert (= (and b!5003731 res!2135070) b!5003732))

(assert (= (and b!5003732 res!2135068) b!5003733))

(assert (= (and d!1610459 (not res!2135071)) b!5003734))

(assert (=> b!5003732 m!6037622))

(declare-fun m!6037634 () Bool)

(assert (=> b!5003732 m!6037634))

(declare-fun m!6037636 () Bool)

(assert (=> b!5003734 m!6037636))

(assert (=> b!5003734 m!6037512))

(assert (=> b!5003733 m!6037626))

(declare-fun m!6037638 () Bool)

(assert (=> b!5003733 m!6037638))

(assert (=> b!5003733 m!6037626))

(assert (=> b!5003733 m!6037638))

(declare-fun m!6037640 () Bool)

(assert (=> b!5003733 m!6037640))

(assert (=> b!5003454 d!1610459))

(declare-fun d!1610461 () Bool)

(assert (=> d!1610461 (= (isEmpty!31325 (_1!34806 lt!2070400)) (is-Nil!57856 (_1!34806 lt!2070400)))))

(assert (=> b!5003454 d!1610461))

(declare-fun d!1610463 () Bool)

(declare-fun e!3126780 () Bool)

(assert (=> d!1610463 e!3126780))

(declare-fun res!2135077 () Bool)

(assert (=> d!1610463 (=> res!2135077 e!3126780)))

(assert (=> d!1610463 (= res!2135077 (isEmpty!31325 (_1!34806 (findLongestMatchInner!1981 r!12727 Nil!57856 (size!38457 Nil!57856) lt!2070379 lt!2070379 (size!38457 lt!2070379)))))))

(declare-fun lt!2070550 () Unit!149023)

(declare-fun choose!36996 (Regex!13792 List!57980) Unit!149023)

(assert (=> d!1610463 (= lt!2070550 (choose!36996 r!12727 lt!2070379))))

(assert (=> d!1610463 (validRegex!6089 r!12727)))

(assert (=> d!1610463 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1934 r!12727 lt!2070379) lt!2070550)))

(declare-fun b!5003758 () Bool)

(assert (=> b!5003758 (= e!3126780 (matchR!6756 r!12727 (_1!34806 (findLongestMatchInner!1981 r!12727 Nil!57856 (size!38457 Nil!57856) lt!2070379 lt!2070379 (size!38457 lt!2070379)))))))

(assert (= (and d!1610463 (not res!2135077)) b!5003758))

(assert (=> d!1610463 m!6037284))

(declare-fun m!6037652 () Bool)

(assert (=> d!1610463 m!6037652))

(assert (=> d!1610463 m!6037284))

(assert (=> d!1610463 m!6037290))

(assert (=> d!1610463 m!6037292))

(assert (=> d!1610463 m!6037262))

(declare-fun m!6037654 () Bool)

(assert (=> d!1610463 m!6037654))

(assert (=> d!1610463 m!6037290))

(assert (=> b!5003758 m!6037284))

(assert (=> b!5003758 m!6037290))

(assert (=> b!5003758 m!6037284))

(assert (=> b!5003758 m!6037290))

(assert (=> b!5003758 m!6037292))

(declare-fun m!6037656 () Bool)

(assert (=> b!5003758 m!6037656))

(assert (=> b!5003454 d!1610463))

(declare-fun d!1610467 () Bool)

(assert (=> d!1610467 (isPrefix!5345 (take!651 lt!2070392 lt!2070381) lt!2070392)))

(declare-fun lt!2070553 () Unit!149023)

(declare-fun choose!36997 (List!57980 Int) Unit!149023)

(assert (=> d!1610467 (= lt!2070553 (choose!36997 lt!2070392 lt!2070381))))

(assert (=> d!1610467 (>= lt!2070381 0)))

(assert (=> d!1610467 (= (lemmaTakeIsPrefix!145 lt!2070392 lt!2070381) lt!2070553)))

(declare-fun bs!1185877 () Bool)

(assert (= bs!1185877 d!1610467))

(assert (=> bs!1185877 m!6037300))

(assert (=> bs!1185877 m!6037300))

(assert (=> bs!1185877 m!6037308))

(declare-fun m!6037658 () Bool)

(assert (=> bs!1185877 m!6037658))

(assert (=> b!5003454 d!1610467))

(declare-fun bm!349265 () Bool)

(declare-fun call!349273 () Regex!13792)

(declare-fun call!349270 () C!27834)

(assert (=> bm!349265 (= call!349273 (derivativeStep!3976 r!12727 call!349270))))

(declare-fun b!5003848 () Bool)

(declare-fun e!3126841 () tuple2!63006)

(assert (=> b!5003848 (= e!3126841 (tuple2!63007 Nil!57856 lt!2070379))))

(declare-fun b!5003849 () Bool)

(declare-fun e!3126840 () tuple2!63006)

(declare-fun lt!2070632 () tuple2!63006)

(assert (=> b!5003849 (= e!3126840 lt!2070632)))

(declare-fun b!5003850 () Bool)

(declare-fun e!3126838 () tuple2!63006)

(assert (=> b!5003850 (= e!3126838 (tuple2!63007 Nil!57856 lt!2070379))))

(declare-fun d!1610469 () Bool)

(declare-fun e!3126845 () Bool)

(assert (=> d!1610469 e!3126845))

(declare-fun res!2135111 () Bool)

(assert (=> d!1610469 (=> (not res!2135111) (not e!3126845))))

(declare-fun lt!2070638 () tuple2!63006)

(assert (=> d!1610469 (= res!2135111 (= (++!12638 (_1!34806 lt!2070638) (_2!34806 lt!2070638)) lt!2070379))))

(assert (=> d!1610469 (= lt!2070638 e!3126841)))

(declare-fun c!854089 () Bool)

(declare-fun lostCause!1185 (Regex!13792) Bool)

(assert (=> d!1610469 (= c!854089 (lostCause!1185 r!12727))))

(declare-fun lt!2070634 () Unit!149023)

(declare-fun Unit!149027 () Unit!149023)

(assert (=> d!1610469 (= lt!2070634 Unit!149027)))

(declare-fun getSuffix!3141 (List!57980 List!57980) List!57980)

(assert (=> d!1610469 (= (getSuffix!3141 lt!2070379 Nil!57856) lt!2070379)))

(declare-fun lt!2070637 () Unit!149023)

(declare-fun lt!2070650 () Unit!149023)

(assert (=> d!1610469 (= lt!2070637 lt!2070650)))

(declare-fun lt!2070633 () List!57980)

(assert (=> d!1610469 (= lt!2070379 lt!2070633)))

(declare-fun lemmaSamePrefixThenSameSuffix!2555 (List!57980 List!57980 List!57980 List!57980 List!57980) Unit!149023)

(assert (=> d!1610469 (= lt!2070650 (lemmaSamePrefixThenSameSuffix!2555 Nil!57856 lt!2070379 Nil!57856 lt!2070633 lt!2070379))))

(assert (=> d!1610469 (= lt!2070633 (getSuffix!3141 lt!2070379 Nil!57856))))

(declare-fun lt!2070648 () Unit!149023)

(declare-fun lt!2070646 () Unit!149023)

(assert (=> d!1610469 (= lt!2070648 lt!2070646)))

(assert (=> d!1610469 (isPrefix!5345 Nil!57856 (++!12638 Nil!57856 lt!2070379))))

(assert (=> d!1610469 (= lt!2070646 (lemmaConcatTwoListThenFirstIsPrefix!3443 Nil!57856 lt!2070379))))

(assert (=> d!1610469 (validRegex!6089 r!12727)))

(assert (=> d!1610469 (= (findLongestMatchInner!1981 r!12727 Nil!57856 (size!38457 Nil!57856) lt!2070379 lt!2070379 (size!38457 lt!2070379)) lt!2070638)))

(declare-fun b!5003851 () Bool)

(declare-fun e!3126844 () tuple2!63006)

(declare-fun call!349274 () tuple2!63006)

(assert (=> b!5003851 (= e!3126844 call!349274)))

(declare-fun lt!2070630 () List!57980)

(declare-fun bm!349266 () Bool)

(declare-fun call!349271 () List!57980)

(assert (=> bm!349266 (= call!349274 (findLongestMatchInner!1981 call!349273 lt!2070630 (+ (size!38457 Nil!57856) 1) call!349271 lt!2070379 (size!38457 lt!2070379)))))

(declare-fun b!5003852 () Bool)

(assert (=> b!5003852 (= e!3126844 e!3126840)))

(assert (=> b!5003852 (= lt!2070632 call!349274)))

(declare-fun c!854090 () Bool)

(assert (=> b!5003852 (= c!854090 (isEmpty!31325 (_1!34806 lt!2070632)))))

(declare-fun bm!349267 () Bool)

(declare-fun call!349275 () Bool)

(assert (=> bm!349267 (= call!349275 (isPrefix!5345 lt!2070379 lt!2070379))))

(declare-fun bm!349268 () Bool)

(assert (=> bm!349268 (= call!349270 (head!10730 lt!2070379))))

(declare-fun b!5003853 () Bool)

(declare-fun c!854091 () Bool)

(declare-fun call!349277 () Bool)

(assert (=> b!5003853 (= c!854091 call!349277)))

(declare-fun lt!2070644 () Unit!149023)

(declare-fun lt!2070647 () Unit!149023)

(assert (=> b!5003853 (= lt!2070644 lt!2070647)))

(declare-fun lt!2070656 () C!27834)

(declare-fun lt!2070649 () List!57980)

(assert (=> b!5003853 (= (++!12638 (++!12638 Nil!57856 (Cons!57856 lt!2070656 Nil!57856)) lt!2070649) lt!2070379)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1497 (List!57980 C!27834 List!57980 List!57980) Unit!149023)

(assert (=> b!5003853 (= lt!2070647 (lemmaMoveElementToOtherListKeepsConcatEq!1497 Nil!57856 lt!2070656 lt!2070649 lt!2070379))))

(assert (=> b!5003853 (= lt!2070649 (tail!9863 lt!2070379))))

(assert (=> b!5003853 (= lt!2070656 (head!10730 lt!2070379))))

(declare-fun lt!2070629 () Unit!149023)

(declare-fun lt!2070636 () Unit!149023)

(assert (=> b!5003853 (= lt!2070629 lt!2070636)))

(assert (=> b!5003853 (isPrefix!5345 (++!12638 Nil!57856 (Cons!57856 (head!10730 (getSuffix!3141 lt!2070379 Nil!57856)) Nil!57856)) lt!2070379)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!886 (List!57980 List!57980) Unit!149023)

(assert (=> b!5003853 (= lt!2070636 (lemmaAddHeadSuffixToPrefixStillPrefix!886 Nil!57856 lt!2070379))))

(declare-fun lt!2070642 () Unit!149023)

(declare-fun lt!2070645 () Unit!149023)

(assert (=> b!5003853 (= lt!2070642 lt!2070645)))

(assert (=> b!5003853 (= lt!2070645 (lemmaAddHeadSuffixToPrefixStillPrefix!886 Nil!57856 lt!2070379))))

(assert (=> b!5003853 (= lt!2070630 (++!12638 Nil!57856 (Cons!57856 (head!10730 lt!2070379) Nil!57856)))))

(declare-fun lt!2070651 () Unit!149023)

(declare-fun e!3126843 () Unit!149023)

(assert (=> b!5003853 (= lt!2070651 e!3126843)))

(declare-fun c!854087 () Bool)

(assert (=> b!5003853 (= c!854087 (= (size!38457 Nil!57856) (size!38457 lt!2070379)))))

(declare-fun lt!2070653 () Unit!149023)

(declare-fun lt!2070652 () Unit!149023)

(assert (=> b!5003853 (= lt!2070653 lt!2070652)))

(assert (=> b!5003853 (<= (size!38457 Nil!57856) (size!38457 lt!2070379))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!812 (List!57980 List!57980) Unit!149023)

(assert (=> b!5003853 (= lt!2070652 (lemmaIsPrefixThenSmallerEqSize!812 Nil!57856 lt!2070379))))

(declare-fun e!3126842 () tuple2!63006)

(assert (=> b!5003853 (= e!3126842 e!3126844)))

(declare-fun b!5003854 () Bool)

(assert (=> b!5003854 (= e!3126840 (tuple2!63007 Nil!57856 lt!2070379))))

(declare-fun b!5003855 () Bool)

(declare-fun e!3126839 () Bool)

(assert (=> b!5003855 (= e!3126839 (>= (size!38457 (_1!34806 lt!2070638)) (size!38457 Nil!57856)))))

(declare-fun b!5003856 () Bool)

(declare-fun Unit!149028 () Unit!149023)

(assert (=> b!5003856 (= e!3126843 Unit!149028)))

(declare-fun b!5003857 () Bool)

(assert (=> b!5003857 (= e!3126838 (tuple2!63007 Nil!57856 Nil!57856))))

(declare-fun bm!349269 () Bool)

(declare-fun call!349272 () Unit!149023)

(assert (=> bm!349269 (= call!349272 (lemmaIsPrefixSameLengthThenSameList!1272 lt!2070379 Nil!57856 lt!2070379))))

(declare-fun bm!349270 () Bool)

(assert (=> bm!349270 (= call!349271 (tail!9863 lt!2070379))))

(declare-fun bm!349271 () Bool)

(declare-fun call!349276 () Unit!149023)

(declare-fun lemmaIsPrefixRefl!3624 (List!57980 List!57980) Unit!149023)

(assert (=> bm!349271 (= call!349276 (lemmaIsPrefixRefl!3624 lt!2070379 lt!2070379))))

(declare-fun bm!349272 () Bool)

(assert (=> bm!349272 (= call!349277 (nullable!4686 r!12727))))

(declare-fun b!5003858 () Bool)

(assert (=> b!5003858 (= e!3126841 e!3126842)))

(declare-fun c!854088 () Bool)

(assert (=> b!5003858 (= c!854088 (= (size!38457 Nil!57856) (size!38457 lt!2070379)))))

(declare-fun b!5003859 () Bool)

(declare-fun c!854092 () Bool)

(assert (=> b!5003859 (= c!854092 call!349277)))

(declare-fun lt!2070635 () Unit!149023)

(declare-fun lt!2070654 () Unit!149023)

(assert (=> b!5003859 (= lt!2070635 lt!2070654)))

(assert (=> b!5003859 (= lt!2070379 Nil!57856)))

(assert (=> b!5003859 (= lt!2070654 call!349272)))

(declare-fun lt!2070631 () Unit!149023)

(declare-fun lt!2070641 () Unit!149023)

(assert (=> b!5003859 (= lt!2070631 lt!2070641)))

(assert (=> b!5003859 call!349275))

(assert (=> b!5003859 (= lt!2070641 call!349276)))

(assert (=> b!5003859 (= e!3126842 e!3126838)))

(declare-fun b!5003860 () Bool)

(declare-fun Unit!149029 () Unit!149023)

(assert (=> b!5003860 (= e!3126843 Unit!149029)))

(declare-fun lt!2070639 () Unit!149023)

(assert (=> b!5003860 (= lt!2070639 call!349276)))

(assert (=> b!5003860 call!349275))

(declare-fun lt!2070655 () Unit!149023)

(assert (=> b!5003860 (= lt!2070655 lt!2070639)))

(declare-fun lt!2070643 () Unit!149023)

(assert (=> b!5003860 (= lt!2070643 call!349272)))

(assert (=> b!5003860 (= lt!2070379 Nil!57856)))

(declare-fun lt!2070640 () Unit!149023)

(assert (=> b!5003860 (= lt!2070640 lt!2070643)))

(assert (=> b!5003860 false))

(declare-fun b!5003861 () Bool)

(assert (=> b!5003861 (= e!3126845 e!3126839)))

(declare-fun res!2135112 () Bool)

(assert (=> b!5003861 (=> res!2135112 e!3126839)))

(assert (=> b!5003861 (= res!2135112 (isEmpty!31325 (_1!34806 lt!2070638)))))

(assert (= (and d!1610469 c!854089) b!5003848))

(assert (= (and d!1610469 (not c!854089)) b!5003858))

(assert (= (and b!5003858 c!854088) b!5003859))

(assert (= (and b!5003858 (not c!854088)) b!5003853))

(assert (= (and b!5003859 c!854092) b!5003857))

(assert (= (and b!5003859 (not c!854092)) b!5003850))

(assert (= (and b!5003853 c!854087) b!5003860))

(assert (= (and b!5003853 (not c!854087)) b!5003856))

(assert (= (and b!5003853 c!854091) b!5003852))

(assert (= (and b!5003853 (not c!854091)) b!5003851))

(assert (= (and b!5003852 c!854090) b!5003854))

(assert (= (and b!5003852 (not c!854090)) b!5003849))

(assert (= (or b!5003852 b!5003851) bm!349268))

(assert (= (or b!5003852 b!5003851) bm!349270))

(assert (= (or b!5003852 b!5003851) bm!349265))

(assert (= (or b!5003852 b!5003851) bm!349266))

(assert (= (or b!5003859 b!5003853) bm!349272))

(assert (= (or b!5003859 b!5003860) bm!349267))

(assert (= (or b!5003859 b!5003860) bm!349269))

(assert (= (or b!5003859 b!5003860) bm!349271))

(assert (= (and d!1610469 res!2135111) b!5003861))

(assert (= (and b!5003861 (not res!2135112)) b!5003855))

(declare-fun m!6037718 () Bool)

(assert (=> bm!349268 m!6037718))

(declare-fun m!6037720 () Bool)

(assert (=> b!5003861 m!6037720))

(declare-fun m!6037722 () Bool)

(assert (=> bm!349270 m!6037722))

(declare-fun m!6037724 () Bool)

(assert (=> b!5003855 m!6037724))

(assert (=> b!5003855 m!6037284))

(declare-fun m!6037726 () Bool)

(assert (=> bm!349269 m!6037726))

(declare-fun m!6037728 () Bool)

(assert (=> bm!349265 m!6037728))

(assert (=> bm!349266 m!6037290))

(declare-fun m!6037730 () Bool)

(assert (=> bm!349266 m!6037730))

(declare-fun m!6037732 () Bool)

(assert (=> bm!349267 m!6037732))

(declare-fun m!6037734 () Bool)

(assert (=> b!5003853 m!6037734))

(declare-fun m!6037736 () Bool)

(assert (=> b!5003853 m!6037736))

(declare-fun m!6037738 () Bool)

(assert (=> b!5003853 m!6037738))

(assert (=> b!5003853 m!6037722))

(declare-fun m!6037740 () Bool)

(assert (=> b!5003853 m!6037740))

(declare-fun m!6037742 () Bool)

(assert (=> b!5003853 m!6037742))

(declare-fun m!6037744 () Bool)

(assert (=> b!5003853 m!6037744))

(assert (=> b!5003853 m!6037284))

(assert (=> b!5003853 m!6037718))

(declare-fun m!6037746 () Bool)

(assert (=> b!5003853 m!6037746))

(declare-fun m!6037748 () Bool)

(assert (=> b!5003853 m!6037748))

(assert (=> b!5003853 m!6037734))

(assert (=> b!5003853 m!6037740))

(assert (=> b!5003853 m!6037290))

(assert (=> b!5003853 m!6037746))

(declare-fun m!6037750 () Bool)

(assert (=> b!5003853 m!6037750))

(declare-fun m!6037752 () Bool)

(assert (=> b!5003853 m!6037752))

(declare-fun m!6037754 () Bool)

(assert (=> b!5003852 m!6037754))

(assert (=> bm!349272 m!6037480))

(declare-fun m!6037756 () Bool)

(assert (=> d!1610469 m!6037756))

(declare-fun m!6037758 () Bool)

(assert (=> d!1610469 m!6037758))

(assert (=> d!1610469 m!6037262))

(assert (=> d!1610469 m!6037734))

(declare-fun m!6037760 () Bool)

(assert (=> d!1610469 m!6037760))

(declare-fun m!6037762 () Bool)

(assert (=> d!1610469 m!6037762))

(assert (=> d!1610469 m!6037758))

(declare-fun m!6037764 () Bool)

(assert (=> d!1610469 m!6037764))

(declare-fun m!6037766 () Bool)

(assert (=> d!1610469 m!6037766))

(declare-fun m!6037768 () Bool)

(assert (=> bm!349271 m!6037768))

(assert (=> b!5003454 d!1610469))

(declare-fun b!5003863 () Bool)

(declare-fun res!2135113 () Bool)

(declare-fun e!3126847 () Bool)

(assert (=> b!5003863 (=> (not res!2135113) (not e!3126847))))

(assert (=> b!5003863 (= res!2135113 (= (head!10730 (_1!34806 lt!2070393)) (head!10730 lt!2070396)))))

(declare-fun b!5003862 () Bool)

(declare-fun e!3126846 () Bool)

(assert (=> b!5003862 (= e!3126846 e!3126847)))

(declare-fun res!2135115 () Bool)

(assert (=> b!5003862 (=> (not res!2135115) (not e!3126847))))

(assert (=> b!5003862 (= res!2135115 (not (is-Nil!57856 lt!2070396)))))

(declare-fun b!5003865 () Bool)

(declare-fun e!3126848 () Bool)

(assert (=> b!5003865 (= e!3126848 (>= (size!38457 lt!2070396) (size!38457 (_1!34806 lt!2070393))))))

(declare-fun d!1610487 () Bool)

(assert (=> d!1610487 e!3126848))

(declare-fun res!2135116 () Bool)

(assert (=> d!1610487 (=> res!2135116 e!3126848)))

(declare-fun lt!2070657 () Bool)

(assert (=> d!1610487 (= res!2135116 (not lt!2070657))))

(assert (=> d!1610487 (= lt!2070657 e!3126846)))

(declare-fun res!2135114 () Bool)

(assert (=> d!1610487 (=> res!2135114 e!3126846)))

(assert (=> d!1610487 (= res!2135114 (is-Nil!57856 (_1!34806 lt!2070393)))))

(assert (=> d!1610487 (= (isPrefix!5345 (_1!34806 lt!2070393) lt!2070396) lt!2070657)))

(declare-fun b!5003864 () Bool)

(assert (=> b!5003864 (= e!3126847 (isPrefix!5345 (tail!9863 (_1!34806 lt!2070393)) (tail!9863 lt!2070396)))))

(assert (= (and d!1610487 (not res!2135114)) b!5003862))

(assert (= (and b!5003862 res!2135115) b!5003863))

(assert (= (and b!5003863 res!2135113) b!5003864))

(assert (= (and d!1610487 (not res!2135116)) b!5003865))

(assert (=> b!5003863 m!6037470))

(declare-fun m!6037770 () Bool)

(assert (=> b!5003863 m!6037770))

(declare-fun m!6037772 () Bool)

(assert (=> b!5003865 m!6037772))

(assert (=> b!5003865 m!6037334))

(assert (=> b!5003864 m!6037474))

(declare-fun m!6037774 () Bool)

(assert (=> b!5003864 m!6037774))

(assert (=> b!5003864 m!6037474))

(assert (=> b!5003864 m!6037774))

(declare-fun m!6037776 () Bool)

(assert (=> b!5003864 m!6037776))

(assert (=> b!5003454 d!1610487))

(declare-fun d!1610489 () Bool)

(assert (=> d!1610489 (isPrefix!5345 lt!2070387 (++!12638 lt!2070387 lt!2070385))))

(declare-fun lt!2070658 () Unit!149023)

(assert (=> d!1610489 (= lt!2070658 (choose!36995 lt!2070387 lt!2070385))))

(assert (=> d!1610489 (= (lemmaConcatTwoListThenFirstIsPrefix!3443 lt!2070387 lt!2070385) lt!2070658)))

(declare-fun bs!1185879 () Bool)

(assert (= bs!1185879 d!1610489))

(assert (=> bs!1185879 m!6037272))

(assert (=> bs!1185879 m!6037272))

(declare-fun m!6037778 () Bool)

(assert (=> bs!1185879 m!6037778))

(declare-fun m!6037780 () Bool)

(assert (=> bs!1185879 m!6037780))

(assert (=> b!5003454 d!1610489))

(declare-fun b!5003866 () Bool)

(declare-fun e!3126852 () Int)

(assert (=> b!5003866 (= e!3126852 (size!38457 lt!2070392))))

(declare-fun b!5003867 () Bool)

(declare-fun e!3126851 () List!57980)

(assert (=> b!5003867 (= e!3126851 (Cons!57856 (h!64304 lt!2070392) (take!651 (t!370326 lt!2070392) (- lt!2070381 1))))))

(declare-fun b!5003868 () Bool)

(declare-fun e!3126850 () Bool)

(declare-fun lt!2070659 () List!57980)

(declare-fun e!3126849 () Int)

(assert (=> b!5003868 (= e!3126850 (= (size!38457 lt!2070659) e!3126849))))

(declare-fun c!854093 () Bool)

(assert (=> b!5003868 (= c!854093 (<= lt!2070381 0))))

(declare-fun b!5003869 () Bool)

(assert (=> b!5003869 (= e!3126849 e!3126852)))

(declare-fun c!854095 () Bool)

(assert (=> b!5003869 (= c!854095 (>= lt!2070381 (size!38457 lt!2070392)))))

(declare-fun b!5003870 () Bool)

(assert (=> b!5003870 (= e!3126852 lt!2070381)))

(declare-fun b!5003871 () Bool)

(assert (=> b!5003871 (= e!3126851 Nil!57856)))

(declare-fun b!5003872 () Bool)

(assert (=> b!5003872 (= e!3126849 0)))

(declare-fun d!1610491 () Bool)

(assert (=> d!1610491 e!3126850))

(declare-fun res!2135117 () Bool)

(assert (=> d!1610491 (=> (not res!2135117) (not e!3126850))))

(assert (=> d!1610491 (= res!2135117 (set.subset (content!10246 lt!2070659) (content!10246 lt!2070392)))))

(assert (=> d!1610491 (= lt!2070659 e!3126851)))

(declare-fun c!854094 () Bool)

(assert (=> d!1610491 (= c!854094 (or (is-Nil!57856 lt!2070392) (<= lt!2070381 0)))))

(assert (=> d!1610491 (= (take!651 lt!2070392 lt!2070381) lt!2070659)))

(assert (= (and d!1610491 c!854094) b!5003871))

(assert (= (and d!1610491 (not c!854094)) b!5003867))

(assert (= (and d!1610491 res!2135117) b!5003868))

(assert (= (and b!5003868 c!854093) b!5003872))

(assert (= (and b!5003868 (not c!854093)) b!5003869))

(assert (= (and b!5003869 c!854095) b!5003866))

(assert (= (and b!5003869 (not c!854095)) b!5003870))

(declare-fun m!6037782 () Bool)

(assert (=> d!1610491 m!6037782))

(assert (=> d!1610491 m!6037600))

(declare-fun m!6037784 () Bool)

(assert (=> b!5003867 m!6037784))

(declare-fun m!6037786 () Bool)

(assert (=> b!5003868 m!6037786))

(assert (=> b!5003866 m!6037596))

(assert (=> b!5003869 m!6037596))

(assert (=> b!5003454 d!1610491))

(declare-fun b!5003905 () Bool)

(declare-fun e!3126875 () Int)

(assert (=> b!5003905 (= e!3126875 1)))

(declare-fun b!5003906 () Bool)

(declare-fun c!854108 () Bool)

(declare-fun lt!2070674 () (Set Context!6434))

(assert (=> b!5003906 (= c!854108 (nullableZipper!881 lt!2070674))))

(declare-fun e!3126876 () Int)

(assert (=> b!5003906 (= e!3126876 e!3126875)))

(declare-fun b!5003907 () Bool)

(declare-fun e!3126873 () Int)

(assert (=> b!5003907 (= e!3126873 e!3126876)))

(declare-fun apply!13987 (BalanceConc!30052 Int) C!27834)

(assert (=> b!5003907 (= lt!2070674 (derivationStepZipper!630 z!4183 (apply!13987 totalInput!1012 lt!2070381)))))

(declare-fun lt!2070673 () Int)

(assert (=> b!5003907 (= lt!2070673 (findLongestMatchInnerZipperFastV2!132 lt!2070674 (+ lt!2070381 1) totalInput!1012 lt!2070386))))

(declare-fun c!854110 () Bool)

(assert (=> b!5003907 (= c!854110 (> lt!2070673 0))))

(declare-fun b!5003908 () Bool)

(declare-fun e!3126874 () Bool)

(assert (=> b!5003908 (= e!3126874 (<= lt!2070381 (size!38456 totalInput!1012)))))

(declare-fun b!5003909 () Bool)

(assert (=> b!5003909 (= e!3126876 (+ 1 lt!2070673))))

(declare-fun d!1610493 () Bool)

(declare-fun lt!2070672 () Int)

(assert (=> d!1610493 (and (>= lt!2070672 0) (<= lt!2070672 (- lt!2070386 lt!2070381)))))

(assert (=> d!1610493 (= lt!2070672 e!3126873)))

(declare-fun c!854109 () Bool)

(declare-fun e!3126877 () Bool)

(assert (=> d!1610493 (= c!854109 e!3126877)))

(declare-fun res!2135126 () Bool)

(assert (=> d!1610493 (=> res!2135126 e!3126877)))

(assert (=> d!1610493 (= res!2135126 (= lt!2070381 lt!2070386))))

(assert (=> d!1610493 e!3126874))

(declare-fun res!2135127 () Bool)

(assert (=> d!1610493 (=> (not res!2135127) (not e!3126874))))

(assert (=> d!1610493 (= res!2135127 (>= lt!2070381 0))))

(assert (=> d!1610493 (= (findLongestMatchInnerZipperFastV2!132 z!4183 lt!2070381 totalInput!1012 lt!2070386) lt!2070672)))

(declare-fun b!5003910 () Bool)

(assert (=> b!5003910 (= e!3126875 0)))

(declare-fun b!5003911 () Bool)

(assert (=> b!5003911 (= e!3126873 0)))

(declare-fun b!5003912 () Bool)

(declare-fun lostCauseZipper!827 ((Set Context!6434)) Bool)

(assert (=> b!5003912 (= e!3126877 (lostCauseZipper!827 z!4183))))

(assert (= (and d!1610493 res!2135127) b!5003908))

(assert (= (and d!1610493 (not res!2135126)) b!5003912))

(assert (= (and d!1610493 c!854109) b!5003911))

(assert (= (and d!1610493 (not c!854109)) b!5003907))

(assert (= (and b!5003907 c!854110) b!5003909))

(assert (= (and b!5003907 (not c!854110)) b!5003906))

(assert (= (and b!5003906 c!854108) b!5003905))

(assert (= (and b!5003906 (not c!854108)) b!5003910))

(declare-fun m!6037788 () Bool)

(assert (=> b!5003906 m!6037788))

(declare-fun m!6037790 () Bool)

(assert (=> b!5003907 m!6037790))

(assert (=> b!5003907 m!6037790))

(declare-fun m!6037792 () Bool)

(assert (=> b!5003907 m!6037792))

(declare-fun m!6037794 () Bool)

(assert (=> b!5003907 m!6037794))

(assert (=> b!5003908 m!6037274))

(declare-fun m!6037796 () Bool)

(assert (=> b!5003912 m!6037796))

(assert (=> b!5003454 d!1610493))

(declare-fun d!1610495 () Bool)

(declare-fun lt!2070680 () Int)

(assert (=> d!1610495 (>= lt!2070680 0)))

(declare-fun e!3126885 () Int)

(assert (=> d!1610495 (= lt!2070680 e!3126885)))

(declare-fun c!854116 () Bool)

(assert (=> d!1610495 (= c!854116 (is-Nil!57856 Nil!57856))))

(assert (=> d!1610495 (= (size!38457 Nil!57856) lt!2070680)))

(declare-fun b!5003925 () Bool)

(assert (=> b!5003925 (= e!3126885 0)))

(declare-fun b!5003926 () Bool)

(assert (=> b!5003926 (= e!3126885 (+ 1 (size!38457 (t!370326 Nil!57856))))))

(assert (= (and d!1610495 c!854116) b!5003925))

(assert (= (and d!1610495 (not c!854116)) b!5003926))

(declare-fun m!6037798 () Bool)

(assert (=> b!5003926 m!6037798))

(assert (=> b!5003454 d!1610495))

(declare-fun d!1610497 () Bool)

(declare-fun lt!2070681 () Int)

(assert (=> d!1610497 (>= lt!2070681 0)))

(declare-fun e!3126886 () Int)

(assert (=> d!1610497 (= lt!2070681 e!3126886)))

(declare-fun c!854117 () Bool)

(assert (=> d!1610497 (= c!854117 (is-Nil!57856 lt!2070379))))

(assert (=> d!1610497 (= (size!38457 lt!2070379) lt!2070681)))

(declare-fun b!5003927 () Bool)

(assert (=> b!5003927 (= e!3126886 0)))

(declare-fun b!5003928 () Bool)

(assert (=> b!5003928 (= e!3126886 (+ 1 (size!38457 (t!370326 lt!2070379))))))

(assert (= (and d!1610497 c!854117) b!5003927))

(assert (= (and d!1610497 (not c!854117)) b!5003928))

(declare-fun m!6037800 () Bool)

(assert (=> b!5003928 m!6037800))

(assert (=> b!5003454 d!1610497))

(declare-fun d!1610499 () Bool)

(declare-fun e!3126891 () Bool)

(assert (=> d!1610499 e!3126891))

(declare-fun res!2135135 () Bool)

(assert (=> d!1610499 (=> res!2135135 e!3126891)))

(assert (=> d!1610499 (= res!2135135 (= (findLongestMatchInnerZipperFastV2!132 z!4183 lt!2070381 totalInput!1012 (size!38456 totalInput!1012)) 0))))

(declare-fun lt!2070687 () Unit!149023)

(declare-fun choose!36998 ((Set Context!6434) Int BalanceConc!30052) Unit!149023)

(assert (=> d!1610499 (= lt!2070687 (choose!36998 z!4183 lt!2070381 totalInput!1012))))

(declare-fun e!3126892 () Bool)

(assert (=> d!1610499 e!3126892))

(declare-fun res!2135134 () Bool)

(assert (=> d!1610499 (=> (not res!2135134) (not e!3126892))))

(assert (=> d!1610499 (= res!2135134 (>= lt!2070381 0))))

(assert (=> d!1610499 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!51 z!4183 lt!2070381 totalInput!1012) lt!2070687)))

(declare-fun b!5003933 () Bool)

(assert (=> b!5003933 (= e!3126892 (<= lt!2070381 (size!38456 totalInput!1012)))))

(declare-fun b!5003934 () Bool)

(assert (=> b!5003934 (= e!3126891 (matchZipper!560 z!4183 (take!651 (drop!2455 (list!18619 totalInput!1012) lt!2070381) (findLongestMatchInnerZipperFastV2!132 z!4183 lt!2070381 totalInput!1012 (size!38456 totalInput!1012)))))))

(assert (= (and d!1610499 res!2135134) b!5003933))

(assert (= (and d!1610499 (not res!2135135)) b!5003934))

(assert (=> d!1610499 m!6037274))

(assert (=> d!1610499 m!6037274))

(declare-fun m!6037816 () Bool)

(assert (=> d!1610499 m!6037816))

(declare-fun m!6037818 () Bool)

(assert (=> d!1610499 m!6037818))

(assert (=> b!5003933 m!6037274))

(assert (=> b!5003934 m!6037350))

(declare-fun m!6037820 () Bool)

(assert (=> b!5003934 m!6037820))

(assert (=> b!5003934 m!6037816))

(declare-fun m!6037822 () Bool)

(assert (=> b!5003934 m!6037822))

(assert (=> b!5003934 m!6037274))

(assert (=> b!5003934 m!6037816))

(assert (=> b!5003934 m!6037822))

(declare-fun m!6037824 () Bool)

(assert (=> b!5003934 m!6037824))

(assert (=> b!5003934 m!6037274))

(assert (=> b!5003934 m!6037350))

(assert (=> b!5003934 m!6037820))

(assert (=> b!5003454 d!1610499))

(declare-fun b!5003936 () Bool)

(declare-fun res!2135136 () Bool)

(declare-fun e!3126894 () Bool)

(assert (=> b!5003936 (=> (not res!2135136) (not e!3126894))))

(assert (=> b!5003936 (= res!2135136 (= (head!10730 (take!651 lt!2070392 lt!2070381)) (head!10730 lt!2070392)))))

(declare-fun b!5003935 () Bool)

(declare-fun e!3126893 () Bool)

(assert (=> b!5003935 (= e!3126893 e!3126894)))

(declare-fun res!2135138 () Bool)

(assert (=> b!5003935 (=> (not res!2135138) (not e!3126894))))

(assert (=> b!5003935 (= res!2135138 (not (is-Nil!57856 lt!2070392)))))

(declare-fun b!5003938 () Bool)

(declare-fun e!3126895 () Bool)

(assert (=> b!5003938 (= e!3126895 (>= (size!38457 lt!2070392) (size!38457 (take!651 lt!2070392 lt!2070381))))))

(declare-fun d!1610505 () Bool)

(assert (=> d!1610505 e!3126895))

(declare-fun res!2135139 () Bool)

(assert (=> d!1610505 (=> res!2135139 e!3126895)))

(declare-fun lt!2070688 () Bool)

(assert (=> d!1610505 (= res!2135139 (not lt!2070688))))

(assert (=> d!1610505 (= lt!2070688 e!3126893)))

(declare-fun res!2135137 () Bool)

(assert (=> d!1610505 (=> res!2135137 e!3126893)))

(assert (=> d!1610505 (= res!2135137 (is-Nil!57856 (take!651 lt!2070392 lt!2070381)))))

(assert (=> d!1610505 (= (isPrefix!5345 (take!651 lt!2070392 lt!2070381) lt!2070392) lt!2070688)))

(declare-fun b!5003937 () Bool)

(assert (=> b!5003937 (= e!3126894 (isPrefix!5345 (tail!9863 (take!651 lt!2070392 lt!2070381)) (tail!9863 lt!2070392)))))

(assert (= (and d!1610505 (not res!2135137)) b!5003935))

(assert (= (and b!5003935 res!2135138) b!5003936))

(assert (= (and b!5003936 res!2135136) b!5003937))

(assert (= (and d!1610505 (not res!2135139)) b!5003938))

(assert (=> b!5003936 m!6037300))

(declare-fun m!6037826 () Bool)

(assert (=> b!5003936 m!6037826))

(declare-fun m!6037828 () Bool)

(assert (=> b!5003936 m!6037828))

(assert (=> b!5003938 m!6037596))

(assert (=> b!5003938 m!6037300))

(declare-fun m!6037830 () Bool)

(assert (=> b!5003938 m!6037830))

(assert (=> b!5003937 m!6037300))

(declare-fun m!6037832 () Bool)

(assert (=> b!5003937 m!6037832))

(declare-fun m!6037834 () Bool)

(assert (=> b!5003937 m!6037834))

(assert (=> b!5003937 m!6037832))

(assert (=> b!5003937 m!6037834))

(declare-fun m!6037836 () Bool)

(assert (=> b!5003937 m!6037836))

(assert (=> b!5003454 d!1610505))

(declare-fun d!1610507 () Bool)

(declare-fun e!3126898 () Bool)

(assert (=> d!1610507 e!3126898))

(declare-fun res!2135142 () Bool)

(assert (=> d!1610507 (=> res!2135142 e!3126898)))

(declare-fun lt!2070691 () Bool)

(assert (=> d!1610507 (= res!2135142 (not lt!2070691))))

(assert (=> d!1610507 (= lt!2070691 (= lt!2070379 (drop!2455 lt!2070392 (- (size!38457 lt!2070392) (size!38457 lt!2070379)))))))

(assert (=> d!1610507 (= (isSuffix!1358 lt!2070379 lt!2070392) lt!2070691)))

(declare-fun b!5003941 () Bool)

(assert (=> b!5003941 (= e!3126898 (>= (size!38457 lt!2070392) (size!38457 lt!2070379)))))

(assert (= (and d!1610507 (not res!2135142)) b!5003941))

(assert (=> d!1610507 m!6037596))

(assert (=> d!1610507 m!6037290))

(declare-fun m!6037838 () Bool)

(assert (=> d!1610507 m!6037838))

(assert (=> b!5003941 m!6037596))

(assert (=> b!5003941 m!6037290))

(assert (=> b!5003444 d!1610507))

(declare-fun d!1610509 () Bool)

(assert (=> d!1610509 (= (list!18619 totalInput!1012) (list!18621 (c!853987 totalInput!1012)))))

(declare-fun bs!1185881 () Bool)

(assert (= bs!1185881 d!1610509))

(declare-fun m!6037840 () Bool)

(assert (=> bs!1185881 m!6037840))

(assert (=> b!5003444 d!1610509))

(declare-fun d!1610511 () Bool)

(assert (=> d!1610511 (= (list!18619 input!5597) (list!18621 (c!853987 input!5597)))))

(declare-fun bs!1185882 () Bool)

(assert (= bs!1185882 d!1610511))

(declare-fun m!6037842 () Bool)

(assert (=> bs!1185882 m!6037842))

(assert (=> b!5003444 d!1610511))

(declare-fun d!1610513 () Bool)

(declare-fun lt!2070694 () Regex!13792)

(assert (=> d!1610513 (validRegex!6089 lt!2070694)))

(declare-fun generalisedUnion!579 (List!57981) Regex!13792)

(declare-fun unfocusZipperList!92 (List!57982) List!57981)

(assert (=> d!1610513 (= lt!2070694 (generalisedUnion!579 (unfocusZipperList!92 lt!2070383)))))

(assert (=> d!1610513 (= (unfocusZipper!319 lt!2070383) lt!2070694)))

(declare-fun bs!1185883 () Bool)

(assert (= bs!1185883 d!1610513))

(declare-fun m!6037844 () Bool)

(assert (=> bs!1185883 m!6037844))

(declare-fun m!6037846 () Bool)

(assert (=> bs!1185883 m!6037846))

(assert (=> bs!1185883 m!6037846))

(declare-fun m!6037848 () Bool)

(assert (=> bs!1185883 m!6037848))

(assert (=> b!5003453 d!1610513))

(declare-fun d!1610515 () Bool)

(declare-fun e!3126901 () Bool)

(assert (=> d!1610515 e!3126901))

(declare-fun res!2135145 () Bool)

(assert (=> d!1610515 (=> (not res!2135145) (not e!3126901))))

(declare-fun lt!2070697 () List!57982)

(declare-fun noDuplicate!1028 (List!57982) Bool)

(assert (=> d!1610515 (= res!2135145 (noDuplicate!1028 lt!2070697))))

(declare-fun choose!36999 ((Set Context!6434)) List!57982)

(assert (=> d!1610515 (= lt!2070697 (choose!36999 z!4183))))

(assert (=> d!1610515 (= (toList!8077 z!4183) lt!2070697)))

(declare-fun b!5003944 () Bool)

(declare-fun content!10247 (List!57982) (Set Context!6434))

(assert (=> b!5003944 (= e!3126901 (= (content!10247 lt!2070697) z!4183))))

(assert (= (and d!1610515 res!2135145) b!5003944))

(declare-fun m!6037850 () Bool)

(assert (=> d!1610515 m!6037850))

(declare-fun m!6037852 () Bool)

(assert (=> d!1610515 m!6037852))

(declare-fun m!6037854 () Bool)

(assert (=> b!5003944 m!6037854))

(assert (=> b!5003453 d!1610515))

(declare-fun d!1610517 () Bool)

(declare-fun lambda!248363 () Int)

(declare-fun forall!13362 (List!57981 Int) Bool)

(assert (=> d!1610517 (= (inv!76012 setElem!28397) (forall!13362 (exprs!3717 setElem!28397) lambda!248363))))

(declare-fun bs!1185900 () Bool)

(assert (= bs!1185900 d!1610517))

(declare-fun m!6038098 () Bool)

(assert (=> bs!1185900 m!6038098))

(assert (=> setNonEmpty!28397 d!1610517))

(declare-fun d!1610589 () Bool)

(declare-fun c!854164 () Bool)

(assert (=> d!1610589 (= c!854164 (is-Node!15311 (c!853987 totalInput!1012)))))

(declare-fun e!3126983 () Bool)

(assert (=> d!1610589 (= (inv!76011 (c!853987 totalInput!1012)) e!3126983)))

(declare-fun b!5004086 () Bool)

(declare-fun inv!76019 (Conc!15311) Bool)

(assert (=> b!5004086 (= e!3126983 (inv!76019 (c!853987 totalInput!1012)))))

(declare-fun b!5004087 () Bool)

(declare-fun e!3126984 () Bool)

(assert (=> b!5004087 (= e!3126983 e!3126984)))

(declare-fun res!2135195 () Bool)

(assert (=> b!5004087 (= res!2135195 (not (is-Leaf!25416 (c!853987 totalInput!1012))))))

(assert (=> b!5004087 (=> res!2135195 e!3126984)))

(declare-fun b!5004088 () Bool)

(declare-fun inv!76020 (Conc!15311) Bool)

(assert (=> b!5004088 (= e!3126984 (inv!76020 (c!853987 totalInput!1012)))))

(assert (= (and d!1610589 c!854164) b!5004086))

(assert (= (and d!1610589 (not c!854164)) b!5004087))

(assert (= (and b!5004087 (not res!2135195)) b!5004088))

(declare-fun m!6038100 () Bool)

(assert (=> b!5004086 m!6038100))

(declare-fun m!6038102 () Bool)

(assert (=> b!5004088 m!6038102))

(assert (=> b!5003443 d!1610589))

(declare-fun b!5004107 () Bool)

(declare-fun e!3127001 () Bool)

(declare-fun e!3126999 () Bool)

(assert (=> b!5004107 (= e!3127001 e!3126999)))

(declare-fun res!2135207 () Bool)

(assert (=> b!5004107 (= res!2135207 (not (nullable!4686 (reg!14121 r!12727))))))

(assert (=> b!5004107 (=> (not res!2135207) (not e!3126999))))

(declare-fun b!5004108 () Bool)

(declare-fun e!3127005 () Bool)

(declare-fun e!3127002 () Bool)

(assert (=> b!5004108 (= e!3127005 e!3127002)))

(declare-fun res!2135208 () Bool)

(assert (=> b!5004108 (=> (not res!2135208) (not e!3127002))))

(declare-fun call!349312 () Bool)

(assert (=> b!5004108 (= res!2135208 call!349312)))

(declare-fun bm!349305 () Bool)

(declare-fun call!349310 () Bool)

(declare-fun c!854169 () Bool)

(assert (=> bm!349305 (= call!349310 (validRegex!6089 (ite c!854169 (regOne!28097 r!12727) (regTwo!28096 r!12727))))))

(declare-fun b!5004109 () Bool)

(assert (=> b!5004109 (= e!3127002 call!349310)))

(declare-fun b!5004110 () Bool)

(declare-fun e!3127004 () Bool)

(assert (=> b!5004110 (= e!3127001 e!3127004)))

(assert (=> b!5004110 (= c!854169 (is-Union!13792 r!12727))))

(declare-fun b!5004111 () Bool)

(declare-fun call!349311 () Bool)

(assert (=> b!5004111 (= e!3126999 call!349311)))

(declare-fun b!5004112 () Bool)

(declare-fun e!3127000 () Bool)

(assert (=> b!5004112 (= e!3127000 e!3127001)))

(declare-fun c!854170 () Bool)

(assert (=> b!5004112 (= c!854170 (is-Star!13792 r!12727))))

(declare-fun bm!349307 () Bool)

(assert (=> bm!349307 (= call!349311 (validRegex!6089 (ite c!854170 (reg!14121 r!12727) (ite c!854169 (regTwo!28097 r!12727) (regOne!28096 r!12727)))))))

(declare-fun b!5004113 () Bool)

(declare-fun e!3127003 () Bool)

(assert (=> b!5004113 (= e!3127003 call!349312)))

(declare-fun b!5004114 () Bool)

(declare-fun res!2135210 () Bool)

(assert (=> b!5004114 (=> res!2135210 e!3127005)))

(assert (=> b!5004114 (= res!2135210 (not (is-Concat!22585 r!12727)))))

(assert (=> b!5004114 (= e!3127004 e!3127005)))

(declare-fun b!5004115 () Bool)

(declare-fun res!2135206 () Bool)

(assert (=> b!5004115 (=> (not res!2135206) (not e!3127003))))

(assert (=> b!5004115 (= res!2135206 call!349310)))

(assert (=> b!5004115 (= e!3127004 e!3127003)))

(declare-fun bm!349306 () Bool)

(assert (=> bm!349306 (= call!349312 call!349311)))

(declare-fun d!1610591 () Bool)

(declare-fun res!2135209 () Bool)

(assert (=> d!1610591 (=> res!2135209 e!3127000)))

(assert (=> d!1610591 (= res!2135209 (is-ElementMatch!13792 r!12727))))

(assert (=> d!1610591 (= (validRegex!6089 r!12727) e!3127000)))

(assert (= (and d!1610591 (not res!2135209)) b!5004112))

(assert (= (and b!5004112 c!854170) b!5004107))

(assert (= (and b!5004112 (not c!854170)) b!5004110))

(assert (= (and b!5004107 res!2135207) b!5004111))

(assert (= (and b!5004110 c!854169) b!5004115))

(assert (= (and b!5004110 (not c!854169)) b!5004114))

(assert (= (and b!5004115 res!2135206) b!5004113))

(assert (= (and b!5004114 (not res!2135210)) b!5004108))

(assert (= (and b!5004108 res!2135208) b!5004109))

(assert (= (or b!5004113 b!5004108) bm!349306))

(assert (= (or b!5004115 b!5004109) bm!349305))

(assert (= (or b!5004111 bm!349306) bm!349307))

(declare-fun m!6038104 () Bool)

(assert (=> b!5004107 m!6038104))

(declare-fun m!6038106 () Bool)

(assert (=> bm!349305 m!6038106))

(declare-fun m!6038108 () Bool)

(assert (=> bm!349307 m!6038108))

(assert (=> start!528772 d!1610591))

(declare-fun d!1610593 () Bool)

(declare-fun isBalanced!4270 (Conc!15311) Bool)

(assert (=> d!1610593 (= (inv!76013 input!5597) (isBalanced!4270 (c!853987 input!5597)))))

(declare-fun bs!1185901 () Bool)

(assert (= bs!1185901 d!1610593))

(declare-fun m!6038110 () Bool)

(assert (=> bs!1185901 m!6038110))

(assert (=> start!528772 d!1610593))

(declare-fun d!1610595 () Bool)

(assert (=> d!1610595 (= (inv!76013 totalInput!1012) (isBalanced!4270 (c!853987 totalInput!1012)))))

(declare-fun bs!1185902 () Bool)

(assert (= bs!1185902 d!1610595))

(declare-fun m!6038112 () Bool)

(assert (=> bs!1185902 m!6038112))

(assert (=> start!528772 d!1610595))

(declare-fun b!5004116 () Bool)

(declare-fun e!3127009 () Int)

(assert (=> b!5004116 (= e!3127009 (size!38457 lt!2070380))))

(declare-fun b!5004117 () Bool)

(declare-fun e!3127008 () List!57980)

(assert (=> b!5004117 (= e!3127008 (Cons!57856 (h!64304 lt!2070380) (take!651 (t!370326 lt!2070380) (- lt!2070376 1))))))

(declare-fun b!5004118 () Bool)

(declare-fun e!3127007 () Bool)

(declare-fun lt!2070851 () List!57980)

(declare-fun e!3127006 () Int)

(assert (=> b!5004118 (= e!3127007 (= (size!38457 lt!2070851) e!3127006))))

(declare-fun c!854171 () Bool)

(assert (=> b!5004118 (= c!854171 (<= lt!2070376 0))))

(declare-fun b!5004119 () Bool)

(assert (=> b!5004119 (= e!3127006 e!3127009)))

(declare-fun c!854173 () Bool)

(assert (=> b!5004119 (= c!854173 (>= lt!2070376 (size!38457 lt!2070380)))))

(declare-fun b!5004120 () Bool)

(assert (=> b!5004120 (= e!3127009 lt!2070376)))

(declare-fun b!5004121 () Bool)

(assert (=> b!5004121 (= e!3127008 Nil!57856)))

(declare-fun b!5004122 () Bool)

(assert (=> b!5004122 (= e!3127006 0)))

(declare-fun d!1610597 () Bool)

(assert (=> d!1610597 e!3127007))

(declare-fun res!2135211 () Bool)

(assert (=> d!1610597 (=> (not res!2135211) (not e!3127007))))

(assert (=> d!1610597 (= res!2135211 (set.subset (content!10246 lt!2070851) (content!10246 lt!2070380)))))

(assert (=> d!1610597 (= lt!2070851 e!3127008)))

(declare-fun c!854172 () Bool)

(assert (=> d!1610597 (= c!854172 (or (is-Nil!57856 lt!2070380) (<= lt!2070376 0)))))

(assert (=> d!1610597 (= (take!651 lt!2070380 lt!2070376) lt!2070851)))

(assert (= (and d!1610597 c!854172) b!5004121))

(assert (= (and d!1610597 (not c!854172)) b!5004117))

(assert (= (and d!1610597 res!2135211) b!5004118))

(assert (= (and b!5004118 c!854171) b!5004122))

(assert (= (and b!5004118 (not c!854171)) b!5004119))

(assert (= (and b!5004119 c!854173) b!5004116))

(assert (= (and b!5004119 (not c!854173)) b!5004120))

(declare-fun m!6038114 () Bool)

(assert (=> d!1610597 m!6038114))

(declare-fun m!6038116 () Bool)

(assert (=> d!1610597 m!6038116))

(declare-fun m!6038118 () Bool)

(assert (=> b!5004117 m!6038118))

(declare-fun m!6038120 () Bool)

(assert (=> b!5004118 m!6038120))

(declare-fun m!6038122 () Bool)

(assert (=> b!5004116 m!6038122))

(assert (=> b!5004119 m!6038122))

(assert (=> b!5003442 d!1610597))

(assert (=> b!5003442 d!1610449))

(declare-fun d!1610599 () Bool)

(assert (=> d!1610599 (= lt!2070395 (_1!34806 lt!2070393))))

(declare-fun lt!2070854 () Unit!149023)

(declare-fun choose!37000 (List!57980 List!57980 List!57980) Unit!149023)

(assert (=> d!1610599 (= lt!2070854 (choose!37000 lt!2070395 (_1!34806 lt!2070393) lt!2070379))))

(assert (=> d!1610599 (isPrefix!5345 lt!2070395 lt!2070379)))

(assert (=> d!1610599 (= (lemmaIsPrefixSameLengthThenSameList!1272 lt!2070395 (_1!34806 lt!2070393) lt!2070379) lt!2070854)))

(declare-fun bs!1185903 () Bool)

(assert (= bs!1185903 d!1610599))

(declare-fun m!6038124 () Bool)

(assert (=> bs!1185903 m!6038124))

(declare-fun m!6038126 () Bool)

(assert (=> bs!1185903 m!6038126))

(assert (=> b!5003451 d!1610599))

(declare-fun b!5004124 () Bool)

(declare-fun res!2135212 () Bool)

(declare-fun e!3127011 () Bool)

(assert (=> b!5004124 (=> (not res!2135212) (not e!3127011))))

(assert (=> b!5004124 (= res!2135212 (= (head!10730 lt!2070374) (head!10730 lt!2070379)))))

(declare-fun b!5004123 () Bool)

(declare-fun e!3127010 () Bool)

(assert (=> b!5004123 (= e!3127010 e!3127011)))

(declare-fun res!2135214 () Bool)

(assert (=> b!5004123 (=> (not res!2135214) (not e!3127011))))

(assert (=> b!5004123 (= res!2135214 (not (is-Nil!57856 lt!2070379)))))

(declare-fun b!5004126 () Bool)

(declare-fun e!3127012 () Bool)

(assert (=> b!5004126 (= e!3127012 (>= (size!38457 lt!2070379) (size!38457 lt!2070374)))))

(declare-fun d!1610601 () Bool)

(assert (=> d!1610601 e!3127012))

(declare-fun res!2135215 () Bool)

(assert (=> d!1610601 (=> res!2135215 e!3127012)))

(declare-fun lt!2070855 () Bool)

(assert (=> d!1610601 (= res!2135215 (not lt!2070855))))

(assert (=> d!1610601 (= lt!2070855 e!3127010)))

(declare-fun res!2135213 () Bool)

(assert (=> d!1610601 (=> res!2135213 e!3127010)))

(assert (=> d!1610601 (= res!2135213 (is-Nil!57856 lt!2070374))))

(assert (=> d!1610601 (= (isPrefix!5345 lt!2070374 lt!2070379) lt!2070855)))

(declare-fun b!5004125 () Bool)

(assert (=> b!5004125 (= e!3127011 (isPrefix!5345 (tail!9863 lt!2070374) (tail!9863 lt!2070379)))))

(assert (= (and d!1610601 (not res!2135213)) b!5004123))

(assert (= (and b!5004123 res!2135214) b!5004124))

(assert (= (and b!5004124 res!2135212) b!5004125))

(assert (= (and d!1610601 (not res!2135215)) b!5004126))

(declare-fun m!6038128 () Bool)

(assert (=> b!5004124 m!6038128))

(assert (=> b!5004124 m!6037718))

(assert (=> b!5004126 m!6037290))

(declare-fun m!6038130 () Bool)

(assert (=> b!5004126 m!6038130))

(declare-fun m!6038132 () Bool)

(assert (=> b!5004125 m!6038132))

(assert (=> b!5004125 m!6037722))

(assert (=> b!5004125 m!6038132))

(assert (=> b!5004125 m!6037722))

(declare-fun m!6038134 () Bool)

(assert (=> b!5004125 m!6038134))

(assert (=> b!5003451 d!1610601))

(declare-fun b!5004127 () Bool)

(declare-fun e!3127016 () Int)

(assert (=> b!5004127 (= e!3127016 (size!38457 lt!2070379))))

(declare-fun b!5004128 () Bool)

(declare-fun e!3127015 () List!57980)

(assert (=> b!5004128 (= e!3127015 (Cons!57856 (h!64304 lt!2070379) (take!651 (t!370326 lt!2070379) (- lt!2070376 1))))))

(declare-fun b!5004129 () Bool)

(declare-fun e!3127014 () Bool)

(declare-fun lt!2070856 () List!57980)

(declare-fun e!3127013 () Int)

(assert (=> b!5004129 (= e!3127014 (= (size!38457 lt!2070856) e!3127013))))

(declare-fun c!854174 () Bool)

(assert (=> b!5004129 (= c!854174 (<= lt!2070376 0))))

(declare-fun b!5004130 () Bool)

(assert (=> b!5004130 (= e!3127013 e!3127016)))

(declare-fun c!854176 () Bool)

(assert (=> b!5004130 (= c!854176 (>= lt!2070376 (size!38457 lt!2070379)))))

(declare-fun b!5004131 () Bool)

(assert (=> b!5004131 (= e!3127016 lt!2070376)))

(declare-fun b!5004132 () Bool)

(assert (=> b!5004132 (= e!3127015 Nil!57856)))

(declare-fun b!5004133 () Bool)

(assert (=> b!5004133 (= e!3127013 0)))

(declare-fun d!1610603 () Bool)

(assert (=> d!1610603 e!3127014))

(declare-fun res!2135216 () Bool)

(assert (=> d!1610603 (=> (not res!2135216) (not e!3127014))))

(assert (=> d!1610603 (= res!2135216 (set.subset (content!10246 lt!2070856) (content!10246 lt!2070379)))))

(assert (=> d!1610603 (= lt!2070856 e!3127015)))

(declare-fun c!854175 () Bool)

(assert (=> d!1610603 (= c!854175 (or (is-Nil!57856 lt!2070379) (<= lt!2070376 0)))))

(assert (=> d!1610603 (= (take!651 lt!2070379 lt!2070376) lt!2070856)))

(assert (= (and d!1610603 c!854175) b!5004132))

(assert (= (and d!1610603 (not c!854175)) b!5004128))

(assert (= (and d!1610603 res!2135216) b!5004129))

(assert (= (and b!5004129 c!854174) b!5004133))

(assert (= (and b!5004129 (not c!854174)) b!5004130))

(assert (= (and b!5004130 c!854176) b!5004127))

(assert (= (and b!5004130 (not c!854176)) b!5004131))

(declare-fun m!6038136 () Bool)

(assert (=> d!1610603 m!6038136))

(declare-fun m!6038138 () Bool)

(assert (=> d!1610603 m!6038138))

(declare-fun m!6038140 () Bool)

(assert (=> b!5004128 m!6038140))

(declare-fun m!6038142 () Bool)

(assert (=> b!5004129 m!6038142))

(assert (=> b!5004127 m!6037290))

(assert (=> b!5004130 m!6037290))

(assert (=> b!5003451 d!1610603))

(declare-fun d!1610605 () Bool)

(assert (=> d!1610605 (isPrefix!5345 (take!651 lt!2070379 lt!2070376) lt!2070379)))

(declare-fun lt!2070857 () Unit!149023)

(assert (=> d!1610605 (= lt!2070857 (choose!36997 lt!2070379 lt!2070376))))

(assert (=> d!1610605 (>= lt!2070376 0)))

(assert (=> d!1610605 (= (lemmaTakeIsPrefix!145 lt!2070379 lt!2070376) lt!2070857)))

(declare-fun bs!1185904 () Bool)

(assert (= bs!1185904 d!1610605))

(assert (=> bs!1185904 m!6037362))

(assert (=> bs!1185904 m!6037362))

(declare-fun m!6038144 () Bool)

(assert (=> bs!1185904 m!6038144))

(declare-fun m!6038146 () Bool)

(assert (=> bs!1185904 m!6038146))

(assert (=> b!5003451 d!1610605))

(declare-fun d!1610607 () Bool)

(declare-fun c!854177 () Bool)

(assert (=> d!1610607 (= c!854177 (is-Node!15311 (c!853987 input!5597)))))

(declare-fun e!3127017 () Bool)

(assert (=> d!1610607 (= (inv!76011 (c!853987 input!5597)) e!3127017)))

(declare-fun b!5004134 () Bool)

(assert (=> b!5004134 (= e!3127017 (inv!76019 (c!853987 input!5597)))))

(declare-fun b!5004135 () Bool)

(declare-fun e!3127018 () Bool)

(assert (=> b!5004135 (= e!3127017 e!3127018)))

(declare-fun res!2135217 () Bool)

(assert (=> b!5004135 (= res!2135217 (not (is-Leaf!25416 (c!853987 input!5597))))))

(assert (=> b!5004135 (=> res!2135217 e!3127018)))

(declare-fun b!5004136 () Bool)

(assert (=> b!5004136 (= e!3127018 (inv!76020 (c!853987 input!5597)))))

(assert (= (and d!1610607 c!854177) b!5004134))

(assert (= (and d!1610607 (not c!854177)) b!5004135))

(assert (= (and b!5004135 (not res!2135217)) b!5004136))

(declare-fun m!6038148 () Bool)

(assert (=> b!5004134 m!6038148))

(declare-fun m!6038150 () Bool)

(assert (=> b!5004136 m!6038150))

(assert (=> b!5003440 d!1610607))

(declare-fun d!1610609 () Bool)

(declare-fun lt!2070858 () Int)

(assert (=> d!1610609 (>= lt!2070858 0)))

(declare-fun e!3127019 () Int)

(assert (=> d!1610609 (= lt!2070858 e!3127019)))

(declare-fun c!854178 () Bool)

(assert (=> d!1610609 (= c!854178 (is-Nil!57856 (_1!34806 lt!2070393)))))

(assert (=> d!1610609 (= (size!38457 (_1!34806 lt!2070393)) lt!2070858)))

(declare-fun b!5004137 () Bool)

(assert (=> b!5004137 (= e!3127019 0)))

(declare-fun b!5004138 () Bool)

(assert (=> b!5004138 (= e!3127019 (+ 1 (size!38457 (t!370326 (_1!34806 lt!2070393)))))))

(assert (= (and d!1610609 c!854178) b!5004137))

(assert (= (and d!1610609 (not c!854178)) b!5004138))

(declare-fun m!6038152 () Bool)

(assert (=> b!5004138 m!6038152))

(assert (=> b!5003441 d!1610609))

(declare-fun d!1610611 () Bool)

(declare-fun c!854179 () Bool)

(assert (=> d!1610611 (= c!854179 (isEmpty!31325 (_1!34806 lt!2070393)))))

(declare-fun e!3127020 () Bool)

(assert (=> d!1610611 (= (matchZipper!560 z!4183 (_1!34806 lt!2070393)) e!3127020)))

(declare-fun b!5004139 () Bool)

(assert (=> b!5004139 (= e!3127020 (nullableZipper!881 z!4183))))

(declare-fun b!5004140 () Bool)

(assert (=> b!5004140 (= e!3127020 (matchZipper!560 (derivationStepZipper!630 z!4183 (head!10730 (_1!34806 lt!2070393))) (tail!9863 (_1!34806 lt!2070393))))))

(assert (= (and d!1610611 c!854179) b!5004139))

(assert (= (and d!1610611 (not c!854179)) b!5004140))

(assert (=> d!1610611 m!6037344))

(assert (=> b!5004139 m!6037574))

(assert (=> b!5004140 m!6037470))

(assert (=> b!5004140 m!6037470))

(declare-fun m!6038154 () Bool)

(assert (=> b!5004140 m!6038154))

(assert (=> b!5004140 m!6037474))

(assert (=> b!5004140 m!6038154))

(assert (=> b!5004140 m!6037474))

(declare-fun m!6038156 () Bool)

(assert (=> b!5004140 m!6038156))

(assert (=> b!5003441 d!1610611))

(declare-fun d!1610613 () Bool)

(assert (=> d!1610613 (= (matchR!6756 r!12727 lt!2070387) (matchZipper!560 z!4183 lt!2070387))))

(declare-fun lt!2070861 () Unit!149023)

(declare-fun choose!37003 ((Set Context!6434) List!57982 Regex!13792 List!57980) Unit!149023)

(assert (=> d!1610613 (= lt!2070861 (choose!37003 z!4183 lt!2070383 r!12727 lt!2070387))))

(assert (=> d!1610613 (validRegex!6089 r!12727)))

(assert (=> d!1610613 (= (theoremZipperRegexEquiv!164 z!4183 lt!2070383 r!12727 lt!2070387) lt!2070861)))

(declare-fun bs!1185905 () Bool)

(assert (= bs!1185905 d!1610613))

(assert (=> bs!1185905 m!6037326))

(assert (=> bs!1185905 m!6037306))

(declare-fun m!6038158 () Bool)

(assert (=> bs!1185905 m!6038158))

(assert (=> bs!1185905 m!6037262))

(assert (=> b!5003441 d!1610613))

(declare-fun d!1610615 () Bool)

(declare-fun lt!2070862 () Int)

(assert (=> d!1610615 (= lt!2070862 (size!38457 (list!18619 (_1!34805 lt!2070397))))))

(assert (=> d!1610615 (= lt!2070862 (size!38460 (c!853987 (_1!34805 lt!2070397))))))

(assert (=> d!1610615 (= (size!38456 (_1!34805 lt!2070397)) lt!2070862)))

(declare-fun bs!1185906 () Bool)

(assert (= bs!1185906 d!1610615))

(assert (=> bs!1185906 m!6037278))

(assert (=> bs!1185906 m!6037278))

(declare-fun m!6038160 () Bool)

(assert (=> bs!1185906 m!6038160))

(declare-fun m!6038162 () Bool)

(assert (=> bs!1185906 m!6038162))

(assert (=> b!5003441 d!1610615))

(declare-fun d!1610617 () Bool)

(assert (=> d!1610617 (= (matchR!6756 r!12727 (_1!34806 lt!2070393)) (matchZipper!560 z!4183 (_1!34806 lt!2070393)))))

(declare-fun lt!2070863 () Unit!149023)

(assert (=> d!1610617 (= lt!2070863 (choose!37003 z!4183 lt!2070383 r!12727 (_1!34806 lt!2070393)))))

(assert (=> d!1610617 (validRegex!6089 r!12727)))

(assert (=> d!1610617 (= (theoremZipperRegexEquiv!164 z!4183 lt!2070383 r!12727 (_1!34806 lt!2070393)) lt!2070863)))

(declare-fun bs!1185907 () Bool)

(assert (= bs!1185907 d!1610617))

(assert (=> bs!1185907 m!6037322))

(assert (=> bs!1185907 m!6037330))

(declare-fun m!6038164 () Bool)

(assert (=> bs!1185907 m!6038164))

(assert (=> bs!1185907 m!6037262))

(assert (=> b!5003441 d!1610617))

(declare-fun b!5004141 () Bool)

(declare-fun res!2135220 () Bool)

(declare-fun e!3127026 () Bool)

(assert (=> b!5004141 (=> (not res!2135220) (not e!3127026))))

(declare-fun call!349313 () Bool)

(assert (=> b!5004141 (= res!2135220 (not call!349313))))

(declare-fun b!5004142 () Bool)

(declare-fun e!3127023 () Bool)

(assert (=> b!5004142 (= e!3127023 (matchR!6756 (derivativeStep!3976 r!12727 (head!10730 lt!2070387)) (tail!9863 lt!2070387)))))

(declare-fun d!1610619 () Bool)

(declare-fun e!3127021 () Bool)

(assert (=> d!1610619 e!3127021))

(declare-fun c!854182 () Bool)

(assert (=> d!1610619 (= c!854182 (is-EmptyExpr!13792 r!12727))))

(declare-fun lt!2070864 () Bool)

(assert (=> d!1610619 (= lt!2070864 e!3127023)))

(declare-fun c!854181 () Bool)

(assert (=> d!1610619 (= c!854181 (isEmpty!31325 lt!2070387))))

(assert (=> d!1610619 (validRegex!6089 r!12727)))

(assert (=> d!1610619 (= (matchR!6756 r!12727 lt!2070387) lt!2070864)))

(declare-fun b!5004143 () Bool)

(assert (=> b!5004143 (= e!3127023 (nullable!4686 r!12727))))

(declare-fun b!5004144 () Bool)

(declare-fun e!3127025 () Bool)

(declare-fun e!3127024 () Bool)

(assert (=> b!5004144 (= e!3127025 e!3127024)))

(declare-fun res!2135221 () Bool)

(assert (=> b!5004144 (=> (not res!2135221) (not e!3127024))))

(assert (=> b!5004144 (= res!2135221 (not lt!2070864))))

(declare-fun b!5004145 () Bool)

(declare-fun e!3127027 () Bool)

(assert (=> b!5004145 (= e!3127027 (not lt!2070864))))

(declare-fun b!5004146 () Bool)

(assert (=> b!5004146 (= e!3127026 (= (head!10730 lt!2070387) (c!853988 r!12727)))))

(declare-fun b!5004147 () Bool)

(declare-fun res!2135222 () Bool)

(assert (=> b!5004147 (=> res!2135222 e!3127025)))

(assert (=> b!5004147 (= res!2135222 e!3127026)))

(declare-fun res!2135219 () Bool)

(assert (=> b!5004147 (=> (not res!2135219) (not e!3127026))))

(assert (=> b!5004147 (= res!2135219 lt!2070864)))

(declare-fun b!5004148 () Bool)

(assert (=> b!5004148 (= e!3127021 e!3127027)))

(declare-fun c!854180 () Bool)

(assert (=> b!5004148 (= c!854180 (is-EmptyLang!13792 r!12727))))

(declare-fun b!5004149 () Bool)

(declare-fun res!2135218 () Bool)

(assert (=> b!5004149 (=> (not res!2135218) (not e!3127026))))

(assert (=> b!5004149 (= res!2135218 (isEmpty!31325 (tail!9863 lt!2070387)))))

(declare-fun bm!349308 () Bool)

(assert (=> bm!349308 (= call!349313 (isEmpty!31325 lt!2070387))))

(declare-fun b!5004150 () Bool)

(declare-fun e!3127022 () Bool)

(assert (=> b!5004150 (= e!3127024 e!3127022)))

(declare-fun res!2135223 () Bool)

(assert (=> b!5004150 (=> res!2135223 e!3127022)))

(assert (=> b!5004150 (= res!2135223 call!349313)))

(declare-fun b!5004151 () Bool)

(declare-fun res!2135224 () Bool)

(assert (=> b!5004151 (=> res!2135224 e!3127025)))

(assert (=> b!5004151 (= res!2135224 (not (is-ElementMatch!13792 r!12727)))))

(assert (=> b!5004151 (= e!3127027 e!3127025)))

(declare-fun b!5004152 () Bool)

(assert (=> b!5004152 (= e!3127022 (not (= (head!10730 lt!2070387) (c!853988 r!12727))))))

(declare-fun b!5004153 () Bool)

(assert (=> b!5004153 (= e!3127021 (= lt!2070864 call!349313))))

(declare-fun b!5004154 () Bool)

(declare-fun res!2135225 () Bool)

(assert (=> b!5004154 (=> res!2135225 e!3127022)))

(assert (=> b!5004154 (= res!2135225 (not (isEmpty!31325 (tail!9863 lt!2070387))))))

(assert (= (and d!1610619 c!854181) b!5004143))

(assert (= (and d!1610619 (not c!854181)) b!5004142))

(assert (= (and d!1610619 c!854182) b!5004153))

(assert (= (and d!1610619 (not c!854182)) b!5004148))

(assert (= (and b!5004148 c!854180) b!5004145))

(assert (= (and b!5004148 (not c!854180)) b!5004151))

(assert (= (and b!5004151 (not res!2135224)) b!5004147))

(assert (= (and b!5004147 res!2135219) b!5004141))

(assert (= (and b!5004141 res!2135220) b!5004149))

(assert (= (and b!5004149 res!2135218) b!5004146))

(assert (= (and b!5004147 (not res!2135222)) b!5004144))

(assert (= (and b!5004144 res!2135221) b!5004150))

(assert (= (and b!5004150 (not res!2135223)) b!5004154))

(assert (= (and b!5004154 (not res!2135225)) b!5004152))

(assert (= (or b!5004153 b!5004141 b!5004150) bm!349308))

(assert (=> b!5004142 m!6037622))

(assert (=> b!5004142 m!6037622))

(declare-fun m!6038166 () Bool)

(assert (=> b!5004142 m!6038166))

(assert (=> b!5004142 m!6037626))

(assert (=> b!5004142 m!6038166))

(assert (=> b!5004142 m!6037626))

(declare-fun m!6038168 () Bool)

(assert (=> b!5004142 m!6038168))

(assert (=> b!5004154 m!6037626))

(assert (=> b!5004154 m!6037626))

(declare-fun m!6038170 () Bool)

(assert (=> b!5004154 m!6038170))

(assert (=> d!1610619 m!6037620))

(assert (=> d!1610619 m!6037262))

(assert (=> b!5004149 m!6037626))

(assert (=> b!5004149 m!6037626))

(assert (=> b!5004149 m!6038170))

(assert (=> bm!349308 m!6037620))

(assert (=> b!5004152 m!6037622))

(assert (=> b!5004146 m!6037622))

(assert (=> b!5004143 m!6037480))

(assert (=> b!5003441 d!1610619))

(declare-fun condSetEmpty!28403 () Bool)

(assert (=> setNonEmpty!28397 (= condSetEmpty!28403 (= setRest!28397 (as set.empty (Set Context!6434))))))

(declare-fun setRes!28403 () Bool)

(assert (=> setNonEmpty!28397 (= tp!1403291 setRes!28403)))

(declare-fun setIsEmpty!28403 () Bool)

(assert (=> setIsEmpty!28403 setRes!28403))

(declare-fun e!3127030 () Bool)

(declare-fun setElem!28403 () Context!6434)

(declare-fun setNonEmpty!28403 () Bool)

(declare-fun tp!1403329 () Bool)

(assert (=> setNonEmpty!28403 (= setRes!28403 (and tp!1403329 (inv!76012 setElem!28403) e!3127030))))

(declare-fun setRest!28403 () (Set Context!6434))

(assert (=> setNonEmpty!28403 (= setRest!28397 (set.union (set.insert setElem!28403 (as set.empty (Set Context!6434))) setRest!28403))))

(declare-fun b!5004159 () Bool)

(declare-fun tp!1403330 () Bool)

(assert (=> b!5004159 (= e!3127030 tp!1403330)))

(assert (= (and setNonEmpty!28397 condSetEmpty!28403) setIsEmpty!28403))

(assert (= (and setNonEmpty!28397 (not condSetEmpty!28403)) setNonEmpty!28403))

(assert (= setNonEmpty!28403 b!5004159))

(declare-fun m!6038172 () Bool)

(assert (=> setNonEmpty!28403 m!6038172))

(declare-fun tp!1403338 () Bool)

(declare-fun tp!1403339 () Bool)

(declare-fun b!5004168 () Bool)

(declare-fun e!3127035 () Bool)

(assert (=> b!5004168 (= e!3127035 (and (inv!76011 (left!42301 (c!853987 totalInput!1012))) tp!1403338 (inv!76011 (right!42631 (c!853987 totalInput!1012))) tp!1403339))))

(declare-fun b!5004170 () Bool)

(declare-fun e!3127036 () Bool)

(declare-fun tp!1403337 () Bool)

(assert (=> b!5004170 (= e!3127036 tp!1403337)))

(declare-fun b!5004169 () Bool)

(declare-fun inv!76021 (IArray!30683) Bool)

(assert (=> b!5004169 (= e!3127035 (and (inv!76021 (xs!18637 (c!853987 totalInput!1012))) e!3127036))))

(assert (=> b!5003443 (= tp!1403296 (and (inv!76011 (c!853987 totalInput!1012)) e!3127035))))

(assert (= (and b!5003443 (is-Node!15311 (c!853987 totalInput!1012))) b!5004168))

(assert (= b!5004169 b!5004170))

(assert (= (and b!5003443 (is-Leaf!25416 (c!853987 totalInput!1012))) b!5004169))

(declare-fun m!6038174 () Bool)

(assert (=> b!5004168 m!6038174))

(declare-fun m!6038176 () Bool)

(assert (=> b!5004168 m!6038176))

(declare-fun m!6038178 () Bool)

(assert (=> b!5004169 m!6038178))

(assert (=> b!5003443 m!6037354))

(declare-fun b!5004175 () Bool)

(declare-fun e!3127039 () Bool)

(declare-fun tp!1403344 () Bool)

(declare-fun tp!1403345 () Bool)

(assert (=> b!5004175 (= e!3127039 (and tp!1403344 tp!1403345))))

(assert (=> b!5003452 (= tp!1403293 e!3127039)))

(assert (= (and b!5003452 (is-Cons!57857 (exprs!3717 setElem!28397))) b!5004175))

(declare-fun b!5004187 () Bool)

(declare-fun e!3127042 () Bool)

(declare-fun tp!1403357 () Bool)

(declare-fun tp!1403358 () Bool)

(assert (=> b!5004187 (= e!3127042 (and tp!1403357 tp!1403358))))

(declare-fun b!5004188 () Bool)

(declare-fun tp!1403359 () Bool)

(assert (=> b!5004188 (= e!3127042 tp!1403359)))

(declare-fun b!5004186 () Bool)

(assert (=> b!5004186 (= e!3127042 tp_is_empty!36581)))

(declare-fun b!5004189 () Bool)

(declare-fun tp!1403360 () Bool)

(declare-fun tp!1403356 () Bool)

(assert (=> b!5004189 (= e!3127042 (and tp!1403360 tp!1403356))))

(assert (=> b!5003450 (= tp!1403292 e!3127042)))

(assert (= (and b!5003450 (is-ElementMatch!13792 (regOne!28097 r!12727))) b!5004186))

(assert (= (and b!5003450 (is-Concat!22585 (regOne!28097 r!12727))) b!5004187))

(assert (= (and b!5003450 (is-Star!13792 (regOne!28097 r!12727))) b!5004188))

(assert (= (and b!5003450 (is-Union!13792 (regOne!28097 r!12727))) b!5004189))

(declare-fun b!5004191 () Bool)

(declare-fun e!3127043 () Bool)

(declare-fun tp!1403362 () Bool)

(declare-fun tp!1403363 () Bool)

(assert (=> b!5004191 (= e!3127043 (and tp!1403362 tp!1403363))))

(declare-fun b!5004192 () Bool)

(declare-fun tp!1403364 () Bool)

(assert (=> b!5004192 (= e!3127043 tp!1403364)))

(declare-fun b!5004190 () Bool)

(assert (=> b!5004190 (= e!3127043 tp_is_empty!36581)))

(declare-fun b!5004193 () Bool)

(declare-fun tp!1403365 () Bool)

(declare-fun tp!1403361 () Bool)

(assert (=> b!5004193 (= e!3127043 (and tp!1403365 tp!1403361))))

(assert (=> b!5003450 (= tp!1403297 e!3127043)))

(assert (= (and b!5003450 (is-ElementMatch!13792 (regTwo!28097 r!12727))) b!5004190))

(assert (= (and b!5003450 (is-Concat!22585 (regTwo!28097 r!12727))) b!5004191))

(assert (= (and b!5003450 (is-Star!13792 (regTwo!28097 r!12727))) b!5004192))

(assert (= (and b!5003450 (is-Union!13792 (regTwo!28097 r!12727))) b!5004193))

(declare-fun b!5004194 () Bool)

(declare-fun tp!1403367 () Bool)

(declare-fun e!3127044 () Bool)

(declare-fun tp!1403368 () Bool)

(assert (=> b!5004194 (= e!3127044 (and (inv!76011 (left!42301 (c!853987 input!5597))) tp!1403367 (inv!76011 (right!42631 (c!853987 input!5597))) tp!1403368))))

(declare-fun b!5004196 () Bool)

(declare-fun e!3127045 () Bool)

(declare-fun tp!1403366 () Bool)

(assert (=> b!5004196 (= e!3127045 tp!1403366)))

(declare-fun b!5004195 () Bool)

(assert (=> b!5004195 (= e!3127044 (and (inv!76021 (xs!18637 (c!853987 input!5597))) e!3127045))))

(assert (=> b!5003440 (= tp!1403289 (and (inv!76011 (c!853987 input!5597)) e!3127044))))

(assert (= (and b!5003440 (is-Node!15311 (c!853987 input!5597))) b!5004194))

(assert (= b!5004195 b!5004196))

(assert (= (and b!5003440 (is-Leaf!25416 (c!853987 input!5597))) b!5004195))

(declare-fun m!6038180 () Bool)

(assert (=> b!5004194 m!6038180))

(declare-fun m!6038182 () Bool)

(assert (=> b!5004194 m!6038182))

(declare-fun m!6038184 () Bool)

(assert (=> b!5004195 m!6038184))

(assert (=> b!5003440 m!6037356))

(declare-fun b!5004198 () Bool)

(declare-fun e!3127046 () Bool)

(declare-fun tp!1403370 () Bool)

(declare-fun tp!1403371 () Bool)

(assert (=> b!5004198 (= e!3127046 (and tp!1403370 tp!1403371))))

(declare-fun b!5004199 () Bool)

(declare-fun tp!1403372 () Bool)

(assert (=> b!5004199 (= e!3127046 tp!1403372)))

(declare-fun b!5004197 () Bool)

(assert (=> b!5004197 (= e!3127046 tp_is_empty!36581)))

(declare-fun b!5004200 () Bool)

(declare-fun tp!1403373 () Bool)

(declare-fun tp!1403369 () Bool)

(assert (=> b!5004200 (= e!3127046 (and tp!1403373 tp!1403369))))

(assert (=> b!5003449 (= tp!1403294 e!3127046)))

(assert (= (and b!5003449 (is-ElementMatch!13792 (regOne!28096 r!12727))) b!5004197))

(assert (= (and b!5003449 (is-Concat!22585 (regOne!28096 r!12727))) b!5004198))

(assert (= (and b!5003449 (is-Star!13792 (regOne!28096 r!12727))) b!5004199))

(assert (= (and b!5003449 (is-Union!13792 (regOne!28096 r!12727))) b!5004200))

(declare-fun b!5004202 () Bool)

(declare-fun e!3127047 () Bool)

(declare-fun tp!1403375 () Bool)

(declare-fun tp!1403376 () Bool)

(assert (=> b!5004202 (= e!3127047 (and tp!1403375 tp!1403376))))

(declare-fun b!5004203 () Bool)

(declare-fun tp!1403377 () Bool)

(assert (=> b!5004203 (= e!3127047 tp!1403377)))

(declare-fun b!5004201 () Bool)

(assert (=> b!5004201 (= e!3127047 tp_is_empty!36581)))

(declare-fun b!5004204 () Bool)

(declare-fun tp!1403378 () Bool)

(declare-fun tp!1403374 () Bool)

(assert (=> b!5004204 (= e!3127047 (and tp!1403378 tp!1403374))))

(assert (=> b!5003449 (= tp!1403295 e!3127047)))

(assert (= (and b!5003449 (is-ElementMatch!13792 (regTwo!28096 r!12727))) b!5004201))

(assert (= (and b!5003449 (is-Concat!22585 (regTwo!28096 r!12727))) b!5004202))

(assert (= (and b!5003449 (is-Star!13792 (regTwo!28096 r!12727))) b!5004203))

(assert (= (and b!5003449 (is-Union!13792 (regTwo!28096 r!12727))) b!5004204))

(declare-fun b!5004206 () Bool)

(declare-fun e!3127048 () Bool)

(declare-fun tp!1403380 () Bool)

(declare-fun tp!1403381 () Bool)

(assert (=> b!5004206 (= e!3127048 (and tp!1403380 tp!1403381))))

(declare-fun b!5004207 () Bool)

(declare-fun tp!1403382 () Bool)

(assert (=> b!5004207 (= e!3127048 tp!1403382)))

(declare-fun b!5004205 () Bool)

(assert (=> b!5004205 (= e!3127048 tp_is_empty!36581)))

(declare-fun b!5004208 () Bool)

(declare-fun tp!1403383 () Bool)

(declare-fun tp!1403379 () Bool)

(assert (=> b!5004208 (= e!3127048 (and tp!1403383 tp!1403379))))

(assert (=> b!5003455 (= tp!1403290 e!3127048)))

(assert (= (and b!5003455 (is-ElementMatch!13792 (reg!14121 r!12727))) b!5004205))

(assert (= (and b!5003455 (is-Concat!22585 (reg!14121 r!12727))) b!5004206))

(assert (= (and b!5003455 (is-Star!13792 (reg!14121 r!12727))) b!5004207))

(assert (= (and b!5003455 (is-Union!13792 (reg!14121 r!12727))) b!5004208))

(push 1)

(assert (not d!1610423))

(assert (not d!1610441))

(assert (not b!5003675))

(assert (not b!5004118))

(assert (not b!5003734))

(assert (not b!5003547))

(assert (not b!5004152))

(assert (not b!5004136))

(assert (not b!5003553))

(assert (not b!5003853))

(assert (not b!5004142))

(assert (not b!5004199))

(assert (not b!5003866))

(assert (not d!1610605))

(assert (not d!1610469))

(assert (not d!1610415))

(assert (not b!5004119))

(assert (not bm!349266))

(assert (not d!1610593))

(assert (not bm!349229))

(assert (not b!5004139))

(assert (not b!5004206))

(assert (not b!5004207))

(assert (not d!1610507))

(assert (not b!5004159))

(assert (not b!5003572))

(assert (not b!5003550))

(assert (not b!5004125))

(assert (not d!1610439))

(assert (not d!1610425))

(assert (not b!5004200))

(assert (not b!5003912))

(assert (not b!5003864))

(assert (not bm!349272))

(assert (not d!1610619))

(assert (not d!1610517))

(assert (not b!5003732))

(assert (not b!5004138))

(assert (not b!5004203))

(assert (not b!5004130))

(assert (not b!5003673))

(assert (not b!5003715))

(assert (not b!5003564))

(assert (not d!1610451))

(assert (not b!5003593))

(assert (not bm!349270))

(assert (not b!5004168))

(assert (not b!5003558))

(assert (not b!5003556))

(assert (not b!5004194))

(assert (not b!5004187))

(assert (not b!5004170))

(assert (not b!5003906))

(assert (not bm!349305))

(assert (not d!1610455))

(assert (not b!5004149))

(assert (not b!5004127))

(assert (not d!1610421))

(assert (not b!5003852))

(assert (not d!1610595))

(assert (not b!5004196))

(assert (not b!5003928))

(assert (not bm!349230))

(assert (not b!5004193))

(assert (not b!5003938))

(assert (not b!5004124))

(assert (not b!5004169))

(assert (not b!5003941))

(assert (not bm!349245))

(assert (not d!1610449))

(assert (not b!5003440))

(assert (not b!5003733))

(assert (not d!1610499))

(assert (not b!5003937))

(assert (not b!5004189))

(assert (not b!5004195))

(assert (not b!5003863))

(assert (not b!5004198))

(assert (not b!5003676))

(assert (not d!1610617))

(assert (not b!5003869))

(assert (not d!1610467))

(assert (not b!5004126))

(assert (not b!5003908))

(assert (not d!1610611))

(assert (not b!5003861))

(assert (not b!5004086))

(assert (not d!1610603))

(assert (not d!1610445))

(assert (not d!1610447))

(assert (not b!5003721))

(assert (not bm!349308))

(assert (not d!1610513))

(assert (not b!5003583))

(assert (not b!5003907))

(assert (not d!1610491))

(assert (not d!1610463))

(assert (not d!1610615))

(assert (not b!5004204))

(assert (not b!5003865))

(assert (not bm!349268))

(assert (not bm!349269))

(assert (not d!1610437))

(assert (not d!1610613))

(assert (not b!5003933))

(assert (not b!5004192))

(assert (not b!5003722))

(assert (not d!1610413))

(assert (not b!5004143))

(assert (not b!5004202))

(assert (not b!5003855))

(assert (not d!1610427))

(assert (not d!1610457))

(assert (not b!5003926))

(assert (not b!5003944))

(assert (not b!5003592))

(assert (not b!5003719))

(assert (not b!5004117))

(assert (not bm!349265))

(assert (not b!5004208))

(assert (not bm!349267))

(assert (not b!5004146))

(assert (not bm!349307))

(assert (not d!1610597))

(assert (not b!5003570))

(assert (not b!5003867))

(assert (not d!1610509))

(assert (not setNonEmpty!28403))

(assert (not b!5004116))

(assert (not b!5003934))

(assert (not b!5004128))

(assert (not b!5004107))

(assert (not d!1610515))

(assert (not d!1610511))

(assert (not b!5004191))

(assert (not b!5004175))

(assert (not b!5003936))

(assert (not b!5003567))

(assert (not b!5004188))

(assert (not b!5003582))

(assert (not b!5003560))

(assert (not b!5003561))

(assert (not b!5004134))

(assert (not b!5003629))

(assert (not b!5003546))

(assert (not d!1610435))

(assert (not b!5004154))

(assert (not d!1610489))

(assert (not b!5003443))

(assert (not b!5004129))

(assert (not b!5004140))

(assert (not d!1610599))

(assert (not b!5003674))

(assert (not b!5003758))

(assert (not b!5003630))

(assert (not b!5003868))

(assert (not b!5004088))

(assert (not bm!349271))

(assert tp_is_empty!36581)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

