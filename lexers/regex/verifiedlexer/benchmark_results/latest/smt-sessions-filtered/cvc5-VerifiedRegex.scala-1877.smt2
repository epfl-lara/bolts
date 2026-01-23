; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92588 () Bool)

(assert start!92588)

(declare-fun bs!256751 () Bool)

(declare-fun b!1086406 () Bool)

(declare-fun b!1086402 () Bool)

(assert (= bs!256751 (and b!1086406 b!1086402)))

(declare-fun lambda!40212 () Int)

(declare-fun lambda!40211 () Int)

(assert (=> bs!256751 (not (= lambda!40212 lambda!40211))))

(assert (=> b!1086406 true))

(declare-fun b!1086400 () Bool)

(declare-fun e!687128 () Bool)

(declare-fun e!687125 () Bool)

(assert (=> b!1086400 (= e!687128 e!687125)))

(declare-fun res!483140 () Bool)

(assert (=> b!1086400 (=> res!483140 e!687125)))

(declare-datatypes ((C!6594 0))(
  ( (C!6595 (val!3545 Int)) )
))
(declare-datatypes ((Regex!3012 0))(
  ( (ElementMatch!3012 (c!183766 C!6594)) (Concat!4845 (regOne!6536 Regex!3012) (regTwo!6536 Regex!3012)) (EmptyExpr!3012) (Star!3012 (reg!3341 Regex!3012)) (EmptyLang!3012) (Union!3012 (regOne!6537 Regex!3012) (regTwo!6537 Regex!3012)) )
))
(declare-datatypes ((List!10339 0))(
  ( (Nil!10323) (Cons!10323 (h!15724 Regex!3012) (t!101385 List!10339)) )
))
(declare-datatypes ((Context!984 0))(
  ( (Context!985 (exprs!992 List!10339)) )
))
(declare-fun lt!363465 () Context!984)

(declare-fun z!1122 () (Set Context!984))

(assert (=> b!1086400 (= res!483140 (not (set.member lt!363465 z!1122)))))

(declare-datatypes ((Unit!15715 0))(
  ( (Unit!15716) )
))
(declare-fun lt!363462 () Unit!15715)

(declare-fun filterPost!19 ((Set Context!984) Int Context!984) Unit!15715)

(assert (=> b!1086400 (= lt!363462 (filterPost!19 z!1122 lambda!40211 lt!363465))))

(declare-fun b!1086401 () Bool)

(declare-fun e!687127 () Bool)

(declare-fun tp!325375 () Bool)

(assert (=> b!1086401 (= e!687127 tp!325375)))

(declare-fun res!483141 () Bool)

(declare-fun e!687124 () Bool)

(assert (=> b!1086402 (=> (not res!483141) (not e!687124))))

(declare-datatypes ((List!10340 0))(
  ( (Nil!10324) (Cons!10324 (h!15725 C!6594) (t!101386 List!10340)) )
))
(declare-fun s!2287 () List!10340)

(declare-fun matchZipper!60 ((Set Context!984) List!10340) Bool)

(declare-fun filter!174 ((Set Context!984) Int) (Set Context!984))

(assert (=> b!1086402 (= res!483141 (matchZipper!60 (filter!174 z!1122 lambda!40211) s!2287))))

(declare-fun b!1086403 () Bool)

(declare-fun e!687123 () Bool)

(assert (=> b!1086403 (= e!687123 e!687128)))

(declare-fun res!483146 () Bool)

(assert (=> b!1086403 (=> res!483146 e!687128)))

(assert (=> b!1086403 (= res!483146 (not (set.member lt!363465 (filter!174 z!1122 lambda!40211))))))

(declare-fun getWitness!83 ((Set Context!984) Int) Context!984)

(assert (=> b!1086403 (= lt!363465 (getWitness!83 (filter!174 z!1122 lambda!40211) lambda!40212))))

(declare-fun res!483144 () Bool)

(assert (=> start!92588 (=> (not res!483144) (not e!687124))))

(declare-datatypes ((List!10341 0))(
  ( (Nil!10325) (Cons!10325 (h!15726 Context!984) (t!101387 List!10341)) )
))
(declare-fun lt!363463 () List!10341)

(declare-fun zl!316 () List!10341)

(assert (=> start!92588 (= res!483144 (= lt!363463 zl!316))))

(declare-fun toList!630 ((Set Context!984)) List!10341)

(assert (=> start!92588 (= lt!363463 (toList!630 z!1122))))

(assert (=> start!92588 e!687124))

(declare-fun condSetEmpty!7605 () Bool)

(assert (=> start!92588 (= condSetEmpty!7605 (= z!1122 (as set.empty (Set Context!984))))))

(declare-fun setRes!7605 () Bool)

(assert (=> start!92588 setRes!7605))

(declare-fun e!687126 () Bool)

(assert (=> start!92588 e!687126))

(declare-fun e!687122 () Bool)

(assert (=> start!92588 e!687122))

(declare-fun b!1086404 () Bool)

(declare-fun res!483145 () Bool)

(assert (=> b!1086404 (=> (not res!483145) (not e!687124))))

(assert (=> b!1086404 (= res!483145 (not (matchZipper!60 z!1122 s!2287)))))

(declare-fun b!1086405 () Bool)

(declare-fun e!687121 () Bool)

