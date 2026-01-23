; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212550 () Bool)

(assert start!212550)

(declare-datatypes ((C!12380 0))(
  ( (C!12381 (val!7176 Int)) )
))
(declare-datatypes ((List!25507 0))(
  ( (Nil!25423) (Cons!25423 (h!30824 C!12380) (t!198105 List!25507)) )
))
(declare-datatypes ((IArray!16511 0))(
  ( (IArray!16512 (innerList!8313 List!25507)) )
))
(declare-datatypes ((Conc!8253 0))(
  ( (Node!8253 (left!19506 Conc!8253) (right!19836 Conc!8253) (csize!16736 Int) (cheight!8464 Int)) (Leaf!12079 (xs!11195 IArray!16511) (csize!16737 Int)) (Empty!8253) )
))
(declare-datatypes ((BalanceConc!16268 0))(
  ( (BalanceConc!16269 (c!348618 Conc!8253)) )
))
(declare-fun totalInput!923 () BalanceConc!16268)

(declare-fun lt!819188 () Int)

(declare-fun b!2191689 () Bool)

(declare-fun from!1114 () Int)

(declare-fun e!1400611 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6117 0))(
  ( (ElementMatch!6117 (c!348619 C!12380)) (Concat!10419 (regOne!12746 Regex!6117) (regTwo!12746 Regex!6117)) (EmptyExpr!6117) (Star!6117 (reg!6446 Regex!6117)) (EmptyLang!6117) (Union!6117 (regOne!12747 Regex!6117) (regTwo!12747 Regex!6117)) )
))
(declare-datatypes ((List!25508 0))(
  ( (Nil!25424) (Cons!25424 (h!30825 Regex!6117) (t!198106 List!25508)) )
))
(declare-datatypes ((Context!3374 0))(
  ( (Context!3375 (exprs!2187 List!25508)) )
))
(declare-fun z!3955 () (InoxSet Context!3374))

(declare-fun matchZipper!217 ((InoxSet Context!3374) List!25507) Bool)

(declare-fun take!309 (List!25507 Int) List!25507)

(declare-fun drop!1319 (List!25507 Int) List!25507)

(declare-fun list!9764 (BalanceConc!16268) List!25507)

(assert (=> b!2191689 (= e!1400611 (matchZipper!217 z!3955 (take!309 (drop!1319 (list!9764 totalInput!923) from!1114) lt!819188)))))

(declare-fun b!2191690 () Bool)

(declare-fun e!1400614 () Int)

(declare-fun lt!819178 () Int)

(assert (=> b!2191690 (= e!1400614 lt!819178)))

(declare-fun b!2191691 () Bool)

(declare-fun e!1400608 () Bool)

(declare-fun e!1400606 () Bool)

(assert (=> b!2191691 (= e!1400608 e!1400606)))

(declare-fun res!942109 () Bool)

