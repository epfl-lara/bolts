; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530566 () Bool)

(assert start!530566)

(declare-fun res!2140802 () Bool)

(declare-fun e!3136505 () Bool)

(assert (=> start!530566 (=> (not res!2140802) (not e!3136505))))

(declare-fun from!1212 () Int)

(assert (=> start!530566 (= res!2140802 (>= from!1212 0))))

(assert (=> start!530566 e!3136505))

(assert (=> start!530566 true))

(declare-datatypes ((C!27972 0))(
  ( (C!27973 (val!23352 Int)) )
))
(declare-datatypes ((List!58154 0))(
  ( (Nil!58030) (Cons!58030 (h!64478 C!27972) (t!370530 List!58154)) )
))
(declare-datatypes ((IArray!30821 0))(
  ( (IArray!30822 (innerList!15468 List!58154)) )
))
(declare-datatypes ((Conc!15380 0))(
  ( (Node!15380 (left!42432 Conc!15380) (right!42762 Conc!15380) (csize!30990 Int) (cheight!15591 Int)) (Leaf!25519 (xs!18706 IArray!30821) (csize!30991 Int)) (Empty!15380) )
))
(declare-datatypes ((BalanceConc!30190 0))(
  ( (BalanceConc!30191 (c!858125 Conc!15380)) )
))
(declare-fun totalInput!1125 () BalanceConc!30190)

(declare-fun e!3136508 () Bool)

(declare-fun inv!76395 (BalanceConc!30190) Bool)

(assert (=> start!530566 (and (inv!76395 totalInput!1125) e!3136508)))

(declare-fun condSetEmpty!28690 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13861 0))(
  ( (ElementMatch!13861 (c!858126 C!27972)) (Concat!22654 (regOne!28234 Regex!13861) (regTwo!28234 Regex!13861)) (EmptyExpr!13861) (Star!13861 (reg!14190 Regex!13861)) (EmptyLang!13861) (Union!13861 (regOne!28235 Regex!13861) (regTwo!28235 Regex!13861)) )
))
(declare-datatypes ((List!58155 0))(
  ( (Nil!58031) (Cons!58031 (h!64479 Regex!13861) (t!370531 List!58155)) )
))
(declare-datatypes ((Context!6572 0))(
  ( (Context!6573 (exprs!3786 List!58155)) )
))
(declare-fun z!4710 () (InoxSet Context!6572))

(assert (=> start!530566 (= condSetEmpty!28690 (= z!4710 ((as const (Array Context!6572 Bool)) false)))))

(declare-fun setRes!28690 () Bool)

(assert (=> start!530566 setRes!28690))

(declare-fun b!5020760 () Bool)

(declare-fun res!2140800 () Bool)

(declare-fun e!3136509 () Bool)

(assert (=> b!5020760 (=> (not res!2140800) (not e!3136509))))

(declare-fun lostCauseZipper!875 ((InoxSet Context!6572)) Bool)

(assert (=> b!5020760 (= res!2140800 (not (lostCauseZipper!875 z!4710)))))

(declare-fun b!5020761 () Bool)

(declare-fun e!3136506 () Bool)

(declare-fun tp!1407841 () Bool)

(assert (=> b!5020761 (= e!3136506 tp!1407841)))

(declare-fun tp!1407840 () Bool)

(declare-fun setNonEmpty!28690 () Bool)

(declare-fun setElem!28690 () Context!6572)

(declare-fun inv!76396 (Context!6572) Bool)

(assert (=> setNonEmpty!28690 (= setRes!28690 (and tp!1407840 (inv!76396 setElem!28690) e!3136506))))

(declare-fun setRest!28690 () (InoxSet Context!6572))

(assert (=> setNonEmpty!28690 (= z!4710 ((_ map or) (store ((as const (Array Context!6572 Bool)) false) setElem!28690 true) setRest!28690))))

(declare-fun b!5020762 () Bool)

(declare-fun res!2140798 () Bool)

(assert (=> b!5020762 (=> (not res!2140798) (not e!3136509))))

