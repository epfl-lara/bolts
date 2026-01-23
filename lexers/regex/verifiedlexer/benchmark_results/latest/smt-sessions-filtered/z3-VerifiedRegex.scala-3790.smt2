; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!211914 () Bool)

(assert start!211914)

(declare-fun b!2185298 () Bool)

(declare-fun e!1396623 () Bool)

(declare-fun e!1396616 () Bool)

(assert (=> b!2185298 (= e!1396623 e!1396616)))

(declare-fun res!939072 () Bool)

(assert (=> b!2185298 (=> (not res!939072) (not e!1396616))))

(declare-datatypes ((C!12240 0))(
  ( (C!12241 (val!7106 Int)) )
))
(declare-datatypes ((List!25354 0))(
  ( (Nil!25270) (Cons!25270 (h!30671 C!12240) (t!197944 List!25354)) )
))
(declare-fun lt!815573 () List!25354)

(declare-fun lt!815559 () List!25354)

(assert (=> b!2185298 (= res!939072 (= lt!815573 lt!815559))))

(declare-fun lt!815551 () List!25354)

(declare-fun lt!815563 () List!25354)

(declare-fun ++!6408 (List!25354 List!25354) List!25354)

(assert (=> b!2185298 (= lt!815573 (++!6408 lt!815551 lt!815563))))

(declare-datatypes ((IArray!16371 0))(
  ( (IArray!16372 (innerList!8243 List!25354)) )
))
(declare-datatypes ((Conc!8183 0))(
  ( (Node!8183 (left!19397 Conc!8183) (right!19727 Conc!8183) (csize!16596 Int) (cheight!8394 Int)) (Leaf!11974 (xs!11125 IArray!16371) (csize!16597 Int)) (Empty!8183) )
))
(declare-datatypes ((BalanceConc!16128 0))(
  ( (BalanceConc!16129 (c!347358 Conc!8183)) )
))
(declare-datatypes ((tuple2!25070 0))(
  ( (tuple2!25071 (_1!14905 BalanceConc!16128) (_2!14905 BalanceConc!16128)) )
))
(declare-fun lt!815570 () tuple2!25070)

(declare-fun list!9702 (BalanceConc!16128) List!25354)

(assert (=> b!2185298 (= lt!815563 (list!9702 (_2!14905 lt!815570)))))

(assert (=> b!2185298 (= lt!815551 (list!9702 (_1!14905 lt!815570)))))

(declare-datatypes ((tuple2!25072 0))(
  ( (tuple2!25073 (_1!14906 List!25354) (_2!14906 List!25354)) )
))
(declare-fun lt!815564 () tuple2!25072)

(declare-datatypes ((Regex!6047 0))(
  ( (ElementMatch!6047 (c!347359 C!12240)) (Concat!10349 (regOne!12606 Regex!6047) (regTwo!12606 Regex!6047)) (EmptyExpr!6047) (Star!6047 (reg!6376 Regex!6047)) (EmptyLang!6047) (Union!6047 (regOne!12607 Regex!6047) (regTwo!12607 Regex!6047)) )
))
(declare-fun r!12534 () Regex!6047)

(declare-fun findLongestMatch!601 (Regex!6047 List!25354) tuple2!25072)

(assert (=> b!2185298 (= lt!815564 (findLongestMatch!601 r!12534 lt!815559))))

(declare-fun lt!815554 () Int)

(declare-fun lt!815556 () Int)

(declare-fun input!5540 () BalanceConc!16128)

(declare-fun size!19744 (BalanceConc!16128) Int)

(assert (=> b!2185298 (= lt!815554 (- lt!815556 (size!19744 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16128)

(assert (=> b!2185298 (= lt!815556 (size!19744 totalInput!977))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25355 0))(
  ( (Nil!25271) (Cons!25271 (h!30672 Regex!6047) (t!197945 List!25355)) )
))
(declare-datatypes ((Context!3234 0))(
  ( (Context!3235 (exprs!2117 List!25355)) )
))
(declare-fun z!4055 () (InoxSet Context!3234))

(declare-fun findLongestMatchZipperSequenceV3!96 ((InoxSet Context!3234) BalanceConc!16128 BalanceConc!16128) tuple2!25070)

(assert (=> b!2185298 (= lt!815570 (findLongestMatchZipperSequenceV3!96 z!4055 input!5540 totalInput!977))))

(declare-fun b!2185299 () Bool)

(declare-fun e!1396613 () Bool)

(declare-fun lt!815558 () tuple2!25072)

(declare-fun matchR!2796 (Regex!6047 List!25354) Bool)

(assert (=> b!2185299 (= e!1396613 (matchR!2796 r!12534 (_1!14906 lt!815558)))))

(declare-fun b!2185300 () Bool)

(declare-fun e!1396612 () Bool)

(declare-fun tp!681622 () Bool)

(declare-fun inv!33594 (Conc!8183) Bool)

(assert (=> b!2185300 (= e!1396612 (and (inv!33594 (c!347358 totalInput!977)) tp!681622))))

(declare-fun b!2185301 () Bool)

(declare-fun res!939075 () Bool)

(declare-fun e!1396624 () Bool)

(assert (=> b!2185301 (=> res!939075 e!1396624)))

(declare-fun isPrefix!2163 (List!25354 List!25354) Bool)

(assert (=> b!2185301 (= res!939075 (not (isPrefix!2163 (_1!14906 lt!815564) lt!815559)))))

(declare-fun b!2185302 () Bool)

(declare-fun e!1396609 () Bool)

(declare-fun tp!681629 () Bool)

(declare-fun tp!681628 () Bool)

(assert (=> b!2185302 (= e!1396609 (and tp!681629 tp!681628))))

(declare-fun b!2185303 () Bool)

(declare-fun res!939070 () Bool)

(assert (=> b!2185303 (=> res!939070 e!1396624)))

(assert (=> b!2185303 (= res!939070 (not (isPrefix!2163 lt!815551 lt!815559)))))

(declare-fun b!2185304 () Bool)

(declare-fun tp!681624 () Bool)

(declare-fun tp!681626 () Bool)

(assert (=> b!2185304 (= e!1396609 (and tp!681624 tp!681626))))

(declare-fun b!2185305 () Bool)

(declare-fun e!1396615 () Bool)

(declare-fun isEmpty!14523 (BalanceConc!16128) Bool)

(assert (=> b!2185305 (= e!1396615 (not (isEmpty!14523 (_1!14905 lt!815570))))))

(declare-fun b!2185306 () Bool)

(declare-fun e!1396610 () Bool)

(declare-fun e!1396614 () Bool)

(assert (=> b!2185306 (= e!1396610 (not e!1396614))))

(declare-fun res!939077 () Bool)

(assert (=> b!2185306 (=> res!939077 e!1396614)))

(assert (=> b!2185306 (= res!939077 e!1396615)))

(declare-fun res!939080 () Bool)

(assert (=> b!2185306 (=> (not res!939080) (not e!1396615))))

(declare-fun lt!815566 () Bool)

(assert (=> b!2185306 (= res!939080 (not lt!815566))))

(declare-fun matchZipper!163 ((InoxSet Context!3234) List!25354) Bool)

(assert (=> b!2185306 (= lt!815566 (matchZipper!163 z!4055 lt!815551))))

(assert (=> b!2185306 e!1396613))

(declare-fun res!939081 () Bool)

(assert (=> b!2185306 (=> res!939081 e!1396613)))

(declare-fun isEmpty!14524 (List!25354) Bool)

(assert (=> b!2185306 (= res!939081 (isEmpty!14524 (_1!14906 lt!815558)))))

(declare-fun findLongestMatchInner!672 (Regex!6047 List!25354 Int List!25354 List!25354 Int) tuple2!25072)

(declare-fun size!19745 (List!25354) Int)

(assert (=> b!2185306 (= lt!815558 (findLongestMatchInner!672 r!12534 Nil!25270 (size!19745 Nil!25270) lt!815559 lt!815559 (size!19745 lt!815559)))))

(declare-datatypes ((Unit!38391 0))(
  ( (Unit!38392) )
))
(declare-fun lt!815561 () Unit!38391)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!645 (Regex!6047 List!25354) Unit!38391)

(assert (=> b!2185306 (= lt!815561 (longestMatchIsAcceptedByMatchOrIsEmpty!645 r!12534 lt!815559))))

(declare-fun e!1396620 () Bool)

(assert (=> b!2185306 e!1396620))

(declare-fun res!939076 () Bool)

(assert (=> b!2185306 (=> res!939076 e!1396620)))

(declare-fun lt!815569 () Int)

(assert (=> b!2185306 (= res!939076 (<= lt!815569 0))))

(declare-fun lt!815560 () Int)

(declare-fun furthestNullablePosition!229 ((InoxSet Context!3234) Int BalanceConc!16128 Int Int) Int)

(assert (=> b!2185306 (= lt!815569 (+ 1 (- (furthestNullablePosition!229 z!4055 lt!815554 totalInput!977 lt!815556 lt!815560) lt!815554)))))

(declare-fun lt!815550 () Unit!38391)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!70 ((InoxSet Context!3234) Int BalanceConc!16128 Int) Unit!38391)

(assert (=> b!2185306 (= lt!815550 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!70 z!4055 lt!815554 totalInput!977 lt!815560))))

(declare-fun e!1396618 () Int)

(assert (=> b!2185306 (= lt!815560 e!1396618)))

(declare-fun c!347357 () Bool)

(declare-fun nullableZipper!327 ((InoxSet Context!3234)) Bool)

(assert (=> b!2185306 (= c!347357 (nullableZipper!327 z!4055))))

(declare-fun lt!815568 () List!25354)

(declare-fun take!255 (List!25354 Int) List!25354)

(assert (=> b!2185306 (isPrefix!2163 (take!255 lt!815568 lt!815554) lt!815568)))

(declare-fun lt!815565 () Unit!38391)

(declare-fun lemmaTakeIsPrefix!78 (List!25354 Int) Unit!38391)

(assert (=> b!2185306 (= lt!815565 (lemmaTakeIsPrefix!78 lt!815568 lt!815554))))

(declare-fun lt!815574 () List!25354)

(assert (=> b!2185306 (isPrefix!2163 (_1!14906 lt!815564) lt!815574)))

(declare-fun lt!815555 () Unit!38391)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1446 (List!25354 List!25354) Unit!38391)

(assert (=> b!2185306 (= lt!815555 (lemmaConcatTwoListThenFirstIsPrefix!1446 (_1!14906 lt!815564) (_2!14906 lt!815564)))))

(assert (=> b!2185306 (isPrefix!2163 lt!815551 lt!815573)))

(declare-fun lt!815562 () Unit!38391)

(assert (=> b!2185306 (= lt!815562 (lemmaConcatTwoListThenFirstIsPrefix!1446 lt!815551 lt!815563))))

(declare-fun b!2185307 () Bool)

(declare-fun e!1396619 () Bool)

(declare-fun e!1396617 () Bool)

(assert (=> b!2185307 (= e!1396619 e!1396617)))

(declare-fun res!939073 () Bool)

(assert (=> b!2185307 (=> (not res!939073) (not e!1396617))))

(declare-datatypes ((List!25356 0))(
  ( (Nil!25272) (Cons!25272 (h!30673 Context!3234) (t!197946 List!25356)) )
))
(declare-fun lt!815552 () List!25356)

(declare-fun unfocusZipper!154 (List!25356) Regex!6047)

(assert (=> b!2185307 (= res!939073 (= (unfocusZipper!154 lt!815552) r!12534))))

(declare-fun toList!1230 ((InoxSet Context!3234)) List!25356)

(assert (=> b!2185307 (= lt!815552 (toList!1230 z!4055))))

(declare-fun b!2185309 () Bool)

(declare-fun tp_is_empty!9701 () Bool)

(assert (=> b!2185309 (= e!1396609 tp_is_empty!9701)))

(declare-fun b!2185310 () Bool)

(assert (=> b!2185310 (= e!1396618 (- 1))))

(declare-fun b!2185311 () Bool)

(declare-fun drop!1265 (List!25354 Int) List!25354)

(assert (=> b!2185311 (= e!1396620 (matchZipper!163 z!4055 (take!255 (drop!1265 lt!815568 lt!815554) lt!815569)))))

(declare-fun tp!681630 () Bool)

(declare-fun setElem!18346 () Context!3234)

(declare-fun e!1396611 () Bool)

(declare-fun setRes!18346 () Bool)

(declare-fun setNonEmpty!18346 () Bool)

(declare-fun inv!33595 (Context!3234) Bool)

(assert (=> setNonEmpty!18346 (= setRes!18346 (and tp!681630 (inv!33595 setElem!18346) e!1396611))))

(declare-fun setRest!18346 () (InoxSet Context!3234))

(assert (=> setNonEmpty!18346 (= z!4055 ((_ map or) (store ((as const (Array Context!3234 Bool)) false) setElem!18346 true) setRest!18346))))

(declare-fun b!2185312 () Bool)

(assert (=> b!2185312 (= e!1396624 (= (_1!14906 lt!815558) (_1!14906 lt!815564)))))

(declare-fun b!2185313 () Bool)

(assert (=> b!2185313 (= e!1396618 (- lt!815554 1))))

(declare-fun b!2185314 () Bool)

(declare-fun res!939078 () Bool)

(assert (=> b!2185314 (=> res!939078 e!1396624)))

(declare-fun lt!815571 () Int)

(assert (=> b!2185314 (= res!939078 (< (size!19745 lt!815551) lt!815571))))

(declare-fun b!2185315 () Bool)

(declare-fun tp!681623 () Bool)

(assert (=> b!2185315 (= e!1396609 tp!681623)))

(declare-fun b!2185316 () Bool)

(declare-fun e!1396622 () Bool)

(assert (=> b!2185316 (= e!1396614 e!1396622)))

(declare-fun res!939069 () Bool)

(assert (=> b!2185316 (=> res!939069 e!1396622)))

(declare-fun e!1396625 () Bool)

(assert (=> b!2185316 (= res!939069 e!1396625)))

(declare-fun res!939079 () Bool)

(assert (=> b!2185316 (=> (not res!939079) (not e!1396625))))

(declare-fun lt!815557 () Bool)

(assert (=> b!2185316 (= res!939079 (not lt!815557))))

(assert (=> b!2185316 (= lt!815557 (matchR!2796 r!12534 (_1!14906 lt!815564)))))

(declare-fun b!2185317 () Bool)

(declare-fun tp!681627 () Bool)

(assert (=> b!2185317 (= e!1396611 tp!681627)))

(declare-fun b!2185318 () Bool)

(declare-fun e!1396621 () Bool)

(declare-fun tp!681625 () Bool)

(assert (=> b!2185318 (= e!1396621 (and (inv!33594 (c!347358 input!5540)) tp!681625))))

(declare-fun b!2185319 () Bool)

(assert (=> b!2185319 (= e!1396625 (not (isEmpty!14524 (_1!14906 lt!815564))))))

(declare-fun b!2185320 () Bool)

(assert (=> b!2185320 (= e!1396616 e!1396610)))

(declare-fun res!939068 () Bool)

(assert (=> b!2185320 (=> (not res!939068) (not e!1396610))))

(assert (=> b!2185320 (= res!939068 (= lt!815574 lt!815559))))

(assert (=> b!2185320 (= lt!815574 (++!6408 (_1!14906 lt!815564) (_2!14906 lt!815564)))))

(declare-fun res!939067 () Bool)

(assert (=> start!211914 (=> (not res!939067) (not e!1396619))))

(declare-fun validRegex!2323 (Regex!6047) Bool)

(assert (=> start!211914 (= res!939067 (validRegex!2323 r!12534))))

(assert (=> start!211914 e!1396619))

(assert (=> start!211914 e!1396609))

(declare-fun inv!33596 (BalanceConc!16128) Bool)

(assert (=> start!211914 (and (inv!33596 totalInput!977) e!1396612)))

(assert (=> start!211914 (and (inv!33596 input!5540) e!1396621)))

(declare-fun condSetEmpty!18346 () Bool)

(assert (=> start!211914 (= condSetEmpty!18346 (= z!4055 ((as const (Array Context!3234 Bool)) false)))))

(assert (=> start!211914 setRes!18346))

(declare-fun b!2185308 () Bool)

(assert (=> b!2185308 (= e!1396622 e!1396624)))

(declare-fun res!939071 () Bool)

(assert (=> b!2185308 (=> res!939071 e!1396624)))

(declare-fun lt!815572 () Int)

(assert (=> b!2185308 (= res!939071 (or (> lt!815571 lt!815572) (<= lt!815572 lt!815571)))))

(assert (=> b!2185308 (= lt!815572 (size!19744 (_1!14905 lt!815570)))))

(assert (=> b!2185308 (= lt!815571 (size!19745 (_1!14906 lt!815564)))))

(assert (=> b!2185308 (= (matchR!2796 r!12534 lt!815551) lt!815566)))

(declare-fun lt!815567 () Unit!38391)

(declare-fun theoremZipperRegexEquiv!73 ((InoxSet Context!3234) List!25356 Regex!6047 List!25354) Unit!38391)

(assert (=> b!2185308 (= lt!815567 (theoremZipperRegexEquiv!73 z!4055 lt!815552 r!12534 lt!815551))))

(assert (=> b!2185308 (= lt!815557 (matchZipper!163 z!4055 (_1!14906 lt!815564)))))

(declare-fun lt!815553 () Unit!38391)

(assert (=> b!2185308 (= lt!815553 (theoremZipperRegexEquiv!73 z!4055 lt!815552 r!12534 (_1!14906 lt!815564)))))

(declare-fun setIsEmpty!18346 () Bool)

(assert (=> setIsEmpty!18346 setRes!18346))

(declare-fun b!2185321 () Bool)

(assert (=> b!2185321 (= e!1396617 e!1396623)))

(declare-fun res!939074 () Bool)

(assert (=> b!2185321 (=> (not res!939074) (not e!1396623))))

(declare-fun isSuffix!714 (List!25354 List!25354) Bool)

(assert (=> b!2185321 (= res!939074 (isSuffix!714 lt!815559 lt!815568))))

(assert (=> b!2185321 (= lt!815568 (list!9702 totalInput!977))))

(assert (=> b!2185321 (= lt!815559 (list!9702 input!5540))))

(assert (= (and start!211914 res!939067) b!2185307))

(assert (= (and b!2185307 res!939073) b!2185321))

(assert (= (and b!2185321 res!939074) b!2185298))

(assert (= (and b!2185298 res!939072) b!2185320))

(assert (= (and b!2185320 res!939068) b!2185306))

(assert (= (and b!2185306 c!347357) b!2185313))

(assert (= (and b!2185306 (not c!347357)) b!2185310))

(assert (= (and b!2185306 (not res!939076)) b!2185311))

(assert (= (and b!2185306 (not res!939081)) b!2185299))

(assert (= (and b!2185306 res!939080) b!2185305))

