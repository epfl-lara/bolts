; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723348 () Bool)

(assert start!723348)

(declare-fun b!7450099 () Bool)

(assert (=> b!7450099 true))

(assert (=> b!7450099 true))

(assert (=> b!7450099 true))

(declare-fun lambda!460797 () Int)

(declare-fun lambda!460796 () Int)

(assert (=> b!7450099 (not (= lambda!460797 lambda!460796))))

(assert (=> b!7450099 true))

(assert (=> b!7450099 true))

(assert (=> b!7450099 true))

(declare-fun b!7450086 () Bool)

(declare-fun e!4447338 () Bool)

(declare-fun tp_is_empty!49261 () Bool)

(declare-fun tp!2158461 () Bool)

(assert (=> b!7450086 (= e!4447338 (and tp_is_empty!49261 tp!2158461))))

(declare-fun b!7450087 () Bool)

(declare-fun res!2988305 () Bool)

(declare-fun e!4447342 () Bool)

(assert (=> b!7450087 (=> (not res!2988305) (not e!4447342))))

(declare-datatypes ((C!39246 0))(
  ( (C!39247 (val!30021 Int)) )
))
(declare-datatypes ((Regex!19486 0))(
  ( (ElementMatch!19486 (c!1377735 C!39246)) (Concat!28331 (regOne!39484 Regex!19486) (regTwo!39484 Regex!19486)) (EmptyExpr!19486) (Star!19486 (reg!19815 Regex!19486)) (EmptyLang!19486) (Union!19486 (regOne!39485 Regex!19486) (regTwo!39485 Regex!19486)) )
))
(declare-fun r2!5783 () Regex!19486)

(declare-fun validRegex!10000 (Regex!19486) Bool)

(assert (=> b!7450087 (= res!2988305 (validRegex!10000 r2!5783))))

(declare-fun b!7450088 () Bool)

(declare-fun e!4447339 () Bool)

(assert (=> b!7450088 (= e!4447339 tp_is_empty!49261)))

(declare-fun b!7450089 () Bool)

(declare-fun tp!2158462 () Bool)

(declare-fun tp!2158469 () Bool)

(assert (=> b!7450089 (= e!4447339 (and tp!2158462 tp!2158469))))

(declare-fun b!7450090 () Bool)

(declare-fun res!2988303 () Bool)

(assert (=> b!7450090 (=> (not res!2988303) (not e!4447342))))

(declare-fun rTail!78 () Regex!19486)

(assert (=> b!7450090 (= res!2988303 (validRegex!10000 rTail!78))))

(declare-fun res!2988307 () Bool)

(assert (=> start!723348 (=> (not res!2988307) (not e!4447342))))

(declare-fun r1!5845 () Regex!19486)

(assert (=> start!723348 (= res!2988307 (validRegex!10000 r1!5845))))

(assert (=> start!723348 e!4447342))

(declare-fun e!4447343 () Bool)

(assert (=> start!723348 e!4447343))

(assert (=> start!723348 e!4447339))

(declare-fun e!4447341 () Bool)

(assert (=> start!723348 e!4447341))

(assert (=> start!723348 e!4447338))

(declare-fun b!7450091 () Bool)

(assert (=> b!7450091 (= e!4447343 tp_is_empty!49261)))

(declare-fun b!7450092 () Bool)

(declare-fun tp!2158475 () Bool)

(assert (=> b!7450092 (= e!4447341 tp!2158475)))

(declare-fun b!7450093 () Bool)

(declare-fun tp!2158460 () Bool)

(declare-fun tp!2158466 () Bool)

(assert (=> b!7450093 (= e!4447341 (and tp!2158460 tp!2158466))))

(declare-fun b!7450094 () Bool)

(assert (=> b!7450094 (= e!4447341 tp_is_empty!49261)))

(declare-fun b!7450095 () Bool)

(declare-fun tp!2158463 () Bool)

(assert (=> b!7450095 (= e!4447343 tp!2158463)))

(declare-fun b!7450096 () Bool)

(declare-fun tp!2158464 () Bool)

(declare-fun tp!2158473 () Bool)

(assert (=> b!7450096 (= e!4447343 (and tp!2158464 tp!2158473))))

(declare-fun b!7450097 () Bool)

(declare-fun tp!2158474 () Bool)

(declare-fun tp!2158465 () Bool)

(assert (=> b!7450097 (= e!4447341 (and tp!2158474 tp!2158465))))

(declare-fun b!7450098 () Bool)

(declare-fun e!4447340 () Bool)

(assert (=> b!7450098 (= e!4447342 (not e!4447340))))

(declare-fun res!2988306 () Bool)

(assert (=> b!7450098 (=> res!2988306 e!4447340)))

(declare-fun lt!2619988 () Bool)

(assert (=> b!7450098 (= res!2988306 (not lt!2619988))))

(declare-fun lt!2619984 () Regex!19486)

(declare-datatypes ((List!72202 0))(
  ( (Nil!72078) (Cons!72078 (h!78526 C!39246) (t!386771 List!72202)) )
))
(declare-fun s!13591 () List!72202)

(declare-fun matchR!9250 (Regex!19486 List!72202) Bool)

(declare-fun matchRSpec!4165 (Regex!19486 List!72202) Bool)

(assert (=> b!7450098 (= (matchR!9250 lt!2619984 s!13591) (matchRSpec!4165 lt!2619984 s!13591))))

(declare-datatypes ((Unit!165807 0))(
  ( (Unit!165808) )
))
(declare-fun lt!2619989 () Unit!165807)

(declare-fun mainMatchTheorem!4159 (Regex!19486 List!72202) Unit!165807)

(assert (=> b!7450098 (= lt!2619989 (mainMatchTheorem!4159 lt!2619984 s!13591))))

(declare-fun lt!2619985 () Regex!19486)

(assert (=> b!7450098 (= lt!2619988 (matchRSpec!4165 lt!2619985 s!13591))))

(assert (=> b!7450098 (= lt!2619988 (matchR!9250 lt!2619985 s!13591))))

(declare-fun lt!2619990 () Unit!165807)

(assert (=> b!7450098 (= lt!2619990 (mainMatchTheorem!4159 lt!2619985 s!13591))))

(assert (=> b!7450098 (= lt!2619984 (Union!19486 (Concat!28331 r1!5845 rTail!78) (Concat!28331 r2!5783 rTail!78)))))

(declare-fun lt!2619986 () Regex!19486)

(assert (=> b!7450098 (= lt!2619985 (Concat!28331 lt!2619986 rTail!78))))

(assert (=> b!7450098 (= lt!2619986 (Union!19486 r1!5845 r2!5783))))

(declare-fun e!4447337 () Bool)

(assert (=> b!7450099 (= e!4447340 e!4447337)))

(declare-fun res!2988304 () Bool)

(assert (=> b!7450099 (=> res!2988304 e!4447337)))

(assert (=> b!7450099 (= res!2988304 (not (validRegex!10000 lt!2619986)))))

(declare-fun Exists!4107 (Int) Bool)

(assert (=> b!7450099 (= (Exists!4107 lambda!460796) (Exists!4107 lambda!460797))))

(declare-fun lt!2619987 () Unit!165807)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2443 (Regex!19486 Regex!19486 List!72202) Unit!165807)

(assert (=> b!7450099 (= lt!2619987 (lemmaExistCutMatchRandMatchRSpecEquivalent!2443 lt!2619986 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68426 0))(
  ( (tuple2!68427 (_1!37516 List!72202) (_2!37516 List!72202)) )
))
(declare-datatypes ((Option!17045 0))(
  ( (None!17044) (Some!17044 (v!54173 tuple2!68426)) )
))
(declare-fun isDefined!13734 (Option!17045) Bool)

(declare-fun findConcatSeparation!3167 (Regex!19486 Regex!19486 List!72202 List!72202 List!72202) Option!17045)

(assert (=> b!7450099 (= (isDefined!13734 (findConcatSeparation!3167 lt!2619986 rTail!78 Nil!72078 s!13591 s!13591)) (Exists!4107 lambda!460796))))

(declare-fun lt!2619991 () Unit!165807)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2925 (Regex!19486 Regex!19486 List!72202) Unit!165807)

(assert (=> b!7450099 (= lt!2619991 (lemmaFindConcatSeparationEquivalentToExists!2925 lt!2619986 rTail!78 s!13591))))

(declare-fun b!7450100 () Bool)

(declare-fun ++!17162 (List!72202 List!72202) List!72202)

(assert (=> b!7450100 (= e!4447337 (= (++!17162 Nil!72078 s!13591) s!13591))))

(declare-fun b!7450101 () Bool)

(declare-fun tp!2158467 () Bool)

(declare-fun tp!2158471 () Bool)

(assert (=> b!7450101 (= e!4447339 (and tp!2158467 tp!2158471))))

(declare-fun b!7450102 () Bool)

(declare-fun tp!2158470 () Bool)

(declare-fun tp!2158468 () Bool)

(assert (=> b!7450102 (= e!4447343 (and tp!2158470 tp!2158468))))

(declare-fun b!7450103 () Bool)

(declare-fun tp!2158472 () Bool)

(assert (=> b!7450103 (= e!4447339 tp!2158472)))

(assert (= (and start!723348 res!2988307) b!7450087))

(assert (= (and b!7450087 res!2988305) b!7450090))

(assert (= (and b!7450090 res!2988303) b!7450098))

(assert (= (and b!7450098 (not res!2988306)) b!7450099))

(assert (= (and b!7450099 (not res!2988304)) b!7450100))

(assert (= (and start!723348 (is-ElementMatch!19486 r1!5845)) b!7450091))

(assert (= (and start!723348 (is-Concat!28331 r1!5845)) b!7450102))

(assert (= (and start!723348 (is-Star!19486 r1!5845)) b!7450095))

(assert (= (and start!723348 (is-Union!19486 r1!5845)) b!7450096))

(assert (= (and start!723348 (is-ElementMatch!19486 r2!5783)) b!7450088))

(assert (= (and start!723348 (is-Concat!28331 r2!5783)) b!7450101))

(assert (= (and start!723348 (is-Star!19486 r2!5783)) b!7450103))

(assert (= (and start!723348 (is-Union!19486 r2!5783)) b!7450089))

(assert (= (and start!723348 (is-ElementMatch!19486 rTail!78)) b!7450094))

(assert (= (and start!723348 (is-Concat!28331 rTail!78)) b!7450097))

(assert (= (and start!723348 (is-Star!19486 rTail!78)) b!7450092))

(assert (= (and start!723348 (is-Union!19486 rTail!78)) b!7450093))

(assert (= (and start!723348 (is-Cons!72078 s!13591)) b!7450086))

(declare-fun m!8056592 () Bool)

(assert (=> start!723348 m!8056592))

(declare-fun m!8056594 () Bool)

(assert (=> b!7450099 m!8056594))

(declare-fun m!8056596 () Bool)

(assert (=> b!7450099 m!8056596))

(declare-fun m!8056598 () Bool)

(assert (=> b!7450099 m!8056598))

(declare-fun m!8056600 () Bool)

(assert (=> b!7450099 m!8056600))

(declare-fun m!8056602 () Bool)

(assert (=> b!7450099 m!8056602))

(assert (=> b!7450099 m!8056594))

(declare-fun m!8056604 () Bool)

(assert (=> b!7450099 m!8056604))

(assert (=> b!7450099 m!8056604))

(declare-fun m!8056606 () Bool)

(assert (=> b!7450099 m!8056606))

(declare-fun m!8056608 () Bool)

(assert (=> b!7450098 m!8056608))

(declare-fun m!8056610 () Bool)

(assert (=> b!7450098 m!8056610))

(declare-fun m!8056612 () Bool)

(assert (=> b!7450098 m!8056612))

(declare-fun m!8056614 () Bool)

(assert (=> b!7450098 m!8056614))

(declare-fun m!8056616 () Bool)

(assert (=> b!7450098 m!8056616))

(declare-fun m!8056618 () Bool)

(assert (=> b!7450098 m!8056618))

(declare-fun m!8056620 () Bool)

(assert (=> b!7450087 m!8056620))

(declare-fun m!8056622 () Bool)

(assert (=> b!7450090 m!8056622))

(declare-fun m!8056624 () Bool)

(assert (=> b!7450100 m!8056624))

(push 1)

(assert (not b!7450095))

(assert (not b!7450086))

(assert (not b!7450102))

(assert (not b!7450099))

(assert (not b!7450092))

