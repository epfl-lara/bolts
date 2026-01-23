; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541262 () Bool)

(assert start!541262)

(declare-fun setIsEmpty!30623 () Bool)

(declare-fun setRes!30623 () Bool)

(assert (=> setIsEmpty!30623 setRes!30623))

(declare-fun b!5126426 () Bool)

(declare-fun e!3197055 () Bool)

(declare-fun tp_is_empty!37773 () Bool)

(declare-fun tp!1429898 () Bool)

(assert (=> b!5126426 (= e!3197055 (and tp_is_empty!37773 tp!1429898))))

(declare-fun tp!1429901 () Bool)

(declare-fun e!3197054 () Bool)

(declare-datatypes ((C!28766 0))(
  ( (C!28767 (val!24035 Int)) )
))
(declare-datatypes ((Regex!14250 0))(
  ( (ElementMatch!14250 (c!881356 C!28766)) (Concat!23095 (regOne!29012 Regex!14250) (regTwo!29012 Regex!14250)) (EmptyExpr!14250) (Star!14250 (reg!14579 Regex!14250)) (EmptyLang!14250) (Union!14250 (regOne!29013 Regex!14250) (regTwo!29013 Regex!14250)) )
))
(declare-datatypes ((List!59433 0))(
  ( (Nil!59309) (Cons!59309 (h!65757 Regex!14250) (t!372460 List!59433)) )
))
(declare-datatypes ((Context!7268 0))(
  ( (Context!7269 (exprs!4134 List!59433)) )
))
(declare-fun setElem!30624 () Context!7268)

(declare-fun setNonEmpty!30623 () Bool)

(declare-fun inv!78807 (Context!7268) Bool)

(assert (=> setNonEmpty!30623 (= setRes!30623 (and tp!1429901 (inv!78807 setElem!30624) e!3197054))))

(declare-fun z!4546 () (Set Context!7268))

(declare-fun setRest!30624 () (Set Context!7268))

(assert (=> setNonEmpty!30623 (= z!4546 (set.union (set.insert setElem!30624 (as set.empty (Set Context!7268))) setRest!30624))))

(declare-fun b!5126427 () Bool)

(declare-fun e!3197058 () Bool)

(declare-fun e!3197060 () Bool)

(assert (=> b!5126427 (= e!3197058 e!3197060)))

(declare-fun res!2182780 () Bool)

(assert (=> b!5126427 (=> (not res!2182780) (not e!3197060))))

(declare-fun lt!2114125 () (Set Context!7268))

(assert (=> b!5126427 (= res!2182780 (= lt!2114125 z!4546))))

(declare-fun baseZ!61 () (Set Context!7268))

(declare-datatypes ((List!59434 0))(
  ( (Nil!59310) (Cons!59310 (h!65758 C!28766) (t!372461 List!59434)) )
))
(declare-fun testedP!289 () List!59434)

(declare-fun derivationZipper!147 ((Set Context!7268) List!59434) (Set Context!7268))

(assert (=> b!5126427 (= lt!2114125 (derivationZipper!147 baseZ!61 testedP!289))))

(declare-fun b!5126428 () Bool)

(declare-fun e!3197056 () Bool)

(declare-fun tp!1429900 () Bool)

(assert (=> b!5126428 (= e!3197056 (and tp_is_empty!37773 tp!1429900))))

(declare-fun b!5126429 () Bool)

(declare-fun res!2182779 () Bool)

(declare-fun e!3197059 () Bool)

(assert (=> b!5126429 (=> res!2182779 e!3197059)))

(declare-fun lostCauseZipper!1132 ((Set Context!7268)) Bool)

(assert (=> b!5126429 (= res!2182779 (lostCauseZipper!1132 z!4546))))

(declare-fun b!5126430 () Bool)

(declare-fun res!2182784 () Bool)

(assert (=> b!5126430 (=> (not res!2182784) (not e!3197058))))

(declare-fun matchZipper!918 ((Set Context!7268) List!59434) Bool)

(assert (=> b!5126430 (= res!2182784 (matchZipper!918 baseZ!61 testedP!289))))

(declare-fun b!5126431 () Bool)

(declare-fun res!2182781 () Bool)

(assert (=> b!5126431 (=> res!2182781 e!3197059)))

(declare-fun nullableZipper!1047 ((Set Context!7268)) Bool)

(assert (=> b!5126431 (= res!2182781 (not (nullableZipper!1047 z!4546)))))

(declare-fun b!5126432 () Bool)

(declare-fun tp!1429902 () Bool)

(assert (=> b!5126432 (= e!3197054 tp!1429902)))

(declare-fun e!3197057 () Bool)

(declare-fun setRes!30624 () Bool)

(declare-fun setElem!30623 () Context!7268)

(declare-fun tp!1429899 () Bool)

(declare-fun setNonEmpty!30624 () Bool)

(assert (=> setNonEmpty!30624 (= setRes!30624 (and tp!1429899 (inv!78807 setElem!30623) e!3197057))))

(declare-fun setRest!30623 () (Set Context!7268))

