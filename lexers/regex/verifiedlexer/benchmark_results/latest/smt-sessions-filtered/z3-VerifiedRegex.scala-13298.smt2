; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723068 () Bool)

(assert start!723068)

(declare-fun b!7445447 () Bool)

(declare-fun e!4445379 () Bool)

(declare-fun tp_is_empty!49201 () Bool)

(declare-fun tp!2154728 () Bool)

(assert (=> b!7445447 (= e!4445379 (and tp_is_empty!49201 tp!2154728))))

(declare-fun setRes!56704 () Bool)

(declare-datatypes ((C!39216 0))(
  ( (C!39217 (val!29982 Int)) )
))
(declare-datatypes ((Regex!19471 0))(
  ( (ElementMatch!19471 (c!1377430 C!39216)) (Concat!28316 (regOne!39454 Regex!19471) (regTwo!39454 Regex!19471)) (EmptyExpr!19471) (Star!19471 (reg!19800 Regex!19471)) (EmptyLang!19471) (Union!19471 (regOne!39455 Regex!19471) (regTwo!39455 Regex!19471)) )
))
(declare-datatypes ((List!72170 0))(
  ( (Nil!72046) (Cons!72046 (h!78494 Regex!19471) (t!386735 List!72170)) )
))
(declare-datatypes ((Context!16822 0))(
  ( (Context!16823 (exprs!8911 List!72170)) )
))
(declare-fun setElem!56704 () Context!16822)

(declare-fun setNonEmpty!56704 () Bool)

(declare-fun tp!2154727 () Bool)

(declare-fun e!4445378 () Bool)

(declare-fun inv!92038 (Context!16822) Bool)

(assert (=> setNonEmpty!56704 (= setRes!56704 (and tp!2154727 (inv!92038 setElem!56704) e!4445378))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3503 () (InoxSet Context!16822))

(declare-fun setRest!56704 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56704 (= z!3503 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56704 true) setRest!56704))))

(declare-fun b!7445449 () Bool)

(declare-fun tp!2154726 () Bool)

(assert (=> b!7445449 (= e!4445378 tp!2154726)))

(declare-fun setIsEmpty!56704 () Bool)

(assert (=> setIsEmpty!56704 setRes!56704))

(declare-fun res!2987198 () Bool)

(declare-fun e!4445380 () Bool)

(assert (=> start!723068 (=> (not res!2987198) (not e!4445380))))

(declare-datatypes ((List!72171 0))(
  ( (Nil!72047) (Cons!72047 (h!78495 C!39216) (t!386736 List!72171)) )
))
(declare-fun s!7951 () List!72171)

(get-info :version)

(assert (=> start!723068 (= res!2987198 (and (= z!3503 ((as const (Array Context!16822 Bool)) false)) (not ((_ is Cons!72047) s!7951))))))

(assert (=> start!723068 e!4445380))

(declare-fun condSetEmpty!56704 () Bool)

(assert (=> start!723068 (= condSetEmpty!56704 (= z!3503 ((as const (Array Context!16822 Bool)) false)))))

(assert (=> start!723068 setRes!56704))

(assert (=> start!723068 e!4445379))

(declare-fun b!7445448 () Bool)

(declare-fun matchZipper!3829 ((InoxSet Context!16822) List!72171) Bool)

(assert (=> b!7445448 (= e!4445380 (matchZipper!3829 z!3503 s!7951))))

(assert (= (and start!723068 res!2987198) b!7445448))

(assert (= (and start!723068 condSetEmpty!56704) setIsEmpty!56704))

(assert (= (and start!723068 (not condSetEmpty!56704)) setNonEmpty!56704))

(assert (= setNonEmpty!56704 b!7445449))

(assert (= (and start!723068 ((_ is Cons!72047) s!7951)) b!7445447))

(declare-fun m!8055020 () Bool)

(assert (=> setNonEmpty!56704 m!8055020))

(declare-fun m!8055022 () Bool)

(assert (=> b!7445448 m!8055022))

(check-sat (not b!7445447) (not setNonEmpty!56704) tp_is_empty!49201 (not b!7445449) (not b!7445448))
(check-sat)
(get-model)

(declare-fun d!2296347 () Bool)

(declare-fun lambda!460611 () Int)

(declare-fun forall!18245 (List!72170 Int) Bool)

(assert (=> d!2296347 (= (inv!92038 setElem!56704) (forall!18245 (exprs!8911 setElem!56704) lambda!460611))))

(declare-fun bs!1926653 () Bool)

(assert (= bs!1926653 d!2296347))

(declare-fun m!8055040 () Bool)

(assert (=> bs!1926653 m!8055040))

(assert (=> setNonEmpty!56704 d!2296347))

(declare-fun d!2296351 () Bool)

(declare-fun c!1377436 () Bool)

(declare-fun isEmpty!41089 (List!72171) Bool)

(assert (=> d!2296351 (= c!1377436 (isEmpty!41089 s!7951))))

(declare-fun e!4445395 () Bool)

(assert (=> d!2296351 (= (matchZipper!3829 z!3503 s!7951) e!4445395)))

(declare-fun b!7445475 () Bool)

(declare-fun nullableZipper!3156 ((InoxSet Context!16822)) Bool)

(assert (=> b!7445475 (= e!4445395 (nullableZipper!3156 z!3503))))

(declare-fun b!7445476 () Bool)

(declare-fun derivationStepZipper!3721 ((InoxSet Context!16822) C!39216) (InoxSet Context!16822))

(declare-fun head!15275 (List!72171) C!39216)

(declare-fun tail!14854 (List!72171) List!72171)

(assert (=> b!7445476 (= e!4445395 (matchZipper!3829 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (tail!14854 s!7951)))))

(assert (= (and d!2296351 c!1377436) b!7445475))

(assert (= (and d!2296351 (not c!1377436)) b!7445476))

(declare-fun m!8055042 () Bool)

(assert (=> d!2296351 m!8055042))

(declare-fun m!8055044 () Bool)

(assert (=> b!7445475 m!8055044))

(declare-fun m!8055046 () Bool)

(assert (=> b!7445476 m!8055046))

(assert (=> b!7445476 m!8055046))

(declare-fun m!8055048 () Bool)

(assert (=> b!7445476 m!8055048))

(declare-fun m!8055050 () Bool)

(assert (=> b!7445476 m!8055050))

(assert (=> b!7445476 m!8055048))

(assert (=> b!7445476 m!8055050))

(declare-fun m!8055052 () Bool)

(assert (=> b!7445476 m!8055052))

(assert (=> b!7445448 d!2296351))

(declare-fun b!7445481 () Bool)

(declare-fun e!4445398 () Bool)

(declare-fun tp!2154746 () Bool)

(assert (=> b!7445481 (= e!4445398 (and tp_is_empty!49201 tp!2154746))))

(assert (=> b!7445447 (= tp!2154728 e!4445398)))

(assert (= (and b!7445447 ((_ is Cons!72047) (t!386736 s!7951))) b!7445481))

(declare-fun condSetEmpty!56710 () Bool)

(assert (=> setNonEmpty!56704 (= condSetEmpty!56710 (= setRest!56704 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56710 () Bool)

(assert (=> setNonEmpty!56704 (= tp!2154727 setRes!56710)))

(declare-fun setIsEmpty!56710 () Bool)

(assert (=> setIsEmpty!56710 setRes!56710))

(declare-fun e!4445401 () Bool)

(declare-fun setNonEmpty!56710 () Bool)

(declare-fun setElem!56710 () Context!16822)

(declare-fun tp!2154751 () Bool)

(assert (=> setNonEmpty!56710 (= setRes!56710 (and tp!2154751 (inv!92038 setElem!56710) e!4445401))))

(declare-fun setRest!56710 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56710 (= setRest!56704 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56710 true) setRest!56710))))

(declare-fun b!7445486 () Bool)

(declare-fun tp!2154752 () Bool)

(assert (=> b!7445486 (= e!4445401 tp!2154752)))

(assert (= (and setNonEmpty!56704 condSetEmpty!56710) setIsEmpty!56710))

(assert (= (and setNonEmpty!56704 (not condSetEmpty!56710)) setNonEmpty!56710))

(assert (= setNonEmpty!56710 b!7445486))

(declare-fun m!8055054 () Bool)

(assert (=> setNonEmpty!56710 m!8055054))

(declare-fun b!7445491 () Bool)

(declare-fun e!4445404 () Bool)

(declare-fun tp!2154757 () Bool)

(declare-fun tp!2154758 () Bool)

(assert (=> b!7445491 (= e!4445404 (and tp!2154757 tp!2154758))))

(assert (=> b!7445449 (= tp!2154726 e!4445404)))

(assert (= (and b!7445449 ((_ is Cons!72046) (exprs!8911 setElem!56704))) b!7445491))

(check-sat (not d!2296351) (not b!7445491) (not b!7445481) (not b!7445475) tp_is_empty!49201 (not setNonEmpty!56710) (not b!7445486) (not b!7445476) (not d!2296347))
(check-sat)
(get-model)

(declare-fun bs!1926658 () Bool)

(declare-fun d!2296369 () Bool)

(assert (= bs!1926658 (and d!2296369 d!2296347)))

(declare-fun lambda!460619 () Int)

(assert (=> bs!1926658 (= lambda!460619 lambda!460611)))

(assert (=> d!2296369 (= (inv!92038 setElem!56710) (forall!18245 (exprs!8911 setElem!56710) lambda!460619))))

(declare-fun bs!1926659 () Bool)

(assert (= bs!1926659 d!2296369))

(declare-fun m!8055080 () Bool)

(assert (=> bs!1926659 m!8055080))

(assert (=> setNonEmpty!56710 d!2296369))

(declare-fun d!2296371 () Bool)

(declare-fun lambda!460622 () Int)

(declare-fun exists!4818 ((InoxSet Context!16822) Int) Bool)

(assert (=> d!2296371 (= (nullableZipper!3156 z!3503) (exists!4818 z!3503 lambda!460622))))

(declare-fun bs!1926661 () Bool)

(assert (= bs!1926661 d!2296371))

(declare-fun m!8055084 () Bool)

(assert (=> bs!1926661 m!8055084))

(assert (=> b!7445475 d!2296371))

(declare-fun d!2296375 () Bool)

(declare-fun res!2987209 () Bool)

(declare-fun e!4445423 () Bool)

(assert (=> d!2296375 (=> res!2987209 e!4445423)))

(assert (=> d!2296375 (= res!2987209 ((_ is Nil!72046) (exprs!8911 setElem!56704)))))

(assert (=> d!2296375 (= (forall!18245 (exprs!8911 setElem!56704) lambda!460611) e!4445423)))

(declare-fun b!7445524 () Bool)

(declare-fun e!4445424 () Bool)

(assert (=> b!7445524 (= e!4445423 e!4445424)))

(declare-fun res!2987210 () Bool)

(assert (=> b!7445524 (=> (not res!2987210) (not e!4445424))))

(declare-fun dynLambda!29744 (Int Regex!19471) Bool)

(assert (=> b!7445524 (= res!2987210 (dynLambda!29744 lambda!460611 (h!78494 (exprs!8911 setElem!56704))))))

(declare-fun b!7445525 () Bool)

(assert (=> b!7445525 (= e!4445424 (forall!18245 (t!386735 (exprs!8911 setElem!56704)) lambda!460611))))

(assert (= (and d!2296375 (not res!2987209)) b!7445524))

(assert (= (and b!7445524 res!2987210) b!7445525))

(declare-fun b_lambda!287743 () Bool)

(assert (=> (not b_lambda!287743) (not b!7445524)))

(declare-fun m!8055086 () Bool)

(assert (=> b!7445524 m!8055086))

(declare-fun m!8055088 () Bool)

(assert (=> b!7445525 m!8055088))

(assert (=> d!2296347 d!2296375))

(declare-fun d!2296377 () Bool)

(assert (=> d!2296377 (= (isEmpty!41089 s!7951) ((_ is Nil!72047) s!7951))))

(assert (=> d!2296351 d!2296377))

(declare-fun d!2296379 () Bool)

(declare-fun c!1377444 () Bool)

(assert (=> d!2296379 (= c!1377444 (isEmpty!41089 (tail!14854 s!7951)))))

(declare-fun e!4445425 () Bool)

(assert (=> d!2296379 (= (matchZipper!3829 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (tail!14854 s!7951)) e!4445425)))

(declare-fun b!7445526 () Bool)

(assert (=> b!7445526 (= e!4445425 (nullableZipper!3156 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))))))

(declare-fun b!7445527 () Bool)

(assert (=> b!7445527 (= e!4445425 (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (tail!14854 (tail!14854 s!7951))))))

(assert (= (and d!2296379 c!1377444) b!7445526))

(assert (= (and d!2296379 (not c!1377444)) b!7445527))

(assert (=> d!2296379 m!8055050))

(declare-fun m!8055090 () Bool)

(assert (=> d!2296379 m!8055090))

(assert (=> b!7445526 m!8055048))

(declare-fun m!8055092 () Bool)

(assert (=> b!7445526 m!8055092))

(assert (=> b!7445527 m!8055050))

(declare-fun m!8055094 () Bool)

(assert (=> b!7445527 m!8055094))

(assert (=> b!7445527 m!8055048))

(assert (=> b!7445527 m!8055094))

(declare-fun m!8055096 () Bool)

(assert (=> b!7445527 m!8055096))

(assert (=> b!7445527 m!8055050))

(declare-fun m!8055098 () Bool)

(assert (=> b!7445527 m!8055098))

(assert (=> b!7445527 m!8055096))

(assert (=> b!7445527 m!8055098))

(declare-fun m!8055100 () Bool)

(assert (=> b!7445527 m!8055100))

(assert (=> b!7445476 d!2296379))

(declare-fun d!2296381 () Bool)

(assert (=> d!2296381 true))

(declare-fun lambda!460625 () Int)

(declare-fun flatMap!3247 ((InoxSet Context!16822) Int) (InoxSet Context!16822))

(assert (=> d!2296381 (= (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (flatMap!3247 z!3503 lambda!460625))))

(declare-fun bs!1926662 () Bool)

(assert (= bs!1926662 d!2296381))

(declare-fun m!8055102 () Bool)

(assert (=> bs!1926662 m!8055102))

(assert (=> b!7445476 d!2296381))

(declare-fun d!2296383 () Bool)

(assert (=> d!2296383 (= (head!15275 s!7951) (h!78495 s!7951))))

(assert (=> b!7445476 d!2296383))

(declare-fun d!2296385 () Bool)

(assert (=> d!2296385 (= (tail!14854 s!7951) (t!386736 s!7951))))

(assert (=> b!7445476 d!2296385))

(declare-fun condSetEmpty!56712 () Bool)

(assert (=> setNonEmpty!56710 (= condSetEmpty!56712 (= setRest!56710 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56712 () Bool)

(assert (=> setNonEmpty!56710 (= tp!2154751 setRes!56712)))

(declare-fun setIsEmpty!56712 () Bool)

(assert (=> setIsEmpty!56712 setRes!56712))

(declare-fun e!4445426 () Bool)

(declare-fun setElem!56712 () Context!16822)

(declare-fun setNonEmpty!56712 () Bool)

(declare-fun tp!2154781 () Bool)

(assert (=> setNonEmpty!56712 (= setRes!56712 (and tp!2154781 (inv!92038 setElem!56712) e!4445426))))

(declare-fun setRest!56712 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56712 (= setRest!56710 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56712 true) setRest!56712))))

(declare-fun b!7445530 () Bool)

(declare-fun tp!2154782 () Bool)

(assert (=> b!7445530 (= e!4445426 tp!2154782)))

(assert (= (and setNonEmpty!56710 condSetEmpty!56712) setIsEmpty!56712))

(assert (= (and setNonEmpty!56710 (not condSetEmpty!56712)) setNonEmpty!56712))

(assert (= setNonEmpty!56712 b!7445530))

(declare-fun m!8055104 () Bool)

(assert (=> setNonEmpty!56712 m!8055104))

(declare-fun b!7445531 () Bool)

(declare-fun e!4445427 () Bool)

(declare-fun tp!2154783 () Bool)

(declare-fun tp!2154784 () Bool)

(assert (=> b!7445531 (= e!4445427 (and tp!2154783 tp!2154784))))

(assert (=> b!7445486 (= tp!2154752 e!4445427)))

(assert (= (and b!7445486 ((_ is Cons!72046) (exprs!8911 setElem!56710))) b!7445531))

(declare-fun b!7445532 () Bool)

(declare-fun e!4445428 () Bool)

(declare-fun tp!2154785 () Bool)

(assert (=> b!7445532 (= e!4445428 (and tp_is_empty!49201 tp!2154785))))

(assert (=> b!7445481 (= tp!2154746 e!4445428)))

(assert (= (and b!7445481 ((_ is Cons!72047) (t!386736 (t!386736 s!7951)))) b!7445532))

(declare-fun b!7445545 () Bool)

(declare-fun e!4445431 () Bool)

(declare-fun tp!2154800 () Bool)

(assert (=> b!7445545 (= e!4445431 tp!2154800)))

(declare-fun b!7445544 () Bool)

(declare-fun tp!2154796 () Bool)

(declare-fun tp!2154798 () Bool)

(assert (=> b!7445544 (= e!4445431 (and tp!2154796 tp!2154798))))

(assert (=> b!7445491 (= tp!2154757 e!4445431)))

(declare-fun b!7445546 () Bool)

(declare-fun tp!2154797 () Bool)

(declare-fun tp!2154799 () Bool)

(assert (=> b!7445546 (= e!4445431 (and tp!2154797 tp!2154799))))

(declare-fun b!7445543 () Bool)

(assert (=> b!7445543 (= e!4445431 tp_is_empty!49201)))

(assert (= (and b!7445491 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56704)))) b!7445543))

(assert (= (and b!7445491 ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56704)))) b!7445544))

(assert (= (and b!7445491 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56704)))) b!7445545))

(assert (= (and b!7445491 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56704)))) b!7445546))

(declare-fun b!7445547 () Bool)

(declare-fun e!4445432 () Bool)

(declare-fun tp!2154801 () Bool)

(declare-fun tp!2154802 () Bool)

(assert (=> b!7445547 (= e!4445432 (and tp!2154801 tp!2154802))))

(assert (=> b!7445491 (= tp!2154758 e!4445432)))

(assert (= (and b!7445491 ((_ is Cons!72046) (t!386735 (exprs!8911 setElem!56704)))) b!7445547))

(declare-fun b_lambda!287745 () Bool)

(assert (= b_lambda!287743 (or d!2296347 b_lambda!287745)))

(declare-fun bs!1926663 () Bool)

(declare-fun d!2296387 () Bool)

(assert (= bs!1926663 (and d!2296387 d!2296347)))

(declare-fun validRegex!9987 (Regex!19471) Bool)

(assert (=> bs!1926663 (= (dynLambda!29744 lambda!460611 (h!78494 (exprs!8911 setElem!56704))) (validRegex!9987 (h!78494 (exprs!8911 setElem!56704))))))

(declare-fun m!8055106 () Bool)

(assert (=> bs!1926663 m!8055106))

(assert (=> b!7445524 d!2296387))

(check-sat (not b!7445545) (not setNonEmpty!56712) (not bs!1926663) (not d!2296369) (not b!7445530) (not b!7445526) tp_is_empty!49201 (not b!7445532) (not b!7445544) (not b_lambda!287745) (not d!2296381) (not b!7445525) (not d!2296379) (not b!7445527) (not d!2296371) (not b!7445546) (not b!7445547) (not b!7445531))
(check-sat)
(get-model)

(declare-fun d!2296417 () Bool)

(assert (=> d!2296417 (= (isEmpty!41089 (tail!14854 s!7951)) ((_ is Nil!72047) (tail!14854 s!7951)))))

(assert (=> d!2296379 d!2296417))

(declare-fun d!2296419 () Bool)

(declare-fun lt!2619569 () Bool)

(declare-datatypes ((List!72173 0))(
  ( (Nil!72049) (Cons!72049 (h!78497 Context!16822) (t!386738 List!72173)) )
))
(declare-fun exists!4820 (List!72173 Int) Bool)

(declare-fun toList!11796 ((InoxSet Context!16822)) List!72173)

(assert (=> d!2296419 (= lt!2619569 (exists!4820 (toList!11796 z!3503) lambda!460622))))

(declare-fun choose!57551 ((InoxSet Context!16822) Int) Bool)

(assert (=> d!2296419 (= lt!2619569 (choose!57551 z!3503 lambda!460622))))

(assert (=> d!2296419 (= (exists!4818 z!3503 lambda!460622) lt!2619569)))

(declare-fun bs!1926675 () Bool)

(assert (= bs!1926675 d!2296419))

(declare-fun m!8055154 () Bool)

(assert (=> bs!1926675 m!8055154))

(assert (=> bs!1926675 m!8055154))

(declare-fun m!8055156 () Bool)

(assert (=> bs!1926675 m!8055156))

(declare-fun m!8055158 () Bool)

(assert (=> bs!1926675 m!8055158))

(assert (=> d!2296371 d!2296419))

(declare-fun bs!1926676 () Bool)

(declare-fun d!2296421 () Bool)

(assert (= bs!1926676 (and d!2296421 d!2296347)))

(declare-fun lambda!460629 () Int)

(assert (=> bs!1926676 (= lambda!460629 lambda!460611)))

(declare-fun bs!1926677 () Bool)

(assert (= bs!1926677 (and d!2296421 d!2296369)))

(assert (=> bs!1926677 (= lambda!460629 lambda!460619)))

(assert (=> d!2296421 (= (inv!92038 setElem!56712) (forall!18245 (exprs!8911 setElem!56712) lambda!460629))))

(declare-fun bs!1926678 () Bool)

(assert (= bs!1926678 d!2296421))

(declare-fun m!8055160 () Bool)

(assert (=> bs!1926678 m!8055160))

(assert (=> setNonEmpty!56712 d!2296421))

(declare-fun d!2296423 () Bool)

(declare-fun res!2987230 () Bool)

(declare-fun e!4445471 () Bool)

(assert (=> d!2296423 (=> res!2987230 e!4445471)))

(assert (=> d!2296423 (= res!2987230 ((_ is Nil!72046) (exprs!8911 setElem!56710)))))

(assert (=> d!2296423 (= (forall!18245 (exprs!8911 setElem!56710) lambda!460619) e!4445471)))

(declare-fun b!7445614 () Bool)

(declare-fun e!4445472 () Bool)

(assert (=> b!7445614 (= e!4445471 e!4445472)))

(declare-fun res!2987231 () Bool)

(assert (=> b!7445614 (=> (not res!2987231) (not e!4445472))))

(assert (=> b!7445614 (= res!2987231 (dynLambda!29744 lambda!460619 (h!78494 (exprs!8911 setElem!56710))))))

(declare-fun b!7445615 () Bool)

(assert (=> b!7445615 (= e!4445472 (forall!18245 (t!386735 (exprs!8911 setElem!56710)) lambda!460619))))

(assert (= (and d!2296423 (not res!2987230)) b!7445614))

(assert (= (and b!7445614 res!2987231) b!7445615))

(declare-fun b_lambda!287755 () Bool)

(assert (=> (not b_lambda!287755) (not b!7445614)))

(declare-fun m!8055162 () Bool)

(assert (=> b!7445614 m!8055162))

(declare-fun m!8055164 () Bool)

(assert (=> b!7445615 m!8055164))

(assert (=> d!2296369 d!2296423))

(declare-fun d!2296425 () Bool)

(declare-fun choose!57552 ((InoxSet Context!16822) Int) (InoxSet Context!16822))

(assert (=> d!2296425 (= (flatMap!3247 z!3503 lambda!460625) (choose!57552 z!3503 lambda!460625))))

(declare-fun bs!1926679 () Bool)

(assert (= bs!1926679 d!2296425))

(declare-fun m!8055166 () Bool)

(assert (=> bs!1926679 m!8055166))

(assert (=> d!2296381 d!2296425))

(declare-fun b!7445634 () Bool)

(declare-fun e!4445491 () Bool)

(declare-fun call!684291 () Bool)

(assert (=> b!7445634 (= e!4445491 call!684291)))

(declare-fun b!7445635 () Bool)

(declare-fun e!4445493 () Bool)

(declare-fun call!684290 () Bool)

(assert (=> b!7445635 (= e!4445493 call!684290)))

(declare-fun b!7445636 () Bool)

(declare-fun e!4445490 () Bool)

(declare-fun e!4445489 () Bool)

(assert (=> b!7445636 (= e!4445490 e!4445489)))

(declare-fun res!2987243 () Bool)

(assert (=> b!7445636 (=> (not res!2987243) (not e!4445489))))

(declare-fun call!684292 () Bool)

(assert (=> b!7445636 (= res!2987243 call!684292)))

(declare-fun b!7445637 () Bool)

(assert (=> b!7445637 (= e!4445489 call!684290)))

(declare-fun b!7445638 () Bool)

(declare-fun e!4445488 () Bool)

(declare-fun e!4445487 () Bool)

(assert (=> b!7445638 (= e!4445488 e!4445487)))

(declare-fun c!1377459 () Bool)

(assert (=> b!7445638 (= c!1377459 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56704))))))

(declare-fun c!1377458 () Bool)

(declare-fun bm!684285 () Bool)

(assert (=> bm!684285 (= call!684291 (validRegex!9987 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun bm!684286 () Bool)

(assert (=> bm!684286 (= call!684290 call!684291)))

(declare-fun d!2296427 () Bool)

(declare-fun res!2987244 () Bool)

(declare-fun e!4445492 () Bool)

(assert (=> d!2296427 (=> res!2987244 e!4445492)))

(assert (=> d!2296427 (= res!2987244 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56704))))))

(assert (=> d!2296427 (= (validRegex!9987 (h!78494 (exprs!8911 setElem!56704))) e!4445492)))

(declare-fun b!7445639 () Bool)

(assert (=> b!7445639 (= e!4445488 e!4445491)))

(declare-fun res!2987242 () Bool)

(declare-fun nullable!8485 (Regex!19471) Bool)

(assert (=> b!7445639 (= res!2987242 (not (nullable!8485 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))))

(assert (=> b!7445639 (=> (not res!2987242) (not e!4445491))))

(declare-fun b!7445640 () Bool)

(declare-fun res!2987245 () Bool)

(assert (=> b!7445640 (=> res!2987245 e!4445490)))

(assert (=> b!7445640 (= res!2987245 (not ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56704)))))))

(assert (=> b!7445640 (= e!4445487 e!4445490)))

(declare-fun b!7445641 () Bool)

(declare-fun res!2987246 () Bool)

(assert (=> b!7445641 (=> (not res!2987246) (not e!4445493))))

(assert (=> b!7445641 (= res!2987246 call!684292)))

(assert (=> b!7445641 (= e!4445487 e!4445493)))

(declare-fun b!7445642 () Bool)

(assert (=> b!7445642 (= e!4445492 e!4445488)))

(assert (=> b!7445642 (= c!1377458 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56704))))))

(declare-fun bm!684287 () Bool)

(assert (=> bm!684287 (= call!684292 (validRegex!9987 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))

(assert (= (and d!2296427 (not res!2987244)) b!7445642))

(assert (= (and b!7445642 c!1377458) b!7445639))

(assert (= (and b!7445642 (not c!1377458)) b!7445638))

(assert (= (and b!7445639 res!2987242) b!7445634))

(assert (= (and b!7445638 c!1377459) b!7445641))

(assert (= (and b!7445638 (not c!1377459)) b!7445640))

(assert (= (and b!7445641 res!2987246) b!7445635))

(assert (= (and b!7445640 (not res!2987245)) b!7445636))

(assert (= (and b!7445636 res!2987243) b!7445637))

(assert (= (or b!7445641 b!7445636) bm!684287))

(assert (= (or b!7445635 b!7445637) bm!684286))

(assert (= (or b!7445634 bm!684286) bm!684285))

(declare-fun m!8055168 () Bool)

(assert (=> bm!684285 m!8055168))

(declare-fun m!8055170 () Bool)

(assert (=> b!7445639 m!8055170))

(declare-fun m!8055172 () Bool)

(assert (=> bm!684287 m!8055172))

(assert (=> bs!1926663 d!2296427))

(declare-fun d!2296429 () Bool)

(declare-fun res!2987247 () Bool)

(declare-fun e!4445494 () Bool)

(assert (=> d!2296429 (=> res!2987247 e!4445494)))

(assert (=> d!2296429 (= res!2987247 ((_ is Nil!72046) (t!386735 (exprs!8911 setElem!56704))))))

(assert (=> d!2296429 (= (forall!18245 (t!386735 (exprs!8911 setElem!56704)) lambda!460611) e!4445494)))

(declare-fun b!7445643 () Bool)

(declare-fun e!4445495 () Bool)

(assert (=> b!7445643 (= e!4445494 e!4445495)))

(declare-fun res!2987248 () Bool)

(assert (=> b!7445643 (=> (not res!2987248) (not e!4445495))))

(assert (=> b!7445643 (= res!2987248 (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))

(declare-fun b!7445644 () Bool)

(assert (=> b!7445644 (= e!4445495 (forall!18245 (t!386735 (t!386735 (exprs!8911 setElem!56704))) lambda!460611))))

(assert (= (and d!2296429 (not res!2987247)) b!7445643))

(assert (= (and b!7445643 res!2987248) b!7445644))

(declare-fun b_lambda!287757 () Bool)

(assert (=> (not b_lambda!287757) (not b!7445643)))

(declare-fun m!8055174 () Bool)

(assert (=> b!7445643 m!8055174))

(declare-fun m!8055176 () Bool)

(assert (=> b!7445644 m!8055176))

(assert (=> b!7445525 d!2296429))

(declare-fun bs!1926680 () Bool)

(declare-fun d!2296431 () Bool)

(assert (= bs!1926680 (and d!2296431 d!2296371)))

(declare-fun lambda!460630 () Int)

(assert (=> bs!1926680 (= lambda!460630 lambda!460622)))

(assert (=> d!2296431 (= (nullableZipper!3156 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) (exists!4818 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460630))))

(declare-fun bs!1926681 () Bool)

(assert (= bs!1926681 d!2296431))

(assert (=> bs!1926681 m!8055048))

(declare-fun m!8055178 () Bool)

(assert (=> bs!1926681 m!8055178))

(assert (=> b!7445526 d!2296431))

(declare-fun d!2296433 () Bool)

(declare-fun c!1377460 () Bool)

(assert (=> d!2296433 (= c!1377460 (isEmpty!41089 (tail!14854 (tail!14854 s!7951))))))

(declare-fun e!4445496 () Bool)

(assert (=> d!2296433 (= (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (tail!14854 (tail!14854 s!7951))) e!4445496)))

(declare-fun b!7445645 () Bool)

(assert (=> b!7445645 (= e!4445496 (nullableZipper!3156 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951)))))))

(declare-fun b!7445646 () Bool)

(assert (=> b!7445646 (= e!4445496 (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (tail!14854 (tail!14854 (tail!14854 s!7951)))))))

(assert (= (and d!2296433 c!1377460) b!7445645))

(assert (= (and d!2296433 (not c!1377460)) b!7445646))

(assert (=> d!2296433 m!8055098))

(declare-fun m!8055180 () Bool)

(assert (=> d!2296433 m!8055180))

(assert (=> b!7445645 m!8055096))

(declare-fun m!8055182 () Bool)

(assert (=> b!7445645 m!8055182))

(assert (=> b!7445646 m!8055098))

(declare-fun m!8055184 () Bool)

(assert (=> b!7445646 m!8055184))

(assert (=> b!7445646 m!8055096))

(assert (=> b!7445646 m!8055184))

(declare-fun m!8055186 () Bool)

(assert (=> b!7445646 m!8055186))

(assert (=> b!7445646 m!8055098))

(declare-fun m!8055188 () Bool)

(assert (=> b!7445646 m!8055188))

(assert (=> b!7445646 m!8055186))

(assert (=> b!7445646 m!8055188))

(declare-fun m!8055190 () Bool)

(assert (=> b!7445646 m!8055190))

(assert (=> b!7445527 d!2296433))

(declare-fun bs!1926682 () Bool)

(declare-fun d!2296435 () Bool)

(assert (= bs!1926682 (and d!2296435 d!2296381)))

(declare-fun lambda!460631 () Int)

(assert (=> bs!1926682 (= (= (head!15275 (tail!14854 s!7951)) (head!15275 s!7951)) (= lambda!460631 lambda!460625))))

(assert (=> d!2296435 true))

(assert (=> d!2296435 (= (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (flatMap!3247 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460631))))

(declare-fun bs!1926683 () Bool)

(assert (= bs!1926683 d!2296435))

(assert (=> bs!1926683 m!8055048))

(declare-fun m!8055192 () Bool)

(assert (=> bs!1926683 m!8055192))

(assert (=> b!7445527 d!2296435))

(declare-fun d!2296437 () Bool)

(assert (=> d!2296437 (= (head!15275 (tail!14854 s!7951)) (h!78495 (tail!14854 s!7951)))))

(assert (=> b!7445527 d!2296437))

(declare-fun d!2296439 () Bool)

(assert (=> d!2296439 (= (tail!14854 (tail!14854 s!7951)) (t!386736 (tail!14854 s!7951)))))

(assert (=> b!7445527 d!2296439))

(declare-fun b!7445647 () Bool)

(declare-fun e!4445497 () Bool)

(declare-fun tp!2154847 () Bool)

(assert (=> b!7445647 (= e!4445497 (and tp_is_empty!49201 tp!2154847))))

(assert (=> b!7445532 (= tp!2154785 e!4445497)))

(assert (= (and b!7445532 ((_ is Cons!72047) (t!386736 (t!386736 (t!386736 s!7951))))) b!7445647))

(declare-fun condSetEmpty!56714 () Bool)

(assert (=> setNonEmpty!56712 (= condSetEmpty!56714 (= setRest!56712 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56714 () Bool)

(assert (=> setNonEmpty!56712 (= tp!2154781 setRes!56714)))

(declare-fun setIsEmpty!56714 () Bool)

(assert (=> setIsEmpty!56714 setRes!56714))

(declare-fun e!4445498 () Bool)

(declare-fun tp!2154848 () Bool)

(declare-fun setElem!56714 () Context!16822)

(declare-fun setNonEmpty!56714 () Bool)

(assert (=> setNonEmpty!56714 (= setRes!56714 (and tp!2154848 (inv!92038 setElem!56714) e!4445498))))

(declare-fun setRest!56714 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56714 (= setRest!56712 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56714 true) setRest!56714))))

(declare-fun b!7445648 () Bool)

(declare-fun tp!2154849 () Bool)

(assert (=> b!7445648 (= e!4445498 tp!2154849)))

(assert (= (and setNonEmpty!56712 condSetEmpty!56714) setIsEmpty!56714))

(assert (= (and setNonEmpty!56712 (not condSetEmpty!56714)) setNonEmpty!56714))

(assert (= setNonEmpty!56714 b!7445648))

(declare-fun m!8055194 () Bool)

(assert (=> setNonEmpty!56714 m!8055194))

(declare-fun b!7445649 () Bool)

(declare-fun e!4445499 () Bool)

(declare-fun tp!2154850 () Bool)

(declare-fun tp!2154851 () Bool)

(assert (=> b!7445649 (= e!4445499 (and tp!2154850 tp!2154851))))

(assert (=> b!7445530 (= tp!2154782 e!4445499)))

(assert (= (and b!7445530 ((_ is Cons!72046) (exprs!8911 setElem!56712))) b!7445649))

(declare-fun b!7445652 () Bool)

(declare-fun e!4445500 () Bool)

(declare-fun tp!2154856 () Bool)

(assert (=> b!7445652 (= e!4445500 tp!2154856)))

(declare-fun b!7445651 () Bool)

(declare-fun tp!2154852 () Bool)

(declare-fun tp!2154854 () Bool)

(assert (=> b!7445651 (= e!4445500 (and tp!2154852 tp!2154854))))

(assert (=> b!7445531 (= tp!2154783 e!4445500)))

(declare-fun b!7445653 () Bool)

(declare-fun tp!2154853 () Bool)

(declare-fun tp!2154855 () Bool)

(assert (=> b!7445653 (= e!4445500 (and tp!2154853 tp!2154855))))

(declare-fun b!7445650 () Bool)

(assert (=> b!7445650 (= e!4445500 tp_is_empty!49201)))

(assert (= (and b!7445531 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56710)))) b!7445650))

(assert (= (and b!7445531 ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56710)))) b!7445651))

(assert (= (and b!7445531 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56710)))) b!7445652))

(assert (= (and b!7445531 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56710)))) b!7445653))

(declare-fun b!7445654 () Bool)

(declare-fun e!4445501 () Bool)

(declare-fun tp!2154857 () Bool)

(declare-fun tp!2154858 () Bool)

(assert (=> b!7445654 (= e!4445501 (and tp!2154857 tp!2154858))))

(assert (=> b!7445531 (= tp!2154784 e!4445501)))

(assert (= (and b!7445531 ((_ is Cons!72046) (t!386735 (exprs!8911 setElem!56710)))) b!7445654))

(declare-fun b!7445657 () Bool)

(declare-fun e!4445502 () Bool)

(declare-fun tp!2154863 () Bool)

(assert (=> b!7445657 (= e!4445502 tp!2154863)))

(declare-fun b!7445656 () Bool)

(declare-fun tp!2154859 () Bool)

(declare-fun tp!2154861 () Bool)

(assert (=> b!7445656 (= e!4445502 (and tp!2154859 tp!2154861))))

(assert (=> b!7445544 (= tp!2154796 e!4445502)))

(declare-fun b!7445658 () Bool)

(declare-fun tp!2154860 () Bool)

(declare-fun tp!2154862 () Bool)

(assert (=> b!7445658 (= e!4445502 (and tp!2154860 tp!2154862))))

(declare-fun b!7445655 () Bool)

(assert (=> b!7445655 (= e!4445502 tp_is_empty!49201)))

(assert (= (and b!7445544 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445655))

(assert (= (and b!7445544 ((_ is Concat!28316) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445656))

(assert (= (and b!7445544 ((_ is Star!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445657))

(assert (= (and b!7445544 ((_ is Union!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445658))

(declare-fun b!7445661 () Bool)

(declare-fun e!4445503 () Bool)

(declare-fun tp!2154868 () Bool)

(assert (=> b!7445661 (= e!4445503 tp!2154868)))

(declare-fun b!7445660 () Bool)

(declare-fun tp!2154864 () Bool)

(declare-fun tp!2154866 () Bool)

(assert (=> b!7445660 (= e!4445503 (and tp!2154864 tp!2154866))))

(assert (=> b!7445544 (= tp!2154798 e!4445503)))

(declare-fun b!7445662 () Bool)

(declare-fun tp!2154865 () Bool)

(declare-fun tp!2154867 () Bool)

(assert (=> b!7445662 (= e!4445503 (and tp!2154865 tp!2154867))))

(declare-fun b!7445659 () Bool)

(assert (=> b!7445659 (= e!4445503 tp_is_empty!49201)))

(assert (= (and b!7445544 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445659))

(assert (= (and b!7445544 ((_ is Concat!28316) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445660))

(assert (= (and b!7445544 ((_ is Star!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445661))

(assert (= (and b!7445544 ((_ is Union!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))) b!7445662))

(declare-fun b!7445665 () Bool)

(declare-fun e!4445504 () Bool)

(declare-fun tp!2154873 () Bool)

(assert (=> b!7445665 (= e!4445504 tp!2154873)))

(declare-fun b!7445664 () Bool)

(declare-fun tp!2154869 () Bool)

(declare-fun tp!2154871 () Bool)

(assert (=> b!7445664 (= e!4445504 (and tp!2154869 tp!2154871))))

(assert (=> b!7445545 (= tp!2154800 e!4445504)))

(declare-fun b!7445666 () Bool)

(declare-fun tp!2154870 () Bool)

(declare-fun tp!2154872 () Bool)

(assert (=> b!7445666 (= e!4445504 (and tp!2154870 tp!2154872))))

(declare-fun b!7445663 () Bool)

(assert (=> b!7445663 (= e!4445504 tp_is_empty!49201)))

(assert (= (and b!7445545 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704))))) b!7445663))

(assert (= (and b!7445545 ((_ is Concat!28316) (reg!19800 (h!78494 (exprs!8911 setElem!56704))))) b!7445664))

(assert (= (and b!7445545 ((_ is Star!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704))))) b!7445665))

(assert (= (and b!7445545 ((_ is Union!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704))))) b!7445666))

(declare-fun b!7445669 () Bool)

(declare-fun e!4445505 () Bool)

(declare-fun tp!2154878 () Bool)

(assert (=> b!7445669 (= e!4445505 tp!2154878)))

(declare-fun b!7445668 () Bool)

(declare-fun tp!2154874 () Bool)

(declare-fun tp!2154876 () Bool)

(assert (=> b!7445668 (= e!4445505 (and tp!2154874 tp!2154876))))

(assert (=> b!7445547 (= tp!2154801 e!4445505)))

(declare-fun b!7445670 () Bool)

(declare-fun tp!2154875 () Bool)

(declare-fun tp!2154877 () Bool)

(assert (=> b!7445670 (= e!4445505 (and tp!2154875 tp!2154877))))

(declare-fun b!7445667 () Bool)

(assert (=> b!7445667 (= e!4445505 tp_is_empty!49201)))

(assert (= (and b!7445547 ((_ is ElementMatch!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704))))) b!7445667))

(assert (= (and b!7445547 ((_ is Concat!28316) (h!78494 (t!386735 (exprs!8911 setElem!56704))))) b!7445668))

(assert (= (and b!7445547 ((_ is Star!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704))))) b!7445669))

(assert (= (and b!7445547 ((_ is Union!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704))))) b!7445670))

(declare-fun b!7445671 () Bool)

(declare-fun e!4445506 () Bool)

(declare-fun tp!2154879 () Bool)

(declare-fun tp!2154880 () Bool)

(assert (=> b!7445671 (= e!4445506 (and tp!2154879 tp!2154880))))

(assert (=> b!7445547 (= tp!2154802 e!4445506)))

(assert (= (and b!7445547 ((_ is Cons!72046) (t!386735 (t!386735 (exprs!8911 setElem!56704))))) b!7445671))

(declare-fun b!7445674 () Bool)

(declare-fun e!4445507 () Bool)

(declare-fun tp!2154885 () Bool)

(assert (=> b!7445674 (= e!4445507 tp!2154885)))

(declare-fun b!7445673 () Bool)

(declare-fun tp!2154881 () Bool)

(declare-fun tp!2154883 () Bool)

(assert (=> b!7445673 (= e!4445507 (and tp!2154881 tp!2154883))))

(assert (=> b!7445546 (= tp!2154797 e!4445507)))

(declare-fun b!7445675 () Bool)

(declare-fun tp!2154882 () Bool)

(declare-fun tp!2154884 () Bool)

(assert (=> b!7445675 (= e!4445507 (and tp!2154882 tp!2154884))))

(declare-fun b!7445672 () Bool)

(assert (=> b!7445672 (= e!4445507 tp_is_empty!49201)))

(assert (= (and b!7445546 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445672))

(assert (= (and b!7445546 ((_ is Concat!28316) (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445673))

(assert (= (and b!7445546 ((_ is Star!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445674))

(assert (= (and b!7445546 ((_ is Union!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445675))

(declare-fun b!7445678 () Bool)

(declare-fun e!4445508 () Bool)

(declare-fun tp!2154890 () Bool)

(assert (=> b!7445678 (= e!4445508 tp!2154890)))

(declare-fun b!7445677 () Bool)

(declare-fun tp!2154886 () Bool)

(declare-fun tp!2154888 () Bool)

(assert (=> b!7445677 (= e!4445508 (and tp!2154886 tp!2154888))))

(assert (=> b!7445546 (= tp!2154799 e!4445508)))

(declare-fun b!7445679 () Bool)

(declare-fun tp!2154887 () Bool)

(declare-fun tp!2154889 () Bool)

(assert (=> b!7445679 (= e!4445508 (and tp!2154887 tp!2154889))))

(declare-fun b!7445676 () Bool)

(assert (=> b!7445676 (= e!4445508 tp_is_empty!49201)))

(assert (= (and b!7445546 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445676))

(assert (= (and b!7445546 ((_ is Concat!28316) (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445677))

(assert (= (and b!7445546 ((_ is Star!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445678))

(assert (= (and b!7445546 ((_ is Union!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))) b!7445679))

(declare-fun b_lambda!287759 () Bool)

(assert (= b_lambda!287755 (or d!2296369 b_lambda!287759)))

(declare-fun bs!1926684 () Bool)

(declare-fun d!2296441 () Bool)

(assert (= bs!1926684 (and d!2296441 d!2296369)))

(assert (=> bs!1926684 (= (dynLambda!29744 lambda!460619 (h!78494 (exprs!8911 setElem!56710))) (validRegex!9987 (h!78494 (exprs!8911 setElem!56710))))))

(declare-fun m!8055196 () Bool)

(assert (=> bs!1926684 m!8055196))

(assert (=> b!7445614 d!2296441))

(declare-fun b_lambda!287761 () Bool)

(assert (= b_lambda!287757 (or d!2296347 b_lambda!287761)))

(declare-fun bs!1926685 () Bool)

(declare-fun d!2296443 () Bool)

(assert (= bs!1926685 (and d!2296443 d!2296347)))

(assert (=> bs!1926685 (= (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (validRegex!9987 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))

(declare-fun m!8055198 () Bool)

(assert (=> bs!1926685 m!8055198))

(assert (=> b!7445643 d!2296443))

(check-sat (not b!7445675) (not bm!684287) (not b!7445654) (not b!7445646) (not b!7445677) (not b!7445660) (not b!7445651) (not b!7445657) (not b!7445652) (not b_lambda!287761) (not d!2296419) (not b!7445662) (not b!7445661) (not bm!684285) (not b!7445669) (not b!7445647) (not b_lambda!287745) (not d!2296431) (not bs!1926685) (not b!7445639) (not b!7445673) (not b!7445648) (not d!2296433) (not b!7445649) (not b!7445674) (not b!7445653) (not b!7445615) (not b!7445671) (not setNonEmpty!56714) (not b!7445644) (not d!2296425) (not d!2296435) (not d!2296421) (not bs!1926684) (not b!7445645) (not b!7445670) (not b!7445678) (not b!7445665) (not b!7445668) tp_is_empty!49201 (not b!7445666) (not b!7445664) (not b!7445658) (not b_lambda!287759) (not b!7445656) (not b!7445679))
(check-sat)
(get-model)

(declare-fun d!2296493 () Bool)

(assert (=> d!2296493 true))

(declare-fun setRes!56721 () Bool)

(assert (=> d!2296493 setRes!56721))

(declare-fun condSetEmpty!56721 () Bool)

(declare-fun res!2987286 () (InoxSet Context!16822))

(assert (=> d!2296493 (= condSetEmpty!56721 (= res!2987286 ((as const (Array Context!16822 Bool)) false)))))

(assert (=> d!2296493 (= (choose!57552 z!3503 lambda!460625) res!2987286)))

(declare-fun setIsEmpty!56721 () Bool)

(assert (=> setIsEmpty!56721 setRes!56721))

(declare-fun e!4445596 () Bool)

(declare-fun tp!2155102 () Bool)

(declare-fun setElem!56721 () Context!16822)

(declare-fun setNonEmpty!56721 () Bool)

(assert (=> setNonEmpty!56721 (= setRes!56721 (and tp!2155102 (inv!92038 setElem!56721) e!4445596))))

(declare-fun setRest!56721 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56721 (= res!2987286 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56721 true) setRest!56721))))

(declare-fun b!7445892 () Bool)

(declare-fun tp!2155103 () Bool)

(assert (=> b!7445892 (= e!4445596 tp!2155103)))

(assert (= (and d!2296493 condSetEmpty!56721) setIsEmpty!56721))

(assert (= (and d!2296493 (not condSetEmpty!56721)) setNonEmpty!56721))

(assert (= setNonEmpty!56721 b!7445892))

(declare-fun m!8055282 () Bool)

(assert (=> setNonEmpty!56721 m!8055282))

(assert (=> d!2296425 d!2296493))

(declare-fun d!2296495 () Bool)

(declare-fun nullableFct!3426 (Regex!19471) Bool)

(assert (=> d!2296495 (= (nullable!8485 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))) (nullableFct!3426 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))

(declare-fun bs!1926707 () Bool)

(assert (= bs!1926707 d!2296495))

(declare-fun m!8055284 () Bool)

(assert (=> bs!1926707 m!8055284))

(assert (=> b!7445639 d!2296495))

(declare-fun d!2296497 () Bool)

(assert (=> d!2296497 (= (isEmpty!41089 (tail!14854 (tail!14854 s!7951))) ((_ is Nil!72047) (tail!14854 (tail!14854 s!7951))))))

(assert (=> d!2296433 d!2296497))

(declare-fun d!2296499 () Bool)

(declare-fun res!2987287 () Bool)

(declare-fun e!4445597 () Bool)

(assert (=> d!2296499 (=> res!2987287 e!4445597)))

(assert (=> d!2296499 (= res!2987287 ((_ is Nil!72046) (t!386735 (t!386735 (exprs!8911 setElem!56704)))))))

(assert (=> d!2296499 (= (forall!18245 (t!386735 (t!386735 (exprs!8911 setElem!56704))) lambda!460611) e!4445597)))

(declare-fun b!7445893 () Bool)

(declare-fun e!4445598 () Bool)

(assert (=> b!7445893 (= e!4445597 e!4445598)))

(declare-fun res!2987288 () Bool)

(assert (=> b!7445893 (=> (not res!2987288) (not e!4445598))))

(assert (=> b!7445893 (= res!2987288 (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(declare-fun b!7445894 () Bool)

(assert (=> b!7445894 (= e!4445598 (forall!18245 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))) lambda!460611))))

(assert (= (and d!2296499 (not res!2987287)) b!7445893))

(assert (= (and b!7445893 res!2987288) b!7445894))

(declare-fun b_lambda!287775 () Bool)

(assert (=> (not b_lambda!287775) (not b!7445893)))

(declare-fun m!8055286 () Bool)

(assert (=> b!7445893 m!8055286))

(declare-fun m!8055288 () Bool)

(assert (=> b!7445894 m!8055288))

(assert (=> b!7445644 d!2296499))

(declare-fun b!7445895 () Bool)

(declare-fun e!4445603 () Bool)

(declare-fun call!684306 () Bool)

(assert (=> b!7445895 (= e!4445603 call!684306)))

(declare-fun b!7445896 () Bool)

(declare-fun e!4445605 () Bool)

(declare-fun call!684305 () Bool)

(assert (=> b!7445896 (= e!4445605 call!684305)))

(declare-fun b!7445897 () Bool)

(declare-fun e!4445602 () Bool)

(declare-fun e!4445601 () Bool)

(assert (=> b!7445897 (= e!4445602 e!4445601)))

(declare-fun res!2987290 () Bool)

(assert (=> b!7445897 (=> (not res!2987290) (not e!4445601))))

(declare-fun call!684307 () Bool)

(assert (=> b!7445897 (= res!2987290 call!684307)))

(declare-fun b!7445898 () Bool)

(assert (=> b!7445898 (= e!4445601 call!684305)))

(declare-fun b!7445899 () Bool)

(declare-fun e!4445600 () Bool)

(declare-fun e!4445599 () Bool)

(assert (=> b!7445899 (= e!4445600 e!4445599)))

(declare-fun c!1377471 () Bool)

(assert (=> b!7445899 (= c!1377471 ((_ is Union!19471) (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun bm!684300 () Bool)

(declare-fun c!1377470 () Bool)

(assert (=> bm!684300 (= call!684306 (validRegex!9987 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(declare-fun bm!684301 () Bool)

(assert (=> bm!684301 (= call!684305 call!684306)))

(declare-fun d!2296501 () Bool)

(declare-fun res!2987291 () Bool)

(declare-fun e!4445604 () Bool)

(assert (=> d!2296501 (=> res!2987291 e!4445604)))

(assert (=> d!2296501 (= res!2987291 ((_ is ElementMatch!19471) (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(assert (=> d!2296501 (= (validRegex!9987 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) e!4445604)))

(declare-fun b!7445900 () Bool)

(assert (=> b!7445900 (= e!4445600 e!4445603)))

(declare-fun res!2987289 () Bool)

(assert (=> b!7445900 (= res!2987289 (not (nullable!8485 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(assert (=> b!7445900 (=> (not res!2987289) (not e!4445603))))

(declare-fun b!7445901 () Bool)

(declare-fun res!2987292 () Bool)

(assert (=> b!7445901 (=> res!2987292 e!4445602)))

(assert (=> b!7445901 (= res!2987292 (not ((_ is Concat!28316) (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(assert (=> b!7445901 (= e!4445599 e!4445602)))

(declare-fun b!7445902 () Bool)

(declare-fun res!2987293 () Bool)

(assert (=> b!7445902 (=> (not res!2987293) (not e!4445605))))

(assert (=> b!7445902 (= res!2987293 call!684307)))

(assert (=> b!7445902 (= e!4445599 e!4445605)))

(declare-fun b!7445903 () Bool)

(assert (=> b!7445903 (= e!4445604 e!4445600)))

(assert (=> b!7445903 (= c!1377470 ((_ is Star!19471) (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun bm!684302 () Bool)

(assert (=> bm!684302 (= call!684307 (validRegex!9987 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(assert (= (and d!2296501 (not res!2987291)) b!7445903))

(assert (= (and b!7445903 c!1377470) b!7445900))

(assert (= (and b!7445903 (not c!1377470)) b!7445899))

(assert (= (and b!7445900 res!2987289) b!7445895))

(assert (= (and b!7445899 c!1377471) b!7445902))

(assert (= (and b!7445899 (not c!1377471)) b!7445901))

(assert (= (and b!7445902 res!2987293) b!7445896))

(assert (= (and b!7445901 (not res!2987292)) b!7445897))

(assert (= (and b!7445897 res!2987290) b!7445898))

(assert (= (or b!7445902 b!7445897) bm!684302))

(assert (= (or b!7445896 b!7445898) bm!684301))

(assert (= (or b!7445895 bm!684301) bm!684300))

(declare-fun m!8055290 () Bool)

(assert (=> bm!684300 m!8055290))

(declare-fun m!8055292 () Bool)

(assert (=> b!7445900 m!8055292))

(declare-fun m!8055294 () Bool)

(assert (=> bm!684302 m!8055294))

(assert (=> bm!684285 d!2296501))

(declare-fun bs!1926708 () Bool)

(declare-fun d!2296503 () Bool)

(assert (= bs!1926708 (and d!2296503 d!2296347)))

(declare-fun lambda!460638 () Int)

(assert (=> bs!1926708 (= lambda!460638 lambda!460611)))

(declare-fun bs!1926709 () Bool)

(assert (= bs!1926709 (and d!2296503 d!2296369)))

(assert (=> bs!1926709 (= lambda!460638 lambda!460619)))

(declare-fun bs!1926710 () Bool)

(assert (= bs!1926710 (and d!2296503 d!2296421)))

(assert (=> bs!1926710 (= lambda!460638 lambda!460629)))

(assert (=> d!2296503 (= (inv!92038 setElem!56714) (forall!18245 (exprs!8911 setElem!56714) lambda!460638))))

(declare-fun bs!1926711 () Bool)

(assert (= bs!1926711 d!2296503))

(declare-fun m!8055296 () Bool)

(assert (=> bs!1926711 m!8055296))

(assert (=> setNonEmpty!56714 d!2296503))

(declare-fun d!2296505 () Bool)

(assert (=> d!2296505 (= (flatMap!3247 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460631) (choose!57552 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460631))))

(declare-fun bs!1926712 () Bool)

(assert (= bs!1926712 d!2296505))

(assert (=> bs!1926712 m!8055048))

(declare-fun m!8055298 () Bool)

(assert (=> bs!1926712 m!8055298))

(assert (=> d!2296435 d!2296505))

(declare-fun d!2296507 () Bool)

(declare-fun res!2987294 () Bool)

(declare-fun e!4445606 () Bool)

(assert (=> d!2296507 (=> res!2987294 e!4445606)))

(assert (=> d!2296507 (= res!2987294 ((_ is Nil!72046) (exprs!8911 setElem!56712)))))

(assert (=> d!2296507 (= (forall!18245 (exprs!8911 setElem!56712) lambda!460629) e!4445606)))

(declare-fun b!7445904 () Bool)

(declare-fun e!4445607 () Bool)

(assert (=> b!7445904 (= e!4445606 e!4445607)))

(declare-fun res!2987295 () Bool)

(assert (=> b!7445904 (=> (not res!2987295) (not e!4445607))))

(assert (=> b!7445904 (= res!2987295 (dynLambda!29744 lambda!460629 (h!78494 (exprs!8911 setElem!56712))))))

(declare-fun b!7445905 () Bool)

(assert (=> b!7445905 (= e!4445607 (forall!18245 (t!386735 (exprs!8911 setElem!56712)) lambda!460629))))

(assert (= (and d!2296507 (not res!2987294)) b!7445904))

(assert (= (and b!7445904 res!2987295) b!7445905))

(declare-fun b_lambda!287777 () Bool)

(assert (=> (not b_lambda!287777) (not b!7445904)))

(declare-fun m!8055300 () Bool)

(assert (=> b!7445904 m!8055300))

(declare-fun m!8055302 () Bool)

(assert (=> b!7445905 m!8055302))

(assert (=> d!2296421 d!2296507))

(declare-fun b!7445906 () Bool)

(declare-fun e!4445612 () Bool)

(declare-fun call!684309 () Bool)

(assert (=> b!7445906 (= e!4445612 call!684309)))

(declare-fun b!7445907 () Bool)

(declare-fun e!4445614 () Bool)

(declare-fun call!684308 () Bool)

(assert (=> b!7445907 (= e!4445614 call!684308)))

(declare-fun b!7445908 () Bool)

(declare-fun e!4445611 () Bool)

(declare-fun e!4445610 () Bool)

(assert (=> b!7445908 (= e!4445611 e!4445610)))

(declare-fun res!2987297 () Bool)

(assert (=> b!7445908 (=> (not res!2987297) (not e!4445610))))

(declare-fun call!684310 () Bool)

(assert (=> b!7445908 (= res!2987297 call!684310)))

(declare-fun b!7445909 () Bool)

(assert (=> b!7445909 (= e!4445610 call!684308)))

(declare-fun b!7445910 () Bool)

(declare-fun e!4445609 () Bool)

(declare-fun e!4445608 () Bool)

(assert (=> b!7445910 (= e!4445609 e!4445608)))

(declare-fun c!1377473 () Bool)

(assert (=> b!7445910 (= c!1377473 ((_ is Union!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))

(declare-fun bm!684303 () Bool)

(declare-fun c!1377472 () Bool)

(assert (=> bm!684303 (= call!684309 (validRegex!9987 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))

(declare-fun bm!684304 () Bool)

(assert (=> bm!684304 (= call!684308 call!684309)))

(declare-fun d!2296509 () Bool)

(declare-fun res!2987298 () Bool)

(declare-fun e!4445613 () Bool)

(assert (=> d!2296509 (=> res!2987298 e!4445613)))

(assert (=> d!2296509 (= res!2987298 ((_ is ElementMatch!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))

(assert (=> d!2296509 (= (validRegex!9987 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) e!4445613)))

(declare-fun b!7445911 () Bool)

(assert (=> b!7445911 (= e!4445609 e!4445612)))

(declare-fun res!2987296 () Bool)

(assert (=> b!7445911 (= res!2987296 (not (nullable!8485 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))

(assert (=> b!7445911 (=> (not res!2987296) (not e!4445612))))

(declare-fun b!7445912 () Bool)

(declare-fun res!2987299 () Bool)

(assert (=> b!7445912 (=> res!2987299 e!4445611)))

(assert (=> b!7445912 (= res!2987299 (not ((_ is Concat!28316) (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))

(assert (=> b!7445912 (= e!4445608 e!4445611)))

(declare-fun b!7445913 () Bool)

(declare-fun res!2987300 () Bool)

(assert (=> b!7445913 (=> (not res!2987300) (not e!4445614))))

(assert (=> b!7445913 (= res!2987300 call!684310)))

(assert (=> b!7445913 (= e!4445608 e!4445614)))

(declare-fun b!7445914 () Bool)

(assert (=> b!7445914 (= e!4445613 e!4445609)))

(assert (=> b!7445914 (= c!1377472 ((_ is Star!19471) (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))

(declare-fun bm!684305 () Bool)

(assert (=> bm!684305 (= call!684310 (validRegex!9987 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))

(assert (= (and d!2296509 (not res!2987298)) b!7445914))

(assert (= (and b!7445914 c!1377472) b!7445911))

(assert (= (and b!7445914 (not c!1377472)) b!7445910))

(assert (= (and b!7445911 res!2987296) b!7445906))

(assert (= (and b!7445910 c!1377473) b!7445913))

(assert (= (and b!7445910 (not c!1377473)) b!7445912))

(assert (= (and b!7445913 res!2987300) b!7445907))

(assert (= (and b!7445912 (not res!2987299)) b!7445908))

(assert (= (and b!7445908 res!2987297) b!7445909))

(assert (= (or b!7445913 b!7445908) bm!684305))

(assert (= (or b!7445907 b!7445909) bm!684304))

(assert (= (or b!7445906 bm!684304) bm!684303))

(declare-fun m!8055304 () Bool)

(assert (=> bm!684303 m!8055304))

(declare-fun m!8055306 () Bool)

(assert (=> b!7445911 m!8055306))

(declare-fun m!8055308 () Bool)

(assert (=> bm!684305 m!8055308))

(assert (=> bs!1926685 d!2296509))

(declare-fun bs!1926713 () Bool)

(declare-fun d!2296511 () Bool)

(assert (= bs!1926713 (and d!2296511 d!2296371)))

(declare-fun lambda!460639 () Int)

(assert (=> bs!1926713 (= lambda!460639 lambda!460622)))

(declare-fun bs!1926714 () Bool)

(assert (= bs!1926714 (and d!2296511 d!2296431)))

(assert (=> bs!1926714 (= lambda!460639 lambda!460630)))

(assert (=> d!2296511 (= (nullableZipper!3156 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951)))) (exists!4818 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460639))))

(declare-fun bs!1926715 () Bool)

(assert (= bs!1926715 d!2296511))

(assert (=> bs!1926715 m!8055096))

(declare-fun m!8055310 () Bool)

(assert (=> bs!1926715 m!8055310))

(assert (=> b!7445645 d!2296511))

(declare-fun b!7445915 () Bool)

(declare-fun e!4445619 () Bool)

(declare-fun call!684312 () Bool)

(assert (=> b!7445915 (= e!4445619 call!684312)))

(declare-fun b!7445916 () Bool)

(declare-fun e!4445621 () Bool)

(declare-fun call!684311 () Bool)

(assert (=> b!7445916 (= e!4445621 call!684311)))

(declare-fun b!7445917 () Bool)

(declare-fun e!4445618 () Bool)

(declare-fun e!4445617 () Bool)

(assert (=> b!7445917 (= e!4445618 e!4445617)))

(declare-fun res!2987302 () Bool)

(assert (=> b!7445917 (=> (not res!2987302) (not e!4445617))))

(declare-fun call!684313 () Bool)

(assert (=> b!7445917 (= res!2987302 call!684313)))

(declare-fun b!7445918 () Bool)

(assert (=> b!7445918 (= e!4445617 call!684311)))

(declare-fun b!7445919 () Bool)

(declare-fun e!4445616 () Bool)

(declare-fun e!4445615 () Bool)

(assert (=> b!7445919 (= e!4445616 e!4445615)))

(declare-fun c!1377475 () Bool)

(assert (=> b!7445919 (= c!1377475 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56710))))))

(declare-fun c!1377474 () Bool)

(declare-fun bm!684306 () Bool)

(assert (=> bm!684306 (= call!684312 (validRegex!9987 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))

(declare-fun bm!684307 () Bool)

(assert (=> bm!684307 (= call!684311 call!684312)))

(declare-fun d!2296513 () Bool)

(declare-fun res!2987303 () Bool)

(declare-fun e!4445620 () Bool)

(assert (=> d!2296513 (=> res!2987303 e!4445620)))

(assert (=> d!2296513 (= res!2987303 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56710))))))

(assert (=> d!2296513 (= (validRegex!9987 (h!78494 (exprs!8911 setElem!56710))) e!4445620)))

(declare-fun b!7445920 () Bool)

(assert (=> b!7445920 (= e!4445616 e!4445619)))

(declare-fun res!2987301 () Bool)

(assert (=> b!7445920 (= res!2987301 (not (nullable!8485 (reg!19800 (h!78494 (exprs!8911 setElem!56710))))))))

(assert (=> b!7445920 (=> (not res!2987301) (not e!4445619))))

(declare-fun b!7445921 () Bool)

(declare-fun res!2987304 () Bool)

(assert (=> b!7445921 (=> res!2987304 e!4445618)))

(assert (=> b!7445921 (= res!2987304 (not ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56710)))))))

(assert (=> b!7445921 (= e!4445615 e!4445618)))

(declare-fun b!7445922 () Bool)

(declare-fun res!2987305 () Bool)

(assert (=> b!7445922 (=> (not res!2987305) (not e!4445621))))

(assert (=> b!7445922 (= res!2987305 call!684313)))

(assert (=> b!7445922 (= e!4445615 e!4445621)))

(declare-fun b!7445923 () Bool)

(assert (=> b!7445923 (= e!4445620 e!4445616)))

(assert (=> b!7445923 (= c!1377474 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56710))))))

(declare-fun bm!684308 () Bool)

(assert (=> bm!684308 (= call!684313 (validRegex!9987 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))

(assert (= (and d!2296513 (not res!2987303)) b!7445923))

(assert (= (and b!7445923 c!1377474) b!7445920))

(assert (= (and b!7445923 (not c!1377474)) b!7445919))

(assert (= (and b!7445920 res!2987301) b!7445915))

(assert (= (and b!7445919 c!1377475) b!7445922))

(assert (= (and b!7445919 (not c!1377475)) b!7445921))

(assert (= (and b!7445922 res!2987305) b!7445916))

(assert (= (and b!7445921 (not res!2987304)) b!7445917))

(assert (= (and b!7445917 res!2987302) b!7445918))

(assert (= (or b!7445922 b!7445917) bm!684308))

(assert (= (or b!7445916 b!7445918) bm!684307))

(assert (= (or b!7445915 bm!684307) bm!684306))

(declare-fun m!8055312 () Bool)

(assert (=> bm!684306 m!8055312))

(declare-fun m!8055314 () Bool)

(assert (=> b!7445920 m!8055314))

(declare-fun m!8055316 () Bool)

(assert (=> bm!684308 m!8055316))

(assert (=> bs!1926684 d!2296513))

(declare-fun lt!2619574 () Bool)

(declare-fun d!2296515 () Bool)

(assert (=> d!2296515 (= lt!2619574 (exists!4820 (toList!11796 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) lambda!460630))))

(assert (=> d!2296515 (= lt!2619574 (choose!57551 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460630))))

(assert (=> d!2296515 (= (exists!4818 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460630) lt!2619574)))

(declare-fun bs!1926716 () Bool)

(assert (= bs!1926716 d!2296515))

(assert (=> bs!1926716 m!8055048))

(declare-fun m!8055318 () Bool)

(assert (=> bs!1926716 m!8055318))

(assert (=> bs!1926716 m!8055318))

(declare-fun m!8055320 () Bool)

(assert (=> bs!1926716 m!8055320))

(assert (=> bs!1926716 m!8055048))

(declare-fun m!8055322 () Bool)

(assert (=> bs!1926716 m!8055322))

(assert (=> d!2296431 d!2296515))

(declare-fun d!2296517 () Bool)

(declare-fun c!1377476 () Bool)

(assert (=> d!2296517 (= c!1377476 (isEmpty!41089 (tail!14854 (tail!14854 (tail!14854 s!7951)))))))

(declare-fun e!4445622 () Bool)

(assert (=> d!2296517 (= (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (tail!14854 (tail!14854 (tail!14854 s!7951)))) e!4445622)))

(declare-fun b!7445924 () Bool)

(assert (=> b!7445924 (= e!4445622 (nullableZipper!3156 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951))))))))

(declare-fun b!7445925 () Bool)

(assert (=> b!7445925 (= e!4445622 (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951))))) (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951))))))))

(assert (= (and d!2296517 c!1377476) b!7445924))

(assert (= (and d!2296517 (not c!1377476)) b!7445925))

(assert (=> d!2296517 m!8055188))

(declare-fun m!8055324 () Bool)

(assert (=> d!2296517 m!8055324))

(assert (=> b!7445924 m!8055186))

(declare-fun m!8055326 () Bool)

(assert (=> b!7445924 m!8055326))

(assert (=> b!7445925 m!8055188))

(declare-fun m!8055328 () Bool)

(assert (=> b!7445925 m!8055328))

(assert (=> b!7445925 m!8055186))

(assert (=> b!7445925 m!8055328))

(declare-fun m!8055330 () Bool)

(assert (=> b!7445925 m!8055330))

(assert (=> b!7445925 m!8055188))

(declare-fun m!8055332 () Bool)

(assert (=> b!7445925 m!8055332))

(assert (=> b!7445925 m!8055330))

(assert (=> b!7445925 m!8055332))

(declare-fun m!8055334 () Bool)

(assert (=> b!7445925 m!8055334))

(assert (=> b!7445646 d!2296517))

(declare-fun bs!1926717 () Bool)

(declare-fun d!2296519 () Bool)

(assert (= bs!1926717 (and d!2296519 d!2296381)))

(declare-fun lambda!460640 () Int)

(assert (=> bs!1926717 (= (= (head!15275 (tail!14854 (tail!14854 s!7951))) (head!15275 s!7951)) (= lambda!460640 lambda!460625))))

(declare-fun bs!1926718 () Bool)

(assert (= bs!1926718 (and d!2296519 d!2296435)))

(assert (=> bs!1926718 (= (= (head!15275 (tail!14854 (tail!14854 s!7951))) (head!15275 (tail!14854 s!7951))) (= lambda!460640 lambda!460631))))

(assert (=> d!2296519 true))

(assert (=> d!2296519 (= (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (flatMap!3247 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460640))))

(declare-fun bs!1926719 () Bool)

(assert (= bs!1926719 d!2296519))

(assert (=> bs!1926719 m!8055096))

(declare-fun m!8055336 () Bool)

(assert (=> bs!1926719 m!8055336))

(assert (=> b!7445646 d!2296519))

(declare-fun d!2296521 () Bool)

(assert (=> d!2296521 (= (head!15275 (tail!14854 (tail!14854 s!7951))) (h!78495 (tail!14854 (tail!14854 s!7951))))))

(assert (=> b!7445646 d!2296521))

(declare-fun d!2296523 () Bool)

(assert (=> d!2296523 (= (tail!14854 (tail!14854 (tail!14854 s!7951))) (t!386736 (tail!14854 (tail!14854 s!7951))))))

(assert (=> b!7445646 d!2296523))

(declare-fun d!2296525 () Bool)

(declare-fun res!2987306 () Bool)

(declare-fun e!4445623 () Bool)

(assert (=> d!2296525 (=> res!2987306 e!4445623)))

(assert (=> d!2296525 (= res!2987306 ((_ is Nil!72046) (t!386735 (exprs!8911 setElem!56710))))))

(assert (=> d!2296525 (= (forall!18245 (t!386735 (exprs!8911 setElem!56710)) lambda!460619) e!4445623)))

(declare-fun b!7445926 () Bool)

(declare-fun e!4445624 () Bool)

(assert (=> b!7445926 (= e!4445623 e!4445624)))

(declare-fun res!2987307 () Bool)

(assert (=> b!7445926 (=> (not res!2987307) (not e!4445624))))

(assert (=> b!7445926 (= res!2987307 (dynLambda!29744 lambda!460619 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))

(declare-fun b!7445927 () Bool)

(assert (=> b!7445927 (= e!4445624 (forall!18245 (t!386735 (t!386735 (exprs!8911 setElem!56710))) lambda!460619))))

(assert (= (and d!2296525 (not res!2987306)) b!7445926))

(assert (= (and b!7445926 res!2987307) b!7445927))

(declare-fun b_lambda!287779 () Bool)

(assert (=> (not b_lambda!287779) (not b!7445926)))

(declare-fun m!8055338 () Bool)

(assert (=> b!7445926 m!8055338))

(declare-fun m!8055340 () Bool)

(assert (=> b!7445927 m!8055340))

(assert (=> b!7445615 d!2296525))

(declare-fun b!7445928 () Bool)

(declare-fun e!4445629 () Bool)

(declare-fun call!684315 () Bool)

(assert (=> b!7445928 (= e!4445629 call!684315)))

(declare-fun b!7445929 () Bool)

(declare-fun e!4445631 () Bool)

(declare-fun call!684314 () Bool)

(assert (=> b!7445929 (= e!4445631 call!684314)))

(declare-fun b!7445930 () Bool)

(declare-fun e!4445628 () Bool)

(declare-fun e!4445627 () Bool)

(assert (=> b!7445930 (= e!4445628 e!4445627)))

(declare-fun res!2987309 () Bool)

(assert (=> b!7445930 (=> (not res!2987309) (not e!4445627))))

(declare-fun call!684316 () Bool)

(assert (=> b!7445930 (= res!2987309 call!684316)))

(declare-fun b!7445931 () Bool)

(assert (=> b!7445931 (= e!4445627 call!684314)))

(declare-fun b!7445932 () Bool)

(declare-fun e!4445626 () Bool)

(declare-fun e!4445625 () Bool)

(assert (=> b!7445932 (= e!4445626 e!4445625)))

(declare-fun c!1377478 () Bool)

(assert (=> b!7445932 (= c!1377478 ((_ is Union!19471) (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))

(declare-fun c!1377477 () Bool)

(declare-fun bm!684309 () Bool)

(assert (=> bm!684309 (= call!684315 (validRegex!9987 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(declare-fun bm!684310 () Bool)

(assert (=> bm!684310 (= call!684314 call!684315)))

(declare-fun d!2296527 () Bool)

(declare-fun res!2987310 () Bool)

(declare-fun e!4445630 () Bool)

(assert (=> d!2296527 (=> res!2987310 e!4445630)))

(assert (=> d!2296527 (= res!2987310 ((_ is ElementMatch!19471) (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))

(assert (=> d!2296527 (= (validRegex!9987 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) e!4445630)))

(declare-fun b!7445933 () Bool)

(assert (=> b!7445933 (= e!4445626 e!4445629)))

(declare-fun res!2987308 () Bool)

(assert (=> b!7445933 (= res!2987308 (not (nullable!8485 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(assert (=> b!7445933 (=> (not res!2987308) (not e!4445629))))

(declare-fun b!7445934 () Bool)

(declare-fun res!2987311 () Bool)

(assert (=> b!7445934 (=> res!2987311 e!4445628)))

(assert (=> b!7445934 (= res!2987311 (not ((_ is Concat!28316) (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(assert (=> b!7445934 (= e!4445625 e!4445628)))

(declare-fun b!7445935 () Bool)

(declare-fun res!2987312 () Bool)

(assert (=> b!7445935 (=> (not res!2987312) (not e!4445631))))

(assert (=> b!7445935 (= res!2987312 call!684316)))

(assert (=> b!7445935 (= e!4445625 e!4445631)))

(declare-fun b!7445936 () Bool)

(assert (=> b!7445936 (= e!4445630 e!4445626)))

(assert (=> b!7445936 (= c!1377477 ((_ is Star!19471) (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))

(declare-fun bm!684311 () Bool)

(assert (=> bm!684311 (= call!684316 (validRegex!9987 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(assert (= (and d!2296527 (not res!2987310)) b!7445936))

(assert (= (and b!7445936 c!1377477) b!7445933))

(assert (= (and b!7445936 (not c!1377477)) b!7445932))

(assert (= (and b!7445933 res!2987308) b!7445928))

(assert (= (and b!7445932 c!1377478) b!7445935))

(assert (= (and b!7445932 (not c!1377478)) b!7445934))

(assert (= (and b!7445935 res!2987312) b!7445929))

(assert (= (and b!7445934 (not res!2987311)) b!7445930))

(assert (= (and b!7445930 res!2987309) b!7445931))

(assert (= (or b!7445935 b!7445930) bm!684311))

(assert (= (or b!7445929 b!7445931) bm!684310))

(assert (= (or b!7445928 bm!684310) bm!684309))

(declare-fun m!8055342 () Bool)

(assert (=> bm!684309 m!8055342))

(declare-fun m!8055344 () Bool)

(assert (=> b!7445933 m!8055344))

(declare-fun m!8055346 () Bool)

(assert (=> bm!684311 m!8055346))

(assert (=> bm!684287 d!2296527))

(declare-fun bs!1926720 () Bool)

(declare-fun d!2296529 () Bool)

(assert (= bs!1926720 (and d!2296529 d!2296371)))

(declare-fun lambda!460643 () Int)

(assert (=> bs!1926720 (not (= lambda!460643 lambda!460622))))

(declare-fun bs!1926721 () Bool)

(assert (= bs!1926721 (and d!2296529 d!2296431)))

(assert (=> bs!1926721 (not (= lambda!460643 lambda!460630))))

(declare-fun bs!1926722 () Bool)

(assert (= bs!1926722 (and d!2296529 d!2296511)))

(assert (=> bs!1926722 (not (= lambda!460643 lambda!460639))))

(assert (=> d!2296529 true))

(declare-fun order!29603 () Int)

(declare-fun dynLambda!29746 (Int Int) Int)

(assert (=> d!2296529 (< (dynLambda!29746 order!29603 lambda!460622) (dynLambda!29746 order!29603 lambda!460643))))

(declare-fun forall!18247 (List!72173 Int) Bool)

(assert (=> d!2296529 (= (exists!4820 (toList!11796 z!3503) lambda!460622) (not (forall!18247 (toList!11796 z!3503) lambda!460643)))))

(declare-fun bs!1926723 () Bool)

(assert (= bs!1926723 d!2296529))

(assert (=> bs!1926723 m!8055154))

(declare-fun m!8055348 () Bool)

(assert (=> bs!1926723 m!8055348))

(assert (=> d!2296419 d!2296529))

(declare-fun d!2296531 () Bool)

(declare-fun e!4445634 () Bool)

(assert (=> d!2296531 e!4445634))

(declare-fun res!2987315 () Bool)

(assert (=> d!2296531 (=> (not res!2987315) (not e!4445634))))

(declare-fun lt!2619577 () List!72173)

(declare-fun noDuplicate!3129 (List!72173) Bool)

(assert (=> d!2296531 (= res!2987315 (noDuplicate!3129 lt!2619577))))

(declare-fun choose!57554 ((InoxSet Context!16822)) List!72173)

(assert (=> d!2296531 (= lt!2619577 (choose!57554 z!3503))))

(assert (=> d!2296531 (= (toList!11796 z!3503) lt!2619577)))

(declare-fun b!7445941 () Bool)

(declare-fun content!15241 (List!72173) (InoxSet Context!16822))

(assert (=> b!7445941 (= e!4445634 (= (content!15241 lt!2619577) z!3503))))

(assert (= (and d!2296531 res!2987315) b!7445941))

(declare-fun m!8055350 () Bool)

(assert (=> d!2296531 m!8055350))

(declare-fun m!8055352 () Bool)

(assert (=> d!2296531 m!8055352))

(declare-fun m!8055354 () Bool)

(assert (=> b!7445941 m!8055354))

(assert (=> d!2296419 d!2296531))

(declare-fun d!2296533 () Bool)

(declare-fun res!2987318 () Bool)

(assert (=> d!2296533 (= res!2987318 (exists!4820 (toList!11796 z!3503) lambda!460622))))

(assert (=> d!2296533 true))

(assert (=> d!2296533 (= (choose!57551 z!3503 lambda!460622) res!2987318)))

(declare-fun bs!1926724 () Bool)

(assert (= bs!1926724 d!2296533))

(assert (=> bs!1926724 m!8055154))

(assert (=> bs!1926724 m!8055154))

(assert (=> bs!1926724 m!8055156))

(assert (=> d!2296419 d!2296533))

(declare-fun b!7445942 () Bool)

(declare-fun e!4445635 () Bool)

(declare-fun tp!2155104 () Bool)

(assert (=> b!7445942 (= e!4445635 (and tp_is_empty!49201 tp!2155104))))

(assert (=> b!7445647 (= tp!2154847 e!4445635)))

(assert (= (and b!7445647 ((_ is Cons!72047) (t!386736 (t!386736 (t!386736 (t!386736 s!7951)))))) b!7445942))

(declare-fun b!7445945 () Bool)

(declare-fun e!4445636 () Bool)

(declare-fun tp!2155109 () Bool)

(assert (=> b!7445945 (= e!4445636 tp!2155109)))

(declare-fun b!7445944 () Bool)

(declare-fun tp!2155105 () Bool)

(declare-fun tp!2155107 () Bool)

(assert (=> b!7445944 (= e!4445636 (and tp!2155105 tp!2155107))))

(assert (=> b!7445658 (= tp!2154860 e!4445636)))

(declare-fun b!7445946 () Bool)

(declare-fun tp!2155106 () Bool)

(declare-fun tp!2155108 () Bool)

(assert (=> b!7445946 (= e!4445636 (and tp!2155106 tp!2155108))))

(declare-fun b!7445943 () Bool)

(assert (=> b!7445943 (= e!4445636 tp_is_empty!49201)))

(assert (= (and b!7445658 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445943))

(assert (= (and b!7445658 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445944))

(assert (= (and b!7445658 ((_ is Star!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445945))

(assert (= (and b!7445658 ((_ is Union!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445946))

(declare-fun b!7445949 () Bool)

(declare-fun e!4445637 () Bool)

(declare-fun tp!2155114 () Bool)

(assert (=> b!7445949 (= e!4445637 tp!2155114)))

(declare-fun b!7445948 () Bool)

(declare-fun tp!2155110 () Bool)

(declare-fun tp!2155112 () Bool)

(assert (=> b!7445948 (= e!4445637 (and tp!2155110 tp!2155112))))

(assert (=> b!7445658 (= tp!2154862 e!4445637)))

(declare-fun b!7445950 () Bool)

(declare-fun tp!2155111 () Bool)

(declare-fun tp!2155113 () Bool)

(assert (=> b!7445950 (= e!4445637 (and tp!2155111 tp!2155113))))

(declare-fun b!7445947 () Bool)

(assert (=> b!7445947 (= e!4445637 tp_is_empty!49201)))

(assert (= (and b!7445658 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445947))

(assert (= (and b!7445658 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445948))

(assert (= (and b!7445658 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445949))

(assert (= (and b!7445658 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445950))

(declare-fun b!7445953 () Bool)

(declare-fun e!4445638 () Bool)

(declare-fun tp!2155119 () Bool)

(assert (=> b!7445953 (= e!4445638 tp!2155119)))

(declare-fun b!7445952 () Bool)

(declare-fun tp!2155115 () Bool)

(declare-fun tp!2155117 () Bool)

(assert (=> b!7445952 (= e!4445638 (and tp!2155115 tp!2155117))))

(assert (=> b!7445674 (= tp!2154885 e!4445638)))

(declare-fun b!7445954 () Bool)

(declare-fun tp!2155116 () Bool)

(declare-fun tp!2155118 () Bool)

(assert (=> b!7445954 (= e!4445638 (and tp!2155116 tp!2155118))))

(declare-fun b!7445951 () Bool)

(assert (=> b!7445951 (= e!4445638 tp_is_empty!49201)))

(assert (= (and b!7445674 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445951))

(assert (= (and b!7445674 ((_ is Concat!28316) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445952))

(assert (= (and b!7445674 ((_ is Star!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445953))

(assert (= (and b!7445674 ((_ is Union!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445954))

(declare-fun b!7445957 () Bool)

(declare-fun e!4445639 () Bool)

(declare-fun tp!2155124 () Bool)

(assert (=> b!7445957 (= e!4445639 tp!2155124)))

(declare-fun b!7445956 () Bool)

(declare-fun tp!2155120 () Bool)

(declare-fun tp!2155122 () Bool)

(assert (=> b!7445956 (= e!4445639 (and tp!2155120 tp!2155122))))

(assert (=> b!7445675 (= tp!2154882 e!4445639)))

(declare-fun b!7445958 () Bool)

(declare-fun tp!2155121 () Bool)

(declare-fun tp!2155123 () Bool)

(assert (=> b!7445958 (= e!4445639 (and tp!2155121 tp!2155123))))

(declare-fun b!7445955 () Bool)

(assert (=> b!7445955 (= e!4445639 tp_is_empty!49201)))

(assert (= (and b!7445675 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445955))

(assert (= (and b!7445675 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445956))

(assert (= (and b!7445675 ((_ is Star!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445957))

(assert (= (and b!7445675 ((_ is Union!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445958))

(declare-fun b!7445961 () Bool)

(declare-fun e!4445640 () Bool)

(declare-fun tp!2155129 () Bool)

(assert (=> b!7445961 (= e!4445640 tp!2155129)))

(declare-fun b!7445960 () Bool)

(declare-fun tp!2155125 () Bool)

(declare-fun tp!2155127 () Bool)

(assert (=> b!7445960 (= e!4445640 (and tp!2155125 tp!2155127))))

(assert (=> b!7445675 (= tp!2154884 e!4445640)))

(declare-fun b!7445962 () Bool)

(declare-fun tp!2155126 () Bool)

(declare-fun tp!2155128 () Bool)

(assert (=> b!7445962 (= e!4445640 (and tp!2155126 tp!2155128))))

(declare-fun b!7445959 () Bool)

(assert (=> b!7445959 (= e!4445640 tp_is_empty!49201)))

(assert (= (and b!7445675 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445959))

(assert (= (and b!7445675 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445960))

(assert (= (and b!7445675 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445961))

(assert (= (and b!7445675 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445962))

(declare-fun b!7445965 () Bool)

(declare-fun e!4445641 () Bool)

(declare-fun tp!2155134 () Bool)

(assert (=> b!7445965 (= e!4445641 tp!2155134)))

(declare-fun b!7445964 () Bool)

(declare-fun tp!2155130 () Bool)

(declare-fun tp!2155132 () Bool)

(assert (=> b!7445964 (= e!4445641 (and tp!2155130 tp!2155132))))

(assert (=> b!7445669 (= tp!2154878 e!4445641)))

(declare-fun b!7445966 () Bool)

(declare-fun tp!2155131 () Bool)

(declare-fun tp!2155133 () Bool)

(assert (=> b!7445966 (= e!4445641 (and tp!2155131 tp!2155133))))

(declare-fun b!7445963 () Bool)

(assert (=> b!7445963 (= e!4445641 tp_is_empty!49201)))

(assert (= (and b!7445669 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445963))

(assert (= (and b!7445669 ((_ is Concat!28316) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445964))

(assert (= (and b!7445669 ((_ is Star!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445965))

(assert (= (and b!7445669 ((_ is Union!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445966))

(declare-fun b!7445969 () Bool)

(declare-fun e!4445642 () Bool)

(declare-fun tp!2155139 () Bool)

(assert (=> b!7445969 (= e!4445642 tp!2155139)))

(declare-fun b!7445968 () Bool)

(declare-fun tp!2155135 () Bool)

(declare-fun tp!2155137 () Bool)

(assert (=> b!7445968 (= e!4445642 (and tp!2155135 tp!2155137))))

(assert (=> b!7445660 (= tp!2154864 e!4445642)))

(declare-fun b!7445970 () Bool)

(declare-fun tp!2155136 () Bool)

(declare-fun tp!2155138 () Bool)

(assert (=> b!7445970 (= e!4445642 (and tp!2155136 tp!2155138))))

(declare-fun b!7445967 () Bool)

(assert (=> b!7445967 (= e!4445642 tp_is_empty!49201)))

(assert (= (and b!7445660 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445967))

(assert (= (and b!7445660 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445968))

(assert (= (and b!7445660 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445969))

(assert (= (and b!7445660 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445970))

(declare-fun b!7445973 () Bool)

(declare-fun e!4445643 () Bool)

(declare-fun tp!2155144 () Bool)

(assert (=> b!7445973 (= e!4445643 tp!2155144)))

(declare-fun b!7445972 () Bool)

(declare-fun tp!2155140 () Bool)

(declare-fun tp!2155142 () Bool)

(assert (=> b!7445972 (= e!4445643 (and tp!2155140 tp!2155142))))

(assert (=> b!7445660 (= tp!2154866 e!4445643)))

(declare-fun b!7445974 () Bool)

(declare-fun tp!2155141 () Bool)

(declare-fun tp!2155143 () Bool)

(assert (=> b!7445974 (= e!4445643 (and tp!2155141 tp!2155143))))

(declare-fun b!7445971 () Bool)

(assert (=> b!7445971 (= e!4445643 tp_is_empty!49201)))

(assert (= (and b!7445660 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445971))

(assert (= (and b!7445660 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445972))

(assert (= (and b!7445660 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445973))

(assert (= (and b!7445660 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445974))

(declare-fun b!7445977 () Bool)

(declare-fun e!4445644 () Bool)

(declare-fun tp!2155149 () Bool)

(assert (=> b!7445977 (= e!4445644 tp!2155149)))

(declare-fun b!7445976 () Bool)

(declare-fun tp!2155145 () Bool)

(declare-fun tp!2155147 () Bool)

(assert (=> b!7445976 (= e!4445644 (and tp!2155145 tp!2155147))))

(assert (=> b!7445670 (= tp!2154875 e!4445644)))

(declare-fun b!7445978 () Bool)

(declare-fun tp!2155146 () Bool)

(declare-fun tp!2155148 () Bool)

(assert (=> b!7445978 (= e!4445644 (and tp!2155146 tp!2155148))))

(declare-fun b!7445975 () Bool)

(assert (=> b!7445975 (= e!4445644 tp_is_empty!49201)))

(assert (= (and b!7445670 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445975))

(assert (= (and b!7445670 ((_ is Concat!28316) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445976))

(assert (= (and b!7445670 ((_ is Star!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445977))

(assert (= (and b!7445670 ((_ is Union!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445978))

(declare-fun b!7445981 () Bool)

(declare-fun e!4445645 () Bool)

(declare-fun tp!2155154 () Bool)

(assert (=> b!7445981 (= e!4445645 tp!2155154)))

(declare-fun b!7445980 () Bool)

(declare-fun tp!2155150 () Bool)

(declare-fun tp!2155152 () Bool)

(assert (=> b!7445980 (= e!4445645 (and tp!2155150 tp!2155152))))

(assert (=> b!7445670 (= tp!2154877 e!4445645)))

(declare-fun b!7445982 () Bool)

(declare-fun tp!2155151 () Bool)

(declare-fun tp!2155153 () Bool)

(assert (=> b!7445982 (= e!4445645 (and tp!2155151 tp!2155153))))

(declare-fun b!7445979 () Bool)

(assert (=> b!7445979 (= e!4445645 tp_is_empty!49201)))

(assert (= (and b!7445670 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445979))

(assert (= (and b!7445670 ((_ is Concat!28316) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445980))

(assert (= (and b!7445670 ((_ is Star!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445981))

(assert (= (and b!7445670 ((_ is Union!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7445982))

(declare-fun b!7445985 () Bool)

(declare-fun e!4445646 () Bool)

(declare-fun tp!2155159 () Bool)

(assert (=> b!7445985 (= e!4445646 tp!2155159)))

(declare-fun b!7445984 () Bool)

(declare-fun tp!2155155 () Bool)

(declare-fun tp!2155157 () Bool)

(assert (=> b!7445984 (= e!4445646 (and tp!2155155 tp!2155157))))

(assert (=> b!7445661 (= tp!2154868 e!4445646)))

(declare-fun b!7445986 () Bool)

(declare-fun tp!2155156 () Bool)

(declare-fun tp!2155158 () Bool)

(assert (=> b!7445986 (= e!4445646 (and tp!2155156 tp!2155158))))

(declare-fun b!7445983 () Bool)

(assert (=> b!7445983 (= e!4445646 tp_is_empty!49201)))

(assert (= (and b!7445661 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445983))

(assert (= (and b!7445661 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445984))

(assert (= (and b!7445661 ((_ is Star!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445985))

(assert (= (and b!7445661 ((_ is Union!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445986))

(declare-fun b!7445989 () Bool)

(declare-fun e!4445647 () Bool)

(declare-fun tp!2155164 () Bool)

(assert (=> b!7445989 (= e!4445647 tp!2155164)))

(declare-fun b!7445988 () Bool)

(declare-fun tp!2155160 () Bool)

(declare-fun tp!2155162 () Bool)

(assert (=> b!7445988 (= e!4445647 (and tp!2155160 tp!2155162))))

(assert (=> b!7445677 (= tp!2154886 e!4445647)))

(declare-fun b!7445990 () Bool)

(declare-fun tp!2155161 () Bool)

(declare-fun tp!2155163 () Bool)

(assert (=> b!7445990 (= e!4445647 (and tp!2155161 tp!2155163))))

(declare-fun b!7445987 () Bool)

(assert (=> b!7445987 (= e!4445647 tp_is_empty!49201)))

(assert (= (and b!7445677 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445987))

(assert (= (and b!7445677 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445988))

(assert (= (and b!7445677 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445989))

(assert (= (and b!7445677 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445990))

(declare-fun b!7445993 () Bool)

(declare-fun e!4445648 () Bool)

(declare-fun tp!2155169 () Bool)

(assert (=> b!7445993 (= e!4445648 tp!2155169)))

(declare-fun b!7445992 () Bool)

(declare-fun tp!2155165 () Bool)

(declare-fun tp!2155167 () Bool)

(assert (=> b!7445992 (= e!4445648 (and tp!2155165 tp!2155167))))

(assert (=> b!7445677 (= tp!2154888 e!4445648)))

(declare-fun b!7445994 () Bool)

(declare-fun tp!2155166 () Bool)

(declare-fun tp!2155168 () Bool)

(assert (=> b!7445994 (= e!4445648 (and tp!2155166 tp!2155168))))

(declare-fun b!7445991 () Bool)

(assert (=> b!7445991 (= e!4445648 tp_is_empty!49201)))

(assert (= (and b!7445677 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445991))

(assert (= (and b!7445677 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445992))

(assert (= (and b!7445677 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445993))

(assert (= (and b!7445677 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7445994))

(declare-fun b!7445997 () Bool)

(declare-fun e!4445649 () Bool)

(declare-fun tp!2155174 () Bool)

(assert (=> b!7445997 (= e!4445649 tp!2155174)))

(declare-fun b!7445996 () Bool)

(declare-fun tp!2155170 () Bool)

(declare-fun tp!2155172 () Bool)

(assert (=> b!7445996 (= e!4445649 (and tp!2155170 tp!2155172))))

(assert (=> b!7445662 (= tp!2154865 e!4445649)))

(declare-fun b!7445998 () Bool)

(declare-fun tp!2155171 () Bool)

(declare-fun tp!2155173 () Bool)

(assert (=> b!7445998 (= e!4445649 (and tp!2155171 tp!2155173))))

(declare-fun b!7445995 () Bool)

(assert (=> b!7445995 (= e!4445649 tp_is_empty!49201)))

(assert (= (and b!7445662 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445995))

(assert (= (and b!7445662 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445996))

(assert (= (and b!7445662 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445997))

(assert (= (and b!7445662 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445998))

(declare-fun b!7446001 () Bool)

(declare-fun e!4445650 () Bool)

(declare-fun tp!2155179 () Bool)

(assert (=> b!7446001 (= e!4445650 tp!2155179)))

(declare-fun b!7446000 () Bool)

(declare-fun tp!2155175 () Bool)

(declare-fun tp!2155177 () Bool)

(assert (=> b!7446000 (= e!4445650 (and tp!2155175 tp!2155177))))

(assert (=> b!7445662 (= tp!2154867 e!4445650)))

(declare-fun b!7446002 () Bool)

(declare-fun tp!2155176 () Bool)

(declare-fun tp!2155178 () Bool)

(assert (=> b!7446002 (= e!4445650 (and tp!2155176 tp!2155178))))

(declare-fun b!7445999 () Bool)

(assert (=> b!7445999 (= e!4445650 tp_is_empty!49201)))

(assert (= (and b!7445662 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7445999))

(assert (= (and b!7445662 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446000))

(assert (= (and b!7445662 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446001))

(assert (= (and b!7445662 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446002))

(declare-fun b!7446005 () Bool)

(declare-fun e!4445651 () Bool)

(declare-fun tp!2155184 () Bool)

(assert (=> b!7446005 (= e!4445651 tp!2155184)))

(declare-fun b!7446004 () Bool)

(declare-fun tp!2155180 () Bool)

(declare-fun tp!2155182 () Bool)

(assert (=> b!7446004 (= e!4445651 (and tp!2155180 tp!2155182))))

(assert (=> b!7445651 (= tp!2154852 e!4445651)))

(declare-fun b!7446006 () Bool)

(declare-fun tp!2155181 () Bool)

(declare-fun tp!2155183 () Bool)

(assert (=> b!7446006 (= e!4445651 (and tp!2155181 tp!2155183))))

(declare-fun b!7446003 () Bool)

(assert (=> b!7446003 (= e!4445651 tp_is_empty!49201)))

(assert (= (and b!7445651 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446003))

(assert (= (and b!7445651 ((_ is Concat!28316) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446004))

(assert (= (and b!7445651 ((_ is Star!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446005))

(assert (= (and b!7445651 ((_ is Union!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446006))

(declare-fun b!7446009 () Bool)

(declare-fun e!4445652 () Bool)

(declare-fun tp!2155189 () Bool)

(assert (=> b!7446009 (= e!4445652 tp!2155189)))

(declare-fun b!7446008 () Bool)

(declare-fun tp!2155185 () Bool)

(declare-fun tp!2155187 () Bool)

(assert (=> b!7446008 (= e!4445652 (and tp!2155185 tp!2155187))))

(assert (=> b!7445651 (= tp!2154854 e!4445652)))

(declare-fun b!7446010 () Bool)

(declare-fun tp!2155186 () Bool)

(declare-fun tp!2155188 () Bool)

(assert (=> b!7446010 (= e!4445652 (and tp!2155186 tp!2155188))))

(declare-fun b!7446007 () Bool)

(assert (=> b!7446007 (= e!4445652 tp_is_empty!49201)))

(assert (= (and b!7445651 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446007))

(assert (= (and b!7445651 ((_ is Concat!28316) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446008))

(assert (= (and b!7445651 ((_ is Star!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446009))

(assert (= (and b!7445651 ((_ is Union!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))) b!7446010))

(declare-fun b!7446013 () Bool)

(declare-fun e!4445653 () Bool)

(declare-fun tp!2155194 () Bool)

(assert (=> b!7446013 (= e!4445653 tp!2155194)))

(declare-fun b!7446012 () Bool)

(declare-fun tp!2155190 () Bool)

(declare-fun tp!2155192 () Bool)

(assert (=> b!7446012 (= e!4445653 (and tp!2155190 tp!2155192))))

(assert (=> b!7445652 (= tp!2154856 e!4445653)))

(declare-fun b!7446014 () Bool)

(declare-fun tp!2155191 () Bool)

(declare-fun tp!2155193 () Bool)

(assert (=> b!7446014 (= e!4445653 (and tp!2155191 tp!2155193))))

(declare-fun b!7446011 () Bool)

(assert (=> b!7446011 (= e!4445653 tp_is_empty!49201)))

(assert (= (and b!7445652 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56710))))) b!7446011))

(assert (= (and b!7445652 ((_ is Concat!28316) (reg!19800 (h!78494 (exprs!8911 setElem!56710))))) b!7446012))

(assert (= (and b!7445652 ((_ is Star!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56710))))) b!7446013))

(assert (= (and b!7445652 ((_ is Union!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56710))))) b!7446014))

(declare-fun b!7446017 () Bool)

(declare-fun e!4445654 () Bool)

(declare-fun tp!2155199 () Bool)

(assert (=> b!7446017 (= e!4445654 tp!2155199)))

(declare-fun b!7446016 () Bool)

(declare-fun tp!2155195 () Bool)

(declare-fun tp!2155197 () Bool)

(assert (=> b!7446016 (= e!4445654 (and tp!2155195 tp!2155197))))

(assert (=> b!7445668 (= tp!2154874 e!4445654)))

(declare-fun b!7446018 () Bool)

(declare-fun tp!2155196 () Bool)

(declare-fun tp!2155198 () Bool)

(assert (=> b!7446018 (= e!4445654 (and tp!2155196 tp!2155198))))

(declare-fun b!7446015 () Bool)

(assert (=> b!7446015 (= e!4445654 tp_is_empty!49201)))

(assert (= (and b!7445668 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446015))

(assert (= (and b!7445668 ((_ is Concat!28316) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446016))

(assert (= (and b!7445668 ((_ is Star!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446017))

(assert (= (and b!7445668 ((_ is Union!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446018))

(declare-fun b!7446021 () Bool)

(declare-fun e!4445655 () Bool)

(declare-fun tp!2155204 () Bool)

(assert (=> b!7446021 (= e!4445655 tp!2155204)))

(declare-fun b!7446020 () Bool)

(declare-fun tp!2155200 () Bool)

(declare-fun tp!2155202 () Bool)

(assert (=> b!7446020 (= e!4445655 (and tp!2155200 tp!2155202))))

(assert (=> b!7445668 (= tp!2154876 e!4445655)))

(declare-fun b!7446022 () Bool)

(declare-fun tp!2155201 () Bool)

(declare-fun tp!2155203 () Bool)

(assert (=> b!7446022 (= e!4445655 (and tp!2155201 tp!2155203))))

(declare-fun b!7446019 () Bool)

(assert (=> b!7446019 (= e!4445655 tp_is_empty!49201)))

(assert (= (and b!7445668 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446019))

(assert (= (and b!7445668 ((_ is Concat!28316) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446020))

(assert (= (and b!7445668 ((_ is Star!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446021))

(assert (= (and b!7445668 ((_ is Union!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) b!7446022))

(declare-fun b!7446025 () Bool)

(declare-fun e!4445656 () Bool)

(declare-fun tp!2155209 () Bool)

(assert (=> b!7446025 (= e!4445656 tp!2155209)))

(declare-fun b!7446024 () Bool)

(declare-fun tp!2155205 () Bool)

(declare-fun tp!2155207 () Bool)

(assert (=> b!7446024 (= e!4445656 (and tp!2155205 tp!2155207))))

(assert (=> b!7445653 (= tp!2154853 e!4445656)))

(declare-fun b!7446026 () Bool)

(declare-fun tp!2155206 () Bool)

(declare-fun tp!2155208 () Bool)

(assert (=> b!7446026 (= e!4445656 (and tp!2155206 tp!2155208))))

(declare-fun b!7446023 () Bool)

(assert (=> b!7446023 (= e!4445656 tp_is_empty!49201)))

(assert (= (and b!7445653 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446023))

(assert (= (and b!7445653 ((_ is Concat!28316) (regOne!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446024))

(assert (= (and b!7445653 ((_ is Star!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446025))

(assert (= (and b!7445653 ((_ is Union!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446026))

(declare-fun b!7446029 () Bool)

(declare-fun e!4445657 () Bool)

(declare-fun tp!2155214 () Bool)

(assert (=> b!7446029 (= e!4445657 tp!2155214)))

(declare-fun b!7446028 () Bool)

(declare-fun tp!2155210 () Bool)

(declare-fun tp!2155212 () Bool)

(assert (=> b!7446028 (= e!4445657 (and tp!2155210 tp!2155212))))

(assert (=> b!7445653 (= tp!2154855 e!4445657)))

(declare-fun b!7446030 () Bool)

(declare-fun tp!2155211 () Bool)

(declare-fun tp!2155213 () Bool)

(assert (=> b!7446030 (= e!4445657 (and tp!2155211 tp!2155213))))

(declare-fun b!7446027 () Bool)

(assert (=> b!7446027 (= e!4445657 tp_is_empty!49201)))

(assert (= (and b!7445653 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446027))

(assert (= (and b!7445653 ((_ is Concat!28316) (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446028))

(assert (= (and b!7445653 ((_ is Star!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446029))

(assert (= (and b!7445653 ((_ is Union!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))))) b!7446030))

(declare-fun b!7446033 () Bool)

(declare-fun e!4445658 () Bool)

(declare-fun tp!2155219 () Bool)

(assert (=> b!7446033 (= e!4445658 tp!2155219)))

(declare-fun b!7446032 () Bool)

(declare-fun tp!2155215 () Bool)

(declare-fun tp!2155217 () Bool)

(assert (=> b!7446032 (= e!4445658 (and tp!2155215 tp!2155217))))

(assert (=> b!7445678 (= tp!2154890 e!4445658)))

(declare-fun b!7446034 () Bool)

(declare-fun tp!2155216 () Bool)

(declare-fun tp!2155218 () Bool)

(assert (=> b!7446034 (= e!4445658 (and tp!2155216 tp!2155218))))

(declare-fun b!7446031 () Bool)

(assert (=> b!7446031 (= e!4445658 tp_is_empty!49201)))

(assert (= (and b!7445678 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446031))

(assert (= (and b!7445678 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446032))

(assert (= (and b!7445678 ((_ is Star!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446033))

(assert (= (and b!7445678 ((_ is Union!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446034))

(declare-fun b!7446037 () Bool)

(declare-fun e!4445659 () Bool)

(declare-fun tp!2155224 () Bool)

(assert (=> b!7446037 (= e!4445659 tp!2155224)))

(declare-fun b!7446036 () Bool)

(declare-fun tp!2155220 () Bool)

(declare-fun tp!2155222 () Bool)

(assert (=> b!7446036 (= e!4445659 (and tp!2155220 tp!2155222))))

(assert (=> b!7445679 (= tp!2154887 e!4445659)))

(declare-fun b!7446038 () Bool)

(declare-fun tp!2155221 () Bool)

(declare-fun tp!2155223 () Bool)

(assert (=> b!7446038 (= e!4445659 (and tp!2155221 tp!2155223))))

(declare-fun b!7446035 () Bool)

(assert (=> b!7446035 (= e!4445659 tp_is_empty!49201)))

(assert (= (and b!7445679 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446035))

(assert (= (and b!7445679 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446036))

(assert (= (and b!7445679 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446037))

(assert (= (and b!7445679 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446038))

(declare-fun b!7446041 () Bool)

(declare-fun e!4445660 () Bool)

(declare-fun tp!2155229 () Bool)

(assert (=> b!7446041 (= e!4445660 tp!2155229)))

(declare-fun b!7446040 () Bool)

(declare-fun tp!2155225 () Bool)

(declare-fun tp!2155227 () Bool)

(assert (=> b!7446040 (= e!4445660 (and tp!2155225 tp!2155227))))

(assert (=> b!7445679 (= tp!2154889 e!4445660)))

(declare-fun b!7446042 () Bool)

(declare-fun tp!2155226 () Bool)

(declare-fun tp!2155228 () Bool)

(assert (=> b!7446042 (= e!4445660 (and tp!2155226 tp!2155228))))

(declare-fun b!7446039 () Bool)

(assert (=> b!7446039 (= e!4445660 tp_is_empty!49201)))

(assert (= (and b!7445679 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446039))

(assert (= (and b!7445679 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446040))

(assert (= (and b!7445679 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446041))

(assert (= (and b!7445679 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446042))

(declare-fun b!7446045 () Bool)

(declare-fun e!4445661 () Bool)

(declare-fun tp!2155234 () Bool)

(assert (=> b!7446045 (= e!4445661 tp!2155234)))

(declare-fun b!7446044 () Bool)

(declare-fun tp!2155230 () Bool)

(declare-fun tp!2155232 () Bool)

(assert (=> b!7446044 (= e!4445661 (and tp!2155230 tp!2155232))))

(assert (=> b!7445654 (= tp!2154857 e!4445661)))

(declare-fun b!7446046 () Bool)

(declare-fun tp!2155231 () Bool)

(declare-fun tp!2155233 () Bool)

(assert (=> b!7446046 (= e!4445661 (and tp!2155231 tp!2155233))))

(declare-fun b!7446043 () Bool)

(assert (=> b!7446043 (= e!4445661 tp_is_empty!49201)))

(assert (= (and b!7445654 ((_ is ElementMatch!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710))))) b!7446043))

(assert (= (and b!7445654 ((_ is Concat!28316) (h!78494 (t!386735 (exprs!8911 setElem!56710))))) b!7446044))

(assert (= (and b!7445654 ((_ is Star!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710))))) b!7446045))

(assert (= (and b!7445654 ((_ is Union!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710))))) b!7446046))

(declare-fun b!7446047 () Bool)

(declare-fun e!4445662 () Bool)

(declare-fun tp!2155235 () Bool)

(declare-fun tp!2155236 () Bool)

(assert (=> b!7446047 (= e!4445662 (and tp!2155235 tp!2155236))))

(assert (=> b!7445654 (= tp!2154858 e!4445662)))

(assert (= (and b!7445654 ((_ is Cons!72046) (t!386735 (t!386735 (exprs!8911 setElem!56710))))) b!7446047))

(declare-fun condSetEmpty!56722 () Bool)

(assert (=> setNonEmpty!56714 (= condSetEmpty!56722 (= setRest!56714 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56722 () Bool)

(assert (=> setNonEmpty!56714 (= tp!2154848 setRes!56722)))

(declare-fun setIsEmpty!56722 () Bool)

(assert (=> setIsEmpty!56722 setRes!56722))

(declare-fun setNonEmpty!56722 () Bool)

(declare-fun setElem!56722 () Context!16822)

(declare-fun tp!2155237 () Bool)

(declare-fun e!4445663 () Bool)

(assert (=> setNonEmpty!56722 (= setRes!56722 (and tp!2155237 (inv!92038 setElem!56722) e!4445663))))

(declare-fun setRest!56722 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56722 (= setRest!56714 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56722 true) setRest!56722))))

(declare-fun b!7446048 () Bool)

(declare-fun tp!2155238 () Bool)

(assert (=> b!7446048 (= e!4445663 tp!2155238)))

(assert (= (and setNonEmpty!56714 condSetEmpty!56722) setIsEmpty!56722))

(assert (= (and setNonEmpty!56714 (not condSetEmpty!56722)) setNonEmpty!56722))

(assert (= setNonEmpty!56722 b!7446048))

(declare-fun m!8055356 () Bool)

(assert (=> setNonEmpty!56722 m!8055356))

(declare-fun b!7446051 () Bool)

(declare-fun e!4445664 () Bool)

(declare-fun tp!2155243 () Bool)

(assert (=> b!7446051 (= e!4445664 tp!2155243)))

(declare-fun b!7446050 () Bool)

(declare-fun tp!2155239 () Bool)

(declare-fun tp!2155241 () Bool)

(assert (=> b!7446050 (= e!4445664 (and tp!2155239 tp!2155241))))

(assert (=> b!7445671 (= tp!2154879 e!4445664)))

(declare-fun b!7446052 () Bool)

(declare-fun tp!2155240 () Bool)

(declare-fun tp!2155242 () Bool)

(assert (=> b!7446052 (= e!4445664 (and tp!2155240 tp!2155242))))

(declare-fun b!7446049 () Bool)

(assert (=> b!7446049 (= e!4445664 tp_is_empty!49201)))

(assert (= (and b!7445671 ((_ is ElementMatch!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) b!7446049))

(assert (= (and b!7445671 ((_ is Concat!28316) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) b!7446050))

(assert (= (and b!7445671 ((_ is Star!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) b!7446051))

(assert (= (and b!7445671 ((_ is Union!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) b!7446052))

(declare-fun b!7446053 () Bool)

(declare-fun e!4445665 () Bool)

(declare-fun tp!2155244 () Bool)

(declare-fun tp!2155245 () Bool)

(assert (=> b!7446053 (= e!4445665 (and tp!2155244 tp!2155245))))

(assert (=> b!7445671 (= tp!2154880 e!4445665)))

(assert (= (and b!7445671 ((_ is Cons!72046) (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) b!7446053))

(declare-fun b!7446054 () Bool)

(declare-fun e!4445666 () Bool)

(declare-fun tp!2155246 () Bool)

(declare-fun tp!2155247 () Bool)

(assert (=> b!7446054 (= e!4445666 (and tp!2155246 tp!2155247))))

(assert (=> b!7445648 (= tp!2154849 e!4445666)))

(assert (= (and b!7445648 ((_ is Cons!72046) (exprs!8911 setElem!56714))) b!7446054))

(declare-fun b!7446057 () Bool)

(declare-fun e!4445667 () Bool)

(declare-fun tp!2155252 () Bool)

(assert (=> b!7446057 (= e!4445667 tp!2155252)))

(declare-fun b!7446056 () Bool)

(declare-fun tp!2155248 () Bool)

(declare-fun tp!2155250 () Bool)

(assert (=> b!7446056 (= e!4445667 (and tp!2155248 tp!2155250))))

(assert (=> b!7445649 (= tp!2154850 e!4445667)))

(declare-fun b!7446058 () Bool)

(declare-fun tp!2155249 () Bool)

(declare-fun tp!2155251 () Bool)

(assert (=> b!7446058 (= e!4445667 (and tp!2155249 tp!2155251))))

(declare-fun b!7446055 () Bool)

(assert (=> b!7446055 (= e!4445667 tp_is_empty!49201)))

(assert (= (and b!7445649 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56712)))) b!7446055))

(assert (= (and b!7445649 ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56712)))) b!7446056))

(assert (= (and b!7445649 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56712)))) b!7446057))

(assert (= (and b!7445649 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56712)))) b!7446058))

(declare-fun b!7446059 () Bool)

(declare-fun e!4445668 () Bool)

(declare-fun tp!2155253 () Bool)

(declare-fun tp!2155254 () Bool)

(assert (=> b!7446059 (= e!4445668 (and tp!2155253 tp!2155254))))

(assert (=> b!7445649 (= tp!2154851 e!4445668)))

(assert (= (and b!7445649 ((_ is Cons!72046) (t!386735 (exprs!8911 setElem!56712)))) b!7446059))

(declare-fun b!7446062 () Bool)

(declare-fun e!4445669 () Bool)

(declare-fun tp!2155259 () Bool)

(assert (=> b!7446062 (= e!4445669 tp!2155259)))

(declare-fun b!7446061 () Bool)

(declare-fun tp!2155255 () Bool)

(declare-fun tp!2155257 () Bool)

(assert (=> b!7446061 (= e!4445669 (and tp!2155255 tp!2155257))))

(assert (=> b!7445665 (= tp!2154873 e!4445669)))

(declare-fun b!7446063 () Bool)

(declare-fun tp!2155256 () Bool)

(declare-fun tp!2155258 () Bool)

(assert (=> b!7446063 (= e!4445669 (and tp!2155256 tp!2155258))))

(declare-fun b!7446060 () Bool)

(assert (=> b!7446060 (= e!4445669 tp_is_empty!49201)))

(assert (= (and b!7445665 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446060))

(assert (= (and b!7445665 ((_ is Concat!28316) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446061))

(assert (= (and b!7445665 ((_ is Star!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446062))

(assert (= (and b!7445665 ((_ is Union!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446063))

(declare-fun b!7446066 () Bool)

(declare-fun e!4445670 () Bool)

(declare-fun tp!2155264 () Bool)

(assert (=> b!7446066 (= e!4445670 tp!2155264)))

(declare-fun b!7446065 () Bool)

(declare-fun tp!2155260 () Bool)

(declare-fun tp!2155262 () Bool)

(assert (=> b!7446065 (= e!4445670 (and tp!2155260 tp!2155262))))

(assert (=> b!7445656 (= tp!2154859 e!4445670)))

(declare-fun b!7446067 () Bool)

(declare-fun tp!2155261 () Bool)

(declare-fun tp!2155263 () Bool)

(assert (=> b!7446067 (= e!4445670 (and tp!2155261 tp!2155263))))

(declare-fun b!7446064 () Bool)

(assert (=> b!7446064 (= e!4445670 tp_is_empty!49201)))

(assert (= (and b!7445656 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446064))

(assert (= (and b!7445656 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446065))

(assert (= (and b!7445656 ((_ is Star!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446066))

(assert (= (and b!7445656 ((_ is Union!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446067))

(declare-fun b!7446070 () Bool)

(declare-fun e!4445671 () Bool)

(declare-fun tp!2155269 () Bool)

(assert (=> b!7446070 (= e!4445671 tp!2155269)))

(declare-fun b!7446069 () Bool)

(declare-fun tp!2155265 () Bool)

(declare-fun tp!2155267 () Bool)

(assert (=> b!7446069 (= e!4445671 (and tp!2155265 tp!2155267))))

(assert (=> b!7445656 (= tp!2154861 e!4445671)))

(declare-fun b!7446071 () Bool)

(declare-fun tp!2155266 () Bool)

(declare-fun tp!2155268 () Bool)

(assert (=> b!7446071 (= e!4445671 (and tp!2155266 tp!2155268))))

(declare-fun b!7446068 () Bool)

(assert (=> b!7446068 (= e!4445671 tp_is_empty!49201)))

(assert (= (and b!7445656 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446068))

(assert (= (and b!7445656 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446069))

(assert (= (and b!7445656 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446070))

(assert (= (and b!7445656 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446071))

(declare-fun b!7446074 () Bool)

(declare-fun e!4445672 () Bool)

(declare-fun tp!2155274 () Bool)

(assert (=> b!7446074 (= e!4445672 tp!2155274)))

(declare-fun b!7446073 () Bool)

(declare-fun tp!2155270 () Bool)

(declare-fun tp!2155272 () Bool)

(assert (=> b!7446073 (= e!4445672 (and tp!2155270 tp!2155272))))

(assert (=> b!7445666 (= tp!2154870 e!4445672)))

(declare-fun b!7446075 () Bool)

(declare-fun tp!2155271 () Bool)

(declare-fun tp!2155273 () Bool)

(assert (=> b!7446075 (= e!4445672 (and tp!2155271 tp!2155273))))

(declare-fun b!7446072 () Bool)

(assert (=> b!7446072 (= e!4445672 tp_is_empty!49201)))

(assert (= (and b!7445666 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446072))

(assert (= (and b!7445666 ((_ is Concat!28316) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446073))

(assert (= (and b!7445666 ((_ is Star!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446074))

(assert (= (and b!7445666 ((_ is Union!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446075))

(declare-fun b!7446078 () Bool)

(declare-fun e!4445673 () Bool)

(declare-fun tp!2155279 () Bool)

(assert (=> b!7446078 (= e!4445673 tp!2155279)))

(declare-fun b!7446077 () Bool)

(declare-fun tp!2155275 () Bool)

(declare-fun tp!2155277 () Bool)

(assert (=> b!7446077 (= e!4445673 (and tp!2155275 tp!2155277))))

(assert (=> b!7445666 (= tp!2154872 e!4445673)))

(declare-fun b!7446079 () Bool)

(declare-fun tp!2155276 () Bool)

(declare-fun tp!2155278 () Bool)

(assert (=> b!7446079 (= e!4445673 (and tp!2155276 tp!2155278))))

(declare-fun b!7446076 () Bool)

(assert (=> b!7446076 (= e!4445673 tp_is_empty!49201)))

(assert (= (and b!7445666 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446076))

(assert (= (and b!7445666 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446077))

(assert (= (and b!7445666 ((_ is Star!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446078))

(assert (= (and b!7445666 ((_ is Union!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446079))

(declare-fun b!7446082 () Bool)

(declare-fun e!4445674 () Bool)

(declare-fun tp!2155284 () Bool)

(assert (=> b!7446082 (= e!4445674 tp!2155284)))

(declare-fun b!7446081 () Bool)

(declare-fun tp!2155280 () Bool)

(declare-fun tp!2155282 () Bool)

(assert (=> b!7446081 (= e!4445674 (and tp!2155280 tp!2155282))))

(assert (=> b!7445657 (= tp!2154863 e!4445674)))

(declare-fun b!7446083 () Bool)

(declare-fun tp!2155281 () Bool)

(declare-fun tp!2155283 () Bool)

(assert (=> b!7446083 (= e!4445674 (and tp!2155281 tp!2155283))))

(declare-fun b!7446080 () Bool)

(assert (=> b!7446080 (= e!4445674 tp_is_empty!49201)))

(assert (= (and b!7445657 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446080))

(assert (= (and b!7445657 ((_ is Concat!28316) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446081))

(assert (= (and b!7445657 ((_ is Star!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446082))

(assert (= (and b!7445657 ((_ is Union!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) b!7446083))

(declare-fun b!7446086 () Bool)

(declare-fun e!4445675 () Bool)

(declare-fun tp!2155289 () Bool)

(assert (=> b!7446086 (= e!4445675 tp!2155289)))

(declare-fun b!7446085 () Bool)

(declare-fun tp!2155285 () Bool)

(declare-fun tp!2155287 () Bool)

(assert (=> b!7446085 (= e!4445675 (and tp!2155285 tp!2155287))))

(assert (=> b!7445673 (= tp!2154881 e!4445675)))

(declare-fun b!7446087 () Bool)

(declare-fun tp!2155286 () Bool)

(declare-fun tp!2155288 () Bool)

(assert (=> b!7446087 (= e!4445675 (and tp!2155286 tp!2155288))))

(declare-fun b!7446084 () Bool)

(assert (=> b!7446084 (= e!4445675 tp_is_empty!49201)))

(assert (= (and b!7445673 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446084))

(assert (= (and b!7445673 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446085))

(assert (= (and b!7445673 ((_ is Star!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446086))

(assert (= (and b!7445673 ((_ is Union!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446087))

(declare-fun b!7446090 () Bool)

(declare-fun e!4445676 () Bool)

(declare-fun tp!2155294 () Bool)

(assert (=> b!7446090 (= e!4445676 tp!2155294)))

(declare-fun b!7446089 () Bool)

(declare-fun tp!2155290 () Bool)

(declare-fun tp!2155292 () Bool)

(assert (=> b!7446089 (= e!4445676 (and tp!2155290 tp!2155292))))

(assert (=> b!7445673 (= tp!2154883 e!4445676)))

(declare-fun b!7446091 () Bool)

(declare-fun tp!2155291 () Bool)

(declare-fun tp!2155293 () Bool)

(assert (=> b!7446091 (= e!4445676 (and tp!2155291 tp!2155293))))

(declare-fun b!7446088 () Bool)

(assert (=> b!7446088 (= e!4445676 tp_is_empty!49201)))

(assert (= (and b!7445673 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446088))

(assert (= (and b!7445673 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446089))

(assert (= (and b!7445673 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446090))

(assert (= (and b!7445673 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704)))))) b!7446091))

(declare-fun b!7446094 () Bool)

(declare-fun e!4445677 () Bool)

(declare-fun tp!2155299 () Bool)

(assert (=> b!7446094 (= e!4445677 tp!2155299)))

(declare-fun b!7446093 () Bool)

(declare-fun tp!2155295 () Bool)

(declare-fun tp!2155297 () Bool)

(assert (=> b!7446093 (= e!4445677 (and tp!2155295 tp!2155297))))

(assert (=> b!7445664 (= tp!2154869 e!4445677)))

(declare-fun b!7446095 () Bool)

(declare-fun tp!2155296 () Bool)

(declare-fun tp!2155298 () Bool)

(assert (=> b!7446095 (= e!4445677 (and tp!2155296 tp!2155298))))

(declare-fun b!7446092 () Bool)

(assert (=> b!7446092 (= e!4445677 tp_is_empty!49201)))

(assert (= (and b!7445664 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446092))

(assert (= (and b!7445664 ((_ is Concat!28316) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446093))

(assert (= (and b!7445664 ((_ is Star!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446094))

(assert (= (and b!7445664 ((_ is Union!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446095))

(declare-fun b!7446098 () Bool)

(declare-fun e!4445678 () Bool)

(declare-fun tp!2155304 () Bool)

(assert (=> b!7446098 (= e!4445678 tp!2155304)))

(declare-fun b!7446097 () Bool)

(declare-fun tp!2155300 () Bool)

(declare-fun tp!2155302 () Bool)

(assert (=> b!7446097 (= e!4445678 (and tp!2155300 tp!2155302))))

(assert (=> b!7445664 (= tp!2154871 e!4445678)))

(declare-fun b!7446099 () Bool)

(declare-fun tp!2155301 () Bool)

(declare-fun tp!2155303 () Bool)

(assert (=> b!7446099 (= e!4445678 (and tp!2155301 tp!2155303))))

(declare-fun b!7446096 () Bool)

(assert (=> b!7446096 (= e!4445678 tp_is_empty!49201)))

(assert (= (and b!7445664 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446096))

(assert (= (and b!7445664 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446097))

(assert (= (and b!7445664 ((_ is Star!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446098))

(assert (= (and b!7445664 ((_ is Union!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))) b!7446099))

(declare-fun b_lambda!287781 () Bool)

(assert (= b_lambda!287779 (or d!2296369 b_lambda!287781)))

(declare-fun bs!1926725 () Bool)

(declare-fun d!2296535 () Bool)

(assert (= bs!1926725 (and d!2296535 d!2296369)))

(assert (=> bs!1926725 (= (dynLambda!29744 lambda!460619 (h!78494 (t!386735 (exprs!8911 setElem!56710)))) (validRegex!9987 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))

(declare-fun m!8055358 () Bool)

(assert (=> bs!1926725 m!8055358))

(assert (=> b!7445926 d!2296535))

(declare-fun b_lambda!287783 () Bool)

(assert (= b_lambda!287775 (or d!2296347 b_lambda!287783)))

(declare-fun bs!1926726 () Bool)

(declare-fun d!2296537 () Bool)

(assert (= bs!1926726 (and d!2296537 d!2296347)))

(assert (=> bs!1926726 (= (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) (validRegex!9987 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(declare-fun m!8055360 () Bool)

(assert (=> bs!1926726 m!8055360))

(assert (=> b!7445893 d!2296537))

(declare-fun b_lambda!287785 () Bool)

(assert (= b_lambda!287777 (or d!2296421 b_lambda!287785)))

(declare-fun bs!1926727 () Bool)

(declare-fun d!2296539 () Bool)

(assert (= bs!1926727 (and d!2296539 d!2296421)))

(assert (=> bs!1926727 (= (dynLambda!29744 lambda!460629 (h!78494 (exprs!8911 setElem!56712))) (validRegex!9987 (h!78494 (exprs!8911 setElem!56712))))))

(declare-fun m!8055362 () Bool)

(assert (=> bs!1926727 m!8055362))

(assert (=> b!7445904 d!2296539))

(check-sat (not b!7445892) (not b!7446001) (not b!7446085) (not b!7445976) (not b_lambda!287785) (not b!7445920) (not b_lambda!287745) (not b!7446025) (not b!7445894) (not bs!1926725) (not b!7446004) (not b!7446046) (not b!7446065) (not b!7446094) (not bm!684308) (not b!7446030) (not b!7445974) (not b!7446052) (not b!7445945) (not b!7446038) (not b!7446028) (not b!7445905) (not b!7446069) (not bm!684306) (not b!7445980) (not b!7445982) (not d!2296505) (not b!7446034) (not b!7446066) (not b!7445990) (not b!7446082) (not bm!684302) (not b!7446033) (not b!7446014) (not b!7445927) (not b!7446071) (not b!7445962) (not b!7446010) (not d!2296531) (not b!7446009) (not b!7446044) (not bm!684305) (not b!7445970) (not b!7446053) (not b!7446062) (not b!7446078) (not b!7446070) (not b!7446045) (not b!7445954) (not d!2296529) (not b!7446051) (not b!7445969) (not b!7445972) (not setNonEmpty!56722) (not b!7446087) (not b!7446005) (not b!7446032) (not b!7446008) (not b!7445900) (not b!7445953) (not b!7446077) (not b!7445964) (not b!7446061) (not d!2296503) (not setNonEmpty!56721) (not b!7445993) (not b!7445949) (not b_lambda!287783) (not b!7446057) (not b!7446063) (not b!7445992) (not b!7445977) (not b!7445924) (not b!7445942) (not d!2296533) (not b!7445960) (not b!7445944) (not b!7445994) (not b!7446012) (not b!7445948) (not b!7446093) (not b!7445981) (not b!7446006) (not b!7445956) (not b!7446026) (not d!2296511) (not b_lambda!287761) (not b!7446029) (not d!2296517) (not b!7446021) (not b!7445988) (not b!7445984) (not b!7446090) (not b!7446048) (not b!7446047) (not b!7445925) (not b!7445996) (not b!7445946) (not b!7445966) (not b!7446095) (not b!7446022) (not bm!684300) (not b!7446037) (not d!2296515) (not b!7446050) (not bm!684311) (not b!7445941) (not b!7446089) (not b!7445965) (not bs!1926726) (not b!7446036) (not b!7446024) (not b!7446097) (not b!7446041) (not b!7445952) (not b!7446091) (not b!7446020) (not b!7446098) (not bs!1926727) (not b!7445950) tp_is_empty!49201 (not d!2296495) (not b!7445968) (not b!7446079) (not b!7445978) (not b!7446054) (not b!7446067) (not b!7445997) (not b!7446016) (not b!7446099) (not b!7445985) (not b!7445998) (not b!7446059) (not b!7446017) (not b!7446042) (not b!7446073) (not b!7446018) (not b!7446013) (not d!2296519) (not b!7446074) (not b!7445933) (not b!7446086) (not b!7445986) (not b!7445961) (not b!7445958) (not b!7445989) (not b!7446002) (not b!7446040) (not b_lambda!287781) (not b!7445957) (not b_lambda!287759) (not bm!684309) (not b!7446081) (not b!7446000) (not b!7446083) (not bm!684303) (not b!7445911) (not b!7446056) (not b!7446058) (not b!7445973) (not b!7446075))
(check-sat)
(get-model)

(declare-fun d!2296541 () Bool)

(assert (=> d!2296541 (= (nullable!8485 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))) (nullableFct!3426 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))

(declare-fun bs!1926728 () Bool)

(assert (= bs!1926728 d!2296541))

(declare-fun m!8055364 () Bool)

(assert (=> bs!1926728 m!8055364))

(assert (=> b!7445911 d!2296541))

(declare-fun d!2296543 () Bool)

(assert (=> d!2296543 (= (flatMap!3247 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460640) (choose!57552 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460640))))

(declare-fun bs!1926729 () Bool)

(assert (= bs!1926729 d!2296543))

(assert (=> bs!1926729 m!8055096))

(declare-fun m!8055366 () Bool)

(assert (=> bs!1926729 m!8055366))

(assert (=> d!2296519 d!2296543))

(declare-fun d!2296545 () Bool)

(declare-fun c!1377481 () Bool)

(assert (=> d!2296545 (= c!1377481 ((_ is Nil!72049) lt!2619577))))

(declare-fun e!4445681 () (InoxSet Context!16822))

(assert (=> d!2296545 (= (content!15241 lt!2619577) e!4445681)))

(declare-fun b!7446104 () Bool)

(assert (=> b!7446104 (= e!4445681 ((as const (Array Context!16822 Bool)) false))))

(declare-fun b!7446105 () Bool)

(assert (=> b!7446105 (= e!4445681 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) (h!78497 lt!2619577) true) (content!15241 (t!386738 lt!2619577))))))

(assert (= (and d!2296545 c!1377481) b!7446104))

(assert (= (and d!2296545 (not c!1377481)) b!7446105))

(declare-fun m!8055368 () Bool)

(assert (=> b!7446105 m!8055368))

(declare-fun m!8055370 () Bool)

(assert (=> b!7446105 m!8055370))

(assert (=> b!7445941 d!2296545))

(declare-fun d!2296547 () Bool)

(assert (=> d!2296547 (= (nullable!8485 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) (nullableFct!3426 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(declare-fun bs!1926730 () Bool)

(assert (= bs!1926730 d!2296547))

(declare-fun m!8055372 () Bool)

(assert (=> bs!1926730 m!8055372))

(assert (=> b!7445900 d!2296547))

(declare-fun d!2296549 () Bool)

(declare-fun res!2987323 () Bool)

(declare-fun e!4445686 () Bool)

(assert (=> d!2296549 (=> res!2987323 e!4445686)))

(assert (=> d!2296549 (= res!2987323 ((_ is Nil!72049) (toList!11796 z!3503)))))

(assert (=> d!2296549 (= (forall!18247 (toList!11796 z!3503) lambda!460643) e!4445686)))

(declare-fun b!7446110 () Bool)

(declare-fun e!4445687 () Bool)

(assert (=> b!7446110 (= e!4445686 e!4445687)))

(declare-fun res!2987324 () Bool)

(assert (=> b!7446110 (=> (not res!2987324) (not e!4445687))))

(declare-fun dynLambda!29747 (Int Context!16822) Bool)

(assert (=> b!7446110 (= res!2987324 (dynLambda!29747 lambda!460643 (h!78497 (toList!11796 z!3503))))))

(declare-fun b!7446111 () Bool)

(assert (=> b!7446111 (= e!4445687 (forall!18247 (t!386738 (toList!11796 z!3503)) lambda!460643))))

(assert (= (and d!2296549 (not res!2987323)) b!7446110))

(assert (= (and b!7446110 res!2987324) b!7446111))

(declare-fun b_lambda!287787 () Bool)

(assert (=> (not b_lambda!287787) (not b!7446110)))

(declare-fun m!8055374 () Bool)

(assert (=> b!7446110 m!8055374))

(declare-fun m!8055376 () Bool)

(assert (=> b!7446111 m!8055376))

(assert (=> d!2296529 d!2296549))

(declare-fun d!2296551 () Bool)

(assert (=> d!2296551 true))

(declare-fun setRes!56723 () Bool)

(assert (=> d!2296551 setRes!56723))

(declare-fun condSetEmpty!56723 () Bool)

(declare-fun res!2987325 () (InoxSet Context!16822))

(assert (=> d!2296551 (= condSetEmpty!56723 (= res!2987325 ((as const (Array Context!16822 Bool)) false)))))

(assert (=> d!2296551 (= (choose!57552 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460631) res!2987325)))

(declare-fun setIsEmpty!56723 () Bool)

(assert (=> setIsEmpty!56723 setRes!56723))

(declare-fun tp!2155305 () Bool)

(declare-fun setElem!56723 () Context!16822)

(declare-fun e!4445688 () Bool)

(declare-fun setNonEmpty!56723 () Bool)

(assert (=> setNonEmpty!56723 (= setRes!56723 (and tp!2155305 (inv!92038 setElem!56723) e!4445688))))

(declare-fun setRest!56723 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56723 (= res!2987325 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56723 true) setRest!56723))))

(declare-fun b!7446112 () Bool)

(declare-fun tp!2155306 () Bool)

(assert (=> b!7446112 (= e!4445688 tp!2155306)))

(assert (= (and d!2296551 condSetEmpty!56723) setIsEmpty!56723))

(assert (= (and d!2296551 (not condSetEmpty!56723)) setNonEmpty!56723))

(assert (= setNonEmpty!56723 b!7446112))

(declare-fun m!8055378 () Bool)

(assert (=> setNonEmpty!56723 m!8055378))

(assert (=> d!2296505 d!2296551))

(declare-fun b!7446113 () Bool)

(declare-fun e!4445693 () Bool)

(declare-fun call!684318 () Bool)

(assert (=> b!7446113 (= e!4445693 call!684318)))

(declare-fun b!7446114 () Bool)

(declare-fun e!4445695 () Bool)

(declare-fun call!684317 () Bool)

(assert (=> b!7446114 (= e!4445695 call!684317)))

(declare-fun b!7446115 () Bool)

(declare-fun e!4445692 () Bool)

(declare-fun e!4445691 () Bool)

(assert (=> b!7446115 (= e!4445692 e!4445691)))

(declare-fun res!2987327 () Bool)

(assert (=> b!7446115 (=> (not res!2987327) (not e!4445691))))

(declare-fun call!684319 () Bool)

(assert (=> b!7446115 (= res!2987327 call!684319)))

(declare-fun b!7446116 () Bool)

(assert (=> b!7446116 (= e!4445691 call!684317)))

(declare-fun b!7446117 () Bool)

(declare-fun e!4445690 () Bool)

(declare-fun e!4445689 () Bool)

(assert (=> b!7446117 (= e!4445690 e!4445689)))

(declare-fun c!1377483 () Bool)

(assert (=> b!7446117 (= c!1377483 ((_ is Union!19471) (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))

(declare-fun c!1377482 () Bool)

(declare-fun bm!684312 () Bool)

(assert (=> bm!684312 (= call!684318 (validRegex!9987 (ite c!1377482 (reg!19800 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) (ite c!1377483 (regTwo!39455 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) (regTwo!39454 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))))))

(declare-fun bm!684313 () Bool)

(assert (=> bm!684313 (= call!684317 call!684318)))

(declare-fun d!2296553 () Bool)

(declare-fun res!2987328 () Bool)

(declare-fun e!4445694 () Bool)

(assert (=> d!2296553 (=> res!2987328 e!4445694)))

(assert (=> d!2296553 (= res!2987328 ((_ is ElementMatch!19471) (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))

(assert (=> d!2296553 (= (validRegex!9987 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) e!4445694)))

(declare-fun b!7446118 () Bool)

(assert (=> b!7446118 (= e!4445690 e!4445693)))

(declare-fun res!2987326 () Bool)

(assert (=> b!7446118 (= res!2987326 (not (nullable!8485 (reg!19800 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))))

(assert (=> b!7446118 (=> (not res!2987326) (not e!4445693))))

(declare-fun b!7446119 () Bool)

(declare-fun res!2987329 () Bool)

(assert (=> b!7446119 (=> res!2987329 e!4445692)))

(assert (=> b!7446119 (= res!2987329 (not ((_ is Concat!28316) (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))))

(assert (=> b!7446119 (= e!4445689 e!4445692)))

(declare-fun b!7446120 () Bool)

(declare-fun res!2987330 () Bool)

(assert (=> b!7446120 (=> (not res!2987330) (not e!4445695))))

(assert (=> b!7446120 (= res!2987330 call!684319)))

(assert (=> b!7446120 (= e!4445689 e!4445695)))

(declare-fun b!7446121 () Bool)

(assert (=> b!7446121 (= e!4445694 e!4445690)))

(assert (=> b!7446121 (= c!1377482 ((_ is Star!19471) (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))

(declare-fun bm!684314 () Bool)

(assert (=> bm!684314 (= call!684319 (validRegex!9987 (ite c!1377483 (regOne!39455 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) (regOne!39454 (ite c!1377472 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (ite c!1377473 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))))

(assert (= (and d!2296553 (not res!2987328)) b!7446121))

(assert (= (and b!7446121 c!1377482) b!7446118))

(assert (= (and b!7446121 (not c!1377482)) b!7446117))

(assert (= (and b!7446118 res!2987326) b!7446113))

(assert (= (and b!7446117 c!1377483) b!7446120))

(assert (= (and b!7446117 (not c!1377483)) b!7446119))

(assert (= (and b!7446120 res!2987330) b!7446114))

(assert (= (and b!7446119 (not res!2987329)) b!7446115))

(assert (= (and b!7446115 res!2987327) b!7446116))

(assert (= (or b!7446120 b!7446115) bm!684314))

(assert (= (or b!7446114 b!7446116) bm!684313))

(assert (= (or b!7446113 bm!684313) bm!684312))

(declare-fun m!8055380 () Bool)

(assert (=> bm!684312 m!8055380))

(declare-fun m!8055382 () Bool)

(assert (=> b!7446118 m!8055382))

(declare-fun m!8055384 () Bool)

(assert (=> bm!684314 m!8055384))

(assert (=> bm!684303 d!2296553))

(declare-fun d!2296555 () Bool)

(assert (=> d!2296555 (= (nullable!8485 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))) (nullableFct!3426 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))))

(declare-fun bs!1926731 () Bool)

(assert (= bs!1926731 d!2296555))

(declare-fun m!8055386 () Bool)

(assert (=> bs!1926731 m!8055386))

(assert (=> b!7445920 d!2296555))

(declare-fun b!7446122 () Bool)

(declare-fun e!4445700 () Bool)

(declare-fun call!684321 () Bool)

(assert (=> b!7446122 (= e!4445700 call!684321)))

(declare-fun b!7446123 () Bool)

(declare-fun e!4445702 () Bool)

(declare-fun call!684320 () Bool)

(assert (=> b!7446123 (= e!4445702 call!684320)))

(declare-fun b!7446124 () Bool)

(declare-fun e!4445699 () Bool)

(declare-fun e!4445698 () Bool)

(assert (=> b!7446124 (= e!4445699 e!4445698)))

(declare-fun res!2987332 () Bool)

(assert (=> b!7446124 (=> (not res!2987332) (not e!4445698))))

(declare-fun call!684322 () Bool)

(assert (=> b!7446124 (= res!2987332 call!684322)))

(declare-fun b!7446125 () Bool)

(assert (=> b!7446125 (= e!4445698 call!684320)))

(declare-fun b!7446126 () Bool)

(declare-fun e!4445697 () Bool)

(declare-fun e!4445696 () Bool)

(assert (=> b!7446126 (= e!4445697 e!4445696)))

(declare-fun c!1377485 () Bool)

(assert (=> b!7446126 (= c!1377485 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56712))))))

(declare-fun c!1377484 () Bool)

(declare-fun bm!684315 () Bool)

(assert (=> bm!684315 (= call!684321 (validRegex!9987 (ite c!1377484 (reg!19800 (h!78494 (exprs!8911 setElem!56712))) (ite c!1377485 (regTwo!39455 (h!78494 (exprs!8911 setElem!56712))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56712)))))))))

(declare-fun bm!684316 () Bool)

(assert (=> bm!684316 (= call!684320 call!684321)))

(declare-fun d!2296557 () Bool)

(declare-fun res!2987333 () Bool)

(declare-fun e!4445701 () Bool)

(assert (=> d!2296557 (=> res!2987333 e!4445701)))

(assert (=> d!2296557 (= res!2987333 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56712))))))

(assert (=> d!2296557 (= (validRegex!9987 (h!78494 (exprs!8911 setElem!56712))) e!4445701)))

(declare-fun b!7446127 () Bool)

(assert (=> b!7446127 (= e!4445697 e!4445700)))

(declare-fun res!2987331 () Bool)

(assert (=> b!7446127 (= res!2987331 (not (nullable!8485 (reg!19800 (h!78494 (exprs!8911 setElem!56712))))))))

(assert (=> b!7446127 (=> (not res!2987331) (not e!4445700))))

(declare-fun b!7446128 () Bool)

(declare-fun res!2987334 () Bool)

(assert (=> b!7446128 (=> res!2987334 e!4445699)))

(assert (=> b!7446128 (= res!2987334 (not ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56712)))))))

(assert (=> b!7446128 (= e!4445696 e!4445699)))

(declare-fun b!7446129 () Bool)

(declare-fun res!2987335 () Bool)

(assert (=> b!7446129 (=> (not res!2987335) (not e!4445702))))

(assert (=> b!7446129 (= res!2987335 call!684322)))

(assert (=> b!7446129 (= e!4445696 e!4445702)))

(declare-fun b!7446130 () Bool)

(assert (=> b!7446130 (= e!4445701 e!4445697)))

(assert (=> b!7446130 (= c!1377484 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56712))))))

(declare-fun bm!684317 () Bool)

(assert (=> bm!684317 (= call!684322 (validRegex!9987 (ite c!1377485 (regOne!39455 (h!78494 (exprs!8911 setElem!56712))) (regOne!39454 (h!78494 (exprs!8911 setElem!56712))))))))

(assert (= (and d!2296557 (not res!2987333)) b!7446130))

(assert (= (and b!7446130 c!1377484) b!7446127))

(assert (= (and b!7446130 (not c!1377484)) b!7446126))

(assert (= (and b!7446127 res!2987331) b!7446122))

(assert (= (and b!7446126 c!1377485) b!7446129))

(assert (= (and b!7446126 (not c!1377485)) b!7446128))

(assert (= (and b!7446129 res!2987335) b!7446123))

(assert (= (and b!7446128 (not res!2987334)) b!7446124))

(assert (= (and b!7446124 res!2987332) b!7446125))

(assert (= (or b!7446129 b!7446124) bm!684317))

(assert (= (or b!7446123 b!7446125) bm!684316))

(assert (= (or b!7446122 bm!684316) bm!684315))

(declare-fun m!8055388 () Bool)

(assert (=> bm!684315 m!8055388))

(declare-fun m!8055390 () Bool)

(assert (=> b!7446127 m!8055390))

(declare-fun m!8055392 () Bool)

(assert (=> bm!684317 m!8055392))

(assert (=> bs!1926727 d!2296557))

(declare-fun b!7446131 () Bool)

(declare-fun e!4445707 () Bool)

(declare-fun call!684324 () Bool)

(assert (=> b!7446131 (= e!4445707 call!684324)))

(declare-fun b!7446132 () Bool)

(declare-fun e!4445709 () Bool)

(declare-fun call!684323 () Bool)

(assert (=> b!7446132 (= e!4445709 call!684323)))

(declare-fun b!7446133 () Bool)

(declare-fun e!4445706 () Bool)

(declare-fun e!4445705 () Bool)

(assert (=> b!7446133 (= e!4445706 e!4445705)))

(declare-fun res!2987337 () Bool)

(assert (=> b!7446133 (=> (not res!2987337) (not e!4445705))))

(declare-fun call!684325 () Bool)

(assert (=> b!7446133 (= res!2987337 call!684325)))

(declare-fun b!7446134 () Bool)

(assert (=> b!7446134 (= e!4445705 call!684323)))

(declare-fun b!7446135 () Bool)

(declare-fun e!4445704 () Bool)

(declare-fun e!4445703 () Bool)

(assert (=> b!7446135 (= e!4445704 e!4445703)))

(declare-fun c!1377487 () Bool)

(assert (=> b!7446135 (= c!1377487 ((_ is Union!19471) (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))

(declare-fun c!1377486 () Bool)

(declare-fun bm!684318 () Bool)

(assert (=> bm!684318 (= call!684324 (validRegex!9987 (ite c!1377486 (reg!19800 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) (ite c!1377487 (regTwo!39455 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) (regTwo!39454 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))))))))))

(declare-fun bm!684319 () Bool)

(assert (=> bm!684319 (= call!684323 call!684324)))

(declare-fun d!2296559 () Bool)

(declare-fun res!2987338 () Bool)

(declare-fun e!4445708 () Bool)

(assert (=> d!2296559 (=> res!2987338 e!4445708)))

(assert (=> d!2296559 (= res!2987338 ((_ is ElementMatch!19471) (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))

(assert (=> d!2296559 (= (validRegex!9987 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) e!4445708)))

(declare-fun b!7446136 () Bool)

(assert (=> b!7446136 (= e!4445704 e!4445707)))

(declare-fun res!2987336 () Bool)

(assert (=> b!7446136 (= res!2987336 (not (nullable!8485 (reg!19800 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))))

(assert (=> b!7446136 (=> (not res!2987336) (not e!4445707))))

(declare-fun b!7446137 () Bool)

(declare-fun res!2987339 () Bool)

(assert (=> b!7446137 (=> res!2987339 e!4445706)))

(assert (=> b!7446137 (= res!2987339 (not ((_ is Concat!28316) (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710))))))))))

(assert (=> b!7446137 (= e!4445703 e!4445706)))

(declare-fun b!7446138 () Bool)

(declare-fun res!2987340 () Bool)

(assert (=> b!7446138 (=> (not res!2987340) (not e!4445709))))

(assert (=> b!7446138 (= res!2987340 call!684325)))

(assert (=> b!7446138 (= e!4445703 e!4445709)))

(declare-fun b!7446139 () Bool)

(assert (=> b!7446139 (= e!4445708 e!4445704)))

(assert (=> b!7446139 (= c!1377486 ((_ is Star!19471) (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))

(declare-fun bm!684320 () Bool)

(assert (=> bm!684320 (= call!684325 (validRegex!9987 (ite c!1377487 (regOne!39455 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) (regOne!39454 (ite c!1377474 (reg!19800 (h!78494 (exprs!8911 setElem!56710))) (ite c!1377475 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))))))))

(assert (= (and d!2296559 (not res!2987338)) b!7446139))

(assert (= (and b!7446139 c!1377486) b!7446136))

(assert (= (and b!7446139 (not c!1377486)) b!7446135))

(assert (= (and b!7446136 res!2987336) b!7446131))

(assert (= (and b!7446135 c!1377487) b!7446138))

(assert (= (and b!7446135 (not c!1377487)) b!7446137))

(assert (= (and b!7446138 res!2987340) b!7446132))

(assert (= (and b!7446137 (not res!2987339)) b!7446133))

(assert (= (and b!7446133 res!2987337) b!7446134))

(assert (= (or b!7446138 b!7446133) bm!684320))

(assert (= (or b!7446132 b!7446134) bm!684319))

(assert (= (or b!7446131 bm!684319) bm!684318))

(declare-fun m!8055394 () Bool)

(assert (=> bm!684318 m!8055394))

(declare-fun m!8055396 () Bool)

(assert (=> b!7446136 m!8055396))

(declare-fun m!8055398 () Bool)

(assert (=> bm!684320 m!8055398))

(assert (=> bm!684306 d!2296559))

(declare-fun d!2296561 () Bool)

(declare-fun res!2987345 () Bool)

(declare-fun e!4445714 () Bool)

(assert (=> d!2296561 (=> res!2987345 e!4445714)))

(assert (=> d!2296561 (= res!2987345 ((_ is Nil!72049) lt!2619577))))

(assert (=> d!2296561 (= (noDuplicate!3129 lt!2619577) e!4445714)))

(declare-fun b!7446144 () Bool)

(declare-fun e!4445715 () Bool)

(assert (=> b!7446144 (= e!4445714 e!4445715)))

(declare-fun res!2987346 () Bool)

(assert (=> b!7446144 (=> (not res!2987346) (not e!4445715))))

(declare-fun contains!20867 (List!72173 Context!16822) Bool)

(assert (=> b!7446144 (= res!2987346 (not (contains!20867 (t!386738 lt!2619577) (h!78497 lt!2619577))))))

(declare-fun b!7446145 () Bool)

(assert (=> b!7446145 (= e!4445715 (noDuplicate!3129 (t!386738 lt!2619577)))))

(assert (= (and d!2296561 (not res!2987345)) b!7446144))

(assert (= (and b!7446144 res!2987346) b!7446145))

(declare-fun m!8055400 () Bool)

(assert (=> b!7446144 m!8055400))

(declare-fun m!8055402 () Bool)

(assert (=> b!7446145 m!8055402))

(assert (=> d!2296531 d!2296561))

(declare-fun d!2296563 () Bool)

(declare-fun e!4445722 () Bool)

(assert (=> d!2296563 e!4445722))

(declare-fun res!2987352 () Bool)

(assert (=> d!2296563 (=> (not res!2987352) (not e!4445722))))

(declare-fun res!2987351 () List!72173)

(assert (=> d!2296563 (= res!2987352 (noDuplicate!3129 res!2987351))))

(declare-fun e!4445724 () Bool)

(assert (=> d!2296563 e!4445724))

(assert (=> d!2296563 (= (choose!57554 z!3503) res!2987351)))

(declare-fun b!7446153 () Bool)

(declare-fun e!4445723 () Bool)

(declare-fun tp!2155312 () Bool)

(assert (=> b!7446153 (= e!4445723 tp!2155312)))

(declare-fun tp!2155311 () Bool)

(declare-fun b!7446152 () Bool)

(assert (=> b!7446152 (= e!4445724 (and (inv!92038 (h!78497 res!2987351)) e!4445723 tp!2155311))))

(declare-fun b!7446154 () Bool)

(assert (=> b!7446154 (= e!4445722 (= (content!15241 res!2987351) z!3503))))

(assert (= b!7446152 b!7446153))

(assert (= (and d!2296563 ((_ is Cons!72049) res!2987351)) b!7446152))

(assert (= (and d!2296563 res!2987352) b!7446154))

(declare-fun m!8055404 () Bool)

(assert (=> d!2296563 m!8055404))

(declare-fun m!8055406 () Bool)

(assert (=> b!7446152 m!8055406))

(declare-fun m!8055408 () Bool)

(assert (=> b!7446154 m!8055408))

(assert (=> d!2296531 d!2296563))

(declare-fun b!7446155 () Bool)

(declare-fun e!4445729 () Bool)

(declare-fun call!684327 () Bool)

(assert (=> b!7446155 (= e!4445729 call!684327)))

(declare-fun b!7446156 () Bool)

(declare-fun e!4445731 () Bool)

(declare-fun call!684326 () Bool)

(assert (=> b!7446156 (= e!4445731 call!684326)))

(declare-fun b!7446157 () Bool)

(declare-fun e!4445728 () Bool)

(declare-fun e!4445727 () Bool)

(assert (=> b!7446157 (= e!4445728 e!4445727)))

(declare-fun res!2987354 () Bool)

(assert (=> b!7446157 (=> (not res!2987354) (not e!4445727))))

(declare-fun call!684328 () Bool)

(assert (=> b!7446157 (= res!2987354 call!684328)))

(declare-fun b!7446158 () Bool)

(assert (=> b!7446158 (= e!4445727 call!684326)))

(declare-fun b!7446159 () Bool)

(declare-fun e!4445726 () Bool)

(declare-fun e!4445725 () Bool)

(assert (=> b!7446159 (= e!4445726 e!4445725)))

(declare-fun c!1377489 () Bool)

(assert (=> b!7446159 (= c!1377489 ((_ is Union!19471) (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))

(declare-fun bm!684321 () Bool)

(declare-fun c!1377488 () Bool)

(assert (=> bm!684321 (= call!684327 (validRegex!9987 (ite c!1377488 (reg!19800 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) (ite c!1377489 (regTwo!39455 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))))

(declare-fun bm!684322 () Bool)

(assert (=> bm!684322 (= call!684326 call!684327)))

(declare-fun d!2296565 () Bool)

(declare-fun res!2987355 () Bool)

(declare-fun e!4445730 () Bool)

(assert (=> d!2296565 (=> res!2987355 e!4445730)))

(assert (=> d!2296565 (= res!2987355 ((_ is ElementMatch!19471) (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))

(assert (=> d!2296565 (= (validRegex!9987 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) e!4445730)))

(declare-fun b!7446160 () Bool)

(assert (=> b!7446160 (= e!4445726 e!4445729)))

(declare-fun res!2987353 () Bool)

(assert (=> b!7446160 (= res!2987353 (not (nullable!8485 (reg!19800 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))))

(assert (=> b!7446160 (=> (not res!2987353) (not e!4445729))))

(declare-fun b!7446161 () Bool)

(declare-fun res!2987356 () Bool)

(assert (=> b!7446161 (=> res!2987356 e!4445728)))

(assert (=> b!7446161 (= res!2987356 (not ((_ is Concat!28316) (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))))))

(assert (=> b!7446161 (= e!4445725 e!4445728)))

(declare-fun b!7446162 () Bool)

(declare-fun res!2987357 () Bool)

(assert (=> b!7446162 (=> (not res!2987357) (not e!4445731))))

(assert (=> b!7446162 (= res!2987357 call!684328)))

(assert (=> b!7446162 (= e!4445725 e!4445731)))

(declare-fun b!7446163 () Bool)

(assert (=> b!7446163 (= e!4445730 e!4445726)))

(assert (=> b!7446163 (= c!1377488 ((_ is Star!19471) (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))

(declare-fun bm!684323 () Bool)

(assert (=> bm!684323 (= call!684328 (validRegex!9987 (ite c!1377489 (regOne!39455 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377473 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704)))))))))))

(assert (= (and d!2296565 (not res!2987355)) b!7446163))

(assert (= (and b!7446163 c!1377488) b!7446160))

(assert (= (and b!7446163 (not c!1377488)) b!7446159))

(assert (= (and b!7446160 res!2987353) b!7446155))

(assert (= (and b!7446159 c!1377489) b!7446162))

(assert (= (and b!7446159 (not c!1377489)) b!7446161))

(assert (= (and b!7446162 res!2987357) b!7446156))

(assert (= (and b!7446161 (not res!2987356)) b!7446157))

(assert (= (and b!7446157 res!2987354) b!7446158))

(assert (= (or b!7446162 b!7446157) bm!684323))

(assert (= (or b!7446156 b!7446158) bm!684322))

(assert (= (or b!7446155 bm!684322) bm!684321))

(declare-fun m!8055410 () Bool)

(assert (=> bm!684321 m!8055410))

(declare-fun m!8055412 () Bool)

(assert (=> b!7446160 m!8055412))

(declare-fun m!8055414 () Bool)

(assert (=> bm!684323 m!8055414))

(assert (=> bm!684305 d!2296565))

(declare-fun d!2296567 () Bool)

(assert (=> d!2296567 (= (isEmpty!41089 (tail!14854 (tail!14854 (tail!14854 s!7951)))) ((_ is Nil!72047) (tail!14854 (tail!14854 (tail!14854 s!7951)))))))

(assert (=> d!2296517 d!2296567))

(declare-fun b!7446164 () Bool)

(declare-fun e!4445736 () Bool)

(declare-fun call!684330 () Bool)

(assert (=> b!7446164 (= e!4445736 call!684330)))

(declare-fun b!7446165 () Bool)

(declare-fun e!4445738 () Bool)

(declare-fun call!684329 () Bool)

(assert (=> b!7446165 (= e!4445738 call!684329)))

(declare-fun b!7446166 () Bool)

(declare-fun e!4445735 () Bool)

(declare-fun e!4445734 () Bool)

(assert (=> b!7446166 (= e!4445735 e!4445734)))

(declare-fun res!2987359 () Bool)

(assert (=> b!7446166 (=> (not res!2987359) (not e!4445734))))

(declare-fun call!684331 () Bool)

(assert (=> b!7446166 (= res!2987359 call!684331)))

(declare-fun b!7446167 () Bool)

(assert (=> b!7446167 (= e!4445734 call!684329)))

(declare-fun b!7446168 () Bool)

(declare-fun e!4445733 () Bool)

(declare-fun e!4445732 () Bool)

(assert (=> b!7446168 (= e!4445733 e!4445732)))

(declare-fun c!1377491 () Bool)

(assert (=> b!7446168 (= c!1377491 ((_ is Union!19471) (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(declare-fun c!1377490 () Bool)

(declare-fun bm!684324 () Bool)

(assert (=> bm!684324 (= call!684330 (validRegex!9987 (ite c!1377490 (reg!19800 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (ite c!1377491 (regTwo!39455 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (regTwo!39454 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))))

(declare-fun bm!684325 () Bool)

(assert (=> bm!684325 (= call!684329 call!684330)))

(declare-fun d!2296569 () Bool)

(declare-fun res!2987360 () Bool)

(declare-fun e!4445737 () Bool)

(assert (=> d!2296569 (=> res!2987360 e!4445737)))

(assert (=> d!2296569 (= res!2987360 ((_ is ElementMatch!19471) (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(assert (=> d!2296569 (= (validRegex!9987 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))) e!4445737)))

(declare-fun b!7446169 () Bool)

(assert (=> b!7446169 (= e!4445733 e!4445736)))

(declare-fun res!2987358 () Bool)

(assert (=> b!7446169 (= res!2987358 (not (nullable!8485 (reg!19800 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(assert (=> b!7446169 (=> (not res!2987358) (not e!4445736))))

(declare-fun b!7446170 () Bool)

(declare-fun res!2987361 () Bool)

(assert (=> b!7446170 (=> res!2987361 e!4445735)))

(assert (=> b!7446170 (= res!2987361 (not ((_ is Concat!28316) (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(assert (=> b!7446170 (= e!4445732 e!4445735)))

(declare-fun b!7446171 () Bool)

(declare-fun res!2987362 () Bool)

(assert (=> b!7446171 (=> (not res!2987362) (not e!4445738))))

(assert (=> b!7446171 (= res!2987362 call!684331)))

(assert (=> b!7446171 (= e!4445732 e!4445738)))

(declare-fun b!7446172 () Bool)

(assert (=> b!7446172 (= e!4445737 e!4445733)))

(assert (=> b!7446172 (= c!1377490 ((_ is Star!19471) (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(declare-fun bm!684326 () Bool)

(assert (=> bm!684326 (= call!684331 (validRegex!9987 (ite c!1377491 (regOne!39455 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (regOne!39454 (ite c!1377471 (regOne!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regOne!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(assert (= (and d!2296569 (not res!2987360)) b!7446172))

(assert (= (and b!7446172 c!1377490) b!7446169))

(assert (= (and b!7446172 (not c!1377490)) b!7446168))

(assert (= (and b!7446169 res!2987358) b!7446164))

(assert (= (and b!7446168 c!1377491) b!7446171))

(assert (= (and b!7446168 (not c!1377491)) b!7446170))

(assert (= (and b!7446171 res!2987362) b!7446165))

(assert (= (and b!7446170 (not res!2987361)) b!7446166))

(assert (= (and b!7446166 res!2987359) b!7446167))

(assert (= (or b!7446171 b!7446166) bm!684326))

(assert (= (or b!7446165 b!7446167) bm!684325))

(assert (= (or b!7446164 bm!684325) bm!684324))

(declare-fun m!8055416 () Bool)

(assert (=> bm!684324 m!8055416))

(declare-fun m!8055418 () Bool)

(assert (=> b!7446169 m!8055418))

(declare-fun m!8055420 () Bool)

(assert (=> bm!684326 m!8055420))

(assert (=> bm!684302 d!2296569))

(declare-fun d!2296571 () Bool)

(assert (=> d!2296571 (= (nullable!8485 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))) (nullableFct!3426 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun bs!1926732 () Bool)

(assert (= bs!1926732 d!2296571))

(declare-fun m!8055422 () Bool)

(assert (=> bs!1926732 m!8055422))

(assert (=> b!7445933 d!2296571))

(declare-fun d!2296573 () Bool)

(declare-fun c!1377492 () Bool)

(assert (=> d!2296573 (= c!1377492 (isEmpty!41089 (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951))))))))

(declare-fun e!4445739 () Bool)

(assert (=> d!2296573 (= (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951))))) (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951))))) e!4445739)))

(declare-fun b!7446173 () Bool)

(assert (=> b!7446173 (= e!4445739 (nullableZipper!3156 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951)))))))))

(declare-fun b!7446174 () Bool)

(assert (=> b!7446174 (= e!4445739 (matchZipper!3829 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951))))) (head!15275 (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951)))))) (tail!14854 (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951)))))))))

(assert (= (and d!2296573 c!1377492) b!7446173))

(assert (= (and d!2296573 (not c!1377492)) b!7446174))

(assert (=> d!2296573 m!8055332))

(declare-fun m!8055424 () Bool)

(assert (=> d!2296573 m!8055424))

(assert (=> b!7446173 m!8055330))

(declare-fun m!8055426 () Bool)

(assert (=> b!7446173 m!8055426))

(assert (=> b!7446174 m!8055332))

(declare-fun m!8055428 () Bool)

(assert (=> b!7446174 m!8055428))

(assert (=> b!7446174 m!8055330))

(assert (=> b!7446174 m!8055428))

(declare-fun m!8055430 () Bool)

(assert (=> b!7446174 m!8055430))

(assert (=> b!7446174 m!8055332))

(declare-fun m!8055432 () Bool)

(assert (=> b!7446174 m!8055432))

(assert (=> b!7446174 m!8055430))

(assert (=> b!7446174 m!8055432))

(declare-fun m!8055434 () Bool)

(assert (=> b!7446174 m!8055434))

(assert (=> b!7445925 d!2296573))

(declare-fun bs!1926733 () Bool)

(declare-fun d!2296575 () Bool)

(assert (= bs!1926733 (and d!2296575 d!2296381)))

(declare-fun lambda!460644 () Int)

(assert (=> bs!1926733 (= (= (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951)))) (head!15275 s!7951)) (= lambda!460644 lambda!460625))))

(declare-fun bs!1926734 () Bool)

(assert (= bs!1926734 (and d!2296575 d!2296435)))

(assert (=> bs!1926734 (= (= (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 s!7951))) (= lambda!460644 lambda!460631))))

(declare-fun bs!1926735 () Bool)

(assert (= bs!1926735 (and d!2296575 d!2296519)))

(assert (=> bs!1926735 (= (= (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (= lambda!460644 lambda!460640))))

(assert (=> d!2296575 true))

(assert (=> d!2296575 (= (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951))))) (flatMap!3247 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) lambda!460644))))

(declare-fun bs!1926736 () Bool)

(assert (= bs!1926736 d!2296575))

(assert (=> bs!1926736 m!8055186))

(declare-fun m!8055436 () Bool)

(assert (=> bs!1926736 m!8055436))

(assert (=> b!7445925 d!2296575))

(declare-fun d!2296577 () Bool)

(assert (=> d!2296577 (= (head!15275 (tail!14854 (tail!14854 (tail!14854 s!7951)))) (h!78495 (tail!14854 (tail!14854 (tail!14854 s!7951)))))))

(assert (=> b!7445925 d!2296577))

(declare-fun d!2296579 () Bool)

(assert (=> d!2296579 (= (tail!14854 (tail!14854 (tail!14854 (tail!14854 s!7951)))) (t!386736 (tail!14854 (tail!14854 (tail!14854 s!7951)))))))

(assert (=> b!7445925 d!2296579))

(assert (=> d!2296533 d!2296529))

(assert (=> d!2296533 d!2296531))

(declare-fun b!7446175 () Bool)

(declare-fun e!4445744 () Bool)

(declare-fun call!684333 () Bool)

(assert (=> b!7446175 (= e!4445744 call!684333)))

(declare-fun b!7446176 () Bool)

(declare-fun e!4445746 () Bool)

(declare-fun call!684332 () Bool)

(assert (=> b!7446176 (= e!4445746 call!684332)))

(declare-fun b!7446177 () Bool)

(declare-fun e!4445743 () Bool)

(declare-fun e!4445742 () Bool)

(assert (=> b!7446177 (= e!4445743 e!4445742)))

(declare-fun res!2987364 () Bool)

(assert (=> b!7446177 (=> (not res!2987364) (not e!4445742))))

(declare-fun call!684334 () Bool)

(assert (=> b!7446177 (= res!2987364 call!684334)))

(declare-fun b!7446178 () Bool)

(assert (=> b!7446178 (= e!4445742 call!684332)))

(declare-fun b!7446179 () Bool)

(declare-fun e!4445741 () Bool)

(declare-fun e!4445740 () Bool)

(assert (=> b!7446179 (= e!4445741 e!4445740)))

(declare-fun c!1377494 () Bool)

(assert (=> b!7446179 (= c!1377494 ((_ is Union!19471) (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))

(declare-fun bm!684327 () Bool)

(declare-fun c!1377493 () Bool)

(assert (=> bm!684327 (= call!684333 (validRegex!9987 (ite c!1377493 (reg!19800 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) (ite c!1377494 (regTwo!39455 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) (regTwo!39454 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))))))))

(declare-fun bm!684328 () Bool)

(assert (=> bm!684328 (= call!684332 call!684333)))

(declare-fun d!2296581 () Bool)

(declare-fun res!2987365 () Bool)

(declare-fun e!4445745 () Bool)

(assert (=> d!2296581 (=> res!2987365 e!4445745)))

(assert (=> d!2296581 (= res!2987365 ((_ is ElementMatch!19471) (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))

(assert (=> d!2296581 (= (validRegex!9987 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) e!4445745)))

(declare-fun b!7446180 () Bool)

(assert (=> b!7446180 (= e!4445741 e!4445744)))

(declare-fun res!2987363 () Bool)

(assert (=> b!7446180 (= res!2987363 (not (nullable!8485 (reg!19800 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))))

(assert (=> b!7446180 (=> (not res!2987363) (not e!4445744))))

(declare-fun b!7446181 () Bool)

(declare-fun res!2987366 () Bool)

(assert (=> b!7446181 (=> res!2987366 e!4445743)))

(assert (=> b!7446181 (= res!2987366 (not ((_ is Concat!28316) (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))))))

(assert (=> b!7446181 (= e!4445740 e!4445743)))

(declare-fun b!7446182 () Bool)

(declare-fun res!2987367 () Bool)

(assert (=> b!7446182 (=> (not res!2987367) (not e!4445746))))

(assert (=> b!7446182 (= res!2987367 call!684334)))

(assert (=> b!7446182 (= e!4445740 e!4445746)))

(declare-fun b!7446183 () Bool)

(assert (=> b!7446183 (= e!4445745 e!4445741)))

(assert (=> b!7446183 (= c!1377493 ((_ is Star!19471) (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))

(declare-fun bm!684329 () Bool)

(assert (=> bm!684329 (= call!684334 (validRegex!9987 (ite c!1377494 (regOne!39455 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))) (regOne!39454 (ite c!1377475 (regOne!39455 (h!78494 (exprs!8911 setElem!56710))) (regOne!39454 (h!78494 (exprs!8911 setElem!56710))))))))))

(assert (= (and d!2296581 (not res!2987365)) b!7446183))

(assert (= (and b!7446183 c!1377493) b!7446180))

(assert (= (and b!7446183 (not c!1377493)) b!7446179))

(assert (= (and b!7446180 res!2987363) b!7446175))

(assert (= (and b!7446179 c!1377494) b!7446182))

(assert (= (and b!7446179 (not c!1377494)) b!7446181))

(assert (= (and b!7446182 res!2987367) b!7446176))

(assert (= (and b!7446181 (not res!2987366)) b!7446177))

(assert (= (and b!7446177 res!2987364) b!7446178))

(assert (= (or b!7446182 b!7446177) bm!684329))

(assert (= (or b!7446176 b!7446178) bm!684328))

(assert (= (or b!7446175 bm!684328) bm!684327))

(declare-fun m!8055438 () Bool)

(assert (=> bm!684327 m!8055438))

(declare-fun m!8055440 () Bool)

(assert (=> b!7446180 m!8055440))

(declare-fun m!8055442 () Bool)

(assert (=> bm!684329 m!8055442))

(assert (=> bm!684308 d!2296581))

(declare-fun b!7446184 () Bool)

(declare-fun e!4445751 () Bool)

(declare-fun call!684336 () Bool)

(assert (=> b!7446184 (= e!4445751 call!684336)))

(declare-fun b!7446185 () Bool)

(declare-fun e!4445753 () Bool)

(declare-fun call!684335 () Bool)

(assert (=> b!7446185 (= e!4445753 call!684335)))

(declare-fun b!7446186 () Bool)

(declare-fun e!4445750 () Bool)

(declare-fun e!4445749 () Bool)

(assert (=> b!7446186 (= e!4445750 e!4445749)))

(declare-fun res!2987369 () Bool)

(assert (=> b!7446186 (=> (not res!2987369) (not e!4445749))))

(declare-fun call!684337 () Bool)

(assert (=> b!7446186 (= res!2987369 call!684337)))

(declare-fun b!7446187 () Bool)

(assert (=> b!7446187 (= e!4445749 call!684335)))

(declare-fun b!7446188 () Bool)

(declare-fun e!4445748 () Bool)

(declare-fun e!4445747 () Bool)

(assert (=> b!7446188 (= e!4445748 e!4445747)))

(declare-fun c!1377496 () Bool)

(assert (=> b!7446188 (= c!1377496 ((_ is Union!19471) (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(declare-fun c!1377495 () Bool)

(declare-fun bm!684330 () Bool)

(assert (=> bm!684330 (= call!684336 (validRegex!9987 (ite c!1377495 (reg!19800 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (ite c!1377496 (regTwo!39455 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (regTwo!39454 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))))

(declare-fun bm!684331 () Bool)

(assert (=> bm!684331 (= call!684335 call!684336)))

(declare-fun d!2296583 () Bool)

(declare-fun res!2987370 () Bool)

(declare-fun e!4445752 () Bool)

(assert (=> d!2296583 (=> res!2987370 e!4445752)))

(assert (=> d!2296583 (= res!2987370 ((_ is ElementMatch!19471) (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(assert (=> d!2296583 (= (validRegex!9987 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))) e!4445752)))

(declare-fun b!7446189 () Bool)

(assert (=> b!7446189 (= e!4445748 e!4445751)))

(declare-fun res!2987368 () Bool)

(assert (=> b!7446189 (= res!2987368 (not (nullable!8485 (reg!19800 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(assert (=> b!7446189 (=> (not res!2987368) (not e!4445751))))

(declare-fun b!7446190 () Bool)

(declare-fun res!2987371 () Bool)

(assert (=> b!7446190 (=> res!2987371 e!4445750)))

(assert (=> b!7446190 (= res!2987371 (not ((_ is Concat!28316) (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(assert (=> b!7446190 (= e!4445747 e!4445750)))

(declare-fun b!7446191 () Bool)

(declare-fun res!2987372 () Bool)

(assert (=> b!7446191 (=> (not res!2987372) (not e!4445753))))

(assert (=> b!7446191 (= res!2987372 call!684337)))

(assert (=> b!7446191 (= e!4445747 e!4445753)))

(declare-fun b!7446192 () Bool)

(assert (=> b!7446192 (= e!4445752 e!4445748)))

(assert (=> b!7446192 (= c!1377495 ((_ is Star!19471) (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(declare-fun bm!684332 () Bool)

(assert (=> bm!684332 (= call!684337 (validRegex!9987 (ite c!1377496 (regOne!39455 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))) (regOne!39454 (ite c!1377477 (reg!19800 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (ite c!1377478 (regTwo!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regTwo!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(assert (= (and d!2296583 (not res!2987370)) b!7446192))

(assert (= (and b!7446192 c!1377495) b!7446189))

(assert (= (and b!7446192 (not c!1377495)) b!7446188))

(assert (= (and b!7446189 res!2987368) b!7446184))

(assert (= (and b!7446188 c!1377496) b!7446191))

(assert (= (and b!7446188 (not c!1377496)) b!7446190))

(assert (= (and b!7446191 res!2987372) b!7446185))

(assert (= (and b!7446190 (not res!2987371)) b!7446186))

(assert (= (and b!7446186 res!2987369) b!7446187))

(assert (= (or b!7446191 b!7446186) bm!684332))

(assert (= (or b!7446185 b!7446187) bm!684331))

(assert (= (or b!7446184 bm!684331) bm!684330))

(declare-fun m!8055444 () Bool)

(assert (=> bm!684330 m!8055444))

(declare-fun m!8055446 () Bool)

(assert (=> b!7446189 m!8055446))

(declare-fun m!8055448 () Bool)

(assert (=> bm!684332 m!8055448))

(assert (=> bm!684309 d!2296583))

(declare-fun bs!1926737 () Bool)

(declare-fun d!2296585 () Bool)

(assert (= bs!1926737 (and d!2296585 d!2296371)))

(declare-fun lambda!460645 () Int)

(assert (=> bs!1926737 (= lambda!460645 lambda!460622)))

(declare-fun bs!1926738 () Bool)

(assert (= bs!1926738 (and d!2296585 d!2296431)))

(assert (=> bs!1926738 (= lambda!460645 lambda!460630)))

(declare-fun bs!1926739 () Bool)

(assert (= bs!1926739 (and d!2296585 d!2296511)))

(assert (=> bs!1926739 (= lambda!460645 lambda!460639)))

(declare-fun bs!1926740 () Bool)

(assert (= bs!1926740 (and d!2296585 d!2296529)))

(assert (=> bs!1926740 (not (= lambda!460645 lambda!460643))))

(assert (=> d!2296585 (= (nullableZipper!3156 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951))))) (exists!4818 (derivationStepZipper!3721 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) (head!15275 (tail!14854 (tail!14854 s!7951)))) lambda!460645))))

(declare-fun bs!1926741 () Bool)

(assert (= bs!1926741 d!2296585))

(assert (=> bs!1926741 m!8055186))

(declare-fun m!8055450 () Bool)

(assert (=> bs!1926741 m!8055450))

(assert (=> b!7445924 d!2296585))

(declare-fun d!2296587 () Bool)

(declare-fun res!2987373 () Bool)

(declare-fun e!4445754 () Bool)

(assert (=> d!2296587 (=> res!2987373 e!4445754)))

(assert (=> d!2296587 (= res!2987373 ((_ is Nil!72046) (t!386735 (exprs!8911 setElem!56712))))))

(assert (=> d!2296587 (= (forall!18245 (t!386735 (exprs!8911 setElem!56712)) lambda!460629) e!4445754)))

(declare-fun b!7446193 () Bool)

(declare-fun e!4445755 () Bool)

(assert (=> b!7446193 (= e!4445754 e!4445755)))

(declare-fun res!2987374 () Bool)

(assert (=> b!7446193 (=> (not res!2987374) (not e!4445755))))

(assert (=> b!7446193 (= res!2987374 (dynLambda!29744 lambda!460629 (h!78494 (t!386735 (exprs!8911 setElem!56712)))))))

(declare-fun b!7446194 () Bool)

(assert (=> b!7446194 (= e!4445755 (forall!18245 (t!386735 (t!386735 (exprs!8911 setElem!56712))) lambda!460629))))

(assert (= (and d!2296587 (not res!2987373)) b!7446193))

(assert (= (and b!7446193 res!2987374) b!7446194))

(declare-fun b_lambda!287789 () Bool)

(assert (=> (not b_lambda!287789) (not b!7446193)))

(declare-fun m!8055452 () Bool)

(assert (=> b!7446193 m!8055452))

(declare-fun m!8055454 () Bool)

(assert (=> b!7446194 m!8055454))

(assert (=> b!7445905 d!2296587))

(declare-fun bs!1926742 () Bool)

(declare-fun d!2296589 () Bool)

(assert (= bs!1926742 (and d!2296589 d!2296347)))

(declare-fun lambda!460646 () Int)

(assert (=> bs!1926742 (= lambda!460646 lambda!460611)))

(declare-fun bs!1926743 () Bool)

(assert (= bs!1926743 (and d!2296589 d!2296369)))

(assert (=> bs!1926743 (= lambda!460646 lambda!460619)))

(declare-fun bs!1926744 () Bool)

(assert (= bs!1926744 (and d!2296589 d!2296421)))

(assert (=> bs!1926744 (= lambda!460646 lambda!460629)))

(declare-fun bs!1926745 () Bool)

(assert (= bs!1926745 (and d!2296589 d!2296503)))

(assert (=> bs!1926745 (= lambda!460646 lambda!460638)))

(assert (=> d!2296589 (= (inv!92038 setElem!56721) (forall!18245 (exprs!8911 setElem!56721) lambda!460646))))

(declare-fun bs!1926746 () Bool)

(assert (= bs!1926746 d!2296589))

(declare-fun m!8055456 () Bool)

(assert (=> bs!1926746 m!8055456))

(assert (=> setNonEmpty!56721 d!2296589))

(declare-fun d!2296591 () Bool)

(declare-fun res!2987375 () Bool)

(declare-fun e!4445756 () Bool)

(assert (=> d!2296591 (=> res!2987375 e!4445756)))

(assert (=> d!2296591 (= res!2987375 ((_ is Nil!72046) (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(assert (=> d!2296591 (= (forall!18245 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))) lambda!460611) e!4445756)))

(declare-fun b!7446195 () Bool)

(declare-fun e!4445757 () Bool)

(assert (=> b!7446195 (= e!4445756 e!4445757)))

(declare-fun res!2987376 () Bool)

(assert (=> b!7446195 (=> (not res!2987376) (not e!4445757))))

(assert (=> b!7446195 (= res!2987376 (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))))))

(declare-fun b!7446196 () Bool)

(assert (=> b!7446196 (= e!4445757 (forall!18245 (t!386735 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) lambda!460611))))

(assert (= (and d!2296591 (not res!2987375)) b!7446195))

(assert (= (and b!7446195 res!2987376) b!7446196))

(declare-fun b_lambda!287791 () Bool)

(assert (=> (not b_lambda!287791) (not b!7446195)))

(declare-fun m!8055458 () Bool)

(assert (=> b!7446195 m!8055458))

(declare-fun m!8055460 () Bool)

(assert (=> b!7446196 m!8055460))

(assert (=> b!7445894 d!2296591))

(declare-fun b!7446197 () Bool)

(declare-fun e!4445762 () Bool)

(declare-fun call!684339 () Bool)

(assert (=> b!7446197 (= e!4445762 call!684339)))

(declare-fun b!7446198 () Bool)

(declare-fun e!4445764 () Bool)

(declare-fun call!684338 () Bool)

(assert (=> b!7446198 (= e!4445764 call!684338)))

(declare-fun b!7446199 () Bool)

(declare-fun e!4445761 () Bool)

(declare-fun e!4445760 () Bool)

(assert (=> b!7446199 (= e!4445761 e!4445760)))

(declare-fun res!2987378 () Bool)

(assert (=> b!7446199 (=> (not res!2987378) (not e!4445760))))

(declare-fun call!684340 () Bool)

(assert (=> b!7446199 (= res!2987378 call!684340)))

(declare-fun b!7446200 () Bool)

(assert (=> b!7446200 (= e!4445760 call!684338)))

(declare-fun b!7446201 () Bool)

(declare-fun e!4445759 () Bool)

(declare-fun e!4445758 () Bool)

(assert (=> b!7446201 (= e!4445759 e!4445758)))

(declare-fun c!1377498 () Bool)

(assert (=> b!7446201 (= c!1377498 ((_ is Union!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))

(declare-fun bm!684333 () Bool)

(declare-fun c!1377497 () Bool)

(assert (=> bm!684333 (= call!684339 (validRegex!9987 (ite c!1377497 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))) (ite c!1377498 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710))))))))))

(declare-fun bm!684334 () Bool)

(assert (=> bm!684334 (= call!684338 call!684339)))

(declare-fun d!2296593 () Bool)

(declare-fun res!2987379 () Bool)

(declare-fun e!4445763 () Bool)

(assert (=> d!2296593 (=> res!2987379 e!4445763)))

(assert (=> d!2296593 (= res!2987379 ((_ is ElementMatch!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))

(assert (=> d!2296593 (= (validRegex!9987 (h!78494 (t!386735 (exprs!8911 setElem!56710)))) e!4445763)))

(declare-fun b!7446202 () Bool)

(assert (=> b!7446202 (= e!4445759 e!4445762)))

(declare-fun res!2987377 () Bool)

(assert (=> b!7446202 (= res!2987377 (not (nullable!8485 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))))

(assert (=> b!7446202 (=> (not res!2987377) (not e!4445762))))

(declare-fun b!7446203 () Bool)

(declare-fun res!2987380 () Bool)

(assert (=> b!7446203 (=> res!2987380 e!4445761)))

(assert (=> b!7446203 (= res!2987380 (not ((_ is Concat!28316) (h!78494 (t!386735 (exprs!8911 setElem!56710))))))))

(assert (=> b!7446203 (= e!4445758 e!4445761)))

(declare-fun b!7446204 () Bool)

(declare-fun res!2987381 () Bool)

(assert (=> b!7446204 (=> (not res!2987381) (not e!4445764))))

(assert (=> b!7446204 (= res!2987381 call!684340)))

(assert (=> b!7446204 (= e!4445758 e!4445764)))

(declare-fun b!7446205 () Bool)

(assert (=> b!7446205 (= e!4445763 e!4445759)))

(assert (=> b!7446205 (= c!1377497 ((_ is Star!19471) (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))

(declare-fun bm!684335 () Bool)

(assert (=> bm!684335 (= call!684340 (validRegex!9987 (ite c!1377498 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))))))

(assert (= (and d!2296593 (not res!2987379)) b!7446205))

(assert (= (and b!7446205 c!1377497) b!7446202))

(assert (= (and b!7446205 (not c!1377497)) b!7446201))

(assert (= (and b!7446202 res!2987377) b!7446197))

(assert (= (and b!7446201 c!1377498) b!7446204))

(assert (= (and b!7446201 (not c!1377498)) b!7446203))

(assert (= (and b!7446204 res!2987381) b!7446198))

(assert (= (and b!7446203 (not res!2987380)) b!7446199))

(assert (= (and b!7446199 res!2987378) b!7446200))

(assert (= (or b!7446204 b!7446199) bm!684335))

(assert (= (or b!7446198 b!7446200) bm!684334))

(assert (= (or b!7446197 bm!684334) bm!684333))

(declare-fun m!8055462 () Bool)

(assert (=> bm!684333 m!8055462))

(declare-fun m!8055464 () Bool)

(assert (=> b!7446202 m!8055464))

(declare-fun m!8055466 () Bool)

(assert (=> bm!684335 m!8055466))

(assert (=> bs!1926725 d!2296593))

(declare-fun b!7446206 () Bool)

(declare-fun e!4445769 () Bool)

(declare-fun call!684342 () Bool)

(assert (=> b!7446206 (= e!4445769 call!684342)))

(declare-fun b!7446207 () Bool)

(declare-fun e!4445771 () Bool)

(declare-fun call!684341 () Bool)

(assert (=> b!7446207 (= e!4445771 call!684341)))

(declare-fun b!7446208 () Bool)

(declare-fun e!4445768 () Bool)

(declare-fun e!4445767 () Bool)

(assert (=> b!7446208 (= e!4445768 e!4445767)))

(declare-fun res!2987383 () Bool)

(assert (=> b!7446208 (=> (not res!2987383) (not e!4445767))))

(declare-fun call!684343 () Bool)

(assert (=> b!7446208 (= res!2987383 call!684343)))

(declare-fun b!7446209 () Bool)

(assert (=> b!7446209 (= e!4445767 call!684341)))

(declare-fun b!7446210 () Bool)

(declare-fun e!4445766 () Bool)

(declare-fun e!4445765 () Bool)

(assert (=> b!7446210 (= e!4445766 e!4445765)))

(declare-fun c!1377500 () Bool)

(assert (=> b!7446210 (= c!1377500 ((_ is Union!19471) (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(declare-fun c!1377499 () Bool)

(declare-fun bm!684336 () Bool)

(assert (=> bm!684336 (= call!684342 (validRegex!9987 (ite c!1377499 (reg!19800 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) (ite c!1377500 (regTwo!39455 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) (regTwo!39454 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(declare-fun bm!684337 () Bool)

(assert (=> bm!684337 (= call!684341 call!684342)))

(declare-fun d!2296595 () Bool)

(declare-fun res!2987384 () Bool)

(declare-fun e!4445770 () Bool)

(assert (=> d!2296595 (=> res!2987384 e!4445770)))

(assert (=> d!2296595 (= res!2987384 ((_ is ElementMatch!19471) (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(assert (=> d!2296595 (= (validRegex!9987 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) e!4445770)))

(declare-fun b!7446211 () Bool)

(assert (=> b!7446211 (= e!4445766 e!4445769)))

(declare-fun res!2987382 () Bool)

(assert (=> b!7446211 (= res!2987382 (not (nullable!8485 (reg!19800 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(assert (=> b!7446211 (=> (not res!2987382) (not e!4445769))))

(declare-fun b!7446212 () Bool)

(declare-fun res!2987385 () Bool)

(assert (=> b!7446212 (=> res!2987385 e!4445768)))

(assert (=> b!7446212 (= res!2987385 (not ((_ is Concat!28316) (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))

(assert (=> b!7446212 (= e!4445765 e!4445768)))

(declare-fun b!7446213 () Bool)

(declare-fun res!2987386 () Bool)

(assert (=> b!7446213 (=> (not res!2987386) (not e!4445771))))

(assert (=> b!7446213 (= res!2987386 call!684343)))

(assert (=> b!7446213 (= e!4445765 e!4445771)))

(declare-fun b!7446214 () Bool)

(assert (=> b!7446214 (= e!4445770 e!4445766)))

(assert (=> b!7446214 (= c!1377499 ((_ is Star!19471) (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))

(declare-fun bm!684338 () Bool)

(assert (=> bm!684338 (= call!684343 (validRegex!9987 (ite c!1377500 (regOne!39455 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) (regOne!39454 (ite c!1377478 (regOne!39455 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))) (regOne!39454 (ite c!1377459 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))) (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(assert (= (and d!2296595 (not res!2987384)) b!7446214))

(assert (= (and b!7446214 c!1377499) b!7446211))

(assert (= (and b!7446214 (not c!1377499)) b!7446210))

(assert (= (and b!7446211 res!2987382) b!7446206))

(assert (= (and b!7446210 c!1377500) b!7446213))

(assert (= (and b!7446210 (not c!1377500)) b!7446212))

(assert (= (and b!7446213 res!2987386) b!7446207))

(assert (= (and b!7446212 (not res!2987385)) b!7446208))

(assert (= (and b!7446208 res!2987383) b!7446209))

(assert (= (or b!7446213 b!7446208) bm!684338))

(assert (= (or b!7446207 b!7446209) bm!684337))

(assert (= (or b!7446206 bm!684337) bm!684336))

(declare-fun m!8055468 () Bool)

(assert (=> bm!684336 m!8055468))

(declare-fun m!8055470 () Bool)

(assert (=> b!7446211 m!8055470))

(declare-fun m!8055472 () Bool)

(assert (=> bm!684338 m!8055472))

(assert (=> bm!684311 d!2296595))

(declare-fun lt!2619578 () Bool)

(declare-fun d!2296597 () Bool)

(assert (=> d!2296597 (= lt!2619578 (exists!4820 (toList!11796 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951)))) lambda!460639))))

(assert (=> d!2296597 (= lt!2619578 (choose!57551 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460639))))

(assert (=> d!2296597 (= (exists!4818 (derivationStepZipper!3721 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) (head!15275 (tail!14854 s!7951))) lambda!460639) lt!2619578)))

(declare-fun bs!1926747 () Bool)

(assert (= bs!1926747 d!2296597))

(assert (=> bs!1926747 m!8055096))

(declare-fun m!8055474 () Bool)

(assert (=> bs!1926747 m!8055474))

(assert (=> bs!1926747 m!8055474))

(declare-fun m!8055476 () Bool)

(assert (=> bs!1926747 m!8055476))

(assert (=> bs!1926747 m!8055096))

(declare-fun m!8055478 () Bool)

(assert (=> bs!1926747 m!8055478))

(assert (=> d!2296511 d!2296597))

(declare-fun d!2296599 () Bool)

(declare-fun res!2987387 () Bool)

(declare-fun e!4445772 () Bool)

(assert (=> d!2296599 (=> res!2987387 e!4445772)))

(assert (=> d!2296599 (= res!2987387 ((_ is Nil!72046) (exprs!8911 setElem!56714)))))

(assert (=> d!2296599 (= (forall!18245 (exprs!8911 setElem!56714) lambda!460638) e!4445772)))

(declare-fun b!7446215 () Bool)

(declare-fun e!4445773 () Bool)

(assert (=> b!7446215 (= e!4445772 e!4445773)))

(declare-fun res!2987388 () Bool)

(assert (=> b!7446215 (=> (not res!2987388) (not e!4445773))))

(assert (=> b!7446215 (= res!2987388 (dynLambda!29744 lambda!460638 (h!78494 (exprs!8911 setElem!56714))))))

(declare-fun b!7446216 () Bool)

(assert (=> b!7446216 (= e!4445773 (forall!18245 (t!386735 (exprs!8911 setElem!56714)) lambda!460638))))

(assert (= (and d!2296599 (not res!2987387)) b!7446215))

(assert (= (and b!7446215 res!2987388) b!7446216))

(declare-fun b_lambda!287793 () Bool)

(assert (=> (not b_lambda!287793) (not b!7446215)))

(declare-fun m!8055480 () Bool)

(assert (=> b!7446215 m!8055480))

(declare-fun m!8055482 () Bool)

(assert (=> b!7446216 m!8055482))

(assert (=> d!2296503 d!2296599))

(declare-fun bs!1926748 () Bool)

(declare-fun d!2296601 () Bool)

(assert (= bs!1926748 (and d!2296601 d!2296511)))

(declare-fun lambda!460647 () Int)

(assert (=> bs!1926748 (not (= lambda!460647 lambda!460639))))

(declare-fun bs!1926749 () Bool)

(assert (= bs!1926749 (and d!2296601 d!2296431)))

(assert (=> bs!1926749 (not (= lambda!460647 lambda!460630))))

(declare-fun bs!1926750 () Bool)

(assert (= bs!1926750 (and d!2296601 d!2296585)))

(assert (=> bs!1926750 (not (= lambda!460647 lambda!460645))))

(declare-fun bs!1926751 () Bool)

(assert (= bs!1926751 (and d!2296601 d!2296529)))

(assert (=> bs!1926751 (= (= lambda!460630 lambda!460622) (= lambda!460647 lambda!460643))))

(declare-fun bs!1926752 () Bool)

(assert (= bs!1926752 (and d!2296601 d!2296371)))

(assert (=> bs!1926752 (not (= lambda!460647 lambda!460622))))

(assert (=> d!2296601 true))

(assert (=> d!2296601 (< (dynLambda!29746 order!29603 lambda!460630) (dynLambda!29746 order!29603 lambda!460647))))

(assert (=> d!2296601 (= (exists!4820 (toList!11796 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) lambda!460630) (not (forall!18247 (toList!11796 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) lambda!460647)))))

(declare-fun bs!1926753 () Bool)

(assert (= bs!1926753 d!2296601))

(assert (=> bs!1926753 m!8055318))

(declare-fun m!8055484 () Bool)

(assert (=> bs!1926753 m!8055484))

(assert (=> d!2296515 d!2296601))

(declare-fun d!2296603 () Bool)

(declare-fun e!4445774 () Bool)

(assert (=> d!2296603 e!4445774))

(declare-fun res!2987389 () Bool)

(assert (=> d!2296603 (=> (not res!2987389) (not e!4445774))))

(declare-fun lt!2619579 () List!72173)

(assert (=> d!2296603 (= res!2987389 (noDuplicate!3129 lt!2619579))))

(assert (=> d!2296603 (= lt!2619579 (choose!57554 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))))))

(assert (=> d!2296603 (= (toList!11796 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) lt!2619579)))

(declare-fun b!7446217 () Bool)

(assert (=> b!7446217 (= e!4445774 (= (content!15241 lt!2619579) (derivationStepZipper!3721 z!3503 (head!15275 s!7951))))))

(assert (= (and d!2296603 res!2987389) b!7446217))

(declare-fun m!8055486 () Bool)

(assert (=> d!2296603 m!8055486))

(assert (=> d!2296603 m!8055048))

(declare-fun m!8055488 () Bool)

(assert (=> d!2296603 m!8055488))

(declare-fun m!8055490 () Bool)

(assert (=> b!7446217 m!8055490))

(assert (=> d!2296515 d!2296603))

(declare-fun res!2987390 () Bool)

(declare-fun d!2296605 () Bool)

(assert (=> d!2296605 (= res!2987390 (exists!4820 (toList!11796 (derivationStepZipper!3721 z!3503 (head!15275 s!7951))) lambda!460630))))

(assert (=> d!2296605 true))

(assert (=> d!2296605 (= (choose!57551 (derivationStepZipper!3721 z!3503 (head!15275 s!7951)) lambda!460630) res!2987390)))

(declare-fun bs!1926754 () Bool)

(assert (= bs!1926754 d!2296605))

(assert (=> bs!1926754 m!8055048))

(assert (=> bs!1926754 m!8055318))

(assert (=> bs!1926754 m!8055318))

(assert (=> bs!1926754 m!8055320))

(assert (=> d!2296515 d!2296605))

(declare-fun b!7446232 () Bool)

(declare-fun e!4445787 () Bool)

(declare-fun call!684349 () Bool)

(assert (=> b!7446232 (= e!4445787 call!684349)))

(declare-fun b!7446233 () Bool)

(declare-fun e!4445792 () Bool)

(declare-fun e!4445790 () Bool)

(assert (=> b!7446233 (= e!4445792 e!4445790)))

(declare-fun res!2987404 () Bool)

(assert (=> b!7446233 (= res!2987404 call!684349)))

(assert (=> b!7446233 (=> (not res!2987404) (not e!4445790))))

(declare-fun b!7446234 () Bool)

(declare-fun e!4445789 () Bool)

(declare-fun e!4445788 () Bool)

(assert (=> b!7446234 (= e!4445789 e!4445788)))

(declare-fun res!2987405 () Bool)

(assert (=> b!7446234 (=> (not res!2987405) (not e!4445788))))

(assert (=> b!7446234 (= res!2987405 (and (not ((_ is EmptyLang!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704))))) (not ((_ is ElementMatch!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun b!7446235 () Bool)

(declare-fun call!684348 () Bool)

(assert (=> b!7446235 (= e!4445790 call!684348)))

(declare-fun b!7446236 () Bool)

(assert (=> b!7446236 (= e!4445792 e!4445787)))

(declare-fun res!2987401 () Bool)

(assert (=> b!7446236 (= res!2987401 call!684348)))

(assert (=> b!7446236 (=> res!2987401 e!4445787)))

(declare-fun bm!684343 () Bool)

(declare-fun c!1377503 () Bool)

(assert (=> bm!684343 (= call!684349 (nullable!8485 (ite c!1377503 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun b!7446237 () Bool)

(declare-fun e!4445791 () Bool)

(assert (=> b!7446237 (= e!4445788 e!4445791)))

(declare-fun res!2987402 () Bool)

(assert (=> b!7446237 (=> res!2987402 e!4445791)))

(assert (=> b!7446237 (= res!2987402 ((_ is Star!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))

(declare-fun d!2296607 () Bool)

(declare-fun res!2987403 () Bool)

(assert (=> d!2296607 (=> res!2987403 e!4445789)))

(assert (=> d!2296607 (= res!2987403 ((_ is EmptyExpr!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))

(assert (=> d!2296607 (= (nullableFct!3426 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))) e!4445789)))

(declare-fun bm!684344 () Bool)

(assert (=> bm!684344 (= call!684348 (nullable!8485 (ite c!1377503 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))))

(declare-fun b!7446238 () Bool)

(assert (=> b!7446238 (= e!4445791 e!4445792)))

(assert (=> b!7446238 (= c!1377503 ((_ is Union!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56704)))))))

(assert (= (and d!2296607 (not res!2987403)) b!7446234))

(assert (= (and b!7446234 res!2987405) b!7446237))

(assert (= (and b!7446237 (not res!2987402)) b!7446238))

(assert (= (and b!7446238 c!1377503) b!7446236))

(assert (= (and b!7446238 (not c!1377503)) b!7446233))

(assert (= (and b!7446236 (not res!2987401)) b!7446232))

(assert (= (and b!7446233 res!2987404) b!7446235))

(assert (= (or b!7446236 b!7446235) bm!684344))

(assert (= (or b!7446232 b!7446233) bm!684343))

(declare-fun m!8055492 () Bool)

(assert (=> bm!684343 m!8055492))

(declare-fun m!8055494 () Bool)

(assert (=> bm!684344 m!8055494))

(assert (=> d!2296495 d!2296607))

(declare-fun bs!1926755 () Bool)

(declare-fun d!2296609 () Bool)

(assert (= bs!1926755 (and d!2296609 d!2296347)))

(declare-fun lambda!460648 () Int)

(assert (=> bs!1926755 (= lambda!460648 lambda!460611)))

(declare-fun bs!1926756 () Bool)

(assert (= bs!1926756 (and d!2296609 d!2296589)))

(assert (=> bs!1926756 (= lambda!460648 lambda!460646)))

(declare-fun bs!1926757 () Bool)

(assert (= bs!1926757 (and d!2296609 d!2296421)))

(assert (=> bs!1926757 (= lambda!460648 lambda!460629)))

(declare-fun bs!1926758 () Bool)

(assert (= bs!1926758 (and d!2296609 d!2296369)))

(assert (=> bs!1926758 (= lambda!460648 lambda!460619)))

(declare-fun bs!1926759 () Bool)

(assert (= bs!1926759 (and d!2296609 d!2296503)))

(assert (=> bs!1926759 (= lambda!460648 lambda!460638)))

(assert (=> d!2296609 (= (inv!92038 setElem!56722) (forall!18245 (exprs!8911 setElem!56722) lambda!460648))))

(declare-fun bs!1926760 () Bool)

(assert (= bs!1926760 d!2296609))

(declare-fun m!8055496 () Bool)

(assert (=> bs!1926760 m!8055496))

(assert (=> setNonEmpty!56722 d!2296609))

(declare-fun b!7446239 () Bool)

(declare-fun e!4445797 () Bool)

(declare-fun call!684351 () Bool)

(assert (=> b!7446239 (= e!4445797 call!684351)))

(declare-fun b!7446240 () Bool)

(declare-fun e!4445799 () Bool)

(declare-fun call!684350 () Bool)

(assert (=> b!7446240 (= e!4445799 call!684350)))

(declare-fun b!7446241 () Bool)

(declare-fun e!4445796 () Bool)

(declare-fun e!4445795 () Bool)

(assert (=> b!7446241 (= e!4445796 e!4445795)))

(declare-fun res!2987407 () Bool)

(assert (=> b!7446241 (=> (not res!2987407) (not e!4445795))))

(declare-fun call!684352 () Bool)

(assert (=> b!7446241 (= res!2987407 call!684352)))

(declare-fun b!7446242 () Bool)

(assert (=> b!7446242 (= e!4445795 call!684350)))

(declare-fun b!7446243 () Bool)

(declare-fun e!4445794 () Bool)

(declare-fun e!4445793 () Bool)

(assert (=> b!7446243 (= e!4445794 e!4445793)))

(declare-fun c!1377505 () Bool)

(assert (=> b!7446243 (= c!1377505 ((_ is Union!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(declare-fun c!1377504 () Bool)

(declare-fun bm!684345 () Bool)

(assert (=> bm!684345 (= call!684351 (validRegex!9987 (ite c!1377504 (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) (ite c!1377505 (regTwo!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) (regTwo!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))))))))

(declare-fun bm!684346 () Bool)

(assert (=> bm!684346 (= call!684350 call!684351)))

(declare-fun d!2296611 () Bool)

(declare-fun res!2987408 () Bool)

(declare-fun e!4445798 () Bool)

(assert (=> d!2296611 (=> res!2987408 e!4445798)))

(assert (=> d!2296611 (= res!2987408 ((_ is ElementMatch!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(assert (=> d!2296611 (= (validRegex!9987 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) e!4445798)))

(declare-fun b!7446244 () Bool)

(assert (=> b!7446244 (= e!4445794 e!4445797)))

(declare-fun res!2987406 () Bool)

(assert (=> b!7446244 (= res!2987406 (not (nullable!8485 (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))))

(assert (=> b!7446244 (=> (not res!2987406) (not e!4445797))))

(declare-fun b!7446245 () Bool)

(declare-fun res!2987409 () Bool)

(assert (=> b!7446245 (=> res!2987409 e!4445796)))

(assert (=> b!7446245 (= res!2987409 (not ((_ is Concat!28316) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))))))

(assert (=> b!7446245 (= e!4445793 e!4445796)))

(declare-fun b!7446246 () Bool)

(declare-fun res!2987410 () Bool)

(assert (=> b!7446246 (=> (not res!2987410) (not e!4445799))))

(assert (=> b!7446246 (= res!2987410 call!684352)))

(assert (=> b!7446246 (= e!4445793 e!4445799)))

(declare-fun b!7446247 () Bool)

(assert (=> b!7446247 (= e!4445798 e!4445794)))

(assert (=> b!7446247 (= c!1377504 ((_ is Star!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))

(declare-fun bm!684347 () Bool)

(assert (=> bm!684347 (= call!684352 (validRegex!9987 (ite c!1377505 (regOne!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))) (regOne!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))))))

(assert (= (and d!2296611 (not res!2987408)) b!7446247))

(assert (= (and b!7446247 c!1377504) b!7446244))

(assert (= (and b!7446247 (not c!1377504)) b!7446243))

(assert (= (and b!7446244 res!2987406) b!7446239))

(assert (= (and b!7446243 c!1377505) b!7446246))

(assert (= (and b!7446243 (not c!1377505)) b!7446245))

(assert (= (and b!7446246 res!2987410) b!7446240))

(assert (= (and b!7446245 (not res!2987409)) b!7446241))

(assert (= (and b!7446241 res!2987407) b!7446242))

(assert (= (or b!7446246 b!7446241) bm!684347))

(assert (= (or b!7446240 b!7446242) bm!684346))

(assert (= (or b!7446239 bm!684346) bm!684345))

(declare-fun m!8055498 () Bool)

(assert (=> bm!684345 m!8055498))

(declare-fun m!8055500 () Bool)

(assert (=> b!7446244 m!8055500))

(declare-fun m!8055502 () Bool)

(assert (=> bm!684347 m!8055502))

(assert (=> bs!1926726 d!2296611))

(declare-fun b!7446248 () Bool)

(declare-fun e!4445804 () Bool)

(declare-fun call!684354 () Bool)

(assert (=> b!7446248 (= e!4445804 call!684354)))

(declare-fun b!7446249 () Bool)

(declare-fun e!4445806 () Bool)

(declare-fun call!684353 () Bool)

(assert (=> b!7446249 (= e!4445806 call!684353)))

(declare-fun b!7446250 () Bool)

(declare-fun e!4445803 () Bool)

(declare-fun e!4445802 () Bool)

(assert (=> b!7446250 (= e!4445803 e!4445802)))

(declare-fun res!2987412 () Bool)

(assert (=> b!7446250 (=> (not res!2987412) (not e!4445802))))

(declare-fun call!684355 () Bool)

(assert (=> b!7446250 (= res!2987412 call!684355)))

(declare-fun b!7446251 () Bool)

(assert (=> b!7446251 (= e!4445802 call!684353)))

(declare-fun b!7446252 () Bool)

(declare-fun e!4445801 () Bool)

(declare-fun e!4445800 () Bool)

(assert (=> b!7446252 (= e!4445801 e!4445800)))

(declare-fun c!1377507 () Bool)

(assert (=> b!7446252 (= c!1377507 ((_ is Union!19471) (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(declare-fun c!1377506 () Bool)

(declare-fun bm!684348 () Bool)

(assert (=> bm!684348 (= call!684354 (validRegex!9987 (ite c!1377506 (reg!19800 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))) (ite c!1377507 (regTwo!39455 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))) (regTwo!39454 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))))

(declare-fun bm!684349 () Bool)

(assert (=> bm!684349 (= call!684353 call!684354)))

(declare-fun d!2296613 () Bool)

(declare-fun res!2987413 () Bool)

(declare-fun e!4445805 () Bool)

(assert (=> d!2296613 (=> res!2987413 e!4445805)))

(assert (=> d!2296613 (= res!2987413 ((_ is ElementMatch!19471) (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(assert (=> d!2296613 (= (validRegex!9987 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))) e!4445805)))

(declare-fun b!7446253 () Bool)

(assert (=> b!7446253 (= e!4445801 e!4445804)))

(declare-fun res!2987411 () Bool)

(assert (=> b!7446253 (= res!2987411 (not (nullable!8485 (reg!19800 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))))

(assert (=> b!7446253 (=> (not res!2987411) (not e!4445804))))

(declare-fun b!7446254 () Bool)

(declare-fun res!2987414 () Bool)

(assert (=> b!7446254 (=> res!2987414 e!4445803)))

(assert (=> b!7446254 (= res!2987414 (not ((_ is Concat!28316) (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))))))))))

(assert (=> b!7446254 (= e!4445800 e!4445803)))

(declare-fun b!7446255 () Bool)

(declare-fun res!2987415 () Bool)

(assert (=> b!7446255 (=> (not res!2987415) (not e!4445806))))

(assert (=> b!7446255 (= res!2987415 call!684355)))

(assert (=> b!7446255 (= e!4445800 e!4445806)))

(declare-fun b!7446256 () Bool)

(assert (=> b!7446256 (= e!4445805 e!4445801)))

(assert (=> b!7446256 (= c!1377506 ((_ is Star!19471) (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))

(declare-fun bm!684350 () Bool)

(assert (=> bm!684350 (= call!684355 (validRegex!9987 (ite c!1377507 (regOne!39455 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))) (regOne!39454 (ite c!1377470 (reg!19800 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (ite c!1377471 (regTwo!39455 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704)))))) (regTwo!39454 (ite c!1377458 (reg!19800 (h!78494 (exprs!8911 setElem!56704))) (ite c!1377459 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))) (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))))))))))

(assert (= (and d!2296613 (not res!2987413)) b!7446256))

(assert (= (and b!7446256 c!1377506) b!7446253))

(assert (= (and b!7446256 (not c!1377506)) b!7446252))

(assert (= (and b!7446253 res!2987411) b!7446248))

(assert (= (and b!7446252 c!1377507) b!7446255))

(assert (= (and b!7446252 (not c!1377507)) b!7446254))

(assert (= (and b!7446255 res!2987415) b!7446249))

(assert (= (and b!7446254 (not res!2987414)) b!7446250))

(assert (= (and b!7446250 res!2987412) b!7446251))

(assert (= (or b!7446255 b!7446250) bm!684350))

(assert (= (or b!7446249 b!7446251) bm!684349))

(assert (= (or b!7446248 bm!684349) bm!684348))

(declare-fun m!8055504 () Bool)

(assert (=> bm!684348 m!8055504))

(declare-fun m!8055506 () Bool)

(assert (=> b!7446253 m!8055506))

(declare-fun m!8055508 () Bool)

(assert (=> bm!684350 m!8055508))

(assert (=> bm!684300 d!2296613))

(declare-fun d!2296615 () Bool)

(declare-fun res!2987416 () Bool)

(declare-fun e!4445807 () Bool)

(assert (=> d!2296615 (=> res!2987416 e!4445807)))

(assert (=> d!2296615 (= res!2987416 ((_ is Nil!72046) (t!386735 (t!386735 (exprs!8911 setElem!56710)))))))

(assert (=> d!2296615 (= (forall!18245 (t!386735 (t!386735 (exprs!8911 setElem!56710))) lambda!460619) e!4445807)))

(declare-fun b!7446257 () Bool)

(declare-fun e!4445808 () Bool)

(assert (=> b!7446257 (= e!4445807 e!4445808)))

(declare-fun res!2987417 () Bool)

(assert (=> b!7446257 (=> (not res!2987417) (not e!4445808))))

(assert (=> b!7446257 (= res!2987417 (dynLambda!29744 lambda!460619 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710))))))))

(declare-fun b!7446258 () Bool)

(assert (=> b!7446258 (= e!4445808 (forall!18245 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56710)))) lambda!460619))))

(assert (= (and d!2296615 (not res!2987416)) b!7446257))

(assert (= (and b!7446257 res!2987417) b!7446258))

(declare-fun b_lambda!287795 () Bool)

(assert (=> (not b_lambda!287795) (not b!7446257)))

(declare-fun m!8055510 () Bool)

(assert (=> b!7446257 m!8055510))

(declare-fun m!8055512 () Bool)

(assert (=> b!7446258 m!8055512))

(assert (=> b!7445927 d!2296615))

(declare-fun b!7446261 () Bool)

(declare-fun e!4445809 () Bool)

(declare-fun tp!2155317 () Bool)

(assert (=> b!7446261 (= e!4445809 tp!2155317)))

(declare-fun b!7446260 () Bool)

(declare-fun tp!2155313 () Bool)

(declare-fun tp!2155315 () Bool)

(assert (=> b!7446260 (= e!4445809 (and tp!2155313 tp!2155315))))

(assert (=> b!7445984 (= tp!2155155 e!4445809)))

(declare-fun b!7446262 () Bool)

(declare-fun tp!2155314 () Bool)

(declare-fun tp!2155316 () Bool)

(assert (=> b!7446262 (= e!4445809 (and tp!2155314 tp!2155316))))

(declare-fun b!7446259 () Bool)

(assert (=> b!7446259 (= e!4445809 tp_is_empty!49201)))

(assert (= (and b!7445984 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446259))

(assert (= (and b!7445984 ((_ is Concat!28316) (regOne!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446260))

(assert (= (and b!7445984 ((_ is Star!19471) (regOne!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446261))

(assert (= (and b!7445984 ((_ is Union!19471) (regOne!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446262))

(declare-fun b!7446265 () Bool)

(declare-fun e!4445810 () Bool)

(declare-fun tp!2155322 () Bool)

(assert (=> b!7446265 (= e!4445810 tp!2155322)))

(declare-fun b!7446264 () Bool)

(declare-fun tp!2155318 () Bool)

(declare-fun tp!2155320 () Bool)

(assert (=> b!7446264 (= e!4445810 (and tp!2155318 tp!2155320))))

(assert (=> b!7445984 (= tp!2155157 e!4445810)))

(declare-fun b!7446266 () Bool)

(declare-fun tp!2155319 () Bool)

(declare-fun tp!2155321 () Bool)

(assert (=> b!7446266 (= e!4445810 (and tp!2155319 tp!2155321))))

(declare-fun b!7446263 () Bool)

(assert (=> b!7446263 (= e!4445810 tp_is_empty!49201)))

(assert (= (and b!7445984 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446263))

(assert (= (and b!7445984 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446264))

(assert (= (and b!7445984 ((_ is Star!19471) (regTwo!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446265))

(assert (= (and b!7445984 ((_ is Union!19471) (regTwo!39454 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446266))

(declare-fun b!7446269 () Bool)

(declare-fun e!4445811 () Bool)

(declare-fun tp!2155327 () Bool)

(assert (=> b!7446269 (= e!4445811 tp!2155327)))

(declare-fun b!7446268 () Bool)

(declare-fun tp!2155323 () Bool)

(declare-fun tp!2155325 () Bool)

(assert (=> b!7446268 (= e!4445811 (and tp!2155323 tp!2155325))))

(assert (=> b!7445993 (= tp!2155169 e!4445811)))

(declare-fun b!7446270 () Bool)

(declare-fun tp!2155324 () Bool)

(declare-fun tp!2155326 () Bool)

(assert (=> b!7446270 (= e!4445811 (and tp!2155324 tp!2155326))))

(declare-fun b!7446267 () Bool)

(assert (=> b!7446267 (= e!4445811 tp_is_empty!49201)))

(assert (= (and b!7445993 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446267))

(assert (= (and b!7445993 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446268))

(assert (= (and b!7445993 ((_ is Star!19471) (reg!19800 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446269))

(assert (= (and b!7445993 ((_ is Union!19471) (reg!19800 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446270))

(declare-fun b!7446273 () Bool)

(declare-fun e!4445812 () Bool)

(declare-fun tp!2155332 () Bool)

(assert (=> b!7446273 (= e!4445812 tp!2155332)))

(declare-fun b!7446272 () Bool)

(declare-fun tp!2155328 () Bool)

(declare-fun tp!2155330 () Bool)

(assert (=> b!7446272 (= e!4445812 (and tp!2155328 tp!2155330))))

(assert (=> b!7446002 (= tp!2155176 e!4445812)))

(declare-fun b!7446274 () Bool)

(declare-fun tp!2155329 () Bool)

(declare-fun tp!2155331 () Bool)

(assert (=> b!7446274 (= e!4445812 (and tp!2155329 tp!2155331))))

(declare-fun b!7446271 () Bool)

(assert (=> b!7446271 (= e!4445812 tp_is_empty!49201)))

(assert (= (and b!7446002 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446271))

(assert (= (and b!7446002 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446272))

(assert (= (and b!7446002 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446273))

(assert (= (and b!7446002 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446274))

(declare-fun b!7446277 () Bool)

(declare-fun e!4445813 () Bool)

(declare-fun tp!2155337 () Bool)

(assert (=> b!7446277 (= e!4445813 tp!2155337)))

(declare-fun b!7446276 () Bool)

(declare-fun tp!2155333 () Bool)

(declare-fun tp!2155335 () Bool)

(assert (=> b!7446276 (= e!4445813 (and tp!2155333 tp!2155335))))

(assert (=> b!7446002 (= tp!2155178 e!4445813)))

(declare-fun b!7446278 () Bool)

(declare-fun tp!2155334 () Bool)

(declare-fun tp!2155336 () Bool)

(assert (=> b!7446278 (= e!4445813 (and tp!2155334 tp!2155336))))

(declare-fun b!7446275 () Bool)

(assert (=> b!7446275 (= e!4445813 tp_is_empty!49201)))

(assert (= (and b!7446002 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446275))

(assert (= (and b!7446002 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446276))

(assert (= (and b!7446002 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446277))

(assert (= (and b!7446002 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446278))

(declare-fun b!7446281 () Bool)

(declare-fun e!4445814 () Bool)

(declare-fun tp!2155342 () Bool)

(assert (=> b!7446281 (= e!4445814 tp!2155342)))

(declare-fun b!7446280 () Bool)

(declare-fun tp!2155338 () Bool)

(declare-fun tp!2155340 () Bool)

(assert (=> b!7446280 (= e!4445814 (and tp!2155338 tp!2155340))))

(assert (=> b!7445954 (= tp!2155116 e!4445814)))

(declare-fun b!7446282 () Bool)

(declare-fun tp!2155339 () Bool)

(declare-fun tp!2155341 () Bool)

(assert (=> b!7446282 (= e!4445814 (and tp!2155339 tp!2155341))))

(declare-fun b!7446279 () Bool)

(assert (=> b!7446279 (= e!4445814 tp_is_empty!49201)))

(assert (= (and b!7445954 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446279))

(assert (= (and b!7445954 ((_ is Concat!28316) (regOne!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446280))

(assert (= (and b!7445954 ((_ is Star!19471) (regOne!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446281))

(assert (= (and b!7445954 ((_ is Union!19471) (regOne!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446282))

(declare-fun b!7446285 () Bool)

(declare-fun e!4445815 () Bool)

(declare-fun tp!2155347 () Bool)

(assert (=> b!7446285 (= e!4445815 tp!2155347)))

(declare-fun b!7446284 () Bool)

(declare-fun tp!2155343 () Bool)

(declare-fun tp!2155345 () Bool)

(assert (=> b!7446284 (= e!4445815 (and tp!2155343 tp!2155345))))

(assert (=> b!7445954 (= tp!2155118 e!4445815)))

(declare-fun b!7446286 () Bool)

(declare-fun tp!2155344 () Bool)

(declare-fun tp!2155346 () Bool)

(assert (=> b!7446286 (= e!4445815 (and tp!2155344 tp!2155346))))

(declare-fun b!7446283 () Bool)

(assert (=> b!7446283 (= e!4445815 tp_is_empty!49201)))

(assert (= (and b!7445954 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446283))

(assert (= (and b!7445954 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446284))

(assert (= (and b!7445954 ((_ is Star!19471) (regTwo!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446285))

(assert (= (and b!7445954 ((_ is Union!19471) (regTwo!39455 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446286))

(declare-fun b!7446289 () Bool)

(declare-fun e!4445816 () Bool)

(declare-fun tp!2155352 () Bool)

(assert (=> b!7446289 (= e!4445816 tp!2155352)))

(declare-fun b!7446288 () Bool)

(declare-fun tp!2155348 () Bool)

(declare-fun tp!2155350 () Bool)

(assert (=> b!7446288 (= e!4445816 (and tp!2155348 tp!2155350))))

(assert (=> b!7445962 (= tp!2155126 e!4445816)))

(declare-fun b!7446290 () Bool)

(declare-fun tp!2155349 () Bool)

(declare-fun tp!2155351 () Bool)

(assert (=> b!7446290 (= e!4445816 (and tp!2155349 tp!2155351))))

(declare-fun b!7446287 () Bool)

(assert (=> b!7446287 (= e!4445816 tp_is_empty!49201)))

(assert (= (and b!7445962 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446287))

(assert (= (and b!7445962 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446288))

(assert (= (and b!7445962 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446289))

(assert (= (and b!7445962 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446290))

(declare-fun b!7446293 () Bool)

(declare-fun e!4445817 () Bool)

(declare-fun tp!2155357 () Bool)

(assert (=> b!7446293 (= e!4445817 tp!2155357)))

(declare-fun b!7446292 () Bool)

(declare-fun tp!2155353 () Bool)

(declare-fun tp!2155355 () Bool)

(assert (=> b!7446292 (= e!4445817 (and tp!2155353 tp!2155355))))

(assert (=> b!7445962 (= tp!2155128 e!4445817)))

(declare-fun b!7446294 () Bool)

(declare-fun tp!2155354 () Bool)

(declare-fun tp!2155356 () Bool)

(assert (=> b!7446294 (= e!4445817 (and tp!2155354 tp!2155356))))

(declare-fun b!7446291 () Bool)

(assert (=> b!7446291 (= e!4445817 tp_is_empty!49201)))

(assert (= (and b!7445962 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446291))

(assert (= (and b!7445962 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446292))

(assert (= (and b!7445962 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446293))

(assert (= (and b!7445962 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446294))

(declare-fun b!7446297 () Bool)

(declare-fun e!4445818 () Bool)

(declare-fun tp!2155362 () Bool)

(assert (=> b!7446297 (= e!4445818 tp!2155362)))

(declare-fun b!7446296 () Bool)

(declare-fun tp!2155358 () Bool)

(declare-fun tp!2155360 () Bool)

(assert (=> b!7446296 (= e!4445818 (and tp!2155358 tp!2155360))))

(assert (=> b!7446056 (= tp!2155248 e!4445818)))

(declare-fun b!7446298 () Bool)

(declare-fun tp!2155359 () Bool)

(declare-fun tp!2155361 () Bool)

(assert (=> b!7446298 (= e!4445818 (and tp!2155359 tp!2155361))))

(declare-fun b!7446295 () Bool)

(assert (=> b!7446295 (= e!4445818 tp_is_empty!49201)))

(assert (= (and b!7446056 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446295))

(assert (= (and b!7446056 ((_ is Concat!28316) (regOne!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446296))

(assert (= (and b!7446056 ((_ is Star!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446297))

(assert (= (and b!7446056 ((_ is Union!19471) (regOne!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446298))

(declare-fun b!7446301 () Bool)

(declare-fun e!4445819 () Bool)

(declare-fun tp!2155367 () Bool)

(assert (=> b!7446301 (= e!4445819 tp!2155367)))

(declare-fun b!7446300 () Bool)

(declare-fun tp!2155363 () Bool)

(declare-fun tp!2155365 () Bool)

(assert (=> b!7446300 (= e!4445819 (and tp!2155363 tp!2155365))))

(assert (=> b!7446056 (= tp!2155250 e!4445819)))

(declare-fun b!7446302 () Bool)

(declare-fun tp!2155364 () Bool)

(declare-fun tp!2155366 () Bool)

(assert (=> b!7446302 (= e!4445819 (and tp!2155364 tp!2155366))))

(declare-fun b!7446299 () Bool)

(assert (=> b!7446299 (= e!4445819 tp_is_empty!49201)))

(assert (= (and b!7446056 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446299))

(assert (= (and b!7446056 ((_ is Concat!28316) (regTwo!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446300))

(assert (= (and b!7446056 ((_ is Star!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446301))

(assert (= (and b!7446056 ((_ is Union!19471) (regTwo!39454 (h!78494 (exprs!8911 setElem!56712))))) b!7446302))

(declare-fun b!7446305 () Bool)

(declare-fun e!4445820 () Bool)

(declare-fun tp!2155372 () Bool)

(assert (=> b!7446305 (= e!4445820 tp!2155372)))

(declare-fun b!7446304 () Bool)

(declare-fun tp!2155368 () Bool)

(declare-fun tp!2155370 () Bool)

(assert (=> b!7446304 (= e!4445820 (and tp!2155368 tp!2155370))))

(assert (=> b!7445970 (= tp!2155136 e!4445820)))

(declare-fun b!7446306 () Bool)

(declare-fun tp!2155369 () Bool)

(declare-fun tp!2155371 () Bool)

(assert (=> b!7446306 (= e!4445820 (and tp!2155369 tp!2155371))))

(declare-fun b!7446303 () Bool)

(assert (=> b!7446303 (= e!4445820 tp_is_empty!49201)))

(assert (= (and b!7445970 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446303))

(assert (= (and b!7445970 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446304))

(assert (= (and b!7445970 ((_ is Star!19471) (regOne!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446305))

(assert (= (and b!7445970 ((_ is Union!19471) (regOne!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446306))

(declare-fun b!7446309 () Bool)

(declare-fun e!4445821 () Bool)

(declare-fun tp!2155377 () Bool)

(assert (=> b!7446309 (= e!4445821 tp!2155377)))

(declare-fun b!7446308 () Bool)

(declare-fun tp!2155373 () Bool)

(declare-fun tp!2155375 () Bool)

(assert (=> b!7446308 (= e!4445821 (and tp!2155373 tp!2155375))))

(assert (=> b!7445970 (= tp!2155138 e!4445821)))

(declare-fun b!7446310 () Bool)

(declare-fun tp!2155374 () Bool)

(declare-fun tp!2155376 () Bool)

(assert (=> b!7446310 (= e!4445821 (and tp!2155374 tp!2155376))))

(declare-fun b!7446307 () Bool)

(assert (=> b!7446307 (= e!4445821 tp_is_empty!49201)))

(assert (= (and b!7445970 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446307))

(assert (= (and b!7445970 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446308))

(assert (= (and b!7445970 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446309))

(assert (= (and b!7445970 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446310))

(declare-fun b!7446313 () Bool)

(declare-fun e!4445822 () Bool)

(declare-fun tp!2155382 () Bool)

(assert (=> b!7446313 (= e!4445822 tp!2155382)))

(declare-fun b!7446312 () Bool)

(declare-fun tp!2155378 () Bool)

(declare-fun tp!2155380 () Bool)

(assert (=> b!7446312 (= e!4445822 (and tp!2155378 tp!2155380))))

(assert (=> b!7446089 (= tp!2155290 e!4445822)))

(declare-fun b!7446314 () Bool)

(declare-fun tp!2155379 () Bool)

(declare-fun tp!2155381 () Bool)

(assert (=> b!7446314 (= e!4445822 (and tp!2155379 tp!2155381))))

(declare-fun b!7446311 () Bool)

(assert (=> b!7446311 (= e!4445822 tp_is_empty!49201)))

(assert (= (and b!7446089 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446311))

(assert (= (and b!7446089 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446312))

(assert (= (and b!7446089 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446313))

(assert (= (and b!7446089 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446314))

(declare-fun b!7446317 () Bool)

(declare-fun e!4445823 () Bool)

(declare-fun tp!2155387 () Bool)

(assert (=> b!7446317 (= e!4445823 tp!2155387)))

(declare-fun b!7446316 () Bool)

(declare-fun tp!2155383 () Bool)

(declare-fun tp!2155385 () Bool)

(assert (=> b!7446316 (= e!4445823 (and tp!2155383 tp!2155385))))

(assert (=> b!7446089 (= tp!2155292 e!4445823)))

(declare-fun b!7446318 () Bool)

(declare-fun tp!2155384 () Bool)

(declare-fun tp!2155386 () Bool)

(assert (=> b!7446318 (= e!4445823 (and tp!2155384 tp!2155386))))

(declare-fun b!7446315 () Bool)

(assert (=> b!7446315 (= e!4445823 tp_is_empty!49201)))

(assert (= (and b!7446089 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446315))

(assert (= (and b!7446089 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446316))

(assert (= (and b!7446089 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446317))

(assert (= (and b!7446089 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446318))

(declare-fun b!7446321 () Bool)

(declare-fun e!4445824 () Bool)

(declare-fun tp!2155392 () Bool)

(assert (=> b!7446321 (= e!4445824 tp!2155392)))

(declare-fun b!7446320 () Bool)

(declare-fun tp!2155388 () Bool)

(declare-fun tp!2155390 () Bool)

(assert (=> b!7446320 (= e!4445824 (and tp!2155388 tp!2155390))))

(assert (=> b!7446098 (= tp!2155304 e!4445824)))

(declare-fun b!7446322 () Bool)

(declare-fun tp!2155389 () Bool)

(declare-fun tp!2155391 () Bool)

(assert (=> b!7446322 (= e!4445824 (and tp!2155389 tp!2155391))))

(declare-fun b!7446319 () Bool)

(assert (=> b!7446319 (= e!4445824 tp_is_empty!49201)))

(assert (= (and b!7446098 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446319))

(assert (= (and b!7446098 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446320))

(assert (= (and b!7446098 ((_ is Star!19471) (reg!19800 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446321))

(assert (= (and b!7446098 ((_ is Union!19471) (reg!19800 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446322))

(declare-fun b!7446325 () Bool)

(declare-fun e!4445825 () Bool)

(declare-fun tp!2155397 () Bool)

(assert (=> b!7446325 (= e!4445825 tp!2155397)))

(declare-fun b!7446324 () Bool)

(declare-fun tp!2155393 () Bool)

(declare-fun tp!2155395 () Bool)

(assert (=> b!7446324 (= e!4445825 (and tp!2155393 tp!2155395))))

(assert (=> b!7446004 (= tp!2155180 e!4445825)))

(declare-fun b!7446326 () Bool)

(declare-fun tp!2155394 () Bool)

(declare-fun tp!2155396 () Bool)

(assert (=> b!7446326 (= e!4445825 (and tp!2155394 tp!2155396))))

(declare-fun b!7446323 () Bool)

(assert (=> b!7446323 (= e!4445825 tp_is_empty!49201)))

(assert (= (and b!7446004 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446323))

(assert (= (and b!7446004 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446324))

(assert (= (and b!7446004 ((_ is Star!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446325))

(assert (= (and b!7446004 ((_ is Union!19471) (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446326))

(declare-fun b!7446329 () Bool)

(declare-fun e!4445826 () Bool)

(declare-fun tp!2155402 () Bool)

(assert (=> b!7446329 (= e!4445826 tp!2155402)))

(declare-fun b!7446328 () Bool)

(declare-fun tp!2155398 () Bool)

(declare-fun tp!2155400 () Bool)

(assert (=> b!7446328 (= e!4445826 (and tp!2155398 tp!2155400))))

(assert (=> b!7446004 (= tp!2155182 e!4445826)))

(declare-fun b!7446330 () Bool)

(declare-fun tp!2155399 () Bool)

(declare-fun tp!2155401 () Bool)

(assert (=> b!7446330 (= e!4445826 (and tp!2155399 tp!2155401))))

(declare-fun b!7446327 () Bool)

(assert (=> b!7446327 (= e!4445826 tp_is_empty!49201)))

(assert (= (and b!7446004 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446327))

(assert (= (and b!7446004 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446328))

(assert (= (and b!7446004 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446329))

(assert (= (and b!7446004 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446330))

(declare-fun b!7446333 () Bool)

(declare-fun e!4445827 () Bool)

(declare-fun tp!2155407 () Bool)

(assert (=> b!7446333 (= e!4445827 tp!2155407)))

(declare-fun b!7446332 () Bool)

(declare-fun tp!2155403 () Bool)

(declare-fun tp!2155405 () Bool)

(assert (=> b!7446332 (= e!4445827 (and tp!2155403 tp!2155405))))

(assert (=> b!7446012 (= tp!2155190 e!4445827)))

(declare-fun b!7446334 () Bool)

(declare-fun tp!2155404 () Bool)

(declare-fun tp!2155406 () Bool)

(assert (=> b!7446334 (= e!4445827 (and tp!2155404 tp!2155406))))

(declare-fun b!7446331 () Bool)

(assert (=> b!7446331 (= e!4445827 tp_is_empty!49201)))

(assert (= (and b!7446012 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446331))

(assert (= (and b!7446012 ((_ is Concat!28316) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446332))

(assert (= (and b!7446012 ((_ is Star!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446333))

(assert (= (and b!7446012 ((_ is Union!19471) (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446334))

(declare-fun b!7446337 () Bool)

(declare-fun e!4445828 () Bool)

(declare-fun tp!2155412 () Bool)

(assert (=> b!7446337 (= e!4445828 tp!2155412)))

(declare-fun b!7446336 () Bool)

(declare-fun tp!2155408 () Bool)

(declare-fun tp!2155410 () Bool)

(assert (=> b!7446336 (= e!4445828 (and tp!2155408 tp!2155410))))

(assert (=> b!7446012 (= tp!2155192 e!4445828)))

(declare-fun b!7446338 () Bool)

(declare-fun tp!2155409 () Bool)

(declare-fun tp!2155411 () Bool)

(assert (=> b!7446338 (= e!4445828 (and tp!2155409 tp!2155411))))

(declare-fun b!7446335 () Bool)

(assert (=> b!7446335 (= e!4445828 tp_is_empty!49201)))

(assert (= (and b!7446012 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446335))

(assert (= (and b!7446012 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446336))

(assert (= (and b!7446012 ((_ is Star!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446337))

(assert (= (and b!7446012 ((_ is Union!19471) (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446338))

(declare-fun b!7446341 () Bool)

(declare-fun e!4445829 () Bool)

(declare-fun tp!2155417 () Bool)

(assert (=> b!7446341 (= e!4445829 tp!2155417)))

(declare-fun b!7446340 () Bool)

(declare-fun tp!2155413 () Bool)

(declare-fun tp!2155415 () Bool)

(assert (=> b!7446340 (= e!4445829 (and tp!2155413 tp!2155415))))

(assert (=> b!7446020 (= tp!2155200 e!4445829)))

(declare-fun b!7446342 () Bool)

(declare-fun tp!2155414 () Bool)

(declare-fun tp!2155416 () Bool)

(assert (=> b!7446342 (= e!4445829 (and tp!2155414 tp!2155416))))

(declare-fun b!7446339 () Bool)

(assert (=> b!7446339 (= e!4445829 tp_is_empty!49201)))

(assert (= (and b!7446020 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446339))

(assert (= (and b!7446020 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446340))

(assert (= (and b!7446020 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446341))

(assert (= (and b!7446020 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446342))

(declare-fun b!7446345 () Bool)

(declare-fun e!4445830 () Bool)

(declare-fun tp!2155422 () Bool)

(assert (=> b!7446345 (= e!4445830 tp!2155422)))

(declare-fun b!7446344 () Bool)

(declare-fun tp!2155418 () Bool)

(declare-fun tp!2155420 () Bool)

(assert (=> b!7446344 (= e!4445830 (and tp!2155418 tp!2155420))))

(assert (=> b!7446020 (= tp!2155202 e!4445830)))

(declare-fun b!7446346 () Bool)

(declare-fun tp!2155419 () Bool)

(declare-fun tp!2155421 () Bool)

(assert (=> b!7446346 (= e!4445830 (and tp!2155419 tp!2155421))))

(declare-fun b!7446343 () Bool)

(assert (=> b!7446343 (= e!4445830 tp_is_empty!49201)))

(assert (= (and b!7446020 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446343))

(assert (= (and b!7446020 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446344))

(assert (= (and b!7446020 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446345))

(assert (= (and b!7446020 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446346))

(declare-fun b!7446349 () Bool)

(declare-fun e!4445831 () Bool)

(declare-fun tp!2155427 () Bool)

(assert (=> b!7446349 (= e!4445831 tp!2155427)))

(declare-fun b!7446348 () Bool)

(declare-fun tp!2155423 () Bool)

(declare-fun tp!2155425 () Bool)

(assert (=> b!7446348 (= e!4445831 (and tp!2155423 tp!2155425))))

(assert (=> b!7446029 (= tp!2155214 e!4445831)))

(declare-fun b!7446350 () Bool)

(declare-fun tp!2155424 () Bool)

(declare-fun tp!2155426 () Bool)

(assert (=> b!7446350 (= e!4445831 (and tp!2155424 tp!2155426))))

(declare-fun b!7446347 () Bool)

(assert (=> b!7446347 (= e!4445831 tp_is_empty!49201)))

(assert (= (and b!7446029 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446347))

(assert (= (and b!7446029 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446348))

(assert (= (and b!7446029 ((_ is Star!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446349))

(assert (= (and b!7446029 ((_ is Union!19471) (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446350))

(declare-fun b!7446353 () Bool)

(declare-fun e!4445832 () Bool)

(declare-fun tp!2155432 () Bool)

(assert (=> b!7446353 (= e!4445832 tp!2155432)))

(declare-fun b!7446352 () Bool)

(declare-fun tp!2155428 () Bool)

(declare-fun tp!2155430 () Bool)

(assert (=> b!7446352 (= e!4445832 (and tp!2155428 tp!2155430))))

(assert (=> b!7446037 (= tp!2155224 e!4445832)))

(declare-fun b!7446354 () Bool)

(declare-fun tp!2155429 () Bool)

(declare-fun tp!2155431 () Bool)

(assert (=> b!7446354 (= e!4445832 (and tp!2155429 tp!2155431))))

(declare-fun b!7446351 () Bool)

(assert (=> b!7446351 (= e!4445832 tp_is_empty!49201)))

(assert (= (and b!7446037 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446351))

(assert (= (and b!7446037 ((_ is Concat!28316) (reg!19800 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446352))

(assert (= (and b!7446037 ((_ is Star!19471) (reg!19800 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446353))

(assert (= (and b!7446037 ((_ is Union!19471) (reg!19800 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446354))

(declare-fun b!7446357 () Bool)

(declare-fun e!4445833 () Bool)

(declare-fun tp!2155437 () Bool)

(assert (=> b!7446357 (= e!4445833 tp!2155437)))

(declare-fun b!7446356 () Bool)

(declare-fun tp!2155433 () Bool)

(declare-fun tp!2155435 () Bool)

(assert (=> b!7446356 (= e!4445833 (and tp!2155433 tp!2155435))))

(assert (=> b!7445945 (= tp!2155109 e!4445833)))

(declare-fun b!7446358 () Bool)

(declare-fun tp!2155434 () Bool)

(declare-fun tp!2155436 () Bool)

(assert (=> b!7446358 (= e!4445833 (and tp!2155434 tp!2155436))))

(declare-fun b!7446355 () Bool)

(assert (=> b!7446355 (= e!4445833 tp_is_empty!49201)))

(assert (= (and b!7445945 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446355))

(assert (= (and b!7445945 ((_ is Concat!28316) (reg!19800 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446356))

(assert (= (and b!7445945 ((_ is Star!19471) (reg!19800 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446357))

(assert (= (and b!7445945 ((_ is Union!19471) (reg!19800 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446358))

(declare-fun b!7446361 () Bool)

(declare-fun e!4445834 () Bool)

(declare-fun tp!2155442 () Bool)

(assert (=> b!7446361 (= e!4445834 tp!2155442)))

(declare-fun b!7446360 () Bool)

(declare-fun tp!2155438 () Bool)

(declare-fun tp!2155440 () Bool)

(assert (=> b!7446360 (= e!4445834 (and tp!2155438 tp!2155440))))

(assert (=> b!7446046 (= tp!2155231 e!4445834)))

(declare-fun b!7446362 () Bool)

(declare-fun tp!2155439 () Bool)

(declare-fun tp!2155441 () Bool)

(assert (=> b!7446362 (= e!4445834 (and tp!2155439 tp!2155441))))

(declare-fun b!7446359 () Bool)

(assert (=> b!7446359 (= e!4445834 tp_is_empty!49201)))

(assert (= (and b!7446046 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446359))

(assert (= (and b!7446046 ((_ is Concat!28316) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446360))

(assert (= (and b!7446046 ((_ is Star!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446361))

(assert (= (and b!7446046 ((_ is Union!19471) (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446362))

(declare-fun b!7446365 () Bool)

(declare-fun e!4445835 () Bool)

(declare-fun tp!2155447 () Bool)

(assert (=> b!7446365 (= e!4445835 tp!2155447)))

(declare-fun b!7446364 () Bool)

(declare-fun tp!2155443 () Bool)

(declare-fun tp!2155445 () Bool)

(assert (=> b!7446364 (= e!4445835 (and tp!2155443 tp!2155445))))

(assert (=> b!7446046 (= tp!2155233 e!4445835)))

(declare-fun b!7446366 () Bool)

(declare-fun tp!2155444 () Bool)

(declare-fun tp!2155446 () Bool)

(assert (=> b!7446366 (= e!4445835 (and tp!2155444 tp!2155446))))

(declare-fun b!7446363 () Bool)

(assert (=> b!7446363 (= e!4445835 tp_is_empty!49201)))

(assert (= (and b!7446046 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446363))

(assert (= (and b!7446046 ((_ is Concat!28316) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446364))

(assert (= (and b!7446046 ((_ is Star!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446365))

(assert (= (and b!7446046 ((_ is Union!19471) (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446366))

(declare-fun b!7446369 () Bool)

(declare-fun e!4445836 () Bool)

(declare-fun tp!2155452 () Bool)

(assert (=> b!7446369 (= e!4445836 tp!2155452)))

(declare-fun b!7446368 () Bool)

(declare-fun tp!2155448 () Bool)

(declare-fun tp!2155450 () Bool)

(assert (=> b!7446368 (= e!4445836 (and tp!2155448 tp!2155450))))

(assert (=> b!7446052 (= tp!2155240 e!4445836)))

(declare-fun b!7446370 () Bool)

(declare-fun tp!2155449 () Bool)

(declare-fun tp!2155451 () Bool)

(assert (=> b!7446370 (= e!4445836 (and tp!2155449 tp!2155451))))

(declare-fun b!7446367 () Bool)

(assert (=> b!7446367 (= e!4445836 tp_is_empty!49201)))

(assert (= (and b!7446052 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446367))

(assert (= (and b!7446052 ((_ is Concat!28316) (regOne!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446368))

(assert (= (and b!7446052 ((_ is Star!19471) (regOne!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446369))

(assert (= (and b!7446052 ((_ is Union!19471) (regOne!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446370))

(declare-fun b!7446373 () Bool)

(declare-fun e!4445837 () Bool)

(declare-fun tp!2155457 () Bool)

(assert (=> b!7446373 (= e!4445837 tp!2155457)))

(declare-fun b!7446372 () Bool)

(declare-fun tp!2155453 () Bool)

(declare-fun tp!2155455 () Bool)

(assert (=> b!7446372 (= e!4445837 (and tp!2155453 tp!2155455))))

(assert (=> b!7446052 (= tp!2155242 e!4445837)))

(declare-fun b!7446374 () Bool)

(declare-fun tp!2155454 () Bool)

(declare-fun tp!2155456 () Bool)

(assert (=> b!7446374 (= e!4445837 (and tp!2155454 tp!2155456))))

(declare-fun b!7446371 () Bool)

(assert (=> b!7446371 (= e!4445837 tp_is_empty!49201)))

(assert (= (and b!7446052 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446371))

(assert (= (and b!7446052 ((_ is Concat!28316) (regTwo!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446372))

(assert (= (and b!7446052 ((_ is Star!19471) (regTwo!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446373))

(assert (= (and b!7446052 ((_ is Union!19471) (regTwo!39455 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446374))

(declare-fun b!7446377 () Bool)

(declare-fun e!4445838 () Bool)

(declare-fun tp!2155462 () Bool)

(assert (=> b!7446377 (= e!4445838 tp!2155462)))

(declare-fun b!7446376 () Bool)

(declare-fun tp!2155458 () Bool)

(declare-fun tp!2155460 () Bool)

(assert (=> b!7446376 (= e!4445838 (and tp!2155458 tp!2155460))))

(assert (=> b!7446067 (= tp!2155261 e!4445838)))

(declare-fun b!7446378 () Bool)

(declare-fun tp!2155459 () Bool)

(declare-fun tp!2155461 () Bool)

(assert (=> b!7446378 (= e!4445838 (and tp!2155459 tp!2155461))))

(declare-fun b!7446375 () Bool)

(assert (=> b!7446375 (= e!4445838 tp_is_empty!49201)))

(assert (= (and b!7446067 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446375))

(assert (= (and b!7446067 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446376))

(assert (= (and b!7446067 ((_ is Star!19471) (regOne!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446377))

(assert (= (and b!7446067 ((_ is Union!19471) (regOne!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446378))

(declare-fun b!7446381 () Bool)

(declare-fun e!4445839 () Bool)

(declare-fun tp!2155467 () Bool)

(assert (=> b!7446381 (= e!4445839 tp!2155467)))

(declare-fun b!7446380 () Bool)

(declare-fun tp!2155463 () Bool)

(declare-fun tp!2155465 () Bool)

(assert (=> b!7446380 (= e!4445839 (and tp!2155463 tp!2155465))))

(assert (=> b!7446067 (= tp!2155263 e!4445839)))

(declare-fun b!7446382 () Bool)

(declare-fun tp!2155464 () Bool)

(declare-fun tp!2155466 () Bool)

(assert (=> b!7446382 (= e!4445839 (and tp!2155464 tp!2155466))))

(declare-fun b!7446379 () Bool)

(assert (=> b!7446379 (= e!4445839 tp_is_empty!49201)))

(assert (= (and b!7446067 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446379))

(assert (= (and b!7446067 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446380))

(assert (= (and b!7446067 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446381))

(assert (= (and b!7446067 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446382))

(declare-fun b!7446385 () Bool)

(declare-fun e!4445840 () Bool)

(declare-fun tp!2155472 () Bool)

(assert (=> b!7446385 (= e!4445840 tp!2155472)))

(declare-fun b!7446384 () Bool)

(declare-fun tp!2155468 () Bool)

(declare-fun tp!2155470 () Bool)

(assert (=> b!7446384 (= e!4445840 (and tp!2155468 tp!2155470))))

(assert (=> b!7445996 (= tp!2155170 e!4445840)))

(declare-fun b!7446386 () Bool)

(declare-fun tp!2155469 () Bool)

(declare-fun tp!2155471 () Bool)

(assert (=> b!7446386 (= e!4445840 (and tp!2155469 tp!2155471))))

(declare-fun b!7446383 () Bool)

(assert (=> b!7446383 (= e!4445840 tp_is_empty!49201)))

(assert (= (and b!7445996 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446383))

(assert (= (and b!7445996 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446384))

(assert (= (and b!7445996 ((_ is Star!19471) (regOne!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446385))

(assert (= (and b!7445996 ((_ is Union!19471) (regOne!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446386))

(declare-fun b!7446389 () Bool)

(declare-fun e!4445841 () Bool)

(declare-fun tp!2155477 () Bool)

(assert (=> b!7446389 (= e!4445841 tp!2155477)))

(declare-fun b!7446388 () Bool)

(declare-fun tp!2155473 () Bool)

(declare-fun tp!2155475 () Bool)

(assert (=> b!7446388 (= e!4445841 (and tp!2155473 tp!2155475))))

(assert (=> b!7445996 (= tp!2155172 e!4445841)))

(declare-fun b!7446390 () Bool)

(declare-fun tp!2155474 () Bool)

(declare-fun tp!2155476 () Bool)

(assert (=> b!7446390 (= e!4445841 (and tp!2155474 tp!2155476))))

(declare-fun b!7446387 () Bool)

(assert (=> b!7446387 (= e!4445841 tp_is_empty!49201)))

(assert (= (and b!7445996 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446387))

(assert (= (and b!7445996 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446388))

(assert (= (and b!7445996 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446389))

(assert (= (and b!7445996 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446390))

(declare-fun b!7446393 () Bool)

(declare-fun e!4445842 () Bool)

(declare-fun tp!2155482 () Bool)

(assert (=> b!7446393 (= e!4445842 tp!2155482)))

(declare-fun b!7446392 () Bool)

(declare-fun tp!2155478 () Bool)

(declare-fun tp!2155480 () Bool)

(assert (=> b!7446392 (= e!4445842 (and tp!2155478 tp!2155480))))

(assert (=> b!7446005 (= tp!2155184 e!4445842)))

(declare-fun b!7446394 () Bool)

(declare-fun tp!2155479 () Bool)

(declare-fun tp!2155481 () Bool)

(assert (=> b!7446394 (= e!4445842 (and tp!2155479 tp!2155481))))

(declare-fun b!7446391 () Bool)

(assert (=> b!7446391 (= e!4445842 tp_is_empty!49201)))

(assert (= (and b!7446005 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446391))

(assert (= (and b!7446005 ((_ is Concat!28316) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446392))

(assert (= (and b!7446005 ((_ is Star!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446393))

(assert (= (and b!7446005 ((_ is Union!19471) (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446394))

(declare-fun b!7446397 () Bool)

(declare-fun e!4445843 () Bool)

(declare-fun tp!2155487 () Bool)

(assert (=> b!7446397 (= e!4445843 tp!2155487)))

(declare-fun b!7446396 () Bool)

(declare-fun tp!2155483 () Bool)

(declare-fun tp!2155485 () Bool)

(assert (=> b!7446396 (= e!4445843 (and tp!2155483 tp!2155485))))

(assert (=> b!7445982 (= tp!2155151 e!4445843)))

(declare-fun b!7446398 () Bool)

(declare-fun tp!2155484 () Bool)

(declare-fun tp!2155486 () Bool)

(assert (=> b!7446398 (= e!4445843 (and tp!2155484 tp!2155486))))

(declare-fun b!7446395 () Bool)

(assert (=> b!7446395 (= e!4445843 tp_is_empty!49201)))

(assert (= (and b!7445982 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446395))

(assert (= (and b!7445982 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446396))

(assert (= (and b!7445982 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446397))

(assert (= (and b!7445982 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446398))

(declare-fun b!7446401 () Bool)

(declare-fun e!4445844 () Bool)

(declare-fun tp!2155492 () Bool)

(assert (=> b!7446401 (= e!4445844 tp!2155492)))

(declare-fun b!7446400 () Bool)

(declare-fun tp!2155488 () Bool)

(declare-fun tp!2155490 () Bool)

(assert (=> b!7446400 (= e!4445844 (and tp!2155488 tp!2155490))))

(assert (=> b!7445982 (= tp!2155153 e!4445844)))

(declare-fun b!7446402 () Bool)

(declare-fun tp!2155489 () Bool)

(declare-fun tp!2155491 () Bool)

(assert (=> b!7446402 (= e!4445844 (and tp!2155489 tp!2155491))))

(declare-fun b!7446399 () Bool)

(assert (=> b!7446399 (= e!4445844 tp_is_empty!49201)))

(assert (= (and b!7445982 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446399))

(assert (= (and b!7445982 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446400))

(assert (= (and b!7445982 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446401))

(assert (= (and b!7445982 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446402))

(declare-fun b!7446405 () Bool)

(declare-fun e!4445845 () Bool)

(declare-fun tp!2155497 () Bool)

(assert (=> b!7446405 (= e!4445845 tp!2155497)))

(declare-fun b!7446404 () Bool)

(declare-fun tp!2155493 () Bool)

(declare-fun tp!2155495 () Bool)

(assert (=> b!7446404 (= e!4445845 (and tp!2155493 tp!2155495))))

(assert (=> b!7446040 (= tp!2155225 e!4445845)))

(declare-fun b!7446406 () Bool)

(declare-fun tp!2155494 () Bool)

(declare-fun tp!2155496 () Bool)

(assert (=> b!7446406 (= e!4445845 (and tp!2155494 tp!2155496))))

(declare-fun b!7446403 () Bool)

(assert (=> b!7446403 (= e!4445845 tp_is_empty!49201)))

(assert (= (and b!7446040 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446403))

(assert (= (and b!7446040 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446404))

(assert (= (and b!7446040 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446405))

(assert (= (and b!7446040 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446406))

(declare-fun b!7446409 () Bool)

(declare-fun e!4445846 () Bool)

(declare-fun tp!2155502 () Bool)

(assert (=> b!7446409 (= e!4445846 tp!2155502)))

(declare-fun b!7446408 () Bool)

(declare-fun tp!2155498 () Bool)

(declare-fun tp!2155500 () Bool)

(assert (=> b!7446408 (= e!4445846 (and tp!2155498 tp!2155500))))

(assert (=> b!7446040 (= tp!2155227 e!4445846)))

(declare-fun b!7446410 () Bool)

(declare-fun tp!2155499 () Bool)

(declare-fun tp!2155501 () Bool)

(assert (=> b!7446410 (= e!4445846 (and tp!2155499 tp!2155501))))

(declare-fun b!7446407 () Bool)

(assert (=> b!7446407 (= e!4445846 tp_is_empty!49201)))

(assert (= (and b!7446040 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446407))

(assert (= (and b!7446040 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446408))

(assert (= (and b!7446040 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446409))

(assert (= (and b!7446040 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446410))

(declare-fun b!7446413 () Bool)

(declare-fun e!4445847 () Bool)

(declare-fun tp!2155507 () Bool)

(assert (=> b!7446413 (= e!4445847 tp!2155507)))

(declare-fun b!7446412 () Bool)

(declare-fun tp!2155503 () Bool)

(declare-fun tp!2155505 () Bool)

(assert (=> b!7446412 (= e!4445847 (and tp!2155503 tp!2155505))))

(assert (=> b!7445948 (= tp!2155110 e!4445847)))

(declare-fun b!7446414 () Bool)

(declare-fun tp!2155504 () Bool)

(declare-fun tp!2155506 () Bool)

(assert (=> b!7446414 (= e!4445847 (and tp!2155504 tp!2155506))))

(declare-fun b!7446411 () Bool)

(assert (=> b!7446411 (= e!4445847 tp_is_empty!49201)))

(assert (= (and b!7445948 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446411))

(assert (= (and b!7445948 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446412))

(assert (= (and b!7445948 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446413))

(assert (= (and b!7445948 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446414))

(declare-fun b!7446417 () Bool)

(declare-fun e!4445848 () Bool)

(declare-fun tp!2155512 () Bool)

(assert (=> b!7446417 (= e!4445848 tp!2155512)))

(declare-fun b!7446416 () Bool)

(declare-fun tp!2155508 () Bool)

(declare-fun tp!2155510 () Bool)

(assert (=> b!7446416 (= e!4445848 (and tp!2155508 tp!2155510))))

(assert (=> b!7445948 (= tp!2155112 e!4445848)))

(declare-fun b!7446418 () Bool)

(declare-fun tp!2155509 () Bool)

(declare-fun tp!2155511 () Bool)

(assert (=> b!7446418 (= e!4445848 (and tp!2155509 tp!2155511))))

(declare-fun b!7446415 () Bool)

(assert (=> b!7446415 (= e!4445848 tp_is_empty!49201)))

(assert (= (and b!7445948 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446415))

(assert (= (and b!7445948 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446416))

(assert (= (and b!7445948 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446417))

(assert (= (and b!7445948 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446418))

(declare-fun b!7446421 () Bool)

(declare-fun e!4445849 () Bool)

(declare-fun tp!2155517 () Bool)

(assert (=> b!7446421 (= e!4445849 tp!2155517)))

(declare-fun b!7446420 () Bool)

(declare-fun tp!2155513 () Bool)

(declare-fun tp!2155515 () Bool)

(assert (=> b!7446420 (= e!4445849 (and tp!2155513 tp!2155515))))

(assert (=> b!7445957 (= tp!2155124 e!4445849)))

(declare-fun b!7446422 () Bool)

(declare-fun tp!2155514 () Bool)

(declare-fun tp!2155516 () Bool)

(assert (=> b!7446422 (= e!4445849 (and tp!2155514 tp!2155516))))

(declare-fun b!7446419 () Bool)

(assert (=> b!7446419 (= e!4445849 tp_is_empty!49201)))

(assert (= (and b!7445957 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446419))

(assert (= (and b!7445957 ((_ is Concat!28316) (reg!19800 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446420))

(assert (= (and b!7445957 ((_ is Star!19471) (reg!19800 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446421))

(assert (= (and b!7445957 ((_ is Union!19471) (reg!19800 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446422))

(declare-fun b!7446425 () Bool)

(declare-fun e!4445850 () Bool)

(declare-fun tp!2155522 () Bool)

(assert (=> b!7446425 (= e!4445850 tp!2155522)))

(declare-fun b!7446424 () Bool)

(declare-fun tp!2155518 () Bool)

(declare-fun tp!2155520 () Bool)

(assert (=> b!7446424 (= e!4445850 (and tp!2155518 tp!2155520))))

(assert (=> b!7446053 (= tp!2155244 e!4445850)))

(declare-fun b!7446426 () Bool)

(declare-fun tp!2155519 () Bool)

(declare-fun tp!2155521 () Bool)

(assert (=> b!7446426 (= e!4445850 (and tp!2155519 tp!2155521))))

(declare-fun b!7446423 () Bool)

(assert (=> b!7446423 (= e!4445850 tp_is_empty!49201)))

(assert (= (and b!7446053 ((_ is ElementMatch!19471) (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446423))

(assert (= (and b!7446053 ((_ is Concat!28316) (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446424))

(assert (= (and b!7446053 ((_ is Star!19471) (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446425))

(assert (= (and b!7446053 ((_ is Union!19471) (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446426))

(declare-fun b!7446427 () Bool)

(declare-fun e!4445851 () Bool)

(declare-fun tp!2155523 () Bool)

(declare-fun tp!2155524 () Bool)

(assert (=> b!7446427 (= e!4445851 (and tp!2155523 tp!2155524))))

(assert (=> b!7446053 (= tp!2155245 e!4445851)))

(assert (= (and b!7446053 ((_ is Cons!72046) (t!386735 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446427))

(declare-fun b!7446430 () Bool)

(declare-fun e!4445852 () Bool)

(declare-fun tp!2155529 () Bool)

(assert (=> b!7446430 (= e!4445852 tp!2155529)))

(declare-fun b!7446429 () Bool)

(declare-fun tp!2155525 () Bool)

(declare-fun tp!2155527 () Bool)

(assert (=> b!7446429 (= e!4445852 (and tp!2155525 tp!2155527))))

(assert (=> b!7445964 (= tp!2155130 e!4445852)))

(declare-fun b!7446431 () Bool)

(declare-fun tp!2155526 () Bool)

(declare-fun tp!2155528 () Bool)

(assert (=> b!7446431 (= e!4445852 (and tp!2155526 tp!2155528))))

(declare-fun b!7446428 () Bool)

(assert (=> b!7446428 (= e!4445852 tp_is_empty!49201)))

(assert (= (and b!7445964 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446428))

(assert (= (and b!7445964 ((_ is Concat!28316) (regOne!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446429))

(assert (= (and b!7445964 ((_ is Star!19471) (regOne!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446430))

(assert (= (and b!7445964 ((_ is Union!19471) (regOne!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446431))

(declare-fun b!7446434 () Bool)

(declare-fun e!4445853 () Bool)

(declare-fun tp!2155534 () Bool)

(assert (=> b!7446434 (= e!4445853 tp!2155534)))

(declare-fun b!7446433 () Bool)

(declare-fun tp!2155530 () Bool)

(declare-fun tp!2155532 () Bool)

(assert (=> b!7446433 (= e!4445853 (and tp!2155530 tp!2155532))))

(assert (=> b!7445964 (= tp!2155132 e!4445853)))

(declare-fun b!7446435 () Bool)

(declare-fun tp!2155531 () Bool)

(declare-fun tp!2155533 () Bool)

(assert (=> b!7446435 (= e!4445853 (and tp!2155531 tp!2155533))))

(declare-fun b!7446432 () Bool)

(assert (=> b!7446432 (= e!4445853 tp_is_empty!49201)))

(assert (= (and b!7445964 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446432))

(assert (= (and b!7445964 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446433))

(assert (= (and b!7445964 ((_ is Star!19471) (regTwo!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446434))

(assert (= (and b!7445964 ((_ is Union!19471) (regTwo!39454 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446435))

(declare-fun b!7446438 () Bool)

(declare-fun e!4445854 () Bool)

(declare-fun tp!2155539 () Bool)

(assert (=> b!7446438 (= e!4445854 tp!2155539)))

(declare-fun b!7446437 () Bool)

(declare-fun tp!2155535 () Bool)

(declare-fun tp!2155537 () Bool)

(assert (=> b!7446437 (= e!4445854 (and tp!2155535 tp!2155537))))

(assert (=> b!7445973 (= tp!2155144 e!4445854)))

(declare-fun b!7446439 () Bool)

(declare-fun tp!2155536 () Bool)

(declare-fun tp!2155538 () Bool)

(assert (=> b!7446439 (= e!4445854 (and tp!2155536 tp!2155538))))

(declare-fun b!7446436 () Bool)

(assert (=> b!7446436 (= e!4445854 tp_is_empty!49201)))

(assert (= (and b!7445973 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446436))

(assert (= (and b!7445973 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446437))

(assert (= (and b!7445973 ((_ is Star!19471) (reg!19800 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446438))

(assert (= (and b!7445973 ((_ is Union!19471) (reg!19800 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446439))

(declare-fun condSetEmpty!56724 () Bool)

(assert (=> setNonEmpty!56722 (= condSetEmpty!56724 (= setRest!56722 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56724 () Bool)

(assert (=> setNonEmpty!56722 (= tp!2155237 setRes!56724)))

(declare-fun setIsEmpty!56724 () Bool)

(assert (=> setIsEmpty!56724 setRes!56724))

(declare-fun setNonEmpty!56724 () Bool)

(declare-fun tp!2155540 () Bool)

(declare-fun e!4445855 () Bool)

(declare-fun setElem!56724 () Context!16822)

(assert (=> setNonEmpty!56724 (= setRes!56724 (and tp!2155540 (inv!92038 setElem!56724) e!4445855))))

(declare-fun setRest!56724 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56724 (= setRest!56722 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56724 true) setRest!56724))))

(declare-fun b!7446440 () Bool)

(declare-fun tp!2155541 () Bool)

(assert (=> b!7446440 (= e!4445855 tp!2155541)))

(assert (= (and setNonEmpty!56722 condSetEmpty!56724) setIsEmpty!56724))

(assert (= (and setNonEmpty!56722 (not condSetEmpty!56724)) setNonEmpty!56724))

(assert (= setNonEmpty!56724 b!7446440))

(declare-fun m!8055514 () Bool)

(assert (=> setNonEmpty!56724 m!8055514))

(declare-fun b!7446443 () Bool)

(declare-fun e!4445856 () Bool)

(declare-fun tp!2155546 () Bool)

(assert (=> b!7446443 (= e!4445856 tp!2155546)))

(declare-fun b!7446442 () Bool)

(declare-fun tp!2155542 () Bool)

(declare-fun tp!2155544 () Bool)

(assert (=> b!7446442 (= e!4445856 (and tp!2155542 tp!2155544))))

(assert (=> b!7446054 (= tp!2155246 e!4445856)))

(declare-fun b!7446444 () Bool)

(declare-fun tp!2155543 () Bool)

(declare-fun tp!2155545 () Bool)

(assert (=> b!7446444 (= e!4445856 (and tp!2155543 tp!2155545))))

(declare-fun b!7446441 () Bool)

(assert (=> b!7446441 (= e!4445856 tp_is_empty!49201)))

(assert (= (and b!7446054 ((_ is ElementMatch!19471) (h!78494 (exprs!8911 setElem!56714)))) b!7446441))

(assert (= (and b!7446054 ((_ is Concat!28316) (h!78494 (exprs!8911 setElem!56714)))) b!7446442))

(assert (= (and b!7446054 ((_ is Star!19471) (h!78494 (exprs!8911 setElem!56714)))) b!7446443))

(assert (= (and b!7446054 ((_ is Union!19471) (h!78494 (exprs!8911 setElem!56714)))) b!7446444))

(declare-fun b!7446445 () Bool)

(declare-fun e!4445857 () Bool)

(declare-fun tp!2155547 () Bool)

(declare-fun tp!2155548 () Bool)

(assert (=> b!7446445 (= e!4445857 (and tp!2155547 tp!2155548))))

(assert (=> b!7446054 (= tp!2155247 e!4445857)))

(assert (= (and b!7446054 ((_ is Cons!72046) (t!386735 (exprs!8911 setElem!56714)))) b!7446445))

(declare-fun b!7446448 () Bool)

(declare-fun e!4445858 () Bool)

(declare-fun tp!2155553 () Bool)

(assert (=> b!7446448 (= e!4445858 tp!2155553)))

(declare-fun b!7446447 () Bool)

(declare-fun tp!2155549 () Bool)

(declare-fun tp!2155551 () Bool)

(assert (=> b!7446447 (= e!4445858 (and tp!2155549 tp!2155551))))

(assert (=> b!7446069 (= tp!2155265 e!4445858)))

(declare-fun b!7446449 () Bool)

(declare-fun tp!2155550 () Bool)

(declare-fun tp!2155552 () Bool)

(assert (=> b!7446449 (= e!4445858 (and tp!2155550 tp!2155552))))

(declare-fun b!7446446 () Bool)

(assert (=> b!7446446 (= e!4445858 tp_is_empty!49201)))

(assert (= (and b!7446069 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446446))

(assert (= (and b!7446069 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446447))

(assert (= (and b!7446069 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446448))

(assert (= (and b!7446069 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446449))

(declare-fun b!7446452 () Bool)

(declare-fun e!4445859 () Bool)

(declare-fun tp!2155558 () Bool)

(assert (=> b!7446452 (= e!4445859 tp!2155558)))

(declare-fun b!7446451 () Bool)

(declare-fun tp!2155554 () Bool)

(declare-fun tp!2155556 () Bool)

(assert (=> b!7446451 (= e!4445859 (and tp!2155554 tp!2155556))))

(assert (=> b!7446069 (= tp!2155267 e!4445859)))

(declare-fun b!7446453 () Bool)

(declare-fun tp!2155555 () Bool)

(declare-fun tp!2155557 () Bool)

(assert (=> b!7446453 (= e!4445859 (and tp!2155555 tp!2155557))))

(declare-fun b!7446450 () Bool)

(assert (=> b!7446450 (= e!4445859 tp_is_empty!49201)))

(assert (= (and b!7446069 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446450))

(assert (= (and b!7446069 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446451))

(assert (= (and b!7446069 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446452))

(assert (= (and b!7446069 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446453))

(declare-fun b!7446456 () Bool)

(declare-fun e!4445860 () Bool)

(declare-fun tp!2155563 () Bool)

(assert (=> b!7446456 (= e!4445860 tp!2155563)))

(declare-fun b!7446455 () Bool)

(declare-fun tp!2155559 () Bool)

(declare-fun tp!2155561 () Bool)

(assert (=> b!7446455 (= e!4445860 (and tp!2155559 tp!2155561))))

(assert (=> b!7446078 (= tp!2155279 e!4445860)))

(declare-fun b!7446457 () Bool)

(declare-fun tp!2155560 () Bool)

(declare-fun tp!2155562 () Bool)

(assert (=> b!7446457 (= e!4445860 (and tp!2155560 tp!2155562))))

(declare-fun b!7446454 () Bool)

(assert (=> b!7446454 (= e!4445860 tp_is_empty!49201)))

(assert (= (and b!7446078 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446454))

(assert (= (and b!7446078 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446455))

(assert (= (and b!7446078 ((_ is Star!19471) (reg!19800 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446456))

(assert (= (and b!7446078 ((_ is Union!19471) (reg!19800 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446457))

(declare-fun b!7446460 () Bool)

(declare-fun e!4445861 () Bool)

(declare-fun tp!2155568 () Bool)

(assert (=> b!7446460 (= e!4445861 tp!2155568)))

(declare-fun b!7446459 () Bool)

(declare-fun tp!2155564 () Bool)

(declare-fun tp!2155566 () Bool)

(assert (=> b!7446459 (= e!4445861 (and tp!2155564 tp!2155566))))

(assert (=> b!7446087 (= tp!2155286 e!4445861)))

(declare-fun b!7446461 () Bool)

(declare-fun tp!2155565 () Bool)

(declare-fun tp!2155567 () Bool)

(assert (=> b!7446461 (= e!4445861 (and tp!2155565 tp!2155567))))

(declare-fun b!7446458 () Bool)

(assert (=> b!7446458 (= e!4445861 tp_is_empty!49201)))

(assert (= (and b!7446087 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446458))

(assert (= (and b!7446087 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446459))

(assert (= (and b!7446087 ((_ is Star!19471) (regOne!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446460))

(assert (= (and b!7446087 ((_ is Union!19471) (regOne!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446461))

(declare-fun b!7446464 () Bool)

(declare-fun e!4445862 () Bool)

(declare-fun tp!2155573 () Bool)

(assert (=> b!7446464 (= e!4445862 tp!2155573)))

(declare-fun b!7446463 () Bool)

(declare-fun tp!2155569 () Bool)

(declare-fun tp!2155571 () Bool)

(assert (=> b!7446463 (= e!4445862 (and tp!2155569 tp!2155571))))

(assert (=> b!7446087 (= tp!2155288 e!4445862)))

(declare-fun b!7446465 () Bool)

(declare-fun tp!2155570 () Bool)

(declare-fun tp!2155572 () Bool)

(assert (=> b!7446465 (= e!4445862 (and tp!2155570 tp!2155572))))

(declare-fun b!7446462 () Bool)

(assert (=> b!7446462 (= e!4445862 tp_is_empty!49201)))

(assert (= (and b!7446087 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446462))

(assert (= (and b!7446087 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446463))

(assert (= (and b!7446087 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446464))

(assert (= (and b!7446087 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446465))

(declare-fun b!7446468 () Bool)

(declare-fun e!4445863 () Bool)

(declare-fun tp!2155578 () Bool)

(assert (=> b!7446468 (= e!4445863 tp!2155578)))

(declare-fun b!7446467 () Bool)

(declare-fun tp!2155574 () Bool)

(declare-fun tp!2155576 () Bool)

(assert (=> b!7446467 (= e!4445863 (and tp!2155574 tp!2155576))))

(assert (=> b!7446063 (= tp!2155256 e!4445863)))

(declare-fun b!7446469 () Bool)

(declare-fun tp!2155575 () Bool)

(declare-fun tp!2155577 () Bool)

(assert (=> b!7446469 (= e!4445863 (and tp!2155575 tp!2155577))))

(declare-fun b!7446466 () Bool)

(assert (=> b!7446466 (= e!4445863 tp_is_empty!49201)))

(assert (= (and b!7446063 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446466))

(assert (= (and b!7446063 ((_ is Concat!28316) (regOne!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446467))

(assert (= (and b!7446063 ((_ is Star!19471) (regOne!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446468))

(assert (= (and b!7446063 ((_ is Union!19471) (regOne!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446469))

(declare-fun b!7446472 () Bool)

(declare-fun e!4445864 () Bool)

(declare-fun tp!2155583 () Bool)

(assert (=> b!7446472 (= e!4445864 tp!2155583)))

(declare-fun b!7446471 () Bool)

(declare-fun tp!2155579 () Bool)

(declare-fun tp!2155581 () Bool)

(assert (=> b!7446471 (= e!4445864 (and tp!2155579 tp!2155581))))

(assert (=> b!7446063 (= tp!2155258 e!4445864)))

(declare-fun b!7446473 () Bool)

(declare-fun tp!2155580 () Bool)

(declare-fun tp!2155582 () Bool)

(assert (=> b!7446473 (= e!4445864 (and tp!2155580 tp!2155582))))

(declare-fun b!7446470 () Bool)

(assert (=> b!7446470 (= e!4445864 tp_is_empty!49201)))

(assert (= (and b!7446063 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446470))

(assert (= (and b!7446063 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446471))

(assert (= (and b!7446063 ((_ is Star!19471) (regTwo!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446472))

(assert (= (and b!7446063 ((_ is Union!19471) (regTwo!39455 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446473))

(declare-fun b!7446476 () Bool)

(declare-fun e!4445865 () Bool)

(declare-fun tp!2155588 () Bool)

(assert (=> b!7446476 (= e!4445865 tp!2155588)))

(declare-fun b!7446475 () Bool)

(declare-fun tp!2155584 () Bool)

(declare-fun tp!2155586 () Bool)

(assert (=> b!7446475 (= e!4445865 (and tp!2155584 tp!2155586))))

(assert (=> b!7445992 (= tp!2155165 e!4445865)))

(declare-fun b!7446477 () Bool)

(declare-fun tp!2155585 () Bool)

(declare-fun tp!2155587 () Bool)

(assert (=> b!7446477 (= e!4445865 (and tp!2155585 tp!2155587))))

(declare-fun b!7446474 () Bool)

(assert (=> b!7446474 (= e!4445865 tp_is_empty!49201)))

(assert (= (and b!7445992 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446474))

(assert (= (and b!7445992 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446475))

(assert (= (and b!7445992 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446476))

(assert (= (and b!7445992 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446477))

(declare-fun b!7446480 () Bool)

(declare-fun e!4445866 () Bool)

(declare-fun tp!2155593 () Bool)

(assert (=> b!7446480 (= e!4445866 tp!2155593)))

(declare-fun b!7446479 () Bool)

(declare-fun tp!2155589 () Bool)

(declare-fun tp!2155591 () Bool)

(assert (=> b!7446479 (= e!4445866 (and tp!2155589 tp!2155591))))

(assert (=> b!7445992 (= tp!2155167 e!4445866)))

(declare-fun b!7446481 () Bool)

(declare-fun tp!2155590 () Bool)

(declare-fun tp!2155592 () Bool)

(assert (=> b!7446481 (= e!4445866 (and tp!2155590 tp!2155592))))

(declare-fun b!7446478 () Bool)

(assert (=> b!7446478 (= e!4445866 tp_is_empty!49201)))

(assert (= (and b!7445992 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446478))

(assert (= (and b!7445992 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446479))

(assert (= (and b!7445992 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446480))

(assert (= (and b!7445992 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446481))

(declare-fun b!7446484 () Bool)

(declare-fun e!4445867 () Bool)

(declare-fun tp!2155598 () Bool)

(assert (=> b!7446484 (= e!4445867 tp!2155598)))

(declare-fun b!7446483 () Bool)

(declare-fun tp!2155594 () Bool)

(declare-fun tp!2155596 () Bool)

(assert (=> b!7446483 (= e!4445867 (and tp!2155594 tp!2155596))))

(assert (=> b!7446001 (= tp!2155179 e!4445867)))

(declare-fun b!7446485 () Bool)

(declare-fun tp!2155595 () Bool)

(declare-fun tp!2155597 () Bool)

(assert (=> b!7446485 (= e!4445867 (and tp!2155595 tp!2155597))))

(declare-fun b!7446482 () Bool)

(assert (=> b!7446482 (= e!4445867 tp_is_empty!49201)))

(assert (= (and b!7446001 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446482))

(assert (= (and b!7446001 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446483))

(assert (= (and b!7446001 ((_ is Star!19471) (reg!19800 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446484))

(assert (= (and b!7446001 ((_ is Union!19471) (reg!19800 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446485))

(declare-fun b!7446488 () Bool)

(declare-fun e!4445868 () Bool)

(declare-fun tp!2155603 () Bool)

(assert (=> b!7446488 (= e!4445868 tp!2155603)))

(declare-fun b!7446487 () Bool)

(declare-fun tp!2155599 () Bool)

(declare-fun tp!2155601 () Bool)

(assert (=> b!7446487 (= e!4445868 (and tp!2155599 tp!2155601))))

(assert (=> b!7446010 (= tp!2155186 e!4445868)))

(declare-fun b!7446489 () Bool)

(declare-fun tp!2155600 () Bool)

(declare-fun tp!2155602 () Bool)

(assert (=> b!7446489 (= e!4445868 (and tp!2155600 tp!2155602))))

(declare-fun b!7446486 () Bool)

(assert (=> b!7446486 (= e!4445868 tp_is_empty!49201)))

(assert (= (and b!7446010 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446486))

(assert (= (and b!7446010 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446487))

(assert (= (and b!7446010 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446488))

(assert (= (and b!7446010 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446489))

(declare-fun b!7446492 () Bool)

(declare-fun e!4445869 () Bool)

(declare-fun tp!2155608 () Bool)

(assert (=> b!7446492 (= e!4445869 tp!2155608)))

(declare-fun b!7446491 () Bool)

(declare-fun tp!2155604 () Bool)

(declare-fun tp!2155606 () Bool)

(assert (=> b!7446491 (= e!4445869 (and tp!2155604 tp!2155606))))

(assert (=> b!7446010 (= tp!2155188 e!4445869)))

(declare-fun b!7446493 () Bool)

(declare-fun tp!2155605 () Bool)

(declare-fun tp!2155607 () Bool)

(assert (=> b!7446493 (= e!4445869 (and tp!2155605 tp!2155607))))

(declare-fun b!7446490 () Bool)

(assert (=> b!7446490 (= e!4445869 tp_is_empty!49201)))

(assert (= (and b!7446010 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446490))

(assert (= (and b!7446010 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446491))

(assert (= (and b!7446010 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446492))

(assert (= (and b!7446010 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446493))

(declare-fun b!7446496 () Bool)

(declare-fun e!4445870 () Bool)

(declare-fun tp!2155613 () Bool)

(assert (=> b!7446496 (= e!4445870 tp!2155613)))

(declare-fun b!7446495 () Bool)

(declare-fun tp!2155609 () Bool)

(declare-fun tp!2155611 () Bool)

(assert (=> b!7446495 (= e!4445870 (and tp!2155609 tp!2155611))))

(assert (=> b!7446018 (= tp!2155196 e!4445870)))

(declare-fun b!7446497 () Bool)

(declare-fun tp!2155610 () Bool)

(declare-fun tp!2155612 () Bool)

(assert (=> b!7446497 (= e!4445870 (and tp!2155610 tp!2155612))))

(declare-fun b!7446494 () Bool)

(assert (=> b!7446494 (= e!4445870 tp_is_empty!49201)))

(assert (= (and b!7446018 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446494))

(assert (= (and b!7446018 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446495))

(assert (= (and b!7446018 ((_ is Star!19471) (regOne!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446496))

(assert (= (and b!7446018 ((_ is Union!19471) (regOne!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446497))

(declare-fun b!7446500 () Bool)

(declare-fun e!4445871 () Bool)

(declare-fun tp!2155618 () Bool)

(assert (=> b!7446500 (= e!4445871 tp!2155618)))

(declare-fun b!7446499 () Bool)

(declare-fun tp!2155614 () Bool)

(declare-fun tp!2155616 () Bool)

(assert (=> b!7446499 (= e!4445871 (and tp!2155614 tp!2155616))))

(assert (=> b!7446018 (= tp!2155198 e!4445871)))

(declare-fun b!7446501 () Bool)

(declare-fun tp!2155615 () Bool)

(declare-fun tp!2155617 () Bool)

(assert (=> b!7446501 (= e!4445871 (and tp!2155615 tp!2155617))))

(declare-fun b!7446498 () Bool)

(assert (=> b!7446498 (= e!4445871 tp_is_empty!49201)))

(assert (= (and b!7446018 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446498))

(assert (= (and b!7446018 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446499))

(assert (= (and b!7446018 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446500))

(assert (= (and b!7446018 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446501))

(declare-fun b!7446504 () Bool)

(declare-fun e!4445872 () Bool)

(declare-fun tp!2155623 () Bool)

(assert (=> b!7446504 (= e!4445872 tp!2155623)))

(declare-fun b!7446503 () Bool)

(declare-fun tp!2155619 () Bool)

(declare-fun tp!2155621 () Bool)

(assert (=> b!7446503 (= e!4445872 (and tp!2155619 tp!2155621))))

(assert (=> b!7446097 (= tp!2155300 e!4445872)))

(declare-fun b!7446505 () Bool)

(declare-fun tp!2155620 () Bool)

(declare-fun tp!2155622 () Bool)

(assert (=> b!7446505 (= e!4445872 (and tp!2155620 tp!2155622))))

(declare-fun b!7446502 () Bool)

(assert (=> b!7446502 (= e!4445872 tp_is_empty!49201)))

(assert (= (and b!7446097 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446502))

(assert (= (and b!7446097 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446503))

(assert (= (and b!7446097 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446504))

(assert (= (and b!7446097 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446505))

(declare-fun b!7446508 () Bool)

(declare-fun e!4445873 () Bool)

(declare-fun tp!2155628 () Bool)

(assert (=> b!7446508 (= e!4445873 tp!2155628)))

(declare-fun b!7446507 () Bool)

(declare-fun tp!2155624 () Bool)

(declare-fun tp!2155626 () Bool)

(assert (=> b!7446507 (= e!4445873 (and tp!2155624 tp!2155626))))

(assert (=> b!7446097 (= tp!2155302 e!4445873)))

(declare-fun b!7446509 () Bool)

(declare-fun tp!2155625 () Bool)

(declare-fun tp!2155627 () Bool)

(assert (=> b!7446509 (= e!4445873 (and tp!2155625 tp!2155627))))

(declare-fun b!7446506 () Bool)

(assert (=> b!7446506 (= e!4445873 tp_is_empty!49201)))

(assert (= (and b!7446097 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446506))

(assert (= (and b!7446097 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446507))

(assert (= (and b!7446097 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446508))

(assert (= (and b!7446097 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446509))

(declare-fun b!7446512 () Bool)

(declare-fun e!4445874 () Bool)

(declare-fun tp!2155633 () Bool)

(assert (=> b!7446512 (= e!4445874 tp!2155633)))

(declare-fun b!7446511 () Bool)

(declare-fun tp!2155629 () Bool)

(declare-fun tp!2155631 () Bool)

(assert (=> b!7446511 (= e!4445874 (and tp!2155629 tp!2155631))))

(assert (=> b!7446028 (= tp!2155210 e!4445874)))

(declare-fun b!7446513 () Bool)

(declare-fun tp!2155630 () Bool)

(declare-fun tp!2155632 () Bool)

(assert (=> b!7446513 (= e!4445874 (and tp!2155630 tp!2155632))))

(declare-fun b!7446510 () Bool)

(assert (=> b!7446510 (= e!4445874 tp_is_empty!49201)))

(assert (= (and b!7446028 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446510))

(assert (= (and b!7446028 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446511))

(assert (= (and b!7446028 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446512))

(assert (= (and b!7446028 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446513))

(declare-fun b!7446516 () Bool)

(declare-fun e!4445875 () Bool)

(declare-fun tp!2155638 () Bool)

(assert (=> b!7446516 (= e!4445875 tp!2155638)))

(declare-fun b!7446515 () Bool)

(declare-fun tp!2155634 () Bool)

(declare-fun tp!2155636 () Bool)

(assert (=> b!7446515 (= e!4445875 (and tp!2155634 tp!2155636))))

(assert (=> b!7446028 (= tp!2155212 e!4445875)))

(declare-fun b!7446517 () Bool)

(declare-fun tp!2155635 () Bool)

(declare-fun tp!2155637 () Bool)

(assert (=> b!7446517 (= e!4445875 (and tp!2155635 tp!2155637))))

(declare-fun b!7446514 () Bool)

(assert (=> b!7446514 (= e!4445875 tp_is_empty!49201)))

(assert (= (and b!7446028 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446514))

(assert (= (and b!7446028 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446515))

(assert (= (and b!7446028 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446516))

(assert (= (and b!7446028 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446517))

(declare-fun b!7446520 () Bool)

(declare-fun e!4445876 () Bool)

(declare-fun tp!2155643 () Bool)

(assert (=> b!7446520 (= e!4445876 tp!2155643)))

(declare-fun b!7446519 () Bool)

(declare-fun tp!2155639 () Bool)

(declare-fun tp!2155641 () Bool)

(assert (=> b!7446519 (= e!4445876 (and tp!2155639 tp!2155641))))

(assert (=> b!7446036 (= tp!2155220 e!4445876)))

(declare-fun b!7446521 () Bool)

(declare-fun tp!2155640 () Bool)

(declare-fun tp!2155642 () Bool)

(assert (=> b!7446521 (= e!4445876 (and tp!2155640 tp!2155642))))

(declare-fun b!7446518 () Bool)

(assert (=> b!7446518 (= e!4445876 tp_is_empty!49201)))

(assert (= (and b!7446036 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446518))

(assert (= (and b!7446036 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446519))

(assert (= (and b!7446036 ((_ is Star!19471) (regOne!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446520))

(assert (= (and b!7446036 ((_ is Union!19471) (regOne!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446521))

(declare-fun b!7446524 () Bool)

(declare-fun e!4445877 () Bool)

(declare-fun tp!2155648 () Bool)

(assert (=> b!7446524 (= e!4445877 tp!2155648)))

(declare-fun b!7446523 () Bool)

(declare-fun tp!2155644 () Bool)

(declare-fun tp!2155646 () Bool)

(assert (=> b!7446523 (= e!4445877 (and tp!2155644 tp!2155646))))

(assert (=> b!7446036 (= tp!2155222 e!4445877)))

(declare-fun b!7446525 () Bool)

(declare-fun tp!2155645 () Bool)

(declare-fun tp!2155647 () Bool)

(assert (=> b!7446525 (= e!4445877 (and tp!2155645 tp!2155647))))

(declare-fun b!7446522 () Bool)

(assert (=> b!7446522 (= e!4445877 tp_is_empty!49201)))

(assert (= (and b!7446036 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446522))

(assert (= (and b!7446036 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446523))

(assert (= (and b!7446036 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446524))

(assert (= (and b!7446036 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446525))

(declare-fun b!7446528 () Bool)

(declare-fun e!4445878 () Bool)

(declare-fun tp!2155653 () Bool)

(assert (=> b!7446528 (= e!4445878 tp!2155653)))

(declare-fun b!7446527 () Bool)

(declare-fun tp!2155649 () Bool)

(declare-fun tp!2155651 () Bool)

(assert (=> b!7446527 (= e!4445878 (and tp!2155649 tp!2155651))))

(assert (=> b!7445944 (= tp!2155105 e!4445878)))

(declare-fun b!7446529 () Bool)

(declare-fun tp!2155650 () Bool)

(declare-fun tp!2155652 () Bool)

(assert (=> b!7446529 (= e!4445878 (and tp!2155650 tp!2155652))))

(declare-fun b!7446526 () Bool)

(assert (=> b!7446526 (= e!4445878 tp_is_empty!49201)))

(assert (= (and b!7445944 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446526))

(assert (= (and b!7445944 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446527))

(assert (= (and b!7445944 ((_ is Star!19471) (regOne!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446528))

(assert (= (and b!7445944 ((_ is Union!19471) (regOne!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446529))

(declare-fun b!7446532 () Bool)

(declare-fun e!4445879 () Bool)

(declare-fun tp!2155658 () Bool)

(assert (=> b!7446532 (= e!4445879 tp!2155658)))

(declare-fun b!7446531 () Bool)

(declare-fun tp!2155654 () Bool)

(declare-fun tp!2155656 () Bool)

(assert (=> b!7446531 (= e!4445879 (and tp!2155654 tp!2155656))))

(assert (=> b!7445944 (= tp!2155107 e!4445879)))

(declare-fun b!7446533 () Bool)

(declare-fun tp!2155655 () Bool)

(declare-fun tp!2155657 () Bool)

(assert (=> b!7446533 (= e!4445879 (and tp!2155655 tp!2155657))))

(declare-fun b!7446530 () Bool)

(assert (=> b!7446530 (= e!4445879 tp_is_empty!49201)))

(assert (= (and b!7445944 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446530))

(assert (= (and b!7445944 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446531))

(assert (= (and b!7445944 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446532))

(assert (= (and b!7445944 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446533))

(declare-fun b!7446536 () Bool)

(declare-fun e!4445880 () Bool)

(declare-fun tp!2155663 () Bool)

(assert (=> b!7446536 (= e!4445880 tp!2155663)))

(declare-fun b!7446535 () Bool)

(declare-fun tp!2155659 () Bool)

(declare-fun tp!2155661 () Bool)

(assert (=> b!7446535 (= e!4445880 (and tp!2155659 tp!2155661))))

(assert (=> b!7446045 (= tp!2155234 e!4445880)))

(declare-fun b!7446537 () Bool)

(declare-fun tp!2155660 () Bool)

(declare-fun tp!2155662 () Bool)

(assert (=> b!7446537 (= e!4445880 (and tp!2155660 tp!2155662))))

(declare-fun b!7446534 () Bool)

(assert (=> b!7446534 (= e!4445880 tp_is_empty!49201)))

(assert (= (and b!7446045 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446534))

(assert (= (and b!7446045 ((_ is Concat!28316) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446535))

(assert (= (and b!7446045 ((_ is Star!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446536))

(assert (= (and b!7446045 ((_ is Union!19471) (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446537))

(declare-fun b!7446540 () Bool)

(declare-fun e!4445881 () Bool)

(declare-fun tp!2155668 () Bool)

(assert (=> b!7446540 (= e!4445881 tp!2155668)))

(declare-fun b!7446539 () Bool)

(declare-fun tp!2155664 () Bool)

(declare-fun tp!2155666 () Bool)

(assert (=> b!7446539 (= e!4445881 (and tp!2155664 tp!2155666))))

(assert (=> b!7445953 (= tp!2155119 e!4445881)))

(declare-fun b!7446541 () Bool)

(declare-fun tp!2155665 () Bool)

(declare-fun tp!2155667 () Bool)

(assert (=> b!7446541 (= e!4445881 (and tp!2155665 tp!2155667))))

(declare-fun b!7446538 () Bool)

(assert (=> b!7446538 (= e!4445881 tp_is_empty!49201)))

(assert (= (and b!7445953 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446538))

(assert (= (and b!7445953 ((_ is Concat!28316) (reg!19800 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446539))

(assert (= (and b!7445953 ((_ is Star!19471) (reg!19800 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446540))

(assert (= (and b!7445953 ((_ is Union!19471) (reg!19800 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446541))

(declare-fun b!7446544 () Bool)

(declare-fun e!4445882 () Bool)

(declare-fun tp!2155673 () Bool)

(assert (=> b!7446544 (= e!4445882 tp!2155673)))

(declare-fun b!7446543 () Bool)

(declare-fun tp!2155669 () Bool)

(declare-fun tp!2155671 () Bool)

(assert (=> b!7446543 (= e!4445882 (and tp!2155669 tp!2155671))))

(assert (=> b!7445961 (= tp!2155129 e!4445882)))

(declare-fun b!7446545 () Bool)

(declare-fun tp!2155670 () Bool)

(declare-fun tp!2155672 () Bool)

(assert (=> b!7446545 (= e!4445882 (and tp!2155670 tp!2155672))))

(declare-fun b!7446542 () Bool)

(assert (=> b!7446542 (= e!4445882 tp_is_empty!49201)))

(assert (= (and b!7445961 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446542))

(assert (= (and b!7445961 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446543))

(assert (= (and b!7445961 ((_ is Star!19471) (reg!19800 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446544))

(assert (= (and b!7445961 ((_ is Union!19471) (reg!19800 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446545))

(declare-fun b!7446548 () Bool)

(declare-fun e!4445883 () Bool)

(declare-fun tp!2155678 () Bool)

(assert (=> b!7446548 (= e!4445883 tp!2155678)))

(declare-fun b!7446547 () Bool)

(declare-fun tp!2155674 () Bool)

(declare-fun tp!2155676 () Bool)

(assert (=> b!7446547 (= e!4445883 (and tp!2155674 tp!2155676))))

(assert (=> b!7445969 (= tp!2155139 e!4445883)))

(declare-fun b!7446549 () Bool)

(declare-fun tp!2155675 () Bool)

(declare-fun tp!2155677 () Bool)

(assert (=> b!7446549 (= e!4445883 (and tp!2155675 tp!2155677))))

(declare-fun b!7446546 () Bool)

(assert (=> b!7446546 (= e!4445883 tp_is_empty!49201)))

(assert (= (and b!7445969 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446546))

(assert (= (and b!7445969 ((_ is Concat!28316) (reg!19800 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446547))

(assert (= (and b!7445969 ((_ is Star!19471) (reg!19800 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446548))

(assert (= (and b!7445969 ((_ is Union!19471) (reg!19800 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446549))

(declare-fun b!7446552 () Bool)

(declare-fun e!4445884 () Bool)

(declare-fun tp!2155683 () Bool)

(assert (=> b!7446552 (= e!4445884 tp!2155683)))

(declare-fun b!7446551 () Bool)

(declare-fun tp!2155679 () Bool)

(declare-fun tp!2155681 () Bool)

(assert (=> b!7446551 (= e!4445884 (and tp!2155679 tp!2155681))))

(assert (=> b!7445978 (= tp!2155146 e!4445884)))

(declare-fun b!7446553 () Bool)

(declare-fun tp!2155680 () Bool)

(declare-fun tp!2155682 () Bool)

(assert (=> b!7446553 (= e!4445884 (and tp!2155680 tp!2155682))))

(declare-fun b!7446550 () Bool)

(assert (=> b!7446550 (= e!4445884 tp_is_empty!49201)))

(assert (= (and b!7445978 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446550))

(assert (= (and b!7445978 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446551))

(assert (= (and b!7445978 ((_ is Star!19471) (regOne!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446552))

(assert (= (and b!7445978 ((_ is Union!19471) (regOne!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446553))

(declare-fun b!7446556 () Bool)

(declare-fun e!4445885 () Bool)

(declare-fun tp!2155688 () Bool)

(assert (=> b!7446556 (= e!4445885 tp!2155688)))

(declare-fun b!7446555 () Bool)

(declare-fun tp!2155684 () Bool)

(declare-fun tp!2155686 () Bool)

(assert (=> b!7446555 (= e!4445885 (and tp!2155684 tp!2155686))))

(assert (=> b!7445978 (= tp!2155148 e!4445885)))

(declare-fun b!7446557 () Bool)

(declare-fun tp!2155685 () Bool)

(declare-fun tp!2155687 () Bool)

(assert (=> b!7446557 (= e!4445885 (and tp!2155685 tp!2155687))))

(declare-fun b!7446554 () Bool)

(assert (=> b!7446554 (= e!4445885 tp_is_empty!49201)))

(assert (= (and b!7445978 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446554))

(assert (= (and b!7445978 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446555))

(assert (= (and b!7445978 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446556))

(assert (= (and b!7445978 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446557))

(declare-fun b!7446560 () Bool)

(declare-fun e!4445886 () Bool)

(declare-fun tp!2155693 () Bool)

(assert (=> b!7446560 (= e!4445886 tp!2155693)))

(declare-fun b!7446559 () Bool)

(declare-fun tp!2155689 () Bool)

(declare-fun tp!2155691 () Bool)

(assert (=> b!7446559 (= e!4445886 (and tp!2155689 tp!2155691))))

(assert (=> b!7446065 (= tp!2155260 e!4445886)))

(declare-fun b!7446561 () Bool)

(declare-fun tp!2155690 () Bool)

(declare-fun tp!2155692 () Bool)

(assert (=> b!7446561 (= e!4445886 (and tp!2155690 tp!2155692))))

(declare-fun b!7446558 () Bool)

(assert (=> b!7446558 (= e!4445886 tp_is_empty!49201)))

(assert (= (and b!7446065 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446558))

(assert (= (and b!7446065 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446559))

(assert (= (and b!7446065 ((_ is Star!19471) (regOne!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446560))

(assert (= (and b!7446065 ((_ is Union!19471) (regOne!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446561))

(declare-fun b!7446564 () Bool)

(declare-fun e!4445887 () Bool)

(declare-fun tp!2155698 () Bool)

(assert (=> b!7446564 (= e!4445887 tp!2155698)))

(declare-fun b!7446563 () Bool)

(declare-fun tp!2155694 () Bool)

(declare-fun tp!2155696 () Bool)

(assert (=> b!7446563 (= e!4445887 (and tp!2155694 tp!2155696))))

(assert (=> b!7446065 (= tp!2155262 e!4445887)))

(declare-fun b!7446565 () Bool)

(declare-fun tp!2155695 () Bool)

(declare-fun tp!2155697 () Bool)

(assert (=> b!7446565 (= e!4445887 (and tp!2155695 tp!2155697))))

(declare-fun b!7446562 () Bool)

(assert (=> b!7446562 (= e!4445887 tp_is_empty!49201)))

(assert (= (and b!7446065 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446562))

(assert (= (and b!7446065 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446563))

(assert (= (and b!7446065 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446564))

(assert (= (and b!7446065 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446565))

(declare-fun b!7446568 () Bool)

(declare-fun e!4445888 () Bool)

(declare-fun tp!2155703 () Bool)

(assert (=> b!7446568 (= e!4445888 tp!2155703)))

(declare-fun b!7446567 () Bool)

(declare-fun tp!2155699 () Bool)

(declare-fun tp!2155701 () Bool)

(assert (=> b!7446567 (= e!4445888 (and tp!2155699 tp!2155701))))

(assert (=> b!7446074 (= tp!2155274 e!4445888)))

(declare-fun b!7446569 () Bool)

(declare-fun tp!2155700 () Bool)

(declare-fun tp!2155702 () Bool)

(assert (=> b!7446569 (= e!4445888 (and tp!2155700 tp!2155702))))

(declare-fun b!7446566 () Bool)

(assert (=> b!7446566 (= e!4445888 tp_is_empty!49201)))

(assert (= (and b!7446074 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446566))

(assert (= (and b!7446074 ((_ is Concat!28316) (reg!19800 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446567))

(assert (= (and b!7446074 ((_ is Star!19471) (reg!19800 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446568))

(assert (= (and b!7446074 ((_ is Union!19471) (reg!19800 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446569))

(declare-fun b!7446572 () Bool)

(declare-fun e!4445889 () Bool)

(declare-fun tp!2155708 () Bool)

(assert (=> b!7446572 (= e!4445889 tp!2155708)))

(declare-fun b!7446571 () Bool)

(declare-fun tp!2155704 () Bool)

(declare-fun tp!2155706 () Bool)

(assert (=> b!7446571 (= e!4445889 (and tp!2155704 tp!2155706))))

(assert (=> b!7446083 (= tp!2155281 e!4445889)))

(declare-fun b!7446573 () Bool)

(declare-fun tp!2155705 () Bool)

(declare-fun tp!2155707 () Bool)

(assert (=> b!7446573 (= e!4445889 (and tp!2155705 tp!2155707))))

(declare-fun b!7446570 () Bool)

(assert (=> b!7446570 (= e!4445889 tp_is_empty!49201)))

(assert (= (and b!7446083 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446570))

(assert (= (and b!7446083 ((_ is Concat!28316) (regOne!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446571))

(assert (= (and b!7446083 ((_ is Star!19471) (regOne!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446572))

(assert (= (and b!7446083 ((_ is Union!19471) (regOne!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446573))

(declare-fun b!7446576 () Bool)

(declare-fun e!4445890 () Bool)

(declare-fun tp!2155713 () Bool)

(assert (=> b!7446576 (= e!4445890 tp!2155713)))

(declare-fun b!7446575 () Bool)

(declare-fun tp!2155709 () Bool)

(declare-fun tp!2155711 () Bool)

(assert (=> b!7446575 (= e!4445890 (and tp!2155709 tp!2155711))))

(assert (=> b!7446083 (= tp!2155283 e!4445890)))

(declare-fun b!7446577 () Bool)

(declare-fun tp!2155710 () Bool)

(declare-fun tp!2155712 () Bool)

(assert (=> b!7446577 (= e!4445890 (and tp!2155710 tp!2155712))))

(declare-fun b!7446574 () Bool)

(assert (=> b!7446574 (= e!4445890 tp_is_empty!49201)))

(assert (= (and b!7446083 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446574))

(assert (= (and b!7446083 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446575))

(assert (= (and b!7446083 ((_ is Star!19471) (regTwo!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446576))

(assert (= (and b!7446083 ((_ is Union!19471) (regTwo!39455 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446577))

(declare-fun b!7446580 () Bool)

(declare-fun e!4445891 () Bool)

(declare-fun tp!2155718 () Bool)

(assert (=> b!7446580 (= e!4445891 tp!2155718)))

(declare-fun b!7446579 () Bool)

(declare-fun tp!2155714 () Bool)

(declare-fun tp!2155716 () Bool)

(assert (=> b!7446579 (= e!4445891 (and tp!2155714 tp!2155716))))

(assert (=> b!7446047 (= tp!2155235 e!4445891)))

(declare-fun b!7446581 () Bool)

(declare-fun tp!2155715 () Bool)

(declare-fun tp!2155717 () Bool)

(assert (=> b!7446581 (= e!4445891 (and tp!2155715 tp!2155717))))

(declare-fun b!7446578 () Bool)

(assert (=> b!7446578 (= e!4445891 tp_is_empty!49201)))

(assert (= (and b!7446047 ((_ is ElementMatch!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710)))))) b!7446578))

(assert (= (and b!7446047 ((_ is Concat!28316) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710)))))) b!7446579))

(assert (= (and b!7446047 ((_ is Star!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710)))))) b!7446580))

(assert (= (and b!7446047 ((_ is Union!19471) (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710)))))) b!7446581))

(declare-fun b!7446582 () Bool)

(declare-fun e!4445892 () Bool)

(declare-fun tp!2155719 () Bool)

(declare-fun tp!2155720 () Bool)

(assert (=> b!7446582 (= e!4445892 (and tp!2155719 tp!2155720))))

(assert (=> b!7446047 (= tp!2155236 e!4445892)))

(assert (= (and b!7446047 ((_ is Cons!72046) (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56710)))))) b!7446582))

(declare-fun b!7446585 () Bool)

(declare-fun e!4445893 () Bool)

(declare-fun tp!2155725 () Bool)

(assert (=> b!7446585 (= e!4445893 tp!2155725)))

(declare-fun b!7446584 () Bool)

(declare-fun tp!2155721 () Bool)

(declare-fun tp!2155723 () Bool)

(assert (=> b!7446584 (= e!4445893 (and tp!2155721 tp!2155723))))

(assert (=> b!7446051 (= tp!2155243 e!4445893)))

(declare-fun b!7446586 () Bool)

(declare-fun tp!2155722 () Bool)

(declare-fun tp!2155724 () Bool)

(assert (=> b!7446586 (= e!4445893 (and tp!2155722 tp!2155724))))

(declare-fun b!7446583 () Bool)

(assert (=> b!7446583 (= e!4445893 tp_is_empty!49201)))

(assert (= (and b!7446051 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446583))

(assert (= (and b!7446051 ((_ is Concat!28316) (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446584))

(assert (= (and b!7446051 ((_ is Star!19471) (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446585))

(assert (= (and b!7446051 ((_ is Union!19471) (reg!19800 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446586))

(declare-fun b!7446589 () Bool)

(declare-fun e!4445894 () Bool)

(declare-fun tp!2155730 () Bool)

(assert (=> b!7446589 (= e!4445894 tp!2155730)))

(declare-fun b!7446588 () Bool)

(declare-fun tp!2155726 () Bool)

(declare-fun tp!2155728 () Bool)

(assert (=> b!7446588 (= e!4445894 (and tp!2155726 tp!2155728))))

(assert (=> b!7446066 (= tp!2155264 e!4445894)))

(declare-fun b!7446590 () Bool)

(declare-fun tp!2155727 () Bool)

(declare-fun tp!2155729 () Bool)

(assert (=> b!7446590 (= e!4445894 (and tp!2155727 tp!2155729))))

(declare-fun b!7446587 () Bool)

(assert (=> b!7446587 (= e!4445894 tp_is_empty!49201)))

(assert (= (and b!7446066 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446587))

(assert (= (and b!7446066 ((_ is Concat!28316) (reg!19800 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446588))

(assert (= (and b!7446066 ((_ is Star!19471) (reg!19800 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446589))

(assert (= (and b!7446066 ((_ is Union!19471) (reg!19800 (regOne!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446590))

(declare-fun b!7446593 () Bool)

(declare-fun e!4445895 () Bool)

(declare-fun tp!2155735 () Bool)

(assert (=> b!7446593 (= e!4445895 tp!2155735)))

(declare-fun b!7446592 () Bool)

(declare-fun tp!2155731 () Bool)

(declare-fun tp!2155733 () Bool)

(assert (=> b!7446592 (= e!4445895 (and tp!2155731 tp!2155733))))

(assert (=> b!7446075 (= tp!2155271 e!4445895)))

(declare-fun b!7446594 () Bool)

(declare-fun tp!2155732 () Bool)

(declare-fun tp!2155734 () Bool)

(assert (=> b!7446594 (= e!4445895 (and tp!2155732 tp!2155734))))

(declare-fun b!7446591 () Bool)

(assert (=> b!7446591 (= e!4445895 tp_is_empty!49201)))

(assert (= (and b!7446075 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446591))

(assert (= (and b!7446075 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446592))

(assert (= (and b!7446075 ((_ is Star!19471) (regOne!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446593))

(assert (= (and b!7446075 ((_ is Union!19471) (regOne!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446594))

(declare-fun b!7446597 () Bool)

(declare-fun e!4445896 () Bool)

(declare-fun tp!2155740 () Bool)

(assert (=> b!7446597 (= e!4445896 tp!2155740)))

(declare-fun b!7446596 () Bool)

(declare-fun tp!2155736 () Bool)

(declare-fun tp!2155738 () Bool)

(assert (=> b!7446596 (= e!4445896 (and tp!2155736 tp!2155738))))

(assert (=> b!7446075 (= tp!2155273 e!4445896)))

(declare-fun b!7446598 () Bool)

(declare-fun tp!2155737 () Bool)

(declare-fun tp!2155739 () Bool)

(assert (=> b!7446598 (= e!4445896 (and tp!2155737 tp!2155739))))

(declare-fun b!7446595 () Bool)

(assert (=> b!7446595 (= e!4445896 tp_is_empty!49201)))

(assert (= (and b!7446075 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446595))

(assert (= (and b!7446075 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446596))

(assert (= (and b!7446075 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446597))

(assert (= (and b!7446075 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446598))

(declare-fun b!7446601 () Bool)

(declare-fun e!4445897 () Bool)

(declare-fun tp!2155745 () Bool)

(assert (=> b!7446601 (= e!4445897 tp!2155745)))

(declare-fun b!7446600 () Bool)

(declare-fun tp!2155741 () Bool)

(declare-fun tp!2155743 () Bool)

(assert (=> b!7446600 (= e!4445897 (and tp!2155741 tp!2155743))))

(assert (=> b!7445956 (= tp!2155120 e!4445897)))

(declare-fun b!7446602 () Bool)

(declare-fun tp!2155742 () Bool)

(declare-fun tp!2155744 () Bool)

(assert (=> b!7446602 (= e!4445897 (and tp!2155742 tp!2155744))))

(declare-fun b!7446599 () Bool)

(assert (=> b!7446599 (= e!4445897 tp_is_empty!49201)))

(assert (= (and b!7445956 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446599))

(assert (= (and b!7445956 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446600))

(assert (= (and b!7445956 ((_ is Star!19471) (regOne!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446601))

(assert (= (and b!7445956 ((_ is Union!19471) (regOne!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446602))

(declare-fun b!7446605 () Bool)

(declare-fun e!4445898 () Bool)

(declare-fun tp!2155750 () Bool)

(assert (=> b!7446605 (= e!4445898 tp!2155750)))

(declare-fun b!7446604 () Bool)

(declare-fun tp!2155746 () Bool)

(declare-fun tp!2155748 () Bool)

(assert (=> b!7446604 (= e!4445898 (and tp!2155746 tp!2155748))))

(assert (=> b!7445956 (= tp!2155122 e!4445898)))

(declare-fun b!7446606 () Bool)

(declare-fun tp!2155747 () Bool)

(declare-fun tp!2155749 () Bool)

(assert (=> b!7446606 (= e!4445898 (and tp!2155747 tp!2155749))))

(declare-fun b!7446603 () Bool)

(assert (=> b!7446603 (= e!4445898 tp_is_empty!49201)))

(assert (= (and b!7445956 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446603))

(assert (= (and b!7445956 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446604))

(assert (= (and b!7445956 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446605))

(assert (= (and b!7445956 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446606))

(declare-fun b!7446609 () Bool)

(declare-fun e!4445899 () Bool)

(declare-fun tp!2155755 () Bool)

(assert (=> b!7446609 (= e!4445899 tp!2155755)))

(declare-fun b!7446608 () Bool)

(declare-fun tp!2155751 () Bool)

(declare-fun tp!2155753 () Bool)

(assert (=> b!7446608 (= e!4445899 (and tp!2155751 tp!2155753))))

(assert (=> b!7445972 (= tp!2155140 e!4445899)))

(declare-fun b!7446610 () Bool)

(declare-fun tp!2155752 () Bool)

(declare-fun tp!2155754 () Bool)

(assert (=> b!7446610 (= e!4445899 (and tp!2155752 tp!2155754))))

(declare-fun b!7446607 () Bool)

(assert (=> b!7446607 (= e!4445899 tp_is_empty!49201)))

(assert (= (and b!7445972 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446607))

(assert (= (and b!7445972 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446608))

(assert (= (and b!7445972 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446609))

(assert (= (and b!7445972 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446610))

(declare-fun b!7446613 () Bool)

(declare-fun e!4445900 () Bool)

(declare-fun tp!2155760 () Bool)

(assert (=> b!7446613 (= e!4445900 tp!2155760)))

(declare-fun b!7446612 () Bool)

(declare-fun tp!2155756 () Bool)

(declare-fun tp!2155758 () Bool)

(assert (=> b!7446612 (= e!4445900 (and tp!2155756 tp!2155758))))

(assert (=> b!7445972 (= tp!2155142 e!4445900)))

(declare-fun b!7446614 () Bool)

(declare-fun tp!2155757 () Bool)

(declare-fun tp!2155759 () Bool)

(assert (=> b!7446614 (= e!4445900 (and tp!2155757 tp!2155759))))

(declare-fun b!7446611 () Bool)

(assert (=> b!7446611 (= e!4445900 tp_is_empty!49201)))

(assert (= (and b!7445972 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446611))

(assert (= (and b!7445972 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446612))

(assert (= (and b!7445972 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446613))

(assert (= (and b!7445972 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446614))

(declare-fun b!7446617 () Bool)

(declare-fun e!4445901 () Bool)

(declare-fun tp!2155765 () Bool)

(assert (=> b!7446617 (= e!4445901 tp!2155765)))

(declare-fun b!7446616 () Bool)

(declare-fun tp!2155761 () Bool)

(declare-fun tp!2155763 () Bool)

(assert (=> b!7446616 (= e!4445901 (and tp!2155761 tp!2155763))))

(assert (=> b!7445981 (= tp!2155154 e!4445901)))

(declare-fun b!7446618 () Bool)

(declare-fun tp!2155762 () Bool)

(declare-fun tp!2155764 () Bool)

(assert (=> b!7446618 (= e!4445901 (and tp!2155762 tp!2155764))))

(declare-fun b!7446615 () Bool)

(assert (=> b!7446615 (= e!4445901 tp_is_empty!49201)))

(assert (= (and b!7445981 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446615))

(assert (= (and b!7445981 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446616))

(assert (= (and b!7445981 ((_ is Star!19471) (reg!19800 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446617))

(assert (= (and b!7445981 ((_ is Union!19471) (reg!19800 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446618))

(declare-fun b!7446621 () Bool)

(declare-fun e!4445902 () Bool)

(declare-fun tp!2155770 () Bool)

(assert (=> b!7446621 (= e!4445902 tp!2155770)))

(declare-fun b!7446620 () Bool)

(declare-fun tp!2155766 () Bool)

(declare-fun tp!2155768 () Bool)

(assert (=> b!7446620 (= e!4445902 (and tp!2155766 tp!2155768))))

(assert (=> b!7445990 (= tp!2155161 e!4445902)))

(declare-fun b!7446622 () Bool)

(declare-fun tp!2155767 () Bool)

(declare-fun tp!2155769 () Bool)

(assert (=> b!7446622 (= e!4445902 (and tp!2155767 tp!2155769))))

(declare-fun b!7446619 () Bool)

(assert (=> b!7446619 (= e!4445902 tp_is_empty!49201)))

(assert (= (and b!7445990 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446619))

(assert (= (and b!7445990 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446620))

(assert (= (and b!7445990 ((_ is Star!19471) (regOne!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446621))

(assert (= (and b!7445990 ((_ is Union!19471) (regOne!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446622))

(declare-fun b!7446625 () Bool)

(declare-fun e!4445903 () Bool)

(declare-fun tp!2155775 () Bool)

(assert (=> b!7446625 (= e!4445903 tp!2155775)))

(declare-fun b!7446624 () Bool)

(declare-fun tp!2155771 () Bool)

(declare-fun tp!2155773 () Bool)

(assert (=> b!7446624 (= e!4445903 (and tp!2155771 tp!2155773))))

(assert (=> b!7445990 (= tp!2155163 e!4445903)))

(declare-fun b!7446626 () Bool)

(declare-fun tp!2155772 () Bool)

(declare-fun tp!2155774 () Bool)

(assert (=> b!7446626 (= e!4445903 (and tp!2155772 tp!2155774))))

(declare-fun b!7446623 () Bool)

(assert (=> b!7446623 (= e!4445903 tp_is_empty!49201)))

(assert (= (and b!7445990 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446623))

(assert (= (and b!7445990 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446624))

(assert (= (and b!7445990 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446625))

(assert (= (and b!7445990 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446626))

(declare-fun b!7446629 () Bool)

(declare-fun e!4445904 () Bool)

(declare-fun tp!2155780 () Bool)

(assert (=> b!7446629 (= e!4445904 tp!2155780)))

(declare-fun b!7446628 () Bool)

(declare-fun tp!2155776 () Bool)

(declare-fun tp!2155778 () Bool)

(assert (=> b!7446628 (= e!4445904 (and tp!2155776 tp!2155778))))

(assert (=> b!7446086 (= tp!2155289 e!4445904)))

(declare-fun b!7446630 () Bool)

(declare-fun tp!2155777 () Bool)

(declare-fun tp!2155779 () Bool)

(assert (=> b!7446630 (= e!4445904 (and tp!2155777 tp!2155779))))

(declare-fun b!7446627 () Bool)

(assert (=> b!7446627 (= e!4445904 tp_is_empty!49201)))

(assert (= (and b!7446086 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446627))

(assert (= (and b!7446086 ((_ is Concat!28316) (reg!19800 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446628))

(assert (= (and b!7446086 ((_ is Star!19471) (reg!19800 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446629))

(assert (= (and b!7446086 ((_ is Union!19471) (reg!19800 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446630))

(declare-fun b!7446633 () Bool)

(declare-fun e!4445905 () Bool)

(declare-fun tp!2155785 () Bool)

(assert (=> b!7446633 (= e!4445905 tp!2155785)))

(declare-fun b!7446632 () Bool)

(declare-fun tp!2155781 () Bool)

(declare-fun tp!2155783 () Bool)

(assert (=> b!7446632 (= e!4445905 (and tp!2155781 tp!2155783))))

(assert (=> b!7446095 (= tp!2155296 e!4445905)))

(declare-fun b!7446634 () Bool)

(declare-fun tp!2155782 () Bool)

(declare-fun tp!2155784 () Bool)

(assert (=> b!7446634 (= e!4445905 (and tp!2155782 tp!2155784))))

(declare-fun b!7446631 () Bool)

(assert (=> b!7446631 (= e!4445905 tp_is_empty!49201)))

(assert (= (and b!7446095 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446631))

(assert (= (and b!7446095 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446632))

(assert (= (and b!7446095 ((_ is Star!19471) (regOne!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446633))

(assert (= (and b!7446095 ((_ is Union!19471) (regOne!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446634))

(declare-fun b!7446637 () Bool)

(declare-fun e!4445906 () Bool)

(declare-fun tp!2155790 () Bool)

(assert (=> b!7446637 (= e!4445906 tp!2155790)))

(declare-fun b!7446636 () Bool)

(declare-fun tp!2155786 () Bool)

(declare-fun tp!2155788 () Bool)

(assert (=> b!7446636 (= e!4445906 (and tp!2155786 tp!2155788))))

(assert (=> b!7446095 (= tp!2155298 e!4445906)))

(declare-fun b!7446638 () Bool)

(declare-fun tp!2155787 () Bool)

(declare-fun tp!2155789 () Bool)

(assert (=> b!7446638 (= e!4445906 (and tp!2155787 tp!2155789))))

(declare-fun b!7446635 () Bool)

(assert (=> b!7446635 (= e!4445906 tp_is_empty!49201)))

(assert (= (and b!7446095 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446635))

(assert (= (and b!7446095 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446636))

(assert (= (and b!7446095 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446637))

(assert (= (and b!7446095 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446638))

(declare-fun b!7446641 () Bool)

(declare-fun e!4445907 () Bool)

(declare-fun tp!2155795 () Bool)

(assert (=> b!7446641 (= e!4445907 tp!2155795)))

(declare-fun b!7446640 () Bool)

(declare-fun tp!2155791 () Bool)

(declare-fun tp!2155793 () Bool)

(assert (=> b!7446640 (= e!4445907 (and tp!2155791 tp!2155793))))

(assert (=> b!7446026 (= tp!2155206 e!4445907)))

(declare-fun b!7446642 () Bool)

(declare-fun tp!2155792 () Bool)

(declare-fun tp!2155794 () Bool)

(assert (=> b!7446642 (= e!4445907 (and tp!2155792 tp!2155794))))

(declare-fun b!7446639 () Bool)

(assert (=> b!7446639 (= e!4445907 tp_is_empty!49201)))

(assert (= (and b!7446026 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446639))

(assert (= (and b!7446026 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446640))

(assert (= (and b!7446026 ((_ is Star!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446641))

(assert (= (and b!7446026 ((_ is Union!19471) (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446642))

(declare-fun b!7446645 () Bool)

(declare-fun e!4445908 () Bool)

(declare-fun tp!2155800 () Bool)

(assert (=> b!7446645 (= e!4445908 tp!2155800)))

(declare-fun b!7446644 () Bool)

(declare-fun tp!2155796 () Bool)

(declare-fun tp!2155798 () Bool)

(assert (=> b!7446644 (= e!4445908 (and tp!2155796 tp!2155798))))

(assert (=> b!7446026 (= tp!2155208 e!4445908)))

(declare-fun b!7446646 () Bool)

(declare-fun tp!2155797 () Bool)

(declare-fun tp!2155799 () Bool)

(assert (=> b!7446646 (= e!4445908 (and tp!2155797 tp!2155799))))

(declare-fun b!7446643 () Bool)

(assert (=> b!7446643 (= e!4445908 tp_is_empty!49201)))

(assert (= (and b!7446026 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446643))

(assert (= (and b!7446026 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446644))

(assert (= (and b!7446026 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446645))

(assert (= (and b!7446026 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446646))

(declare-fun b!7446649 () Bool)

(declare-fun e!4445909 () Bool)

(declare-fun tp!2155805 () Bool)

(assert (=> b!7446649 (= e!4445909 tp!2155805)))

(declare-fun b!7446648 () Bool)

(declare-fun tp!2155801 () Bool)

(declare-fun tp!2155803 () Bool)

(assert (=> b!7446648 (= e!4445909 (and tp!2155801 tp!2155803))))

(assert (=> b!7446034 (= tp!2155216 e!4445909)))

(declare-fun b!7446650 () Bool)

(declare-fun tp!2155802 () Bool)

(declare-fun tp!2155804 () Bool)

(assert (=> b!7446650 (= e!4445909 (and tp!2155802 tp!2155804))))

(declare-fun b!7446647 () Bool)

(assert (=> b!7446647 (= e!4445909 tp_is_empty!49201)))

(assert (= (and b!7446034 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446647))

(assert (= (and b!7446034 ((_ is Concat!28316) (regOne!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446648))

(assert (= (and b!7446034 ((_ is Star!19471) (regOne!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446649))

(assert (= (and b!7446034 ((_ is Union!19471) (regOne!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446650))

(declare-fun b!7446653 () Bool)

(declare-fun e!4445910 () Bool)

(declare-fun tp!2155810 () Bool)

(assert (=> b!7446653 (= e!4445910 tp!2155810)))

(declare-fun b!7446652 () Bool)

(declare-fun tp!2155806 () Bool)

(declare-fun tp!2155808 () Bool)

(assert (=> b!7446652 (= e!4445910 (and tp!2155806 tp!2155808))))

(assert (=> b!7446034 (= tp!2155218 e!4445910)))

(declare-fun b!7446654 () Bool)

(declare-fun tp!2155807 () Bool)

(declare-fun tp!2155809 () Bool)

(assert (=> b!7446654 (= e!4445910 (and tp!2155807 tp!2155809))))

(declare-fun b!7446651 () Bool)

(assert (=> b!7446651 (= e!4445910 tp_is_empty!49201)))

(assert (= (and b!7446034 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446651))

(assert (= (and b!7446034 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446652))

(assert (= (and b!7446034 ((_ is Star!19471) (regTwo!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446653))

(assert (= (and b!7446034 ((_ is Union!19471) (regTwo!39455 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446654))

(declare-fun b!7446655 () Bool)

(declare-fun e!4445911 () Bool)

(declare-fun tp!2155811 () Bool)

(assert (=> b!7446655 (= e!4445911 (and tp_is_empty!49201 tp!2155811))))

(assert (=> b!7445942 (= tp!2155104 e!4445911)))

(assert (= (and b!7445942 ((_ is Cons!72047) (t!386736 (t!386736 (t!386736 (t!386736 (t!386736 s!7951))))))) b!7446655))

(declare-fun b!7446658 () Bool)

(declare-fun e!4445912 () Bool)

(declare-fun tp!2155816 () Bool)

(assert (=> b!7446658 (= e!4445912 tp!2155816)))

(declare-fun b!7446657 () Bool)

(declare-fun tp!2155812 () Bool)

(declare-fun tp!2155814 () Bool)

(assert (=> b!7446657 (= e!4445912 (and tp!2155812 tp!2155814))))

(assert (=> b!7446077 (= tp!2155275 e!4445912)))

(declare-fun b!7446659 () Bool)

(declare-fun tp!2155813 () Bool)

(declare-fun tp!2155815 () Bool)

(assert (=> b!7446659 (= e!4445912 (and tp!2155813 tp!2155815))))

(declare-fun b!7446656 () Bool)

(assert (=> b!7446656 (= e!4445912 tp_is_empty!49201)))

(assert (= (and b!7446077 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446656))

(assert (= (and b!7446077 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446657))

(assert (= (and b!7446077 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446658))

(assert (= (and b!7446077 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446659))

(declare-fun b!7446662 () Bool)

(declare-fun e!4445913 () Bool)

(declare-fun tp!2155821 () Bool)

(assert (=> b!7446662 (= e!4445913 tp!2155821)))

(declare-fun b!7446661 () Bool)

(declare-fun tp!2155817 () Bool)

(declare-fun tp!2155819 () Bool)

(assert (=> b!7446661 (= e!4445913 (and tp!2155817 tp!2155819))))

(assert (=> b!7446077 (= tp!2155277 e!4445913)))

(declare-fun b!7446663 () Bool)

(declare-fun tp!2155818 () Bool)

(declare-fun tp!2155820 () Bool)

(assert (=> b!7446663 (= e!4445913 (and tp!2155818 tp!2155820))))

(declare-fun b!7446660 () Bool)

(assert (=> b!7446660 (= e!4445913 tp_is_empty!49201)))

(assert (= (and b!7446077 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446660))

(assert (= (and b!7446077 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446661))

(assert (= (and b!7446077 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446662))

(assert (= (and b!7446077 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446663))

(declare-fun b!7446666 () Bool)

(declare-fun e!4445914 () Bool)

(declare-fun tp!2155826 () Bool)

(assert (=> b!7446666 (= e!4445914 tp!2155826)))

(declare-fun b!7446665 () Bool)

(declare-fun tp!2155822 () Bool)

(declare-fun tp!2155824 () Bool)

(assert (=> b!7446665 (= e!4445914 (and tp!2155822 tp!2155824))))

(assert (=> b!7446062 (= tp!2155259 e!4445914)))

(declare-fun b!7446667 () Bool)

(declare-fun tp!2155823 () Bool)

(declare-fun tp!2155825 () Bool)

(assert (=> b!7446667 (= e!4445914 (and tp!2155823 tp!2155825))))

(declare-fun b!7446664 () Bool)

(assert (=> b!7446664 (= e!4445914 tp_is_empty!49201)))

(assert (= (and b!7446062 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446664))

(assert (= (and b!7446062 ((_ is Concat!28316) (reg!19800 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446665))

(assert (= (and b!7446062 ((_ is Star!19471) (reg!19800 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446666))

(assert (= (and b!7446062 ((_ is Union!19471) (reg!19800 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446667))

(declare-fun b!7446670 () Bool)

(declare-fun e!4445915 () Bool)

(declare-fun tp!2155831 () Bool)

(assert (=> b!7446670 (= e!4445915 tp!2155831)))

(declare-fun b!7446669 () Bool)

(declare-fun tp!2155827 () Bool)

(declare-fun tp!2155829 () Bool)

(assert (=> b!7446669 (= e!4445915 (and tp!2155827 tp!2155829))))

(assert (=> b!7446071 (= tp!2155266 e!4445915)))

(declare-fun b!7446671 () Bool)

(declare-fun tp!2155828 () Bool)

(declare-fun tp!2155830 () Bool)

(assert (=> b!7446671 (= e!4445915 (and tp!2155828 tp!2155830))))

(declare-fun b!7446668 () Bool)

(assert (=> b!7446668 (= e!4445915 tp_is_empty!49201)))

(assert (= (and b!7446071 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446668))

(assert (= (and b!7446071 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446669))

(assert (= (and b!7446071 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446670))

(assert (= (and b!7446071 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446671))

(declare-fun b!7446674 () Bool)

(declare-fun e!4445916 () Bool)

(declare-fun tp!2155836 () Bool)

(assert (=> b!7446674 (= e!4445916 tp!2155836)))

(declare-fun b!7446673 () Bool)

(declare-fun tp!2155832 () Bool)

(declare-fun tp!2155834 () Bool)

(assert (=> b!7446673 (= e!4445916 (and tp!2155832 tp!2155834))))

(assert (=> b!7446071 (= tp!2155268 e!4445916)))

(declare-fun b!7446675 () Bool)

(declare-fun tp!2155833 () Bool)

(declare-fun tp!2155835 () Bool)

(assert (=> b!7446675 (= e!4445916 (and tp!2155833 tp!2155835))))

(declare-fun b!7446672 () Bool)

(assert (=> b!7446672 (= e!4445916 tp_is_empty!49201)))

(assert (= (and b!7446071 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446672))

(assert (= (and b!7446071 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446673))

(assert (= (and b!7446071 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446674))

(assert (= (and b!7446071 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446675))

(declare-fun b!7446678 () Bool)

(declare-fun e!4445917 () Bool)

(declare-fun tp!2155841 () Bool)

(assert (=> b!7446678 (= e!4445917 tp!2155841)))

(declare-fun b!7446677 () Bool)

(declare-fun tp!2155837 () Bool)

(declare-fun tp!2155839 () Bool)

(assert (=> b!7446677 (= e!4445917 (and tp!2155837 tp!2155839))))

(assert (=> b!7445968 (= tp!2155135 e!4445917)))

(declare-fun b!7446679 () Bool)

(declare-fun tp!2155838 () Bool)

(declare-fun tp!2155840 () Bool)

(assert (=> b!7446679 (= e!4445917 (and tp!2155838 tp!2155840))))

(declare-fun b!7446676 () Bool)

(assert (=> b!7446676 (= e!4445917 tp_is_empty!49201)))

(assert (= (and b!7445968 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446676))

(assert (= (and b!7445968 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446677))

(assert (= (and b!7445968 ((_ is Star!19471) (regOne!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446678))

(assert (= (and b!7445968 ((_ is Union!19471) (regOne!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446679))

(declare-fun b!7446682 () Bool)

(declare-fun e!4445918 () Bool)

(declare-fun tp!2155846 () Bool)

(assert (=> b!7446682 (= e!4445918 tp!2155846)))

(declare-fun b!7446681 () Bool)

(declare-fun tp!2155842 () Bool)

(declare-fun tp!2155844 () Bool)

(assert (=> b!7446681 (= e!4445918 (and tp!2155842 tp!2155844))))

(assert (=> b!7445968 (= tp!2155137 e!4445918)))

(declare-fun b!7446683 () Bool)

(declare-fun tp!2155843 () Bool)

(declare-fun tp!2155845 () Bool)

(assert (=> b!7446683 (= e!4445918 (and tp!2155843 tp!2155845))))

(declare-fun b!7446680 () Bool)

(assert (=> b!7446680 (= e!4445918 tp_is_empty!49201)))

(assert (= (and b!7445968 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446680))

(assert (= (and b!7445968 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446681))

(assert (= (and b!7445968 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446682))

(assert (= (and b!7445968 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446683))

(declare-fun b!7446686 () Bool)

(declare-fun e!4445919 () Bool)

(declare-fun tp!2155851 () Bool)

(assert (=> b!7446686 (= e!4445919 tp!2155851)))

(declare-fun b!7446685 () Bool)

(declare-fun tp!2155847 () Bool)

(declare-fun tp!2155849 () Bool)

(assert (=> b!7446685 (= e!4445919 (and tp!2155847 tp!2155849))))

(assert (=> b!7445977 (= tp!2155149 e!4445919)))

(declare-fun b!7446687 () Bool)

(declare-fun tp!2155848 () Bool)

(declare-fun tp!2155850 () Bool)

(assert (=> b!7446687 (= e!4445919 (and tp!2155848 tp!2155850))))

(declare-fun b!7446684 () Bool)

(assert (=> b!7446684 (= e!4445919 tp_is_empty!49201)))

(assert (= (and b!7445977 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446684))

(assert (= (and b!7445977 ((_ is Concat!28316) (reg!19800 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446685))

(assert (= (and b!7445977 ((_ is Star!19471) (reg!19800 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446686))

(assert (= (and b!7445977 ((_ is Union!19471) (reg!19800 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446687))

(declare-fun b!7446690 () Bool)

(declare-fun e!4445920 () Bool)

(declare-fun tp!2155856 () Bool)

(assert (=> b!7446690 (= e!4445920 tp!2155856)))

(declare-fun b!7446689 () Bool)

(declare-fun tp!2155852 () Bool)

(declare-fun tp!2155854 () Bool)

(assert (=> b!7446689 (= e!4445920 (and tp!2155852 tp!2155854))))

(assert (=> b!7445986 (= tp!2155156 e!4445920)))

(declare-fun b!7446691 () Bool)

(declare-fun tp!2155853 () Bool)

(declare-fun tp!2155855 () Bool)

(assert (=> b!7446691 (= e!4445920 (and tp!2155853 tp!2155855))))

(declare-fun b!7446688 () Bool)

(assert (=> b!7446688 (= e!4445920 tp_is_empty!49201)))

(assert (= (and b!7445986 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446688))

(assert (= (and b!7445986 ((_ is Concat!28316) (regOne!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446689))

(assert (= (and b!7445986 ((_ is Star!19471) (regOne!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446690))

(assert (= (and b!7445986 ((_ is Union!19471) (regOne!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446691))

(declare-fun b!7446694 () Bool)

(declare-fun e!4445921 () Bool)

(declare-fun tp!2155861 () Bool)

(assert (=> b!7446694 (= e!4445921 tp!2155861)))

(declare-fun b!7446693 () Bool)

(declare-fun tp!2155857 () Bool)

(declare-fun tp!2155859 () Bool)

(assert (=> b!7446693 (= e!4445921 (and tp!2155857 tp!2155859))))

(assert (=> b!7445986 (= tp!2155158 e!4445921)))

(declare-fun b!7446695 () Bool)

(declare-fun tp!2155858 () Bool)

(declare-fun tp!2155860 () Bool)

(assert (=> b!7446695 (= e!4445921 (and tp!2155858 tp!2155860))))

(declare-fun b!7446692 () Bool)

(assert (=> b!7446692 (= e!4445921 tp_is_empty!49201)))

(assert (= (and b!7445986 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446692))

(assert (= (and b!7445986 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446693))

(assert (= (and b!7445986 ((_ is Star!19471) (regTwo!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446694))

(assert (= (and b!7445986 ((_ is Union!19471) (regTwo!39455 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446695))

(declare-fun b!7446698 () Bool)

(declare-fun e!4445922 () Bool)

(declare-fun tp!2155866 () Bool)

(assert (=> b!7446698 (= e!4445922 tp!2155866)))

(declare-fun b!7446697 () Bool)

(declare-fun tp!2155862 () Bool)

(declare-fun tp!2155864 () Bool)

(assert (=> b!7446697 (= e!4445922 (and tp!2155862 tp!2155864))))

(assert (=> b!7446044 (= tp!2155230 e!4445922)))

(declare-fun b!7446699 () Bool)

(declare-fun tp!2155863 () Bool)

(declare-fun tp!2155865 () Bool)

(assert (=> b!7446699 (= e!4445922 (and tp!2155863 tp!2155865))))

(declare-fun b!7446696 () Bool)

(assert (=> b!7446696 (= e!4445922 tp_is_empty!49201)))

(assert (= (and b!7446044 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446696))

(assert (= (and b!7446044 ((_ is Concat!28316) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446697))

(assert (= (and b!7446044 ((_ is Star!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446698))

(assert (= (and b!7446044 ((_ is Union!19471) (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446699))

(declare-fun b!7446702 () Bool)

(declare-fun e!4445923 () Bool)

(declare-fun tp!2155871 () Bool)

(assert (=> b!7446702 (= e!4445923 tp!2155871)))

(declare-fun b!7446701 () Bool)

(declare-fun tp!2155867 () Bool)

(declare-fun tp!2155869 () Bool)

(assert (=> b!7446701 (= e!4445923 (and tp!2155867 tp!2155869))))

(assert (=> b!7446044 (= tp!2155232 e!4445923)))

(declare-fun b!7446703 () Bool)

(declare-fun tp!2155868 () Bool)

(declare-fun tp!2155870 () Bool)

(assert (=> b!7446703 (= e!4445923 (and tp!2155868 tp!2155870))))

(declare-fun b!7446700 () Bool)

(assert (=> b!7446700 (= e!4445923 tp_is_empty!49201)))

(assert (= (and b!7446044 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446700))

(assert (= (and b!7446044 ((_ is Concat!28316) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446701))

(assert (= (and b!7446044 ((_ is Star!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446702))

(assert (= (and b!7446044 ((_ is Union!19471) (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56710)))))) b!7446703))

(declare-fun b!7446706 () Bool)

(declare-fun e!4445924 () Bool)

(declare-fun tp!2155876 () Bool)

(assert (=> b!7446706 (= e!4445924 tp!2155876)))

(declare-fun b!7446705 () Bool)

(declare-fun tp!2155872 () Bool)

(declare-fun tp!2155874 () Bool)

(assert (=> b!7446705 (= e!4445924 (and tp!2155872 tp!2155874))))

(assert (=> b!7445952 (= tp!2155115 e!4445924)))

(declare-fun b!7446707 () Bool)

(declare-fun tp!2155873 () Bool)

(declare-fun tp!2155875 () Bool)

(assert (=> b!7446707 (= e!4445924 (and tp!2155873 tp!2155875))))

(declare-fun b!7446704 () Bool)

(assert (=> b!7446704 (= e!4445924 tp_is_empty!49201)))

(assert (= (and b!7445952 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446704))

(assert (= (and b!7445952 ((_ is Concat!28316) (regOne!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446705))

(assert (= (and b!7445952 ((_ is Star!19471) (regOne!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446706))

(assert (= (and b!7445952 ((_ is Union!19471) (regOne!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446707))

(declare-fun b!7446710 () Bool)

(declare-fun e!4445925 () Bool)

(declare-fun tp!2155881 () Bool)

(assert (=> b!7446710 (= e!4445925 tp!2155881)))

(declare-fun b!7446709 () Bool)

(declare-fun tp!2155877 () Bool)

(declare-fun tp!2155879 () Bool)

(assert (=> b!7446709 (= e!4445925 (and tp!2155877 tp!2155879))))

(assert (=> b!7445952 (= tp!2155117 e!4445925)))

(declare-fun b!7446711 () Bool)

(declare-fun tp!2155878 () Bool)

(declare-fun tp!2155880 () Bool)

(assert (=> b!7446711 (= e!4445925 (and tp!2155878 tp!2155880))))

(declare-fun b!7446708 () Bool)

(assert (=> b!7446708 (= e!4445925 tp_is_empty!49201)))

(assert (= (and b!7445952 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446708))

(assert (= (and b!7445952 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446709))

(assert (= (and b!7445952 ((_ is Star!19471) (regTwo!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446710))

(assert (= (and b!7445952 ((_ is Union!19471) (regTwo!39454 (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446711))

(declare-fun b!7446714 () Bool)

(declare-fun e!4445926 () Bool)

(declare-fun tp!2155886 () Bool)

(assert (=> b!7446714 (= e!4445926 tp!2155886)))

(declare-fun b!7446713 () Bool)

(declare-fun tp!2155882 () Bool)

(declare-fun tp!2155884 () Bool)

(assert (=> b!7446713 (= e!4445926 (and tp!2155882 tp!2155884))))

(assert (=> b!7445960 (= tp!2155125 e!4445926)))

(declare-fun b!7446715 () Bool)

(declare-fun tp!2155883 () Bool)

(declare-fun tp!2155885 () Bool)

(assert (=> b!7446715 (= e!4445926 (and tp!2155883 tp!2155885))))

(declare-fun b!7446712 () Bool)

(assert (=> b!7446712 (= e!4445926 tp_is_empty!49201)))

(assert (= (and b!7445960 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446712))

(assert (= (and b!7445960 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446713))

(assert (= (and b!7445960 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446714))

(assert (= (and b!7445960 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446715))

(declare-fun b!7446718 () Bool)

(declare-fun e!4445927 () Bool)

(declare-fun tp!2155891 () Bool)

(assert (=> b!7446718 (= e!4445927 tp!2155891)))

(declare-fun b!7446717 () Bool)

(declare-fun tp!2155887 () Bool)

(declare-fun tp!2155889 () Bool)

(assert (=> b!7446717 (= e!4445927 (and tp!2155887 tp!2155889))))

(assert (=> b!7445960 (= tp!2155127 e!4445927)))

(declare-fun b!7446719 () Bool)

(declare-fun tp!2155888 () Bool)

(declare-fun tp!2155890 () Bool)

(assert (=> b!7446719 (= e!4445927 (and tp!2155888 tp!2155890))))

(declare-fun b!7446716 () Bool)

(assert (=> b!7446716 (= e!4445927 tp_is_empty!49201)))

(assert (= (and b!7445960 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446716))

(assert (= (and b!7445960 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446717))

(assert (= (and b!7445960 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446718))

(assert (= (and b!7445960 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446719))

(declare-fun b!7446722 () Bool)

(declare-fun e!4445928 () Bool)

(declare-fun tp!2155896 () Bool)

(assert (=> b!7446722 (= e!4445928 tp!2155896)))

(declare-fun b!7446721 () Bool)

(declare-fun tp!2155892 () Bool)

(declare-fun tp!2155894 () Bool)

(assert (=> b!7446721 (= e!4445928 (and tp!2155892 tp!2155894))))

(assert (=> b!7446058 (= tp!2155249 e!4445928)))

(declare-fun b!7446723 () Bool)

(declare-fun tp!2155893 () Bool)

(declare-fun tp!2155895 () Bool)

(assert (=> b!7446723 (= e!4445928 (and tp!2155893 tp!2155895))))

(declare-fun b!7446720 () Bool)

(assert (=> b!7446720 (= e!4445928 tp_is_empty!49201)))

(assert (= (and b!7446058 ((_ is ElementMatch!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446720))

(assert (= (and b!7446058 ((_ is Concat!28316) (regOne!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446721))

(assert (= (and b!7446058 ((_ is Star!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446722))

(assert (= (and b!7446058 ((_ is Union!19471) (regOne!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446723))

(declare-fun b!7446726 () Bool)

(declare-fun e!4445929 () Bool)

(declare-fun tp!2155901 () Bool)

(assert (=> b!7446726 (= e!4445929 tp!2155901)))

(declare-fun b!7446725 () Bool)

(declare-fun tp!2155897 () Bool)

(declare-fun tp!2155899 () Bool)

(assert (=> b!7446725 (= e!4445929 (and tp!2155897 tp!2155899))))

(assert (=> b!7446058 (= tp!2155251 e!4445929)))

(declare-fun b!7446727 () Bool)

(declare-fun tp!2155898 () Bool)

(declare-fun tp!2155900 () Bool)

(assert (=> b!7446727 (= e!4445929 (and tp!2155898 tp!2155900))))

(declare-fun b!7446724 () Bool)

(assert (=> b!7446724 (= e!4445929 tp_is_empty!49201)))

(assert (= (and b!7446058 ((_ is ElementMatch!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446724))

(assert (= (and b!7446058 ((_ is Concat!28316) (regTwo!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446725))

(assert (= (and b!7446058 ((_ is Star!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446726))

(assert (= (and b!7446058 ((_ is Union!19471) (regTwo!39455 (h!78494 (exprs!8911 setElem!56712))))) b!7446727))

(declare-fun b!7446730 () Bool)

(declare-fun e!4445930 () Bool)

(declare-fun tp!2155906 () Bool)

(assert (=> b!7446730 (= e!4445930 tp!2155906)))

(declare-fun b!7446729 () Bool)

(declare-fun tp!2155902 () Bool)

(declare-fun tp!2155904 () Bool)

(assert (=> b!7446729 (= e!4445930 (and tp!2155902 tp!2155904))))

(assert (=> b!7446073 (= tp!2155270 e!4445930)))

(declare-fun b!7446731 () Bool)

(declare-fun tp!2155903 () Bool)

(declare-fun tp!2155905 () Bool)

(assert (=> b!7446731 (= e!4445930 (and tp!2155903 tp!2155905))))

(declare-fun b!7446728 () Bool)

(assert (=> b!7446728 (= e!4445930 tp_is_empty!49201)))

(assert (= (and b!7446073 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446728))

(assert (= (and b!7446073 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446729))

(assert (= (and b!7446073 ((_ is Star!19471) (regOne!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446730))

(assert (= (and b!7446073 ((_ is Union!19471) (regOne!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446731))

(declare-fun b!7446734 () Bool)

(declare-fun e!4445931 () Bool)

(declare-fun tp!2155911 () Bool)

(assert (=> b!7446734 (= e!4445931 tp!2155911)))

(declare-fun b!7446733 () Bool)

(declare-fun tp!2155907 () Bool)

(declare-fun tp!2155909 () Bool)

(assert (=> b!7446733 (= e!4445931 (and tp!2155907 tp!2155909))))

(assert (=> b!7446073 (= tp!2155272 e!4445931)))

(declare-fun b!7446735 () Bool)

(declare-fun tp!2155908 () Bool)

(declare-fun tp!2155910 () Bool)

(assert (=> b!7446735 (= e!4445931 (and tp!2155908 tp!2155910))))

(declare-fun b!7446732 () Bool)

(assert (=> b!7446732 (= e!4445931 tp_is_empty!49201)))

(assert (= (and b!7446073 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446732))

(assert (= (and b!7446073 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446733))

(assert (= (and b!7446073 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446734))

(assert (= (and b!7446073 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446735))

(declare-fun b!7446738 () Bool)

(declare-fun e!4445932 () Bool)

(declare-fun tp!2155916 () Bool)

(assert (=> b!7446738 (= e!4445932 tp!2155916)))

(declare-fun b!7446737 () Bool)

(declare-fun tp!2155912 () Bool)

(declare-fun tp!2155914 () Bool)

(assert (=> b!7446737 (= e!4445932 (and tp!2155912 tp!2155914))))

(assert (=> b!7446082 (= tp!2155284 e!4445932)))

(declare-fun b!7446739 () Bool)

(declare-fun tp!2155913 () Bool)

(declare-fun tp!2155915 () Bool)

(assert (=> b!7446739 (= e!4445932 (and tp!2155913 tp!2155915))))

(declare-fun b!7446736 () Bool)

(assert (=> b!7446736 (= e!4445932 tp_is_empty!49201)))

(assert (= (and b!7446082 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446736))

(assert (= (and b!7446082 ((_ is Concat!28316) (reg!19800 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446737))

(assert (= (and b!7446082 ((_ is Star!19471) (reg!19800 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446738))

(assert (= (and b!7446082 ((_ is Union!19471) (reg!19800 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446739))

(declare-fun b!7446742 () Bool)

(declare-fun e!4445933 () Bool)

(declare-fun tp!2155921 () Bool)

(assert (=> b!7446742 (= e!4445933 tp!2155921)))

(declare-fun b!7446741 () Bool)

(declare-fun tp!2155917 () Bool)

(declare-fun tp!2155919 () Bool)

(assert (=> b!7446741 (= e!4445933 (and tp!2155917 tp!2155919))))

(assert (=> b!7446091 (= tp!2155291 e!4445933)))

(declare-fun b!7446743 () Bool)

(declare-fun tp!2155918 () Bool)

(declare-fun tp!2155920 () Bool)

(assert (=> b!7446743 (= e!4445933 (and tp!2155918 tp!2155920))))

(declare-fun b!7446740 () Bool)

(assert (=> b!7446740 (= e!4445933 tp_is_empty!49201)))

(assert (= (and b!7446091 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446740))

(assert (= (and b!7446091 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446741))

(assert (= (and b!7446091 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446742))

(assert (= (and b!7446091 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446743))

(declare-fun b!7446746 () Bool)

(declare-fun e!4445934 () Bool)

(declare-fun tp!2155926 () Bool)

(assert (=> b!7446746 (= e!4445934 tp!2155926)))

(declare-fun b!7446745 () Bool)

(declare-fun tp!2155922 () Bool)

(declare-fun tp!2155924 () Bool)

(assert (=> b!7446745 (= e!4445934 (and tp!2155922 tp!2155924))))

(assert (=> b!7446091 (= tp!2155293 e!4445934)))

(declare-fun b!7446747 () Bool)

(declare-fun tp!2155923 () Bool)

(declare-fun tp!2155925 () Bool)

(assert (=> b!7446747 (= e!4445934 (and tp!2155923 tp!2155925))))

(declare-fun b!7446744 () Bool)

(assert (=> b!7446744 (= e!4445934 tp_is_empty!49201)))

(assert (= (and b!7446091 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446744))

(assert (= (and b!7446091 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446745))

(assert (= (and b!7446091 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446746))

(assert (= (and b!7446091 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446747))

(declare-fun b!7446750 () Bool)

(declare-fun e!4445935 () Bool)

(declare-fun tp!2155931 () Bool)

(assert (=> b!7446750 (= e!4445935 tp!2155931)))

(declare-fun b!7446749 () Bool)

(declare-fun tp!2155927 () Bool)

(declare-fun tp!2155929 () Bool)

(assert (=> b!7446749 (= e!4445935 (and tp!2155927 tp!2155929))))

(assert (=> b!7445998 (= tp!2155171 e!4445935)))

(declare-fun b!7446751 () Bool)

(declare-fun tp!2155928 () Bool)

(declare-fun tp!2155930 () Bool)

(assert (=> b!7446751 (= e!4445935 (and tp!2155928 tp!2155930))))

(declare-fun b!7446748 () Bool)

(assert (=> b!7446748 (= e!4445935 tp_is_empty!49201)))

(assert (= (and b!7445998 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446748))

(assert (= (and b!7445998 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446749))

(assert (= (and b!7445998 ((_ is Star!19471) (regOne!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446750))

(assert (= (and b!7445998 ((_ is Union!19471) (regOne!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446751))

(declare-fun b!7446754 () Bool)

(declare-fun e!4445936 () Bool)

(declare-fun tp!2155936 () Bool)

(assert (=> b!7446754 (= e!4445936 tp!2155936)))

(declare-fun b!7446753 () Bool)

(declare-fun tp!2155932 () Bool)

(declare-fun tp!2155934 () Bool)

(assert (=> b!7446753 (= e!4445936 (and tp!2155932 tp!2155934))))

(assert (=> b!7445998 (= tp!2155173 e!4445936)))

(declare-fun b!7446755 () Bool)

(declare-fun tp!2155933 () Bool)

(declare-fun tp!2155935 () Bool)

(assert (=> b!7446755 (= e!4445936 (and tp!2155933 tp!2155935))))

(declare-fun b!7446752 () Bool)

(assert (=> b!7446752 (= e!4445936 tp_is_empty!49201)))

(assert (= (and b!7445998 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446752))

(assert (= (and b!7445998 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446753))

(assert (= (and b!7445998 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446754))

(assert (= (and b!7445998 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446755))

(declare-fun b!7446756 () Bool)

(declare-fun e!4445937 () Bool)

(declare-fun tp!2155937 () Bool)

(declare-fun tp!2155938 () Bool)

(assert (=> b!7446756 (= e!4445937 (and tp!2155937 tp!2155938))))

(assert (=> b!7445892 (= tp!2155103 e!4445937)))

(assert (= (and b!7445892 ((_ is Cons!72046) (exprs!8911 setElem!56721))) b!7446756))

(declare-fun b!7446759 () Bool)

(declare-fun e!4445938 () Bool)

(declare-fun tp!2155943 () Bool)

(assert (=> b!7446759 (= e!4445938 tp!2155943)))

(declare-fun b!7446758 () Bool)

(declare-fun tp!2155939 () Bool)

(declare-fun tp!2155941 () Bool)

(assert (=> b!7446758 (= e!4445938 (and tp!2155939 tp!2155941))))

(assert (=> b!7446050 (= tp!2155239 e!4445938)))

(declare-fun b!7446760 () Bool)

(declare-fun tp!2155940 () Bool)

(declare-fun tp!2155942 () Bool)

(assert (=> b!7446760 (= e!4445938 (and tp!2155940 tp!2155942))))

(declare-fun b!7446757 () Bool)

(assert (=> b!7446757 (= e!4445938 tp_is_empty!49201)))

(assert (= (and b!7446050 ((_ is ElementMatch!19471) (regOne!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446757))

(assert (= (and b!7446050 ((_ is Concat!28316) (regOne!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446758))

(assert (= (and b!7446050 ((_ is Star!19471) (regOne!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446759))

(assert (= (and b!7446050 ((_ is Union!19471) (regOne!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446760))

(declare-fun b!7446763 () Bool)

(declare-fun e!4445939 () Bool)

(declare-fun tp!2155948 () Bool)

(assert (=> b!7446763 (= e!4445939 tp!2155948)))

(declare-fun b!7446762 () Bool)

(declare-fun tp!2155944 () Bool)

(declare-fun tp!2155946 () Bool)

(assert (=> b!7446762 (= e!4445939 (and tp!2155944 tp!2155946))))

(assert (=> b!7446050 (= tp!2155241 e!4445939)))

(declare-fun b!7446764 () Bool)

(declare-fun tp!2155945 () Bool)

(declare-fun tp!2155947 () Bool)

(assert (=> b!7446764 (= e!4445939 (and tp!2155945 tp!2155947))))

(declare-fun b!7446761 () Bool)

(assert (=> b!7446761 (= e!4445939 tp_is_empty!49201)))

(assert (= (and b!7446050 ((_ is ElementMatch!19471) (regTwo!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446761))

(assert (= (and b!7446050 ((_ is Concat!28316) (regTwo!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446762))

(assert (= (and b!7446050 ((_ is Star!19471) (regTwo!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446763))

(assert (= (and b!7446050 ((_ is Union!19471) (regTwo!39454 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56704))))))) b!7446764))

(declare-fun b!7446767 () Bool)

(declare-fun e!4445940 () Bool)

(declare-fun tp!2155953 () Bool)

(assert (=> b!7446767 (= e!4445940 tp!2155953)))

(declare-fun b!7446766 () Bool)

(declare-fun tp!2155949 () Bool)

(declare-fun tp!2155951 () Bool)

(assert (=> b!7446766 (= e!4445940 (and tp!2155949 tp!2155951))))

(assert (=> b!7445980 (= tp!2155150 e!4445940)))

(declare-fun b!7446768 () Bool)

(declare-fun tp!2155950 () Bool)

(declare-fun tp!2155952 () Bool)

(assert (=> b!7446768 (= e!4445940 (and tp!2155950 tp!2155952))))

(declare-fun b!7446765 () Bool)

(assert (=> b!7446765 (= e!4445940 tp_is_empty!49201)))

(assert (= (and b!7445980 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446765))

(assert (= (and b!7445980 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446766))

(assert (= (and b!7445980 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446767))

(assert (= (and b!7445980 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446768))

(declare-fun b!7446771 () Bool)

(declare-fun e!4445941 () Bool)

(declare-fun tp!2155958 () Bool)

(assert (=> b!7446771 (= e!4445941 tp!2155958)))

(declare-fun b!7446770 () Bool)

(declare-fun tp!2155954 () Bool)

(declare-fun tp!2155956 () Bool)

(assert (=> b!7446770 (= e!4445941 (and tp!2155954 tp!2155956))))

(assert (=> b!7445980 (= tp!2155152 e!4445941)))

(declare-fun b!7446772 () Bool)

(declare-fun tp!2155955 () Bool)

(declare-fun tp!2155957 () Bool)

(assert (=> b!7446772 (= e!4445941 (and tp!2155955 tp!2155957))))

(declare-fun b!7446769 () Bool)

(assert (=> b!7446769 (= e!4445941 tp_is_empty!49201)))

(assert (= (and b!7445980 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446769))

(assert (= (and b!7445980 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446770))

(assert (= (and b!7445980 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446771))

(assert (= (and b!7445980 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446772))

(declare-fun b!7446775 () Bool)

(declare-fun e!4445942 () Bool)

(declare-fun tp!2155963 () Bool)

(assert (=> b!7446775 (= e!4445942 tp!2155963)))

(declare-fun b!7446774 () Bool)

(declare-fun tp!2155959 () Bool)

(declare-fun tp!2155961 () Bool)

(assert (=> b!7446774 (= e!4445942 (and tp!2155959 tp!2155961))))

(assert (=> b!7445989 (= tp!2155164 e!4445942)))

(declare-fun b!7446776 () Bool)

(declare-fun tp!2155960 () Bool)

(declare-fun tp!2155962 () Bool)

(assert (=> b!7446776 (= e!4445942 (and tp!2155960 tp!2155962))))

(declare-fun b!7446773 () Bool)

(assert (=> b!7446773 (= e!4445942 tp_is_empty!49201)))

(assert (= (and b!7445989 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446773))

(assert (= (and b!7445989 ((_ is Concat!28316) (reg!19800 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446774))

(assert (= (and b!7445989 ((_ is Star!19471) (reg!19800 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446775))

(assert (= (and b!7445989 ((_ is Union!19471) (reg!19800 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446776))

(declare-fun b!7446779 () Bool)

(declare-fun e!4445943 () Bool)

(declare-fun tp!2155968 () Bool)

(assert (=> b!7446779 (= e!4445943 tp!2155968)))

(declare-fun b!7446778 () Bool)

(declare-fun tp!2155964 () Bool)

(declare-fun tp!2155966 () Bool)

(assert (=> b!7446778 (= e!4445943 (and tp!2155964 tp!2155966))))

(assert (=> b!7445966 (= tp!2155131 e!4445943)))

(declare-fun b!7446780 () Bool)

(declare-fun tp!2155965 () Bool)

(declare-fun tp!2155967 () Bool)

(assert (=> b!7446780 (= e!4445943 (and tp!2155965 tp!2155967))))

(declare-fun b!7446777 () Bool)

(assert (=> b!7446777 (= e!4445943 tp_is_empty!49201)))

(assert (= (and b!7445966 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446777))

(assert (= (and b!7445966 ((_ is Concat!28316) (regOne!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446778))

(assert (= (and b!7445966 ((_ is Star!19471) (regOne!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446779))

(assert (= (and b!7445966 ((_ is Union!19471) (regOne!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446780))

(declare-fun b!7446783 () Bool)

(declare-fun e!4445944 () Bool)

(declare-fun tp!2155973 () Bool)

(assert (=> b!7446783 (= e!4445944 tp!2155973)))

(declare-fun b!7446782 () Bool)

(declare-fun tp!2155969 () Bool)

(declare-fun tp!2155971 () Bool)

(assert (=> b!7446782 (= e!4445944 (and tp!2155969 tp!2155971))))

(assert (=> b!7445966 (= tp!2155133 e!4445944)))

(declare-fun b!7446784 () Bool)

(declare-fun tp!2155970 () Bool)

(declare-fun tp!2155972 () Bool)

(assert (=> b!7446784 (= e!4445944 (and tp!2155970 tp!2155972))))

(declare-fun b!7446781 () Bool)

(assert (=> b!7446781 (= e!4445944 tp_is_empty!49201)))

(assert (= (and b!7445966 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446781))

(assert (= (and b!7445966 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446782))

(assert (= (and b!7445966 ((_ is Star!19471) (regTwo!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446783))

(assert (= (and b!7445966 ((_ is Union!19471) (regTwo!39455 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446784))

(declare-fun b!7446787 () Bool)

(declare-fun e!4445945 () Bool)

(declare-fun tp!2155978 () Bool)

(assert (=> b!7446787 (= e!4445945 tp!2155978)))

(declare-fun b!7446786 () Bool)

(declare-fun tp!2155974 () Bool)

(declare-fun tp!2155976 () Bool)

(assert (=> b!7446786 (= e!4445945 (and tp!2155974 tp!2155976))))

(assert (=> b!7446085 (= tp!2155285 e!4445945)))

(declare-fun b!7446788 () Bool)

(declare-fun tp!2155975 () Bool)

(declare-fun tp!2155977 () Bool)

(assert (=> b!7446788 (= e!4445945 (and tp!2155975 tp!2155977))))

(declare-fun b!7446785 () Bool)

(assert (=> b!7446785 (= e!4445945 tp_is_empty!49201)))

(assert (= (and b!7446085 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446785))

(assert (= (and b!7446085 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446786))

(assert (= (and b!7446085 ((_ is Star!19471) (regOne!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446787))

(assert (= (and b!7446085 ((_ is Union!19471) (regOne!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446788))

(declare-fun b!7446791 () Bool)

(declare-fun e!4445946 () Bool)

(declare-fun tp!2155983 () Bool)

(assert (=> b!7446791 (= e!4445946 tp!2155983)))

(declare-fun b!7446790 () Bool)

(declare-fun tp!2155979 () Bool)

(declare-fun tp!2155981 () Bool)

(assert (=> b!7446790 (= e!4445946 (and tp!2155979 tp!2155981))))

(assert (=> b!7446085 (= tp!2155287 e!4445946)))

(declare-fun b!7446792 () Bool)

(declare-fun tp!2155980 () Bool)

(declare-fun tp!2155982 () Bool)

(assert (=> b!7446792 (= e!4445946 (and tp!2155980 tp!2155982))))

(declare-fun b!7446789 () Bool)

(assert (=> b!7446789 (= e!4445946 tp_is_empty!49201)))

(assert (= (and b!7446085 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446789))

(assert (= (and b!7446085 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446790))

(assert (= (and b!7446085 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446791))

(assert (= (and b!7446085 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446792))

(declare-fun b!7446795 () Bool)

(declare-fun e!4445947 () Bool)

(declare-fun tp!2155988 () Bool)

(assert (=> b!7446795 (= e!4445947 tp!2155988)))

(declare-fun b!7446794 () Bool)

(declare-fun tp!2155984 () Bool)

(declare-fun tp!2155986 () Bool)

(assert (=> b!7446794 (= e!4445947 (and tp!2155984 tp!2155986))))

(assert (=> b!7446094 (= tp!2155299 e!4445947)))

(declare-fun b!7446796 () Bool)

(declare-fun tp!2155985 () Bool)

(declare-fun tp!2155987 () Bool)

(assert (=> b!7446796 (= e!4445947 (and tp!2155985 tp!2155987))))

(declare-fun b!7446793 () Bool)

(assert (=> b!7446793 (= e!4445947 tp_is_empty!49201)))

(assert (= (and b!7446094 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446793))

(assert (= (and b!7446094 ((_ is Concat!28316) (reg!19800 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446794))

(assert (= (and b!7446094 ((_ is Star!19471) (reg!19800 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446795))

(assert (= (and b!7446094 ((_ is Union!19471) (reg!19800 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446796))

(declare-fun b!7446799 () Bool)

(declare-fun e!4445948 () Bool)

(declare-fun tp!2155993 () Bool)

(assert (=> b!7446799 (= e!4445948 tp!2155993)))

(declare-fun b!7446798 () Bool)

(declare-fun tp!2155989 () Bool)

(declare-fun tp!2155991 () Bool)

(assert (=> b!7446798 (= e!4445948 (and tp!2155989 tp!2155991))))

(assert (=> b!7446000 (= tp!2155175 e!4445948)))

(declare-fun b!7446800 () Bool)

(declare-fun tp!2155990 () Bool)

(declare-fun tp!2155992 () Bool)

(assert (=> b!7446800 (= e!4445948 (and tp!2155990 tp!2155992))))

(declare-fun b!7446797 () Bool)

(assert (=> b!7446797 (= e!4445948 tp_is_empty!49201)))

(assert (= (and b!7446000 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446797))

(assert (= (and b!7446000 ((_ is Concat!28316) (regOne!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446798))

(assert (= (and b!7446000 ((_ is Star!19471) (regOne!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446799))

(assert (= (and b!7446000 ((_ is Union!19471) (regOne!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446800))

(declare-fun b!7446803 () Bool)

(declare-fun e!4445949 () Bool)

(declare-fun tp!2155998 () Bool)

(assert (=> b!7446803 (= e!4445949 tp!2155998)))

(declare-fun b!7446802 () Bool)

(declare-fun tp!2155994 () Bool)

(declare-fun tp!2155996 () Bool)

(assert (=> b!7446802 (= e!4445949 (and tp!2155994 tp!2155996))))

(assert (=> b!7446000 (= tp!2155177 e!4445949)))

(declare-fun b!7446804 () Bool)

(declare-fun tp!2155995 () Bool)

(declare-fun tp!2155997 () Bool)

(assert (=> b!7446804 (= e!4445949 (and tp!2155995 tp!2155997))))

(declare-fun b!7446801 () Bool)

(assert (=> b!7446801 (= e!4445949 tp_is_empty!49201)))

(assert (= (and b!7446000 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446801))

(assert (= (and b!7446000 ((_ is Concat!28316) (regTwo!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446802))

(assert (= (and b!7446000 ((_ is Star!19471) (regTwo!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446803))

(assert (= (and b!7446000 ((_ is Union!19471) (regTwo!39454 (regTwo!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446804))

(declare-fun b!7446807 () Bool)

(declare-fun e!4445950 () Bool)

(declare-fun tp!2156003 () Bool)

(assert (=> b!7446807 (= e!4445950 tp!2156003)))

(declare-fun b!7446806 () Bool)

(declare-fun tp!2155999 () Bool)

(declare-fun tp!2156001 () Bool)

(assert (=> b!7446806 (= e!4445950 (and tp!2155999 tp!2156001))))

(assert (=> b!7446009 (= tp!2155189 e!4445950)))

(declare-fun b!7446808 () Bool)

(declare-fun tp!2156000 () Bool)

(declare-fun tp!2156002 () Bool)

(assert (=> b!7446808 (= e!4445950 (and tp!2156000 tp!2156002))))

(declare-fun b!7446805 () Bool)

(assert (=> b!7446805 (= e!4445950 tp_is_empty!49201)))

(assert (= (and b!7446009 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446805))

(assert (= (and b!7446009 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446806))

(assert (= (and b!7446009 ((_ is Star!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446807))

(assert (= (and b!7446009 ((_ is Union!19471) (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446808))

(declare-fun b!7446811 () Bool)

(declare-fun e!4445951 () Bool)

(declare-fun tp!2156008 () Bool)

(assert (=> b!7446811 (= e!4445951 tp!2156008)))

(declare-fun b!7446810 () Bool)

(declare-fun tp!2156004 () Bool)

(declare-fun tp!2156006 () Bool)

(assert (=> b!7446810 (= e!4445951 (and tp!2156004 tp!2156006))))

(assert (=> b!7446017 (= tp!2155199 e!4445951)))

(declare-fun b!7446812 () Bool)

(declare-fun tp!2156005 () Bool)

(declare-fun tp!2156007 () Bool)

(assert (=> b!7446812 (= e!4445951 (and tp!2156005 tp!2156007))))

(declare-fun b!7446809 () Bool)

(assert (=> b!7446809 (= e!4445951 tp_is_empty!49201)))

(assert (= (and b!7446017 ((_ is ElementMatch!19471) (reg!19800 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446809))

(assert (= (and b!7446017 ((_ is Concat!28316) (reg!19800 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446810))

(assert (= (and b!7446017 ((_ is Star!19471) (reg!19800 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446811))

(assert (= (and b!7446017 ((_ is Union!19471) (reg!19800 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446812))

(declare-fun b!7446815 () Bool)

(declare-fun e!4445952 () Bool)

(declare-fun tp!2156013 () Bool)

(assert (=> b!7446815 (= e!4445952 tp!2156013)))

(declare-fun b!7446814 () Bool)

(declare-fun tp!2156009 () Bool)

(declare-fun tp!2156011 () Bool)

(assert (=> b!7446814 (= e!4445952 (and tp!2156009 tp!2156011))))

(assert (=> b!7446025 (= tp!2155209 e!4445952)))

(declare-fun b!7446816 () Bool)

(declare-fun tp!2156010 () Bool)

(declare-fun tp!2156012 () Bool)

(assert (=> b!7446816 (= e!4445952 (and tp!2156010 tp!2156012))))

(declare-fun b!7446813 () Bool)

(assert (=> b!7446813 (= e!4445952 tp_is_empty!49201)))

(assert (= (and b!7446025 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446813))

(assert (= (and b!7446025 ((_ is Concat!28316) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446814))

(assert (= (and b!7446025 ((_ is Star!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446815))

(assert (= (and b!7446025 ((_ is Union!19471) (reg!19800 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446816))

(declare-fun b!7446819 () Bool)

(declare-fun e!4445953 () Bool)

(declare-fun tp!2156018 () Bool)

(assert (=> b!7446819 (= e!4445953 tp!2156018)))

(declare-fun b!7446818 () Bool)

(declare-fun tp!2156014 () Bool)

(declare-fun tp!2156016 () Bool)

(assert (=> b!7446818 (= e!4445953 (and tp!2156014 tp!2156016))))

(assert (=> b!7446033 (= tp!2155219 e!4445953)))

(declare-fun b!7446820 () Bool)

(declare-fun tp!2156015 () Bool)

(declare-fun tp!2156017 () Bool)

(assert (=> b!7446820 (= e!4445953 (and tp!2156015 tp!2156017))))

(declare-fun b!7446817 () Bool)

(assert (=> b!7446817 (= e!4445953 tp_is_empty!49201)))

(assert (= (and b!7446033 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446817))

(assert (= (and b!7446033 ((_ is Concat!28316) (reg!19800 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446818))

(assert (= (and b!7446033 ((_ is Star!19471) (reg!19800 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446819))

(assert (= (and b!7446033 ((_ is Union!19471) (reg!19800 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446820))

(declare-fun b!7446823 () Bool)

(declare-fun e!4445954 () Bool)

(declare-fun tp!2156023 () Bool)

(assert (=> b!7446823 (= e!4445954 tp!2156023)))

(declare-fun b!7446822 () Bool)

(declare-fun tp!2156019 () Bool)

(declare-fun tp!2156021 () Bool)

(assert (=> b!7446822 (= e!4445954 (and tp!2156019 tp!2156021))))

(assert (=> b!7446042 (= tp!2155226 e!4445954)))

(declare-fun b!7446824 () Bool)

(declare-fun tp!2156020 () Bool)

(declare-fun tp!2156022 () Bool)

(assert (=> b!7446824 (= e!4445954 (and tp!2156020 tp!2156022))))

(declare-fun b!7446821 () Bool)

(assert (=> b!7446821 (= e!4445954 tp_is_empty!49201)))

(assert (= (and b!7446042 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446821))

(assert (= (and b!7446042 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446822))

(assert (= (and b!7446042 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446823))

(assert (= (and b!7446042 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446824))

(declare-fun b!7446827 () Bool)

(declare-fun e!4445955 () Bool)

(declare-fun tp!2156028 () Bool)

(assert (=> b!7446827 (= e!4445955 tp!2156028)))

(declare-fun b!7446826 () Bool)

(declare-fun tp!2156024 () Bool)

(declare-fun tp!2156026 () Bool)

(assert (=> b!7446826 (= e!4445955 (and tp!2156024 tp!2156026))))

(assert (=> b!7446042 (= tp!2155228 e!4445955)))

(declare-fun b!7446828 () Bool)

(declare-fun tp!2156025 () Bool)

(declare-fun tp!2156027 () Bool)

(assert (=> b!7446828 (= e!4445955 (and tp!2156025 tp!2156027))))

(declare-fun b!7446825 () Bool)

(assert (=> b!7446825 (= e!4445955 tp_is_empty!49201)))

(assert (= (and b!7446042 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446825))

(assert (= (and b!7446042 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446826))

(assert (= (and b!7446042 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446827))

(assert (= (and b!7446042 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446828))

(declare-fun b!7446831 () Bool)

(declare-fun e!4445956 () Bool)

(declare-fun tp!2156033 () Bool)

(assert (=> b!7446831 (= e!4445956 tp!2156033)))

(declare-fun b!7446830 () Bool)

(declare-fun tp!2156029 () Bool)

(declare-fun tp!2156031 () Bool)

(assert (=> b!7446830 (= e!4445956 (and tp!2156029 tp!2156031))))

(assert (=> b!7445950 (= tp!2155111 e!4445956)))

(declare-fun b!7446832 () Bool)

(declare-fun tp!2156030 () Bool)

(declare-fun tp!2156032 () Bool)

(assert (=> b!7446832 (= e!4445956 (and tp!2156030 tp!2156032))))

(declare-fun b!7446829 () Bool)

(assert (=> b!7446829 (= e!4445956 tp_is_empty!49201)))

(assert (= (and b!7445950 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446829))

(assert (= (and b!7445950 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446830))

(assert (= (and b!7445950 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446831))

(assert (= (and b!7445950 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446832))

(declare-fun b!7446835 () Bool)

(declare-fun e!4445957 () Bool)

(declare-fun tp!2156038 () Bool)

(assert (=> b!7446835 (= e!4445957 tp!2156038)))

(declare-fun b!7446834 () Bool)

(declare-fun tp!2156034 () Bool)

(declare-fun tp!2156036 () Bool)

(assert (=> b!7446834 (= e!4445957 (and tp!2156034 tp!2156036))))

(assert (=> b!7445950 (= tp!2155113 e!4445957)))

(declare-fun b!7446836 () Bool)

(declare-fun tp!2156035 () Bool)

(declare-fun tp!2156037 () Bool)

(assert (=> b!7446836 (= e!4445957 (and tp!2156035 tp!2156037))))

(declare-fun b!7446833 () Bool)

(assert (=> b!7446833 (= e!4445957 tp_is_empty!49201)))

(assert (= (and b!7445950 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446833))

(assert (= (and b!7445950 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446834))

(assert (= (and b!7445950 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446835))

(assert (= (and b!7445950 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446836))

(declare-fun b!7446837 () Bool)

(declare-fun e!4445958 () Bool)

(declare-fun tp!2156039 () Bool)

(declare-fun tp!2156040 () Bool)

(assert (=> b!7446837 (= e!4445958 (and tp!2156039 tp!2156040))))

(assert (=> b!7446048 (= tp!2155238 e!4445958)))

(assert (= (and b!7446048 ((_ is Cons!72046) (exprs!8911 setElem!56722))) b!7446837))

(declare-fun b!7446840 () Bool)

(declare-fun e!4445959 () Bool)

(declare-fun tp!2156045 () Bool)

(assert (=> b!7446840 (= e!4445959 tp!2156045)))

(declare-fun b!7446839 () Bool)

(declare-fun tp!2156041 () Bool)

(declare-fun tp!2156043 () Bool)

(assert (=> b!7446839 (= e!4445959 (and tp!2156041 tp!2156043))))

(assert (=> b!7446061 (= tp!2155255 e!4445959)))

(declare-fun b!7446841 () Bool)

(declare-fun tp!2156042 () Bool)

(declare-fun tp!2156044 () Bool)

(assert (=> b!7446841 (= e!4445959 (and tp!2156042 tp!2156044))))

(declare-fun b!7446838 () Bool)

(assert (=> b!7446838 (= e!4445959 tp_is_empty!49201)))

(assert (= (and b!7446061 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446838))

(assert (= (and b!7446061 ((_ is Concat!28316) (regOne!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446839))

(assert (= (and b!7446061 ((_ is Star!19471) (regOne!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446840))

(assert (= (and b!7446061 ((_ is Union!19471) (regOne!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446841))

(declare-fun b!7446844 () Bool)

(declare-fun e!4445960 () Bool)

(declare-fun tp!2156050 () Bool)

(assert (=> b!7446844 (= e!4445960 tp!2156050)))

(declare-fun b!7446843 () Bool)

(declare-fun tp!2156046 () Bool)

(declare-fun tp!2156048 () Bool)

(assert (=> b!7446843 (= e!4445960 (and tp!2156046 tp!2156048))))

(assert (=> b!7446061 (= tp!2155257 e!4445960)))

(declare-fun b!7446845 () Bool)

(declare-fun tp!2156047 () Bool)

(declare-fun tp!2156049 () Bool)

(assert (=> b!7446845 (= e!4445960 (and tp!2156047 tp!2156049))))

(declare-fun b!7446842 () Bool)

(assert (=> b!7446842 (= e!4445960 tp_is_empty!49201)))

(assert (= (and b!7446061 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446842))

(assert (= (and b!7446061 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446843))

(assert (= (and b!7446061 ((_ is Star!19471) (regTwo!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446844))

(assert (= (and b!7446061 ((_ is Union!19471) (regTwo!39454 (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446845))

(declare-fun b!7446848 () Bool)

(declare-fun e!4445961 () Bool)

(declare-fun tp!2156055 () Bool)

(assert (=> b!7446848 (= e!4445961 tp!2156055)))

(declare-fun b!7446847 () Bool)

(declare-fun tp!2156051 () Bool)

(declare-fun tp!2156053 () Bool)

(assert (=> b!7446847 (= e!4445961 (and tp!2156051 tp!2156053))))

(assert (=> b!7445976 (= tp!2155145 e!4445961)))

(declare-fun b!7446849 () Bool)

(declare-fun tp!2156052 () Bool)

(declare-fun tp!2156054 () Bool)

(assert (=> b!7446849 (= e!4445961 (and tp!2156052 tp!2156054))))

(declare-fun b!7446846 () Bool)

(assert (=> b!7446846 (= e!4445961 tp_is_empty!49201)))

(assert (= (and b!7445976 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446846))

(assert (= (and b!7445976 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446847))

(assert (= (and b!7445976 ((_ is Star!19471) (regOne!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446848))

(assert (= (and b!7445976 ((_ is Union!19471) (regOne!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446849))

(declare-fun b!7446852 () Bool)

(declare-fun e!4445962 () Bool)

(declare-fun tp!2156060 () Bool)

(assert (=> b!7446852 (= e!4445962 tp!2156060)))

(declare-fun b!7446851 () Bool)

(declare-fun tp!2156056 () Bool)

(declare-fun tp!2156058 () Bool)

(assert (=> b!7446851 (= e!4445962 (and tp!2156056 tp!2156058))))

(assert (=> b!7445976 (= tp!2155147 e!4445962)))

(declare-fun b!7446853 () Bool)

(declare-fun tp!2156057 () Bool)

(declare-fun tp!2156059 () Bool)

(assert (=> b!7446853 (= e!4445962 (and tp!2156057 tp!2156059))))

(declare-fun b!7446850 () Bool)

(assert (=> b!7446850 (= e!4445962 tp_is_empty!49201)))

(assert (= (and b!7445976 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446850))

(assert (= (and b!7445976 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446851))

(assert (= (and b!7445976 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446852))

(assert (= (and b!7445976 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446853))

(declare-fun b!7446856 () Bool)

(declare-fun e!4445963 () Bool)

(declare-fun tp!2156065 () Bool)

(assert (=> b!7446856 (= e!4445963 tp!2156065)))

(declare-fun b!7446855 () Bool)

(declare-fun tp!2156061 () Bool)

(declare-fun tp!2156063 () Bool)

(assert (=> b!7446855 (= e!4445963 (and tp!2156061 tp!2156063))))

(assert (=> b!7445985 (= tp!2155159 e!4445963)))

(declare-fun b!7446857 () Bool)

(declare-fun tp!2156062 () Bool)

(declare-fun tp!2156064 () Bool)

(assert (=> b!7446857 (= e!4445963 (and tp!2156062 tp!2156064))))

(declare-fun b!7446854 () Bool)

(assert (=> b!7446854 (= e!4445963 tp_is_empty!49201)))

(assert (= (and b!7445985 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446854))

(assert (= (and b!7445985 ((_ is Concat!28316) (reg!19800 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446855))

(assert (= (and b!7445985 ((_ is Star!19471) (reg!19800 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446856))

(assert (= (and b!7445985 ((_ is Union!19471) (reg!19800 (reg!19800 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446857))

(declare-fun b!7446860 () Bool)

(declare-fun e!4445964 () Bool)

(declare-fun tp!2156070 () Bool)

(assert (=> b!7446860 (= e!4445964 tp!2156070)))

(declare-fun b!7446859 () Bool)

(declare-fun tp!2156066 () Bool)

(declare-fun tp!2156068 () Bool)

(assert (=> b!7446859 (= e!4445964 (and tp!2156066 tp!2156068))))

(assert (=> b!7445994 (= tp!2155166 e!4445964)))

(declare-fun b!7446861 () Bool)

(declare-fun tp!2156067 () Bool)

(declare-fun tp!2156069 () Bool)

(assert (=> b!7446861 (= e!4445964 (and tp!2156067 tp!2156069))))

(declare-fun b!7446858 () Bool)

(assert (=> b!7446858 (= e!4445964 tp_is_empty!49201)))

(assert (= (and b!7445994 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446858))

(assert (= (and b!7445994 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446859))

(assert (= (and b!7445994 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446860))

(assert (= (and b!7445994 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446861))

(declare-fun b!7446864 () Bool)

(declare-fun e!4445965 () Bool)

(declare-fun tp!2156075 () Bool)

(assert (=> b!7446864 (= e!4445965 tp!2156075)))

(declare-fun b!7446863 () Bool)

(declare-fun tp!2156071 () Bool)

(declare-fun tp!2156073 () Bool)

(assert (=> b!7446863 (= e!4445965 (and tp!2156071 tp!2156073))))

(assert (=> b!7445994 (= tp!2155168 e!4445965)))

(declare-fun b!7446865 () Bool)

(declare-fun tp!2156072 () Bool)

(declare-fun tp!2156074 () Bool)

(assert (=> b!7446865 (= e!4445965 (and tp!2156072 tp!2156074))))

(declare-fun b!7446862 () Bool)

(assert (=> b!7446862 (= e!4445965 tp_is_empty!49201)))

(assert (= (and b!7445994 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446862))

(assert (= (and b!7445994 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446863))

(assert (= (and b!7445994 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446864))

(assert (= (and b!7445994 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446865))

(declare-fun b!7446868 () Bool)

(declare-fun e!4445966 () Bool)

(declare-fun tp!2156080 () Bool)

(assert (=> b!7446868 (= e!4445966 tp!2156080)))

(declare-fun b!7446867 () Bool)

(declare-fun tp!2156076 () Bool)

(declare-fun tp!2156078 () Bool)

(assert (=> b!7446867 (= e!4445966 (and tp!2156076 tp!2156078))))

(assert (=> b!7446081 (= tp!2155280 e!4445966)))

(declare-fun b!7446869 () Bool)

(declare-fun tp!2156077 () Bool)

(declare-fun tp!2156079 () Bool)

(assert (=> b!7446869 (= e!4445966 (and tp!2156077 tp!2156079))))

(declare-fun b!7446866 () Bool)

(assert (=> b!7446866 (= e!4445966 tp_is_empty!49201)))

(assert (= (and b!7446081 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446866))

(assert (= (and b!7446081 ((_ is Concat!28316) (regOne!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446867))

(assert (= (and b!7446081 ((_ is Star!19471) (regOne!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446868))

(assert (= (and b!7446081 ((_ is Union!19471) (regOne!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446869))

(declare-fun b!7446872 () Bool)

(declare-fun e!4445967 () Bool)

(declare-fun tp!2156085 () Bool)

(assert (=> b!7446872 (= e!4445967 tp!2156085)))

(declare-fun b!7446871 () Bool)

(declare-fun tp!2156081 () Bool)

(declare-fun tp!2156083 () Bool)

(assert (=> b!7446871 (= e!4445967 (and tp!2156081 tp!2156083))))

(assert (=> b!7446081 (= tp!2155282 e!4445967)))

(declare-fun b!7446873 () Bool)

(declare-fun tp!2156082 () Bool)

(declare-fun tp!2156084 () Bool)

(assert (=> b!7446873 (= e!4445967 (and tp!2156082 tp!2156084))))

(declare-fun b!7446870 () Bool)

(assert (=> b!7446870 (= e!4445967 tp_is_empty!49201)))

(assert (= (and b!7446081 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446870))

(assert (= (and b!7446081 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446871))

(assert (= (and b!7446081 ((_ is Star!19471) (regTwo!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446872))

(assert (= (and b!7446081 ((_ is Union!19471) (regTwo!39454 (reg!19800 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446873))

(declare-fun b!7446876 () Bool)

(declare-fun e!4445968 () Bool)

(declare-fun tp!2156090 () Bool)

(assert (=> b!7446876 (= e!4445968 tp!2156090)))

(declare-fun b!7446875 () Bool)

(declare-fun tp!2156086 () Bool)

(declare-fun tp!2156088 () Bool)

(assert (=> b!7446875 (= e!4445968 (and tp!2156086 tp!2156088))))

(assert (=> b!7446099 (= tp!2155301 e!4445968)))

(declare-fun b!7446877 () Bool)

(declare-fun tp!2156087 () Bool)

(declare-fun tp!2156089 () Bool)

(assert (=> b!7446877 (= e!4445968 (and tp!2156087 tp!2156089))))

(declare-fun b!7446874 () Bool)

(assert (=> b!7446874 (= e!4445968 tp_is_empty!49201)))

(assert (= (and b!7446099 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446874))

(assert (= (and b!7446099 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446875))

(assert (= (and b!7446099 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446876))

(assert (= (and b!7446099 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446877))

(declare-fun b!7446880 () Bool)

(declare-fun e!4445969 () Bool)

(declare-fun tp!2156095 () Bool)

(assert (=> b!7446880 (= e!4445969 tp!2156095)))

(declare-fun b!7446879 () Bool)

(declare-fun tp!2156091 () Bool)

(declare-fun tp!2156093 () Bool)

(assert (=> b!7446879 (= e!4445969 (and tp!2156091 tp!2156093))))

(assert (=> b!7446099 (= tp!2155303 e!4445969)))

(declare-fun b!7446881 () Bool)

(declare-fun tp!2156092 () Bool)

(declare-fun tp!2156094 () Bool)

(assert (=> b!7446881 (= e!4445969 (and tp!2156092 tp!2156094))))

(declare-fun b!7446878 () Bool)

(assert (=> b!7446878 (= e!4445969 tp_is_empty!49201)))

(assert (= (and b!7446099 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446878))

(assert (= (and b!7446099 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446879))

(assert (= (and b!7446099 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446880))

(assert (= (and b!7446099 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446881))

(declare-fun b!7446884 () Bool)

(declare-fun e!4445970 () Bool)

(declare-fun tp!2156100 () Bool)

(assert (=> b!7446884 (= e!4445970 tp!2156100)))

(declare-fun b!7446883 () Bool)

(declare-fun tp!2156096 () Bool)

(declare-fun tp!2156098 () Bool)

(assert (=> b!7446883 (= e!4445970 (and tp!2156096 tp!2156098))))

(assert (=> b!7446090 (= tp!2155294 e!4445970)))

(declare-fun b!7446885 () Bool)

(declare-fun tp!2156097 () Bool)

(declare-fun tp!2156099 () Bool)

(assert (=> b!7446885 (= e!4445970 (and tp!2156097 tp!2156099))))

(declare-fun b!7446882 () Bool)

(assert (=> b!7446882 (= e!4445970 tp_is_empty!49201)))

(assert (= (and b!7446090 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446882))

(assert (= (and b!7446090 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446883))

(assert (= (and b!7446090 ((_ is Star!19471) (reg!19800 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446884))

(assert (= (and b!7446090 ((_ is Union!19471) (reg!19800 (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446885))

(declare-fun b!7446888 () Bool)

(declare-fun e!4445971 () Bool)

(declare-fun tp!2156105 () Bool)

(assert (=> b!7446888 (= e!4445971 tp!2156105)))

(declare-fun b!7446887 () Bool)

(declare-fun tp!2156101 () Bool)

(declare-fun tp!2156103 () Bool)

(assert (=> b!7446887 (= e!4445971 (and tp!2156101 tp!2156103))))

(assert (=> b!7446013 (= tp!2155194 e!4445971)))

(declare-fun b!7446889 () Bool)

(declare-fun tp!2156102 () Bool)

(declare-fun tp!2156104 () Bool)

(assert (=> b!7446889 (= e!4445971 (and tp!2156102 tp!2156104))))

(declare-fun b!7446886 () Bool)

(assert (=> b!7446886 (= e!4445971 tp_is_empty!49201)))

(assert (= (and b!7446013 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446886))

(assert (= (and b!7446013 ((_ is Concat!28316) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446887))

(assert (= (and b!7446013 ((_ is Star!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446888))

(assert (= (and b!7446013 ((_ is Union!19471) (reg!19800 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446889))

(declare-fun b!7446892 () Bool)

(declare-fun e!4445972 () Bool)

(declare-fun tp!2156110 () Bool)

(assert (=> b!7446892 (= e!4445972 tp!2156110)))

(declare-fun b!7446891 () Bool)

(declare-fun tp!2156106 () Bool)

(declare-fun tp!2156108 () Bool)

(assert (=> b!7446891 (= e!4445972 (and tp!2156106 tp!2156108))))

(assert (=> b!7446021 (= tp!2155204 e!4445972)))

(declare-fun b!7446893 () Bool)

(declare-fun tp!2156107 () Bool)

(declare-fun tp!2156109 () Bool)

(assert (=> b!7446893 (= e!4445972 (and tp!2156107 tp!2156109))))

(declare-fun b!7446890 () Bool)

(assert (=> b!7446890 (= e!4445972 tp_is_empty!49201)))

(assert (= (and b!7446021 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446890))

(assert (= (and b!7446021 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446891))

(assert (= (and b!7446021 ((_ is Star!19471) (reg!19800 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446892))

(assert (= (and b!7446021 ((_ is Union!19471) (reg!19800 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446893))

(declare-fun b!7446896 () Bool)

(declare-fun e!4445973 () Bool)

(declare-fun tp!2156115 () Bool)

(assert (=> b!7446896 (= e!4445973 tp!2156115)))

(declare-fun b!7446895 () Bool)

(declare-fun tp!2156111 () Bool)

(declare-fun tp!2156113 () Bool)

(assert (=> b!7446895 (= e!4445973 (and tp!2156111 tp!2156113))))

(assert (=> b!7446030 (= tp!2155211 e!4445973)))

(declare-fun b!7446897 () Bool)

(declare-fun tp!2156112 () Bool)

(declare-fun tp!2156114 () Bool)

(assert (=> b!7446897 (= e!4445973 (and tp!2156112 tp!2156114))))

(declare-fun b!7446894 () Bool)

(assert (=> b!7446894 (= e!4445973 tp_is_empty!49201)))

(assert (= (and b!7446030 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446894))

(assert (= (and b!7446030 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446895))

(assert (= (and b!7446030 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446896))

(assert (= (and b!7446030 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446897))

(declare-fun b!7446900 () Bool)

(declare-fun e!4445974 () Bool)

(declare-fun tp!2156120 () Bool)

(assert (=> b!7446900 (= e!4445974 tp!2156120)))

(declare-fun b!7446899 () Bool)

(declare-fun tp!2156116 () Bool)

(declare-fun tp!2156118 () Bool)

(assert (=> b!7446899 (= e!4445974 (and tp!2156116 tp!2156118))))

(assert (=> b!7446030 (= tp!2155213 e!4445974)))

(declare-fun b!7446901 () Bool)

(declare-fun tp!2156117 () Bool)

(declare-fun tp!2156119 () Bool)

(assert (=> b!7446901 (= e!4445974 (and tp!2156117 tp!2156119))))

(declare-fun b!7446898 () Bool)

(assert (=> b!7446898 (= e!4445974 tp_is_empty!49201)))

(assert (= (and b!7446030 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446898))

(assert (= (and b!7446030 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446899))

(assert (= (and b!7446030 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446900))

(assert (= (and b!7446030 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7446901))

(declare-fun b!7446904 () Bool)

(declare-fun e!4445975 () Bool)

(declare-fun tp!2156125 () Bool)

(assert (=> b!7446904 (= e!4445975 tp!2156125)))

(declare-fun b!7446903 () Bool)

(declare-fun tp!2156121 () Bool)

(declare-fun tp!2156123 () Bool)

(assert (=> b!7446903 (= e!4445975 (and tp!2156121 tp!2156123))))

(assert (=> b!7446038 (= tp!2155221 e!4445975)))

(declare-fun b!7446905 () Bool)

(declare-fun tp!2156122 () Bool)

(declare-fun tp!2156124 () Bool)

(assert (=> b!7446905 (= e!4445975 (and tp!2156122 tp!2156124))))

(declare-fun b!7446902 () Bool)

(assert (=> b!7446902 (= e!4445975 tp_is_empty!49201)))

(assert (= (and b!7446038 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446902))

(assert (= (and b!7446038 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446903))

(assert (= (and b!7446038 ((_ is Star!19471) (regOne!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446904))

(assert (= (and b!7446038 ((_ is Union!19471) (regOne!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446905))

(declare-fun b!7446908 () Bool)

(declare-fun e!4445976 () Bool)

(declare-fun tp!2156130 () Bool)

(assert (=> b!7446908 (= e!4445976 tp!2156130)))

(declare-fun b!7446907 () Bool)

(declare-fun tp!2156126 () Bool)

(declare-fun tp!2156128 () Bool)

(assert (=> b!7446907 (= e!4445976 (and tp!2156126 tp!2156128))))

(assert (=> b!7446038 (= tp!2155223 e!4445976)))

(declare-fun b!7446909 () Bool)

(declare-fun tp!2156127 () Bool)

(declare-fun tp!2156129 () Bool)

(assert (=> b!7446909 (= e!4445976 (and tp!2156127 tp!2156129))))

(declare-fun b!7446906 () Bool)

(assert (=> b!7446906 (= e!4445976 tp_is_empty!49201)))

(assert (= (and b!7446038 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446906))

(assert (= (and b!7446038 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446907))

(assert (= (and b!7446038 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446908))

(assert (= (and b!7446038 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446909))

(declare-fun b!7446912 () Bool)

(declare-fun e!4445977 () Bool)

(declare-fun tp!2156135 () Bool)

(assert (=> b!7446912 (= e!4445977 tp!2156135)))

(declare-fun b!7446911 () Bool)

(declare-fun tp!2156131 () Bool)

(declare-fun tp!2156133 () Bool)

(assert (=> b!7446911 (= e!4445977 (and tp!2156131 tp!2156133))))

(assert (=> b!7445946 (= tp!2155106 e!4445977)))

(declare-fun b!7446913 () Bool)

(declare-fun tp!2156132 () Bool)

(declare-fun tp!2156134 () Bool)

(assert (=> b!7446913 (= e!4445977 (and tp!2156132 tp!2156134))))

(declare-fun b!7446910 () Bool)

(assert (=> b!7446910 (= e!4445977 tp_is_empty!49201)))

(assert (= (and b!7445946 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446910))

(assert (= (and b!7445946 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446911))

(assert (= (and b!7445946 ((_ is Star!19471) (regOne!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446912))

(assert (= (and b!7445946 ((_ is Union!19471) (regOne!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446913))

(declare-fun b!7446916 () Bool)

(declare-fun e!4445978 () Bool)

(declare-fun tp!2156140 () Bool)

(assert (=> b!7446916 (= e!4445978 tp!2156140)))

(declare-fun b!7446915 () Bool)

(declare-fun tp!2156136 () Bool)

(declare-fun tp!2156138 () Bool)

(assert (=> b!7446915 (= e!4445978 (and tp!2156136 tp!2156138))))

(assert (=> b!7445946 (= tp!2155108 e!4445978)))

(declare-fun b!7446917 () Bool)

(declare-fun tp!2156137 () Bool)

(declare-fun tp!2156139 () Bool)

(assert (=> b!7446917 (= e!4445978 (and tp!2156137 tp!2156139))))

(declare-fun b!7446914 () Bool)

(assert (=> b!7446914 (= e!4445978 tp_is_empty!49201)))

(assert (= (and b!7445946 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446914))

(assert (= (and b!7445946 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446915))

(assert (= (and b!7445946 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446916))

(assert (= (and b!7445946 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446917))

(declare-fun b!7446920 () Bool)

(declare-fun e!4445979 () Bool)

(declare-fun tp!2156145 () Bool)

(assert (=> b!7446920 (= e!4445979 tp!2156145)))

(declare-fun b!7446919 () Bool)

(declare-fun tp!2156141 () Bool)

(declare-fun tp!2156143 () Bool)

(assert (=> b!7446919 (= e!4445979 (and tp!2156141 tp!2156143))))

(assert (=> b!7446057 (= tp!2155252 e!4445979)))

(declare-fun b!7446921 () Bool)

(declare-fun tp!2156142 () Bool)

(declare-fun tp!2156144 () Bool)

(assert (=> b!7446921 (= e!4445979 (and tp!2156142 tp!2156144))))

(declare-fun b!7446918 () Bool)

(assert (=> b!7446918 (= e!4445979 tp_is_empty!49201)))

(assert (= (and b!7446057 ((_ is ElementMatch!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56712))))) b!7446918))

(assert (= (and b!7446057 ((_ is Concat!28316) (reg!19800 (h!78494 (exprs!8911 setElem!56712))))) b!7446919))

(assert (= (and b!7446057 ((_ is Star!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56712))))) b!7446920))

(assert (= (and b!7446057 ((_ is Union!19471) (reg!19800 (h!78494 (exprs!8911 setElem!56712))))) b!7446921))

(declare-fun b!7446924 () Bool)

(declare-fun e!4445980 () Bool)

(declare-fun tp!2156150 () Bool)

(assert (=> b!7446924 (= e!4445980 tp!2156150)))

(declare-fun b!7446923 () Bool)

(declare-fun tp!2156146 () Bool)

(declare-fun tp!2156148 () Bool)

(assert (=> b!7446923 (= e!4445980 (and tp!2156146 tp!2156148))))

(assert (=> b!7445988 (= tp!2155160 e!4445980)))

(declare-fun b!7446925 () Bool)

(declare-fun tp!2156147 () Bool)

(declare-fun tp!2156149 () Bool)

(assert (=> b!7446925 (= e!4445980 (and tp!2156147 tp!2156149))))

(declare-fun b!7446922 () Bool)

(assert (=> b!7446922 (= e!4445980 tp_is_empty!49201)))

(assert (= (and b!7445988 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446922))

(assert (= (and b!7445988 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446923))

(assert (= (and b!7445988 ((_ is Star!19471) (regOne!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446924))

(assert (= (and b!7445988 ((_ is Union!19471) (regOne!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446925))

(declare-fun b!7446928 () Bool)

(declare-fun e!4445981 () Bool)

(declare-fun tp!2156155 () Bool)

(assert (=> b!7446928 (= e!4445981 tp!2156155)))

(declare-fun b!7446927 () Bool)

(declare-fun tp!2156151 () Bool)

(declare-fun tp!2156153 () Bool)

(assert (=> b!7446927 (= e!4445981 (and tp!2156151 tp!2156153))))

(assert (=> b!7445988 (= tp!2155162 e!4445981)))

(declare-fun b!7446929 () Bool)

(declare-fun tp!2156152 () Bool)

(declare-fun tp!2156154 () Bool)

(assert (=> b!7446929 (= e!4445981 (and tp!2156152 tp!2156154))))

(declare-fun b!7446926 () Bool)

(assert (=> b!7446926 (= e!4445981 tp_is_empty!49201)))

(assert (= (and b!7445988 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446926))

(assert (= (and b!7445988 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446927))

(assert (= (and b!7445988 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446928))

(assert (= (and b!7445988 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446929))

(declare-fun b!7446932 () Bool)

(declare-fun e!4445982 () Bool)

(declare-fun tp!2156160 () Bool)

(assert (=> b!7446932 (= e!4445982 tp!2156160)))

(declare-fun b!7446931 () Bool)

(declare-fun tp!2156156 () Bool)

(declare-fun tp!2156158 () Bool)

(assert (=> b!7446931 (= e!4445982 (and tp!2156156 tp!2156158))))

(assert (=> b!7445997 (= tp!2155174 e!4445982)))

(declare-fun b!7446933 () Bool)

(declare-fun tp!2156157 () Bool)

(declare-fun tp!2156159 () Bool)

(assert (=> b!7446933 (= e!4445982 (and tp!2156157 tp!2156159))))

(declare-fun b!7446930 () Bool)

(assert (=> b!7446930 (= e!4445982 tp_is_empty!49201)))

(assert (= (and b!7445997 ((_ is ElementMatch!19471) (reg!19800 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446930))

(assert (= (and b!7445997 ((_ is Concat!28316) (reg!19800 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446931))

(assert (= (and b!7445997 ((_ is Star!19471) (reg!19800 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446932))

(assert (= (and b!7445997 ((_ is Union!19471) (reg!19800 (regOne!39455 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446933))

(declare-fun b!7446936 () Bool)

(declare-fun e!4445983 () Bool)

(declare-fun tp!2156165 () Bool)

(assert (=> b!7446936 (= e!4445983 tp!2156165)))

(declare-fun b!7446935 () Bool)

(declare-fun tp!2156161 () Bool)

(declare-fun tp!2156163 () Bool)

(assert (=> b!7446935 (= e!4445983 (and tp!2156161 tp!2156163))))

(assert (=> b!7446006 (= tp!2155181 e!4445983)))

(declare-fun b!7446937 () Bool)

(declare-fun tp!2156162 () Bool)

(declare-fun tp!2156164 () Bool)

(assert (=> b!7446937 (= e!4445983 (and tp!2156162 tp!2156164))))

(declare-fun b!7446934 () Bool)

(assert (=> b!7446934 (= e!4445983 tp_is_empty!49201)))

(assert (= (and b!7446006 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446934))

(assert (= (and b!7446006 ((_ is Concat!28316) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446935))

(assert (= (and b!7446006 ((_ is Star!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446936))

(assert (= (and b!7446006 ((_ is Union!19471) (regOne!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446937))

(declare-fun b!7446940 () Bool)

(declare-fun e!4445984 () Bool)

(declare-fun tp!2156170 () Bool)

(assert (=> b!7446940 (= e!4445984 tp!2156170)))

(declare-fun b!7446939 () Bool)

(declare-fun tp!2156166 () Bool)

(declare-fun tp!2156168 () Bool)

(assert (=> b!7446939 (= e!4445984 (and tp!2156166 tp!2156168))))

(assert (=> b!7446006 (= tp!2155183 e!4445984)))

(declare-fun b!7446941 () Bool)

(declare-fun tp!2156167 () Bool)

(declare-fun tp!2156169 () Bool)

(assert (=> b!7446941 (= e!4445984 (and tp!2156167 tp!2156169))))

(declare-fun b!7446938 () Bool)

(assert (=> b!7446938 (= e!4445984 tp_is_empty!49201)))

(assert (= (and b!7446006 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446938))

(assert (= (and b!7446006 ((_ is Concat!28316) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446939))

(assert (= (and b!7446006 ((_ is Star!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446940))

(assert (= (and b!7446006 ((_ is Union!19471) (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7446941))

(declare-fun b!7446944 () Bool)

(declare-fun e!4445985 () Bool)

(declare-fun tp!2156175 () Bool)

(assert (=> b!7446944 (= e!4445985 tp!2156175)))

(declare-fun b!7446943 () Bool)

(declare-fun tp!2156171 () Bool)

(declare-fun tp!2156173 () Bool)

(assert (=> b!7446943 (= e!4445985 (and tp!2156171 tp!2156173))))

(assert (=> b!7446014 (= tp!2155191 e!4445985)))

(declare-fun b!7446945 () Bool)

(declare-fun tp!2156172 () Bool)

(declare-fun tp!2156174 () Bool)

(assert (=> b!7446945 (= e!4445985 (and tp!2156172 tp!2156174))))

(declare-fun b!7446942 () Bool)

(assert (=> b!7446942 (= e!4445985 tp_is_empty!49201)))

(assert (= (and b!7446014 ((_ is ElementMatch!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446942))

(assert (= (and b!7446014 ((_ is Concat!28316) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446943))

(assert (= (and b!7446014 ((_ is Star!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446944))

(assert (= (and b!7446014 ((_ is Union!19471) (regOne!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446945))

(declare-fun b!7446948 () Bool)

(declare-fun e!4445986 () Bool)

(declare-fun tp!2156180 () Bool)

(assert (=> b!7446948 (= e!4445986 tp!2156180)))

(declare-fun b!7446947 () Bool)

(declare-fun tp!2156176 () Bool)

(declare-fun tp!2156178 () Bool)

(assert (=> b!7446947 (= e!4445986 (and tp!2156176 tp!2156178))))

(assert (=> b!7446014 (= tp!2155193 e!4445986)))

(declare-fun b!7446949 () Bool)

(declare-fun tp!2156177 () Bool)

(declare-fun tp!2156179 () Bool)

(assert (=> b!7446949 (= e!4445986 (and tp!2156177 tp!2156179))))

(declare-fun b!7446946 () Bool)

(assert (=> b!7446946 (= e!4445986 tp_is_empty!49201)))

(assert (= (and b!7446014 ((_ is ElementMatch!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446946))

(assert (= (and b!7446014 ((_ is Concat!28316) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446947))

(assert (= (and b!7446014 ((_ is Star!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446948))

(assert (= (and b!7446014 ((_ is Union!19471) (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56710)))))) b!7446949))

(declare-fun condSetEmpty!56725 () Bool)

(assert (=> setNonEmpty!56721 (= condSetEmpty!56725 (= setRest!56721 ((as const (Array Context!16822 Bool)) false)))))

(declare-fun setRes!56725 () Bool)

(assert (=> setNonEmpty!56721 (= tp!2155102 setRes!56725)))

(declare-fun setIsEmpty!56725 () Bool)

(assert (=> setIsEmpty!56725 setRes!56725))

(declare-fun e!4445987 () Bool)

(declare-fun tp!2156181 () Bool)

(declare-fun setElem!56725 () Context!16822)

(declare-fun setNonEmpty!56725 () Bool)

(assert (=> setNonEmpty!56725 (= setRes!56725 (and tp!2156181 (inv!92038 setElem!56725) e!4445987))))

(declare-fun setRest!56725 () (InoxSet Context!16822))

(assert (=> setNonEmpty!56725 (= setRest!56721 ((_ map or) (store ((as const (Array Context!16822 Bool)) false) setElem!56725 true) setRest!56725))))

(declare-fun b!7446950 () Bool)

(declare-fun tp!2156182 () Bool)

(assert (=> b!7446950 (= e!4445987 tp!2156182)))

(assert (= (and setNonEmpty!56721 condSetEmpty!56725) setIsEmpty!56725))

(assert (= (and setNonEmpty!56721 (not condSetEmpty!56725)) setNonEmpty!56725))

(assert (= setNonEmpty!56725 b!7446950))

(declare-fun m!8055516 () Bool)

(assert (=> setNonEmpty!56725 m!8055516))

(declare-fun b!7446953 () Bool)

(declare-fun e!4445988 () Bool)

(declare-fun tp!2156187 () Bool)

(assert (=> b!7446953 (= e!4445988 tp!2156187)))

(declare-fun b!7446952 () Bool)

(declare-fun tp!2156183 () Bool)

(declare-fun tp!2156185 () Bool)

(assert (=> b!7446952 (= e!4445988 (and tp!2156183 tp!2156185))))

(assert (=> b!7446022 (= tp!2155201 e!4445988)))

(declare-fun b!7446954 () Bool)

(declare-fun tp!2156184 () Bool)

(declare-fun tp!2156186 () Bool)

(assert (=> b!7446954 (= e!4445988 (and tp!2156184 tp!2156186))))

(declare-fun b!7446951 () Bool)

(assert (=> b!7446951 (= e!4445988 tp_is_empty!49201)))

(assert (= (and b!7446022 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446951))

(assert (= (and b!7446022 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446952))

(assert (= (and b!7446022 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446953))

(assert (= (and b!7446022 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446954))

(declare-fun b!7446957 () Bool)

(declare-fun e!4445989 () Bool)

(declare-fun tp!2156192 () Bool)

(assert (=> b!7446957 (= e!4445989 tp!2156192)))

(declare-fun b!7446956 () Bool)

(declare-fun tp!2156188 () Bool)

(declare-fun tp!2156190 () Bool)

(assert (=> b!7446956 (= e!4445989 (and tp!2156188 tp!2156190))))

(assert (=> b!7446022 (= tp!2155203 e!4445989)))

(declare-fun b!7446958 () Bool)

(declare-fun tp!2156189 () Bool)

(declare-fun tp!2156191 () Bool)

(assert (=> b!7446958 (= e!4445989 (and tp!2156189 tp!2156191))))

(declare-fun b!7446955 () Bool)

(assert (=> b!7446955 (= e!4445989 tp_is_empty!49201)))

(assert (= (and b!7446022 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446955))

(assert (= (and b!7446022 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446956))

(assert (= (and b!7446022 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446957))

(assert (= (and b!7446022 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446958))

(declare-fun b!7446961 () Bool)

(declare-fun e!4445990 () Bool)

(declare-fun tp!2156197 () Bool)

(assert (=> b!7446961 (= e!4445990 tp!2156197)))

(declare-fun b!7446960 () Bool)

(declare-fun tp!2156193 () Bool)

(declare-fun tp!2156195 () Bool)

(assert (=> b!7446960 (= e!4445990 (and tp!2156193 tp!2156195))))

(assert (=> b!7446059 (= tp!2155253 e!4445990)))

(declare-fun b!7446962 () Bool)

(declare-fun tp!2156194 () Bool)

(declare-fun tp!2156196 () Bool)

(assert (=> b!7446962 (= e!4445990 (and tp!2156194 tp!2156196))))

(declare-fun b!7446959 () Bool)

(assert (=> b!7446959 (= e!4445990 tp_is_empty!49201)))

(assert (= (and b!7446059 ((_ is ElementMatch!19471) (h!78494 (t!386735 (exprs!8911 setElem!56712))))) b!7446959))

(assert (= (and b!7446059 ((_ is Concat!28316) (h!78494 (t!386735 (exprs!8911 setElem!56712))))) b!7446960))

(assert (= (and b!7446059 ((_ is Star!19471) (h!78494 (t!386735 (exprs!8911 setElem!56712))))) b!7446961))

(assert (= (and b!7446059 ((_ is Union!19471) (h!78494 (t!386735 (exprs!8911 setElem!56712))))) b!7446962))

(declare-fun b!7446963 () Bool)

(declare-fun e!4445991 () Bool)

(declare-fun tp!2156198 () Bool)

(declare-fun tp!2156199 () Bool)

(assert (=> b!7446963 (= e!4445991 (and tp!2156198 tp!2156199))))

(assert (=> b!7446059 (= tp!2155254 e!4445991)))

(assert (= (and b!7446059 ((_ is Cons!72046) (t!386735 (t!386735 (exprs!8911 setElem!56712))))) b!7446963))

(declare-fun b!7446966 () Bool)

(declare-fun e!4445992 () Bool)

(declare-fun tp!2156204 () Bool)

(assert (=> b!7446966 (= e!4445992 tp!2156204)))

(declare-fun b!7446965 () Bool)

(declare-fun tp!2156200 () Bool)

(declare-fun tp!2156202 () Bool)

(assert (=> b!7446965 (= e!4445992 (and tp!2156200 tp!2156202))))

(assert (=> b!7446041 (= tp!2155229 e!4445992)))

(declare-fun b!7446967 () Bool)

(declare-fun tp!2156201 () Bool)

(declare-fun tp!2156203 () Bool)

(assert (=> b!7446967 (= e!4445992 (and tp!2156201 tp!2156203))))

(declare-fun b!7446964 () Bool)

(assert (=> b!7446964 (= e!4445992 tp_is_empty!49201)))

(assert (= (and b!7446041 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446964))

(assert (= (and b!7446041 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446965))

(assert (= (and b!7446041 ((_ is Star!19471) (reg!19800 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446966))

(assert (= (and b!7446041 ((_ is Union!19471) (reg!19800 (regTwo!39455 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446967))

(declare-fun b!7446970 () Bool)

(declare-fun e!4445993 () Bool)

(declare-fun tp!2156209 () Bool)

(assert (=> b!7446970 (= e!4445993 tp!2156209)))

(declare-fun b!7446969 () Bool)

(declare-fun tp!2156205 () Bool)

(declare-fun tp!2156207 () Bool)

(assert (=> b!7446969 (= e!4445993 (and tp!2156205 tp!2156207))))

(assert (=> b!7445949 (= tp!2155114 e!4445993)))

(declare-fun b!7446971 () Bool)

(declare-fun tp!2156206 () Bool)

(declare-fun tp!2156208 () Bool)

(assert (=> b!7446971 (= e!4445993 (and tp!2156206 tp!2156208))))

(declare-fun b!7446968 () Bool)

(assert (=> b!7446968 (= e!4445993 tp_is_empty!49201)))

(assert (= (and b!7445949 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446968))

(assert (= (and b!7445949 ((_ is Concat!28316) (reg!19800 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446969))

(assert (= (and b!7445949 ((_ is Star!19471) (reg!19800 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446970))

(assert (= (and b!7445949 ((_ is Union!19471) (reg!19800 (regTwo!39455 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446971))

(declare-fun b!7446974 () Bool)

(declare-fun e!4445994 () Bool)

(declare-fun tp!2156214 () Bool)

(assert (=> b!7446974 (= e!4445994 tp!2156214)))

(declare-fun b!7446973 () Bool)

(declare-fun tp!2156210 () Bool)

(declare-fun tp!2156212 () Bool)

(assert (=> b!7446973 (= e!4445994 (and tp!2156210 tp!2156212))))

(assert (=> b!7445958 (= tp!2155121 e!4445994)))

(declare-fun b!7446975 () Bool)

(declare-fun tp!2156211 () Bool)

(declare-fun tp!2156213 () Bool)

(assert (=> b!7446975 (= e!4445994 (and tp!2156211 tp!2156213))))

(declare-fun b!7446972 () Bool)

(assert (=> b!7446972 (= e!4445994 tp_is_empty!49201)))

(assert (= (and b!7445958 ((_ is ElementMatch!19471) (regOne!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446972))

(assert (= (and b!7445958 ((_ is Concat!28316) (regOne!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446973))

(assert (= (and b!7445958 ((_ is Star!19471) (regOne!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446974))

(assert (= (and b!7445958 ((_ is Union!19471) (regOne!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446975))

(declare-fun b!7446978 () Bool)

(declare-fun e!4445995 () Bool)

(declare-fun tp!2156219 () Bool)

(assert (=> b!7446978 (= e!4445995 tp!2156219)))

(declare-fun b!7446977 () Bool)

(declare-fun tp!2156215 () Bool)

(declare-fun tp!2156217 () Bool)

(assert (=> b!7446977 (= e!4445995 (and tp!2156215 tp!2156217))))

(assert (=> b!7445958 (= tp!2155123 e!4445995)))

(declare-fun b!7446979 () Bool)

(declare-fun tp!2156216 () Bool)

(declare-fun tp!2156218 () Bool)

(assert (=> b!7446979 (= e!4445995 (and tp!2156216 tp!2156218))))

(declare-fun b!7446976 () Bool)

(assert (=> b!7446976 (= e!4445995 tp_is_empty!49201)))

(assert (= (and b!7445958 ((_ is ElementMatch!19471) (regTwo!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446976))

(assert (= (and b!7445958 ((_ is Concat!28316) (regTwo!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446977))

(assert (= (and b!7445958 ((_ is Star!19471) (regTwo!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446978))

(assert (= (and b!7445958 ((_ is Union!19471) (regTwo!39455 (regOne!39455 (regOne!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7446979))

(declare-fun b!7446982 () Bool)

(declare-fun e!4445996 () Bool)

(declare-fun tp!2156224 () Bool)

(assert (=> b!7446982 (= e!4445996 tp!2156224)))

(declare-fun b!7446981 () Bool)

(declare-fun tp!2156220 () Bool)

(declare-fun tp!2156222 () Bool)

(assert (=> b!7446981 (= e!4445996 (and tp!2156220 tp!2156222))))

(assert (=> b!7445965 (= tp!2155134 e!4445996)))

(declare-fun b!7446983 () Bool)

(declare-fun tp!2156221 () Bool)

(declare-fun tp!2156223 () Bool)

(assert (=> b!7446983 (= e!4445996 (and tp!2156221 tp!2156223))))

(declare-fun b!7446980 () Bool)

(assert (=> b!7446980 (= e!4445996 tp_is_empty!49201)))

(assert (= (and b!7445965 ((_ is ElementMatch!19471) (reg!19800 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446980))

(assert (= (and b!7445965 ((_ is Concat!28316) (reg!19800 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446981))

(assert (= (and b!7445965 ((_ is Star!19471) (reg!19800 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446982))

(assert (= (and b!7445965 ((_ is Union!19471) (reg!19800 (reg!19800 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7446983))

(declare-fun b!7446986 () Bool)

(declare-fun e!4445997 () Bool)

(declare-fun tp!2156229 () Bool)

(assert (=> b!7446986 (= e!4445997 tp!2156229)))

(declare-fun b!7446985 () Bool)

(declare-fun tp!2156225 () Bool)

(declare-fun tp!2156227 () Bool)

(assert (=> b!7446985 (= e!4445997 (and tp!2156225 tp!2156227))))

(assert (=> b!7445974 (= tp!2155141 e!4445997)))

(declare-fun b!7446987 () Bool)

(declare-fun tp!2156226 () Bool)

(declare-fun tp!2156228 () Bool)

(assert (=> b!7446987 (= e!4445997 (and tp!2156226 tp!2156228))))

(declare-fun b!7446984 () Bool)

(assert (=> b!7446984 (= e!4445997 tp_is_empty!49201)))

(assert (= (and b!7445974 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446984))

(assert (= (and b!7445974 ((_ is Concat!28316) (regOne!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446985))

(assert (= (and b!7445974 ((_ is Star!19471) (regOne!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446986))

(assert (= (and b!7445974 ((_ is Union!19471) (regOne!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446987))

(declare-fun b!7446990 () Bool)

(declare-fun e!4445998 () Bool)

(declare-fun tp!2156234 () Bool)

(assert (=> b!7446990 (= e!4445998 tp!2156234)))

(declare-fun b!7446989 () Bool)

(declare-fun tp!2156230 () Bool)

(declare-fun tp!2156232 () Bool)

(assert (=> b!7446989 (= e!4445998 (and tp!2156230 tp!2156232))))

(assert (=> b!7445974 (= tp!2155143 e!4445998)))

(declare-fun b!7446991 () Bool)

(declare-fun tp!2156231 () Bool)

(declare-fun tp!2156233 () Bool)

(assert (=> b!7446991 (= e!4445998 (and tp!2156231 tp!2156233))))

(declare-fun b!7446988 () Bool)

(assert (=> b!7446988 (= e!4445998 tp_is_empty!49201)))

(assert (= (and b!7445974 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446988))

(assert (= (and b!7445974 ((_ is Concat!28316) (regTwo!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446989))

(assert (= (and b!7445974 ((_ is Star!19471) (regTwo!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446990))

(assert (= (and b!7445974 ((_ is Union!19471) (regTwo!39455 (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7446991))

(declare-fun b!7446994 () Bool)

(declare-fun e!4445999 () Bool)

(declare-fun tp!2156239 () Bool)

(assert (=> b!7446994 (= e!4445999 tp!2156239)))

(declare-fun b!7446993 () Bool)

(declare-fun tp!2156235 () Bool)

(declare-fun tp!2156237 () Bool)

(assert (=> b!7446993 (= e!4445999 (and tp!2156235 tp!2156237))))

(assert (=> b!7446093 (= tp!2155295 e!4445999)))

(declare-fun b!7446995 () Bool)

(declare-fun tp!2156236 () Bool)

(declare-fun tp!2156238 () Bool)

(assert (=> b!7446995 (= e!4445999 (and tp!2156236 tp!2156238))))

(declare-fun b!7446992 () Bool)

(assert (=> b!7446992 (= e!4445999 tp_is_empty!49201)))

(assert (= (and b!7446093 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446992))

(assert (= (and b!7446093 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446993))

(assert (= (and b!7446093 ((_ is Star!19471) (regOne!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446994))

(assert (= (and b!7446093 ((_ is Union!19471) (regOne!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446995))

(declare-fun b!7446998 () Bool)

(declare-fun e!4446000 () Bool)

(declare-fun tp!2156244 () Bool)

(assert (=> b!7446998 (= e!4446000 tp!2156244)))

(declare-fun b!7446997 () Bool)

(declare-fun tp!2156240 () Bool)

(declare-fun tp!2156242 () Bool)

(assert (=> b!7446997 (= e!4446000 (and tp!2156240 tp!2156242))))

(assert (=> b!7446093 (= tp!2155297 e!4446000)))

(declare-fun b!7446999 () Bool)

(declare-fun tp!2156241 () Bool)

(declare-fun tp!2156243 () Bool)

(assert (=> b!7446999 (= e!4446000 (and tp!2156241 tp!2156243))))

(declare-fun b!7446996 () Bool)

(assert (=> b!7446996 (= e!4446000 tp_is_empty!49201)))

(assert (= (and b!7446093 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446996))

(assert (= (and b!7446093 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446997))

(assert (= (and b!7446093 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446998))

(assert (= (and b!7446093 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7446999))

(declare-fun b!7447002 () Bool)

(declare-fun e!4446001 () Bool)

(declare-fun tp!2156249 () Bool)

(assert (=> b!7447002 (= e!4446001 tp!2156249)))

(declare-fun b!7447001 () Bool)

(declare-fun tp!2156245 () Bool)

(declare-fun tp!2156247 () Bool)

(assert (=> b!7447001 (= e!4446001 (and tp!2156245 tp!2156247))))

(assert (=> b!7446070 (= tp!2155269 e!4446001)))

(declare-fun b!7447003 () Bool)

(declare-fun tp!2156246 () Bool)

(declare-fun tp!2156248 () Bool)

(assert (=> b!7447003 (= e!4446001 (and tp!2156246 tp!2156248))))

(declare-fun b!7447000 () Bool)

(assert (=> b!7447000 (= e!4446001 tp_is_empty!49201)))

(assert (= (and b!7446070 ((_ is ElementMatch!19471) (reg!19800 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7447000))

(assert (= (and b!7446070 ((_ is Concat!28316) (reg!19800 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7447001))

(assert (= (and b!7446070 ((_ is Star!19471) (reg!19800 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7447002))

(assert (= (and b!7446070 ((_ is Union!19471) (reg!19800 (regTwo!39454 (regOne!39454 (h!78494 (exprs!8911 setElem!56704))))))) b!7447003))

(declare-fun b!7447006 () Bool)

(declare-fun e!4446002 () Bool)

(declare-fun tp!2156254 () Bool)

(assert (=> b!7447006 (= e!4446002 tp!2156254)))

(declare-fun b!7447005 () Bool)

(declare-fun tp!2156250 () Bool)

(declare-fun tp!2156252 () Bool)

(assert (=> b!7447005 (= e!4446002 (and tp!2156250 tp!2156252))))

(assert (=> b!7446079 (= tp!2155276 e!4446002)))

(declare-fun b!7447007 () Bool)

(declare-fun tp!2156251 () Bool)

(declare-fun tp!2156253 () Bool)

(assert (=> b!7447007 (= e!4446002 (and tp!2156251 tp!2156253))))

(declare-fun b!7447004 () Bool)

(assert (=> b!7447004 (= e!4446002 tp_is_empty!49201)))

(assert (= (and b!7446079 ((_ is ElementMatch!19471) (regOne!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447004))

(assert (= (and b!7446079 ((_ is Concat!28316) (regOne!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447005))

(assert (= (and b!7446079 ((_ is Star!19471) (regOne!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447006))

(assert (= (and b!7446079 ((_ is Union!19471) (regOne!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447007))

(declare-fun b!7447010 () Bool)

(declare-fun e!4446003 () Bool)

(declare-fun tp!2156259 () Bool)

(assert (=> b!7447010 (= e!4446003 tp!2156259)))

(declare-fun b!7447009 () Bool)

(declare-fun tp!2156255 () Bool)

(declare-fun tp!2156257 () Bool)

(assert (=> b!7447009 (= e!4446003 (and tp!2156255 tp!2156257))))

(assert (=> b!7446079 (= tp!2155278 e!4446003)))

(declare-fun b!7447011 () Bool)

(declare-fun tp!2156256 () Bool)

(declare-fun tp!2156258 () Bool)

(assert (=> b!7447011 (= e!4446003 (and tp!2156256 tp!2156258))))

(declare-fun b!7447008 () Bool)

(assert (=> b!7447008 (= e!4446003 tp_is_empty!49201)))

(assert (= (and b!7446079 ((_ is ElementMatch!19471) (regTwo!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447008))

(assert (= (and b!7446079 ((_ is Concat!28316) (regTwo!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447009))

(assert (= (and b!7446079 ((_ is Star!19471) (regTwo!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447010))

(assert (= (and b!7446079 ((_ is Union!19471) (regTwo!39455 (regTwo!39455 (reg!19800 (h!78494 (exprs!8911 setElem!56704))))))) b!7447011))

(declare-fun b!7447014 () Bool)

(declare-fun e!4446004 () Bool)

(declare-fun tp!2156264 () Bool)

(assert (=> b!7447014 (= e!4446004 tp!2156264)))

(declare-fun b!7447013 () Bool)

(declare-fun tp!2156260 () Bool)

(declare-fun tp!2156262 () Bool)

(assert (=> b!7447013 (= e!4446004 (and tp!2156260 tp!2156262))))

(assert (=> b!7446008 (= tp!2155185 e!4446004)))

(declare-fun b!7447015 () Bool)

(declare-fun tp!2156261 () Bool)

(declare-fun tp!2156263 () Bool)

(assert (=> b!7447015 (= e!4446004 (and tp!2156261 tp!2156263))))

(declare-fun b!7447012 () Bool)

(assert (=> b!7447012 (= e!4446004 tp_is_empty!49201)))

(assert (= (and b!7446008 ((_ is ElementMatch!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447012))

(assert (= (and b!7446008 ((_ is Concat!28316) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447013))

(assert (= (and b!7446008 ((_ is Star!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447014))

(assert (= (and b!7446008 ((_ is Union!19471) (regOne!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447015))

(declare-fun b!7447018 () Bool)

(declare-fun e!4446005 () Bool)

(declare-fun tp!2156269 () Bool)

(assert (=> b!7447018 (= e!4446005 tp!2156269)))

(declare-fun b!7447017 () Bool)

(declare-fun tp!2156265 () Bool)

(declare-fun tp!2156267 () Bool)

(assert (=> b!7447017 (= e!4446005 (and tp!2156265 tp!2156267))))

(assert (=> b!7446008 (= tp!2155187 e!4446005)))

(declare-fun b!7447019 () Bool)

(declare-fun tp!2156266 () Bool)

(declare-fun tp!2156268 () Bool)

(assert (=> b!7447019 (= e!4446005 (and tp!2156266 tp!2156268))))

(declare-fun b!7447016 () Bool)

(assert (=> b!7447016 (= e!4446005 tp_is_empty!49201)))

(assert (= (and b!7446008 ((_ is ElementMatch!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447016))

(assert (= (and b!7446008 ((_ is Concat!28316) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447017))

(assert (= (and b!7446008 ((_ is Star!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447018))

(assert (= (and b!7446008 ((_ is Union!19471) (regTwo!39454 (regTwo!39454 (h!78494 (exprs!8911 setElem!56710)))))) b!7447019))

(declare-fun b!7447022 () Bool)

(declare-fun e!4446006 () Bool)

(declare-fun tp!2156274 () Bool)

(assert (=> b!7447022 (= e!4446006 tp!2156274)))

(declare-fun b!7447021 () Bool)

(declare-fun tp!2156270 () Bool)

(declare-fun tp!2156272 () Bool)

(assert (=> b!7447021 (= e!4446006 (and tp!2156270 tp!2156272))))

(assert (=> b!7446016 (= tp!2155195 e!4446006)))

(declare-fun b!7447023 () Bool)

(declare-fun tp!2156271 () Bool)

(declare-fun tp!2156273 () Bool)

(assert (=> b!7447023 (= e!4446006 (and tp!2156271 tp!2156273))))

(declare-fun b!7447020 () Bool)

(assert (=> b!7447020 (= e!4446006 tp_is_empty!49201)))

(assert (= (and b!7446016 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447020))

(assert (= (and b!7446016 ((_ is Concat!28316) (regOne!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447021))

(assert (= (and b!7446016 ((_ is Star!19471) (regOne!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447022))

(assert (= (and b!7446016 ((_ is Union!19471) (regOne!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447023))

(declare-fun b!7447026 () Bool)

(declare-fun e!4446007 () Bool)

(declare-fun tp!2156279 () Bool)

(assert (=> b!7447026 (= e!4446007 tp!2156279)))

(declare-fun b!7447025 () Bool)

(declare-fun tp!2156275 () Bool)

(declare-fun tp!2156277 () Bool)

(assert (=> b!7447025 (= e!4446007 (and tp!2156275 tp!2156277))))

(assert (=> b!7446016 (= tp!2155197 e!4446007)))

(declare-fun b!7447027 () Bool)

(declare-fun tp!2156276 () Bool)

(declare-fun tp!2156278 () Bool)

(assert (=> b!7447027 (= e!4446007 (and tp!2156276 tp!2156278))))

(declare-fun b!7447024 () Bool)

(assert (=> b!7447024 (= e!4446007 tp_is_empty!49201)))

(assert (= (and b!7446016 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447024))

(assert (= (and b!7446016 ((_ is Concat!28316) (regTwo!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447025))

(assert (= (and b!7446016 ((_ is Star!19471) (regTwo!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447026))

(assert (= (and b!7446016 ((_ is Union!19471) (regTwo!39454 (regOne!39454 (h!78494 (t!386735 (exprs!8911 setElem!56704))))))) b!7447027))

(declare-fun b!7447030 () Bool)

(declare-fun e!4446008 () Bool)

(declare-fun tp!2156284 () Bool)

(assert (=> b!7447030 (= e!4446008 tp!2156284)))

(declare-fun b!7447029 () Bool)

(declare-fun tp!2156280 () Bool)

(declare-fun tp!2156282 () Bool)

(assert (=> b!7447029 (= e!4446008 (and tp!2156280 tp!2156282))))

(assert (=> b!7446024 (= tp!2155205 e!4446008)))

(declare-fun b!7447031 () Bool)

(declare-fun tp!2156281 () Bool)

(declare-fun tp!2156283 () Bool)

(assert (=> b!7447031 (= e!4446008 (and tp!2156281 tp!2156283))))

(declare-fun b!7447028 () Bool)

(assert (=> b!7447028 (= e!4446008 tp_is_empty!49201)))

(assert (= (and b!7446024 ((_ is ElementMatch!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447028))

(assert (= (and b!7446024 ((_ is Concat!28316) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447029))

(assert (= (and b!7446024 ((_ is Star!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447030))

(assert (= (and b!7446024 ((_ is Union!19471) (regOne!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447031))

(declare-fun b!7447034 () Bool)

(declare-fun e!4446009 () Bool)

(declare-fun tp!2156289 () Bool)

(assert (=> b!7447034 (= e!4446009 tp!2156289)))

(declare-fun b!7447033 () Bool)

(declare-fun tp!2156285 () Bool)

(declare-fun tp!2156287 () Bool)

(assert (=> b!7447033 (= e!4446009 (and tp!2156285 tp!2156287))))

(assert (=> b!7446024 (= tp!2155207 e!4446009)))

(declare-fun b!7447035 () Bool)

(declare-fun tp!2156286 () Bool)

(declare-fun tp!2156288 () Bool)

(assert (=> b!7447035 (= e!4446009 (and tp!2156286 tp!2156288))))

(declare-fun b!7447032 () Bool)

(assert (=> b!7447032 (= e!4446009 tp_is_empty!49201)))

(assert (= (and b!7446024 ((_ is ElementMatch!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447032))

(assert (= (and b!7446024 ((_ is Concat!28316) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447033))

(assert (= (and b!7446024 ((_ is Star!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447034))

(assert (= (and b!7446024 ((_ is Union!19471) (regTwo!39454 (regOne!39455 (h!78494 (exprs!8911 setElem!56710)))))) b!7447035))

(declare-fun b!7447038 () Bool)

(declare-fun e!4446010 () Bool)

(declare-fun tp!2156294 () Bool)

(assert (=> b!7447038 (= e!4446010 tp!2156294)))

(declare-fun b!7447037 () Bool)

(declare-fun tp!2156290 () Bool)

(declare-fun tp!2156292 () Bool)

(assert (=> b!7447037 (= e!4446010 (and tp!2156290 tp!2156292))))

(assert (=> b!7446032 (= tp!2155215 e!4446010)))

(declare-fun b!7447039 () Bool)

(declare-fun tp!2156291 () Bool)

(declare-fun tp!2156293 () Bool)

(assert (=> b!7447039 (= e!4446010 (and tp!2156291 tp!2156293))))

(declare-fun b!7447036 () Bool)

(assert (=> b!7447036 (= e!4446010 tp_is_empty!49201)))

(assert (= (and b!7446032 ((_ is ElementMatch!19471) (regOne!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447036))

(assert (= (and b!7446032 ((_ is Concat!28316) (regOne!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447037))

(assert (= (and b!7446032 ((_ is Star!19471) (regOne!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447038))

(assert (= (and b!7446032 ((_ is Union!19471) (regOne!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447039))

(declare-fun b!7447042 () Bool)

(declare-fun e!4446011 () Bool)

(declare-fun tp!2156299 () Bool)

(assert (=> b!7447042 (= e!4446011 tp!2156299)))

(declare-fun b!7447041 () Bool)

(declare-fun tp!2156295 () Bool)

(declare-fun tp!2156297 () Bool)

(assert (=> b!7447041 (= e!4446011 (and tp!2156295 tp!2156297))))

(assert (=> b!7446032 (= tp!2155217 e!4446011)))

(declare-fun b!7447043 () Bool)

(declare-fun tp!2156296 () Bool)

(declare-fun tp!2156298 () Bool)

(assert (=> b!7447043 (= e!4446011 (and tp!2156296 tp!2156298))))

(declare-fun b!7447040 () Bool)

(assert (=> b!7447040 (= e!4446011 tp_is_empty!49201)))

(assert (= (and b!7446032 ((_ is ElementMatch!19471) (regTwo!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447040))

(assert (= (and b!7446032 ((_ is Concat!28316) (regTwo!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447041))

(assert (= (and b!7446032 ((_ is Star!19471) (regTwo!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447042))

(assert (= (and b!7446032 ((_ is Union!19471) (regTwo!39454 (reg!19800 (regTwo!39455 (h!78494 (exprs!8911 setElem!56704))))))) b!7447043))

(declare-fun b_lambda!287797 () Bool)

(assert (= b_lambda!287787 (or d!2296529 b_lambda!287797)))

(declare-fun bs!1926761 () Bool)

(declare-fun d!2296617 () Bool)

(assert (= bs!1926761 (and d!2296617 d!2296529)))

(assert (=> bs!1926761 (= (dynLambda!29747 lambda!460643 (h!78497 (toList!11796 z!3503))) (not (dynLambda!29747 lambda!460622 (h!78497 (toList!11796 z!3503)))))))

(declare-fun b_lambda!287807 () Bool)

(assert (=> (not b_lambda!287807) (not bs!1926761)))

(declare-fun m!8055518 () Bool)

(assert (=> bs!1926761 m!8055518))

(assert (=> b!7446110 d!2296617))

(declare-fun b_lambda!287799 () Bool)

(assert (= b_lambda!287791 (or d!2296347 b_lambda!287799)))

(declare-fun bs!1926762 () Bool)

(declare-fun d!2296619 () Bool)

(assert (= bs!1926762 (and d!2296619 d!2296347)))

(assert (=> bs!1926762 (= (dynLambda!29744 lambda!460611 (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))) (validRegex!9987 (h!78494 (t!386735 (t!386735 (t!386735 (exprs!8911 setElem!56704)))))))))

(declare-fun m!8055520 () Bool)

(assert (=> bs!1926762 m!8055520))

(assert (=> b!7446195 d!2296619))

(declare-fun b_lambda!287801 () Bool)

(assert (= b_lambda!287789 (or d!2296421 b_lambda!287801)))

(declare-fun bs!1926763 () Bool)

(declare-fun d!2296621 () Bool)

(assert (= bs!1926763 (and d!2296621 d!2296421)))

(assert (=> bs!1926763 (= (dynLambda!29744 lambda!460629 (h!78494 (t!386735 (exprs!8911 setElem!56712)))) (validRegex!9987 (h!78494 (t!386735 (exprs!8911 setElem!56712)))))))

(declare-fun m!8055522 () Bool)

(assert (=> bs!1926763 m!8055522))

(assert (=> b!7446193 d!2296621))

(declare-fun b_lambda!287803 () Bool)

(assert (= b_lambda!287793 (or d!2296503 b_lambda!287803)))

(declare-fun bs!1926764 () Bool)

(declare-fun d!2296623 () Bool)

(assert (= bs!1926764 (and d!2296623 d!2296503)))

(assert (=> bs!1926764 (= (dynLambda!29744 lambda!460638 (h!78494 (exprs!8911 setElem!56714))) (validRegex!9987 (h!78494 (exprs!8911 setElem!56714))))))

(declare-fun m!8055524 () Bool)

(assert (=> bs!1926764 m!8055524))

(assert (=> b!7446215 d!2296623))

(declare-fun b_lambda!287805 () Bool)

(assert (= b_lambda!287795 (or d!2296369 b_lambda!287805)))

(declare-fun bs!1926765 () Bool)

(declare-fun d!2296625 () Bool)

(assert (= bs!1926765 (and d!2296625 d!2296369)))

(assert (=> bs!1926765 (= (dynLambda!29744 lambda!460619 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710))))) (validRegex!9987 (h!78494 (t!386735 (t!386735 (exprs!8911 setElem!56710))))))))

(declare-fun m!8055526 () Bool)

(assert (=> bs!1926765 m!8055526))

(assert (=> b!7446257 d!2296625))

(check-sat (not b!7447003) (not b!7446337) (not b!7446306) (not bm!684338) (not b!7446264) (not b!7446792) (not b!7447010) (not b!7446737) (not bm!684348) (not b!7446265) (not b!7446613) (not b!7446600) (not d!2296609) (not b!7446586) (not b!7446989) (not b!7446596) (not b!7446320) (not b!7446481) (not b!7446385) (not b!7446321) (not b!7446746) (not b!7446710) (not bs!1926765) (not b!7446969) (not b!7446285) (not bm!684321) (not b!7446519) (not b!7446880) (not b!7446489) (not b!7446127) (not b!7446397) (not b_lambda!287745) (not b!7446941) (not b!7446705) (not b!7446601) (not b!7446525) (not b!7446698) (not b_lambda!287785) (not b!7446763) (not b!7446661) (not b!7446637) (not b_lambda!287807) (not b!7446544) (not b!7446927) (not b!7446784) (not b!7446626) (not b!7446160) (not b!7446284) (not b!7446180) (not b!7446524) (not b!7446362) (not b!7446756) (not b!7446325) (not b!7446468) (not b!7446774) (not b!7446439) (not b!7446666) (not b!7446394) (not b!7446725) (not b!7446548) (not b!7446837) (not b!7446867) (not b!7446828) (not b!7446772) (not b!7446681) (not b!7446145) (not b!7446844) (not b!7446326) (not b!7446954) (not b!7446404) (not b!7446810) (not bm!684318) (not b!7446962) (not b!7446336) (not b!7446298) (not bm!684320) (not b!7446373) (not b!7446640) (not b!7446645) (not b!7446314) (not b!7446679) (not b!7446671) (not b!7446686) (not b!7446111) (not b!7446487) (not b!7446499) (not d!2296541) (not b!7446859) (not b!7446412) (not b!7446536) (not bm!684324) (not b!7446612) (not setNonEmpty!56725) (not b!7446920) (not b!7446699) (not bs!1926763) (not b!7447002) (not b!7447026) (not b!7446414) (not b!7446569) (not d!2296575) (not bm!684335) (not b!7446648) (not b!7446507) (not b!7446282) (not b!7446990) (not b!7446986) (not b!7446389) (not b!7446437) (not b!7446675) (not b!7446749) (not b!7446999) (not b!7446424) (not b!7446726) (not b!7446485) (not b!7446292) (not b!7446386) (not b!7446662) (not b!7446952) (not bm!684329) (not b!7446435) (not b!7446937) (not b!7446929) (not b!7446947) (not b!7446782) (not b!7446735) (not b!7446405) (not b!7446406) (not b!7446616) (not b!7447025) (not bm!684343) (not b!7446983) (not b!7446876) (not b!7446779) (not b!7446368) (not b!7447019) (not b!7446211) (not b!7446286) (not b!7447005) (not b!7446896) (not b!7446512) (not b!7446830) (not b!7446377) (not b!7447009) (not b!7446420) (not b!7446924) (not b!7446881) (not b!7446472) (not b!7446849) (not b!7446173) (not b!7446304) (not b!7446575) (not b!7446445) (not b!7446758) (not b!7446948) (not b!7446451) (not b!7446907) (not b!7446553) (not b!7446625) (not b!7446702) (not b!7446646) (not b!7446667) (not b!7446939) (not b!7446943) (not b!7446997) (not b!7447039) (not b!7446400) (not b!7446816) (not b!7446629) (not b!7446357) (not b!7446979) (not b!7446469) (not b!7446741) (not b!7446642) (not b!7446202) (not b!7446899) (not b!7446827) (not b!7446388) (not b!7446305) (not b!7446913) (not b!7446153) (not d!2296589) (not b!7446936) (not b!7446497) (not b!7446800) (not b!7446771) (not b!7446911) (not b!7446826) (not b!7446253) (not b!7446577) (not b!7446216) (not b!7446479) (not b!7446963) (not b!7447034) (not b!7446313) (not b!7446961) (not b!7446973) (not b!7446981) (not b!7446317) (not b!7446609) (not b!7446531) (not b!7446290) (not b!7446426) (not b!7446455) (not b!7446755) (not b!7446877) (not b!7446334) (not b_lambda!287801) (not b!7446258) (not b!7446796) (not b!7446879) (not b!7446333) (not b!7446915) (not b!7446500) (not b!7446289) (not b!7446900) (not b!7446652) (not b!7446408) (not b!7446649) (not b!7446751) (not b!7446579) (not b!7446872) (not b!7446551) (not b!7446501) (not b!7446561) (not b!7446873) (not b!7446895) (not b!7446473) (not b!7446345) (not b!7446940) (not b!7446998) (not b!7446535) (not b!7446555) (not b!7446276) (not b!7446384) (not b!7446152) (not b!7446689) (not b!7446967) (not b!7446329) (not b!7446909) (not b!7446776) (not b!7446928) (not b!7446790) (not b!7446861) (not b!7446822) (not d!2296543) (not b!7446721) (not b!7446845) (not b!7447031) (not b!7446416) (not b!7446484) (not b!7446953) (not b!7446831) (not b!7446582) (not b!7446552) (not b!7446431) (not b!7446136) (not b!7446912) (not b!7446585) (not b!7446690) (not bs!1926762) (not b!7447018) (not b!7446381) (not b!7446269) (not b!7446380) (not b!7446659) (not b!7446604) (not b!7447006) (not d!2296573) (not b!7446734) (not b!7446392) (not b!7447015) (not b!7446344) (not b!7446865) (not b!7446960) (not b!7446754) (not b!7446836) (not b!7446352) (not d!2296555) (not b!7446340) (not b!7446775) (not b!7446883) (not b!7446527) (not b!7446814) (not b!7446636) (not b!7446933) (not b!7446268) (not b!7447029) (not b!7446730) (not d!2296597) (not b!7446739) (not b!7446144) (not b!7446461) (not b!7446764) (not b!7446515) (not b!7446791) (not b!7446537) (not b!7446504) (not b!7446871) (not b!7446549) (not b!7446520) (not b!7446711) (not b_lambda!287783) (not b!7446957) (not bm!684326) (not b!7446863) (not b!7446312) (not b!7446560) (not b!7446118) (not b!7446848) (not b!7446322) (not b_lambda!287805) (not b!7447014) (not b!7446897) (not b!7446496) (not b!7446571) (not b!7446673) (not b!7446459) (not b!7446695) (not b!7446624) (not b!7446709) (not b!7446622) (not b!7446993) (not b!7446401) (not b!7446189) (not b!7446701) (not b!7446438) (not b!7446812) (not b!7446529) (not b!7446517) (not b!7447041) (not b!7446330) (not b!7446465) (not b!7447017) (not b!7446508) (not b!7446975) (not b!7446556) (not b!7446433) (not b!7446467) (not b!7446970) (not b_lambda!287803) (not b!7446297) (not b!7446729) (not b!7447043) (not b!7446901) (not b!7446565) (not b!7446857) (not b!7446610) (not b!7446606) (not b!7446491) (not b!7446324) (not b!7446819) (not b!7446892) (not b!7446434) (not b!7446154) (not b!7446503) (not b!7446475) (not b!7446376) (not b!7446778) (not b_lambda!287761) (not b!7446567) (not b!7446618) (not d!2296603) (not b!7446750) (not b!7446799) (not b!7446448) (not bm!684315) (not bm!684332) (not b!7446851) (not b!7446815) (not b!7446697) (not bm!684330) (not b!7446808) (not bm!684336) (not b!7446382) (not b!7446302) (not b!7446413) (not b!7446597) (not b!7446644) (not b!7446563) (not b!7447027) (not bm!684327) (not b!7446770) (not b!7446528) (not b!7446568) (not b!7446464) (not b!7446545) (not bs!1926764) (not b!7446925) (not bm!684347) (not b!7446685) (not b!7446628) (not b!7446742) (not d!2296605) (not b!7446670) (not b!7446843) (not b!7447001) (not b!7446592) (not b!7446410) (not b!7446887) (not b!7446835) (not b!7446786) (not b!7446348) (not b!7446783) (not b!7446589) (not b!7446891) (not b!7446738) (not b!7446288) (not b!7446194) (not b!7446356) (not bm!684344) (not b!7446374) (not b!7446378) (not b!7446823) (not b!7446617) (not b!7446788) (not b!7446633) (not b!7446995) (not b!7446982) (not b_lambda!287799) (not b!7446856) (not b!7446402) (not b!7446430) (not b_lambda!287797) (not b!7446987) (not b!7446719) (not b!7446889) (not b!7447038) (not b!7446480) (not b!7446483) (not b!7446994) (not b!7446638) (not b!7446342) (not d!2296571) (not b!7446390) (not b!7446332) (not b!7446655) (not b!7446443) (not b!7446707) (not b!7446513) (not b!7446328) (not b!7447030) (not b!7446294) (not b!7446308) (not b!7446802) (not b!7446366) (not b!7446641) (not b!7446261) (not b!7446745) (not bm!684312) (not b!7446621) (not b!7446893) (not bm!684314) (not b!7446958) (not b!7446270) (not b!7446523) (not b!7446965) (not b!7446674) (not b!7446687) (not b!7446694) (not d!2296563) (not b!7446447) (not b!7446169) (not b!7446971) (not b!7446364) (not b!7446557) (not b!7446318) (not b!7446354) (not b!7446966) (not b!7446393) (not b!7446991) (not b!7447021) (not b!7446787) (not b!7446350) (not b!7446806) (not b!7446471) (not b!7446727) (not b!7447023) (not bm!684350) (not b!7446543) (not b!7446353) (not b!7446463) (not b!7446541) (not b!7446409) (not b!7446547) (not b!7446717) (not b!7446316) (not b!7446693) (not b!7446860) (not b!7446456) (not b!7446931) (not b!7446273) (not b!7446803) (not b!7446365) (not b!7446944) (not b!7446905) (not b!7446869) (not b!7446807) (not b!7446682) (not b!7446669) (not b!7446903) (not b!7446715) tp_is_empty!49201 (not b!7446361) (not b!7446398) (not b!7446853) (not b!7447033) (not b!7446476) (not b!7446919) (not b!7446488) (not b!7446855) (not b!7446460) (not b!7446341) (not b!7446598) (not b!7446985) (not b!7446440) (not b!7446349) (not b!7446309) (not b!7446847) (not b!7447011) (not b!7446396) (not b!7446733) (not b!7446804) (not b!7446300) (not b!7446540) (not d!2296585) (not b!7446576) (not b!7446280) (not b!7446217) (not b!7446658) (not b!7446608) (not b!7446590) (not b!7446493) (not b!7446417) (not b!7446477) (not b!7446780) (not b!7446453) (not b!7446888) (not b!7446605) (not b!7446722) (not b!7446852) (not b!7446559) (not b!7446495) (not bm!684345) (not b!7447007) (not b!7447022) (not b!7446820) (not b!7446768) (not b!7446452) (not b!7446703) (not b!7446974) (not b!7446723) (not b!7446594) (not b!7446935) (not b!7446713) (not b!7446747) (not b!7446422) (not b!7447037) (not b!7447042) (not b!7446916) (not b!7447013) (not b!7446632) (not b!7446442) (not b!7446272) (not b!7446767) (not b!7446511) (not b!7446921) (not b!7446917) (not b!7446505) (not bm!684333) (not b!7446811) (not b!7446593) (not b!7446977) (not bm!684317) (not b!7446794) (not b!7446795) (not b!7446653) (not b!7446834) (not b!7446584) (not b!7446112) (not b!7446602) (not b!7446444) (not b!7446346) (not b!7446105) (not b!7446840) (not b!7446260) (not b!7446244) (not b!7446521) (not b!7446798) (not b!7446296) (not b!7446839) (not b!7446731) (not b!7446932) (not b!7446885) (not b!7446293) (not b!7446277) (not b!7446634) (not b!7446614) (not b!7446509) (not b!7446539) (not b!7446427) (not b!7446620) (not b!7446654) (not b!7446766) (not b!7446564) (not setNonEmpty!56723) (not b!7446841) (not setNonEmpty!56724) (not b!7446950) (not b!7446665) (not b!7446657) (not b!7446718) (not b!7446449) (not b!7446706) (not b!7446753) (not b!7446580) (not b!7446573) (not b!7446762) (not b!7446978) (not b!7446683) (not b!7446956) (not b!7446904) (not b!7446281) (not b_lambda!287781) (not b!7446760) (not b!7446923) (not b!7446310) (not b!7446714) (not b!7446492) (not b_lambda!287759) (not b!7446418) (not b!7446759) (not b!7446864) (not b!7446266) (not b!7446338) (not b!7446868) (not b!7446588) (not b!7446949) (not b!7446908) (not b!7446581) (not b!7446884) (not b!7446832) (not b!7446262) (not b!7446650) (not b!7446274) (not d!2296547) (not b!7446532) (not b!7446516) (not b!7446425) (not b!7446429) (not b!7446196) (not b!7446824) (not b!7447035) (not b!7446677) (not b!7446630) (not b!7446945) (not b!7446372) (not b!7446572) (not b!7446278) (not b!7446818) (not d!2296601) (not b!7446369) (not b!7446370) (not b!7446174) (not b!7446360) (not b!7446457) (not b!7446678) (not b!7446421) (not b!7446358) (not b!7446663) (not b!7446533) (not b!7446875) (not b!7446301) (not b!7446743) (not b!7446691) (not bm!684323))
(check-sat)
