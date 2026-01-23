; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212738 () Bool)

(assert start!212738)

(declare-fun b!2193450 () Bool)

(declare-fun e!1401791 () Bool)

(declare-fun e!1401786 () Bool)

(assert (=> b!2193450 (= e!1401791 e!1401786)))

(declare-fun res!943087 () Bool)

(assert (=> b!2193450 (=> (not res!943087) (not e!1401786))))

(declare-fun lt!820234 () Int)

(declare-fun lt!820238 () Int)

(assert (=> b!2193450 (= res!943087 (= lt!820234 lt!820238))))

(declare-datatypes ((C!12448 0))(
  ( (C!12449 (val!7210 Int)) )
))
(declare-datatypes ((List!25580 0))(
  ( (Nil!25496) (Cons!25496 (h!30897 C!12448) (t!198178 List!25580)) )
))
(declare-datatypes ((IArray!16579 0))(
  ( (IArray!16580 (innerList!8347 List!25580)) )
))
(declare-datatypes ((Conc!8287 0))(
  ( (Node!8287 (left!19565 Conc!8287) (right!19895 Conc!8287) (csize!16804 Int) (cheight!8498 Int)) (Leaf!12130 (xs!11229 IArray!16579) (csize!16805 Int)) (Empty!8287) )
))
(declare-datatypes ((BalanceConc!16336 0))(
  ( (BalanceConc!16337 (c!348972 Conc!8287)) )
))
(declare-fun totalInput!923 () BalanceConc!16336)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6151 0))(
  ( (ElementMatch!6151 (c!348973 C!12448)) (Concat!10453 (regOne!12814 Regex!6151) (regTwo!12814 Regex!6151)) (EmptyExpr!6151) (Star!6151 (reg!6480 Regex!6151)) (EmptyLang!6151) (Union!6151 (regOne!12815 Regex!6151) (regTwo!12815 Regex!6151)) )
))
(declare-datatypes ((List!25581 0))(
  ( (Nil!25497) (Cons!25497 (h!30898 Regex!6151) (t!198179 List!25581)) )
))
(declare-datatypes ((Context!3442 0))(
  ( (Context!3443 (exprs!2221 List!25581)) )
))
(declare-fun lt!820236 () (InoxSet Context!3442))

(declare-fun lt!820237 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!820239 () Int)

(declare-fun furthestNullablePosition!321 ((InoxSet Context!3442) Int BalanceConc!16336 Int Int) Int)

