; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726452 () Bool)

(assert start!726452)

(declare-fun b!7505300 () Bool)

(declare-fun e!4475036 () Bool)

(declare-fun e!4475029 () Bool)

(assert (=> b!7505300 (= e!4475036 e!4475029)))

(declare-fun res!3011033 () Bool)

(assert (=> b!7505300 (=> res!3011033 e!4475029)))

(declare-datatypes ((C!39726 0))(
  ( (C!39727 (val!30261 Int)) )
))
(declare-datatypes ((List!72493 0))(
  ( (Nil!72369) (Cons!72369 (h!78817 C!39726) (t!387062 List!72493)) )
))
(declare-fun testedP!204 () List!72493)

(declare-fun totalInput!779 () List!72493)

(assert (=> b!7505300 (= res!3011033 (not (= testedP!204 totalInput!779)))))

(assert (=> b!7505300 (= totalInput!779 testedP!204)))

(declare-datatypes ((Unit!166354 0))(
  ( (Unit!166355) )
))
(declare-fun lt!2634469 () Unit!166354)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1485 (List!72493 List!72493 List!72493) Unit!166354)

(assert (=> b!7505300 (= lt!2634469 (lemmaIsPrefixSameLengthThenSameList!1485 totalInput!779 testedP!204 totalInput!779))))

(declare-fun isPrefix!5994 (List!72493 List!72493) Bool)

(assert (=> b!7505300 (isPrefix!5994 totalInput!779 totalInput!779)))

(declare-fun lt!2634470 () Unit!166354)

(declare-fun lemmaIsPrefixRefl!3833 (List!72493 List!72493) Unit!166354)

(assert (=> b!7505300 (= lt!2634470 (lemmaIsPrefixRefl!3833 totalInput!779 totalInput!779))))

(declare-fun b!7505301 () Bool)

(declare-fun res!3011032 () Bool)

(declare-fun e!4475033 () Bool)

(assert (=> b!7505301 (=> (not res!3011032) (not e!4475033))))

(declare-fun testedPSize!164 () Int)

(declare-fun size!42271 (List!72493) Int)

(assert (=> b!7505301 (= res!3011032 (= testedPSize!164 (size!42271 testedP!204)))))

(declare-fun setNonEmpty!56973 () Bool)

(declare-datatypes ((Regex!19700 0))(
  ( (ElementMatch!19700 (c!1385577 C!39726)) (Concat!28545 (regOne!39912 Regex!19700) (regTwo!39912 Regex!19700)) (EmptyExpr!19700) (Star!19700 (reg!20029 Regex!19700)) (EmptyLang!19700) (Union!19700 (regOne!39913 Regex!19700) (regTwo!39913 Regex!19700)) )
))
(declare-datatypes ((List!72494 0))(
  ( (Nil!72370) (Cons!72370 (h!78818 Regex!19700) (t!387063 List!72494)) )
))
(declare-datatypes ((Context!16904 0))(
  ( (Context!16905 (exprs!8952 List!72494)) )
))
(declare-fun setElem!56973 () Context!16904)

(declare-fun setRes!56973 () Bool)

(declare-fun tp!2178641 () Bool)

(declare-fun e!4475035 () Bool)

(declare-fun inv!92481 (Context!16904) Bool)

(assert (=> setNonEmpty!56973 (= setRes!56973 (and tp!2178641 (inv!92481 setElem!56973) e!4475035))))

(declare-fun z!3716 () (Set Context!16904))

(declare-fun setRest!56973 () (Set Context!16904))

(assert (=> setNonEmpty!56973 (= z!3716 (set.union (set.insert setElem!56973 (as set.empty (Set Context!16904))) setRest!56973))))

(declare-fun b!7505302 () Bool)

(declare-fun res!3011030 () Bool)

(assert (=> b!7505302 (=> (not res!3011030) (not e!4475033))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505302 (= res!3011030 (= totalInputSize!226 (size!42271 totalInput!779)))))

(declare-fun b!7505303 () Bool)

(declare-fun e!4475031 () Bool)

(assert (=> b!7505303 (= e!4475031 e!4475036)))

(declare-fun res!3011029 () Bool)

(assert (=> b!7505303 (=> res!3011029 e!4475036)))

(declare-fun lostCauseZipper!1388 ((Set Context!16904)) Bool)

(assert (=> b!7505303 (= res!3011029 (lostCauseZipper!1388 z!3716))))

(declare-fun testedSuffix!164 () List!72493)

(declare-fun lt!2634465 () List!72493)

(assert (=> b!7505303 (and (= testedSuffix!164 lt!2634465) (= lt!2634465 testedSuffix!164))))

(declare-fun lt!2634468 () Unit!166354)

(declare-fun lemmaSamePrefixThenSameSuffix!2793 (List!72493 List!72493 List!72493 List!72493 List!72493) Unit!166354)

(assert (=> b!7505303 (= lt!2634468 (lemmaSamePrefixThenSameSuffix!2793 testedP!204 testedSuffix!164 testedP!204 lt!2634465 totalInput!779))))

(declare-fun getSuffix!3494 (List!72493 List!72493) List!72493)

(assert (=> b!7505303 (= lt!2634465 (getSuffix!3494 totalInput!779 testedP!204))))

(declare-fun b!7505304 () Bool)

(declare-fun tp!2178643 () Bool)

(assert (=> b!7505304 (= e!4475035 tp!2178643)))

(declare-fun res!3011028 () Bool)

(assert (=> start!726452 (=> (not res!3011028) (not e!4475033))))