(assert (not b!7450097))

(assert (not start!723348))

(assert (not b!7450098))

(assert (not b!7450089))

(assert (not b!7450087))

(assert tp_is_empty!49261)

(assert (not b!7450090))

(assert (not b!7450096))

(assert (not b!7450093))

(assert (not b!7450100))

(assert (not b!7450101))

(assert (not b!7450103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1377741 () Bool)

(declare-fun bm!684516 () Bool)

(declare-fun c!1377742 () Bool)

(declare-fun call!684522 () Bool)

(assert (=> bm!684516 (= call!684522 (validRegex!10000 (ite c!1377742 (reg!19815 r2!5783) (ite c!1377741 (regOne!39485 r2!5783) (regOne!39484 r2!5783)))))))

(declare-fun b!7450196 () Bool)

(declare-fun res!2988347 () Bool)

(declare-fun e!4447391 () Bool)

(assert (=> b!7450196 (=> res!2988347 e!4447391)))

(assert (=> b!7450196 (= res!2988347 (not (is-Concat!28331 r2!5783)))))

(declare-fun e!4447389 () Bool)

(assert (=> b!7450196 (= e!4447389 e!4447391)))

(declare-fun d!2296925 () Bool)

(declare-fun res!2988345 () Bool)

(declare-fun e!4447387 () Bool)

(assert (=> d!2296925 (=> res!2988345 e!4447387)))

(assert (=> d!2296925 (= res!2988345 (is-ElementMatch!19486 r2!5783))))

(assert (=> d!2296925 (= (validRegex!10000 r2!5783) e!4447387)))

(declare-fun b!7450197 () Bool)

(declare-fun e!4447386 () Bool)

(declare-fun call!684523 () Bool)

(assert (=> b!7450197 (= e!4447386 call!684523)))

(declare-fun b!7450198 () Bool)

(declare-fun e!4447385 () Bool)

(assert (=> b!7450198 (= e!4447385 call!684522)))

(declare-fun b!7450199 () Bool)

(assert (=> b!7450199 (= e!4447391 e!4447386)))

(declare-fun res!2988349 () Bool)

(assert (=> b!7450199 (=> (not res!2988349) (not e!4447386))))

(declare-fun call!684521 () Bool)

(assert (=> b!7450199 (= res!2988349 call!684521)))

(declare-fun b!7450200 () Bool)

(declare-fun e!4447388 () Bool)

(assert (=> b!7450200 (= e!4447388 e!4447385)))

(declare-fun res!2988348 () Bool)

(declare-fun nullable!8490 (Regex!19486) Bool)

(assert (=> b!7450200 (= res!2988348 (not (nullable!8490 (reg!19815 r2!5783))))))

(assert (=> b!7450200 (=> (not res!2988348) (not e!4447385))))

(declare-fun bm!684517 () Bool)

(assert (=> bm!684517 (= call!684521 call!684522)))

(declare-fun b!7450201 () Bool)

(assert (=> b!7450201 (= e!4447388 e!4447389)))

(assert (=> b!7450201 (= c!1377741 (is-Union!19486 r2!5783))))

(declare-fun b!7450202 () Bool)

(declare-fun res!2988346 () Bool)

(declare-fun e!4447390 () Bool)

(assert (=> b!7450202 (=> (not res!2988346) (not e!4447390))))

(assert (=> b!7450202 (= res!2988346 call!684521)))

(assert (=> b!7450202 (= e!4447389 e!4447390)))

(declare-fun b!7450203 () Bool)

(assert (=> b!7450203 (= e!4447390 call!684523)))

(declare-fun b!7450204 () Bool)

(assert (=> b!7450204 (= e!4447387 e!4447388)))

(assert (=> b!7450204 (= c!1377742 (is-Star!19486 r2!5783))))

(declare-fun bm!684518 () Bool)

(assert (=> bm!684518 (= call!684523 (validRegex!10000 (ite c!1377741 (regTwo!39485 r2!5783) (regTwo!39484 r2!5783))))))

(assert (= (and d!2296925 (not res!2988345)) b!7450204))

(assert (= (and b!7450204 c!1377742) b!7450200))

(assert (= (and b!7450204 (not c!1377742)) b!7450201))

(assert (= (and b!7450200 res!2988348) b!7450198))

(assert (= (and b!7450201 c!1377741) b!7450202))

(assert (= (and b!7450201 (not c!1377741)) b!7450196))

(assert (= (and b!7450202 res!2988346) b!7450203))

(assert (= (and b!7450196 (not res!2988347)) b!7450199))

(assert (= (and b!7450199 res!2988349) b!7450197))

(assert (= (or b!7450203 b!7450197) bm!684518))

(assert (= (or b!7450202 b!7450199) bm!684517))

(assert (= (or b!7450198 bm!684517) bm!684516))

(declare-fun m!8056660 () Bool)

(assert (=> bm!684516 m!8056660))

(declare-fun m!8056662 () Bool)

(assert (=> b!7450200 m!8056662))

(declare-fun m!8056664 () Bool)

(assert (=> bm!684518 m!8056664))

(assert (=> b!7450087 d!2296925))

(declare-fun c!1377744 () Bool)

(declare-fun bm!684519 () Bool)

(declare-fun call!684525 () Bool)

(declare-fun c!1377743 () Bool)

(assert (=> bm!684519 (= call!684525 (validRegex!10000 (ite c!1377744 (reg!19815 r1!5845) (ite c!1377743 (regOne!39485 r1!5845) (regOne!39484 r1!5845)))))))

(declare-fun b!7450205 () Bool)

(declare-fun res!2988352 () Bool)

(declare-fun e!4447398 () Bool)

(assert (=> b!7450205 (=> res!2988352 e!4447398)))

(assert (=> b!7450205 (= res!2988352 (not (is-Concat!28331 r1!5845)))))

(declare-fun e!4447396 () Bool)

(assert (=> b!7450205 (= e!4447396 e!4447398)))

(declare-fun d!2296927 () Bool)

(declare-fun res!2988350 () Bool)

(declare-fun e!4447394 () Bool)

(assert (=> d!2296927 (=> res!2988350 e!4447394)))

(assert (=> d!2296927 (= res!2988350 (is-ElementMatch!19486 r1!5845))))

(assert (=> d!2296927 (= (validRegex!10000 r1!5845) e!4447394)))

(declare-fun b!7450206 () Bool)

(declare-fun e!4447393 () Bool)

(declare-fun call!684526 () Bool)

(assert (=> b!7450206 (= e!4447393 call!684526)))

(declare-fun b!7450207 () Bool)

(declare-fun e!4447392 () Bool)

(assert (=> b!7450207 (= e!4447392 call!684525)))

(declare-fun b!7450208 () Bool)

(assert (=> b!7450208 (= e!4447398 e!4447393)))

(declare-fun res!2988354 () Bool)

(assert (=> b!7450208 (=> (not res!2988354) (not e!4447393))))

(declare-fun call!684524 () Bool)

(assert (=> b!7450208 (= res!2988354 call!684524)))

(declare-fun b!7450209 () Bool)

(declare-fun e!4447395 () Bool)

(assert (=> b!7450209 (= e!4447395 e!4447392)))

(declare-fun res!2988353 () Bool)

(assert (=> b!7450209 (= res!2988353 (not (nullable!8490 (reg!19815 r1!5845))))))

(assert (=> b!7450209 (=> (not res!2988353) (not e!4447392))))

(declare-fun bm!684520 () Bool)

(assert (=> bm!684520 (= call!684524 call!684525)))

(declare-fun b!7450210 () Bool)

(assert (=> b!7450210 (= e!4447395 e!4447396)))

(assert (=> b!7450210 (= c!1377743 (is-Union!19486 r1!5845))))

(declare-fun b!7450211 () Bool)

(declare-fun res!2988351 () Bool)

(declare-fun e!4447397 () Bool)

(assert (=> b!7450211 (=> (not res!2988351) (not e!4447397))))

(assert (=> b!7450211 (= res!2988351 call!684524)))

(assert (=> b!7450211 (= e!4447396 e!4447397)))

(declare-fun b!7450212 () Bool)

(assert (=> b!7450212 (= e!4447397 call!684526)))

(declare-fun b!7450213 () Bool)

(assert (=> b!7450213 (= e!4447394 e!4447395)))

(assert (=> b!7450213 (= c!1377744 (is-Star!19486 r1!5845))))

(declare-fun bm!684521 () Bool)

(assert (=> bm!684521 (= call!684526 (validRegex!10000 (ite c!1377743 (regTwo!39485 r1!5845) (regTwo!39484 r1!5845))))))

(assert (= (and d!2296927 (not res!2988350)) b!7450213))

(assert (= (and b!7450213 c!1377744) b!7450209))

(assert (= (and b!7450213 (not c!1377744)) b!7450210))

(assert (= (and b!7450209 res!2988353) b!7450207))

(assert (= (and b!7450210 c!1377743) b!7450211))

(assert (= (and b!7450210 (not c!1377743)) b!7450205))

(assert (= (and b!7450211 res!2988351) b!7450212))

(assert (= (and b!7450205 (not res!2988352)) b!7450208))

(assert (= (and b!7450208 res!2988354) b!7450206))

(assert (= (or b!7450212 b!7450206) bm!684521))

(assert (= (or b!7450211 b!7450208) bm!684520))

(assert (= (or b!7450207 bm!684520) bm!684519))

(declare-fun m!8056666 () Bool)

(assert (=> bm!684519 m!8056666))

(declare-fun m!8056668 () Bool)

(assert (=> b!7450209 m!8056668))

(declare-fun m!8056670 () Bool)

(assert (=> bm!684521 m!8056670))

(assert (=> start!723348 d!2296927))

(declare-fun bm!684522 () Bool)

(declare-fun c!1377745 () Bool)

(declare-fun c!1377746 () Bool)

(declare-fun call!684528 () Bool)

(assert (=> bm!684522 (= call!684528 (validRegex!10000 (ite c!1377746 (reg!19815 rTail!78) (ite c!1377745 (regOne!39485 rTail!78) (regOne!39484 rTail!78)))))))

(declare-fun b!7450214 () Bool)

(declare-fun res!2988357 () Bool)

(declare-fun e!4447405 () Bool)

(assert (=> b!7450214 (=> res!2988357 e!4447405)))

(assert (=> b!7450214 (= res!2988357 (not (is-Concat!28331 rTail!78)))))

(declare-fun e!4447403 () Bool)

(assert (=> b!7450214 (= e!4447403 e!4447405)))

(declare-fun d!2296929 () Bool)

(declare-fun res!2988355 () Bool)

(declare-fun e!4447401 () Bool)

(assert (=> d!2296929 (=> res!2988355 e!4447401)))

(assert (=> d!2296929 (= res!2988355 (is-ElementMatch!19486 rTail!78))))

(assert (=> d!2296929 (= (validRegex!10000 rTail!78) e!4447401)))

(declare-fun b!7450215 () Bool)

(declare-fun e!4447400 () Bool)

(declare-fun call!684529 () Bool)

(assert (=> b!7450215 (= e!4447400 call!684529)))

(declare-fun b!7450216 () Bool)

(declare-fun e!4447399 () Bool)

(assert (=> b!7450216 (= e!4447399 call!684528)))

(declare-fun b!7450217 () Bool)

(assert (=> b!7450217 (= e!4447405 e!4447400)))

(declare-fun res!2988359 () Bool)

(assert (=> b!7450217 (=> (not res!2988359) (not e!4447400))))

(declare-fun call!684527 () Bool)

(assert (=> b!7450217 (= res!2988359 call!684527)))

(declare-fun b!7450218 () Bool)

(declare-fun e!4447402 () Bool)

(assert (=> b!7450218 (= e!4447402 e!4447399)))

(declare-fun res!2988358 () Bool)

(assert (=> b!7450218 (= res!2988358 (not (nullable!8490 (reg!19815 rTail!78))))))

(assert (=> b!7450218 (=> (not res!2988358) (not e!4447399))))

(declare-fun bm!684523 () Bool)

(assert (=> bm!684523 (= call!684527 call!684528)))

(declare-fun b!7450219 () Bool)

(assert (=> b!7450219 (= e!4447402 e!4447403)))

(assert (=> b!7450219 (= c!1377745 (is-Union!19486 rTail!78))))

(declare-fun b!7450220 () Bool)

(declare-fun res!2988356 () Bool)

(declare-fun e!4447404 () Bool)

(assert (=> b!7450220 (=> (not res!2988356) (not e!4447404))))

(assert (=> b!7450220 (= res!2988356 call!684527)))

(assert (=> b!7450220 (= e!4447403 e!4447404)))

(declare-fun b!7450221 () Bool)

(assert (=> b!7450221 (= e!4447404 call!684529)))

(declare-fun b!7450222 () Bool)

(assert (=> b!7450222 (= e!4447401 e!4447402)))

(assert (=> b!7450222 (= c!1377746 (is-Star!19486 rTail!78))))

(declare-fun bm!684524 () Bool)

(assert (=> bm!684524 (= call!684529 (validRegex!10000 (ite c!1377745 (regTwo!39485 rTail!78) (regTwo!39484 rTail!78))))))

(assert (= (and d!2296929 (not res!2988355)) b!7450222))

(assert (= (and b!7450222 c!1377746) b!7450218))

(assert (= (and b!7450222 (not c!1377746)) b!7450219))

(assert (= (and b!7450218 res!2988358) b!7450216))

(assert (= (and b!7450219 c!1377745) b!7450220))

(assert (= (and b!7450219 (not c!1377745)) b!7450214))

(assert (= (and b!7450220 res!2988356) b!7450221))

(assert (= (and b!7450214 (not res!2988357)) b!7450217))

(assert (= (and b!7450217 res!2988359) b!7450215))

(assert (= (or b!7450221 b!7450215) bm!684524))

(assert (= (or b!7450220 b!7450217) bm!684523))

(assert (= (or b!7450216 bm!684523) bm!684522))

(declare-fun m!8056672 () Bool)

(assert (=> bm!684522 m!8056672))

(declare-fun m!8056674 () Bool)

(assert (=> b!7450218 m!8056674))

(declare-fun m!8056676 () Bool)

(assert (=> bm!684524 m!8056676))

(assert (=> b!7450090 d!2296929))

(declare-fun b!7450233 () Bool)

(declare-fun res!2988364 () Bool)

(declare-fun e!4447411 () Bool)

(assert (=> b!7450233 (=> (not res!2988364) (not e!4447411))))

(declare-fun lt!2620018 () List!72202)

(declare-fun size!42186 (List!72202) Int)

(assert (=> b!7450233 (= res!2988364 (= (size!42186 lt!2620018) (+ (size!42186 Nil!72078) (size!42186 s!13591))))))

(declare-fun b!7450231 () Bool)

(declare-fun e!4447410 () List!72202)

(assert (=> b!7450231 (= e!4447410 s!13591)))

(declare-fun b!7450232 () Bool)

(assert (=> b!7450232 (= e!4447410 (Cons!72078 (h!78526 Nil!72078) (++!17162 (t!386771 Nil!72078) s!13591)))))

(declare-fun b!7450234 () Bool)

(assert (=> b!7450234 (= e!4447411 (or (not (= s!13591 Nil!72078)) (= lt!2620018 Nil!72078)))))

(declare-fun d!2296931 () Bool)

(assert (=> d!2296931 e!4447411))

(declare-fun res!2988365 () Bool)

(assert (=> d!2296931 (=> (not res!2988365) (not e!4447411))))

(declare-fun content!15250 (List!72202) (Set C!39246))

(assert (=> d!2296931 (= res!2988365 (= (content!15250 lt!2620018) (set.union (content!15250 Nil!72078) (content!15250 s!13591))))))

(assert (=> d!2296931 (= lt!2620018 e!4447410)))

(declare-fun c!1377749 () Bool)

(assert (=> d!2296931 (= c!1377749 (is-Nil!72078 Nil!72078))))

(assert (=> d!2296931 (= (++!17162 Nil!72078 s!13591) lt!2620018)))

(assert (= (and d!2296931 c!1377749) b!7450231))

(assert (= (and d!2296931 (not c!1377749)) b!7450232))

(assert (= (and d!2296931 res!2988365) b!7450233))

(assert (= (and b!7450233 res!2988364) b!7450234))

(declare-fun m!8056678 () Bool)

(assert (=> b!7450233 m!8056678))

(declare-fun m!8056680 () Bool)

(assert (=> b!7450233 m!8056680))

(declare-fun m!8056682 () Bool)

(assert (=> b!7450233 m!8056682))

(declare-fun m!8056684 () Bool)

(assert (=> b!7450232 m!8056684))

(declare-fun m!8056686 () Bool)

(assert (=> d!2296931 m!8056686))

(declare-fun m!8056688 () Bool)

(assert (=> d!2296931 m!8056688))

(declare-fun m!8056690 () Bool)

(assert (=> d!2296931 m!8056690))

(assert (=> b!7450100 d!2296931))

(declare-fun c!1377750 () Bool)

(declare-fun bm!684525 () Bool)

(declare-fun call!684531 () Bool)

(declare-fun c!1377751 () Bool)

(assert (=> bm!684525 (= call!684531 (validRegex!10000 (ite c!1377751 (reg!19815 lt!2619986) (ite c!1377750 (regOne!39485 lt!2619986) (regOne!39484 lt!2619986)))))))

(declare-fun b!7450235 () Bool)

(declare-fun res!2988368 () Bool)

(declare-fun e!4447418 () Bool)

(assert (=> b!7450235 (=> res!2988368 e!4447418)))

(assert (=> b!7450235 (= res!2988368 (not (is-Concat!28331 lt!2619986)))))

(declare-fun e!4447416 () Bool)

(assert (=> b!7450235 (= e!4447416 e!4447418)))

(declare-fun d!2296935 () Bool)

(declare-fun res!2988366 () Bool)

(declare-fun e!4447414 () Bool)

(assert (=> d!2296935 (=> res!2988366 e!4447414)))

(assert (=> d!2296935 (= res!2988366 (is-ElementMatch!19486 lt!2619986))))

(assert (=> d!2296935 (= (validRegex!10000 lt!2619986) e!4447414)))

(declare-fun b!7450236 () Bool)

(declare-fun e!4447413 () Bool)

(declare-fun call!684532 () Bool)

(assert (=> b!7450236 (= e!4447413 call!684532)))

(declare-fun b!7450237 () Bool)

(declare-fun e!4447412 () Bool)

(assert (=> b!7450237 (= e!4447412 call!684531)))

(declare-fun b!7450238 () Bool)

(assert (=> b!7450238 (= e!4447418 e!4447413)))

(declare-fun res!2988370 () Bool)

(assert (=> b!7450238 (=> (not res!2988370) (not e!4447413))))

(declare-fun call!684530 () Bool)

(assert (=> b!7450238 (= res!2988370 call!684530)))

(declare-fun b!7450239 () Bool)

(declare-fun e!4447415 () Bool)

(assert (=> b!7450239 (= e!4447415 e!4447412)))

(declare-fun res!2988369 () Bool)

(assert (=> b!7450239 (= res!2988369 (not (nullable!8490 (reg!19815 lt!2619986))))))

(assert (=> b!7450239 (=> (not res!2988369) (not e!4447412))))

(declare-fun bm!684526 () Bool)

(assert (=> bm!684526 (= call!684530 call!684531)))

(declare-fun b!7450240 () Bool)

(assert (=> b!7450240 (= e!4447415 e!4447416)))

(assert (=> b!7450240 (= c!1377750 (is-Union!19486 lt!2619986))))

(declare-fun b!7450241 () Bool)

(declare-fun res!2988367 () Bool)

(declare-fun e!4447417 () Bool)

(assert (=> b!7450241 (=> (not res!2988367) (not e!4447417))))

(assert (=> b!7450241 (= res!2988367 call!684530)))

(assert (=> b!7450241 (= e!4447416 e!4447417)))

(declare-fun b!7450242 () Bool)

(assert (=> b!7450242 (= e!4447417 call!684532)))

(declare-fun b!7450243 () Bool)

(assert (=> b!7450243 (= e!4447414 e!4447415)))

(assert (=> b!7450243 (= c!1377751 (is-Star!19486 lt!2619986))))

(declare-fun bm!684527 () Bool)

(assert (=> bm!684527 (= call!684532 (validRegex!10000 (ite c!1377750 (regTwo!39485 lt!2619986) (regTwo!39484 lt!2619986))))))

(assert (= (and d!2296935 (not res!2988366)) b!7450243))

(assert (= (and b!7450243 c!1377751) b!7450239))

(assert (= (and b!7450243 (not c!1377751)) b!7450240))

(assert (= (and b!7450239 res!2988369) b!7450237))

(assert (= (and b!7450240 c!1377750) b!7450241))

(assert (= (and b!7450240 (not c!1377750)) b!7450235))

(assert (= (and b!7450241 res!2988367) b!7450242))

(assert (= (and b!7450235 (not res!2988368)) b!7450238))

(assert (= (and b!7450238 res!2988370) b!7450236))

(assert (= (or b!7450242 b!7450236) bm!684527))

(assert (= (or b!7450241 b!7450238) bm!684526))

(assert (= (or b!7450237 bm!684526) bm!684525))

(declare-fun m!8056692 () Bool)

(assert (=> bm!684525 m!8056692))

(declare-fun m!8056694 () Bool)

(assert (=> b!7450239 m!8056694))

(declare-fun m!8056696 () Bool)

(assert (=> bm!684527 m!8056696))

(assert (=> b!7450099 d!2296935))

(declare-fun d!2296937 () Bool)

(declare-fun choose!57589 (Int) Bool)

(assert (=> d!2296937 (= (Exists!4107 lambda!460797) (choose!57589 lambda!460797))))

(declare-fun bs!1926926 () Bool)

(assert (= bs!1926926 d!2296937))

(declare-fun m!8056698 () Bool)

(assert (=> bs!1926926 m!8056698))

(assert (=> b!7450099 d!2296937))

(declare-fun bs!1926927 () Bool)

(declare-fun d!2296939 () Bool)

(assert (= bs!1926927 (and d!2296939 b!7450099)))

(declare-fun lambda!460810 () Int)

(assert (=> bs!1926927 (= lambda!460810 lambda!460796)))

(assert (=> bs!1926927 (not (= lambda!460810 lambda!460797))))

(assert (=> d!2296939 true))

(assert (=> d!2296939 true))

(assert (=> d!2296939 true))

(declare-fun lambda!460811 () Int)

(assert (=> bs!1926927 (not (= lambda!460811 lambda!460796))))

(assert (=> bs!1926927 (= lambda!460811 lambda!460797)))

(declare-fun bs!1926928 () Bool)

(assert (= bs!1926928 d!2296939))

(assert (=> bs!1926928 (not (= lambda!460811 lambda!460810))))

(assert (=> d!2296939 true))

(assert (=> d!2296939 true))

(assert (=> d!2296939 true))

(assert (=> d!2296939 (= (Exists!4107 lambda!460810) (Exists!4107 lambda!460811))))

(declare-fun lt!2620021 () Unit!165807)

(declare-fun choose!57590 (Regex!19486 Regex!19486 List!72202) Unit!165807)

(assert (=> d!2296939 (= lt!2620021 (choose!57590 lt!2619986 rTail!78 s!13591))))

(assert (=> d!2296939 (validRegex!10000 lt!2619986)))

(assert (=> d!2296939 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2443 lt!2619986 rTail!78 s!13591) lt!2620021)))

