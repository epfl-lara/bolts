; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528422 () Bool)

(assert start!528422)

(declare-fun b!5000531 () Bool)

(declare-fun e!3124730 () Bool)

(declare-fun e!3124738 () Bool)

(assert (=> b!5000531 (= e!3124730 e!3124738)))

(declare-fun res!2133719 () Bool)

(assert (=> b!5000531 (=> res!2133719 e!3124738)))

(declare-fun e!3124732 () Bool)

(assert (=> b!5000531 (= res!2133719 e!3124732)))

(declare-fun res!2133720 () Bool)

(assert (=> b!5000531 (=> (not res!2133720) (not e!3124732))))

(declare-fun lt!2068394 () Bool)

(assert (=> b!5000531 (= res!2133720 (not lt!2068394))))

(declare-datatypes ((C!27812 0))(
  ( (C!27813 (val!23272 Int)) )
))
(declare-datatypes ((Regex!13781 0))(
  ( (ElementMatch!13781 (c!853393 C!27812)) (Concat!22574 (regOne!28074 Regex!13781) (regTwo!28074 Regex!13781)) (EmptyExpr!13781) (Star!13781 (reg!14110 Regex!13781)) (EmptyLang!13781) (Union!13781 (regOne!28075 Regex!13781) (regTwo!28075 Regex!13781)) )
))
(declare-fun r!12727 () Regex!13781)

(declare-datatypes ((List!57947 0))(
  ( (Nil!57823) (Cons!57823 (h!64271 C!27812) (t!370293 List!57947)) )
))
(declare-datatypes ((tuple2!62960 0))(
  ( (tuple2!62961 (_1!34783 List!57947) (_2!34783 List!57947)) )
))
(declare-fun lt!2068383 () tuple2!62960)

(declare-fun matchR!6745 (Regex!13781 List!57947) Bool)

(assert (=> b!5000531 (= lt!2068394 (matchR!6745 r!12727 (_1!34783 lt!2068383)))))

(declare-fun b!5000532 () Bool)

(declare-fun e!3124733 () Bool)

(declare-datatypes ((IArray!30661 0))(
  ( (IArray!30662 (innerList!15388 List!57947)) )
))
(declare-datatypes ((Conc!15300 0))(
  ( (Node!15300 (left!42284 Conc!15300) (right!42614 Conc!15300) (csize!30830 Int) (cheight!15511 Int)) (Leaf!25399 (xs!18626 IArray!30661) (csize!30831 Int)) (Empty!15300) )
))
(declare-datatypes ((BalanceConc!30030 0))(
  ( (BalanceConc!30031 (c!853394 Conc!15300)) )
))
(declare-fun totalInput!1012 () BalanceConc!30030)

(declare-fun tp!1402640 () Bool)

(declare-fun inv!75943 (Conc!15300) Bool)

(assert (=> b!5000532 (= e!3124733 (and (inv!75943 (c!853394 totalInput!1012)) tp!1402640))))

(declare-fun setNonEmpty!28346 () Bool)

(declare-fun e!3124737 () Bool)

(declare-datatypes ((List!57948 0))(
  ( (Nil!57824) (Cons!57824 (h!64272 Regex!13781) (t!370294 List!57948)) )
))
(declare-datatypes ((Context!6412 0))(
  ( (Context!6413 (exprs!3706 List!57948)) )
))
(declare-fun setElem!28346 () Context!6412)

(declare-fun setRes!28346 () Bool)

(declare-fun tp!1402646 () Bool)

(declare-fun inv!75944 (Context!6412) Bool)

(assert (=> setNonEmpty!28346 (= setRes!28346 (and tp!1402646 (inv!75944 setElem!28346) e!3124737))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6412))

(declare-fun setRest!28346 () (InoxSet Context!6412))

(assert (=> setNonEmpty!28346 (= z!4183 ((_ map or) (store ((as const (Array Context!6412 Bool)) false) setElem!28346 true) setRest!28346))))

(declare-fun b!5000533 () Bool)

(declare-fun e!3124731 () Bool)

(declare-fun e!3124726 () Bool)

(assert (=> b!5000533 (= e!3124731 e!3124726)))

(declare-fun res!2133715 () Bool)

(assert (=> b!5000533 (=> (not res!2133715) (not e!3124726))))

(declare-fun lt!2068396 () List!57947)

(declare-fun lt!2068389 () List!57947)

(assert (=> b!5000533 (= res!2133715 (= lt!2068396 lt!2068389))))

(declare-fun lt!2068401 () List!57947)