(assert (=> setNonEmpty!30624 (= baseZ!61 (set.union (set.insert setElem!30623 (as set.empty (Set Context!7268))) setRest!30623))))

(declare-fun res!2182782 () Bool)

(assert (=> start!541262 (=> (not res!2182782) (not e!3197058))))

(declare-fun input!5798 () List!59434)

(declare-fun isPrefix!5655 (List!59434 List!59434) Bool)

(assert (=> start!541262 (= res!2182782 (isPrefix!5655 testedP!289 input!5798))))

(assert (=> start!541262 e!3197058))

(assert (=> start!541262 e!3197056))

(assert (=> start!541262 e!3197055))

(declare-fun condSetEmpty!30624 () Bool)

(assert (=> start!541262 (= condSetEmpty!30624 (= baseZ!61 (as set.empty (Set Context!7268))))))

(assert (=> start!541262 setRes!30624))

(declare-fun condSetEmpty!30623 () Bool)

(assert (=> start!541262 (= condSetEmpty!30623 (= z!4546 (as set.empty (Set Context!7268))))))

(assert (=> start!541262 setRes!30623))

(declare-fun b!5126433 () Bool)

(declare-fun lt!2114121 () List!59434)

(declare-fun ++!13055 (List!59434 List!59434) List!59434)

(assert (=> b!5126433 (= e!3197059 (= (++!13055 testedP!289 lt!2114121) input!5798))))

(declare-fun lt!2114122 () Int)

(declare-fun size!39552 (List!59434) Int)

(assert (=> b!5126433 (= lt!2114122 (size!39552 input!5798))))

(declare-fun getSuffix!3319 (List!59434 List!59434) List!59434)

(assert (=> b!5126433 (= lt!2114121 (getSuffix!3319 input!5798 testedP!289))))

(declare-fun lt!2114124 () Int)

(assert (=> b!5126433 (= lt!2114124 (size!39552 testedP!289))))

(declare-fun setIsEmpty!30624 () Bool)

(assert (=> setIsEmpty!30624 setRes!30624))

(declare-fun b!5126434 () Bool)

(assert (=> b!5126434 (= e!3197060 (not e!3197059))))

(declare-fun res!2182783 () Bool)

(assert (=> b!5126434 (=> res!2182783 e!3197059)))

(assert (=> b!5126434 (= res!2182783 (not (matchZipper!918 z!4546 Nil!59310)))))

(assert (=> b!5126434 (matchZipper!918 lt!2114125 Nil!59310)))

(declare-datatypes ((Unit!150493 0))(
  ( (Unit!150494) )
))
(declare-fun lt!2114123 () Unit!150493)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!19 ((Set Context!7268) List!59434) Unit!150493)

(assert (=> b!5126434 (= lt!2114123 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!19 baseZ!61 testedP!289))))

(declare-fun b!5126435 () Bool)

(declare-fun tp!1429903 () Bool)

(assert (=> b!5126435 (= e!3197057 tp!1429903)))

(assert (= (and start!541262 res!2182782) b!5126430))

(assert (= (and b!5126430 res!2182784) b!5126427))

(assert (= (and b!5126427 res!2182780) b!5126434))

(assert (= (and b!5126434 (not res!2182783)) b!5126431))

(assert (= (and b!5126431 (not res!2182781)) b!5126429))

(assert (= (and b!5126429 (not res!2182779)) b!5126433))

(assert (= (and start!541262 (is-Cons!59310 testedP!289)) b!5126428))

(assert (= (and start!541262 (is-Cons!59310 input!5798)) b!5126426))

(assert (= (and start!541262 condSetEmpty!30624) setIsEmpty!30624))

(assert (= (and start!541262 (not condSetEmpty!30624)) setNonEmpty!30624))

(assert (= setNonEmpty!30624 b!5126435))

(assert (= (and start!541262 condSetEmpty!30623) setIsEmpty!30623))

(assert (= (and start!541262 (not condSetEmpty!30623)) setNonEmpty!30623))

(assert (= setNonEmpty!30623 b!5126432))

(declare-fun m!6190390 () Bool)

(assert (=> b!5126429 m!6190390))

(declare-fun m!6190392 () Bool)

(assert (=> setNonEmpty!30624 m!6190392))

(declare-fun m!6190394 () Bool)

(assert (=> setNonEmpty!30623 m!6190394))

(declare-fun m!6190396 () Bool)

(assert (=> b!5126430 m!6190396))

(declare-fun m!6190398 () Bool)

(assert (=> b!5126433 m!6190398))

(declare-fun m!6190400 () Bool)

(assert (=> b!5126433 m!6190400))

(declare-fun m!6190402 () Bool)

(assert (=> b!5126433 m!6190402))

(declare-fun m!6190404 () Bool)

(assert (=> b!5126433 m!6190404))

(declare-fun m!6190406 () Bool)

(assert (=> b!5126434 m!6190406))

(declare-fun m!6190408 () Bool)

(assert (=> b!5126434 m!6190408))

(declare-fun m!6190410 () Bool)

(assert (=> b!5126434 m!6190410))

(declare-fun m!6190412 () Bool)

