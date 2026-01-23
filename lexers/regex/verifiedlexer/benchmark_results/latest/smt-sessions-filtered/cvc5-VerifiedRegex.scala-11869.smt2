; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666840 () Bool)

(assert start!666840)

(declare-fun b!6946252 () Bool)

(assert (=> b!6946252 true))

(assert (=> b!6946252 true))

(declare-fun res!2833710 () Bool)

(declare-fun e!4178152 () Bool)

(assert (=> start!666840 (=> (not res!2833710) (not e!4178152))))

(declare-datatypes ((C!34238 0))(
  ( (C!34239 (val!26821 Int)) )
))
(declare-datatypes ((Regex!16984 0))(
  ( (ElementMatch!16984 (c!1288722 C!34238)) (Concat!25829 (regOne!34480 Regex!16984) (regTwo!34480 Regex!16984)) (EmptyExpr!16984) (Star!16984 (reg!17313 Regex!16984)) (EmptyLang!16984) (Union!16984 (regOne!34481 Regex!16984) (regTwo!34481 Regex!16984)) )
))
(declare-fun rInner!765 () Regex!16984)

(declare-fun validRegex!8690 (Regex!16984) Bool)

(assert (=> start!666840 (= res!2833710 (validRegex!8690 rInner!765))))

(assert (=> start!666840 e!4178152))

(declare-fun e!4178155 () Bool)

(assert (=> start!666840 e!4178155))

(declare-fun e!4178151 () Bool)

(assert (=> start!666840 e!4178151))

(declare-fun e!4178154 () Bool)

(declare-fun e!4178153 () Bool)

(assert (=> start!666840 (and e!4178154 e!4178153)))

(declare-fun res!2833709 () Bool)

(assert (=> b!6946252 (=> (not res!2833709) (not e!4178152))))

(declare-fun lambda!396075 () Int)

(declare-fun Exists!3980 (Int) Bool)

(assert (=> b!6946252 (= res!2833709 (Exists!3980 lambda!396075))))

(declare-fun b!6946253 () Bool)

(declare-fun tp!1914707 () Bool)

(assert (=> b!6946253 (= e!4178155 tp!1914707)))

(declare-fun b!6946254 () Bool)

(declare-fun tp_is_empty!43193 () Bool)

(declare-fun tp!1914704 () Bool)

(assert (=> b!6946254 (= e!4178151 (and tp_is_empty!43193 tp!1914704))))

(declare-fun b!6946255 () Bool)

(declare-fun tp!1914703 () Bool)

(assert (=> b!6946255 (= e!4178153 (and tp_is_empty!43193 tp!1914703))))

(declare-fun b!6946256 () Bool)

(declare-fun res!2833713 () Bool)

(assert (=> b!6946256 (=> (not res!2833713) (not e!4178152))))

(declare-datatypes ((List!66737 0))(
  ( (Nil!66613) (Cons!66613 (h!73061 C!34238) (t!380480 List!66737)) )
))
(declare-datatypes ((tuple2!67682 0))(
  ( (tuple2!67683 (_1!37144 List!66737) (_2!37144 List!66737)) )
))
(declare-fun cut!45 () tuple2!67682)

(declare-fun matchR!9119 (Regex!16984 List!66737) Bool)

(assert (=> b!6946256 (= res!2833713 (matchR!9119 rInner!765 (_1!37144 cut!45)))))

(declare-fun b!6946257 () Bool)

(declare-fun tp!1914708 () Bool)

(declare-fun tp!1914709 () Bool)

(assert (=> b!6946257 (= e!4178155 (and tp!1914708 tp!1914709))))

(declare-fun b!6946258 () Bool)

(declare-fun tp!1914706 () Bool)

(assert (=> b!6946258 (= e!4178154 (and tp_is_empty!43193 tp!1914706))))

(declare-fun b!6946259 () Bool)

(assert (=> b!6946259 (= e!4178152 (not (validRegex!8690 (Star!16984 rInner!765))))))

(declare-fun b!6946260 () Bool)

(assert (=> b!6946260 (= e!4178155 tp_is_empty!43193)))

(declare-fun b!6946261 () Bool)

(declare-fun res!2833711 () Bool)

(assert (=> b!6946261 (=> (not res!2833711) (not e!4178152))))

(declare-fun nullable!6797 (Regex!16984) Bool)

(assert (=> b!6946261 (= res!2833711 (not (nullable!6797 rInner!765)))))

(declare-fun b!6946262 () Bool)

(declare-fun res!2833712 () Bool)

(assert (=> b!6946262 (=> (not res!2833712) (not e!4178152))))

(declare-fun s!10388 () List!66737)