(assert (= (and b!2185306 (not res!939077)) b!2185316))

(assert (= (and b!2185316 res!939079) b!2185319))

(assert (= (and b!2185316 (not res!939069)) b!2185308))

(assert (= (and b!2185308 (not res!939071)) b!2185301))

(assert (= (and b!2185301 (not res!939075)) b!2185303))

(assert (= (and b!2185303 (not res!939070)) b!2185314))

(assert (= (and b!2185314 (not res!939078)) b!2185312))

(get-info :version)

(assert (= (and start!211914 ((_ is ElementMatch!6047) r!12534)) b!2185309))

(assert (= (and start!211914 ((_ is Concat!10349) r!12534)) b!2185304))

(assert (= (and start!211914 ((_ is Star!6047) r!12534)) b!2185315))

(assert (= (and start!211914 ((_ is Union!6047) r!12534)) b!2185302))

(assert (= start!211914 b!2185300))

(assert (= start!211914 b!2185318))

(assert (= (and start!211914 condSetEmpty!18346) setIsEmpty!18346))

(assert (= (and start!211914 (not condSetEmpty!18346)) setNonEmpty!18346))

(assert (= setNonEmpty!18346 b!2185317))

(declare-fun m!2627849 () Bool)

(assert (=> start!211914 m!2627849))

(declare-fun m!2627851 () Bool)

(assert (=> start!211914 m!2627851))

(declare-fun m!2627853 () Bool)

(assert (=> start!211914 m!2627853))

(declare-fun m!2627855 () Bool)

(assert (=> b!2185299 m!2627855))

(declare-fun m!2627857 () Bool)

(assert (=> setNonEmpty!18346 m!2627857))

(declare-fun m!2627859 () Bool)

(assert (=> b!2185298 m!2627859))

(declare-fun m!2627861 () Bool)

(assert (=> b!2185298 m!2627861))

(declare-fun m!2627863 () Bool)

(assert (=> b!2185298 m!2627863))

(declare-fun m!2627865 () Bool)

(assert (=> b!2185298 m!2627865))

(declare-fun m!2627867 () Bool)

(assert (=> b!2185298 m!2627867))

(declare-fun m!2627869 () Bool)

(assert (=> b!2185298 m!2627869))

(declare-fun m!2627871 () Bool)

(assert (=> b!2185298 m!2627871))

(declare-fun m!2627873 () Bool)

(assert (=> b!2185307 m!2627873))

(declare-fun m!2627875 () Bool)

(assert (=> b!2185307 m!2627875))

(declare-fun m!2627877 () Bool)

(assert (=> b!2185316 m!2627877))

(declare-fun m!2627879 () Bool)

(assert (=> b!2185301 m!2627879))

(declare-fun m!2627881 () Bool)

(assert (=> b!2185314 m!2627881))

(declare-fun m!2627883 () Bool)

(assert (=> b!2185300 m!2627883))

(declare-fun m!2627885 () Bool)

(assert (=> b!2185320 m!2627885))

(declare-fun m!2627887 () Bool)

(assert (=> b!2185308 m!2627887))

(declare-fun m!2627889 () Bool)

(assert (=> b!2185308 m!2627889))

(declare-fun m!2627891 () Bool)

(assert (=> b!2185308 m!2627891))

(declare-fun m!2627893 () Bool)

(assert (=> b!2185308 m!2627893))

(declare-fun m!2627895 () Bool)

(assert (=> b!2185308 m!2627895))

(declare-fun m!2627897 () Bool)

(assert (=> b!2185308 m!2627897))

(declare-fun m!2627899 () Bool)

(assert (=> b!2185303 m!2627899))

(declare-fun m!2627901 () Bool)

(assert (=> b!2185311 m!2627901))

(assert (=> b!2185311 m!2627901))

(declare-fun m!2627903 () Bool)

(assert (=> b!2185311 m!2627903))

(assert (=> b!2185311 m!2627903))

(declare-fun m!2627905 () Bool)

(assert (=> b!2185311 m!2627905))

(declare-fun m!2627907 () Bool)

(assert (=> b!2185319 m!2627907))

(declare-fun m!2627909 () Bool)

(assert (=> b!2185318 m!2627909))

(declare-fun m!2627911 () Bool)

(assert (=> b!2185306 m!2627911))

(declare-fun m!2627913 () Bool)

(assert (=> b!2185306 m!2627913))

(declare-fun m!2627915 () Bool)

(assert (=> b!2185306 m!2627915))

(declare-fun m!2627917 () Bool)

(assert (=> b!2185306 m!2627917))

(declare-fun m!2627919 () Bool)

(assert (=> b!2185306 m!2627919))

(declare-fun m!2627921 () Bool)

(assert (=> b!2185306 m!2627921))

(declare-fun m!2627923 () Bool)

(assert (=> b!2185306 m!2627923))

(declare-fun m!2627925 () Bool)

(assert (=> b!2185306 m!2627925))

(declare-fun m!2627927 () Bool)

(assert (=> b!2185306 m!2627927))

(declare-fun m!2627929 () Bool)

(assert (=> b!2185306 m!2627929))

(declare-fun m!2627931 () Bool)

(assert (=> b!2185306 m!2627931))

(assert (=> b!2185306 m!2627921))

(assert (=> b!2185306 m!2627911))

(declare-fun m!2627933 () Bool)

(assert (=> b!2185306 m!2627933))

(declare-fun m!2627935 () Bool)

(assert (=> b!2185306 m!2627935))

(declare-fun m!2627937 () Bool)

(assert (=> b!2185306 m!2627937))

(declare-fun m!2627939 () Bool)

(assert (=> b!2185306 m!2627939))

(assert (=> b!2185306 m!2627917))

(declare-fun m!2627941 () Bool)

(assert (=> b!2185306 m!2627941))

(declare-fun m!2627943 () Bool)

(assert (=> b!2185305 m!2627943))

(declare-fun m!2627945 () Bool)

(assert (=> b!2185321 m!2627945))

(declare-fun m!2627947 () Bool)

(assert (=> b!2185321 m!2627947))

(declare-fun m!2627949 () Bool)

(assert (=> b!2185321 m!2627949))

(check-sat (not b!2185316) (not b!2185303) (not start!211914) (not b!2185308) (not b!2185317) (not b!2185300) (not b!2185307) (not b!2185321) (not setNonEmpty!18346) (not b!2185301) (not b!2185298) (not b!2185318) (not b!2185314) (not b!2185304) (not b!2185299) (not b!2185320) (not b!2185302) (not b!2185306) (not b!2185305) (not b!2185315) tp_is_empty!9701 (not b!2185311) (not b!2185319))
(check-sat)
(get-model)

(declare-fun d!654881 () Bool)

(declare-fun lt!815577 () Int)

(assert (=> d!654881 (>= lt!815577 0)))

(declare-fun e!1396628 () Int)

(assert (=> d!654881 (= lt!815577 e!1396628)))

(declare-fun c!347362 () Bool)

(assert (=> d!654881 (= c!347362 ((_ is Nil!25270) Nil!25270))))

(assert (=> d!654881 (= (size!19745 Nil!25270) lt!815577)))

(declare-fun b!2185326 () Bool)

(assert (=> b!2185326 (= e!1396628 0)))

(declare-fun b!2185327 () Bool)

(assert (=> b!2185327 (= e!1396628 (+ 1 (size!19745 (t!197944 Nil!25270))))))

(assert (= (and d!654881 c!347362) b!2185326))

(assert (= (and d!654881 (not c!347362)) b!2185327))

(declare-fun m!2627951 () Bool)

(assert (=> b!2185327 m!2627951))

(assert (=> b!2185306 d!654881))

(declare-fun b!2185343 () Bool)

(declare-fun e!1396640 () Bool)

(declare-fun lt!815580 () List!25354)

(declare-fun e!1396637 () Int)

(assert (=> b!2185343 (= e!1396640 (= (size!19745 lt!815580) e!1396637))))

(declare-fun c!347371 () Bool)

(assert (=> b!2185343 (= c!347371 (<= lt!815554 0))))

(declare-fun b!2185344 () Bool)

(assert (=> b!2185344 (= e!1396637 0)))

(declare-fun b!2185345 () Bool)

(declare-fun e!1396639 () List!25354)

(assert (=> b!2185345 (= e!1396639 Nil!25270)))

(declare-fun b!2185346 () Bool)

(declare-fun e!1396638 () Int)

(assert (=> b!2185346 (= e!1396638 lt!815554)))

(declare-fun d!654883 () Bool)

(assert (=> d!654883 e!1396640))

(declare-fun res!939084 () Bool)

(assert (=> d!654883 (=> (not res!939084) (not e!1396640))))

(declare-fun content!3447 (List!25354) (InoxSet C!12240))

(assert (=> d!654883 (= res!939084 (= ((_ map implies) (content!3447 lt!815580) (content!3447 lt!815568)) ((as const (InoxSet C!12240)) true)))))

(assert (=> d!654883 (= lt!815580 e!1396639)))

(declare-fun c!347370 () Bool)

(assert (=> d!654883 (= c!347370 (or ((_ is Nil!25270) lt!815568) (<= lt!815554 0)))))

(assert (=> d!654883 (= (take!255 lt!815568 lt!815554) lt!815580)))

(declare-fun b!2185342 () Bool)

(assert (=> b!2185342 (= e!1396639 (Cons!25270 (h!30671 lt!815568) (take!255 (t!197944 lt!815568) (- lt!815554 1))))))

(declare-fun b!2185347 () Bool)

(assert (=> b!2185347 (= e!1396637 e!1396638)))

(declare-fun c!347369 () Bool)

(assert (=> b!2185347 (= c!347369 (>= lt!815554 (size!19745 lt!815568)))))

(declare-fun b!2185348 () Bool)

(assert (=> b!2185348 (= e!1396638 (size!19745 lt!815568))))

(assert (= (and d!654883 c!347370) b!2185345))

(assert (= (and d!654883 (not c!347370)) b!2185342))

(assert (= (and d!654883 res!939084) b!2185343))

(assert (= (and b!2185343 c!347371) b!2185344))

(assert (= (and b!2185343 (not c!347371)) b!2185347))

(assert (= (and b!2185347 c!347369) b!2185348))

(assert (= (and b!2185347 (not c!347369)) b!2185346))

(declare-fun m!2627953 () Bool)

(assert (=> d!654883 m!2627953))

(declare-fun m!2627955 () Bool)

(assert (=> d!654883 m!2627955))

(declare-fun m!2627957 () Bool)

(assert (=> b!2185347 m!2627957))

(declare-fun m!2627959 () Bool)

(assert (=> b!2185343 m!2627959))

(assert (=> b!2185348 m!2627957))

(declare-fun m!2627961 () Bool)

(assert (=> b!2185342 m!2627961))

(assert (=> b!2185306 d!654883))

(declare-fun b!2185359 () Bool)

(declare-fun e!1396647 () Int)

(assert (=> b!2185359 (= e!1396647 lt!815554)))

(declare-fun b!2185360 () Bool)

(declare-fun e!1396648 () Bool)

(declare-fun lostCauseZipper!173 ((InoxSet Context!3234)) Bool)

(assert (=> b!2185360 (= e!1396648 (lostCauseZipper!173 z!4055))))

(declare-fun lt!815586 () (InoxSet Context!3234))

(declare-fun e!1396649 () Int)

(declare-fun b!2185361 () Bool)

(assert (=> b!2185361 (= e!1396649 (furthestNullablePosition!229 lt!815586 (+ lt!815554 1) totalInput!977 lt!815556 e!1396647))))

(declare-fun derivationStepZipper!140 ((InoxSet Context!3234) C!12240) (InoxSet Context!3234))

(declare-fun apply!6092 (BalanceConc!16128 Int) C!12240)

(assert (=> b!2185361 (= lt!815586 (derivationStepZipper!140 z!4055 (apply!6092 totalInput!977 lt!815554)))))

(declare-fun c!347376 () Bool)

(assert (=> b!2185361 (= c!347376 (nullableZipper!327 lt!815586))))

(declare-fun b!2185362 () Bool)

(assert (=> b!2185362 (= e!1396647 lt!815560)))

(declare-fun b!2185363 () Bool)

(assert (=> b!2185363 (= e!1396649 lt!815560)))

(declare-fun lt!815585 () Int)

(declare-fun d!654887 () Bool)

(assert (=> d!654887 (and (>= lt!815585 (- 1)) (< lt!815585 lt!815556) (>= lt!815585 lt!815560) (or (= lt!815585 lt!815560) (>= lt!815585 lt!815554)))))

(assert (=> d!654887 (= lt!815585 e!1396649)))

(declare-fun c!347377 () Bool)

(assert (=> d!654887 (= c!347377 e!1396648)))

(declare-fun res!939087 () Bool)

(assert (=> d!654887 (=> res!939087 e!1396648)))

(assert (=> d!654887 (= res!939087 (= lt!815554 lt!815556))))

(assert (=> d!654887 (and (>= lt!815554 0) (<= lt!815554 lt!815556))))

(assert (=> d!654887 (= (furthestNullablePosition!229 z!4055 lt!815554 totalInput!977 lt!815556 lt!815560) lt!815585)))

(assert (= (and d!654887 (not res!939087)) b!2185360))

(assert (= (and d!654887 c!347377) b!2185363))

(assert (= (and d!654887 (not c!347377)) b!2185361))

(assert (= (and b!2185361 c!347376) b!2185359))

(assert (= (and b!2185361 (not c!347376)) b!2185362))

(declare-fun m!2627963 () Bool)

(assert (=> b!2185360 m!2627963))

(declare-fun m!2627965 () Bool)

(assert (=> b!2185361 m!2627965))

(declare-fun m!2627967 () Bool)

(assert (=> b!2185361 m!2627967))

(assert (=> b!2185361 m!2627967))

(declare-fun m!2627969 () Bool)

(assert (=> b!2185361 m!2627969))

(declare-fun m!2627971 () Bool)

(assert (=> b!2185361 m!2627971))

(assert (=> b!2185306 d!654887))

(declare-fun d!654889 () Bool)

(assert (=> d!654889 (isPrefix!2163 lt!815551 (++!6408 lt!815551 lt!815563))))

(declare-fun lt!815589 () Unit!38391)

(declare-fun choose!12925 (List!25354 List!25354) Unit!38391)

(assert (=> d!654889 (= lt!815589 (choose!12925 lt!815551 lt!815563))))

(assert (=> d!654889 (= (lemmaConcatTwoListThenFirstIsPrefix!1446 lt!815551 lt!815563) lt!815589)))

(declare-fun bs!448085 () Bool)

(assert (= bs!448085 d!654889))

(assert (=> bs!448085 m!2627867))

(assert (=> bs!448085 m!2627867))

(declare-fun m!2627973 () Bool)

(assert (=> bs!448085 m!2627973))

(declare-fun m!2627975 () Bool)

(assert (=> bs!448085 m!2627975))

(assert (=> b!2185306 d!654889))

(declare-fun d!654891 () Bool)

(declare-fun e!1396658 () Bool)

(assert (=> d!654891 e!1396658))

(declare-fun res!939097 () Bool)

(assert (=> d!654891 (=> res!939097 e!1396658)))

(declare-fun lt!815592 () Bool)

(assert (=> d!654891 (= res!939097 (not lt!815592))))

(declare-fun e!1396656 () Bool)

(assert (=> d!654891 (= lt!815592 e!1396656)))

(declare-fun res!939099 () Bool)

(assert (=> d!654891 (=> res!939099 e!1396656)))

(assert (=> d!654891 (= res!939099 ((_ is Nil!25270) lt!815551))))

(assert (=> d!654891 (= (isPrefix!2163 lt!815551 lt!815573) lt!815592)))

(declare-fun b!2185372 () Bool)

(declare-fun e!1396657 () Bool)

(assert (=> b!2185372 (= e!1396656 e!1396657)))

(declare-fun res!939098 () Bool)

(assert (=> b!2185372 (=> (not res!939098) (not e!1396657))))

(assert (=> b!2185372 (= res!939098 (not ((_ is Nil!25270) lt!815573)))))

(declare-fun b!2185374 () Bool)

(declare-fun tail!3140 (List!25354) List!25354)

(assert (=> b!2185374 (= e!1396657 (isPrefix!2163 (tail!3140 lt!815551) (tail!3140 lt!815573)))))

(declare-fun b!2185373 () Bool)

(declare-fun res!939096 () Bool)

(assert (=> b!2185373 (=> (not res!939096) (not e!1396657))))

(declare-fun head!4668 (List!25354) C!12240)

(assert (=> b!2185373 (= res!939096 (= (head!4668 lt!815551) (head!4668 lt!815573)))))

(declare-fun b!2185375 () Bool)

(assert (=> b!2185375 (= e!1396658 (>= (size!19745 lt!815573) (size!19745 lt!815551)))))

(assert (= (and d!654891 (not res!939099)) b!2185372))

(assert (= (and b!2185372 res!939098) b!2185373))

(assert (= (and b!2185373 res!939096) b!2185374))

(assert (= (and d!654891 (not res!939097)) b!2185375))

(declare-fun m!2627977 () Bool)

(assert (=> b!2185374 m!2627977))

(declare-fun m!2627979 () Bool)

(assert (=> b!2185374 m!2627979))

(assert (=> b!2185374 m!2627977))

(assert (=> b!2185374 m!2627979))

(declare-fun m!2627981 () Bool)

(assert (=> b!2185374 m!2627981))

(declare-fun m!2627983 () Bool)

(assert (=> b!2185373 m!2627983))

(declare-fun m!2627985 () Bool)

(assert (=> b!2185373 m!2627985))

(declare-fun m!2627987 () Bool)

(assert (=> b!2185375 m!2627987))

(assert (=> b!2185375 m!2627881))

(assert (=> b!2185306 d!654891))

(declare-fun d!654893 () Bool)

(assert (=> d!654893 (isPrefix!2163 (_1!14906 lt!815564) (++!6408 (_1!14906 lt!815564) (_2!14906 lt!815564)))))

(declare-fun lt!815593 () Unit!38391)

(assert (=> d!654893 (= lt!815593 (choose!12925 (_1!14906 lt!815564) (_2!14906 lt!815564)))))

(assert (=> d!654893 (= (lemmaConcatTwoListThenFirstIsPrefix!1446 (_1!14906 lt!815564) (_2!14906 lt!815564)) lt!815593)))

(declare-fun bs!448086 () Bool)

(assert (= bs!448086 d!654893))

(assert (=> bs!448086 m!2627885))

(assert (=> bs!448086 m!2627885))

(declare-fun m!2627989 () Bool)

(assert (=> bs!448086 m!2627989))

(declare-fun m!2627991 () Bool)

(assert (=> bs!448086 m!2627991))

(assert (=> b!2185306 d!654893))

(declare-fun d!654895 () Bool)

(declare-fun lt!815594 () Int)

(assert (=> d!654895 (>= lt!815594 0)))

