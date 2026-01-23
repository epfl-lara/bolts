; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279512 () Bool)

(assert start!279512)

(declare-fun bs!521403 () Bool)

(declare-fun b!2865526 () Bool)

(declare-fun b!2865525 () Bool)

(assert (= bs!521403 (and b!2865526 b!2865525)))

(declare-fun lambda!106658 () Int)

(declare-fun lambda!106657 () Int)

(assert (=> bs!521403 (not (= lambda!106658 lambda!106657))))

(declare-fun bs!521404 () Bool)

(declare-fun b!2865523 () Bool)

(assert (= bs!521404 (and b!2865523 b!2865525)))

(declare-fun lambda!106659 () Int)

(assert (=> bs!521404 (not (= lambda!106659 lambda!106657))))

(declare-fun bs!521405 () Bool)

(assert (= bs!521405 (and b!2865523 b!2865526)))

(assert (=> bs!521405 (not (= lambda!106659 lambda!106658))))

(assert (=> b!2865523 true))

(declare-fun b!2865522 () Bool)

(declare-fun res!1189647 () Bool)

(declare-fun e!1814098 () Bool)

(assert (=> b!2865522 (=> res!1189647 e!1814098)))

(declare-datatypes ((C!17558 0))(
  ( (C!17559 (val!10813 Int)) )
))
(declare-datatypes ((Regex!8688 0))(
  ( (ElementMatch!8688 (c!462565 C!17558)) (Concat!14009 (regOne!17888 Regex!8688) (regTwo!17888 Regex!8688)) (EmptyExpr!8688) (Star!8688 (reg!9017 Regex!8688)) (EmptyLang!8688) (Union!8688 (regOne!17889 Regex!8688) (regTwo!17889 Regex!8688)) )
))
(declare-datatypes ((List!34395 0))(
  ( (Nil!34271) (Cons!34271 (h!39691 Regex!8688) (t!233438 List!34395)) )
))
(declare-datatypes ((Context!5296 0))(
  ( (Context!5297 (exprs!3148 List!34395)) )
))
(declare-datatypes ((List!34396 0))(
  ( (Nil!34272) (Cons!34272 (h!39692 Context!5296) (t!233439 List!34396)) )
))
(declare-fun lt!1016451 () List!34396)

(declare-fun exists!1122 (List!34396 Int) Bool)

(assert (=> b!2865522 (= res!1189647 (not (exists!1122 lt!1016451 lambda!106659)))))

(declare-fun e!1814094 () Bool)

(assert (=> b!2865523 (= e!1814094 e!1814098)))

(declare-fun res!1189646 () Bool)

(assert (=> b!2865523 (=> res!1189646 e!1814098)))

(declare-fun z!691 () (Set Context!5296))

(declare-fun exists!1123 ((Set Context!5296) Int) Bool)

(assert (=> b!2865523 (= res!1189646 (not (exists!1123 z!691 lambda!106659)))))

(assert (=> b!2865523 (exists!1123 z!691 lambda!106659)))

(declare-fun lt!1016445 () Context!5296)

(declare-datatypes ((Unit!47915 0))(
  ( (Unit!47916) )
))
(declare-fun lt!1016444 () Unit!47915)

(declare-fun lemmaContainsThenExists!62 ((Set Context!5296) Context!5296 Int) Unit!47915)

(assert (=> b!2865523 (= lt!1016444 (lemmaContainsThenExists!62 z!691 lt!1016445 lambda!106659))))

(declare-fun res!1189650 () Bool)

(declare-fun e!1814097 () Bool)

(assert (=> start!279512 (=> (not res!1189650) (not e!1814097))))

(declare-fun lostCauseZipper!592 ((Set Context!5296)) Bool)

(assert (=> start!279512 (= res!1189650 (not (lostCauseZipper!592 z!691)))))

(assert (=> start!279512 e!1814097))

(declare-fun condSetEmpty!25700 () Bool)

(assert (=> start!279512 (= condSetEmpty!25700 (= z!691 (as set.empty (Set Context!5296))))))

(declare-fun setRes!25700 () Bool)

(assert (=> start!279512 setRes!25700))

(declare-fun b!2865524 () Bool)

(declare-fun e!1814095 () Bool)

(assert (=> b!2865524 (= e!1814097 e!1814095)))

(declare-fun res!1189648 () Bool)

(assert (=> b!2865524 (=> (not res!1189648) (not e!1814095))))

(declare-datatypes ((List!34397 0))(
  ( (Nil!34273) (Cons!34273 (h!39693 C!17558) (t!233440 List!34397)) )
))
(declare-datatypes ((Option!6367 0))(
  ( (None!6366) (Some!6366 (v!34488 List!34397)) )
))
(declare-fun lt!1016449 () Option!6367)

(declare-fun isDefined!4987 (Option!6367) Bool)

(assert (=> b!2865524 (= res!1189648 (isDefined!4987 lt!1016449))))

(declare-fun getLanguageWitness!338 ((Set Context!5296)) Option!6367)

(assert (=> b!2865524 (= lt!1016449 (getLanguageWitness!338 z!691))))

(declare-fun res!1189649 () Bool)

(assert (=> b!2865525 (=> (not res!1189649) (not e!1814095))))

(declare-fun forall!7050 ((Set Context!5296) Int) Bool)

(assert (=> b!2865525 (= res!1189649 (not (forall!7050 z!691 lambda!106657)))))

(declare-fun setIsEmpty!25700 () Bool)

(assert (=> setIsEmpty!25700 setRes!25700))

(declare-fun e!1814093 () Bool)

(assert (=> b!2865526 (= e!1814095 (not e!1814093))))

(declare-fun res!1189644 () Bool)

(assert (=> b!2865526 (=> res!1189644 e!1814093)))

(assert (=> b!2865526 (= res!1189644 (not (exists!1123 z!691 lambda!106658)))))

(assert (=> b!2865526 (exists!1122 lt!1016451 lambda!106658)))

(declare-fun lt!1016447 () Unit!47915)

(declare-fun lemmaNotForallThenExists!156 (List!34396 Int) Unit!47915)

(assert (=> b!2865526 (= lt!1016447 (lemmaNotForallThenExists!156 lt!1016451 lambda!106657))))

(declare-fun toList!2017 ((Set Context!5296)) List!34396)

(assert (=> b!2865526 (= lt!1016451 (toList!2017 z!691))))

(declare-fun b!2865527 () Bool)

(assert (=> b!2865527 (= e!1814093 e!1814094)))

(declare-fun res!1189645 () Bool)

(assert (=> b!2865527 (=> res!1189645 e!1814094)))

(assert (=> b!2865527 (= res!1189645 (not (set.member lt!1016445 z!691)))))

(declare-fun lt!1016448 () List!34397)

(declare-fun matchZipper!458 ((Set Context!5296) List!34397) Bool)

