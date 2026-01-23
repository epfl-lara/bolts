; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702232 () Bool)

(assert start!702232)

(declare-fun b!7234488 () Bool)

(assert (=> b!7234488 true))

(declare-fun b!7234491 () Bool)

(assert (=> b!7234491 true))

(declare-fun b!7234480 () Bool)

(declare-fun e!4337105 () Bool)

(declare-fun e!4337100 () Bool)

(assert (=> b!7234480 (= e!4337105 e!4337100)))

(declare-fun res!2935000 () Bool)

(assert (=> b!7234480 (=> res!2935000 e!4337100)))

(declare-datatypes ((C!37296 0))(
  ( (C!37297 (val!28596 Int)) )
))
(declare-datatypes ((Regex!18511 0))(
  ( (ElementMatch!18511 (c!1342563 C!37296)) (Concat!27356 (regOne!37534 Regex!18511) (regTwo!37534 Regex!18511)) (EmptyExpr!18511) (Star!18511 (reg!18840 Regex!18511)) (EmptyLang!18511) (Union!18511 (regOne!37535 Regex!18511) (regTwo!37535 Regex!18511)) )
))
(declare-datatypes ((List!70141 0))(
  ( (Nil!70017) (Cons!70017 (h!76465 Regex!18511) (t!384192 List!70141)) )
))
(declare-datatypes ((Context!14902 0))(
  ( (Context!14903 (exprs!7951 List!70141)) )
))
(declare-fun ct1!232 () Context!14902)

(declare-fun isEmpty!40354 (List!70141) Bool)

(assert (=> b!7234480 (= res!2935000 (isEmpty!40354 (exprs!7951 ct1!232)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2574696 () (InoxSet Context!14902))

(declare-datatypes ((List!70142 0))(
  ( (Nil!70018) (Cons!70018 (h!76466 C!37296) (t!384193 List!70142)) )
))
(declare-fun s1!1971 () List!70142)

(declare-fun derivationStepZipperUp!2385 (Context!14902 C!37296) (InoxSet Context!14902))

(assert (=> b!7234480 (= lt!2574696 (derivationStepZipperUp!2385 ct1!232 (h!76466 s1!1971)))))

(declare-fun lambda!439951 () Int)

(declare-datatypes ((Unit!163560 0))(
  ( (Unit!163561) )
))
(declare-fun lt!2574689 () Unit!163560)

(declare-fun lt!2574687 () Context!14902)

(declare-fun ct2!328 () Context!14902)

(declare-fun lemmaConcatPreservesForall!1320 (List!70141 List!70141 Int) Unit!163560)

(assert (=> b!7234480 (= lt!2574689 (lemmaConcatPreservesForall!1320 (exprs!7951 lt!2574687) (exprs!7951 ct2!328) lambda!439951))))

(declare-fun s2!1849 () List!70142)

(declare-fun matchZipper!3421 ((InoxSet Context!14902) List!70142) Bool)

(declare-fun ++!16322 (List!70141 List!70141) List!70141)

(declare-fun ++!16323 (List!70142 List!70142) List!70142)

(assert (=> b!7234480 (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328))) true) (++!16323 (t!384193 s1!1971) s2!1849))))

(declare-fun lt!2574691 () Unit!163560)

(assert (=> b!7234480 (= lt!2574691 (lemmaConcatPreservesForall!1320 (exprs!7951 lt!2574687) (exprs!7951 ct2!328) lambda!439951))))

(declare-fun lt!2574684 () Unit!163560)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!302 (Context!14902 Context!14902 List!70142 List!70142) Unit!163560)

(assert (=> b!7234480 (= lt!2574684 (lemmaConcatenateContextMatchesConcatOfStrings!302 lt!2574687 ct2!328 (t!384193 s1!1971) s2!1849))))

(declare-fun lt!2574688 () (InoxSet Context!14902))

(declare-fun lambda!439952 () Int)

(declare-fun getWitness!2038 ((InoxSet Context!14902) Int) Context!14902)

(assert (=> b!7234480 (= lt!2574687 (getWitness!2038 lt!2574688 lambda!439952))))

(declare-fun b!7234481 () Bool)

(declare-fun e!4337101 () Bool)

(assert (=> b!7234481 (= e!4337100 e!4337101)))

(declare-fun res!2935004 () Bool)

(assert (=> b!7234481 (=> res!2935004 e!4337101)))

(declare-fun lt!2574686 () List!70141)

(assert (=> b!7234481 (= res!2935004 (isEmpty!40354 lt!2574686))))

(declare-fun lt!2574682 () Unit!163560)

(assert (=> b!7234481 (= lt!2574682 (lemmaConcatPreservesForall!1320 (exprs!7951 ct1!232) (exprs!7951 ct2!328) lambda!439951))))

(declare-fun lt!2574692 () (InoxSet Context!14902))

(assert (=> b!7234481 (= lt!2574692 (derivationStepZipperUp!2385 (Context!14903 lt!2574686) (h!76466 s1!1971)))))

(declare-fun lt!2574685 () Unit!163560)

(assert (=> b!7234481 (= lt!2574685 (lemmaConcatPreservesForall!1320 (exprs!7951 ct1!232) (exprs!7951 ct2!328) lambda!439951))))

(declare-fun lt!2574681 () (InoxSet Context!14902))

(declare-fun derivationStepZipperDown!2555 (Regex!18511 Context!14902 C!37296) (InoxSet Context!14902))

(declare-fun tail!14140 (List!70141) List!70141)

(assert (=> b!7234481 (= lt!2574681 (derivationStepZipperDown!2555 (h!76465 (exprs!7951 ct1!232)) (Context!14903 (tail!14140 (exprs!7951 ct1!232))) (h!76466 s1!1971)))))

(declare-fun res!2935002 () Bool)

(declare-fun e!4337103 () Bool)

(assert (=> start!702232 (=> (not res!2935002) (not e!4337103))))

(declare-fun lt!2574695 () (InoxSet Context!14902))

(assert (=> start!702232 (= res!2935002 (matchZipper!3421 lt!2574695 s1!1971))))

(assert (=> start!702232 (= lt!2574695 (store ((as const (Array Context!14902 Bool)) false) ct1!232 true))))

(assert (=> start!702232 e!4337103))

(declare-fun e!4337097 () Bool)

(declare-fun inv!89287 (Context!14902) Bool)

(assert (=> start!702232 (and (inv!89287 ct1!232) e!4337097)))

(declare-fun e!4337102 () Bool)

(assert (=> start!702232 e!4337102))

(declare-fun e!4337104 () Bool)

(assert (=> start!702232 e!4337104))

(declare-fun e!4337096 () Bool)

(assert (=> start!702232 (and (inv!89287 ct2!328) e!4337096)))

(declare-fun b!7234482 () Bool)

(declare-fun res!2935003 () Bool)

(assert (=> b!7234482 (=> (not res!2935003) (not e!4337103))))