(declare-fun m!8056700 () Bool)

(assert (=> bs!1926928 m!8056700))

(declare-fun m!8056702 () Bool)

(assert (=> bs!1926928 m!8056702))

(declare-fun m!8056704 () Bool)

(assert (=> bs!1926928 m!8056704))

(assert (=> bs!1926928 m!8056598))

(assert (=> b!7450099 d!2296939))

(declare-fun bs!1926929 () Bool)

(declare-fun d!2296941 () Bool)

(assert (= bs!1926929 (and d!2296941 b!7450099)))

(declare-fun lambda!460814 () Int)

(assert (=> bs!1926929 (= lambda!460814 lambda!460796)))

(assert (=> bs!1926929 (not (= lambda!460814 lambda!460797))))

(declare-fun bs!1926930 () Bool)

(assert (= bs!1926930 (and d!2296941 d!2296939)))

(assert (=> bs!1926930 (= lambda!460814 lambda!460810)))

(assert (=> bs!1926930 (not (= lambda!460814 lambda!460811))))

(assert (=> d!2296941 true))

(assert (=> d!2296941 true))

(assert (=> d!2296941 true))

(assert (=> d!2296941 (= (isDefined!13734 (findConcatSeparation!3167 lt!2619986 rTail!78 Nil!72078 s!13591 s!13591)) (Exists!4107 lambda!460814))))

