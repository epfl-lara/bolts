; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!212608 () Bool)

(assert start!212608)

(declare-fun res!942571 () Bool)

(declare-fun e!1401108 () Bool)

(assert (=> start!212608 (=> (not res!942571) (not e!1401108))))

(declare-fun from!1114 () Int)

(assert (=> start!212608 (= res!942571 (>= from!1114 0))))

(assert (=> start!212608 e!1401108))

(assert (=> start!212608 true))

(declare-datatypes ((C!12410 0))(
  ( (C!12411 (val!7191 Int)) )
))
(declare-datatypes ((List!25538 0))(
  ( (Nil!25454) (Cons!25454 (h!30855 C!12410) (t!198136 List!25538)) )
))
(declare-datatypes ((IArray!16541 0))(
  ( (IArray!16542 (innerList!8328 List!25538)) )
))
(declare-datatypes ((Conc!8268 0))(
  ( (Node!8268 (left!19529 Conc!8268) (right!19859 Conc!8268) (csize!16766 Int) (cheight!8479 Int)) (Leaf!12102 (xs!11210 IArray!16541) (csize!16767 Int)) (Empty!8268) )
))
(declare-datatypes ((BalanceConc!16298 0))(
  ( (BalanceConc!16299 (c!348725 Conc!8268)) )
))
(declare-fun totalInput!923 () BalanceConc!16298)

(declare-fun e!1401106 () Bool)

(declare-fun inv!34001 (BalanceConc!16298) Bool)

(assert (=> start!212608 (and (inv!34001 totalInput!923) e!1401106)))

(declare-fun condSetEmpty!18627 () Bool)

(declare-datatypes ((Regex!6132 0))(
  ( (ElementMatch!6132 (c!348726 C!12410)) (Concat!10434 (regOne!12776 Regex!6132) (regTwo!12776 Regex!6132)) (EmptyExpr!6132) (Star!6132 (reg!6461 Regex!6132)) (EmptyLang!6132) (Union!6132 (regOne!12777 Regex!6132) (regTwo!12777 Regex!6132)) )
))
(declare-datatypes ((List!25539 0))(
  ( (Nil!25455) (Cons!25455 (h!30856 Regex!6132) (t!198137 List!25539)) )
))
(declare-datatypes ((Context!3404 0))(
  ( (Context!3405 (exprs!2202 List!25539)) )
))
(declare-fun z!3955 () (Set Context!3404))

(assert (=> start!212608 (= condSetEmpty!18627 (= z!3955 (as set.empty (Set Context!3404))))))

(declare-fun setRes!18627 () Bool)

(assert (=> start!212608 setRes!18627))

(declare-fun b!2192410 () Bool)

(declare-fun res!942570 () Bool)

(declare-fun e!1401111 () Bool)

(assert (=> b!2192410 (=> (not res!942570) (not e!1401111))))

(declare-fun e!1401107 () Bool)

(assert (=> b!2192410 (= res!942570 e!1401107)))

(declare-fun res!942568 () Bool)

(assert (=> b!2192410 (=> res!942568 e!1401107)))

(declare-fun nullableZipper!412 ((Set Context!3404)) Bool)

(assert (=> b!2192410 (= res!942568 (not (nullableZipper!412 z!3955)))))

(declare-fun setIsEmpty!18627 () Bool)

(assert (=> setIsEmpty!18627 setRes!18627))

(declare-fun b!2192411 () Bool)

(declare-fun tp!683323 () Bool)

(declare-fun inv!34002 (Conc!8268) Bool)

(assert (=> b!2192411 (= e!1401106 (and (inv!34002 (c!348725 totalInput!923)) tp!683323))))

(declare-fun e!1401110 () Int)

(declare-fun b!2192412 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!819679 () (Set Context!3404))

(declare-fun lt!819680 () Int)

(declare-fun furthestNullablePosition!302 ((Set Context!3404) Int BalanceConc!16298 Int Int) Int)