(assert (=> b!5126427 m!6190412))

(declare-fun m!6190414 () Bool)

(assert (=> b!5126431 m!6190414))

(declare-fun m!6190416 () Bool)

(assert (=> start!541262 m!6190416))

(push 1)

(assert (not b!5126428))

(assert (not start!541262))

(assert (not b!5126433))

(assert (not b!5126426))

(assert (not b!5126435))

(assert (not b!5126430))

(assert (not b!5126427))

(assert (not b!5126431))

(assert (not b!5126432))

(assert (not setNonEmpty!30623))

(assert (not b!5126429))

(assert (not setNonEmpty!30624))

(assert tp_is_empty!37773)

(assert (not b!5126434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5126477 () Bool)

(declare-fun e!3197088 () Bool)

(assert (=> b!5126477 (= e!3197088 (>= (size!39552 input!5798) (size!39552 testedP!289)))))

(declare-fun b!5126476 () Bool)

(declare-fun e!3197090 () Bool)

(declare-fun tail!10095 (List!59434) List!59434)

(assert (=> b!5126476 (= e!3197090 (isPrefix!5655 (tail!10095 testedP!289) (tail!10095 input!5798)))))

(declare-fun b!5126475 () Bool)

(declare-fun res!2182813 () Bool)

(assert (=> b!5126475 (=> (not res!2182813) (not e!3197090))))

(declare-fun head!10960 (List!59434) C!28766)

(assert (=> b!5126475 (= res!2182813 (= (head!10960 testedP!289) (head!10960 input!5798)))))

(declare-fun b!5126474 () Bool)

(declare-fun e!3197089 () Bool)

(assert (=> b!5126474 (= e!3197089 e!3197090)))

(declare-fun res!2182812 () Bool)

(assert (=> b!5126474 (=> (not res!2182812) (not e!3197090))))

(assert (=> b!5126474 (= res!2182812 (not (is-Nil!59310 input!5798)))))

(declare-fun d!1658269 () Bool)

(assert (=> d!1658269 e!3197088))

(declare-fun res!2182811 () Bool)

(assert (=> d!1658269 (=> res!2182811 e!3197088)))

(declare-fun lt!2114143 () Bool)

(assert (=> d!1658269 (= res!2182811 (not lt!2114143))))

(assert (=> d!1658269 (= lt!2114143 e!3197089)))

(declare-fun res!2182814 () Bool)

(assert (=> d!1658269 (=> res!2182814 e!3197089)))

(assert (=> d!1658269 (= res!2182814 (is-Nil!59310 testedP!289))))

(assert (=> d!1658269 (= (isPrefix!5655 testedP!289 input!5798) lt!2114143)))

(assert (= (and d!1658269 (not res!2182814)) b!5126474))

(assert (= (and b!5126474 res!2182812) b!5126475))

(assert (= (and b!5126475 res!2182813) b!5126476))

(assert (= (and d!1658269 (not res!2182811)) b!5126477))

(assert (=> b!5126477 m!6190400))

(assert (=> b!5126477 m!6190404))

(declare-fun m!6190446 () Bool)

(assert (=> b!5126476 m!6190446))

(declare-fun m!6190448 () Bool)

(assert (=> b!5126476 m!6190448))

(assert (=> b!5126476 m!6190446))

(assert (=> b!5126476 m!6190448))

(declare-fun m!6190450 () Bool)

(assert (=> b!5126476 m!6190450))

(declare-fun m!6190452 () Bool)

(assert (=> b!5126475 m!6190452))

(declare-fun m!6190454 () Bool)

(assert (=> b!5126475 m!6190454))

(assert (=> start!541262 d!1658269))

(declare-fun d!1658273 () Bool)

(declare-fun lambda!251849 () Int)

(declare-fun forall!13647 (List!59433 Int) Bool)

(assert (=> d!1658273 (= (inv!78807 setElem!30623) (forall!13647 (exprs!4134 setElem!30623) lambda!251849))))

(declare-fun bs!1194016 () Bool)

(assert (= bs!1194016 d!1658273))

(declare-fun m!6190456 () Bool)

(assert (=> bs!1194016 m!6190456))

(assert (=> setNonEmpty!30624 d!1658273))

(declare-fun d!1658275 () Bool)

(declare-fun c!881364 () Bool)

(declare-fun isEmpty!31962 (List!59434) Bool)

(assert (=> d!1658275 (= c!881364 (isEmpty!31962 testedP!289))))

(declare-fun e!3197095 () Bool)

(assert (=> d!1658275 (= (matchZipper!918 baseZ!61 testedP!289) e!3197095)))

(declare-fun b!5126486 () Bool)

(assert (=> b!5126486 (= e!3197095 (nullableZipper!1047 baseZ!61))))

(declare-fun b!5126487 () Bool)

(declare-fun derivationStepZipper!867 ((Set Context!7268) C!28766) (Set Context!7268))

(assert (=> b!5126487 (= e!3197095 (matchZipper!918 (derivationStepZipper!867 baseZ!61 (head!10960 testedP!289)) (tail!10095 testedP!289)))))

(assert (= (and d!1658275 c!881364) b!5126486))

(assert (= (and d!1658275 (not c!881364)) b!5126487))

(declare-fun m!6190458 () Bool)

(assert (=> d!1658275 m!6190458))

(declare-fun m!6190460 () Bool)

(assert (=> b!5126486 m!6190460))

(assert (=> b!5126487 m!6190452))

(assert (=> b!5126487 m!6190452))

(declare-fun m!6190462 () Bool)

(assert (=> b!5126487 m!6190462))

(assert (=> b!5126487 m!6190446))

(assert (=> b!5126487 m!6190462))

(assert (=> b!5126487 m!6190446))

(declare-fun m!6190464 () Bool)

(assert (=> b!5126487 m!6190464))

(assert (=> b!5126430 d!1658275))

(declare-fun d!1658277 () Bool)

(declare-fun c!881365 () Bool)

(assert (=> d!1658277 (= c!881365 (isEmpty!31962 Nil!59310))))

(declare-fun e!3197096 () Bool)

(assert (=> d!1658277 (= (matchZipper!918 z!4546 Nil!59310) e!3197096)))

(declare-fun b!5126488 () Bool)

(assert (=> b!5126488 (= e!3197096 (nullableZipper!1047 z!4546))))

(declare-fun b!5126489 () Bool)

(assert (=> b!5126489 (= e!3197096 (matchZipper!918 (derivationStepZipper!867 z!4546 (head!10960 Nil!59310)) (tail!10095 Nil!59310)))))

(assert (= (and d!1658277 c!881365) b!5126488))

(assert (= (and d!1658277 (not c!881365)) b!5126489))

(declare-fun m!6190466 () Bool)

(assert (=> d!1658277 m!6190466))

(assert (=> b!5126488 m!6190414))

(declare-fun m!6190468 () Bool)

(assert (=> b!5126489 m!6190468))

(assert (=> b!5126489 m!6190468))

(declare-fun m!6190470 () Bool)

(assert (=> b!5126489 m!6190470))

(declare-fun m!6190472 () Bool)

(assert (=> b!5126489 m!6190472))

(assert (=> b!5126489 m!6190470))

(assert (=> b!5126489 m!6190472))

(declare-fun m!6190474 () Bool)

(assert (=> b!5126489 m!6190474))

(assert (=> b!5126434 d!1658277))

(declare-fun d!1658279 () Bool)

(declare-fun c!881366 () Bool)

(assert (=> d!1658279 (= c!881366 (isEmpty!31962 Nil!59310))))

(declare-fun e!3197097 () Bool)

(assert (=> d!1658279 (= (matchZipper!918 lt!2114125 Nil!59310) e!3197097)))

(declare-fun b!5126490 () Bool)

(assert (=> b!5126490 (= e!3197097 (nullableZipper!1047 lt!2114125))))

(declare-fun b!5126491 () Bool)

(assert (=> b!5126491 (= e!3197097 (matchZipper!918 (derivationStepZipper!867 lt!2114125 (head!10960 Nil!59310)) (tail!10095 Nil!59310)))))

(assert (= (and d!1658279 c!881366) b!5126490))

(assert (= (and d!1658279 (not c!881366)) b!5126491))

(assert (=> d!1658279 m!6190466))

(declare-fun m!6190476 () Bool)

(assert (=> b!5126490 m!6190476))

(assert (=> b!5126491 m!6190468))

(assert (=> b!5126491 m!6190468))

(declare-fun m!6190478 () Bool)

(assert (=> b!5126491 m!6190478))

(assert (=> b!5126491 m!6190472))

(assert (=> b!5126491 m!6190478))

(assert (=> b!5126491 m!6190472))

(declare-fun m!6190480 () Bool)

(assert (=> b!5126491 m!6190480))

(assert (=> b!5126434 d!1658279))

(declare-fun d!1658281 () Bool)

(assert (=> d!1658281 (= (matchZipper!918 baseZ!61 testedP!289) (matchZipper!918 (derivationZipper!147 baseZ!61 testedP!289) Nil!59310))))

(declare-fun lt!2114150 () Unit!150493)

(declare-fun choose!37749 ((Set Context!7268) List!59434) Unit!150493)

(assert (=> d!1658281 (= lt!2114150 (choose!37749 baseZ!61 testedP!289))))

(assert (=> d!1658281 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!19 baseZ!61 testedP!289) lt!2114150)))

