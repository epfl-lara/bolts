; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213614 () Bool)

(assert start!213614)

(declare-fun res!945724 () Bool)

(declare-fun e!1405973 () Bool)

(assert (=> start!213614 (=> (not res!945724) (not e!1405973))))

(declare-fun from!1082 () Int)

(assert (=> start!213614 (= res!945724 (>= from!1082 0))))

(assert (=> start!213614 e!1405973))

(assert (=> start!213614 true))

(declare-datatypes ((C!12564 0))(
  ( (C!12565 (val!7268 Int)) )
))
(declare-datatypes ((List!25712 0))(
  ( (Nil!25628) (Cons!25628 (h!31029 C!12564) (t!198330 List!25712)) )
))
(declare-datatypes ((IArray!16695 0))(
  ( (IArray!16696 (innerList!8405 List!25712)) )
))
(declare-datatypes ((Conc!8345 0))(
  ( (Node!8345 (left!19684 Conc!8345) (right!20014 Conc!8345) (csize!16920 Int) (cheight!8556 Int)) (Leaf!12217 (xs!11287 IArray!16695) (csize!16921 Int)) (Empty!8345) )
))
(declare-datatypes ((BalanceConc!16452 0))(
  ( (BalanceConc!16453 (c!350876 Conc!8345)) )
))
(declare-fun totalInput!891 () BalanceConc!16452)

(declare-fun e!1405972 () Bool)

(declare-fun inv!34399 (BalanceConc!16452) Bool)

(assert (=> start!213614 (and (inv!34399 totalInput!891) e!1405972)))

(declare-fun condSetEmpty!18930 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6209 0))(
  ( (ElementMatch!6209 (c!350877 C!12564)) (Concat!10511 (regOne!12930 Regex!6209) (regTwo!12930 Regex!6209)) (EmptyExpr!6209) (Star!6209 (reg!6538 Regex!6209)) (EmptyLang!6209) (Union!6209 (regOne!12931 Regex!6209) (regTwo!12931 Regex!6209)) )
))
(declare-datatypes ((List!25713 0))(
  ( (Nil!25629) (Cons!25629 (h!31030 Regex!6209) (t!198331 List!25713)) )
))
(declare-datatypes ((Context!3558 0))(
  ( (Context!3559 (exprs!2279 List!25713)) )
))
(declare-fun z!3888 () (InoxSet Context!3558))

(assert (=> start!213614 (= condSetEmpty!18930 (= z!3888 ((as const (Array Context!3558 Bool)) false)))))

(declare-fun setRes!18930 () Bool)

(assert (=> start!213614 setRes!18930))

(declare-fun b!2200157 () Bool)

(declare-fun res!945726 () Bool)

(declare-fun e!1405974 () Bool)

(assert (=> b!2200157 (=> (not res!945726) (not e!1405974))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200157 (= res!945726 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200158 () Bool)

(declare-fun e!1405975 () Bool)

(declare-fun tp!684694 () Bool)

(assert (=> b!2200158 (= e!1405975 tp!684694)))

(declare-fun b!2200159 () Bool)

(declare-fun lt!822984 () Int)

(assert (=> b!2200159 (= e!1405974 (or (< (+ 1 from!1082) 0) (> (+ 1 from!1082) lt!822984)))))

(declare-fun lt!822983 () Bool)

(declare-fun nullableZipper!489 ((InoxSet Context!3558)) Bool)

(declare-fun derivationStepZipper!267 ((InoxSet Context!3558) C!12564) (InoxSet Context!3558))

(declare-fun apply!6285 (BalanceConc!16452 Int) C!12564)

(assert (=> b!2200159 (= lt!822983 (nullableZipper!489 (derivationStepZipper!267 z!3888 (apply!6285 totalInput!891 from!1082))))))

(declare-fun b!2200160 () Bool)

(declare-fun res!945728 () Bool)

(assert (=> b!2200160 (=> (not res!945728) (not e!1405974))))

(declare-fun lostCauseZipper!319 ((InoxSet Context!3558)) Bool)

(assert (=> b!2200160 (= res!945728 (not (lostCauseZipper!319 z!3888)))))

(declare-fun b!2200161 () Bool)

(declare-fun res!945723 () Bool)

(assert (=> b!2200161 (=> (not res!945723) (not e!1405974))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2200161 (= res!945723 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!822984))))))

(declare-fun setIsEmpty!18930 () Bool)

(assert (=> setIsEmpty!18930 setRes!18930))

(declare-fun b!2200162 () Bool)

(assert (=> b!2200162 (= e!1405973 e!1405974)))

(declare-fun res!945729 () Bool)

(assert (=> b!2200162 (=> (not res!945729) (not e!1405974))))

(assert (=> b!2200162 (= res!945729 (and (<= from!1082 lt!822984) (>= knownSize!10 0) (<= knownSize!10 (- lt!822984 from!1082))))))

(declare-fun size!19974 (BalanceConc!16452) Int)

(assert (=> b!2200162 (= lt!822984 (size!19974 totalInput!891))))