(declare-fun lt!2077975 () List!58154)

(declare-fun knownSize!24 () Int)

(declare-fun size!38615 (List!58154) Int)

(assert (=> b!5020762 (= res!2140798 (= (size!38615 lt!2077975) knownSize!24))))

(declare-fun setIsEmpty!28690 () Bool)

(assert (=> setIsEmpty!28690 setRes!28690))

(declare-fun b!5020763 () Bool)

(declare-fun e!3136507 () Bool)

(assert (=> b!5020763 (= e!3136507 e!3136509)))

(declare-fun res!2140797 () Bool)

(assert (=> b!5020763 (=> (not res!2140797) (not e!3136509))))

(declare-fun matchZipper!629 ((InoxSet Context!6572) List!58154) Bool)

(assert (=> b!5020763 (= res!2140797 (matchZipper!629 z!4710 lt!2077975))))

(declare-fun lt!2077972 () List!58154)

(declare-fun take!720 (List!58154 Int) List!58154)

(assert (=> b!5020763 (= lt!2077975 (take!720 lt!2077972 knownSize!24))))

(declare-fun lt!2077969 () List!58154)

(declare-fun drop!2524 (List!58154 Int) List!58154)

(assert (=> b!5020763 (= lt!2077972 (drop!2524 lt!2077969 from!1212))))

(declare-fun list!18718 (BalanceConc!30190) List!58154)

(assert (=> b!5020763 (= lt!2077969 (list!18718 totalInput!1125))))

(declare-fun b!5020764 () Bool)

(assert (=> b!5020764 (= e!3136505 e!3136507)))

(declare-fun res!2140803 () Bool)

(assert (=> b!5020764 (=> (not res!2140803) (not e!3136507))))

(declare-fun lt!2077970 () Int)

(assert (=> b!5020764 (= res!2140803 (and (<= from!1212 lt!2077970) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077970 from!1212))))))

(declare-fun size!38616 (BalanceConc!30190) Int)

(assert (=> b!5020764 (= lt!2077970 (size!38616 totalInput!1125))))

(declare-fun b!5020765 () Bool)

(declare-fun res!2140799 () Bool)

(assert (=> b!5020765 (=> (not res!2140799) (not e!3136509))))

(assert (=> b!5020765 (= res!2140799 (not (= from!1212 lt!2077970)))))

(declare-fun b!5020766 () Bool)

(assert (=> b!5020766 (= e!3136509 (not (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2077970) (and (>= (- knownSize!24 1) 0) (<= (- knownSize!24 1) (- lt!2077970 (+ 1 from!1212)))))))))

(declare-fun lt!2077973 () List!58154)

(declare-fun lt!2077976 () C!27972)

(assert (=> b!5020766 (= (Cons!58030 lt!2077976 (take!720 lt!2077973 (- knownSize!24 1))) (take!720 lt!2077972 (+ 1 (- knownSize!24 1))))))

(declare-datatypes ((Unit!149235 0))(
  ( (Unit!149236) )
))
(declare-fun lt!2077971 () Unit!149235)

(declare-fun lemmaDropTakeAddOneLeft!66 (List!58154 Int Int) Unit!149235)