(declare-fun lt!2620024 () Unit!165807)

(declare-fun choose!57591 (Regex!19486 Regex!19486 List!72202) Unit!165807)

(assert (=> d!2296941 (= lt!2620024 (choose!57591 lt!2619986 rTail!78 s!13591))))

(assert (=> d!2296941 (validRegex!10000 lt!2619986)))

(assert (=> d!2296941 (= (lemmaFindConcatSeparationEquivalentToExists!2925 lt!2619986 rTail!78 s!13591) lt!2620024)))

(declare-fun bs!1926931 () Bool)

(assert (= bs!1926931 d!2296941))

(assert (=> bs!1926931 m!8056594))

(assert (=> bs!1926931 m!8056596))

(assert (=> bs!1926931 m!8056598))

(declare-fun m!8056718 () Bool)

(assert (=> bs!1926931 m!8056718))

(declare-fun m!8056720 () Bool)

(assert (=> bs!1926931 m!8056720))

(assert (=> bs!1926931 m!8056594))

(assert (=> b!7450099 d!2296941))

(declare-fun b!7450318 () Bool)

(declare-fun e!4447467 () Option!17045)

(assert (=> b!7450318 (= e!4447467 (Some!17044 (tuple2!68427 Nil!72078 s!13591)))))

(declare-fun b!7450319 () Bool)

(declare-fun e!4447468 () Option!17045)

(assert (=> b!7450319 (= e!4447467 e!4447468)))

(declare-fun c!1377765 () Bool)

(assert (=> b!7450319 (= c!1377765 (is-Nil!72078 s!13591))))

(declare-fun b!7450320 () Bool)

(declare-fun res!2988421 () Bool)

(declare-fun e!4447470 () Bool)

(assert (=> b!7450320 (=> (not res!2988421) (not e!4447470))))

(declare-fun lt!2620035 () Option!17045)

(declare-fun get!25113 (Option!17045) tuple2!68426)

(assert (=> b!7450320 (= res!2988421 (matchR!9250 rTail!78 (_2!37516 (get!25113 lt!2620035))))))

(declare-fun b!7450321 () Bool)

(declare-fun e!4447471 () Bool)

(assert (=> b!7450321 (= e!4447471 (not (isDefined!13734 lt!2620035)))))

(declare-fun d!2296947 () Bool)

(assert (=> d!2296947 e!4447471))

(declare-fun res!2988425 () Bool)

(assert (=> d!2296947 (=> res!2988425 e!4447471)))

(assert (=> d!2296947 (= res!2988425 e!4447470)))

(declare-fun res!2988424 () Bool)

(assert (=> d!2296947 (=> (not res!2988424) (not e!4447470))))

(assert (=> d!2296947 (= res!2988424 (isDefined!13734 lt!2620035))))

(assert (=> d!2296947 (= lt!2620035 e!4447467)))

(declare-fun c!1377764 () Bool)

(declare-fun e!4447469 () Bool)

(assert (=> d!2296947 (= c!1377764 e!4447469)))

(declare-fun res!2988423 () Bool)

(assert (=> d!2296947 (=> (not res!2988423) (not e!4447469))))

(assert (=> d!2296947 (= res!2988423 (matchR!9250 lt!2619986 Nil!72078))))

(assert (=> d!2296947 (validRegex!10000 lt!2619986)))

(assert (=> d!2296947 (= (findConcatSeparation!3167 lt!2619986 rTail!78 Nil!72078 s!13591 s!13591) lt!2620035)))

(declare-fun b!7450322 () Bool)

(declare-fun lt!2620034 () Unit!165807)

(declare-fun lt!2620036 () Unit!165807)

(assert (=> b!7450322 (= lt!2620034 lt!2620036)))

