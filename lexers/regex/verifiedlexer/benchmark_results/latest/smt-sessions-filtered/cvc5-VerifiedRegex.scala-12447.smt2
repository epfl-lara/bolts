; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694270 () Bool)

(assert start!694270)

(declare-fun b!7126486 () Bool)

(declare-fun e!4282661 () Bool)

(declare-datatypes ((C!36322 0))(
  ( (C!36323 (val!28087 Int)) )
))
(declare-datatypes ((Regex!18026 0))(
  ( (ElementMatch!18026 (c!1329444 C!36322)) (Concat!26871 (regOne!36564 Regex!18026) (regTwo!36564 Regex!18026)) (EmptyExpr!18026) (Star!18026 (reg!18355 Regex!18026)) (EmptyLang!18026) (Union!18026 (regOne!36565 Regex!18026) (regTwo!36565 Regex!18026)) )
))
(declare-datatypes ((List!69103 0))(
  ( (Nil!68979) (Cons!68979 (h!75427 Regex!18026) (t!383080 List!69103)) )
))
(declare-datatypes ((Context!14040 0))(
  ( (Context!14041 (exprs!7520 List!69103)) )
))
(declare-fun z2!471 () (Set Context!14040))

(declare-datatypes ((List!69104 0))(
  ( (Nil!68980) (Cons!68980 (h!75428 C!36322) (t!383081 List!69104)) )
))
(declare-fun s2Rec!140 () List!69104)

(declare-fun matchZipper!3282 ((Set Context!14040) List!69104) Bool)

(assert (=> b!7126486 (= e!4282661 (not (matchZipper!3282 z2!471 s2Rec!140)))))

(declare-fun b!7126487 () Bool)

(declare-fun e!4282659 () Bool)

(declare-fun tp_is_empty!45653 () Bool)

(declare-fun tp!1963179 () Bool)

(assert (=> b!7126487 (= e!4282659 (and tp_is_empty!45653 tp!1963179))))

(declare-fun b!7126488 () Bool)

(declare-fun e!4282660 () Bool)

(declare-fun tp!1963174 () Bool)

(assert (=> b!7126488 (= e!4282660 (and tp_is_empty!45653 tp!1963174))))

(declare-fun setIsEmpty!51728 () Bool)

(declare-fun setRes!51729 () Bool)

(assert (=> setIsEmpty!51728 setRes!51729))

(declare-fun b!7126489 () Bool)

(declare-fun res!2907910 () Bool)

(declare-fun e!4282662 () Bool)

(assert (=> b!7126489 (=> (not res!2907910) (not e!4282662))))

(declare-fun s2!1620 () List!69104)

(assert (=> b!7126489 (= res!2907910 (matchZipper!3282 z2!471 s2!1620))))

(declare-fun setElem!51729 () Context!14040)

(declare-fun tp!1963182 () Bool)

(declare-fun setNonEmpty!51729 () Bool)

(declare-fun e!4282665 () Bool)

(declare-fun inv!88094 (Context!14040) Bool)

(assert (=> setNonEmpty!51729 (= setRes!51729 (and tp!1963182 (inv!88094 setElem!51729) e!4282665))))

(declare-fun z1!552 () (Set Context!14040))

(declare-fun setRest!51728 () (Set Context!14040))

(assert (=> setNonEmpty!51729 (= z1!552 (set.union (set.insert setElem!51729 (as set.empty (Set Context!14040))) setRest!51728))))

(declare-fun b!7126490 () Bool)

(declare-fun res!2907918 () Bool)

(assert (=> b!7126490 (=> (not res!2907918) (not e!4282662))))

(declare-fun s1!1688 () List!69104)

(declare-fun s!7390 () List!69104)

(declare-fun ++!16164 (List!69104 List!69104) List!69104)

(assert (=> b!7126490 (= res!2907918 (= (++!16164 s1!1688 s2!1620) s!7390))))

(declare-fun setElem!51728 () Context!14040)

(declare-fun setRes!51728 () Bool)

(declare-fun setNonEmpty!51728 () Bool)

(declare-fun e!4282657 () Bool)

(declare-fun tp!1963181 () Bool)

(assert (=> setNonEmpty!51728 (= setRes!51728 (and tp!1963181 (inv!88094 setElem!51728) e!4282657))))

(declare-fun setRest!51729 () (Set Context!14040))

(assert (=> setNonEmpty!51728 (= z2!471 (set.union (set.insert setElem!51728 (as set.empty (Set Context!14040))) setRest!51729))))

(declare-fun res!2907911 () Bool)

(assert (=> start!694270 (=> (not res!2907911) (not e!4282662))))

(assert (=> start!694270 (= res!2907911 (matchZipper!3282 z1!552 s1!1688))))

(assert (=> start!694270 e!4282662))

(declare-fun e!4282664 () Bool)

(assert (=> start!694270 e!4282664))

(declare-fun condSetEmpty!51728 () Bool)

(assert (=> start!694270 (= condSetEmpty!51728 (= z1!552 (as set.empty (Set Context!14040))))))

(assert (=> start!694270 setRes!51729))

(declare-fun e!4282658 () Bool)

(assert (=> start!694270 e!4282658))

(declare-fun condSetEmpty!51729 () Bool)

(assert (=> start!694270 (= condSetEmpty!51729 (= z2!471 (as set.empty (Set Context!14040))))))

(assert (=> start!694270 setRes!51728))

(declare-fun e!4282663 () Bool)

(assert (=> start!694270 e!4282663))

(assert (=> start!694270 e!4282659))

(assert (=> start!694270 e!4282660))

(declare-fun b!7126491 () Bool)

(declare-fun tp!1963177 () Bool)

(assert (=> b!7126491 (= e!4282664 (and tp_is_empty!45653 tp!1963177))))

(declare-fun b!7126492 () Bool)

(declare-fun res!2907912 () Bool)

(assert (=> b!7126492 (=> (not res!2907912) (not e!4282662))))

(assert (=> b!7126492 (= res!2907912 (is-Nil!68980 s2Rec!140))))

(declare-fun setIsEmpty!51729 () Bool)

(assert (=> setIsEmpty!51729 setRes!51728))

(declare-fun b!7126493 () Bool)

(declare-fun res!2907913 () Bool)

(assert (=> b!7126493 (=> (not res!2907913) (not e!4282662))))

(declare-fun s1Rec!140 () List!69104)