(assert (=> b!7234482 (= res!2935003 (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7234483 () Bool)

(declare-fun tp!2034358 () Bool)

(assert (=> b!7234483 (= e!4337097 tp!2034358)))

(declare-fun b!7234484 () Bool)

(declare-fun e!4337106 () Bool)

(declare-fun e!4337099 () Bool)

(assert (=> b!7234484 (= e!4337106 e!4337099)))

(declare-fun res!2934998 () Bool)

(assert (=> b!7234484 (=> (not res!2934998) (not e!4337099))))

(assert (=> b!7234484 (= res!2934998 (matchZipper!3421 lt!2574688 (t!384193 s1!1971)))))

(declare-fun derivationStepZipper!3303 ((InoxSet Context!14902) C!37296) (InoxSet Context!14902))

(assert (=> b!7234484 (= lt!2574688 (derivationStepZipper!3303 lt!2574695 (h!76466 s1!1971)))))

(declare-fun b!7234485 () Bool)

(declare-fun e!4337098 () Bool)

(declare-fun forall!17344 (List!70141 Int) Bool)

(assert (=> b!7234485 (= e!4337098 (forall!17344 (exprs!7951 ct2!328) lambda!439951))))

(declare-fun b!7234486 () Bool)

(declare-fun tp_is_empty!46487 () Bool)

(declare-fun tp!2034357 () Bool)

(assert (=> b!7234486 (= e!4337102 (and tp_is_empty!46487 tp!2034357))))

(declare-fun b!7234487 () Bool)

(declare-fun tp!2034360 () Bool)

(assert (=> b!7234487 (= e!4337096 tp!2034360)))

(assert (=> b!7234488 (= e!4337099 (not e!4337105))))

(declare-fun res!2935001 () Bool)

(assert (=> b!7234488 (=> res!2935001 e!4337105)))

(declare-fun exists!4165 ((InoxSet Context!14902) Int) Bool)

(assert (=> b!7234488 (= res!2935001 (not (exists!4165 lt!2574688 lambda!439952)))))

(declare-datatypes ((List!70143 0))(
  ( (Nil!70019) (Cons!70019 (h!76467 Context!14902) (t!384194 List!70143)) )
))
(declare-fun lt!2574694 () List!70143)

(declare-fun exists!4166 (List!70143 Int) Bool)

(assert (=> b!7234488 (exists!4166 lt!2574694 lambda!439952)))

(declare-fun lt!2574697 () Unit!163560)

(declare-fun lemmaZipperMatchesExistsMatchingContext!654 (List!70143 List!70142) Unit!163560)

(assert (=> b!7234488 (= lt!2574697 (lemmaZipperMatchesExistsMatchingContext!654 lt!2574694 (t!384193 s1!1971)))))

(declare-fun toList!11368 ((InoxSet Context!14902)) List!70143)

(assert (=> b!7234488 (= lt!2574694 (toList!11368 lt!2574688))))

(declare-fun b!7234489 () Bool)

(assert (=> b!7234489 (= e!4337103 e!4337106)))

(declare-fun res!2934997 () Bool)

(assert (=> b!7234489 (=> (not res!2934997) (not e!4337106))))

(get-info :version)

(assert (=> b!7234489 (= res!2934997 (and (not ((_ is Nil!70017) (exprs!7951 ct1!232))) ((_ is Cons!70018) s1!1971)))))

(assert (=> b!7234489 (= lt!2574686 (++!16322 (exprs!7951 ct1!232) (exprs!7951 ct2!328)))))

(declare-fun lt!2574693 () Unit!163560)

(assert (=> b!7234489 (= lt!2574693 (lemmaConcatPreservesForall!1320 (exprs!7951 ct1!232) (exprs!7951 ct2!328) lambda!439951))))

(declare-fun b!7234490 () Bool)

(declare-fun tp!2034359 () Bool)

(assert (=> b!7234490 (= e!4337104 (and tp_is_empty!46487 tp!2034359))))

(assert (=> b!7234491 (= e!4337101 e!4337098)))

(declare-fun res!2934999 () Bool)

(assert (=> b!7234491 (=> res!2934999 e!4337098)))

(assert (=> b!7234491 (= res!2934999 (not (forall!17344 (exprs!7951 ct1!232) lambda!439951)))))

(declare-fun lambda!439953 () Int)

(declare-fun flatMap!2715 ((InoxSet Context!14902) Int) (InoxSet Context!14902))

(assert (=> b!7234491 (= (flatMap!2715 lt!2574695 lambda!439953) (derivationStepZipperUp!2385 ct1!232 (h!76466 s1!1971)))))

(declare-fun lt!2574683 () Unit!163560)

(declare-fun lemmaFlatMapOnSingletonSet!2142 ((InoxSet Context!14902) Context!14902 Int) Unit!163560)

(assert (=> b!7234491 (= lt!2574683 (lemmaFlatMapOnSingletonSet!2142 lt!2574695 ct1!232 lambda!439953))))

(declare-fun lt!2574690 () (InoxSet Context!14902))

(assert (=> b!7234491 (= lt!2574690 (derivationStepZipperDown!2555 (h!76465 (exprs!7951 ct1!232)) (Context!14903 (tail!14140 lt!2574686)) (h!76466 s1!1971)))))

(assert (= (and start!702232 res!2935002) b!7234482))

(assert (= (and b!7234482 res!2935003) b!7234489))

(assert (= (and b!7234489 res!2934997) b!7234484))

(assert (= (and b!7234484 res!2934998) b!7234488))

(assert (= (and b!7234488 (not res!2935001)) b!7234480))

(assert (= (and b!7234480 (not res!2935000)) b!7234481))

(assert (= (and b!7234481 (not res!2935004)) b!7234491))

(assert (= (and b!7234491 (not res!2934999)) b!7234485))

(assert (= start!702232 b!7234483))

(assert (= (and start!702232 ((_ is Cons!70018) s1!1971)) b!7234486))

(assert (= (and start!702232 ((_ is Cons!70018) s2!1849)) b!7234490))

(assert (= start!702232 b!7234487))

(declare-fun m!7904546 () Bool)

(assert (=> b!7234485 m!7904546))

(declare-fun m!7904548 () Bool)

(assert (=> b!7234481 m!7904548))

(declare-fun m!7904550 () Bool)

(assert (=> b!7234481 m!7904550))

(declare-fun m!7904552 () Bool)

(assert (=> b!7234481 m!7904552))

(declare-fun m!7904554 () Bool)

(assert (=> b!7234481 m!7904554))

(assert (=> b!7234481 m!7904548))

(declare-fun m!7904556 () Bool)

(assert (=> b!7234481 m!7904556))

(declare-fun m!7904558 () Bool)

(assert (=> b!7234480 m!7904558))

(declare-fun m!7904560 () Bool)

(assert (=> b!7234480 m!7904560))

(declare-fun m!7904562 () Bool)

(assert (=> b!7234480 m!7904562))

(declare-fun m!7904564 () Bool)

(assert (=> b!7234480 m!7904564))

(declare-fun m!7904566 () Bool)

(assert (=> b!7234480 m!7904566))

(declare-fun m!7904568 () Bool)

(assert (=> b!7234480 m!7904568))

(declare-fun m!7904570 () Bool)

(assert (=> b!7234480 m!7904570))

(assert (=> b!7234480 m!7904568))

(assert (=> b!7234480 m!7904560))

(assert (=> b!7234480 m!7904570))

(declare-fun m!7904572 () Bool)

(assert (=> b!7234480 m!7904572))

(declare-fun m!7904574 () Bool)

(assert (=> b!7234480 m!7904574))

(declare-fun m!7904576 () Bool)

(assert (=> start!702232 m!7904576))

(declare-fun m!7904578 () Bool)

(assert (=> start!702232 m!7904578))

(declare-fun m!7904580 () Bool)

(assert (=> start!702232 m!7904580))

(declare-fun m!7904582 () Bool)

(assert (=> start!702232 m!7904582))

(declare-fun m!7904584 () Bool)

(assert (=> b!7234491 m!7904584))

(declare-fun m!7904586 () Bool)

(assert (=> b!7234491 m!7904586))

(declare-fun m!7904588 () Bool)

(assert (=> b!7234491 m!7904588))

(assert (=> b!7234491 m!7904564))

(declare-fun m!7904590 () Bool)

(assert (=> b!7234491 m!7904590))

(declare-fun m!7904592 () Bool)

(assert (=> b!7234491 m!7904592))

(declare-fun m!7904594 () Bool)

(assert (=> b!7234488 m!7904594))

(declare-fun m!7904596 () Bool)

(assert (=> b!7234488 m!7904596))

(declare-fun m!7904598 () Bool)

(assert (=> b!7234488 m!7904598))

(declare-fun m!7904600 () Bool)

(assert (=> b!7234488 m!7904600))

(declare-fun m!7904602 () Bool)

(assert (=> b!7234489 m!7904602))

(assert (=> b!7234489 m!7904548))

(declare-fun m!7904604 () Bool)

(assert (=> b!7234484 m!7904604))

(declare-fun m!7904606 () Bool)

(assert (=> b!7234484 m!7904606))

(declare-fun m!7904608 () Bool)

(assert (=> b!7234482 m!7904608))

(assert (=> b!7234482 m!7904608))

(declare-fun m!7904610 () Bool)

(assert (=> b!7234482 m!7904610))

(check-sat (not b!7234485) (not start!702232) (not b!7234480) (not b!7234481) tp_is_empty!46487 (not b!7234483) (not b!7234486) (not b!7234487) (not b!7234488) (not b!7234489) (not b!7234491) (not b!7234484) (not b!7234482) (not b!7234490))
(check-sat)
(get-model)

(declare-fun d!2247140 () Bool)

(declare-fun c!1342566 () Bool)

(declare-fun isEmpty!40355 (List!70142) Bool)

(assert (=> d!2247140 (= c!1342566 (isEmpty!40355 s2!1849))))

(declare-fun e!4337109 () Bool)

(assert (=> d!2247140 (= (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) ct2!328 true) s2!1849) e!4337109)))

(declare-fun b!7234500 () Bool)

(declare-fun nullableZipper!2822 ((InoxSet Context!14902)) Bool)

(assert (=> b!7234500 (= e!4337109 (nullableZipper!2822 (store ((as const (Array Context!14902 Bool)) false) ct2!328 true)))))

(declare-fun b!7234501 () Bool)

(declare-fun head!14811 (List!70142) C!37296)

(declare-fun tail!14141 (List!70142) List!70142)

(assert (=> b!7234501 (= e!4337109 (matchZipper!3421 (derivationStepZipper!3303 (store ((as const (Array Context!14902 Bool)) false) ct2!328 true) (head!14811 s2!1849)) (tail!14141 s2!1849)))))

(assert (= (and d!2247140 c!1342566) b!7234500))

(assert (= (and d!2247140 (not c!1342566)) b!7234501))

(declare-fun m!7904612 () Bool)

(assert (=> d!2247140 m!7904612))

(assert (=> b!7234500 m!7904608))

(declare-fun m!7904614 () Bool)

(assert (=> b!7234500 m!7904614))

(declare-fun m!7904616 () Bool)

(assert (=> b!7234501 m!7904616))

(assert (=> b!7234501 m!7904608))

(assert (=> b!7234501 m!7904616))

(declare-fun m!7904618 () Bool)

(assert (=> b!7234501 m!7904618))

(declare-fun m!7904620 () Bool)

(assert (=> b!7234501 m!7904620))

(assert (=> b!7234501 m!7904618))

(assert (=> b!7234501 m!7904620))

(declare-fun m!7904622 () Bool)

(assert (=> b!7234501 m!7904622))

(assert (=> b!7234482 d!2247140))

(declare-fun d!2247142 () Bool)

(declare-fun c!1342567 () Bool)

(assert (=> d!2247142 (= c!1342567 (isEmpty!40355 s1!1971))))

(declare-fun e!4337110 () Bool)

(assert (=> d!2247142 (= (matchZipper!3421 lt!2574695 s1!1971) e!4337110)))

(declare-fun b!7234502 () Bool)

(assert (=> b!7234502 (= e!4337110 (nullableZipper!2822 lt!2574695))))

(declare-fun b!7234503 () Bool)

(assert (=> b!7234503 (= e!4337110 (matchZipper!3421 (derivationStepZipper!3303 lt!2574695 (head!14811 s1!1971)) (tail!14141 s1!1971)))))

(assert (= (and d!2247142 c!1342567) b!7234502))

(assert (= (and d!2247142 (not c!1342567)) b!7234503))

(declare-fun m!7904624 () Bool)

(assert (=> d!2247142 m!7904624))

(declare-fun m!7904626 () Bool)

(assert (=> b!7234502 m!7904626))

(declare-fun m!7904628 () Bool)

(assert (=> b!7234503 m!7904628))

(assert (=> b!7234503 m!7904628))

(declare-fun m!7904630 () Bool)

(assert (=> b!7234503 m!7904630))

(declare-fun m!7904632 () Bool)

(assert (=> b!7234503 m!7904632))

(assert (=> b!7234503 m!7904630))

(assert (=> b!7234503 m!7904632))

(declare-fun m!7904634 () Bool)

(assert (=> b!7234503 m!7904634))

(assert (=> start!702232 d!2247142))

(declare-fun bs!1903176 () Bool)

(declare-fun d!2247144 () Bool)

(assert (= bs!1903176 (and d!2247144 b!7234489)))

(declare-fun lambda!439956 () Int)

(assert (=> bs!1903176 (= lambda!439956 lambda!439951)))

(assert (=> d!2247144 (= (inv!89287 ct1!232) (forall!17344 (exprs!7951 ct1!232) lambda!439956))))

(declare-fun bs!1903177 () Bool)

(assert (= bs!1903177 d!2247144))

(declare-fun m!7904638 () Bool)

(assert (=> bs!1903177 m!7904638))

(assert (=> start!702232 d!2247144))

(declare-fun bs!1903178 () Bool)

(declare-fun d!2247150 () Bool)

(assert (= bs!1903178 (and d!2247150 b!7234489)))

(declare-fun lambda!439957 () Int)

(assert (=> bs!1903178 (= lambda!439957 lambda!439951)))

(declare-fun bs!1903179 () Bool)

(assert (= bs!1903179 (and d!2247150 d!2247144)))

(assert (=> bs!1903179 (= lambda!439957 lambda!439956)))

(assert (=> d!2247150 (= (inv!89287 ct2!328) (forall!17344 (exprs!7951 ct2!328) lambda!439957))))

(declare-fun bs!1903180 () Bool)

(assert (= bs!1903180 d!2247150))

(declare-fun m!7904640 () Bool)

(assert (=> bs!1903180 m!7904640))

(assert (=> start!702232 d!2247150))

(declare-fun d!2247152 () Bool)

(assert (=> d!2247152 (= (tail!14140 (exprs!7951 ct1!232)) (t!384192 (exprs!7951 ct1!232)))))

(assert (=> b!7234481 d!2247152))

(declare-fun d!2247154 () Bool)

(assert (=> d!2247154 (forall!17344 (++!16322 (exprs!7951 ct1!232) (exprs!7951 ct2!328)) lambda!439951)))

(declare-fun lt!2574700 () Unit!163560)

(declare-fun choose!55584 (List!70141 List!70141 Int) Unit!163560)

(assert (=> d!2247154 (= lt!2574700 (choose!55584 (exprs!7951 ct1!232) (exprs!7951 ct2!328) lambda!439951))))

(assert (=> d!2247154 (forall!17344 (exprs!7951 ct1!232) lambda!439951)))

(assert (=> d!2247154 (= (lemmaConcatPreservesForall!1320 (exprs!7951 ct1!232) (exprs!7951 ct2!328) lambda!439951) lt!2574700)))

(declare-fun bs!1903181 () Bool)

(assert (= bs!1903181 d!2247154))

(assert (=> bs!1903181 m!7904602))

(assert (=> bs!1903181 m!7904602))

(declare-fun m!7904642 () Bool)

(assert (=> bs!1903181 m!7904642))

(declare-fun m!7904644 () Bool)

(assert (=> bs!1903181 m!7904644))

(assert (=> bs!1903181 m!7904584))

(assert (=> b!7234481 d!2247154))

(declare-fun d!2247156 () Bool)

(declare-fun c!1342582 () Bool)

(declare-fun e!4337130 () Bool)

(assert (=> d!2247156 (= c!1342582 e!4337130)))

(declare-fun res!2935009 () Bool)

(assert (=> d!2247156 (=> (not res!2935009) (not e!4337130))))

(assert (=> d!2247156 (= res!2935009 ((_ is Cons!70017) (exprs!7951 (Context!14903 lt!2574686))))))

(declare-fun e!4337131 () (InoxSet Context!14902))

(assert (=> d!2247156 (= (derivationStepZipperUp!2385 (Context!14903 lt!2574686) (h!76466 s1!1971)) e!4337131)))

(declare-fun b!7234536 () Bool)

(declare-fun e!4337129 () (InoxSet Context!14902))

(assert (=> b!7234536 (= e!4337131 e!4337129)))

(declare-fun c!1342583 () Bool)

(assert (=> b!7234536 (= c!1342583 ((_ is Cons!70017) (exprs!7951 (Context!14903 lt!2574686))))))

(declare-fun b!7234537 () Bool)

(assert (=> b!7234537 (= e!4337129 ((as const (Array Context!14902 Bool)) false))))

(declare-fun bm!658600 () Bool)

(declare-fun call!658605 () (InoxSet Context!14902))

(assert (=> bm!658600 (= call!658605 (derivationStepZipperDown!2555 (h!76465 (exprs!7951 (Context!14903 lt!2574686))) (Context!14903 (t!384192 (exprs!7951 (Context!14903 lt!2574686)))) (h!76466 s1!1971)))))

(declare-fun b!7234538 () Bool)

(assert (=> b!7234538 (= e!4337131 ((_ map or) call!658605 (derivationStepZipperUp!2385 (Context!14903 (t!384192 (exprs!7951 (Context!14903 lt!2574686)))) (h!76466 s1!1971))))))

(declare-fun b!7234539 () Bool)

(assert (=> b!7234539 (= e!4337129 call!658605)))

(declare-fun b!7234540 () Bool)

(declare-fun nullable!7826 (Regex!18511) Bool)

(assert (=> b!7234540 (= e!4337130 (nullable!7826 (h!76465 (exprs!7951 (Context!14903 lt!2574686)))))))

(assert (= (and d!2247156 res!2935009) b!7234540))

(assert (= (and d!2247156 c!1342582) b!7234538))

(assert (= (and d!2247156 (not c!1342582)) b!7234536))

(assert (= (and b!7234536 c!1342583) b!7234539))

(assert (= (and b!7234536 (not c!1342583)) b!7234537))

(assert (= (or b!7234538 b!7234539) bm!658600))

(declare-fun m!7904646 () Bool)

(assert (=> bm!658600 m!7904646))

(declare-fun m!7904648 () Bool)

(assert (=> b!7234538 m!7904648))

(declare-fun m!7904650 () Bool)

(assert (=> b!7234540 m!7904650))

(assert (=> b!7234481 d!2247156))

(declare-fun d!2247158 () Bool)

(assert (=> d!2247158 (= (isEmpty!40354 lt!2574686) ((_ is Nil!70017) lt!2574686))))

(assert (=> b!7234481 d!2247158))

(declare-fun bm!658622 () Bool)

(declare-fun call!658627 () (InoxSet Context!14902))

(declare-fun call!658628 () (InoxSet Context!14902))

(assert (=> bm!658622 (= call!658627 call!658628)))

(declare-fun b!7234595 () Bool)

(declare-fun e!4337166 () (InoxSet Context!14902))

(assert (=> b!7234595 (= e!4337166 call!658627)))

(declare-fun b!7234596 () Bool)

(declare-fun e!4337165 () (InoxSet Context!14902))

(assert (=> b!7234596 (= e!4337165 ((as const (Array Context!14902 Bool)) false))))

(declare-fun c!1342605 () Bool)

(declare-fun bm!658623 () Bool)

(declare-fun call!658631 () List!70141)

(declare-fun c!1342607 () Bool)

(declare-fun $colon$colon!2870 (List!70141 Regex!18511) List!70141)

(assert (=> bm!658623 (= call!658631 ($colon$colon!2870 (exprs!7951 (Context!14903 (tail!14140 (exprs!7951 ct1!232)))) (ite (or c!1342607 c!1342605) (regTwo!37534 (h!76465 (exprs!7951 ct1!232))) (h!76465 (exprs!7951 ct1!232)))))))

(declare-fun b!7234597 () Bool)

(declare-fun e!4337168 () Bool)

(assert (=> b!7234597 (= e!4337168 (nullable!7826 (regOne!37534 (h!76465 (exprs!7951 ct1!232)))))))

(declare-fun b!7234598 () Bool)

(assert (=> b!7234598 (= e!4337165 call!658627)))

(declare-fun b!7234599 () Bool)

(declare-fun e!4337169 () (InoxSet Context!14902))

(declare-fun e!4337167 () (InoxSet Context!14902))

(assert (=> b!7234599 (= e!4337169 e!4337167)))

(declare-fun c!1342609 () Bool)

(assert (=> b!7234599 (= c!1342609 ((_ is Union!18511) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun bm!658624 () Bool)

(declare-fun call!658630 () List!70141)

(assert (=> bm!658624 (= call!658630 call!658631)))

(declare-fun bm!658626 () Bool)

(declare-fun call!658632 () (InoxSet Context!14902))

(assert (=> bm!658626 (= call!658628 call!658632)))

(declare-fun bm!658627 () Bool)

(assert (=> bm!658627 (= call!658632 (derivationStepZipperDown!2555 (ite c!1342609 (regTwo!37535 (h!76465 (exprs!7951 ct1!232))) (ite c!1342607 (regTwo!37534 (h!76465 (exprs!7951 ct1!232))) (ite c!1342605 (regOne!37534 (h!76465 (exprs!7951 ct1!232))) (reg!18840 (h!76465 (exprs!7951 ct1!232)))))) (ite (or c!1342609 c!1342607) (Context!14903 (tail!14140 (exprs!7951 ct1!232))) (Context!14903 call!658630)) (h!76466 s1!1971)))))

(declare-fun b!7234600 () Bool)

(assert (=> b!7234600 (= c!1342607 e!4337168)))

(declare-fun res!2935022 () Bool)

(assert (=> b!7234600 (=> (not res!2935022) (not e!4337168))))

(assert (=> b!7234600 (= res!2935022 ((_ is Concat!27356) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun e!4337170 () (InoxSet Context!14902))

(assert (=> b!7234600 (= e!4337167 e!4337170)))

(declare-fun b!7234601 () Bool)

(assert (=> b!7234601 (= e!4337169 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (tail!14140 (exprs!7951 ct1!232))) true))))

(declare-fun b!7234602 () Bool)

(declare-fun c!1342608 () Bool)

(assert (=> b!7234602 (= c!1342608 ((_ is Star!18511) (h!76465 (exprs!7951 ct1!232))))))

(assert (=> b!7234602 (= e!4337166 e!4337165)))

(declare-fun b!7234603 () Bool)

(declare-fun call!658629 () (InoxSet Context!14902))

(assert (=> b!7234603 (= e!4337167 ((_ map or) call!658629 call!658632))))

(declare-fun b!7234604 () Bool)

(assert (=> b!7234604 (= e!4337170 ((_ map or) call!658629 call!658628))))

(declare-fun b!7234605 () Bool)

(assert (=> b!7234605 (= e!4337170 e!4337166)))

(assert (=> b!7234605 (= c!1342605 ((_ is Concat!27356) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun d!2247160 () Bool)

(declare-fun c!1342606 () Bool)

(assert (=> d!2247160 (= c!1342606 (and ((_ is ElementMatch!18511) (h!76465 (exprs!7951 ct1!232))) (= (c!1342563 (h!76465 (exprs!7951 ct1!232))) (h!76466 s1!1971))))))

(assert (=> d!2247160 (= (derivationStepZipperDown!2555 (h!76465 (exprs!7951 ct1!232)) (Context!14903 (tail!14140 (exprs!7951 ct1!232))) (h!76466 s1!1971)) e!4337169)))

(declare-fun bm!658625 () Bool)

(assert (=> bm!658625 (= call!658629 (derivationStepZipperDown!2555 (ite c!1342609 (regOne!37535 (h!76465 (exprs!7951 ct1!232))) (regOne!37534 (h!76465 (exprs!7951 ct1!232)))) (ite c!1342609 (Context!14903 (tail!14140 (exprs!7951 ct1!232))) (Context!14903 call!658631)) (h!76466 s1!1971)))))

(assert (= (and d!2247160 c!1342606) b!7234601))

(assert (= (and d!2247160 (not c!1342606)) b!7234599))

(assert (= (and b!7234599 c!1342609) b!7234603))

(assert (= (and b!7234599 (not c!1342609)) b!7234600))

(assert (= (and b!7234600 res!2935022) b!7234597))

(assert (= (and b!7234600 c!1342607) b!7234604))

(assert (= (and b!7234600 (not c!1342607)) b!7234605))

(assert (= (and b!7234605 c!1342605) b!7234595))

(assert (= (and b!7234605 (not c!1342605)) b!7234602))

(assert (= (and b!7234602 c!1342608) b!7234598))

(assert (= (and b!7234602 (not c!1342608)) b!7234596))

(assert (= (or b!7234595 b!7234598) bm!658624))

(assert (= (or b!7234595 b!7234598) bm!658622))

(assert (= (or b!7234604 bm!658624) bm!658623))

(assert (= (or b!7234604 bm!658622) bm!658626))

(assert (= (or b!7234603 bm!658626) bm!658627))

(assert (= (or b!7234603 b!7234604) bm!658625))

(declare-fun m!7904672 () Bool)

(assert (=> bm!658625 m!7904672))

(declare-fun m!7904674 () Bool)

(assert (=> bm!658623 m!7904674))

(declare-fun m!7904676 () Bool)

(assert (=> bm!658627 m!7904676))

(declare-fun m!7904678 () Bool)

(assert (=> b!7234597 m!7904678))

(declare-fun m!7904680 () Bool)

(assert (=> b!7234601 m!7904680))

(assert (=> b!7234481 d!2247160))

(declare-fun d!2247170 () Bool)

(declare-fun res!2935027 () Bool)

(declare-fun e!4337175 () Bool)

(assert (=> d!2247170 (=> res!2935027 e!4337175)))

(assert (=> d!2247170 (= res!2935027 ((_ is Nil!70017) (exprs!7951 ct1!232)))))

(assert (=> d!2247170 (= (forall!17344 (exprs!7951 ct1!232) lambda!439951) e!4337175)))

(declare-fun b!7234610 () Bool)

(declare-fun e!4337176 () Bool)

(assert (=> b!7234610 (= e!4337175 e!4337176)))

(declare-fun res!2935028 () Bool)

(assert (=> b!7234610 (=> (not res!2935028) (not e!4337176))))

(declare-fun dynLambda!28553 (Int Regex!18511) Bool)

(assert (=> b!7234610 (= res!2935028 (dynLambda!28553 lambda!439951 (h!76465 (exprs!7951 ct1!232))))))

(declare-fun b!7234611 () Bool)

(assert (=> b!7234611 (= e!4337176 (forall!17344 (t!384192 (exprs!7951 ct1!232)) lambda!439951))))

(assert (= (and d!2247170 (not res!2935027)) b!7234610))

(assert (= (and b!7234610 res!2935028) b!7234611))

(declare-fun b_lambda!277343 () Bool)

(assert (=> (not b_lambda!277343) (not b!7234610)))

(declare-fun m!7904686 () Bool)

(assert (=> b!7234610 m!7904686))

(declare-fun m!7904688 () Bool)

(assert (=> b!7234611 m!7904688))

(assert (=> b!7234491 d!2247170))

(declare-fun d!2247174 () Bool)

(declare-fun dynLambda!28554 (Int Context!14902) (InoxSet Context!14902))

(assert (=> d!2247174 (= (flatMap!2715 lt!2574695 lambda!439953) (dynLambda!28554 lambda!439953 ct1!232))))

(declare-fun lt!2574708 () Unit!163560)

(declare-fun choose!55586 ((InoxSet Context!14902) Context!14902 Int) Unit!163560)

(assert (=> d!2247174 (= lt!2574708 (choose!55586 lt!2574695 ct1!232 lambda!439953))))

(assert (=> d!2247174 (= lt!2574695 (store ((as const (Array Context!14902 Bool)) false) ct1!232 true))))

(assert (=> d!2247174 (= (lemmaFlatMapOnSingletonSet!2142 lt!2574695 ct1!232 lambda!439953) lt!2574708)))

(declare-fun b_lambda!277345 () Bool)

(assert (=> (not b_lambda!277345) (not d!2247174)))

(declare-fun bs!1903183 () Bool)

(assert (= bs!1903183 d!2247174))

(assert (=> bs!1903183 m!7904586))

(declare-fun m!7904690 () Bool)

(assert (=> bs!1903183 m!7904690))

(declare-fun m!7904692 () Bool)

(assert (=> bs!1903183 m!7904692))

(assert (=> bs!1903183 m!7904578))

(assert (=> b!7234491 d!2247174))

(declare-fun d!2247176 () Bool)

(declare-fun choose!55587 ((InoxSet Context!14902) Int) (InoxSet Context!14902))

(assert (=> d!2247176 (= (flatMap!2715 lt!2574695 lambda!439953) (choose!55587 lt!2574695 lambda!439953))))

(declare-fun bs!1903184 () Bool)

(assert (= bs!1903184 d!2247176))

(declare-fun m!7904694 () Bool)

(assert (=> bs!1903184 m!7904694))

(assert (=> b!7234491 d!2247176))

(declare-fun d!2247178 () Bool)

(assert (=> d!2247178 (= (tail!14140 lt!2574686) (t!384192 lt!2574686))))

(assert (=> b!7234491 d!2247178))

(declare-fun d!2247180 () Bool)

(declare-fun c!1342612 () Bool)

(declare-fun e!4337182 () Bool)

(assert (=> d!2247180 (= c!1342612 e!4337182)))

(declare-fun res!2935033 () Bool)

(assert (=> d!2247180 (=> (not res!2935033) (not e!4337182))))

(assert (=> d!2247180 (= res!2935033 ((_ is Cons!70017) (exprs!7951 ct1!232)))))

(declare-fun e!4337183 () (InoxSet Context!14902))

(assert (=> d!2247180 (= (derivationStepZipperUp!2385 ct1!232 (h!76466 s1!1971)) e!4337183)))

(declare-fun b!7234620 () Bool)

(declare-fun e!4337181 () (InoxSet Context!14902))

(assert (=> b!7234620 (= e!4337183 e!4337181)))

(declare-fun c!1342613 () Bool)

(assert (=> b!7234620 (= c!1342613 ((_ is Cons!70017) (exprs!7951 ct1!232)))))

(declare-fun b!7234621 () Bool)

(assert (=> b!7234621 (= e!4337181 ((as const (Array Context!14902 Bool)) false))))

(declare-fun bm!658628 () Bool)

(declare-fun call!658633 () (InoxSet Context!14902))

(assert (=> bm!658628 (= call!658633 (derivationStepZipperDown!2555 (h!76465 (exprs!7951 ct1!232)) (Context!14903 (t!384192 (exprs!7951 ct1!232))) (h!76466 s1!1971)))))

(declare-fun b!7234622 () Bool)

(assert (=> b!7234622 (= e!4337183 ((_ map or) call!658633 (derivationStepZipperUp!2385 (Context!14903 (t!384192 (exprs!7951 ct1!232))) (h!76466 s1!1971))))))

(declare-fun b!7234623 () Bool)

(assert (=> b!7234623 (= e!4337181 call!658633)))

(declare-fun b!7234624 () Bool)

(assert (=> b!7234624 (= e!4337182 (nullable!7826 (h!76465 (exprs!7951 ct1!232))))))

(assert (= (and d!2247180 res!2935033) b!7234624))

(assert (= (and d!2247180 c!1342612) b!7234622))

(assert (= (and d!2247180 (not c!1342612)) b!7234620))

(assert (= (and b!7234620 c!1342613) b!7234623))

(assert (= (and b!7234620 (not c!1342613)) b!7234621))

(assert (= (or b!7234622 b!7234623) bm!658628))

(declare-fun m!7904698 () Bool)

(assert (=> bm!658628 m!7904698))

(declare-fun m!7904702 () Bool)

(assert (=> b!7234622 m!7904702))

(declare-fun m!7904706 () Bool)

(assert (=> b!7234624 m!7904706))

(assert (=> b!7234491 d!2247180))

(declare-fun bm!658629 () Bool)

(declare-fun call!658634 () (InoxSet Context!14902))

(declare-fun call!658635 () (InoxSet Context!14902))

(assert (=> bm!658629 (= call!658634 call!658635)))

(declare-fun b!7234629 () Bool)

(declare-fun e!4337187 () (InoxSet Context!14902))

(assert (=> b!7234629 (= e!4337187 call!658634)))

(declare-fun b!7234630 () Bool)

(declare-fun e!4337186 () (InoxSet Context!14902))

(assert (=> b!7234630 (= e!4337186 ((as const (Array Context!14902 Bool)) false))))

(declare-fun c!1342617 () Bool)

(declare-fun bm!658630 () Bool)

(declare-fun c!1342615 () Bool)

(declare-fun call!658638 () List!70141)

(assert (=> bm!658630 (= call!658638 ($colon$colon!2870 (exprs!7951 (Context!14903 (tail!14140 lt!2574686))) (ite (or c!1342617 c!1342615) (regTwo!37534 (h!76465 (exprs!7951 ct1!232))) (h!76465 (exprs!7951 ct1!232)))))))

(declare-fun b!7234631 () Bool)

(declare-fun e!4337189 () Bool)

(assert (=> b!7234631 (= e!4337189 (nullable!7826 (regOne!37534 (h!76465 (exprs!7951 ct1!232)))))))

(declare-fun b!7234632 () Bool)

(assert (=> b!7234632 (= e!4337186 call!658634)))

(declare-fun b!7234633 () Bool)

(declare-fun e!4337190 () (InoxSet Context!14902))

(declare-fun e!4337188 () (InoxSet Context!14902))

(assert (=> b!7234633 (= e!4337190 e!4337188)))

(declare-fun c!1342619 () Bool)

(assert (=> b!7234633 (= c!1342619 ((_ is Union!18511) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun bm!658631 () Bool)

(declare-fun call!658637 () List!70141)

(assert (=> bm!658631 (= call!658637 call!658638)))

(declare-fun bm!658633 () Bool)

(declare-fun call!658639 () (InoxSet Context!14902))

(assert (=> bm!658633 (= call!658635 call!658639)))

(declare-fun bm!658634 () Bool)

(assert (=> bm!658634 (= call!658639 (derivationStepZipperDown!2555 (ite c!1342619 (regTwo!37535 (h!76465 (exprs!7951 ct1!232))) (ite c!1342617 (regTwo!37534 (h!76465 (exprs!7951 ct1!232))) (ite c!1342615 (regOne!37534 (h!76465 (exprs!7951 ct1!232))) (reg!18840 (h!76465 (exprs!7951 ct1!232)))))) (ite (or c!1342619 c!1342617) (Context!14903 (tail!14140 lt!2574686)) (Context!14903 call!658637)) (h!76466 s1!1971)))))

(declare-fun b!7234634 () Bool)

(assert (=> b!7234634 (= c!1342617 e!4337189)))

(declare-fun res!2935036 () Bool)

(assert (=> b!7234634 (=> (not res!2935036) (not e!4337189))))

(assert (=> b!7234634 (= res!2935036 ((_ is Concat!27356) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun e!4337191 () (InoxSet Context!14902))

(assert (=> b!7234634 (= e!4337188 e!4337191)))

(declare-fun b!7234635 () Bool)

(assert (=> b!7234635 (= e!4337190 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (tail!14140 lt!2574686)) true))))

(declare-fun b!7234636 () Bool)

(declare-fun c!1342618 () Bool)

(assert (=> b!7234636 (= c!1342618 ((_ is Star!18511) (h!76465 (exprs!7951 ct1!232))))))

(assert (=> b!7234636 (= e!4337187 e!4337186)))

(declare-fun b!7234637 () Bool)

(declare-fun call!658636 () (InoxSet Context!14902))

(assert (=> b!7234637 (= e!4337188 ((_ map or) call!658636 call!658639))))

(declare-fun b!7234638 () Bool)

(assert (=> b!7234638 (= e!4337191 ((_ map or) call!658636 call!658635))))

(declare-fun b!7234639 () Bool)

(assert (=> b!7234639 (= e!4337191 e!4337187)))

(assert (=> b!7234639 (= c!1342615 ((_ is Concat!27356) (h!76465 (exprs!7951 ct1!232))))))

(declare-fun d!2247182 () Bool)

(declare-fun c!1342616 () Bool)

(assert (=> d!2247182 (= c!1342616 (and ((_ is ElementMatch!18511) (h!76465 (exprs!7951 ct1!232))) (= (c!1342563 (h!76465 (exprs!7951 ct1!232))) (h!76466 s1!1971))))))

(assert (=> d!2247182 (= (derivationStepZipperDown!2555 (h!76465 (exprs!7951 ct1!232)) (Context!14903 (tail!14140 lt!2574686)) (h!76466 s1!1971)) e!4337190)))

(declare-fun bm!658632 () Bool)

(assert (=> bm!658632 (= call!658636 (derivationStepZipperDown!2555 (ite c!1342619 (regOne!37535 (h!76465 (exprs!7951 ct1!232))) (regOne!37534 (h!76465 (exprs!7951 ct1!232)))) (ite c!1342619 (Context!14903 (tail!14140 lt!2574686)) (Context!14903 call!658638)) (h!76466 s1!1971)))))

(assert (= (and d!2247182 c!1342616) b!7234635))

(assert (= (and d!2247182 (not c!1342616)) b!7234633))

(assert (= (and b!7234633 c!1342619) b!7234637))

(assert (= (and b!7234633 (not c!1342619)) b!7234634))

(assert (= (and b!7234634 res!2935036) b!7234631))

(assert (= (and b!7234634 c!1342617) b!7234638))

(assert (= (and b!7234634 (not c!1342617)) b!7234639))

(assert (= (and b!7234639 c!1342615) b!7234629))

(assert (= (and b!7234639 (not c!1342615)) b!7234636))

(assert (= (and b!7234636 c!1342618) b!7234632))

(assert (= (and b!7234636 (not c!1342618)) b!7234630))

(assert (= (or b!7234629 b!7234632) bm!658631))

(assert (= (or b!7234629 b!7234632) bm!658629))

(assert (= (or b!7234638 bm!658631) bm!658630))

(assert (= (or b!7234638 bm!658629) bm!658633))

(assert (= (or b!7234637 bm!658633) bm!658634))

(assert (= (or b!7234637 b!7234638) bm!658632))

(declare-fun m!7904716 () Bool)

(assert (=> bm!658632 m!7904716))

(declare-fun m!7904718 () Bool)

(assert (=> bm!658630 m!7904718))

(declare-fun m!7904720 () Bool)

(assert (=> bm!658634 m!7904720))

(assert (=> b!7234631 m!7904678))

(declare-fun m!7904722 () Bool)

(assert (=> b!7234635 m!7904722))

(assert (=> b!7234491 d!2247182))

(declare-fun d!2247186 () Bool)

(assert (=> d!2247186 (= (isEmpty!40354 (exprs!7951 ct1!232)) ((_ is Nil!70017) (exprs!7951 ct1!232)))))

(assert (=> b!7234480 d!2247186))

(declare-fun d!2247188 () Bool)

(assert (=> d!2247188 (forall!17344 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328)) lambda!439951)))

(declare-fun lt!2574710 () Unit!163560)

(assert (=> d!2247188 (= lt!2574710 (choose!55584 (exprs!7951 lt!2574687) (exprs!7951 ct2!328) lambda!439951))))

(assert (=> d!2247188 (forall!17344 (exprs!7951 lt!2574687) lambda!439951)))

(assert (=> d!2247188 (= (lemmaConcatPreservesForall!1320 (exprs!7951 lt!2574687) (exprs!7951 ct2!328) lambda!439951) lt!2574710)))

(declare-fun bs!1903185 () Bool)

(assert (= bs!1903185 d!2247188))

(assert (=> bs!1903185 m!7904566))

(assert (=> bs!1903185 m!7904566))

(declare-fun m!7904724 () Bool)

(assert (=> bs!1903185 m!7904724))

(declare-fun m!7904726 () Bool)

(assert (=> bs!1903185 m!7904726))

(declare-fun m!7904728 () Bool)

(assert (=> bs!1903185 m!7904728))

(assert (=> b!7234480 d!2247188))

(declare-fun b!7234654 () Bool)

(declare-fun e!4337200 () List!70142)

(assert (=> b!7234654 (= e!4337200 s2!1849)))

(declare-fun lt!2574716 () List!70142)

(declare-fun b!7234657 () Bool)

(declare-fun e!4337199 () Bool)

(assert (=> b!7234657 (= e!4337199 (or (not (= s2!1849 Nil!70018)) (= lt!2574716 (t!384193 s1!1971))))))

(declare-fun b!7234656 () Bool)

(declare-fun res!2935042 () Bool)

(assert (=> b!7234656 (=> (not res!2935042) (not e!4337199))))

(declare-fun size!41578 (List!70142) Int)

(assert (=> b!7234656 (= res!2935042 (= (size!41578 lt!2574716) (+ (size!41578 (t!384193 s1!1971)) (size!41578 s2!1849))))))

(declare-fun d!2247190 () Bool)

(assert (=> d!2247190 e!4337199))

(declare-fun res!2935041 () Bool)

(assert (=> d!2247190 (=> (not res!2935041) (not e!4337199))))

(declare-fun content!14416 (List!70142) (InoxSet C!37296))

(assert (=> d!2247190 (= res!2935041 (= (content!14416 lt!2574716) ((_ map or) (content!14416 (t!384193 s1!1971)) (content!14416 s2!1849))))))

(assert (=> d!2247190 (= lt!2574716 e!4337200)))

(declare-fun c!1342625 () Bool)

(assert (=> d!2247190 (= c!1342625 ((_ is Nil!70018) (t!384193 s1!1971)))))

(assert (=> d!2247190 (= (++!16323 (t!384193 s1!1971) s2!1849) lt!2574716)))

(declare-fun b!7234655 () Bool)

(assert (=> b!7234655 (= e!4337200 (Cons!70018 (h!76466 (t!384193 s1!1971)) (++!16323 (t!384193 (t!384193 s1!1971)) s2!1849)))))

(assert (= (and d!2247190 c!1342625) b!7234654))

(assert (= (and d!2247190 (not c!1342625)) b!7234655))

(assert (= (and d!2247190 res!2935041) b!7234656))

(assert (= (and b!7234656 res!2935042) b!7234657))

(declare-fun m!7904746 () Bool)

(assert (=> b!7234656 m!7904746))

(declare-fun m!7904748 () Bool)

(assert (=> b!7234656 m!7904748))

(declare-fun m!7904750 () Bool)

(assert (=> b!7234656 m!7904750))

(declare-fun m!7904752 () Bool)

(assert (=> d!2247190 m!7904752))

(declare-fun m!7904754 () Bool)

(assert (=> d!2247190 m!7904754))

(declare-fun m!7904756 () Bool)

(assert (=> d!2247190 m!7904756))

(declare-fun m!7904758 () Bool)

(assert (=> b!7234655 m!7904758))

(assert (=> b!7234480 d!2247190))

(declare-fun b!7234667 () Bool)

(declare-fun e!4337205 () List!70141)

(assert (=> b!7234667 (= e!4337205 (Cons!70017 (h!76465 (exprs!7951 lt!2574687)) (++!16322 (t!384192 (exprs!7951 lt!2574687)) (exprs!7951 ct2!328))))))

(declare-fun d!2247196 () Bool)

(declare-fun e!4337206 () Bool)

(assert (=> d!2247196 e!4337206))

(declare-fun res!2935047 () Bool)

(assert (=> d!2247196 (=> (not res!2935047) (not e!4337206))))

(declare-fun lt!2574719 () List!70141)

(declare-fun content!14417 (List!70141) (InoxSet Regex!18511))

(assert (=> d!2247196 (= res!2935047 (= (content!14417 lt!2574719) ((_ map or) (content!14417 (exprs!7951 lt!2574687)) (content!14417 (exprs!7951 ct2!328)))))))

(assert (=> d!2247196 (= lt!2574719 e!4337205)))

(declare-fun c!1342628 () Bool)

(assert (=> d!2247196 (= c!1342628 ((_ is Nil!70017) (exprs!7951 lt!2574687)))))

(assert (=> d!2247196 (= (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328)) lt!2574719)))

(declare-fun b!7234669 () Bool)

(assert (=> b!7234669 (= e!4337206 (or (not (= (exprs!7951 ct2!328) Nil!70017)) (= lt!2574719 (exprs!7951 lt!2574687))))))

(declare-fun b!7234666 () Bool)

(assert (=> b!7234666 (= e!4337205 (exprs!7951 ct2!328))))

(declare-fun b!7234668 () Bool)

(declare-fun res!2935048 () Bool)

(assert (=> b!7234668 (=> (not res!2935048) (not e!4337206))))

(declare-fun size!41579 (List!70141) Int)

(assert (=> b!7234668 (= res!2935048 (= (size!41579 lt!2574719) (+ (size!41579 (exprs!7951 lt!2574687)) (size!41579 (exprs!7951 ct2!328)))))))

(assert (= (and d!2247196 c!1342628) b!7234666))

(assert (= (and d!2247196 (not c!1342628)) b!7234667))

(assert (= (and d!2247196 res!2935047) b!7234668))

(assert (= (and b!7234668 res!2935048) b!7234669))

(declare-fun m!7904764 () Bool)

(assert (=> b!7234667 m!7904764))

(declare-fun m!7904766 () Bool)

(assert (=> d!2247196 m!7904766))

(declare-fun m!7904768 () Bool)

(assert (=> d!2247196 m!7904768))

(declare-fun m!7904770 () Bool)

(assert (=> d!2247196 m!7904770))

(declare-fun m!7904772 () Bool)

(assert (=> b!7234668 m!7904772))

(declare-fun m!7904774 () Bool)

(assert (=> b!7234668 m!7904774))

(declare-fun m!7904776 () Bool)

(assert (=> b!7234668 m!7904776))

(assert (=> b!7234480 d!2247196))

(declare-fun bs!1903193 () Bool)

(declare-fun d!2247204 () Bool)

(assert (= bs!1903193 (and d!2247204 b!7234489)))

(declare-fun lambda!439964 () Int)

(assert (=> bs!1903193 (= lambda!439964 lambda!439951)))

(declare-fun bs!1903194 () Bool)

(assert (= bs!1903194 (and d!2247204 d!2247144)))

(assert (=> bs!1903194 (= lambda!439964 lambda!439956)))

(declare-fun bs!1903195 () Bool)

(assert (= bs!1903195 (and d!2247204 d!2247150)))

(assert (=> bs!1903195 (= lambda!439964 lambda!439957)))

(assert (=> d!2247204 (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328))) true) (++!16323 (t!384193 s1!1971) s2!1849))))

(declare-fun lt!2574732 () Unit!163560)

(assert (=> d!2247204 (= lt!2574732 (lemmaConcatPreservesForall!1320 (exprs!7951 lt!2574687) (exprs!7951 ct2!328) lambda!439964))))

(declare-fun lt!2574731 () Unit!163560)

(declare-fun choose!55590 (Context!14902 Context!14902 List!70142 List!70142) Unit!163560)

(assert (=> d!2247204 (= lt!2574731 (choose!55590 lt!2574687 ct2!328 (t!384193 s1!1971) s2!1849))))

(assert (=> d!2247204 (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) lt!2574687 true) (t!384193 s1!1971))))

(assert (=> d!2247204 (= (lemmaConcatenateContextMatchesConcatOfStrings!302 lt!2574687 ct2!328 (t!384193 s1!1971) s2!1849) lt!2574731)))

(declare-fun bs!1903196 () Bool)

(assert (= bs!1903196 d!2247204))

(declare-fun m!7904816 () Bool)

(assert (=> bs!1903196 m!7904816))

(assert (=> bs!1903196 m!7904560))

(assert (=> bs!1903196 m!7904570))

(assert (=> bs!1903196 m!7904572))

(assert (=> bs!1903196 m!7904570))

(assert (=> bs!1903196 m!7904816))

(declare-fun m!7904818 () Bool)

(assert (=> bs!1903196 m!7904818))

(assert (=> bs!1903196 m!7904560))

(assert (=> bs!1903196 m!7904566))

(declare-fun m!7904820 () Bool)

(assert (=> bs!1903196 m!7904820))

(declare-fun m!7904822 () Bool)

(assert (=> bs!1903196 m!7904822))

(assert (=> b!7234480 d!2247204))

(declare-fun d!2247214 () Bool)

(declare-fun c!1342633 () Bool)

(assert (=> d!2247214 (= c!1342633 (isEmpty!40355 (++!16323 (t!384193 s1!1971) s2!1849)))))

(declare-fun e!4337217 () Bool)

(assert (=> d!2247214 (= (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328))) true) (++!16323 (t!384193 s1!1971) s2!1849)) e!4337217)))

