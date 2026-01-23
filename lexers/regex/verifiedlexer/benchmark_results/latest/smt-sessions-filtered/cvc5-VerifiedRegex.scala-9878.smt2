; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!517758 () Bool)

(assert start!517758)

(declare-fun res!2103903 () Bool)

(declare-fun e!3080248 () Bool)

(assert (=> start!517758 (=> (not res!2103903) (not e!3080248))))

(declare-datatypes ((C!26994 0))(
  ( (C!26995 (val!22831 Int)) )
))
(declare-datatypes ((List!56843 0))(
  ( (Nil!56719) (Cons!56719 (h!63167 C!26994) (t!367319 List!56843)) )
))
(declare-fun lt!2029459 () List!56843)

(declare-fun lt!2029458 () List!56843)

(assert (=> start!517758 (= res!2103903 (= lt!2029459 lt!2029458))))

(declare-datatypes ((IArray!29843 0))(
  ( (IArray!29844 (innerList!14979 List!56843)) )
))
(declare-datatypes ((Conc!14891 0))(
  ( (Node!14891 (left!41371 Conc!14891) (right!41701 Conc!14891) (csize!30012 Int) (cheight!15102 Int)) (Leaf!24770 (xs!18215 IArray!29843) (csize!30013 Int)) (Empty!14891) )
))
(declare-datatypes ((BalanceConc!29212 0))(
  ( (BalanceConc!29213 (c!840185 Conc!14891)) )
))
(declare-fun totalInput!685 () BalanceConc!29212)

(declare-fun list!17984 (BalanceConc!29212) List!56843)

(assert (=> start!517758 (= lt!2029458 (list!17984 totalInput!685))))

(declare-fun testedP!110 () List!56843)

(declare-fun testedSuffix!70 () List!56843)

(declare-fun ++!12347 (List!56843 List!56843) List!56843)

(assert (=> start!517758 (= lt!2029459 (++!12347 testedP!110 testedSuffix!70))))

(assert (=> start!517758 e!3080248))

(declare-fun e!3080251 () Bool)

(assert (=> start!517758 e!3080251))

(declare-fun condSetEmpty!27581 () Bool)

(declare-datatypes ((Regex!13382 0))(
  ( (ElementMatch!13382 (c!840186 C!26994)) (Concat!21955 (regOne!27276 Regex!13382) (regTwo!27276 Regex!13382)) (EmptyExpr!13382) (Star!13382 (reg!13711 Regex!13382)) (EmptyLang!13382) (Union!13382 (regOne!27277 Regex!13382) (regTwo!27277 Regex!13382)) )
))
(declare-datatypes ((List!56844 0))(
  ( (Nil!56720) (Cons!56720 (h!63168 Regex!13382) (t!367320 List!56844)) )
))
(declare-datatypes ((Context!6048 0))(
  ( (Context!6049 (exprs!3524 List!56844)) )
))
(declare-fun z!3568 () (Set Context!6048))

(assert (=> start!517758 (= condSetEmpty!27581 (= z!3568 (as set.empty (Set Context!6048))))))

(declare-fun setRes!27581 () Bool)

(assert (=> start!517758 setRes!27581))

(assert (=> start!517758 true))

(declare-fun e!3080249 () Bool)

(declare-fun inv!73575 (BalanceConc!29212) Bool)

(assert (=> start!517758 (and (inv!73575 totalInput!685) e!3080249)))

(declare-fun e!3080247 () Bool)

(assert (=> start!517758 e!3080247))

(declare-fun b!4930194 () Bool)

(declare-fun tp_is_empty!35941 () Bool)

(declare-fun tp!1384058 () Bool)

(assert (=> b!4930194 (= e!3080247 (and tp_is_empty!35941 tp!1384058))))

(declare-fun b!4930195 () Bool)

(declare-fun res!2103907 () Bool)

(assert (=> b!4930195 (=> (not res!2103907) (not e!3080248))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37529 (BalanceConc!29212) Int)

(assert (=> b!4930195 (= res!2103907 (= totalInputSize!132 (size!37529 totalInput!685)))))

(declare-fun b!4930196 () Bool)

(declare-fun e!3080245 () Bool)

(declare-fun size!37530 (List!56843) Int)

(assert (=> b!4930196 (= e!3080245 (= totalInputSize!132 (size!37530 lt!2029458)))))

(declare-fun b!4930197 () Bool)

(declare-fun e!3080250 () Bool)

(declare-fun tp!1384057 () Bool)

(assert (=> b!4930197 (= e!3080250 tp!1384057)))

(declare-fun b!4930198 () Bool)

(declare-fun res!2103905 () Bool)

(assert (=> b!4930198 (=> (not res!2103905) (not e!3080248))))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4930198 (= res!2103905 (= testedPSize!70 (size!37530 testedP!110)))))

(declare-fun b!4930199 () Bool)

(declare-fun tp!1384054 () Bool)

(declare-fun inv!73576 (Conc!14891) Bool)

