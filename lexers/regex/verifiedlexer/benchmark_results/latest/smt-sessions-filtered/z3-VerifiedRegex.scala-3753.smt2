; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209610 () Bool)

(assert start!209610)

(declare-fun b!2160346 () Bool)

(declare-fun e!1382283 () Bool)

(declare-datatypes ((C!12092 0))(
  ( (C!12093 (val!7032 Int)) )
))
(declare-datatypes ((List!25132 0))(
  ( (Nil!25048) (Cons!25048 (h!30449 C!12092) (t!197680 List!25132)) )
))
(declare-datatypes ((IArray!16223 0))(
  ( (IArray!16224 (innerList!8169 List!25132)) )
))
(declare-datatypes ((Conc!8109 0))(
  ( (Node!8109 (left!19274 Conc!8109) (right!19604 Conc!8109) (csize!16448 Int) (cheight!8320 Int)) (Leaf!11863 (xs!11051 IArray!16223) (csize!16449 Int)) (Empty!8109) )
))
(declare-datatypes ((BalanceConc!15980 0))(
  ( (BalanceConc!15981 (c!341906 Conc!8109)) )
))
(declare-fun input!5540 () BalanceConc!15980)

(declare-fun tp!673886 () Bool)

(declare-fun inv!33181 (Conc!8109) Bool)

(assert (=> b!2160346 (= e!1382283 (and (inv!33181 (c!341906 input!5540)) tp!673886))))

(declare-fun b!2160347 () Bool)

(declare-fun e!1382276 () Bool)

(assert (=> b!2160347 (= e!1382276 true)))

(declare-fun lt!803315 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5973 0))(
  ( (ElementMatch!5973 (c!341907 C!12092)) (Concat!10275 (regOne!12458 Regex!5973) (regTwo!12458 Regex!5973)) (EmptyExpr!5973) (Star!5973 (reg!6302 Regex!5973)) (EmptyLang!5973) (Union!5973 (regOne!12459 Regex!5973) (regTwo!12459 Regex!5973)) )
))
(declare-datatypes ((List!25133 0))(
  ( (Nil!25049) (Cons!25049 (h!30450 Regex!5973) (t!197681 List!25133)) )
))
(declare-datatypes ((Context!3086 0))(
  ( (Context!3087 (exprs!2043 List!25133)) )
))
(declare-fun z!4055 () (InoxSet Context!3086))

(declare-datatypes ((tuple2!24758 0))(
  ( (tuple2!24759 (_1!14749 List!25132) (_2!14749 List!25132)) )
))
(declare-fun lt!803328 () tuple2!24758)

(declare-fun matchZipper!101 ((InoxSet Context!3086) List!25132) Bool)

(assert (=> b!2160347 (= lt!803315 (matchZipper!101 z!4055 (_1!14749 lt!803328)))))

(declare-fun r!12534 () Regex!5973)

(declare-datatypes ((List!25134 0))(
  ( (Nil!25050) (Cons!25050 (h!30451 Context!3086) (t!197682 List!25134)) )
))
(declare-fun lt!803312 () List!25134)

(declare-datatypes ((Unit!38097 0))(
  ( (Unit!38098) )
))
(declare-fun lt!803321 () Unit!38097)

(declare-fun theoremZipperRegexEquiv!17 ((InoxSet Context!3086) List!25134 Regex!5973 List!25132) Unit!38097)

(assert (=> b!2160347 (= lt!803321 (theoremZipperRegexEquiv!17 z!4055 lt!803312 r!12534 (_1!14749 lt!803328)))))

(declare-fun b!2160348 () Bool)

(declare-fun e!1382288 () Bool)

(declare-fun tp!673890 () Bool)

(declare-fun tp!673888 () Bool)

(assert (=> b!2160348 (= e!1382288 (and tp!673890 tp!673888))))

(declare-fun b!2160349 () Bool)

(declare-fun tp_is_empty!9553 () Bool)

(assert (=> b!2160349 (= e!1382288 tp_is_empty!9553)))

(declare-fun res!930855 () Bool)

(declare-fun e!1382289 () Bool)

(assert (=> start!209610 (=> (not res!930855) (not e!1382289))))

(declare-fun validRegex!2249 (Regex!5973) Bool)

(assert (=> start!209610 (= res!930855 (validRegex!2249 r!12534))))

(assert (=> start!209610 e!1382289))

(assert (=> start!209610 e!1382288))

(declare-fun totalInput!977 () BalanceConc!15980)

(declare-fun e!1382281 () Bool)

(declare-fun inv!33182 (BalanceConc!15980) Bool)