(declare-fun ++!15023 (List!66737 List!66737) List!66737)

(assert (=> b!6946262 (= res!2833712 (= (++!15023 (_1!37144 cut!45) (_2!37144 cut!45)) s!10388))))

(declare-fun b!6946263 () Bool)

(declare-fun tp!1914702 () Bool)

(declare-fun tp!1914705 () Bool)

(assert (=> b!6946263 (= e!4178155 (and tp!1914702 tp!1914705))))

(assert (= (and start!666840 res!2833710) b!6946261))

(assert (= (and b!6946261 res!2833711) b!6946252))

(assert (= (and b!6946252 res!2833709) b!6946262))

(assert (= (and b!6946262 res!2833712) b!6946256))

(assert (= (and b!6946256 res!2833713) b!6946259))

(assert (= (and start!666840 (is-ElementMatch!16984 rInner!765)) b!6946260))

(assert (= (and start!666840 (is-Concat!25829 rInner!765)) b!6946263))

(assert (= (and start!666840 (is-Star!16984 rInner!765)) b!6946253))

(assert (= (and start!666840 (is-Union!16984 rInner!765)) b!6946257))

(assert (= (and start!666840 (is-Cons!66613 s!10388)) b!6946254))

(assert (= (and start!666840 (is-Cons!66613 (_1!37144 cut!45))) b!6946258))

(assert (= (and start!666840 (is-Cons!66613 (_2!37144 cut!45))) b!6946255))

(declare-fun m!7650416 () Bool)

(assert (=> b!6946252 m!7650416))

(declare-fun m!7650418 () Bool)

(assert (=> b!6946256 m!7650418))

(declare-fun m!7650420 () Bool)

(assert (=> start!666840 m!7650420))

(declare-fun m!7650422 () Bool)

(assert (=> b!6946262 m!7650422))

(declare-fun m!7650424 () Bool)

(assert (=> b!6946259 m!7650424))

(declare-fun m!7650426 () Bool)

(assert (=> b!6946261 m!7650426))

(push 1)

(assert (not b!6946258))

(assert (not b!6946257))

(assert (not b!6946259))

(assert tp_is_empty!43193)

(assert (not b!6946252))

(assert (not b!6946254))

(assert (not b!6946256))

(assert (not b!6946255))

(assert (not b!6946263))

(assert (not b!6946253))

(assert (not start!666840))

(assert (not b!6946261))

