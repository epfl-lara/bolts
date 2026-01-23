; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530998 () Bool)

(assert start!530998)

(declare-datatypes ((C!28024 0))(
  ( (C!28025 (val!23388 Int)) )
))
(declare-datatypes ((Regex!13887 0))(
  ( (ElementMatch!13887 (c!858973 C!28024)) (Concat!22680 (regOne!28286 Regex!13887) (regTwo!28286 Regex!13887)) (EmptyExpr!13887) (Star!13887 (reg!14216 Regex!13887)) (EmptyLang!13887) (Union!13887 (regOne!28287 Regex!13887) (regTwo!28287 Regex!13887)) )
))
(declare-datatypes ((List!58220 0))(
  ( (Nil!58096) (Cons!58096 (h!64544 Regex!13887) (t!370612 List!58220)) )
))
(declare-datatypes ((Context!6624 0))(
  ( (Context!6625 (exprs!3812 List!58220)) )
))
(declare-fun setElem!28784 () Context!6624)

(declare-fun setRes!28784 () Bool)

(declare-fun tp!1408328 () Bool)

(declare-fun e!3138238 () Bool)

(declare-fun setNonEmpty!28784 () Bool)

(declare-fun inv!76539 (Context!6624) Bool)

(assert (=> setNonEmpty!28784 (= setRes!28784 (and tp!1408328 (inv!76539 setElem!28784) e!3138238))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6624))

(declare-fun setRest!28784 () (InoxSet Context!6624))

(assert (=> setNonEmpty!28784 (= z!4747 ((_ map or) (store ((as const (Array Context!6624 Bool)) false) setElem!28784 true) setRest!28784))))

(declare-fun b!5023607 () Bool)

(declare-fun e!3138239 () Bool)

(declare-fun from!1228 () Int)

(declare-fun lt!2078971 () Int)

(assert (=> b!5023607 (= e!3138239 (and (<= 0 from!1228) (< from!1228 lt!2078971)))))

(declare-datatypes ((List!58221 0))(
  ( (Nil!58097) (Cons!58097 (h!64545 C!28024) (t!370613 List!58221)) )
))
(declare-fun lt!2078976 () List!58221)

(declare-fun lt!2078972 () List!58221)

(declare-fun lt!2078975 () List!58221)

(declare-fun apply!14098 (List!58221 Int) C!28024)

(assert (=> b!5023607 (= (Cons!58097 (apply!14098 lt!2078972 from!1228) lt!2078976) lt!2078975)))

(declare-datatypes ((Unit!149279 0))(
  ( (Unit!149280) )
))
(declare-fun lt!2078974 () Unit!149279)

(declare-fun lt!2078970 () Int)

(declare-fun lemmaDropTakeAddOneLeft!74 (List!58221 Int Int) Unit!149279)

(assert (=> b!5023607 (= lt!2078974 (lemmaDropTakeAddOneLeft!74 lt!2078972 from!1228 lt!2078970))))

(declare-fun take!738 (List!58221 Int) List!58221)

(declare-fun drop!2538 (List!58221 Int) List!58221)

(assert (=> b!5023607 (= lt!2078975 (take!738 (drop!2538 lt!2078972 from!1228) (+ 1 lt!2078970)))))

(declare-fun setIsEmpty!28784 () Bool)

(assert (=> setIsEmpty!28784 setRes!28784))

(declare-fun b!5023608 () Bool)

(declare-fun e!3138235 () Bool)

(assert (=> b!5023608 (= e!3138235 (not e!3138239))))

(declare-fun res!2141769 () Bool)

(assert (=> b!5023608 (=> res!2141769 e!3138239)))

(assert (=> b!5023608 (= res!2141769 (<= lt!2078970 0))))

(assert (=> b!5023608 (= lt!2078976 (take!738 (drop!2538 lt!2078972 (+ 1 from!1228)) lt!2078970))))

