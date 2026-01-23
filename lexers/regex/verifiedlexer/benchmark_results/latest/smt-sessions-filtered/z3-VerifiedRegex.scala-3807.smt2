; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212478 () Bool)

(assert start!212478)

(declare-fun e!1399623 () Bool)

(declare-fun setRes!18468 () Bool)

(declare-datatypes ((C!12308 0))(
  ( (C!12309 (val!7140 Int)) )
))
(declare-datatypes ((Regex!6081 0))(
  ( (ElementMatch!6081 (c!348432 C!12308)) (Concat!10383 (regOne!12674 Regex!6081) (regTwo!12674 Regex!6081)) (EmptyExpr!6081) (Star!6081 (reg!6410 Regex!6081)) (EmptyLang!6081) (Union!6081 (regOne!12675 Regex!6081) (regTwo!12675 Regex!6081)) )
))
(declare-datatypes ((List!25435 0))(
  ( (Nil!25351) (Cons!25351 (h!30752 Regex!6081) (t!198033 List!25435)) )
))
(declare-datatypes ((Context!3302 0))(
  ( (Context!3303 (exprs!2151 List!25435)) )
))
(declare-fun setElem!18468 () Context!3302)

(declare-fun tp!682822 () Bool)

(declare-fun setNonEmpty!18468 () Bool)

(declare-fun inv!33765 (Context!3302) Bool)

(assert (=> setNonEmpty!18468 (= setRes!18468 (and tp!682822 (inv!33765 setElem!18468) e!1399623))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3302))

(declare-fun setRest!18468 () (InoxSet Context!3302))

(assert (=> setNonEmpty!18468 (= z!3955 ((_ map or) (store ((as const (Array Context!3302 Bool)) false) setElem!18468 true) setRest!18468))))

(declare-fun res!941115 () Bool)

(declare-fun e!1399627 () Bool)

(assert (=> start!212478 (=> (not res!941115) (not e!1399627))))

(declare-fun from!1114 () Int)

(assert (=> start!212478 (= res!941115 (>= from!1114 0))))

(assert (=> start!212478 e!1399627))

(assert (=> start!212478 true))

(declare-datatypes ((List!25436 0))(
  ( (Nil!25352) (Cons!25352 (h!30753 C!12308) (t!198034 List!25436)) )
))
(declare-datatypes ((IArray!16439 0))(
  ( (IArray!16440 (innerList!8277 List!25436)) )
))
(declare-datatypes ((Conc!8217 0))(
  ( (Node!8217 (left!19452 Conc!8217) (right!19782 Conc!8217) (csize!16664 Int) (cheight!8428 Int)) (Leaf!12025 (xs!11159 IArray!16439) (csize!16665 Int)) (Empty!8217) )
))
(declare-datatypes ((BalanceConc!16196 0))(
  ( (BalanceConc!16197 (c!348433 Conc!8217)) )
))
(declare-fun totalInput!923 () BalanceConc!16196)

(declare-fun e!1399620 () Bool)

(declare-fun inv!33766 (BalanceConc!16196) Bool)

(assert (=> start!212478 (and (inv!33766 totalInput!923) e!1399620)))

(declare-fun condSetEmpty!18468 () Bool)

(assert (=> start!212478 (= condSetEmpty!18468 (= z!3955 ((as const (Array Context!3302 Bool)) false)))))

(assert (=> start!212478 setRes!18468))

(declare-fun b!2190260 () Bool)

(declare-fun res!941112 () Bool)

(declare-fun e!1399622 () Bool)

(assert (=> b!2190260 (=> (not res!941112) (not e!1399622))))

(declare-fun lt!818260 () Int)

(assert (=> b!2190260 (= res!941112 (not (= from!1114 lt!818260)))))

(declare-fun b!2190261 () Bool)

(declare-fun e!1399624 () Bool)

(assert (=> b!2190261 (= e!1399624 (not true))))

(declare-fun e!1399625 () Bool)

(assert (=> b!2190261 e!1399625))

