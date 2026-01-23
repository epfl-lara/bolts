; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531010 () Bool)

(assert start!531010)

(declare-fun b!5023790 () Bool)

(declare-fun e!3138361 () Bool)

(assert (=> b!5023790 (= e!3138361 true)))

(declare-datatypes ((C!28036 0))(
  ( (C!28037 (val!23394 Int)) )
))
(declare-datatypes ((List!58232 0))(
  ( (Nil!58108) (Cons!58108 (h!64556 C!28036) (t!370624 List!58232)) )
))
(declare-datatypes ((IArray!30885 0))(
  ( (IArray!30886 (innerList!15500 List!58232)) )
))
(declare-datatypes ((Conc!15412 0))(
  ( (Node!15412 (left!42493 Conc!15412) (right!42823 Conc!15412) (csize!31054 Int) (cheight!15623 Int)) (Leaf!25572 (xs!18738 IArray!30885) (csize!31055 Int)) (Empty!15412) )
))
(declare-datatypes ((BalanceConc!30254 0))(
  ( (BalanceConc!30255 (c!858985 Conc!15412)) )
))
(declare-fun totalInput!1141 () BalanceConc!30254)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13893 0))(
  ( (ElementMatch!13893 (c!858986 C!28036)) (Concat!22686 (regOne!28298 Regex!13893) (regTwo!28298 Regex!13893)) (EmptyExpr!13893) (Star!13893 (reg!14222 Regex!13893)) (EmptyLang!13893) (Union!13893 (regOne!28299 Regex!13893) (regTwo!28299 Regex!13893)) )
))
(declare-datatypes ((List!58233 0))(
  ( (Nil!58109) (Cons!58109 (h!64557 Regex!13893) (t!370625 List!58233)) )
))
(declare-datatypes ((Context!6636 0))(
  ( (Context!6637 (exprs!3818 List!58233)) )
))
(declare-fun z!4747 () (InoxSet Context!6636))

(declare-fun from!1228 () Int)

(declare-fun lt!2079153 () Int)

(declare-fun lt!2079158 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!207 ((InoxSet Context!6636) Int BalanceConc!30254 Int) Int)

(assert (=> b!5023790 (= lt!2079158 (findLongestMatchInnerZipperFastV2!207 z!4747 from!1228 totalInput!1141 lt!2079153))))

(declare-fun b!5023792 () Bool)

(declare-fun e!3138364 () Bool)

(declare-fun tp!1408384 () Bool)

(assert (=> b!5023792 (= e!3138364 tp!1408384)))

(declare-fun b!5023793 () Bool)

(declare-fun res!2141913 () Bool)

(assert (=> b!5023793 (=> res!2141913 e!3138361)))

(declare-fun lt!2079152 () List!58232)

(declare-fun matchZipper!647 ((InoxSet Context!6636) List!58232) Bool)

(assert (=> b!5023793 (= res!2141913 (not (matchZipper!647 z!4747 lt!2079152)))))

(declare-fun b!5023794 () Bool)

(declare-fun res!2141918 () Bool)

(declare-fun e!3138362 () Bool)

(assert (=> b!5023794 (=> (not res!2141918) (not e!3138362))))

(declare-fun lostCauseZipper!907 ((InoxSet Context!6636)) Bool)

(assert (=> b!5023794 (= res!2141918 (not (lostCauseZipper!907 z!4747)))))

(declare-fun setIsEmpty!28802 () Bool)

(declare-fun setRes!28802 () Bool)

(assert (=> setIsEmpty!28802 setRes!28802))

(declare-fun b!5023795 () Bool)

(declare-fun res!2141917 () Bool)

(assert (=> b!5023795 (=> (not res!2141917) (not e!3138362))))

(assert (=> b!5023795 (= res!2141917 (not (= from!1228 lt!2079153)))))

(declare-fun b!5023796 () Bool)

(declare-fun res!2141916 () Bool)

(assert (=> b!5023796 (=> res!2141916 e!3138361)))

(declare-fun lt!2079161 () (InoxSet Context!6636))

(declare-fun lt!2079156 () List!58232)

(assert (=> b!5023796 (= res!2141916 (not (matchZipper!647 lt!2079161 lt!2079156)))))

(declare-fun b!5023797 () Bool)

(declare-fun e!3138360 () Bool)

(assert (=> b!5023797 (= e!3138360 e!3138361)))

(declare-fun res!2141915 () Bool)

(assert (=> b!5023797 (=> res!2141915 e!3138361)))

(declare-fun lt!2079155 () List!58232)