(assert (=> b!7126493 (= res!2907913 (= (++!16164 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7126494 () Bool)

(declare-fun tp!1963176 () Bool)

(assert (=> b!7126494 (= e!4282658 (and tp_is_empty!45653 tp!1963176))))

(declare-fun b!7126495 () Bool)

(declare-fun tp!1963175 () Bool)

(assert (=> b!7126495 (= e!4282663 (and tp_is_empty!45653 tp!1963175))))

(declare-fun b!7126496 () Bool)

(declare-fun tp!1963178 () Bool)

(assert (=> b!7126496 (= e!4282657 tp!1963178)))

(declare-fun b!7126497 () Bool)

(declare-fun res!2907915 () Bool)

(assert (=> b!7126497 (=> (not res!2907915) (not e!4282662))))

(declare-fun isPrefix!5895 (List!69104 List!69104) Bool)

(assert (=> b!7126497 (= res!2907915 (isPrefix!5895 s1Rec!140 s1!1688))))

(declare-fun b!7126498 () Bool)

(declare-fun res!2907916 () Bool)

(assert (=> b!7126498 (=> (not res!2907916) (not e!4282662))))

(assert (=> b!7126498 (= res!2907916 e!4282661)))

(declare-fun res!2907917 () Bool)

(assert (=> b!7126498 (=> res!2907917 e!4282661)))

(assert (=> b!7126498 (= res!2907917 (not (matchZipper!3282 z1!552 s1Rec!140)))))

(declare-fun b!7126499 () Bool)

(declare-fun e!4282656 () Bool)

(declare-fun lt!2563489 () Int)

(declare-fun size!41461 (List!69104) Int)

(assert (=> b!7126499 (= e!4282656 (not (= lt!2563489 (size!41461 s1!1688))))))

(declare-fun b!7126500 () Bool)

(declare-fun tp!1963180 () Bool)

(assert (=> b!7126500 (= e!4282665 tp!1963180)))

(declare-fun b!7126501 () Bool)

(assert (=> b!7126501 (= e!4282662 e!4282656)))

(declare-fun res!2907914 () Bool)

(assert (=> b!7126501 (=> (not res!2907914) (not e!4282656))))

(assert (=> b!7126501 (= res!2907914 (= lt!2563489 (size!41461 s!7390)))))

(assert (=> b!7126501 (= lt!2563489 (size!41461 s1Rec!140))))

(assert (= (and start!694270 res!2907911) b!7126489))

(assert (= (and b!7126489 res!2907910) b!7126490))

(assert (= (and b!7126490 res!2907918) b!7126497))

(assert (= (and b!7126497 res!2907915) b!7126493))

(assert (= (and b!7126493 res!2907913) b!7126498))

(assert (= (and b!7126498 (not res!2907917)) b!7126486))

(assert (= (and b!7126498 res!2907916) b!7126492))

(assert (= (and b!7126492 res!2907912) b!7126501))

(assert (= (and b!7126501 res!2907914) b!7126499))

(assert (= (and start!694270 (is-Cons!68980 s1Rec!140)) b!7126491))

(assert (= (and start!694270 condSetEmpty!51728) setIsEmpty!51728))

(assert (= (and start!694270 (not condSetEmpty!51728)) setNonEmpty!51729))

(assert (= setNonEmpty!51729 b!7126500))

(assert (= (and start!694270 (is-Cons!68980 s2Rec!140)) b!7126494))

(assert (= (and start!694270 condSetEmpty!51729) setIsEmpty!51729))

(assert (= (and start!694270 (not condSetEmpty!51729)) setNonEmpty!51728))

(assert (= setNonEmpty!51728 b!7126496))

(assert (= (and start!694270 (is-Cons!68980 s2!1620)) b!7126495))

(assert (= (and start!694270 (is-Cons!68980 s1!1688)) b!7126487))

(assert (= (and start!694270 (is-Cons!68980 s!7390)) b!7126488))

(declare-fun m!7843340 () Bool)

(assert (=> b!7126498 m!7843340))

(declare-fun m!7843342 () Bool)

(assert (=> b!7126499 m!7843342))

(declare-fun m!7843344 () Bool)

(assert (=> b!7126489 m!7843344))

(declare-fun m!7843346 () Bool)

(assert (=> b!7126497 m!7843346))

(declare-fun m!7843348 () Bool)

(assert (=> b!7126490 m!7843348))

(declare-fun m!7843350 () Bool)

(assert (=> setNonEmpty!51728 m!7843350))

(declare-fun m!7843352 () Bool)

(assert (=> b!7126501 m!7843352))

(declare-fun m!7843354 () Bool)

(assert (=> b!7126501 m!7843354))

(declare-fun m!7843356 () Bool)

(assert (=> b!7126493 m!7843356))

(declare-fun m!7843358 () Bool)

(assert (=> setNonEmpty!51729 m!7843358))

(declare-fun m!7843360 () Bool)

(assert (=> b!7126486 m!7843360))

(declare-fun m!7843362 () Bool)

(assert (=> start!694270 m!7843362))

(push 1)

(assert (not b!7126497))

(assert (not b!7126488))

(assert (not b!7126499))

(assert (not b!7126500))

(assert (not b!7126493))

(assert tp_is_empty!45653)

(assert (not b!7126487))

(assert (not b!7126490))

(assert (not setNonEmpty!51729))

(assert (not setNonEmpty!51728))

(assert (not b!7126501))

(assert (not b!7126495))

(assert (not start!694270))

(assert (not b!7126496))

(assert (not b!7126491))

(assert (not b!7126489))

(assert (not b!7126494))

(assert (not b!7126486))

(assert (not b!7126498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7126566 () Bool)

(declare-fun e!4282706 () Bool)

(declare-fun tail!13933 (List!69104) List!69104)

(assert (=> b!7126566 (= e!4282706 (isPrefix!5895 (tail!13933 s1Rec!140) (tail!13933 s1!1688)))))

(declare-fun b!7126564 () Bool)

(declare-fun e!4282707 () Bool)

(assert (=> b!7126564 (= e!4282707 e!4282706)))

(declare-fun res!2907957 () Bool)

(assert (=> b!7126564 (=> (not res!2907957) (not e!4282706))))

(assert (=> b!7126564 (= res!2907957 (not (is-Nil!68980 s1!1688)))))

(declare-fun d!2223604 () Bool)

(declare-fun e!4282705 () Bool)

(assert (=> d!2223604 e!4282705))

(declare-fun res!2907955 () Bool)

(assert (=> d!2223604 (=> res!2907955 e!4282705)))

(declare-fun lt!2563498 () Bool)

(assert (=> d!2223604 (= res!2907955 (not lt!2563498))))

(assert (=> d!2223604 (= lt!2563498 e!4282707)))

(declare-fun res!2907954 () Bool)

(assert (=> d!2223604 (=> res!2907954 e!4282707)))

(assert (=> d!2223604 (= res!2907954 (is-Nil!68980 s1Rec!140))))

(assert (=> d!2223604 (= (isPrefix!5895 s1Rec!140 s1!1688) lt!2563498)))

(declare-fun b!7126565 () Bool)

(declare-fun res!2907956 () Bool)

(assert (=> b!7126565 (=> (not res!2907956) (not e!4282706))))

(declare-fun head!14461 (List!69104) C!36322)

(assert (=> b!7126565 (= res!2907956 (= (head!14461 s1Rec!140) (head!14461 s1!1688)))))

(declare-fun b!7126567 () Bool)

(assert (=> b!7126567 (= e!4282705 (>= (size!41461 s1!1688) (size!41461 s1Rec!140)))))

(assert (= (and d!2223604 (not res!2907954)) b!7126564))

(assert (= (and b!7126564 res!2907957) b!7126565))

(assert (= (and b!7126565 res!2907956) b!7126566))

(assert (= (and d!2223604 (not res!2907955)) b!7126567))

(declare-fun m!7843390 () Bool)

(assert (=> b!7126566 m!7843390))

(declare-fun m!7843392 () Bool)

(assert (=> b!7126566 m!7843392))

(assert (=> b!7126566 m!7843390))

(assert (=> b!7126566 m!7843392))

(declare-fun m!7843394 () Bool)

(assert (=> b!7126566 m!7843394))

(declare-fun m!7843396 () Bool)

(assert (=> b!7126565 m!7843396))

(declare-fun m!7843398 () Bool)

(assert (=> b!7126565 m!7843398))

(assert (=> b!7126567 m!7843342))

(assert (=> b!7126567 m!7843354))

(assert (=> b!7126497 d!2223604))

(declare-fun d!2223610 () Bool)

(declare-fun c!1329454 () Bool)

(declare-fun isEmpty!40017 (List!69104) Bool)

(assert (=> d!2223610 (= c!1329454 (isEmpty!40017 s2!1620))))

(declare-fun e!4282713 () Bool)

(assert (=> d!2223610 (= (matchZipper!3282 z2!471 s2!1620) e!4282713)))

(declare-fun b!7126578 () Bool)

(declare-fun nullableZipper!2753 ((Set Context!14040)) Bool)

(assert (=> b!7126578 (= e!4282713 (nullableZipper!2753 z2!471))))

(declare-fun b!7126579 () Bool)

(declare-fun derivationStepZipper!3165 ((Set Context!14040) C!36322) (Set Context!14040))

(assert (=> b!7126579 (= e!4282713 (matchZipper!3282 (derivationStepZipper!3165 z2!471 (head!14461 s2!1620)) (tail!13933 s2!1620)))))

(assert (= (and d!2223610 c!1329454) b!7126578))

(assert (= (and d!2223610 (not c!1329454)) b!7126579))

(declare-fun m!7843412 () Bool)

(assert (=> d!2223610 m!7843412))

(declare-fun m!7843414 () Bool)

(assert (=> b!7126578 m!7843414))

(declare-fun m!7843416 () Bool)

(assert (=> b!7126579 m!7843416))

(assert (=> b!7126579 m!7843416))

(declare-fun m!7843418 () Bool)

(assert (=> b!7126579 m!7843418))

(declare-fun m!7843420 () Bool)

(assert (=> b!7126579 m!7843420))

(assert (=> b!7126579 m!7843418))

(assert (=> b!7126579 m!7843420))

(declare-fun m!7843422 () Bool)

(assert (=> b!7126579 m!7843422))

(assert (=> b!7126489 d!2223610))

(declare-fun d!2223614 () Bool)

(declare-fun c!1329455 () Bool)

(assert (=> d!2223614 (= c!1329455 (isEmpty!40017 s1Rec!140))))

(declare-fun e!4282714 () Bool)

(assert (=> d!2223614 (= (matchZipper!3282 z1!552 s1Rec!140) e!4282714)))

(declare-fun b!7126580 () Bool)

(assert (=> b!7126580 (= e!4282714 (nullableZipper!2753 z1!552))))

(declare-fun b!7126581 () Bool)

(assert (=> b!7126581 (= e!4282714 (matchZipper!3282 (derivationStepZipper!3165 z1!552 (head!14461 s1Rec!140)) (tail!13933 s1Rec!140)))))

(assert (= (and d!2223614 c!1329455) b!7126580))

(assert (= (and d!2223614 (not c!1329455)) b!7126581))

(declare-fun m!7843424 () Bool)

(assert (=> d!2223614 m!7843424))

(declare-fun m!7843426 () Bool)

(assert (=> b!7126580 m!7843426))

(assert (=> b!7126581 m!7843396))

(assert (=> b!7126581 m!7843396))

(declare-fun m!7843428 () Bool)

(assert (=> b!7126581 m!7843428))

(assert (=> b!7126581 m!7843390))

(assert (=> b!7126581 m!7843428))

(assert (=> b!7126581 m!7843390))

(declare-fun m!7843430 () Bool)

(assert (=> b!7126581 m!7843430))

(assert (=> b!7126498 d!2223614))

(declare-fun d!2223616 () Bool)

(declare-fun c!1329456 () Bool)

(assert (=> d!2223616 (= c!1329456 (isEmpty!40017 s2Rec!140))))

(declare-fun e!4282715 () Bool)

(assert (=> d!2223616 (= (matchZipper!3282 z2!471 s2Rec!140) e!4282715)))

(declare-fun b!7126582 () Bool)

(assert (=> b!7126582 (= e!4282715 (nullableZipper!2753 z2!471))))

(declare-fun b!7126583 () Bool)

(assert (=> b!7126583 (= e!4282715 (matchZipper!3282 (derivationStepZipper!3165 z2!471 (head!14461 s2Rec!140)) (tail!13933 s2Rec!140)))))

(assert (= (and d!2223616 c!1329456) b!7126582))

(assert (= (and d!2223616 (not c!1329456)) b!7126583))

(declare-fun m!7843432 () Bool)

(assert (=> d!2223616 m!7843432))

(assert (=> b!7126582 m!7843414))

(declare-fun m!7843434 () Bool)

(assert (=> b!7126583 m!7843434))

(assert (=> b!7126583 m!7843434))

(declare-fun m!7843436 () Bool)

(assert (=> b!7126583 m!7843436))

(declare-fun m!7843438 () Bool)

(assert (=> b!7126583 m!7843438))

(assert (=> b!7126583 m!7843436))

(assert (=> b!7126583 m!7843438))

(declare-fun m!7843440 () Bool)

(assert (=> b!7126583 m!7843440))

(assert (=> b!7126486 d!2223616))

(declare-fun b!7126592 () Bool)

(declare-fun e!4282721 () List!69104)

(assert (=> b!7126592 (= e!4282721 s2Rec!140)))

(declare-fun e!4282720 () Bool)

(declare-fun b!7126595 () Bool)

(declare-fun lt!2563501 () List!69104)

(assert (=> b!7126595 (= e!4282720 (or (not (= s2Rec!140 Nil!68980)) (= lt!2563501 s1Rec!140)))))

(declare-fun b!7126593 () Bool)

(assert (=> b!7126593 (= e!4282721 (Cons!68980 (h!75428 s1Rec!140) (++!16164 (t!383081 s1Rec!140) s2Rec!140)))))

(declare-fun d!2223618 () Bool)

(assert (=> d!2223618 e!4282720))

(declare-fun res!2907962 () Bool)

(assert (=> d!2223618 (=> (not res!2907962) (not e!4282720))))

(declare-fun content!14112 (List!69104) (Set C!36322))

(assert (=> d!2223618 (= res!2907962 (= (content!14112 lt!2563501) (set.union (content!14112 s1Rec!140) (content!14112 s2Rec!140))))))

(assert (=> d!2223618 (= lt!2563501 e!4282721)))

(declare-fun c!1329459 () Bool)

(assert (=> d!2223618 (= c!1329459 (is-Nil!68980 s1Rec!140))))

(assert (=> d!2223618 (= (++!16164 s1Rec!140 s2Rec!140) lt!2563501)))

(declare-fun b!7126594 () Bool)

(declare-fun res!2907963 () Bool)

(assert (=> b!7126594 (=> (not res!2907963) (not e!4282720))))

(assert (=> b!7126594 (= res!2907963 (= (size!41461 lt!2563501) (+ (size!41461 s1Rec!140) (size!41461 s2Rec!140))))))

(assert (= (and d!2223618 c!1329459) b!7126592))

(assert (= (and d!2223618 (not c!1329459)) b!7126593))

(assert (= (and d!2223618 res!2907962) b!7126594))

(assert (= (and b!7126594 res!2907963) b!7126595))

(declare-fun m!7843442 () Bool)

(assert (=> b!7126593 m!7843442))

(declare-fun m!7843444 () Bool)

(assert (=> d!2223618 m!7843444))

(declare-fun m!7843446 () Bool)

(assert (=> d!2223618 m!7843446))

(declare-fun m!7843448 () Bool)

(assert (=> d!2223618 m!7843448))

(declare-fun m!7843450 () Bool)

(assert (=> b!7126594 m!7843450))

(assert (=> b!7126594 m!7843354))

(declare-fun m!7843452 () Bool)

(assert (=> b!7126594 m!7843452))

(assert (=> b!7126493 d!2223618))

(declare-fun d!2223620 () Bool)

(declare-fun lambda!433010 () Int)

(declare-fun forall!16912 (List!69103 Int) Bool)

(assert (=> d!2223620 (= (inv!88094 setElem!51729) (forall!16912 (exprs!7520 setElem!51729) lambda!433010))))

(declare-fun bs!1886352 () Bool)

(assert (= bs!1886352 d!2223620))

(declare-fun m!7843454 () Bool)

(assert (=> bs!1886352 m!7843454))

(assert (=> setNonEmpty!51729 d!2223620))

(declare-fun d!2223622 () Bool)

(declare-fun c!1329460 () Bool)

(assert (=> d!2223622 (= c!1329460 (isEmpty!40017 s1!1688))))

(declare-fun e!4282722 () Bool)

(assert (=> d!2223622 (= (matchZipper!3282 z1!552 s1!1688) e!4282722)))

(declare-fun b!7126596 () Bool)

(assert (=> b!7126596 (= e!4282722 (nullableZipper!2753 z1!552))))

(declare-fun b!7126597 () Bool)

(assert (=> b!7126597 (= e!4282722 (matchZipper!3282 (derivationStepZipper!3165 z1!552 (head!14461 s1!1688)) (tail!13933 s1!1688)))))

(assert (= (and d!2223622 c!1329460) b!7126596))

(assert (= (and d!2223622 (not c!1329460)) b!7126597))

(declare-fun m!7843456 () Bool)

(assert (=> d!2223622 m!7843456))

(assert (=> b!7126596 m!7843426))

(assert (=> b!7126597 m!7843398))

(assert (=> b!7126597 m!7843398))

(declare-fun m!7843458 () Bool)

(assert (=> b!7126597 m!7843458))

(assert (=> b!7126597 m!7843392))

(assert (=> b!7126597 m!7843458))

(assert (=> b!7126597 m!7843392))

(declare-fun m!7843460 () Bool)

(assert (=> b!7126597 m!7843460))

(assert (=> start!694270 d!2223622))

(declare-fun bs!1886353 () Bool)

(declare-fun d!2223624 () Bool)

(assert (= bs!1886353 (and d!2223624 d!2223620)))

(declare-fun lambda!433011 () Int)

(assert (=> bs!1886353 (= lambda!433011 lambda!433010)))

(assert (=> d!2223624 (= (inv!88094 setElem!51728) (forall!16912 (exprs!7520 setElem!51728) lambda!433011))))

(declare-fun bs!1886354 () Bool)

(assert (= bs!1886354 d!2223624))

(declare-fun m!7843462 () Bool)

(assert (=> bs!1886354 m!7843462))

(assert (=> setNonEmpty!51728 d!2223624))

(declare-fun d!2223626 () Bool)

(declare-fun lt!2563504 () Int)

(assert (=> d!2223626 (>= lt!2563504 0)))

(declare-fun e!4282725 () Int)

(assert (=> d!2223626 (= lt!2563504 e!4282725)))

(declare-fun c!1329463 () Bool)

(assert (=> d!2223626 (= c!1329463 (is-Nil!68980 s1!1688))))

(assert (=> d!2223626 (= (size!41461 s1!1688) lt!2563504)))

(declare-fun b!7126602 () Bool)

(assert (=> b!7126602 (= e!4282725 0)))

(declare-fun b!7126603 () Bool)

(assert (=> b!7126603 (= e!4282725 (+ 1 (size!41461 (t!383081 s1!1688))))))

(assert (= (and d!2223626 c!1329463) b!7126602))

(assert (= (and d!2223626 (not c!1329463)) b!7126603))

(declare-fun m!7843464 () Bool)

(assert (=> b!7126603 m!7843464))

(assert (=> b!7126499 d!2223626))

(declare-fun b!7126604 () Bool)

(declare-fun e!4282727 () List!69104)

(assert (=> b!7126604 (= e!4282727 s2!1620)))

(declare-fun b!7126607 () Bool)

(declare-fun e!4282726 () Bool)

(declare-fun lt!2563505 () List!69104)

(assert (=> b!7126607 (= e!4282726 (or (not (= s2!1620 Nil!68980)) (= lt!2563505 s1!1688)))))

(declare-fun b!7126605 () Bool)

(assert (=> b!7126605 (= e!4282727 (Cons!68980 (h!75428 s1!1688) (++!16164 (t!383081 s1!1688) s2!1620)))))

(declare-fun d!2223628 () Bool)

(assert (=> d!2223628 e!4282726))

(declare-fun res!2907964 () Bool)

(assert (=> d!2223628 (=> (not res!2907964) (not e!4282726))))

(assert (=> d!2223628 (= res!2907964 (= (content!14112 lt!2563505) (set.union (content!14112 s1!1688) (content!14112 s2!1620))))))

(assert (=> d!2223628 (= lt!2563505 e!4282727)))

(declare-fun c!1329464 () Bool)

(assert (=> d!2223628 (= c!1329464 (is-Nil!68980 s1!1688))))

(assert (=> d!2223628 (= (++!16164 s1!1688 s2!1620) lt!2563505)))

(declare-fun b!7126606 () Bool)

(declare-fun res!2907965 () Bool)

(assert (=> b!7126606 (=> (not res!2907965) (not e!4282726))))

(assert (=> b!7126606 (= res!2907965 (= (size!41461 lt!2563505) (+ (size!41461 s1!1688) (size!41461 s2!1620))))))

(assert (= (and d!2223628 c!1329464) b!7126604))

(assert (= (and d!2223628 (not c!1329464)) b!7126605))

(assert (= (and d!2223628 res!2907964) b!7126606))

(assert (= (and b!7126606 res!2907965) b!7126607))

(declare-fun m!7843466 () Bool)

(assert (=> b!7126605 m!7843466))

(declare-fun m!7843468 () Bool)

(assert (=> d!2223628 m!7843468))

(declare-fun m!7843470 () Bool)

(assert (=> d!2223628 m!7843470))

(declare-fun m!7843472 () Bool)

(assert (=> d!2223628 m!7843472))

(declare-fun m!7843474 () Bool)

(assert (=> b!7126606 m!7843474))

(assert (=> b!7126606 m!7843342))

(declare-fun m!7843476 () Bool)

(assert (=> b!7126606 m!7843476))

(assert (=> b!7126490 d!2223628))

(declare-fun d!2223630 () Bool)

(declare-fun lt!2563506 () Int)

(assert (=> d!2223630 (>= lt!2563506 0)))

(declare-fun e!4282728 () Int)

(assert (=> d!2223630 (= lt!2563506 e!4282728)))

(declare-fun c!1329465 () Bool)

(assert (=> d!2223630 (= c!1329465 (is-Nil!68980 s!7390))))

(assert (=> d!2223630 (= (size!41461 s!7390) lt!2563506)))

(declare-fun b!7126608 () Bool)

(assert (=> b!7126608 (= e!4282728 0)))

(declare-fun b!7126609 () Bool)

(assert (=> b!7126609 (= e!4282728 (+ 1 (size!41461 (t!383081 s!7390))))))

(assert (= (and d!2223630 c!1329465) b!7126608))

(assert (= (and d!2223630 (not c!1329465)) b!7126609))

(declare-fun m!7843478 () Bool)

(assert (=> b!7126609 m!7843478))

(assert (=> b!7126501 d!2223630))

(declare-fun d!2223632 () Bool)

(declare-fun lt!2563507 () Int)

(assert (=> d!2223632 (>= lt!2563507 0)))

(declare-fun e!4282729 () Int)

(assert (=> d!2223632 (= lt!2563507 e!4282729)))

(declare-fun c!1329466 () Bool)

(assert (=> d!2223632 (= c!1329466 (is-Nil!68980 s1Rec!140))))

(assert (=> d!2223632 (= (size!41461 s1Rec!140) lt!2563507)))

(declare-fun b!7126610 () Bool)

(assert (=> b!7126610 (= e!4282729 0)))

(declare-fun b!7126611 () Bool)

(assert (=> b!7126611 (= e!4282729 (+ 1 (size!41461 (t!383081 s1Rec!140))))))

(assert (= (and d!2223632 c!1329466) b!7126610))

(assert (= (and d!2223632 (not c!1329466)) b!7126611))

(declare-fun m!7843480 () Bool)

(assert (=> b!7126611 m!7843480))

(assert (=> b!7126501 d!2223632))

(declare-fun b!7126616 () Bool)

(declare-fun e!4282732 () Bool)

(declare-fun tp!1963214 () Bool)

(declare-fun tp!1963215 () Bool)

(assert (=> b!7126616 (= e!4282732 (and tp!1963214 tp!1963215))))

(assert (=> b!7126496 (= tp!1963178 e!4282732)))

(assert (= (and b!7126496 (is-Cons!68979 (exprs!7520 setElem!51728))) b!7126616))

(declare-fun condSetEmpty!51738 () Bool)

(assert (=> setNonEmpty!51729 (= condSetEmpty!51738 (= setRest!51728 (as set.empty (Set Context!14040))))))

(declare-fun setRes!51738 () Bool)

(assert (=> setNonEmpty!51729 (= tp!1963182 setRes!51738)))

(declare-fun setIsEmpty!51738 () Bool)

(assert (=> setIsEmpty!51738 setRes!51738))

(declare-fun e!4282735 () Bool)

(declare-fun setNonEmpty!51738 () Bool)

(declare-fun setElem!51738 () Context!14040)

(declare-fun tp!1963220 () Bool)

(assert (=> setNonEmpty!51738 (= setRes!51738 (and tp!1963220 (inv!88094 setElem!51738) e!4282735))))

(declare-fun setRest!51738 () (Set Context!14040))

(assert (=> setNonEmpty!51738 (= setRest!51728 (set.union (set.insert setElem!51738 (as set.empty (Set Context!14040))) setRest!51738))))

(declare-fun b!7126621 () Bool)

(declare-fun tp!1963221 () Bool)

(assert (=> b!7126621 (= e!4282735 tp!1963221)))

(assert (= (and setNonEmpty!51729 condSetEmpty!51738) setIsEmpty!51738))

(assert (= (and setNonEmpty!51729 (not condSetEmpty!51738)) setNonEmpty!51738))

(assert (= setNonEmpty!51738 b!7126621))

(declare-fun m!7843482 () Bool)

(assert (=> setNonEmpty!51738 m!7843482))

(declare-fun condSetEmpty!51739 () Bool)

(assert (=> setNonEmpty!51728 (= condSetEmpty!51739 (= setRest!51729 (as set.empty (Set Context!14040))))))

(declare-fun setRes!51739 () Bool)

(assert (=> setNonEmpty!51728 (= tp!1963181 setRes!51739)))

(declare-fun setIsEmpty!51739 () Bool)

(assert (=> setIsEmpty!51739 setRes!51739))

(declare-fun setElem!51739 () Context!14040)

(declare-fun setNonEmpty!51739 () Bool)

(declare-fun e!4282736 () Bool)

(declare-fun tp!1963222 () Bool)

(assert (=> setNonEmpty!51739 (= setRes!51739 (and tp!1963222 (inv!88094 setElem!51739) e!4282736))))

(declare-fun setRest!51739 () (Set Context!14040))

(assert (=> setNonEmpty!51739 (= setRest!51729 (set.union (set.insert setElem!51739 (as set.empty (Set Context!14040))) setRest!51739))))

(declare-fun b!7126622 () Bool)

(declare-fun tp!1963223 () Bool)

(assert (=> b!7126622 (= e!4282736 tp!1963223)))

(assert (= (and setNonEmpty!51728 condSetEmpty!51739) setIsEmpty!51739))

(assert (= (and setNonEmpty!51728 (not condSetEmpty!51739)) setNonEmpty!51739))

(assert (= setNonEmpty!51739 b!7126622))

(declare-fun m!7843484 () Bool)

(assert (=> setNonEmpty!51739 m!7843484))

(declare-fun b!7126627 () Bool)

(declare-fun e!4282739 () Bool)

(declare-fun tp!1963226 () Bool)

(assert (=> b!7126627 (= e!4282739 (and tp_is_empty!45653 tp!1963226))))

(assert (=> b!7126494 (= tp!1963176 e!4282739)))

(assert (= (and b!7126494 (is-Cons!68980 (t!383081 s2Rec!140))) b!7126627))

(declare-fun b!7126628 () Bool)

(declare-fun e!4282740 () Bool)

(declare-fun tp!1963227 () Bool)

(assert (=> b!7126628 (= e!4282740 (and tp_is_empty!45653 tp!1963227))))

(assert (=> b!7126487 (= tp!1963179 e!4282740)))

(assert (= (and b!7126487 (is-Cons!68980 (t!383081 s1!1688))) b!7126628))

(declare-fun b!7126629 () Bool)

(declare-fun e!4282741 () Bool)

(declare-fun tp!1963228 () Bool)

(declare-fun tp!1963229 () Bool)

(assert (=> b!7126629 (= e!4282741 (and tp!1963228 tp!1963229))))

(assert (=> b!7126500 (= tp!1963180 e!4282741)))

(assert (= (and b!7126500 (is-Cons!68979 (exprs!7520 setElem!51729))) b!7126629))

(declare-fun b!7126630 () Bool)

(declare-fun e!4282742 () Bool)

(declare-fun tp!1963230 () Bool)

(assert (=> b!7126630 (= e!4282742 (and tp_is_empty!45653 tp!1963230))))

(assert (=> b!7126495 (= tp!1963175 e!4282742)))

(assert (= (and b!7126495 (is-Cons!68980 (t!383081 s2!1620))) b!7126630))

(declare-fun b!7126631 () Bool)

(declare-fun e!4282743 () Bool)

(declare-fun tp!1963231 () Bool)

(assert (=> b!7126631 (= e!4282743 (and tp_is_empty!45653 tp!1963231))))

(assert (=> b!7126491 (= tp!1963177 e!4282743)))

(assert (= (and b!7126491 (is-Cons!68980 (t!383081 s1Rec!140))) b!7126631))

(declare-fun b!7126632 () Bool)

(declare-fun e!4282744 () Bool)

(declare-fun tp!1963232 () Bool)

(assert (=> b!7126632 (= e!4282744 (and tp_is_empty!45653 tp!1963232))))

(assert (=> b!7126488 (= tp!1963174 e!4282744)))

(assert (= (and b!7126488 (is-Cons!68980 (t!383081 s!7390))) b!7126632))

(push 1)

(assert (not b!7126603))

(assert (not b!7126629))

(assert (not b!7126565))

(assert (not b!7126566))

(assert (not b!7126616))

(assert (not b!7126597))

(assert (not d!2223618))

(assert (not d!2223610))

(assert (not d!2223616))

(assert (not b!7126622))

(assert tp_is_empty!45653)

(assert (not b!7126621))

(assert (not d!2223624))

(assert (not b!7126630))

(assert (not b!7126594))

(assert (not b!7126609))

(assert (not b!7126567))

(assert (not b!7126581))

(assert (not setNonEmpty!51738))

(assert (not b!7126632))

(assert (not d!2223620))

(assert (not b!7126611))

(assert (not d!2223614))

(assert (not b!7126580))

(assert (not setNonEmpty!51739))

(assert (not b!7126627))

(assert (not b!7126596))

(assert (not b!7126582))

(assert (not b!7126583))

(assert (not b!7126578))

(assert (not b!7126631))

(assert (not d!2223622))

(assert (not b!7126579))

(assert (not b!7126628))

(assert (not b!7126605))

(assert (not b!7126606))

(assert (not d!2223628))

(assert (not b!7126593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223652 () Bool)

(declare-fun lambda!433018 () Int)

(declare-fun exists!3822 ((Set Context!14040) Int) Bool)

(assert (=> d!2223652 (= (nullableZipper!2753 z1!552) (exists!3822 z1!552 lambda!433018))))

(declare-fun bs!1886358 () Bool)

(assert (= bs!1886358 d!2223652))

(declare-fun m!7843556 () Bool)

(assert (=> bs!1886358 m!7843556))

(assert (=> b!7126580 d!2223652))

(declare-fun b!7126692 () Bool)

(declare-fun e!4282783 () List!69104)

(assert (=> b!7126692 (= e!4282783 s2Rec!140)))

(declare-fun lt!2563517 () List!69104)

(declare-fun e!4282782 () Bool)

(declare-fun b!7126695 () Bool)

(assert (=> b!7126695 (= e!4282782 (or (not (= s2Rec!140 Nil!68980)) (= lt!2563517 (t!383081 s1Rec!140))))))

(declare-fun b!7126693 () Bool)

(assert (=> b!7126693 (= e!4282783 (Cons!68980 (h!75428 (t!383081 s1Rec!140)) (++!16164 (t!383081 (t!383081 s1Rec!140)) s2Rec!140)))))

(declare-fun d!2223654 () Bool)

(assert (=> d!2223654 e!4282782))

(declare-fun res!2907986 () Bool)

(assert (=> d!2223654 (=> (not res!2907986) (not e!4282782))))

(assert (=> d!2223654 (= res!2907986 (= (content!14112 lt!2563517) (set.union (content!14112 (t!383081 s1Rec!140)) (content!14112 s2Rec!140))))))

(assert (=> d!2223654 (= lt!2563517 e!4282783)))

(declare-fun c!1329478 () Bool)

(assert (=> d!2223654 (= c!1329478 (is-Nil!68980 (t!383081 s1Rec!140)))))

(assert (=> d!2223654 (= (++!16164 (t!383081 s1Rec!140) s2Rec!140) lt!2563517)))

(declare-fun b!7126694 () Bool)

(declare-fun res!2907987 () Bool)

(assert (=> b!7126694 (=> (not res!2907987) (not e!4282782))))

(assert (=> b!7126694 (= res!2907987 (= (size!41461 lt!2563517) (+ (size!41461 (t!383081 s1Rec!140)) (size!41461 s2Rec!140))))))

(assert (= (and d!2223654 c!1329478) b!7126692))

(assert (= (and d!2223654 (not c!1329478)) b!7126693))

(assert (= (and d!2223654 res!2907986) b!7126694))

(assert (= (and b!7126694 res!2907987) b!7126695))

(declare-fun m!7843558 () Bool)

(assert (=> b!7126693 m!7843558))

(declare-fun m!7843560 () Bool)

(assert (=> d!2223654 m!7843560))

(declare-fun m!7843562 () Bool)

(assert (=> d!2223654 m!7843562))

(assert (=> d!2223654 m!7843448))

(declare-fun m!7843564 () Bool)

(assert (=> b!7126694 m!7843564))

(assert (=> b!7126694 m!7843480))

(assert (=> b!7126694 m!7843452))

(assert (=> b!7126593 d!2223654))

(declare-fun d!2223656 () Bool)

(assert (=> d!2223656 (= (isEmpty!40017 s2!1620) (is-Nil!68980 s2!1620))))

(assert (=> d!2223610 d!2223656))

(declare-fun d!2223658 () Bool)

(declare-fun lt!2563518 () Int)

(assert (=> d!2223658 (>= lt!2563518 0)))

(declare-fun e!4282784 () Int)

(assert (=> d!2223658 (= lt!2563518 e!4282784)))

(declare-fun c!1329479 () Bool)

(assert (=> d!2223658 (= c!1329479 (is-Nil!68980 lt!2563505))))

(assert (=> d!2223658 (= (size!41461 lt!2563505) lt!2563518)))

(declare-fun b!7126696 () Bool)

(assert (=> b!7126696 (= e!4282784 0)))

(declare-fun b!7126697 () Bool)

(assert (=> b!7126697 (= e!4282784 (+ 1 (size!41461 (t!383081 lt!2563505))))))

(assert (= (and d!2223658 c!1329479) b!7126696))

(assert (= (and d!2223658 (not c!1329479)) b!7126697))

(declare-fun m!7843566 () Bool)

(assert (=> b!7126697 m!7843566))

(assert (=> b!7126606 d!2223658))

(assert (=> b!7126606 d!2223626))

(declare-fun d!2223660 () Bool)

(declare-fun lt!2563519 () Int)

(assert (=> d!2223660 (>= lt!2563519 0)))

(declare-fun e!4282785 () Int)

(assert (=> d!2223660 (= lt!2563519 e!4282785)))

(declare-fun c!1329480 () Bool)

(assert (=> d!2223660 (= c!1329480 (is-Nil!68980 s2!1620))))

(assert (=> d!2223660 (= (size!41461 s2!1620) lt!2563519)))

(declare-fun b!7126698 () Bool)

(assert (=> b!7126698 (= e!4282785 0)))

(declare-fun b!7126699 () Bool)

(assert (=> b!7126699 (= e!4282785 (+ 1 (size!41461 (t!383081 s2!1620))))))

(assert (= (and d!2223660 c!1329480) b!7126698))

(assert (= (and d!2223660 (not c!1329480)) b!7126699))

(declare-fun m!7843568 () Bool)

(assert (=> b!7126699 m!7843568))

(assert (=> b!7126606 d!2223660))

(declare-fun d!2223662 () Bool)

(assert (=> d!2223662 (= (isEmpty!40017 s1Rec!140) (is-Nil!68980 s1Rec!140))))

(assert (=> d!2223614 d!2223662))

(declare-fun b!7126700 () Bool)

(declare-fun e!4282787 () List!69104)

(assert (=> b!7126700 (= e!4282787 s2!1620)))

(declare-fun b!7126703 () Bool)

(declare-fun lt!2563520 () List!69104)

(declare-fun e!4282786 () Bool)

(assert (=> b!7126703 (= e!4282786 (or (not (= s2!1620 Nil!68980)) (= lt!2563520 (t!383081 s1!1688))))))

(declare-fun b!7126701 () Bool)

(assert (=> b!7126701 (= e!4282787 (Cons!68980 (h!75428 (t!383081 s1!1688)) (++!16164 (t!383081 (t!383081 s1!1688)) s2!1620)))))

(declare-fun d!2223664 () Bool)

(assert (=> d!2223664 e!4282786))

(declare-fun res!2907988 () Bool)

(assert (=> d!2223664 (=> (not res!2907988) (not e!4282786))))

(assert (=> d!2223664 (= res!2907988 (= (content!14112 lt!2563520) (set.union (content!14112 (t!383081 s1!1688)) (content!14112 s2!1620))))))

(assert (=> d!2223664 (= lt!2563520 e!4282787)))

(declare-fun c!1329481 () Bool)

(assert (=> d!2223664 (= c!1329481 (is-Nil!68980 (t!383081 s1!1688)))))

(assert (=> d!2223664 (= (++!16164 (t!383081 s1!1688) s2!1620) lt!2563520)))

(declare-fun b!7126702 () Bool)

(declare-fun res!2907989 () Bool)

(assert (=> b!7126702 (=> (not res!2907989) (not e!4282786))))

(assert (=> b!7126702 (= res!2907989 (= (size!41461 lt!2563520) (+ (size!41461 (t!383081 s1!1688)) (size!41461 s2!1620))))))

(assert (= (and d!2223664 c!1329481) b!7126700))

(assert (= (and d!2223664 (not c!1329481)) b!7126701))

(assert (= (and d!2223664 res!2907988) b!7126702))

(assert (= (and b!7126702 res!2907989) b!7126703))

(declare-fun m!7843570 () Bool)

(assert (=> b!7126701 m!7843570))

(declare-fun m!7843572 () Bool)

(assert (=> d!2223664 m!7843572))

(declare-fun m!7843574 () Bool)

(assert (=> d!2223664 m!7843574))

(assert (=> d!2223664 m!7843472))

(declare-fun m!7843576 () Bool)

(assert (=> b!7126702 m!7843576))

(assert (=> b!7126702 m!7843464))

(assert (=> b!7126702 m!7843476))

(assert (=> b!7126605 d!2223664))

(declare-fun d!2223666 () Bool)

(declare-fun lt!2563521 () Int)

(assert (=> d!2223666 (>= lt!2563521 0)))

(declare-fun e!4282788 () Int)

(assert (=> d!2223666 (= lt!2563521 e!4282788)))

(declare-fun c!1329482 () Bool)

(assert (=> d!2223666 (= c!1329482 (is-Nil!68980 (t!383081 s!7390)))))

(assert (=> d!2223666 (= (size!41461 (t!383081 s!7390)) lt!2563521)))

(declare-fun b!7126704 () Bool)

(assert (=> b!7126704 (= e!4282788 0)))

(declare-fun b!7126705 () Bool)

(assert (=> b!7126705 (= e!4282788 (+ 1 (size!41461 (t!383081 (t!383081 s!7390)))))))

(assert (= (and d!2223666 c!1329482) b!7126704))

(assert (= (and d!2223666 (not c!1329482)) b!7126705))

(declare-fun m!7843578 () Bool)

(assert (=> b!7126705 m!7843578))

(assert (=> b!7126609 d!2223666))

(declare-fun bs!1886359 () Bool)

(declare-fun d!2223668 () Bool)

(assert (= bs!1886359 (and d!2223668 d!2223620)))

(declare-fun lambda!433019 () Int)

(assert (=> bs!1886359 (= lambda!433019 lambda!433010)))

(declare-fun bs!1886360 () Bool)

(assert (= bs!1886360 (and d!2223668 d!2223624)))

(assert (=> bs!1886360 (= lambda!433019 lambda!433011)))

(assert (=> d!2223668 (= (inv!88094 setElem!51738) (forall!16912 (exprs!7520 setElem!51738) lambda!433019))))

(declare-fun bs!1886361 () Bool)

(assert (= bs!1886361 d!2223668))

(declare-fun m!7843580 () Bool)

(assert (=> bs!1886361 m!7843580))

(assert (=> setNonEmpty!51738 d!2223668))

(declare-fun d!2223670 () Bool)

(declare-fun res!2907994 () Bool)

(declare-fun e!4282793 () Bool)

(assert (=> d!2223670 (=> res!2907994 e!4282793)))

(assert (=> d!2223670 (= res!2907994 (is-Nil!68979 (exprs!7520 setElem!51729)))))

(assert (=> d!2223670 (= (forall!16912 (exprs!7520 setElem!51729) lambda!433010) e!4282793)))

(declare-fun b!7126710 () Bool)

(declare-fun e!4282794 () Bool)

(assert (=> b!7126710 (= e!4282793 e!4282794)))

(declare-fun res!2907995 () Bool)

(assert (=> b!7126710 (=> (not res!2907995) (not e!4282794))))

(declare-fun dynLambda!28109 (Int Regex!18026) Bool)

(assert (=> b!7126710 (= res!2907995 (dynLambda!28109 lambda!433010 (h!75427 (exprs!7520 setElem!51729))))))

(declare-fun b!7126711 () Bool)

(assert (=> b!7126711 (= e!4282794 (forall!16912 (t!383080 (exprs!7520 setElem!51729)) lambda!433010))))

(assert (= (and d!2223670 (not res!2907994)) b!7126710))

(assert (= (and b!7126710 res!2907995) b!7126711))

(declare-fun b_lambda!271949 () Bool)

(assert (=> (not b_lambda!271949) (not b!7126710)))

(declare-fun m!7843582 () Bool)

(assert (=> b!7126710 m!7843582))

(declare-fun m!7843584 () Bool)

(assert (=> b!7126711 m!7843584))

(assert (=> d!2223620 d!2223670))

(declare-fun d!2223672 () Bool)

(declare-fun c!1329483 () Bool)

(assert (=> d!2223672 (= c!1329483 (isEmpty!40017 (tail!13933 s1!1688)))))

(declare-fun e!4282795 () Bool)

(assert (=> d!2223672 (= (matchZipper!3282 (derivationStepZipper!3165 z1!552 (head!14461 s1!1688)) (tail!13933 s1!1688)) e!4282795)))

(declare-fun b!7126712 () Bool)

(assert (=> b!7126712 (= e!4282795 (nullableZipper!2753 (derivationStepZipper!3165 z1!552 (head!14461 s1!1688))))))

(declare-fun b!7126713 () Bool)

(assert (=> b!7126713 (= e!4282795 (matchZipper!3282 (derivationStepZipper!3165 (derivationStepZipper!3165 z1!552 (head!14461 s1!1688)) (head!14461 (tail!13933 s1!1688))) (tail!13933 (tail!13933 s1!1688))))))

(assert (= (and d!2223672 c!1329483) b!7126712))

(assert (= (and d!2223672 (not c!1329483)) b!7126713))

(assert (=> d!2223672 m!7843392))

(declare-fun m!7843586 () Bool)

(assert (=> d!2223672 m!7843586))

(assert (=> b!7126712 m!7843458))

(declare-fun m!7843588 () Bool)

(assert (=> b!7126712 m!7843588))

(assert (=> b!7126713 m!7843392))

(declare-fun m!7843590 () Bool)

(assert (=> b!7126713 m!7843590))

(assert (=> b!7126713 m!7843458))

(assert (=> b!7126713 m!7843590))

(declare-fun m!7843592 () Bool)

(assert (=> b!7126713 m!7843592))

(assert (=> b!7126713 m!7843392))

(declare-fun m!7843594 () Bool)

(assert (=> b!7126713 m!7843594))

(assert (=> b!7126713 m!7843592))

(assert (=> b!7126713 m!7843594))

(declare-fun m!7843596 () Bool)

(assert (=> b!7126713 m!7843596))

(assert (=> b!7126597 d!2223672))

(declare-fun d!2223674 () Bool)

(assert (=> d!2223674 true))

(declare-fun lambda!433022 () Int)

(declare-fun flatMap!2630 ((Set Context!14040) Int) (Set Context!14040))

(assert (=> d!2223674 (= (derivationStepZipper!3165 z1!552 (head!14461 s1!1688)) (flatMap!2630 z1!552 lambda!433022))))

(declare-fun bs!1886362 () Bool)

(assert (= bs!1886362 d!2223674))

(declare-fun m!7843598 () Bool)

(assert (=> bs!1886362 m!7843598))

(assert (=> b!7126597 d!2223674))

(declare-fun d!2223676 () Bool)

(assert (=> d!2223676 (= (head!14461 s1!1688) (h!75428 s1!1688))))

(assert (=> b!7126597 d!2223676))

(declare-fun d!2223678 () Bool)

(assert (=> d!2223678 (= (tail!13933 s1!1688) (t!383081 s1!1688))))

(assert (=> b!7126597 d!2223678))

(declare-fun d!2223680 () Bool)

(declare-fun c!1329486 () Bool)

(assert (=> d!2223680 (= c!1329486 (isEmpty!40017 (tail!13933 s2Rec!140)))))

(declare-fun e!4282796 () Bool)

(assert (=> d!2223680 (= (matchZipper!3282 (derivationStepZipper!3165 z2!471 (head!14461 s2Rec!140)) (tail!13933 s2Rec!140)) e!4282796)))

(declare-fun b!7126716 () Bool)

(assert (=> b!7126716 (= e!4282796 (nullableZipper!2753 (derivationStepZipper!3165 z2!471 (head!14461 s2Rec!140))))))

(declare-fun b!7126717 () Bool)

(assert (=> b!7126717 (= e!4282796 (matchZipper!3282 (derivationStepZipper!3165 (derivationStepZipper!3165 z2!471 (head!14461 s2Rec!140)) (head!14461 (tail!13933 s2Rec!140))) (tail!13933 (tail!13933 s2Rec!140))))))

(assert (= (and d!2223680 c!1329486) b!7126716))

(assert (= (and d!2223680 (not c!1329486)) b!7126717))

(assert (=> d!2223680 m!7843438))

(declare-fun m!7843600 () Bool)

(assert (=> d!2223680 m!7843600))

(assert (=> b!7126716 m!7843436))

(declare-fun m!7843602 () Bool)

(assert (=> b!7126716 m!7843602))

(assert (=> b!7126717 m!7843438))

(declare-fun m!7843604 () Bool)

(assert (=> b!7126717 m!7843604))

(assert (=> b!7126717 m!7843436))

(assert (=> b!7126717 m!7843604))

(declare-fun m!7843606 () Bool)

(assert (=> b!7126717 m!7843606))

(assert (=> b!7126717 m!7843438))

(declare-fun m!7843608 () Bool)

(assert (=> b!7126717 m!7843608))

(assert (=> b!7126717 m!7843606))

(assert (=> b!7126717 m!7843608))

(declare-fun m!7843610 () Bool)

(assert (=> b!7126717 m!7843610))

(assert (=> b!7126583 d!2223680))

(declare-fun bs!1886363 () Bool)

(declare-fun d!2223682 () Bool)

(assert (= bs!1886363 (and d!2223682 d!2223674)))

(declare-fun lambda!433023 () Int)

(assert (=> bs!1886363 (= (= (head!14461 s2Rec!140) (head!14461 s1!1688)) (= lambda!433023 lambda!433022))))

(assert (=> d!2223682 true))

(assert (=> d!2223682 (= (derivationStepZipper!3165 z2!471 (head!14461 s2Rec!140)) (flatMap!2630 z2!471 lambda!433023))))

(declare-fun bs!1886364 () Bool)

(assert (= bs!1886364 d!2223682))

(declare-fun m!7843612 () Bool)

(assert (=> bs!1886364 m!7843612))

(assert (=> b!7126583 d!2223682))

(declare-fun d!2223684 () Bool)

(assert (=> d!2223684 (= (head!14461 s2Rec!140) (h!75428 s2Rec!140))))

(assert (=> b!7126583 d!2223684))

(declare-fun d!2223686 () Bool)

(assert (=> d!2223686 (= (tail!13933 s2Rec!140) (t!383081 s2Rec!140))))

(assert (=> b!7126583 d!2223686))

(assert (=> b!7126596 d!2223652))

(declare-fun bs!1886365 () Bool)

(declare-fun d!2223688 () Bool)

(assert (= bs!1886365 (and d!2223688 d!2223652)))

(declare-fun lambda!433024 () Int)

(assert (=> bs!1886365 (= lambda!433024 lambda!433018)))

(assert (=> d!2223688 (= (nullableZipper!2753 z2!471) (exists!3822 z2!471 lambda!433024))))

(declare-fun bs!1886366 () Bool)

(assert (= bs!1886366 d!2223688))

(declare-fun m!7843614 () Bool)

(assert (=> bs!1886366 m!7843614))

(assert (=> b!7126582 d!2223688))

(declare-fun d!2223690 () Bool)

(assert (=> d!2223690 (= (head!14461 s1Rec!140) (h!75428 s1Rec!140))))

(assert (=> b!7126565 d!2223690))

(assert (=> b!7126565 d!2223676))

(declare-fun b!7126720 () Bool)

(declare-fun e!4282798 () Bool)

(assert (=> b!7126720 (= e!4282798 (isPrefix!5895 (tail!13933 (tail!13933 s1Rec!140)) (tail!13933 (tail!13933 s1!1688))))))

(declare-fun b!7126718 () Bool)

(declare-fun e!4282799 () Bool)

(assert (=> b!7126718 (= e!4282799 e!4282798)))

(declare-fun res!2907999 () Bool)

(assert (=> b!7126718 (=> (not res!2907999) (not e!4282798))))

(assert (=> b!7126718 (= res!2907999 (not (is-Nil!68980 (tail!13933 s1!1688))))))

(declare-fun d!2223692 () Bool)

(declare-fun e!4282797 () Bool)

(assert (=> d!2223692 e!4282797))

(declare-fun res!2907997 () Bool)

(assert (=> d!2223692 (=> res!2907997 e!4282797)))

(declare-fun lt!2563522 () Bool)

(assert (=> d!2223692 (= res!2907997 (not lt!2563522))))

(assert (=> d!2223692 (= lt!2563522 e!4282799)))

(declare-fun res!2907996 () Bool)

(assert (=> d!2223692 (=> res!2907996 e!4282799)))

(assert (=> d!2223692 (= res!2907996 (is-Nil!68980 (tail!13933 s1Rec!140)))))

(assert (=> d!2223692 (= (isPrefix!5895 (tail!13933 s1Rec!140) (tail!13933 s1!1688)) lt!2563522)))

(declare-fun b!7126719 () Bool)

(declare-fun res!2907998 () Bool)

(assert (=> b!7126719 (=> (not res!2907998) (not e!4282798))))

(assert (=> b!7126719 (= res!2907998 (= (head!14461 (tail!13933 s1Rec!140)) (head!14461 (tail!13933 s1!1688))))))

(declare-fun b!7126721 () Bool)

(assert (=> b!7126721 (= e!4282797 (>= (size!41461 (tail!13933 s1!1688)) (size!41461 (tail!13933 s1Rec!140))))))

(assert (= (and d!2223692 (not res!2907996)) b!7126718))

(assert (= (and b!7126718 res!2907999) b!7126719))

(assert (= (and b!7126719 res!2907998) b!7126720))

(assert (= (and d!2223692 (not res!2907997)) b!7126721))

(assert (=> b!7126720 m!7843390))

(declare-fun m!7843616 () Bool)

(assert (=> b!7126720 m!7843616))

(assert (=> b!7126720 m!7843392))

(assert (=> b!7126720 m!7843594))

(assert (=> b!7126720 m!7843616))

(assert (=> b!7126720 m!7843594))

(declare-fun m!7843618 () Bool)

(assert (=> b!7126720 m!7843618))

(assert (=> b!7126719 m!7843390))

(declare-fun m!7843620 () Bool)

(assert (=> b!7126719 m!7843620))

(assert (=> b!7126719 m!7843392))

(assert (=> b!7126719 m!7843590))

(assert (=> b!7126721 m!7843392))

(declare-fun m!7843622 () Bool)

(assert (=> b!7126721 m!7843622))

(assert (=> b!7126721 m!7843390))

(declare-fun m!7843624 () Bool)

(assert (=> b!7126721 m!7843624))

(assert (=> b!7126566 d!2223692))

(declare-fun d!2223694 () Bool)

(assert (=> d!2223694 (= (tail!13933 s1Rec!140) (t!383081 s1Rec!140))))

(assert (=> b!7126566 d!2223694))

(assert (=> b!7126566 d!2223678))

(declare-fun d!2223696 () Bool)

(assert (=> d!2223696 (= (isEmpty!40017 s1!1688) (is-Nil!68980 s1!1688))))

(assert (=> d!2223622 d!2223696))

(assert (=> b!7126567 d!2223626))

(assert (=> b!7126567 d!2223632))

(declare-fun d!2223698 () Bool)

(assert (=> d!2223698 (= (isEmpty!40017 s2Rec!140) (is-Nil!68980 s2Rec!140))))

(assert (=> d!2223616 d!2223698))

(declare-fun d!2223700 () Bool)

(declare-fun c!1329489 () Bool)

(assert (=> d!2223700 (= c!1329489 (is-Nil!68980 lt!2563505))))

(declare-fun e!4282802 () (Set C!36322))

(assert (=> d!2223700 (= (content!14112 lt!2563505) e!4282802)))

(declare-fun b!7126726 () Bool)

(assert (=> b!7126726 (= e!4282802 (as set.empty (Set C!36322)))))

(declare-fun b!7126727 () Bool)

(assert (=> b!7126727 (= e!4282802 (set.union (set.insert (h!75428 lt!2563505) (as set.empty (Set C!36322))) (content!14112 (t!383081 lt!2563505))))))

(assert (= (and d!2223700 c!1329489) b!7126726))

(assert (= (and d!2223700 (not c!1329489)) b!7126727))

(declare-fun m!7843626 () Bool)

(assert (=> b!7126727 m!7843626))

(declare-fun m!7843628 () Bool)

(assert (=> b!7126727 m!7843628))

(assert (=> d!2223628 d!2223700))

(declare-fun d!2223702 () Bool)

(declare-fun c!1329490 () Bool)

(assert (=> d!2223702 (= c!1329490 (is-Nil!68980 s1!1688))))

(declare-fun e!4282803 () (Set C!36322))

(assert (=> d!2223702 (= (content!14112 s1!1688) e!4282803)))

(declare-fun b!7126728 () Bool)

(assert (=> b!7126728 (= e!4282803 (as set.empty (Set C!36322)))))

(declare-fun b!7126729 () Bool)

(assert (=> b!7126729 (= e!4282803 (set.union (set.insert (h!75428 s1!1688) (as set.empty (Set C!36322))) (content!14112 (t!383081 s1!1688))))))

(assert (= (and d!2223702 c!1329490) b!7126728))

(assert (= (and d!2223702 (not c!1329490)) b!7126729))

(declare-fun m!7843630 () Bool)

(assert (=> b!7126729 m!7843630))

(assert (=> b!7126729 m!7843574))

(assert (=> d!2223628 d!2223702))

(declare-fun d!2223704 () Bool)

(declare-fun c!1329491 () Bool)

(assert (=> d!2223704 (= c!1329491 (is-Nil!68980 s2!1620))))

(declare-fun e!4282804 () (Set C!36322))

(assert (=> d!2223704 (= (content!14112 s2!1620) e!4282804)))

(declare-fun b!7126730 () Bool)

(assert (=> b!7126730 (= e!4282804 (as set.empty (Set C!36322)))))

(declare-fun b!7126731 () Bool)

(assert (=> b!7126731 (= e!4282804 (set.union (set.insert (h!75428 s2!1620) (as set.empty (Set C!36322))) (content!14112 (t!383081 s2!1620))))))

(assert (= (and d!2223704 c!1329491) b!7126730))

(assert (= (and d!2223704 (not c!1329491)) b!7126731))

(declare-fun m!7843632 () Bool)

(assert (=> b!7126731 m!7843632))

(declare-fun m!7843634 () Bool)

(assert (=> b!7126731 m!7843634))

(assert (=> d!2223628 d!2223704))

(declare-fun bs!1886367 () Bool)

(declare-fun d!2223706 () Bool)

(assert (= bs!1886367 (and d!2223706 d!2223620)))

(declare-fun lambda!433025 () Int)

(assert (=> bs!1886367 (= lambda!433025 lambda!433010)))

(declare-fun bs!1886368 () Bool)

(assert (= bs!1886368 (and d!2223706 d!2223624)))

(assert (=> bs!1886368 (= lambda!433025 lambda!433011)))

(declare-fun bs!1886369 () Bool)

(assert (= bs!1886369 (and d!2223706 d!2223668)))

(assert (=> bs!1886369 (= lambda!433025 lambda!433019)))

(assert (=> d!2223706 (= (inv!88094 setElem!51739) (forall!16912 (exprs!7520 setElem!51739) lambda!433025))))

(declare-fun bs!1886370 () Bool)

(assert (= bs!1886370 d!2223706))

(declare-fun m!7843636 () Bool)

(assert (=> bs!1886370 m!7843636))

(assert (=> setNonEmpty!51739 d!2223706))

(declare-fun d!2223708 () Bool)

(declare-fun lt!2563523 () Int)

(assert (=> d!2223708 (>= lt!2563523 0)))

(declare-fun e!4282805 () Int)

(assert (=> d!2223708 (= lt!2563523 e!4282805)))

(declare-fun c!1329492 () Bool)

(assert (=> d!2223708 (= c!1329492 (is-Nil!68980 (t!383081 s1!1688)))))

(assert (=> d!2223708 (= (size!41461 (t!383081 s1!1688)) lt!2563523)))

(declare-fun b!7126732 () Bool)

(assert (=> b!7126732 (= e!4282805 0)))

(declare-fun b!7126733 () Bool)

(assert (=> b!7126733 (= e!4282805 (+ 1 (size!41461 (t!383081 (t!383081 s1!1688)))))))

(assert (= (and d!2223708 c!1329492) b!7126732))

(assert (= (and d!2223708 (not c!1329492)) b!7126733))

(declare-fun m!7843638 () Bool)

(assert (=> b!7126733 m!7843638))

(assert (=> b!7126603 d!2223708))

(declare-fun d!2223710 () Bool)

(declare-fun c!1329493 () Bool)

(assert (=> d!2223710 (= c!1329493 (is-Nil!68980 lt!2563501))))

(declare-fun e!4282806 () (Set C!36322))

(assert (=> d!2223710 (= (content!14112 lt!2563501) e!4282806)))

(declare-fun b!7126734 () Bool)

(assert (=> b!7126734 (= e!4282806 (as set.empty (Set C!36322)))))

(declare-fun b!7126735 () Bool)

(assert (=> b!7126735 (= e!4282806 (set.union (set.insert (h!75428 lt!2563501) (as set.empty (Set C!36322))) (content!14112 (t!383081 lt!2563501))))))

(assert (= (and d!2223710 c!1329493) b!7126734))

(assert (= (and d!2223710 (not c!1329493)) b!7126735))

(declare-fun m!7843640 () Bool)

(assert (=> b!7126735 m!7843640))

(declare-fun m!7843642 () Bool)

(assert (=> b!7126735 m!7843642))

(assert (=> d!2223618 d!2223710))

(declare-fun d!2223712 () Bool)

(declare-fun c!1329494 () Bool)

(assert (=> d!2223712 (= c!1329494 (is-Nil!68980 s1Rec!140))))

(declare-fun e!4282807 () (Set C!36322))

(assert (=> d!2223712 (= (content!14112 s1Rec!140) e!4282807)))

(declare-fun b!7126736 () Bool)

(assert (=> b!7126736 (= e!4282807 (as set.empty (Set C!36322)))))

(declare-fun b!7126737 () Bool)

(assert (=> b!7126737 (= e!4282807 (set.union (set.insert (h!75428 s1Rec!140) (as set.empty (Set C!36322))) (content!14112 (t!383081 s1Rec!140))))))

(assert (= (and d!2223712 c!1329494) b!7126736))

(assert (= (and d!2223712 (not c!1329494)) b!7126737))

(declare-fun m!7843644 () Bool)

(assert (=> b!7126737 m!7843644))

(assert (=> b!7126737 m!7843562))

(assert (=> d!2223618 d!2223712))

(declare-fun d!2223714 () Bool)

(declare-fun c!1329495 () Bool)

(assert (=> d!2223714 (= c!1329495 (is-Nil!68980 s2Rec!140))))

(declare-fun e!4282808 () (Set C!36322))

(assert (=> d!2223714 (= (content!14112 s2Rec!140) e!4282808)))

(declare-fun b!7126738 () Bool)

(assert (=> b!7126738 (= e!4282808 (as set.empty (Set C!36322)))))

(declare-fun b!7126739 () Bool)

(assert (=> b!7126739 (= e!4282808 (set.union (set.insert (h!75428 s2Rec!140) (as set.empty (Set C!36322))) (content!14112 (t!383081 s2Rec!140))))))

(assert (= (and d!2223714 c!1329495) b!7126738))

(assert (= (and d!2223714 (not c!1329495)) b!7126739))

(declare-fun m!7843646 () Bool)

(assert (=> b!7126739 m!7843646))

(declare-fun m!7843648 () Bool)

(assert (=> b!7126739 m!7843648))

(assert (=> d!2223618 d!2223714))

(declare-fun d!2223716 () Bool)

(declare-fun lt!2563524 () Int)

(assert (=> d!2223716 (>= lt!2563524 0)))

(declare-fun e!4282809 () Int)

(assert (=> d!2223716 (= lt!2563524 e!4282809)))

(declare-fun c!1329496 () Bool)

(assert (=> d!2223716 (= c!1329496 (is-Nil!68980 (t!383081 s1Rec!140)))))

(assert (=> d!2223716 (= (size!41461 (t!383081 s1Rec!140)) lt!2563524)))

(declare-fun b!7126740 () Bool)

(assert (=> b!7126740 (= e!4282809 0)))

(declare-fun b!7126741 () Bool)

(assert (=> b!7126741 (= e!4282809 (+ 1 (size!41461 (t!383081 (t!383081 s1Rec!140)))))))

(assert (= (and d!2223716 c!1329496) b!7126740))

(assert (= (and d!2223716 (not c!1329496)) b!7126741))

(declare-fun m!7843650 () Bool)

(assert (=> b!7126741 m!7843650))

(assert (=> b!7126611 d!2223716))

(declare-fun d!2223718 () Bool)

(declare-fun c!1329497 () Bool)

(assert (=> d!2223718 (= c!1329497 (isEmpty!40017 (tail!13933 s2!1620)))))

(declare-fun e!4282810 () Bool)

(assert (=> d!2223718 (= (matchZipper!3282 (derivationStepZipper!3165 z2!471 (head!14461 s2!1620)) (tail!13933 s2!1620)) e!4282810)))

(declare-fun b!7126742 () Bool)

(assert (=> b!7126742 (= e!4282810 (nullableZipper!2753 (derivationStepZipper!3165 z2!471 (head!14461 s2!1620))))))

(declare-fun b!7126743 () Bool)

(assert (=> b!7126743 (= e!4282810 (matchZipper!3282 (derivationStepZipper!3165 (derivationStepZipper!3165 z2!471 (head!14461 s2!1620)) (head!14461 (tail!13933 s2!1620))) (tail!13933 (tail!13933 s2!1620))))))

(assert (= (and d!2223718 c!1329497) b!7126742))

(assert (= (and d!2223718 (not c!1329497)) b!7126743))

(assert (=> d!2223718 m!7843420))

(declare-fun m!7843652 () Bool)

(assert (=> d!2223718 m!7843652))

(assert (=> b!7126742 m!7843418))

(declare-fun m!7843654 () Bool)

(assert (=> b!7126742 m!7843654))

(assert (=> b!7126743 m!7843420))

(declare-fun m!7843656 () Bool)

(assert (=> b!7126743 m!7843656))

(assert (=> b!7126743 m!7843418))

(assert (=> b!7126743 m!7843656))

(declare-fun m!7843658 () Bool)

(assert (=> b!7126743 m!7843658))

(assert (=> b!7126743 m!7843420))

(declare-fun m!7843660 () Bool)

(assert (=> b!7126743 m!7843660))

(assert (=> b!7126743 m!7843658))

(assert (=> b!7126743 m!7843660))

(declare-fun m!7843662 () Bool)

(assert (=> b!7126743 m!7843662))

(assert (=> b!7126579 d!2223718))

(declare-fun bs!1886371 () Bool)

(declare-fun d!2223720 () Bool)

(assert (= bs!1886371 (and d!2223720 d!2223674)))

(declare-fun lambda!433026 () Int)

(assert (=> bs!1886371 (= (= (head!14461 s2!1620) (head!14461 s1!1688)) (= lambda!433026 lambda!433022))))

(declare-fun bs!1886372 () Bool)

(assert (= bs!1886372 (and d!2223720 d!2223682)))

(assert (=> bs!1886372 (= (= (head!14461 s2!1620) (head!14461 s2Rec!140)) (= lambda!433026 lambda!433023))))

(assert (=> d!2223720 true))

(assert (=> d!2223720 (= (derivationStepZipper!3165 z2!471 (head!14461 s2!1620)) (flatMap!2630 z2!471 lambda!433026))))

(declare-fun bs!1886373 () Bool)

(assert (= bs!1886373 d!2223720))

(declare-fun m!7843664 () Bool)

(assert (=> bs!1886373 m!7843664))

(assert (=> b!7126579 d!2223720))

(declare-fun d!2223722 () Bool)

(assert (=> d!2223722 (= (head!14461 s2!1620) (h!75428 s2!1620))))

(assert (=> b!7126579 d!2223722))

(declare-fun d!2223724 () Bool)

(assert (=> d!2223724 (= (tail!13933 s2!1620) (t!383081 s2!1620))))

(assert (=> b!7126579 d!2223724))

(assert (=> b!7126578 d!2223688))

(declare-fun d!2223726 () Bool)

(declare-fun res!2908000 () Bool)

(declare-fun e!4282811 () Bool)

(assert (=> d!2223726 (=> res!2908000 e!4282811)))

(assert (=> d!2223726 (= res!2908000 (is-Nil!68979 (exprs!7520 setElem!51728)))))

(assert (=> d!2223726 (= (forall!16912 (exprs!7520 setElem!51728) lambda!433011) e!4282811)))

(declare-fun b!7126744 () Bool)

(declare-fun e!4282812 () Bool)

(assert (=> b!7126744 (= e!4282811 e!4282812)))

(declare-fun res!2908001 () Bool)

(assert (=> b!7126744 (=> (not res!2908001) (not e!4282812))))

(assert (=> b!7126744 (= res!2908001 (dynLambda!28109 lambda!433011 (h!75427 (exprs!7520 setElem!51728))))))

(declare-fun b!7126745 () Bool)

(assert (=> b!7126745 (= e!4282812 (forall!16912 (t!383080 (exprs!7520 setElem!51728)) lambda!433011))))

(assert (= (and d!2223726 (not res!2908000)) b!7126744))

(assert (= (and b!7126744 res!2908001) b!7126745))

(declare-fun b_lambda!271951 () Bool)

(assert (=> (not b_lambda!271951) (not b!7126744)))

(declare-fun m!7843666 () Bool)

(assert (=> b!7126744 m!7843666))

(declare-fun m!7843668 () Bool)

(assert (=> b!7126745 m!7843668))

(assert (=> d!2223624 d!2223726))

(declare-fun d!2223728 () Bool)

(declare-fun c!1329498 () Bool)

(assert (=> d!2223728 (= c!1329498 (isEmpty!40017 (tail!13933 s1Rec!140)))))

(declare-fun e!4282813 () Bool)

(assert (=> d!2223728 (= (matchZipper!3282 (derivationStepZipper!3165 z1!552 (head!14461 s1Rec!140)) (tail!13933 s1Rec!140)) e!4282813)))

(declare-fun b!7126746 () Bool)

(assert (=> b!7126746 (= e!4282813 (nullableZipper!2753 (derivationStepZipper!3165 z1!552 (head!14461 s1Rec!140))))))

(declare-fun b!7126747 () Bool)

(assert (=> b!7126747 (= e!4282813 (matchZipper!3282 (derivationStepZipper!3165 (derivationStepZipper!3165 z1!552 (head!14461 s1Rec!140)) (head!14461 (tail!13933 s1Rec!140))) (tail!13933 (tail!13933 s1Rec!140))))))

(assert (= (and d!2223728 c!1329498) b!7126746))

(assert (= (and d!2223728 (not c!1329498)) b!7126747))

(assert (=> d!2223728 m!7843390))

(declare-fun m!7843670 () Bool)

(assert (=> d!2223728 m!7843670))

(assert (=> b!7126746 m!7843428))

(declare-fun m!7843672 () Bool)

(assert (=> b!7126746 m!7843672))

(assert (=> b!7126747 m!7843390))

(assert (=> b!7126747 m!7843620))

(assert (=> b!7126747 m!7843428))

(assert (=> b!7126747 m!7843620))

(declare-fun m!7843674 () Bool)

(assert (=> b!7126747 m!7843674))

(assert (=> b!7126747 m!7843390))

(assert (=> b!7126747 m!7843616))

(assert (=> b!7126747 m!7843674))

(assert (=> b!7126747 m!7843616))

(declare-fun m!7843676 () Bool)

(assert (=> b!7126747 m!7843676))

(assert (=> b!7126581 d!2223728))

(declare-fun bs!1886374 () Bool)

(declare-fun d!2223730 () Bool)

(assert (= bs!1886374 (and d!2223730 d!2223674)))

(declare-fun lambda!433027 () Int)

(assert (=> bs!1886374 (= (= (head!14461 s1Rec!140) (head!14461 s1!1688)) (= lambda!433027 lambda!433022))))

(declare-fun bs!1886375 () Bool)

(assert (= bs!1886375 (and d!2223730 d!2223682)))

(assert (=> bs!1886375 (= (= (head!14461 s1Rec!140) (head!14461 s2Rec!140)) (= lambda!433027 lambda!433023))))

(declare-fun bs!1886376 () Bool)

(assert (= bs!1886376 (and d!2223730 d!2223720)))

(assert (=> bs!1886376 (= (= (head!14461 s1Rec!140) (head!14461 s2!1620)) (= lambda!433027 lambda!433026))))

(assert (=> d!2223730 true))

(assert (=> d!2223730 (= (derivationStepZipper!3165 z1!552 (head!14461 s1Rec!140)) (flatMap!2630 z1!552 lambda!433027))))

(declare-fun bs!1886377 () Bool)

(assert (= bs!1886377 d!2223730))

(declare-fun m!7843678 () Bool)

(assert (=> bs!1886377 m!7843678))

(assert (=> b!7126581 d!2223730))

(assert (=> b!7126581 d!2223690))

(assert (=> b!7126581 d!2223694))

(declare-fun d!2223732 () Bool)

(declare-fun lt!2563525 () Int)

(assert (=> d!2223732 (>= lt!2563525 0)))

(declare-fun e!4282814 () Int)

(assert (=> d!2223732 (= lt!2563525 e!4282814)))

(declare-fun c!1329499 () Bool)

(assert (=> d!2223732 (= c!1329499 (is-Nil!68980 lt!2563501))))

(assert (=> d!2223732 (= (size!41461 lt!2563501) lt!2563525)))

(declare-fun b!7126748 () Bool)

(assert (=> b!7126748 (= e!4282814 0)))

(declare-fun b!7126749 () Bool)

(assert (=> b!7126749 (= e!4282814 (+ 1 (size!41461 (t!383081 lt!2563501))))))

(assert (= (and d!2223732 c!1329499) b!7126748))

(assert (= (and d!2223732 (not c!1329499)) b!7126749))

(declare-fun m!7843680 () Bool)

(assert (=> b!7126749 m!7843680))

(assert (=> b!7126594 d!2223732))

(assert (=> b!7126594 d!2223632))

(declare-fun d!2223734 () Bool)

(declare-fun lt!2563526 () Int)

(assert (=> d!2223734 (>= lt!2563526 0)))

(declare-fun e!4282815 () Int)

(assert (=> d!2223734 (= lt!2563526 e!4282815)))

(declare-fun c!1329500 () Bool)

(assert (=> d!2223734 (= c!1329500 (is-Nil!68980 s2Rec!140))))

(assert (=> d!2223734 (= (size!41461 s2Rec!140) lt!2563526)))

(declare-fun b!7126750 () Bool)

(assert (=> b!7126750 (= e!4282815 0)))

(declare-fun b!7126751 () Bool)

(assert (=> b!7126751 (= e!4282815 (+ 1 (size!41461 (t!383081 s2Rec!140))))))

(assert (= (and d!2223734 c!1329500) b!7126750))

(assert (= (and d!2223734 (not c!1329500)) b!7126751))

(declare-fun m!7843682 () Bool)

(assert (=> b!7126751 m!7843682))

(assert (=> b!7126594 d!2223734))

(declare-fun b!7126752 () Bool)

(declare-fun e!4282816 () Bool)

(declare-fun tp!1963256 () Bool)

(assert (=> b!7126752 (= e!4282816 (and tp_is_empty!45653 tp!1963256))))

(assert (=> b!7126627 (= tp!1963226 e!4282816)))

(assert (= (and b!7126627 (is-Cons!68980 (t!383081 (t!383081 s2Rec!140)))) b!7126752))

(declare-fun b!7126753 () Bool)

(declare-fun e!4282817 () Bool)

(declare-fun tp!1963257 () Bool)

(assert (=> b!7126753 (= e!4282817 (and tp_is_empty!45653 tp!1963257))))

(assert (=> b!7126632 (= tp!1963232 e!4282817)))

(assert (= (and b!7126632 (is-Cons!68980 (t!383081 (t!383081 s!7390)))) b!7126753))

(declare-fun b!7126754 () Bool)

(declare-fun e!4282818 () Bool)

(declare-fun tp!1963258 () Bool)

(assert (=> b!7126754 (= e!4282818 (and tp_is_empty!45653 tp!1963258))))

(assert (=> b!7126630 (= tp!1963230 e!4282818)))

(assert (= (and b!7126630 (is-Cons!68980 (t!383081 (t!383081 s2!1620)))) b!7126754))

(declare-fun b!7126768 () Bool)

(declare-fun e!4282821 () Bool)

(declare-fun tp!1963270 () Bool)

(declare-fun tp!1963269 () Bool)

(assert (=> b!7126768 (= e!4282821 (and tp!1963270 tp!1963269))))

(declare-fun b!7126765 () Bool)

(assert (=> b!7126765 (= e!4282821 tp_is_empty!45653)))

(assert (=> b!7126616 (= tp!1963214 e!4282821)))

(declare-fun b!7126766 () Bool)

(declare-fun tp!1963273 () Bool)

(declare-fun tp!1963271 () Bool)

(assert (=> b!7126766 (= e!4282821 (and tp!1963273 tp!1963271))))

(declare-fun b!7126767 () Bool)

(declare-fun tp!1963272 () Bool)

(assert (=> b!7126767 (= e!4282821 tp!1963272)))

(assert (= (and b!7126616 (is-ElementMatch!18026 (h!75427 (exprs!7520 setElem!51728)))) b!7126765))

(assert (= (and b!7126616 (is-Concat!26871 (h!75427 (exprs!7520 setElem!51728)))) b!7126766))

(assert (= (and b!7126616 (is-Star!18026 (h!75427 (exprs!7520 setElem!51728)))) b!7126767))

(assert (= (and b!7126616 (is-Union!18026 (h!75427 (exprs!7520 setElem!51728)))) b!7126768))

(declare-fun b!7126769 () Bool)

(declare-fun e!4282822 () Bool)

(declare-fun tp!1963274 () Bool)

(declare-fun tp!1963275 () Bool)

(assert (=> b!7126769 (= e!4282822 (and tp!1963274 tp!1963275))))

(assert (=> b!7126616 (= tp!1963215 e!4282822)))

(assert (= (and b!7126616 (is-Cons!68979 (t!383080 (exprs!7520 setElem!51728)))) b!7126769))

(declare-fun b!7126770 () Bool)

(declare-fun e!4282823 () Bool)

(declare-fun tp!1963276 () Bool)

(declare-fun tp!1963277 () Bool)

(assert (=> b!7126770 (= e!4282823 (and tp!1963276 tp!1963277))))

(assert (=> b!7126622 (= tp!1963223 e!4282823)))

(assert (= (and b!7126622 (is-Cons!68979 (exprs!7520 setElem!51739))) b!7126770))

(declare-fun condSetEmpty!51744 () Bool)

(assert (=> setNonEmpty!51739 (= condSetEmpty!51744 (= setRest!51739 (as set.empty (Set Context!14040))))))

(declare-fun setRes!51744 () Bool)

(assert (=> setNonEmpty!51739 (= tp!1963222 setRes!51744)))

(declare-fun setIsEmpty!51744 () Bool)

(assert (=> setIsEmpty!51744 setRes!51744))

(declare-fun e!4282824 () Bool)

(declare-fun tp!1963278 () Bool)

(declare-fun setNonEmpty!51744 () Bool)

(declare-fun setElem!51744 () Context!14040)

(assert (=> setNonEmpty!51744 (= setRes!51744 (and tp!1963278 (inv!88094 setElem!51744) e!4282824))))

(declare-fun setRest!51744 () (Set Context!14040))

(assert (=> setNonEmpty!51744 (= setRest!51739 (set.union (set.insert setElem!51744 (as set.empty (Set Context!14040))) setRest!51744))))

(declare-fun b!7126771 () Bool)

(declare-fun tp!1963279 () Bool)

(assert (=> b!7126771 (= e!4282824 tp!1963279)))

(assert (= (and setNonEmpty!51739 condSetEmpty!51744) setIsEmpty!51744))

(assert (= (and setNonEmpty!51739 (not condSetEmpty!51744)) setNonEmpty!51744))

(assert (= setNonEmpty!51744 b!7126771))

(declare-fun m!7843684 () Bool)

(assert (=> setNonEmpty!51744 m!7843684))

(declare-fun b!7126772 () Bool)

(declare-fun e!4282825 () Bool)

(declare-fun tp!1963280 () Bool)

(assert (=> b!7126772 (= e!4282825 (and tp_is_empty!45653 tp!1963280))))

(assert (=> b!7126628 (= tp!1963227 e!4282825)))

(assert (= (and b!7126628 (is-Cons!68980 (t!383081 (t!383081 s1!1688)))) b!7126772))

(declare-fun b!7126773 () Bool)

(declare-fun e!4282826 () Bool)

(declare-fun tp!1963281 () Bool)

(declare-fun tp!1963282 () Bool)

(assert (=> b!7126773 (= e!4282826 (and tp!1963281 tp!1963282))))

(assert (=> b!7126621 (= tp!1963221 e!4282826)))

(assert (= (and b!7126621 (is-Cons!68979 (exprs!7520 setElem!51738))) b!7126773))

(declare-fun b!7126774 () Bool)

(declare-fun e!4282827 () Bool)

(declare-fun tp!1963283 () Bool)

(assert (=> b!7126774 (= e!4282827 (and tp_is_empty!45653 tp!1963283))))

(assert (=> b!7126631 (= tp!1963231 e!4282827)))

(assert (= (and b!7126631 (is-Cons!68980 (t!383081 (t!383081 s1Rec!140)))) b!7126774))

(declare-fun condSetEmpty!51745 () Bool)

(assert (=> setNonEmpty!51738 (= condSetEmpty!51745 (= setRest!51738 (as set.empty (Set Context!14040))))))

(declare-fun setRes!51745 () Bool)

(assert (=> setNonEmpty!51738 (= tp!1963220 setRes!51745)))

(declare-fun setIsEmpty!51745 () Bool)

(assert (=> setIsEmpty!51745 setRes!51745))

(declare-fun setElem!51745 () Context!14040)

(declare-fun tp!1963284 () Bool)

(declare-fun e!4282828 () Bool)

(declare-fun setNonEmpty!51745 () Bool)

(assert (=> setNonEmpty!51745 (= setRes!51745 (and tp!1963284 (inv!88094 setElem!51745) e!4282828))))

(declare-fun setRest!51745 () (Set Context!14040))

(assert (=> setNonEmpty!51745 (= setRest!51738 (set.union (set.insert setElem!51745 (as set.empty (Set Context!14040))) setRest!51745))))

(declare-fun b!7126775 () Bool)

(declare-fun tp!1963285 () Bool)

(assert (=> b!7126775 (= e!4282828 tp!1963285)))

(assert (= (and setNonEmpty!51738 condSetEmpty!51745) setIsEmpty!51745))

(assert (= (and setNonEmpty!51738 (not condSetEmpty!51745)) setNonEmpty!51745))

(assert (= setNonEmpty!51745 b!7126775))

(declare-fun m!7843686 () Bool)

(assert (=> setNonEmpty!51745 m!7843686))

(declare-fun b!7126779 () Bool)

(declare-fun e!4282829 () Bool)

(declare-fun tp!1963287 () Bool)

(declare-fun tp!1963286 () Bool)

(assert (=> b!7126779 (= e!4282829 (and tp!1963287 tp!1963286))))

(declare-fun b!7126776 () Bool)

(assert (=> b!7126776 (= e!4282829 tp_is_empty!45653)))

(assert (=> b!7126629 (= tp!1963228 e!4282829)))

(declare-fun b!7126777 () Bool)

(declare-fun tp!1963290 () Bool)

(declare-fun tp!1963288 () Bool)

(assert (=> b!7126777 (= e!4282829 (and tp!1963290 tp!1963288))))

(declare-fun b!7126778 () Bool)

(declare-fun tp!1963289 () Bool)

(assert (=> b!7126778 (= e!4282829 tp!1963289)))

(assert (= (and b!7126629 (is-ElementMatch!18026 (h!75427 (exprs!7520 setElem!51729)))) b!7126776))

(assert (= (and b!7126629 (is-Concat!26871 (h!75427 (exprs!7520 setElem!51729)))) b!7126777))

(assert (= (and b!7126629 (is-Star!18026 (h!75427 (exprs!7520 setElem!51729)))) b!7126778))

(assert (= (and b!7126629 (is-Union!18026 (h!75427 (exprs!7520 setElem!51729)))) b!7126779))

(declare-fun b!7126780 () Bool)

(declare-fun e!4282830 () Bool)

(declare-fun tp!1963291 () Bool)

(declare-fun tp!1963292 () Bool)

(assert (=> b!7126780 (= e!4282830 (and tp!1963291 tp!1963292))))

(assert (=> b!7126629 (= tp!1963229 e!4282830)))

(assert (= (and b!7126629 (is-Cons!68979 (t!383080 (exprs!7520 setElem!51729)))) b!7126780))

(declare-fun b_lambda!271953 () Bool)

(assert (= b_lambda!271951 (or d!2223624 b_lambda!271953)))

(declare-fun bs!1886378 () Bool)

(declare-fun d!2223736 () Bool)

(assert (= bs!1886378 (and d!2223736 d!2223624)))

(declare-fun validRegex!9265 (Regex!18026) Bool)

(assert (=> bs!1886378 (= (dynLambda!28109 lambda!433011 (h!75427 (exprs!7520 setElem!51728))) (validRegex!9265 (h!75427 (exprs!7520 setElem!51728))))))

(declare-fun m!7843688 () Bool)

(assert (=> bs!1886378 m!7843688))

(assert (=> b!7126744 d!2223736))

(declare-fun b_lambda!271955 () Bool)

(assert (= b_lambda!271949 (or d!2223620 b_lambda!271955)))

(declare-fun bs!1886379 () Bool)

(declare-fun d!2223738 () Bool)

(assert (= bs!1886379 (and d!2223738 d!2223620)))

(assert (=> bs!1886379 (= (dynLambda!28109 lambda!433010 (h!75427 (exprs!7520 setElem!51729))) (validRegex!9265 (h!75427 (exprs!7520 setElem!51729))))))

(declare-fun m!7843690 () Bool)

(assert (=> bs!1886379 m!7843690))

(assert (=> b!7126710 d!2223738))

(push 1)

(assert (not b!7126701))

(assert (not b!7126720))

(assert (not b!7126773))

(assert (not d!2223688))

(assert (not bs!1886379))

(assert (not b!7126772))

(assert (not b!7126752))

(assert (not d!2223668))

(assert (not d!2223730))

(assert (not d!2223682))

(assert (not d!2223654))

(assert (not b!7126753))

(assert (not b!7126741))

(assert (not d!2223728))

(assert (not b!7126768))

(assert (not d!2223720))

(assert (not b!7126731))

(assert (not bs!1886378))

(assert (not b!7126693))

(assert (not b!7126735))

(assert (not d!2223674))

(assert (not setNonEmpty!51745))

(assert (not d!2223672))

(assert (not b!7126770))

(assert (not b!7126721))

(assert (not b!7126727))

(assert (not b!7126697))

(assert (not b!7126745))

(assert (not d!2223652))

(assert (not b_lambda!271955))

(assert (not b!7126694))

(assert (not b!7126775))

(assert (not b!7126751))

(assert (not b!7126749))

(assert (not b!7126767))

(assert (not b!7126780))

(assert tp_is_empty!45653)

(assert (not d!2223664))

(assert (not b!7126746))

(assert (not b!7126716))

(assert (not d!2223718))

(assert (not b!7126719))

(assert (not b!7126766))

(assert (not b!7126733))

(assert (not setNonEmpty!51744))

(assert (not b!7126779))

(assert (not b!7126774))

(assert (not b_lambda!271953))

(assert (not b!7126737))

(assert (not b!7126743))

(assert (not b!7126739))

(assert (not b!7126742))

(assert (not b!7126778))

(assert (not b!7126777))

(assert (not b!7126713))

(assert (not b!7126729))

(assert (not b!7126717))

(assert (not b!7126702))

(assert (not b!7126711))

(assert (not b!7126747))

(assert (not d!2223706))

(assert (not b!7126712))

(assert (not b!7126705))

(assert (not b!7126769))

(assert (not b!7126771))

(assert (not b!7126699))

(assert (not b!7126754))

(assert (not d!2223680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

