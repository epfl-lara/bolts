; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213126 () Bool)

(assert start!213126)

(declare-fun b!2196024 () Bool)

(declare-fun e!1403444 () Bool)

(declare-datatypes ((C!12500 0))(
  ( (C!12501 (val!7236 Int)) )
))
(declare-datatypes ((List!25640 0))(
  ( (Nil!25556) (Cons!25556 (h!30957 C!12500) (t!198246 List!25640)) )
))
(declare-datatypes ((IArray!16631 0))(
  ( (IArray!16632 (innerList!8373 List!25640)) )
))
(declare-datatypes ((Conc!8313 0))(
  ( (Node!8313 (left!19620 Conc!8313) (right!19950 Conc!8313) (csize!16856 Int) (cheight!8524 Int)) (Leaf!12169 (xs!11255 IArray!16631) (csize!16857 Int)) (Empty!8313) )
))
(declare-datatypes ((BalanceConc!16388 0))(
  ( (BalanceConc!16389 (c!349714 Conc!8313)) )
))
(declare-fun totalInput!923 () BalanceConc!16388)

(declare-fun tp!684038 () Bool)

(declare-fun inv!34234 (Conc!8313) Bool)

(assert (=> b!2196024 (= e!1403444 (and (inv!34234 (c!349714 totalInput!923)) tp!684038))))

(declare-fun b!2196025 () Bool)

(declare-fun e!1403436 () Bool)

(declare-fun tp!684039 () Bool)

(assert (=> b!2196025 (= e!1403436 tp!684039)))

(declare-fun b!2196026 () Bool)

(declare-fun e!1403443 () Bool)

(declare-fun e!1403434 () Bool)

(assert (=> b!2196026 (= e!1403443 e!1403434)))

(declare-fun res!944099 () Bool)

(assert (=> b!2196026 (=> res!944099 e!1403434)))

(declare-fun lt!821424 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!821423 () Int)

(assert (=> b!2196026 (= res!944099 (or (> lt!821424 1) (not (= lt!821424 1)) (not (= lt!821423 from!1114))))))

(assert (=> b!2196026 (= lt!821424 (+ 1 (- lt!821423 from!1114)))))

(declare-fun lt!821429 () Int)

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!821430 () Int)

(declare-fun lt!821422 () Int)

(declare-fun e!1403446 () Bool)

(declare-fun b!2196027 () Bool)

(assert (=> b!2196027 (= e!1403446 (not (or (> lt!821430 0) (> lt!821422 from!1114) (< lt!821422 lt!821429) (< lt!821429 lastNullablePos!193) (> lt!821429 from!1114) (let ((bdg!83097 (= lt!821429 from!1114))) (or (and (not bdg!83097) (not (= lt!821429 lastNullablePos!193))) (not (= lt!821429 lastNullablePos!193)) (>= lt!821429 from!1114) (> lt!821423 from!1114) (let ((bdg!83098 (+ 1 (- lt!821423 from!1114)))) (or (> bdg!83098 1) (not (= bdg!83098 1)) (not (= lt!821423 from!1114)) (not bdg!83097))))))))))

(declare-fun e!1403441 () Bool)

(assert (=> b!2196027 e!1403441))

(declare-fun res!944104 () Bool)

(assert (=> b!2196027 (=> (not res!944104) (not e!1403441))))

(declare-fun e!1403439 () Bool)

(assert (=> b!2196027 (= res!944104 e!1403439)))

(declare-fun res!944103 () Bool)

(assert (=> b!2196027 (=> res!944103 e!1403439)))

(assert (=> b!2196027 (= res!944103 (<= lt!821430 0))))

(assert (=> b!2196027 (= lt!821430 (+ 1 (- lt!821422 (+ 1 from!1114))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6177 0))(
  ( (ElementMatch!6177 (c!349715 C!12500)) (Concat!10479 (regOne!12866 Regex!6177) (regTwo!12866 Regex!6177)) (EmptyExpr!6177) (Star!6177 (reg!6506 Regex!6177)) (EmptyLang!6177) (Union!6177 (regOne!12867 Regex!6177) (regTwo!12867 Regex!6177)) )
))
(declare-datatypes ((List!25641 0))(
  ( (Nil!25557) (Cons!25557 (h!30958 Regex!6177) (t!198247 List!25641)) )
))
(declare-datatypes ((Context!3494 0))(
  ( (Context!3495 (exprs!2247 List!25641)) )
))
(declare-fun lt!821427 () (InoxSet Context!3494))

(declare-datatypes ((Unit!38665 0))(
  ( (Unit!38666) )
))
(declare-fun lt!821428 () Unit!38665)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!166 ((InoxSet Context!3494) Int BalanceConc!16388 Int) Unit!38665)