(declare-datatypes ((IArray!30873 0))(
  ( (IArray!30874 (innerList!15494 List!58221)) )
))
(declare-datatypes ((Conc!15406 0))(
  ( (Node!15406 (left!42484 Conc!15406) (right!42814 Conc!15406) (csize!31042 Int) (cheight!15617 Int)) (Leaf!25563 (xs!18732 IArray!30873) (csize!31043 Int)) (Empty!15406) )
))
(declare-datatypes ((BalanceConc!30242 0))(
  ( (BalanceConc!30243 (c!858974 Conc!15406)) )
))
(declare-fun totalInput!1141 () BalanceConc!30242)

(declare-fun list!18740 (BalanceConc!30242) List!58221)

(assert (=> b!5023608 (= lt!2078972 (list!18740 totalInput!1141))))

(declare-fun e!3138236 () Bool)

(assert (=> b!5023608 e!3138236))

(declare-fun res!2141771 () Bool)

(assert (=> b!5023608 (=> res!2141771 e!3138236)))

(assert (=> b!5023608 (= res!2141771 (= lt!2078970 0))))

(declare-fun lt!2078969 () (InoxSet Context!6624))

(declare-fun lt!2078973 () Unit!149279)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!84 ((InoxSet Context!6624) Int BalanceConc!30242) Unit!149279)

