; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212606 () Bool)

(assert start!212606)

(declare-fun b!2192380 () Bool)

(declare-fun e!1401087 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2192380 (= e!1401087 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192381 () Bool)

(declare-fun res!942552 () Bool)

(declare-fun e!1401090 () Bool)

(assert (=> b!2192381 (=> (not res!942552) (not e!1401090))))

(declare-fun e!1401093 () Bool)

(assert (=> b!2192381 (= res!942552 e!1401093)))

(declare-fun res!942553 () Bool)

(assert (=> b!2192381 (=> res!942553 e!1401093)))

(declare-fun lt!819672 () Int)

(assert (=> b!2192381 (= res!942553 (= from!1114 lt!819672))))

(declare-fun b!2192382 () Bool)

(declare-fun res!942555 () Bool)

(assert (=> b!2192382 (=> (not res!942555) (not e!1401090))))

(assert (=> b!2192382 (= res!942555 e!1401087)))

(declare-fun res!942551 () Bool)

(assert (=> b!2192382 (=> res!942551 e!1401087)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12408 0))(
  ( (C!12409 (val!7190 Int)) )
))
(declare-datatypes ((Regex!6131 0))(
  ( (ElementMatch!6131 (c!348720 C!12408)) (Concat!10433 (regOne!12774 Regex!6131) (regTwo!12774 Regex!6131)) (EmptyExpr!6131) (Star!6131 (reg!6460 Regex!6131)) (EmptyLang!6131) (Union!6131 (regOne!12775 Regex!6131) (regTwo!12775 Regex!6131)) )
))
(declare-datatypes ((List!25536 0))(
  ( (Nil!25452) (Cons!25452 (h!30853 Regex!6131) (t!198134 List!25536)) )
))
(declare-datatypes ((Context!3402 0))(
  ( (Context!3403 (exprs!2201 List!25536)) )
))
(declare-fun z!3955 () (InoxSet Context!3402))

(declare-fun nullableZipper!411 ((InoxSet Context!3402)) Bool)

(assert (=> b!2192382 (= res!942551 (not (nullableZipper!411 z!3955)))))

(declare-fun b!2192383 () Bool)

(declare-fun lostCauseZipper!249 ((InoxSet Context!3402)) Bool)

(assert (=> b!2192383 (= e!1401093 (lostCauseZipper!249 z!3955))))

(declare-datatypes ((List!25537 0))(
  ( (Nil!25453) (Cons!25453 (h!30854 C!12408) (t!198135 List!25537)) )
))
(declare-datatypes ((IArray!16539 0))(
  ( (IArray!16540 (innerList!8327 List!25537)) )
))
(declare-datatypes ((Conc!8267 0))(
  ( (Node!8267 (left!19527 Conc!8267) (right!19857 Conc!8267) (csize!16764 Int) (cheight!8478 Int)) (Leaf!12100 (xs!11209 IArray!16539) (csize!16765 Int)) (Empty!8267) )
))
(declare-datatypes ((BalanceConc!16296 0))(
  ( (BalanceConc!16297 (c!348721 Conc!8267)) )
))
(declare-fun totalInput!923 () BalanceConc!16296)

(declare-fun b!2192384 () Bool)

(declare-fun lt!819673 () Int)

(declare-fun e!1401088 () Bool)

(declare-fun matchZipper!229 ((InoxSet Context!3402) List!25537) Bool)

(declare-fun take!321 (List!25537 Int) List!25537)

(declare-fun drop!1331 (List!25537 Int) List!25537)

(declare-fun list!9777 (BalanceConc!16296) List!25537)

(assert (=> b!2192384 (= e!1401088 (not (matchZipper!229 z!3955 (take!321 (drop!1331 (list!9777 totalInput!923) from!1114) lt!819673))))))

(declare-fun res!942549 () Bool)

(declare-fun e!1401086 () Bool)

(assert (=> start!212606 (=> (not res!942549) (not e!1401086))))

(assert (=> start!212606 (= res!942549 (>= from!1114 0))))

(assert (=> start!212606 e!1401086))

(assert (=> start!212606 true))

(declare-fun e!1401089 () Bool)

(declare-fun inv!33995 (BalanceConc!16296) Bool)

(assert (=> start!212606 (and (inv!33995 totalInput!923) e!1401089)))

(declare-fun condSetEmpty!18624 () Bool)

(assert (=> start!212606 (= condSetEmpty!18624 (= z!3955 ((as const (Array Context!3402 Bool)) false)))))

(declare-fun setRes!18624 () Bool)

(assert (=> start!212606 setRes!18624))

(declare-fun b!2192385 () Bool)

(declare-fun e!1401091 () Bool)

(declare-fun tp!683312 () Bool)

(assert (=> b!2192385 (= e!1401091 tp!683312)))

