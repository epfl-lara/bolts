; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252350 () Bool)

(assert start!252350)

(declare-fun res!1094276 () Bool)

(declare-fun e!1640310 () Bool)

(assert (=> start!252350 (=> (not res!1094276) (not e!1640310))))

(declare-datatypes ((B!2287 0))(
  ( (B!2288 (val!9611 Int)) )
))
(declare-datatypes ((List!30044 0))(
  ( (Nil!29944) (Cons!29944 (h!35364 B!2287) (t!213057 List!30044)) )
))
(declare-fun l!3796 () List!30044)

(declare-fun noDuplicate!492 (List!30044) Bool)

(assert (=> start!252350 (= res!1094276 (noDuplicate!492 l!3796))))

(assert (=> start!252350 e!1640310))

(declare-fun e!1640311 () Bool)

(assert (=> start!252350 e!1640311))

(declare-fun tp_is_empty!13567 () Bool)

(assert (=> start!252350 tp_is_empty!13567))

(declare-fun b!2598748 () Bool)

(declare-fun res!1094279 () Bool)

(assert (=> b!2598748 (=> (not res!1094279) (not e!1640310))))

(declare-fun e!9468 () B!2287)

(assert (=> b!2598748 (= res!1094279 (and (or (not (is-Cons!29944 l!3796)) (= (h!35364 l!3796) e!9468)) (is-Cons!29944 l!3796) (= (h!35364 l!3796) e!9468)))))

(declare-fun b!2598749 () Bool)

(declare-fun lt!915010 () List!30044)

(declare-fun size!23233 (List!30044) Int)

(assert (=> b!2598749 (= e!1640310 (not (= (size!23233 lt!915010) (- (size!23233 l!3796) 1))))))

(declare-fun tail!4166 (List!30044) List!30044)

(assert (=> b!2598749 (= lt!915010 (tail!4166 l!3796))))

(declare-fun -!195 (List!30044 B!2287) List!30044)

(assert (=> b!2598749 (= lt!915010 (-!195 l!3796 e!9468))))

(declare-datatypes ((Unit!43993 0))(
  ( (Unit!43994) )
))
(declare-fun lt!915011 () Unit!43993)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!15 (List!30044 B!2287) Unit!43993)

(assert (=> b!2598749 (= lt!915011 (lemmaNoDuplicateMinusHeadSameAsTail!15 l!3796 e!9468))))

(declare-fun b!2598750 () Bool)

(declare-fun tp!823543 () Bool)

(assert (=> b!2598750 (= e!1640311 (and tp_is_empty!13567 tp!823543))))

(declare-fun b!2598751 () Bool)

(declare-fun res!1094277 () Bool)

(assert (=> b!2598751 (=> (not res!1094277) (not e!1640310))))

(declare-fun head!5897 (List!30044) B!2287)

(assert (=> b!2598751 (= res!1094277 (= (head!5897 l!3796) e!9468))))

(declare-fun b!2598752 () Bool)

(declare-fun res!1094278 () Bool)

(assert (=> b!2598752 (=> (not res!1094278) (not e!1640310))))

(declare-fun contains!5492 (List!30044 B!2287) Bool)

(assert (=> b!2598752 (= res!1094278 (contains!5492 l!3796 e!9468))))

(assert (= (and start!252350 res!1094276) b!2598752))

(assert (= (and b!2598752 res!1094278) b!2598748))

(assert (= (and b!2598748 res!1094279) b!2598751))

(assert (= (and b!2598751 res!1094277) b!2598749))

(assert (= (and start!252350 (is-Cons!29944 l!3796)) b!2598750))

(declare-fun m!2934725 () Bool)

(assert (=> start!252350 m!2934725))

(declare-fun m!2934727 () Bool)

(assert (=> b!2598749 m!2934727))

(declare-fun m!2934729 () Bool)

(assert (=> b!2598749 m!2934729))

(declare-fun m!2934731 () Bool)

(assert (=> b!2598749 m!2934731))

(declare-fun m!2934733 () Bool)

(assert (=> b!2598749 m!2934733))

(declare-fun m!2934735 () Bool)

(assert (=> b!2598749 m!2934735))

(declare-fun m!2934737 () Bool)

(assert (=> b!2598751 m!2934737))

(declare-fun m!2934739 () Bool)

(assert (=> b!2598752 m!2934739))

(push 1)

(assert tp_is_empty!13567)

(assert (not b!2598751))

(assert (not b!2598752))

(assert (not start!252350))

(assert (not b!2598749))