(declare-fun b!7234687 () Bool)

(assert (=> b!7234687 (= e!4337217 (nullableZipper!2822 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328))) true)))))

(declare-fun b!7234688 () Bool)

(assert (=> b!7234688 (= e!4337217 (matchZipper!3421 (derivationStepZipper!3303 (store ((as const (Array Context!14902 Bool)) false) (Context!14903 (++!16322 (exprs!7951 lt!2574687) (exprs!7951 ct2!328))) true) (head!14811 (++!16323 (t!384193 s1!1971) s2!1849))) (tail!14141 (++!16323 (t!384193 s1!1971) s2!1849))))))

(assert (= (and d!2247214 c!1342633) b!7234687))

(assert (= (and d!2247214 (not c!1342633)) b!7234688))

(assert (=> d!2247214 m!7904570))

(declare-fun m!7904824 () Bool)

(assert (=> d!2247214 m!7904824))

(assert (=> b!7234687 m!7904560))

(declare-fun m!7904826 () Bool)

(assert (=> b!7234687 m!7904826))

(assert (=> b!7234688 m!7904570))

(declare-fun m!7904828 () Bool)

(assert (=> b!7234688 m!7904828))

(assert (=> b!7234688 m!7904560))

(assert (=> b!7234688 m!7904828))

