; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252476 () Bool)

(assert start!252476)

(declare-fun b!2599341 () Bool)

(declare-fun res!1094704 () Bool)

(declare-fun e!1640676 () Bool)

(assert (=> b!2599341 (=> (not res!1094704) (not e!1640676))))

(declare-datatypes ((B!2333 0))(
  ( (B!2334 (val!9634 Int)) )
))
(declare-datatypes ((List!30067 0))(
  ( (Nil!29967) (Cons!29967 (h!35387 B!2333) (t!213080 List!30067)) )
))
(declare-fun l!3217 () List!30067)

(declare-fun e!9312 () B!2333)

(declare-fun contains!5515 (List!30067 B!2333) Bool)

(assert (=> b!2599341 (= res!1094704 (not (contains!5515 (t!213080 l!3217) e!9312)))))

(declare-fun b!2599342 () Bool)

(declare-fun e!1640677 () Bool)

(declare-fun -!204 (List!30067 B!2333) List!30067)

(declare-fun tail!4169 (List!30067) List!30067)

(assert (=> b!2599342 (= e!1640677 (= (-!204 l!3217 e!9312) (tail!4169 l!3217)))))

(declare-fun b!2599344 () Bool)

(declare-fun res!1094705 () Bool)

(assert (=> b!2599344 (=> (not res!1094705) (not e!1640676))))

(declare-fun head!5912 (List!30067) B!2333)

(assert (=> b!2599344 (= res!1094705 (= (head!5912 l!3217) e!9312))))

(declare-fun b!2599345 () Bool)

(declare-fun e!1640675 () Bool)

(declare-fun tp_is_empty!13613 () Bool)

(declare-fun tp!823648 () Bool)

(assert (=> b!2599345 (= e!1640675 (and tp_is_empty!13613 tp!823648))))

(declare-fun b!2599346 () Bool)

(declare-fun res!1094703 () Bool)

(assert (=> b!2599346 (=> (not res!1094703) (not e!1640676))))

(assert (=> b!2599346 (= res!1094703 (contains!5515 l!3217 e!9312))))

(declare-fun b!2599347 () Bool)

(assert (=> b!2599347 (= e!1640676 (not e!1640677))))

(declare-fun res!1094702 () Bool)

(assert (=> b!2599347 (=> res!1094702 e!1640677)))

(declare-fun lt!915118 () List!30067)

(assert (=> b!2599347 (= res!1094702 (not (= lt!915118 (t!213080 l!3217))))))

(assert (=> b!2599347 (= (t!213080 l!3217) lt!915118)))

(assert (=> b!2599347 (= lt!915118 (-!204 (t!213080 l!3217) e!9312))))

(declare-datatypes ((Unit!44007 0))(
  ( (Unit!44008) )
))
(declare-fun lt!915119 () Unit!44007)

(declare-fun lemmaNotContainedThenRemoveSameList!6 (List!30067 B!2333) Unit!44007)

(assert (=> b!2599347 (= lt!915119 (lemmaNotContainedThenRemoveSameList!6 (t!213080 l!3217) e!9312))))

(declare-fun b!2599343 () Bool)

(declare-fun res!1094701 () Bool)

(assert (=> b!2599343 (=> (not res!1094701) (not e!1640676))))

(get-info :version)

(assert (=> b!2599343 (= res!1094701 (and ((_ is Cons!29967) l!3217) (= (h!35387 l!3217) e!9312)))))

(declare-fun res!1094700 () Bool)

(assert (=> start!252476 (=> (not res!1094700) (not e!1640676))))

(declare-fun noDuplicate!515 (List!30067) Bool)

(assert (=> start!252476 (= res!1094700 (noDuplicate!515 l!3217))))

(assert (=> start!252476 e!1640676))

(assert (=> start!252476 e!1640675))

(assert (=> start!252476 tp_is_empty!13613))

(assert (= (and start!252476 res!1094700) b!2599346))

(assert (= (and b!2599346 res!1094703) b!2599344))

(assert (= (and b!2599344 res!1094705) b!2599343))

(assert (= (and b!2599343 res!1094701) b!2599341))

(assert (= (and b!2599341 res!1094704) b!2599347))

(assert (= (and b!2599347 (not res!1094702)) b!2599342))

(assert (= (and start!252476 ((_ is Cons!29967) l!3217)) b!2599345))

(declare-fun m!2935101 () Bool)

(assert (=> b!2599344 m!2935101))

(declare-fun m!2935103 () Bool)

