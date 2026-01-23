; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530990 () Bool)

(assert start!530990)

(declare-fun b!5023512 () Bool)

(declare-fun res!2141695 () Bool)

(declare-fun e!3138165 () Bool)

(assert (=> b!5023512 (=> (not res!2141695) (not e!3138165))))

(declare-fun from!1228 () Int)

(declare-fun lt!2078876 () Int)

(assert (=> b!5023512 (= res!2141695 (not (= from!1228 lt!2078876)))))

(declare-datatypes ((C!28016 0))(
  ( (C!28017 (val!23384 Int)) )
))
(declare-datatypes ((List!58212 0))(
  ( (Nil!58088) (Cons!58088 (h!64536 C!28016) (t!370604 List!58212)) )
))
(declare-datatypes ((IArray!30865 0))(
  ( (IArray!30866 (innerList!15490 List!58212)) )
))
(declare-datatypes ((Conc!15402 0))(
  ( (Node!15402 (left!42478 Conc!15402) (right!42808 Conc!15402) (csize!31034 Int) (cheight!15613 Int)) (Leaf!25557 (xs!18728 IArray!30865) (csize!31035 Int)) (Empty!15402) )
))
(declare-datatypes ((BalanceConc!30234 0))(
  ( (BalanceConc!30235 (c!858965 Conc!15402)) )
))
(declare-fun totalInput!1141 () BalanceConc!30234)

(declare-fun lt!2078880 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13883 0))(
  ( (ElementMatch!13883 (c!858966 C!28016)) (Concat!22676 (regOne!28278 Regex!13883) (regTwo!28278 Regex!13883)) (EmptyExpr!13883) (Star!13883 (reg!14212 Regex!13883)) (EmptyLang!13883) (Union!13883 (regOne!28279 Regex!13883) (regTwo!28279 Regex!13883)) )
))
(declare-datatypes ((List!58213 0))(
  ( (Nil!58089) (Cons!58089 (h!64537 Regex!13883) (t!370605 List!58213)) )
))
(declare-datatypes ((Context!6616 0))(
  ( (Context!6617 (exprs!3808 List!58213)) )
))
(declare-fun lt!2078878 () (InoxSet Context!6616))

(declare-fun b!5023513 () Bool)

(declare-fun e!3138164 () Bool)

(declare-fun matchZipper!637 ((InoxSet Context!6616) List!58212) Bool)

(declare-fun take!734 (List!58212 Int) List!58212)

(declare-fun drop!2534 (List!58212 Int) List!58212)

(declare-fun list!18736 (BalanceConc!30234) List!58212)

(assert (=> b!5023513 (= e!3138164 (matchZipper!637 lt!2078878 (take!734 (drop!2534 (list!18736 totalInput!1141) (+ 1 from!1228)) lt!2078880)))))

(declare-fun res!2141697 () Bool)

(declare-fun e!3138166 () Bool)

(assert (=> start!530990 (=> (not res!2141697) (not e!3138166))))

(assert (=> start!530990 (= res!2141697 (>= from!1228 0))))

(assert (=> start!530990 e!3138166))

(assert (=> start!530990 true))

(declare-fun e!3138167 () Bool)

(declare-fun inv!76521 (BalanceConc!30234) Bool)

(assert (=> start!530990 (and (inv!76521 totalInput!1141) e!3138167)))

(declare-fun condSetEmpty!28772 () Bool)

(declare-fun z!4747 () (InoxSet Context!6616))

(assert (=> start!530990 (= condSetEmpty!28772 (= z!4747 ((as const (Array Context!6616 Bool)) false)))))

(declare-fun setRes!28772 () Bool)

(assert (=> start!530990 setRes!28772))

(declare-fun setElem!28772 () Context!6616)

(declare-fun e!3138163 () Bool)

(declare-fun tp!1408294 () Bool)

(declare-fun setNonEmpty!28772 () Bool)

(declare-fun inv!76522 (Context!6616) Bool)

(assert (=> setNonEmpty!28772 (= setRes!28772 (and tp!1408294 (inv!76522 setElem!28772) e!3138163))))

(declare-fun setRest!28772 () (InoxSet Context!6616))

(assert (=> setNonEmpty!28772 (= z!4747 ((_ map or) (store ((as const (Array Context!6616 Bool)) false) setElem!28772 true) setRest!28772))))

(declare-fun b!5023514 () Bool)

(declare-fun lt!2078879 () Bool)

(assert (=> b!5023514 (= e!3138165 (not (or lt!2078879 (and (<= 0 from!1228) (< from!1228 lt!2078876)))))))

(assert (=> b!5023514 e!3138164))

(declare-fun res!2141699 () Bool)

(assert (=> b!5023514 (=> res!2141699 e!3138164)))