(declare-fun bs!1194017 () Bool)

(assert (= bs!1194017 d!1658281))

(assert (=> bs!1194017 m!6190396))

(assert (=> bs!1194017 m!6190412))

(assert (=> bs!1194017 m!6190412))

(declare-fun m!6190482 () Bool)

(assert (=> bs!1194017 m!6190482))

(declare-fun m!6190484 () Bool)

(assert (=> bs!1194017 m!6190484))

(assert (=> b!5126434 d!1658281))

(declare-fun bs!1194018 () Bool)

(declare-fun d!1658283 () Bool)

(assert (= bs!1194018 (and d!1658283 d!1658273)))

(declare-fun lambda!251850 () Int)

(assert (=> bs!1194018 (= lambda!251850 lambda!251849)))

(assert (=> d!1658283 (= (inv!78807 setElem!30624) (forall!13647 (exprs!4134 setElem!30624) lambda!251850))))

(declare-fun bs!1194019 () Bool)

(assert (= bs!1194019 d!1658283))

(declare-fun m!6190486 () Bool)

(assert (=> bs!1194019 m!6190486))

(assert (=> setNonEmpty!30623 d!1658283))

(declare-fun d!1658285 () Bool)

(declare-fun c!881369 () Bool)

(assert (=> d!1658285 (= c!881369 (is-Cons!59310 testedP!289))))