(assert (=> b!1086405 (= e!687125 e!687121)))

(declare-fun res!483142 () Bool)

(assert (=> b!1086405 (=> res!483142 e!687121)))

(declare-fun exists!167 ((Set Context!984) Int) Bool)

(assert (=> b!1086405 (= res!483142 (not (exists!167 z!1122 lambda!40212)))))

(assert (=> b!1086405 (exists!167 z!1122 lambda!40212)))

(declare-fun lt!363460 () Unit!15715)

(declare-fun lemmaContainsThenExists!26 ((Set Context!984) Context!984 Int) Unit!15715)

(assert (=> b!1086405 (= lt!363460 (lemmaContainsThenExists!26 z!1122 lt!363465 lambda!40212))))

(assert (=> b!1086406 (= e!687124 (not e!687123))))

(declare-fun res!483143 () Bool)

(assert (=> b!1086406 (=> res!483143 e!687123)))

(assert (=> b!1086406 (= res!483143 (not (exists!167 (filter!174 z!1122 lambda!40211) lambda!40212)))))

(declare-fun lt!363464 () List!10341)

(declare-fun exists!168 (List!10341 Int) Bool)

(assert (=> b!1086406 (exists!168 lt!363464 lambda!40212)))

(declare-fun lt!363461 () Unit!15715)

(declare-fun lemmaZipperMatchesExistsMatchingContext!39 (List!10341 List!10340) Unit!15715)

(assert (=> b!1086406 (= lt!363461 (lemmaZipperMatchesExistsMatchingContext!39 lt!363464 s!2287))))

(assert (=> b!1086406 (= lt!363464 (toList!630 (filter!174 z!1122 lambda!40211)))))

(declare-fun tp!325379 () Bool)

(declare-fun b!1086407 () Bool)

(declare-fun e!687129 () Bool)

(declare-fun inv!13244 (Context!984) Bool)

(assert (=> b!1086407 (= e!687126 (and (inv!13244 (h!15726 zl!316)) e!687129 tp!325379))))

(declare-fun b!1086408 () Bool)

(declare-fun res!483147 () Bool)

(assert (=> b!1086408 (=> res!483147 e!687128)))

(assert (=> b!1086408 (= res!483147 (not (matchZipper!60 (set.insert lt!363465 (as set.empty (Set Context!984))) s!2287)))))

(declare-fun b!1086409 () Bool)

(assert (=> b!1086409 (= e!687121 false)))

(declare-fun content!1481 (List!10341) (Set Context!984))

(assert (=> b!1086409 (matchZipper!60 (content!1481 lt!363463) s!2287)))

(declare-fun lt!363466 () Unit!15715)

(declare-fun lemmaExistsMatchingContextThenMatchingString!3 (List!10341 List!10340) Unit!15715)

(assert (=> b!1086409 (= lt!363466 (lemmaExistsMatchingContextThenMatchingString!3 lt!363463 s!2287))))

(declare-fun tp!325376 () Bool)

(declare-fun setNonEmpty!7605 () Bool)

(declare-fun setElem!7605 () Context!984)

(assert (=> setNonEmpty!7605 (= setRes!7605 (and tp!325376 (inv!13244 setElem!7605) e!687127))))

(declare-fun setRest!7605 () (Set Context!984))

(assert (=> setNonEmpty!7605 (= z!1122 (set.union (set.insert setElem!7605 (as set.empty (Set Context!984))) setRest!7605))))

(declare-fun b!1086410 () Bool)

(declare-fun tp_is_empty!5655 () Bool)

(declare-fun tp!325378 () Bool)

(assert (=> b!1086410 (= e!687122 (and tp_is_empty!5655 tp!325378))))

(declare-fun b!1086411 () Bool)

(declare-fun tp!325377 () Bool)

(assert (=> b!1086411 (= e!687129 tp!325377)))

(declare-fun setIsEmpty!7605 () Bool)

(assert (=> setIsEmpty!7605 setRes!7605))

(assert (= (and start!92588 res!483144) b!1086404))

(assert (= (and b!1086404 res!483145) b!1086402))

(assert (= (and b!1086402 res!483141) b!1086406))

(assert (= (and b!1086406 (not res!483143)) b!1086403))

(assert (= (and b!1086403 (not res!483146)) b!1086408))

(assert (= (and b!1086408 (not res!483147)) b!1086400))

(assert (= (and b!1086400 (not res!483140)) b!1086405))

(assert (= (and b!1086405 (not res!483142)) b!1086409))

(assert (= (and start!92588 condSetEmpty!7605) setIsEmpty!7605))

(assert (= (and start!92588 (not condSetEmpty!7605)) setNonEmpty!7605))

(assert (= setNonEmpty!7605 b!1086401))

(assert (= b!1086407 b!1086411))

(assert (= (and start!92588 (is-Cons!10325 zl!316)) b!1086407))

(assert (= (and start!92588 (is-Cons!10324 s!2287)) b!1086410))

(declare-fun m!1236327 () Bool)

(assert (=> b!1086406 m!1236327))

(assert (=> b!1086406 m!1236327))

(declare-fun m!1236329 () Bool)

(assert (=> b!1086406 m!1236329))

(assert (=> b!1086406 m!1236327))

(assert (=> b!1086406 m!1236327))

(declare-fun m!1236331 () Bool)