(assert (not b!6946262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2168692 () Bool)

(declare-fun nullableFct!2542 (Regex!16984) Bool)

(assert (=> d!2168692 (= (nullable!6797 rInner!765) (nullableFct!2542 rInner!765))))

(declare-fun bs!1857396 () Bool)

(assert (= bs!1857396 d!2168692))

(declare-fun m!7650444 () Bool)

(assert (=> bs!1857396 m!7650444))

(assert (=> b!6946261 d!2168692))

(declare-fun b!6946358 () Bool)

(declare-fun res!2833759 () Bool)

(declare-fun e!4178205 () Bool)

(assert (=> b!6946358 (=> (not res!2833759) (not e!4178205))))

(declare-fun isEmpty!38885 (List!66737) Bool)

(declare-fun tail!12972 (List!66737) List!66737)

(assert (=> b!6946358 (= res!2833759 (isEmpty!38885 (tail!12972 (_1!37144 cut!45))))))

(declare-fun b!6946359 () Bool)

(declare-fun e!4178202 () Bool)

(declare-fun e!4178206 () Bool)

(assert (=> b!6946359 (= e!4178202 e!4178206)))

(declare-fun res!2833760 () Bool)

(assert (=> b!6946359 (=> res!2833760 e!4178206)))

(declare-fun call!630964 () Bool)

(assert (=> b!6946359 (= res!2833760 call!630964)))

(declare-fun b!6946360 () Bool)

(declare-fun res!2833766 () Bool)

(declare-fun e!4178207 () Bool)

(assert (=> b!6946360 (=> res!2833766 e!4178207)))

(assert (=> b!6946360 (= res!2833766 (not (is-ElementMatch!16984 rInner!765)))))

(declare-fun e!4178203 () Bool)

(assert (=> b!6946360 (= e!4178203 e!4178207)))

(declare-fun bm!630959 () Bool)

(assert (=> bm!630959 (= call!630964 (isEmpty!38885 (_1!37144 cut!45)))))

(declare-fun b!6946361 () Bool)

(declare-fun e!4178201 () Bool)

(assert (=> b!6946361 (= e!4178201 (nullable!6797 rInner!765))))

(declare-fun d!2168696 () Bool)

(declare-fun e!4178204 () Bool)

(assert (=> d!2168696 e!4178204))

(declare-fun c!1288734 () Bool)

(assert (=> d!2168696 (= c!1288734 (is-EmptyExpr!16984 rInner!765))))

(declare-fun lt!2477362 () Bool)

(assert (=> d!2168696 (= lt!2477362 e!4178201)))

(declare-fun c!1288736 () Bool)

(assert (=> d!2168696 (= c!1288736 (isEmpty!38885 (_1!37144 cut!45)))))

(assert (=> d!2168696 (validRegex!8690 rInner!765)))

(assert (=> d!2168696 (= (matchR!9119 rInner!765 (_1!37144 cut!45)) lt!2477362)))

(declare-fun b!6946362 () Bool)

(declare-fun derivativeStep!5467 (Regex!16984 C!34238) Regex!16984)

(declare-fun head!13920 (List!66737) C!34238)

(assert (=> b!6946362 (= e!4178201 (matchR!9119 (derivativeStep!5467 rInner!765 (head!13920 (_1!37144 cut!45))) (tail!12972 (_1!37144 cut!45))))))

(declare-fun b!6946363 () Bool)

(declare-fun res!2833761 () Bool)

(assert (=> b!6946363 (=> (not res!2833761) (not e!4178205))))

(assert (=> b!6946363 (= res!2833761 (not call!630964))))

(declare-fun b!6946364 () Bool)

(assert (=> b!6946364 (= e!4178206 (not (= (head!13920 (_1!37144 cut!45)) (c!1288722 rInner!765))))))

(declare-fun b!6946365 () Bool)

(assert (=> b!6946365 (= e!4178207 e!4178202)))

(declare-fun res!2833764 () Bool)

(assert (=> b!6946365 (=> (not res!2833764) (not e!4178202))))

(assert (=> b!6946365 (= res!2833764 (not lt!2477362))))

(declare-fun b!6946366 () Bool)

(assert (=> b!6946366 (= e!4178204 e!4178203)))

(declare-fun c!1288735 () Bool)

(assert (=> b!6946366 (= c!1288735 (is-EmptyLang!16984 rInner!765))))

(declare-fun b!6946367 () Bool)

(declare-fun res!2833762 () Bool)

(assert (=> b!6946367 (=> res!2833762 e!4178207)))

(assert (=> b!6946367 (= res!2833762 e!4178205)))

(declare-fun res!2833763 () Bool)

(assert (=> b!6946367 (=> (not res!2833763) (not e!4178205))))

(assert (=> b!6946367 (= res!2833763 lt!2477362)))

(declare-fun b!6946368 () Bool)

(assert (=> b!6946368 (= e!4178204 (= lt!2477362 call!630964))))

(declare-fun b!6946369 () Bool)

(declare-fun res!2833765 () Bool)

(assert (=> b!6946369 (=> res!2833765 e!4178206)))

(assert (=> b!6946369 (= res!2833765 (not (isEmpty!38885 (tail!12972 (_1!37144 cut!45)))))))

(declare-fun b!6946370 () Bool)

(assert (=> b!6946370 (= e!4178205 (= (head!13920 (_1!37144 cut!45)) (c!1288722 rInner!765)))))

(declare-fun b!6946371 () Bool)

(assert (=> b!6946371 (= e!4178203 (not lt!2477362))))

(assert (= (and d!2168696 c!1288736) b!6946361))

(assert (= (and d!2168696 (not c!1288736)) b!6946362))

(assert (= (and d!2168696 c!1288734) b!6946368))

(assert (= (and d!2168696 (not c!1288734)) b!6946366))

(assert (= (and b!6946366 c!1288735) b!6946371))

(assert (= (and b!6946366 (not c!1288735)) b!6946360))

(assert (= (and b!6946360 (not res!2833766)) b!6946367))

(assert (= (and b!6946367 res!2833763) b!6946363))

(assert (= (and b!6946363 res!2833761) b!6946358))

(assert (= (and b!6946358 res!2833759) b!6946370))

(assert (= (and b!6946367 (not res!2833762)) b!6946365))

(assert (= (and b!6946365 res!2833764) b!6946359))

(assert (= (and b!6946359 (not res!2833760)) b!6946369))

(assert (= (and b!6946369 (not res!2833765)) b!6946364))

(assert (= (or b!6946368 b!6946359 b!6946363) bm!630959))

(declare-fun m!7650446 () Bool)

(assert (=> b!6946358 m!7650446))

(assert (=> b!6946358 m!7650446))

(declare-fun m!7650448 () Bool)

(assert (=> b!6946358 m!7650448))

(assert (=> b!6946369 m!7650446))

(assert (=> b!6946369 m!7650446))

(assert (=> b!6946369 m!7650448))

(declare-fun m!7650450 () Bool)

(assert (=> d!2168696 m!7650450))

(assert (=> d!2168696 m!7650420))

(declare-fun m!7650452 () Bool)

(assert (=> b!6946364 m!7650452))

(assert (=> b!6946361 m!7650426))

(assert (=> b!6946362 m!7650452))

(assert (=> b!6946362 m!7650452))

(declare-fun m!7650454 () Bool)

(assert (=> b!6946362 m!7650454))

(assert (=> b!6946362 m!7650446))

(assert (=> b!6946362 m!7650454))

(assert (=> b!6946362 m!7650446))

(declare-fun m!7650456 () Bool)

(assert (=> b!6946362 m!7650456))

(assert (=> b!6946370 m!7650452))

(assert (=> bm!630959 m!7650450))

(assert (=> b!6946256 d!2168696))

(declare-fun d!2168698 () Bool)

(declare-fun choose!51760 (Int) Bool)

(assert (=> d!2168698 (= (Exists!3980 lambda!396075) (choose!51760 lambda!396075))))

(declare-fun bs!1857397 () Bool)

(assert (= bs!1857397 d!2168698))

(declare-fun m!7650458 () Bool)

(assert (=> bs!1857397 m!7650458))

(assert (=> b!6946252 d!2168698))

(declare-fun b!6946399 () Bool)

(declare-fun e!4178235 () Bool)

(declare-fun e!4178232 () Bool)

(assert (=> b!6946399 (= e!4178235 e!4178232)))

(declare-fun res!2833783 () Bool)

(assert (=> b!6946399 (=> (not res!2833783) (not e!4178232))))

(declare-fun call!630974 () Bool)

(assert (=> b!6946399 (= res!2833783 call!630974)))

(declare-fun b!6946400 () Bool)

(declare-fun res!2833784 () Bool)

(assert (=> b!6946400 (=> res!2833784 e!4178235)))

(assert (=> b!6946400 (= res!2833784 (not (is-Concat!25829 rInner!765)))))

(declare-fun e!4178234 () Bool)

(assert (=> b!6946400 (= e!4178234 e!4178235)))

(declare-fun b!6946401 () Bool)

(declare-fun e!4178229 () Bool)

(assert (=> b!6946401 (= e!4178229 call!630974)))

(declare-fun b!6946402 () Bool)

(declare-fun call!630976 () Bool)

(assert (=> b!6946402 (= e!4178232 call!630976)))

(declare-fun bm!630969 () Bool)

(declare-fun call!630975 () Bool)

(assert (=> bm!630969 (= call!630976 call!630975)))

(declare-fun b!6946403 () Bool)

(declare-fun res!2833786 () Bool)

(assert (=> b!6946403 (=> (not res!2833786) (not e!4178229))))

(assert (=> b!6946403 (= res!2833786 call!630976)))

(assert (=> b!6946403 (= e!4178234 e!4178229)))

(declare-fun b!6946405 () Bool)

(declare-fun e!4178230 () Bool)

(declare-fun e!4178231 () Bool)

(assert (=> b!6946405 (= e!4178230 e!4178231)))

(declare-fun res!2833785 () Bool)

(assert (=> b!6946405 (= res!2833785 (not (nullable!6797 (reg!17313 rInner!765))))))

(assert (=> b!6946405 (=> (not res!2833785) (not e!4178231))))

(declare-fun b!6946406 () Bool)

(assert (=> b!6946406 (= e!4178230 e!4178234)))

(declare-fun c!1288743 () Bool)

(assert (=> b!6946406 (= c!1288743 (is-Union!16984 rInner!765))))

(declare-fun bm!630970 () Bool)

(declare-fun c!1288744 () Bool)

(assert (=> bm!630970 (= call!630975 (validRegex!8690 (ite c!1288744 (reg!17313 rInner!765) (ite c!1288743 (regOne!34481 rInner!765) (regTwo!34480 rInner!765)))))))

(declare-fun b!6946407 () Bool)

(declare-fun e!4178233 () Bool)

(assert (=> b!6946407 (= e!4178233 e!4178230)))

(assert (=> b!6946407 (= c!1288744 (is-Star!16984 rInner!765))))

(declare-fun bm!630971 () Bool)

(assert (=> bm!630971 (= call!630974 (validRegex!8690 (ite c!1288743 (regTwo!34481 rInner!765) (regOne!34480 rInner!765))))))

(declare-fun b!6946404 () Bool)

(assert (=> b!6946404 (= e!4178231 call!630975)))

(declare-fun d!2168700 () Bool)

(declare-fun res!2833782 () Bool)

(assert (=> d!2168700 (=> res!2833782 e!4178233)))

(assert (=> d!2168700 (= res!2833782 (is-ElementMatch!16984 rInner!765))))

(assert (=> d!2168700 (= (validRegex!8690 rInner!765) e!4178233)))

(assert (= (and d!2168700 (not res!2833782)) b!6946407))

(assert (= (and b!6946407 c!1288744) b!6946405))

(assert (= (and b!6946407 (not c!1288744)) b!6946406))

(assert (= (and b!6946405 res!2833785) b!6946404))

(assert (= (and b!6946406 c!1288743) b!6946403))

(assert (= (and b!6946406 (not c!1288743)) b!6946400))

(assert (= (and b!6946403 res!2833786) b!6946401))

(assert (= (and b!6946400 (not res!2833784)) b!6946399))

(assert (= (and b!6946399 res!2833783) b!6946402))

(assert (= (or b!6946403 b!6946402) bm!630969))

(assert (= (or b!6946401 b!6946399) bm!630971))

(assert (= (or b!6946404 bm!630969) bm!630970))

(declare-fun m!7650466 () Bool)

(assert (=> b!6946405 m!7650466))

(declare-fun m!7650468 () Bool)

(assert (=> bm!630970 m!7650468))

(declare-fun m!7650470 () Bool)

(assert (=> bm!630971 m!7650470))

(assert (=> start!666840 d!2168700))

(declare-fun b!6946416 () Bool)

(declare-fun e!4178240 () List!66737)

(assert (=> b!6946416 (= e!4178240 (_2!37144 cut!45))))

(declare-fun b!6946418 () Bool)

(declare-fun res!2833791 () Bool)

(declare-fun e!4178241 () Bool)

(assert (=> b!6946418 (=> (not res!2833791) (not e!4178241))))

(declare-fun lt!2477365 () List!66737)

(declare-fun size!40811 (List!66737) Int)

(assert (=> b!6946418 (= res!2833791 (= (size!40811 lt!2477365) (+ (size!40811 (_1!37144 cut!45)) (size!40811 (_2!37144 cut!45)))))))

(declare-fun d!2168704 () Bool)

(assert (=> d!2168704 e!4178241))

(declare-fun res!2833792 () Bool)

(assert (=> d!2168704 (=> (not res!2833792) (not e!4178241))))

(declare-fun content!13114 (List!66737) (Set C!34238))

(assert (=> d!2168704 (= res!2833792 (= (content!13114 lt!2477365) (set.union (content!13114 (_1!37144 cut!45)) (content!13114 (_2!37144 cut!45)))))))

(assert (=> d!2168704 (= lt!2477365 e!4178240)))

(declare-fun c!1288747 () Bool)

(assert (=> d!2168704 (= c!1288747 (is-Nil!66613 (_1!37144 cut!45)))))

(assert (=> d!2168704 (= (++!15023 (_1!37144 cut!45) (_2!37144 cut!45)) lt!2477365)))

(declare-fun b!6946419 () Bool)

(assert (=> b!6946419 (= e!4178241 (or (not (= (_2!37144 cut!45) Nil!66613)) (= lt!2477365 (_1!37144 cut!45))))))

(declare-fun b!6946417 () Bool)

(assert (=> b!6946417 (= e!4178240 (Cons!66613 (h!73061 (_1!37144 cut!45)) (++!15023 (t!380480 (_1!37144 cut!45)) (_2!37144 cut!45))))))

(assert (= (and d!2168704 c!1288747) b!6946416))

(assert (= (and d!2168704 (not c!1288747)) b!6946417))

(assert (= (and d!2168704 res!2833792) b!6946418))

(assert (= (and b!6946418 res!2833791) b!6946419))

(declare-fun m!7650472 () Bool)

(assert (=> b!6946418 m!7650472))

(declare-fun m!7650474 () Bool)

(assert (=> b!6946418 m!7650474))

(declare-fun m!7650476 () Bool)

(assert (=> b!6946418 m!7650476))

(declare-fun m!7650478 () Bool)

(assert (=> d!2168704 m!7650478))

(declare-fun m!7650480 () Bool)

(assert (=> d!2168704 m!7650480))

(declare-fun m!7650482 () Bool)

(assert (=> d!2168704 m!7650482))

(declare-fun m!7650484 () Bool)

(assert (=> b!6946417 m!7650484))

(assert (=> b!6946262 d!2168704))

(declare-fun b!6946420 () Bool)

(declare-fun e!4178248 () Bool)

(declare-fun e!4178245 () Bool)

(assert (=> b!6946420 (= e!4178248 e!4178245)))

(declare-fun res!2833794 () Bool)

(assert (=> b!6946420 (=> (not res!2833794) (not e!4178245))))

(declare-fun call!630977 () Bool)

(assert (=> b!6946420 (= res!2833794 call!630977)))

(declare-fun b!6946421 () Bool)

(declare-fun res!2833795 () Bool)

(assert (=> b!6946421 (=> res!2833795 e!4178248)))

(assert (=> b!6946421 (= res!2833795 (not (is-Concat!25829 (Star!16984 rInner!765))))))

(declare-fun e!4178247 () Bool)

(assert (=> b!6946421 (= e!4178247 e!4178248)))

(declare-fun b!6946422 () Bool)

(declare-fun e!4178242 () Bool)

(assert (=> b!6946422 (= e!4178242 call!630977)))

(declare-fun b!6946423 () Bool)

(declare-fun call!630979 () Bool)

(assert (=> b!6946423 (= e!4178245 call!630979)))

(declare-fun bm!630972 () Bool)

(declare-fun call!630978 () Bool)

(assert (=> bm!630972 (= call!630979 call!630978)))

(declare-fun b!6946424 () Bool)

(declare-fun res!2833797 () Bool)

(assert (=> b!6946424 (=> (not res!2833797) (not e!4178242))))

(assert (=> b!6946424 (= res!2833797 call!630979)))

(assert (=> b!6946424 (= e!4178247 e!4178242)))

(declare-fun b!6946426 () Bool)

(declare-fun e!4178243 () Bool)

(declare-fun e!4178244 () Bool)

(assert (=> b!6946426 (= e!4178243 e!4178244)))

(declare-fun res!2833796 () Bool)

(assert (=> b!6946426 (= res!2833796 (not (nullable!6797 (reg!17313 (Star!16984 rInner!765)))))))

(assert (=> b!6946426 (=> (not res!2833796) (not e!4178244))))

(declare-fun b!6946427 () Bool)

(assert (=> b!6946427 (= e!4178243 e!4178247)))

(declare-fun c!1288748 () Bool)

(assert (=> b!6946427 (= c!1288748 (is-Union!16984 (Star!16984 rInner!765)))))

(declare-fun c!1288749 () Bool)

(declare-fun bm!630973 () Bool)

(assert (=> bm!630973 (= call!630978 (validRegex!8690 (ite c!1288749 (reg!17313 (Star!16984 rInner!765)) (ite c!1288748 (regOne!34481 (Star!16984 rInner!765)) (regTwo!34480 (Star!16984 rInner!765))))))))

(declare-fun b!6946428 () Bool)

(declare-fun e!4178246 () Bool)

(assert (=> b!6946428 (= e!4178246 e!4178243)))

(assert (=> b!6946428 (= c!1288749 (is-Star!16984 (Star!16984 rInner!765)))))

(declare-fun bm!630974 () Bool)

(assert (=> bm!630974 (= call!630977 (validRegex!8690 (ite c!1288748 (regTwo!34481 (Star!16984 rInner!765)) (regOne!34480 (Star!16984 rInner!765)))))))

(declare-fun b!6946425 () Bool)

(assert (=> b!6946425 (= e!4178244 call!630978)))

(declare-fun d!2168706 () Bool)

(declare-fun res!2833793 () Bool)

(assert (=> d!2168706 (=> res!2833793 e!4178246)))

(assert (=> d!2168706 (= res!2833793 (is-ElementMatch!16984 (Star!16984 rInner!765)))))

(assert (=> d!2168706 (= (validRegex!8690 (Star!16984 rInner!765)) e!4178246)))

(assert (= (and d!2168706 (not res!2833793)) b!6946428))

(assert (= (and b!6946428 c!1288749) b!6946426))

(assert (= (and b!6946428 (not c!1288749)) b!6946427))

(assert (= (and b!6946426 res!2833796) b!6946425))

(assert (= (and b!6946427 c!1288748) b!6946424))

(assert (= (and b!6946427 (not c!1288748)) b!6946421))

(assert (= (and b!6946424 res!2833797) b!6946422))

(assert (= (and b!6946421 (not res!2833795)) b!6946420))

(assert (= (and b!6946420 res!2833794) b!6946423))

(assert (= (or b!6946424 b!6946423) bm!630972))

(assert (= (or b!6946422 b!6946420) bm!630974))

(assert (= (or b!6946425 bm!630972) bm!630973))

(declare-fun m!7650486 () Bool)

(assert (=> b!6946426 m!7650486))

(declare-fun m!7650488 () Bool)

(assert (=> bm!630973 m!7650488))

(declare-fun m!7650490 () Bool)

(assert (=> bm!630974 m!7650490))

(assert (=> b!6946259 d!2168706))

(declare-fun b!6946433 () Bool)

(declare-fun e!4178251 () Bool)

(declare-fun tp!1914736 () Bool)

(assert (=> b!6946433 (= e!4178251 (and tp_is_empty!43193 tp!1914736))))

(assert (=> b!6946255 (= tp!1914703 e!4178251)))

(assert (= (and b!6946255 (is-Cons!66613 (t!380480 (_2!37144 cut!45)))) b!6946433))

(declare-fun b!6946447 () Bool)

(declare-fun e!4178254 () Bool)

(declare-fun tp!1914748 () Bool)

(declare-fun tp!1914747 () Bool)

(assert (=> b!6946447 (= e!4178254 (and tp!1914748 tp!1914747))))

(declare-fun b!6946446 () Bool)

(declare-fun tp!1914750 () Bool)

(assert (=> b!6946446 (= e!4178254 tp!1914750)))

(declare-fun b!6946445 () Bool)

(declare-fun tp!1914749 () Bool)

(declare-fun tp!1914751 () Bool)

(assert (=> b!6946445 (= e!4178254 (and tp!1914749 tp!1914751))))

(assert (=> b!6946257 (= tp!1914708 e!4178254)))

(declare-fun b!6946444 () Bool)

(assert (=> b!6946444 (= e!4178254 tp_is_empty!43193)))

(assert (= (and b!6946257 (is-ElementMatch!16984 (regOne!34481 rInner!765))) b!6946444))

(assert (= (and b!6946257 (is-Concat!25829 (regOne!34481 rInner!765))) b!6946445))

(assert (= (and b!6946257 (is-Star!16984 (regOne!34481 rInner!765))) b!6946446))

(assert (= (and b!6946257 (is-Union!16984 (regOne!34481 rInner!765))) b!6946447))

(declare-fun b!6946451 () Bool)

(declare-fun e!4178255 () Bool)

(declare-fun tp!1914753 () Bool)

(declare-fun tp!1914752 () Bool)

(assert (=> b!6946451 (= e!4178255 (and tp!1914753 tp!1914752))))

(declare-fun b!6946450 () Bool)

(declare-fun tp!1914755 () Bool)

(assert (=> b!6946450 (= e!4178255 tp!1914755)))

(declare-fun b!6946449 () Bool)

(declare-fun tp!1914754 () Bool)

(declare-fun tp!1914756 () Bool)

(assert (=> b!6946449 (= e!4178255 (and tp!1914754 tp!1914756))))

(assert (=> b!6946257 (= tp!1914709 e!4178255)))

(declare-fun b!6946448 () Bool)

(assert (=> b!6946448 (= e!4178255 tp_is_empty!43193)))

(assert (= (and b!6946257 (is-ElementMatch!16984 (regTwo!34481 rInner!765))) b!6946448))

(assert (= (and b!6946257 (is-Concat!25829 (regTwo!34481 rInner!765))) b!6946449))

(assert (= (and b!6946257 (is-Star!16984 (regTwo!34481 rInner!765))) b!6946450))

(assert (= (and b!6946257 (is-Union!16984 (regTwo!34481 rInner!765))) b!6946451))

(declare-fun b!6946455 () Bool)

(declare-fun e!4178256 () Bool)

(declare-fun tp!1914758 () Bool)

(declare-fun tp!1914757 () Bool)

(assert (=> b!6946455 (= e!4178256 (and tp!1914758 tp!1914757))))

(declare-fun b!6946454 () Bool)

(declare-fun tp!1914760 () Bool)

(assert (=> b!6946454 (= e!4178256 tp!1914760)))

(declare-fun b!6946453 () Bool)

(declare-fun tp!1914759 () Bool)

(declare-fun tp!1914761 () Bool)

(assert (=> b!6946453 (= e!4178256 (and tp!1914759 tp!1914761))))

(assert (=> b!6946253 (= tp!1914707 e!4178256)))

(declare-fun b!6946452 () Bool)

(assert (=> b!6946452 (= e!4178256 tp_is_empty!43193)))

(assert (= (and b!6946253 (is-ElementMatch!16984 (reg!17313 rInner!765))) b!6946452))

(assert (= (and b!6946253 (is-Concat!25829 (reg!17313 rInner!765))) b!6946453))

(assert (= (and b!6946253 (is-Star!16984 (reg!17313 rInner!765))) b!6946454))

(assert (= (and b!6946253 (is-Union!16984 (reg!17313 rInner!765))) b!6946455))

(declare-fun b!6946459 () Bool)

(declare-fun e!4178257 () Bool)

(declare-fun tp!1914763 () Bool)

(declare-fun tp!1914762 () Bool)

(assert (=> b!6946459 (= e!4178257 (and tp!1914763 tp!1914762))))

(declare-fun b!6946458 () Bool)

(declare-fun tp!1914765 () Bool)

(assert (=> b!6946458 (= e!4178257 tp!1914765)))

(declare-fun b!6946457 () Bool)

(declare-fun tp!1914764 () Bool)

(declare-fun tp!1914766 () Bool)

(assert (=> b!6946457 (= e!4178257 (and tp!1914764 tp!1914766))))

(assert (=> b!6946263 (= tp!1914702 e!4178257)))

(declare-fun b!6946456 () Bool)

(assert (=> b!6946456 (= e!4178257 tp_is_empty!43193)))

(assert (= (and b!6946263 (is-ElementMatch!16984 (regOne!34480 rInner!765))) b!6946456))

(assert (= (and b!6946263 (is-Concat!25829 (regOne!34480 rInner!765))) b!6946457))

(assert (= (and b!6946263 (is-Star!16984 (regOne!34480 rInner!765))) b!6946458))

(assert (= (and b!6946263 (is-Union!16984 (regOne!34480 rInner!765))) b!6946459))

(declare-fun b!6946463 () Bool)

(declare-fun e!4178258 () Bool)

(declare-fun tp!1914768 () Bool)

(declare-fun tp!1914767 () Bool)

(assert (=> b!6946463 (= e!4178258 (and tp!1914768 tp!1914767))))

(declare-fun b!6946462 () Bool)

(declare-fun tp!1914770 () Bool)

(assert (=> b!6946462 (= e!4178258 tp!1914770)))

(declare-fun b!6946461 () Bool)

(declare-fun tp!1914769 () Bool)

(declare-fun tp!1914771 () Bool)

(assert (=> b!6946461 (= e!4178258 (and tp!1914769 tp!1914771))))

(assert (=> b!6946263 (= tp!1914705 e!4178258)))

(declare-fun b!6946460 () Bool)

(assert (=> b!6946460 (= e!4178258 tp_is_empty!43193)))

(assert (= (and b!6946263 (is-ElementMatch!16984 (regTwo!34480 rInner!765))) b!6946460))

(assert (= (and b!6946263 (is-Concat!25829 (regTwo!34480 rInner!765))) b!6946461))

(assert (= (and b!6946263 (is-Star!16984 (regTwo!34480 rInner!765))) b!6946462))

(assert (= (and b!6946263 (is-Union!16984 (regTwo!34480 rInner!765))) b!6946463))

(declare-fun b!6946464 () Bool)

(declare-fun e!4178259 () Bool)

(declare-fun tp!1914772 () Bool)

(assert (=> b!6946464 (= e!4178259 (and tp_is_empty!43193 tp!1914772))))

(assert (=> b!6946258 (= tp!1914706 e!4178259)))

(assert (= (and b!6946258 (is-Cons!66613 (t!380480 (_1!37144 cut!45)))) b!6946464))

(declare-fun b!6946465 () Bool)

(declare-fun e!4178260 () Bool)

(declare-fun tp!1914773 () Bool)

(assert (=> b!6946465 (= e!4178260 (and tp_is_empty!43193 tp!1914773))))

(assert (=> b!6946254 (= tp!1914704 e!4178260)))

(assert (= (and b!6946254 (is-Cons!66613 (t!380480 s!10388))) b!6946465))

(push 1)

(assert (not b!6946362))

(assert (not b!6946370))

(assert (not b!6946459))

(assert (not bm!630959))

(assert (not b!6946433))

(assert (not b!6946418))

(assert (not bm!630971))

(assert (not b!6946417))

(assert (not b!6946426))

(assert (not b!6946446))

(assert (not b!6946463))

(assert (not b!6946449))

(assert (not bm!630974))

(assert (not d!2168692))

(assert (not b!6946454))

(assert (not b!6946369))

(assert tp_is_empty!43193)

(assert (not b!6946451))

(assert (not bm!630973))

(assert (not b!6946455))

(assert (not b!6946361))

(assert (not b!6946364))

(assert (not b!6946458))

(assert (not b!6946462))

(assert (not b!6946405))

(assert (not d!2168704))

(assert (not b!6946445))

(assert (not bm!630970))

(assert (not b!6946461))

(assert (not b!6946358))

(assert (not d!2168696))

(assert (not b!6946450))

(assert (not b!6946457))

(assert (not b!6946465))

(assert (not b!6946447))

(assert (not d!2168698))

(assert (not b!6946453))

(assert (not b!6946464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

