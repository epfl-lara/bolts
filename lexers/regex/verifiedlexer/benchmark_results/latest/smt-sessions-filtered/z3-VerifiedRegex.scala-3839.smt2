; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212726 () Bool)

(assert start!212726)

(declare-fun b!2193234 () Bool)

(declare-fun e!1401647 () Bool)

(declare-fun e!1401642 () Bool)

(assert (=> b!2193234 (= e!1401647 e!1401642)))

(declare-fun res!942942 () Bool)

(assert (=> b!2193234 (=> (not res!942942) (not e!1401642))))

(declare-fun lt!820114 () Int)

(declare-fun lt!820111 () Int)

(assert (=> b!2193234 (= res!942942 (= lt!820114 lt!820111))))

(declare-datatypes ((C!12436 0))(
  ( (C!12437 (val!7204 Int)) )
))
(declare-datatypes ((List!25568 0))(
  ( (Nil!25484) (Cons!25484 (h!30885 C!12436) (t!198166 List!25568)) )
))
(declare-datatypes ((IArray!16567 0))(
  ( (IArray!16568 (innerList!8341 List!25568)) )
))
(declare-datatypes ((Conc!8281 0))(
  ( (Node!8281 (left!19556 Conc!8281) (right!19886 Conc!8281) (csize!16792 Int) (cheight!8492 Int)) (Leaf!12121 (xs!11223 IArray!16567) (csize!16793 Int)) (Empty!8281) )
))
(declare-datatypes ((BalanceConc!16324 0))(
  ( (BalanceConc!16325 (c!348942 Conc!8281)) )
))
(declare-fun totalInput!923 () BalanceConc!16324)

(declare-fun lt!820113 () Int)

(declare-fun from!1114 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6145 0))(
  ( (ElementMatch!6145 (c!348943 C!12436)) (Concat!10447 (regOne!12802 Regex!6145) (regTwo!12802 Regex!6145)) (EmptyExpr!6145) (Star!6145 (reg!6474 Regex!6145)) (EmptyLang!6145) (Union!6145 (regOne!12803 Regex!6145) (regTwo!12803 Regex!6145)) )
))
(declare-datatypes ((List!25569 0))(
  ( (Nil!25485) (Cons!25485 (h!30886 Regex!6145) (t!198167 List!25569)) )
))
(declare-datatypes ((Context!3430 0))(
  ( (Context!3431 (exprs!2215 List!25569)) )
))
(declare-fun lt!820108 () (InoxSet Context!3430))

(declare-fun lt!820109 () Int)

(declare-fun furthestNullablePosition!315 ((InoxSet Context!3430) Int BalanceConc!16324 Int Int) Int)