(assert (=> b!4930199 (= e!3080249 (and (inv!73576 (c!840185 totalInput!685)) tp!1384054))))

(declare-fun b!4930200 () Bool)

(declare-fun e!3080246 () Bool)

(assert (=> b!4930200 (= e!3080248 (not e!3080246))))

(declare-fun res!2103904 () Bool)

(assert (=> b!4930200 (=> res!2103904 e!3080246)))

(declare-fun isPrefix!4980 (List!56843 List!56843) Bool)

(assert (=> b!4930200 (= res!2103904 (not (isPrefix!4980 testedP!110 lt!2029458)))))

(assert (=> b!4930200 (isPrefix!4980 testedP!110 lt!2029459)))

(declare-datatypes ((Unit!147347 0))(
  ( (Unit!147348) )
))
(declare-fun lt!2029457 () Unit!147347)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3204 (List!56843 List!56843) Unit!147347)

(assert (=> b!4930200 (= lt!2029457 (lemmaConcatTwoListThenFirstIsPrefix!3204 testedP!110 testedSuffix!70))))

(declare-fun b!4930201 () Bool)

(assert (=> b!4930201 (= e!3080246 e!3080245)))

(declare-fun res!2103906 () Bool)

(assert (=> b!4930201 (=> res!2103906 e!3080245)))

(declare-fun lostCauseZipper!700 ((Set Context!6048)) Bool)

(assert (=> b!4930201 (= res!2103906 (not (lostCauseZipper!700 z!3568)))))

(declare-fun lt!2029456 () List!56843)

(assert (=> b!4930201 (and (= testedSuffix!70 lt!2029456) (= lt!2029456 testedSuffix!70))))

(declare-fun lt!2029460 () Unit!147347)

(declare-fun lemmaSamePrefixThenSameSuffix!2378 (List!56843 List!56843 List!56843 List!56843 List!56843) Unit!147347)

(assert (=> b!4930201 (= lt!2029460 (lemmaSamePrefixThenSameSuffix!2378 testedP!110 testedSuffix!70 testedP!110 lt!2029456 lt!2029458))))

(declare-fun getSuffix!2964 (List!56843 List!56843) List!56843)

(assert (=> b!4930201 (= lt!2029456 (getSuffix!2964 lt!2029458 testedP!110))))

(declare-fun tp!1384056 () Bool)

(declare-fun setElem!27581 () Context!6048)

(declare-fun setNonEmpty!27581 () Bool)

(declare-fun inv!73577 (Context!6048) Bool)

(assert (=> setNonEmpty!27581 (= setRes!27581 (and tp!1384056 (inv!73577 setElem!27581) e!3080250))))

(declare-fun setRest!27581 () (Set Context!6048))

(assert (=> setNonEmpty!27581 (= z!3568 (set.union (set.insert setElem!27581 (as set.empty (Set Context!6048))) setRest!27581))))

(declare-fun b!4930202 () Bool)

(declare-fun tp!1384055 () Bool)

(assert (=> b!4930202 (= e!3080251 (and tp_is_empty!35941 tp!1384055))))

(declare-fun setIsEmpty!27581 () Bool)

(assert (=> setIsEmpty!27581 setRes!27581))

(assert (= (and start!517758 res!2103903) b!4930198))

(assert (= (and b!4930198 res!2103905) b!4930195))

(assert (= (and b!4930195 res!2103907) b!4930200))

(assert (= (and b!4930200 (not res!2103904)) b!4930201))

(assert (= (and b!4930201 (not res!2103906)) b!4930196))

(assert (= (and start!517758 (is-Cons!56719 testedP!110)) b!4930202))

(assert (= (and start!517758 condSetEmpty!27581) setIsEmpty!27581))

(assert (= (and start!517758 (not condSetEmpty!27581)) setNonEmpty!27581))

(assert (= setNonEmpty!27581 b!4930197))

(assert (= start!517758 b!4930199))

(assert (= (and start!517758 (is-Cons!56719 testedSuffix!70)) b!4930194))

(declare-fun m!5950312 () Bool)

(assert (=> b!4930195 m!5950312))

(declare-fun m!5950314 () Bool)

(assert (=> b!4930198 m!5950314))

(declare-fun m!5950316 () Bool)

(assert (=> b!4930199 m!5950316))

(declare-fun m!5950318 () Bool)

(assert (=> start!517758 m!5950318))

(declare-fun m!5950320 () Bool)

(assert (=> start!517758 m!5950320))

(declare-fun m!5950322 () Bool)

(assert (=> start!517758 m!5950322))

(declare-fun m!5950324 () Bool)

(assert (=> b!4930196 m!5950324))

(declare-fun m!5950326 () Bool)

(assert (=> b!4930200 m!5950326))

(declare-fun m!5950328 () Bool)

(assert (=> b!4930200 m!5950328))

(declare-fun m!5950330 () Bool)

(assert (=> b!4930200 m!5950330))

(declare-fun m!5950332 () Bool)