(declare-fun m!7904830 () Bool)

(assert (=> b!7234688 m!7904830))

(assert (=> b!7234688 m!7904570))

(declare-fun m!7904832 () Bool)

(assert (=> b!7234688 m!7904832))

(assert (=> b!7234688 m!7904830))

(assert (=> b!7234688 m!7904832))

(declare-fun m!7904834 () Bool)

(assert (=> b!7234688 m!7904834))

(assert (=> b!7234480 d!2247214))

(declare-fun d!2247216 () Bool)

(declare-fun e!4337220 () Bool)

(assert (=> d!2247216 e!4337220))

(declare-fun res!2935060 () Bool)

(assert (=> d!2247216 (=> (not res!2935060) (not e!4337220))))

(declare-fun lt!2574739 () Context!14902)

(declare-fun dynLambda!28556 (Int Context!14902) Bool)

(assert (=> d!2247216 (= res!2935060 (dynLambda!28556 lambda!439952 lt!2574739))))

(declare-fun getWitness!2040 (List!70143 Int) Context!14902)

(assert (=> d!2247216 (= lt!2574739 (getWitness!2040 (toList!11368 lt!2574688) lambda!439952))))

(assert (=> d!2247216 (exists!4165 lt!2574688 lambda!439952)))

(assert (=> d!2247216 (= (getWitness!2038 lt!2574688 lambda!439952) lt!2574739)))

