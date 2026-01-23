; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212526 () Bool)

(assert start!212526)

(declare-datatypes ((C!12356 0))(
  ( (C!12357 (val!7164 Int)) )
))
(declare-datatypes ((Regex!6105 0))(
  ( (ElementMatch!6105 (c!348528 C!12356)) (Concat!10407 (regOne!12722 Regex!6105) (regTwo!12722 Regex!6105)) (EmptyExpr!6105) (Star!6105 (reg!6434 Regex!6105)) (EmptyLang!6105) (Union!6105 (regOne!12723 Regex!6105) (regTwo!12723 Regex!6105)) )
))
(declare-datatypes ((List!25483 0))(
  ( (Nil!25399) (Cons!25399 (h!30800 Regex!6105) (t!198081 List!25483)) )
))
(declare-datatypes ((Context!3350 0))(
  ( (Context!3351 (exprs!2175 List!25483)) )
))
(declare-fun setElem!18540 () Context!3350)

(declare-fun setNonEmpty!18540 () Bool)

(declare-fun setRes!18540 () Bool)

(declare-fun e!1400173 () Bool)

(declare-fun tp!683037 () Bool)

(declare-fun inv!33873 (Context!3350) Bool)

(assert (=> setNonEmpty!18540 (= setRes!18540 (and tp!683037 (inv!33873 setElem!18540) e!1400173))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3350))

(declare-fun setRest!18540 () (InoxSet Context!3350))

(assert (=> setNonEmpty!18540 (= z!3955 ((_ map or) (store ((as const (Array Context!3350 Bool)) false) setElem!18540 true) setRest!18540))))

(declare-fun b!2191076 () Bool)

(declare-fun e!1400177 () Bool)

(declare-datatypes ((List!25484 0))(
  ( (Nil!25400) (Cons!25400 (h!30801 C!12356) (t!198082 List!25484)) )
))
(declare-datatypes ((IArray!16487 0))(
  ( (IArray!16488 (innerList!8301 List!25484)) )
))
(declare-datatypes ((Conc!8241 0))(
  ( (Node!8241 (left!19488 Conc!8241) (right!19818 Conc!8241) (csize!16712 Int) (cheight!8452 Int)) (Leaf!12061 (xs!11183 IArray!16487) (csize!16713 Int)) (Empty!8241) )
))
(declare-datatypes ((BalanceConc!16244 0))(
  ( (BalanceConc!16245 (c!348529 Conc!8241)) )
))
(declare-fun totalInput!923 () BalanceConc!16244)

(declare-fun tp!683036 () Bool)

(declare-fun inv!33874 (Conc!8241) Bool)

(assert (=> b!2191076 (= e!1400177 (and (inv!33874 (c!348529 totalInput!923)) tp!683036))))

(declare-fun b!2191077 () Bool)

(declare-fun e!1400178 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2191077 (= e!1400178 from!1114)))

(declare-fun b!2191078 () Bool)

(declare-fun tp!683038 () Bool)

(assert (=> b!2191078 (= e!1400173 tp!683038)))

(declare-fun lt!818790 () Int)

(declare-fun lt!818786 () (InoxSet Context!3350))

(declare-fun e!1400172 () Bool)

(declare-fun b!2191079 () Bool)

(declare-fun matchZipper!205 ((InoxSet Context!3350) List!25484) Bool)

(declare-fun take!297 (List!25484 Int) List!25484)

(declare-fun drop!1307 (List!25484 Int) List!25484)

(declare-fun list!9752 (BalanceConc!16244) List!25484)

(assert (=> b!2191079 (= e!1400172 (matchZipper!205 lt!818786 (take!297 (drop!1307 (list!9752 totalInput!923) (+ 1 from!1114)) lt!818790)))))

(declare-fun b!2191080 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191080 (= e!1400178 lastNullablePos!193)))

(declare-fun lt!818792 () Int)

(declare-fun lt!818789 () Int)

(declare-fun lt!818788 () Int)

(declare-fun lt!818791 () Int)

(declare-fun b!2191081 () Bool)

(declare-fun e!1400175 () Bool)