(declare-fun e!3197100 () (Set Context!7268))

(assert (=> d!1658285 (= (derivationZipper!147 baseZ!61 testedP!289) e!3197100)))

(declare-fun b!5126496 () Bool)

(assert (=> b!5126496 (= e!3197100 (derivationZipper!147 (derivationStepZipper!867 baseZ!61 (h!65758 testedP!289)) (t!372461 testedP!289)))))

(declare-fun b!5126497 () Bool)

(assert (=> b!5126497 (= e!3197100 baseZ!61)))

(assert (= (and d!1658285 c!881369) b!5126496))

(assert (= (and d!1658285 (not c!881369)) b!5126497))

(declare-fun m!6190488 () Bool)

(assert (=> b!5126496 m!6190488))

(assert (=> b!5126496 m!6190488))

(declare-fun m!6190490 () Bool)

(assert (=> b!5126496 m!6190490))

(assert (=> b!5126427 d!1658285))

(declare-fun d!1658287 () Bool)

(declare-fun lambda!251853 () Int)

(declare-fun exists!1502 ((Set Context!7268) Int) Bool)

(assert (=> d!1658287 (= (nullableZipper!1047 z!4546) (exists!1502 z!4546 lambda!251853))))

(declare-fun bs!1194020 () Bool)

(assert (= bs!1194020 d!1658287))

(declare-fun m!6190492 () Bool)

(assert (=> bs!1194020 m!6190492))

(assert (=> b!5126431 d!1658287))

(declare-fun bs!1194021 () Bool)

(declare-fun d!1658289 () Bool)

(assert (= bs!1194021 (and d!1658289 d!1658287)))

(declare-fun lambda!251866 () Int)

(assert (=> bs!1194021 (not (= lambda!251866 lambda!251853))))

(declare-fun bs!1194022 () Bool)

(declare-fun b!5126502 () Bool)

(assert (= bs!1194022 (and b!5126502 d!1658287)))

(declare-fun lambda!251867 () Int)

(assert (=> bs!1194022 (not (= lambda!251867 lambda!251853))))

(declare-fun bs!1194023 () Bool)

(assert (= bs!1194023 (and b!5126502 d!1658289)))

(assert (=> bs!1194023 (not (= lambda!251867 lambda!251866))))

(declare-fun bs!1194024 () Bool)

(declare-fun b!5126503 () Bool)

(assert (= bs!1194024 (and b!5126503 d!1658287)))

(declare-fun lambda!251868 () Int)

(assert (=> bs!1194024 (not (= lambda!251868 lambda!251853))))

(declare-fun bs!1194025 () Bool)

(assert (= bs!1194025 (and b!5126503 d!1658289)))

(assert (=> bs!1194025 (not (= lambda!251868 lambda!251866))))

(declare-fun bs!1194026 () Bool)

(assert (= bs!1194026 (and b!5126503 b!5126502)))

(assert (=> bs!1194026 (= lambda!251868 lambda!251867)))

(declare-fun lt!2114174 () Bool)

(declare-datatypes ((Option!14711 0))(
  ( (None!14710) (Some!14710 (v!50723 List!59434)) )
))
(declare-fun isEmpty!31963 (Option!14711) Bool)

(declare-fun getLanguageWitness!840 ((Set Context!7268)) Option!14711)

(assert (=> d!1658289 (= lt!2114174 (isEmpty!31963 (getLanguageWitness!840 z!4546)))))

(declare-fun forall!13648 ((Set Context!7268) Int) Bool)

(assert (=> d!1658289 (= lt!2114174 (forall!13648 z!4546 lambda!251866))))

(declare-fun lt!2114172 () Unit!150493)

(declare-fun e!3197107 () Unit!150493)

(assert (=> d!1658289 (= lt!2114172 e!3197107)))

(declare-fun c!881382 () Bool)

(assert (=> d!1658289 (= c!881382 (not (forall!13648 z!4546 lambda!251866)))))

(assert (=> d!1658289 (= (lostCauseZipper!1132 z!4546) lt!2114174)))

(declare-fun bm!356842 () Bool)

(declare-datatypes ((List!59437 0))(
  ( (Nil!59313) (Cons!59313 (h!65761 Context!7268) (t!372464 List!59437)) )
))
(declare-fun call!356846 () List!59437)

(declare-fun toList!8277 ((Set Context!7268)) List!59437)

(assert (=> bm!356842 (= call!356846 (toList!8277 z!4546))))