(declare-fun b!7234691 () Bool)

(assert (=> b!7234691 (= e!4337220 (select lt!2574688 lt!2574739))))

(assert (= (and d!2247216 res!2935060) b!7234691))

(declare-fun b_lambda!277349 () Bool)

(assert (=> (not b_lambda!277349) (not d!2247216)))

(declare-fun m!7904836 () Bool)

(assert (=> d!2247216 m!7904836))

(assert (=> d!2247216 m!7904600))

(assert (=> d!2247216 m!7904600))

(declare-fun m!7904838 () Bool)

(assert (=> d!2247216 m!7904838))

(assert (=> d!2247216 m!7904594))

(declare-fun m!7904840 () Bool)

(assert (=> b!7234691 m!7904840))

(assert (=> b!7234480 d!2247216))

(assert (=> b!7234480 d!2247180))

(declare-fun d!2247218 () Bool)

(declare-fun res!2935061 () Bool)

(declare-fun e!4337221 () Bool)

(assert (=> d!2247218 (=> res!2935061 e!4337221)))

(assert (=> d!2247218 (= res!2935061 ((_ is Nil!70017) (exprs!7951 ct2!328)))))

(assert (=> d!2247218 (= (forall!17344 (exprs!7951 ct2!328) lambda!439951) e!4337221)))