(assert (=> b!2865527 (matchZipper!458 (set.insert lt!1016445 (as set.empty (Set Context!5296))) lt!1016448)))

(declare-fun get!10281 (Option!6367) List!34397)

(declare-fun getLanguageWitness!339 (Context!5296) Option!6367)

(assert (=> b!2865527 (= lt!1016448 (get!10281 (getLanguageWitness!339 lt!1016445)))))

(declare-fun lt!1016450 () Unit!47915)

(declare-fun lemmaGetWitnessMatchesContext!17 (Context!5296) Unit!47915)

(assert (=> b!2865527 (= lt!1016450 (lemmaGetWitnessMatchesContext!17 lt!1016445))))

(declare-fun getWitness!620 ((Set Context!5296) Int) Context!5296)

(assert (=> b!2865527 (= lt!1016445 (getWitness!620 z!691 lambda!106658))))

(declare-fun setNonEmpty!25700 () Bool)

(declare-fun e!1814096 () Bool)

(declare-fun tp!922848 () Bool)

(declare-fun setElem!25700 () Context!5296)

(declare-fun inv!46308 (Context!5296) Bool)

(assert (=> setNonEmpty!25700 (= setRes!25700 (and tp!922848 (inv!46308 setElem!25700) e!1814096))))

(declare-fun setRest!25700 () (Set Context!5296))

(assert (=> setNonEmpty!25700 (= z!691 (set.union (set.insert setElem!25700 (as set.empty (Set Context!5296))) setRest!25700))))

(declare-fun b!2865528 () Bool)

(declare-fun tp!922847 () Bool)

(assert (=> b!2865528 (= e!1814096 tp!922847)))

(declare-fun b!2865529 () Bool)

(assert (=> b!2865529 (= e!1814098 (matchZipper!458 z!691 (get!10281 lt!1016449)))))

(declare-fun content!4681 (List!34396) (Set Context!5296))

(assert (=> b!2865529 (matchZipper!458 (content!4681 lt!1016451) lt!1016448)))

(declare-fun lt!1016446 () Unit!47915)

(declare-fun lemmaExistsMatchingContextThenMatchingString!15 (List!34396 List!34397) Unit!47915)

(assert (=> b!2865529 (= lt!1016446 (lemmaExistsMatchingContextThenMatchingString!15 lt!1016451 lt!1016448))))

(assert (= (and start!279512 res!1189650) b!2865524))

(assert (= (and b!2865524 res!1189648) b!2865525))

(assert (= (and b!2865525 res!1189649) b!2865526))

(assert (= (and b!2865526 (not res!1189644)) b!2865527))

(assert (= (and b!2865527 (not res!1189645)) b!2865523))

(assert (= (and b!2865523 (not res!1189646)) b!2865522))

(assert (= (and b!2865522 (not res!1189647)) b!2865529))

(assert (= (and start!279512 condSetEmpty!25700) setIsEmpty!25700))

(assert (= (and start!279512 (not condSetEmpty!25700)) setNonEmpty!25700))

(assert (= setNonEmpty!25700 b!2865528))

(declare-fun m!3285781 () Bool)

(assert (=> b!2865525 m!3285781))

(declare-fun m!3285783 () Bool)

(assert (=> b!2865523 m!3285783))

(assert (=> b!2865523 m!3285783))

(declare-fun m!3285785 () Bool)

(assert (=> b!2865523 m!3285785))

(declare-fun m!3285787 () Bool)

(assert (=> start!279512 m!3285787))

(declare-fun m!3285789 () Bool)

(assert (=> b!2865529 m!3285789))

(declare-fun m!3285791 () Bool)

(assert (=> b!2865529 m!3285791))

(declare-fun m!3285793 () Bool)

(assert (=> b!2865529 m!3285793))

(declare-fun m!3285795 () Bool)

(assert (=> b!2865529 m!3285795))

(declare-fun m!3285797 () Bool)

(assert (=> b!2865529 m!3285797))

(assert (=> b!2865529 m!3285795))

(assert (=> b!2865529 m!3285791))

(declare-fun m!3285799 () Bool)

(assert (=> b!2865526 m!3285799))

(declare-fun m!3285801 () Bool)

(assert (=> b!2865526 m!3285801))

(declare-fun m!3285803 () Bool)

(assert (=> b!2865526 m!3285803))

(declare-fun m!3285805 () Bool)

(assert (=> b!2865526 m!3285805))

(declare-fun m!3285807 () Bool)

(assert (=> b!2865522 m!3285807))

(declare-fun m!3285809 () Bool)

(assert (=> b!2865527 m!3285809))

(declare-fun m!3285811 () Bool)

(assert (=> b!2865527 m!3285811))

(declare-fun m!3285813 () Bool)

(assert (=> b!2865527 m!3285813))

(declare-fun m!3285815 () Bool)

(assert (=> b!2865527 m!3285815))

(declare-fun m!3285817 () Bool)

(assert (=> b!2865527 m!3285817))

(assert (=> b!2865527 m!3285815))

(assert (=> b!2865527 m!3285809))

(declare-fun m!3285819 () Bool)

(assert (=> b!2865527 m!3285819))

(declare-fun m!3285821 () Bool)

(assert (=> b!2865527 m!3285821))

(declare-fun m!3285823 () Bool)

(assert (=> setNonEmpty!25700 m!3285823))

(declare-fun m!3285825 () Bool)

(assert (=> b!2865524 m!3285825))

(declare-fun m!3285827 () Bool)

(assert (=> b!2865524 m!3285827))

(push 1)

(assert (not b!2865527))

(assert (not b!2865524))

(assert (not b!2865525))

(assert (not start!279512))

(assert (not b!2865523))

(assert (not b!2865529))

(assert (not setNonEmpty!25700))

(assert (not b!2865528))

(assert (not b!2865526))