(assert (=> start!209610 (and (inv!33182 totalInput!977) e!1382281)))

(assert (=> start!209610 (and (inv!33182 input!5540) e!1382283)))

(declare-fun condSetEmpty!18028 () Bool)

(assert (=> start!209610 (= condSetEmpty!18028 (= z!4055 ((as const (Array Context!3086 Bool)) false)))))

(declare-fun setRes!18028 () Bool)

(assert (=> start!209610 setRes!18028))

(declare-fun b!2160350 () Bool)

(declare-fun tp!673889 () Bool)

(declare-fun tp!673892 () Bool)

(assert (=> b!2160350 (= e!1382288 (and tp!673889 tp!673892))))

(declare-fun b!2160351 () Bool)

(declare-fun e!1382286 () Bool)

(declare-fun tp!673885 () Bool)

(assert (=> b!2160351 (= e!1382286 tp!673885)))

(declare-fun b!2160352 () Bool)

(declare-fun tp!673884 () Bool)

(assert (=> b!2160352 (= e!1382281 (and (inv!33181 (c!341906 totalInput!977)) tp!673884))))

(declare-fun b!2160353 () Bool)

(declare-fun e!1382282 () Bool)

(declare-fun e!1382275 () Bool)

(assert (=> b!2160353 (= e!1382282 e!1382275)))

(declare-fun res!930850 () Bool)

(assert (=> b!2160353 (=> (not res!930850) (not e!1382275))))

(declare-fun lt!803324 () List!25132)

(declare-fun lt!803323 () List!25132)

(assert (=> b!2160353 (= res!930850 (= lt!803324 lt!803323))))

(declare-fun ++!6330 (List!25132 List!25132) List!25132)

(assert (=> b!2160353 (= lt!803324 (++!6330 (_1!14749 lt!803328) (_2!14749 lt!803328)))))

(declare-fun b!2160354 () Bool)

(declare-fun e!1382278 () Bool)

(declare-fun isEmpty!14361 (List!25132) Bool)

(assert (=> b!2160354 (= e!1382278 (not (isEmpty!14361 (_1!14749 lt!803328))))))

(declare-fun b!2160355 () Bool)

(declare-fun e!1382280 () Int)

(assert (=> b!2160355 (= e!1382280 (- 1))))

(declare-fun b!2160356 () Bool)

(declare-fun e!1382274 () Bool)

(declare-fun e!1382285 () Bool)

(assert (=> b!2160356 (= e!1382274 e!1382285)))

(declare-fun res!930851 () Bool)

(assert (=> b!2160356 (=> (not res!930851) (not e!1382285))))

(declare-fun lt!803327 () List!25132)

(declare-fun isSuffix!640 (List!25132 List!25132) Bool)

(assert (=> b!2160356 (= res!930851 (isSuffix!640 lt!803323 lt!803327))))

(declare-fun list!9592 (BalanceConc!15980) List!25132)

(assert (=> b!2160356 (= lt!803327 (list!9592 totalInput!977))))

(assert (=> b!2160356 (= lt!803323 (list!9592 input!5540))))

(declare-fun b!2160357 () Bool)

(declare-fun e!1382287 () Bool)

(declare-fun lt!803322 () tuple2!24758)

(declare-fun matchR!2734 (Regex!5973 List!25132) Bool)

(assert (=> b!2160357 (= e!1382287 (matchR!2734 r!12534 (_1!14749 lt!803322)))))

(declare-fun b!2160358 () Bool)

(assert (=> b!2160358 (= e!1382289 e!1382274)))

(declare-fun res!930852 () Bool)

(assert (=> b!2160358 (=> (not res!930852) (not e!1382274))))

(declare-fun unfocusZipper!80 (List!25134) Regex!5973)

(assert (=> b!2160358 (= res!930852 (= (unfocusZipper!80 lt!803312) r!12534))))

(declare-fun toList!1156 ((InoxSet Context!3086)) List!25134)

(assert (=> b!2160358 (= lt!803312 (toList!1156 z!4055))))

(declare-fun b!2160359 () Bool)

(declare-fun e!1382279 () Bool)

(assert (=> b!2160359 (= e!1382279 e!1382276)))

(declare-fun res!930858 () Bool)

(assert (=> b!2160359 (=> res!930858 e!1382276)))

(assert (=> b!2160359 (= res!930858 e!1382278)))

(declare-fun res!930856 () Bool)

(assert (=> b!2160359 (=> (not res!930856) (not e!1382278))))

(assert (=> b!2160359 (= res!930856 (not lt!803315))))