(assert (=> b!2196027 (= lt!821428 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!166 lt!821427 (+ 1 from!1114) totalInput!923 lt!821429))))

(declare-fun b!2196028 () Bool)

(declare-fun res!944097 () Bool)

(declare-fun e!1403437 () Bool)

(assert (=> b!2196028 (=> (not res!944097) (not e!1403437))))

(declare-fun z!3955 () (InoxSet Context!3494))

(declare-fun lostCauseZipper!293 ((InoxSet Context!3494)) Bool)

(assert (=> b!2196028 (= res!944097 (not (lostCauseZipper!293 z!3955)))))

(declare-fun res!944101 () Bool)

(declare-fun e!1403445 () Bool)

(assert (=> start!213126 (=> (not res!944101) (not e!1403445))))

(assert (=> start!213126 (= res!944101 (>= from!1114 0))))

(assert (=> start!213126 e!1403445))

(assert (=> start!213126 true))

(declare-fun inv!34235 (BalanceConc!16388) Bool)

(assert (=> start!213126 (and (inv!34235 totalInput!923) e!1403444)))

(declare-fun condSetEmpty!18800 () Bool)

(assert (=> start!213126 (= condSetEmpty!18800 (= z!3955 ((as const (Array Context!3494 Bool)) false)))))

(declare-fun setRes!18800 () Bool)

(assert (=> start!213126 setRes!18800))

(declare-fun setElem!18800 () Context!3494)

(declare-fun tp!684040 () Bool)

(declare-fun setNonEmpty!18800 () Bool)

(declare-fun inv!34236 (Context!3494) Bool)

(assert (=> setNonEmpty!18800 (= setRes!18800 (and tp!684040 (inv!34236 setElem!18800) e!1403436))))

(declare-fun setRest!18800 () (InoxSet Context!3494))

(assert (=> setNonEmpty!18800 (= z!3955 ((_ map or) (store ((as const (Array Context!3494 Bool)) false) setElem!18800 true) setRest!18800))))

(declare-fun b!2196029 () Bool)

(assert (=> b!2196029 (= e!1403441 e!1403443)))

(declare-fun res!944102 () Bool)

(assert (=> b!2196029 (=> res!944102 e!1403443)))

(assert (=> b!2196029 (= res!944102 (or (> lt!821430 0) (> lt!821422 from!1114) (< lt!821422 lt!821429) (< lt!821429 lastNullablePos!193) (> lt!821429 from!1114) (and (not (= lt!821429 from!1114)) (not (= lt!821429 lastNullablePos!193))) (not (= lt!821429 lastNullablePos!193)) (>= lt!821429 from!1114) (> lt!821423 from!1114)))))

(declare-fun b!2196030 () Bool)

(declare-fun matchZipper!263 ((InoxSet Context!3494) List!25640) Bool)

(declare-fun take!355 (List!25640 Int) List!25640)

(declare-fun drop!1365 (List!25640 Int) List!25640)

(declare-fun list!9825 (BalanceConc!16388) List!25640)

(assert (=> b!2196030 (= e!1403439 (matchZipper!263 lt!821427 (take!355 (drop!1365 (list!9825 totalInput!923) (+ 1 from!1114)) lt!821430)))))

(declare-fun b!2196031 () Bool)

(declare-fun res!944096 () Bool)

(assert (=> b!2196031 (=> (not res!944096) (not e!1403437))))

(declare-fun lt!821425 () Int)

(assert (=> b!2196031 (= res!944096 (not (= from!1114 lt!821425)))))

(declare-fun b!2196032 () Bool)

(declare-fun e!1403447 () Int)

