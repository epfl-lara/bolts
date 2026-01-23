; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536010 () Bool)

(assert start!536010)

(declare-fun b!5087867 () Bool)

(declare-fun e!3173155 () Bool)

(declare-datatypes ((C!28140 0))(
  ( (C!28141 (val!23678 Int)) )
))
(declare-datatypes ((List!58589 0))(
  ( (Nil!58465) (Cons!58465 (h!64913 C!28140) (t!371452 List!58589)) )
))
(declare-datatypes ((IArray!31249 0))(
  ( (IArray!31250 (innerList!15682 List!58589)) )
))
(declare-datatypes ((Conc!15594 0))(
  ( (Node!15594 (left!42861 Conc!15594) (right!43191 Conc!15594) (csize!31418 Int) (cheight!15805 Int)) (Leaf!25896 (xs!18976 IArray!31249) (csize!31419 Int)) (Empty!15594) )
))
(declare-datatypes ((BalanceConc!30378 0))(
  ( (BalanceConc!30379 (c!874210 Conc!15594)) )
))
(declare-fun totalInput!789 () BalanceConc!30378)

(declare-fun tp!1418362 () Bool)

(declare-fun inv!77721 (Conc!15594) Bool)

(assert (=> b!5087867 (= e!3173155 (and (inv!77721 (c!874210 totalInput!789)) tp!1418362))))

(declare-fun res!2165927 () Bool)

(declare-fun e!3173153 () Bool)

(assert (=> start!536010 (=> (not res!2165927) (not e!3173153))))

(declare-fun from!978 () Int)

(assert (=> start!536010 (= res!2165927 (>= from!978 0))))

(assert (=> start!536010 e!3173153))

(assert (=> start!536010 true))

(declare-fun condSetEmpty!29050 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13945 0))(
  ( (ElementMatch!13945 (c!874211 C!28140)) (Concat!22738 (regOne!28402 Regex!13945) (regTwo!28402 Regex!13945)) (EmptyExpr!13945) (Star!13945 (reg!14274 Regex!13945)) (EmptyLang!13945) (Union!13945 (regOne!28403 Regex!13945) (regTwo!28403 Regex!13945)) )
))
(declare-datatypes ((List!58590 0))(
  ( (Nil!58466) (Cons!58466 (h!64914 Regex!13945) (t!371453 List!58590)) )
))
(declare-datatypes ((Context!6740 0))(
  ( (Context!6741 (exprs!3870 List!58590)) )
))
(declare-fun z!3736 () (InoxSet Context!6740))

(assert (=> start!536010 (= condSetEmpty!29050 (= z!3736 ((as const (Array Context!6740 Bool)) false)))))

(declare-fun setRes!29050 () Bool)

(assert (=> start!536010 setRes!29050))

(declare-fun inv!77722 (BalanceConc!30378) Bool)

(assert (=> start!536010 (and (inv!77722 totalInput!789) e!3173155)))

(declare-fun b!5087868 () Bool)

(declare-fun res!2165926 () Bool)

(declare-fun e!3173154 () Bool)

(assert (=> b!5087868 (=> (not res!2165926) (not e!3173154))))

(declare-fun lostCauseZipper!957 ((InoxSet Context!6740)) Bool)

(assert (=> b!5087868 (= res!2165926 (not (lostCauseZipper!957 z!3736)))))

(declare-fun b!5087869 () Bool)

(assert (=> b!5087869 (= e!3173153 e!3173154)))

(declare-fun res!2165925 () Bool)

(assert (=> b!5087869 (=> (not res!2165925) (not e!3173154))))

(declare-fun totalInputSize!236 () Int)

(declare-fun lt!2091900 () Int)

(assert (=> b!5087869 (= res!2165925 (and (<= from!978 lt!2091900) (= totalInputSize!236 lt!2091900) (not (= from!978 totalInputSize!236))))))

(declare-fun size!39133 (BalanceConc!30378) Int)

(assert (=> b!5087869 (= lt!2091900 (size!39133 totalInput!789))))

(declare-fun b!5087870 () Bool)

(assert (=> b!5087870 (= e!3173154 (or (< (+ 1 from!978) 0) (> (+ 1 from!978) lt!2091900)))))

(declare-fun lt!2091901 () C!28140)

(declare-fun apply!14222 (BalanceConc!30378 Int) C!28140)

(assert (=> b!5087870 (= lt!2091901 (apply!14222 totalInput!789 from!978))))

(declare-fun setIsEmpty!29050 () Bool)

(assert (=> setIsEmpty!29050 setRes!29050))

(declare-fun setElem!29050 () Context!6740)

(declare-fun e!3173156 () Bool)

(declare-fun tp!1418361 () Bool)

(declare-fun setNonEmpty!29050 () Bool)

(declare-fun inv!77723 (Context!6740) Bool)

(assert (=> setNonEmpty!29050 (= setRes!29050 (and tp!1418361 (inv!77723 setElem!29050) e!3173156))))

(declare-fun setRest!29050 () (InoxSet Context!6740))

(assert (=> setNonEmpty!29050 (= z!3736 ((_ map or) (store ((as const (Array Context!6740 Bool)) false) setElem!29050 true) setRest!29050))))

(declare-fun b!5087871 () Bool)

(declare-fun tp!1418363 () Bool)

(assert (=> b!5087871 (= e!3173156 tp!1418363)))

(assert (= (and start!536010 res!2165927) b!5087869))

(assert (= (and b!5087869 res!2165925) b!5087868))

(assert (= (and b!5087868 res!2165926) b!5087870))

(assert (= (and start!536010 condSetEmpty!29050) setIsEmpty!29050))

(assert (= (and start!536010 (not condSetEmpty!29050)) setNonEmpty!29050))

(assert (= setNonEmpty!29050 b!5087871))

(assert (= start!536010 b!5087867))

(declare-fun m!6145878 () Bool)

(assert (=> b!5087869 m!6145878))

(declare-fun m!6145880 () Bool)

(assert (=> setNonEmpty!29050 m!6145880))

(declare-fun m!6145882 () Bool)

(assert (=> start!536010 m!6145882))

(declare-fun m!6145884 () Bool)

(assert (=> b!5087868 m!6145884))

(declare-fun m!6145886 () Bool)

(assert (=> b!5087867 m!6145886))

(declare-fun m!6145888 () Bool)

(assert (=> b!5087870 m!6145888))

(check-sat (not setNonEmpty!29050) (not b!5087870) (not b!5087867) (not start!536010) (not b!5087871) (not b!5087868) (not b!5087869))
(check-sat)