(declare-fun b!7234692 () Bool)

(declare-fun e!4337222 () Bool)

(assert (=> b!7234692 (= e!4337221 e!4337222)))

(declare-fun res!2935062 () Bool)

(assert (=> b!7234692 (=> (not res!2935062) (not e!4337222))))

(assert (=> b!7234692 (= res!2935062 (dynLambda!28553 lambda!439951 (h!76465 (exprs!7951 ct2!328))))))

(declare-fun b!7234693 () Bool)

(assert (=> b!7234693 (= e!4337222 (forall!17344 (t!384192 (exprs!7951 ct2!328)) lambda!439951))))

(assert (= (and d!2247218 (not res!2935061)) b!7234692))

(assert (= (and b!7234692 res!2935062) b!7234693))

(declare-fun b_lambda!277351 () Bool)

(assert (=> (not b_lambda!277351) (not b!7234692)))

(declare-fun m!7904842 () Bool)

(assert (=> b!7234692 m!7904842))

(declare-fun m!7904844 () Bool)

(assert (=> b!7234693 m!7904844))

(assert (=> b!7234485 d!2247218))

(declare-fun d!2247220 () Bool)

(declare-fun c!1342634 () Bool)

(assert (=> d!2247220 (= c!1342634 (isEmpty!40355 (t!384193 s1!1971)))))