(assert (=> b!5023797 (= res!2141915 (not (= lt!2079155 lt!2079152)))))

(declare-fun lt!2079160 () C!28036)

(assert (=> b!5023797 (= lt!2079152 (Cons!58108 lt!2079160 lt!2079156))))

(declare-fun lt!2079162 () List!58232)

(declare-fun apply!14110 (List!58232 Int) C!28036)

(assert (=> b!5023797 (= (Cons!58108 (apply!14110 lt!2079162 from!1228) lt!2079156) lt!2079155)))

(declare-fun lt!2079159 () Int)

(declare-datatypes ((Unit!149291 0))(
  ( (Unit!149292) )
))
(declare-fun lt!2079154 () Unit!149291)

(declare-fun lemmaDropTakeAddOneLeft!80 (List!58232 Int Int) Unit!149291)

(assert (=> b!5023797 (= lt!2079154 (lemmaDropTakeAddOneLeft!80 lt!2079162 from!1228 lt!2079159))))

(declare-fun take!744 (List!58232 Int) List!58232)

(declare-fun drop!2544 (List!58232 Int) List!58232)

(assert (=> b!5023797 (= lt!2079155 (take!744 (drop!2544 lt!2079162 from!1228) (+ 1 lt!2079159)))))

(declare-fun e!3138359 () Bool)

(declare-fun b!5023798 () Bool)

(declare-fun list!18746 (BalanceConc!30254) List!58232)

(assert (=> b!5023798 (= e!3138359 (matchZipper!647 lt!2079161 (take!744 (drop!2544 (list!18746 totalInput!1141) (+ 1 from!1228)) lt!2079159)))))

(declare-fun b!5023799 () Bool)

(declare-fun e!3138363 () Bool)

(assert (=> b!5023799 (= e!3138363 e!3138362)))

(declare-fun res!2141921 () Bool)

(assert (=> b!5023799 (=> (not res!2141921) (not e!3138362))))

(assert (=> b!5023799 (= res!2141921 (<= from!1228 lt!2079153))))

(declare-fun size!38666 (BalanceConc!30254) Int)

(assert (=> b!5023799 (= lt!2079153 (size!38666 totalInput!1141))))

(declare-fun res!2141920 () Bool)

(assert (=> start!531010 (=> (not res!2141920) (not e!3138363))))

(assert (=> start!531010 (= res!2141920 (>= from!1228 0))))

(assert (=> start!531010 e!3138363))

(assert (=> start!531010 true))

(declare-fun e!3138365 () Bool)

(declare-fun inv!76566 (BalanceConc!30254) Bool)

(assert (=> start!531010 (and (inv!76566 totalInput!1141) e!3138365)))

(declare-fun condSetEmpty!28802 () Bool)

(assert (=> start!531010 (= condSetEmpty!28802 (= z!4747 ((as const (Array Context!6636 Bool)) false)))))

(assert (=> start!531010 setRes!28802))

(declare-fun b!5023791 () Bool)

(assert (=> b!5023791 (= e!3138362 (not e!3138360))))

(declare-fun res!2141919 () Bool)

(assert (=> b!5023791 (=> res!2141919 e!3138360)))

(assert (=> b!5023791 (= res!2141919 (<= lt!2079159 0))))

(assert (=> b!5023791 (= lt!2079156 (take!744 (drop!2544 lt!2079162 (+ 1 from!1228)) lt!2079159))))

(assert (=> b!5023791 (= lt!2079162 (list!18746 totalInput!1141))))

(assert (=> b!5023791 e!3138359))

(declare-fun res!2141914 () Bool)

(assert (=> b!5023791 (=> res!2141914 e!3138359)))

(assert (=> b!5023791 (= res!2141914 (= lt!2079159 0))))

(declare-fun lt!2079157 () Unit!149291)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!90 ((InoxSet Context!6636) Int BalanceConc!30254) Unit!149291)

(assert (=> b!5023791 (= lt!2079157 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!90 lt!2079161 (+ 1 from!1228) totalInput!1141))))

(assert (=> b!5023791 (= lt!2079159 (findLongestMatchInnerZipperFastV2!207 lt!2079161 (+ 1 from!1228) totalInput!1141 lt!2079153))))

(declare-fun derivationStepZipper!689 ((InoxSet Context!6636) C!28036) (InoxSet Context!6636))

(assert (=> b!5023791 (= lt!2079161 (derivationStepZipper!689 z!4747 lt!2079160))))

(declare-fun apply!14111 (BalanceConc!30254 Int) C!28036)