(assert (not b!2865522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828566 () Bool)

(declare-fun lt!1016478 () Bool)

(assert (=> d!828566 (= lt!1016478 (exists!1122 (toList!2017 z!691) lambda!106659))))

(declare-fun choose!16934 ((Set Context!5296) Int) Bool)

(assert (=> d!828566 (= lt!1016478 (choose!16934 z!691 lambda!106659))))

(assert (=> d!828566 (= (exists!1123 z!691 lambda!106659) lt!1016478)))

(declare-fun bs!521409 () Bool)

(assert (= bs!521409 d!828566))

(assert (=> bs!521409 m!3285805))

(assert (=> bs!521409 m!3285805))

(declare-fun m!3285877 () Bool)

(assert (=> bs!521409 m!3285877))

(declare-fun m!3285879 () Bool)

(assert (=> bs!521409 m!3285879))

(assert (=> b!2865523 d!828566))

(declare-fun d!828568 () Bool)

(assert (=> d!828568 (exists!1123 z!691 lambda!106659)))

(declare-fun lt!1016481 () Unit!47915)

(declare-fun choose!16935 ((Set Context!5296) Context!5296 Int) Unit!47915)

(assert (=> d!828568 (= lt!1016481 (choose!16935 z!691 lt!1016445 lambda!106659))))

(assert (=> d!828568 (set.member lt!1016445 z!691)))

(assert (=> d!828568 (= (lemmaContainsThenExists!62 z!691 lt!1016445 lambda!106659) lt!1016481)))

(declare-fun bs!521410 () Bool)

(assert (= bs!521410 d!828568))

(assert (=> bs!521410 m!3285783))

(declare-fun m!3285881 () Bool)

(assert (=> bs!521410 m!3285881))

(assert (=> bs!521410 m!3285821))

(assert (=> b!2865523 d!828568))

(declare-fun d!828570 () Bool)

(assert (=> d!828570 (matchZipper!458 (set.insert lt!1016445 (as set.empty (Set Context!5296))) (get!10281 (getLanguageWitness!339 lt!1016445)))))

(declare-fun lt!1016484 () Unit!47915)

(declare-fun choose!16936 (Context!5296) Unit!47915)

(assert (=> d!828570 (= lt!1016484 (choose!16936 lt!1016445))))

(declare-fun lostCause!780 (Context!5296) Bool)

(assert (=> d!828570 (not (lostCause!780 lt!1016445))))

(assert (=> d!828570 (= (lemmaGetWitnessMatchesContext!17 lt!1016445) lt!1016484)))

(declare-fun bs!521411 () Bool)

(assert (= bs!521411 d!828570))

(assert (=> bs!521411 m!3285809))

(assert (=> bs!521411 m!3285815))

(declare-fun m!3285883 () Bool)

(assert (=> bs!521411 m!3285883))

(assert (=> bs!521411 m!3285809))

(assert (=> bs!521411 m!3285819))

(assert (=> bs!521411 m!3285815))

(assert (=> bs!521411 m!3285819))

(declare-fun m!3285885 () Bool)

(assert (=> bs!521411 m!3285885))

(declare-fun m!3285887 () Bool)

(assert (=> bs!521411 m!3285887))

(assert (=> b!2865527 d!828570))

(declare-fun d!828572 () Bool)

(declare-fun c!462584 () Bool)

(declare-fun isEmpty!18671 (List!34397) Bool)

(assert (=> d!828572 (= c!462584 (isEmpty!18671 lt!1016448))))

(declare-fun e!1814122 () Bool)

(assert (=> d!828572 (= (matchZipper!458 (set.insert lt!1016445 (as set.empty (Set Context!5296))) lt!1016448) e!1814122)))

(declare-fun b!2865562 () Bool)

(declare-fun nullableZipper!702 ((Set Context!5296)) Bool)

(assert (=> b!2865562 (= e!1814122 (nullableZipper!702 (set.insert lt!1016445 (as set.empty (Set Context!5296)))))))

(declare-fun b!2865563 () Bool)

(declare-fun derivationStepZipper!458 ((Set Context!5296) C!17558) (Set Context!5296))

(declare-fun head!6323 (List!34397) C!17558)

(declare-fun tail!4548 (List!34397) List!34397)

(assert (=> b!2865563 (= e!1814122 (matchZipper!458 (derivationStepZipper!458 (set.insert lt!1016445 (as set.empty (Set Context!5296))) (head!6323 lt!1016448)) (tail!4548 lt!1016448)))))

(assert (= (and d!828572 c!462584) b!2865562))

(assert (= (and d!828572 (not c!462584)) b!2865563))

(declare-fun m!3285889 () Bool)

(assert (=> d!828572 m!3285889))

(assert (=> b!2865562 m!3285815))

(declare-fun m!3285891 () Bool)

(assert (=> b!2865562 m!3285891))

(declare-fun m!3285893 () Bool)

(assert (=> b!2865563 m!3285893))

(assert (=> b!2865563 m!3285815))

(assert (=> b!2865563 m!3285893))

(declare-fun m!3285895 () Bool)

(assert (=> b!2865563 m!3285895))

(declare-fun m!3285897 () Bool)

(assert (=> b!2865563 m!3285897))

(assert (=> b!2865563 m!3285895))

(assert (=> b!2865563 m!3285897))

(declare-fun m!3285899 () Bool)

(assert (=> b!2865563 m!3285899))

(assert (=> b!2865527 d!828572))

(declare-fun b!2865576 () Bool)

(declare-fun e!1814131 () Option!6367)

(assert (=> b!2865576 (= e!1814131 (Some!6366 Nil!34273))))

(declare-fun b!2865577 () Bool)

(declare-fun e!1814129 () Option!6367)

(declare-fun lt!1016492 () Option!6367)

(declare-fun lt!1016493 () Option!6367)

(declare-fun ++!8144 (List!34397 List!34397) List!34397)

(assert (=> b!2865577 (= e!1814129 (Some!6366 (++!8144 (v!34488 lt!1016492) (v!34488 lt!1016493))))))

(declare-fun b!2865578 () Bool)

(declare-fun e!1814130 () Option!6367)

(assert (=> b!2865578 (= e!1814130 None!6366)))

(declare-fun d!828574 () Bool)

(declare-fun lt!1016491 () Option!6367)

(declare-fun lambda!106681 () Int)

(declare-fun isEmpty!18672 (Option!6367) Bool)

(declare-fun exists!1126 (List!34395 Int) Bool)

(assert (=> d!828574 (= (isEmpty!18672 lt!1016491) (exists!1126 (exprs!3148 lt!1016445) lambda!106681))))

(assert (=> d!828574 (= lt!1016491 e!1814131)))

(declare-fun c!462594 () Bool)

(assert (=> d!828574 (= c!462594 (is-Cons!34271 (exprs!3148 lt!1016445)))))

(assert (=> d!828574 (= (getLanguageWitness!339 lt!1016445) lt!1016491)))

(declare-fun b!2865579 () Bool)

(assert (=> b!2865579 (= e!1814129 None!6366)))

(declare-fun b!2865580 () Bool)

(declare-fun c!462592 () Bool)

(assert (=> b!2865580 (= c!462592 (is-Some!6366 lt!1016493))))

(assert (=> b!2865580 (= lt!1016493 (getLanguageWitness!339 (Context!5297 (t!233438 (exprs!3148 lt!1016445)))))))

(assert (=> b!2865580 (= e!1814130 e!1814129)))

(declare-fun b!2865581 () Bool)

(assert (=> b!2865581 (= e!1814131 e!1814130)))

(declare-fun getLanguageWitness!342 (Regex!8688) Option!6367)

(assert (=> b!2865581 (= lt!1016492 (getLanguageWitness!342 (h!39691 (exprs!3148 lt!1016445))))))

(declare-fun c!462593 () Bool)

(assert (=> b!2865581 (= c!462593 (is-Some!6366 lt!1016492))))

(assert (= (and d!828574 c!462594) b!2865581))

(assert (= (and d!828574 (not c!462594)) b!2865576))

(assert (= (and b!2865581 c!462593) b!2865580))

(assert (= (and b!2865581 (not c!462593)) b!2865578))

(assert (= (and b!2865580 c!462592) b!2865577))

(assert (= (and b!2865580 (not c!462592)) b!2865579))

(declare-fun m!3285901 () Bool)

(assert (=> b!2865577 m!3285901))

(declare-fun m!3285903 () Bool)

(assert (=> d!828574 m!3285903))

(declare-fun m!3285905 () Bool)

(assert (=> d!828574 m!3285905))

(declare-fun m!3285907 () Bool)

(assert (=> b!2865580 m!3285907))

(declare-fun m!3285909 () Bool)

(assert (=> b!2865581 m!3285909))

(assert (=> b!2865527 d!828574))

(declare-fun d!828576 () Bool)

(declare-fun e!1814134 () Bool)

(assert (=> d!828576 e!1814134))

(declare-fun res!1189674 () Bool)

(assert (=> d!828576 (=> (not res!1189674) (not e!1814134))))

(declare-fun lt!1016496 () Context!5296)

(declare-fun dynLambda!14283 (Int Context!5296) Bool)

(assert (=> d!828576 (= res!1189674 (dynLambda!14283 lambda!106658 lt!1016496))))

(declare-fun getWitness!622 (List!34396 Int) Context!5296)

(assert (=> d!828576 (= lt!1016496 (getWitness!622 (toList!2017 z!691) lambda!106658))))

(assert (=> d!828576 (exists!1123 z!691 lambda!106658)))

(assert (=> d!828576 (= (getWitness!620 z!691 lambda!106658) lt!1016496)))

(declare-fun b!2865584 () Bool)

(assert (=> b!2865584 (= e!1814134 (set.member lt!1016496 z!691))))

(assert (= (and d!828576 res!1189674) b!2865584))

(declare-fun b_lambda!85931 () Bool)

(assert (=> (not b_lambda!85931) (not d!828576)))

(declare-fun m!3285911 () Bool)

(assert (=> d!828576 m!3285911))

(assert (=> d!828576 m!3285805))

(assert (=> d!828576 m!3285805))

(declare-fun m!3285913 () Bool)

(assert (=> d!828576 m!3285913))

(assert (=> d!828576 m!3285799))

(declare-fun m!3285915 () Bool)

(assert (=> b!2865584 m!3285915))

(assert (=> b!2865527 d!828576))

(declare-fun d!828578 () Bool)

(assert (=> d!828578 (= (get!10281 (getLanguageWitness!339 lt!1016445)) (v!34488 (getLanguageWitness!339 lt!1016445)))))

(assert (=> b!2865527 d!828578))

(declare-fun d!828580 () Bool)

(declare-fun lt!1016497 () Bool)

(assert (=> d!828580 (= lt!1016497 (exists!1122 (toList!2017 z!691) lambda!106658))))

(assert (=> d!828580 (= lt!1016497 (choose!16934 z!691 lambda!106658))))

(assert (=> d!828580 (= (exists!1123 z!691 lambda!106658) lt!1016497)))

(declare-fun bs!521412 () Bool)

(assert (= bs!521412 d!828580))

(assert (=> bs!521412 m!3285805))

(assert (=> bs!521412 m!3285805))

(declare-fun m!3285917 () Bool)

(assert (=> bs!521412 m!3285917))

(declare-fun m!3285919 () Bool)

(assert (=> bs!521412 m!3285919))

(assert (=> b!2865526 d!828580))

(declare-fun bs!521413 () Bool)

(declare-fun d!828582 () Bool)

(assert (= bs!521413 (and d!828582 b!2865525)))

(declare-fun lambda!106684 () Int)

(assert (=> bs!521413 (not (= lambda!106684 lambda!106657))))

(declare-fun bs!521414 () Bool)

(assert (= bs!521414 (and d!828582 b!2865526)))

(assert (=> bs!521414 (not (= lambda!106684 lambda!106658))))

(declare-fun bs!521415 () Bool)

(assert (= bs!521415 (and d!828582 b!2865523)))

(assert (=> bs!521415 (not (= lambda!106684 lambda!106659))))

(assert (=> d!828582 true))

(declare-fun order!18101 () Int)

(declare-fun dynLambda!14284 (Int Int) Int)

(assert (=> d!828582 (< (dynLambda!14284 order!18101 lambda!106658) (dynLambda!14284 order!18101 lambda!106684))))

(declare-fun forall!7052 (List!34396 Int) Bool)

(assert (=> d!828582 (= (exists!1122 lt!1016451 lambda!106658) (not (forall!7052 lt!1016451 lambda!106684)))))

(declare-fun bs!521416 () Bool)

(assert (= bs!521416 d!828582))

(declare-fun m!3285921 () Bool)

(assert (=> bs!521416 m!3285921))

(assert (=> b!2865526 d!828582))

(declare-fun bs!521417 () Bool)

(declare-fun d!828586 () Bool)

(assert (= bs!521417 (and d!828586 b!2865525)))

(declare-fun lambda!106687 () Int)

(assert (=> bs!521417 (not (= lambda!106687 lambda!106657))))

(declare-fun bs!521418 () Bool)

(assert (= bs!521418 (and d!828586 b!2865526)))

(assert (=> bs!521418 (not (= lambda!106687 lambda!106658))))

(declare-fun bs!521419 () Bool)

(assert (= bs!521419 (and d!828586 b!2865523)))

(assert (=> bs!521419 (not (= lambda!106687 lambda!106659))))

(declare-fun bs!521420 () Bool)

(assert (= bs!521420 (and d!828586 d!828582)))

(assert (=> bs!521420 (= (= lambda!106657 lambda!106658) (= lambda!106687 lambda!106684))))

(assert (=> d!828586 true))

(assert (=> d!828586 (< (dynLambda!14284 order!18101 lambda!106657) (dynLambda!14284 order!18101 lambda!106687))))

(assert (=> d!828586 (exists!1122 lt!1016451 lambda!106687)))

(declare-fun lt!1016500 () Unit!47915)

(declare-fun choose!16937 (List!34396 Int) Unit!47915)

(assert (=> d!828586 (= lt!1016500 (choose!16937 lt!1016451 lambda!106657))))

(assert (=> d!828586 (not (forall!7052 lt!1016451 lambda!106657))))

(assert (=> d!828586 (= (lemmaNotForallThenExists!156 lt!1016451 lambda!106657) lt!1016500)))

(declare-fun bs!521421 () Bool)

(assert (= bs!521421 d!828586))

(declare-fun m!3285923 () Bool)

(assert (=> bs!521421 m!3285923))

(declare-fun m!3285925 () Bool)

(assert (=> bs!521421 m!3285925))

(declare-fun m!3285927 () Bool)

(assert (=> bs!521421 m!3285927))

(assert (=> b!2865526 d!828586))

(declare-fun d!828590 () Bool)

(declare-fun e!1814139 () Bool)

(assert (=> d!828590 e!1814139))

(declare-fun res!1189677 () Bool)

(assert (=> d!828590 (=> (not res!1189677) (not e!1814139))))

(declare-fun lt!1016503 () List!34396)

(declare-fun noDuplicate!578 (List!34396) Bool)

(assert (=> d!828590 (= res!1189677 (noDuplicate!578 lt!1016503))))

(declare-fun choose!16938 ((Set Context!5296)) List!34396)

(assert (=> d!828590 (= lt!1016503 (choose!16938 z!691))))

(assert (=> d!828590 (= (toList!2017 z!691) lt!1016503)))

(declare-fun b!2865589 () Bool)

(assert (=> b!2865589 (= e!1814139 (= (content!4681 lt!1016503) z!691))))

(assert (= (and d!828590 res!1189677) b!2865589))

(declare-fun m!3285929 () Bool)

(assert (=> d!828590 m!3285929))

(declare-fun m!3285931 () Bool)

(assert (=> d!828590 m!3285931))

(declare-fun m!3285933 () Bool)

(assert (=> b!2865589 m!3285933))

(assert (=> b!2865526 d!828590))

(declare-fun bs!521422 () Bool)

(declare-fun d!828592 () Bool)

(assert (= bs!521422 (and d!828592 d!828582)))

(declare-fun lambda!106688 () Int)

(assert (=> bs!521422 (= (= lambda!106659 lambda!106658) (= lambda!106688 lambda!106684))))

(declare-fun bs!521423 () Bool)

(assert (= bs!521423 (and d!828592 d!828586)))

(assert (=> bs!521423 (= (= lambda!106659 lambda!106657) (= lambda!106688 lambda!106687))))

(declare-fun bs!521424 () Bool)

(assert (= bs!521424 (and d!828592 b!2865523)))

(assert (=> bs!521424 (not (= lambda!106688 lambda!106659))))

(declare-fun bs!521425 () Bool)

(assert (= bs!521425 (and d!828592 b!2865526)))

(assert (=> bs!521425 (not (= lambda!106688 lambda!106658))))

(declare-fun bs!521426 () Bool)

(assert (= bs!521426 (and d!828592 b!2865525)))

(assert (=> bs!521426 (not (= lambda!106688 lambda!106657))))

(assert (=> d!828592 true))

(assert (=> d!828592 (< (dynLambda!14284 order!18101 lambda!106659) (dynLambda!14284 order!18101 lambda!106688))))

(assert (=> d!828592 (= (exists!1122 lt!1016451 lambda!106659) (not (forall!7052 lt!1016451 lambda!106688)))))

(declare-fun bs!521427 () Bool)

(assert (= bs!521427 d!828592))

(declare-fun m!3285935 () Bool)

(assert (=> bs!521427 m!3285935))

(assert (=> b!2865522 d!828592))

(declare-fun bs!521429 () Bool)

(declare-fun d!828594 () Bool)

(assert (= bs!521429 (and d!828594 d!828582)))

(declare-fun lambda!106701 () Int)

(assert (=> bs!521429 (not (= lambda!106701 lambda!106684))))

(declare-fun bs!521430 () Bool)

(assert (= bs!521430 (and d!828594 d!828586)))

(assert (=> bs!521430 (not (= lambda!106701 lambda!106687))))

(declare-fun bs!521431 () Bool)

(assert (= bs!521431 (and d!828594 b!2865523)))

(assert (=> bs!521431 (not (= lambda!106701 lambda!106659))))

(declare-fun bs!521432 () Bool)

(assert (= bs!521432 (and d!828594 b!2865525)))

(assert (=> bs!521432 (= lambda!106701 lambda!106657)))

(declare-fun bs!521433 () Bool)

(assert (= bs!521433 (and d!828594 b!2865526)))

(assert (=> bs!521433 (not (= lambda!106701 lambda!106658))))

(declare-fun bs!521434 () Bool)

(assert (= bs!521434 (and d!828594 d!828592)))

(assert (=> bs!521434 (not (= lambda!106701 lambda!106688))))

(declare-fun bs!521435 () Bool)

(declare-fun b!2865594 () Bool)

(assert (= bs!521435 (and b!2865594 d!828594)))

(declare-fun lambda!106702 () Int)

(assert (=> bs!521435 (not (= lambda!106702 lambda!106701))))

(declare-fun bs!521436 () Bool)

(assert (= bs!521436 (and b!2865594 d!828582)))

(assert (=> bs!521436 (not (= lambda!106702 lambda!106684))))

(declare-fun bs!521437 () Bool)

(assert (= bs!521437 (and b!2865594 d!828586)))

(assert (=> bs!521437 (not (= lambda!106702 lambda!106687))))

(declare-fun bs!521438 () Bool)

(assert (= bs!521438 (and b!2865594 b!2865523)))

(assert (=> bs!521438 (not (= lambda!106702 lambda!106659))))

(declare-fun bs!521439 () Bool)

(assert (= bs!521439 (and b!2865594 b!2865525)))

(assert (=> bs!521439 (not (= lambda!106702 lambda!106657))))

(declare-fun bs!521440 () Bool)

(assert (= bs!521440 (and b!2865594 b!2865526)))

(assert (=> bs!521440 (= lambda!106702 lambda!106658)))

(declare-fun bs!521441 () Bool)

(assert (= bs!521441 (and b!2865594 d!828592)))

(assert (=> bs!521441 (not (= lambda!106702 lambda!106688))))

(declare-fun bs!521442 () Bool)

(declare-fun b!2865595 () Bool)

(assert (= bs!521442 (and b!2865595 d!828594)))

(declare-fun lambda!106703 () Int)

(assert (=> bs!521442 (not (= lambda!106703 lambda!106701))))

(declare-fun bs!521443 () Bool)

(assert (= bs!521443 (and b!2865595 b!2865594)))

(assert (=> bs!521443 (= lambda!106703 lambda!106702)))

(declare-fun bs!521444 () Bool)

(assert (= bs!521444 (and b!2865595 d!828582)))

(assert (=> bs!521444 (not (= lambda!106703 lambda!106684))))

(declare-fun bs!521445 () Bool)

(assert (= bs!521445 (and b!2865595 d!828586)))

(assert (=> bs!521445 (not (= lambda!106703 lambda!106687))))

(declare-fun bs!521446 () Bool)

(assert (= bs!521446 (and b!2865595 b!2865523)))

(assert (=> bs!521446 (not (= lambda!106703 lambda!106659))))

(declare-fun bs!521447 () Bool)

(assert (= bs!521447 (and b!2865595 b!2865525)))

(assert (=> bs!521447 (not (= lambda!106703 lambda!106657))))

(declare-fun bs!521448 () Bool)

(assert (= bs!521448 (and b!2865595 b!2865526)))

(assert (=> bs!521448 (= lambda!106703 lambda!106658)))

(declare-fun bs!521449 () Bool)

(assert (= bs!521449 (and b!2865595 d!828592)))

(assert (=> bs!521449 (not (= lambda!106703 lambda!106688))))

(declare-fun lt!1016528 () Bool)

(assert (=> d!828594 (= lt!1016528 (isEmpty!18672 (getLanguageWitness!338 z!691)))))

(assert (=> d!828594 (= lt!1016528 (forall!7050 z!691 lambda!106701))))

(declare-fun lt!1016527 () Unit!47915)

(declare-fun e!1814146 () Unit!47915)

(assert (=> d!828594 (= lt!1016527 e!1814146)))

(declare-fun c!462606 () Bool)

(assert (=> d!828594 (= c!462606 (not (forall!7050 z!691 lambda!106701)))))

(assert (=> d!828594 (= (lostCauseZipper!592 z!691) lt!1016528)))

(declare-fun Unit!47919 () Unit!47915)

(assert (=> b!2865595 (= e!1814146 Unit!47919)))

(declare-fun lt!1016525 () List!34396)

(declare-fun call!184878 () List!34396)

(assert (=> b!2865595 (= lt!1016525 call!184878)))

(declare-fun lt!1016526 () Unit!47915)

(declare-fun lemmaForallThenNotExists!140 (List!34396 Int) Unit!47915)

(assert (=> b!2865595 (= lt!1016526 (lemmaForallThenNotExists!140 lt!1016525 lambda!106701))))

(declare-fun call!184877 () Bool)

(assert (=> b!2865595 (not call!184877)))

(declare-fun lt!1016530 () Unit!47915)

(assert (=> b!2865595 (= lt!1016530 lt!1016526)))

(declare-fun bm!184872 () Bool)

(assert (=> bm!184872 (= call!184878 (toList!2017 z!691))))

(declare-fun bm!184873 () Bool)

(declare-fun lt!1016529 () List!34396)

(assert (=> bm!184873 (= call!184877 (exists!1122 (ite c!462606 lt!1016529 lt!1016525) (ite c!462606 lambda!106702 lambda!106703)))))

(declare-fun Unit!47920 () Unit!47915)

(assert (=> b!2865594 (= e!1814146 Unit!47920)))

(assert (=> b!2865594 (= lt!1016529 call!184878)))

(declare-fun lt!1016523 () Unit!47915)

(assert (=> b!2865594 (= lt!1016523 (lemmaNotForallThenExists!156 lt!1016529 lambda!106701))))

(assert (=> b!2865594 call!184877))

(declare-fun lt!1016524 () Unit!47915)

(assert (=> b!2865594 (= lt!1016524 lt!1016523)))

(assert (= (and d!828594 c!462606) b!2865594))

(assert (= (and d!828594 (not c!462606)) b!2865595))

(assert (= (or b!2865594 b!2865595) bm!184872))

(assert (= (or b!2865594 b!2865595) bm!184873))

(declare-fun m!3285943 () Bool)

(assert (=> b!2865594 m!3285943))

(declare-fun m!3285945 () Bool)

(assert (=> bm!184873 m!3285945))

(assert (=> bm!184872 m!3285805))

(assert (=> d!828594 m!3285827))

(assert (=> d!828594 m!3285827))

(declare-fun m!3285947 () Bool)

(assert (=> d!828594 m!3285947))

(declare-fun m!3285949 () Bool)

(assert (=> d!828594 m!3285949))

(assert (=> d!828594 m!3285949))

(declare-fun m!3285951 () Bool)

(assert (=> b!2865595 m!3285951))

(assert (=> start!279512 d!828594))

(declare-fun bs!521450 () Bool)

(declare-fun d!828598 () Bool)

(assert (= bs!521450 (and d!828598 d!828594)))

(declare-fun lambda!106706 () Int)

(assert (=> bs!521450 (not (= lambda!106706 lambda!106701))))

(declare-fun bs!521451 () Bool)

(assert (= bs!521451 (and d!828598 d!828582)))

(assert (=> bs!521451 (not (= lambda!106706 lambda!106684))))

(declare-fun bs!521452 () Bool)

(assert (= bs!521452 (and d!828598 d!828586)))

(assert (=> bs!521452 (not (= lambda!106706 lambda!106687))))

(declare-fun bs!521453 () Bool)

(assert (= bs!521453 (and d!828598 b!2865523)))

(assert (=> bs!521453 (= lambda!106706 lambda!106659)))

(declare-fun bs!521454 () Bool)

(assert (= bs!521454 (and d!828598 b!2865525)))

(assert (=> bs!521454 (not (= lambda!106706 lambda!106657))))

(declare-fun bs!521455 () Bool)

(assert (= bs!521455 (and d!828598 b!2865594)))

(assert (=> bs!521455 (not (= lambda!106706 lambda!106702))))

(declare-fun bs!521456 () Bool)

(assert (= bs!521456 (and d!828598 b!2865595)))

(assert (=> bs!521456 (not (= lambda!106706 lambda!106703))))

(declare-fun bs!521457 () Bool)

(assert (= bs!521457 (and d!828598 b!2865526)))

(assert (=> bs!521457 (not (= lambda!106706 lambda!106658))))

(declare-fun bs!521458 () Bool)

(assert (= bs!521458 (and d!828598 d!828592)))

(assert (=> bs!521458 (not (= lambda!106706 lambda!106688))))

(assert (=> d!828598 true))

(assert (=> d!828598 (matchZipper!458 (content!4681 lt!1016451) lt!1016448)))

(declare-fun lt!1016533 () Unit!47915)

(declare-fun choose!16939 (List!34396 List!34397) Unit!47915)

(assert (=> d!828598 (= lt!1016533 (choose!16939 lt!1016451 lt!1016448))))

(assert (=> d!828598 (exists!1122 lt!1016451 lambda!106706)))

(assert (=> d!828598 (= (lemmaExistsMatchingContextThenMatchingString!15 lt!1016451 lt!1016448) lt!1016533)))

(declare-fun bs!521459 () Bool)

(assert (= bs!521459 d!828598))

(assert (=> bs!521459 m!3285795))

(assert (=> bs!521459 m!3285795))

(assert (=> bs!521459 m!3285797))

(declare-fun m!3285953 () Bool)

(assert (=> bs!521459 m!3285953))

(declare-fun m!3285955 () Bool)

(assert (=> bs!521459 m!3285955))

(assert (=> b!2865529 d!828598))

(declare-fun d!828600 () Bool)

(declare-fun c!462609 () Bool)

(assert (=> d!828600 (= c!462609 (isEmpty!18671 (get!10281 lt!1016449)))))

(declare-fun e!1814147 () Bool)

(assert (=> d!828600 (= (matchZipper!458 z!691 (get!10281 lt!1016449)) e!1814147)))

(declare-fun b!2865596 () Bool)

(assert (=> b!2865596 (= e!1814147 (nullableZipper!702 z!691))))

(declare-fun b!2865597 () Bool)

(assert (=> b!2865597 (= e!1814147 (matchZipper!458 (derivationStepZipper!458 z!691 (head!6323 (get!10281 lt!1016449))) (tail!4548 (get!10281 lt!1016449))))))

(assert (= (and d!828600 c!462609) b!2865596))

(assert (= (and d!828600 (not c!462609)) b!2865597))

(assert (=> d!828600 m!3285791))

(declare-fun m!3285957 () Bool)

(assert (=> d!828600 m!3285957))

(declare-fun m!3285959 () Bool)

(assert (=> b!2865596 m!3285959))

(assert (=> b!2865597 m!3285791))

(declare-fun m!3285961 () Bool)

(assert (=> b!2865597 m!3285961))

(assert (=> b!2865597 m!3285961))

(declare-fun m!3285963 () Bool)

(assert (=> b!2865597 m!3285963))

(assert (=> b!2865597 m!3285791))

(declare-fun m!3285965 () Bool)

(assert (=> b!2865597 m!3285965))

(assert (=> b!2865597 m!3285963))

(assert (=> b!2865597 m!3285965))

(declare-fun m!3285967 () Bool)

(assert (=> b!2865597 m!3285967))

(assert (=> b!2865529 d!828600))

(declare-fun d!828602 () Bool)

(declare-fun c!462610 () Bool)

(assert (=> d!828602 (= c!462610 (isEmpty!18671 lt!1016448))))

(declare-fun e!1814148 () Bool)

(assert (=> d!828602 (= (matchZipper!458 (content!4681 lt!1016451) lt!1016448) e!1814148)))

(declare-fun b!2865598 () Bool)

(assert (=> b!2865598 (= e!1814148 (nullableZipper!702 (content!4681 lt!1016451)))))

(declare-fun b!2865599 () Bool)

(assert (=> b!2865599 (= e!1814148 (matchZipper!458 (derivationStepZipper!458 (content!4681 lt!1016451) (head!6323 lt!1016448)) (tail!4548 lt!1016448)))))

(assert (= (and d!828602 c!462610) b!2865598))

(assert (= (and d!828602 (not c!462610)) b!2865599))

(assert (=> d!828602 m!3285889))

(assert (=> b!2865598 m!3285795))

(declare-fun m!3285969 () Bool)

(assert (=> b!2865598 m!3285969))

(assert (=> b!2865599 m!3285893))

(assert (=> b!2865599 m!3285795))

(assert (=> b!2865599 m!3285893))

(declare-fun m!3285971 () Bool)

(assert (=> b!2865599 m!3285971))

(assert (=> b!2865599 m!3285897))

(assert (=> b!2865599 m!3285971))

(assert (=> b!2865599 m!3285897))

(declare-fun m!3285973 () Bool)

(assert (=> b!2865599 m!3285973))

(assert (=> b!2865529 d!828602))

(declare-fun d!828604 () Bool)

(declare-fun c!462613 () Bool)

(assert (=> d!828604 (= c!462613 (is-Nil!34272 lt!1016451))))

(declare-fun e!1814151 () (Set Context!5296))

(assert (=> d!828604 (= (content!4681 lt!1016451) e!1814151)))

(declare-fun b!2865604 () Bool)

(assert (=> b!2865604 (= e!1814151 (as set.empty (Set Context!5296)))))

(declare-fun b!2865605 () Bool)

(assert (=> b!2865605 (= e!1814151 (set.union (set.insert (h!39692 lt!1016451) (as set.empty (Set Context!5296))) (content!4681 (t!233439 lt!1016451))))))

(assert (= (and d!828604 c!462613) b!2865604))

(assert (= (and d!828604 (not c!462613)) b!2865605))

(declare-fun m!3285975 () Bool)

(assert (=> b!2865605 m!3285975))

(declare-fun m!3285977 () Bool)

(assert (=> b!2865605 m!3285977))

(assert (=> b!2865529 d!828604))

(declare-fun d!828606 () Bool)

(assert (=> d!828606 (= (get!10281 lt!1016449) (v!34488 lt!1016449))))

(assert (=> b!2865529 d!828606))

(declare-fun d!828608 () Bool)

(declare-fun lt!1016536 () Bool)

(assert (=> d!828608 (= lt!1016536 (forall!7052 (toList!2017 z!691) lambda!106657))))

(declare-fun choose!16940 ((Set Context!5296) Int) Bool)

(assert (=> d!828608 (= lt!1016536 (choose!16940 z!691 lambda!106657))))

(assert (=> d!828608 (= (forall!7050 z!691 lambda!106657) lt!1016536)))

(declare-fun bs!521460 () Bool)

(assert (= bs!521460 d!828608))

(assert (=> bs!521460 m!3285805))

(assert (=> bs!521460 m!3285805))

(declare-fun m!3285979 () Bool)

(assert (=> bs!521460 m!3285979))

(declare-fun m!3285981 () Bool)

(assert (=> bs!521460 m!3285981))

(assert (=> b!2865525 d!828608))

(declare-fun bs!521461 () Bool)

(declare-fun d!828610 () Bool)

(assert (= bs!521461 (and d!828610 d!828574)))

(declare-fun lambda!106709 () Int)

(assert (=> bs!521461 (not (= lambda!106709 lambda!106681))))

(declare-fun forall!7053 (List!34395 Int) Bool)

(assert (=> d!828610 (= (inv!46308 setElem!25700) (forall!7053 (exprs!3148 setElem!25700) lambda!106709))))

(declare-fun bs!521462 () Bool)

(assert (= bs!521462 d!828610))

(declare-fun m!3285983 () Bool)

(assert (=> bs!521462 m!3285983))

(assert (=> setNonEmpty!25700 d!828610))

(declare-fun d!828612 () Bool)

(assert (=> d!828612 (= (isDefined!4987 lt!1016449) (not (isEmpty!18672 lt!1016449)))))

(declare-fun bs!521463 () Bool)

(assert (= bs!521463 d!828612))

(declare-fun m!3285985 () Bool)

(assert (=> bs!521463 m!3285985))

(assert (=> b!2865524 d!828612))

(declare-fun bs!521464 () Bool)

(declare-fun d!828614 () Bool)

(assert (= bs!521464 (and d!828614 d!828594)))

(declare-fun lambda!106719 () Int)

(assert (=> bs!521464 (not (= lambda!106719 lambda!106701))))

(declare-fun bs!521465 () Bool)

(assert (= bs!521465 (and d!828614 d!828598)))

(assert (=> bs!521465 (not (= lambda!106719 lambda!106706))))

(declare-fun bs!521466 () Bool)

(assert (= bs!521466 (and d!828614 d!828582)))

(assert (=> bs!521466 (not (= lambda!106719 lambda!106684))))

(declare-fun bs!521467 () Bool)

(assert (= bs!521467 (and d!828614 d!828586)))

(assert (=> bs!521467 (not (= lambda!106719 lambda!106687))))

(declare-fun bs!521468 () Bool)

(assert (= bs!521468 (and d!828614 b!2865523)))

(assert (=> bs!521468 (not (= lambda!106719 lambda!106659))))

(declare-fun bs!521469 () Bool)

(assert (= bs!521469 (and d!828614 b!2865525)))

(assert (=> bs!521469 (not (= lambda!106719 lambda!106657))))

(declare-fun bs!521470 () Bool)

(assert (= bs!521470 (and d!828614 b!2865594)))

(assert (=> bs!521470 (= lambda!106719 lambda!106702)))

(declare-fun bs!521471 () Bool)

(assert (= bs!521471 (and d!828614 b!2865595)))

(assert (=> bs!521471 (= lambda!106719 lambda!106703)))

(declare-fun bs!521472 () Bool)

(assert (= bs!521472 (and d!828614 b!2865526)))

(assert (=> bs!521472 (= lambda!106719 lambda!106658)))

(declare-fun bs!521473 () Bool)

(assert (= bs!521473 (and d!828614 d!828592)))

(assert (=> bs!521473 (not (= lambda!106719 lambda!106688))))

(declare-fun lt!1016548 () Option!6367)

(assert (=> d!828614 (= (isDefined!4987 lt!1016548) (exists!1123 z!691 lambda!106719))))

(declare-fun e!1814163 () Option!6367)

(assert (=> d!828614 (= lt!1016548 e!1814163)))

(declare-fun c!462632 () Bool)

(assert (=> d!828614 (= c!462632 (exists!1123 z!691 lambda!106719))))

(assert (=> d!828614 (= (getLanguageWitness!338 z!691) lt!1016548)))

(declare-fun b!2865628 () Bool)

(assert (=> b!2865628 (= e!1814163 (getLanguageWitness!339 (getWitness!620 z!691 lambda!106719)))))

(declare-fun b!2865629 () Bool)

(assert (=> b!2865629 (= e!1814163 None!6366)))

(assert (= (and d!828614 c!462632) b!2865628))

(assert (= (and d!828614 (not c!462632)) b!2865629))

(declare-fun m!3285997 () Bool)

(assert (=> d!828614 m!3285997))

(declare-fun m!3285999 () Bool)

(assert (=> d!828614 m!3285999))

(assert (=> d!828614 m!3285999))

(declare-fun m!3286001 () Bool)

(assert (=> b!2865628 m!3286001))

(assert (=> b!2865628 m!3286001))

(declare-fun m!3286003 () Bool)

(assert (=> b!2865628 m!3286003))

(assert (=> b!2865524 d!828614))

(declare-fun b!2865634 () Bool)

(declare-fun e!1814166 () Bool)

(declare-fun tp!922859 () Bool)

(declare-fun tp!922860 () Bool)

(assert (=> b!2865634 (= e!1814166 (and tp!922859 tp!922860))))

(assert (=> b!2865528 (= tp!922847 e!1814166)))

(assert (= (and b!2865528 (is-Cons!34271 (exprs!3148 setElem!25700))) b!2865634))

(declare-fun condSetEmpty!25706 () Bool)

(assert (=> setNonEmpty!25700 (= condSetEmpty!25706 (= setRest!25700 (as set.empty (Set Context!5296))))))

(declare-fun setRes!25706 () Bool)

(assert (=> setNonEmpty!25700 (= tp!922848 setRes!25706)))

(declare-fun setIsEmpty!25706 () Bool)

(assert (=> setIsEmpty!25706 setRes!25706))

(declare-fun setNonEmpty!25706 () Bool)

(declare-fun e!1814169 () Bool)

(declare-fun setElem!25706 () Context!5296)

(declare-fun tp!922865 () Bool)

(assert (=> setNonEmpty!25706 (= setRes!25706 (and tp!922865 (inv!46308 setElem!25706) e!1814169))))

(declare-fun setRest!25706 () (Set Context!5296))

(assert (=> setNonEmpty!25706 (= setRest!25700 (set.union (set.insert setElem!25706 (as set.empty (Set Context!5296))) setRest!25706))))

(declare-fun b!2865639 () Bool)

(declare-fun tp!922866 () Bool)

(assert (=> b!2865639 (= e!1814169 tp!922866)))

(assert (= (and setNonEmpty!25700 condSetEmpty!25706) setIsEmpty!25706))

(assert (= (and setNonEmpty!25700 (not condSetEmpty!25706)) setNonEmpty!25706))

(assert (= setNonEmpty!25706 b!2865639))

(declare-fun m!3286005 () Bool)

(assert (=> setNonEmpty!25706 m!3286005))

(declare-fun b_lambda!85933 () Bool)

(assert (= b_lambda!85931 (or b!2865526 b_lambda!85933)))

(declare-fun bs!521474 () Bool)

(declare-fun d!828618 () Bool)

(assert (= bs!521474 (and d!828618 b!2865526)))

(assert (=> bs!521474 (= (dynLambda!14283 lambda!106658 lt!1016496) (not (lostCause!780 lt!1016496)))))

(declare-fun m!3286007 () Bool)

(assert (=> bs!521474 m!3286007))

(assert (=> d!828576 d!828618))

(push 1)

(assert (not b!2865580))

(assert (not d!828612))

(assert (not d!828568))

(assert (not d!828600))

(assert (not b!2865599))

(assert (not b!2865594))

(assert (not bs!521474))

(assert (not b_lambda!85933))

(assert (not setNonEmpty!25706))

(assert (not b!2865589))

(assert (not d!828614))

(assert (not b!2865628))

(assert (not d!828570))

(assert (not b!2865577))

(assert (not d!828586))

(assert (not b!2865563))

(assert (not b!2865634))

(assert (not d!828580))

(assert (not d!828590))

(assert (not bm!184872))

(assert (not d!828592))

(assert (not b!2865581))

(assert (not b!2865605))

(assert (not d!828566))

(assert (not bm!184873))

(assert (not d!828576))

(assert (not d!828572))

(assert (not b!2865639))

(assert (not b!2865596))

(assert (not b!2865598))

(assert (not d!828610))

(assert (not d!828602))

(assert (not d!828574))

(assert (not d!828598))

(assert (not b!2865595))

(assert (not b!2865562))

(assert (not b!2865597))

(assert (not d!828582))

(assert (not d!828608))

(assert (not d!828594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