(assert (=> b!5020766 (= lt!2077971 (lemmaDropTakeAddOneLeft!66 lt!2077969 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2077968 () Int)

(assert (=> b!5020766 (= (Cons!58030 lt!2077976 (take!720 lt!2077973 lt!2077968)) (take!720 lt!2077972 (+ 1 lt!2077968)))))

(assert (=> b!5020766 (= lt!2077973 (drop!2524 lt!2077969 (+ 1 from!1212)))))

(declare-fun apply!14062 (List!58154 Int) C!27972)

(assert (=> b!5020766 (= lt!2077976 (apply!14062 lt!2077969 from!1212))))

(declare-fun lt!2077974 () Unit!149235)

(assert (=> b!5020766 (= lt!2077974 (lemmaDropTakeAddOneLeft!66 lt!2077969 from!1212 lt!2077968))))

(declare-fun findLongestMatchInnerZipperFastV2!183 ((InoxSet Context!6572) Int BalanceConc!30190 Int) Int)

(declare-fun derivationStepZipper!667 ((InoxSet Context!6572) C!27972) (InoxSet Context!6572))

(declare-fun apply!14063 (BalanceConc!30190 Int) C!27972)

(assert (=> b!5020766 (= lt!2077968 (findLongestMatchInnerZipperFastV2!183 (derivationStepZipper!667 z!4710 (apply!14063 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077970))))

(declare-fun b!5020767 () Bool)

(declare-fun res!2140801 () Bool)

(assert (=> b!5020767 (=> (not res!2140801) (not e!3136509))))

(assert (=> b!5020767 (= res!2140801 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5020768 () Bool)

(declare-fun tp!1407842 () Bool)

(declare-fun inv!76397 (Conc!15380) Bool)

(assert (=> b!5020768 (= e!3136508 (and (inv!76397 (c!858125 totalInput!1125)) tp!1407842))))

(assert (= (and start!530566 res!2140802) b!5020764))

(assert (= (and b!5020764 res!2140803) b!5020763))

(assert (= (and b!5020763 res!2140797) b!5020767))

(assert (= (and b!5020767 res!2140801) b!5020762))

(assert (= (and b!5020762 res!2140798) b!5020760))

(assert (= (and b!5020760 res!2140800) b!5020765))

(assert (= (and b!5020765 res!2140799) b!5020766))

(assert (= start!530566 b!5020768))

(assert (= (and start!530566 condSetEmpty!28690) setIsEmpty!28690))

(assert (= (and start!530566 (not condSetEmpty!28690)) setNonEmpty!28690))

(assert (= setNonEmpty!28690 b!5020761))

(declare-fun m!6055688 () Bool)

(assert (=> b!5020760 m!6055688))

(declare-fun m!6055690 () Bool)

(assert (=> b!5020762 m!6055690))

(declare-fun m!6055692 () Bool)

(assert (=> start!530566 m!6055692))

(declare-fun m!6055694 () Bool)

(assert (=> b!5020764 m!6055694))

(declare-fun m!6055696 () Bool)

(assert (=> b!5020763 m!6055696))

(declare-fun m!6055698 () Bool)

(assert (=> b!5020763 m!6055698))

(declare-fun m!6055700 () Bool)

(assert (=> b!5020763 m!6055700))

(declare-fun m!6055702 () Bool)

(assert (=> b!5020763 m!6055702))

(declare-fun m!6055704 () Bool)

(assert (=> b!5020768 m!6055704))

(declare-fun m!6055706 () Bool)

(assert (=> b!5020766 m!6055706))

(declare-fun m!6055708 () Bool)

(assert (=> b!5020766 m!6055708))

(declare-fun m!6055710 () Bool)

(assert (=> b!5020766 m!6055710))

(declare-fun m!6055712 () Bool)

(assert (=> b!5020766 m!6055712))

(declare-fun m!6055714 () Bool)

(assert (=> b!5020766 m!6055714))

(assert (=> b!5020766 m!6055706))

(assert (=> b!5020766 m!6055714))

(declare-fun m!6055716 () Bool)

(assert (=> b!5020766 m!6055716))

(declare-fun m!6055718 () Bool)

(assert (=> b!5020766 m!6055718))

(declare-fun m!6055720 () Bool)

(assert (=> b!5020766 m!6055720))

(declare-fun m!6055722 () Bool)

(assert (=> b!5020766 m!6055722))

(declare-fun m!6055724 () Bool)

(assert (=> b!5020766 m!6055724))

(declare-fun m!6055726 () Bool)

(assert (=> b!5020766 m!6055726))

(declare-fun m!6055728 () Bool)

(assert (=> setNonEmpty!28690 m!6055728))

(check-sat (not b!5020763) (not b!5020764) (not b!5020766) (not b!5020762) (not start!530566) (not b!5020768) (not b!5020761) (not setNonEmpty!28690) (not b!5020760))
(check-sat)