(assert (=> b!2599347 m!2935103))

(declare-fun m!2935105 () Bool)

(assert (=> b!2599347 m!2935105))

(declare-fun m!2935107 () Bool)

(assert (=> start!252476 m!2935107))

(declare-fun m!2935109 () Bool)

(assert (=> b!2599341 m!2935109))

(declare-fun m!2935111 () Bool)

(assert (=> b!2599346 m!2935111))

(declare-fun m!2935113 () Bool)

(assert (=> b!2599342 m!2935113))

(declare-fun m!2935115 () Bool)

(assert (=> b!2599342 m!2935115))

(check-sat (not start!252476) (not b!2599346) (not b!2599342) (not b!2599345) (not b!2599341) (not b!2599347) tp_is_empty!13613 (not b!2599344))
(check-sat)
(get-model)

(declare-fun b!2599373 () Bool)

(declare-fun e!1640695 () List!30067)

(declare-fun e!1640697 () List!30067)

(assert (=> b!2599373 (= e!1640695 e!1640697)))

(declare-fun c!418571 () Bool)

(assert (=> b!2599373 (= c!418571 (= e!9312 (h!35387 l!3217)))))

(declare-fun bm!167387 () Bool)

(declare-fun call!167392 () List!30067)

(assert (=> bm!167387 (= call!167392 (-!204 (t!213080 l!3217) e!9312))))

(declare-fun b!2599374 () Bool)

(assert (=> b!2599374 (= e!1640697 (Cons!29967 (h!35387 l!3217) call!167392))))

(declare-fun b!2599375 () Bool)

(assert (=> b!2599375 (= e!1640695 Nil!29967)))

(declare-fun d!736477 () Bool)

(declare-fun e!1640696 () Bool)

(assert (=> d!736477 e!1640696))

(declare-fun res!1094711 () Bool)

(assert (=> d!736477 (=> (not res!1094711) (not e!1640696))))

(declare-fun lt!915125 () List!30067)

(declare-fun size!23238 (List!30067) Int)

(assert (=> d!736477 (= res!1094711 (<= (size!23238 lt!915125) (size!23238 l!3217)))))

(assert (=> d!736477 (= lt!915125 e!1640695)))

(declare-fun c!418572 () Bool)

(assert (=> d!736477 (= c!418572 ((_ is Cons!29967) l!3217))))

(assert (=> d!736477 (= (-!204 l!3217 e!9312) lt!915125)))

(declare-fun b!2599376 () Bool)

(assert (=> b!2599376 (= e!1640697 call!167392)))

(declare-fun b!2599377 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4240 (List!30067) (InoxSet B!2333))

(assert (=> b!2599377 (= e!1640696 (= (content!4240 lt!915125) ((_ map and) (content!4240 l!3217) ((_ map not) (store ((as const (Array B!2333 Bool)) false) e!9312 true)))))))

(assert (= (and d!736477 c!418572) b!2599373))

(assert (= (and d!736477 (not c!418572)) b!2599375))

(assert (= (and b!2599373 c!418571) b!2599376))

(assert (= (and b!2599373 (not c!418571)) b!2599374))

(assert (= (or b!2599376 b!2599374) bm!167387))

(assert (= (and d!736477 res!1094711) b!2599377))

(assert (=> bm!167387 m!2935103))

(declare-fun m!2935129 () Bool)

(assert (=> d!736477 m!2935129))

(declare-fun m!2935131 () Bool)

(assert (=> d!736477 m!2935131))

(declare-fun m!2935133 () Bool)

(assert (=> b!2599377 m!2935133))

(declare-fun m!2935135 () Bool)

(assert (=> b!2599377 m!2935135))

(declare-fun m!2935137 () Bool)

(assert (=> b!2599377 m!2935137))

(assert (=> b!2599342 d!736477))

(declare-fun d!736481 () Bool)

(assert (=> d!736481 (= (tail!4169 l!3217) (t!213080 l!3217))))

(assert (=> b!2599342 d!736481))

(declare-fun d!736483 () Bool)

(assert (=> d!736483 (= (head!5912 l!3217) (h!35387 l!3217))))

(assert (=> b!2599344 d!736483))

(declare-fun b!2599378 () Bool)

(declare-fun e!1640699 () List!30067)

(declare-fun e!1640701 () List!30067)

(assert (=> b!2599378 (= e!1640699 e!1640701)))

(declare-fun c!418573 () Bool)