(assert (=> b!5023608 (= lt!2078973 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!84 lt!2078969 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!201 ((InoxSet Context!6624) Int BalanceConc!30242 Int) Int)

(assert (=> b!5023608 (= lt!2078970 (findLongestMatchInnerZipperFastV2!201 lt!2078969 (+ 1 from!1228) totalInput!1141 lt!2078971))))

(declare-fun derivationStepZipper!683 ((InoxSet Context!6624) C!28024) (InoxSet Context!6624))

(declare-fun apply!14099 (BalanceConc!30242 Int) C!28024)

(assert (=> b!5023608 (= lt!2078969 (derivationStepZipper!683 z!4747 (apply!14099 totalInput!1141 from!1228)))))

(declare-fun b!5023609 () Bool)

(declare-fun res!2141768 () Bool)

(assert (=> b!5023609 (=> (not res!2141768) (not e!3138235))))

(declare-fun lostCauseZipper!901 ((InoxSet Context!6624)) Bool)

(assert (=> b!5023609 (= res!2141768 (not (lostCauseZipper!901 z!4747)))))

(declare-fun res!2141766 () Bool)

(declare-fun e!3138234 () Bool)

(assert (=> start!530998 (=> (not res!2141766) (not e!3138234))))

(assert (=> start!530998 (= res!2141766 (>= from!1228 0))))

(assert (=> start!530998 e!3138234))

(assert (=> start!530998 true))

(declare-fun e!3138237 () Bool)

(declare-fun inv!76540 (BalanceConc!30242) Bool)

(assert (=> start!530998 (and (inv!76540 totalInput!1141) e!3138237)))

(declare-fun condSetEmpty!28784 () Bool)

(assert (=> start!530998 (= condSetEmpty!28784 (= z!4747 ((as const (Array Context!6624 Bool)) false)))))

(assert (=> start!530998 setRes!28784))

(declare-fun b!5023610 () Bool)

(declare-fun tp!1408329 () Bool)

(assert (=> b!5023610 (= e!3138238 tp!1408329)))

(declare-fun b!5023611 () Bool)

(assert (=> b!5023611 (= e!3138234 e!3138235)))

(declare-fun res!2141770 () Bool)

(assert (=> b!5023611 (=> (not res!2141770) (not e!3138235))))

(assert (=> b!5023611 (= res!2141770 (<= from!1228 lt!2078971))))

(declare-fun size!38660 (BalanceConc!30242) Int)

(assert (=> b!5023611 (= lt!2078971 (size!38660 totalInput!1141))))

(declare-fun b!5023612 () Bool)

(declare-fun matchZipper!641 ((InoxSet Context!6624) List!58221) Bool)

(assert (=> b!5023612 (= e!3138236 (matchZipper!641 lt!2078969 (take!738 (drop!2538 (list!18740 totalInput!1141) (+ 1 from!1228)) lt!2078970)))))

(declare-fun b!5023613 () Bool)

(declare-fun res!2141767 () Bool)

(assert (=> b!5023613 (=> (not res!2141767) (not e!3138235))))

(assert (=> b!5023613 (= res!2141767 (not (= from!1228 lt!2078971)))))

(declare-fun b!5023614 () Bool)

(declare-fun tp!1408330 () Bool)

(declare-fun inv!76541 (Conc!15406) Bool)

(assert (=> b!5023614 (= e!3138237 (and (inv!76541 (c!858974 totalInput!1141)) tp!1408330))))

(assert (= (and start!530998 res!2141766) b!5023611))

(assert (= (and b!5023611 res!2141770) b!5023609))

(assert (= (and b!5023609 res!2141768) b!5023613))

(assert (= (and b!5023613 res!2141767) b!5023608))

(assert (= (and b!5023608 (not res!2141771)) b!5023612))

(assert (= (and b!5023608 (not res!2141769)) b!5023607))

(assert (= start!530998 b!5023614))

(assert (= (and start!530998 condSetEmpty!28784) setIsEmpty!28784))

(assert (= (and start!530998 (not condSetEmpty!28784)) setNonEmpty!28784))

(assert (= setNonEmpty!28784 b!5023610))

(declare-fun m!6058676 () Bool)

(assert (=> b!5023614 m!6058676))

(declare-fun m!6058678 () Bool)

(assert (=> b!5023609 m!6058678))

(declare-fun m!6058680 () Bool)

(assert (=> b!5023612 m!6058680))

(assert (=> b!5023612 m!6058680))

(declare-fun m!6058682 () Bool)

(assert (=> b!5023612 m!6058682))

(assert (=> b!5023612 m!6058682))

(declare-fun m!6058684 () Bool)

(assert (=> b!5023612 m!6058684))

(assert (=> b!5023612 m!6058684))

(declare-fun m!6058686 () Bool)

(assert (=> b!5023612 m!6058686))

(declare-fun m!6058688 () Bool)

(assert (=> b!5023611 m!6058688))

(declare-fun m!6058690 () Bool)

(assert (=> b!5023608 m!6058690))

(declare-fun m!6058692 () Bool)

(assert (=> b!5023608 m!6058692))

(declare-fun m!6058694 () Bool)

(assert (=> b!5023608 m!6058694))

(assert (=> b!5023608 m!6058690))

(declare-fun m!6058696 () Bool)

(assert (=> b!5023608 m!6058696))

(declare-fun m!6058698 () Bool)

(assert (=> b!5023608 m!6058698))

(assert (=> b!5023608 m!6058680))

(assert (=> b!5023608 m!6058694))

(declare-fun m!6058700 () Bool)

(assert (=> b!5023608 m!6058700))

(declare-fun m!6058702 () Bool)

(assert (=> start!530998 m!6058702))

(declare-fun m!6058704 () Bool)

(assert (=> setNonEmpty!28784 m!6058704))

(declare-fun m!6058706 () Bool)

(assert (=> b!5023607 m!6058706))

(declare-fun m!6058708 () Bool)

(assert (=> b!5023607 m!6058708))

(declare-fun m!6058710 () Bool)

(assert (=> b!5023607 m!6058710))

(assert (=> b!5023607 m!6058710))

(declare-fun m!6058712 () Bool)

(assert (=> b!5023607 m!6058712))

(check-sat (not b!5023614) (not b!5023610) (not b!5023608) (not b!5023607) (not setNonEmpty!28784) (not b!5023612) (not start!530998) (not b!5023609) (not b!5023611))
(check-sat)