(declare-fun Unit!150497 () Unit!150493)

(assert (=> b!5126503 (= e!3197107 Unit!150497)))

(declare-fun lt!2114171 () List!59437)

(assert (=> b!5126503 (= lt!2114171 call!356846)))

(declare-fun lt!2114173 () Unit!150493)

(declare-fun lemmaForallThenNotExists!334 (List!59437 Int) Unit!150493)

(assert (=> b!5126503 (= lt!2114173 (lemmaForallThenNotExists!334 lt!2114171 lambda!251866))))

(declare-fun call!356847 () Bool)

(assert (=> b!5126503 (not call!356847)))

(declare-fun lt!2114167 () Unit!150493)

(assert (=> b!5126503 (= lt!2114167 lt!2114173)))

(declare-fun Unit!150498 () Unit!150493)

(assert (=> b!5126502 (= e!3197107 Unit!150498)))

(declare-fun lt!2114170 () List!59437)

(assert (=> b!5126502 (= lt!2114170 call!356846)))

(declare-fun lt!2114169 () Unit!150493)

(declare-fun lemmaNotForallThenExists!351 (List!59437 Int) Unit!150493)

(assert (=> b!5126502 (= lt!2114169 (lemmaNotForallThenExists!351 lt!2114170 lambda!251866))))

(assert (=> b!5126502 call!356847))

(declare-fun lt!2114168 () Unit!150493)

(assert (=> b!5126502 (= lt!2114168 lt!2114169)))

(declare-fun bm!356841 () Bool)

(declare-fun exists!1503 (List!59437 Int) Bool)

(assert (=> bm!356841 (= call!356847 (exists!1503 (ite c!881382 lt!2114170 lt!2114171) (ite c!881382 lambda!251867 lambda!251868)))))

(assert (= (and d!1658289 c!881382) b!5126502))

(assert (= (and d!1658289 (not c!881382)) b!5126503))

(assert (= (or b!5126502 b!5126503) bm!356841))

(assert (= (or b!5126502 b!5126503) bm!356842))

(declare-fun m!6190494 () Bool)

(assert (=> b!5126503 m!6190494))

(declare-fun m!6190496 () Bool)

(assert (=> bm!356842 m!6190496))

(declare-fun m!6190498 () Bool)

(assert (=> bm!356841 m!6190498))

(declare-fun m!6190500 () Bool)

(assert (=> b!5126502 m!6190500))

(declare-fun m!6190502 () Bool)

(assert (=> d!1658289 m!6190502))

(assert (=> d!1658289 m!6190502))

(declare-fun m!6190504 () Bool)

(assert (=> d!1658289 m!6190504))

(declare-fun m!6190506 () Bool)

(assert (=> d!1658289 m!6190506))

(assert (=> d!1658289 m!6190506))

(assert (=> b!5126429 d!1658289))

(declare-fun d!1658291 () Bool)

(declare-fun e!3197113 () Bool)

(assert (=> d!1658291 e!3197113))

(declare-fun res!2182819 () Bool)

(assert (=> d!1658291 (=> (not res!2182819) (not e!3197113))))

(declare-fun lt!2114177 () List!59434)

(declare-fun content!10552 (List!59434) (Set C!28766))

(assert (=> d!1658291 (= res!2182819 (= (content!10552 lt!2114177) (set.union (content!10552 testedP!289) (content!10552 lt!2114121))))))

(declare-fun e!3197112 () List!59434)

(assert (=> d!1658291 (= lt!2114177 e!3197112)))

(declare-fun c!881385 () Bool)

(assert (=> d!1658291 (= c!881385 (is-Nil!59310 testedP!289))))

(assert (=> d!1658291 (= (++!13055 testedP!289 lt!2114121) lt!2114177)))

(declare-fun b!5126514 () Bool)

(declare-fun res!2182820 () Bool)

(assert (=> b!5126514 (=> (not res!2182820) (not e!3197113))))

(assert (=> b!5126514 (= res!2182820 (= (size!39552 lt!2114177) (+ (size!39552 testedP!289) (size!39552 lt!2114121))))))

(declare-fun b!5126512 () Bool)

(assert (=> b!5126512 (= e!3197112 lt!2114121)))

(declare-fun b!5126515 () Bool)

(assert (=> b!5126515 (= e!3197113 (or (not (= lt!2114121 Nil!59310)) (= lt!2114177 testedP!289)))))

(declare-fun b!5126513 () Bool)

(assert (=> b!5126513 (= e!3197112 (Cons!59310 (h!65758 testedP!289) (++!13055 (t!372461 testedP!289) lt!2114121)))))

(assert (= (and d!1658291 c!881385) b!5126512))

(assert (= (and d!1658291 (not c!881385)) b!5126513))

(assert (= (and d!1658291 res!2182819) b!5126514))

(assert (= (and b!5126514 res!2182820) b!5126515))

(declare-fun m!6190508 () Bool)

(assert (=> d!1658291 m!6190508))

(declare-fun m!6190510 () Bool)

(assert (=> d!1658291 m!6190510))