(assert (=> b!2599378 (= c!418573 (= e!9312 (h!35387 (t!213080 l!3217))))))

(declare-fun bm!167388 () Bool)

(declare-fun call!167393 () List!30067)

(assert (=> bm!167388 (= call!167393 (-!204 (t!213080 (t!213080 l!3217)) e!9312))))

(declare-fun b!2599379 () Bool)

(assert (=> b!2599379 (= e!1640701 (Cons!29967 (h!35387 (t!213080 l!3217)) call!167393))))

(declare-fun b!2599380 () Bool)

(assert (=> b!2599380 (= e!1640699 Nil!29967)))

(declare-fun d!736487 () Bool)

(declare-fun e!1640700 () Bool)

(assert (=> d!736487 e!1640700))

(declare-fun res!1094712 () Bool)

(assert (=> d!736487 (=> (not res!1094712) (not e!1640700))))

(declare-fun lt!915129 () List!30067)

(assert (=> d!736487 (= res!1094712 (<= (size!23238 lt!915129) (size!23238 (t!213080 l!3217))))))

(assert (=> d!736487 (= lt!915129 e!1640699)))

(declare-fun c!418574 () Bool)

(assert (=> d!736487 (= c!418574 ((_ is Cons!29967) (t!213080 l!3217)))))

(assert (=> d!736487 (= (-!204 (t!213080 l!3217) e!9312) lt!915129)))

(declare-fun b!2599381 () Bool)

(assert (=> b!2599381 (= e!1640701 call!167393)))

(declare-fun b!2599382 () Bool)

(assert (=> b!2599382 (= e!1640700 (= (content!4240 lt!915129) ((_ map and) (content!4240 (t!213080 l!3217)) ((_ map not) (store ((as const (Array B!2333 Bool)) false) e!9312 true)))))))

(assert (= (and d!736487 c!418574) b!2599378))

(assert (= (and d!736487 (not c!418574)) b!2599380))

(assert (= (and b!2599378 c!418573) b!2599381))

(assert (= (and b!2599378 (not c!418573)) b!2599379))

(assert (= (or b!2599381 b!2599379) bm!167388))

(assert (= (and d!736487 res!1094712) b!2599382))

(declare-fun m!2935143 () Bool)

(assert (=> bm!167388 m!2935143))

(declare-fun m!2935145 () Bool)

(assert (=> d!736487 m!2935145))

(declare-fun m!2935147 () Bool)

(assert (=> d!736487 m!2935147))

(declare-fun m!2935149 () Bool)

(assert (=> b!2599382 m!2935149))

(declare-fun m!2935151 () Bool)

(assert (=> b!2599382 m!2935151))

(assert (=> b!2599382 m!2935137))

(assert (=> b!2599347 d!736487))

(declare-fun d!736489 () Bool)

(assert (=> d!736489 (= (t!213080 l!3217) (-!204 (t!213080 l!3217) e!9312))))

(declare-fun lt!915133 () Unit!44007)

(declare-fun choose!15453 (List!30067 B!2333) Unit!44007)

(assert (=> d!736489 (= lt!915133 (choose!15453 (t!213080 l!3217) e!9312))))

(assert (=> d!736489 (noDuplicate!515 (t!213080 l!3217))))

(assert (=> d!736489 (= (lemmaNotContainedThenRemoveSameList!6 (t!213080 l!3217) e!9312) lt!915133)))

(declare-fun bs!473124 () Bool)

(assert (= bs!473124 d!736489))

(assert (=> bs!473124 m!2935103))

(declare-fun m!2935163 () Bool)

(assert (=> bs!473124 m!2935163))

(declare-fun m!2935165 () Bool)

(assert (=> bs!473124 m!2935165))

(assert (=> b!2599347 d!736489))

(declare-fun d!736495 () Bool)

(declare-fun res!1094728 () Bool)

(declare-fun e!1640720 () Bool)

(assert (=> d!736495 (=> res!1094728 e!1640720)))

(assert (=> d!736495 (= res!1094728 ((_ is Nil!29967) l!3217))))

(assert (=> d!736495 (= (noDuplicate!515 l!3217) e!1640720)))

(declare-fun b!2599402 () Bool)

(declare-fun e!1640721 () Bool)

(assert (=> b!2599402 (= e!1640720 e!1640721)))

(declare-fun res!1094729 () Bool)

(assert (=> b!2599402 (=> (not res!1094729) (not e!1640721))))

(assert (=> b!2599402 (= res!1094729 (not (contains!5515 (t!213080 l!3217) (h!35387 l!3217))))))