(assert (=> b!5023514 (= res!2141699 lt!2078879)))

(assert (=> b!5023514 (= lt!2078879 (= lt!2078880 0))))

(declare-datatypes ((Unit!149271 0))(
  ( (Unit!149272) )
))
(declare-fun lt!2078877 () Unit!149271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!80 ((InoxSet Context!6616) Int BalanceConc!30234) Unit!149271)

(assert (=> b!5023514 (= lt!2078877 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!80 lt!2078878 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!197 ((InoxSet Context!6616) Int BalanceConc!30234 Int) Int)

(assert (=> b!5023514 (= lt!2078880 (findLongestMatchInnerZipperFastV2!197 lt!2078878 (+ 1 from!1228) totalInput!1141 lt!2078876))))

(declare-fun derivationStepZipper!679 ((InoxSet Context!6616) C!28016) (InoxSet Context!6616))

(declare-fun apply!14093 (BalanceConc!30234 Int) C!28016)

(assert (=> b!5023514 (= lt!2078878 (derivationStepZipper!679 z!4747 (apply!14093 totalInput!1141 from!1228)))))

(declare-fun b!5023515 () Bool)

(assert (=> b!5023515 (= e!3138166 e!3138165)))

(declare-fun res!2141698 () Bool)

(assert (=> b!5023515 (=> (not res!2141698) (not e!3138165))))

(assert (=> b!5023515 (= res!2141698 (<= from!1228 lt!2078876))))

(declare-fun size!38654 (BalanceConc!30234) Int)

(assert (=> b!5023515 (= lt!2078876 (size!38654 totalInput!1141))))

(declare-fun b!5023516 () Bool)

(declare-fun tp!1408293 () Bool)

(assert (=> b!5023516 (= e!3138163 tp!1408293)))

(declare-fun b!5023517 () Bool)

(declare-fun res!2141696 () Bool)

(assert (=> b!5023517 (=> (not res!2141696) (not e!3138165))))

(declare-fun lostCauseZipper!897 ((InoxSet Context!6616)) Bool)

(assert (=> b!5023517 (= res!2141696 (not (lostCauseZipper!897 z!4747)))))

(declare-fun setIsEmpty!28772 () Bool)

(assert (=> setIsEmpty!28772 setRes!28772))

(declare-fun b!5023518 () Bool)

(declare-fun tp!1408292 () Bool)

(declare-fun inv!76523 (Conc!15402) Bool)

(assert (=> b!5023518 (= e!3138167 (and (inv!76523 (c!858965 totalInput!1141)) tp!1408292))))

(assert (= (and start!530990 res!2141697) b!5023515))

(assert (= (and b!5023515 res!2141698) b!5023517))

(assert (= (and b!5023517 res!2141696) b!5023512))

(assert (= (and b!5023512 res!2141695) b!5023514))

(assert (= (and b!5023514 (not res!2141699)) b!5023513))

(assert (= start!530990 b!5023518))

(assert (= (and start!530990 condSetEmpty!28772) setIsEmpty!28772))

(assert (= (and start!530990 (not condSetEmpty!28772)) setNonEmpty!28772))

(assert (= setNonEmpty!28772 b!5023516))

(declare-fun m!6058540 () Bool)

(assert (=> b!5023515 m!6058540))

(declare-fun m!6058542 () Bool)

(assert (=> b!5023513 m!6058542))

(assert (=> b!5023513 m!6058542))

(declare-fun m!6058544 () Bool)

(assert (=> b!5023513 m!6058544))

(assert (=> b!5023513 m!6058544))

(declare-fun m!6058546 () Bool)

(assert (=> b!5023513 m!6058546))

(assert (=> b!5023513 m!6058546))

(declare-fun m!6058548 () Bool)

(assert (=> b!5023513 m!6058548))

(declare-fun m!6058550 () Bool)

(assert (=> b!5023514 m!6058550))

(declare-fun m!6058552 () Bool)

(assert (=> b!5023514 m!6058552))

(declare-fun m!6058554 () Bool)

(assert (=> b!5023514 m!6058554))

(assert (=> b!5023514 m!6058554))

(declare-fun m!6058556 () Bool)

(assert (=> b!5023514 m!6058556))

(declare-fun m!6058558 () Bool)

(assert (=> start!530990 m!6058558))

(declare-fun m!6058560 () Bool)

(assert (=> b!5023518 m!6058560))

(declare-fun m!6058562 () Bool)

(assert (=> b!5023517 m!6058562))

(declare-fun m!6058564 () Bool)

(assert (=> setNonEmpty!28772 m!6058564))

(check-sat (not start!530990) (not b!5023513) (not b!5023517) (not b!5023514) (not b!5023515) (not b!5023516) (not b!5023518) (not setNonEmpty!28772))
(check-sat)