(declare-fun e!4337223 () Bool)

(assert (=> d!2247220 (= (matchZipper!3421 lt!2574688 (t!384193 s1!1971)) e!4337223)))

(declare-fun b!7234694 () Bool)

(assert (=> b!7234694 (= e!4337223 (nullableZipper!2822 lt!2574688))))

(declare-fun b!7234695 () Bool)

(assert (=> b!7234695 (= e!4337223 (matchZipper!3421 (derivationStepZipper!3303 lt!2574688 (head!14811 (t!384193 s1!1971))) (tail!14141 (t!384193 s1!1971))))))

(assert (= (and d!2247220 c!1342634) b!7234694))

(assert (= (and d!2247220 (not c!1342634)) b!7234695))

(declare-fun m!7904846 () Bool)

(assert (=> d!2247220 m!7904846))

(declare-fun m!7904848 () Bool)

(assert (=> b!7234694 m!7904848))

(declare-fun m!7904850 () Bool)

(assert (=> b!7234695 m!7904850))

(assert (=> b!7234695 m!7904850))

(declare-fun m!7904852 () Bool)

(assert (=> b!7234695 m!7904852))

(declare-fun m!7904854 () Bool)

(assert (=> b!7234695 m!7904854))

(assert (=> b!7234695 m!7904852))

(assert (=> b!7234695 m!7904854))

(declare-fun m!7904856 () Bool)

(assert (=> b!7234695 m!7904856))

(assert (=> b!7234484 d!2247220))

(declare-fun bs!1903201 () Bool)

(declare-fun d!2247222 () Bool)

(assert (= bs!1903201 (and d!2247222 b!7234491)))

(declare-fun lambda!439970 () Int)

(assert (=> bs!1903201 (= lambda!439970 lambda!439953)))

(assert (=> d!2247222 true))

(assert (=> d!2247222 (= (derivationStepZipper!3303 lt!2574695 (h!76466 s1!1971)) (flatMap!2715 lt!2574695 lambda!439970))))

(declare-fun bs!1903202 () Bool)

(assert (= bs!1903202 d!2247222))

(declare-fun m!7904870 () Bool)

(assert (=> bs!1903202 m!7904870))

(assert (=> b!7234484 d!2247222))

(declare-fun b!7234703 () Bool)

(declare-fun e!4337226 () List!70141)

(assert (=> b!7234703 (= e!4337226 (Cons!70017 (h!76465 (exprs!7951 ct1!232)) (++!16322 (t!384192 (exprs!7951 ct1!232)) (exprs!7951 ct2!328))))))

(declare-fun d!2247226 () Bool)

(declare-fun e!4337227 () Bool)

(assert (=> d!2247226 e!4337227))

(declare-fun res!2935065 () Bool)

(assert (=> d!2247226 (=> (not res!2935065) (not e!4337227))))

(declare-fun lt!2574743 () List!70141)

(assert (=> d!2247226 (= res!2935065 (= (content!14417 lt!2574743) ((_ map or) (content!14417 (exprs!7951 ct1!232)) (content!14417 (exprs!7951 ct2!328)))))))

(assert (=> d!2247226 (= lt!2574743 e!4337226)))

(declare-fun c!1342638 () Bool)

(assert (=> d!2247226 (= c!1342638 ((_ is Nil!70017) (exprs!7951 ct1!232)))))

(assert (=> d!2247226 (= (++!16322 (exprs!7951 ct1!232) (exprs!7951 ct2!328)) lt!2574743)))

(declare-fun b!7234705 () Bool)

(assert (=> b!7234705 (= e!4337227 (or (not (= (exprs!7951 ct2!328) Nil!70017)) (= lt!2574743 (exprs!7951 ct1!232))))))

(declare-fun b!7234702 () Bool)

(assert (=> b!7234702 (= e!4337226 (exprs!7951 ct2!328))))

(declare-fun b!7234704 () Bool)

(declare-fun res!2935066 () Bool)

(assert (=> b!7234704 (=> (not res!2935066) (not e!4337227))))

(assert (=> b!7234704 (= res!2935066 (= (size!41579 lt!2574743) (+ (size!41579 (exprs!7951 ct1!232)) (size!41579 (exprs!7951 ct2!328)))))))

(assert (= (and d!2247226 c!1342638) b!7234702))

(assert (= (and d!2247226 (not c!1342638)) b!7234703))

(assert (= (and d!2247226 res!2935065) b!7234704))

(assert (= (and b!7234704 res!2935066) b!7234705))

(declare-fun m!7904888 () Bool)

(assert (=> b!7234703 m!7904888))

(declare-fun m!7904892 () Bool)

(assert (=> d!2247226 m!7904892))

(declare-fun m!7904894 () Bool)

(assert (=> d!2247226 m!7904894))

(assert (=> d!2247226 m!7904770))

(declare-fun m!7904896 () Bool)

(assert (=> b!7234704 m!7904896))

(declare-fun m!7904898 () Bool)

(assert (=> b!7234704 m!7904898))

(assert (=> b!7234704 m!7904776))

(assert (=> b!7234489 d!2247226))

(assert (=> b!7234489 d!2247154))

(declare-fun d!2247232 () Bool)

(declare-fun lt!2574749 () Bool)

(assert (=> d!2247232 (= lt!2574749 (exists!4166 (toList!11368 lt!2574688) lambda!439952))))

(declare-fun choose!55594 ((InoxSet Context!14902) Int) Bool)

(assert (=> d!2247232 (= lt!2574749 (choose!55594 lt!2574688 lambda!439952))))

(assert (=> d!2247232 (= (exists!4165 lt!2574688 lambda!439952) lt!2574749)))

(declare-fun bs!1903204 () Bool)

(assert (= bs!1903204 d!2247232))

(assert (=> bs!1903204 m!7904600))

(assert (=> bs!1903204 m!7904600))

(declare-fun m!7904902 () Bool)

(assert (=> bs!1903204 m!7904902))

(declare-fun m!7904906 () Bool)

(assert (=> bs!1903204 m!7904906))

(assert (=> b!7234488 d!2247232))

(declare-fun bs!1903205 () Bool)

(declare-fun d!2247236 () Bool)

(assert (= bs!1903205 (and d!2247236 b!7234488)))