(declare-fun e!1396659 () Int)

(assert (=> d!654895 (= lt!815594 e!1396659)))

(declare-fun c!347378 () Bool)

(assert (=> d!654895 (= c!347378 ((_ is Nil!25270) lt!815559))))

(assert (=> d!654895 (= (size!19745 lt!815559) lt!815594)))

(declare-fun b!2185376 () Bool)

(assert (=> b!2185376 (= e!1396659 0)))

(declare-fun b!2185377 () Bool)

(assert (=> b!2185377 (= e!1396659 (+ 1 (size!19745 (t!197944 lt!815559))))))

(assert (= (and d!654895 c!347378) b!2185376))

(assert (= (and d!654895 (not c!347378)) b!2185377))

(declare-fun m!2627993 () Bool)

(assert (=> b!2185377 m!2627993))

(assert (=> b!2185306 d!654895))

(declare-fun d!654897 () Bool)

(assert (=> d!654897 (isPrefix!2163 (take!255 lt!815568 lt!815554) lt!815568)))

(declare-fun lt!815597 () Unit!38391)

(declare-fun choose!12926 (List!25354 Int) Unit!38391)

(assert (=> d!654897 (= lt!815597 (choose!12926 lt!815568 lt!815554))))

(assert (=> d!654897 (>= lt!815554 0)))

(assert (=> d!654897 (= (lemmaTakeIsPrefix!78 lt!815568 lt!815554) lt!815597)))

(declare-fun bs!448087 () Bool)

(assert (= bs!448087 d!654897))

(assert (=> bs!448087 m!2627917))

(assert (=> bs!448087 m!2627917))

(assert (=> bs!448087 m!2627919))

(declare-fun m!2627995 () Bool)

(assert (=> bs!448087 m!2627995))

(assert (=> b!2185306 d!654897))

(declare-fun d!654899 () Bool)

(declare-fun lambda!82085 () Int)

(declare-fun exists!778 ((InoxSet Context!3234) Int) Bool)

(assert (=> d!654899 (= (nullableZipper!327 z!4055) (exists!778 z!4055 lambda!82085))))

(declare-fun bs!448094 () Bool)

(assert (= bs!448094 d!654899))

(declare-fun m!2628085 () Bool)

(assert (=> bs!448094 m!2628085))

(assert (=> b!2185306 d!654899))

(declare-fun d!654927 () Bool)

(declare-fun e!1396719 () Bool)

(assert (=> d!654927 e!1396719))

(declare-fun res!939125 () Bool)

(assert (=> d!654927 (=> res!939125 e!1396719)))

(declare-fun lt!815712 () Bool)

(assert (=> d!654927 (= res!939125 (not lt!815712))))

(declare-fun e!1396717 () Bool)

(assert (=> d!654927 (= lt!815712 e!1396717)))

(declare-fun res!939127 () Bool)

(assert (=> d!654927 (=> res!939127 e!1396717)))

(assert (=> d!654927 (= res!939127 ((_ is Nil!25270) (take!255 lt!815568 lt!815554)))))

(assert (=> d!654927 (= (isPrefix!2163 (take!255 lt!815568 lt!815554) lt!815568) lt!815712)))

(declare-fun b!2185480 () Bool)

(declare-fun e!1396718 () Bool)

(assert (=> b!2185480 (= e!1396717 e!1396718)))

(declare-fun res!939126 () Bool)

(assert (=> b!2185480 (=> (not res!939126) (not e!1396718))))

(assert (=> b!2185480 (= res!939126 (not ((_ is Nil!25270) lt!815568)))))

(declare-fun b!2185482 () Bool)

(assert (=> b!2185482 (= e!1396718 (isPrefix!2163 (tail!3140 (take!255 lt!815568 lt!815554)) (tail!3140 lt!815568)))))

(declare-fun b!2185481 () Bool)

(declare-fun res!939124 () Bool)

(assert (=> b!2185481 (=> (not res!939124) (not e!1396718))))

(assert (=> b!2185481 (= res!939124 (= (head!4668 (take!255 lt!815568 lt!815554)) (head!4668 lt!815568)))))

(declare-fun b!2185483 () Bool)

(assert (=> b!2185483 (= e!1396719 (>= (size!19745 lt!815568) (size!19745 (take!255 lt!815568 lt!815554))))))

(assert (= (and d!654927 (not res!939127)) b!2185480))

(assert (= (and b!2185480 res!939126) b!2185481))

(assert (= (and b!2185481 res!939124) b!2185482))

(assert (= (and d!654927 (not res!939125)) b!2185483))

(assert (=> b!2185482 m!2627917))

(declare-fun m!2628087 () Bool)

(assert (=> b!2185482 m!2628087))

(declare-fun m!2628089 () Bool)

(assert (=> b!2185482 m!2628089))

(assert (=> b!2185482 m!2628087))

(assert (=> b!2185482 m!2628089))

(declare-fun m!2628091 () Bool)

(assert (=> b!2185482 m!2628091))

(assert (=> b!2185481 m!2627917))

(declare-fun m!2628093 () Bool)

(assert (=> b!2185481 m!2628093))

(declare-fun m!2628095 () Bool)

(assert (=> b!2185481 m!2628095))

(assert (=> b!2185483 m!2627957))

(assert (=> b!2185483 m!2627917))

(declare-fun m!2628097 () Bool)

(assert (=> b!2185483 m!2628097))

(assert (=> b!2185306 d!654927))

(declare-fun d!654929 () Bool)

(assert (=> d!654929 (= (isEmpty!14524 (_1!14906 lt!815558)) ((_ is Nil!25270) (_1!14906 lt!815558)))))

(assert (=> b!2185306 d!654929))

(declare-fun d!654931 () Bool)

(declare-fun e!1396739 () Bool)

(assert (=> d!654931 e!1396739))

(declare-fun res!939142 () Bool)

(assert (=> d!654931 (=> res!939142 e!1396739)))

(declare-fun lt!815749 () Int)

(assert (=> d!654931 (= res!939142 (<= lt!815749 0))))

(assert (=> d!654931 (= lt!815749 (+ (- (furthestNullablePosition!229 z!4055 lt!815554 totalInput!977 (size!19744 totalInput!977) lt!815560) lt!815554) 1))))

(declare-fun lt!815750 () Unit!38391)

(declare-fun choose!12928 ((InoxSet Context!3234) Int BalanceConc!16128 Int) Unit!38391)

(assert (=> d!654931 (= lt!815750 (choose!12928 z!4055 lt!815554 totalInput!977 lt!815560))))

(declare-fun e!1396740 () Bool)

(assert (=> d!654931 e!1396740))

(declare-fun res!939143 () Bool)

(assert (=> d!654931 (=> (not res!939143) (not e!1396740))))

(assert (=> d!654931 (= res!939143 (>= lt!815554 0))))

(assert (=> d!654931 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!70 z!4055 lt!815554 totalInput!977 lt!815560) lt!815750)))

(declare-fun b!2185510 () Bool)

(assert (=> b!2185510 (= e!1396740 (<= lt!815554 (size!19744 totalInput!977)))))

(declare-fun b!2185511 () Bool)

(assert (=> b!2185511 (= e!1396739 (matchZipper!163 z!4055 (take!255 (drop!1265 (list!9702 totalInput!977) lt!815554) lt!815749)))))

(assert (= (and d!654931 res!939143) b!2185510))

(assert (= (and d!654931 (not res!939142)) b!2185511))

(assert (=> d!654931 m!2627861))

(assert (=> d!654931 m!2627861))

(declare-fun m!2628169 () Bool)

(assert (=> d!654931 m!2628169))

(declare-fun m!2628171 () Bool)

(assert (=> d!654931 m!2628171))

(assert (=> b!2185510 m!2627861))

(assert (=> b!2185511 m!2627947))

(assert (=> b!2185511 m!2627947))

(declare-fun m!2628173 () Bool)

(assert (=> b!2185511 m!2628173))

(assert (=> b!2185511 m!2628173))

(declare-fun m!2628175 () Bool)

(assert (=> b!2185511 m!2628175))

(assert (=> b!2185511 m!2628175))

(declare-fun m!2628177 () Bool)

(assert (=> b!2185511 m!2628177))

(assert (=> b!2185306 d!654931))

(declare-fun b!2185784 () Bool)

(declare-fun e!1396897 () Unit!38391)

(declare-fun Unit!38396 () Unit!38391)

(assert (=> b!2185784 (= e!1396897 Unit!38396)))

(declare-fun bm!131498 () Bool)

(declare-fun call!131506 () List!25354)

(assert (=> bm!131498 (= call!131506 (tail!3140 lt!815559))))

(declare-fun d!654939 () Bool)

(declare-fun e!1396902 () Bool)

(assert (=> d!654939 e!1396902))

(declare-fun res!939240 () Bool)

(assert (=> d!654939 (=> (not res!939240) (not e!1396902))))

(declare-fun lt!815864 () tuple2!25072)

(assert (=> d!654939 (= res!939240 (= (++!6408 (_1!14906 lt!815864) (_2!14906 lt!815864)) lt!815559))))

(declare-fun e!1396899 () tuple2!25072)

(assert (=> d!654939 (= lt!815864 e!1396899)))

(declare-fun c!347494 () Bool)

(declare-fun lostCause!683 (Regex!6047) Bool)

(assert (=> d!654939 (= c!347494 (lostCause!683 r!12534))))

(declare-fun lt!815866 () Unit!38391)

(declare-fun Unit!38397 () Unit!38391)

(assert (=> d!654939 (= lt!815866 Unit!38397)))

(declare-fun getSuffix!1048 (List!25354 List!25354) List!25354)

(assert (=> d!654939 (= (getSuffix!1048 lt!815559 Nil!25270) lt!815559)))

(declare-fun lt!815855 () Unit!38391)

(declare-fun lt!815853 () Unit!38391)

(assert (=> d!654939 (= lt!815855 lt!815853)))

(declare-fun lt!815878 () List!25354)

(assert (=> d!654939 (= lt!815559 lt!815878)))

(declare-fun lemmaSamePrefixThenSameSuffix!970 (List!25354 List!25354 List!25354 List!25354 List!25354) Unit!38391)

(assert (=> d!654939 (= lt!815853 (lemmaSamePrefixThenSameSuffix!970 Nil!25270 lt!815559 Nil!25270 lt!815878 lt!815559))))

(assert (=> d!654939 (= lt!815878 (getSuffix!1048 lt!815559 Nil!25270))))

(declare-fun lt!815859 () Unit!38391)

(declare-fun lt!815874 () Unit!38391)

(assert (=> d!654939 (= lt!815859 lt!815874)))

(assert (=> d!654939 (isPrefix!2163 Nil!25270 (++!6408 Nil!25270 lt!815559))))

(assert (=> d!654939 (= lt!815874 (lemmaConcatTwoListThenFirstIsPrefix!1446 Nil!25270 lt!815559))))

(assert (=> d!654939 (validRegex!2323 r!12534)))

(assert (=> d!654939 (= (findLongestMatchInner!672 r!12534 Nil!25270 (size!19745 Nil!25270) lt!815559 lt!815559 (size!19745 lt!815559)) lt!815864)))

(declare-fun bm!131499 () Bool)

(declare-fun call!131503 () C!12240)

(assert (=> bm!131499 (= call!131503 (head!4668 lt!815559))))

(declare-fun b!2185785 () Bool)

(declare-fun e!1396896 () Bool)

(assert (=> b!2185785 (= e!1396896 (>= (size!19745 (_1!14906 lt!815864)) (size!19745 Nil!25270)))))

(declare-fun b!2185786 () Bool)

(declare-fun Unit!38398 () Unit!38391)

(assert (=> b!2185786 (= e!1396897 Unit!38398)))

(declare-fun lt!815854 () Unit!38391)

(declare-fun call!131510 () Unit!38391)

(assert (=> b!2185786 (= lt!815854 call!131510)))

(declare-fun call!131508 () Bool)

(assert (=> b!2185786 call!131508))

(declare-fun lt!815867 () Unit!38391)

(assert (=> b!2185786 (= lt!815867 lt!815854)))

(declare-fun lt!815869 () Unit!38391)

(declare-fun call!131505 () Unit!38391)

(assert (=> b!2185786 (= lt!815869 call!131505)))

(assert (=> b!2185786 (= lt!815559 Nil!25270)))

(declare-fun lt!815875 () Unit!38391)

(assert (=> b!2185786 (= lt!815875 lt!815869)))

(assert (=> b!2185786 false))

(declare-fun b!2185787 () Bool)

(declare-fun e!1396898 () tuple2!25072)

(declare-fun e!1396901 () tuple2!25072)

(assert (=> b!2185787 (= e!1396898 e!1396901)))

(declare-fun lt!815856 () tuple2!25072)

(declare-fun call!131509 () tuple2!25072)

(assert (=> b!2185787 (= lt!815856 call!131509)))

(declare-fun c!347492 () Bool)

(assert (=> b!2185787 (= c!347492 (isEmpty!14524 (_1!14906 lt!815856)))))

(declare-fun b!2185788 () Bool)

(assert (=> b!2185788 (= e!1396898 call!131509)))

(declare-fun b!2185789 () Bool)

(declare-fun e!1396900 () tuple2!25072)

(assert (=> b!2185789 (= e!1396900 (tuple2!25073 Nil!25270 lt!815559))))

(declare-fun b!2185790 () Bool)

(assert (=> b!2185790 (= e!1396900 (tuple2!25073 Nil!25270 Nil!25270))))

(declare-fun bm!131500 () Bool)

(assert (=> bm!131500 (= call!131508 (isPrefix!2163 lt!815559 lt!815559))))

(declare-fun bm!131501 () Bool)

(declare-fun lt!815877 () List!25354)

(declare-fun call!131507 () Regex!6047)

(assert (=> bm!131501 (= call!131509 (findLongestMatchInner!672 call!131507 lt!815877 (+ (size!19745 Nil!25270) 1) call!131506 lt!815559 (size!19745 lt!815559)))))

(declare-fun b!2185791 () Bool)

(declare-fun e!1396895 () tuple2!25072)

(assert (=> b!2185791 (= e!1396899 e!1396895)))

(declare-fun c!347491 () Bool)

(assert (=> b!2185791 (= c!347491 (= (size!19745 Nil!25270) (size!19745 lt!815559)))))

(declare-fun bm!131502 () Bool)

(declare-fun call!131504 () Bool)

(declare-fun nullable!1711 (Regex!6047) Bool)

(assert (=> bm!131502 (= call!131504 (nullable!1711 r!12534))))

(declare-fun bm!131503 () Bool)

(declare-fun derivativeStep!1454 (Regex!6047 C!12240) Regex!6047)

(assert (=> bm!131503 (= call!131507 (derivativeStep!1454 r!12534 call!131503))))

(declare-fun b!2185792 () Bool)

(declare-fun c!347490 () Bool)

(assert (=> b!2185792 (= c!347490 call!131504)))

(declare-fun lt!815873 () Unit!38391)

(declare-fun lt!815860 () Unit!38391)

(assert (=> b!2185792 (= lt!815873 lt!815860)))

(declare-fun lt!815876 () C!12240)

(declare-fun lt!815863 () List!25354)