(assert (not b!2598750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736368 () Bool)

(declare-fun lt!915020 () Bool)

(declare-fun content!4228 (List!30044) (Set B!2287))

(assert (=> d!736368 (= lt!915020 (set.member e!9468 (content!4228 l!3796)))))

(declare-fun e!1640322 () Bool)

(assert (=> d!736368 (= lt!915020 e!1640322)))

(declare-fun res!1094297 () Bool)

(assert (=> d!736368 (=> (not res!1094297) (not e!1640322))))

(assert (=> d!736368 (= res!1094297 (is-Cons!29944 l!3796))))

(assert (=> d!736368 (= (contains!5492 l!3796 e!9468) lt!915020)))

(declare-fun b!2598772 () Bool)

(declare-fun e!1640323 () Bool)

(assert (=> b!2598772 (= e!1640322 e!1640323)))

(declare-fun res!1094296 () Bool)

(assert (=> b!2598772 (=> res!1094296 e!1640323)))

(assert (=> b!2598772 (= res!1094296 (= (h!35364 l!3796) e!9468))))

(declare-fun b!2598773 () Bool)

(assert (=> b!2598773 (= e!1640323 (contains!5492 (t!213057 l!3796) e!9468))))

(assert (= (and d!736368 res!1094297) b!2598772))

(assert (= (and b!2598772 (not res!1094296)) b!2598773))

(declare-fun m!2934757 () Bool)

(assert (=> d!736368 m!2934757))

(declare-fun m!2934759 () Bool)

(assert (=> d!736368 m!2934759))

(declare-fun m!2934761 () Bool)

(assert (=> b!2598773 m!2934761))

(assert (=> b!2598752 d!736368))

(declare-fun d!736370 () Bool)

(assert (=> d!736370 (= (head!5897 l!3796) (h!35364 l!3796))))

(assert (=> b!2598751 d!736370))

(declare-fun d!736372 () Bool)

(declare-fun res!1094302 () Bool)

(declare-fun e!1640328 () Bool)

(assert (=> d!736372 (=> res!1094302 e!1640328)))

(assert (=> d!736372 (= res!1094302 (is-Nil!29944 l!3796))))

(assert (=> d!736372 (= (noDuplicate!492 l!3796) e!1640328)))

(declare-fun b!2598778 () Bool)

(declare-fun e!1640329 () Bool)

(assert (=> b!2598778 (= e!1640328 e!1640329)))

(declare-fun res!1094303 () Bool)

(assert (=> b!2598778 (=> (not res!1094303) (not e!1640329))))

(assert (=> b!2598778 (= res!1094303 (not (contains!5492 (t!213057 l!3796) (h!35364 l!3796))))))

(declare-fun b!2598779 () Bool)

(assert (=> b!2598779 (= e!1640329 (noDuplicate!492 (t!213057 l!3796)))))

(assert (= (and d!736372 (not res!1094302)) b!2598778))

(assert (= (and b!2598778 res!1094303) b!2598779))

(declare-fun m!2934763 () Bool)

(assert (=> b!2598778 m!2934763))

(declare-fun m!2934765 () Bool)

(assert (=> b!2598779 m!2934765))

(assert (=> start!252350 d!736372))

(declare-fun lt!915023 () List!30044)

(declare-fun b!2598790 () Bool)

(declare-fun e!1640337 () Bool)

(assert (=> b!2598790 (= e!1640337 (= (content!4228 lt!915023) (set.minus (content!4228 l!3796) (set.insert e!9468 (as set.empty (Set B!2287))))))))

(declare-fun b!2598791 () Bool)

(declare-fun e!1640339 () List!30044)

(assert (=> b!2598791 (= e!1640339 Nil!29944)))

(declare-fun d!736376 () Bool)

(assert (=> d!736376 e!1640337))

(declare-fun res!1094306 () Bool)

(assert (=> d!736376 (=> (not res!1094306) (not e!1640337))))

(assert (=> d!736376 (= res!1094306 (<= (size!23233 lt!915023) (size!23233 l!3796)))))

(assert (=> d!736376 (= lt!915023 e!1640339)))

(declare-fun c!418546 () Bool)

(assert (=> d!736376 (= c!418546 (is-Cons!29944 l!3796))))

(assert (=> d!736376 (= (-!195 l!3796 e!9468) lt!915023)))

(declare-fun bm!167378 () Bool)

(declare-fun call!167383 () List!30044)

(assert (=> bm!167378 (= call!167383 (-!195 (t!213057 l!3796) e!9468))))

(declare-fun b!2598792 () Bool)

(declare-fun e!1640338 () List!30044)

(assert (=> b!2598792 (= e!1640338 call!167383)))

(declare-fun b!2598793 () Bool)

(assert (=> b!2598793 (= e!1640338 (Cons!29944 (h!35364 l!3796) call!167383))))

(declare-fun b!2598794 () Bool)

(assert (=> b!2598794 (= e!1640339 e!1640338)))

(declare-fun c!418545 () Bool)

(assert (=> b!2598794 (= c!418545 (= e!9468 (h!35364 l!3796)))))

(assert (= (and d!736376 c!418546) b!2598794))

(assert (= (and d!736376 (not c!418546)) b!2598791))

(assert (= (and b!2598794 c!418545) b!2598792))

(assert (= (and b!2598794 (not c!418545)) b!2598793))

(assert (= (or b!2598792 b!2598793) bm!167378))

(assert (= (and d!736376 res!1094306) b!2598790))

(declare-fun m!2934767 () Bool)

(assert (=> b!2598790 m!2934767))

(assert (=> b!2598790 m!2934757))

(declare-fun m!2934769 () Bool)

(assert (=> b!2598790 m!2934769))

(declare-fun m!2934771 () Bool)

(assert (=> d!736376 m!2934771))

(assert (=> d!736376 m!2934729))

(declare-fun m!2934773 () Bool)

(assert (=> bm!167378 m!2934773))

(assert (=> b!2598749 d!736376))

(declare-fun d!736380 () Bool)

(declare-fun lt!915028 () Int)

(assert (=> d!736380 (>= lt!915028 0)))

(declare-fun e!1640346 () Int)

(assert (=> d!736380 (= lt!915028 e!1640346)))

(declare-fun c!418549 () Bool)

(assert (=> d!736380 (= c!418549 (is-Nil!29944 l!3796))))

(assert (=> d!736380 (= (size!23233 l!3796) lt!915028)))

(declare-fun b!2598803 () Bool)

(assert (=> b!2598803 (= e!1640346 0)))

(declare-fun b!2598804 () Bool)

(assert (=> b!2598804 (= e!1640346 (+ 1 (size!23233 (t!213057 l!3796))))))

(assert (= (and d!736380 c!418549) b!2598803))

(assert (= (and d!736380 (not c!418549)) b!2598804))

(declare-fun m!2934775 () Bool)

(assert (=> b!2598804 m!2934775))

(assert (=> b!2598749 d!736380))

(declare-fun d!736382 () Bool)

(assert (=> d!736382 (= (-!195 l!3796 e!9468) (tail!4166 l!3796))))

(declare-fun lt!915032 () Unit!43993)

(declare-fun choose!15451 (List!30044 B!2287) Unit!43993)

(assert (=> d!736382 (= lt!915032 (choose!15451 l!3796 e!9468))))

(assert (=> d!736382 (noDuplicate!492 l!3796)))

(assert (=> d!736382 (= (lemmaNoDuplicateMinusHeadSameAsTail!15 l!3796 e!9468) lt!915032)))

(declare-fun bs!473099 () Bool)

(assert (= bs!473099 d!736382))

(assert (=> bs!473099 m!2934733))

(assert (=> bs!473099 m!2934727))

(declare-fun m!2934783 () Bool)

(assert (=> bs!473099 m!2934783))

(assert (=> bs!473099 m!2934725))

(assert (=> b!2598749 d!736382))

(declare-fun d!736386 () Bool)

(declare-fun lt!915033 () Int)

(assert (=> d!736386 (>= lt!915033 0)))

(declare-fun e!1640350 () Int)

(assert (=> d!736386 (= lt!915033 e!1640350)))

(declare-fun c!418550 () Bool)

(assert (=> d!736386 (= c!418550 (is-Nil!29944 lt!915010))))

(assert (=> d!736386 (= (size!23233 lt!915010) lt!915033)))

(declare-fun b!2598807 () Bool)

(assert (=> b!2598807 (= e!1640350 0)))

(declare-fun b!2598808 () Bool)

(assert (=> b!2598808 (= e!1640350 (+ 1 (size!23233 (t!213057 lt!915010))))))

(assert (= (and d!736386 c!418550) b!2598807))

(assert (= (and d!736386 (not c!418550)) b!2598808))

(declare-fun m!2934785 () Bool)

(assert (=> b!2598808 m!2934785))

(assert (=> b!2598749 d!736386))

(declare-fun d!736388 () Bool)

(assert (=> d!736388 (= (tail!4166 l!3796) (t!213057 l!3796))))

(assert (=> b!2598749 d!736388))

(declare-fun b!2598813 () Bool)

(declare-fun e!1640353 () Bool)

(declare-fun tp!823549 () Bool)

(assert (=> b!2598813 (= e!1640353 (and tp_is_empty!13567 tp!823549))))

(assert (=> b!2598750 (= tp!823543 e!1640353)))

(assert (= (and b!2598750 (is-Cons!29944 (t!213057 l!3796))) b!2598813))

(push 1)

(assert (not b!2598773))

(assert (not d!736368))

(assert (not b!2598808))

(assert tp_is_empty!13567)

(assert (not bm!167378))

(assert (not b!2598778))

(assert (not b!2598804))

(assert (not b!2598779))

(assert (not b!2598790))

(assert (not d!736376))

(assert (not d!736382))

(assert (not b!2598813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