(declare-fun m!6190512 () Bool)

(assert (=> d!1658291 m!6190512))

(declare-fun m!6190514 () Bool)

(assert (=> b!5126514 m!6190514))

(assert (=> b!5126514 m!6190404))

(declare-fun m!6190516 () Bool)

(assert (=> b!5126514 m!6190516))

(declare-fun m!6190518 () Bool)

(assert (=> b!5126513 m!6190518))

(assert (=> b!5126433 d!1658291))

(declare-fun d!1658293 () Bool)

(declare-fun lt!2114180 () Int)

(assert (=> d!1658293 (>= lt!2114180 0)))

(declare-fun e!3197116 () Int)

(assert (=> d!1658293 (= lt!2114180 e!3197116)))

(declare-fun c!881388 () Bool)

(assert (=> d!1658293 (= c!881388 (is-Nil!59310 input!5798))))

(assert (=> d!1658293 (= (size!39552 input!5798) lt!2114180)))

(declare-fun b!5126520 () Bool)

(assert (=> b!5126520 (= e!3197116 0)))

(declare-fun b!5126521 () Bool)

(assert (=> b!5126521 (= e!3197116 (+ 1 (size!39552 (t!372461 input!5798))))))

(assert (= (and d!1658293 c!881388) b!5126520))

(assert (= (and d!1658293 (not c!881388)) b!5126521))

(declare-fun m!6190520 () Bool)

(assert (=> b!5126521 m!6190520))

(assert (=> b!5126433 d!1658293))

(declare-fun d!1658295 () Bool)

(declare-fun lt!2114183 () List!59434)

(assert (=> d!1658295 (= (++!13055 testedP!289 lt!2114183) input!5798)))

(declare-fun e!3197119 () List!59434)

(assert (=> d!1658295 (= lt!2114183 e!3197119)))

(declare-fun c!881391 () Bool)

(assert (=> d!1658295 (= c!881391 (is-Cons!59310 testedP!289))))

(assert (=> d!1658295 (>= (size!39552 input!5798) (size!39552 testedP!289))))

(assert (=> d!1658295 (= (getSuffix!3319 input!5798 testedP!289) lt!2114183)))

(declare-fun b!5126526 () Bool)

(assert (=> b!5126526 (= e!3197119 (getSuffix!3319 (tail!10095 input!5798) (t!372461 testedP!289)))))

(declare-fun b!5126527 () Bool)

(assert (=> b!5126527 (= e!3197119 input!5798)))

(assert (= (and d!1658295 c!881391) b!5126526))

(assert (= (and d!1658295 (not c!881391)) b!5126527))

(declare-fun m!6190522 () Bool)

(assert (=> d!1658295 m!6190522))

(assert (=> d!1658295 m!6190400))

(assert (=> d!1658295 m!6190404))

(assert (=> b!5126526 m!6190448))

(assert (=> b!5126526 m!6190448))

(declare-fun m!6190524 () Bool)

(assert (=> b!5126526 m!6190524))

(assert (=> b!5126433 d!1658295))

(declare-fun d!1658297 () Bool)

(declare-fun lt!2114184 () Int)

(assert (=> d!1658297 (>= lt!2114184 0)))

(declare-fun e!3197120 () Int)

(assert (=> d!1658297 (= lt!2114184 e!3197120)))

(declare-fun c!881392 () Bool)

(assert (=> d!1658297 (= c!881392 (is-Nil!59310 testedP!289))))

(assert (=> d!1658297 (= (size!39552 testedP!289) lt!2114184)))

(declare-fun b!5126528 () Bool)

(assert (=> b!5126528 (= e!3197120 0)))

(declare-fun b!5126529 () Bool)

(assert (=> b!5126529 (= e!3197120 (+ 1 (size!39552 (t!372461 testedP!289))))))

(assert (= (and d!1658297 c!881392) b!5126528))

(assert (= (and d!1658297 (not c!881392)) b!5126529))

(declare-fun m!6190526 () Bool)

(assert (=> b!5126529 m!6190526))

(assert (=> b!5126433 d!1658297))

(declare-fun b!5126534 () Bool)

(declare-fun e!3197123 () Bool)

(declare-fun tp!1429924 () Bool)

(assert (=> b!5126534 (= e!3197123 (and tp_is_empty!37773 tp!1429924))))

(assert (=> b!5126426 (= tp!1429898 e!3197123)))

(assert (= (and b!5126426 (is-Cons!59310 (t!372461 input!5798))) b!5126534))

(declare-fun condSetEmpty!30633 () Bool)

(assert (=> setNonEmpty!30624 (= condSetEmpty!30633 (= setRest!30623 (as set.empty (Set Context!7268))))))

(declare-fun setRes!30633 () Bool)

(assert (=> setNonEmpty!30624 (= tp!1429899 setRes!30633)))

(declare-fun setIsEmpty!30633 () Bool)

(assert (=> setIsEmpty!30633 setRes!30633))

(declare-fun e!3197126 () Bool)

(declare-fun setElem!30633 () Context!7268)

(declare-fun setNonEmpty!30633 () Bool)