(assert (=> b!2193450 (= lt!820238 (furthestNullablePosition!321 lt!820236 (+ 1 from!1114) totalInput!923 lt!820239 lt!820237))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun z!3955 () (InoxSet Context!3442))

(assert (=> b!2193450 (= lt!820234 (furthestNullablePosition!321 z!3955 from!1114 totalInput!923 lt!820239 lastNullablePos!193))))

(declare-fun e!1401792 () Int)

(assert (=> b!2193450 (= lt!820237 e!1401792)))

(declare-fun c!348971 () Bool)

(declare-fun nullableZipper!431 ((InoxSet Context!3442)) Bool)

(assert (=> b!2193450 (= c!348971 (nullableZipper!431 lt!820236))))

(declare-fun derivationStepZipper!225 ((InoxSet Context!3442) C!12448) (InoxSet Context!3442))

(declare-fun apply!6201 (BalanceConc!16336 Int) C!12448)

(assert (=> b!2193450 (= lt!820236 (derivationStepZipper!225 z!3955 (apply!6201 totalInput!923 from!1114)))))

(declare-fun b!2193451 () Bool)

(declare-fun e!1401787 () Bool)

(declare-fun tp!683578 () Bool)

(declare-fun inv!34097 (Conc!8287) Bool)

(assert (=> b!2193451 (= e!1401787 (and (inv!34097 (c!348972 totalInput!923)) tp!683578))))

(declare-fun setIsEmpty!18696 () Bool)

(declare-fun setRes!18696 () Bool)

(assert (=> setIsEmpty!18696 setRes!18696))

(declare-fun tp!683577 () Bool)

(declare-fun e!1401790 () Bool)

(declare-fun setNonEmpty!18696 () Bool)

(declare-fun setElem!18696 () Context!3442)

(declare-fun inv!34098 (Context!3442) Bool)

(assert (=> setNonEmpty!18696 (= setRes!18696 (and tp!683577 (inv!34098 setElem!18696) e!1401790))))

(declare-fun setRest!18696 () (InoxSet Context!3442))

(assert (=> setNonEmpty!18696 (= z!3955 ((_ map or) (store ((as const (Array Context!3442 Bool)) false) setElem!18696 true) setRest!18696))))

(declare-fun res!943083 () Bool)

(declare-fun e!1401789 () Bool)

(assert (=> start!212738 (=> (not res!943083) (not e!1401789))))

(assert (=> start!212738 (= res!943083 (>= from!1114 0))))

(assert (=> start!212738 e!1401789))

(assert (=> start!212738 true))

(declare-fun inv!34099 (BalanceConc!16336) Bool)

(assert (=> start!212738 (and (inv!34099 totalInput!923) e!1401787)))

(declare-fun condSetEmpty!18696 () Bool)

(assert (=> start!212738 (= condSetEmpty!18696 (= z!3955 ((as const (Array Context!3442 Bool)) false)))))

(assert (=> start!212738 setRes!18696))

(declare-fun b!2193452 () Bool)

(declare-fun res!943084 () Bool)

(assert (=> b!2193452 (=> (not res!943084) (not e!1401791))))

(assert (=> b!2193452 (= res!943084 (not (= from!1114 lt!820239)))))

(declare-fun b!2193453 () Bool)

(declare-fun res!943085 () Bool)

(assert (=> b!2193453 (=> (not res!943085) (not e!1401791))))

(declare-fun e!1401793 () Bool)

(assert (=> b!2193453 (= res!943085 e!1401793)))

(declare-fun res!943086 () Bool)

(assert (=> b!2193453 (=> res!943086 e!1401793)))

(assert (=> b!2193453 (= res!943086 (not (nullableZipper!431 z!3955)))))

(declare-fun b!2193454 () Bool)

(assert (=> b!2193454 (= e!1401793 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193455 () Bool)

(declare-fun res!943082 () Bool)

(assert (=> b!2193455 (=> (not res!943082) (not e!1401791))))

(declare-fun lostCauseZipper!269 ((InoxSet Context!3442)) Bool)

(assert (=> b!2193455 (= res!943082 (not (lostCauseZipper!269 z!3955)))))

(declare-fun e!1401788 () Bool)

(declare-fun b!2193456 () Bool)

(declare-fun lt!820235 () Int)

(declare-fun matchZipper!247 ((InoxSet Context!3442) List!25580) Bool)

(declare-fun take!339 (List!25580 Int) List!25580)

(declare-fun drop!1349 (List!25580 Int) List!25580)

(declare-fun list!9799 (BalanceConc!16336) List!25580)

(assert (=> b!2193456 (= e!1401788 (matchZipper!247 lt!820236 (take!339 (drop!1349 (list!9799 totalInput!923) (+ 1 from!1114)) lt!820235)))))

(declare-fun b!2193457 () Bool)

(assert (=> b!2193457 (= e!1401792 from!1114)))

(declare-fun b!2193458 () Bool)

(assert (=> b!2193458 (= e!1401786 (not (or (> lt!820235 0) (> lt!820238 from!1114) (< lt!820238 lt!820237) (< lt!820237 lastNullablePos!193) (> lt!820237 from!1114) (and (not (= lt!820237 from!1114)) (not (= lt!820237 lastNullablePos!193))) (not (= lt!820237 lastNullablePos!193)) (>= lt!820237 from!1114) (> lt!820234 from!1114) (let ((bdg!82977 (+ 1 (- lt!820234 from!1114)))) (or (> bdg!82977 1) (not (= bdg!82977 1)) (= lt!820234 from!1114))))))))

(assert (=> b!2193458 e!1401788))

(declare-fun res!943080 () Bool)

(assert (=> b!2193458 (=> res!943080 e!1401788)))

(assert (=> b!2193458 (= res!943080 (<= lt!820235 0))))

(assert (=> b!2193458 (= lt!820235 (+ 1 (- lt!820238 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38609 0))(
  ( (Unit!38610) )
))
(declare-fun lt!820240 () Unit!38609)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!150 ((InoxSet Context!3442) Int BalanceConc!16336 Int) Unit!38609)

(assert (=> b!2193458 (= lt!820240 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!150 lt!820236 (+ 1 from!1114) totalInput!923 lt!820237))))

(declare-fun b!2193459 () Bool)

(assert (=> b!2193459 (= e!1401789 e!1401791)))

(declare-fun res!943081 () Bool)

(assert (=> b!2193459 (=> (not res!943081) (not e!1401791))))

(assert (=> b!2193459 (= res!943081 (and (<= from!1114 lt!820239) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19881 (BalanceConc!16336) Int)

(assert (=> b!2193459 (= lt!820239 (size!19881 totalInput!923))))

(declare-fun b!2193460 () Bool)

(declare-fun tp!683576 () Bool)

(assert (=> b!2193460 (= e!1401790 tp!683576)))

(declare-fun b!2193461 () Bool)

(assert (=> b!2193461 (= e!1401792 lastNullablePos!193)))

(assert (= (and start!212738 res!943083) b!2193459))

(assert (= (and b!2193459 res!943081) b!2193453))

(assert (= (and b!2193453 (not res!943086)) b!2193454))

(assert (= (and b!2193453 res!943085) b!2193452))

(assert (= (and b!2193452 res!943084) b!2193455))

(assert (= (and b!2193455 res!943082) b!2193450))

(assert (= (and b!2193450 c!348971) b!2193457))

(assert (= (and b!2193450 (not c!348971)) b!2193461))

(assert (= (and b!2193450 res!943087) b!2193458))

(assert (= (and b!2193458 (not res!943080)) b!2193456))

(assert (= start!212738 b!2193451))

(assert (= (and start!212738 condSetEmpty!18696) setIsEmpty!18696))

(assert (= (and start!212738 (not condSetEmpty!18696)) setNonEmpty!18696))

(assert (= setNonEmpty!18696 b!2193460))

(declare-fun m!2636011 () Bool)

(assert (=> b!2193450 m!2636011))

(declare-fun m!2636013 () Bool)

(assert (=> b!2193450 m!2636013))

(declare-fun m!2636015 () Bool)

(assert (=> b!2193450 m!2636015))

(declare-fun m!2636017 () Bool)

(assert (=> b!2193450 m!2636017))

(assert (=> b!2193450 m!2636015))

(declare-fun m!2636019 () Bool)

(assert (=> b!2193450 m!2636019))

(declare-fun m!2636021 () Bool)

(assert (=> b!2193459 m!2636021))

(declare-fun m!2636023 () Bool)

(assert (=> b!2193456 m!2636023))

(assert (=> b!2193456 m!2636023))

(declare-fun m!2636025 () Bool)

(assert (=> b!2193456 m!2636025))

(assert (=> b!2193456 m!2636025))

(declare-fun m!2636027 () Bool)

(assert (=> b!2193456 m!2636027))

(assert (=> b!2193456 m!2636027))

(declare-fun m!2636029 () Bool)

(assert (=> b!2193456 m!2636029))

(declare-fun m!2636031 () Bool)

(assert (=> setNonEmpty!18696 m!2636031))

(declare-fun m!2636033 () Bool)

(assert (=> b!2193458 m!2636033))

(declare-fun m!2636035 () Bool)

(assert (=> b!2193451 m!2636035))

(declare-fun m!2636037 () Bool)

(assert (=> start!212738 m!2636037))

(declare-fun m!2636039 () Bool)

(assert (=> b!2193455 m!2636039))

(declare-fun m!2636041 () Bool)

(assert (=> b!2193453 m!2636041))

(check-sat (not b!2193455) (not setNonEmpty!18696) (not b!2193451) (not start!212738) (not b!2193460) (not b!2193456) (not b!2193459) (not b!2193453) (not b!2193450) (not b!2193458))
(check-sat)
