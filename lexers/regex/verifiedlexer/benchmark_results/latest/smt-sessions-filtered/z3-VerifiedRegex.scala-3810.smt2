; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212490 () Bool)

(assert start!212490)

(declare-fun b!2190464 () Bool)

(declare-fun e!1399759 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190464 (= e!1399759 lastNullablePos!193)))

(declare-fun setIsEmpty!18486 () Bool)

(declare-fun setRes!18486 () Bool)

(assert (=> setIsEmpty!18486 setRes!18486))

(declare-fun b!2190465 () Bool)

(declare-fun e!1399763 () Bool)

(declare-fun e!1399761 () Bool)

(assert (=> b!2190465 (= e!1399763 e!1399761)))

(declare-fun res!941257 () Bool)

(assert (=> b!2190465 (=> (not res!941257) (not e!1399761))))

(declare-fun lt!818394 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2190465 (= res!941257 (and (<= from!1114 lt!818394) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12320 0))(
  ( (C!12321 (val!7146 Int)) )
))
(declare-datatypes ((List!25447 0))(
  ( (Nil!25363) (Cons!25363 (h!30764 C!12320) (t!198045 List!25447)) )
))
(declare-datatypes ((IArray!16451 0))(
  ( (IArray!16452 (innerList!8283 List!25447)) )
))
(declare-datatypes ((Conc!8223 0))(
  ( (Node!8223 (left!19461 Conc!8223) (right!19791 Conc!8223) (csize!16676 Int) (cheight!8434 Int)) (Leaf!12034 (xs!11165 IArray!16451) (csize!16677 Int)) (Empty!8223) )
))
(declare-datatypes ((BalanceConc!16208 0))(
  ( (BalanceConc!16209 (c!348456 Conc!8223)) )
))
(declare-fun totalInput!923 () BalanceConc!16208)

(declare-fun size!19803 (BalanceConc!16208) Int)

(assert (=> b!2190465 (= lt!818394 (size!19803 totalInput!923))))

(declare-fun b!2190466 () Bool)

(assert (=> b!2190466 (= e!1399759 from!1114)))

(declare-fun b!2190467 () Bool)

(declare-fun e!1399760 () Bool)

