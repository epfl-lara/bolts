; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212802 () Bool)

(assert start!212802)

(declare-datatypes ((C!12456 0))(
  ( (C!12457 (val!7214 Int)) )
))
(declare-datatypes ((List!25590 0))(
  ( (Nil!25506) (Cons!25506 (h!30907 C!12456) (t!198188 List!25590)) )
))
(declare-datatypes ((IArray!16587 0))(
  ( (IArray!16588 (innerList!8351 List!25590)) )
))
(declare-datatypes ((Conc!8291 0))(
  ( (Node!8291 (left!19575 Conc!8291) (right!19905 Conc!8291) (csize!16812 Int) (cheight!8502 Int)) (Leaf!12136 (xs!11233 IArray!16587) (csize!16813 Int)) (Empty!8291) )
))
(declare-datatypes ((BalanceConc!16344 0))(
  ( (BalanceConc!16345 (c!349110 Conc!8291)) )
))
(declare-fun totalInput!923 () BalanceConc!16344)

(declare-fun e!1402083 () Bool)

(declare-fun b!2193900 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6155 0))(
  ( (ElementMatch!6155 (c!349111 C!12456)) (Concat!10457 (regOne!12822 Regex!6155) (regTwo!12822 Regex!6155)) (EmptyExpr!6155) (Star!6155 (reg!6484 Regex!6155)) (EmptyLang!6155) (Union!6155 (regOne!12823 Regex!6155) (regTwo!12823 Regex!6155)) )
))
(declare-datatypes ((List!25591 0))(
  ( (Nil!25507) (Cons!25507 (h!30908 Regex!6155) (t!198189 List!25591)) )
))
(declare-datatypes ((Context!3450 0))(
  ( (Context!3451 (exprs!2225 List!25591)) )
))
(declare-fun lt!820455 () (InoxSet Context!3450))

(declare-fun from!1114 () Int)

(declare-fun lt!820456 () Int)

(declare-fun matchZipper!251 ((InoxSet Context!3450) List!25590) Bool)

(declare-fun take!343 (List!25590 Int) List!25590)

(declare-fun drop!1353 (List!25590 Int) List!25590)

(declare-fun list!9805 (BalanceConc!16344) List!25590)

(assert (=> b!2193900 (= e!1402083 (matchZipper!251 lt!820455 (take!343 (drop!1353 (list!9805 totalInput!923) (+ 1 from!1114)) lt!820456)))))

(declare-fun b!2193901 () Bool)

(declare-fun e!1402082 () Bool)

(declare-fun e!1402085 () Bool)

(assert (=> b!2193901 (= e!1402082 e!1402085)))

(declare-fun res!943251 () Bool)

(assert (=> b!2193901 (=> (not res!943251) (not e!1402085))))