(declare-fun lt!2068397 () List!57947)

(declare-fun ++!12627 (List!57947 List!57947) List!57947)

(assert (=> b!5000533 (= lt!2068396 (++!12627 lt!2068401 lt!2068397))))

(declare-datatypes ((tuple2!62962 0))(
  ( (tuple2!62963 (_1!34784 BalanceConc!30030) (_2!34784 BalanceConc!30030)) )
))
(declare-fun lt!2068392 () tuple2!62962)

(declare-fun list!18602 (BalanceConc!30030) List!57947)

(assert (=> b!5000533 (= lt!2068397 (list!18602 (_2!34784 lt!2068392)))))

(assert (=> b!5000533 (= lt!2068401 (list!18602 (_1!34784 lt!2068392)))))

(declare-fun findLongestMatch!1794 (Regex!13781 List!57947) tuple2!62960)

(assert (=> b!5000533 (= lt!2068383 (findLongestMatch!1794 r!12727 lt!2068389))))

(declare-fun lt!2068400 () Int)

(declare-fun lt!2068395 () Int)

(declare-fun input!5597 () BalanceConc!30030)

(declare-fun size!38428 (BalanceConc!30030) Int)

(assert (=> b!5000533 (= lt!2068400 (- lt!2068395 (size!38428 input!5597)))))