(assert (=> b!2190467 (= e!1399760 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setNonEmpty!18486 () Bool)

(declare-datatypes ((Regex!6087 0))(
  ( (ElementMatch!6087 (c!348457 C!12320)) (Concat!10389 (regOne!12686 Regex!6087) (regTwo!12686 Regex!6087)) (EmptyExpr!6087) (Star!6087 (reg!6416 Regex!6087)) (EmptyLang!6087) (Union!6087 (regOne!12687 Regex!6087) (regTwo!12687 Regex!6087)) )
))
(declare-datatypes ((List!25448 0))(
  ( (Nil!25364) (Cons!25364 (h!30765 Regex!6087) (t!198046 List!25448)) )
))
(declare-datatypes ((Context!3314 0))(
  ( (Context!3315 (exprs!2157 List!25448)) )
))
(declare-fun setElem!18486 () Context!3314)

(declare-fun e!1399764 () Bool)

(declare-fun tp!682876 () Bool)

(declare-fun inv!33792 (Context!3314) Bool)

(assert (=> setNonEmpty!18486 (= setRes!18486 (and tp!682876 (inv!33792 setElem!18486) e!1399764))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3314))

(declare-fun setRest!18486 () (InoxSet Context!3314))

(assert (=> setNonEmpty!18486 (= z!3955 ((_ map or) (store ((as const (Array Context!3314 Bool)) false) setElem!18486 true) setRest!18486))))

(declare-fun b!2190468 () Bool)

(declare-fun lt!818393 () (InoxSet Context!3314))

(declare-fun e!1399758 () Bool)

(declare-fun lt!818396 () Int)

(declare-fun matchZipper!187 ((InoxSet Context!3314) List!25447) Bool)

(declare-fun take!279 (List!25447 Int) List!25447)

(declare-fun drop!1289 (List!25447 Int) List!25447)

(declare-fun list!9734 (BalanceConc!16208) List!25447)

(assert (=> b!2190468 (= e!1399758 (matchZipper!187 lt!818393 (take!279 (drop!1289 (list!9734 totalInput!923) (+ 1 from!1114)) lt!818396)))))

(declare-fun b!2190469 () Bool)

(declare-fun e!1399765 () Bool)

(assert (=> b!2190469 (= e!1399761 e!1399765)))

(declare-fun res!941256 () Bool)

(assert (=> b!2190469 (=> (not res!941256) (not e!1399765))))

(declare-fun lt!818390 () Int)

(declare-fun lt!818391 () Int)

(assert (=> b!2190469 (= res!941256 (= lt!818390 lt!818391))))

(declare-fun lt!818395 () Int)

(declare-fun furthestNullablePosition!257 ((InoxSet Context!3314) Int BalanceConc!16208 Int Int) Int)

(assert (=> b!2190469 (= lt!818391 (furthestNullablePosition!257 lt!818393 (+ 1 from!1114) totalInput!923 lt!818394 lt!818395))))

(assert (=> b!2190469 (= lt!818390 (furthestNullablePosition!257 z!3955 from!1114 totalInput!923 lt!818394 lastNullablePos!193))))

(assert (=> b!2190469 (= lt!818395 e!1399759)))

(declare-fun c!348455 () Bool)

(declare-fun nullableZipper!367 ((InoxSet Context!3314)) Bool)

(assert (=> b!2190469 (= c!348455 (nullableZipper!367 lt!818393))))

(declare-fun derivationStepZipper!164 ((InoxSet Context!3314) C!12320) (InoxSet Context!3314))

(declare-fun apply!6120 (BalanceConc!16208 Int) C!12320)

(assert (=> b!2190469 (= lt!818393 (derivationStepZipper!164 z!3955 (apply!6120 totalInput!923 from!1114)))))

(declare-fun b!2190470 () Bool)

(declare-fun e!1399762 () Bool)

(declare-fun tp!682874 () Bool)

(declare-fun inv!33793 (Conc!8223) Bool)

(assert (=> b!2190470 (= e!1399762 (and (inv!33793 (c!348456 totalInput!923)) tp!682874))))

(declare-fun b!2190471 () Bool)

(declare-fun res!941258 () Bool)

(assert (=> b!2190471 (=> (not res!941258) (not e!1399761))))

(assert (=> b!2190471 (= res!941258 (not (= from!1114 lt!818394)))))

(declare-fun b!2190472 () Bool)

(declare-fun res!941252 () Bool)

(assert (=> b!2190472 (=> (not res!941252) (not e!1399761))))

(assert (=> b!2190472 (= res!941252 e!1399760)))

(declare-fun res!941259 () Bool)

(assert (=> b!2190472 (=> res!941259 e!1399760)))

(assert (=> b!2190472 (= res!941259 (not (nullableZipper!367 z!3955)))))

(declare-fun b!2190473 () Bool)

(declare-fun res!941254 () Bool)

(assert (=> b!2190473 (=> (not res!941254) (not e!1399761))))

(declare-fun lostCauseZipper!205 ((InoxSet Context!3314)) Bool)

(assert (=> b!2190473 (= res!941254 (not (lostCauseZipper!205 z!3955)))))

(declare-fun b!2190474 () Bool)

(assert (=> b!2190474 (= e!1399765 (not (or (> lt!818396 0) (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818394)))))))

(assert (=> b!2190474 e!1399758))

(declare-fun res!941255 () Bool)

(assert (=> b!2190474 (=> res!941255 e!1399758)))

(assert (=> b!2190474 (= res!941255 (<= lt!818396 0))))

(assert (=> b!2190474 (= lt!818396 (+ 1 (- lt!818391 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38469 0))(
  ( (Unit!38470) )
))
(declare-fun lt!818392 () Unit!38469)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!92 ((InoxSet Context!3314) Int BalanceConc!16208 Int) Unit!38469)

(assert (=> b!2190474 (= lt!818392 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!92 lt!818393 (+ 1 from!1114) totalInput!923 lt!818395))))

(declare-fun b!2190475 () Bool)

(declare-fun tp!682875 () Bool)

(assert (=> b!2190475 (= e!1399764 tp!682875)))

(declare-fun res!941253 () Bool)

(assert (=> start!212490 (=> (not res!941253) (not e!1399763))))

(assert (=> start!212490 (= res!941253 (>= from!1114 0))))

(assert (=> start!212490 e!1399763))

(assert (=> start!212490 true))

(declare-fun inv!33794 (BalanceConc!16208) Bool)

(assert (=> start!212490 (and (inv!33794 totalInput!923) e!1399762)))

(declare-fun condSetEmpty!18486 () Bool)

(assert (=> start!212490 (= condSetEmpty!18486 (= z!3955 ((as const (Array Context!3314 Bool)) false)))))

(assert (=> start!212490 setRes!18486))

(assert (= (and start!212490 res!941253) b!2190465))

(assert (= (and b!2190465 res!941257) b!2190472))

(assert (= (and b!2190472 (not res!941259)) b!2190467))

(assert (= (and b!2190472 res!941252) b!2190471))

(assert (= (and b!2190471 res!941258) b!2190473))

(assert (= (and b!2190473 res!941254) b!2190469))

(assert (= (and b!2190469 c!348455) b!2190466))

(assert (= (and b!2190469 (not c!348455)) b!2190464))

(assert (= (and b!2190469 res!941256) b!2190474))

(assert (= (and b!2190474 (not res!941255)) b!2190468))

(assert (= start!212490 b!2190470))

(assert (= (and start!212490 condSetEmpty!18486) setIsEmpty!18486))

(assert (= (and start!212490 (not condSetEmpty!18486)) setNonEmpty!18486))

(assert (= setNonEmpty!18486 b!2190475))

(declare-fun m!2633347 () Bool)

(assert (=> b!2190474 m!2633347))

(declare-fun m!2633349 () Bool)

(assert (=> b!2190468 m!2633349))

(assert (=> b!2190468 m!2633349))

(declare-fun m!2633351 () Bool)

(assert (=> b!2190468 m!2633351))

(assert (=> b!2190468 m!2633351))

(declare-fun m!2633353 () Bool)

(assert (=> b!2190468 m!2633353))

(assert (=> b!2190468 m!2633353))

(declare-fun m!2633355 () Bool)

(assert (=> b!2190468 m!2633355))

(declare-fun m!2633357 () Bool)

(assert (=> b!2190469 m!2633357))

(declare-fun m!2633359 () Bool)

(assert (=> b!2190469 m!2633359))

(declare-fun m!2633361 () Bool)

(assert (=> b!2190469 m!2633361))

(declare-fun m!2633363 () Bool)

(assert (=> b!2190469 m!2633363))

(assert (=> b!2190469 m!2633361))

(declare-fun m!2633365 () Bool)

(assert (=> b!2190469 m!2633365))

(declare-fun m!2633367 () Bool)

(assert (=> setNonEmpty!18486 m!2633367))

(declare-fun m!2633369 () Bool)

(assert (=> start!212490 m!2633369))

(declare-fun m!2633371 () Bool)

(assert (=> b!2190470 m!2633371))

(declare-fun m!2633373 () Bool)

(assert (=> b!2190465 m!2633373))

(declare-fun m!2633375 () Bool)

(assert (=> b!2190472 m!2633375))

(declare-fun m!2633377 () Bool)

(assert (=> b!2190473 m!2633377))

(check-sat (not b!2190469) (not start!212490) (not b!2190474) (not b!2190468) (not b!2190475) (not b!2190470) (not b!2190473) (not b!2190472) (not setNonEmpty!18486) (not b!2190465))
(check-sat)
