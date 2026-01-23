; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531014 () Bool)

(assert start!531014)

(declare-fun setIsEmpty!28808 () Bool)

(declare-fun setRes!28808 () Bool)

(assert (=> setIsEmpty!28808 setRes!28808))

(declare-fun b!5023846 () Bool)

(declare-fun e!3138399 () Bool)

(declare-fun e!3138397 () Bool)

(assert (=> b!5023846 (= e!3138399 e!3138397)))

(declare-fun res!2141958 () Bool)

(assert (=> b!5023846 (=> (not res!2141958) (not e!3138397))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079205 () Int)

(assert (=> b!5023846 (= res!2141958 (<= from!1228 lt!2079205))))

(declare-datatypes ((C!28040 0))(
  ( (C!28041 (val!23396 Int)) )
))
(declare-datatypes ((List!58236 0))(
  ( (Nil!58112) (Cons!58112 (h!64560 C!28040) (t!370628 List!58236)) )
))
(declare-datatypes ((IArray!30889 0))(
  ( (IArray!30890 (innerList!15502 List!58236)) )
))
(declare-datatypes ((Conc!15414 0))(
  ( (Node!15414 (left!42496 Conc!15414) (right!42826 Conc!15414) (csize!31058 Int) (cheight!15625 Int)) (Leaf!25575 (xs!18740 IArray!30889) (csize!31059 Int)) (Empty!15414) )
))
(declare-datatypes ((BalanceConc!30258 0))(
  ( (BalanceConc!30259 (c!858989 Conc!15414)) )
))
(declare-fun totalInput!1141 () BalanceConc!30258)

(declare-fun size!38669 (BalanceConc!30258) Int)

(assert (=> b!5023846 (= lt!2079205 (size!38669 totalInput!1141))))

(declare-fun b!5023847 () Bool)

(declare-fun e!3138396 () Bool)

(declare-fun tp!1408400 () Bool)

(assert (=> b!5023847 (= e!3138396 tp!1408400)))

(declare-fun b!5023848 () Bool)

(declare-fun res!2141960 () Bool)

(declare-fun e!3138401 () Bool)

(assert (=> b!5023848 (=> res!2141960 e!3138401)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13895 0))(
  ( (ElementMatch!13895 (c!858990 C!28040)) (Concat!22688 (regOne!28302 Regex!13895) (regTwo!28302 Regex!13895)) (EmptyExpr!13895) (Star!13895 (reg!14224 Regex!13895)) (EmptyLang!13895) (Union!13895 (regOne!28303 Regex!13895) (regTwo!28303 Regex!13895)) )
))
(declare-datatypes ((List!58237 0))(
  ( (Nil!58113) (Cons!58113 (h!64561 Regex!13895) (t!370629 List!58237)) )
))
(declare-datatypes ((Context!6640 0))(
  ( (Context!6641 (exprs!3820 List!58237)) )
))
(declare-fun lt!2079208 () (InoxSet Context!6640))

(declare-fun nullableZipper!912 ((InoxSet Context!6640)) Bool)

(assert (=> b!5023848 (= res!2141960 (not (nullableZipper!912 lt!2079208)))))

(declare-fun b!5023849 () Bool)

(assert (=> b!5023849 (= e!3138401 true)))

(declare-fun lt!2079203 () Int)

(declare-fun lt!2079204 () List!58236)

(declare-fun size!38670 (List!58236) Int)

(assert (=> b!5023849 (= lt!2079203 (size!38670 lt!2079204))))

(declare-fun lt!2079209 () List!58236)

(declare-fun take!746 (List!58236 Int) List!58236)

(declare-fun drop!2546 (List!58236 Int) List!58236)

(assert (=> b!5023849 (= lt!2079209 (take!746 (drop!2546 lt!2079204 from!1228) 1))))

(declare-fun res!2141962 () Bool)

(assert (=> start!531014 (=> (not res!2141962) (not e!3138399))))

(assert (=> start!531014 (= res!2141962 (>= from!1228 0))))

(assert (=> start!531014 e!3138399))

(assert (=> start!531014 true))

(declare-fun e!3138398 () Bool)

(declare-fun inv!76575 (BalanceConc!30258) Bool)

(assert (=> start!531014 (and (inv!76575 totalInput!1141) e!3138398)))

(declare-fun condSetEmpty!28808 () Bool)

(declare-fun z!4747 () (InoxSet Context!6640))

(assert (=> start!531014 (= condSetEmpty!28808 (= z!4747 ((as const (Array Context!6640 Bool)) false)))))

(assert (=> start!531014 setRes!28808))

(declare-fun setNonEmpty!28808 () Bool)

(declare-fun tp!1408401 () Bool)

(declare-fun setElem!28808 () Context!6640)

(declare-fun inv!76576 (Context!6640) Bool)

(assert (=> setNonEmpty!28808 (= setRes!28808 (and tp!1408401 (inv!76576 setElem!28808) e!3138396))))

(declare-fun setRest!28808 () (InoxSet Context!6640))

(assert (=> setNonEmpty!28808 (= z!4747 ((_ map or) (store ((as const (Array Context!6640 Bool)) false) setElem!28808 true) setRest!28808))))

(declare-fun b!5023850 () Bool)

(declare-fun tp!1408402 () Bool)

(declare-fun inv!76577 (Conc!15414) Bool)

(assert (=> b!5023850 (= e!3138398 (and (inv!76577 (c!858989 totalInput!1141)) tp!1408402))))

(declare-fun b!5023851 () Bool)

(assert (=> b!5023851 (= e!3138397 (not e!3138401))))

(declare-fun res!2141957 () Bool)

(assert (=> b!5023851 (=> res!2141957 e!3138401)))

(declare-fun lt!2079207 () Int)