(declare-fun b!2599403 () Bool)

(assert (=> b!2599403 (= e!1640721 (noDuplicate!515 (t!213080 l!3217)))))

(assert (= (and d!736495 (not res!1094728)) b!2599402))

(assert (= (and b!2599402 res!1094729) b!2599403))

(declare-fun m!2935167 () Bool)

(assert (=> b!2599402 m!2935167))

(assert (=> b!2599403 m!2935165))

(assert (=> start!252476 d!736495))

(declare-fun d!736499 () Bool)

(declare-fun lt!915140 () Bool)

(assert (=> d!736499 (= lt!915140 (select (content!4240 (t!213080 l!3217)) e!9312))))

(declare-fun e!1640733 () Bool)

(assert (=> d!736499 (= lt!915140 e!1640733)))

(declare-fun res!1094739 () Bool)

(assert (=> d!736499 (=> (not res!1094739) (not e!1640733))))

(assert (=> d!736499 (= res!1094739 ((_ is Cons!29967) (t!213080 l!3217)))))

(assert (=> d!736499 (= (contains!5515 (t!213080 l!3217) e!9312) lt!915140)))

(declare-fun b!2599417 () Bool)

(declare-fun e!1640734 () Bool)

(assert (=> b!2599417 (= e!1640733 e!1640734)))

(declare-fun res!1094738 () Bool)

(assert (=> b!2599417 (=> res!1094738 e!1640734)))

(assert (=> b!2599417 (= res!1094738 (= (h!35387 (t!213080 l!3217)) e!9312))))

(declare-fun b!2599418 () Bool)

(assert (=> b!2599418 (= e!1640734 (contains!5515 (t!213080 (t!213080 l!3217)) e!9312))))

(assert (= (and d!736499 res!1094739) b!2599417))

(assert (= (and b!2599417 (not res!1094738)) b!2599418))

(assert (=> d!736499 m!2935151))

(declare-fun m!2935175 () Bool)

(assert (=> d!736499 m!2935175))

(declare-fun m!2935177 () Bool)

(assert (=> b!2599418 m!2935177))

(assert (=> b!2599341 d!736499))

(declare-fun d!736505 () Bool)

(declare-fun lt!915141 () Bool)

(assert (=> d!736505 (= lt!915141 (select (content!4240 l!3217) e!9312))))

(declare-fun e!1640735 () Bool)

(assert (=> d!736505 (= lt!915141 e!1640735)))

(declare-fun res!1094741 () Bool)

(assert (=> d!736505 (=> (not res!1094741) (not e!1640735))))

(assert (=> d!736505 (= res!1094741 ((_ is Cons!29967) l!3217))))

(assert (=> d!736505 (= (contains!5515 l!3217 e!9312) lt!915141)))

(declare-fun b!2599419 () Bool)

(declare-fun e!1640736 () Bool)

(assert (=> b!2599419 (= e!1640735 e!1640736)))

(declare-fun res!1094740 () Bool)

(assert (=> b!2599419 (=> res!1094740 e!1640736)))

(assert (=> b!2599419 (= res!1094740 (= (h!35387 l!3217) e!9312))))

(declare-fun b!2599420 () Bool)

(assert (=> b!2599420 (= e!1640736 (contains!5515 (t!213080 l!3217) e!9312))))

(assert (= (and d!736505 res!1094741) b!2599419))

(assert (= (and b!2599419 (not res!1094740)) b!2599420))

(assert (=> d!736505 m!2935135))

(declare-fun m!2935179 () Bool)

(assert (=> d!736505 m!2935179))

(assert (=> b!2599420 m!2935109))

(assert (=> b!2599346 d!736505))

(declare-fun b!2599425 () Bool)

(declare-fun e!1640739 () Bool)

(declare-fun tp!823654 () Bool)

(assert (=> b!2599425 (= e!1640739 (and tp_is_empty!13613 tp!823654))))

(assert (=> b!2599345 (= tp!823648 e!1640739)))

(assert (= (and b!2599345 ((_ is Cons!29967) (t!213080 l!3217))) b!2599425))

(check-sat (not b!2599418) (not d!736505) (not b!2599377) (not bm!167388) (not bm!167387) (not b!2599402) (not d!736489) (not b!2599420) (not b!2599425) (not d!736499) (not b!2599403) (not d!736477) (not d!736487) tp_is_empty!13613 (not b!2599382))
(check-sat)