(assert (=> b!2196032 (= e!1403447 lt!821429)))

(declare-fun b!2196033 () Bool)

(declare-fun e!1403435 () Int)

(assert (=> b!2196033 (= e!1403435 lastNullablePos!193)))

(declare-fun setIsEmpty!18800 () Bool)

(assert (=> setIsEmpty!18800 setRes!18800))

(declare-fun b!2196034 () Bool)

(assert (=> b!2196034 (= e!1403435 from!1114)))

(declare-fun b!2196035 () Bool)

(assert (=> b!2196035 (= e!1403437 e!1403446)))

(declare-fun res!944095 () Bool)

(assert (=> b!2196035 (=> (not res!944095) (not e!1403446))))

(assert (=> b!2196035 (= res!944095 (= lt!821423 lt!821422))))

(declare-fun furthestNullablePosition!345 ((InoxSet Context!3494) Int BalanceConc!16388 Int Int) Int)

(assert (=> b!2196035 (= lt!821422 (furthestNullablePosition!345 lt!821427 (+ 1 from!1114) totalInput!923 lt!821425 lt!821429))))

(assert (=> b!2196035 (= lt!821423 (furthestNullablePosition!345 z!3955 from!1114 totalInput!923 lt!821425 lastNullablePos!193))))

(assert (=> b!2196035 (= lt!821429 e!1403435)))

(declare-fun c!349713 () Bool)

(declare-fun nullableZipper!457 ((InoxSet Context!3494)) Bool)

(assert (=> b!2196035 (= c!349713 (nullableZipper!457 lt!821427))))

(declare-fun derivationStepZipper!249 ((InoxSet Context!3494) C!12500) (InoxSet Context!3494))

(declare-fun apply!6245 (BalanceConc!16388 Int) C!12500)

(assert (=> b!2196035 (= lt!821427 (derivationStepZipper!249 z!3955 (apply!6245 totalInput!923 from!1114)))))

(declare-fun b!2196036 () Bool)

(declare-fun e!1403440 () Bool)

(assert (=> b!2196036 (= e!1403440 (lostCauseZipper!293 lt!821427))))

(declare-fun b!2196037 () Bool)

(declare-fun e!1403442 () Int)

(assert (=> b!2196037 (= e!1403434 (= lt!821422 e!1403442))))

(declare-fun c!349711 () Bool)

(assert (=> b!2196037 (= c!349711 e!1403440)))

(declare-fun res!944105 () Bool)

(assert (=> b!2196037 (=> res!944105 e!1403440)))

(assert (=> b!2196037 (= res!944105 (= (+ 1 from!1114) lt!821425))))

(declare-fun b!2196038 () Bool)

(assert (=> b!2196038 (= e!1403442 lt!821429)))

(declare-fun b!2196039 () Bool)

(assert (=> b!2196039 (= e!1403447 (+ 1 from!1114))))

(declare-fun b!2196040 () Bool)

(declare-fun lt!821426 () (InoxSet Context!3494))

(assert (=> b!2196040 (= e!1403442 (furthestNullablePosition!345 lt!821426 (+ 2 from!1114) totalInput!923 lt!821425 e!1403447))))