(assert (=> b!2185792 (= (++!6408 (++!6408 Nil!25270 (Cons!25270 lt!815876 Nil!25270)) lt!815863) lt!815559)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!521 (List!25354 C!12240 List!25354 List!25354) Unit!38391)

(assert (=> b!2185792 (= lt!815860 (lemmaMoveElementToOtherListKeepsConcatEq!521 Nil!25270 lt!815876 lt!815863 lt!815559))))

(assert (=> b!2185792 (= lt!815863 (tail!3140 lt!815559))))

(assert (=> b!2185792 (= lt!815876 (head!4668 lt!815559))))

(declare-fun lt!815870 () Unit!38391)

(declare-fun lt!815862 () Unit!38391)

(assert (=> b!2185792 (= lt!815870 lt!815862)))

(assert (=> b!2185792 (isPrefix!2163 (++!6408 Nil!25270 (Cons!25270 (head!4668 (getSuffix!1048 lt!815559 Nil!25270)) Nil!25270)) lt!815559)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!393 (List!25354 List!25354) Unit!38391)

(assert (=> b!2185792 (= lt!815862 (lemmaAddHeadSuffixToPrefixStillPrefix!393 Nil!25270 lt!815559))))

(declare-fun lt!815880 () Unit!38391)

(declare-fun lt!815871 () Unit!38391)

(assert (=> b!2185792 (= lt!815880 lt!815871)))

(assert (=> b!2185792 (= lt!815871 (lemmaAddHeadSuffixToPrefixStillPrefix!393 Nil!25270 lt!815559))))

(assert (=> b!2185792 (= lt!815877 (++!6408 Nil!25270 (Cons!25270 (head!4668 lt!815559) Nil!25270)))))

(declare-fun lt!815858 () Unit!38391)

(assert (=> b!2185792 (= lt!815858 e!1396897)))

(declare-fun c!347493 () Bool)

(assert (=> b!2185792 (= c!347493 (= (size!19745 Nil!25270) (size!19745 lt!815559)))))

(declare-fun lt!815872 () Unit!38391)

(declare-fun lt!815861 () Unit!38391)

(assert (=> b!2185792 (= lt!815872 lt!815861)))

(assert (=> b!2185792 (<= (size!19745 Nil!25270) (size!19745 lt!815559))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!196 (List!25354 List!25354) Unit!38391)

(assert (=> b!2185792 (= lt!815861 (lemmaIsPrefixThenSmallerEqSize!196 Nil!25270 lt!815559))))

(assert (=> b!2185792 (= e!1396895 e!1396898)))

(declare-fun b!2185793 () Bool)

(assert (=> b!2185793 (= e!1396901 (tuple2!25073 Nil!25270 lt!815559))))

(declare-fun b!2185794 () Bool)

(declare-fun c!347489 () Bool)

(assert (=> b!2185794 (= c!347489 call!131504)))

(declare-fun lt!815868 () Unit!38391)

(declare-fun lt!815879 () Unit!38391)

(assert (=> b!2185794 (= lt!815868 lt!815879)))

(assert (=> b!2185794 (= lt!815559 Nil!25270)))

(assert (=> b!2185794 (= lt!815879 call!131505)))

(declare-fun lt!815857 () Unit!38391)

(declare-fun lt!815865 () Unit!38391)

(assert (=> b!2185794 (= lt!815857 lt!815865)))

(assert (=> b!2185794 call!131508))

(assert (=> b!2185794 (= lt!815865 call!131510)))

(assert (=> b!2185794 (= e!1396895 e!1396900)))

(declare-fun b!2185795 () Bool)

(assert (=> b!2185795 (= e!1396901 lt!815856)))

(declare-fun bm!131504 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!369 (List!25354 List!25354 List!25354) Unit!38391)

(assert (=> bm!131504 (= call!131505 (lemmaIsPrefixSameLengthThenSameList!369 lt!815559 Nil!25270 lt!815559))))

(declare-fun bm!131505 () Bool)

(declare-fun lemmaIsPrefixRefl!1423 (List!25354 List!25354) Unit!38391)

(assert (=> bm!131505 (= call!131510 (lemmaIsPrefixRefl!1423 lt!815559 lt!815559))))

(declare-fun b!2185796 () Bool)

(assert (=> b!2185796 (= e!1396902 e!1396896)))

(declare-fun res!939241 () Bool)

(assert (=> b!2185796 (=> res!939241 e!1396896)))

(assert (=> b!2185796 (= res!939241 (isEmpty!14524 (_1!14906 lt!815864)))))

(declare-fun b!2185797 () Bool)

(assert (=> b!2185797 (= e!1396899 (tuple2!25073 Nil!25270 lt!815559))))

(assert (= (and d!654939 c!347494) b!2185797))

(assert (= (and d!654939 (not c!347494)) b!2185791))

(assert (= (and b!2185791 c!347491) b!2185794))

(assert (= (and b!2185791 (not c!347491)) b!2185792))

(assert (= (and b!2185794 c!347489) b!2185790))

(assert (= (and b!2185794 (not c!347489)) b!2185789))

(assert (= (and b!2185792 c!347493) b!2185786))

(assert (= (and b!2185792 (not c!347493)) b!2185784))

(assert (= (and b!2185792 c!347490) b!2185787))

(assert (= (and b!2185792 (not c!347490)) b!2185788))

(assert (= (and b!2185787 c!347492) b!2185793))

(assert (= (and b!2185787 (not c!347492)) b!2185795))

(assert (= (or b!2185787 b!2185788) bm!131499))

(assert (= (or b!2185787 b!2185788) bm!131498))

(assert (= (or b!2185787 b!2185788) bm!131503))

(assert (= (or b!2185787 b!2185788) bm!131501))

(assert (= (or b!2185794 b!2185786) bm!131500))

(assert (= (or b!2185794 b!2185786) bm!131505))

(assert (= (or b!2185794 b!2185786) bm!131504))

(assert (= (or b!2185794 b!2185792) bm!131502))

(assert (= (and d!654939 res!939240) b!2185796))

(assert (= (and b!2185796 (not res!939241)) b!2185785))

(declare-fun m!2628357 () Bool)

(assert (=> bm!131498 m!2628357))

(declare-fun m!2628359 () Bool)

(assert (=> bm!131505 m!2628359))

(declare-fun m!2628361 () Bool)

(assert (=> b!2185785 m!2628361))

(assert (=> b!2185785 m!2627921))

(declare-fun m!2628363 () Bool)

(assert (=> b!2185792 m!2628363))

(declare-fun m!2628365 () Bool)

(assert (=> b!2185792 m!2628365))

(declare-fun m!2628367 () Bool)

(assert (=> b!2185792 m!2628367))

(declare-fun m!2628369 () Bool)

(assert (=> b!2185792 m!2628369))

(declare-fun m!2628371 () Bool)

(assert (=> b!2185792 m!2628371))

(declare-fun m!2628373 () Bool)

(assert (=> b!2185792 m!2628373))

(declare-fun m!2628375 () Bool)

(assert (=> b!2185792 m!2628375))

(assert (=> b!2185792 m!2628371))

(assert (=> b!2185792 m!2628363))

(assert (=> b!2185792 m!2627921))

(declare-fun m!2628377 () Bool)

(assert (=> b!2185792 m!2628377))

(declare-fun m!2628379 () Bool)

(assert (=> b!2185792 m!2628379))

(declare-fun m!2628381 () Bool)

(assert (=> b!2185792 m!2628381))

(assert (=> b!2185792 m!2628357))

(declare-fun m!2628383 () Bool)

(assert (=> b!2185792 m!2628383))

(assert (=> b!2185792 m!2628367))

(assert (=> b!2185792 m!2627911))

(declare-fun m!2628385 () Bool)

(assert (=> bm!131503 m!2628385))

(assert (=> bm!131499 m!2628377))

(declare-fun m!2628387 () Bool)

(assert (=> bm!131502 m!2628387))

(declare-fun m!2628389 () Bool)

(assert (=> d!654939 m!2628389))

(declare-fun m!2628391 () Bool)

(assert (=> d!654939 m!2628391))

(declare-fun m!2628393 () Bool)

(assert (=> d!654939 m!2628393))

(declare-fun m!2628395 () Bool)

(assert (=> d!654939 m!2628395))

(assert (=> d!654939 m!2627849))

(assert (=> d!654939 m!2628371))

(declare-fun m!2628397 () Bool)

(assert (=> d!654939 m!2628397))

(assert (=> d!654939 m!2628395))

(declare-fun m!2628399 () Bool)

(assert (=> d!654939 m!2628399))

(assert (=> bm!131501 m!2627911))

(declare-fun m!2628401 () Bool)

(assert (=> bm!131501 m!2628401))

(declare-fun m!2628403 () Bool)

(assert (=> b!2185787 m!2628403))

(declare-fun m!2628405 () Bool)

(assert (=> bm!131504 m!2628405))

(declare-fun m!2628407 () Bool)

(assert (=> bm!131500 m!2628407))

(declare-fun m!2628409 () Bool)

(assert (=> b!2185796 m!2628409))

(assert (=> b!2185306 d!654939))

(declare-fun d!655009 () Bool)

(declare-fun e!1396905 () Bool)

(assert (=> d!655009 e!1396905))

(declare-fun res!939244 () Bool)

(assert (=> d!655009 (=> res!939244 e!1396905)))

(assert (=> d!655009 (= res!939244 (isEmpty!14524 (_1!14906 (findLongestMatchInner!672 r!12534 Nil!25270 (size!19745 Nil!25270) lt!815559 lt!815559 (size!19745 lt!815559)))))))

(declare-fun lt!815883 () Unit!38391)

(declare-fun choose!12930 (Regex!6047 List!25354) Unit!38391)

(assert (=> d!655009 (= lt!815883 (choose!12930 r!12534 lt!815559))))

(assert (=> d!655009 (validRegex!2323 r!12534)))

(assert (=> d!655009 (= (longestMatchIsAcceptedByMatchOrIsEmpty!645 r!12534 lt!815559) lt!815883)))

(declare-fun b!2185800 () Bool)

(assert (=> b!2185800 (= e!1396905 (matchR!2796 r!12534 (_1!14906 (findLongestMatchInner!672 r!12534 Nil!25270 (size!19745 Nil!25270) lt!815559 lt!815559 (size!19745 lt!815559)))))))

(assert (= (and d!655009 (not res!939244)) b!2185800))

(assert (=> d!655009 m!2627849))

(assert (=> d!655009 m!2627921))

(assert (=> d!655009 m!2627911))

(assert (=> d!655009 m!2627933))

(declare-fun m!2628411 () Bool)

(assert (=> d!655009 m!2628411))

(assert (=> d!655009 m!2627911))

(declare-fun m!2628413 () Bool)

(assert (=> d!655009 m!2628413))

(assert (=> d!655009 m!2627921))

(assert (=> b!2185800 m!2627921))

(assert (=> b!2185800 m!2627911))

(assert (=> b!2185800 m!2627921))

(assert (=> b!2185800 m!2627911))

(assert (=> b!2185800 m!2627933))

(declare-fun m!2628415 () Bool)

(assert (=> b!2185800 m!2628415))

(assert (=> b!2185306 d!655009))

(declare-fun d!655011 () Bool)

(declare-fun c!347497 () Bool)

(assert (=> d!655011 (= c!347497 (isEmpty!14524 lt!815551))))

(declare-fun e!1396908 () Bool)

(assert (=> d!655011 (= (matchZipper!163 z!4055 lt!815551) e!1396908)))

(declare-fun b!2185805 () Bool)

(assert (=> b!2185805 (= e!1396908 (nullableZipper!327 z!4055))))

(declare-fun b!2185806 () Bool)

(assert (=> b!2185806 (= e!1396908 (matchZipper!163 (derivationStepZipper!140 z!4055 (head!4668 lt!815551)) (tail!3140 lt!815551)))))

(assert (= (and d!655011 c!347497) b!2185805))

(assert (= (and d!655011 (not c!347497)) b!2185806))

(declare-fun m!2628417 () Bool)

(assert (=> d!655011 m!2628417))

(assert (=> b!2185805 m!2627939))

(assert (=> b!2185806 m!2627983))

(assert (=> b!2185806 m!2627983))

(declare-fun m!2628419 () Bool)

(assert (=> b!2185806 m!2628419))

(assert (=> b!2185806 m!2627977))

(assert (=> b!2185806 m!2628419))

(assert (=> b!2185806 m!2627977))

(declare-fun m!2628421 () Bool)

(assert (=> b!2185806 m!2628421))

(assert (=> b!2185306 d!655011))

(declare-fun d!655013 () Bool)

(declare-fun e!1396911 () Bool)

(assert (=> d!655013 e!1396911))

(declare-fun res!939246 () Bool)

(assert (=> d!655013 (=> res!939246 e!1396911)))

(declare-fun lt!815884 () Bool)

(assert (=> d!655013 (= res!939246 (not lt!815884))))

(declare-fun e!1396909 () Bool)

(assert (=> d!655013 (= lt!815884 e!1396909)))

(declare-fun res!939248 () Bool)

(assert (=> d!655013 (=> res!939248 e!1396909)))

(assert (=> d!655013 (= res!939248 ((_ is Nil!25270) (_1!14906 lt!815564)))))

(assert (=> d!655013 (= (isPrefix!2163 (_1!14906 lt!815564) lt!815574) lt!815884)))

(declare-fun b!2185807 () Bool)

(declare-fun e!1396910 () Bool)

(assert (=> b!2185807 (= e!1396909 e!1396910)))

(declare-fun res!939247 () Bool)

(assert (=> b!2185807 (=> (not res!939247) (not e!1396910))))

(assert (=> b!2185807 (= res!939247 (not ((_ is Nil!25270) lt!815574)))))

(declare-fun b!2185809 () Bool)

(assert (=> b!2185809 (= e!1396910 (isPrefix!2163 (tail!3140 (_1!14906 lt!815564)) (tail!3140 lt!815574)))))

(declare-fun b!2185808 () Bool)

(declare-fun res!939245 () Bool)

(assert (=> b!2185808 (=> (not res!939245) (not e!1396910))))

(assert (=> b!2185808 (= res!939245 (= (head!4668 (_1!14906 lt!815564)) (head!4668 lt!815574)))))

(declare-fun b!2185810 () Bool)

(assert (=> b!2185810 (= e!1396911 (>= (size!19745 lt!815574) (size!19745 (_1!14906 lt!815564))))))

(assert (= (and d!655013 (not res!939248)) b!2185807))

(assert (= (and b!2185807 res!939247) b!2185808))

(assert (= (and b!2185808 res!939245) b!2185809))

(assert (= (and d!655013 (not res!939246)) b!2185810))

(declare-fun m!2628423 () Bool)

(assert (=> b!2185809 m!2628423))

(declare-fun m!2628425 () Bool)

(assert (=> b!2185809 m!2628425))

(assert (=> b!2185809 m!2628423))

(assert (=> b!2185809 m!2628425))

(declare-fun m!2628427 () Bool)

(assert (=> b!2185809 m!2628427))

(declare-fun m!2628429 () Bool)

(assert (=> b!2185808 m!2628429))

(declare-fun m!2628431 () Bool)

(assert (=> b!2185808 m!2628431))

(declare-fun m!2628433 () Bool)

(assert (=> b!2185810 m!2628433))

(assert (=> b!2185810 m!2627897))

(assert (=> b!2185306 d!655013))

(declare-fun b!2185839 () Bool)

(declare-fun e!1396930 () Bool)

(declare-fun lt!815887 () Bool)

(assert (=> b!2185839 (= e!1396930 (not lt!815887))))

(declare-fun b!2185840 () Bool)

(declare-fun e!1396926 () Bool)

(assert (=> b!2185840 (= e!1396926 (matchR!2796 (derivativeStep!1454 r!12534 (head!4668 (_1!14906 lt!815564))) (tail!3140 (_1!14906 lt!815564))))))

(declare-fun b!2185841 () Bool)

(declare-fun e!1396932 () Bool)

(declare-fun call!131513 () Bool)

(assert (=> b!2185841 (= e!1396932 (= lt!815887 call!131513))))

(declare-fun b!2185842 () Bool)

(declare-fun e!1396927 () Bool)

(declare-fun e!1396929 () Bool)

(assert (=> b!2185842 (= e!1396927 e!1396929)))

(declare-fun res!939268 () Bool)

(assert (=> b!2185842 (=> (not res!939268) (not e!1396929))))

(assert (=> b!2185842 (= res!939268 (not lt!815887))))

(declare-fun b!2185843 () Bool)

(declare-fun res!939269 () Bool)

(declare-fun e!1396928 () Bool)

(assert (=> b!2185843 (=> res!939269 e!1396928)))

(assert (=> b!2185843 (= res!939269 (not (isEmpty!14524 (tail!3140 (_1!14906 lt!815564)))))))

(declare-fun b!2185844 () Bool)

(assert (=> b!2185844 (= e!1396932 e!1396930)))

(declare-fun c!347505 () Bool)

(assert (=> b!2185844 (= c!347505 ((_ is EmptyLang!6047) r!12534))))

(declare-fun b!2185845 () Bool)

(declare-fun res!939270 () Bool)

(declare-fun e!1396931 () Bool)

(assert (=> b!2185845 (=> (not res!939270) (not e!1396931))))

(assert (=> b!2185845 (= res!939270 (isEmpty!14524 (tail!3140 (_1!14906 lt!815564))))))

(declare-fun bm!131508 () Bool)

(assert (=> bm!131508 (= call!131513 (isEmpty!14524 (_1!14906 lt!815564)))))

(declare-fun d!655015 () Bool)

(assert (=> d!655015 e!1396932))

(declare-fun c!347506 () Bool)

(assert (=> d!655015 (= c!347506 ((_ is EmptyExpr!6047) r!12534))))

(assert (=> d!655015 (= lt!815887 e!1396926)))

(declare-fun c!347504 () Bool)

(assert (=> d!655015 (= c!347504 (isEmpty!14524 (_1!14906 lt!815564)))))

(assert (=> d!655015 (validRegex!2323 r!12534)))

(assert (=> d!655015 (= (matchR!2796 r!12534 (_1!14906 lt!815564)) lt!815887)))

(declare-fun b!2185846 () Bool)

(assert (=> b!2185846 (= e!1396928 (not (= (head!4668 (_1!14906 lt!815564)) (c!347359 r!12534))))))

(declare-fun b!2185847 () Bool)

(assert (=> b!2185847 (= e!1396931 (= (head!4668 (_1!14906 lt!815564)) (c!347359 r!12534)))))

(declare-fun b!2185848 () Bool)

(declare-fun res!939267 () Bool)

(assert (=> b!2185848 (=> res!939267 e!1396927)))

(assert (=> b!2185848 (= res!939267 e!1396931)))

(declare-fun res!939272 () Bool)

(assert (=> b!2185848 (=> (not res!939272) (not e!1396931))))

(assert (=> b!2185848 (= res!939272 lt!815887)))

(declare-fun b!2185849 () Bool)

(declare-fun res!939271 () Bool)

(assert (=> b!2185849 (=> (not res!939271) (not e!1396931))))

(assert (=> b!2185849 (= res!939271 (not call!131513))))

(declare-fun b!2185850 () Bool)

(declare-fun res!939265 () Bool)

(assert (=> b!2185850 (=> res!939265 e!1396927)))

(assert (=> b!2185850 (= res!939265 (not ((_ is ElementMatch!6047) r!12534)))))

(assert (=> b!2185850 (= e!1396930 e!1396927)))

(declare-fun b!2185851 () Bool)

(assert (=> b!2185851 (= e!1396929 e!1396928)))

(declare-fun res!939266 () Bool)

(assert (=> b!2185851 (=> res!939266 e!1396928)))

(assert (=> b!2185851 (= res!939266 call!131513)))

(declare-fun b!2185852 () Bool)

(assert (=> b!2185852 (= e!1396926 (nullable!1711 r!12534))))

(assert (= (and d!655015 c!347504) b!2185852))

(assert (= (and d!655015 (not c!347504)) b!2185840))

(assert (= (and d!655015 c!347506) b!2185841))

(assert (= (and d!655015 (not c!347506)) b!2185844))

(assert (= (and b!2185844 c!347505) b!2185839))

(assert (= (and b!2185844 (not c!347505)) b!2185850))

(assert (= (and b!2185850 (not res!939265)) b!2185848))

(assert (= (and b!2185848 res!939272) b!2185849))

(assert (= (and b!2185849 res!939271) b!2185845))

(assert (= (and b!2185845 res!939270) b!2185847))

(assert (= (and b!2185848 (not res!939267)) b!2185842))

(assert (= (and b!2185842 res!939268) b!2185851))

(assert (= (and b!2185851 (not res!939266)) b!2185843))

(assert (= (and b!2185843 (not res!939269)) b!2185846))

(assert (= (or b!2185841 b!2185851 b!2185849) bm!131508))

(assert (=> d!655015 m!2627907))

(assert (=> d!655015 m!2627849))

(assert (=> bm!131508 m!2627907))

(assert (=> b!2185840 m!2628429))

(assert (=> b!2185840 m!2628429))

(declare-fun m!2628435 () Bool)

(assert (=> b!2185840 m!2628435))

(assert (=> b!2185840 m!2628423))

(assert (=> b!2185840 m!2628435))

(assert (=> b!2185840 m!2628423))

(declare-fun m!2628437 () Bool)

(assert (=> b!2185840 m!2628437))

(assert (=> b!2185847 m!2628429))

(assert (=> b!2185843 m!2628423))

(assert (=> b!2185843 m!2628423))

(declare-fun m!2628439 () Bool)

(assert (=> b!2185843 m!2628439))

(assert (=> b!2185845 m!2628423))

(assert (=> b!2185845 m!2628423))

(assert (=> b!2185845 m!2628439))

(assert (=> b!2185852 m!2628387))

(assert (=> b!2185846 m!2628429))

(assert (=> b!2185316 d!655015))

(declare-fun d!655017 () Bool)

(declare-fun lt!815890 () Regex!6047)

(assert (=> d!655017 (validRegex!2323 lt!815890)))

(declare-fun generalisedUnion!527 (List!25355) Regex!6047)

(declare-fun unfocusZipperList!51 (List!25356) List!25355)

(assert (=> d!655017 (= lt!815890 (generalisedUnion!527 (unfocusZipperList!51 lt!815552)))))

(assert (=> d!655017 (= (unfocusZipper!154 lt!815552) lt!815890)))

(declare-fun bs!448108 () Bool)

(assert (= bs!448108 d!655017))

(declare-fun m!2628441 () Bool)

(assert (=> bs!448108 m!2628441))

(declare-fun m!2628443 () Bool)

(assert (=> bs!448108 m!2628443))

(assert (=> bs!448108 m!2628443))

(declare-fun m!2628445 () Bool)

(assert (=> bs!448108 m!2628445))

(assert (=> b!2185307 d!655017))

(declare-fun d!655019 () Bool)

(declare-fun e!1396935 () Bool)

(assert (=> d!655019 e!1396935))

(declare-fun res!939275 () Bool)

(assert (=> d!655019 (=> (not res!939275) (not e!1396935))))

(declare-fun lt!815893 () List!25356)

(declare-fun noDuplicate!304 (List!25356) Bool)

(assert (=> d!655019 (= res!939275 (noDuplicate!304 lt!815893))))

(declare-fun choose!12931 ((InoxSet Context!3234)) List!25356)

(assert (=> d!655019 (= lt!815893 (choose!12931 z!4055))))

(assert (=> d!655019 (= (toList!1230 z!4055) lt!815893)))

(declare-fun b!2185855 () Bool)

(declare-fun content!3449 (List!25356) (InoxSet Context!3234))

(assert (=> b!2185855 (= e!1396935 (= (content!3449 lt!815893) z!4055))))

(assert (= (and d!655019 res!939275) b!2185855))

(declare-fun m!2628447 () Bool)

(assert (=> d!655019 m!2628447))

(declare-fun m!2628449 () Bool)

(assert (=> d!655019 m!2628449))

(declare-fun m!2628451 () Bool)

(assert (=> b!2185855 m!2628451))

(assert (=> b!2185307 d!655019))

(declare-fun d!655021 () Bool)

(declare-fun lt!815896 () Bool)

(assert (=> d!655021 (= lt!815896 (isEmpty!14524 (list!9702 (_1!14905 lt!815570))))))

(declare-fun isEmpty!14525 (Conc!8183) Bool)

(assert (=> d!655021 (= lt!815896 (isEmpty!14525 (c!347358 (_1!14905 lt!815570))))))

(assert (=> d!655021 (= (isEmpty!14523 (_1!14905 lt!815570)) lt!815896)))

(declare-fun bs!448109 () Bool)

(assert (= bs!448109 d!655021))

(assert (=> bs!448109 m!2627865))

(assert (=> bs!448109 m!2627865))

(declare-fun m!2628453 () Bool)

(assert (=> bs!448109 m!2628453))

(declare-fun m!2628455 () Bool)

(assert (=> bs!448109 m!2628455))

(assert (=> b!2185305 d!655021))

(declare-fun d!655023 () Bool)

(declare-fun lt!815899 () Int)

(assert (=> d!655023 (= lt!815899 (size!19745 (list!9702 totalInput!977)))))

(declare-fun size!19747 (Conc!8183) Int)

(assert (=> d!655023 (= lt!815899 (size!19747 (c!347358 totalInput!977)))))

(assert (=> d!655023 (= (size!19744 totalInput!977) lt!815899)))

(declare-fun bs!448110 () Bool)

(assert (= bs!448110 d!655023))

(assert (=> bs!448110 m!2627947))

(assert (=> bs!448110 m!2627947))

(declare-fun m!2628457 () Bool)

(assert (=> bs!448110 m!2628457))

(declare-fun m!2628459 () Bool)

(assert (=> bs!448110 m!2628459))

(assert (=> b!2185298 d!655023))

(declare-fun d!655025 () Bool)

(declare-fun lt!815917 () tuple2!25072)

(assert (=> d!655025 (= (++!6408 (_1!14906 lt!815917) (_2!14906 lt!815917)) lt!815559)))

(declare-fun sizeTr!128 (List!25354 Int) Int)

(assert (=> d!655025 (= lt!815917 (findLongestMatchInner!672 r!12534 Nil!25270 0 lt!815559 lt!815559 (sizeTr!128 lt!815559 0)))))

(declare-fun lt!815918 () Unit!38391)

(declare-fun lt!815921 () Unit!38391)

(assert (=> d!655025 (= lt!815918 lt!815921)))

(declare-fun lt!815922 () List!25354)

(declare-fun lt!815916 () Int)

(assert (=> d!655025 (= (sizeTr!128 lt!815922 lt!815916) (+ (size!19745 lt!815922) lt!815916))))

(declare-fun lemmaSizeTrEqualsSize!127 (List!25354 Int) Unit!38391)

(assert (=> d!655025 (= lt!815921 (lemmaSizeTrEqualsSize!127 lt!815922 lt!815916))))

(assert (=> d!655025 (= lt!815916 0)))

(assert (=> d!655025 (= lt!815922 Nil!25270)))

(declare-fun lt!815919 () Unit!38391)

(declare-fun lt!815923 () Unit!38391)

(assert (=> d!655025 (= lt!815919 lt!815923)))

(declare-fun lt!815920 () Int)

(assert (=> d!655025 (= (sizeTr!128 lt!815559 lt!815920) (+ (size!19745 lt!815559) lt!815920))))

(assert (=> d!655025 (= lt!815923 (lemmaSizeTrEqualsSize!127 lt!815559 lt!815920))))

(assert (=> d!655025 (= lt!815920 0)))

(assert (=> d!655025 (validRegex!2323 r!12534)))

(assert (=> d!655025 (= (findLongestMatch!601 r!12534 lt!815559) lt!815917)))

(declare-fun bs!448111 () Bool)

(assert (= bs!448111 d!655025))

(assert (=> bs!448111 m!2627849))

(declare-fun m!2628461 () Bool)

(assert (=> bs!448111 m!2628461))

(declare-fun m!2628463 () Bool)

(assert (=> bs!448111 m!2628463))

(assert (=> bs!448111 m!2627911))

(declare-fun m!2628465 () Bool)

(assert (=> bs!448111 m!2628465))

(declare-fun m!2628467 () Bool)

(assert (=> bs!448111 m!2628467))

(assert (=> bs!448111 m!2628461))

(declare-fun m!2628469 () Bool)

(assert (=> bs!448111 m!2628469))

(declare-fun m!2628471 () Bool)

(assert (=> bs!448111 m!2628471))

(declare-fun m!2628473 () Bool)

(assert (=> bs!448111 m!2628473))

(declare-fun m!2628475 () Bool)

(assert (=> bs!448111 m!2628475))

(assert (=> b!2185298 d!655025))

(declare-fun d!655027 () Bool)

(declare-fun lt!815924 () Int)

(assert (=> d!655027 (= lt!815924 (size!19745 (list!9702 input!5540)))))

(assert (=> d!655027 (= lt!815924 (size!19747 (c!347358 input!5540)))))

(assert (=> d!655027 (= (size!19744 input!5540) lt!815924)))

(declare-fun bs!448112 () Bool)

(assert (= bs!448112 d!655027))

(assert (=> bs!448112 m!2627949))

(assert (=> bs!448112 m!2627949))

(declare-fun m!2628477 () Bool)

(assert (=> bs!448112 m!2628477))

(declare-fun m!2628479 () Bool)

(assert (=> bs!448112 m!2628479))

(assert (=> b!2185298 d!655027))

(declare-fun b!2185864 () Bool)

(declare-fun e!1396941 () Int)

(declare-fun lt!815934 () Int)

(assert (=> b!2185864 (= e!1396941 (- lt!815934 1))))

(declare-fun b!2185865 () Bool)

(declare-fun e!1396940 () tuple2!25070)

(declare-fun call!131516 () tuple2!25070)

(assert (=> b!2185865 (= e!1396940 call!131516)))

(declare-fun b!2185866 () Bool)

(assert (=> b!2185866 (= e!1396941 (- 1))))

(declare-fun b!2185867 () Bool)

(assert (=> b!2185867 (= e!1396940 call!131516)))

(declare-fun d!655029 () Bool)

(declare-fun lt!815935 () tuple2!25070)

(assert (=> d!655029 (= (++!6408 (list!9702 (_1!14905 lt!815935)) (list!9702 (_2!14905 lt!815935))) (list!9702 input!5540))))

(assert (=> d!655029 (= lt!815935 e!1396940)))

(declare-fun c!347512 () Bool)

(declare-fun lt!815936 () Int)

(assert (=> d!655029 (= c!347512 (< lt!815936 0))))

(declare-fun lt!815933 () Int)

(assert (=> d!655029 (= lt!815936 (+ (- (furthestNullablePosition!229 z!4055 lt!815934 totalInput!977 lt!815933 e!1396941) lt!815934) 1))))

(declare-fun c!347511 () Bool)

(assert (=> d!655029 (= c!347511 (nullableZipper!327 z!4055))))

(assert (=> d!655029 (= lt!815934 (- lt!815933 (size!19744 input!5540)))))

(assert (=> d!655029 (= lt!815933 (size!19744 totalInput!977))))

(assert (=> d!655029 (isSuffix!714 (list!9702 input!5540) (list!9702 totalInput!977))))

(assert (=> d!655029 (= (findLongestMatchZipperSequenceV3!96 z!4055 input!5540 totalInput!977) lt!815935)))

(declare-fun bm!131511 () Bool)

(declare-fun splitAt!55 (BalanceConc!16128 Int) tuple2!25070)

(assert (=> bm!131511 (= call!131516 (splitAt!55 input!5540 (ite c!347512 0 lt!815936)))))

(assert (= (and d!655029 c!347511) b!2185864))

(assert (= (and d!655029 (not c!347511)) b!2185866))

(assert (= (and d!655029 c!347512) b!2185865))

(assert (= (and d!655029 (not c!347512)) b!2185867))

(assert (= (or b!2185865 b!2185867) bm!131511))

(declare-fun m!2628481 () Bool)

(assert (=> d!655029 m!2628481))

(assert (=> d!655029 m!2628481))

(declare-fun m!2628483 () Bool)

(assert (=> d!655029 m!2628483))

(declare-fun m!2628485 () Bool)

(assert (=> d!655029 m!2628485))

(assert (=> d!655029 m!2627949))

(assert (=> d!655029 m!2627861))

(assert (=> d!655029 m!2627863))

(assert (=> d!655029 m!2627949))

(assert (=> d!655029 m!2627947))

(declare-fun m!2628487 () Bool)

(assert (=> d!655029 m!2628487))

(declare-fun m!2628489 () Bool)

(assert (=> d!655029 m!2628489))

(assert (=> d!655029 m!2628483))

(assert (=> d!655029 m!2627939))

(assert (=> d!655029 m!2627947))

(declare-fun m!2628491 () Bool)

(assert (=> bm!131511 m!2628491))

(assert (=> b!2185298 d!655029))

(declare-fun d!655031 () Bool)

(declare-fun list!9704 (Conc!8183) List!25354)

(assert (=> d!655031 (= (list!9702 (_2!14905 lt!815570)) (list!9704 (c!347358 (_2!14905 lt!815570))))))

(declare-fun bs!448113 () Bool)

(assert (= bs!448113 d!655031))

(declare-fun m!2628493 () Bool)

(assert (=> bs!448113 m!2628493))

(assert (=> b!2185298 d!655031))

(declare-fun d!655033 () Bool)

(assert (=> d!655033 (= (list!9702 (_1!14905 lt!815570)) (list!9704 (c!347358 (_1!14905 lt!815570))))))

(declare-fun bs!448114 () Bool)

(assert (= bs!448114 d!655033))

(declare-fun m!2628495 () Bool)

(assert (=> bs!448114 m!2628495))

(assert (=> b!2185298 d!655033))

(declare-fun b!2185879 () Bool)

(declare-fun lt!815939 () List!25354)

(declare-fun e!1396946 () Bool)

(assert (=> b!2185879 (= e!1396946 (or (not (= lt!815563 Nil!25270)) (= lt!815939 lt!815551)))))

(declare-fun b!2185876 () Bool)

(declare-fun e!1396947 () List!25354)

(assert (=> b!2185876 (= e!1396947 lt!815563)))

(declare-fun b!2185878 () Bool)

(declare-fun res!939280 () Bool)

(assert (=> b!2185878 (=> (not res!939280) (not e!1396946))))

(assert (=> b!2185878 (= res!939280 (= (size!19745 lt!815939) (+ (size!19745 lt!815551) (size!19745 lt!815563))))))

(declare-fun d!655035 () Bool)

(assert (=> d!655035 e!1396946))

(declare-fun res!939281 () Bool)

(assert (=> d!655035 (=> (not res!939281) (not e!1396946))))

(assert (=> d!655035 (= res!939281 (= (content!3447 lt!815939) ((_ map or) (content!3447 lt!815551) (content!3447 lt!815563))))))

(assert (=> d!655035 (= lt!815939 e!1396947)))

(declare-fun c!347515 () Bool)

(assert (=> d!655035 (= c!347515 ((_ is Nil!25270) lt!815551))))

(assert (=> d!655035 (= (++!6408 lt!815551 lt!815563) lt!815939)))

(declare-fun b!2185877 () Bool)

(assert (=> b!2185877 (= e!1396947 (Cons!25270 (h!30671 lt!815551) (++!6408 (t!197944 lt!815551) lt!815563)))))

(assert (= (and d!655035 c!347515) b!2185876))

(assert (= (and d!655035 (not c!347515)) b!2185877))

(assert (= (and d!655035 res!939281) b!2185878))

(assert (= (and b!2185878 res!939280) b!2185879))

(declare-fun m!2628497 () Bool)

(assert (=> b!2185878 m!2628497))

(assert (=> b!2185878 m!2627881))

(declare-fun m!2628499 () Bool)

(assert (=> b!2185878 m!2628499))

(declare-fun m!2628501 () Bool)

(assert (=> d!655035 m!2628501))

(declare-fun m!2628503 () Bool)

(assert (=> d!655035 m!2628503))

(declare-fun m!2628505 () Bool)

(assert (=> d!655035 m!2628505))

(declare-fun m!2628507 () Bool)

(assert (=> b!2185877 m!2628507))

(assert (=> b!2185298 d!655035))

(declare-fun d!655037 () Bool)

(assert (=> d!655037 (= (isEmpty!14524 (_1!14906 lt!815564)) ((_ is Nil!25270) (_1!14906 lt!815564)))))

(assert (=> b!2185319 d!655037))

(declare-fun b!2185880 () Bool)

(declare-fun e!1396952 () Bool)

(declare-fun lt!815940 () Bool)

(assert (=> b!2185880 (= e!1396952 (not lt!815940))))

(declare-fun b!2185881 () Bool)

(declare-fun e!1396948 () Bool)

(assert (=> b!2185881 (= e!1396948 (matchR!2796 (derivativeStep!1454 r!12534 (head!4668 (_1!14906 lt!815558))) (tail!3140 (_1!14906 lt!815558))))))

(declare-fun b!2185882 () Bool)

(declare-fun e!1396954 () Bool)

(declare-fun call!131517 () Bool)

(assert (=> b!2185882 (= e!1396954 (= lt!815940 call!131517))))

(declare-fun b!2185883 () Bool)

(declare-fun e!1396949 () Bool)

(declare-fun e!1396951 () Bool)

(assert (=> b!2185883 (= e!1396949 e!1396951)))

(declare-fun res!939285 () Bool)

(assert (=> b!2185883 (=> (not res!939285) (not e!1396951))))

(assert (=> b!2185883 (= res!939285 (not lt!815940))))

(declare-fun b!2185884 () Bool)

(declare-fun res!939286 () Bool)

(declare-fun e!1396950 () Bool)

(assert (=> b!2185884 (=> res!939286 e!1396950)))

(assert (=> b!2185884 (= res!939286 (not (isEmpty!14524 (tail!3140 (_1!14906 lt!815558)))))))

(declare-fun b!2185885 () Bool)

(assert (=> b!2185885 (= e!1396954 e!1396952)))

(declare-fun c!347517 () Bool)

(assert (=> b!2185885 (= c!347517 ((_ is EmptyLang!6047) r!12534))))

(declare-fun b!2185886 () Bool)

(declare-fun res!939287 () Bool)

(declare-fun e!1396953 () Bool)

(assert (=> b!2185886 (=> (not res!939287) (not e!1396953))))

(assert (=> b!2185886 (= res!939287 (isEmpty!14524 (tail!3140 (_1!14906 lt!815558))))))

(declare-fun bm!131512 () Bool)

(assert (=> bm!131512 (= call!131517 (isEmpty!14524 (_1!14906 lt!815558)))))

(declare-fun d!655039 () Bool)

(assert (=> d!655039 e!1396954))

(declare-fun c!347518 () Bool)

(assert (=> d!655039 (= c!347518 ((_ is EmptyExpr!6047) r!12534))))

(assert (=> d!655039 (= lt!815940 e!1396948)))

(declare-fun c!347516 () Bool)

(assert (=> d!655039 (= c!347516 (isEmpty!14524 (_1!14906 lt!815558)))))

(assert (=> d!655039 (validRegex!2323 r!12534)))

(assert (=> d!655039 (= (matchR!2796 r!12534 (_1!14906 lt!815558)) lt!815940)))

(declare-fun b!2185887 () Bool)

(assert (=> b!2185887 (= e!1396950 (not (= (head!4668 (_1!14906 lt!815558)) (c!347359 r!12534))))))

(declare-fun b!2185888 () Bool)

(assert (=> b!2185888 (= e!1396953 (= (head!4668 (_1!14906 lt!815558)) (c!347359 r!12534)))))

(declare-fun b!2185889 () Bool)

(declare-fun res!939284 () Bool)

(assert (=> b!2185889 (=> res!939284 e!1396949)))

(assert (=> b!2185889 (= res!939284 e!1396953)))

(declare-fun res!939289 () Bool)

(assert (=> b!2185889 (=> (not res!939289) (not e!1396953))))

(assert (=> b!2185889 (= res!939289 lt!815940)))

(declare-fun b!2185890 () Bool)

(declare-fun res!939288 () Bool)

(assert (=> b!2185890 (=> (not res!939288) (not e!1396953))))

(assert (=> b!2185890 (= res!939288 (not call!131517))))

(declare-fun b!2185891 () Bool)

(declare-fun res!939282 () Bool)

(assert (=> b!2185891 (=> res!939282 e!1396949)))

(assert (=> b!2185891 (= res!939282 (not ((_ is ElementMatch!6047) r!12534)))))

(assert (=> b!2185891 (= e!1396952 e!1396949)))

(declare-fun b!2185892 () Bool)

(assert (=> b!2185892 (= e!1396951 e!1396950)))

(declare-fun res!939283 () Bool)

(assert (=> b!2185892 (=> res!939283 e!1396950)))

(assert (=> b!2185892 (= res!939283 call!131517)))

(declare-fun b!2185893 () Bool)

(assert (=> b!2185893 (= e!1396948 (nullable!1711 r!12534))))

(assert (= (and d!655039 c!347516) b!2185893))

(assert (= (and d!655039 (not c!347516)) b!2185881))

(assert (= (and d!655039 c!347518) b!2185882))

(assert (= (and d!655039 (not c!347518)) b!2185885))

(assert (= (and b!2185885 c!347517) b!2185880))

(assert (= (and b!2185885 (not c!347517)) b!2185891))

(assert (= (and b!2185891 (not res!939282)) b!2185889))

(assert (= (and b!2185889 res!939289) b!2185890))

(assert (= (and b!2185890 res!939288) b!2185886))

(assert (= (and b!2185886 res!939287) b!2185888))

(assert (= (and b!2185889 (not res!939284)) b!2185883))

(assert (= (and b!2185883 res!939285) b!2185892))

(assert (= (and b!2185892 (not res!939283)) b!2185884))

(assert (= (and b!2185884 (not res!939286)) b!2185887))

(assert (= (or b!2185882 b!2185892 b!2185890) bm!131512))

(assert (=> d!655039 m!2627915))

(assert (=> d!655039 m!2627849))

(assert (=> bm!131512 m!2627915))

(declare-fun m!2628509 () Bool)

(assert (=> b!2185881 m!2628509))

(assert (=> b!2185881 m!2628509))

(declare-fun m!2628511 () Bool)

(assert (=> b!2185881 m!2628511))

(declare-fun m!2628513 () Bool)

(assert (=> b!2185881 m!2628513))

(assert (=> b!2185881 m!2628511))

(assert (=> b!2185881 m!2628513))

(declare-fun m!2628515 () Bool)

(assert (=> b!2185881 m!2628515))

(assert (=> b!2185888 m!2628509))

(assert (=> b!2185884 m!2628513))

(assert (=> b!2185884 m!2628513))

(declare-fun m!2628517 () Bool)

(assert (=> b!2185884 m!2628517))

(assert (=> b!2185886 m!2628513))

(assert (=> b!2185886 m!2628513))

(assert (=> b!2185886 m!2628517))

(assert (=> b!2185893 m!2628387))

(assert (=> b!2185887 m!2628509))

(assert (=> b!2185299 d!655039))

(declare-fun bm!131519 () Bool)

(declare-fun call!131524 () Bool)

(declare-fun c!347523 () Bool)

(declare-fun c!347524 () Bool)

(assert (=> bm!131519 (= call!131524 (validRegex!2323 (ite c!347523 (reg!6376 r!12534) (ite c!347524 (regOne!12607 r!12534) (regTwo!12606 r!12534)))))))

(declare-fun b!2185912 () Bool)

(declare-fun e!1396971 () Bool)

(declare-fun call!131525 () Bool)

(assert (=> b!2185912 (= e!1396971 call!131525)))

(declare-fun b!2185913 () Bool)

(declare-fun e!1396972 () Bool)

(declare-fun e!1396973 () Bool)

(assert (=> b!2185913 (= e!1396972 e!1396973)))

(assert (=> b!2185913 (= c!347523 ((_ is Star!6047) r!12534))))

(declare-fun bm!131520 () Bool)

(declare-fun call!131526 () Bool)

(assert (=> bm!131520 (= call!131526 call!131524)))

(declare-fun b!2185914 () Bool)

(declare-fun e!1396969 () Bool)

(assert (=> b!2185914 (= e!1396969 call!131524)))

(declare-fun b!2185915 () Bool)

(declare-fun e!1396975 () Bool)

(assert (=> b!2185915 (= e!1396973 e!1396975)))

(assert (=> b!2185915 (= c!347524 ((_ is Union!6047) r!12534))))

(declare-fun d!655041 () Bool)

(declare-fun res!939303 () Bool)

(assert (=> d!655041 (=> res!939303 e!1396972)))

(assert (=> d!655041 (= res!939303 ((_ is ElementMatch!6047) r!12534))))

(assert (=> d!655041 (= (validRegex!2323 r!12534) e!1396972)))

(declare-fun b!2185916 () Bool)

(declare-fun e!1396970 () Bool)

(declare-fun e!1396974 () Bool)

(assert (=> b!2185916 (= e!1396970 e!1396974)))

(declare-fun res!939300 () Bool)

(assert (=> b!2185916 (=> (not res!939300) (not e!1396974))))

(assert (=> b!2185916 (= res!939300 call!131525)))

(declare-fun b!2185917 () Bool)

(assert (=> b!2185917 (= e!1396973 e!1396969)))

(declare-fun res!939304 () Bool)

(assert (=> b!2185917 (= res!939304 (not (nullable!1711 (reg!6376 r!12534))))))

(assert (=> b!2185917 (=> (not res!939304) (not e!1396969))))

(declare-fun b!2185918 () Bool)

(assert (=> b!2185918 (= e!1396974 call!131526)))

(declare-fun b!2185919 () Bool)

(declare-fun res!939301 () Bool)

(assert (=> b!2185919 (=> res!939301 e!1396970)))

(assert (=> b!2185919 (= res!939301 (not ((_ is Concat!10349) r!12534)))))

(assert (=> b!2185919 (= e!1396975 e!1396970)))

(declare-fun bm!131521 () Bool)

(assert (=> bm!131521 (= call!131525 (validRegex!2323 (ite c!347524 (regTwo!12607 r!12534) (regOne!12606 r!12534))))))

(declare-fun b!2185920 () Bool)

(declare-fun res!939302 () Bool)

(assert (=> b!2185920 (=> (not res!939302) (not e!1396971))))

(assert (=> b!2185920 (= res!939302 call!131526)))

(assert (=> b!2185920 (= e!1396975 e!1396971)))

(assert (= (and d!655041 (not res!939303)) b!2185913))

(assert (= (and b!2185913 c!347523) b!2185917))

(assert (= (and b!2185913 (not c!347523)) b!2185915))

(assert (= (and b!2185917 res!939304) b!2185914))

(assert (= (and b!2185915 c!347524) b!2185920))

(assert (= (and b!2185915 (not c!347524)) b!2185919))

(assert (= (and b!2185920 res!939302) b!2185912))

(assert (= (and b!2185919 (not res!939301)) b!2185916))

(assert (= (and b!2185916 res!939300) b!2185918))

(assert (= (or b!2185912 b!2185916) bm!131521))

(assert (= (or b!2185920 b!2185918) bm!131520))

(assert (= (or b!2185914 bm!131520) bm!131519))

(declare-fun m!2628519 () Bool)

(assert (=> bm!131519 m!2628519))

(declare-fun m!2628521 () Bool)

(assert (=> b!2185917 m!2628521))

(declare-fun m!2628523 () Bool)

(assert (=> bm!131521 m!2628523))

(assert (=> start!211914 d!655041))

(declare-fun d!655043 () Bool)

(declare-fun isBalanced!2544 (Conc!8183) Bool)

(assert (=> d!655043 (= (inv!33596 totalInput!977) (isBalanced!2544 (c!347358 totalInput!977)))))

(declare-fun bs!448115 () Bool)

(assert (= bs!448115 d!655043))

(declare-fun m!2628525 () Bool)

(assert (=> bs!448115 m!2628525))

(assert (=> start!211914 d!655043))

(declare-fun d!655045 () Bool)

(assert (=> d!655045 (= (inv!33596 input!5540) (isBalanced!2544 (c!347358 input!5540)))))

(declare-fun bs!448116 () Bool)

(assert (= bs!448116 d!655045))

(declare-fun m!2628527 () Bool)

(assert (=> bs!448116 m!2628527))

(assert (=> start!211914 d!655045))

(declare-fun d!655047 () Bool)

(assert (=> d!655047 (= (matchR!2796 r!12534 (_1!14906 lt!815564)) (matchZipper!163 z!4055 (_1!14906 lt!815564)))))

(declare-fun lt!815943 () Unit!38391)

(declare-fun choose!12932 ((InoxSet Context!3234) List!25356 Regex!6047 List!25354) Unit!38391)

(assert (=> d!655047 (= lt!815943 (choose!12932 z!4055 lt!815552 r!12534 (_1!14906 lt!815564)))))

(assert (=> d!655047 (validRegex!2323 r!12534)))

(assert (=> d!655047 (= (theoremZipperRegexEquiv!73 z!4055 lt!815552 r!12534 (_1!14906 lt!815564)) lt!815943)))

(declare-fun bs!448117 () Bool)

(assert (= bs!448117 d!655047))

(assert (=> bs!448117 m!2627877))

(assert (=> bs!448117 m!2627895))

(declare-fun m!2628529 () Bool)

(assert (=> bs!448117 m!2628529))

(assert (=> bs!448117 m!2627849))

(assert (=> b!2185308 d!655047))

(declare-fun d!655049 () Bool)

(declare-fun lt!815944 () Int)

(assert (=> d!655049 (= lt!815944 (size!19745 (list!9702 (_1!14905 lt!815570))))))

(assert (=> d!655049 (= lt!815944 (size!19747 (c!347358 (_1!14905 lt!815570))))))

(assert (=> d!655049 (= (size!19744 (_1!14905 lt!815570)) lt!815944)))

(declare-fun bs!448118 () Bool)

(assert (= bs!448118 d!655049))

(assert (=> bs!448118 m!2627865))

(assert (=> bs!448118 m!2627865))

(declare-fun m!2628531 () Bool)

(assert (=> bs!448118 m!2628531))

(declare-fun m!2628533 () Bool)

(assert (=> bs!448118 m!2628533))

(assert (=> b!2185308 d!655049))

(declare-fun d!655051 () Bool)

(assert (=> d!655051 (= (matchR!2796 r!12534 lt!815551) (matchZipper!163 z!4055 lt!815551))))

(declare-fun lt!815945 () Unit!38391)

(assert (=> d!655051 (= lt!815945 (choose!12932 z!4055 lt!815552 r!12534 lt!815551))))

(assert (=> d!655051 (validRegex!2323 r!12534)))

(assert (=> d!655051 (= (theoremZipperRegexEquiv!73 z!4055 lt!815552 r!12534 lt!815551) lt!815945)))

(declare-fun bs!448119 () Bool)

(assert (= bs!448119 d!655051))

(assert (=> bs!448119 m!2627891))

(assert (=> bs!448119 m!2627929))

(declare-fun m!2628535 () Bool)

(assert (=> bs!448119 m!2628535))

(assert (=> bs!448119 m!2627849))

(assert (=> b!2185308 d!655051))

(declare-fun d!655053 () Bool)

(declare-fun lt!815946 () Int)

(assert (=> d!655053 (>= lt!815946 0)))

(declare-fun e!1396976 () Int)

(assert (=> d!655053 (= lt!815946 e!1396976)))

(declare-fun c!347525 () Bool)

(assert (=> d!655053 (= c!347525 ((_ is Nil!25270) (_1!14906 lt!815564)))))

(assert (=> d!655053 (= (size!19745 (_1!14906 lt!815564)) lt!815946)))

(declare-fun b!2185921 () Bool)

(assert (=> b!2185921 (= e!1396976 0)))

(declare-fun b!2185922 () Bool)

(assert (=> b!2185922 (= e!1396976 (+ 1 (size!19745 (t!197944 (_1!14906 lt!815564)))))))

(assert (= (and d!655053 c!347525) b!2185921))

(assert (= (and d!655053 (not c!347525)) b!2185922))

(declare-fun m!2628537 () Bool)

(assert (=> b!2185922 m!2628537))

(assert (=> b!2185308 d!655053))

(declare-fun b!2185923 () Bool)

(declare-fun e!1396981 () Bool)

(declare-fun lt!815947 () Bool)

(assert (=> b!2185923 (= e!1396981 (not lt!815947))))

(declare-fun b!2185924 () Bool)

(declare-fun e!1396977 () Bool)

(assert (=> b!2185924 (= e!1396977 (matchR!2796 (derivativeStep!1454 r!12534 (head!4668 lt!815551)) (tail!3140 lt!815551)))))

(declare-fun b!2185925 () Bool)

(declare-fun e!1396983 () Bool)

(declare-fun call!131527 () Bool)

(assert (=> b!2185925 (= e!1396983 (= lt!815947 call!131527))))

(declare-fun b!2185926 () Bool)

(declare-fun e!1396978 () Bool)

(declare-fun e!1396980 () Bool)

(assert (=> b!2185926 (= e!1396978 e!1396980)))

(declare-fun res!939308 () Bool)

(assert (=> b!2185926 (=> (not res!939308) (not e!1396980))))

(assert (=> b!2185926 (= res!939308 (not lt!815947))))

(declare-fun b!2185927 () Bool)

(declare-fun res!939309 () Bool)

(declare-fun e!1396979 () Bool)

(assert (=> b!2185927 (=> res!939309 e!1396979)))

(assert (=> b!2185927 (= res!939309 (not (isEmpty!14524 (tail!3140 lt!815551))))))

(declare-fun b!2185928 () Bool)

(assert (=> b!2185928 (= e!1396983 e!1396981)))

(declare-fun c!347527 () Bool)

(assert (=> b!2185928 (= c!347527 ((_ is EmptyLang!6047) r!12534))))

(declare-fun b!2185929 () Bool)

(declare-fun res!939310 () Bool)

(declare-fun e!1396982 () Bool)

(assert (=> b!2185929 (=> (not res!939310) (not e!1396982))))

(assert (=> b!2185929 (= res!939310 (isEmpty!14524 (tail!3140 lt!815551)))))

(declare-fun bm!131522 () Bool)

(assert (=> bm!131522 (= call!131527 (isEmpty!14524 lt!815551))))

(declare-fun d!655055 () Bool)

(assert (=> d!655055 e!1396983))

(declare-fun c!347528 () Bool)

(assert (=> d!655055 (= c!347528 ((_ is EmptyExpr!6047) r!12534))))

(assert (=> d!655055 (= lt!815947 e!1396977)))

(declare-fun c!347526 () Bool)

(assert (=> d!655055 (= c!347526 (isEmpty!14524 lt!815551))))

(assert (=> d!655055 (validRegex!2323 r!12534)))

(assert (=> d!655055 (= (matchR!2796 r!12534 lt!815551) lt!815947)))

(declare-fun b!2185930 () Bool)

(assert (=> b!2185930 (= e!1396979 (not (= (head!4668 lt!815551) (c!347359 r!12534))))))

(declare-fun b!2185931 () Bool)

(assert (=> b!2185931 (= e!1396982 (= (head!4668 lt!815551) (c!347359 r!12534)))))

(declare-fun b!2185932 () Bool)

(declare-fun res!939307 () Bool)

(assert (=> b!2185932 (=> res!939307 e!1396978)))

(assert (=> b!2185932 (= res!939307 e!1396982)))

(declare-fun res!939312 () Bool)

(assert (=> b!2185932 (=> (not res!939312) (not e!1396982))))

(assert (=> b!2185932 (= res!939312 lt!815947)))

(declare-fun b!2185933 () Bool)

(declare-fun res!939311 () Bool)

(assert (=> b!2185933 (=> (not res!939311) (not e!1396982))))

(assert (=> b!2185933 (= res!939311 (not call!131527))))

(declare-fun b!2185934 () Bool)

(declare-fun res!939305 () Bool)

(assert (=> b!2185934 (=> res!939305 e!1396978)))

(assert (=> b!2185934 (= res!939305 (not ((_ is ElementMatch!6047) r!12534)))))

(assert (=> b!2185934 (= e!1396981 e!1396978)))

(declare-fun b!2185935 () Bool)

(assert (=> b!2185935 (= e!1396980 e!1396979)))

(declare-fun res!939306 () Bool)

(assert (=> b!2185935 (=> res!939306 e!1396979)))

(assert (=> b!2185935 (= res!939306 call!131527)))

(declare-fun b!2185936 () Bool)

(assert (=> b!2185936 (= e!1396977 (nullable!1711 r!12534))))

(assert (= (and d!655055 c!347526) b!2185936))

(assert (= (and d!655055 (not c!347526)) b!2185924))

(assert (= (and d!655055 c!347528) b!2185925))

(assert (= (and d!655055 (not c!347528)) b!2185928))

(assert (= (and b!2185928 c!347527) b!2185923))

(assert (= (and b!2185928 (not c!347527)) b!2185934))

(assert (= (and b!2185934 (not res!939305)) b!2185932))

(assert (= (and b!2185932 res!939312) b!2185933))

(assert (= (and b!2185933 res!939311) b!2185929))

(assert (= (and b!2185929 res!939310) b!2185931))

(assert (= (and b!2185932 (not res!939307)) b!2185926))

(assert (= (and b!2185926 res!939308) b!2185935))

(assert (= (and b!2185935 (not res!939306)) b!2185927))

(assert (= (and b!2185927 (not res!939309)) b!2185930))

(assert (= (or b!2185925 b!2185935 b!2185933) bm!131522))

(assert (=> d!655055 m!2628417))

(assert (=> d!655055 m!2627849))

(assert (=> bm!131522 m!2628417))

(assert (=> b!2185924 m!2627983))

(assert (=> b!2185924 m!2627983))

(declare-fun m!2628539 () Bool)

(assert (=> b!2185924 m!2628539))

(assert (=> b!2185924 m!2627977))

(assert (=> b!2185924 m!2628539))

(assert (=> b!2185924 m!2627977))

(declare-fun m!2628541 () Bool)

(assert (=> b!2185924 m!2628541))

(assert (=> b!2185931 m!2627983))

(assert (=> b!2185927 m!2627977))

(assert (=> b!2185927 m!2627977))

(declare-fun m!2628543 () Bool)

(assert (=> b!2185927 m!2628543))

(assert (=> b!2185929 m!2627977))

(assert (=> b!2185929 m!2627977))

(assert (=> b!2185929 m!2628543))

(assert (=> b!2185936 m!2628387))

(assert (=> b!2185930 m!2627983))

(assert (=> b!2185308 d!655055))

(declare-fun d!655057 () Bool)

(declare-fun c!347529 () Bool)

(assert (=> d!655057 (= c!347529 (isEmpty!14524 (_1!14906 lt!815564)))))

(declare-fun e!1396984 () Bool)

(assert (=> d!655057 (= (matchZipper!163 z!4055 (_1!14906 lt!815564)) e!1396984)))

(declare-fun b!2185937 () Bool)

(assert (=> b!2185937 (= e!1396984 (nullableZipper!327 z!4055))))

(declare-fun b!2185938 () Bool)

(assert (=> b!2185938 (= e!1396984 (matchZipper!163 (derivationStepZipper!140 z!4055 (head!4668 (_1!14906 lt!815564))) (tail!3140 (_1!14906 lt!815564))))))

(assert (= (and d!655057 c!347529) b!2185937))

(assert (= (and d!655057 (not c!347529)) b!2185938))

(assert (=> d!655057 m!2627907))

(assert (=> b!2185937 m!2627939))

(assert (=> b!2185938 m!2628429))

(assert (=> b!2185938 m!2628429))

(declare-fun m!2628545 () Bool)

(assert (=> b!2185938 m!2628545))

(assert (=> b!2185938 m!2628423))

(assert (=> b!2185938 m!2628545))

(assert (=> b!2185938 m!2628423))

(declare-fun m!2628547 () Bool)

(assert (=> b!2185938 m!2628547))

(assert (=> b!2185308 d!655057))

(declare-fun d!655059 () Bool)

(declare-fun c!347532 () Bool)

(assert (=> d!655059 (= c!347532 ((_ is Node!8183) (c!347358 input!5540)))))

(declare-fun e!1396989 () Bool)

(assert (=> d!655059 (= (inv!33594 (c!347358 input!5540)) e!1396989)))

(declare-fun b!2185945 () Bool)

(declare-fun inv!33600 (Conc!8183) Bool)

(assert (=> b!2185945 (= e!1396989 (inv!33600 (c!347358 input!5540)))))

(declare-fun b!2185946 () Bool)

(declare-fun e!1396990 () Bool)

(assert (=> b!2185946 (= e!1396989 e!1396990)))

(declare-fun res!939315 () Bool)

(assert (=> b!2185946 (= res!939315 (not ((_ is Leaf!11974) (c!347358 input!5540))))))

(assert (=> b!2185946 (=> res!939315 e!1396990)))

(declare-fun b!2185947 () Bool)

(declare-fun inv!33601 (Conc!8183) Bool)

(assert (=> b!2185947 (= e!1396990 (inv!33601 (c!347358 input!5540)))))

(assert (= (and d!655059 c!347532) b!2185945))

(assert (= (and d!655059 (not c!347532)) b!2185946))

(assert (= (and b!2185946 (not res!939315)) b!2185947))

(declare-fun m!2628549 () Bool)

(assert (=> b!2185945 m!2628549))

(declare-fun m!2628551 () Bool)

(assert (=> b!2185947 m!2628551))

(assert (=> b!2185318 d!655059))

(declare-fun d!655061 () Bool)

(declare-fun e!1396993 () Bool)

(assert (=> d!655061 e!1396993))

(declare-fun res!939317 () Bool)

(assert (=> d!655061 (=> res!939317 e!1396993)))

(declare-fun lt!815948 () Bool)

(assert (=> d!655061 (= res!939317 (not lt!815948))))

(declare-fun e!1396991 () Bool)

(assert (=> d!655061 (= lt!815948 e!1396991)))

(declare-fun res!939319 () Bool)

(assert (=> d!655061 (=> res!939319 e!1396991)))

(assert (=> d!655061 (= res!939319 ((_ is Nil!25270) (_1!14906 lt!815564)))))

(assert (=> d!655061 (= (isPrefix!2163 (_1!14906 lt!815564) lt!815559) lt!815948)))

(declare-fun b!2185948 () Bool)

(declare-fun e!1396992 () Bool)

(assert (=> b!2185948 (= e!1396991 e!1396992)))

(declare-fun res!939318 () Bool)

(assert (=> b!2185948 (=> (not res!939318) (not e!1396992))))

(assert (=> b!2185948 (= res!939318 (not ((_ is Nil!25270) lt!815559)))))

(declare-fun b!2185950 () Bool)

(assert (=> b!2185950 (= e!1396992 (isPrefix!2163 (tail!3140 (_1!14906 lt!815564)) (tail!3140 lt!815559)))))

(declare-fun b!2185949 () Bool)

(declare-fun res!939316 () Bool)

(assert (=> b!2185949 (=> (not res!939316) (not e!1396992))))

(assert (=> b!2185949 (= res!939316 (= (head!4668 (_1!14906 lt!815564)) (head!4668 lt!815559)))))

(declare-fun b!2185951 () Bool)

(assert (=> b!2185951 (= e!1396993 (>= (size!19745 lt!815559) (size!19745 (_1!14906 lt!815564))))))

(assert (= (and d!655061 (not res!939319)) b!2185948))

(assert (= (and b!2185948 res!939318) b!2185949))

(assert (= (and b!2185949 res!939316) b!2185950))

(assert (= (and d!655061 (not res!939317)) b!2185951))

(assert (=> b!2185950 m!2628423))

(assert (=> b!2185950 m!2628357))

(assert (=> b!2185950 m!2628423))

(assert (=> b!2185950 m!2628357))

(declare-fun m!2628553 () Bool)

(assert (=> b!2185950 m!2628553))

(assert (=> b!2185949 m!2628429))

(assert (=> b!2185949 m!2628377))

(assert (=> b!2185951 m!2627911))

(assert (=> b!2185951 m!2627897))

(assert (=> b!2185301 d!655061))

(declare-fun d!655063 () Bool)

(declare-fun lambda!82091 () Int)

(declare-fun forall!5189 (List!25355 Int) Bool)

(assert (=> d!655063 (= (inv!33595 setElem!18346) (forall!5189 (exprs!2117 setElem!18346) lambda!82091))))

(declare-fun bs!448120 () Bool)

(assert (= bs!448120 d!655063))

(declare-fun m!2628555 () Bool)

(assert (=> bs!448120 m!2628555))

(assert (=> setNonEmpty!18346 d!655063))

(declare-fun d!655065 () Bool)

(declare-fun e!1396996 () Bool)

(assert (=> d!655065 e!1396996))

(declare-fun res!939322 () Bool)

(assert (=> d!655065 (=> res!939322 e!1396996)))

(declare-fun lt!815951 () Bool)

(assert (=> d!655065 (= res!939322 (not lt!815951))))

(assert (=> d!655065 (= lt!815951 (= lt!815559 (drop!1265 lt!815568 (- (size!19745 lt!815568) (size!19745 lt!815559)))))))

(assert (=> d!655065 (= (isSuffix!714 lt!815559 lt!815568) lt!815951)))

(declare-fun b!2185954 () Bool)

(assert (=> b!2185954 (= e!1396996 (>= (size!19745 lt!815568) (size!19745 lt!815559)))))

(assert (= (and d!655065 (not res!939322)) b!2185954))

(assert (=> d!655065 m!2627957))

(assert (=> d!655065 m!2627911))

(declare-fun m!2628557 () Bool)

(assert (=> d!655065 m!2628557))

(assert (=> b!2185954 m!2627957))

(assert (=> b!2185954 m!2627911))

(assert (=> b!2185321 d!655065))

(declare-fun d!655067 () Bool)

(assert (=> d!655067 (= (list!9702 totalInput!977) (list!9704 (c!347358 totalInput!977)))))

(declare-fun bs!448121 () Bool)

(assert (= bs!448121 d!655067))

(declare-fun m!2628559 () Bool)

(assert (=> bs!448121 m!2628559))

(assert (=> b!2185321 d!655067))

(declare-fun d!655069 () Bool)

(assert (=> d!655069 (= (list!9702 input!5540) (list!9704 (c!347358 input!5540)))))

(declare-fun bs!448122 () Bool)

(assert (= bs!448122 d!655069))

(declare-fun m!2628561 () Bool)

(assert (=> bs!448122 m!2628561))

(assert (=> b!2185321 d!655069))

(declare-fun b!2185958 () Bool)

(declare-fun e!1396997 () Bool)

(declare-fun lt!815952 () List!25354)

(assert (=> b!2185958 (= e!1396997 (or (not (= (_2!14906 lt!815564) Nil!25270)) (= lt!815952 (_1!14906 lt!815564))))))

(declare-fun b!2185955 () Bool)

(declare-fun e!1396998 () List!25354)

(assert (=> b!2185955 (= e!1396998 (_2!14906 lt!815564))))

(declare-fun b!2185957 () Bool)

(declare-fun res!939323 () Bool)

(assert (=> b!2185957 (=> (not res!939323) (not e!1396997))))

(assert (=> b!2185957 (= res!939323 (= (size!19745 lt!815952) (+ (size!19745 (_1!14906 lt!815564)) (size!19745 (_2!14906 lt!815564)))))))

(declare-fun d!655071 () Bool)

(assert (=> d!655071 e!1396997))

(declare-fun res!939324 () Bool)

(assert (=> d!655071 (=> (not res!939324) (not e!1396997))))

(assert (=> d!655071 (= res!939324 (= (content!3447 lt!815952) ((_ map or) (content!3447 (_1!14906 lt!815564)) (content!3447 (_2!14906 lt!815564)))))))

(assert (=> d!655071 (= lt!815952 e!1396998)))

(declare-fun c!347533 () Bool)

(assert (=> d!655071 (= c!347533 ((_ is Nil!25270) (_1!14906 lt!815564)))))

(assert (=> d!655071 (= (++!6408 (_1!14906 lt!815564) (_2!14906 lt!815564)) lt!815952)))

(declare-fun b!2185956 () Bool)

(assert (=> b!2185956 (= e!1396998 (Cons!25270 (h!30671 (_1!14906 lt!815564)) (++!6408 (t!197944 (_1!14906 lt!815564)) (_2!14906 lt!815564))))))

(assert (= (and d!655071 c!347533) b!2185955))

(assert (= (and d!655071 (not c!347533)) b!2185956))

(assert (= (and d!655071 res!939324) b!2185957))

(assert (= (and b!2185957 res!939323) b!2185958))

(declare-fun m!2628563 () Bool)

(assert (=> b!2185957 m!2628563))

(assert (=> b!2185957 m!2627897))

(declare-fun m!2628565 () Bool)

(assert (=> b!2185957 m!2628565))

(declare-fun m!2628567 () Bool)

(assert (=> d!655071 m!2628567))

(declare-fun m!2628569 () Bool)

(assert (=> d!655071 m!2628569))

(declare-fun m!2628571 () Bool)

(assert (=> d!655071 m!2628571))

(declare-fun m!2628573 () Bool)

(assert (=> b!2185956 m!2628573))

(assert (=> b!2185320 d!655071))

(declare-fun d!655073 () Bool)

(declare-fun c!347534 () Bool)

(assert (=> d!655073 (= c!347534 ((_ is Node!8183) (c!347358 totalInput!977)))))

(declare-fun e!1396999 () Bool)

(assert (=> d!655073 (= (inv!33594 (c!347358 totalInput!977)) e!1396999)))

(declare-fun b!2185959 () Bool)

(assert (=> b!2185959 (= e!1396999 (inv!33600 (c!347358 totalInput!977)))))

(declare-fun b!2185960 () Bool)

(declare-fun e!1397000 () Bool)

(assert (=> b!2185960 (= e!1396999 e!1397000)))

(declare-fun res!939325 () Bool)

(assert (=> b!2185960 (= res!939325 (not ((_ is Leaf!11974) (c!347358 totalInput!977))))))

(assert (=> b!2185960 (=> res!939325 e!1397000)))

(declare-fun b!2185961 () Bool)

(assert (=> b!2185961 (= e!1397000 (inv!33601 (c!347358 totalInput!977)))))

(assert (= (and d!655073 c!347534) b!2185959))

(assert (= (and d!655073 (not c!347534)) b!2185960))

(assert (= (and b!2185960 (not res!939325)) b!2185961))

(declare-fun m!2628575 () Bool)

(assert (=> b!2185959 m!2628575))

(declare-fun m!2628577 () Bool)

(assert (=> b!2185961 m!2628577))

(assert (=> b!2185300 d!655073))

(declare-fun d!655075 () Bool)

(declare-fun c!347535 () Bool)

(assert (=> d!655075 (= c!347535 (isEmpty!14524 (take!255 (drop!1265 lt!815568 lt!815554) lt!815569)))))

(declare-fun e!1397001 () Bool)

(assert (=> d!655075 (= (matchZipper!163 z!4055 (take!255 (drop!1265 lt!815568 lt!815554) lt!815569)) e!1397001)))

(declare-fun b!2185962 () Bool)

(assert (=> b!2185962 (= e!1397001 (nullableZipper!327 z!4055))))

(declare-fun b!2185963 () Bool)

(assert (=> b!2185963 (= e!1397001 (matchZipper!163 (derivationStepZipper!140 z!4055 (head!4668 (take!255 (drop!1265 lt!815568 lt!815554) lt!815569))) (tail!3140 (take!255 (drop!1265 lt!815568 lt!815554) lt!815569))))))

(assert (= (and d!655075 c!347535) b!2185962))

(assert (= (and d!655075 (not c!347535)) b!2185963))

(assert (=> d!655075 m!2627903))

(declare-fun m!2628579 () Bool)

(assert (=> d!655075 m!2628579))

(assert (=> b!2185962 m!2627939))

(assert (=> b!2185963 m!2627903))

(declare-fun m!2628581 () Bool)

(assert (=> b!2185963 m!2628581))

(assert (=> b!2185963 m!2628581))

(declare-fun m!2628583 () Bool)

(assert (=> b!2185963 m!2628583))

(assert (=> b!2185963 m!2627903))

(declare-fun m!2628585 () Bool)

(assert (=> b!2185963 m!2628585))

(assert (=> b!2185963 m!2628583))

(assert (=> b!2185963 m!2628585))

(declare-fun m!2628587 () Bool)

(assert (=> b!2185963 m!2628587))

(assert (=> b!2185311 d!655075))

(declare-fun b!2185965 () Bool)

(declare-fun e!1397005 () Bool)

(declare-fun lt!815953 () List!25354)

(declare-fun e!1397002 () Int)

(assert (=> b!2185965 (= e!1397005 (= (size!19745 lt!815953) e!1397002))))

(declare-fun c!347538 () Bool)

(assert (=> b!2185965 (= c!347538 (<= lt!815569 0))))

(declare-fun b!2185966 () Bool)

(assert (=> b!2185966 (= e!1397002 0)))

(declare-fun b!2185967 () Bool)

(declare-fun e!1397004 () List!25354)

(assert (=> b!2185967 (= e!1397004 Nil!25270)))

(declare-fun b!2185968 () Bool)

(declare-fun e!1397003 () Int)

(assert (=> b!2185968 (= e!1397003 lt!815569)))

(declare-fun d!655077 () Bool)

(assert (=> d!655077 e!1397005))

(declare-fun res!939326 () Bool)

(assert (=> d!655077 (=> (not res!939326) (not e!1397005))))

(assert (=> d!655077 (= res!939326 (= ((_ map implies) (content!3447 lt!815953) (content!3447 (drop!1265 lt!815568 lt!815554))) ((as const (InoxSet C!12240)) true)))))

(assert (=> d!655077 (= lt!815953 e!1397004)))

(declare-fun c!347537 () Bool)

(assert (=> d!655077 (= c!347537 (or ((_ is Nil!25270) (drop!1265 lt!815568 lt!815554)) (<= lt!815569 0)))))

(assert (=> d!655077 (= (take!255 (drop!1265 lt!815568 lt!815554) lt!815569) lt!815953)))

(declare-fun b!2185964 () Bool)

(assert (=> b!2185964 (= e!1397004 (Cons!25270 (h!30671 (drop!1265 lt!815568 lt!815554)) (take!255 (t!197944 (drop!1265 lt!815568 lt!815554)) (- lt!815569 1))))))

(declare-fun b!2185969 () Bool)

(assert (=> b!2185969 (= e!1397002 e!1397003)))

(declare-fun c!347536 () Bool)

(assert (=> b!2185969 (= c!347536 (>= lt!815569 (size!19745 (drop!1265 lt!815568 lt!815554))))))

(declare-fun b!2185970 () Bool)

(assert (=> b!2185970 (= e!1397003 (size!19745 (drop!1265 lt!815568 lt!815554)))))

(assert (= (and d!655077 c!347537) b!2185967))

(assert (= (and d!655077 (not c!347537)) b!2185964))

(assert (= (and d!655077 res!939326) b!2185965))

(assert (= (and b!2185965 c!347538) b!2185966))

(assert (= (and b!2185965 (not c!347538)) b!2185969))

(assert (= (and b!2185969 c!347536) b!2185970))

(assert (= (and b!2185969 (not c!347536)) b!2185968))

(declare-fun m!2628589 () Bool)

(assert (=> d!655077 m!2628589))

(assert (=> d!655077 m!2627901))

(declare-fun m!2628591 () Bool)

(assert (=> d!655077 m!2628591))

(assert (=> b!2185969 m!2627901))

(declare-fun m!2628593 () Bool)

(assert (=> b!2185969 m!2628593))

(declare-fun m!2628595 () Bool)

(assert (=> b!2185965 m!2628595))

(assert (=> b!2185970 m!2627901))

(assert (=> b!2185970 m!2628593))

(declare-fun m!2628597 () Bool)

(assert (=> b!2185964 m!2628597))

(assert (=> b!2185311 d!655077))

(declare-fun b!2185989 () Bool)

(declare-fun e!1397020 () Int)

(declare-fun call!131530 () Int)

(assert (=> b!2185989 (= e!1397020 (- call!131530 lt!815554))))

(declare-fun b!2185990 () Bool)

(declare-fun e!1397018 () Bool)

(declare-fun lt!815956 () List!25354)

(declare-fun e!1397017 () Int)

(assert (=> b!2185990 (= e!1397018 (= (size!19745 lt!815956) e!1397017))))

(declare-fun c!347550 () Bool)

(assert (=> b!2185990 (= c!347550 (<= lt!815554 0))))

(declare-fun d!655079 () Bool)

(assert (=> d!655079 e!1397018))

(declare-fun res!939329 () Bool)

(assert (=> d!655079 (=> (not res!939329) (not e!1397018))))

(assert (=> d!655079 (= res!939329 (= ((_ map implies) (content!3447 lt!815956) (content!3447 lt!815568)) ((as const (InoxSet C!12240)) true)))))

(declare-fun e!1397016 () List!25354)

(assert (=> d!655079 (= lt!815956 e!1397016)))

(declare-fun c!347547 () Bool)

(assert (=> d!655079 (= c!347547 ((_ is Nil!25270) lt!815568))))

(assert (=> d!655079 (= (drop!1265 lt!815568 lt!815554) lt!815956)))

(declare-fun b!2185991 () Bool)

(declare-fun e!1397019 () List!25354)

(assert (=> b!2185991 (= e!1397019 lt!815568)))

(declare-fun b!2185992 () Bool)

(assert (=> b!2185992 (= e!1397020 0)))

(declare-fun bm!131525 () Bool)

(assert (=> bm!131525 (= call!131530 (size!19745 lt!815568))))

(declare-fun b!2185993 () Bool)

(assert (=> b!2185993 (= e!1397017 call!131530)))

(declare-fun b!2185994 () Bool)

(assert (=> b!2185994 (= e!1397019 (drop!1265 (t!197944 lt!815568) (- lt!815554 1)))))

(declare-fun b!2185995 () Bool)

(assert (=> b!2185995 (= e!1397016 e!1397019)))

(declare-fun c!347549 () Bool)

(assert (=> b!2185995 (= c!347549 (<= lt!815554 0))))

(declare-fun b!2185996 () Bool)

(assert (=> b!2185996 (= e!1397017 e!1397020)))

(declare-fun c!347548 () Bool)

(assert (=> b!2185996 (= c!347548 (>= lt!815554 call!131530))))

(declare-fun b!2185997 () Bool)

(assert (=> b!2185997 (= e!1397016 Nil!25270)))

(assert (= (and d!655079 c!347547) b!2185997))

(assert (= (and d!655079 (not c!347547)) b!2185995))

(assert (= (and b!2185995 c!347549) b!2185991))

(assert (= (and b!2185995 (not c!347549)) b!2185994))

(assert (= (and d!655079 res!939329) b!2185990))

(assert (= (and b!2185990 c!347550) b!2185993))

(assert (= (and b!2185990 (not c!347550)) b!2185996))

(assert (= (and b!2185996 c!347548) b!2185992))

(assert (= (and b!2185996 (not c!347548)) b!2185989))

(assert (= (or b!2185993 b!2185996 b!2185989) bm!131525))

(declare-fun m!2628599 () Bool)

(assert (=> b!2185990 m!2628599))

(declare-fun m!2628601 () Bool)

(assert (=> d!655079 m!2628601))

(assert (=> d!655079 m!2627955))

(assert (=> bm!131525 m!2627957))

(declare-fun m!2628603 () Bool)

(assert (=> b!2185994 m!2628603))

(assert (=> b!2185311 d!655079))

(declare-fun d!655081 () Bool)

(declare-fun lt!815957 () Int)

(assert (=> d!655081 (>= lt!815957 0)))

(declare-fun e!1397021 () Int)

(assert (=> d!655081 (= lt!815957 e!1397021)))

(declare-fun c!347551 () Bool)

(assert (=> d!655081 (= c!347551 ((_ is Nil!25270) lt!815551))))

(assert (=> d!655081 (= (size!19745 lt!815551) lt!815957)))

(declare-fun b!2185998 () Bool)

(assert (=> b!2185998 (= e!1397021 0)))

(declare-fun b!2185999 () Bool)

(assert (=> b!2185999 (= e!1397021 (+ 1 (size!19745 (t!197944 lt!815551))))))

(assert (= (and d!655081 c!347551) b!2185998))

(assert (= (and d!655081 (not c!347551)) b!2185999))

(declare-fun m!2628605 () Bool)

(assert (=> b!2185999 m!2628605))

(assert (=> b!2185314 d!655081))

(declare-fun d!655083 () Bool)

(declare-fun e!1397024 () Bool)

(assert (=> d!655083 e!1397024))

(declare-fun res!939331 () Bool)

(assert (=> d!655083 (=> res!939331 e!1397024)))

(declare-fun lt!815958 () Bool)

(assert (=> d!655083 (= res!939331 (not lt!815958))))

(declare-fun e!1397022 () Bool)

(assert (=> d!655083 (= lt!815958 e!1397022)))

(declare-fun res!939333 () Bool)

(assert (=> d!655083 (=> res!939333 e!1397022)))

(assert (=> d!655083 (= res!939333 ((_ is Nil!25270) lt!815551))))

(assert (=> d!655083 (= (isPrefix!2163 lt!815551 lt!815559) lt!815958)))

(declare-fun b!2186000 () Bool)

(declare-fun e!1397023 () Bool)

(assert (=> b!2186000 (= e!1397022 e!1397023)))

(declare-fun res!939332 () Bool)

(assert (=> b!2186000 (=> (not res!939332) (not e!1397023))))

(assert (=> b!2186000 (= res!939332 (not ((_ is Nil!25270) lt!815559)))))

(declare-fun b!2186002 () Bool)

(assert (=> b!2186002 (= e!1397023 (isPrefix!2163 (tail!3140 lt!815551) (tail!3140 lt!815559)))))

(declare-fun b!2186001 () Bool)

(declare-fun res!939330 () Bool)

(assert (=> b!2186001 (=> (not res!939330) (not e!1397023))))

(assert (=> b!2186001 (= res!939330 (= (head!4668 lt!815551) (head!4668 lt!815559)))))

(declare-fun b!2186003 () Bool)

(assert (=> b!2186003 (= e!1397024 (>= (size!19745 lt!815559) (size!19745 lt!815551)))))

(assert (= (and d!655083 (not res!939333)) b!2186000))

(assert (= (and b!2186000 res!939332) b!2186001))

(assert (= (and b!2186001 res!939330) b!2186002))

(assert (= (and d!655083 (not res!939331)) b!2186003))

(assert (=> b!2186002 m!2627977))

(assert (=> b!2186002 m!2628357))

(assert (=> b!2186002 m!2627977))

(assert (=> b!2186002 m!2628357))

(declare-fun m!2628607 () Bool)

(assert (=> b!2186002 m!2628607))

(assert (=> b!2186001 m!2627983))

(assert (=> b!2186001 m!2628377))

(assert (=> b!2186003 m!2627911))

(assert (=> b!2186003 m!2627881))

(assert (=> b!2185303 d!655083))

(declare-fun condSetEmpty!18352 () Bool)

(assert (=> setNonEmpty!18346 (= condSetEmpty!18352 (= setRest!18346 ((as const (Array Context!3234 Bool)) false)))))

(declare-fun setRes!18352 () Bool)

(assert (=> setNonEmpty!18346 (= tp!681630 setRes!18352)))

(declare-fun setIsEmpty!18352 () Bool)

(assert (=> setIsEmpty!18352 setRes!18352))

(declare-fun setElem!18352 () Context!3234)

(declare-fun tp!681694 () Bool)

(declare-fun setNonEmpty!18352 () Bool)

(declare-fun e!1397027 () Bool)

(assert (=> setNonEmpty!18352 (= setRes!18352 (and tp!681694 (inv!33595 setElem!18352) e!1397027))))

(declare-fun setRest!18352 () (InoxSet Context!3234))

(assert (=> setNonEmpty!18352 (= setRest!18346 ((_ map or) (store ((as const (Array Context!3234 Bool)) false) setElem!18352 true) setRest!18352))))

(declare-fun b!2186008 () Bool)

(declare-fun tp!681695 () Bool)

(assert (=> b!2186008 (= e!1397027 tp!681695)))

(assert (= (and setNonEmpty!18346 condSetEmpty!18352) setIsEmpty!18352))

(assert (= (and setNonEmpty!18346 (not condSetEmpty!18352)) setNonEmpty!18352))

(assert (= setNonEmpty!18352 b!2186008))

(declare-fun m!2628609 () Bool)

(assert (=> setNonEmpty!18352 m!2628609))

(declare-fun b!2186022 () Bool)

(declare-fun e!1397030 () Bool)

(declare-fun tp!681709 () Bool)

(declare-fun tp!681710 () Bool)

(assert (=> b!2186022 (= e!1397030 (and tp!681709 tp!681710))))

(declare-fun b!2186021 () Bool)

(declare-fun tp!681706 () Bool)

(assert (=> b!2186021 (= e!1397030 tp!681706)))

(declare-fun b!2186020 () Bool)

(declare-fun tp!681708 () Bool)

(declare-fun tp!681707 () Bool)

(assert (=> b!2186020 (= e!1397030 (and tp!681708 tp!681707))))

(assert (=> b!2185315 (= tp!681623 e!1397030)))

(declare-fun b!2186019 () Bool)

(assert (=> b!2186019 (= e!1397030 tp_is_empty!9701)))

(assert (= (and b!2185315 ((_ is ElementMatch!6047) (reg!6376 r!12534))) b!2186019))

(assert (= (and b!2185315 ((_ is Concat!10349) (reg!6376 r!12534))) b!2186020))

(assert (= (and b!2185315 ((_ is Star!6047) (reg!6376 r!12534))) b!2186021))

(assert (= (and b!2185315 ((_ is Union!6047) (reg!6376 r!12534))) b!2186022))

(declare-fun tp!681717 () Bool)

(declare-fun e!1397036 () Bool)

(declare-fun tp!681719 () Bool)

(declare-fun b!2186031 () Bool)

(assert (=> b!2186031 (= e!1397036 (and (inv!33594 (left!19397 (c!347358 totalInput!977))) tp!681717 (inv!33594 (right!19727 (c!347358 totalInput!977))) tp!681719))))

(declare-fun b!2186033 () Bool)

(declare-fun e!1397035 () Bool)

(declare-fun tp!681718 () Bool)

(assert (=> b!2186033 (= e!1397035 tp!681718)))

(declare-fun b!2186032 () Bool)

(declare-fun inv!33602 (IArray!16371) Bool)

(assert (=> b!2186032 (= e!1397036 (and (inv!33602 (xs!11125 (c!347358 totalInput!977))) e!1397035))))

(assert (=> b!2185300 (= tp!681622 (and (inv!33594 (c!347358 totalInput!977)) e!1397036))))

(assert (= (and b!2185300 ((_ is Node!8183) (c!347358 totalInput!977))) b!2186031))

(assert (= b!2186032 b!2186033))

(assert (= (and b!2185300 ((_ is Leaf!11974) (c!347358 totalInput!977))) b!2186032))

(declare-fun m!2628611 () Bool)

(assert (=> b!2186031 m!2628611))

(declare-fun m!2628613 () Bool)

(assert (=> b!2186031 m!2628613))

(declare-fun m!2628615 () Bool)

(assert (=> b!2186032 m!2628615))

(assert (=> b!2185300 m!2627883))

(declare-fun b!2186037 () Bool)

(declare-fun e!1397037 () Bool)

(declare-fun tp!681723 () Bool)

(declare-fun tp!681724 () Bool)

(assert (=> b!2186037 (= e!1397037 (and tp!681723 tp!681724))))

(declare-fun b!2186036 () Bool)

(declare-fun tp!681720 () Bool)

(assert (=> b!2186036 (= e!1397037 tp!681720)))

(declare-fun b!2186035 () Bool)

(declare-fun tp!681722 () Bool)

(declare-fun tp!681721 () Bool)

(assert (=> b!2186035 (= e!1397037 (and tp!681722 tp!681721))))

(assert (=> b!2185304 (= tp!681624 e!1397037)))

(declare-fun b!2186034 () Bool)

(assert (=> b!2186034 (= e!1397037 tp_is_empty!9701)))

(assert (= (and b!2185304 ((_ is ElementMatch!6047) (regOne!12606 r!12534))) b!2186034))

(assert (= (and b!2185304 ((_ is Concat!10349) (regOne!12606 r!12534))) b!2186035))

(assert (= (and b!2185304 ((_ is Star!6047) (regOne!12606 r!12534))) b!2186036))

(assert (= (and b!2185304 ((_ is Union!6047) (regOne!12606 r!12534))) b!2186037))

(declare-fun b!2186041 () Bool)

(declare-fun e!1397038 () Bool)

(declare-fun tp!681728 () Bool)

(declare-fun tp!681729 () Bool)

(assert (=> b!2186041 (= e!1397038 (and tp!681728 tp!681729))))

(declare-fun b!2186040 () Bool)

(declare-fun tp!681725 () Bool)

(assert (=> b!2186040 (= e!1397038 tp!681725)))

(declare-fun b!2186039 () Bool)

(declare-fun tp!681727 () Bool)

(declare-fun tp!681726 () Bool)

(assert (=> b!2186039 (= e!1397038 (and tp!681727 tp!681726))))

(assert (=> b!2185304 (= tp!681626 e!1397038)))

(declare-fun b!2186038 () Bool)

(assert (=> b!2186038 (= e!1397038 tp_is_empty!9701)))

(assert (= (and b!2185304 ((_ is ElementMatch!6047) (regTwo!12606 r!12534))) b!2186038))

(assert (= (and b!2185304 ((_ is Concat!10349) (regTwo!12606 r!12534))) b!2186039))

(assert (= (and b!2185304 ((_ is Star!6047) (regTwo!12606 r!12534))) b!2186040))

(assert (= (and b!2185304 ((_ is Union!6047) (regTwo!12606 r!12534))) b!2186041))

(declare-fun b!2186046 () Bool)

(declare-fun e!1397041 () Bool)

(declare-fun tp!681734 () Bool)

(declare-fun tp!681735 () Bool)

(assert (=> b!2186046 (= e!1397041 (and tp!681734 tp!681735))))

(assert (=> b!2185317 (= tp!681627 e!1397041)))

(assert (= (and b!2185317 ((_ is Cons!25271) (exprs!2117 setElem!18346))) b!2186046))

(declare-fun b!2186050 () Bool)

(declare-fun e!1397042 () Bool)

(declare-fun tp!681739 () Bool)

(declare-fun tp!681740 () Bool)

(assert (=> b!2186050 (= e!1397042 (and tp!681739 tp!681740))))

(declare-fun b!2186049 () Bool)

(declare-fun tp!681736 () Bool)

(assert (=> b!2186049 (= e!1397042 tp!681736)))

(declare-fun b!2186048 () Bool)

(declare-fun tp!681738 () Bool)

(declare-fun tp!681737 () Bool)

(assert (=> b!2186048 (= e!1397042 (and tp!681738 tp!681737))))

(assert (=> b!2185302 (= tp!681629 e!1397042)))

(declare-fun b!2186047 () Bool)

(assert (=> b!2186047 (= e!1397042 tp_is_empty!9701)))

(assert (= (and b!2185302 ((_ is ElementMatch!6047) (regOne!12607 r!12534))) b!2186047))

(assert (= (and b!2185302 ((_ is Concat!10349) (regOne!12607 r!12534))) b!2186048))

(assert (= (and b!2185302 ((_ is Star!6047) (regOne!12607 r!12534))) b!2186049))

(assert (= (and b!2185302 ((_ is Union!6047) (regOne!12607 r!12534))) b!2186050))

(declare-fun b!2186054 () Bool)

(declare-fun e!1397043 () Bool)

(declare-fun tp!681744 () Bool)

(declare-fun tp!681745 () Bool)

(assert (=> b!2186054 (= e!1397043 (and tp!681744 tp!681745))))

(declare-fun b!2186053 () Bool)

(declare-fun tp!681741 () Bool)

(assert (=> b!2186053 (= e!1397043 tp!681741)))

(declare-fun b!2186052 () Bool)

(declare-fun tp!681743 () Bool)

(declare-fun tp!681742 () Bool)

(assert (=> b!2186052 (= e!1397043 (and tp!681743 tp!681742))))

(assert (=> b!2185302 (= tp!681628 e!1397043)))

(declare-fun b!2186051 () Bool)

(assert (=> b!2186051 (= e!1397043 tp_is_empty!9701)))

(assert (= (and b!2185302 ((_ is ElementMatch!6047) (regTwo!12607 r!12534))) b!2186051))

(assert (= (and b!2185302 ((_ is Concat!10349) (regTwo!12607 r!12534))) b!2186052))

(assert (= (and b!2185302 ((_ is Star!6047) (regTwo!12607 r!12534))) b!2186053))

(assert (= (and b!2185302 ((_ is Union!6047) (regTwo!12607 r!12534))) b!2186054))

(declare-fun e!1397045 () Bool)

(declare-fun tp!681748 () Bool)

(declare-fun tp!681746 () Bool)

(declare-fun b!2186055 () Bool)

(assert (=> b!2186055 (= e!1397045 (and (inv!33594 (left!19397 (c!347358 input!5540))) tp!681746 (inv!33594 (right!19727 (c!347358 input!5540))) tp!681748))))

(declare-fun b!2186057 () Bool)

(declare-fun e!1397044 () Bool)

(declare-fun tp!681747 () Bool)

(assert (=> b!2186057 (= e!1397044 tp!681747)))

(declare-fun b!2186056 () Bool)

(assert (=> b!2186056 (= e!1397045 (and (inv!33602 (xs!11125 (c!347358 input!5540))) e!1397044))))

(assert (=> b!2185318 (= tp!681625 (and (inv!33594 (c!347358 input!5540)) e!1397045))))

(assert (= (and b!2185318 ((_ is Node!8183) (c!347358 input!5540))) b!2186055))

(assert (= b!2186056 b!2186057))

(assert (= (and b!2185318 ((_ is Leaf!11974) (c!347358 input!5540))) b!2186056))

(declare-fun m!2628617 () Bool)

(assert (=> b!2186055 m!2628617))

(declare-fun m!2628619 () Bool)

(assert (=> b!2186055 m!2628619))

(declare-fun m!2628621 () Bool)

(assert (=> b!2186056 m!2628621))

(assert (=> b!2185318 m!2627909))

(check-sat (not bm!131522) (not bm!131499) (not d!655043) (not b!2185796) (not d!654897) (not b!2185855) (not b!2185805) (not d!655045) (not b!2186031) (not bm!131502) (not b!2185927) (not d!655057) (not b!2185994) (not b!2186056) (not b!2185482) (not b!2186033) (not b!2185963) (not d!655029) (not b!2186008) (not b!2185852) (not b!2186020) (not b!2186050) (not b!2185809) (not b!2185374) (not d!655055) (not b!2185886) (not bm!131508) (not bm!131511) (not b!2185847) (not b!2185957) (not b!2185947) (not b!2185961) (not b!2186001) (not b!2185954) (not b!2185347) (not d!655067) (not d!655069) (not d!655049) (not b!2186003) (not d!654889) (not bm!131521) (not b!2185930) (not b!2186057) (not b!2185845) (not b!2185342) (not b!2185893) (not b!2185956) (not b!2185511) (not b!2185377) (not b!2185969) (not b!2186021) (not b!2185959) (not d!655063) (not bm!131505) (not b!2186055) (not b!2185318) (not d!655065) (not b!2186002) (not b!2185808) (not b!2185840) (not b!2186054) (not b!2185787) (not b!2185792) (not d!655071) (not d!655079) (not b!2185970) (not d!655077) (not b!2186022) (not d!655051) (not b!2185806) (not bm!131503) (not b!2186032) (not b!2186039) (not bm!131504) (not bm!131512) (not b!2185843) (not b!2185343) (not d!654939) (not b!2185965) (not b!2185881) (not d!654899) (not b!2186037) (not b!2186046) (not d!655011) (not bm!131519) (not b!2185922) (not b!2186041) (not bm!131501) (not d!654893) (not d!654931) (not b!2186049) (not b!2185888) (not bm!131525) (not b!2186053) (not b!2185810) (not b!2185361) (not b!2185877) (not b!2185878) (not d!655021) (not b!2185950) (not b!2186052) (not b!2185300) (not b!2185929) (not b!2185945) (not d!655047) (not b!2185481) (not b!2185846) (not b!2185917) (not b!2185884) (not b!2185924) (not b!2185937) (not b!2185938) (not setNonEmpty!18352) (not bm!131500) (not b!2185949) (not b!2185483) (not b!2185375) (not d!655019) (not b!2185931) (not bm!131498) (not b!2185348) (not b!2185785) (not b!2185373) (not d!655023) tp_is_empty!9701 (not b!2185962) (not b!2185990) (not d!655027) (not d!654883) (not b!2185800) (not d!655031) (not d!655033) (not b!2185327) (not b!2185951) (not d!655009) (not d!655025) (not b!2185887) (not b!2185964) (not d!655075) (not b!2186035) (not d!655035) (not b!2185360) (not b!2185936) (not b!2185999) (not b!2186048) (not d!655039) (not d!655015) (not b!2185510) (not b!2186036) (not b!2186040) (not d!655017))
(check-sat)