(assert (=> b!1086406 m!1236331))

(declare-fun m!1236333 () Bool)

(assert (=> b!1086406 m!1236333))

(declare-fun m!1236335 () Bool)

(assert (=> b!1086406 m!1236335))

(declare-fun m!1236337 () Bool)

(assert (=> b!1086404 m!1236337))

(assert (=> b!1086402 m!1236327))

(assert (=> b!1086402 m!1236327))

(declare-fun m!1236339 () Bool)

(assert (=> b!1086402 m!1236339))

(declare-fun m!1236341 () Bool)

(assert (=> b!1086408 m!1236341))

(assert (=> b!1086408 m!1236341))

(declare-fun m!1236343 () Bool)

(assert (=> b!1086408 m!1236343))

(declare-fun m!1236345 () Bool)

(assert (=> b!1086405 m!1236345))

(assert (=> b!1086405 m!1236345))

(declare-fun m!1236347 () Bool)

(assert (=> b!1086405 m!1236347))

(declare-fun m!1236349 () Bool)

(assert (=> b!1086409 m!1236349))

(assert (=> b!1086409 m!1236349))

(declare-fun m!1236351 () Bool)

(assert (=> b!1086409 m!1236351))

(declare-fun m!1236353 () Bool)

(assert (=> b!1086409 m!1236353))

(declare-fun m!1236355 () Bool)

(assert (=> start!92588 m!1236355))

(assert (=> b!1086403 m!1236327))

(declare-fun m!1236357 () Bool)

(assert (=> b!1086403 m!1236357))

(assert (=> b!1086403 m!1236327))

(assert (=> b!1086403 m!1236327))

(declare-fun m!1236359 () Bool)

(assert (=> b!1086403 m!1236359))

(declare-fun m!1236361 () Bool)

(assert (=> setNonEmpty!7605 m!1236361))

(declare-fun m!1236363 () Bool)

(assert (=> b!1086407 m!1236363))

(declare-fun m!1236365 () Bool)

(assert (=> b!1086400 m!1236365))

(declare-fun m!1236367 () Bool)

(assert (=> b!1086400 m!1236367))

(push 1)

(assert (not b!1086410))

(assert (not b!1086403))

(assert (not b!1086411))

(assert (not b!1086409))

(assert (not b!1086408))

(assert (not b!1086402))

(assert (not b!1086405))

(assert (not start!92588))

(assert (not b!1086407))

(assert tp_is_empty!5655)

(assert (not setNonEmpty!7605))

(assert (not b!1086406))

(assert (not b!1086404))

(assert (not b!1086400))