(assert (=> b!5023791 (= lt!2079160 (apply!14111 totalInput!1141 from!1228))))

(declare-fun setNonEmpty!28802 () Bool)

(declare-fun setElem!28802 () Context!6636)

(declare-fun tp!1408383 () Bool)

(declare-fun inv!76567 (Context!6636) Bool)

(assert (=> setNonEmpty!28802 (= setRes!28802 (and tp!1408383 (inv!76567 setElem!28802) e!3138364))))

(declare-fun setRest!28802 () (InoxSet Context!6636))

(assert (=> setNonEmpty!28802 (= z!4747 ((_ map or) (store ((as const (Array Context!6636 Bool)) false) setElem!28802 true) setRest!28802))))

(declare-fun b!5023800 () Bool)

(declare-fun tp!1408382 () Bool)

(declare-fun inv!76568 (Conc!15412) Bool)

(assert (=> b!5023800 (= e!3138365 (and (inv!76568 (c!858985 totalInput!1141)) tp!1408382))))

(assert (= (and start!531010 res!2141920) b!5023799))

(assert (= (and b!5023799 res!2141921) b!5023794))

(assert (= (and b!5023794 res!2141918) b!5023795))

(assert (= (and b!5023795 res!2141917) b!5023791))

(assert (= (and b!5023791 (not res!2141914)) b!5023798))

(assert (= (and b!5023791 (not res!2141919)) b!5023797))

(assert (= (and b!5023797 (not res!2141915)) b!5023796))

(assert (= (and b!5023796 (not res!2141916)) b!5023793))

(assert (= (and b!5023793 (not res!2141913)) b!5023790))

(assert (= start!531010 b!5023800))

(assert (= (and start!531010 condSetEmpty!28802) setIsEmpty!28802))

(assert (= (and start!531010 (not condSetEmpty!28802)) setNonEmpty!28802))

(assert (= setNonEmpty!28802 b!5023792))

(declare-fun m!6058922 () Bool)

(assert (=> b!5023794 m!6058922))

(declare-fun m!6058924 () Bool)

(assert (=> b!5023799 m!6058924))

(declare-fun m!6058926 () Bool)

(assert (=> start!531010 m!6058926))

(declare-fun m!6058928 () Bool)

(assert (=> b!5023796 m!6058928))

(declare-fun m!6058930 () Bool)

(assert (=> setNonEmpty!28802 m!6058930))

(declare-fun m!6058932 () Bool)

(assert (=> b!5023798 m!6058932))

(assert (=> b!5023798 m!6058932))

(declare-fun m!6058934 () Bool)

(assert (=> b!5023798 m!6058934))

(assert (=> b!5023798 m!6058934))

(declare-fun m!6058936 () Bool)

(assert (=> b!5023798 m!6058936))

(assert (=> b!5023798 m!6058936))

(declare-fun m!6058938 () Bool)

(assert (=> b!5023798 m!6058938))

(declare-fun m!6058940 () Bool)

(assert (=> b!5023790 m!6058940))

(declare-fun m!6058942 () Bool)

(assert (=> b!5023797 m!6058942))

(declare-fun m!6058944 () Bool)

(assert (=> b!5023797 m!6058944))

(declare-fun m!6058946 () Bool)

(assert (=> b!5023797 m!6058946))

(assert (=> b!5023797 m!6058946))

(declare-fun m!6058948 () Bool)

(assert (=> b!5023797 m!6058948))

(declare-fun m!6058950 () Bool)

(assert (=> b!5023793 m!6058950))

(declare-fun m!6058952 () Bool)

(assert (=> b!5023791 m!6058952))

(declare-fun m!6058954 () Bool)

(assert (=> b!5023791 m!6058954))

(declare-fun m!6058956 () Bool)

(assert (=> b!5023791 m!6058956))

(declare-fun m!6058958 () Bool)

(assert (=> b!5023791 m!6058958))

(declare-fun m!6058960 () Bool)

(assert (=> b!5023791 m!6058960))

(declare-fun m!6058962 () Bool)

(assert (=> b!5023791 m!6058962))

(assert (=> b!5023791 m!6058932))

(assert (=> b!5023791 m!6058960))

(declare-fun m!6058964 () Bool)

(assert (=> b!5023800 m!6058964))

(check-sat (not b!5023797) (not b!5023800) (not b!5023790) (not b!5023796) (not b!5023791) (not b!5023798) (not setNonEmpty!28802) (not b!5023794) (not start!531010) (not b!5023792) (not b!5023793) (not b!5023799))
(check-sat)