(declare-fun lt!2634467 () List!72493)

(assert (=> start!726452 (= res!3011028 (= lt!2634467 totalInput!779))))

(declare-fun ++!17329 (List!72493 List!72493) List!72493)

(assert (=> start!726452 (= lt!2634467 (++!17329 testedP!204 testedSuffix!164))))

(assert (=> start!726452 e!4475033))

(declare-fun e!4475030 () Bool)

(assert (=> start!726452 e!4475030))

(assert (=> start!726452 true))

(declare-fun e!4475034 () Bool)

(assert (=> start!726452 e!4475034))

(declare-fun e!4475032 () Bool)

(assert (=> start!726452 e!4475032))

(declare-fun condSetEmpty!56973 () Bool)

(assert (=> start!726452 (= condSetEmpty!56973 (= z!3716 (as set.empty (Set Context!16904))))))

(assert (=> start!726452 setRes!56973))

(declare-fun b!7505305 () Bool)

(declare-fun tp_is_empty!49741 () Bool)

(declare-fun tp!2178640 () Bool)

(assert (=> b!7505305 (= e!4475032 (and tp_is_empty!49741 tp!2178640))))

(declare-fun b!7505306 () Bool)

(declare-fun res!3011034 () Bool)

(assert (=> b!7505306 (=> res!3011034 e!4475029)))

(declare-fun nullableZipper!3172 ((Set Context!16904)) Bool)

(assert (=> b!7505306 (= res!3011034 (not (nullableZipper!3172 z!3716)))))

(declare-fun b!7505307 () Bool)

(declare-fun res!3011027 () Bool)

(assert (=> b!7505307 (=> res!3011027 e!4475036)))

(assert (=> b!7505307 (= res!3011027 (not (= testedPSize!164 totalInputSize!226)))))

(declare-fun b!7505308 () Bool)

(declare-fun tp!2178642 () Bool)

(assert (=> b!7505308 (= e!4475030 (and tp_is_empty!49741 tp!2178642))))

(declare-fun setIsEmpty!56973 () Bool)

(assert (=> setIsEmpty!56973 setRes!56973))

(declare-fun b!7505309 () Bool)

(declare-fun tp!2178644 () Bool)

(assert (=> b!7505309 (= e!4475034 (and tp_is_empty!49741 tp!2178644))))

(declare-fun b!7505310 () Bool)

(assert (=> b!7505310 (= e!4475033 (not e!4475031))))

(declare-fun res!3011031 () Bool)

(assert (=> b!7505310 (=> res!3011031 e!4475031)))

(assert (=> b!7505310 (= res!3011031 (not (isPrefix!5994 testedP!204 totalInput!779)))))

(assert (=> b!7505310 (isPrefix!5994 testedP!204 lt!2634467)))

(declare-fun lt!2634466 () Unit!166354)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3707 (List!72493 List!72493) Unit!166354)

(assert (=> b!7505310 (= lt!2634466 (lemmaConcatTwoListThenFirstIsPrefix!3707 testedP!204 testedSuffix!164))))

(declare-fun b!7505311 () Bool)

(assert (=> b!7505311 (= e!4475029 (= (++!17329 testedP!204 Nil!72369) totalInput!779))))

(assert (= (and start!726452 res!3011028) b!7505301))

(assert (= (and b!7505301 res!3011032) b!7505302))

(assert (= (and b!7505302 res!3011030) b!7505310))

(assert (= (and b!7505310 (not res!3011031)) b!7505303))

(assert (= (and b!7505303 (not res!3011029)) b!7505307))

(assert (= (and b!7505307 (not res!3011027)) b!7505300))

(assert (= (and b!7505300 (not res!3011033)) b!7505306))

(assert (= (and b!7505306 (not res!3011034)) b!7505311))

(assert (= (and start!726452 (is-Cons!72369 testedSuffix!164)) b!7505308))

(assert (= (and start!726452 (is-Cons!72369 totalInput!779)) b!7505309))

(assert (= (and start!726452 (is-Cons!72369 testedP!204)) b!7505305))

(assert (= (and start!726452 condSetEmpty!56973) setIsEmpty!56973))

(assert (= (and start!726452 (not condSetEmpty!56973)) setNonEmpty!56973))

(assert (= setNonEmpty!56973 b!7505304))

(declare-fun m!8087526 () Bool)

(assert (=> b!7505306 m!8087526))

(declare-fun m!8087528 () Bool)

(assert (=> b!7505310 m!8087528))

(declare-fun m!8087530 () Bool)

(assert (=> b!7505310 m!8087530))

(declare-fun m!8087532 () Bool)

(assert (=> b!7505310 m!8087532))

(declare-fun m!8087534 () Bool)

(assert (=> start!726452 m!8087534))

(declare-fun m!8087536 () Bool)

(assert (=> b!7505302 m!8087536))

(declare-fun m!8087538 () Bool)

(assert (=> b!7505311 m!8087538))

(declare-fun m!8087540 () Bool)

(assert (=> b!7505301 m!8087540))

(declare-fun m!8087542 () Bool)

(assert (=> b!7505300 m!8087542))

(declare-fun m!8087544 () Bool)

(assert (=> b!7505300 m!8087544))

(declare-fun m!8087546 () Bool)

(assert (=> b!7505300 m!8087546))

(declare-fun m!8087548 () Bool)

(assert (=> setNonEmpty!56973 m!8087548))

(declare-fun m!8087550 () Bool)

(assert (=> b!7505303 m!8087550))

(declare-fun m!8087552 () Bool)