(declare-fun b!2192386 () Bool)

(declare-fun e!1401092 () Bool)

(assert (=> b!2192386 (= e!1401092 e!1401088)))

(declare-fun res!942548 () Bool)

(assert (=> b!2192386 (=> (not res!942548) (not e!1401088))))

(assert (=> b!2192386 (= res!942548 (> lt!819673 0))))

(declare-fun lt!819674 () Int)

(assert (=> b!2192386 (= lt!819673 (+ 1 (- lt!819674 from!1114)))))

(declare-fun b!2192387 () Bool)

(assert (=> b!2192387 (= e!1401090 e!1401092)))

(declare-fun res!942554 () Bool)

(assert (=> b!2192387 (=> (not res!942554) (not e!1401092))))

(assert (=> b!2192387 (= res!942554 (= lt!819674 lastNullablePos!193))))

(declare-fun furthestNullablePosition!301 ((InoxSet Context!3402) Int BalanceConc!16296 Int Int) Int)

(assert (=> b!2192387 (= lt!819674 (furthestNullablePosition!301 z!3955 from!1114 totalInput!923 lt!819672 lastNullablePos!193))))

(declare-fun setIsEmpty!18624 () Bool)

(assert (=> setIsEmpty!18624 setRes!18624))

(declare-fun b!2192388 () Bool)

(declare-fun tp!683314 () Bool)

(declare-fun inv!33996 (Conc!8267) Bool)

(assert (=> b!2192388 (= e!1401089 (and (inv!33996 (c!348721 totalInput!923)) tp!683314))))

(declare-fun tp!683313 () Bool)

(declare-fun setNonEmpty!18624 () Bool)

(declare-fun setElem!18624 () Context!3402)

(declare-fun inv!33997 (Context!3402) Bool)

(assert (=> setNonEmpty!18624 (= setRes!18624 (and tp!683313 (inv!33997 setElem!18624) e!1401091))))

(declare-fun setRest!18624 () (InoxSet Context!3402))

(assert (=> setNonEmpty!18624 (= z!3955 ((_ map or) (store ((as const (Array Context!3402 Bool)) false) setElem!18624 true) setRest!18624))))

(declare-fun b!2192389 () Bool)

(assert (=> b!2192389 (= e!1401086 e!1401090)))

(declare-fun res!942550 () Bool)

(assert (=> b!2192389 (=> (not res!942550) (not e!1401090))))

(assert (=> b!2192389 (= res!942550 (and (<= from!1114 lt!819672) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19853 (BalanceConc!16296) Int)

(assert (=> b!2192389 (= lt!819672 (size!19853 totalInput!923))))

(assert (= (and start!212606 res!942549) b!2192389))

(assert (= (and b!2192389 res!942550) b!2192382))

(assert (= (and b!2192382 (not res!942551)) b!2192380))

(assert (= (and b!2192382 res!942555) b!2192381))

(assert (= (and b!2192381 (not res!942553)) b!2192383))

(assert (= (and b!2192381 res!942552) b!2192387))

(assert (= (and b!2192387 res!942554) b!2192386))

(assert (= (and b!2192386 res!942548) b!2192384))

(assert (= start!212606 b!2192388))

(assert (= (and start!212606 condSetEmpty!18624) setIsEmpty!18624))

(assert (= (and start!212606 (not condSetEmpty!18624)) setNonEmpty!18624))

(assert (= setNonEmpty!18624 b!2192385))

(declare-fun m!2635089 () Bool)

(assert (=> b!2192384 m!2635089))

(assert (=> b!2192384 m!2635089))

(declare-fun m!2635091 () Bool)

(assert (=> b!2192384 m!2635091))

(assert (=> b!2192384 m!2635091))

(declare-fun m!2635093 () Bool)

(assert (=> b!2192384 m!2635093))

(assert (=> b!2192384 m!2635093))

(declare-fun m!2635095 () Bool)

(assert (=> b!2192384 m!2635095))

(declare-fun m!2635097 () Bool)

(assert (=> b!2192383 m!2635097))

(declare-fun m!2635099 () Bool)

(assert (=> b!2192382 m!2635099))

(declare-fun m!2635101 () Bool)

(assert (=> b!2192389 m!2635101))

(declare-fun m!2635103 () Bool)

(assert (=> b!2192388 m!2635103))

(declare-fun m!2635105 () Bool)

(assert (=> start!212606 m!2635105))

(declare-fun m!2635107 () Bool)

(assert (=> b!2192387 m!2635107))

(declare-fun m!2635109 () Bool)

(assert (=> setNonEmpty!18624 m!2635109))

(check-sat (not b!2192388) (not b!2192382) (not b!2192387) (not b!2192383) (not b!2192389) (not start!212606) (not b!2192384) (not b!2192385) (not setNonEmpty!18624))
(check-sat)