(assert (=> b!2160359 (= lt!803315 (matchR!2734 r!12534 (_1!14749 lt!803328)))))

(declare-fun setIsEmpty!18028 () Bool)

(assert (=> setIsEmpty!18028 setRes!18028))

(declare-fun b!2160360 () Bool)

(assert (=> b!2160360 (= e!1382275 (not e!1382279))))

(declare-fun res!930853 () Bool)

(assert (=> b!2160360 (=> res!930853 e!1382279)))

(declare-fun e!1382277 () Bool)

(assert (=> b!2160360 (= res!930853 e!1382277)))

(declare-fun res!930854 () Bool)

(assert (=> b!2160360 (=> (not res!930854) (not e!1382277))))

(declare-fun lt!803317 () List!25132)

(assert (=> b!2160360 (= res!930854 (not (matchZipper!101 z!4055 lt!803317)))))

(assert (=> b!2160360 e!1382287))

(declare-fun res!930859 () Bool)

(assert (=> b!2160360 (=> res!930859 e!1382287)))

(assert (=> b!2160360 (= res!930859 (isEmpty!14361 (_1!14749 lt!803322)))))

(declare-fun findLongestMatchInner!602 (Regex!5973 List!25132 Int List!25132 List!25132 Int) tuple2!24758)

(declare-fun size!19573 (List!25132) Int)

(assert (=> b!2160360 (= lt!803322 (findLongestMatchInner!602 r!12534 Nil!25048 (size!19573 Nil!25048) lt!803323 lt!803323 (size!19573 lt!803323)))))

(declare-fun lt!803313 () Unit!38097)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!583 (Regex!5973 List!25132) Unit!38097)

(assert (=> b!2160360 (= lt!803313 (longestMatchIsAcceptedByMatchOrIsEmpty!583 r!12534 lt!803323))))

(declare-fun e!1382284 () Bool)

(assert (=> b!2160360 e!1382284))

(declare-fun res!930857 () Bool)

(assert (=> b!2160360 (=> res!930857 e!1382284)))

(declare-fun lt!803330 () Int)

(assert (=> b!2160360 (= res!930857 (<= lt!803330 0))))

(declare-fun lt!803319 () Int)

(declare-fun lt!803316 () Int)

(declare-fun lt!803314 () Int)

(declare-fun furthestNullablePosition!160 ((InoxSet Context!3086) Int BalanceConc!15980 Int Int) Int)

(assert (=> b!2160360 (= lt!803330 (+ 1 (- (furthestNullablePosition!160 z!4055 lt!803316 totalInput!977 lt!803319 lt!803314) lt!803316)))))

(declare-fun lt!803320 () Unit!38097)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!8 ((InoxSet Context!3086) Int BalanceConc!15980 Int) Unit!38097)

(assert (=> b!2160360 (= lt!803320 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!8 z!4055 lt!803316 totalInput!977 lt!803314))))

(assert (=> b!2160360 (= lt!803314 e!1382280)))

(declare-fun c!341905 () Bool)

(declare-fun nullableZipper!254 ((InoxSet Context!3086)) Bool)

(assert (=> b!2160360 (= c!341905 (nullableZipper!254 z!4055))))

(declare-fun isPrefix!2093 (List!25132 List!25132) Bool)

(declare-fun take!187 (List!25132 Int) List!25132)

(assert (=> b!2160360 (isPrefix!2093 (take!187 lt!803327 lt!803316) lt!803327)))

(declare-fun lt!803325 () Unit!38097)

(declare-fun lemmaTakeIsPrefix!10 (List!25132 Int) Unit!38097)

(assert (=> b!2160360 (= lt!803325 (lemmaTakeIsPrefix!10 lt!803327 lt!803316))))

(assert (=> b!2160360 (isPrefix!2093 (_1!14749 lt!803328) lt!803324)))

(declare-fun lt!803329 () Unit!38097)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1376 (List!25132 List!25132) Unit!38097)

(assert (=> b!2160360 (= lt!803329 (lemmaConcatTwoListThenFirstIsPrefix!1376 (_1!14749 lt!803328) (_2!14749 lt!803328)))))

(declare-fun lt!803318 () List!25132)

(assert (=> b!2160360 (isPrefix!2093 lt!803317 lt!803318)))

(declare-fun lt!803310 () Unit!38097)

(declare-fun lt!803326 () List!25132)

(assert (=> b!2160360 (= lt!803310 (lemmaConcatTwoListThenFirstIsPrefix!1376 lt!803317 lt!803326))))

(declare-fun b!2160361 () Bool)

(assert (=> b!2160361 (= e!1382280 (- lt!803316 1))))