(assert (=> b!2196040 (= lt!821426 (derivationStepZipper!249 lt!821427 (apply!6245 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349712 () Bool)

(assert (=> b!2196040 (= c!349712 (nullableZipper!457 lt!821426))))

(declare-fun b!2196041 () Bool)

(assert (=> b!2196041 (= e!1403445 e!1403437)))

(declare-fun res!944094 () Bool)

(assert (=> b!2196041 (=> (not res!944094) (not e!1403437))))

(assert (=> b!2196041 (= res!944094 (and (<= from!1114 lt!821425) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19923 (BalanceConc!16388) Int)

(assert (=> b!2196041 (= lt!821425 (size!19923 totalInput!923))))

(declare-fun b!2196042 () Bool)

(declare-fun e!1403438 () Bool)

(assert (=> b!2196042 (= e!1403438 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2196043 () Bool)

(declare-fun res!944100 () Bool)

(assert (=> b!2196043 (=> (not res!944100) (not e!1403437))))

(assert (=> b!2196043 (= res!944100 e!1403438)))

(declare-fun res!944098 () Bool)

(assert (=> b!2196043 (=> res!944098 e!1403438)))

(assert (=> b!2196043 (= res!944098 (not (nullableZipper!457 z!3955)))))

(assert (= (and start!213126 res!944101) b!2196041))

(assert (= (and b!2196041 res!944094) b!2196043))

(assert (= (and b!2196043 (not res!944098)) b!2196042))

(assert (= (and b!2196043 res!944100) b!2196031))

(assert (= (and b!2196031 res!944096) b!2196028))

(assert (= (and b!2196028 res!944097) b!2196035))

(assert (= (and b!2196035 c!349713) b!2196034))

(assert (= (and b!2196035 (not c!349713)) b!2196033))

(assert (= (and b!2196035 res!944095) b!2196027))

(assert (= (and b!2196027 (not res!944103)) b!2196030))

(assert (= (and b!2196027 res!944104) b!2196029))

(assert (= (and b!2196029 (not res!944102)) b!2196026))

(assert (= (and b!2196026 (not res!944099)) b!2196037))

(assert (= (and b!2196037 (not res!944105)) b!2196036))

(assert (= (and b!2196037 c!349711) b!2196038))

(assert (= (and b!2196037 (not c!349711)) b!2196040))

(assert (= (and b!2196040 c!349712) b!2196039))

(assert (= (and b!2196040 (not c!349712)) b!2196032))

(assert (= start!213126 b!2196024))

(assert (= (and start!213126 condSetEmpty!18800) setIsEmpty!18800))

(assert (= (and start!213126 (not condSetEmpty!18800)) setNonEmpty!18800))

(assert (= setNonEmpty!18800 b!2196025))

(declare-fun m!2638501 () Bool)

(assert (=> b!2196030 m!2638501))

(assert (=> b!2196030 m!2638501))

(declare-fun m!2638503 () Bool)

(assert (=> b!2196030 m!2638503))

(assert (=> b!2196030 m!2638503))

(declare-fun m!2638505 () Bool)

(assert (=> b!2196030 m!2638505))

(assert (=> b!2196030 m!2638505))

(declare-fun m!2638507 () Bool)

(assert (=> b!2196030 m!2638507))

(declare-fun m!2638509 () Bool)

(assert (=> start!213126 m!2638509))

(declare-fun m!2638511 () Bool)

(assert (=> b!2196027 m!2638511))

(declare-fun m!2638513 () Bool)

(assert (=> b!2196028 m!2638513))

(declare-fun m!2638515 () Bool)

(assert (=> b!2196041 m!2638515))

(declare-fun m!2638517 () Bool)

(assert (=> setNonEmpty!18800 m!2638517))

(declare-fun m!2638519 () Bool)

(assert (=> b!2196043 m!2638519))

(declare-fun m!2638521 () Bool)

(assert (=> b!2196024 m!2638521))

(declare-fun m!2638523 () Bool)

(assert (=> b!2196035 m!2638523))

(declare-fun m!2638525 () Bool)

(assert (=> b!2196035 m!2638525))

(declare-fun m!2638527 () Bool)

(assert (=> b!2196035 m!2638527))

(declare-fun m!2638529 () Bool)

(assert (=> b!2196035 m!2638529))

(assert (=> b!2196035 m!2638525))

(declare-fun m!2638531 () Bool)

(assert (=> b!2196035 m!2638531))

(declare-fun m!2638533 () Bool)

(assert (=> b!2196036 m!2638533))

(declare-fun m!2638535 () Bool)

(assert (=> b!2196040 m!2638535))

(declare-fun m!2638537 () Bool)

(assert (=> b!2196040 m!2638537))

(assert (=> b!2196040 m!2638537))

(declare-fun m!2638539 () Bool)

(assert (=> b!2196040 m!2638539))

(declare-fun m!2638541 () Bool)

(assert (=> b!2196040 m!2638541))

(check-sat (not b!2196028) (not b!2196043) (not b!2196027) (not b!2196041) (not b!2196024) (not start!213126) (not setNonEmpty!18800) (not b!2196035) (not b!2196036) (not b!2196030) (not b!2196025) (not b!2196040))
(check-sat)