(declare-fun res!941113 () Bool)

(assert (=> b!2190261 (=> res!941113 e!1399625)))

(declare-fun lt!818263 () Int)

(assert (=> b!2190261 (= res!941113 (<= lt!818263 0))))

(declare-fun lt!818258 () Int)

(assert (=> b!2190261 (= lt!818263 (+ 1 (- lt!818258 (+ 1 from!1114))))))

(declare-fun lt!818264 () (InoxSet Context!3302))

(declare-datatypes ((Unit!38457 0))(
  ( (Unit!38458) )
))
(declare-fun lt!818262 () Unit!38457)

(declare-fun lt!818259 () Int)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!86 ((InoxSet Context!3302) Int BalanceConc!16196 Int) Unit!38457)

(assert (=> b!2190261 (= lt!818262 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!86 lt!818264 (+ 1 from!1114) totalInput!923 lt!818259))))

(declare-fun b!2190262 () Bool)

(declare-fun e!1399626 () Int)

(assert (=> b!2190262 (= e!1399626 from!1114)))

(declare-fun b!2190263 () Bool)

(declare-fun tp!682821 () Bool)

(assert (=> b!2190263 (= e!1399623 tp!682821)))

(declare-fun b!2190264 () Bool)

(declare-fun tp!682820 () Bool)

(declare-fun inv!33767 (Conc!8217) Bool)

(assert (=> b!2190264 (= e!1399620 (and (inv!33767 (c!348433 totalInput!923)) tp!682820))))

(declare-fun b!2190265 () Bool)

(assert (=> b!2190265 (= e!1399627 e!1399622)))

(declare-fun res!941111 () Bool)