(assert (=> b!5000533 (= lt!2068395 (size!38428 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!83 ((InoxSet Context!6412) BalanceConc!30030 BalanceConc!30030) tuple2!62962)

(assert (=> b!5000533 (= lt!2068392 (findLongestMatchZipperFastV2!83 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28346 () Bool)

(assert (=> setIsEmpty!28346 setRes!28346))

(declare-fun b!5000534 () Bool)

(declare-fun e!3124729 () Bool)

(assert (=> b!5000534 (= e!3124729 (not e!3124730))))

(declare-fun res!2133723 () Bool)

(assert (=> b!5000534 (=> res!2133723 e!3124730)))

(declare-fun e!3124736 () Bool)

(assert (=> b!5000534 (= res!2133723 e!3124736)))

(declare-fun res!2133721 () Bool)

(assert (=> b!5000534 (=> (not res!2133721) (not e!3124736))))

(declare-fun matchZipper!549 ((InoxSet Context!6412) List!57947) Bool)

(assert (=> b!5000534 (= res!2133721 (not (matchZipper!549 z!4183 lt!2068401)))))

(declare-fun e!3124725 () Bool)

(assert (=> b!5000534 e!3124725))

(declare-fun res!2133713 () Bool)

(assert (=> b!5000534 (=> res!2133713 e!3124725)))

(declare-fun lt!2068398 () tuple2!62960)

(declare-fun isEmpty!31296 (List!57947) Bool)

(assert (=> b!5000534 (= res!2133713 (isEmpty!31296 (_1!34783 lt!2068398)))))

(declare-fun findLongestMatchInner!1970 (Regex!13781 List!57947 Int List!57947 List!57947 Int) tuple2!62960)

(declare-fun size!38429 (List!57947) Int)

(assert (=> b!5000534 (= lt!2068398 (findLongestMatchInner!1970 r!12727 Nil!57823 (size!38429 Nil!57823) lt!2068389 lt!2068389 (size!38429 lt!2068389)))))

(declare-datatypes ((Unit!148983 0))(
  ( (Unit!148984) )
))
(declare-fun lt!2068391 () Unit!148983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1923 (Regex!13781 List!57947) Unit!148983)

(assert (=> b!5000534 (= lt!2068391 (longestMatchIsAcceptedByMatchOrIsEmpty!1923 r!12727 lt!2068389))))

(declare-fun e!3124727 () Bool)

(assert (=> b!5000534 e!3124727))

(declare-fun res!2133722 () Bool)

(assert (=> b!5000534 (=> res!2133722 e!3124727)))

(declare-fun lt!2068402 () Int)

(assert (=> b!5000534 (= res!2133722 (= lt!2068402 0))))

(declare-fun findLongestMatchInnerZipperFastV2!121 ((InoxSet Context!6412) Int BalanceConc!30030 Int) Int)

(assert (=> b!5000534 (= lt!2068402 (findLongestMatchInnerZipperFastV2!121 z!4183 lt!2068400 totalInput!1012 lt!2068395))))

(declare-fun lt!2068386 () Unit!148983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!40 ((InoxSet Context!6412) Int BalanceConc!30030) Unit!148983)

(assert (=> b!5000534 (= lt!2068386 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!40 z!4183 lt!2068400 totalInput!1012))))

(declare-fun lt!2068387 () List!57947)

(declare-fun isPrefix!5334 (List!57947 List!57947) Bool)

(declare-fun take!640 (List!57947 Int) List!57947)

(assert (=> b!5000534 (isPrefix!5334 (take!640 lt!2068387 lt!2068400) lt!2068387)))

(declare-fun lt!2068384 () Unit!148983)

(declare-fun lemmaTakeIsPrefix!134 (List!57947 Int) Unit!148983)

(assert (=> b!5000534 (= lt!2068384 (lemmaTakeIsPrefix!134 lt!2068387 lt!2068400))))

(declare-fun lt!2068388 () List!57947)

(assert (=> b!5000534 (isPrefix!5334 (_1!34783 lt!2068383) lt!2068388)))

(declare-fun lt!2068399 () Unit!148983)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3432 (List!57947 List!57947) Unit!148983)

(assert (=> b!5000534 (= lt!2068399 (lemmaConcatTwoListThenFirstIsPrefix!3432 (_1!34783 lt!2068383) (_2!34783 lt!2068383)))))

(assert (=> b!5000534 (isPrefix!5334 lt!2068401 lt!2068396)))

(declare-fun lt!2068382 () Unit!148983)

(assert (=> b!5000534 (= lt!2068382 (lemmaConcatTwoListThenFirstIsPrefix!3432 lt!2068401 lt!2068397))))

(declare-fun b!5000536 () Bool)

(declare-fun e!3124739 () Bool)

(assert (=> b!5000536 (= e!3124739 e!3124731)))

(declare-fun res!2133717 () Bool)

(assert (=> b!5000536 (=> (not res!2133717) (not e!3124731))))

(declare-fun isSuffix!1347 (List!57947 List!57947) Bool)

(assert (=> b!5000536 (= res!2133717 (isSuffix!1347 lt!2068389 lt!2068387))))

(assert (=> b!5000536 (= lt!2068387 (list!18602 totalInput!1012))))

(assert (=> b!5000536 (= lt!2068389 (list!18602 input!5597))))

(declare-fun b!5000537 () Bool)

(declare-fun e!3124735 () Bool)

(declare-fun tp!1402638 () Bool)

(assert (=> b!5000537 (= e!3124735 tp!1402638)))

(declare-fun b!5000538 () Bool)

(assert (=> b!5000538 (= e!3124732 (not (isEmpty!31296 (_1!34783 lt!2068383))))))

(declare-fun b!5000539 () Bool)

(declare-fun tp!1402641 () Bool)

(assert (=> b!5000539 (= e!3124737 tp!1402641)))

(declare-fun b!5000540 () Bool)

(declare-fun isEmpty!31297 (BalanceConc!30030) Bool)

(assert (=> b!5000540 (= e!3124736 (not (isEmpty!31297 (_1!34784 lt!2068392))))))

(declare-fun b!5000541 () Bool)

(declare-fun tp_is_empty!36559 () Bool)

(assert (=> b!5000541 (= e!3124735 tp_is_empty!36559)))

(declare-fun b!5000542 () Bool)

(declare-fun e!3124734 () Bool)

(assert (=> b!5000542 (= e!3124734 e!3124739)))

(declare-fun res!2133718 () Bool)

(assert (=> b!5000542 (=> (not res!2133718) (not e!3124739))))

(declare-fun lt!2068390 () Regex!13781)

(assert (=> b!5000542 (= res!2133718 (= lt!2068390 r!12727))))

(declare-datatypes ((List!57949 0))(
  ( (Nil!57825) (Cons!57825 (h!64273 Context!6412) (t!370295 List!57949)) )
))
(declare-fun lt!2068385 () List!57949)

(declare-fun unfocusZipper!308 (List!57949) Regex!13781)

(assert (=> b!5000542 (= lt!2068390 (unfocusZipper!308 lt!2068385))))

(declare-fun toList!8066 ((InoxSet Context!6412)) List!57949)

(assert (=> b!5000542 (= lt!2068385 (toList!8066 z!4183))))

(declare-fun b!5000543 () Bool)

(assert (=> b!5000543 (= e!3124738 (= r!12727 lt!2068390))))

(assert (=> b!5000543 (= lt!2068394 (matchZipper!549 z!4183 (_1!34783 lt!2068383)))))

(declare-fun lt!2068393 () Unit!148983)

(declare-fun theoremZipperRegexEquiv!153 ((InoxSet Context!6412) List!57949 Regex!13781 List!57947) Unit!148983)

(assert (=> b!5000543 (= lt!2068393 (theoremZipperRegexEquiv!153 z!4183 lt!2068385 r!12727 (_1!34783 lt!2068383)))))

(declare-fun b!5000544 () Bool)

(declare-fun e!3124728 () Bool)

(declare-fun tp!1402639 () Bool)

(assert (=> b!5000544 (= e!3124728 (and (inv!75943 (c!853394 input!5597)) tp!1402639))))

(declare-fun b!5000545 () Bool)

(declare-fun drop!2444 (List!57947 Int) List!57947)

(assert (=> b!5000545 (= e!3124727 (matchZipper!549 z!4183 (take!640 (drop!2444 lt!2068387 lt!2068400) lt!2068402)))))

(declare-fun b!5000546 () Bool)

(declare-fun tp!1402643 () Bool)

(declare-fun tp!1402645 () Bool)

(assert (=> b!5000546 (= e!3124735 (and tp!1402643 tp!1402645))))

(declare-fun b!5000547 () Bool)

(assert (=> b!5000547 (= e!3124725 (matchR!6745 r!12727 (_1!34783 lt!2068398)))))

(declare-fun b!5000548 () Bool)

(assert (=> b!5000548 (= e!3124726 e!3124729)))

(declare-fun res!2133714 () Bool)

(assert (=> b!5000548 (=> (not res!2133714) (not e!3124729))))

(assert (=> b!5000548 (= res!2133714 (= lt!2068388 lt!2068389))))

(assert (=> b!5000548 (= lt!2068388 (++!12627 (_1!34783 lt!2068383) (_2!34783 lt!2068383)))))

(declare-fun b!5000535 () Bool)

(declare-fun tp!1402644 () Bool)

(declare-fun tp!1402642 () Bool)

(assert (=> b!5000535 (= e!3124735 (and tp!1402644 tp!1402642))))

(declare-fun res!2133716 () Bool)

(assert (=> start!528422 (=> (not res!2133716) (not e!3124734))))

(declare-fun validRegex!6078 (Regex!13781) Bool)

(assert (=> start!528422 (= res!2133716 (validRegex!6078 r!12727))))

(assert (=> start!528422 e!3124734))

(assert (=> start!528422 e!3124735))

(declare-fun inv!75945 (BalanceConc!30030) Bool)

(assert (=> start!528422 (and (inv!75945 input!5597) e!3124728)))

(declare-fun condSetEmpty!28346 () Bool)

(assert (=> start!528422 (= condSetEmpty!28346 (= z!4183 ((as const (Array Context!6412 Bool)) false)))))

(assert (=> start!528422 setRes!28346))

(assert (=> start!528422 (and (inv!75945 totalInput!1012) e!3124733)))

(assert (= (and start!528422 res!2133716) b!5000542))

(assert (= (and b!5000542 res!2133718) b!5000536))

(assert (= (and b!5000536 res!2133717) b!5000533))

(assert (= (and b!5000533 res!2133715) b!5000548))

(assert (= (and b!5000548 res!2133714) b!5000534))

(assert (= (and b!5000534 (not res!2133722)) b!5000545))

(assert (= (and b!5000534 (not res!2133713)) b!5000547))

(assert (= (and b!5000534 res!2133721) b!5000540))

(assert (= (and b!5000534 (not res!2133723)) b!5000531))

(assert (= (and b!5000531 res!2133720) b!5000538))

(assert (= (and b!5000531 (not res!2133719)) b!5000543))

(get-info :version)

(assert (= (and start!528422 ((_ is ElementMatch!13781) r!12727)) b!5000541))

(assert (= (and start!528422 ((_ is Concat!22574) r!12727)) b!5000546))

(assert (= (and start!528422 ((_ is Star!13781) r!12727)) b!5000537))

(assert (= (and start!528422 ((_ is Union!13781) r!12727)) b!5000535))

(assert (= start!528422 b!5000544))

(assert (= (and start!528422 condSetEmpty!28346) setIsEmpty!28346))

(assert (= (and start!528422 (not condSetEmpty!28346)) setNonEmpty!28346))

(assert (= setNonEmpty!28346 b!5000539))

(assert (= start!528422 b!5000532))

(declare-fun m!6033984 () Bool)

(assert (=> b!5000532 m!6033984))

(declare-fun m!6033986 () Bool)

(assert (=> b!5000531 m!6033986))

(declare-fun m!6033988 () Bool)

(assert (=> b!5000548 m!6033988))

(declare-fun m!6033990 () Bool)

(assert (=> start!528422 m!6033990))

(declare-fun m!6033992 () Bool)

(assert (=> start!528422 m!6033992))

(declare-fun m!6033994 () Bool)

(assert (=> start!528422 m!6033994))

(declare-fun m!6033996 () Bool)

(assert (=> b!5000534 m!6033996))

(declare-fun m!6033998 () Bool)

(assert (=> b!5000534 m!6033998))

(declare-fun m!6034000 () Bool)

(assert (=> b!5000534 m!6034000))

(declare-fun m!6034002 () Bool)

(assert (=> b!5000534 m!6034002))

(declare-fun m!6034004 () Bool)

(assert (=> b!5000534 m!6034004))

(declare-fun m!6034006 () Bool)

(assert (=> b!5000534 m!6034006))

(declare-fun m!6034008 () Bool)

(assert (=> b!5000534 m!6034008))

(declare-fun m!6034010 () Bool)

(assert (=> b!5000534 m!6034010))

(declare-fun m!6034012 () Bool)

(assert (=> b!5000534 m!6034012))

(declare-fun m!6034014 () Bool)

(assert (=> b!5000534 m!6034014))

(assert (=> b!5000534 m!6033998))

(declare-fun m!6034016 () Bool)

(assert (=> b!5000534 m!6034016))

(declare-fun m!6034018 () Bool)

(assert (=> b!5000534 m!6034018))

(declare-fun m!6034020 () Bool)

(assert (=> b!5000534 m!6034020))

(assert (=> b!5000534 m!6034004))

(declare-fun m!6034022 () Bool)

(assert (=> b!5000534 m!6034022))

(declare-fun m!6034024 () Bool)

(assert (=> b!5000534 m!6034024))

(assert (=> b!5000534 m!6034000))

(declare-fun m!6034026 () Bool)

(assert (=> b!5000538 m!6034026))

(declare-fun m!6034028 () Bool)

(assert (=> b!5000544 m!6034028))

(declare-fun m!6034030 () Bool)

(assert (=> b!5000545 m!6034030))

(assert (=> b!5000545 m!6034030))

(declare-fun m!6034032 () Bool)

(assert (=> b!5000545 m!6034032))

(assert (=> b!5000545 m!6034032))

(declare-fun m!6034034 () Bool)

(assert (=> b!5000545 m!6034034))

(declare-fun m!6034036 () Bool)

(assert (=> setNonEmpty!28346 m!6034036))

(declare-fun m!6034038 () Bool)

(assert (=> b!5000543 m!6034038))

(declare-fun m!6034040 () Bool)

(assert (=> b!5000543 m!6034040))

(declare-fun m!6034042 () Bool)

(assert (=> b!5000533 m!6034042))

(declare-fun m!6034044 () Bool)

(assert (=> b!5000533 m!6034044))

(declare-fun m!6034046 () Bool)

(assert (=> b!5000533 m!6034046))

(declare-fun m!6034048 () Bool)

(assert (=> b!5000533 m!6034048))

(declare-fun m!6034050 () Bool)

(assert (=> b!5000533 m!6034050))

(declare-fun m!6034052 () Bool)

(assert (=> b!5000533 m!6034052))

(declare-fun m!6034054 () Bool)

(assert (=> b!5000533 m!6034054))

(declare-fun m!6034056 () Bool)

(assert (=> b!5000540 m!6034056))

(declare-fun m!6034058 () Bool)

(assert (=> b!5000536 m!6034058))

(declare-fun m!6034060 () Bool)

(assert (=> b!5000536 m!6034060))

(declare-fun m!6034062 () Bool)

(assert (=> b!5000536 m!6034062))

(declare-fun m!6034064 () Bool)

(assert (=> b!5000547 m!6034064))

(declare-fun m!6034066 () Bool)

(assert (=> b!5000542 m!6034066))

(declare-fun m!6034068 () Bool)

(assert (=> b!5000542 m!6034068))

(check-sat (not start!528422) (not b!5000536) (not b!5000547) (not b!5000537) (not b!5000543) (not b!5000534) (not b!5000540) (not b!5000545) (not b!5000546) (not setNonEmpty!28346) (not b!5000539) tp_is_empty!36559 (not b!5000532) (not b!5000533) (not b!5000538) (not b!5000542) (not b!5000531) (not b!5000548) (not b!5000544) (not b!5000535))
(check-sat)