(assert (=> b!2191081 (= e!1400175 (not (or (> lt!818790 0) (> lt!818791 from!1114) (< lt!818791 lt!818792) (< lt!818792 lastNullablePos!193) (> lt!818792 from!1114) (and (not (= lt!818792 from!1114)) (not (= lt!818792 lastNullablePos!193))) (not (= lt!818792 lastNullablePos!193)) (>= lt!818792 from!1114) (> lt!818789 from!1114) (let ((bdg!82471 (+ 1 (- lt!818789 from!1114)))) (or (> bdg!82471 1) (not (= bdg!82471 1)) (not (= lt!818789 from!1114)) (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!818788)))))))))

(assert (=> b!2191081 e!1400172))

(declare-fun res!941689 () Bool)

(assert (=> b!2191081 (=> res!941689 e!1400172)))

(assert (=> b!2191081 (= res!941689 (<= lt!818790 0))))

(assert (=> b!2191081 (= lt!818790 (+ 1 (- lt!818791 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38505 0))(
  ( (Unit!38506) )
))
(declare-fun lt!818787 () Unit!38505)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!110 ((InoxSet Context!3350) Int BalanceConc!16244 Int) Unit!38505)

(assert (=> b!2191081 (= lt!818787 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!110 lt!818786 (+ 1 from!1114) totalInput!923 lt!818792))))

(declare-fun b!2191082 () Bool)

(declare-fun res!941684 () Bool)

(declare-fun e!1400176 () Bool)

(assert (=> b!2191082 (=> (not res!941684) (not e!1400176))))

(declare-fun e!1400179 () Bool)

(assert (=> b!2191082 (= res!941684 e!1400179)))

(declare-fun res!941690 () Bool)

(assert (=> b!2191082 (=> res!941690 e!1400179)))

(declare-fun nullableZipper!385 ((InoxSet Context!3350)) Bool)

(assert (=> b!2191082 (= res!941690 (not (nullableZipper!385 z!3955)))))

(declare-fun res!941688 () Bool)

(declare-fun e!1400174 () Bool)

(assert (=> start!212526 (=> (not res!941688) (not e!1400174))))

(assert (=> start!212526 (= res!941688 (>= from!1114 0))))

(assert (=> start!212526 e!1400174))

(assert (=> start!212526 true))

(declare-fun inv!33875 (BalanceConc!16244) Bool)

(assert (=> start!212526 (and (inv!33875 totalInput!923) e!1400177)))

(declare-fun condSetEmpty!18540 () Bool)

(assert (=> start!212526 (= condSetEmpty!18540 (= z!3955 ((as const (Array Context!3350 Bool)) false)))))

(assert (=> start!212526 setRes!18540))

(declare-fun b!2191083 () Bool)

(declare-fun res!941687 () Bool)

(assert (=> b!2191083 (=> (not res!941687) (not e!1400176))))

(assert (=> b!2191083 (= res!941687 (not (= from!1114 lt!818788)))))

(declare-fun b!2191084 () Bool)

