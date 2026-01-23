; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536022 () Bool)

(assert start!536022)

(declare-fun b!5087963 () Bool)

(declare-fun e!3173231 () Bool)

(declare-fun lt!2091931 () Int)

(declare-fun from!978 () Int)

(assert (=> b!5087963 (= e!3173231 (>= (- lt!2091931 (+ 1 from!978)) (- lt!2091931 from!978)))))

(declare-datatypes ((C!28152 0))(
  ( (C!28153 (val!23684 Int)) )
))
(declare-fun lt!2091930 () C!28152)

(declare-datatypes ((List!58601 0))(
  ( (Nil!58477) (Cons!58477 (h!64925 C!28152) (t!371464 List!58601)) )
))
(declare-datatypes ((IArray!31261 0))(
  ( (IArray!31262 (innerList!15688 List!58601)) )
))
(declare-datatypes ((Conc!15600 0))(
  ( (Node!15600 (left!42870 Conc!15600) (right!43200 Conc!15600) (csize!31430 Int) (cheight!15811 Int)) (Leaf!25905 (xs!18982 IArray!31261) (csize!31431 Int)) (Empty!15600) )
))
(declare-datatypes ((BalanceConc!30390 0))(
  ( (BalanceConc!30391 (c!874222 Conc!15600)) )
))
(declare-fun totalInput!789 () BalanceConc!30390)

(declare-fun apply!14226 (BalanceConc!30390 Int) C!28152)

(assert (=> b!5087963 (= lt!2091930 (apply!14226 totalInput!789 from!978))))

(declare-fun b!5087964 () Bool)

(declare-fun e!3173232 () Bool)

(assert (=> b!5087964 (= e!3173232 e!3173231)))

(declare-fun res!2165987 () Bool)

(assert (=> b!5087964 (=> (not res!2165987) (not e!3173231))))

(declare-fun totalInputSize!236 () Int)

(assert (=> b!5087964 (= res!2165987 (and (<= from!978 lt!2091931) (= totalInputSize!236 lt!2091931) (not (= from!978 totalInputSize!236))))))

(declare-fun size!39139 (BalanceConc!30390) Int)

(assert (=> b!5087964 (= lt!2091931 (size!39139 totalInput!789))))

(declare-datatypes ((Regex!13951 0))(
  ( (ElementMatch!13951 (c!874223 C!28152)) (Concat!22744 (regOne!28414 Regex!13951) (regTwo!28414 Regex!13951)) (EmptyExpr!13951) (Star!13951 (reg!14280 Regex!13951)) (EmptyLang!13951) (Union!13951 (regOne!28415 Regex!13951) (regTwo!28415 Regex!13951)) )
))
(declare-datatypes ((List!58602 0))(
  ( (Nil!58478) (Cons!58478 (h!64926 Regex!13951) (t!371465 List!58602)) )
))
(declare-datatypes ((Context!6752 0))(
  ( (Context!6753 (exprs!3876 List!58602)) )
))
(declare-fun setElem!29068 () Context!6752)

(declare-fun e!3173233 () Bool)

(declare-fun tp!1418416 () Bool)

(declare-fun setNonEmpty!29068 () Bool)

(declare-fun setRes!29068 () Bool)

(declare-fun inv!77748 (Context!6752) Bool)

(assert (=> setNonEmpty!29068 (= setRes!29068 (and tp!1418416 (inv!77748 setElem!29068) e!3173233))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3736 () (InoxSet Context!6752))

(declare-fun setRest!29068 () (InoxSet Context!6752))

(assert (=> setNonEmpty!29068 (= z!3736 ((_ map or) (store ((as const (Array Context!6752 Bool)) false) setElem!29068 true) setRest!29068))))

(declare-fun setIsEmpty!29068 () Bool)

(assert (=> setIsEmpty!29068 setRes!29068))

(declare-fun res!2165985 () Bool)

(assert (=> start!536022 (=> (not res!2165985) (not e!3173232))))

(assert (=> start!536022 (= res!2165985 (>= from!978 0))))

(assert (=> start!536022 e!3173232))

(assert (=> start!536022 true))

(declare-fun condSetEmpty!29068 () Bool)

(assert (=> start!536022 (= condSetEmpty!29068 (= z!3736 ((as const (Array Context!6752 Bool)) false)))))

(assert (=> start!536022 setRes!29068))

(declare-fun e!3173234 () Bool)

(declare-fun inv!77749 (BalanceConc!30390) Bool)

(assert (=> start!536022 (and (inv!77749 totalInput!789) e!3173234)))

(declare-fun b!5087965 () Bool)

(declare-fun tp!1418417 () Bool)

(assert (=> b!5087965 (= e!3173233 tp!1418417)))

(declare-fun b!5087966 () Bool)

(declare-fun res!2165986 () Bool)

(assert (=> b!5087966 (=> (not res!2165986) (not e!3173231))))

(declare-fun lostCauseZipper!963 ((InoxSet Context!6752)) Bool)

(assert (=> b!5087966 (= res!2165986 (not (lostCauseZipper!963 z!3736)))))

(declare-fun b!5087967 () Bool)

(declare-fun tp!1418415 () Bool)

(declare-fun inv!77750 (Conc!15600) Bool)

(assert (=> b!5087967 (= e!3173234 (and (inv!77750 (c!874222 totalInput!789)) tp!1418415))))

(assert (= (and start!536022 res!2165985) b!5087964))

(assert (= (and b!5087964 res!2165987) b!5087966))

(assert (= (and b!5087966 res!2165986) b!5087963))

(assert (= (and start!536022 condSetEmpty!29068) setIsEmpty!29068))

(assert (= (and start!536022 (not condSetEmpty!29068)) setNonEmpty!29068))

(assert (= setNonEmpty!29068 b!5087965))

(assert (= start!536022 b!5087967))

(declare-fun m!6145946 () Bool)

(assert (=> b!5087963 m!6145946))

(declare-fun m!6145948 () Bool)

(assert (=> b!5087966 m!6145948))

(declare-fun m!6145950 () Bool)

(assert (=> start!536022 m!6145950))

(declare-fun m!6145952 () Bool)

(assert (=> setNonEmpty!29068 m!6145952))

(declare-fun m!6145954 () Bool)

(assert (=> b!5087967 m!6145954))

(declare-fun m!6145956 () Bool)

(assert (=> b!5087964 m!6145956))

(check-sat (not b!5087965) (not start!536022) (not b!5087967) (not setNonEmpty!29068) (not b!5087964) (not b!5087963) (not b!5087966))
(check-sat)