(assert (=> b!2191691 (=> (not res!942109) (not e!1400606))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!819187 () Int)

(assert (=> b!2191691 (= res!942109 (and (<= from!1114 lt!819187) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19835 (BalanceConc!16268) Int)

(assert (=> b!2191691 (= lt!819187 (size!19835 totalInput!923))))

(declare-fun setIsEmpty!18576 () Bool)

(declare-fun setRes!18576 () Bool)

(assert (=> setIsEmpty!18576 setRes!18576))

(declare-fun b!2191692 () Bool)

(declare-datatypes ((Unit!38535 0))(
  ( (Unit!38536) )
))
(declare-fun e!1400603 () Unit!38535)

(declare-fun Unit!38537 () Unit!38535)

(assert (=> b!2191692 (= e!1400603 Unit!38537)))

(declare-fun lt!819179 () Int)

(declare-fun lt!819173 () Int)

(assert (=> b!2191692 (= lt!819179 (+ 1 (- lt!819173 from!1114)))))

(declare-fun lt!819171 () List!25507)

(assert (=> b!2191692 (= lt!819171 (list!9764 totalInput!923))))

(declare-fun lt!819184 () Unit!38535)

(declare-fun lemmaDropTakeAddOneLeft!6 (List!25507 Int Int) Unit!38535)

(assert (=> b!2191692 (= lt!819184 (lemmaDropTakeAddOneLeft!6 lt!819171 from!1114 0))))

(declare-fun lt!819177 () C!12380)

(declare-fun apply!6155 (List!25507 Int) C!12380)

(assert (=> b!2191692 (= lt!819177 (apply!6155 lt!819171 from!1114))))

(declare-fun lt!819183 () List!25507)

(assert (=> b!2191692 (= lt!819183 (take!309 (drop!1319 lt!819171 (+ 1 from!1114)) 0))))

(declare-fun lt!819180 () List!25507)

(assert (=> b!2191692 (= lt!819180 (drop!1319 lt!819171 from!1114))))

(declare-fun res!942113 () Bool)

(assert (=> b!2191692 (= res!942113 (= (Cons!25423 lt!819177 lt!819183) (take!309 lt!819180 1)))))

(declare-fun e!1400607 () Bool)

(assert (=> b!2191692 (=> (not res!942113) (not e!1400607))))

(assert (=> b!2191692 e!1400607))

(declare-fun b!2191693 () Bool)

(declare-fun e!1400615 () Bool)

(declare-fun e!1400617 () Bool)

(assert (=> b!2191693 (= e!1400615 e!1400617)))

(declare-fun res!942115 () Bool)

(assert (=> b!2191693 (=> res!942115 e!1400617)))

(declare-fun lt!819185 () Int)

(declare-fun lt!819172 () Int)

(assert (=> b!2191693 (= res!942115 (or (> lt!819172 0) (> lt!819185 from!1114) (< lt!819185 lt!819178) (< lt!819178 lastNullablePos!193) (> lt!819178 from!1114) (and (not (= lt!819178 from!1114)) (not (= lt!819178 lastNullablePos!193))) (not (= lt!819178 lastNullablePos!193))))))

(declare-fun b!2191694 () Bool)

(declare-fun e!1400609 () Bool)

(assert (=> b!2191694 (= e!1400609 true)))

(declare-fun lt!819175 () Bool)

(assert (=> b!2191694 (= lt!819175 e!1400611)))

(declare-fun res!942106 () Bool)

(assert (=> b!2191694 (=> res!942106 e!1400611)))

(assert (=> b!2191694 (= res!942106 (<= lt!819188 0))))

(assert (=> b!2191694 (= lt!819188 (+ 1 (- lt!819173 from!1114)))))

(declare-fun lt!819186 () Unit!38535)

(assert (=> b!2191694 (= lt!819186 e!1400603)))

(declare-fun c!348615 () Bool)

(assert (=> b!2191694 (= c!348615 (= lt!819178 lastNullablePos!193))))

(declare-fun b!2191695 () Bool)

(declare-fun e!1400612 () Bool)

(assert (=> b!2191695 (= e!1400612 (matchZipper!217 z!3955 (take!309 lt!819180 lt!819179)))))

(declare-fun b!2191696 () Bool)

(declare-fun e!1400623 () Bool)

(declare-fun tp!683146 () Bool)

(declare-fun inv!33927 (Conc!8253) Bool)

(assert (=> b!2191696 (= e!1400623 (and (inv!33927 (c!348618 totalInput!923)) tp!683146))))

(declare-fun b!2191697 () Bool)

(declare-fun e!1400616 () Bool)

(assert (=> b!2191697 (= e!1400606 e!1400616)))

(declare-fun res!942099 () Bool)

(assert (=> b!2191697 (=> (not res!942099) (not e!1400616))))

(assert (=> b!2191697 (= res!942099 (= lt!819173 lt!819185))))

(declare-fun lt!819182 () (InoxSet Context!3374))

(declare-fun furthestNullablePosition!287 ((InoxSet Context!3374) Int BalanceConc!16268 Int Int) Int)

(assert (=> b!2191697 (= lt!819185 (furthestNullablePosition!287 lt!819182 (+ 1 from!1114) totalInput!923 lt!819187 lt!819178))))

(assert (=> b!2191697 (= lt!819173 (furthestNullablePosition!287 z!3955 from!1114 totalInput!923 lt!819187 lastNullablePos!193))))

(declare-fun e!1400621 () Int)

(assert (=> b!2191697 (= lt!819178 e!1400621)))

(declare-fun c!348617 () Bool)

(declare-fun nullableZipper!397 ((InoxSet Context!3374)) Bool)

(assert (=> b!2191697 (= c!348617 (nullableZipper!397 lt!819182))))

(declare-fun derivationStepZipper!194 ((InoxSet Context!3374) C!12380) (InoxSet Context!3374))

(declare-fun apply!6156 (BalanceConc!16268 Int) C!12380)

(assert (=> b!2191697 (= lt!819182 (derivationStepZipper!194 z!3955 (apply!6156 totalInput!923 from!1114)))))

(declare-fun b!2191698 () Bool)

(declare-fun lt!819181 () Int)

(declare-fun e!1400620 () Bool)

(assert (=> b!2191698 (= e!1400620 (matchZipper!217 z!3955 (take!309 (drop!1319 (list!9764 totalInput!923) from!1114) lt!819181)))))

(declare-fun b!2191699 () Bool)

(declare-fun e!1400618 () Bool)

(assert (=> b!2191699 (= e!1400618 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191700 () Bool)

(declare-fun e!1400613 () Bool)

(declare-fun tp!683145 () Bool)

(assert (=> b!2191700 (= e!1400613 tp!683145)))

(declare-fun b!2191701 () Bool)

(declare-fun e!1400610 () Bool)

(assert (=> b!2191701 (= e!1400610 false)))

(declare-fun res!942117 () Bool)

(assert (=> start!212550 (=> (not res!942117) (not e!1400608))))

(assert (=> start!212550 (= res!942117 (>= from!1114 0))))

(assert (=> start!212550 e!1400608))

(assert (=> start!212550 true))

(declare-fun inv!33928 (BalanceConc!16268) Bool)

(assert (=> start!212550 (and (inv!33928 totalInput!923) e!1400623)))

(declare-fun condSetEmpty!18576 () Bool)

(assert (=> start!212550 (= condSetEmpty!18576 (= z!3955 ((as const (Array Context!3374 Bool)) false)))))

(assert (=> start!212550 setRes!18576))

(declare-fun b!2191702 () Bool)

(declare-fun Unit!38538 () Unit!38535)

(assert (=> b!2191702 (= e!1400603 Unit!38538)))

(declare-fun e!1400605 () Int)

(declare-fun lt!819174 () (InoxSet Context!3374))

(declare-fun b!2191703 () Bool)

(assert (=> b!2191703 (= e!1400605 (furthestNullablePosition!287 lt!819174 (+ 2 from!1114) totalInput!923 lt!819187 e!1400614))))

(assert (=> b!2191703 (= lt!819174 (derivationStepZipper!194 lt!819182 (apply!6156 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!348614 () Bool)

(assert (=> b!2191703 (= c!348614 (nullableZipper!397 lt!819174))))

(declare-fun b!2191704 () Bool)

(declare-fun res!942104 () Bool)

(assert (=> b!2191704 (=> (not res!942104) (not e!1400606))))

(assert (=> b!2191704 (= res!942104 (not (= from!1114 lt!819187)))))

(declare-fun b!2191705 () Bool)

(assert (=> b!2191705 (= e!1400614 (+ 1 from!1114))))

(declare-fun b!2191706 () Bool)

(assert (=> b!2191706 (= e!1400621 from!1114)))

(declare-fun b!2191707 () Bool)

(declare-fun res!942112 () Bool)

(assert (=> b!2191707 (=> (not res!942112) (not e!1400606))))

(assert (=> b!2191707 (= res!942112 e!1400618)))

(declare-fun res!942108 () Bool)

(assert (=> b!2191707 (=> res!942108 e!1400618)))

(assert (=> b!2191707 (= res!942108 (not (nullableZipper!397 z!3955)))))

(declare-fun e!1400622 () Bool)

(declare-fun b!2191708 () Bool)

(assert (=> b!2191708 (= e!1400622 (matchZipper!217 lt!819182 (take!309 (drop!1319 (list!9764 totalInput!923) (+ 1 from!1114)) lt!819172)))))

(declare-fun setElem!18576 () Context!3374)

(declare-fun setNonEmpty!18576 () Bool)

(declare-fun tp!683144 () Bool)

(declare-fun inv!33929 (Context!3374) Bool)

(assert (=> setNonEmpty!18576 (= setRes!18576 (and tp!683144 (inv!33929 setElem!18576) e!1400613))))

(declare-fun setRest!18576 () (InoxSet Context!3374))

(assert (=> setNonEmpty!18576 (= z!3955 ((_ map or) (store ((as const (Array Context!3374 Bool)) false) setElem!18576 true) setRest!18576))))

(declare-fun b!2191709 () Bool)

(assert (=> b!2191709 (= e!1400617 e!1400620)))

(declare-fun res!942101 () Bool)

(assert (=> b!2191709 (=> res!942101 e!1400620)))

(assert (=> b!2191709 (= res!942101 (<= lt!819181 0))))

(assert (=> b!2191709 (= lt!819181 (+ 1 (- lt!819173 from!1114)))))

(declare-fun b!2191710 () Bool)

(declare-fun res!942111 () Bool)

(assert (=> b!2191710 (= res!942111 (<= lt!819179 0))))

(assert (=> b!2191710 (=> res!942111 e!1400612)))

(assert (=> b!2191710 (= e!1400607 e!1400612)))

(declare-fun b!2191711 () Bool)

(declare-fun res!942100 () Bool)

(assert (=> b!2191711 (=> (not res!942100) (not e!1400615))))

(declare-fun e!1400604 () Bool)

(assert (=> b!2191711 (= res!942100 e!1400604)))

(declare-fun res!942116 () Bool)

(assert (=> b!2191711 (=> res!942116 e!1400604)))

(assert (=> b!2191711 (= res!942116 (or (> lt!819172 0) (> lt!819185 from!1114) (< lt!819185 lt!819178) (< lt!819178 lastNullablePos!193) (> lt!819178 from!1114) (and (not (= lt!819178 from!1114)) (not (= lt!819178 lastNullablePos!193))) (not (= lt!819178 lastNullablePos!193)) (not (= (+ 1 (- lt!819173 from!1114)) 1))))))

(declare-fun b!2191712 () Bool)

(assert (=> b!2191712 (= e!1400604 e!1400610)))

(declare-fun res!942114 () Bool)

(assert (=> b!2191712 (=> (not res!942114) (not e!1400610))))

(assert (=> b!2191712 (= res!942114 (= lt!819185 e!1400605))))

(declare-fun c!348616 () Bool)

(declare-fun e!1400619 () Bool)

(assert (=> b!2191712 (= c!348616 e!1400619)))

(declare-fun res!942107 () Bool)

(assert (=> b!2191712 (=> res!942107 e!1400619)))

(assert (=> b!2191712 (= res!942107 (= (+ 1 from!1114) lt!819187))))

(declare-fun b!2191713 () Bool)

(assert (=> b!2191713 (= e!1400621 lastNullablePos!193)))

(declare-fun b!2191714 () Bool)

(assert (=> b!2191714 (= e!1400605 lt!819178)))

(declare-fun b!2191715 () Bool)

(assert (=> b!2191715 (= e!1400616 (not e!1400609))))

(declare-fun res!942105 () Bool)

(assert (=> b!2191715 (=> res!942105 e!1400609)))

(assert (=> b!2191715 (= res!942105 (or (> lt!819172 0) (> lt!819185 from!1114) (< lt!819185 lt!819178) (< lt!819178 lastNullablePos!193) (> lt!819178 from!1114) (and (not (= lt!819178 from!1114)) (not (= lt!819178 lastNullablePos!193)))))))

(assert (=> b!2191715 e!1400615))

(declare-fun res!942103 () Bool)

(assert (=> b!2191715 (=> (not res!942103) (not e!1400615))))

(assert (=> b!2191715 (= res!942103 e!1400622)))

(declare-fun res!942110 () Bool)

(assert (=> b!2191715 (=> res!942110 e!1400622)))

(assert (=> b!2191715 (= res!942110 (<= lt!819172 0))))

(assert (=> b!2191715 (= lt!819172 (+ 1 (- lt!819185 (+ 1 from!1114))))))

(declare-fun lt!819176 () Unit!38535)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!122 ((InoxSet Context!3374) Int BalanceConc!16268 Int) Unit!38535)

(assert (=> b!2191715 (= lt!819176 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!122 lt!819182 (+ 1 from!1114) totalInput!923 lt!819178))))

(declare-fun b!2191716 () Bool)

(declare-fun res!942102 () Bool)

(assert (=> b!2191716 (=> (not res!942102) (not e!1400606))))

(declare-fun lostCauseZipper!235 ((InoxSet Context!3374)) Bool)

(assert (=> b!2191716 (= res!942102 (not (lostCauseZipper!235 z!3955)))))

(declare-fun b!2191717 () Bool)

(assert (=> b!2191717 (= e!1400619 (lostCauseZipper!235 lt!819182))))

(assert (= (and start!212550 res!942117) b!2191691))

(assert (= (and b!2191691 res!942109) b!2191707))

(assert (= (and b!2191707 (not res!942108)) b!2191699))

(assert (= (and b!2191707 res!942112) b!2191704))

(assert (= (and b!2191704 res!942104) b!2191716))

(assert (= (and b!2191716 res!942102) b!2191697))

(assert (= (and b!2191697 c!348617) b!2191706))

(assert (= (and b!2191697 (not c!348617)) b!2191713))

(assert (= (and b!2191697 res!942099) b!2191715))

(assert (= (and b!2191715 (not res!942110)) b!2191708))

(assert (= (and b!2191715 res!942103) b!2191711))

(assert (= (and b!2191711 (not res!942116)) b!2191712))

(assert (= (and b!2191712 (not res!942107)) b!2191717))

(assert (= (and b!2191712 c!348616) b!2191714))

(assert (= (and b!2191712 (not c!348616)) b!2191703))

(assert (= (and b!2191703 c!348614) b!2191705))

(assert (= (and b!2191703 (not c!348614)) b!2191690))

(assert (= (and b!2191712 res!942114) b!2191701))

(assert (= (and b!2191711 res!942100) b!2191693))

(assert (= (and b!2191693 (not res!942115)) b!2191709))

(assert (= (and b!2191709 (not res!942101)) b!2191698))

(assert (= (and b!2191715 (not res!942105)) b!2191694))

(assert (= (and b!2191694 c!348615) b!2191702))

(assert (= (and b!2191694 (not c!348615)) b!2191692))

(assert (= (and b!2191692 res!942113) b!2191710))

(assert (= (and b!2191710 (not res!942111)) b!2191695))

(assert (= (and b!2191694 (not res!942106)) b!2191689))

(assert (= start!212550 b!2191696))

(assert (= (and start!212550 condSetEmpty!18576) setIsEmpty!18576))

(assert (= (and start!212550 (not condSetEmpty!18576)) setNonEmpty!18576))

(assert (= setNonEmpty!18576 b!2191700))

(declare-fun m!2634435 () Bool)

(assert (=> b!2191698 m!2634435))

(assert (=> b!2191698 m!2634435))

(declare-fun m!2634437 () Bool)

(assert (=> b!2191698 m!2634437))

(assert (=> b!2191698 m!2634437))

(declare-fun m!2634439 () Bool)

(assert (=> b!2191698 m!2634439))

(assert (=> b!2191698 m!2634439))

(declare-fun m!2634441 () Bool)

(assert (=> b!2191698 m!2634441))

(declare-fun m!2634443 () Bool)

(assert (=> b!2191716 m!2634443))

(assert (=> b!2191708 m!2634435))

(assert (=> b!2191708 m!2634435))

(declare-fun m!2634445 () Bool)

(assert (=> b!2191708 m!2634445))

(assert (=> b!2191708 m!2634445))

(declare-fun m!2634447 () Bool)

(assert (=> b!2191708 m!2634447))

(assert (=> b!2191708 m!2634447))

(declare-fun m!2634449 () Bool)

(assert (=> b!2191708 m!2634449))

(declare-fun m!2634451 () Bool)

(assert (=> b!2191691 m!2634451))

(declare-fun m!2634453 () Bool)

(assert (=> setNonEmpty!18576 m!2634453))

(declare-fun m!2634455 () Bool)

(assert (=> b!2191696 m!2634455))

(declare-fun m!2634457 () Bool)

(assert (=> b!2191697 m!2634457))

(declare-fun m!2634459 () Bool)

(assert (=> b!2191697 m!2634459))

(declare-fun m!2634461 () Bool)

(assert (=> b!2191697 m!2634461))

(declare-fun m!2634463 () Bool)

(assert (=> b!2191697 m!2634463))

(assert (=> b!2191697 m!2634461))

(declare-fun m!2634465 () Bool)

(assert (=> b!2191697 m!2634465))

(declare-fun m!2634467 () Bool)

(assert (=> b!2191703 m!2634467))

(declare-fun m!2634469 () Bool)

(assert (=> b!2191703 m!2634469))

(assert (=> b!2191703 m!2634469))

(declare-fun m!2634471 () Bool)

(assert (=> b!2191703 m!2634471))

(declare-fun m!2634473 () Bool)

(assert (=> b!2191703 m!2634473))

(declare-fun m!2634475 () Bool)

(assert (=> b!2191707 m!2634475))

(declare-fun m!2634477 () Bool)

(assert (=> b!2191717 m!2634477))

(declare-fun m!2634479 () Bool)

(assert (=> start!212550 m!2634479))

(declare-fun m!2634481 () Bool)

(assert (=> b!2191715 m!2634481))

(assert (=> b!2191689 m!2634435))

(assert (=> b!2191689 m!2634435))

(assert (=> b!2191689 m!2634437))

(assert (=> b!2191689 m!2634437))

(declare-fun m!2634483 () Bool)

(assert (=> b!2191689 m!2634483))

(assert (=> b!2191689 m!2634483))

(declare-fun m!2634485 () Bool)

(assert (=> b!2191689 m!2634485))

(declare-fun m!2634487 () Bool)

(assert (=> b!2191692 m!2634487))

(declare-fun m!2634489 () Bool)

(assert (=> b!2191692 m!2634489))

(declare-fun m!2634491 () Bool)

(assert (=> b!2191692 m!2634491))

(declare-fun m!2634493 () Bool)

(assert (=> b!2191692 m!2634493))

(assert (=> b!2191692 m!2634489))

(declare-fun m!2634495 () Bool)

(assert (=> b!2191692 m!2634495))

(declare-fun m!2634497 () Bool)

(assert (=> b!2191692 m!2634497))

(assert (=> b!2191692 m!2634435))

(declare-fun m!2634499 () Bool)

(assert (=> b!2191695 m!2634499))

(assert (=> b!2191695 m!2634499))

(declare-fun m!2634501 () Bool)

(assert (=> b!2191695 m!2634501))

(check-sat (not start!212550) (not b!2191716) (not b!2191717) (not b!2191691) (not b!2191692) (not b!2191708) (not b!2191700) (not b!2191696) (not b!2191695) (not b!2191707) (not b!2191715) (not b!2191689) (not b!2191698) (not b!2191703) (not b!2191697) (not setNonEmpty!18576))
(check-sat)