(assert (=> b!4930201 m!5950332))

(declare-fun m!5950334 () Bool)

(assert (=> b!4930201 m!5950334))

(declare-fun m!5950336 () Bool)

(assert (=> b!4930201 m!5950336))

(declare-fun m!5950338 () Bool)

(assert (=> setNonEmpty!27581 m!5950338))

(push 1)

(assert tp_is_empty!35941)

(assert (not b!4930200))

(assert (not b!4930202))

(assert (not b!4930196))

(assert (not b!4930198))

(assert (not b!4930194))

(assert (not start!517758))

(assert (not b!4930199))

(assert (not setNonEmpty!27581))

(assert (not b!4930201))

(assert (not b!4930197))

(assert (not b!4930195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1587293 () Bool)

(declare-fun lambda!245395 () Int)

(declare-fun forall!13148 (List!56844 Int) Bool)

(assert (=> d!1587293 (= (inv!73577 setElem!27581) (forall!13148 (exprs!3524 setElem!27581) lambda!245395))))

(declare-fun bs!1180261 () Bool)

(assert (= bs!1180261 d!1587293))

(declare-fun m!5950386 () Bool)

(assert (=> bs!1180261 m!5950386))

(assert (=> setNonEmpty!27581 d!1587293))

(declare-fun d!1587303 () Bool)

(declare-fun list!17986 (Conc!14891) List!56843)

(assert (=> d!1587303 (= (list!17984 totalInput!685) (list!17986 (c!840185 totalInput!685)))))

(declare-fun bs!1180262 () Bool)

(assert (= bs!1180262 d!1587303))

(declare-fun m!5950388 () Bool)

(assert (=> bs!1180262 m!5950388))

(assert (=> start!517758 d!1587303))

(declare-fun d!1587305 () Bool)

(declare-fun e!3080287 () Bool)

(assert (=> d!1587305 e!3080287))

(declare-fun res!2103933 () Bool)

(assert (=> d!1587305 (=> (not res!2103933) (not e!3080287))))

(declare-fun lt!2029484 () List!56843)

(declare-fun content!10082 (List!56843) (Set C!26994))

(assert (=> d!1587305 (= res!2103933 (= (content!10082 lt!2029484) (set.union (content!10082 testedP!110) (content!10082 testedSuffix!70))))))

(declare-fun e!3080286 () List!56843)

(assert (=> d!1587305 (= lt!2029484 e!3080286)))

(declare-fun c!840197 () Bool)

(assert (=> d!1587305 (= c!840197 (is-Nil!56719 testedP!110))))

(assert (=> d!1587305 (= (++!12347 testedP!110 testedSuffix!70) lt!2029484)))

(declare-fun b!4930257 () Bool)

(assert (=> b!4930257 (= e!3080286 (Cons!56719 (h!63167 testedP!110) (++!12347 (t!367319 testedP!110) testedSuffix!70)))))

(declare-fun b!4930256 () Bool)

(assert (=> b!4930256 (= e!3080286 testedSuffix!70)))

(declare-fun b!4930259 () Bool)

(assert (=> b!4930259 (= e!3080287 (or (not (= testedSuffix!70 Nil!56719)) (= lt!2029484 testedP!110)))))

(declare-fun b!4930258 () Bool)

(declare-fun res!2103934 () Bool)

(assert (=> b!4930258 (=> (not res!2103934) (not e!3080287))))

(assert (=> b!4930258 (= res!2103934 (= (size!37530 lt!2029484) (+ (size!37530 testedP!110) (size!37530 testedSuffix!70))))))

(assert (= (and d!1587305 c!840197) b!4930256))

(assert (= (and d!1587305 (not c!840197)) b!4930257))

(assert (= (and d!1587305 res!2103933) b!4930258))

(assert (= (and b!4930258 res!2103934) b!4930259))

(declare-fun m!5950390 () Bool)

(assert (=> d!1587305 m!5950390))

(declare-fun m!5950392 () Bool)

(assert (=> d!1587305 m!5950392))

(declare-fun m!5950394 () Bool)

(assert (=> d!1587305 m!5950394))

(declare-fun m!5950396 () Bool)

(assert (=> b!4930257 m!5950396))

(declare-fun m!5950398 () Bool)

(assert (=> b!4930258 m!5950398))

(assert (=> b!4930258 m!5950314))

(declare-fun m!5950400 () Bool)

(assert (=> b!4930258 m!5950400))

(assert (=> start!517758 d!1587305))

(declare-fun d!1587307 () Bool)

(declare-fun isBalanced!4096 (Conc!14891) Bool)

(assert (=> d!1587307 (= (inv!73575 totalInput!685) (isBalanced!4096 (c!840185 totalInput!685)))))

(declare-fun bs!1180263 () Bool)

(assert (= bs!1180263 d!1587307))

(declare-fun m!5950402 () Bool)

(assert (=> bs!1180263 m!5950402))

(assert (=> start!517758 d!1587307))

(declare-fun d!1587309 () Bool)

(declare-fun lt!2029487 () Int)

(assert (=> d!1587309 (>= lt!2029487 0)))

(declare-fun e!3080290 () Int)

(assert (=> d!1587309 (= lt!2029487 e!3080290)))

(declare-fun c!840200 () Bool)

(assert (=> d!1587309 (= c!840200 (is-Nil!56719 testedP!110))))

(assert (=> d!1587309 (= (size!37530 testedP!110) lt!2029487)))

(declare-fun b!4930264 () Bool)

(assert (=> b!4930264 (= e!3080290 0)))

(declare-fun b!4930265 () Bool)

(assert (=> b!4930265 (= e!3080290 (+ 1 (size!37530 (t!367319 testedP!110))))))

(assert (= (and d!1587309 c!840200) b!4930264))

(assert (= (and d!1587309 (not c!840200)) b!4930265))

(declare-fun m!5950404 () Bool)

(assert (=> b!4930265 m!5950404))

(assert (=> b!4930198 d!1587309))

(declare-fun d!1587311 () Bool)

(declare-fun c!840203 () Bool)

(assert (=> d!1587311 (= c!840203 (is-Node!14891 (c!840185 totalInput!685)))))

(declare-fun e!3080295 () Bool)

(assert (=> d!1587311 (= (inv!73576 (c!840185 totalInput!685)) e!3080295)))

(declare-fun b!4930272 () Bool)

(declare-fun inv!73581 (Conc!14891) Bool)

(assert (=> b!4930272 (= e!3080295 (inv!73581 (c!840185 totalInput!685)))))

(declare-fun b!4930273 () Bool)

(declare-fun e!3080296 () Bool)

(assert (=> b!4930273 (= e!3080295 e!3080296)))

(declare-fun res!2103937 () Bool)

(assert (=> b!4930273 (= res!2103937 (not (is-Leaf!24770 (c!840185 totalInput!685))))))

(assert (=> b!4930273 (=> res!2103937 e!3080296)))

(declare-fun b!4930274 () Bool)

(declare-fun inv!73582 (Conc!14891) Bool)

(assert (=> b!4930274 (= e!3080296 (inv!73582 (c!840185 totalInput!685)))))

(assert (= (and d!1587311 c!840203) b!4930272))

(assert (= (and d!1587311 (not c!840203)) b!4930273))

(assert (= (and b!4930273 (not res!2103937)) b!4930274))

(declare-fun m!5950406 () Bool)

(assert (=> b!4930272 m!5950406))

(declare-fun m!5950408 () Bool)

(assert (=> b!4930274 m!5950408))

(assert (=> b!4930199 d!1587311))

(declare-fun b!4930286 () Bool)

(declare-fun e!3080303 () Bool)

(assert (=> b!4930286 (= e!3080303 (>= (size!37530 lt!2029458) (size!37530 testedP!110)))))

(declare-fun d!1587313 () Bool)

(assert (=> d!1587313 e!3080303))

(declare-fun res!2103948 () Bool)

(assert (=> d!1587313 (=> res!2103948 e!3080303)))

(declare-fun lt!2029490 () Bool)

(assert (=> d!1587313 (= res!2103948 (not lt!2029490))))

(declare-fun e!3080305 () Bool)

(assert (=> d!1587313 (= lt!2029490 e!3080305)))

(declare-fun res!2103949 () Bool)

(assert (=> d!1587313 (=> res!2103949 e!3080305)))

(assert (=> d!1587313 (= res!2103949 (is-Nil!56719 testedP!110))))

(assert (=> d!1587313 (= (isPrefix!4980 testedP!110 lt!2029458) lt!2029490)))

(declare-fun b!4930283 () Bool)

(declare-fun e!3080304 () Bool)

(assert (=> b!4930283 (= e!3080305 e!3080304)))

(declare-fun res!2103946 () Bool)

(assert (=> b!4930283 (=> (not res!2103946) (not e!3080304))))

(assert (=> b!4930283 (= res!2103946 (not (is-Nil!56719 lt!2029458)))))

(declare-fun b!4930285 () Bool)

(declare-fun tail!9678 (List!56843) List!56843)

(assert (=> b!4930285 (= e!3080304 (isPrefix!4980 (tail!9678 testedP!110) (tail!9678 lt!2029458)))))

(declare-fun b!4930284 () Bool)

(declare-fun res!2103947 () Bool)

(assert (=> b!4930284 (=> (not res!2103947) (not e!3080304))))

(declare-fun head!10531 (List!56843) C!26994)

(assert (=> b!4930284 (= res!2103947 (= (head!10531 testedP!110) (head!10531 lt!2029458)))))

(assert (= (and d!1587313 (not res!2103949)) b!4930283))

(assert (= (and b!4930283 res!2103946) b!4930284))

(assert (= (and b!4930284 res!2103947) b!4930285))

(assert (= (and d!1587313 (not res!2103948)) b!4930286))

(assert (=> b!4930286 m!5950324))

(assert (=> b!4930286 m!5950314))

(declare-fun m!5950410 () Bool)

(assert (=> b!4930285 m!5950410))

(declare-fun m!5950412 () Bool)

(assert (=> b!4930285 m!5950412))

(assert (=> b!4930285 m!5950410))

(assert (=> b!4930285 m!5950412))

(declare-fun m!5950414 () Bool)

(assert (=> b!4930285 m!5950414))

(declare-fun m!5950416 () Bool)

(assert (=> b!4930284 m!5950416))

(declare-fun m!5950418 () Bool)

(assert (=> b!4930284 m!5950418))

(assert (=> b!4930200 d!1587313))

(declare-fun b!4930290 () Bool)

(declare-fun e!3080306 () Bool)

(assert (=> b!4930290 (= e!3080306 (>= (size!37530 lt!2029459) (size!37530 testedP!110)))))

(declare-fun d!1587315 () Bool)

(assert (=> d!1587315 e!3080306))

(declare-fun res!2103952 () Bool)

(assert (=> d!1587315 (=> res!2103952 e!3080306)))

(declare-fun lt!2029491 () Bool)

(assert (=> d!1587315 (= res!2103952 (not lt!2029491))))

(declare-fun e!3080308 () Bool)

(assert (=> d!1587315 (= lt!2029491 e!3080308)))

(declare-fun res!2103953 () Bool)

(assert (=> d!1587315 (=> res!2103953 e!3080308)))

(assert (=> d!1587315 (= res!2103953 (is-Nil!56719 testedP!110))))

(assert (=> d!1587315 (= (isPrefix!4980 testedP!110 lt!2029459) lt!2029491)))

(declare-fun b!4930287 () Bool)

(declare-fun e!3080307 () Bool)

(assert (=> b!4930287 (= e!3080308 e!3080307)))

(declare-fun res!2103950 () Bool)

(assert (=> b!4930287 (=> (not res!2103950) (not e!3080307))))

(assert (=> b!4930287 (= res!2103950 (not (is-Nil!56719 lt!2029459)))))

(declare-fun b!4930289 () Bool)

(assert (=> b!4930289 (= e!3080307 (isPrefix!4980 (tail!9678 testedP!110) (tail!9678 lt!2029459)))))

(declare-fun b!4930288 () Bool)

(declare-fun res!2103951 () Bool)

(assert (=> b!4930288 (=> (not res!2103951) (not e!3080307))))

(assert (=> b!4930288 (= res!2103951 (= (head!10531 testedP!110) (head!10531 lt!2029459)))))

(assert (= (and d!1587315 (not res!2103953)) b!4930287))

(assert (= (and b!4930287 res!2103950) b!4930288))

(assert (= (and b!4930288 res!2103951) b!4930289))

(assert (= (and d!1587315 (not res!2103952)) b!4930290))

(declare-fun m!5950420 () Bool)

(assert (=> b!4930290 m!5950420))

(assert (=> b!4930290 m!5950314))

(assert (=> b!4930289 m!5950410))

(declare-fun m!5950422 () Bool)

(assert (=> b!4930289 m!5950422))

(assert (=> b!4930289 m!5950410))

(assert (=> b!4930289 m!5950422))

(declare-fun m!5950424 () Bool)

(assert (=> b!4930289 m!5950424))

(assert (=> b!4930288 m!5950416))

(declare-fun m!5950426 () Bool)

(assert (=> b!4930288 m!5950426))

(assert (=> b!4930200 d!1587315))

(declare-fun d!1587317 () Bool)

(assert (=> d!1587317 (isPrefix!4980 testedP!110 (++!12347 testedP!110 testedSuffix!70))))

(declare-fun lt!2029494 () Unit!147347)

(declare-fun choose!36128 (List!56843 List!56843) Unit!147347)

(assert (=> d!1587317 (= lt!2029494 (choose!36128 testedP!110 testedSuffix!70))))

(assert (=> d!1587317 (= (lemmaConcatTwoListThenFirstIsPrefix!3204 testedP!110 testedSuffix!70) lt!2029494)))

(declare-fun bs!1180264 () Bool)

(assert (= bs!1180264 d!1587317))

(assert (=> bs!1180264 m!5950320))

(assert (=> bs!1180264 m!5950320))

(declare-fun m!5950428 () Bool)

(assert (=> bs!1180264 m!5950428))

(declare-fun m!5950430 () Bool)

(assert (=> bs!1180264 m!5950430))

(assert (=> b!4930200 d!1587317))

(declare-fun d!1587319 () Bool)

(declare-fun lt!2029497 () Int)

(assert (=> d!1587319 (= lt!2029497 (size!37530 (list!17984 totalInput!685)))))

(declare-fun size!37533 (Conc!14891) Int)

(assert (=> d!1587319 (= lt!2029497 (size!37533 (c!840185 totalInput!685)))))

(assert (=> d!1587319 (= (size!37529 totalInput!685) lt!2029497)))

(declare-fun bs!1180265 () Bool)

(assert (= bs!1180265 d!1587319))

(assert (=> bs!1180265 m!5950318))

(assert (=> bs!1180265 m!5950318))

(declare-fun m!5950432 () Bool)

(assert (=> bs!1180265 m!5950432))

(declare-fun m!5950434 () Bool)

(assert (=> bs!1180265 m!5950434))

(assert (=> b!4930195 d!1587319))

(declare-fun bs!1180266 () Bool)

(declare-fun b!4930295 () Bool)

(declare-fun d!1587321 () Bool)

(assert (= bs!1180266 (and b!4930295 d!1587321)))

(declare-fun lambda!245409 () Int)

(declare-fun lambda!245408 () Int)

(assert (=> bs!1180266 (not (= lambda!245409 lambda!245408))))

(declare-fun bs!1180267 () Bool)

(declare-fun b!4930296 () Bool)

(assert (= bs!1180267 (and b!4930296 d!1587321)))

(declare-fun lambda!245410 () Int)

(assert (=> bs!1180267 (not (= lambda!245410 lambda!245408))))

(declare-fun bs!1180268 () Bool)

(assert (= bs!1180268 (and b!4930296 b!4930295)))

(assert (=> bs!1180268 (= lambda!245410 lambda!245409)))

(declare-fun e!3080315 () Unit!147347)

(declare-fun Unit!147351 () Unit!147347)

(assert (=> b!4930295 (= e!3080315 Unit!147351)))

(declare-datatypes ((List!56847 0))(
  ( (Nil!56723) (Cons!56723 (h!63171 Context!6048) (t!367323 List!56847)) )
))
(declare-fun lt!2029516 () List!56847)

(declare-fun call!344117 () List!56847)

(assert (=> b!4930295 (= lt!2029516 call!344117)))

(declare-fun lt!2029520 () Unit!147347)

(declare-fun lemmaNotForallThenExists!185 (List!56847 Int) Unit!147347)

(assert (=> b!4930295 (= lt!2029520 (lemmaNotForallThenExists!185 lt!2029516 lambda!245408))))

(declare-fun call!344118 () Bool)

(assert (=> b!4930295 call!344118))

(declare-fun lt!2029517 () Unit!147347)

(assert (=> b!4930295 (= lt!2029517 lt!2029520)))

(declare-fun bm!344113 () Bool)

(declare-fun toList!7947 ((Set Context!6048)) List!56847)

(assert (=> bm!344113 (= call!344117 (toList!7947 z!3568))))

(declare-fun Unit!147352 () Unit!147347)

(assert (=> b!4930296 (= e!3080315 Unit!147352)))

(declare-fun lt!2029514 () List!56847)

(assert (=> b!4930296 (= lt!2029514 call!344117)))

(declare-fun lt!2029515 () Unit!147347)

(declare-fun lemmaForallThenNotExists!168 (List!56847 Int) Unit!147347)

(assert (=> b!4930296 (= lt!2029515 (lemmaForallThenNotExists!168 lt!2029514 lambda!245408))))

(assert (=> b!4930296 (not call!344118)))

(declare-fun lt!2029521 () Unit!147347)

(assert (=> b!4930296 (= lt!2029521 lt!2029515)))

(declare-fun lt!2029518 () Bool)

(declare-datatypes ((Option!14165 0))(
  ( (None!14164) (Some!14164 (v!50134 List!56843)) )
))
(declare-fun isEmpty!30586 (Option!14165) Bool)

(declare-fun getLanguageWitness!623 ((Set Context!6048)) Option!14165)

(assert (=> d!1587321 (= lt!2029518 (isEmpty!30586 (getLanguageWitness!623 z!3568)))))

(declare-fun forall!13149 ((Set Context!6048) Int) Bool)

(assert (=> d!1587321 (= lt!2029518 (forall!13149 z!3568 lambda!245408))))

(declare-fun lt!2029519 () Unit!147347)

(assert (=> d!1587321 (= lt!2029519 e!3080315)))

(declare-fun c!840214 () Bool)

(assert (=> d!1587321 (= c!840214 (not (forall!13149 z!3568 lambda!245408)))))

(assert (=> d!1587321 (= (lostCauseZipper!700 z!3568) lt!2029518)))

(declare-fun bm!344112 () Bool)

(declare-fun exists!1254 (List!56847 Int) Bool)

(assert (=> bm!344112 (= call!344118 (exists!1254 (ite c!840214 lt!2029516 lt!2029514) (ite c!840214 lambda!245409 lambda!245410)))))

(assert (= (and d!1587321 c!840214) b!4930295))

(assert (= (and d!1587321 (not c!840214)) b!4930296))

(assert (= (or b!4930295 b!4930296) bm!344112))

(assert (= (or b!4930295 b!4930296) bm!344113))

(declare-fun m!5950436 () Bool)

(assert (=> b!4930296 m!5950436))

(declare-fun m!5950438 () Bool)

(assert (=> d!1587321 m!5950438))

(assert (=> d!1587321 m!5950438))

(declare-fun m!5950440 () Bool)

(assert (=> d!1587321 m!5950440))

(declare-fun m!5950442 () Bool)

(assert (=> d!1587321 m!5950442))

(assert (=> d!1587321 m!5950442))

(declare-fun m!5950444 () Bool)

(assert (=> b!4930295 m!5950444))

(declare-fun m!5950446 () Bool)

(assert (=> bm!344112 m!5950446))

(declare-fun m!5950448 () Bool)

(assert (=> bm!344113 m!5950448))

(assert (=> b!4930201 d!1587321))

(declare-fun d!1587323 () Bool)

(assert (=> d!1587323 (= testedSuffix!70 lt!2029456)))

(declare-fun lt!2029524 () Unit!147347)

(declare-fun choose!36129 (List!56843 List!56843 List!56843 List!56843 List!56843) Unit!147347)

(assert (=> d!1587323 (= lt!2029524 (choose!36129 testedP!110 testedSuffix!70 testedP!110 lt!2029456 lt!2029458))))

(assert (=> d!1587323 (isPrefix!4980 testedP!110 lt!2029458)))

(assert (=> d!1587323 (= (lemmaSamePrefixThenSameSuffix!2378 testedP!110 testedSuffix!70 testedP!110 lt!2029456 lt!2029458) lt!2029524)))

(declare-fun bs!1180269 () Bool)

(assert (= bs!1180269 d!1587323))

(declare-fun m!5950450 () Bool)

(assert (=> bs!1180269 m!5950450))

(assert (=> bs!1180269 m!5950326))

(assert (=> b!4930201 d!1587323))

(declare-fun d!1587325 () Bool)

(declare-fun lt!2029527 () List!56843)

(assert (=> d!1587325 (= (++!12347 testedP!110 lt!2029527) lt!2029458)))

(declare-fun e!3080318 () List!56843)

(assert (=> d!1587325 (= lt!2029527 e!3080318)))

(declare-fun c!840217 () Bool)

(assert (=> d!1587325 (= c!840217 (is-Cons!56719 testedP!110))))

(assert (=> d!1587325 (>= (size!37530 lt!2029458) (size!37530 testedP!110))))

(assert (=> d!1587325 (= (getSuffix!2964 lt!2029458 testedP!110) lt!2029527)))

(declare-fun b!4930301 () Bool)

(assert (=> b!4930301 (= e!3080318 (getSuffix!2964 (tail!9678 lt!2029458) (t!367319 testedP!110)))))

(declare-fun b!4930302 () Bool)

(assert (=> b!4930302 (= e!3080318 lt!2029458)))

(assert (= (and d!1587325 c!840217) b!4930301))

(assert (= (and d!1587325 (not c!840217)) b!4930302))

(declare-fun m!5950452 () Bool)

(assert (=> d!1587325 m!5950452))

(assert (=> d!1587325 m!5950324))

(assert (=> d!1587325 m!5950314))

(assert (=> b!4930301 m!5950412))

(assert (=> b!4930301 m!5950412))

(declare-fun m!5950454 () Bool)

(assert (=> b!4930301 m!5950454))

(assert (=> b!4930201 d!1587325))

(declare-fun d!1587327 () Bool)

(declare-fun lt!2029528 () Int)

(assert (=> d!1587327 (>= lt!2029528 0)))

(declare-fun e!3080319 () Int)

(assert (=> d!1587327 (= lt!2029528 e!3080319)))

(declare-fun c!840218 () Bool)

(assert (=> d!1587327 (= c!840218 (is-Nil!56719 lt!2029458))))

(assert (=> d!1587327 (= (size!37530 lt!2029458) lt!2029528)))

(declare-fun b!4930303 () Bool)

(assert (=> b!4930303 (= e!3080319 0)))

(declare-fun b!4930304 () Bool)

(assert (=> b!4930304 (= e!3080319 (+ 1 (size!37530 (t!367319 lt!2029458))))))

(assert (= (and d!1587327 c!840218) b!4930303))

(assert (= (and d!1587327 (not c!840218)) b!4930304))

(declare-fun m!5950456 () Bool)

(assert (=> b!4930304 m!5950456))

(assert (=> b!4930196 d!1587327))

(declare-fun condSetEmpty!27587 () Bool)

(assert (=> setNonEmpty!27581 (= condSetEmpty!27587 (= setRest!27581 (as set.empty (Set Context!6048))))))

(declare-fun setRes!27587 () Bool)

(assert (=> setNonEmpty!27581 (= tp!1384056 setRes!27587)))

(declare-fun setIsEmpty!27587 () Bool)

(assert (=> setIsEmpty!27587 setRes!27587))

(declare-fun setNonEmpty!27587 () Bool)

(declare-fun setElem!27587 () Context!6048)

(declare-fun e!3080322 () Bool)

(declare-fun tp!1384078 () Bool)

(assert (=> setNonEmpty!27587 (= setRes!27587 (and tp!1384078 (inv!73577 setElem!27587) e!3080322))))

(declare-fun setRest!27587 () (Set Context!6048))

(assert (=> setNonEmpty!27587 (= setRest!27581 (set.union (set.insert setElem!27587 (as set.empty (Set Context!6048))) setRest!27587))))

(declare-fun b!4930309 () Bool)

(declare-fun tp!1384079 () Bool)

(assert (=> b!4930309 (= e!3080322 tp!1384079)))

(assert (= (and setNonEmpty!27581 condSetEmpty!27587) setIsEmpty!27587))

(assert (= (and setNonEmpty!27581 (not condSetEmpty!27587)) setNonEmpty!27587))

(assert (= setNonEmpty!27587 b!4930309))

(declare-fun m!5950458 () Bool)

(assert (=> setNonEmpty!27587 m!5950458))

(declare-fun b!4930314 () Bool)

(declare-fun e!3080325 () Bool)

(declare-fun tp!1384084 () Bool)

(declare-fun tp!1384085 () Bool)

(assert (=> b!4930314 (= e!3080325 (and tp!1384084 tp!1384085))))

(assert (=> b!4930197 (= tp!1384057 e!3080325)))

(assert (= (and b!4930197 (is-Cons!56720 (exprs!3524 setElem!27581))) b!4930314))

(declare-fun b!4930319 () Bool)

(declare-fun e!3080328 () Bool)

(declare-fun tp!1384088 () Bool)

(assert (=> b!4930319 (= e!3080328 (and tp_is_empty!35941 tp!1384088))))

(assert (=> b!4930202 (= tp!1384055 e!3080328)))

(assert (= (and b!4930202 (is-Cons!56719 (t!367319 testedP!110))) b!4930319))

(declare-fun b!4930328 () Bool)

(declare-fun tp!1384095 () Bool)

(declare-fun e!3080334 () Bool)

(declare-fun tp!1384096 () Bool)

(assert (=> b!4930328 (= e!3080334 (and (inv!73576 (left!41371 (c!840185 totalInput!685))) tp!1384095 (inv!73576 (right!41701 (c!840185 totalInput!685))) tp!1384096))))

(declare-fun b!4930330 () Bool)

(declare-fun e!3080333 () Bool)

(declare-fun tp!1384097 () Bool)

(assert (=> b!4930330 (= e!3080333 tp!1384097)))

(declare-fun b!4930329 () Bool)

(declare-fun inv!73583 (IArray!29843) Bool)

(assert (=> b!4930329 (= e!3080334 (and (inv!73583 (xs!18215 (c!840185 totalInput!685))) e!3080333))))

(assert (=> b!4930199 (= tp!1384054 (and (inv!73576 (c!840185 totalInput!685)) e!3080334))))

(assert (= (and b!4930199 (is-Node!14891 (c!840185 totalInput!685))) b!4930328))

(assert (= b!4930329 b!4930330))

(assert (= (and b!4930199 (is-Leaf!24770 (c!840185 totalInput!685))) b!4930329))

(declare-fun m!5950460 () Bool)

(assert (=> b!4930328 m!5950460))

(declare-fun m!5950462 () Bool)

(assert (=> b!4930328 m!5950462))

(declare-fun m!5950464 () Bool)

(assert (=> b!4930329 m!5950464))

(assert (=> b!4930199 m!5950316))

(declare-fun b!4930331 () Bool)

(declare-fun e!3080335 () Bool)

(declare-fun tp!1384098 () Bool)

(assert (=> b!4930331 (= e!3080335 (and tp_is_empty!35941 tp!1384098))))

(assert (=> b!4930194 (= tp!1384058 e!3080335)))

(assert (= (and b!4930194 (is-Cons!56719 (t!367319 testedSuffix!70))) b!4930331))

(push 1)

(assert (not b!4930314))

(assert (not b!4930301))

(assert (not b!4930285))

(assert (not b!4930304))

(assert (not b!4930284))

(assert (not bm!344112))

(assert (not d!1587323))

(assert (not d!1587321))

(assert (not b!4930330))

(assert (not d!1587325))

(assert (not b!4930286))

(assert (not b!4930272))

(assert (not b!4930331))

(assert (not d!1587319))

(assert (not b!4930295))

(assert (not b!4930288))

(assert (not b!4930328))

(assert (not b!4930257))

(assert (not d!1587293))

(assert (not d!1587317))

(assert (not b!4930290))

(assert (not b!4930296))

(assert tp_is_empty!35941)

(assert (not b!4930329))

(assert (not bm!344113))

(assert (not setNonEmpty!27587))

(assert (not b!4930265))

(assert (not d!1587307))

(assert (not b!4930309))

(assert (not d!1587303))

(assert (not b!4930319))

(assert (not b!4930258))

(assert (not b!4930274))

(assert (not b!4930289))

(assert (not b!4930199))

(assert (not d!1587305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