(assert (=> b!2192412 (= e!1401111 (not (= (furthestNullablePosition!302 z!3955 from!1114 totalInput!923 lt!819680 lastNullablePos!193) (furthestNullablePosition!302 lt!819679 (+ 1 from!1114) totalInput!923 lt!819680 e!1401110))))))

(declare-fun c!348724 () Bool)

(assert (=> b!2192412 (= c!348724 (nullableZipper!412 lt!819679))))

(declare-fun derivationStepZipper!206 ((Set Context!3404) C!12410) (Set Context!3404))

(declare-fun apply!6174 (BalanceConc!16298 Int) C!12410)

(assert (=> b!2192412 (= lt!819679 (derivationStepZipper!206 z!3955 (apply!6174 totalInput!923 from!1114)))))

(declare-fun b!2192413 () Bool)

(assert (=> b!2192413 (= e!1401107 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192414 () Bool)

(assert (=> b!2192414 (= e!1401108 e!1401111)))

(declare-fun res!942572 () Bool)

(assert (=> b!2192414 (=> (not res!942572) (not e!1401111))))

(assert (=> b!2192414 (= res!942572 (and (<= from!1114 lt!819680) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19854 (BalanceConc!16298) Int)

(assert (=> b!2192414 (= lt!819680 (size!19854 totalInput!923))))

(declare-fun b!2192415 () Bool)

(declare-fun e!1401109 () Bool)

(declare-fun tp!683322 () Bool)

(assert (=> b!2192415 (= e!1401109 tp!683322)))

(declare-fun b!2192416 () Bool)

(declare-fun res!942569 () Bool)

(assert (=> b!2192416 (=> (not res!942569) (not e!1401111))))

(assert (=> b!2192416 (= res!942569 (not (= from!1114 lt!819680)))))

(declare-fun b!2192417 () Bool)

(assert (=> b!2192417 (= e!1401110 lastNullablePos!193)))

(declare-fun tp!683321 () Bool)

(declare-fun setElem!18627 () Context!3404)

(declare-fun setNonEmpty!18627 () Bool)

(declare-fun inv!34003 (Context!3404) Bool)

(assert (=> setNonEmpty!18627 (= setRes!18627 (and tp!683321 (inv!34003 setElem!18627) e!1401109))))

(declare-fun setRest!18627 () (Set Context!3404))

(assert (=> setNonEmpty!18627 (= z!3955 (set.union (set.insert setElem!18627 (as set.empty (Set Context!3404))) setRest!18627))))

(declare-fun b!2192418 () Bool)

(declare-fun res!942573 () Bool)

(assert (=> b!2192418 (=> (not res!942573) (not e!1401111))))

(declare-fun lostCauseZipper!250 ((Set Context!3404)) Bool)

(assert (=> b!2192418 (= res!942573 (not (lostCauseZipper!250 z!3955)))))

(declare-fun b!2192419 () Bool)

(assert (=> b!2192419 (= e!1401110 from!1114)))

(assert (= (and start!212608 res!942571) b!2192414))

(assert (= (and b!2192414 res!942572) b!2192410))

(assert (= (and b!2192410 (not res!942568)) b!2192413))

(assert (= (and b!2192410 res!942570) b!2192416))

(assert (= (and b!2192416 res!942569) b!2192418))

(assert (= (and b!2192418 res!942573) b!2192412))

(assert (= (and b!2192412 c!348724) b!2192419))

(assert (= (and b!2192412 (not c!348724)) b!2192417))

(assert (= start!212608 b!2192411))

(assert (= (and start!212608 condSetEmpty!18627) setIsEmpty!18627))

(assert (= (and start!212608 (not condSetEmpty!18627)) setNonEmpty!18627))

(assert (= setNonEmpty!18627 b!2192415))

(declare-fun m!2635111 () Bool)

(assert (=> start!212608 m!2635111))

(declare-fun m!2635113 () Bool)

(assert (=> b!2192410 m!2635113))

(declare-fun m!2635115 () Bool)

(assert (=> b!2192411 m!2635115))

(declare-fun m!2635117 () Bool)

(assert (=> b!2192412 m!2635117))

(declare-fun m!2635119 () Bool)

(assert (=> b!2192412 m!2635119))

(declare-fun m!2635121 () Bool)

(assert (=> b!2192412 m!2635121))

(declare-fun m!2635123 () Bool)

(assert (=> b!2192412 m!2635123))

(assert (=> b!2192412 m!2635121))

(declare-fun m!2635125 () Bool)

(assert (=> b!2192412 m!2635125))

(declare-fun m!2635127 () Bool)

(assert (=> b!2192414 m!2635127))

(declare-fun m!2635129 () Bool)

(assert (=> b!2192418 m!2635129))

(declare-fun m!2635131 () Bool)

(assert (=> setNonEmpty!18627 m!2635131))

(push 1)

(assert (not b!2192410))

(assert (not b!2192412))

(assert (not b!2192414))

(assert (not b!2192415))

(assert (not setNonEmpty!18627))

(assert (not start!212608))

(assert (not b!2192418))

(assert (not b!2192411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2192460 () Bool)

(declare-fun e!1401136 () Bool)

(assert (=> b!2192460 (= e!1401136 (lostCauseZipper!250 z!3955))))

(declare-fun b!2192461 () Bool)

(declare-fun e!1401137 () Int)

(assert (=> b!2192461 (= e!1401137 from!1114)))

(declare-fun e!1401138 () Int)

(declare-fun lt!819692 () (Set Context!3404))

(declare-fun b!2192463 () Bool)

(assert (=> b!2192463 (= e!1401138 (furthestNullablePosition!302 lt!819692 (+ from!1114 1) totalInput!923 lt!819680 e!1401137))))

(assert (=> b!2192463 (= lt!819692 (derivationStepZipper!206 z!3955 (apply!6174 totalInput!923 from!1114)))))

(declare-fun c!348736 () Bool)

(assert (=> b!2192463 (= c!348736 (nullableZipper!412 lt!819692))))

(declare-fun b!2192464 () Bool)

(assert (=> b!2192464 (= e!1401138 lastNullablePos!193)))

(declare-fun b!2192462 () Bool)

(assert (=> b!2192462 (= e!1401137 lastNullablePos!193)))

(declare-fun lt!819691 () Int)

(declare-fun d!656228 () Bool)

(assert (=> d!656228 (and (>= lt!819691 (- 1)) (< lt!819691 lt!819680) (>= lt!819691 lastNullablePos!193) (or (= lt!819691 lastNullablePos!193) (>= lt!819691 from!1114)))))

(assert (=> d!656228 (= lt!819691 e!1401138)))

(declare-fun c!348737 () Bool)

(assert (=> d!656228 (= c!348737 e!1401136)))

(declare-fun res!942594 () Bool)

(assert (=> d!656228 (=> res!942594 e!1401136)))

(assert (=> d!656228 (= res!942594 (= from!1114 lt!819680))))

(assert (=> d!656228 (and (>= from!1114 0) (<= from!1114 lt!819680))))

(assert (=> d!656228 (= (furthestNullablePosition!302 z!3955 from!1114 totalInput!923 lt!819680 lastNullablePos!193) lt!819691)))

(assert (= (and d!656228 (not res!942594)) b!2192460))

(assert (= (and d!656228 c!348737) b!2192464))

(assert (= (and d!656228 (not c!348737)) b!2192463))

(assert (= (and b!2192463 c!348736) b!2192461))

(assert (= (and b!2192463 (not c!348736)) b!2192462))

(assert (=> b!2192460 m!2635129))

(declare-fun m!2635155 () Bool)

(assert (=> b!2192463 m!2635155))

(assert (=> b!2192463 m!2635121))

(assert (=> b!2192463 m!2635121))

(assert (=> b!2192463 m!2635123))

(declare-fun m!2635157 () Bool)

(assert (=> b!2192463 m!2635157))

(assert (=> b!2192412 d!656228))

(declare-fun d!656232 () Bool)

(declare-fun lambda!82218 () Int)

(declare-fun exists!787 ((Set Context!3404) Int) Bool)

(assert (=> d!656232 (= (nullableZipper!412 lt!819679) (exists!787 lt!819679 lambda!82218))))

(declare-fun bs!448415 () Bool)

(assert (= bs!448415 d!656232))

(declare-fun m!2635159 () Bool)

(assert (=> bs!448415 m!2635159))

(assert (=> b!2192412 d!656232))

(declare-fun d!656234 () Bool)

(declare-fun lt!819695 () C!12410)

(declare-fun apply!6176 (List!25538 Int) C!12410)

(declare-fun list!9778 (BalanceConc!16298) List!25538)

(assert (=> d!656234 (= lt!819695 (apply!6176 (list!9778 totalInput!923) from!1114))))

(declare-fun apply!6177 (Conc!8268 Int) C!12410)

(assert (=> d!656234 (= lt!819695 (apply!6177 (c!348725 totalInput!923) from!1114))))

(declare-fun e!1401141 () Bool)

(assert (=> d!656234 e!1401141))

(declare-fun res!942597 () Bool)

(assert (=> d!656234 (=> (not res!942597) (not e!1401141))))

(assert (=> d!656234 (= res!942597 (<= 0 from!1114))))

(assert (=> d!656234 (= (apply!6174 totalInput!923 from!1114) lt!819695)))

(declare-fun b!2192467 () Bool)

(assert (=> b!2192467 (= e!1401141 (< from!1114 (size!19854 totalInput!923)))))

(assert (= (and d!656234 res!942597) b!2192467))

(declare-fun m!2635161 () Bool)

(assert (=> d!656234 m!2635161))

(assert (=> d!656234 m!2635161))

(declare-fun m!2635163 () Bool)

(assert (=> d!656234 m!2635163))

(declare-fun m!2635165 () Bool)

(assert (=> d!656234 m!2635165))

(assert (=> b!2192467 m!2635127))

(assert (=> b!2192412 d!656234))

(declare-fun b!2192468 () Bool)

(declare-fun e!1401142 () Bool)

(assert (=> b!2192468 (= e!1401142 (lostCauseZipper!250 lt!819679))))

(declare-fun b!2192469 () Bool)

(declare-fun e!1401143 () Int)

(assert (=> b!2192469 (= e!1401143 (+ 1 from!1114))))

(declare-fun lt!819697 () (Set Context!3404))

(declare-fun b!2192471 () Bool)

(declare-fun e!1401144 () Int)

(assert (=> b!2192471 (= e!1401144 (furthestNullablePosition!302 lt!819697 (+ 1 from!1114 1) totalInput!923 lt!819680 e!1401143))))

(assert (=> b!2192471 (= lt!819697 (derivationStepZipper!206 lt!819679 (apply!6174 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!348740 () Bool)

(assert (=> b!2192471 (= c!348740 (nullableZipper!412 lt!819697))))

(declare-fun b!2192472 () Bool)

(assert (=> b!2192472 (= e!1401144 e!1401110)))

(declare-fun b!2192470 () Bool)

(assert (=> b!2192470 (= e!1401143 e!1401110)))

(declare-fun d!656236 () Bool)

(declare-fun lt!819696 () Int)

(assert (=> d!656236 (and (>= lt!819696 (- 1)) (< lt!819696 lt!819680) (>= lt!819696 e!1401110) (or (= lt!819696 e!1401110) (>= lt!819696 (+ 1 from!1114))))))

(assert (=> d!656236 (= lt!819696 e!1401144)))

(declare-fun c!348741 () Bool)

(assert (=> d!656236 (= c!348741 e!1401142)))

(declare-fun res!942598 () Bool)

(assert (=> d!656236 (=> res!942598 e!1401142)))

(assert (=> d!656236 (= res!942598 (= (+ 1 from!1114) lt!819680))))

(assert (=> d!656236 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!819680))))

(assert (=> d!656236 (= (furthestNullablePosition!302 lt!819679 (+ 1 from!1114) totalInput!923 lt!819680 e!1401110) lt!819696)))

(assert (= (and d!656236 (not res!942598)) b!2192468))

(assert (= (and d!656236 c!348741) b!2192472))

(assert (= (and d!656236 (not c!348741)) b!2192471))

(assert (= (and b!2192471 c!348740) b!2192469))

(assert (= (and b!2192471 (not c!348740)) b!2192470))

(declare-fun m!2635167 () Bool)

(assert (=> b!2192468 m!2635167))

(declare-fun m!2635169 () Bool)

(assert (=> b!2192471 m!2635169))

(declare-fun m!2635171 () Bool)

(assert (=> b!2192471 m!2635171))

(assert (=> b!2192471 m!2635171))

(declare-fun m!2635173 () Bool)

(assert (=> b!2192471 m!2635173))

(declare-fun m!2635175 () Bool)

(assert (=> b!2192471 m!2635175))

(assert (=> b!2192412 d!656236))

(declare-fun d!656238 () Bool)

(assert (=> d!656238 true))

(declare-fun lambda!82221 () Int)

(declare-fun flatMap!139 ((Set Context!3404) Int) (Set Context!3404))

(assert (=> d!656238 (= (derivationStepZipper!206 z!3955 (apply!6174 totalInput!923 from!1114)) (flatMap!139 z!3955 lambda!82221))))

(declare-fun bs!448416 () Bool)

(assert (= bs!448416 d!656238))

(declare-fun m!2635177 () Bool)

(assert (=> bs!448416 m!2635177))

(assert (=> b!2192412 d!656238))

(declare-fun d!656240 () Bool)

(declare-fun c!348746 () Bool)

(assert (=> d!656240 (= c!348746 (is-Node!8268 (c!348725 totalInput!923)))))

(declare-fun e!1401149 () Bool)

(assert (=> d!656240 (= (inv!34002 (c!348725 totalInput!923)) e!1401149)))

(declare-fun b!2192481 () Bool)

(declare-fun inv!34007 (Conc!8268) Bool)

(assert (=> b!2192481 (= e!1401149 (inv!34007 (c!348725 totalInput!923)))))

(declare-fun b!2192482 () Bool)

(declare-fun e!1401150 () Bool)

(assert (=> b!2192482 (= e!1401149 e!1401150)))

(declare-fun res!942601 () Bool)

(assert (=> b!2192482 (= res!942601 (not (is-Leaf!12102 (c!348725 totalInput!923))))))

(assert (=> b!2192482 (=> res!942601 e!1401150)))

(declare-fun b!2192483 () Bool)

(declare-fun inv!34008 (Conc!8268) Bool)

(assert (=> b!2192483 (= e!1401150 (inv!34008 (c!348725 totalInput!923)))))

(assert (= (and d!656240 c!348746) b!2192481))

(assert (= (and d!656240 (not c!348746)) b!2192482))

(assert (= (and b!2192482 (not res!942601)) b!2192483))

(declare-fun m!2635179 () Bool)

(assert (=> b!2192481 m!2635179))

(declare-fun m!2635181 () Bool)

(assert (=> b!2192483 m!2635181))

(assert (=> b!2192411 d!656240))

(declare-fun d!656242 () Bool)

(declare-fun lambda!82224 () Int)

(declare-fun forall!5198 (List!25539 Int) Bool)

(assert (=> d!656242 (= (inv!34003 setElem!18627) (forall!5198 (exprs!2202 setElem!18627) lambda!82224))))

(declare-fun bs!448417 () Bool)

(assert (= bs!448417 d!656242))

(declare-fun m!2635183 () Bool)

(assert (=> bs!448417 m!2635183))

(assert (=> setNonEmpty!18627 d!656242))

(declare-fun bs!448418 () Bool)

(declare-fun d!656244 () Bool)

(assert (= bs!448418 (and d!656244 d!656232)))

(declare-fun lambda!82225 () Int)

(assert (=> bs!448418 (= lambda!82225 lambda!82218)))

(assert (=> d!656244 (= (nullableZipper!412 z!3955) (exists!787 z!3955 lambda!82225))))

(declare-fun bs!448419 () Bool)

(assert (= bs!448419 d!656244))

(declare-fun m!2635185 () Bool)

(assert (=> bs!448419 m!2635185))

(assert (=> b!2192410 d!656244))

(declare-fun bs!448420 () Bool)

(declare-fun d!656246 () Bool)

(assert (= bs!448420 (and d!656246 d!656232)))

(declare-fun lambda!82238 () Int)

(assert (=> bs!448420 (not (= lambda!82238 lambda!82218))))

(declare-fun bs!448421 () Bool)

(assert (= bs!448421 (and d!656246 d!656244)))

(assert (=> bs!448421 (not (= lambda!82238 lambda!82225))))

(declare-fun bs!448422 () Bool)

(declare-fun b!2192488 () Bool)

(assert (= bs!448422 (and b!2192488 d!656232)))

(declare-fun lambda!82239 () Int)

(assert (=> bs!448422 (not (= lambda!82239 lambda!82218))))

(declare-fun bs!448423 () Bool)

(assert (= bs!448423 (and b!2192488 d!656244)))

(assert (=> bs!448423 (not (= lambda!82239 lambda!82225))))

(declare-fun bs!448424 () Bool)

(assert (= bs!448424 (and b!2192488 d!656246)))

(assert (=> bs!448424 (not (= lambda!82239 lambda!82238))))

(declare-fun bs!448425 () Bool)

(declare-fun b!2192489 () Bool)

(assert (= bs!448425 (and b!2192489 d!656232)))

(declare-fun lambda!82240 () Int)

(assert (=> bs!448425 (not (= lambda!82240 lambda!82218))))

(declare-fun bs!448426 () Bool)

(assert (= bs!448426 (and b!2192489 d!656244)))

(assert (=> bs!448426 (not (= lambda!82240 lambda!82225))))

(declare-fun bs!448427 () Bool)

(assert (= bs!448427 (and b!2192489 d!656246)))

(assert (=> bs!448427 (not (= lambda!82240 lambda!82238))))

(declare-fun bs!448428 () Bool)

(assert (= bs!448428 (and b!2192489 b!2192488)))

(assert (=> bs!448428 (= lambda!82240 lambda!82239)))

(declare-fun c!348757 () Bool)

(declare-datatypes ((List!25542 0))(
  ( (Nil!25458) (Cons!25458 (h!30859 Context!3404) (t!198140 List!25542)) )
))
(declare-fun lt!819721 () List!25542)

(declare-fun bm!131842 () Bool)

(declare-fun lt!819719 () List!25542)

(declare-fun call!131847 () Bool)

(declare-fun exists!788 (List!25542 Int) Bool)

(assert (=> bm!131842 (= call!131847 (exists!788 (ite c!348757 lt!819719 lt!819721) (ite c!348757 lambda!82239 lambda!82240)))))

(declare-datatypes ((Unit!38563 0))(
  ( (Unit!38564) )
))
(declare-fun e!1401157 () Unit!38563)

(declare-fun Unit!38565 () Unit!38563)

(assert (=> b!2192489 (= e!1401157 Unit!38565)))

(declare-fun call!131848 () List!25542)

(assert (=> b!2192489 (= lt!819721 call!131848)))

(declare-fun lt!819720 () Unit!38563)

(declare-fun lemmaForallThenNotExists!33 (List!25542 Int) Unit!38563)

(assert (=> b!2192489 (= lt!819720 (lemmaForallThenNotExists!33 lt!819721 lambda!82238))))

(assert (=> b!2192489 (not call!131847)))

(declare-fun lt!819718 () Unit!38563)

(assert (=> b!2192489 (= lt!819718 lt!819720)))

(declare-fun Unit!38566 () Unit!38563)

(assert (=> b!2192488 (= e!1401157 Unit!38566)))

(assert (=> b!2192488 (= lt!819719 call!131848)))

(declare-fun lt!819715 () Unit!38563)

(declare-fun lemmaNotForallThenExists!33 (List!25542 Int) Unit!38563)

(assert (=> b!2192488 (= lt!819715 (lemmaNotForallThenExists!33 lt!819719 lambda!82238))))

(assert (=> b!2192488 call!131847))

(declare-fun lt!819716 () Unit!38563)

(assert (=> b!2192488 (= lt!819716 lt!819715)))

(declare-fun lt!819717 () Bool)

(declare-datatypes ((Option!5008 0))(
  ( (None!5007) (Some!5007 (v!29402 List!25538)) )
))
(declare-fun isEmpty!14560 (Option!5008) Bool)

(declare-fun getLanguageWitness!125 ((Set Context!3404)) Option!5008)

(assert (=> d!656246 (= lt!819717 (isEmpty!14560 (getLanguageWitness!125 z!3955)))))

(declare-fun forall!5199 ((Set Context!3404) Int) Bool)

(assert (=> d!656246 (= lt!819717 (forall!5199 z!3955 lambda!82238))))

(declare-fun lt!819714 () Unit!38563)

(assert (=> d!656246 (= lt!819714 e!1401157)))

(assert (=> d!656246 (= c!348757 (not (forall!5199 z!3955 lambda!82238)))))

(assert (=> d!656246 (= (lostCauseZipper!250 z!3955) lt!819717)))

(declare-fun bm!131843 () Bool)

(declare-fun toList!1244 ((Set Context!3404)) List!25542)

(assert (=> bm!131843 (= call!131848 (toList!1244 z!3955))))

(assert (= (and d!656246 c!348757) b!2192488))

(assert (= (and d!656246 (not c!348757)) b!2192489))

(assert (= (or b!2192488 b!2192489) bm!131842))

(assert (= (or b!2192488 b!2192489) bm!131843))

(declare-fun m!2635187 () Bool)

(assert (=> bm!131843 m!2635187))

(declare-fun m!2635189 () Bool)

(assert (=> b!2192488 m!2635189))

(declare-fun m!2635191 () Bool)

(assert (=> bm!131842 m!2635191))

(declare-fun m!2635193 () Bool)

(assert (=> b!2192489 m!2635193))

(declare-fun m!2635195 () Bool)

(assert (=> d!656246 m!2635195))

(assert (=> d!656246 m!2635195))

(declare-fun m!2635197 () Bool)

(assert (=> d!656246 m!2635197))

(declare-fun m!2635199 () Bool)

(assert (=> d!656246 m!2635199))

(assert (=> d!656246 m!2635199))

(assert (=> b!2192418 d!656246))

(declare-fun d!656248 () Bool)

(declare-fun isBalanced!2550 (Conc!8268) Bool)

(assert (=> d!656248 (= (inv!34001 totalInput!923) (isBalanced!2550 (c!348725 totalInput!923)))))

(declare-fun bs!448429 () Bool)

(assert (= bs!448429 d!656248))

(declare-fun m!2635201 () Bool)

(assert (=> bs!448429 m!2635201))

(assert (=> start!212608 d!656248))

(declare-fun d!656250 () Bool)

(declare-fun lt!819724 () Int)

(declare-fun size!19856 (List!25538) Int)

(assert (=> d!656250 (= lt!819724 (size!19856 (list!9778 totalInput!923)))))

(declare-fun size!19857 (Conc!8268) Int)

(assert (=> d!656250 (= lt!819724 (size!19857 (c!348725 totalInput!923)))))

(assert (=> d!656250 (= (size!19854 totalInput!923) lt!819724)))

(declare-fun bs!448430 () Bool)

(assert (= bs!448430 d!656250))

(assert (=> bs!448430 m!2635161))

(assert (=> bs!448430 m!2635161))

(declare-fun m!2635203 () Bool)

(assert (=> bs!448430 m!2635203))

(declare-fun m!2635205 () Bool)

(assert (=> bs!448430 m!2635205))

(assert (=> b!2192414 d!656250))

(declare-fun b!2192494 () Bool)

(declare-fun e!1401160 () Bool)

(declare-fun tp!683337 () Bool)

(declare-fun tp!683338 () Bool)

(assert (=> b!2192494 (= e!1401160 (and tp!683337 tp!683338))))

(assert (=> b!2192415 (= tp!683322 e!1401160)))

(assert (= (and b!2192415 (is-Cons!25455 (exprs!2202 setElem!18627))) b!2192494))

(declare-fun e!1401165 () Bool)

(declare-fun tp!683347 () Bool)

(declare-fun b!2192503 () Bool)

(declare-fun tp!683345 () Bool)

(assert (=> b!2192503 (= e!1401165 (and (inv!34002 (left!19529 (c!348725 totalInput!923))) tp!683347 (inv!34002 (right!19859 (c!348725 totalInput!923))) tp!683345))))

(declare-fun b!2192505 () Bool)

(declare-fun e!1401166 () Bool)

(declare-fun tp!683346 () Bool)

(assert (=> b!2192505 (= e!1401166 tp!683346)))

(declare-fun b!2192504 () Bool)

(declare-fun inv!34009 (IArray!16541) Bool)

(assert (=> b!2192504 (= e!1401165 (and (inv!34009 (xs!11210 (c!348725 totalInput!923))) e!1401166))))

(assert (=> b!2192411 (= tp!683323 (and (inv!34002 (c!348725 totalInput!923)) e!1401165))))

(assert (= (and b!2192411 (is-Node!8268 (c!348725 totalInput!923))) b!2192503))

(assert (= b!2192504 b!2192505))

(assert (= (and b!2192411 (is-Leaf!12102 (c!348725 totalInput!923))) b!2192504))

(declare-fun m!2635207 () Bool)

(assert (=> b!2192503 m!2635207))

(declare-fun m!2635209 () Bool)

(assert (=> b!2192503 m!2635209))

(declare-fun m!2635211 () Bool)

(assert (=> b!2192504 m!2635211))

(assert (=> b!2192411 m!2635115))

(declare-fun condSetEmpty!18633 () Bool)

(assert (=> setNonEmpty!18627 (= condSetEmpty!18633 (= setRest!18627 (as set.empty (Set Context!3404))))))

(declare-fun setRes!18633 () Bool)

(assert (=> setNonEmpty!18627 (= tp!683321 setRes!18633)))

(declare-fun setIsEmpty!18633 () Bool)

(assert (=> setIsEmpty!18633 setRes!18633))

(declare-fun e!1401169 () Bool)

(declare-fun setNonEmpty!18633 () Bool)

(declare-fun tp!683352 () Bool)

(declare-fun setElem!18633 () Context!3404)

(assert (=> setNonEmpty!18633 (= setRes!18633 (and tp!683352 (inv!34003 setElem!18633) e!1401169))))

(declare-fun setRest!18633 () (Set Context!3404))

(assert (=> setNonEmpty!18633 (= setRest!18627 (set.union (set.insert setElem!18633 (as set.empty (Set Context!3404))) setRest!18633))))

(declare-fun b!2192510 () Bool)

(declare-fun tp!683353 () Bool)

(assert (=> b!2192510 (= e!1401169 tp!683353)))

(assert (= (and setNonEmpty!18627 condSetEmpty!18633) setIsEmpty!18633))

(assert (= (and setNonEmpty!18627 (not condSetEmpty!18633)) setNonEmpty!18633))

(assert (= setNonEmpty!18633 b!2192510))

(declare-fun m!2635213 () Bool)

(assert (=> setNonEmpty!18633 m!2635213))

(push 1)

(assert (not b!2192481))

(assert (not b!2192505))

(assert (not bm!131842))

(assert (not d!656248))

(assert (not d!656242))

(assert (not b!2192488))

(assert (not setNonEmpty!18633))

(assert (not d!656244))

(assert (not b!2192503))

(assert (not b!2192483))

(assert (not b!2192463))

(assert (not b!2192489))

(assert (not b!2192467))

(assert (not bm!131843))

(assert (not b!2192460))

(assert (not b!2192494))

(assert (not b!2192504))

(assert (not d!656232))

(assert (not d!656238))

(assert (not b!2192471))

(assert (not b!2192468))

(assert (not d!656234))

(assert (not d!656250))

(assert (not d!656246))

(assert (not b!2192510))

(assert (not b!2192411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