(assert (=> b!5023851 (= res!2141957 (> lt!2079207 0))))

(declare-fun lt!2079210 () List!58236)

(assert (=> b!5023851 (= lt!2079210 (take!746 (drop!2546 lt!2079204 (+ 1 from!1228)) lt!2079207))))

(declare-fun list!18748 (BalanceConc!30258) List!58236)

(assert (=> b!5023851 (= lt!2079204 (list!18748 totalInput!1141))))

(declare-fun e!3138400 () Bool)

(assert (=> b!5023851 e!3138400))

(declare-fun res!2141963 () Bool)

(assert (=> b!5023851 (=> res!2141963 e!3138400)))

(assert (=> b!5023851 (= res!2141963 (= lt!2079207 0))))

(declare-datatypes ((Unit!149295 0))(
  ( (Unit!149296) )
))
(declare-fun lt!2079206 () Unit!149295)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!92 ((InoxSet Context!6640) Int BalanceConc!30258) Unit!149295)

(assert (=> b!5023851 (= lt!2079206 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!92 lt!2079208 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!209 ((InoxSet Context!6640) Int BalanceConc!30258 Int) Int)

(assert (=> b!5023851 (= lt!2079207 (findLongestMatchInnerZipperFastV2!209 lt!2079208 (+ 1 from!1228) totalInput!1141 lt!2079205))))

(declare-fun derivationStepZipper!691 ((InoxSet Context!6640) C!28040) (InoxSet Context!6640))

(declare-fun apply!14113 (BalanceConc!30258 Int) C!28040)

(assert (=> b!5023851 (= lt!2079208 (derivationStepZipper!691 z!4747 (apply!14113 totalInput!1141 from!1228)))))

(declare-fun b!5023852 () Bool)

(declare-fun matchZipper!649 ((InoxSet Context!6640) List!58236) Bool)

(assert (=> b!5023852 (= e!3138400 (matchZipper!649 lt!2079208 (take!746 (drop!2546 (list!18748 totalInput!1141) (+ 1 from!1228)) lt!2079207)))))

(declare-fun b!5023853 () Bool)

(declare-fun res!2141961 () Bool)

(assert (=> b!5023853 (=> (not res!2141961) (not e!3138397))))

(assert (=> b!5023853 (= res!2141961 (not (= from!1228 lt!2079205)))))

(declare-fun b!5023854 () Bool)

(declare-fun res!2141959 () Bool)

(assert (=> b!5023854 (=> (not res!2141959) (not e!3138397))))

(declare-fun lostCauseZipper!909 ((InoxSet Context!6640)) Bool)

(assert (=> b!5023854 (= res!2141959 (not (lostCauseZipper!909 z!4747)))))

(assert (= (and start!531014 res!2141962) b!5023846))

(assert (= (and b!5023846 res!2141958) b!5023854))

(assert (= (and b!5023854 res!2141959) b!5023853))

(assert (= (and b!5023853 res!2141961) b!5023851))

(assert (= (and b!5023851 (not res!2141963)) b!5023852))

(assert (= (and b!5023851 (not res!2141957)) b!5023848))

(assert (= (and b!5023848 (not res!2141960)) b!5023849))

(assert (= start!531014 b!5023850))

(assert (= (and start!531014 condSetEmpty!28808) setIsEmpty!28808))

(assert (= (and start!531014 (not condSetEmpty!28808)) setNonEmpty!28808))

(assert (= setNonEmpty!28808 b!5023847))

(declare-fun m!6059004 () Bool)

(assert (=> b!5023849 m!6059004))

(declare-fun m!6059006 () Bool)

(assert (=> b!5023849 m!6059006))

(assert (=> b!5023849 m!6059006))

(declare-fun m!6059008 () Bool)

(assert (=> b!5023849 m!6059008))

(declare-fun m!6059010 () Bool)

(assert (=> start!531014 m!6059010))

(declare-fun m!6059012 () Bool)

(assert (=> b!5023851 m!6059012))

(declare-fun m!6059014 () Bool)

(assert (=> b!5023851 m!6059014))

(declare-fun m!6059016 () Bool)

(assert (=> b!5023851 m!6059016))

(declare-fun m!6059018 () Bool)

(assert (=> b!5023851 m!6059018))

(declare-fun m!6059020 () Bool)

(assert (=> b!5023851 m!6059020))

(assert (=> b!5023851 m!6059018))

(declare-fun m!6059022 () Bool)

(assert (=> b!5023851 m!6059022))

(assert (=> b!5023851 m!6059016))

(declare-fun m!6059024 () Bool)

(assert (=> b!5023851 m!6059024))

(declare-fun m!6059026 () Bool)

(assert (=> b!5023848 m!6059026))

(assert (=> b!5023852 m!6059014))

(assert (=> b!5023852 m!6059014))

(declare-fun m!6059028 () Bool)

(assert (=> b!5023852 m!6059028))

(assert (=> b!5023852 m!6059028))

(declare-fun m!6059030 () Bool)

(assert (=> b!5023852 m!6059030))

(assert (=> b!5023852 m!6059030))

(declare-fun m!6059032 () Bool)

(assert (=> b!5023852 m!6059032))

(declare-fun m!6059034 () Bool)

(assert (=> b!5023850 m!6059034))

(declare-fun m!6059036 () Bool)

(assert (=> b!5023846 m!6059036))

(declare-fun m!6059038 () Bool)

(assert (=> setNonEmpty!28808 m!6059038))

(declare-fun m!6059040 () Bool)

(assert (=> b!5023854 m!6059040))

(check-sat (not b!5023846) (not start!531014) (not b!5023850) (not b!5023854) (not b!5023848) (not b!5023852) (not b!5023847) (not b!5023851) (not setNonEmpty!28808) (not b!5023849))
(check-sat)