(assert (=> b!2191084 (= e!1400179 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18540 () Bool)

(assert (=> setIsEmpty!18540 setRes!18540))

(declare-fun b!2191085 () Bool)

(declare-fun res!941691 () Bool)

(assert (=> b!2191085 (=> (not res!941691) (not e!1400176))))

(declare-fun lostCauseZipper!223 ((InoxSet Context!3350)) Bool)

(assert (=> b!2191085 (= res!941691 (not (lostCauseZipper!223 z!3955)))))

(declare-fun b!2191086 () Bool)

(assert (=> b!2191086 (= e!1400174 e!1400176)))

(declare-fun res!941685 () Bool)

(assert (=> b!2191086 (=> (not res!941685) (not e!1400176))))

(assert (=> b!2191086 (= res!941685 (and (<= from!1114 lt!818788) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19821 (BalanceConc!16244) Int)

(assert (=> b!2191086 (= lt!818788 (size!19821 totalInput!923))))

(declare-fun b!2191087 () Bool)

(assert (=> b!2191087 (= e!1400176 e!1400175)))

(declare-fun res!941686 () Bool)

(assert (=> b!2191087 (=> (not res!941686) (not e!1400175))))

(assert (=> b!2191087 (= res!941686 (= lt!818789 lt!818791))))

(declare-fun furthestNullablePosition!275 ((InoxSet Context!3350) Int BalanceConc!16244 Int Int) Int)

(assert (=> b!2191087 (= lt!818791 (furthestNullablePosition!275 lt!818786 (+ 1 from!1114) totalInput!923 lt!818788 lt!818792))))

(assert (=> b!2191087 (= lt!818789 (furthestNullablePosition!275 z!3955 from!1114 totalInput!923 lt!818788 lastNullablePos!193))))

(assert (=> b!2191087 (= lt!818792 e!1400178)))

(declare-fun c!348527 () Bool)

(assert (=> b!2191087 (= c!348527 (nullableZipper!385 lt!818786))))

(declare-fun derivationStepZipper!182 ((InoxSet Context!3350) C!12356) (InoxSet Context!3350))

(declare-fun apply!6138 (BalanceConc!16244 Int) C!12356)

(assert (=> b!2191087 (= lt!818786 (derivationStepZipper!182 z!3955 (apply!6138 totalInput!923 from!1114)))))

(assert (= (and start!212526 res!941688) b!2191086))

(assert (= (and b!2191086 res!941685) b!2191082))

(assert (= (and b!2191082 (not res!941690)) b!2191084))

(assert (= (and b!2191082 res!941684) b!2191083))

(assert (= (and b!2191083 res!941687) b!2191085))

(assert (= (and b!2191085 res!941691) b!2191087))

(assert (= (and b!2191087 c!348527) b!2191077))

(assert (= (and b!2191087 (not c!348527)) b!2191080))

(assert (= (and b!2191087 res!941686) b!2191081))

(assert (= (and b!2191081 (not res!941689)) b!2191079))

(assert (= start!212526 b!2191076))

(assert (= (and start!212526 condSetEmpty!18540) setIsEmpty!18540))

(assert (= (and start!212526 (not condSetEmpty!18540)) setNonEmpty!18540))

(assert (= setNonEmpty!18540 b!2191078))

(declare-fun m!2633923 () Bool)

(assert (=> b!2191082 m!2633923))

(declare-fun m!2633925 () Bool)

(assert (=> b!2191076 m!2633925))

(declare-fun m!2633927 () Bool)

(assert (=> b!2191086 m!2633927))

(declare-fun m!2633929 () Bool)

(assert (=> b!2191079 m!2633929))

(assert (=> b!2191079 m!2633929))

(declare-fun m!2633931 () Bool)

(assert (=> b!2191079 m!2633931))

(assert (=> b!2191079 m!2633931))

(declare-fun m!2633933 () Bool)

(assert (=> b!2191079 m!2633933))

(assert (=> b!2191079 m!2633933))

(declare-fun m!2633935 () Bool)

(assert (=> b!2191079 m!2633935))

(declare-fun m!2633937 () Bool)

(assert (=> start!212526 m!2633937))

(declare-fun m!2633939 () Bool)

(assert (=> b!2191087 m!2633939))

(declare-fun m!2633941 () Bool)

(assert (=> b!2191087 m!2633941))

(declare-fun m!2633943 () Bool)

(assert (=> b!2191087 m!2633943))

(declare-fun m!2633945 () Bool)

(assert (=> b!2191087 m!2633945))

(assert (=> b!2191087 m!2633945))

(declare-fun m!2633947 () Bool)

(assert (=> b!2191087 m!2633947))

(declare-fun m!2633949 () Bool)

(assert (=> setNonEmpty!18540 m!2633949))

(declare-fun m!2633951 () Bool)

(assert (=> b!2191085 m!2633951))

(declare-fun m!2633953 () Bool)

(assert (=> b!2191081 m!2633953))

(check-sat (not b!2191081) (not b!2191085) (not b!2191076) (not b!2191079) (not setNonEmpty!18540) (not b!2191087) (not start!212526) (not b!2191082) (not b!2191086) (not b!2191078))
(check-sat)