(assert (=> b!2190265 (=> (not res!941111) (not e!1399622))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190265 (= res!941111 (and (<= from!1114 lt!818260) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19797 (BalanceConc!16196) Int)

(assert (=> b!2190265 (= lt!818260 (size!19797 totalInput!923))))

(declare-fun b!2190266 () Bool)

(assert (=> b!2190266 (= e!1399622 e!1399624)))

(declare-fun res!941110 () Bool)

(assert (=> b!2190266 (=> (not res!941110) (not e!1399624))))

(declare-fun lt!818261 () Int)

(assert (=> b!2190266 (= res!941110 (= lt!818261 lt!818258))))

(declare-fun furthestNullablePosition!251 ((InoxSet Context!3302) Int BalanceConc!16196 Int Int) Int)

(assert (=> b!2190266 (= lt!818258 (furthestNullablePosition!251 lt!818264 (+ 1 from!1114) totalInput!923 lt!818260 lt!818259))))

(assert (=> b!2190266 (= lt!818261 (furthestNullablePosition!251 z!3955 from!1114 totalInput!923 lt!818260 lastNullablePos!193))))

(assert (=> b!2190266 (= lt!818259 e!1399626)))

(declare-fun c!348431 () Bool)

(declare-fun nullableZipper!361 ((InoxSet Context!3302)) Bool)

(assert (=> b!2190266 (= c!348431 (nullableZipper!361 lt!818264))))

(declare-fun derivationStepZipper!158 ((InoxSet Context!3302) C!12308) (InoxSet Context!3302))

(declare-fun apply!6114 (BalanceConc!16196 Int) C!12308)

(assert (=> b!2190266 (= lt!818264 (derivationStepZipper!158 z!3955 (apply!6114 totalInput!923 from!1114)))))

(declare-fun b!2190267 () Bool)

(declare-fun e!1399621 () Bool)

(assert (=> b!2190267 (= e!1399621 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190268 () Bool)

(assert (=> b!2190268 (= e!1399626 lastNullablePos!193)))

(declare-fun setIsEmpty!18468 () Bool)

(assert (=> setIsEmpty!18468 setRes!18468))

(declare-fun b!2190269 () Bool)

(declare-fun res!941114 () Bool)

(assert (=> b!2190269 (=> (not res!941114) (not e!1399622))))

(declare-fun lostCauseZipper!199 ((InoxSet Context!3302)) Bool)

(assert (=> b!2190269 (= res!941114 (not (lostCauseZipper!199 z!3955)))))

(declare-fun b!2190270 () Bool)

(declare-fun matchZipper!181 ((InoxSet Context!3302) List!25436) Bool)

(declare-fun take!273 (List!25436 Int) List!25436)

(declare-fun drop!1283 (List!25436 Int) List!25436)

(declare-fun list!9728 (BalanceConc!16196) List!25436)

(assert (=> b!2190270 (= e!1399625 (matchZipper!181 lt!818264 (take!273 (drop!1283 (list!9728 totalInput!923) (+ 1 from!1114)) lt!818263)))))

(declare-fun b!2190271 () Bool)

(declare-fun res!941109 () Bool)

(assert (=> b!2190271 (=> (not res!941109) (not e!1399622))))

(assert (=> b!2190271 (= res!941109 e!1399621)))

(declare-fun res!941108 () Bool)

(assert (=> b!2190271 (=> res!941108 e!1399621)))

(assert (=> b!2190271 (= res!941108 (not (nullableZipper!361 z!3955)))))

(assert (= (and start!212478 res!941115) b!2190265))

(assert (= (and b!2190265 res!941111) b!2190271))

(assert (= (and b!2190271 (not res!941108)) b!2190267))

(assert (= (and b!2190271 res!941109) b!2190260))

(assert (= (and b!2190260 res!941112) b!2190269))

(assert (= (and b!2190269 res!941114) b!2190266))

(assert (= (and b!2190266 c!348431) b!2190262))

(assert (= (and b!2190266 (not c!348431)) b!2190268))

(assert (= (and b!2190266 res!941110) b!2190261))

(assert (= (and b!2190261 (not res!941113)) b!2190270))

(assert (= start!212478 b!2190264))

(assert (= (and start!212478 condSetEmpty!18468) setIsEmpty!18468))

(assert (= (and start!212478 (not condSetEmpty!18468)) setNonEmpty!18468))

(assert (= setNonEmpty!18468 b!2190263))

(declare-fun m!2633155 () Bool)

(assert (=> b!2190264 m!2633155))

(declare-fun m!2633157 () Bool)

(assert (=> b!2190269 m!2633157))

(declare-fun m!2633159 () Bool)

(assert (=> b!2190265 m!2633159))

(declare-fun m!2633161 () Bool)

(assert (=> b!2190266 m!2633161))

(declare-fun m!2633163 () Bool)

(assert (=> b!2190266 m!2633163))

(declare-fun m!2633165 () Bool)

(assert (=> b!2190266 m!2633165))

(declare-fun m!2633167 () Bool)

(assert (=> b!2190266 m!2633167))

(assert (=> b!2190266 m!2633163))

(declare-fun m!2633169 () Bool)

(assert (=> b!2190266 m!2633169))

(declare-fun m!2633171 () Bool)

(assert (=> b!2190271 m!2633171))

(declare-fun m!2633173 () Bool)

(assert (=> setNonEmpty!18468 m!2633173))

(declare-fun m!2633175 () Bool)

(assert (=> b!2190270 m!2633175))

(assert (=> b!2190270 m!2633175))

(declare-fun m!2633177 () Bool)

(assert (=> b!2190270 m!2633177))

(assert (=> b!2190270 m!2633177))

(declare-fun m!2633179 () Bool)

(assert (=> b!2190270 m!2633179))

(assert (=> b!2190270 m!2633179))

(declare-fun m!2633181 () Bool)

(assert (=> b!2190270 m!2633181))

(declare-fun m!2633183 () Bool)

(assert (=> start!212478 m!2633183))

(declare-fun m!2633185 () Bool)

(assert (=> b!2190261 m!2633185))

(check-sat (not b!2190266) (not b!2190269) (not b!2190271) (not setNonEmpty!18468) (not b!2190264) (not b!2190261) (not b!2190265) (not b!2190263) (not start!212478) (not b!2190270))
(check-sat)