(declare-fun lambda!439975 () Int)

(assert (=> bs!1903205 (not (= lambda!439975 lambda!439952))))

(assert (=> d!2247236 true))

(declare-fun order!28843 () Int)

(declare-fun dynLambda!28558 (Int Int) Int)

(assert (=> d!2247236 (< (dynLambda!28558 order!28843 lambda!439952) (dynLambda!28558 order!28843 lambda!439975))))

(declare-fun forall!17346 (List!70143 Int) Bool)

(assert (=> d!2247236 (= (exists!4166 lt!2574694 lambda!439952) (not (forall!17346 lt!2574694 lambda!439975)))))

(declare-fun bs!1903207 () Bool)

(assert (= bs!1903207 d!2247236))

(declare-fun m!7904908 () Bool)

(assert (=> bs!1903207 m!7904908))

(assert (=> b!7234488 d!2247236))

(declare-fun bs!1903209 () Bool)

(declare-fun d!2247238 () Bool)

(assert (= bs!1903209 (and d!2247238 b!7234488)))

(declare-fun lambda!439981 () Int)

(assert (=> bs!1903209 (= lambda!439981 lambda!439952)))

(declare-fun bs!1903211 () Bool)

(assert (= bs!1903211 (and d!2247238 d!2247236)))

(assert (=> bs!1903211 (not (= lambda!439981 lambda!439975))))

(assert (=> d!2247238 true))

(assert (=> d!2247238 (exists!4166 lt!2574694 lambda!439981)))

(declare-fun lt!2574754 () Unit!163560)

(declare-fun choose!55595 (List!70143 List!70142) Unit!163560)

(assert (=> d!2247238 (= lt!2574754 (choose!55595 lt!2574694 (t!384193 s1!1971)))))

(declare-fun content!14419 (List!70143) (InoxSet Context!14902))

(assert (=> d!2247238 (matchZipper!3421 (content!14419 lt!2574694) (t!384193 s1!1971))))

(assert (=> d!2247238 (= (lemmaZipperMatchesExistsMatchingContext!654 lt!2574694 (t!384193 s1!1971)) lt!2574754)))

(declare-fun bs!1903213 () Bool)

(assert (= bs!1903213 d!2247238))

(declare-fun m!7904912 () Bool)

(assert (=> bs!1903213 m!7904912))

(declare-fun m!7904916 () Bool)

(assert (=> bs!1903213 m!7904916))

(declare-fun m!7904920 () Bool)

(assert (=> bs!1903213 m!7904920))

(assert (=> bs!1903213 m!7904920))

(declare-fun m!7904924 () Bool)

(assert (=> bs!1903213 m!7904924))

(assert (=> b!7234488 d!2247238))

(declare-fun d!2247242 () Bool)

(declare-fun e!4337234 () Bool)

(assert (=> d!2247242 e!4337234))

(declare-fun res!2935072 () Bool)

(assert (=> d!2247242 (=> (not res!2935072) (not e!4337234))))

(declare-fun lt!2574761 () List!70143)

(declare-fun noDuplicate!2933 (List!70143) Bool)

(assert (=> d!2247242 (= res!2935072 (noDuplicate!2933 lt!2574761))))

(declare-fun choose!55596 ((InoxSet Context!14902)) List!70143)

(assert (=> d!2247242 (= lt!2574761 (choose!55596 lt!2574688))))

(assert (=> d!2247242 (= (toList!11368 lt!2574688) lt!2574761)))

(declare-fun b!7234717 () Bool)

(assert (=> b!7234717 (= e!4337234 (= (content!14419 lt!2574761) lt!2574688))))

(assert (= (and d!2247242 res!2935072) b!7234717))

(declare-fun m!7904930 () Bool)

(assert (=> d!2247242 m!7904930))

(declare-fun m!7904936 () Bool)

(assert (=> d!2247242 m!7904936))

(declare-fun m!7904938 () Bool)

(assert (=> b!7234717 m!7904938))

(assert (=> b!7234488 d!2247242))

(declare-fun b!7234724 () Bool)

(declare-fun e!4337238 () Bool)

(declare-fun tp!2034365 () Bool)

(declare-fun tp!2034366 () Bool)

(assert (=> b!7234724 (= e!4337238 (and tp!2034365 tp!2034366))))

(assert (=> b!7234487 (= tp!2034360 e!4337238)))

(assert (= (and b!7234487 ((_ is Cons!70017) (exprs!7951 ct2!328))) b!7234724))

(declare-fun b!7234729 () Bool)

(declare-fun e!4337241 () Bool)

(declare-fun tp!2034369 () Bool)

(assert (=> b!7234729 (= e!4337241 (and tp_is_empty!46487 tp!2034369))))

(assert (=> b!7234486 (= tp!2034357 e!4337241)))

(assert (= (and b!7234486 ((_ is Cons!70018) (t!384193 s1!1971))) b!7234729))

(declare-fun b!7234730 () Bool)

(declare-fun e!4337242 () Bool)

(declare-fun tp!2034370 () Bool)

(assert (=> b!7234730 (= e!4337242 (and tp_is_empty!46487 tp!2034370))))

(assert (=> b!7234490 (= tp!2034359 e!4337242)))

(assert (= (and b!7234490 ((_ is Cons!70018) (t!384193 s2!1849))) b!7234730))

(declare-fun b!7234731 () Bool)

(declare-fun e!4337243 () Bool)

(declare-fun tp!2034371 () Bool)

(declare-fun tp!2034372 () Bool)

(assert (=> b!7234731 (= e!4337243 (and tp!2034371 tp!2034372))))

(assert (=> b!7234483 (= tp!2034358 e!4337243)))

(assert (= (and b!7234483 ((_ is Cons!70017) (exprs!7951 ct1!232))) b!7234731))

(declare-fun b_lambda!277353 () Bool)

(assert (= b_lambda!277343 (or b!7234489 b_lambda!277353)))

(declare-fun bs!1903215 () Bool)

(declare-fun d!2247250 () Bool)

(assert (= bs!1903215 (and d!2247250 b!7234489)))

(declare-fun validRegex!9517 (Regex!18511) Bool)

(assert (=> bs!1903215 (= (dynLambda!28553 lambda!439951 (h!76465 (exprs!7951 ct1!232))) (validRegex!9517 (h!76465 (exprs!7951 ct1!232))))))

(declare-fun m!7904952 () Bool)

(assert (=> bs!1903215 m!7904952))

(assert (=> b!7234610 d!2247250))

(declare-fun b_lambda!277355 () Bool)

(assert (= b_lambda!277351 (or b!7234489 b_lambda!277355)))

(declare-fun bs!1903216 () Bool)

(declare-fun d!2247252 () Bool)

(assert (= bs!1903216 (and d!2247252 b!7234489)))

(assert (=> bs!1903216 (= (dynLambda!28553 lambda!439951 (h!76465 (exprs!7951 ct2!328))) (validRegex!9517 (h!76465 (exprs!7951 ct2!328))))))

(declare-fun m!7904954 () Bool)

(assert (=> bs!1903216 m!7904954))

(assert (=> b!7234692 d!2247252))

(declare-fun b_lambda!277357 () Bool)

(assert (= b_lambda!277345 (or b!7234491 b_lambda!277357)))

(declare-fun bs!1903217 () Bool)

(declare-fun d!2247254 () Bool)

(assert (= bs!1903217 (and d!2247254 b!7234491)))

(assert (=> bs!1903217 (= (dynLambda!28554 lambda!439953 ct1!232) (derivationStepZipperUp!2385 ct1!232 (h!76466 s1!1971)))))

(assert (=> bs!1903217 m!7904564))

(assert (=> d!2247174 d!2247254))

(declare-fun b_lambda!277359 () Bool)

(assert (= b_lambda!277349 (or b!7234488 b_lambda!277359)))

(declare-fun bs!1903218 () Bool)

(declare-fun d!2247256 () Bool)

(assert (= bs!1903218 (and d!2247256 b!7234488)))

(assert (=> bs!1903218 (= (dynLambda!28556 lambda!439952 lt!2574739) (matchZipper!3421 (store ((as const (Array Context!14902 Bool)) false) lt!2574739 true) (t!384193 s1!1971)))))

(declare-fun m!7904956 () Bool)

(assert (=> bs!1903218 m!7904956))

(assert (=> bs!1903218 m!7904956))

(declare-fun m!7904958 () Bool)

(assert (=> bs!1903218 m!7904958))

(assert (=> d!2247216 d!2247256))

(check-sat (not b!7234730) (not d!2247214) (not bm!658628) (not d!2247222) (not b!7234538) (not b!7234693) (not b!7234729) (not b_lambda!277359) (not b!7234500) (not d!2247242) (not b!7234501) (not bm!658630) (not d!2247140) (not b!7234503) (not d!2247142) (not d!2247150) (not d!2247154) (not d!2247232) (not b!7234668) (not d!2247176) (not bs!1903215) (not bm!658627) (not b!7234622) (not bs!1903218) (not b!7234631) (not bs!1903217) (not b_lambda!277355) (not b_lambda!277353) (not b!7234731) (not b!7234717) (not b!7234667) (not d!2247144) (not d!2247238) (not d!2247174) (not b!7234540) (not bm!658625) (not b!7234611) tp_is_empty!46487 (not d!2247204) (not d!2247216) (not b!7234597) (not bm!658623) (not b!7234656) (not b!7234688) (not bm!658634) (not b!7234694) (not d!2247190) (not b!7234703) (not b!7234502) (not d!2247226) (not b!7234695) (not b!7234724) (not bm!658632) (not bs!1903216) (not b_lambda!277357) (not d!2247188) (not d!2247220) (not bm!658600) (not d!2247196) (not b!7234624) (not d!2247236) (not b!7234655) (not b!7234704) (not b!7234687))
(check-sat)
