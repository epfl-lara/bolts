; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212514 () Bool)

(assert start!212514)

(declare-fun b!2190872 () Bool)

(declare-fun e!1400038 () Bool)

(declare-datatypes ((C!12344 0))(
  ( (C!12345 (val!7158 Int)) )
))
(declare-datatypes ((List!25471 0))(
  ( (Nil!25387) (Cons!25387 (h!30788 C!12344) (t!198069 List!25471)) )
))
(declare-datatypes ((IArray!16475 0))(
  ( (IArray!16476 (innerList!8295 List!25471)) )
))
(declare-datatypes ((Conc!8235 0))(
  ( (Node!8235 (left!19479 Conc!8235) (right!19809 Conc!8235) (csize!16700 Int) (cheight!8446 Int)) (Leaf!12052 (xs!11177 IArray!16475) (csize!16701 Int)) (Empty!8235) )
))
(declare-datatypes ((BalanceConc!16232 0))(
  ( (BalanceConc!16233 (c!348504 Conc!8235)) )
))
(declare-fun totalInput!923 () BalanceConc!16232)

(declare-fun tp!682984 () Bool)

(declare-fun inv!33846 (Conc!8235) Bool)

(assert (=> b!2190872 (= e!1400038 (and (inv!33846 (c!348504 totalInput!923)) tp!682984))))

(declare-fun b!2190873 () Bool)

(declare-fun e!1400039 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2190873 (= e!1400039 from!1114)))

(declare-fun lastNullablePos!193 () Int)

(declare-fun e!1400035 () Bool)

(declare-fun lt!818660 () Int)

(declare-fun lt!818655 () Int)

(declare-fun b!2190874 () Bool)

(declare-fun lt!818658 () Int)

(declare-fun lt!818656 () Int)

(assert (=> b!2190874 (= e!1400035 (not (or (> lt!818656 0) (> lt!818655 from!1114) (< lt!818655 lt!818660) (< lt!818660 lastNullablePos!193) (> lt!818660 from!1114) (and (not (= lt!818660 from!1114)) (not (= lt!818660 lastNullablePos!193))) (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818658)))))))

(declare-fun e!1400040 () Bool)

(assert (=> b!2190874 e!1400040))

(declare-fun res!941544 () Bool)

(assert (=> b!2190874 (=> res!941544 e!1400040)))

(assert (=> b!2190874 (= res!941544 (<= lt!818656 0))))

(assert (=> b!2190874 (= lt!818656 (+ 1 (- lt!818655 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38493 0))(
  ( (Unit!38494) )
))
(declare-fun lt!818654 () Unit!38493)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6099 0))(
  ( (ElementMatch!6099 (c!348505 C!12344)) (Concat!10401 (regOne!12710 Regex!6099) (regTwo!12710 Regex!6099)) (EmptyExpr!6099) (Star!6099 (reg!6428 Regex!6099)) (EmptyLang!6099) (Union!6099 (regOne!12711 Regex!6099) (regTwo!12711 Regex!6099)) )
))
(declare-datatypes ((List!25472 0))(
  ( (Nil!25388) (Cons!25388 (h!30789 Regex!6099) (t!198070 List!25472)) )
))
(declare-datatypes ((Context!3338 0))(
  ( (Context!3339 (exprs!2169 List!25472)) )
))
(declare-fun lt!818659 () (InoxSet Context!3338))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!104 ((InoxSet Context!3338) Int BalanceConc!16232 Int) Unit!38493)

(assert (=> b!2190874 (= lt!818654 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!104 lt!818659 (+ 1 from!1114) totalInput!923 lt!818660))))

(declare-fun setIsEmpty!18522 () Bool)

(declare-fun setRes!18522 () Bool)

(assert (=> setIsEmpty!18522 setRes!18522))

(declare-fun b!2190875 () Bool)

(declare-fun e!1400041 () Bool)

(declare-fun tp!682983 () Bool)

(assert (=> b!2190875 (= e!1400041 tp!682983)))

(declare-fun b!2190876 () Bool)

(declare-fun e!1400036 () Bool)