(declare-fun b!2160362 () Bool)

(declare-datatypes ((tuple2!24760 0))(
  ( (tuple2!24761 (_1!14750 BalanceConc!15980) (_2!14750 BalanceConc!15980)) )
))
(declare-fun lt!803311 () tuple2!24760)

(declare-fun isEmpty!14362 (BalanceConc!15980) Bool)

(assert (=> b!2160362 (= e!1382277 (not (isEmpty!14362 (_1!14750 lt!803311))))))

(declare-fun b!2160363 () Bool)

(assert (=> b!2160363 (= e!1382285 e!1382282)))

(declare-fun res!930849 () Bool)

(assert (=> b!2160363 (=> (not res!930849) (not e!1382282))))

(assert (=> b!2160363 (= res!930849 (= lt!803318 lt!803323))))

(assert (=> b!2160363 (= lt!803318 (++!6330 lt!803317 lt!803326))))

(assert (=> b!2160363 (= lt!803326 (list!9592 (_2!14750 lt!803311)))))

(assert (=> b!2160363 (= lt!803317 (list!9592 (_1!14750 lt!803311)))))

(declare-fun findLongestMatch!527 (Regex!5973 List!25132) tuple2!24758)

(assert (=> b!2160363 (= lt!803328 (findLongestMatch!527 r!12534 lt!803323))))

(declare-fun size!19574 (BalanceConc!15980) Int)

(assert (=> b!2160363 (= lt!803316 (- lt!803319 (size!19574 input!5540)))))