(declare-fun b!2200163 () Bool)

(declare-fun res!945725 () Bool)

(assert (=> b!2200163 (=> (not res!945725) (not e!1405974))))

(declare-fun matchZipper!295 ((InoxSet Context!3558) List!25712) Bool)

(declare-fun take!387 (List!25712 Int) List!25712)

(declare-fun drop!1397 (List!25712 Int) List!25712)

(declare-fun list!9867 (BalanceConc!16452) List!25712)

(assert (=> b!2200163 (= res!945725 (matchZipper!295 z!3888 (take!387 (drop!1397 (list!9867 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2200164 () Bool)

(declare-fun e!1405971 () Bool)

(assert (=> b!2200164 (= e!1405971 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200165 () Bool)

(declare-fun res!945731 () Bool)

(assert (=> b!2200165 (=> (not res!945731) (not e!1405974))))

(assert (=> b!2200165 (= res!945731 e!1405971)))

(declare-fun res!945730 () Bool)

(assert (=> b!2200165 (=> res!945730 e!1405971)))

(assert (=> b!2200165 (= res!945730 (not (nullableZipper!489 z!3888)))))

(declare-fun b!2200166 () Bool)

(declare-fun res!945727 () Bool)

(assert (=> b!2200166 (=> (not res!945727) (not e!1405974))))

(declare-fun isEmpty!14619 (BalanceConc!16452) Bool)

(assert (=> b!2200166 (= res!945727 (not (isEmpty!14619 totalInput!891)))))

(declare-fun setNonEmpty!18930 () Bool)

(declare-fun setElem!18930 () Context!3558)

(declare-fun tp!684695 () Bool)

(declare-fun inv!34400 (Context!3558) Bool)

(assert (=> setNonEmpty!18930 (= setRes!18930 (and tp!684695 (inv!34400 setElem!18930) e!1405975))))

(declare-fun setRest!18930 () (InoxSet Context!3558))

(assert (=> setNonEmpty!18930 (= z!3888 ((_ map or) (store ((as const (Array Context!3558 Bool)) false) setElem!18930 true) setRest!18930))))

(declare-fun b!2200167 () Bool)

(declare-fun tp!684696 () Bool)

(declare-fun inv!34401 (Conc!8345) Bool)

(assert (=> b!2200167 (= e!1405972 (and (inv!34401 (c!350876 totalInput!891)) tp!684696))))

(assert (= (and start!213614 res!945724) b!2200162))

(assert (= (and b!2200162 res!945729) b!2200163))

(assert (= (and b!2200163 res!945725) b!2200157))

(assert (= (and b!2200157 res!945726) b!2200165))

(assert (= (and b!2200165 (not res!945730)) b!2200164))

(assert (= (and b!2200165 res!945731) b!2200166))

(assert (= (and b!2200166 res!945727) b!2200161))

(assert (= (and b!2200161 res!945723) b!2200160))

(assert (= (and b!2200160 res!945728) b!2200159))

(assert (= start!213614 b!2200167))

(assert (= (and start!213614 condSetEmpty!18930) setIsEmpty!18930))

(assert (= (and start!213614 (not condSetEmpty!18930)) setNonEmpty!18930))

(assert (= setNonEmpty!18930 b!2200158))

(declare-fun m!2642863 () Bool)

(assert (=> b!2200167 m!2642863))

(declare-fun m!2642865 () Bool)

(assert (=> b!2200160 m!2642865))

(declare-fun m!2642867 () Bool)

(assert (=> start!213614 m!2642867))

(declare-fun m!2642869 () Bool)

(assert (=> b!2200159 m!2642869))

(assert (=> b!2200159 m!2642869))

(declare-fun m!2642871 () Bool)

(assert (=> b!2200159 m!2642871))

(assert (=> b!2200159 m!2642871))

(declare-fun m!2642873 () Bool)

(assert (=> b!2200159 m!2642873))

(declare-fun m!2642875 () Bool)

(assert (=> b!2200165 m!2642875))

(declare-fun m!2642877 () Bool)

(assert (=> b!2200166 m!2642877))

(declare-fun m!2642879 () Bool)

(assert (=> b!2200162 m!2642879))

(declare-fun m!2642881 () Bool)

(assert (=> setNonEmpty!18930 m!2642881))

(declare-fun m!2642883 () Bool)

(assert (=> b!2200163 m!2642883))

(assert (=> b!2200163 m!2642883))

(declare-fun m!2642885 () Bool)

(assert (=> b!2200163 m!2642885))

(assert (=> b!2200163 m!2642885))

(declare-fun m!2642887 () Bool)

(assert (=> b!2200163 m!2642887))

(assert (=> b!2200163 m!2642887))

(declare-fun m!2642889 () Bool)

(assert (=> b!2200163 m!2642889))

(check-sat (not setNonEmpty!18930) (not b!2200163) (not b!2200165) (not b!2200160) (not b!2200162) (not b!2200166) (not start!213614) (not b!2200158) (not b!2200167) (not b!2200159))
(check-sat)