(declare-fun tp!1429929 () Bool)

(assert (=> setNonEmpty!30633 (= setRes!30633 (and tp!1429929 (inv!78807 setElem!30633) e!3197126))))

(declare-fun setRest!30633 () (Set Context!7268))

(assert (=> setNonEmpty!30633 (= setRest!30623 (set.union (set.insert setElem!30633 (as set.empty (Set Context!7268))) setRest!30633))))

(declare-fun b!5126539 () Bool)

(declare-fun tp!1429930 () Bool)

(assert (=> b!5126539 (= e!3197126 tp!1429930)))

(assert (= (and setNonEmpty!30624 condSetEmpty!30633) setIsEmpty!30633))

(assert (= (and setNonEmpty!30624 (not condSetEmpty!30633)) setNonEmpty!30633))

(assert (= setNonEmpty!30633 b!5126539))

(declare-fun m!6190528 () Bool)

(assert (=> setNonEmpty!30633 m!6190528))

(declare-fun b!5126544 () Bool)

(declare-fun e!3197129 () Bool)

(declare-fun tp!1429935 () Bool)

(declare-fun tp!1429936 () Bool)

(assert (=> b!5126544 (= e!3197129 (and tp!1429935 tp!1429936))))

(assert (=> b!5126435 (= tp!1429903 e!3197129)))

(assert (= (and b!5126435 (is-Cons!59309 (exprs!4134 setElem!30623))) b!5126544))

(declare-fun condSetEmpty!30634 () Bool)

(assert (=> setNonEmpty!30623 (= condSetEmpty!30634 (= setRest!30624 (as set.empty (Set Context!7268))))))

(declare-fun setRes!30634 () Bool)

(assert (=> setNonEmpty!30623 (= tp!1429901 setRes!30634)))

(declare-fun setIsEmpty!30634 () Bool)

(assert (=> setIsEmpty!30634 setRes!30634))

(declare-fun setElem!30634 () Context!7268)

(declare-fun e!3197130 () Bool)

(declare-fun tp!1429937 () Bool)

(declare-fun setNonEmpty!30634 () Bool)

(assert (=> setNonEmpty!30634 (= setRes!30634 (and tp!1429937 (inv!78807 setElem!30634) e!3197130))))

(declare-fun setRest!30634 () (Set Context!7268))

(assert (=> setNonEmpty!30634 (= setRest!30624 (set.union (set.insert setElem!30634 (as set.empty (Set Context!7268))) setRest!30634))))

(declare-fun b!5126545 () Bool)

(declare-fun tp!1429938 () Bool)

(assert (=> b!5126545 (= e!3197130 tp!1429938)))

(assert (= (and setNonEmpty!30623 condSetEmpty!30634) setIsEmpty!30634))

(assert (= (and setNonEmpty!30623 (not condSetEmpty!30634)) setNonEmpty!30634))

(assert (= setNonEmpty!30634 b!5126545))

(declare-fun m!6190530 () Bool)

(assert (=> setNonEmpty!30634 m!6190530))

(declare-fun b!5126546 () Bool)

(declare-fun e!3197131 () Bool)

(declare-fun tp!1429939 () Bool)

(declare-fun tp!1429940 () Bool)

(assert (=> b!5126546 (= e!3197131 (and tp!1429939 tp!1429940))))

(assert (=> b!5126432 (= tp!1429902 e!3197131)))

(assert (= (and b!5126432 (is-Cons!59309 (exprs!4134 setElem!30624))) b!5126546))

(declare-fun b!5126547 () Bool)

(declare-fun e!3197132 () Bool)

(declare-fun tp!1429941 () Bool)

(assert (=> b!5126547 (= e!3197132 (and tp_is_empty!37773 tp!1429941))))

(assert (=> b!5126428 (= tp!1429900 e!3197132)))

(assert (= (and b!5126428 (is-Cons!59310 (t!372461 testedP!289))) b!5126547))

(push 1)

(assert (not b!5126502))

(assert (not b!5126486))

(assert (not b!5126477))

(assert (not b!5126544))

(assert (not b!5126526))

(assert (not d!1658287))

(assert (not b!5126475))

(assert (not b!5126503))

(assert (not b!5126529))

(assert (not d!1658273))

(assert (not d!1658289))

(assert (not b!5126521))

(assert (not bm!356842))

(assert (not b!5126539))

(assert (not setNonEmpty!30633))

(assert (not b!5126514))

(assert (not setNonEmpty!30634))

(assert (not b!5126496))

(assert (not b!5126513))

(assert (not d!1658283))

(assert (not d!1658281))

(assert (not b!5126476))

(assert (not b!5126534))

(assert (not d!1658279))

(assert (not b!5126547))

(assert (not b!5126487))

(assert (not b!5126490))

(assert (not bm!356841))

(assert (not b!5126546))

(assert (not d!1658295))

(assert tp_is_empty!37773)

(assert (not d!1658275))

(assert (not d!1658277))

(assert (not b!5126491))

(assert (not d!1658291))

(assert (not b!5126489))

(assert (not b!5126488))

(assert (not b!5126545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