(assert (=> b!2160363 (= lt!803319 (size!19574 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!22 ((InoxSet Context!3086) BalanceConc!15980 BalanceConc!15980) tuple2!24760)

(assert (=> b!2160363 (= lt!803311 (findLongestMatchZipperSequenceV3!22 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160364 () Bool)

(declare-fun drop!1196 (List!25132 Int) List!25132)

(assert (=> b!2160364 (= e!1382284 (matchZipper!101 z!4055 (take!187 (drop!1196 lt!803327 lt!803316) lt!803330)))))

(declare-fun b!2160365 () Bool)

(declare-fun tp!673887 () Bool)

(assert (=> b!2160365 (= e!1382288 tp!673887)))

(declare-fun tp!673891 () Bool)

(declare-fun setElem!18028 () Context!3086)

(declare-fun setNonEmpty!18028 () Bool)

(declare-fun inv!33183 (Context!3086) Bool)

(assert (=> setNonEmpty!18028 (= setRes!18028 (and tp!673891 (inv!33183 setElem!18028) e!1382286))))

(declare-fun setRest!18028 () (InoxSet Context!3086))

(assert (=> setNonEmpty!18028 (= z!4055 ((_ map or) (store ((as const (Array Context!3086 Bool)) false) setElem!18028 true) setRest!18028))))

(assert (= (and start!209610 res!930855) b!2160358))

(assert (= (and b!2160358 res!930852) b!2160356))

(assert (= (and b!2160356 res!930851) b!2160363))

(assert (= (and b!2160363 res!930849) b!2160353))

(assert (= (and b!2160353 res!930850) b!2160360))

(assert (= (and b!2160360 c!341905) b!2160361))

(assert (= (and b!2160360 (not c!341905)) b!2160355))

(assert (= (and b!2160360 (not res!930857)) b!2160364))

(assert (= (and b!2160360 (not res!930859)) b!2160357))

(assert (= (and b!2160360 res!930854) b!2160362))

(assert (= (and b!2160360 (not res!930853)) b!2160359))

(assert (= (and b!2160359 res!930856) b!2160354))

(assert (= (and b!2160359 (not res!930858)) b!2160347))

(get-info :version)

(assert (= (and start!209610 ((_ is ElementMatch!5973) r!12534)) b!2160349))

(assert (= (and start!209610 ((_ is Concat!10275) r!12534)) b!2160348))

(assert (= (and start!209610 ((_ is Star!5973) r!12534)) b!2160365))

(assert (= (and start!209610 ((_ is Union!5973) r!12534)) b!2160350))

(assert (= start!209610 b!2160352))

(assert (= start!209610 b!2160346))

(assert (= (and start!209610 condSetEmpty!18028) setIsEmpty!18028))

(assert (= (and start!209610 (not condSetEmpty!18028)) setNonEmpty!18028))

(assert (= setNonEmpty!18028 b!2160351))

(declare-fun m!2600287 () Bool)

(assert (=> b!2160352 m!2600287))

(declare-fun m!2600289 () Bool)

(assert (=> b!2160359 m!2600289))

(declare-fun m!2600291 () Bool)

(assert (=> b!2160353 m!2600291))

(declare-fun m!2600293 () Bool)

(assert (=> start!209610 m!2600293))

(declare-fun m!2600295 () Bool)

(assert (=> start!209610 m!2600295))

(declare-fun m!2600297 () Bool)

(assert (=> start!209610 m!2600297))

(declare-fun m!2600299 () Bool)

(assert (=> b!2160354 m!2600299))

(declare-fun m!2600301 () Bool)

(assert (=> b!2160356 m!2600301))

(declare-fun m!2600303 () Bool)

(assert (=> b!2160356 m!2600303))

(declare-fun m!2600305 () Bool)

(assert (=> b!2160356 m!2600305))

(declare-fun m!2600307 () Bool)

(assert (=> b!2160346 m!2600307))

(declare-fun m!2600309 () Bool)

(assert (=> b!2160362 m!2600309))

(declare-fun m!2600311 () Bool)

(assert (=> b!2160357 m!2600311))

(declare-fun m!2600313 () Bool)

(assert (=> b!2160363 m!2600313))

(declare-fun m!2600315 () Bool)

(assert (=> b!2160363 m!2600315))

(declare-fun m!2600317 () Bool)

(assert (=> b!2160363 m!2600317))

(declare-fun m!2600319 () Bool)

(assert (=> b!2160363 m!2600319))

(declare-fun m!2600321 () Bool)

(assert (=> b!2160363 m!2600321))

(declare-fun m!2600323 () Bool)

(assert (=> b!2160363 m!2600323))

(declare-fun m!2600325 () Bool)

(assert (=> b!2160363 m!2600325))

(declare-fun m!2600327 () Bool)

(assert (=> b!2160347 m!2600327))

(declare-fun m!2600329 () Bool)

(assert (=> b!2160347 m!2600329))

(declare-fun m!2600331 () Bool)

(assert (=> b!2160360 m!2600331))

(declare-fun m!2600333 () Bool)

(assert (=> b!2160360 m!2600333))

(declare-fun m!2600335 () Bool)

(assert (=> b!2160360 m!2600335))

(declare-fun m!2600337 () Bool)

(assert (=> b!2160360 m!2600337))

(declare-fun m!2600339 () Bool)

(assert (=> b!2160360 m!2600339))

(declare-fun m!2600341 () Bool)

(assert (=> b!2160360 m!2600341))

(declare-fun m!2600343 () Bool)

(assert (=> b!2160360 m!2600343))

(declare-fun m!2600345 () Bool)

(assert (=> b!2160360 m!2600345))

(declare-fun m!2600347 () Bool)

(assert (=> b!2160360 m!2600347))

(declare-fun m!2600349 () Bool)

(assert (=> b!2160360 m!2600349))

(assert (=> b!2160360 m!2600335))

(declare-fun m!2600351 () Bool)

(assert (=> b!2160360 m!2600351))

(declare-fun m!2600353 () Bool)

(assert (=> b!2160360 m!2600353))

(declare-fun m!2600355 () Bool)

(assert (=> b!2160360 m!2600355))

(assert (=> b!2160360 m!2600351))

(assert (=> b!2160360 m!2600333))

(declare-fun m!2600357 () Bool)

(assert (=> b!2160360 m!2600357))

(declare-fun m!2600359 () Bool)

(assert (=> b!2160360 m!2600359))

(declare-fun m!2600361 () Bool)

(assert (=> b!2160360 m!2600361))

(declare-fun m!2600363 () Bool)

(assert (=> setNonEmpty!18028 m!2600363))

(declare-fun m!2600365 () Bool)

(assert (=> b!2160358 m!2600365))

(declare-fun m!2600367 () Bool)

(assert (=> b!2160358 m!2600367))

(declare-fun m!2600369 () Bool)

(assert (=> b!2160364 m!2600369))

(assert (=> b!2160364 m!2600369))

(declare-fun m!2600371 () Bool)

(assert (=> b!2160364 m!2600371))

(assert (=> b!2160364 m!2600371))

(declare-fun m!2600373 () Bool)

(assert (=> b!2160364 m!2600373))

(check-sat (not b!2160351) (not b!2160354) (not b!2160363) (not b!2160360) tp_is_empty!9553 (not b!2160348) (not setNonEmpty!18028) (not start!209610) (not b!2160359) (not b!2160356) (not b!2160358) (not b!2160364) (not b!2160362) (not b!2160347) (not b!2160357) (not b!2160365) (not b!2160350) (not b!2160352) (not b!2160346) (not b!2160353))
(check-sat)