(declare-fun lt!820452 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193901 (= res!943251 (and (<= from!1114 lt!820452) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19889 (BalanceConc!16344) Int)

(assert (=> b!2193901 (= lt!820452 (size!19889 totalInput!923))))

(declare-fun res!943250 () Bool)

(assert (=> start!212802 (=> (not res!943250) (not e!1402082))))

(assert (=> start!212802 (= res!943250 (>= from!1114 0))))

(assert (=> start!212802 e!1402082))

(assert (=> start!212802 true))

(declare-fun e!1402086 () Bool)

(declare-fun inv!34120 (BalanceConc!16344) Bool)

(assert (=> start!212802 (and (inv!34120 totalInput!923) e!1402086)))

(declare-fun condSetEmpty!18714 () Bool)

(declare-fun z!3955 () (InoxSet Context!3450))

(assert (=> start!212802 (= condSetEmpty!18714 (= z!3955 ((as const (Array Context!3450 Bool)) false)))))

(declare-fun setRes!18714 () Bool)

(assert (=> start!212802 setRes!18714))

(declare-fun b!2193902 () Bool)

(declare-fun res!943249 () Bool)

(assert (=> b!2193902 (=> (not res!943249) (not e!1402085))))

(declare-fun lostCauseZipper!273 ((InoxSet Context!3450)) Bool)

(assert (=> b!2193902 (= res!943249 (not (lostCauseZipper!273 z!3955)))))

(declare-fun b!2193903 () Bool)

(declare-fun e!1402081 () Int)

(assert (=> b!2193903 (= e!1402081 lastNullablePos!193)))

(declare-fun b!2193904 () Bool)

(assert (=> b!2193904 (= e!1402081 from!1114)))

(declare-fun b!2193905 () Bool)

(declare-fun e!1402080 () Bool)

(assert (=> b!2193905 (= e!1402085 e!1402080)))

(declare-fun res!943248 () Bool)

(assert (=> b!2193905 (=> (not res!943248) (not e!1402080))))

(declare-fun lt!820457 () Int)

(declare-fun lt!820454 () Int)

(assert (=> b!2193905 (= res!943248 (= lt!820457 lt!820454))))

(declare-fun lt!820458 () Int)

(declare-fun furthestNullablePosition!325 ((InoxSet Context!3450) Int BalanceConc!16344 Int Int) Int)

(assert (=> b!2193905 (= lt!820454 (furthestNullablePosition!325 lt!820455 (+ 1 from!1114) totalInput!923 lt!820452 lt!820458))))

(assert (=> b!2193905 (= lt!820457 (furthestNullablePosition!325 z!3955 from!1114 totalInput!923 lt!820452 lastNullablePos!193))))

(assert (=> b!2193905 (= lt!820458 e!1402081)))

(declare-fun c!349109 () Bool)

(declare-fun nullableZipper!435 ((InoxSet Context!3450)) Bool)

(assert (=> b!2193905 (= c!349109 (nullableZipper!435 lt!820455))))

(declare-fun derivationStepZipper!229 ((InoxSet Context!3450) C!12456) (InoxSet Context!3450))

(declare-fun apply!6209 (BalanceConc!16344 Int) C!12456)

(assert (=> b!2193905 (= lt!820455 (derivationStepZipper!229 z!3955 (apply!6209 totalInput!923 from!1114)))))

(declare-fun b!2193906 () Bool)

(declare-fun e!1402084 () Bool)

(assert (=> b!2193906 (= e!1402084 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun tp!683654 () Bool)

(declare-fun e!1402087 () Bool)

(declare-fun setElem!18714 () Context!3450)

(declare-fun setNonEmpty!18714 () Bool)

(declare-fun inv!34121 (Context!3450) Bool)

(assert (=> setNonEmpty!18714 (= setRes!18714 (and tp!683654 (inv!34121 setElem!18714) e!1402087))))

(declare-fun setRest!18714 () (InoxSet Context!3450))

(assert (=> setNonEmpty!18714 (= z!3955 ((_ map or) (store ((as const (Array Context!3450 Bool)) false) setElem!18714 true) setRest!18714))))

(declare-fun b!2193907 () Bool)

(declare-fun res!943252 () Bool)

(assert (=> b!2193907 (=> (not res!943252) (not e!1402085))))

(assert (=> b!2193907 (= res!943252 e!1402084)))

(declare-fun res!943253 () Bool)

(assert (=> b!2193907 (=> res!943253 e!1402084)))

(assert (=> b!2193907 (= res!943253 (not (nullableZipper!435 z!3955)))))

(declare-fun setIsEmpty!18714 () Bool)

(assert (=> setIsEmpty!18714 setRes!18714))

(declare-fun b!2193908 () Bool)

(declare-fun tp!683656 () Bool)

(assert (=> b!2193908 (= e!1402087 tp!683656)))

(declare-fun b!2193909 () Bool)

(assert (=> b!2193909 (= e!1402080 (not (or (> lt!820456 0) (> lt!820454 from!1114) (< lt!820454 lt!820458) (< lt!820458 lastNullablePos!193) (> lt!820458 from!1114) (and (not (= lt!820458 from!1114)) (not (= lt!820458 lastNullablePos!193))) (not (= lt!820458 lastNullablePos!193)) (>= lt!820458 from!1114) (> lt!820457 from!1114) (let ((bdg!83001 (+ 1 (- lt!820457 from!1114)))) (or (> bdg!83001 1) (= bdg!83001 1) (<= bdg!83001 0))))))))

(assert (=> b!2193909 e!1402083))

(declare-fun res!943254 () Bool)

(assert (=> b!2193909 (=> res!943254 e!1402083)))

(assert (=> b!2193909 (= res!943254 (<= lt!820456 0))))

(assert (=> b!2193909 (= lt!820456 (+ 1 (- lt!820454 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38625 0))(
  ( (Unit!38626) )
))
(declare-fun lt!820453 () Unit!38625)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!154 ((InoxSet Context!3450) Int BalanceConc!16344 Int) Unit!38625)

(assert (=> b!2193909 (= lt!820453 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!154 lt!820455 (+ 1 from!1114) totalInput!923 lt!820458))))

(declare-fun b!2193910 () Bool)

(declare-fun tp!683655 () Bool)

(declare-fun inv!34122 (Conc!8291) Bool)

(assert (=> b!2193910 (= e!1402086 (and (inv!34122 (c!349110 totalInput!923)) tp!683655))))

(declare-fun b!2193911 () Bool)

(declare-fun res!943255 () Bool)

(assert (=> b!2193911 (=> (not res!943255) (not e!1402085))))

(assert (=> b!2193911 (= res!943255 (not (= from!1114 lt!820452)))))

(assert (= (and start!212802 res!943250) b!2193901))

(assert (= (and b!2193901 res!943251) b!2193907))

(assert (= (and b!2193907 (not res!943253)) b!2193906))

(assert (= (and b!2193907 res!943252) b!2193911))

(assert (= (and b!2193911 res!943255) b!2193902))

(assert (= (and b!2193902 res!943249) b!2193905))

(assert (= (and b!2193905 c!349109) b!2193904))

(assert (= (and b!2193905 (not c!349109)) b!2193903))

(assert (= (and b!2193905 res!943248) b!2193909))

(assert (= (and b!2193909 (not res!943254)) b!2193900))

(assert (= start!212802 b!2193910))

(assert (= (and start!212802 condSetEmpty!18714) setIsEmpty!18714))

(assert (= (and start!212802 (not condSetEmpty!18714)) setNonEmpty!18714))

(assert (= setNonEmpty!18714 b!2193908))

(declare-fun m!2636403 () Bool)

(assert (=> b!2193905 m!2636403))

(declare-fun m!2636405 () Bool)

(assert (=> b!2193905 m!2636405))

(declare-fun m!2636407 () Bool)

(assert (=> b!2193905 m!2636407))

(assert (=> b!2193905 m!2636405))

(declare-fun m!2636409 () Bool)

(assert (=> b!2193905 m!2636409))

(declare-fun m!2636411 () Bool)

(assert (=> b!2193905 m!2636411))

(declare-fun m!2636413 () Bool)

(assert (=> b!2193907 m!2636413))

(declare-fun m!2636415 () Bool)

(assert (=> b!2193901 m!2636415))

(declare-fun m!2636417 () Bool)

(assert (=> start!212802 m!2636417))

(declare-fun m!2636419 () Bool)

(assert (=> setNonEmpty!18714 m!2636419))

(declare-fun m!2636421 () Bool)

(assert (=> b!2193909 m!2636421))

(declare-fun m!2636423 () Bool)

(assert (=> b!2193902 m!2636423))

(declare-fun m!2636425 () Bool)

(assert (=> b!2193900 m!2636425))

(assert (=> b!2193900 m!2636425))

(declare-fun m!2636427 () Bool)

(assert (=> b!2193900 m!2636427))

(assert (=> b!2193900 m!2636427))

(declare-fun m!2636429 () Bool)

(assert (=> b!2193900 m!2636429))

(assert (=> b!2193900 m!2636429))

(declare-fun m!2636431 () Bool)

(assert (=> b!2193900 m!2636431))

(declare-fun m!2636433 () Bool)

(assert (=> b!2193910 m!2636433))

(check-sat (not b!2193902) (not b!2193901) (not b!2193910) (not start!212802) (not setNonEmpty!18714) (not b!2193900) (not b!2193909) (not b!2193907) (not b!2193908) (not b!2193905))
(check-sat)