(assert (=> b!2193234 (= lt!820111 (furthestNullablePosition!315 lt!820108 (+ 1 from!1114) totalInput!923 lt!820113 lt!820109))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun z!3955 () (InoxSet Context!3430))

(assert (=> b!2193234 (= lt!820114 (furthestNullablePosition!315 z!3955 from!1114 totalInput!923 lt!820113 lastNullablePos!193))))

(declare-fun e!1401648 () Int)

(assert (=> b!2193234 (= lt!820109 e!1401648)))

(declare-fun c!348941 () Bool)

(declare-fun nullableZipper!425 ((InoxSet Context!3430)) Bool)

(assert (=> b!2193234 (= c!348941 (nullableZipper!425 lt!820108))))

(declare-fun derivationStepZipper!219 ((InoxSet Context!3430) C!12436) (InoxSet Context!3430))

(declare-fun apply!6195 (BalanceConc!16324 Int) C!12436)

(assert (=> b!2193234 (= lt!820108 (derivationStepZipper!219 z!3955 (apply!6195 totalInput!923 from!1114)))))

(declare-fun b!2193235 () Bool)

(declare-fun e!1401649 () Bool)

(assert (=> b!2193235 (= e!1401649 e!1401647)))

(declare-fun res!942940 () Bool)

(assert (=> b!2193235 (=> (not res!942940) (not e!1401647))))

(assert (=> b!2193235 (= res!942940 (and (<= from!1114 lt!820113) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19875 (BalanceConc!16324) Int)

(assert (=> b!2193235 (= lt!820113 (size!19875 totalInput!923))))

(declare-fun res!942943 () Bool)

(assert (=> start!212726 (=> (not res!942943) (not e!1401649))))

(assert (=> start!212726 (= res!942943 (>= from!1114 0))))

(assert (=> start!212726 e!1401649))

(assert (=> start!212726 true))

(declare-fun e!1401643 () Bool)

(declare-fun inv!34070 (BalanceConc!16324) Bool)

(assert (=> start!212726 (and (inv!34070 totalInput!923) e!1401643)))

(declare-fun condSetEmpty!18678 () Bool)

(assert (=> start!212726 (= condSetEmpty!18678 (= z!3955 ((as const (Array Context!3430 Bool)) false)))))

(declare-fun setRes!18678 () Bool)

(assert (=> start!212726 setRes!18678))

(declare-fun lt!820112 () Int)

(declare-fun b!2193236 () Bool)

(assert (=> b!2193236 (= e!1401642 (not (or (> lt!820112 0) (> lt!820111 from!1114) (< lt!820111 lt!820109) (< lt!820109 lastNullablePos!193) (> lt!820109 from!1114) (and (not (= lt!820109 from!1114)) (not (= lt!820109 lastNullablePos!193))) (not (= lt!820109 lastNullablePos!193)) (< lt!820109 from!1114))))))

(declare-fun e!1401645 () Bool)

(assert (=> b!2193236 e!1401645))

(declare-fun res!942937 () Bool)

(assert (=> b!2193236 (=> res!942937 e!1401645)))

(assert (=> b!2193236 (= res!942937 (<= lt!820112 0))))

(assert (=> b!2193236 (= lt!820112 (+ 1 (- lt!820111 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38597 0))(
  ( (Unit!38598) )
))
(declare-fun lt!820110 () Unit!38597)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!144 ((InoxSet Context!3430) Int BalanceConc!16324 Int) Unit!38597)

(assert (=> b!2193236 (= lt!820110 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!144 lt!820108 (+ 1 from!1114) totalInput!923 lt!820109))))

(declare-fun b!2193237 () Bool)

(declare-fun res!942938 () Bool)

(assert (=> b!2193237 (=> (not res!942938) (not e!1401647))))

(declare-fun e!1401646 () Bool)

(assert (=> b!2193237 (= res!942938 e!1401646)))

(declare-fun res!942936 () Bool)

(assert (=> b!2193237 (=> res!942936 e!1401646)))

(assert (=> b!2193237 (= res!942936 (not (nullableZipper!425 z!3955)))))

(declare-fun b!2193238 () Bool)

(declare-fun res!942939 () Bool)

(assert (=> b!2193238 (=> (not res!942939) (not e!1401647))))

(declare-fun lostCauseZipper!263 ((InoxSet Context!3430)) Bool)

(assert (=> b!2193238 (= res!942939 (not (lostCauseZipper!263 z!3955)))))

(declare-fun b!2193239 () Bool)

(declare-fun matchZipper!241 ((InoxSet Context!3430) List!25568) Bool)

(declare-fun take!333 (List!25568 Int) List!25568)

(declare-fun drop!1343 (List!25568 Int) List!25568)

(declare-fun list!9793 (BalanceConc!16324) List!25568)

(assert (=> b!2193239 (= e!1401645 (matchZipper!241 lt!820108 (take!333 (drop!1343 (list!9793 totalInput!923) (+ 1 from!1114)) lt!820112)))))

(declare-fun setIsEmpty!18678 () Bool)

(assert (=> setIsEmpty!18678 setRes!18678))

(declare-fun setElem!18678 () Context!3430)

(declare-fun e!1401644 () Bool)

(declare-fun setNonEmpty!18678 () Bool)

(declare-fun tp!683523 () Bool)

(declare-fun inv!34071 (Context!3430) Bool)

(assert (=> setNonEmpty!18678 (= setRes!18678 (and tp!683523 (inv!34071 setElem!18678) e!1401644))))

(declare-fun setRest!18678 () (InoxSet Context!3430))

(assert (=> setNonEmpty!18678 (= z!3955 ((_ map or) (store ((as const (Array Context!3430 Bool)) false) setElem!18678 true) setRest!18678))))

(declare-fun b!2193240 () Bool)

(assert (=> b!2193240 (= e!1401648 from!1114)))

(declare-fun b!2193241 () Bool)

(declare-fun tp!683522 () Bool)

(declare-fun inv!34072 (Conc!8281) Bool)

(assert (=> b!2193241 (= e!1401643 (and (inv!34072 (c!348942 totalInput!923)) tp!683522))))

(declare-fun b!2193242 () Bool)

(assert (=> b!2193242 (= e!1401646 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193243 () Bool)

(declare-fun res!942941 () Bool)

(assert (=> b!2193243 (=> (not res!942941) (not e!1401647))))

(assert (=> b!2193243 (= res!942941 (not (= from!1114 lt!820113)))))

(declare-fun b!2193244 () Bool)

(assert (=> b!2193244 (= e!1401648 lastNullablePos!193)))

(declare-fun b!2193245 () Bool)

(declare-fun tp!683524 () Bool)

(assert (=> b!2193245 (= e!1401644 tp!683524)))

(assert (= (and start!212726 res!942943) b!2193235))

(assert (= (and b!2193235 res!942940) b!2193237))

(assert (= (and b!2193237 (not res!942936)) b!2193242))

(assert (= (and b!2193237 res!942938) b!2193243))

(assert (= (and b!2193243 res!942941) b!2193238))

(assert (= (and b!2193238 res!942939) b!2193234))

(assert (= (and b!2193234 c!348941) b!2193240))

(assert (= (and b!2193234 (not c!348941)) b!2193244))

(assert (= (and b!2193234 res!942942) b!2193236))

(assert (= (and b!2193236 (not res!942937)) b!2193239))

(assert (= start!212726 b!2193241))

(assert (= (and start!212726 condSetEmpty!18678) setIsEmpty!18678))

(assert (= (and start!212726 (not condSetEmpty!18678)) setNonEmpty!18678))

(assert (= setNonEmpty!18678 b!2193245))

(declare-fun m!2635819 () Bool)

(assert (=> b!2193241 m!2635819))

(declare-fun m!2635821 () Bool)

(assert (=> start!212726 m!2635821))

(declare-fun m!2635823 () Bool)

(assert (=> b!2193234 m!2635823))

(declare-fun m!2635825 () Bool)

(assert (=> b!2193234 m!2635825))

(declare-fun m!2635827 () Bool)

(assert (=> b!2193234 m!2635827))

(declare-fun m!2635829 () Bool)

(assert (=> b!2193234 m!2635829))

(assert (=> b!2193234 m!2635825))

(declare-fun m!2635831 () Bool)

(assert (=> b!2193234 m!2635831))

(declare-fun m!2635833 () Bool)

(assert (=> b!2193239 m!2635833))

(assert (=> b!2193239 m!2635833))

(declare-fun m!2635835 () Bool)

(assert (=> b!2193239 m!2635835))

(assert (=> b!2193239 m!2635835))

(declare-fun m!2635837 () Bool)

(assert (=> b!2193239 m!2635837))

(assert (=> b!2193239 m!2635837))

(declare-fun m!2635839 () Bool)

(assert (=> b!2193239 m!2635839))

(declare-fun m!2635841 () Bool)

(assert (=> setNonEmpty!18678 m!2635841))

(declare-fun m!2635843 () Bool)

(assert (=> b!2193237 m!2635843))

(declare-fun m!2635845 () Bool)

(assert (=> b!2193236 m!2635845))

(declare-fun m!2635847 () Bool)

(assert (=> b!2193235 m!2635847))

(declare-fun m!2635849 () Bool)

(assert (=> b!2193238 m!2635849))

(check-sat (not b!2193235) (not b!2193241) (not b!2193234) (not setNonEmpty!18678) (not b!2193238) (not b!2193237) (not b!2193239) (not b!2193236) (not b!2193245) (not start!212726))
(check-sat)