(assert (=> b!7505303 m!8087552))

(declare-fun m!8087554 () Bool)

(assert (=> b!7505303 m!8087554))

(push 1)

(assert (not b!7505304))

(assert (not b!7505308))

(assert (not b!7505300))

(assert (not setNonEmpty!56973))

(assert (not b!7505305))

(assert (not start!726452))

(assert tp_is_empty!49741)

(assert (not b!7505310))

(assert (not b!7505306))

(assert (not b!7505309))

(assert (not b!7505302))

(assert (not b!7505311))

(assert (not b!7505301))

(assert (not b!7505303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7505361 () Bool)

(declare-fun e!4475067 () List!72493)

(assert (=> b!7505361 (= e!4475067 (Cons!72369 (h!78817 testedP!204) (++!17329 (t!387062 testedP!204) Nil!72369)))))

(declare-fun b!7505363 () Bool)

(declare-fun e!4475068 () Bool)

(declare-fun lt!2634495 () List!72493)

(assert (=> b!7505363 (= e!4475068 (or (not (= Nil!72369 Nil!72369)) (= lt!2634495 testedP!204)))))

(declare-fun b!7505362 () Bool)

(declare-fun res!3011063 () Bool)

(assert (=> b!7505362 (=> (not res!3011063) (not e!4475068))))

(assert (=> b!7505362 (= res!3011063 (= (size!42271 lt!2634495) (+ (size!42271 testedP!204) (size!42271 Nil!72369))))))

(declare-fun b!7505360 () Bool)

(assert (=> b!7505360 (= e!4475067 Nil!72369)))

(declare-fun d!2303859 () Bool)

(assert (=> d!2303859 e!4475068))

(declare-fun res!3011064 () Bool)

(assert (=> d!2303859 (=> (not res!3011064) (not e!4475068))))

(declare-fun content!15298 (List!72493) (Set C!39726))

(assert (=> d!2303859 (= res!3011064 (= (content!15298 lt!2634495) (set.union (content!15298 testedP!204) (content!15298 Nil!72369))))))

(assert (=> d!2303859 (= lt!2634495 e!4475067)))

(declare-fun c!1385585 () Bool)

(assert (=> d!2303859 (= c!1385585 (is-Nil!72369 testedP!204))))

(assert (=> d!2303859 (= (++!17329 testedP!204 Nil!72369) lt!2634495)))

(assert (= (and d!2303859 c!1385585) b!7505360))

(assert (= (and d!2303859 (not c!1385585)) b!7505361))

(assert (= (and d!2303859 res!3011064) b!7505362))

(assert (= (and b!7505362 res!3011063) b!7505363))

(declare-fun m!8087586 () Bool)

(assert (=> b!7505361 m!8087586))

(declare-fun m!8087588 () Bool)

(assert (=> b!7505362 m!8087588))

(assert (=> b!7505362 m!8087540))

(declare-fun m!8087590 () Bool)

(assert (=> b!7505362 m!8087590))

(declare-fun m!8087592 () Bool)

(assert (=> d!2303859 m!8087592))

(declare-fun m!8087594 () Bool)

(assert (=> d!2303859 m!8087594))

(declare-fun m!8087596 () Bool)

(assert (=> d!2303859 m!8087596))

(assert (=> b!7505311 d!2303859))

(declare-fun d!2303861 () Bool)

(declare-fun lambda!465268 () Int)

(declare-fun exists!4852 ((Set Context!16904) Int) Bool)

(assert (=> d!2303861 (= (nullableZipper!3172 z!3716) (exists!4852 z!3716 lambda!465268))))

(declare-fun bs!1938082 () Bool)

(assert (= bs!1938082 d!2303861))

(declare-fun m!8087598 () Bool)

(assert (=> bs!1938082 m!8087598))

(assert (=> b!7505306 d!2303861))

(declare-fun d!2303863 () Bool)

(declare-fun lambda!465271 () Int)

(declare-fun forall!18277 (List!72494 Int) Bool)

(assert (=> d!2303863 (= (inv!92481 setElem!56973) (forall!18277 (exprs!8952 setElem!56973) lambda!465271))))

(declare-fun bs!1938083 () Bool)

(assert (= bs!1938083 d!2303863))

(declare-fun m!8087600 () Bool)

(assert (=> bs!1938083 m!8087600))

(assert (=> setNonEmpty!56973 d!2303863))

(declare-fun d!2303865 () Bool)

(declare-fun lt!2634498 () Int)

(assert (=> d!2303865 (>= lt!2634498 0)))

(declare-fun e!4475071 () Int)

(assert (=> d!2303865 (= lt!2634498 e!4475071)))

(declare-fun c!1385590 () Bool)

(assert (=> d!2303865 (= c!1385590 (is-Nil!72369 testedP!204))))

(assert (=> d!2303865 (= (size!42271 testedP!204) lt!2634498)))

(declare-fun b!7505368 () Bool)

(assert (=> b!7505368 (= e!4475071 0)))

(declare-fun b!7505369 () Bool)

(assert (=> b!7505369 (= e!4475071 (+ 1 (size!42271 (t!387062 testedP!204))))))

(assert (= (and d!2303865 c!1385590) b!7505368))

(assert (= (and d!2303865 (not c!1385590)) b!7505369))

(declare-fun m!8087602 () Bool)

(assert (=> b!7505369 m!8087602))

(assert (=> b!7505301 d!2303865))

(declare-fun d!2303867 () Bool)

(declare-fun e!4475079 () Bool)

(assert (=> d!2303867 e!4475079))

(declare-fun res!3011073 () Bool)

(assert (=> d!2303867 (=> res!3011073 e!4475079)))

(declare-fun lt!2634501 () Bool)

(assert (=> d!2303867 (= res!3011073 (not lt!2634501))))

(declare-fun e!4475078 () Bool)

(assert (=> d!2303867 (= lt!2634501 e!4475078)))

(declare-fun res!3011074 () Bool)

(assert (=> d!2303867 (=> res!3011074 e!4475078)))

(assert (=> d!2303867 (= res!3011074 (is-Nil!72369 testedP!204))))

(assert (=> d!2303867 (= (isPrefix!5994 testedP!204 totalInput!779) lt!2634501)))

(declare-fun b!7505379 () Bool)

(declare-fun res!3011075 () Bool)

(declare-fun e!4475080 () Bool)

(assert (=> b!7505379 (=> (not res!3011075) (not e!4475080))))

(declare-fun head!15422 (List!72493) C!39726)

(assert (=> b!7505379 (= res!3011075 (= (head!15422 testedP!204) (head!15422 totalInput!779)))))

(declare-fun b!7505380 () Bool)

(declare-fun tail!14988 (List!72493) List!72493)

(assert (=> b!7505380 (= e!4475080 (isPrefix!5994 (tail!14988 testedP!204) (tail!14988 totalInput!779)))))

(declare-fun b!7505381 () Bool)

(assert (=> b!7505381 (= e!4475079 (>= (size!42271 totalInput!779) (size!42271 testedP!204)))))

(declare-fun b!7505378 () Bool)

(assert (=> b!7505378 (= e!4475078 e!4475080)))

(declare-fun res!3011076 () Bool)

(assert (=> b!7505378 (=> (not res!3011076) (not e!4475080))))

(assert (=> b!7505378 (= res!3011076 (not (is-Nil!72369 totalInput!779)))))

(assert (= (and d!2303867 (not res!3011074)) b!7505378))

(assert (= (and b!7505378 res!3011076) b!7505379))

(assert (= (and b!7505379 res!3011075) b!7505380))

(assert (= (and d!2303867 (not res!3011073)) b!7505381))

(declare-fun m!8087604 () Bool)

(assert (=> b!7505379 m!8087604))

(declare-fun m!8087606 () Bool)

(assert (=> b!7505379 m!8087606))

(declare-fun m!8087608 () Bool)

(assert (=> b!7505380 m!8087608))

(declare-fun m!8087610 () Bool)

(assert (=> b!7505380 m!8087610))

(assert (=> b!7505380 m!8087608))

(assert (=> b!7505380 m!8087610))

(declare-fun m!8087612 () Bool)

(assert (=> b!7505380 m!8087612))

(assert (=> b!7505381 m!8087536))

(assert (=> b!7505381 m!8087540))

(assert (=> b!7505310 d!2303867))

(declare-fun d!2303869 () Bool)

(declare-fun e!4475082 () Bool)

(assert (=> d!2303869 e!4475082))

(declare-fun res!3011077 () Bool)

(assert (=> d!2303869 (=> res!3011077 e!4475082)))

(declare-fun lt!2634502 () Bool)

(assert (=> d!2303869 (= res!3011077 (not lt!2634502))))

(declare-fun e!4475081 () Bool)

(assert (=> d!2303869 (= lt!2634502 e!4475081)))

(declare-fun res!3011078 () Bool)

(assert (=> d!2303869 (=> res!3011078 e!4475081)))

(assert (=> d!2303869 (= res!3011078 (is-Nil!72369 testedP!204))))

(assert (=> d!2303869 (= (isPrefix!5994 testedP!204 lt!2634467) lt!2634502)))

(declare-fun b!7505383 () Bool)

(declare-fun res!3011079 () Bool)

(declare-fun e!4475083 () Bool)

(assert (=> b!7505383 (=> (not res!3011079) (not e!4475083))))

(assert (=> b!7505383 (= res!3011079 (= (head!15422 testedP!204) (head!15422 lt!2634467)))))

(declare-fun b!7505384 () Bool)

(assert (=> b!7505384 (= e!4475083 (isPrefix!5994 (tail!14988 testedP!204) (tail!14988 lt!2634467)))))

(declare-fun b!7505385 () Bool)

(assert (=> b!7505385 (= e!4475082 (>= (size!42271 lt!2634467) (size!42271 testedP!204)))))

(declare-fun b!7505382 () Bool)

(assert (=> b!7505382 (= e!4475081 e!4475083)))

(declare-fun res!3011080 () Bool)

(assert (=> b!7505382 (=> (not res!3011080) (not e!4475083))))

(assert (=> b!7505382 (= res!3011080 (not (is-Nil!72369 lt!2634467)))))

(assert (= (and d!2303869 (not res!3011078)) b!7505382))

(assert (= (and b!7505382 res!3011080) b!7505383))

(assert (= (and b!7505383 res!3011079) b!7505384))

(assert (= (and d!2303869 (not res!3011077)) b!7505385))

(assert (=> b!7505383 m!8087604))

(declare-fun m!8087614 () Bool)

(assert (=> b!7505383 m!8087614))

(assert (=> b!7505384 m!8087608))

(declare-fun m!8087616 () Bool)

(assert (=> b!7505384 m!8087616))

(assert (=> b!7505384 m!8087608))

(assert (=> b!7505384 m!8087616))

(declare-fun m!8087618 () Bool)

(assert (=> b!7505384 m!8087618))

(declare-fun m!8087620 () Bool)

(assert (=> b!7505385 m!8087620))

(assert (=> b!7505385 m!8087540))

(assert (=> b!7505310 d!2303869))

(declare-fun d!2303871 () Bool)

(assert (=> d!2303871 (isPrefix!5994 testedP!204 (++!17329 testedP!204 testedSuffix!164))))

(declare-fun lt!2634505 () Unit!166354)

(declare-fun choose!58090 (List!72493 List!72493) Unit!166354)

(assert (=> d!2303871 (= lt!2634505 (choose!58090 testedP!204 testedSuffix!164))))

(assert (=> d!2303871 (= (lemmaConcatTwoListThenFirstIsPrefix!3707 testedP!204 testedSuffix!164) lt!2634505)))

(declare-fun bs!1938084 () Bool)

(assert (= bs!1938084 d!2303871))

(assert (=> bs!1938084 m!8087534))

(assert (=> bs!1938084 m!8087534))

(declare-fun m!8087622 () Bool)

(assert (=> bs!1938084 m!8087622))

(declare-fun m!8087624 () Bool)

(assert (=> bs!1938084 m!8087624))

(assert (=> b!7505310 d!2303871))

(declare-fun d!2303873 () Bool)

(assert (=> d!2303873 (= totalInput!779 testedP!204)))

(declare-fun lt!2634508 () Unit!166354)

(declare-fun choose!58091 (List!72493 List!72493 List!72493) Unit!166354)

(assert (=> d!2303873 (= lt!2634508 (choose!58091 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2303873 (isPrefix!5994 totalInput!779 totalInput!779)))

(assert (=> d!2303873 (= (lemmaIsPrefixSameLengthThenSameList!1485 totalInput!779 testedP!204 totalInput!779) lt!2634508)))

(declare-fun bs!1938085 () Bool)

(assert (= bs!1938085 d!2303873))

(declare-fun m!8087626 () Bool)

(assert (=> bs!1938085 m!8087626))

(assert (=> bs!1938085 m!8087544))

(assert (=> b!7505300 d!2303873))

(declare-fun d!2303875 () Bool)

(declare-fun e!4475085 () Bool)

(assert (=> d!2303875 e!4475085))

(declare-fun res!3011081 () Bool)

(assert (=> d!2303875 (=> res!3011081 e!4475085)))

(declare-fun lt!2634509 () Bool)

(assert (=> d!2303875 (= res!3011081 (not lt!2634509))))

(declare-fun e!4475084 () Bool)

(assert (=> d!2303875 (= lt!2634509 e!4475084)))

(declare-fun res!3011082 () Bool)

(assert (=> d!2303875 (=> res!3011082 e!4475084)))

(assert (=> d!2303875 (= res!3011082 (is-Nil!72369 totalInput!779))))

(assert (=> d!2303875 (= (isPrefix!5994 totalInput!779 totalInput!779) lt!2634509)))

(declare-fun b!7505387 () Bool)

(declare-fun res!3011083 () Bool)

(declare-fun e!4475086 () Bool)

(assert (=> b!7505387 (=> (not res!3011083) (not e!4475086))))

(assert (=> b!7505387 (= res!3011083 (= (head!15422 totalInput!779) (head!15422 totalInput!779)))))

(declare-fun b!7505388 () Bool)

(assert (=> b!7505388 (= e!4475086 (isPrefix!5994 (tail!14988 totalInput!779) (tail!14988 totalInput!779)))))

(declare-fun b!7505389 () Bool)

(assert (=> b!7505389 (= e!4475085 (>= (size!42271 totalInput!779) (size!42271 totalInput!779)))))

(declare-fun b!7505386 () Bool)

(assert (=> b!7505386 (= e!4475084 e!4475086)))

(declare-fun res!3011084 () Bool)

(assert (=> b!7505386 (=> (not res!3011084) (not e!4475086))))

(assert (=> b!7505386 (= res!3011084 (not (is-Nil!72369 totalInput!779)))))

(assert (= (and d!2303875 (not res!3011082)) b!7505386))

(assert (= (and b!7505386 res!3011084) b!7505387))

(assert (= (and b!7505387 res!3011083) b!7505388))

(assert (= (and d!2303875 (not res!3011081)) b!7505389))

(assert (=> b!7505387 m!8087606))

(assert (=> b!7505387 m!8087606))

(assert (=> b!7505388 m!8087610))

(assert (=> b!7505388 m!8087610))

(assert (=> b!7505388 m!8087610))

(assert (=> b!7505388 m!8087610))

(declare-fun m!8087628 () Bool)

(assert (=> b!7505388 m!8087628))

(assert (=> b!7505389 m!8087536))

(assert (=> b!7505389 m!8087536))

(assert (=> b!7505300 d!2303875))

(declare-fun d!2303877 () Bool)

(assert (=> d!2303877 (isPrefix!5994 totalInput!779 totalInput!779)))

(declare-fun lt!2634512 () Unit!166354)

(declare-fun choose!58092 (List!72493 List!72493) Unit!166354)

(assert (=> d!2303877 (= lt!2634512 (choose!58092 totalInput!779 totalInput!779))))

(assert (=> d!2303877 (= (lemmaIsPrefixRefl!3833 totalInput!779 totalInput!779) lt!2634512)))

(declare-fun bs!1938086 () Bool)

(assert (= bs!1938086 d!2303877))

(assert (=> bs!1938086 m!8087544))

(declare-fun m!8087630 () Bool)

(assert (=> bs!1938086 m!8087630))

(assert (=> b!7505300 d!2303877))

(declare-fun b!7505391 () Bool)

(declare-fun e!4475087 () List!72493)

(assert (=> b!7505391 (= e!4475087 (Cons!72369 (h!78817 testedP!204) (++!17329 (t!387062 testedP!204) testedSuffix!164)))))

(declare-fun e!4475088 () Bool)

(declare-fun b!7505393 () Bool)

(declare-fun lt!2634513 () List!72493)

(assert (=> b!7505393 (= e!4475088 (or (not (= testedSuffix!164 Nil!72369)) (= lt!2634513 testedP!204)))))

(declare-fun b!7505392 () Bool)

(declare-fun res!3011085 () Bool)

(assert (=> b!7505392 (=> (not res!3011085) (not e!4475088))))

(assert (=> b!7505392 (= res!3011085 (= (size!42271 lt!2634513) (+ (size!42271 testedP!204) (size!42271 testedSuffix!164))))))

(declare-fun b!7505390 () Bool)

(assert (=> b!7505390 (= e!4475087 testedSuffix!164)))

(declare-fun d!2303879 () Bool)

(assert (=> d!2303879 e!4475088))

(declare-fun res!3011086 () Bool)

(assert (=> d!2303879 (=> (not res!3011086) (not e!4475088))))

(assert (=> d!2303879 (= res!3011086 (= (content!15298 lt!2634513) (set.union (content!15298 testedP!204) (content!15298 testedSuffix!164))))))

(assert (=> d!2303879 (= lt!2634513 e!4475087)))

(declare-fun c!1385591 () Bool)

(assert (=> d!2303879 (= c!1385591 (is-Nil!72369 testedP!204))))

(assert (=> d!2303879 (= (++!17329 testedP!204 testedSuffix!164) lt!2634513)))

(assert (= (and d!2303879 c!1385591) b!7505390))

(assert (= (and d!2303879 (not c!1385591)) b!7505391))

(assert (= (and d!2303879 res!3011086) b!7505392))

(assert (= (and b!7505392 res!3011085) b!7505393))

(declare-fun m!8087632 () Bool)

(assert (=> b!7505391 m!8087632))

(declare-fun m!8087634 () Bool)

(assert (=> b!7505392 m!8087634))

(assert (=> b!7505392 m!8087540))

(declare-fun m!8087636 () Bool)

(assert (=> b!7505392 m!8087636))

(declare-fun m!8087638 () Bool)

(assert (=> d!2303879 m!8087638))

(assert (=> d!2303879 m!8087594))

(declare-fun m!8087640 () Bool)

(assert (=> d!2303879 m!8087640))

(assert (=> start!726452 d!2303879))

(declare-fun bs!1938087 () Bool)

(declare-fun d!2303881 () Bool)

(assert (= bs!1938087 (and d!2303881 d!2303861)))

(declare-fun lambda!465284 () Int)

(assert (=> bs!1938087 (not (= lambda!465284 lambda!465268))))

(declare-fun bs!1938088 () Bool)

(declare-fun b!7505398 () Bool)

(assert (= bs!1938088 (and b!7505398 d!2303861)))

(declare-fun lambda!465285 () Int)

(assert (=> bs!1938088 (not (= lambda!465285 lambda!465268))))

(declare-fun bs!1938089 () Bool)

(assert (= bs!1938089 (and b!7505398 d!2303881)))

(assert (=> bs!1938089 (not (= lambda!465285 lambda!465284))))

(declare-fun bs!1938090 () Bool)

(declare-fun b!7505399 () Bool)

(assert (= bs!1938090 (and b!7505399 d!2303861)))

(declare-fun lambda!465286 () Int)

(assert (=> bs!1938090 (not (= lambda!465286 lambda!465268))))

(declare-fun bs!1938091 () Bool)

(assert (= bs!1938091 (and b!7505399 d!2303881)))

(assert (=> bs!1938091 (not (= lambda!465286 lambda!465284))))

(declare-fun bs!1938092 () Bool)

(assert (= bs!1938092 (and b!7505399 b!7505398)))

(assert (=> bs!1938092 (= lambda!465286 lambda!465285)))

(declare-fun lt!2634530 () Bool)

(declare-datatypes ((Option!17221 0))(
  ( (None!17220) (Some!17220 (v!54349 List!72493)) )
))
(declare-fun isEmpty!41305 (Option!17221) Bool)

(declare-fun getLanguageWitness!1043 ((Set Context!16904)) Option!17221)

(assert (=> d!2303881 (= lt!2634530 (isEmpty!41305 (getLanguageWitness!1043 z!3716)))))

(declare-fun forall!18278 ((Set Context!16904) Int) Bool)

(assert (=> d!2303881 (= lt!2634530 (forall!18278 z!3716 lambda!465284))))

(declare-fun lt!2634537 () Unit!166354)

(declare-fun e!4475095 () Unit!166354)

(assert (=> d!2303881 (= lt!2634537 e!4475095)))

(declare-fun c!1385602 () Bool)

(assert (=> d!2303881 (= c!1385602 (not (forall!18278 z!3716 lambda!465284)))))

(assert (=> d!2303881 (= (lostCauseZipper!1388 z!3716) lt!2634530)))

(declare-fun bm!688681 () Bool)

(declare-datatypes ((List!72497 0))(
  ( (Nil!72373) (Cons!72373 (h!78821 Context!16904) (t!387066 List!72497)) )
))
(declare-fun lt!2634533 () List!72497)

(declare-fun call!688685 () Bool)

(declare-fun lt!2634532 () List!72497)

(declare-fun exists!4853 (List!72497 Int) Bool)

(assert (=> bm!688681 (= call!688685 (exists!4853 (ite c!1385602 lt!2634533 lt!2634532) (ite c!1385602 lambda!465285 lambda!465286)))))

(declare-fun bm!688680 () Bool)

(declare-fun call!688686 () List!72497)

(declare-fun toList!11825 ((Set Context!16904)) List!72497)

(assert (=> bm!688680 (= call!688686 (toList!11825 z!3716))))

(declare-fun Unit!166358 () Unit!166354)

(assert (=> b!7505398 (= e!4475095 Unit!166358)))

(assert (=> b!7505398 (= lt!2634533 call!688686)))

(declare-fun lt!2634536 () Unit!166354)

(declare-fun lemmaNotForallThenExists!496 (List!72497 Int) Unit!166354)

(assert (=> b!7505398 (= lt!2634536 (lemmaNotForallThenExists!496 lt!2634533 lambda!465284))))

(assert (=> b!7505398 call!688685))

(declare-fun lt!2634534 () Unit!166354)

(assert (=> b!7505398 (= lt!2634534 lt!2634536)))

(declare-fun Unit!166359 () Unit!166354)

(assert (=> b!7505399 (= e!4475095 Unit!166359)))

(assert (=> b!7505399 (= lt!2634532 call!688686)))

(declare-fun lt!2634535 () Unit!166354)

(declare-fun lemmaForallThenNotExists!463 (List!72497 Int) Unit!166354)

(assert (=> b!7505399 (= lt!2634535 (lemmaForallThenNotExists!463 lt!2634532 lambda!465284))))

(assert (=> b!7505399 (not call!688685)))

(declare-fun lt!2634531 () Unit!166354)

(assert (=> b!7505399 (= lt!2634531 lt!2634535)))

(assert (= (and d!2303881 c!1385602) b!7505398))

(assert (= (and d!2303881 (not c!1385602)) b!7505399))

(assert (= (or b!7505398 b!7505399) bm!688680))

(assert (= (or b!7505398 b!7505399) bm!688681))

(declare-fun m!8087642 () Bool)

(assert (=> bm!688680 m!8087642))

(declare-fun m!8087644 () Bool)

(assert (=> b!7505399 m!8087644))

(declare-fun m!8087646 () Bool)

(assert (=> d!2303881 m!8087646))

(assert (=> d!2303881 m!8087646))

(declare-fun m!8087648 () Bool)

(assert (=> d!2303881 m!8087648))

(declare-fun m!8087650 () Bool)

(assert (=> d!2303881 m!8087650))

(assert (=> d!2303881 m!8087650))

(declare-fun m!8087652 () Bool)

(assert (=> b!7505398 m!8087652))

(declare-fun m!8087654 () Bool)

(assert (=> bm!688681 m!8087654))

(assert (=> b!7505303 d!2303881))

(declare-fun d!2303883 () Bool)

(assert (=> d!2303883 (= testedSuffix!164 lt!2634465)))

(declare-fun lt!2634540 () Unit!166354)

(declare-fun choose!58093 (List!72493 List!72493 List!72493 List!72493 List!72493) Unit!166354)

(assert (=> d!2303883 (= lt!2634540 (choose!58093 testedP!204 testedSuffix!164 testedP!204 lt!2634465 totalInput!779))))

(assert (=> d!2303883 (isPrefix!5994 testedP!204 totalInput!779)))

(assert (=> d!2303883 (= (lemmaSamePrefixThenSameSuffix!2793 testedP!204 testedSuffix!164 testedP!204 lt!2634465 totalInput!779) lt!2634540)))

(declare-fun bs!1938093 () Bool)

(assert (= bs!1938093 d!2303883))

(declare-fun m!8087656 () Bool)

(assert (=> bs!1938093 m!8087656))

(assert (=> bs!1938093 m!8087528))

(assert (=> b!7505303 d!2303883))

(declare-fun d!2303885 () Bool)

(declare-fun lt!2634543 () List!72493)

(assert (=> d!2303885 (= (++!17329 testedP!204 lt!2634543) totalInput!779)))

(declare-fun e!4475098 () List!72493)

(assert (=> d!2303885 (= lt!2634543 e!4475098)))

(declare-fun c!1385605 () Bool)

(assert (=> d!2303885 (= c!1385605 (is-Cons!72369 testedP!204))))

(assert (=> d!2303885 (>= (size!42271 totalInput!779) (size!42271 testedP!204))))

(assert (=> d!2303885 (= (getSuffix!3494 totalInput!779 testedP!204) lt!2634543)))

(declare-fun b!7505404 () Bool)

(assert (=> b!7505404 (= e!4475098 (getSuffix!3494 (tail!14988 totalInput!779) (t!387062 testedP!204)))))

(declare-fun b!7505405 () Bool)

(assert (=> b!7505405 (= e!4475098 totalInput!779)))

(assert (= (and d!2303885 c!1385605) b!7505404))

(assert (= (and d!2303885 (not c!1385605)) b!7505405))

(declare-fun m!8087658 () Bool)

(assert (=> d!2303885 m!8087658))

(assert (=> d!2303885 m!8087536))

(assert (=> d!2303885 m!8087540))

(assert (=> b!7505404 m!8087610))

(assert (=> b!7505404 m!8087610))

(declare-fun m!8087660 () Bool)

(assert (=> b!7505404 m!8087660))

(assert (=> b!7505303 d!2303885))

(declare-fun d!2303887 () Bool)

(declare-fun lt!2634544 () Int)

(assert (=> d!2303887 (>= lt!2634544 0)))

(declare-fun e!4475099 () Int)

(assert (=> d!2303887 (= lt!2634544 e!4475099)))

(declare-fun c!1385606 () Bool)

(assert (=> d!2303887 (= c!1385606 (is-Nil!72369 totalInput!779))))

(assert (=> d!2303887 (= (size!42271 totalInput!779) lt!2634544)))

(declare-fun b!7505406 () Bool)

(assert (=> b!7505406 (= e!4475099 0)))

(declare-fun b!7505407 () Bool)

(assert (=> b!7505407 (= e!4475099 (+ 1 (size!42271 (t!387062 totalInput!779))))))

(assert (= (and d!2303887 c!1385606) b!7505406))

(assert (= (and d!2303887 (not c!1385606)) b!7505407))

(declare-fun m!8087662 () Bool)

(assert (=> b!7505407 m!8087662))

(assert (=> b!7505302 d!2303887))

(declare-fun condSetEmpty!56979 () Bool)

(assert (=> setNonEmpty!56973 (= condSetEmpty!56979 (= setRest!56973 (as set.empty (Set Context!16904))))))

(declare-fun setRes!56979 () Bool)

(assert (=> setNonEmpty!56973 (= tp!2178641 setRes!56979)))

(declare-fun setIsEmpty!56979 () Bool)

(assert (=> setIsEmpty!56979 setRes!56979))

(declare-fun e!4475102 () Bool)

(declare-fun setNonEmpty!56979 () Bool)

(declare-fun tp!2178665 () Bool)

(declare-fun setElem!56979 () Context!16904)

(assert (=> setNonEmpty!56979 (= setRes!56979 (and tp!2178665 (inv!92481 setElem!56979) e!4475102))))

(declare-fun setRest!56979 () (Set Context!16904))

(assert (=> setNonEmpty!56979 (= setRest!56973 (set.union (set.insert setElem!56979 (as set.empty (Set Context!16904))) setRest!56979))))

(declare-fun b!7505412 () Bool)

(declare-fun tp!2178664 () Bool)

(assert (=> b!7505412 (= e!4475102 tp!2178664)))

(assert (= (and setNonEmpty!56973 condSetEmpty!56979) setIsEmpty!56979))

(assert (= (and setNonEmpty!56973 (not condSetEmpty!56979)) setNonEmpty!56979))

(assert (= setNonEmpty!56979 b!7505412))

(declare-fun m!8087664 () Bool)

(assert (=> setNonEmpty!56979 m!8087664))

(declare-fun b!7505417 () Bool)

(declare-fun e!4475105 () Bool)

(declare-fun tp!2178668 () Bool)

(assert (=> b!7505417 (= e!4475105 (and tp_is_empty!49741 tp!2178668))))

(assert (=> b!7505309 (= tp!2178644 e!4475105)))

(assert (= (and b!7505309 (is-Cons!72369 (t!387062 totalInput!779))) b!7505417))

(declare-fun b!7505418 () Bool)

(declare-fun e!4475106 () Bool)

(declare-fun tp!2178669 () Bool)

(assert (=> b!7505418 (= e!4475106 (and tp_is_empty!49741 tp!2178669))))

(assert (=> b!7505305 (= tp!2178640 e!4475106)))

(assert (= (and b!7505305 (is-Cons!72369 (t!387062 testedP!204))) b!7505418))

(declare-fun b!7505423 () Bool)

(declare-fun e!4475109 () Bool)

(declare-fun tp!2178674 () Bool)

(declare-fun tp!2178675 () Bool)

(assert (=> b!7505423 (= e!4475109 (and tp!2178674 tp!2178675))))

(assert (=> b!7505304 (= tp!2178643 e!4475109)))

(assert (= (and b!7505304 (is-Cons!72370 (exprs!8952 setElem!56973))) b!7505423))

(declare-fun b!7505424 () Bool)

(declare-fun e!4475110 () Bool)

(declare-fun tp!2178676 () Bool)

(assert (=> b!7505424 (= e!4475110 (and tp_is_empty!49741 tp!2178676))))

(assert (=> b!7505308 (= tp!2178642 e!4475110)))

(assert (= (and b!7505308 (is-Cons!72369 (t!387062 testedSuffix!164))) b!7505424))

(push 1)

(assert (not b!7505387))

(assert (not b!7505412))

(assert (not b!7505361))

(assert (not b!7505389))

(assert (not b!7505423))

(assert (not bm!688681))

(assert (not b!7505362))

(assert (not d!2303877))

(assert (not setNonEmpty!56979))

(assert (not b!7505418))

(assert (not b!7505398))

(assert (not b!7505391))

(assert (not b!7505417))

(assert (not b!7505424))

(assert (not b!7505384))

(assert (not d!2303871))

(assert (not d!2303861))

(assert (not d!2303881))

(assert (not d!2303873))

(assert (not d!2303879))

(assert (not b!7505381))

(assert (not b!7505404))

(assert tp_is_empty!49741)

(assert (not b!7505399))

(assert (not bm!688680))

(assert (not b!7505383))

(assert (not b!7505369))

(assert (not d!2303883))

(assert (not d!2303863))

(assert (not b!7505385))

(assert (not b!7505388))

(assert (not b!7505407))

(assert (not b!7505379))

(assert (not d!2303859))

(assert (not b!7505392))

(assert (not b!7505380))

(assert (not d!2303885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