(declare-fun e!1400037 () Bool)

(assert (=> b!2190876 (= e!1400036 e!1400037)))

(declare-fun res!941545 () Bool)

(assert (=> b!2190876 (=> (not res!941545) (not e!1400037))))

(assert (=> b!2190876 (= res!941545 (and (<= from!1114 lt!818658) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19815 (BalanceConc!16232) Int)

(assert (=> b!2190876 (= lt!818658 (size!19815 totalInput!923))))

(declare-fun res!941542 () Bool)

(assert (=> start!212514 (=> (not res!941542) (not e!1400036))))

(assert (=> start!212514 (= res!941542 (>= from!1114 0))))

(assert (=> start!212514 e!1400036))

(assert (=> start!212514 true))

(declare-fun inv!33847 (BalanceConc!16232) Bool)

(assert (=> start!212514 (and (inv!33847 totalInput!923) e!1400038)))

(declare-fun condSetEmpty!18522 () Bool)

(declare-fun z!3955 () (InoxSet Context!3338))

(assert (=> start!212514 (= condSetEmpty!18522 (= z!3955 ((as const (Array Context!3338 Bool)) false)))))

(assert (=> start!212514 setRes!18522))

(declare-fun b!2190877 () Bool)

(declare-fun res!941540 () Bool)

(assert (=> b!2190877 (=> (not res!941540) (not e!1400037))))

(declare-fun lostCauseZipper!217 ((InoxSet Context!3338)) Bool)

(assert (=> b!2190877 (= res!941540 (not (lostCauseZipper!217 z!3955)))))

(declare-fun b!2190878 () Bool)

(declare-fun matchZipper!199 ((InoxSet Context!3338) List!25471) Bool)

(declare-fun take!291 (List!25471 Int) List!25471)

(declare-fun drop!1301 (List!25471 Int) List!25471)

(declare-fun list!9746 (BalanceConc!16232) List!25471)

(assert (=> b!2190878 (= e!1400040 (matchZipper!199 lt!818659 (take!291 (drop!1301 (list!9746 totalInput!923) (+ 1 from!1114)) lt!818656)))))

(declare-fun b!2190879 () Bool)

(declare-fun res!941546 () Bool)

(assert (=> b!2190879 (=> (not res!941546) (not e!1400037))))

(declare-fun e!1400034 () Bool)

(assert (=> b!2190879 (= res!941546 e!1400034)))

(declare-fun res!941547 () Bool)

(assert (=> b!2190879 (=> res!941547 e!1400034)))

(declare-fun nullableZipper!379 ((InoxSet Context!3338)) Bool)

(assert (=> b!2190879 (= res!941547 (not (nullableZipper!379 z!3955)))))

(declare-fun setElem!18522 () Context!3338)

(declare-fun setNonEmpty!18522 () Bool)

(declare-fun tp!682982 () Bool)

(declare-fun inv!33848 (Context!3338) Bool)

(assert (=> setNonEmpty!18522 (= setRes!18522 (and tp!682982 (inv!33848 setElem!18522) e!1400041))))

(declare-fun setRest!18522 () (InoxSet Context!3338))

(assert (=> setNonEmpty!18522 (= z!3955 ((_ map or) (store ((as const (Array Context!3338 Bool)) false) setElem!18522 true) setRest!18522))))

(declare-fun b!2190880 () Bool)

(assert (=> b!2190880 (= e!1400039 lastNullablePos!193)))

(declare-fun b!2190881 () Bool)

(declare-fun res!941541 () Bool)

(assert (=> b!2190881 (=> (not res!941541) (not e!1400037))))

(assert (=> b!2190881 (= res!941541 (not (= from!1114 lt!818658)))))

(declare-fun b!2190882 () Bool)

(assert (=> b!2190882 (= e!1400037 e!1400035)))

(declare-fun res!941543 () Bool)

(assert (=> b!2190882 (=> (not res!941543) (not e!1400035))))

(declare-fun lt!818657 () Int)

(assert (=> b!2190882 (= res!941543 (= lt!818657 lt!818655))))

(declare-fun furthestNullablePosition!269 ((InoxSet Context!3338) Int BalanceConc!16232 Int Int) Int)

(assert (=> b!2190882 (= lt!818655 (furthestNullablePosition!269 lt!818659 (+ 1 from!1114) totalInput!923 lt!818658 lt!818660))))

(assert (=> b!2190882 (= lt!818657 (furthestNullablePosition!269 z!3955 from!1114 totalInput!923 lt!818658 lastNullablePos!193))))

(assert (=> b!2190882 (= lt!818660 e!1400039)))

(declare-fun c!348503 () Bool)

(assert (=> b!2190882 (= c!348503 (nullableZipper!379 lt!818659))))

(declare-fun derivationStepZipper!176 ((InoxSet Context!3338) C!12344) (InoxSet Context!3338))

(declare-fun apply!6132 (BalanceConc!16232 Int) C!12344)

(assert (=> b!2190882 (= lt!818659 (derivationStepZipper!176 z!3955 (apply!6132 totalInput!923 from!1114)))))

(declare-fun b!2190883 () Bool)

(assert (=> b!2190883 (= e!1400034 (= lastNullablePos!193 (- from!1114 1)))))

(assert (= (and start!212514 res!941542) b!2190876))

(assert (= (and b!2190876 res!941545) b!2190879))

(assert (= (and b!2190879 (not res!941547)) b!2190883))

(assert (= (and b!2190879 res!941546) b!2190881))

(assert (= (and b!2190881 res!941541) b!2190877))

(assert (= (and b!2190877 res!941540) b!2190882))

(assert (= (and b!2190882 c!348503) b!2190873))

(assert (= (and b!2190882 (not c!348503)) b!2190880))

(assert (= (and b!2190882 res!941543) b!2190874))

(assert (= (and b!2190874 (not res!941544)) b!2190878))

(assert (= start!212514 b!2190872))

(assert (= (and start!212514 condSetEmpty!18522) setIsEmpty!18522))

(assert (= (and start!212514 (not condSetEmpty!18522)) setNonEmpty!18522))

(assert (= setNonEmpty!18522 b!2190875))

(declare-fun m!2633731 () Bool)

(assert (=> b!2190877 m!2633731))

(declare-fun m!2633733 () Bool)

(assert (=> b!2190874 m!2633733))

(declare-fun m!2633735 () Bool)

(assert (=> b!2190878 m!2633735))

(assert (=> b!2190878 m!2633735))

(declare-fun m!2633737 () Bool)

(assert (=> b!2190878 m!2633737))

(assert (=> b!2190878 m!2633737))

(declare-fun m!2633739 () Bool)

(assert (=> b!2190878 m!2633739))

(assert (=> b!2190878 m!2633739))

(declare-fun m!2633741 () Bool)

(assert (=> b!2190878 m!2633741))

(declare-fun m!2633743 () Bool)

(assert (=> b!2190876 m!2633743))

(declare-fun m!2633745 () Bool)

(assert (=> b!2190882 m!2633745))

(declare-fun m!2633747 () Bool)

(assert (=> b!2190882 m!2633747))

(declare-fun m!2633749 () Bool)

(assert (=> b!2190882 m!2633749))

(declare-fun m!2633751 () Bool)

(assert (=> b!2190882 m!2633751))

(assert (=> b!2190882 m!2633747))

(declare-fun m!2633753 () Bool)

(assert (=> b!2190882 m!2633753))

(declare-fun m!2633755 () Bool)

(assert (=> setNonEmpty!18522 m!2633755))

(declare-fun m!2633757 () Bool)

(assert (=> start!212514 m!2633757))

(declare-fun m!2633759 () Bool)

(assert (=> b!2190872 m!2633759))

(declare-fun m!2633761 () Bool)

(assert (=> b!2190879 m!2633761))

(check-sat (not b!2190876) (not b!2190879) (not b!2190875) (not b!2190877) (not setNonEmpty!18522) (not b!2190872) (not b!2190882) (not b!2190878) (not b!2190874) (not start!212514))
(check-sat)