(assert (not b!1086401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305232 () Bool)

(declare-fun c!183792 () Bool)

(declare-fun isEmpty!6628 (List!10340) Bool)

(assert (=> d!305232 (= c!183792 (isEmpty!6628 s!2287))))

(declare-fun e!687159 () Bool)

(assert (=> d!305232 (= (matchZipper!60 (filter!174 z!1122 lambda!40211) s!2287) e!687159)))

(declare-fun b!1086456 () Bool)

(declare-fun nullableZipper!27 ((Set Context!984)) Bool)

(assert (=> b!1086456 (= e!687159 (nullableZipper!27 (filter!174 z!1122 lambda!40211)))))

(declare-fun b!1086457 () Bool)

(declare-fun derivationStepZipper!25 ((Set Context!984) C!6594) (Set Context!984))

(declare-fun head!2013 (List!10340) C!6594)

(declare-fun tail!1575 (List!10340) List!10340)

(assert (=> b!1086457 (= e!687159 (matchZipper!60 (derivationStepZipper!25 (filter!174 z!1122 lambda!40211) (head!2013 s!2287)) (tail!1575 s!2287)))))

(assert (= (and d!305232 c!183792) b!1086456))

(assert (= (and d!305232 (not c!183792)) b!1086457))

(declare-fun m!1236411 () Bool)

(assert (=> d!305232 m!1236411))

(assert (=> b!1086456 m!1236327))

(declare-fun m!1236413 () Bool)

(assert (=> b!1086456 m!1236413))

(declare-fun m!1236415 () Bool)

(assert (=> b!1086457 m!1236415))

(assert (=> b!1086457 m!1236327))

(assert (=> b!1086457 m!1236415))

(declare-fun m!1236417 () Bool)

(assert (=> b!1086457 m!1236417))

(declare-fun m!1236419 () Bool)

(assert (=> b!1086457 m!1236419))

(assert (=> b!1086457 m!1236417))

(assert (=> b!1086457 m!1236419))

(declare-fun m!1236421 () Bool)

(assert (=> b!1086457 m!1236421))

(assert (=> b!1086402 d!305232))

(declare-fun d!305236 () Bool)

(declare-fun choose!6938 ((Set Context!984) Int) (Set Context!984))

(assert (=> d!305236 (= (filter!174 z!1122 lambda!40211) (choose!6938 z!1122 lambda!40211))))

(declare-fun bs!256753 () Bool)

(assert (= bs!256753 d!305236))

(declare-fun m!1236423 () Bool)

(assert (=> bs!256753 m!1236423))

(assert (=> b!1086402 d!305236))

(assert (=> b!1086403 d!305236))

(declare-fun d!305238 () Bool)

(declare-fun e!687164 () Bool)

(assert (=> d!305238 e!687164))

(declare-fun res!483174 () Bool)

(assert (=> d!305238 (=> (not res!483174) (not e!687164))))

(declare-fun lt!363490 () Context!984)

(declare-fun dynLambda!4523 (Int Context!984) Bool)

(assert (=> d!305238 (= res!483174 (dynLambda!4523 lambda!40212 lt!363490))))

(declare-fun getWitness!85 (List!10341 Int) Context!984)

(assert (=> d!305238 (= lt!363490 (getWitness!85 (toList!630 (filter!174 z!1122 lambda!40211)) lambda!40212))))

(assert (=> d!305238 (exists!167 (filter!174 z!1122 lambda!40211) lambda!40212)))

(assert (=> d!305238 (= (getWitness!83 (filter!174 z!1122 lambda!40211) lambda!40212) lt!363490)))

(declare-fun b!1086464 () Bool)

(assert (=> b!1086464 (= e!687164 (set.member lt!363490 (filter!174 z!1122 lambda!40211)))))

(assert (= (and d!305238 res!483174) b!1086464))

(declare-fun b_lambda!30063 () Bool)

(assert (=> (not b_lambda!30063) (not d!305238)))

(declare-fun m!1236425 () Bool)

(assert (=> d!305238 m!1236425))

(assert (=> d!305238 m!1236327))

(assert (=> d!305238 m!1236331))

(assert (=> d!305238 m!1236331))

(declare-fun m!1236427 () Bool)

(assert (=> d!305238 m!1236427))

(assert (=> d!305238 m!1236327))

(assert (=> d!305238 m!1236329))

(declare-fun m!1236429 () Bool)

(assert (=> b!1086464 m!1236429))

(assert (=> b!1086403 d!305238))

(declare-fun d!305240 () Bool)

(declare-fun c!183796 () Bool)

(assert (=> d!305240 (= c!183796 (isEmpty!6628 s!2287))))

(declare-fun e!687166 () Bool)

(assert (=> d!305240 (= (matchZipper!60 (set.insert lt!363465 (as set.empty (Set Context!984))) s!2287) e!687166)))

(declare-fun b!1086467 () Bool)

(assert (=> b!1086467 (= e!687166 (nullableZipper!27 (set.insert lt!363465 (as set.empty (Set Context!984)))))))

(declare-fun b!1086468 () Bool)

(assert (=> b!1086468 (= e!687166 (matchZipper!60 (derivationStepZipper!25 (set.insert lt!363465 (as set.empty (Set Context!984))) (head!2013 s!2287)) (tail!1575 s!2287)))))

(assert (= (and d!305240 c!183796) b!1086467))

(assert (= (and d!305240 (not c!183796)) b!1086468))

(assert (=> d!305240 m!1236411))

(assert (=> b!1086467 m!1236341))

(declare-fun m!1236431 () Bool)

(assert (=> b!1086467 m!1236431))

(assert (=> b!1086468 m!1236415))

(assert (=> b!1086468 m!1236341))

(assert (=> b!1086468 m!1236415))

(declare-fun m!1236433 () Bool)

(assert (=> b!1086468 m!1236433))

(assert (=> b!1086468 m!1236419))

(assert (=> b!1086468 m!1236433))

(assert (=> b!1086468 m!1236419))

(declare-fun m!1236435 () Bool)

(assert (=> b!1086468 m!1236435))

(assert (=> b!1086408 d!305240))

(assert (=> b!1086406 d!305236))

(declare-fun d!305242 () Bool)

(declare-fun e!687171 () Bool)

(assert (=> d!305242 e!687171))

(declare-fun res!483177 () Bool)

(assert (=> d!305242 (=> (not res!483177) (not e!687171))))

(declare-fun lt!363493 () List!10341)

(declare-fun noDuplicate!189 (List!10341) Bool)

(assert (=> d!305242 (= res!483177 (noDuplicate!189 lt!363493))))

(declare-fun choose!6939 ((Set Context!984)) List!10341)

(assert (=> d!305242 (= lt!363493 (choose!6939 (filter!174 z!1122 lambda!40211)))))

(assert (=> d!305242 (= (toList!630 (filter!174 z!1122 lambda!40211)) lt!363493)))

(declare-fun b!1086475 () Bool)

(assert (=> b!1086475 (= e!687171 (= (content!1481 lt!363493) (filter!174 z!1122 lambda!40211)))))

(assert (= (and d!305242 res!483177) b!1086475))

(declare-fun m!1236449 () Bool)

(assert (=> d!305242 m!1236449))

(assert (=> d!305242 m!1236327))

(declare-fun m!1236451 () Bool)

(assert (=> d!305242 m!1236451))

(declare-fun m!1236453 () Bool)

(assert (=> b!1086475 m!1236453))

(assert (=> b!1086406 d!305242))

(declare-fun bs!256754 () Bool)

(declare-fun d!305246 () Bool)

(assert (= bs!256754 (and d!305246 b!1086402)))

(declare-fun lambda!40239 () Int)

(assert (=> bs!256754 (not (= lambda!40239 lambda!40211))))

(declare-fun bs!256755 () Bool)

(assert (= bs!256755 (and d!305246 b!1086406)))

(assert (=> bs!256755 (not (= lambda!40239 lambda!40212))))

(assert (=> d!305246 true))

(declare-fun order!6217 () Int)

(declare-fun dynLambda!4524 (Int Int) Int)

(assert (=> d!305246 (< (dynLambda!4524 order!6217 lambda!40212) (dynLambda!4524 order!6217 lambda!40239))))

(declare-fun forall!2270 (List!10341 Int) Bool)

(assert (=> d!305246 (= (exists!168 lt!363464 lambda!40212) (not (forall!2270 lt!363464 lambda!40239)))))

(declare-fun bs!256756 () Bool)

(assert (= bs!256756 d!305246))

(declare-fun m!1236459 () Bool)

(assert (=> bs!256756 m!1236459))

(assert (=> b!1086406 d!305246))

(declare-fun lt!363496 () Bool)

(declare-fun d!305250 () Bool)

(assert (=> d!305250 (= lt!363496 (exists!168 (toList!630 (filter!174 z!1122 lambda!40211)) lambda!40212))))

(declare-fun choose!6940 ((Set Context!984) Int) Bool)

(assert (=> d!305250 (= lt!363496 (choose!6940 (filter!174 z!1122 lambda!40211) lambda!40212))))

(assert (=> d!305250 (= (exists!167 (filter!174 z!1122 lambda!40211) lambda!40212) lt!363496)))

(declare-fun bs!256757 () Bool)

(assert (= bs!256757 d!305250))

(assert (=> bs!256757 m!1236327))

(assert (=> bs!256757 m!1236331))

(assert (=> bs!256757 m!1236331))

(declare-fun m!1236461 () Bool)

(assert (=> bs!256757 m!1236461))

(assert (=> bs!256757 m!1236327))

(declare-fun m!1236463 () Bool)

(assert (=> bs!256757 m!1236463))

(assert (=> b!1086406 d!305250))

(declare-fun bs!256758 () Bool)

(declare-fun d!305252 () Bool)

(assert (= bs!256758 (and d!305252 b!1086402)))

(declare-fun lambda!40244 () Int)

(assert (=> bs!256758 (not (= lambda!40244 lambda!40211))))

(declare-fun bs!256759 () Bool)

(assert (= bs!256759 (and d!305252 b!1086406)))

(assert (=> bs!256759 (= lambda!40244 lambda!40212)))

(declare-fun bs!256760 () Bool)

(assert (= bs!256760 (and d!305252 d!305246)))

(assert (=> bs!256760 (not (= lambda!40244 lambda!40239))))

(assert (=> d!305252 true))

(assert (=> d!305252 (exists!168 lt!363464 lambda!40244)))

(declare-fun lt!363499 () Unit!15715)

(declare-fun choose!6941 (List!10341 List!10340) Unit!15715)

(assert (=> d!305252 (= lt!363499 (choose!6941 lt!363464 s!2287))))

(assert (=> d!305252 (matchZipper!60 (content!1481 lt!363464) s!2287)))

(assert (=> d!305252 (= (lemmaZipperMatchesExistsMatchingContext!39 lt!363464 s!2287) lt!363499)))

(declare-fun bs!256761 () Bool)

(assert (= bs!256761 d!305252))

(declare-fun m!1236465 () Bool)

(assert (=> bs!256761 m!1236465))

(declare-fun m!1236467 () Bool)

(assert (=> bs!256761 m!1236467))

(declare-fun m!1236469 () Bool)

(assert (=> bs!256761 m!1236469))

(assert (=> bs!256761 m!1236469))

(declare-fun m!1236471 () Bool)

(assert (=> bs!256761 m!1236471))

(assert (=> b!1086406 d!305252))

(declare-fun d!305254 () Bool)

(declare-fun lambda!40248 () Int)

(declare-fun forall!2271 (List!10339 Int) Bool)

(assert (=> d!305254 (= (inv!13244 (h!15726 zl!316)) (forall!2271 (exprs!992 (h!15726 zl!316)) lambda!40248))))

(declare-fun bs!256765 () Bool)

(assert (= bs!256765 d!305254))

(declare-fun m!1236477 () Bool)

(assert (=> bs!256765 m!1236477))

(assert (=> b!1086407 d!305254))

(declare-fun d!305258 () Bool)

(declare-fun lt!363503 () Bool)

(assert (=> d!305258 (= lt!363503 (exists!168 (toList!630 z!1122) lambda!40212))))

(assert (=> d!305258 (= lt!363503 (choose!6940 z!1122 lambda!40212))))

(assert (=> d!305258 (= (exists!167 z!1122 lambda!40212) lt!363503)))

(declare-fun bs!256766 () Bool)

(assert (= bs!256766 d!305258))

(assert (=> bs!256766 m!1236355))

(assert (=> bs!256766 m!1236355))

(declare-fun m!1236479 () Bool)

(assert (=> bs!256766 m!1236479))

(declare-fun m!1236481 () Bool)

(assert (=> bs!256766 m!1236481))

(assert (=> b!1086405 d!305258))

(declare-fun d!305260 () Bool)

(assert (=> d!305260 (exists!167 z!1122 lambda!40212)))

(declare-fun lt!363506 () Unit!15715)

(declare-fun choose!6942 ((Set Context!984) Context!984 Int) Unit!15715)

(assert (=> d!305260 (= lt!363506 (choose!6942 z!1122 lt!363465 lambda!40212))))

(assert (=> d!305260 (set.member lt!363465 z!1122)))

(assert (=> d!305260 (= (lemmaContainsThenExists!26 z!1122 lt!363465 lambda!40212) lt!363506)))

(declare-fun bs!256767 () Bool)

(assert (= bs!256767 d!305260))

(assert (=> bs!256767 m!1236345))

(declare-fun m!1236483 () Bool)

(assert (=> bs!256767 m!1236483))

(assert (=> bs!256767 m!1236365))

(assert (=> b!1086405 d!305260))

(declare-fun bs!256768 () Bool)

(declare-fun d!305262 () Bool)

(assert (= bs!256768 (and d!305262 d!305254)))

(declare-fun lambda!40249 () Int)

(assert (=> bs!256768 (= lambda!40249 lambda!40248)))

(assert (=> d!305262 (= (inv!13244 setElem!7605) (forall!2271 (exprs!992 setElem!7605) lambda!40249))))

(declare-fun bs!256769 () Bool)

(assert (= bs!256769 d!305262))

(declare-fun m!1236485 () Bool)

(assert (=> bs!256769 m!1236485))

(assert (=> setNonEmpty!7605 d!305262))

(declare-fun e!687176 () Bool)

(declare-fun d!305264 () Bool)

(assert (=> d!305264 (= (set.member lt!363465 (filter!174 z!1122 lambda!40211)) e!687176)))

(declare-fun res!483180 () Bool)

(assert (=> d!305264 (=> (not res!483180) (not e!687176))))

(assert (=> d!305264 (= res!483180 (dynLambda!4523 lambda!40211 lt!363465))))

(declare-fun lt!363509 () Unit!15715)

(declare-fun choose!6943 ((Set Context!984) Int Context!984) Unit!15715)

(assert (=> d!305264 (= lt!363509 (choose!6943 z!1122 lambda!40211 lt!363465))))

(assert (=> d!305264 (= (filterPost!19 z!1122 lambda!40211 lt!363465) lt!363509)))

(declare-fun b!1086482 () Bool)

(assert (=> b!1086482 (= e!687176 (set.member lt!363465 z!1122))))

(assert (= (and d!305264 res!483180) b!1086482))

(declare-fun b_lambda!30065 () Bool)

(assert (=> (not b_lambda!30065) (not d!305264)))

(assert (=> d!305264 m!1236327))

(assert (=> d!305264 m!1236357))

(declare-fun m!1236489 () Bool)

(assert (=> d!305264 m!1236489))

(declare-fun m!1236491 () Bool)

(assert (=> d!305264 m!1236491))

(assert (=> b!1086482 m!1236365))

(assert (=> b!1086400 d!305264))

(declare-fun d!305268 () Bool)

(declare-fun c!183804 () Bool)

(assert (=> d!305268 (= c!183804 (isEmpty!6628 s!2287))))

(declare-fun e!687177 () Bool)

(assert (=> d!305268 (= (matchZipper!60 (content!1481 lt!363463) s!2287) e!687177)))

(declare-fun b!1086483 () Bool)

(assert (=> b!1086483 (= e!687177 (nullableZipper!27 (content!1481 lt!363463)))))

(declare-fun b!1086484 () Bool)

(assert (=> b!1086484 (= e!687177 (matchZipper!60 (derivationStepZipper!25 (content!1481 lt!363463) (head!2013 s!2287)) (tail!1575 s!2287)))))

(assert (= (and d!305268 c!183804) b!1086483))

(assert (= (and d!305268 (not c!183804)) b!1086484))

(assert (=> d!305268 m!1236411))

(assert (=> b!1086483 m!1236349))

(declare-fun m!1236493 () Bool)

(assert (=> b!1086483 m!1236493))

(assert (=> b!1086484 m!1236415))

(assert (=> b!1086484 m!1236349))

(assert (=> b!1086484 m!1236415))

(declare-fun m!1236495 () Bool)

(assert (=> b!1086484 m!1236495))

(assert (=> b!1086484 m!1236419))

(assert (=> b!1086484 m!1236495))

(assert (=> b!1086484 m!1236419))

(declare-fun m!1236497 () Bool)

(assert (=> b!1086484 m!1236497))

(assert (=> b!1086409 d!305268))

(declare-fun d!305270 () Bool)

(declare-fun c!183807 () Bool)

(assert (=> d!305270 (= c!183807 (is-Nil!10325 lt!363463))))

(declare-fun e!687182 () (Set Context!984))

(assert (=> d!305270 (= (content!1481 lt!363463) e!687182)))

(declare-fun b!1086491 () Bool)

(assert (=> b!1086491 (= e!687182 (as set.empty (Set Context!984)))))

(declare-fun b!1086492 () Bool)

(assert (=> b!1086492 (= e!687182 (set.union (set.insert (h!15726 lt!363463) (as set.empty (Set Context!984))) (content!1481 (t!101387 lt!363463))))))

(assert (= (and d!305270 c!183807) b!1086491))

(assert (= (and d!305270 (not c!183807)) b!1086492))

(declare-fun m!1236499 () Bool)

(assert (=> b!1086492 m!1236499))

(declare-fun m!1236501 () Bool)

(assert (=> b!1086492 m!1236501))

(assert (=> b!1086409 d!305270))

(declare-fun bs!256771 () Bool)

(declare-fun d!305272 () Bool)

(assert (= bs!256771 (and d!305272 b!1086402)))

(declare-fun lambda!40255 () Int)

(assert (=> bs!256771 (not (= lambda!40255 lambda!40211))))

(declare-fun bs!256772 () Bool)

(assert (= bs!256772 (and d!305272 b!1086406)))

(assert (=> bs!256772 (= lambda!40255 lambda!40212)))

(declare-fun bs!256773 () Bool)

(assert (= bs!256773 (and d!305272 d!305246)))

(assert (=> bs!256773 (not (= lambda!40255 lambda!40239))))

(declare-fun bs!256774 () Bool)

(assert (= bs!256774 (and d!305272 d!305252)))

(assert (=> bs!256774 (= lambda!40255 lambda!40244)))

(assert (=> d!305272 true))

(assert (=> d!305272 (matchZipper!60 (content!1481 lt!363463) s!2287)))

(declare-fun lt!363517 () Unit!15715)

(declare-fun choose!6944 (List!10341 List!10340) Unit!15715)

(assert (=> d!305272 (= lt!363517 (choose!6944 lt!363463 s!2287))))

(assert (=> d!305272 (exists!168 lt!363463 lambda!40255)))

(assert (=> d!305272 (= (lemmaExistsMatchingContextThenMatchingString!3 lt!363463 s!2287) lt!363517)))

(declare-fun bs!256775 () Bool)

(assert (= bs!256775 d!305272))

(assert (=> bs!256775 m!1236349))

(assert (=> bs!256775 m!1236349))

(assert (=> bs!256775 m!1236351))

(declare-fun m!1236509 () Bool)

(assert (=> bs!256775 m!1236509))

(declare-fun m!1236511 () Bool)

(assert (=> bs!256775 m!1236511))

(assert (=> b!1086409 d!305272))

(declare-fun d!305276 () Bool)

(declare-fun e!687186 () Bool)

(assert (=> d!305276 e!687186))

(declare-fun res!483186 () Bool)

(assert (=> d!305276 (=> (not res!483186) (not e!687186))))

(declare-fun lt!363518 () List!10341)

(assert (=> d!305276 (= res!483186 (noDuplicate!189 lt!363518))))

(assert (=> d!305276 (= lt!363518 (choose!6939 z!1122))))

(assert (=> d!305276 (= (toList!630 z!1122) lt!363518)))

(declare-fun b!1086496 () Bool)

(assert (=> b!1086496 (= e!687186 (= (content!1481 lt!363518) z!1122))))

(assert (= (and d!305276 res!483186) b!1086496))

(declare-fun m!1236513 () Bool)

(assert (=> d!305276 m!1236513))

(declare-fun m!1236515 () Bool)

(assert (=> d!305276 m!1236515))

(declare-fun m!1236517 () Bool)

(assert (=> b!1086496 m!1236517))

(assert (=> start!92588 d!305276))

(declare-fun d!305278 () Bool)

(declare-fun c!183810 () Bool)

(assert (=> d!305278 (= c!183810 (isEmpty!6628 s!2287))))

(declare-fun e!687188 () Bool)

(assert (=> d!305278 (= (matchZipper!60 z!1122 s!2287) e!687188)))

(declare-fun b!1086498 () Bool)

(assert (=> b!1086498 (= e!687188 (nullableZipper!27 z!1122))))

(declare-fun b!1086499 () Bool)

(assert (=> b!1086499 (= e!687188 (matchZipper!60 (derivationStepZipper!25 z!1122 (head!2013 s!2287)) (tail!1575 s!2287)))))

(assert (= (and d!305278 c!183810) b!1086498))

(assert (= (and d!305278 (not c!183810)) b!1086499))

(assert (=> d!305278 m!1236411))

(declare-fun m!1236519 () Bool)

(assert (=> b!1086498 m!1236519))

(assert (=> b!1086499 m!1236415))

(assert (=> b!1086499 m!1236415))

(declare-fun m!1236521 () Bool)

(assert (=> b!1086499 m!1236521))

(assert (=> b!1086499 m!1236419))

(assert (=> b!1086499 m!1236521))

(assert (=> b!1086499 m!1236419))

(declare-fun m!1236523 () Bool)

(assert (=> b!1086499 m!1236523))

(assert (=> b!1086404 d!305278))

(declare-fun b!1086506 () Bool)

(declare-fun e!687192 () Bool)

(declare-fun tp!325399 () Bool)

(declare-fun tp!325400 () Bool)

(assert (=> b!1086506 (= e!687192 (and tp!325399 tp!325400))))

(assert (=> b!1086401 (= tp!325375 e!687192)))

(assert (= (and b!1086401 (is-Cons!10323 (exprs!992 setElem!7605))) b!1086506))

(declare-fun b!1086514 () Bool)

(declare-fun e!687198 () Bool)

(declare-fun tp!325405 () Bool)

(assert (=> b!1086514 (= e!687198 tp!325405)))

(declare-fun e!687197 () Bool)

(declare-fun b!1086513 () Bool)

(declare-fun tp!325406 () Bool)

(assert (=> b!1086513 (= e!687197 (and (inv!13244 (h!15726 (t!101387 zl!316))) e!687198 tp!325406))))

(assert (=> b!1086407 (= tp!325379 e!687197)))

(assert (= b!1086513 b!1086514))

(assert (= (and b!1086407 (is-Cons!10325 (t!101387 zl!316))) b!1086513))

(declare-fun m!1236535 () Bool)

(assert (=> b!1086513 m!1236535))

(declare-fun b!1086515 () Bool)

(declare-fun e!687199 () Bool)

(declare-fun tp!325407 () Bool)

(declare-fun tp!325408 () Bool)

(assert (=> b!1086515 (= e!687199 (and tp!325407 tp!325408))))

(assert (=> b!1086411 (= tp!325377 e!687199)))

(assert (= (and b!1086411 (is-Cons!10323 (exprs!992 (h!15726 zl!316)))) b!1086515))

(declare-fun condSetEmpty!7611 () Bool)

(assert (=> setNonEmpty!7605 (= condSetEmpty!7611 (= setRest!7605 (as set.empty (Set Context!984))))))

(declare-fun setRes!7611 () Bool)

(assert (=> setNonEmpty!7605 (= tp!325376 setRes!7611)))

(declare-fun setIsEmpty!7611 () Bool)

(assert (=> setIsEmpty!7611 setRes!7611))

(declare-fun tp!325414 () Bool)

(declare-fun e!687203 () Bool)

(declare-fun setElem!7611 () Context!984)

(declare-fun setNonEmpty!7611 () Bool)

(assert (=> setNonEmpty!7611 (= setRes!7611 (and tp!325414 (inv!13244 setElem!7611) e!687203))))

(declare-fun setRest!7611 () (Set Context!984))

(assert (=> setNonEmpty!7611 (= setRest!7605 (set.union (set.insert setElem!7611 (as set.empty (Set Context!984))) setRest!7611))))

(declare-fun b!1086522 () Bool)

(declare-fun tp!325413 () Bool)

(assert (=> b!1086522 (= e!687203 tp!325413)))

(assert (= (and setNonEmpty!7605 condSetEmpty!7611) setIsEmpty!7611))

(assert (= (and setNonEmpty!7605 (not condSetEmpty!7611)) setNonEmpty!7611))

(assert (= setNonEmpty!7611 b!1086522))

(declare-fun m!1236539 () Bool)

(assert (=> setNonEmpty!7611 m!1236539))

(declare-fun b!1086527 () Bool)

(declare-fun e!687206 () Bool)

(declare-fun tp!325417 () Bool)

(assert (=> b!1086527 (= e!687206 (and tp_is_empty!5655 tp!325417))))

(assert (=> b!1086410 (= tp!325378 e!687206)))

(assert (= (and b!1086410 (is-Cons!10324 (t!101386 s!2287))) b!1086527))

(declare-fun b_lambda!30069 () Bool)

(assert (= b_lambda!30063 (or b!1086406 b_lambda!30069)))

(declare-fun bs!256777 () Bool)

(declare-fun d!305288 () Bool)

(assert (= bs!256777 (and d!305288 b!1086406)))

(assert (=> bs!256777 (= (dynLambda!4523 lambda!40212 lt!363490) (matchZipper!60 (set.insert lt!363490 (as set.empty (Set Context!984))) s!2287))))

(declare-fun m!1236547 () Bool)

(assert (=> bs!256777 m!1236547))

(assert (=> bs!256777 m!1236547))

(declare-fun m!1236549 () Bool)

(assert (=> bs!256777 m!1236549))

(assert (=> d!305238 d!305288))

(declare-fun b_lambda!30071 () Bool)

(assert (= b_lambda!30065 (or b!1086402 b_lambda!30071)))

(declare-fun bs!256778 () Bool)

(declare-fun d!305290 () Bool)

(assert (= bs!256778 (and d!305290 b!1086402)))

(declare-fun lostCause!226 (Context!984) Bool)

(assert (=> bs!256778 (= (dynLambda!4523 lambda!40211 lt!363465) (not (lostCause!226 lt!363465)))))

(declare-fun m!1236551 () Bool)

(assert (=> bs!256778 m!1236551))

(assert (=> d!305264 d!305290))

(push 1)

(assert (not b_lambda!30069))

(assert (not b!1086514))

(assert (not b_lambda!30071))

(assert (not b!1086468))

(assert (not b!1086499))

(assert (not d!305278))

(assert (not b!1086484))

(assert (not d!305240))

(assert (not b!1086498))

(assert (not bs!256778))

(assert (not setNonEmpty!7611))

(assert (not b!1086496))

(assert (not d!305264))

(assert (not d!305246))

(assert (not b!1086515))

(assert (not d!305242))

(assert (not b!1086456))

(assert (not b!1086506))

(assert (not d!305276))

(assert (not b!1086483))

(assert (not d!305258))

(assert (not bs!256777))

(assert (not d!305238))

(assert (not d!305262))

(assert (not b!1086457))

(assert (not d!305236))

(assert (not b!1086467))

(assert (not d!305232))

(assert (not d!305254))

(assert (not d!305250))

(assert (not d!305252))

(assert (not b!1086527))

(assert (not d!305268))

(assert (not b!1086492))

(assert (not b!1086522))

(assert tp_is_empty!5655)

(assert (not b!1086475))

(assert (not b!1086513))

(assert (not d!305272))

(assert (not d!305260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