(assert (=> b!7450322 (= (++!17162 (++!17162 Nil!72078 (Cons!72078 (h!78526 s!13591) Nil!72078)) (t!386771 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3042 (List!72202 C!39246 List!72202 List!72202) Unit!165807)

(assert (=> b!7450322 (= lt!2620036 (lemmaMoveElementToOtherListKeepsConcatEq!3042 Nil!72078 (h!78526 s!13591) (t!386771 s!13591) s!13591))))

(assert (=> b!7450322 (= e!4447468 (findConcatSeparation!3167 lt!2619986 rTail!78 (++!17162 Nil!72078 (Cons!72078 (h!78526 s!13591) Nil!72078)) (t!386771 s!13591) s!13591))))

(declare-fun b!7450323 () Bool)

(declare-fun res!2988422 () Bool)

(assert (=> b!7450323 (=> (not res!2988422) (not e!4447470))))

(assert (=> b!7450323 (= res!2988422 (matchR!9250 lt!2619986 (_1!37516 (get!25113 lt!2620035))))))

(declare-fun b!7450324 () Bool)

(assert (=> b!7450324 (= e!4447470 (= (++!17162 (_1!37516 (get!25113 lt!2620035)) (_2!37516 (get!25113 lt!2620035))) s!13591))))

(declare-fun b!7450325 () Bool)

(assert (=> b!7450325 (= e!4447469 (matchR!9250 rTail!78 s!13591))))

(declare-fun b!7450326 () Bool)

(assert (=> b!7450326 (= e!4447468 None!17044)))

(assert (= (and d!2296947 res!2988423) b!7450325))

(assert (= (and d!2296947 c!1377764) b!7450318))

(assert (= (and d!2296947 (not c!1377764)) b!7450319))

(assert (= (and b!7450319 c!1377765) b!7450326))

(assert (= (and b!7450319 (not c!1377765)) b!7450322))

(assert (= (and d!2296947 res!2988424) b!7450323))

(assert (= (and b!7450323 res!2988422) b!7450320))

(assert (= (and b!7450320 res!2988421) b!7450324))

(assert (= (and d!2296947 (not res!2988425)) b!7450321))

(declare-fun m!8056722 () Bool)

(assert (=> b!7450322 m!8056722))

(assert (=> b!7450322 m!8056722))

(declare-fun m!8056724 () Bool)

(assert (=> b!7450322 m!8056724))

(declare-fun m!8056726 () Bool)

(assert (=> b!7450322 m!8056726))

(assert (=> b!7450322 m!8056722))

(declare-fun m!8056728 () Bool)

(assert (=> b!7450322 m!8056728))

(declare-fun m!8056730 () Bool)

(assert (=> d!2296947 m!8056730))

(declare-fun m!8056732 () Bool)

(assert (=> d!2296947 m!8056732))

(assert (=> d!2296947 m!8056598))

(assert (=> b!7450321 m!8056730))

(declare-fun m!8056734 () Bool)

(assert (=> b!7450324 m!8056734))

(declare-fun m!8056736 () Bool)

(assert (=> b!7450324 m!8056736))

(assert (=> b!7450323 m!8056734))

(declare-fun m!8056738 () Bool)

(assert (=> b!7450323 m!8056738))

(declare-fun m!8056740 () Bool)

(assert (=> b!7450325 m!8056740))

(assert (=> b!7450320 m!8056734))

(declare-fun m!8056742 () Bool)

(assert (=> b!7450320 m!8056742))

(assert (=> b!7450099 d!2296947))

(declare-fun d!2296949 () Bool)

(assert (=> d!2296949 (= (Exists!4107 lambda!460796) (choose!57589 lambda!460796))))

(declare-fun bs!1926933 () Bool)

(assert (= bs!1926933 d!2296949))

(declare-fun m!8056744 () Bool)

(assert (=> bs!1926933 m!8056744))

(assert (=> b!7450099 d!2296949))

(declare-fun d!2296951 () Bool)

(declare-fun isEmpty!41096 (Option!17045) Bool)

(assert (=> d!2296951 (= (isDefined!13734 (findConcatSeparation!3167 lt!2619986 rTail!78 Nil!72078 s!13591 s!13591)) (not (isEmpty!41096 (findConcatSeparation!3167 lt!2619986 rTail!78 Nil!72078 s!13591 s!13591))))))

(declare-fun bs!1926934 () Bool)

(assert (= bs!1926934 d!2296951))

(assert (=> bs!1926934 m!8056594))

(declare-fun m!8056746 () Bool)

(assert (=> bs!1926934 m!8056746))

(assert (=> b!7450099 d!2296951))

(declare-fun bs!1926936 () Bool)

(declare-fun b!7450363 () Bool)

(assert (= bs!1926936 (and b!7450363 d!2296941)))

(declare-fun lambda!460827 () Int)

(assert (=> bs!1926936 (not (= lambda!460827 lambda!460814))))

(declare-fun bs!1926937 () Bool)

(assert (= bs!1926937 (and b!7450363 d!2296939)))

(assert (=> bs!1926937 (not (= lambda!460827 lambda!460811))))

(assert (=> bs!1926937 (not (= lambda!460827 lambda!460810))))

(declare-fun bs!1926938 () Bool)

(assert (= bs!1926938 (and b!7450363 b!7450099)))

(assert (=> bs!1926938 (not (= lambda!460827 lambda!460797))))

(assert (=> bs!1926938 (not (= lambda!460827 lambda!460796))))

(assert (=> b!7450363 true))

(assert (=> b!7450363 true))

(declare-fun bs!1926939 () Bool)

(declare-fun b!7450366 () Bool)

(assert (= bs!1926939 (and b!7450366 d!2296941)))

(declare-fun lambda!460828 () Int)

(assert (=> bs!1926939 (not (= lambda!460828 lambda!460814))))

(declare-fun bs!1926940 () Bool)

(assert (= bs!1926940 (and b!7450366 d!2296939)))

(assert (=> bs!1926940 (= (and (= (regOne!39484 lt!2619984) lt!2619986) (= (regTwo!39484 lt!2619984) rTail!78)) (= lambda!460828 lambda!460811))))

(assert (=> bs!1926940 (not (= lambda!460828 lambda!460810))))

(declare-fun bs!1926941 () Bool)

(assert (= bs!1926941 (and b!7450366 b!7450363)))

(assert (=> bs!1926941 (not (= lambda!460828 lambda!460827))))

(declare-fun bs!1926942 () Bool)

(assert (= bs!1926942 (and b!7450366 b!7450099)))

(assert (=> bs!1926942 (= (and (= (regOne!39484 lt!2619984) lt!2619986) (= (regTwo!39484 lt!2619984) rTail!78)) (= lambda!460828 lambda!460797))))

(assert (=> bs!1926942 (not (= lambda!460828 lambda!460796))))

(assert (=> b!7450366 true))

(assert (=> b!7450366 true))

(declare-fun e!4447494 () Bool)

(declare-fun call!684550 () Bool)

(assert (=> b!7450363 (= e!4447494 call!684550)))

(declare-fun c!1377775 () Bool)

(declare-fun bm!684545 () Bool)

(assert (=> bm!684545 (= call!684550 (Exists!4107 (ite c!1377775 lambda!460827 lambda!460828)))))

(declare-fun b!7450364 () Bool)

(declare-fun e!4447497 () Bool)

(assert (=> b!7450364 (= e!4447497 (matchRSpec!4165 (regTwo!39485 lt!2619984) s!13591))))

(declare-fun b!7450365 () Bool)

(declare-fun res!2988446 () Bool)

(assert (=> b!7450365 (=> res!2988446 e!4447494)))

(declare-fun call!684549 () Bool)

(assert (=> b!7450365 (= res!2988446 call!684549)))

(declare-fun e!4447496 () Bool)

(assert (=> b!7450365 (= e!4447496 e!4447494)))

(assert (=> b!7450366 (= e!4447496 call!684550)))

(declare-fun b!7450367 () Bool)

(declare-fun e!4447492 () Bool)

(assert (=> b!7450367 (= e!4447492 (= s!13591 (Cons!72078 (c!1377735 lt!2619984) Nil!72078)))))

(declare-fun b!7450368 () Bool)

(declare-fun c!1377777 () Bool)

(assert (=> b!7450368 (= c!1377777 (is-ElementMatch!19486 lt!2619984))))

(declare-fun e!4447498 () Bool)

(assert (=> b!7450368 (= e!4447498 e!4447492)))

(declare-fun b!7450369 () Bool)

(declare-fun e!4447493 () Bool)

(assert (=> b!7450369 (= e!4447493 e!4447498)))

(declare-fun res!2988447 () Bool)

(assert (=> b!7450369 (= res!2988447 (not (is-EmptyLang!19486 lt!2619984)))))

(assert (=> b!7450369 (=> (not res!2988447) (not e!4447498))))

(declare-fun b!7450370 () Bool)

(declare-fun c!1377774 () Bool)

(assert (=> b!7450370 (= c!1377774 (is-Union!19486 lt!2619984))))

(declare-fun e!4447495 () Bool)

(assert (=> b!7450370 (= e!4447492 e!4447495)))

(declare-fun b!7450371 () Bool)

(assert (=> b!7450371 (= e!4447495 e!4447496)))

(assert (=> b!7450371 (= c!1377775 (is-Star!19486 lt!2619984))))

(declare-fun d!2296953 () Bool)

(declare-fun c!1377776 () Bool)

(assert (=> d!2296953 (= c!1377776 (is-EmptyExpr!19486 lt!2619984))))

(assert (=> d!2296953 (= (matchRSpec!4165 lt!2619984 s!13591) e!4447493)))

(declare-fun bm!684544 () Bool)

(declare-fun isEmpty!41097 (List!72202) Bool)

(assert (=> bm!684544 (= call!684549 (isEmpty!41097 s!13591))))

(declare-fun b!7450372 () Bool)

(assert (=> b!7450372 (= e!4447495 e!4447497)))

(declare-fun res!2988448 () Bool)

(assert (=> b!7450372 (= res!2988448 (matchRSpec!4165 (regOne!39485 lt!2619984) s!13591))))

(assert (=> b!7450372 (=> res!2988448 e!4447497)))

(declare-fun b!7450373 () Bool)

(assert (=> b!7450373 (= e!4447493 call!684549)))

(assert (= (and d!2296953 c!1377776) b!7450373))

(assert (= (and d!2296953 (not c!1377776)) b!7450369))

(assert (= (and b!7450369 res!2988447) b!7450368))

(assert (= (and b!7450368 c!1377777) b!7450367))

(assert (= (and b!7450368 (not c!1377777)) b!7450370))

(assert (= (and b!7450370 c!1377774) b!7450372))

(assert (= (and b!7450370 (not c!1377774)) b!7450371))

(assert (= (and b!7450372 (not res!2988448)) b!7450364))

(assert (= (and b!7450371 c!1377775) b!7450365))

(assert (= (and b!7450371 (not c!1377775)) b!7450366))

(assert (= (and b!7450365 (not res!2988446)) b!7450363))

(assert (= (or b!7450363 b!7450366) bm!684545))

(assert (= (or b!7450373 b!7450365) bm!684544))

(declare-fun m!8056754 () Bool)

(assert (=> bm!684545 m!8056754))

(declare-fun m!8056756 () Bool)

(assert (=> b!7450364 m!8056756))

(declare-fun m!8056758 () Bool)

(assert (=> bm!684544 m!8056758))

(declare-fun m!8056760 () Bool)

(assert (=> b!7450372 m!8056760))

(assert (=> b!7450098 d!2296953))

(declare-fun b!7450402 () Bool)

(declare-fun e!4447516 () Bool)

(assert (=> b!7450402 (= e!4447516 (nullable!8490 lt!2619984))))

(declare-fun b!7450403 () Bool)

(declare-fun e!4447518 () Bool)

(declare-fun lt!2620042 () Bool)

(declare-fun call!684553 () Bool)

(assert (=> b!7450403 (= e!4447518 (= lt!2620042 call!684553))))

(declare-fun b!7450404 () Bool)

(declare-fun e!4447515 () Bool)

(assert (=> b!7450404 (= e!4447515 (not lt!2620042))))

(declare-fun d!2296957 () Bool)

(assert (=> d!2296957 e!4447518))

(declare-fun c!1377785 () Bool)

(assert (=> d!2296957 (= c!1377785 (is-EmptyExpr!19486 lt!2619984))))

(assert (=> d!2296957 (= lt!2620042 e!4447516)))

(declare-fun c!1377786 () Bool)

(assert (=> d!2296957 (= c!1377786 (isEmpty!41097 s!13591))))

(assert (=> d!2296957 (validRegex!10000 lt!2619984)))

(assert (=> d!2296957 (= (matchR!9250 lt!2619984 s!13591) lt!2620042)))

(declare-fun b!7450405 () Bool)

(declare-fun e!4447513 () Bool)

(declare-fun head!15290 (List!72202) C!39246)

(assert (=> b!7450405 (= e!4447513 (= (head!15290 s!13591) (c!1377735 lt!2619984)))))

(declare-fun b!7450406 () Bool)

(declare-fun res!2988470 () Bool)

(declare-fun e!4447514 () Bool)

(assert (=> b!7450406 (=> res!2988470 e!4447514)))

(assert (=> b!7450406 (= res!2988470 (not (is-ElementMatch!19486 lt!2619984)))))

(assert (=> b!7450406 (= e!4447515 e!4447514)))

(declare-fun b!7450407 () Bool)

(declare-fun res!2988472 () Bool)

(assert (=> b!7450407 (=> (not res!2988472) (not e!4447513))))

(declare-fun tail!14859 (List!72202) List!72202)

(assert (=> b!7450407 (= res!2988472 (isEmpty!41097 (tail!14859 s!13591)))))

(declare-fun b!7450408 () Bool)

(declare-fun e!4447517 () Bool)

(assert (=> b!7450408 (= e!4447514 e!4447517)))

(declare-fun res!2988469 () Bool)

(assert (=> b!7450408 (=> (not res!2988469) (not e!4447517))))

(assert (=> b!7450408 (= res!2988469 (not lt!2620042))))

(declare-fun b!7450409 () Bool)

(declare-fun res!2988471 () Bool)

(declare-fun e!4447519 () Bool)

(assert (=> b!7450409 (=> res!2988471 e!4447519)))

(assert (=> b!7450409 (= res!2988471 (not (isEmpty!41097 (tail!14859 s!13591))))))

(declare-fun b!7450410 () Bool)

(assert (=> b!7450410 (= e!4447518 e!4447515)))

(declare-fun c!1377784 () Bool)

(assert (=> b!7450410 (= c!1377784 (is-EmptyLang!19486 lt!2619984))))

(declare-fun bm!684548 () Bool)

(assert (=> bm!684548 (= call!684553 (isEmpty!41097 s!13591))))

(declare-fun b!7450411 () Bool)

(declare-fun res!2988468 () Bool)

(assert (=> b!7450411 (=> res!2988468 e!4447514)))

(assert (=> b!7450411 (= res!2988468 e!4447513)))

(declare-fun res!2988467 () Bool)

(assert (=> b!7450411 (=> (not res!2988467) (not e!4447513))))

(assert (=> b!7450411 (= res!2988467 lt!2620042)))

(declare-fun b!7450412 () Bool)

(assert (=> b!7450412 (= e!4447517 e!4447519)))

(declare-fun res!2988466 () Bool)

(assert (=> b!7450412 (=> res!2988466 e!4447519)))

(assert (=> b!7450412 (= res!2988466 call!684553)))

(declare-fun b!7450413 () Bool)

(assert (=> b!7450413 (= e!4447519 (not (= (head!15290 s!13591) (c!1377735 lt!2619984))))))

(declare-fun b!7450414 () Bool)

(declare-fun res!2988465 () Bool)

(assert (=> b!7450414 (=> (not res!2988465) (not e!4447513))))

(assert (=> b!7450414 (= res!2988465 (not call!684553))))

(declare-fun b!7450415 () Bool)

(declare-fun derivativeStep!5550 (Regex!19486 C!39246) Regex!19486)

(assert (=> b!7450415 (= e!4447516 (matchR!9250 (derivativeStep!5550 lt!2619984 (head!15290 s!13591)) (tail!14859 s!13591)))))

(assert (= (and d!2296957 c!1377786) b!7450402))

(assert (= (and d!2296957 (not c!1377786)) b!7450415))

(assert (= (and d!2296957 c!1377785) b!7450403))

(assert (= (and d!2296957 (not c!1377785)) b!7450410))

(assert (= (and b!7450410 c!1377784) b!7450404))

(assert (= (and b!7450410 (not c!1377784)) b!7450406))

(assert (= (and b!7450406 (not res!2988470)) b!7450411))

(assert (= (and b!7450411 res!2988467) b!7450414))

(assert (= (and b!7450414 res!2988465) b!7450407))

(assert (= (and b!7450407 res!2988472) b!7450405))

(assert (= (and b!7450411 (not res!2988468)) b!7450408))

(assert (= (and b!7450408 res!2988469) b!7450412))

(assert (= (and b!7450412 (not res!2988466)) b!7450409))

(assert (= (and b!7450409 (not res!2988471)) b!7450413))

(assert (= (or b!7450403 b!7450412 b!7450414) bm!684548))

(declare-fun m!8056768 () Bool)

(assert (=> b!7450409 m!8056768))

(assert (=> b!7450409 m!8056768))

(declare-fun m!8056770 () Bool)

(assert (=> b!7450409 m!8056770))

(assert (=> d!2296957 m!8056758))

(declare-fun m!8056772 () Bool)

(assert (=> d!2296957 m!8056772))

(declare-fun m!8056774 () Bool)

(assert (=> b!7450402 m!8056774))

(declare-fun m!8056776 () Bool)

(assert (=> b!7450415 m!8056776))

(assert (=> b!7450415 m!8056776))

(declare-fun m!8056778 () Bool)

(assert (=> b!7450415 m!8056778))

(assert (=> b!7450415 m!8056768))

(assert (=> b!7450415 m!8056778))

(assert (=> b!7450415 m!8056768))

(declare-fun m!8056780 () Bool)

(assert (=> b!7450415 m!8056780))

(assert (=> b!7450407 m!8056768))

(assert (=> b!7450407 m!8056768))

(assert (=> b!7450407 m!8056770))

(assert (=> b!7450405 m!8056776))

(assert (=> b!7450413 m!8056776))

(assert (=> bm!684548 m!8056758))

(assert (=> b!7450098 d!2296957))

(declare-fun d!2296963 () Bool)

(assert (=> d!2296963 (= (matchR!9250 lt!2619984 s!13591) (matchRSpec!4165 lt!2619984 s!13591))))

(declare-fun lt!2620045 () Unit!165807)

(declare-fun choose!57592 (Regex!19486 List!72202) Unit!165807)

(assert (=> d!2296963 (= lt!2620045 (choose!57592 lt!2619984 s!13591))))

(assert (=> d!2296963 (validRegex!10000 lt!2619984)))

(assert (=> d!2296963 (= (mainMatchTheorem!4159 lt!2619984 s!13591) lt!2620045)))

(declare-fun bs!1926947 () Bool)

(assert (= bs!1926947 d!2296963))

(assert (=> bs!1926947 m!8056612))

(assert (=> bs!1926947 m!8056614))

(declare-fun m!8056782 () Bool)

(assert (=> bs!1926947 m!8056782))

(assert (=> bs!1926947 m!8056772))

(assert (=> b!7450098 d!2296963))

(declare-fun bs!1926948 () Bool)

(declare-fun b!7450416 () Bool)

(assert (= bs!1926948 (and b!7450416 d!2296941)))

(declare-fun lambda!460830 () Int)

(assert (=> bs!1926948 (not (= lambda!460830 lambda!460814))))

(declare-fun bs!1926949 () Bool)

(assert (= bs!1926949 (and b!7450416 d!2296939)))

(assert (=> bs!1926949 (not (= lambda!460830 lambda!460811))))

(assert (=> bs!1926949 (not (= lambda!460830 lambda!460810))))

(declare-fun bs!1926950 () Bool)

(assert (= bs!1926950 (and b!7450416 b!7450366)))

(assert (=> bs!1926950 (not (= lambda!460830 lambda!460828))))

(declare-fun bs!1926951 () Bool)

(assert (= bs!1926951 (and b!7450416 b!7450363)))

(assert (=> bs!1926951 (= (and (= (reg!19815 lt!2619985) (reg!19815 lt!2619984)) (= lt!2619985 lt!2619984)) (= lambda!460830 lambda!460827))))

(declare-fun bs!1926952 () Bool)

(assert (= bs!1926952 (and b!7450416 b!7450099)))

(assert (=> bs!1926952 (not (= lambda!460830 lambda!460797))))

(assert (=> bs!1926952 (not (= lambda!460830 lambda!460796))))

(assert (=> b!7450416 true))

(assert (=> b!7450416 true))

(declare-fun bs!1926953 () Bool)

(declare-fun b!7450419 () Bool)

(assert (= bs!1926953 (and b!7450419 d!2296941)))

(declare-fun lambda!460831 () Int)

(assert (=> bs!1926953 (not (= lambda!460831 lambda!460814))))

(declare-fun bs!1926954 () Bool)

(assert (= bs!1926954 (and b!7450419 d!2296939)))

(assert (=> bs!1926954 (= (and (= (regOne!39484 lt!2619985) lt!2619986) (= (regTwo!39484 lt!2619985) rTail!78)) (= lambda!460831 lambda!460811))))

(declare-fun bs!1926955 () Bool)

(assert (= bs!1926955 (and b!7450419 b!7450366)))

(assert (=> bs!1926955 (= (and (= (regOne!39484 lt!2619985) (regOne!39484 lt!2619984)) (= (regTwo!39484 lt!2619985) (regTwo!39484 lt!2619984))) (= lambda!460831 lambda!460828))))

(declare-fun bs!1926956 () Bool)

(assert (= bs!1926956 (and b!7450419 b!7450363)))

(assert (=> bs!1926956 (not (= lambda!460831 lambda!460827))))

(declare-fun bs!1926957 () Bool)

(assert (= bs!1926957 (and b!7450419 b!7450099)))

(assert (=> bs!1926957 (= (and (= (regOne!39484 lt!2619985) lt!2619986) (= (regTwo!39484 lt!2619985) rTail!78)) (= lambda!460831 lambda!460797))))

(assert (=> bs!1926957 (not (= lambda!460831 lambda!460796))))

(assert (=> bs!1926954 (not (= lambda!460831 lambda!460810))))

(declare-fun bs!1926958 () Bool)

(assert (= bs!1926958 (and b!7450419 b!7450416)))

(assert (=> bs!1926958 (not (= lambda!460831 lambda!460830))))

(assert (=> b!7450419 true))

(assert (=> b!7450419 true))

(declare-fun e!4447522 () Bool)

(declare-fun call!684555 () Bool)

(assert (=> b!7450416 (= e!4447522 call!684555)))

(declare-fun bm!684550 () Bool)

(declare-fun c!1377788 () Bool)

(assert (=> bm!684550 (= call!684555 (Exists!4107 (ite c!1377788 lambda!460830 lambda!460831)))))

(declare-fun b!7450417 () Bool)

(declare-fun e!4447525 () Bool)

(assert (=> b!7450417 (= e!4447525 (matchRSpec!4165 (regTwo!39485 lt!2619985) s!13591))))

(declare-fun b!7450418 () Bool)

(declare-fun res!2988473 () Bool)

(assert (=> b!7450418 (=> res!2988473 e!4447522)))

(declare-fun call!684554 () Bool)

(assert (=> b!7450418 (= res!2988473 call!684554)))

(declare-fun e!4447524 () Bool)

(assert (=> b!7450418 (= e!4447524 e!4447522)))

(assert (=> b!7450419 (= e!4447524 call!684555)))

(declare-fun b!7450420 () Bool)

(declare-fun e!4447520 () Bool)

(assert (=> b!7450420 (= e!4447520 (= s!13591 (Cons!72078 (c!1377735 lt!2619985) Nil!72078)))))

(declare-fun b!7450421 () Bool)

(declare-fun c!1377790 () Bool)

(assert (=> b!7450421 (= c!1377790 (is-ElementMatch!19486 lt!2619985))))

(declare-fun e!4447526 () Bool)

(assert (=> b!7450421 (= e!4447526 e!4447520)))

(declare-fun b!7450422 () Bool)

(declare-fun e!4447521 () Bool)

(assert (=> b!7450422 (= e!4447521 e!4447526)))

(declare-fun res!2988474 () Bool)

(assert (=> b!7450422 (= res!2988474 (not (is-EmptyLang!19486 lt!2619985)))))

(assert (=> b!7450422 (=> (not res!2988474) (not e!4447526))))

(declare-fun b!7450423 () Bool)

(declare-fun c!1377787 () Bool)

(assert (=> b!7450423 (= c!1377787 (is-Union!19486 lt!2619985))))

(declare-fun e!4447523 () Bool)

(assert (=> b!7450423 (= e!4447520 e!4447523)))

(declare-fun b!7450424 () Bool)

(assert (=> b!7450424 (= e!4447523 e!4447524)))

(assert (=> b!7450424 (= c!1377788 (is-Star!19486 lt!2619985))))

(declare-fun d!2296965 () Bool)

(declare-fun c!1377789 () Bool)

(assert (=> d!2296965 (= c!1377789 (is-EmptyExpr!19486 lt!2619985))))

(assert (=> d!2296965 (= (matchRSpec!4165 lt!2619985 s!13591) e!4447521)))

(declare-fun bm!684549 () Bool)

(assert (=> bm!684549 (= call!684554 (isEmpty!41097 s!13591))))

(declare-fun b!7450425 () Bool)

(assert (=> b!7450425 (= e!4447523 e!4447525)))

(declare-fun res!2988475 () Bool)

(assert (=> b!7450425 (= res!2988475 (matchRSpec!4165 (regOne!39485 lt!2619985) s!13591))))

(assert (=> b!7450425 (=> res!2988475 e!4447525)))

(declare-fun b!7450426 () Bool)

(assert (=> b!7450426 (= e!4447521 call!684554)))

(assert (= (and d!2296965 c!1377789) b!7450426))

(assert (= (and d!2296965 (not c!1377789)) b!7450422))

(assert (= (and b!7450422 res!2988474) b!7450421))

(assert (= (and b!7450421 c!1377790) b!7450420))

(assert (= (and b!7450421 (not c!1377790)) b!7450423))

(assert (= (and b!7450423 c!1377787) b!7450425))

(assert (= (and b!7450423 (not c!1377787)) b!7450424))

(assert (= (and b!7450425 (not res!2988475)) b!7450417))

(assert (= (and b!7450424 c!1377788) b!7450418))

(assert (= (and b!7450424 (not c!1377788)) b!7450419))

(assert (= (and b!7450418 (not res!2988473)) b!7450416))

(assert (= (or b!7450416 b!7450419) bm!684550))

(assert (= (or b!7450426 b!7450418) bm!684549))

(declare-fun m!8056784 () Bool)

(assert (=> bm!684550 m!8056784))

(declare-fun m!8056786 () Bool)

(assert (=> b!7450417 m!8056786))

(assert (=> bm!684549 m!8056758))

(declare-fun m!8056788 () Bool)

(assert (=> b!7450425 m!8056788))

(assert (=> b!7450098 d!2296965))

(declare-fun b!7450427 () Bool)

(declare-fun e!4447530 () Bool)

(assert (=> b!7450427 (= e!4447530 (nullable!8490 lt!2619985))))

(declare-fun b!7450428 () Bool)

(declare-fun e!4447532 () Bool)

(declare-fun lt!2620046 () Bool)

(declare-fun call!684556 () Bool)

(assert (=> b!7450428 (= e!4447532 (= lt!2620046 call!684556))))

(declare-fun b!7450429 () Bool)

(declare-fun e!4447529 () Bool)

(assert (=> b!7450429 (= e!4447529 (not lt!2620046))))

(declare-fun d!2296967 () Bool)

(assert (=> d!2296967 e!4447532))

(declare-fun c!1377792 () Bool)

(assert (=> d!2296967 (= c!1377792 (is-EmptyExpr!19486 lt!2619985))))

(assert (=> d!2296967 (= lt!2620046 e!4447530)))

(declare-fun c!1377793 () Bool)

(assert (=> d!2296967 (= c!1377793 (isEmpty!41097 s!13591))))

(assert (=> d!2296967 (validRegex!10000 lt!2619985)))

(assert (=> d!2296967 (= (matchR!9250 lt!2619985 s!13591) lt!2620046)))

(declare-fun b!7450430 () Bool)

(declare-fun e!4447527 () Bool)

(assert (=> b!7450430 (= e!4447527 (= (head!15290 s!13591) (c!1377735 lt!2619985)))))

(declare-fun b!7450431 () Bool)

(declare-fun res!2988481 () Bool)

(declare-fun e!4447528 () Bool)

(assert (=> b!7450431 (=> res!2988481 e!4447528)))

(assert (=> b!7450431 (= res!2988481 (not (is-ElementMatch!19486 lt!2619985)))))

(assert (=> b!7450431 (= e!4447529 e!4447528)))

(declare-fun b!7450432 () Bool)

(declare-fun res!2988483 () Bool)

(assert (=> b!7450432 (=> (not res!2988483) (not e!4447527))))

(assert (=> b!7450432 (= res!2988483 (isEmpty!41097 (tail!14859 s!13591)))))

(declare-fun b!7450433 () Bool)

(declare-fun e!4447531 () Bool)

(assert (=> b!7450433 (= e!4447528 e!4447531)))

(declare-fun res!2988480 () Bool)

(assert (=> b!7450433 (=> (not res!2988480) (not e!4447531))))

(assert (=> b!7450433 (= res!2988480 (not lt!2620046))))

(declare-fun b!7450434 () Bool)

(declare-fun res!2988482 () Bool)

(declare-fun e!4447533 () Bool)

(assert (=> b!7450434 (=> res!2988482 e!4447533)))

(assert (=> b!7450434 (= res!2988482 (not (isEmpty!41097 (tail!14859 s!13591))))))

(declare-fun b!7450435 () Bool)

(assert (=> b!7450435 (= e!4447532 e!4447529)))

(declare-fun c!1377791 () Bool)

(assert (=> b!7450435 (= c!1377791 (is-EmptyLang!19486 lt!2619985))))

(declare-fun bm!684551 () Bool)

(assert (=> bm!684551 (= call!684556 (isEmpty!41097 s!13591))))

(declare-fun b!7450436 () Bool)

(declare-fun res!2988479 () Bool)

(assert (=> b!7450436 (=> res!2988479 e!4447528)))

(assert (=> b!7450436 (= res!2988479 e!4447527)))

(declare-fun res!2988478 () Bool)

(assert (=> b!7450436 (=> (not res!2988478) (not e!4447527))))

(assert (=> b!7450436 (= res!2988478 lt!2620046)))

(declare-fun b!7450437 () Bool)

(assert (=> b!7450437 (= e!4447531 e!4447533)))

(declare-fun res!2988477 () Bool)

(assert (=> b!7450437 (=> res!2988477 e!4447533)))

(assert (=> b!7450437 (= res!2988477 call!684556)))

(declare-fun b!7450438 () Bool)

(assert (=> b!7450438 (= e!4447533 (not (= (head!15290 s!13591) (c!1377735 lt!2619985))))))

(declare-fun b!7450439 () Bool)

(declare-fun res!2988476 () Bool)

(assert (=> b!7450439 (=> (not res!2988476) (not e!4447527))))

(assert (=> b!7450439 (= res!2988476 (not call!684556))))

(declare-fun b!7450440 () Bool)

(assert (=> b!7450440 (= e!4447530 (matchR!9250 (derivativeStep!5550 lt!2619985 (head!15290 s!13591)) (tail!14859 s!13591)))))

(assert (= (and d!2296967 c!1377793) b!7450427))

(assert (= (and d!2296967 (not c!1377793)) b!7450440))

(assert (= (and d!2296967 c!1377792) b!7450428))

(assert (= (and d!2296967 (not c!1377792)) b!7450435))

(assert (= (and b!7450435 c!1377791) b!7450429))

(assert (= (and b!7450435 (not c!1377791)) b!7450431))

(assert (= (and b!7450431 (not res!2988481)) b!7450436))

(assert (= (and b!7450436 res!2988478) b!7450439))

(assert (= (and b!7450439 res!2988476) b!7450432))

(assert (= (and b!7450432 res!2988483) b!7450430))

(assert (= (and b!7450436 (not res!2988479)) b!7450433))

(assert (= (and b!7450433 res!2988480) b!7450437))

(assert (= (and b!7450437 (not res!2988477)) b!7450434))

(assert (= (and b!7450434 (not res!2988482)) b!7450438))

(assert (= (or b!7450428 b!7450437 b!7450439) bm!684551))

(assert (=> b!7450434 m!8056768))

(assert (=> b!7450434 m!8056768))

(assert (=> b!7450434 m!8056770))

(assert (=> d!2296967 m!8056758))

(declare-fun m!8056790 () Bool)

(assert (=> d!2296967 m!8056790))

(declare-fun m!8056792 () Bool)

(assert (=> b!7450427 m!8056792))

(assert (=> b!7450440 m!8056776))

(assert (=> b!7450440 m!8056776))

(declare-fun m!8056794 () Bool)

(assert (=> b!7450440 m!8056794))

(assert (=> b!7450440 m!8056768))

(assert (=> b!7450440 m!8056794))

(assert (=> b!7450440 m!8056768))

(declare-fun m!8056796 () Bool)

(assert (=> b!7450440 m!8056796))

(assert (=> b!7450432 m!8056768))

(assert (=> b!7450432 m!8056768))

(assert (=> b!7450432 m!8056770))

(assert (=> b!7450430 m!8056776))

(assert (=> b!7450438 m!8056776))

(assert (=> bm!684551 m!8056758))

(assert (=> b!7450098 d!2296967))

(declare-fun d!2296969 () Bool)

(assert (=> d!2296969 (= (matchR!9250 lt!2619985 s!13591) (matchRSpec!4165 lt!2619985 s!13591))))

(declare-fun lt!2620047 () Unit!165807)

(assert (=> d!2296969 (= lt!2620047 (choose!57592 lt!2619985 s!13591))))

(assert (=> d!2296969 (validRegex!10000 lt!2619985)))

(assert (=> d!2296969 (= (mainMatchTheorem!4159 lt!2619985 s!13591) lt!2620047)))

(declare-fun bs!1926959 () Bool)

(assert (= bs!1926959 d!2296969))

(assert (=> bs!1926959 m!8056616))

(assert (=> bs!1926959 m!8056608))

(declare-fun m!8056798 () Bool)

(assert (=> bs!1926959 m!8056798))

(assert (=> bs!1926959 m!8056790))

(assert (=> b!7450098 d!2296969))

(declare-fun b!7450452 () Bool)

(declare-fun e!4447536 () Bool)

(declare-fun tp!2158538 () Bool)

(declare-fun tp!2158537 () Bool)

(assert (=> b!7450452 (= e!4447536 (and tp!2158538 tp!2158537))))

(declare-fun b!7450454 () Bool)

(declare-fun tp!2158536 () Bool)

(declare-fun tp!2158534 () Bool)

(assert (=> b!7450454 (= e!4447536 (and tp!2158536 tp!2158534))))

(declare-fun b!7450451 () Bool)

(assert (=> b!7450451 (= e!4447536 tp_is_empty!49261)))

(declare-fun b!7450453 () Bool)

(declare-fun tp!2158535 () Bool)

(assert (=> b!7450453 (= e!4447536 tp!2158535)))

(assert (=> b!7450103 (= tp!2158472 e!4447536)))

(assert (= (and b!7450103 (is-ElementMatch!19486 (reg!19815 r2!5783))) b!7450451))

(assert (= (and b!7450103 (is-Concat!28331 (reg!19815 r2!5783))) b!7450452))

(assert (= (and b!7450103 (is-Star!19486 (reg!19815 r2!5783))) b!7450453))

(assert (= (and b!7450103 (is-Union!19486 (reg!19815 r2!5783))) b!7450454))

(declare-fun b!7450456 () Bool)

(declare-fun e!4447537 () Bool)

(declare-fun tp!2158543 () Bool)

(declare-fun tp!2158542 () Bool)

(assert (=> b!7450456 (= e!4447537 (and tp!2158543 tp!2158542))))

(declare-fun b!7450458 () Bool)

(declare-fun tp!2158541 () Bool)

(declare-fun tp!2158539 () Bool)

(assert (=> b!7450458 (= e!4447537 (and tp!2158541 tp!2158539))))

(declare-fun b!7450455 () Bool)

(assert (=> b!7450455 (= e!4447537 tp_is_empty!49261)))

(declare-fun b!7450457 () Bool)

(declare-fun tp!2158540 () Bool)

(assert (=> b!7450457 (= e!4447537 tp!2158540)))

(assert (=> b!7450092 (= tp!2158475 e!4447537)))

(assert (= (and b!7450092 (is-ElementMatch!19486 (reg!19815 rTail!78))) b!7450455))

(assert (= (and b!7450092 (is-Concat!28331 (reg!19815 rTail!78))) b!7450456))

(assert (= (and b!7450092 (is-Star!19486 (reg!19815 rTail!78))) b!7450457))

(assert (= (and b!7450092 (is-Union!19486 (reg!19815 rTail!78))) b!7450458))

(declare-fun b!7450460 () Bool)

(declare-fun e!4447538 () Bool)

(declare-fun tp!2158548 () Bool)

(declare-fun tp!2158547 () Bool)

(assert (=> b!7450460 (= e!4447538 (and tp!2158548 tp!2158547))))

(declare-fun b!7450462 () Bool)

(declare-fun tp!2158546 () Bool)

(declare-fun tp!2158544 () Bool)

(assert (=> b!7450462 (= e!4447538 (and tp!2158546 tp!2158544))))

(declare-fun b!7450459 () Bool)

(assert (=> b!7450459 (= e!4447538 tp_is_empty!49261)))

(declare-fun b!7450461 () Bool)

(declare-fun tp!2158545 () Bool)

(assert (=> b!7450461 (= e!4447538 tp!2158545)))

(assert (=> b!7450097 (= tp!2158474 e!4447538)))

(assert (= (and b!7450097 (is-ElementMatch!19486 (regOne!39484 rTail!78))) b!7450459))

(assert (= (and b!7450097 (is-Concat!28331 (regOne!39484 rTail!78))) b!7450460))

(assert (= (and b!7450097 (is-Star!19486 (regOne!39484 rTail!78))) b!7450461))

(assert (= (and b!7450097 (is-Union!19486 (regOne!39484 rTail!78))) b!7450462))

(declare-fun b!7450464 () Bool)

(declare-fun e!4447539 () Bool)

(declare-fun tp!2158553 () Bool)

(declare-fun tp!2158552 () Bool)

(assert (=> b!7450464 (= e!4447539 (and tp!2158553 tp!2158552))))

(declare-fun b!7450466 () Bool)

(declare-fun tp!2158551 () Bool)

(declare-fun tp!2158549 () Bool)

(assert (=> b!7450466 (= e!4447539 (and tp!2158551 tp!2158549))))

(declare-fun b!7450463 () Bool)

(assert (=> b!7450463 (= e!4447539 tp_is_empty!49261)))

(declare-fun b!7450465 () Bool)

(declare-fun tp!2158550 () Bool)

(assert (=> b!7450465 (= e!4447539 tp!2158550)))

(assert (=> b!7450097 (= tp!2158465 e!4447539)))

(assert (= (and b!7450097 (is-ElementMatch!19486 (regTwo!39484 rTail!78))) b!7450463))

(assert (= (and b!7450097 (is-Concat!28331 (regTwo!39484 rTail!78))) b!7450464))

(assert (= (and b!7450097 (is-Star!19486 (regTwo!39484 rTail!78))) b!7450465))

(assert (= (and b!7450097 (is-Union!19486 (regTwo!39484 rTail!78))) b!7450466))

(declare-fun b!7450471 () Bool)

(declare-fun e!4447542 () Bool)

(declare-fun tp!2158556 () Bool)

(assert (=> b!7450471 (= e!4447542 (and tp_is_empty!49261 tp!2158556))))

(assert (=> b!7450086 (= tp!2158461 e!4447542)))

(assert (= (and b!7450086 (is-Cons!72078 (t!386771 s!13591))) b!7450471))

(declare-fun b!7450473 () Bool)

(declare-fun e!4447543 () Bool)

(declare-fun tp!2158561 () Bool)

(declare-fun tp!2158560 () Bool)

(assert (=> b!7450473 (= e!4447543 (and tp!2158561 tp!2158560))))

(declare-fun b!7450475 () Bool)

(declare-fun tp!2158559 () Bool)

(declare-fun tp!2158557 () Bool)

(assert (=> b!7450475 (= e!4447543 (and tp!2158559 tp!2158557))))

(declare-fun b!7450472 () Bool)

(assert (=> b!7450472 (= e!4447543 tp_is_empty!49261)))

(declare-fun b!7450474 () Bool)

(declare-fun tp!2158558 () Bool)

(assert (=> b!7450474 (= e!4447543 tp!2158558)))

(assert (=> b!7450102 (= tp!2158470 e!4447543)))

(assert (= (and b!7450102 (is-ElementMatch!19486 (regOne!39484 r1!5845))) b!7450472))

(assert (= (and b!7450102 (is-Concat!28331 (regOne!39484 r1!5845))) b!7450473))

(assert (= (and b!7450102 (is-Star!19486 (regOne!39484 r1!5845))) b!7450474))

(assert (= (and b!7450102 (is-Union!19486 (regOne!39484 r1!5845))) b!7450475))

(declare-fun b!7450477 () Bool)

(declare-fun e!4447544 () Bool)

(declare-fun tp!2158566 () Bool)

(declare-fun tp!2158565 () Bool)

(assert (=> b!7450477 (= e!4447544 (and tp!2158566 tp!2158565))))

(declare-fun b!7450479 () Bool)

(declare-fun tp!2158564 () Bool)

(declare-fun tp!2158562 () Bool)

(assert (=> b!7450479 (= e!4447544 (and tp!2158564 tp!2158562))))

(declare-fun b!7450476 () Bool)

(assert (=> b!7450476 (= e!4447544 tp_is_empty!49261)))

(declare-fun b!7450478 () Bool)

(declare-fun tp!2158563 () Bool)

(assert (=> b!7450478 (= e!4447544 tp!2158563)))

(assert (=> b!7450102 (= tp!2158468 e!4447544)))

(assert (= (and b!7450102 (is-ElementMatch!19486 (regTwo!39484 r1!5845))) b!7450476))

(assert (= (and b!7450102 (is-Concat!28331 (regTwo!39484 r1!5845))) b!7450477))

(assert (= (and b!7450102 (is-Star!19486 (regTwo!39484 r1!5845))) b!7450478))

(assert (= (and b!7450102 (is-Union!19486 (regTwo!39484 r1!5845))) b!7450479))

(declare-fun b!7450483 () Bool)

(declare-fun e!4447545 () Bool)

(declare-fun tp!2158571 () Bool)

(declare-fun tp!2158570 () Bool)

(assert (=> b!7450483 (= e!4447545 (and tp!2158571 tp!2158570))))

(declare-fun b!7450485 () Bool)

(declare-fun tp!2158569 () Bool)

(declare-fun tp!2158567 () Bool)

(assert (=> b!7450485 (= e!4447545 (and tp!2158569 tp!2158567))))

(declare-fun b!7450482 () Bool)

(assert (=> b!7450482 (= e!4447545 tp_is_empty!49261)))

(declare-fun b!7450484 () Bool)

(declare-fun tp!2158568 () Bool)

(assert (=> b!7450484 (= e!4447545 tp!2158568)))

(assert (=> b!7450096 (= tp!2158464 e!4447545)))

(assert (= (and b!7450096 (is-ElementMatch!19486 (regOne!39485 r1!5845))) b!7450482))

(assert (= (and b!7450096 (is-Concat!28331 (regOne!39485 r1!5845))) b!7450483))

(assert (= (and b!7450096 (is-Star!19486 (regOne!39485 r1!5845))) b!7450484))

(assert (= (and b!7450096 (is-Union!19486 (regOne!39485 r1!5845))) b!7450485))

(declare-fun b!7450489 () Bool)

(declare-fun e!4447550 () Bool)

(declare-fun tp!2158576 () Bool)

(declare-fun tp!2158575 () Bool)

(assert (=> b!7450489 (= e!4447550 (and tp!2158576 tp!2158575))))

(declare-fun b!7450491 () Bool)

(declare-fun tp!2158574 () Bool)

(declare-fun tp!2158572 () Bool)

(assert (=> b!7450491 (= e!4447550 (and tp!2158574 tp!2158572))))

(declare-fun b!7450488 () Bool)

(assert (=> b!7450488 (= e!4447550 tp_is_empty!49261)))

(declare-fun b!7450490 () Bool)

(declare-fun tp!2158573 () Bool)

(assert (=> b!7450490 (= e!4447550 tp!2158573)))

(assert (=> b!7450096 (= tp!2158473 e!4447550)))

(assert (= (and b!7450096 (is-ElementMatch!19486 (regTwo!39485 r1!5845))) b!7450488))

(assert (= (and b!7450096 (is-Concat!28331 (regTwo!39485 r1!5845))) b!7450489))

(assert (= (and b!7450096 (is-Star!19486 (regTwo!39485 r1!5845))) b!7450490))

(assert (= (and b!7450096 (is-Union!19486 (regTwo!39485 r1!5845))) b!7450491))

(declare-fun b!7450495 () Bool)

(declare-fun e!4447551 () Bool)

(declare-fun tp!2158581 () Bool)

(declare-fun tp!2158580 () Bool)

(assert (=> b!7450495 (= e!4447551 (and tp!2158581 tp!2158580))))

(declare-fun b!7450497 () Bool)

(declare-fun tp!2158579 () Bool)

(declare-fun tp!2158577 () Bool)

(assert (=> b!7450497 (= e!4447551 (and tp!2158579 tp!2158577))))

(declare-fun b!7450494 () Bool)

(assert (=> b!7450494 (= e!4447551 tp_is_empty!49261)))

(declare-fun b!7450496 () Bool)

(declare-fun tp!2158578 () Bool)

(assert (=> b!7450496 (= e!4447551 tp!2158578)))

(assert (=> b!7450101 (= tp!2158467 e!4447551)))

(assert (= (and b!7450101 (is-ElementMatch!19486 (regOne!39484 r2!5783))) b!7450494))

(assert (= (and b!7450101 (is-Concat!28331 (regOne!39484 r2!5783))) b!7450495))

(assert (= (and b!7450101 (is-Star!19486 (regOne!39484 r2!5783))) b!7450496))

(assert (= (and b!7450101 (is-Union!19486 (regOne!39484 r2!5783))) b!7450497))

(declare-fun b!7450503 () Bool)

(declare-fun e!4447554 () Bool)

(declare-fun tp!2158586 () Bool)

(declare-fun tp!2158585 () Bool)

(assert (=> b!7450503 (= e!4447554 (and tp!2158586 tp!2158585))))

(declare-fun b!7450505 () Bool)

(declare-fun tp!2158584 () Bool)

(declare-fun tp!2158582 () Bool)

(assert (=> b!7450505 (= e!4447554 (and tp!2158584 tp!2158582))))

(declare-fun b!7450502 () Bool)

(assert (=> b!7450502 (= e!4447554 tp_is_empty!49261)))

(declare-fun b!7450504 () Bool)

(declare-fun tp!2158583 () Bool)

(assert (=> b!7450504 (= e!4447554 tp!2158583)))

(assert (=> b!7450101 (= tp!2158471 e!4447554)))

(assert (= (and b!7450101 (is-ElementMatch!19486 (regTwo!39484 r2!5783))) b!7450502))

(assert (= (and b!7450101 (is-Concat!28331 (regTwo!39484 r2!5783))) b!7450503))

(assert (= (and b!7450101 (is-Star!19486 (regTwo!39484 r2!5783))) b!7450504))

(assert (= (and b!7450101 (is-Union!19486 (regTwo!39484 r2!5783))) b!7450505))

(declare-fun b!7450507 () Bool)

(declare-fun e!4447555 () Bool)

(declare-fun tp!2158591 () Bool)

(declare-fun tp!2158590 () Bool)

(assert (=> b!7450507 (= e!4447555 (and tp!2158591 tp!2158590))))

(declare-fun b!7450509 () Bool)

(declare-fun tp!2158589 () Bool)

(declare-fun tp!2158587 () Bool)

(assert (=> b!7450509 (= e!4447555 (and tp!2158589 tp!2158587))))

(declare-fun b!7450506 () Bool)

(assert (=> b!7450506 (= e!4447555 tp_is_empty!49261)))

(declare-fun b!7450508 () Bool)

(declare-fun tp!2158588 () Bool)

(assert (=> b!7450508 (= e!4447555 tp!2158588)))

(assert (=> b!7450095 (= tp!2158463 e!4447555)))

(assert (= (and b!7450095 (is-ElementMatch!19486 (reg!19815 r1!5845))) b!7450506))

(assert (= (and b!7450095 (is-Concat!28331 (reg!19815 r1!5845))) b!7450507))

(assert (= (and b!7450095 (is-Star!19486 (reg!19815 r1!5845))) b!7450508))

(assert (= (and b!7450095 (is-Union!19486 (reg!19815 r1!5845))) b!7450509))

(declare-fun b!7450511 () Bool)

(declare-fun e!4447556 () Bool)

(declare-fun tp!2158596 () Bool)

(declare-fun tp!2158595 () Bool)

(assert (=> b!7450511 (= e!4447556 (and tp!2158596 tp!2158595))))

(declare-fun b!7450513 () Bool)

(declare-fun tp!2158594 () Bool)

(declare-fun tp!2158592 () Bool)

(assert (=> b!7450513 (= e!4447556 (and tp!2158594 tp!2158592))))

(declare-fun b!7450510 () Bool)

(assert (=> b!7450510 (= e!4447556 tp_is_empty!49261)))

(declare-fun b!7450512 () Bool)

(declare-fun tp!2158593 () Bool)

(assert (=> b!7450512 (= e!4447556 tp!2158593)))

(assert (=> b!7450089 (= tp!2158462 e!4447556)))

(assert (= (and b!7450089 (is-ElementMatch!19486 (regOne!39485 r2!5783))) b!7450510))

(assert (= (and b!7450089 (is-Concat!28331 (regOne!39485 r2!5783))) b!7450511))

(assert (= (and b!7450089 (is-Star!19486 (regOne!39485 r2!5783))) b!7450512))

(assert (= (and b!7450089 (is-Union!19486 (regOne!39485 r2!5783))) b!7450513))

(declare-fun b!7450515 () Bool)

(declare-fun e!4447557 () Bool)

(declare-fun tp!2158601 () Bool)

(declare-fun tp!2158600 () Bool)

(assert (=> b!7450515 (= e!4447557 (and tp!2158601 tp!2158600))))

(declare-fun b!7450517 () Bool)

(declare-fun tp!2158599 () Bool)

(declare-fun tp!2158597 () Bool)

(assert (=> b!7450517 (= e!4447557 (and tp!2158599 tp!2158597))))

(declare-fun b!7450514 () Bool)

(assert (=> b!7450514 (= e!4447557 tp_is_empty!49261)))

(declare-fun b!7450516 () Bool)

(declare-fun tp!2158598 () Bool)

(assert (=> b!7450516 (= e!4447557 tp!2158598)))

(assert (=> b!7450089 (= tp!2158469 e!4447557)))

(assert (= (and b!7450089 (is-ElementMatch!19486 (regTwo!39485 r2!5783))) b!7450514))

(assert (= (and b!7450089 (is-Concat!28331 (regTwo!39485 r2!5783))) b!7450515))

(assert (= (and b!7450089 (is-Star!19486 (regTwo!39485 r2!5783))) b!7450516))

(assert (= (and b!7450089 (is-Union!19486 (regTwo!39485 r2!5783))) b!7450517))

(declare-fun b!7450519 () Bool)

(declare-fun e!4447558 () Bool)

(declare-fun tp!2158606 () Bool)

(declare-fun tp!2158605 () Bool)

(assert (=> b!7450519 (= e!4447558 (and tp!2158606 tp!2158605))))

(declare-fun b!7450521 () Bool)

(declare-fun tp!2158604 () Bool)

(declare-fun tp!2158602 () Bool)

(assert (=> b!7450521 (= e!4447558 (and tp!2158604 tp!2158602))))

(declare-fun b!7450518 () Bool)

(assert (=> b!7450518 (= e!4447558 tp_is_empty!49261)))

(declare-fun b!7450520 () Bool)

(declare-fun tp!2158603 () Bool)

(assert (=> b!7450520 (= e!4447558 tp!2158603)))

(assert (=> b!7450093 (= tp!2158460 e!4447558)))

(assert (= (and b!7450093 (is-ElementMatch!19486 (regOne!39485 rTail!78))) b!7450518))

(assert (= (and b!7450093 (is-Concat!28331 (regOne!39485 rTail!78))) b!7450519))

(assert (= (and b!7450093 (is-Star!19486 (regOne!39485 rTail!78))) b!7450520))

(assert (= (and b!7450093 (is-Union!19486 (regOne!39485 rTail!78))) b!7450521))

(declare-fun b!7450523 () Bool)

(declare-fun e!4447559 () Bool)

(declare-fun tp!2158611 () Bool)

(declare-fun tp!2158610 () Bool)

(assert (=> b!7450523 (= e!4447559 (and tp!2158611 tp!2158610))))

(declare-fun b!7450525 () Bool)

(declare-fun tp!2158609 () Bool)

(declare-fun tp!2158607 () Bool)

(assert (=> b!7450525 (= e!4447559 (and tp!2158609 tp!2158607))))

(declare-fun b!7450522 () Bool)

(assert (=> b!7450522 (= e!4447559 tp_is_empty!49261)))

(declare-fun b!7450524 () Bool)

(declare-fun tp!2158608 () Bool)

(assert (=> b!7450524 (= e!4447559 tp!2158608)))

(assert (=> b!7450093 (= tp!2158466 e!4447559)))

(assert (= (and b!7450093 (is-ElementMatch!19486 (regTwo!39485 rTail!78))) b!7450522))

(assert (= (and b!7450093 (is-Concat!28331 (regTwo!39485 rTail!78))) b!7450523))

(assert (= (and b!7450093 (is-Star!19486 (regTwo!39485 rTail!78))) b!7450524))

(assert (= (and b!7450093 (is-Union!19486 (regTwo!39485 rTail!78))) b!7450525))

(push 1)

(assert (not b!7450513))

(assert (not b!7450364))

(assert (not b!7450490))

(assert (not bm!684551))

(assert (not d!2296939))

(assert (not b!7450427))

(assert (not bm!684548))

(assert (not b!7450434))

(assert (not b!7450438))

(assert (not d!2296967))

(assert (not bm!684522))

(assert (not d!2296963))

(assert (not b!7450519))

(assert (not bm!684549))

(assert (not b!7450491))

(assert (not bm!684527))

(assert (not b!7450325))

(assert (not b!7450475))

(assert (not b!7450483))

(assert (not b!7450511))

(assert (not b!7450405))

(assert (not bm!684521))

(assert (not d!2296951))

(assert (not b!7450512))

(assert (not b!7450479))

(assert (not b!7450415))

(assert (not b!7450320))

(assert (not b!7450321))

(assert (not b!7450485))

(assert (not b!7450232))

(assert (not b!7450464))

(assert (not b!7450425))

(assert (not b!7450461))

(assert (not b!7450460))

(assert (not b!7450440))

(assert (not b!7450200))

(assert (not b!7450402))

(assert (not d!2296937))

(assert (not b!7450515))

(assert (not b!7450478))

(assert (not b!7450430))

(assert (not b!7450509))

(assert (not d!2296931))

(assert (not bm!684518))

(assert (not bm!684544))

(assert (not b!7450462))

(assert (not bm!684519))

(assert (not d!2296957))

(assert (not b!7450453))

(assert (not b!7450495))

(assert (not b!7450497))

(assert (not b!7450413))

(assert (not bm!684550))

(assert (not b!7450525))

(assert (not b!7450489))

(assert (not b!7450233))

(assert (not bm!684545))

(assert (not b!7450323))

(assert (not b!7450503))

(assert (not b!7450324))

(assert (not b!7450432))

(assert (not bm!684525))

(assert (not b!7450458))

(assert (not b!7450454))

(assert (not b!7450505))

(assert (not b!7450466))

(assert (not b!7450474))

(assert (not b!7450417))

(assert (not b!7450521))

(assert (not b!7450239))

(assert (not b!7450517))

(assert (not b!7450496))

(assert (not b!7450507))

(assert (not b!7450473))

(assert (not b!7450524))

(assert (not d!2296941))

(assert (not b!7450516))

(assert (not d!2296949))

(assert (not b!7450520))

(assert (not bm!684516))

(assert (not b!7450209))

(assert (not b!7450523))

(assert (not b!7450471))

(assert (not b!7450452))

(assert (not b!7450504))

(assert (not bm!684524))

(assert (not b!7450465))

(assert (not d!2296947))

(assert tp_is_empty!49261)

(assert (not b!7450322))

(assert (not b!7450218))

(assert (not b!7450457))

(assert (not b!7450477))

(assert (not b!7450407))

(assert (not b!7450508))

(assert (not b!7450409))

(assert (not b!7450484))

(assert (not b!7450456))

(assert (not b!7450372))

(assert (not d!2296969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

