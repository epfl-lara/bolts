; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90484 () Bool)

(assert start!90484)

(declare-fun b!1044973 () Bool)

(assert (=> b!1044973 true))

(assert (=> b!1044973 true))

(declare-fun lambda!37672 () Int)

(declare-fun lambda!37671 () Int)

(assert (=> b!1044973 (not (= lambda!37672 lambda!37671))))

(assert (=> b!1044973 true))

(assert (=> b!1044973 true))

(declare-fun bs!249500 () Bool)

(declare-fun b!1044968 () Bool)

(assert (= bs!249500 (and b!1044968 b!1044973)))

(declare-fun lambda!37673 () Int)

(declare-datatypes ((C!6346 0))(
  ( (C!6347 (val!3421 Int)) )
))
(declare-datatypes ((Regex!2888 0))(
  ( (ElementMatch!2888 (c!174085 C!6346)) (Concat!4721 (regOne!6288 Regex!2888) (regTwo!6288 Regex!2888)) (EmptyExpr!2888) (Star!2888 (reg!3217 Regex!2888)) (EmptyLang!2888) (Union!2888 (regOne!6289 Regex!2888) (regTwo!6289 Regex!2888)) )
))
(declare-fun r!15766 () Regex!2888)

(declare-fun lt!357670 () Regex!2888)

(declare-fun lt!357676 () Regex!2888)

(assert (=> bs!249500 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37673 lambda!37671))))

(assert (=> bs!249500 (not (= lambda!37673 lambda!37672))))

(assert (=> b!1044968 true))

(assert (=> b!1044968 true))

(assert (=> b!1044968 true))

(declare-fun lambda!37674 () Int)

(assert (=> bs!249500 (not (= lambda!37674 lambda!37671))))

(assert (=> bs!249500 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37674 lambda!37672))))

(assert (=> b!1044968 (not (= lambda!37674 lambda!37673))))

(assert (=> b!1044968 true))

(assert (=> b!1044968 true))

(assert (=> b!1044968 true))

(declare-fun b!1044966 () Bool)

(declare-fun e!664640 () Bool)

(declare-fun validRegex!1357 (Regex!2888) Bool)

(assert (=> b!1044966 (= e!664640 (validRegex!1357 (regTwo!6288 r!15766)))))

(declare-datatypes ((List!10118 0))(
  ( (Nil!10102) (Cons!10102 (h!15503 C!6346) (t!101164 List!10118)) )
))
(declare-datatypes ((tuple2!11542 0))(
  ( (tuple2!11543 (_1!6597 List!10118) (_2!6597 List!10118)) )
))
(declare-fun lt!357681 () tuple2!11542)

(declare-fun matchR!1424 (Regex!2888 List!10118) Bool)

(assert (=> b!1044966 (= (matchR!1424 (regOne!6288 r!15766) (_1!6597 lt!357681)) (matchR!1424 lt!357670 (_1!6597 lt!357681)))))

(declare-datatypes ((Unit!15451 0))(
  ( (Unit!15452) )
))
(declare-fun lt!357682 () Unit!15451)

(declare-fun lemmaRemoveUselessConcatSound!261 (Regex!2888 List!10118) Unit!15451)

(assert (=> b!1044966 (= lt!357682 (lemmaRemoveUselessConcatSound!261 (regOne!6288 r!15766) (_1!6597 lt!357681)))))

(declare-datatypes ((Option!2413 0))(
  ( (None!2412) (Some!2412 (v!19829 tuple2!11542)) )
))
(declare-fun lt!357683 () Option!2413)

(declare-fun get!3610 (Option!2413) tuple2!11542)

(assert (=> b!1044966 (= lt!357681 (get!3610 lt!357683))))

(declare-fun b!1044967 () Bool)

(declare-fun e!664639 () Bool)

(declare-fun e!664642 () Bool)

(assert (=> b!1044967 (= e!664639 e!664642)))

(declare-fun res!468293 () Bool)

(assert (=> b!1044967 (=> res!468293 e!664642)))

(declare-fun lt!357679 () Regex!2888)

(declare-fun s!10566 () List!10118)

(assert (=> b!1044967 (= res!468293 (not (matchR!1424 lt!357679 s!10566)))))

(assert (=> b!1044967 (= lt!357679 (Concat!4721 lt!357670 lt!357676))))

(declare-fun removeUselessConcat!437 (Regex!2888) Regex!2888)

(assert (=> b!1044967 (= lt!357676 (removeUselessConcat!437 (regTwo!6288 r!15766)))))

(assert (=> b!1044967 (= lt!357670 (removeUselessConcat!437 (regOne!6288 r!15766)))))

(assert (=> b!1044968 (= e!664642 e!664640)))

(declare-fun res!468291 () Bool)

(assert (=> b!1044968 (=> res!468291 e!664640)))

(declare-fun lt!357671 () Bool)

(assert (=> b!1044968 (= res!468291 (not lt!357671))))

(declare-fun Exists!615 (Int) Bool)

(assert (=> b!1044968 (= (Exists!615 lambda!37673) (Exists!615 lambda!37674))))

(declare-fun lt!357678 () Unit!15451)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!303 (Regex!2888 Regex!2888 List!10118) Unit!15451)

(assert (=> b!1044968 (= lt!357678 (lemmaExistCutMatchRandMatchRSpecEquivalent!303 lt!357670 lt!357676 s!10566))))

(assert (=> b!1044968 (= lt!357671 (Exists!615 lambda!37673))))

(declare-fun isDefined!2055 (Option!2413) Bool)

(assert (=> b!1044968 (= lt!357671 (isDefined!2055 lt!357683))))

(declare-fun findConcatSeparation!519 (Regex!2888 Regex!2888 List!10118 List!10118 List!10118) Option!2413)

(assert (=> b!1044968 (= lt!357683 (findConcatSeparation!519 lt!357670 lt!357676 Nil!10102 s!10566 s!10566))))

(declare-fun lt!357672 () Unit!15451)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!519 (Regex!2888 Regex!2888 List!10118) Unit!15451)

(assert (=> b!1044968 (= lt!357672 (lemmaFindConcatSeparationEquivalentToExists!519 lt!357670 lt!357676 s!10566))))

(declare-fun matchRSpec!687 (Regex!2888 List!10118) Bool)

(assert (=> b!1044968 (matchRSpec!687 lt!357679 s!10566)))

(declare-fun lt!357675 () Unit!15451)

(declare-fun mainMatchTheorem!687 (Regex!2888 List!10118) Unit!15451)

(assert (=> b!1044968 (= lt!357675 (mainMatchTheorem!687 lt!357679 s!10566))))

(declare-fun b!1044970 () Bool)

(declare-fun e!664636 () Bool)

(declare-fun e!664637 () Bool)

(assert (=> b!1044970 (= e!664636 (not e!664637))))

(declare-fun res!468289 () Bool)

(assert (=> b!1044970 (=> res!468289 e!664637)))

(declare-fun lt!357674 () Bool)

(assert (=> b!1044970 (= res!468289 (or lt!357674 (and (is-Concat!4721 r!15766) (is-EmptyExpr!2888 (regOne!6288 r!15766))) (and (is-Concat!4721 r!15766) (is-EmptyExpr!2888 (regTwo!6288 r!15766))) (not (is-Concat!4721 r!15766))))))

(assert (=> b!1044970 (= lt!357674 (matchRSpec!687 r!15766 s!10566))))

(assert (=> b!1044970 (= lt!357674 (matchR!1424 r!15766 s!10566))))

(declare-fun lt!357680 () Unit!15451)

(assert (=> b!1044970 (= lt!357680 (mainMatchTheorem!687 r!15766 s!10566))))

(declare-fun b!1044971 () Bool)

(declare-fun e!664638 () Bool)

(declare-fun tp_is_empty!5419 () Bool)

(declare-fun tp!315583 () Bool)

(assert (=> b!1044971 (= e!664638 (and tp_is_empty!5419 tp!315583))))

(declare-fun b!1044972 () Bool)

(declare-fun e!664641 () Bool)

(declare-fun tp!315582 () Bool)

(declare-fun tp!315585 () Bool)

(assert (=> b!1044972 (= e!664641 (and tp!315582 tp!315585))))

(assert (=> b!1044973 (= e!664637 e!664639)))

(declare-fun res!468292 () Bool)

(assert (=> b!1044973 (=> res!468292 e!664639)))

(declare-fun isEmpty!6506 (List!10118) Bool)

(assert (=> b!1044973 (= res!468292 (isEmpty!6506 s!10566))))

(assert (=> b!1044973 (= (Exists!615 lambda!37671) (Exists!615 lambda!37672))))

(declare-fun lt!357673 () Unit!15451)

(assert (=> b!1044973 (= lt!357673 (lemmaExistCutMatchRandMatchRSpecEquivalent!303 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566))))

(assert (=> b!1044973 (= (isDefined!2055 (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) Nil!10102 s!10566 s!10566)) (Exists!615 lambda!37671))))

(declare-fun lt!357677 () Unit!15451)

(assert (=> b!1044973 (= lt!357677 (lemmaFindConcatSeparationEquivalentToExists!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566))))

(declare-fun b!1044974 () Bool)

(declare-fun tp!315581 () Bool)

(declare-fun tp!315584 () Bool)

(assert (=> b!1044974 (= e!664641 (and tp!315581 tp!315584))))

(declare-fun b!1044975 () Bool)

(assert (=> b!1044975 (= e!664641 tp_is_empty!5419)))

(declare-fun res!468290 () Bool)

(assert (=> start!90484 (=> (not res!468290) (not e!664636))))

(assert (=> start!90484 (= res!468290 (validRegex!1357 r!15766))))

(assert (=> start!90484 e!664636))

(assert (=> start!90484 e!664641))

(assert (=> start!90484 e!664638))

(declare-fun b!1044969 () Bool)

(declare-fun tp!315586 () Bool)

(assert (=> b!1044969 (= e!664641 tp!315586)))

(assert (= (and start!90484 res!468290) b!1044970))

(assert (= (and b!1044970 (not res!468289)) b!1044973))

(assert (= (and b!1044973 (not res!468292)) b!1044967))

(assert (= (and b!1044967 (not res!468293)) b!1044968))

(assert (= (and b!1044968 (not res!468291)) b!1044966))

(assert (= (and start!90484 (is-ElementMatch!2888 r!15766)) b!1044975))

(assert (= (and start!90484 (is-Concat!4721 r!15766)) b!1044972))

(assert (= (and start!90484 (is-Star!2888 r!15766)) b!1044969))

(assert (= (and start!90484 (is-Union!2888 r!15766)) b!1044974))

(assert (= (and start!90484 (is-Cons!10102 s!10566)) b!1044971))

(declare-fun m!1212057 () Bool)

(assert (=> b!1044967 m!1212057))

(declare-fun m!1212059 () Bool)

(assert (=> b!1044967 m!1212059))

(declare-fun m!1212061 () Bool)

(assert (=> b!1044967 m!1212061))

(declare-fun m!1212063 () Bool)

(assert (=> b!1044968 m!1212063))

(declare-fun m!1212065 () Bool)

(assert (=> b!1044968 m!1212065))

(declare-fun m!1212067 () Bool)

(assert (=> b!1044968 m!1212067))

(declare-fun m!1212069 () Bool)

(assert (=> b!1044968 m!1212069))

(declare-fun m!1212071 () Bool)

(assert (=> b!1044968 m!1212071))

(declare-fun m!1212073 () Bool)

(assert (=> b!1044968 m!1212073))

(declare-fun m!1212075 () Bool)

(assert (=> b!1044968 m!1212075))

(declare-fun m!1212077 () Bool)

(assert (=> b!1044968 m!1212077))

(assert (=> b!1044968 m!1212073))

(declare-fun m!1212079 () Bool)

(assert (=> start!90484 m!1212079))

(declare-fun m!1212081 () Bool)

(assert (=> b!1044970 m!1212081))

(declare-fun m!1212083 () Bool)

(assert (=> b!1044970 m!1212083))

(declare-fun m!1212085 () Bool)

(assert (=> b!1044970 m!1212085))

(declare-fun m!1212087 () Bool)

(assert (=> b!1044966 m!1212087))

(declare-fun m!1212089 () Bool)

(assert (=> b!1044966 m!1212089))

(declare-fun m!1212091 () Bool)

(assert (=> b!1044966 m!1212091))

(declare-fun m!1212093 () Bool)

(assert (=> b!1044966 m!1212093))

(declare-fun m!1212095 () Bool)

(assert (=> b!1044966 m!1212095))

(declare-fun m!1212097 () Bool)

(assert (=> b!1044973 m!1212097))

(declare-fun m!1212099 () Bool)

(assert (=> b!1044973 m!1212099))

(declare-fun m!1212101 () Bool)

(assert (=> b!1044973 m!1212101))

(declare-fun m!1212103 () Bool)

(assert (=> b!1044973 m!1212103))

(declare-fun m!1212105 () Bool)

(assert (=> b!1044973 m!1212105))

(assert (=> b!1044973 m!1212097))

(declare-fun m!1212107 () Bool)

(assert (=> b!1044973 m!1212107))

(declare-fun m!1212109 () Bool)

(assert (=> b!1044973 m!1212109))

(assert (=> b!1044973 m!1212099))

(push 1)

(assert (not b!1044971))

(assert (not b!1044974))

(assert (not b!1044966))

(assert (not b!1044972))

(assert (not b!1044969))

(assert (not b!1044970))

(assert (not b!1044973))

(assert (not b!1044967))

(assert (not b!1044968))

(assert tp_is_empty!5419)

(assert (not start!90484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1045083 () Bool)

(declare-fun res!468360 () Bool)

(declare-fun e!664711 () Bool)

(assert (=> b!1045083 (=> (not res!468360) (not e!664711))))

(declare-fun call!73407 () Bool)

(assert (=> b!1045083 (= res!468360 call!73407)))

(declare-fun e!664716 () Bool)

(assert (=> b!1045083 (= e!664716 e!664711)))

(declare-fun bm!73400 () Bool)

(declare-fun c!174097 () Bool)

(assert (=> bm!73400 (= call!73407 (validRegex!1357 (ite c!174097 (regOne!6289 (regTwo!6288 r!15766)) (regOne!6288 (regTwo!6288 r!15766)))))))

(declare-fun b!1045084 () Bool)

(declare-fun e!664717 () Bool)

(declare-fun e!664712 () Bool)

(assert (=> b!1045084 (= e!664717 e!664712)))

(declare-fun c!174098 () Bool)

(assert (=> b!1045084 (= c!174098 (is-Star!2888 (regTwo!6288 r!15766)))))

(declare-fun d!298014 () Bool)

(declare-fun res!468361 () Bool)

(assert (=> d!298014 (=> res!468361 e!664717)))

(assert (=> d!298014 (= res!468361 (is-ElementMatch!2888 (regTwo!6288 r!15766)))))

(assert (=> d!298014 (= (validRegex!1357 (regTwo!6288 r!15766)) e!664717)))

(declare-fun bm!73401 () Bool)

(declare-fun call!73406 () Bool)

(declare-fun call!73405 () Bool)

(assert (=> bm!73401 (= call!73406 call!73405)))

(declare-fun b!1045085 () Bool)

(declare-fun e!664715 () Bool)

(assert (=> b!1045085 (= e!664715 call!73406)))

(declare-fun b!1045086 () Bool)

(assert (=> b!1045086 (= e!664711 call!73406)))

(declare-fun b!1045087 () Bool)

(declare-fun e!664713 () Bool)

(assert (=> b!1045087 (= e!664713 e!664715)))

(declare-fun res!468362 () Bool)

(assert (=> b!1045087 (=> (not res!468362) (not e!664715))))

(assert (=> b!1045087 (= res!468362 call!73407)))

(declare-fun bm!73402 () Bool)

(assert (=> bm!73402 (= call!73405 (validRegex!1357 (ite c!174098 (reg!3217 (regTwo!6288 r!15766)) (ite c!174097 (regTwo!6289 (regTwo!6288 r!15766)) (regTwo!6288 (regTwo!6288 r!15766))))))))

(declare-fun b!1045088 () Bool)

(declare-fun res!468358 () Bool)

(assert (=> b!1045088 (=> res!468358 e!664713)))

(assert (=> b!1045088 (= res!468358 (not (is-Concat!4721 (regTwo!6288 r!15766))))))

(assert (=> b!1045088 (= e!664716 e!664713)))

(declare-fun b!1045089 () Bool)

(assert (=> b!1045089 (= e!664712 e!664716)))

(assert (=> b!1045089 (= c!174097 (is-Union!2888 (regTwo!6288 r!15766)))))

(declare-fun b!1045090 () Bool)

(declare-fun e!664714 () Bool)

(assert (=> b!1045090 (= e!664712 e!664714)))

(declare-fun res!468359 () Bool)

(declare-fun nullable!980 (Regex!2888) Bool)

(assert (=> b!1045090 (= res!468359 (not (nullable!980 (reg!3217 (regTwo!6288 r!15766)))))))

(assert (=> b!1045090 (=> (not res!468359) (not e!664714))))

(declare-fun b!1045091 () Bool)

(assert (=> b!1045091 (= e!664714 call!73405)))

(assert (= (and d!298014 (not res!468361)) b!1045084))

(assert (= (and b!1045084 c!174098) b!1045090))

(assert (= (and b!1045084 (not c!174098)) b!1045089))

(assert (= (and b!1045090 res!468359) b!1045091))

(assert (= (and b!1045089 c!174097) b!1045083))

(assert (= (and b!1045089 (not c!174097)) b!1045088))

(assert (= (and b!1045083 res!468360) b!1045086))

(assert (= (and b!1045088 (not res!468358)) b!1045087))

(assert (= (and b!1045087 res!468362) b!1045085))

(assert (= (or b!1045086 b!1045085) bm!73401))

(assert (= (or b!1045083 b!1045087) bm!73400))

(assert (= (or b!1045091 bm!73401) bm!73402))

(declare-fun m!1212171 () Bool)

(assert (=> bm!73400 m!1212171))

(declare-fun m!1212173 () Bool)

(assert (=> bm!73402 m!1212173))

(declare-fun m!1212175 () Bool)

(assert (=> b!1045090 m!1212175))

(assert (=> b!1044966 d!298014))

(declare-fun b!1045120 () Bool)

(declare-fun e!664736 () Bool)

(declare-fun derivativeStep!780 (Regex!2888 C!6346) Regex!2888)

(declare-fun head!1935 (List!10118) C!6346)

(declare-fun tail!1497 (List!10118) List!10118)

(assert (=> b!1045120 (= e!664736 (matchR!1424 (derivativeStep!780 (regOne!6288 r!15766) (head!1935 (_1!6597 lt!357681))) (tail!1497 (_1!6597 lt!357681))))))

(declare-fun b!1045121 () Bool)

(declare-fun e!664732 () Bool)

(assert (=> b!1045121 (= e!664732 (not (= (head!1935 (_1!6597 lt!357681)) (c!174085 (regOne!6288 r!15766)))))))

(declare-fun bm!73405 () Bool)

(declare-fun call!73410 () Bool)

(assert (=> bm!73405 (= call!73410 (isEmpty!6506 (_1!6597 lt!357681)))))

(declare-fun b!1045122 () Bool)

(declare-fun e!664734 () Bool)

(declare-fun lt!357731 () Bool)

(assert (=> b!1045122 (= e!664734 (not lt!357731))))

(declare-fun b!1045123 () Bool)

(declare-fun res!468384 () Bool)

(assert (=> b!1045123 (=> res!468384 e!664732)))

(assert (=> b!1045123 (= res!468384 (not (isEmpty!6506 (tail!1497 (_1!6597 lt!357681)))))))

(declare-fun d!298018 () Bool)

(declare-fun e!664733 () Bool)

(assert (=> d!298018 e!664733))

(declare-fun c!174105 () Bool)

(assert (=> d!298018 (= c!174105 (is-EmptyExpr!2888 (regOne!6288 r!15766)))))

(assert (=> d!298018 (= lt!357731 e!664736)))

(declare-fun c!174107 () Bool)

(assert (=> d!298018 (= c!174107 (isEmpty!6506 (_1!6597 lt!357681)))))

(assert (=> d!298018 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298018 (= (matchR!1424 (regOne!6288 r!15766) (_1!6597 lt!357681)) lt!357731)))

(declare-fun b!1045124 () Bool)

(declare-fun res!468379 () Bool)

(declare-fun e!664735 () Bool)

(assert (=> b!1045124 (=> (not res!468379) (not e!664735))))

(assert (=> b!1045124 (= res!468379 (not call!73410))))

(declare-fun b!1045125 () Bool)

(assert (=> b!1045125 (= e!664733 (= lt!357731 call!73410))))

(declare-fun b!1045126 () Bool)

(declare-fun res!468380 () Bool)

(declare-fun e!664737 () Bool)

(assert (=> b!1045126 (=> res!468380 e!664737)))

(assert (=> b!1045126 (= res!468380 (not (is-ElementMatch!2888 (regOne!6288 r!15766))))))

(assert (=> b!1045126 (= e!664734 e!664737)))

(declare-fun b!1045127 () Bool)

(assert (=> b!1045127 (= e!664736 (nullable!980 (regOne!6288 r!15766)))))

(declare-fun b!1045128 () Bool)

(declare-fun res!468381 () Bool)

(assert (=> b!1045128 (=> (not res!468381) (not e!664735))))

(assert (=> b!1045128 (= res!468381 (isEmpty!6506 (tail!1497 (_1!6597 lt!357681))))))

(declare-fun b!1045129 () Bool)

(assert (=> b!1045129 (= e!664733 e!664734)))

(declare-fun c!174106 () Bool)

(assert (=> b!1045129 (= c!174106 (is-EmptyLang!2888 (regOne!6288 r!15766)))))

(declare-fun b!1045130 () Bool)

(declare-fun e!664738 () Bool)

(assert (=> b!1045130 (= e!664738 e!664732)))

(declare-fun res!468386 () Bool)

(assert (=> b!1045130 (=> res!468386 e!664732)))

(assert (=> b!1045130 (= res!468386 call!73410)))

(declare-fun b!1045131 () Bool)

(assert (=> b!1045131 (= e!664737 e!664738)))

(declare-fun res!468385 () Bool)

(assert (=> b!1045131 (=> (not res!468385) (not e!664738))))

(assert (=> b!1045131 (= res!468385 (not lt!357731))))

(declare-fun b!1045132 () Bool)

(assert (=> b!1045132 (= e!664735 (= (head!1935 (_1!6597 lt!357681)) (c!174085 (regOne!6288 r!15766))))))

(declare-fun b!1045133 () Bool)

(declare-fun res!468383 () Bool)

(assert (=> b!1045133 (=> res!468383 e!664737)))

(assert (=> b!1045133 (= res!468383 e!664735)))

(declare-fun res!468382 () Bool)

(assert (=> b!1045133 (=> (not res!468382) (not e!664735))))

(assert (=> b!1045133 (= res!468382 lt!357731)))

(assert (= (and d!298018 c!174107) b!1045127))

(assert (= (and d!298018 (not c!174107)) b!1045120))

(assert (= (and d!298018 c!174105) b!1045125))

(assert (= (and d!298018 (not c!174105)) b!1045129))

(assert (= (and b!1045129 c!174106) b!1045122))

(assert (= (and b!1045129 (not c!174106)) b!1045126))

(assert (= (and b!1045126 (not res!468380)) b!1045133))

(assert (= (and b!1045133 res!468382) b!1045124))

(assert (= (and b!1045124 res!468379) b!1045128))

(assert (= (and b!1045128 res!468381) b!1045132))

(assert (= (and b!1045133 (not res!468383)) b!1045131))

(assert (= (and b!1045131 res!468385) b!1045130))

(assert (= (and b!1045130 (not res!468386)) b!1045123))

(assert (= (and b!1045123 (not res!468384)) b!1045121))

(assert (= (or b!1045125 b!1045124 b!1045130) bm!73405))

(declare-fun m!1212183 () Bool)

(assert (=> b!1045132 m!1212183))

(declare-fun m!1212185 () Bool)

(assert (=> b!1045123 m!1212185))

(assert (=> b!1045123 m!1212185))

(declare-fun m!1212187 () Bool)

(assert (=> b!1045123 m!1212187))

(assert (=> b!1045128 m!1212185))

(assert (=> b!1045128 m!1212185))

(assert (=> b!1045128 m!1212187))

(assert (=> b!1045120 m!1212183))

(assert (=> b!1045120 m!1212183))

(declare-fun m!1212189 () Bool)

(assert (=> b!1045120 m!1212189))

(assert (=> b!1045120 m!1212185))

(assert (=> b!1045120 m!1212189))

(assert (=> b!1045120 m!1212185))

(declare-fun m!1212191 () Bool)

(assert (=> b!1045120 m!1212191))

(declare-fun m!1212193 () Bool)

(assert (=> bm!73405 m!1212193))

(assert (=> d!298018 m!1212193))

(declare-fun m!1212195 () Bool)

(assert (=> d!298018 m!1212195))

(declare-fun m!1212197 () Bool)

(assert (=> b!1045127 m!1212197))

(assert (=> b!1045121 m!1212183))

(assert (=> b!1044966 d!298018))

(declare-fun d!298022 () Bool)

(assert (=> d!298022 (= (get!3610 lt!357683) (v!19829 lt!357683))))

(assert (=> b!1044966 d!298022))

(declare-fun d!298024 () Bool)

(assert (=> d!298024 (= (matchR!1424 (regOne!6288 r!15766) (_1!6597 lt!357681)) (matchR!1424 (removeUselessConcat!437 (regOne!6288 r!15766)) (_1!6597 lt!357681)))))

(declare-fun lt!357734 () Unit!15451)

(declare-fun choose!6655 (Regex!2888 List!10118) Unit!15451)

(assert (=> d!298024 (= lt!357734 (choose!6655 (regOne!6288 r!15766) (_1!6597 lt!357681)))))

(assert (=> d!298024 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298024 (= (lemmaRemoveUselessConcatSound!261 (regOne!6288 r!15766) (_1!6597 lt!357681)) lt!357734)))

(declare-fun bs!249503 () Bool)

(assert (= bs!249503 d!298024))

(declare-fun m!1212199 () Bool)

(assert (=> bs!249503 m!1212199))

(assert (=> bs!249503 m!1212061))

(assert (=> bs!249503 m!1212061))

(declare-fun m!1212201 () Bool)

(assert (=> bs!249503 m!1212201))

(assert (=> bs!249503 m!1212195))

(assert (=> bs!249503 m!1212095))

(assert (=> b!1044966 d!298024))

(declare-fun b!1045134 () Bool)

(declare-fun e!664743 () Bool)

(assert (=> b!1045134 (= e!664743 (matchR!1424 (derivativeStep!780 lt!357670 (head!1935 (_1!6597 lt!357681))) (tail!1497 (_1!6597 lt!357681))))))

(declare-fun b!1045135 () Bool)

(declare-fun e!664739 () Bool)

(assert (=> b!1045135 (= e!664739 (not (= (head!1935 (_1!6597 lt!357681)) (c!174085 lt!357670))))))

(declare-fun bm!73406 () Bool)

(declare-fun call!73411 () Bool)

(assert (=> bm!73406 (= call!73411 (isEmpty!6506 (_1!6597 lt!357681)))))

(declare-fun b!1045136 () Bool)

(declare-fun e!664741 () Bool)

(declare-fun lt!357735 () Bool)

(assert (=> b!1045136 (= e!664741 (not lt!357735))))

(declare-fun b!1045137 () Bool)

(declare-fun res!468392 () Bool)

(assert (=> b!1045137 (=> res!468392 e!664739)))

(assert (=> b!1045137 (= res!468392 (not (isEmpty!6506 (tail!1497 (_1!6597 lt!357681)))))))

(declare-fun d!298026 () Bool)

(declare-fun e!664740 () Bool)

(assert (=> d!298026 e!664740))

(declare-fun c!174108 () Bool)

(assert (=> d!298026 (= c!174108 (is-EmptyExpr!2888 lt!357670))))

(assert (=> d!298026 (= lt!357735 e!664743)))

(declare-fun c!174110 () Bool)

(assert (=> d!298026 (= c!174110 (isEmpty!6506 (_1!6597 lt!357681)))))

(assert (=> d!298026 (validRegex!1357 lt!357670)))

(assert (=> d!298026 (= (matchR!1424 lt!357670 (_1!6597 lt!357681)) lt!357735)))

(declare-fun b!1045138 () Bool)

(declare-fun res!468387 () Bool)

(declare-fun e!664742 () Bool)

(assert (=> b!1045138 (=> (not res!468387) (not e!664742))))

(assert (=> b!1045138 (= res!468387 (not call!73411))))

(declare-fun b!1045139 () Bool)

(assert (=> b!1045139 (= e!664740 (= lt!357735 call!73411))))

(declare-fun b!1045140 () Bool)

(declare-fun res!468388 () Bool)

(declare-fun e!664744 () Bool)

(assert (=> b!1045140 (=> res!468388 e!664744)))

(assert (=> b!1045140 (= res!468388 (not (is-ElementMatch!2888 lt!357670)))))

(assert (=> b!1045140 (= e!664741 e!664744)))

(declare-fun b!1045141 () Bool)

(assert (=> b!1045141 (= e!664743 (nullable!980 lt!357670))))

(declare-fun b!1045142 () Bool)

(declare-fun res!468389 () Bool)

(assert (=> b!1045142 (=> (not res!468389) (not e!664742))))

(assert (=> b!1045142 (= res!468389 (isEmpty!6506 (tail!1497 (_1!6597 lt!357681))))))

(declare-fun b!1045143 () Bool)

(assert (=> b!1045143 (= e!664740 e!664741)))

(declare-fun c!174109 () Bool)

(assert (=> b!1045143 (= c!174109 (is-EmptyLang!2888 lt!357670))))

(declare-fun b!1045144 () Bool)

(declare-fun e!664745 () Bool)

(assert (=> b!1045144 (= e!664745 e!664739)))

(declare-fun res!468394 () Bool)

(assert (=> b!1045144 (=> res!468394 e!664739)))

(assert (=> b!1045144 (= res!468394 call!73411)))

(declare-fun b!1045145 () Bool)

(assert (=> b!1045145 (= e!664744 e!664745)))

(declare-fun res!468393 () Bool)

(assert (=> b!1045145 (=> (not res!468393) (not e!664745))))

(assert (=> b!1045145 (= res!468393 (not lt!357735))))

(declare-fun b!1045146 () Bool)

(assert (=> b!1045146 (= e!664742 (= (head!1935 (_1!6597 lt!357681)) (c!174085 lt!357670)))))

(declare-fun b!1045147 () Bool)

(declare-fun res!468391 () Bool)

(assert (=> b!1045147 (=> res!468391 e!664744)))

(assert (=> b!1045147 (= res!468391 e!664742)))

(declare-fun res!468390 () Bool)

(assert (=> b!1045147 (=> (not res!468390) (not e!664742))))

(assert (=> b!1045147 (= res!468390 lt!357735)))

(assert (= (and d!298026 c!174110) b!1045141))

(assert (= (and d!298026 (not c!174110)) b!1045134))

(assert (= (and d!298026 c!174108) b!1045139))

(assert (= (and d!298026 (not c!174108)) b!1045143))

(assert (= (and b!1045143 c!174109) b!1045136))

(assert (= (and b!1045143 (not c!174109)) b!1045140))

(assert (= (and b!1045140 (not res!468388)) b!1045147))

(assert (= (and b!1045147 res!468390) b!1045138))

(assert (= (and b!1045138 res!468387) b!1045142))

(assert (= (and b!1045142 res!468389) b!1045146))

(assert (= (and b!1045147 (not res!468391)) b!1045145))

(assert (= (and b!1045145 res!468393) b!1045144))

(assert (= (and b!1045144 (not res!468394)) b!1045137))

(assert (= (and b!1045137 (not res!468392)) b!1045135))

(assert (= (or b!1045139 b!1045138 b!1045144) bm!73406))

(assert (=> b!1045146 m!1212183))

(assert (=> b!1045137 m!1212185))

(assert (=> b!1045137 m!1212185))

(assert (=> b!1045137 m!1212187))

(assert (=> b!1045142 m!1212185))

(assert (=> b!1045142 m!1212185))

(assert (=> b!1045142 m!1212187))

(assert (=> b!1045134 m!1212183))

(assert (=> b!1045134 m!1212183))

(declare-fun m!1212203 () Bool)

(assert (=> b!1045134 m!1212203))

(assert (=> b!1045134 m!1212185))

(assert (=> b!1045134 m!1212203))

(assert (=> b!1045134 m!1212185))

(declare-fun m!1212205 () Bool)

(assert (=> b!1045134 m!1212205))

(assert (=> bm!73406 m!1212193))

(assert (=> d!298026 m!1212193))

(declare-fun m!1212207 () Bool)

(assert (=> d!298026 m!1212207))

(declare-fun m!1212209 () Bool)

(assert (=> b!1045141 m!1212209))

(assert (=> b!1045135 m!1212183))

(assert (=> b!1044966 d!298026))

(declare-fun bs!249504 () Bool)

(declare-fun b!1045227 () Bool)

(assert (= bs!249504 (and b!1045227 b!1044973)))

(declare-fun lambda!37695 () Int)

(assert (=> bs!249504 (not (= lambda!37695 lambda!37671))))

(assert (=> bs!249504 (not (= lambda!37695 lambda!37672))))

(declare-fun bs!249505 () Bool)

(assert (= bs!249505 (and b!1045227 b!1044968)))

(assert (=> bs!249505 (not (= lambda!37695 lambda!37673))))

(assert (=> bs!249505 (not (= lambda!37695 lambda!37674))))

(assert (=> b!1045227 true))

(assert (=> b!1045227 true))

(declare-fun bs!249506 () Bool)

(declare-fun b!1045225 () Bool)

(assert (= bs!249506 (and b!1045225 b!1044968)))

(declare-fun lambda!37696 () Int)

(assert (=> bs!249506 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37696 lambda!37674))))

(declare-fun bs!249507 () Bool)

(assert (= bs!249507 (and b!1045225 b!1044973)))

(assert (=> bs!249507 (= lambda!37696 lambda!37672)))

(assert (=> bs!249507 (not (= lambda!37696 lambda!37671))))

(declare-fun bs!249508 () Bool)

(assert (= bs!249508 (and b!1045225 b!1045227)))

(assert (=> bs!249508 (not (= lambda!37696 lambda!37695))))

(assert (=> bs!249506 (not (= lambda!37696 lambda!37673))))

(assert (=> b!1045225 true))

(assert (=> b!1045225 true))

(declare-fun b!1045222 () Bool)

(declare-fun c!174131 () Bool)

(assert (=> b!1045222 (= c!174131 (is-ElementMatch!2888 r!15766))))

(declare-fun e!664789 () Bool)

(declare-fun e!664790 () Bool)

(assert (=> b!1045222 (= e!664789 e!664790)))

(declare-fun bm!73414 () Bool)

(declare-fun call!73419 () Bool)

(declare-fun c!174129 () Bool)

(assert (=> bm!73414 (= call!73419 (Exists!615 (ite c!174129 lambda!37695 lambda!37696)))))

(declare-fun b!1045224 () Bool)

(declare-fun e!664785 () Bool)

(declare-fun e!664791 () Bool)

(assert (=> b!1045224 (= e!664785 e!664791)))

(assert (=> b!1045224 (= c!174129 (is-Star!2888 r!15766))))

(declare-fun bm!73415 () Bool)

(declare-fun call!73420 () Bool)

(assert (=> bm!73415 (= call!73420 (isEmpty!6506 s!10566))))

(assert (=> b!1045225 (= e!664791 call!73419)))

(declare-fun b!1045226 () Bool)

(declare-fun e!664787 () Bool)

(assert (=> b!1045226 (= e!664787 e!664789)))

(declare-fun res!468437 () Bool)

(assert (=> b!1045226 (= res!468437 (not (is-EmptyLang!2888 r!15766)))))

(assert (=> b!1045226 (=> (not res!468437) (not e!664789))))

(declare-fun e!664788 () Bool)

(assert (=> b!1045227 (= e!664788 call!73419)))

(declare-fun b!1045228 () Bool)

(assert (=> b!1045228 (= e!664787 call!73420)))

(declare-fun d!298028 () Bool)

(declare-fun c!174128 () Bool)

(assert (=> d!298028 (= c!174128 (is-EmptyExpr!2888 r!15766))))

(assert (=> d!298028 (= (matchRSpec!687 r!15766 s!10566) e!664787)))

(declare-fun b!1045223 () Bool)

(declare-fun e!664786 () Bool)

(assert (=> b!1045223 (= e!664786 (matchRSpec!687 (regTwo!6289 r!15766) s!10566))))

(declare-fun b!1045229 () Bool)

(declare-fun c!174130 () Bool)

(assert (=> b!1045229 (= c!174130 (is-Union!2888 r!15766))))

(assert (=> b!1045229 (= e!664790 e!664785)))

(declare-fun b!1045230 () Bool)

(assert (=> b!1045230 (= e!664790 (= s!10566 (Cons!10102 (c!174085 r!15766) Nil!10102)))))

(declare-fun b!1045231 () Bool)

(assert (=> b!1045231 (= e!664785 e!664786)))

(declare-fun res!468435 () Bool)

(assert (=> b!1045231 (= res!468435 (matchRSpec!687 (regOne!6289 r!15766) s!10566))))

(assert (=> b!1045231 (=> res!468435 e!664786)))

(declare-fun b!1045232 () Bool)

(declare-fun res!468436 () Bool)

(assert (=> b!1045232 (=> res!468436 e!664788)))

(assert (=> b!1045232 (= res!468436 call!73420)))

(assert (=> b!1045232 (= e!664791 e!664788)))

(assert (= (and d!298028 c!174128) b!1045228))

(assert (= (and d!298028 (not c!174128)) b!1045226))

(assert (= (and b!1045226 res!468437) b!1045222))

(assert (= (and b!1045222 c!174131) b!1045230))

(assert (= (and b!1045222 (not c!174131)) b!1045229))

(assert (= (and b!1045229 c!174130) b!1045231))

(assert (= (and b!1045229 (not c!174130)) b!1045224))

(assert (= (and b!1045231 (not res!468435)) b!1045223))

(assert (= (and b!1045224 c!174129) b!1045232))

(assert (= (and b!1045224 (not c!174129)) b!1045225))

(assert (= (and b!1045232 (not res!468436)) b!1045227))

(assert (= (or b!1045227 b!1045225) bm!73414))

(assert (= (or b!1045228 b!1045232) bm!73415))

(declare-fun m!1212227 () Bool)

(assert (=> bm!73414 m!1212227))

(assert (=> bm!73415 m!1212105))

(declare-fun m!1212229 () Bool)

(assert (=> b!1045223 m!1212229))

(declare-fun m!1212231 () Bool)

(assert (=> b!1045231 m!1212231))

(assert (=> b!1044970 d!298028))

(declare-fun b!1045247 () Bool)

(declare-fun e!664803 () Bool)

(assert (=> b!1045247 (= e!664803 (matchR!1424 (derivativeStep!780 r!15766 (head!1935 s!10566)) (tail!1497 s!10566)))))

(declare-fun b!1045248 () Bool)

(declare-fun e!664799 () Bool)

(assert (=> b!1045248 (= e!664799 (not (= (head!1935 s!10566) (c!174085 r!15766))))))

(declare-fun bm!73417 () Bool)

(declare-fun call!73422 () Bool)

(assert (=> bm!73417 (= call!73422 (isEmpty!6506 s!10566))))

(declare-fun b!1045249 () Bool)

(declare-fun e!664801 () Bool)

(declare-fun lt!357740 () Bool)

(assert (=> b!1045249 (= e!664801 (not lt!357740))))

(declare-fun b!1045250 () Bool)

(declare-fun res!468451 () Bool)

(assert (=> b!1045250 (=> res!468451 e!664799)))

(assert (=> b!1045250 (= res!468451 (not (isEmpty!6506 (tail!1497 s!10566))))))

(declare-fun d!298032 () Bool)

(declare-fun e!664800 () Bool)

(assert (=> d!298032 e!664800))

(declare-fun c!174135 () Bool)

(assert (=> d!298032 (= c!174135 (is-EmptyExpr!2888 r!15766))))

(assert (=> d!298032 (= lt!357740 e!664803)))

(declare-fun c!174137 () Bool)

(assert (=> d!298032 (= c!174137 (isEmpty!6506 s!10566))))

(assert (=> d!298032 (validRegex!1357 r!15766)))

(assert (=> d!298032 (= (matchR!1424 r!15766 s!10566) lt!357740)))

(declare-fun b!1045251 () Bool)

(declare-fun res!468446 () Bool)

(declare-fun e!664802 () Bool)

(assert (=> b!1045251 (=> (not res!468446) (not e!664802))))

(assert (=> b!1045251 (= res!468446 (not call!73422))))

(declare-fun b!1045252 () Bool)

(assert (=> b!1045252 (= e!664800 (= lt!357740 call!73422))))

(declare-fun b!1045253 () Bool)

(declare-fun res!468447 () Bool)

(declare-fun e!664804 () Bool)

(assert (=> b!1045253 (=> res!468447 e!664804)))

(assert (=> b!1045253 (= res!468447 (not (is-ElementMatch!2888 r!15766)))))

(assert (=> b!1045253 (= e!664801 e!664804)))

(declare-fun b!1045254 () Bool)

(assert (=> b!1045254 (= e!664803 (nullable!980 r!15766))))

(declare-fun b!1045255 () Bool)

(declare-fun res!468448 () Bool)

(assert (=> b!1045255 (=> (not res!468448) (not e!664802))))

(assert (=> b!1045255 (= res!468448 (isEmpty!6506 (tail!1497 s!10566)))))

(declare-fun b!1045256 () Bool)

(assert (=> b!1045256 (= e!664800 e!664801)))

(declare-fun c!174136 () Bool)

(assert (=> b!1045256 (= c!174136 (is-EmptyLang!2888 r!15766))))

(declare-fun b!1045257 () Bool)

(declare-fun e!664805 () Bool)

(assert (=> b!1045257 (= e!664805 e!664799)))

(declare-fun res!468453 () Bool)

(assert (=> b!1045257 (=> res!468453 e!664799)))

(assert (=> b!1045257 (= res!468453 call!73422)))

(declare-fun b!1045258 () Bool)

(assert (=> b!1045258 (= e!664804 e!664805)))

(declare-fun res!468452 () Bool)

(assert (=> b!1045258 (=> (not res!468452) (not e!664805))))

(assert (=> b!1045258 (= res!468452 (not lt!357740))))

(declare-fun b!1045259 () Bool)

(assert (=> b!1045259 (= e!664802 (= (head!1935 s!10566) (c!174085 r!15766)))))

(declare-fun b!1045260 () Bool)

(declare-fun res!468450 () Bool)

(assert (=> b!1045260 (=> res!468450 e!664804)))

(assert (=> b!1045260 (= res!468450 e!664802)))

(declare-fun res!468449 () Bool)

(assert (=> b!1045260 (=> (not res!468449) (not e!664802))))

(assert (=> b!1045260 (= res!468449 lt!357740)))

(assert (= (and d!298032 c!174137) b!1045254))

(assert (= (and d!298032 (not c!174137)) b!1045247))

(assert (= (and d!298032 c!174135) b!1045252))

(assert (= (and d!298032 (not c!174135)) b!1045256))

(assert (= (and b!1045256 c!174136) b!1045249))

(assert (= (and b!1045256 (not c!174136)) b!1045253))

(assert (= (and b!1045253 (not res!468447)) b!1045260))

(assert (= (and b!1045260 res!468449) b!1045251))

(assert (= (and b!1045251 res!468446) b!1045255))

(assert (= (and b!1045255 res!468448) b!1045259))

(assert (= (and b!1045260 (not res!468450)) b!1045258))

(assert (= (and b!1045258 res!468452) b!1045257))

(assert (= (and b!1045257 (not res!468453)) b!1045250))

(assert (= (and b!1045250 (not res!468451)) b!1045248))

(assert (= (or b!1045252 b!1045251 b!1045257) bm!73417))

(declare-fun m!1212233 () Bool)

(assert (=> b!1045259 m!1212233))

(declare-fun m!1212237 () Bool)

(assert (=> b!1045250 m!1212237))

(assert (=> b!1045250 m!1212237))

(declare-fun m!1212239 () Bool)

(assert (=> b!1045250 m!1212239))

(assert (=> b!1045255 m!1212237))

(assert (=> b!1045255 m!1212237))

(assert (=> b!1045255 m!1212239))

(assert (=> b!1045247 m!1212233))

(assert (=> b!1045247 m!1212233))

(declare-fun m!1212241 () Bool)

(assert (=> b!1045247 m!1212241))

(assert (=> b!1045247 m!1212237))

(assert (=> b!1045247 m!1212241))

(assert (=> b!1045247 m!1212237))

(declare-fun m!1212245 () Bool)

(assert (=> b!1045247 m!1212245))

(assert (=> bm!73417 m!1212105))

(assert (=> d!298032 m!1212105))

(assert (=> d!298032 m!1212079))

(declare-fun m!1212247 () Bool)

(assert (=> b!1045254 m!1212247))

(assert (=> b!1045248 m!1212233))

(assert (=> b!1044970 d!298032))

(declare-fun d!298034 () Bool)

(assert (=> d!298034 (= (matchR!1424 r!15766 s!10566) (matchRSpec!687 r!15766 s!10566))))

(declare-fun lt!357743 () Unit!15451)

(declare-fun choose!6656 (Regex!2888 List!10118) Unit!15451)

(assert (=> d!298034 (= lt!357743 (choose!6656 r!15766 s!10566))))

(assert (=> d!298034 (validRegex!1357 r!15766)))

(assert (=> d!298034 (= (mainMatchTheorem!687 r!15766 s!10566) lt!357743)))

(declare-fun bs!249509 () Bool)

(assert (= bs!249509 d!298034))

(assert (=> bs!249509 m!1212083))

(assert (=> bs!249509 m!1212081))

(declare-fun m!1212251 () Bool)

(assert (=> bs!249509 m!1212251))

(assert (=> bs!249509 m!1212079))

(assert (=> b!1044970 d!298034))

(declare-fun bs!249510 () Bool)

(declare-fun d!298040 () Bool)

(assert (= bs!249510 (and d!298040 b!1045225)))

(declare-fun lambda!37701 () Int)

(assert (=> bs!249510 (not (= lambda!37701 lambda!37696))))

(declare-fun bs!249511 () Bool)

(assert (= bs!249511 (and d!298040 b!1044968)))

(assert (=> bs!249511 (not (= lambda!37701 lambda!37674))))

(declare-fun bs!249512 () Bool)

(assert (= bs!249512 (and d!298040 b!1044973)))

(assert (=> bs!249512 (not (= lambda!37701 lambda!37672))))

(assert (=> bs!249512 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37701 lambda!37671))))

(declare-fun bs!249513 () Bool)

(assert (= bs!249513 (and d!298040 b!1045227)))

(assert (=> bs!249513 (not (= lambda!37701 lambda!37695))))

(assert (=> bs!249511 (= lambda!37701 lambda!37673)))

(assert (=> d!298040 true))

(assert (=> d!298040 true))

(assert (=> d!298040 true))

(declare-fun lambda!37702 () Int)

(assert (=> bs!249510 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37702 lambda!37696))))

(assert (=> bs!249511 (= lambda!37702 lambda!37674)))

(assert (=> bs!249512 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37702 lambda!37672))))

(declare-fun bs!249514 () Bool)

(assert (= bs!249514 d!298040))

(assert (=> bs!249514 (not (= lambda!37702 lambda!37701))))

(assert (=> bs!249512 (not (= lambda!37702 lambda!37671))))

(assert (=> bs!249513 (not (= lambda!37702 lambda!37695))))

(assert (=> bs!249511 (not (= lambda!37702 lambda!37673))))

(assert (=> d!298040 true))

(assert (=> d!298040 true))

(assert (=> d!298040 true))

(assert (=> d!298040 (= (Exists!615 lambda!37701) (Exists!615 lambda!37702))))

(declare-fun lt!357746 () Unit!15451)

(declare-fun choose!6657 (Regex!2888 Regex!2888 List!10118) Unit!15451)

(assert (=> d!298040 (= lt!357746 (choose!6657 lt!357670 lt!357676 s!10566))))

(assert (=> d!298040 (validRegex!1357 lt!357670)))

(assert (=> d!298040 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!303 lt!357670 lt!357676 s!10566) lt!357746)))

(declare-fun m!1212253 () Bool)

(assert (=> bs!249514 m!1212253))

(declare-fun m!1212255 () Bool)

(assert (=> bs!249514 m!1212255))

(declare-fun m!1212257 () Bool)

(assert (=> bs!249514 m!1212257))

(assert (=> bs!249514 m!1212207))

(assert (=> b!1044968 d!298040))

(declare-fun b!1045319 () Bool)

(declare-fun res!468492 () Bool)

(declare-fun e!664841 () Bool)

(assert (=> b!1045319 (=> (not res!468492) (not e!664841))))

(declare-fun lt!357755 () Option!2413)

(assert (=> b!1045319 (= res!468492 (matchR!1424 lt!357676 (_2!6597 (get!3610 lt!357755))))))

(declare-fun b!1045320 () Bool)

(declare-fun e!664840 () Option!2413)

(assert (=> b!1045320 (= e!664840 (Some!2412 (tuple2!11543 Nil!10102 s!10566)))))

(declare-fun b!1045321 () Bool)

(declare-fun e!664839 () Option!2413)

(assert (=> b!1045321 (= e!664839 None!2412)))

(declare-fun b!1045322 () Bool)

(declare-fun lt!357754 () Unit!15451)

(declare-fun lt!357753 () Unit!15451)

(assert (=> b!1045322 (= lt!357754 lt!357753)))

(declare-fun ++!2788 (List!10118 List!10118) List!10118)

(assert (=> b!1045322 (= (++!2788 (++!2788 Nil!10102 (Cons!10102 (h!15503 s!10566) Nil!10102)) (t!101164 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!381 (List!10118 C!6346 List!10118 List!10118) Unit!15451)

(assert (=> b!1045322 (= lt!357753 (lemmaMoveElementToOtherListKeepsConcatEq!381 Nil!10102 (h!15503 s!10566) (t!101164 s!10566) s!10566))))

(assert (=> b!1045322 (= e!664839 (findConcatSeparation!519 lt!357670 lt!357676 (++!2788 Nil!10102 (Cons!10102 (h!15503 s!10566) Nil!10102)) (t!101164 s!10566) s!10566))))

(declare-fun b!1045323 () Bool)

(declare-fun res!468490 () Bool)

(assert (=> b!1045323 (=> (not res!468490) (not e!664841))))

(assert (=> b!1045323 (= res!468490 (matchR!1424 lt!357670 (_1!6597 (get!3610 lt!357755))))))

(declare-fun d!298042 () Bool)

(declare-fun e!664842 () Bool)

(assert (=> d!298042 e!664842))

(declare-fun res!468488 () Bool)

(assert (=> d!298042 (=> res!468488 e!664842)))

(assert (=> d!298042 (= res!468488 e!664841)))

(declare-fun res!468489 () Bool)

(assert (=> d!298042 (=> (not res!468489) (not e!664841))))

(assert (=> d!298042 (= res!468489 (isDefined!2055 lt!357755))))

(assert (=> d!298042 (= lt!357755 e!664840)))

(declare-fun c!174151 () Bool)

(declare-fun e!664838 () Bool)

(assert (=> d!298042 (= c!174151 e!664838)))

(declare-fun res!468491 () Bool)

(assert (=> d!298042 (=> (not res!468491) (not e!664838))))

(assert (=> d!298042 (= res!468491 (matchR!1424 lt!357670 Nil!10102))))

(assert (=> d!298042 (validRegex!1357 lt!357670)))

(assert (=> d!298042 (= (findConcatSeparation!519 lt!357670 lt!357676 Nil!10102 s!10566 s!10566) lt!357755)))

(declare-fun b!1045324 () Bool)

(assert (=> b!1045324 (= e!664842 (not (isDefined!2055 lt!357755)))))

(declare-fun b!1045325 () Bool)

(assert (=> b!1045325 (= e!664840 e!664839)))

(declare-fun c!174150 () Bool)

(assert (=> b!1045325 (= c!174150 (is-Nil!10102 s!10566))))

(declare-fun b!1045326 () Bool)

(assert (=> b!1045326 (= e!664841 (= (++!2788 (_1!6597 (get!3610 lt!357755)) (_2!6597 (get!3610 lt!357755))) s!10566))))

(declare-fun b!1045327 () Bool)

(assert (=> b!1045327 (= e!664838 (matchR!1424 lt!357676 s!10566))))

(assert (= (and d!298042 res!468491) b!1045327))

(assert (= (and d!298042 c!174151) b!1045320))

(assert (= (and d!298042 (not c!174151)) b!1045325))

(assert (= (and b!1045325 c!174150) b!1045321))

(assert (= (and b!1045325 (not c!174150)) b!1045322))

(assert (= (and d!298042 res!468489) b!1045323))

(assert (= (and b!1045323 res!468490) b!1045319))

(assert (= (and b!1045319 res!468492) b!1045326))

(assert (= (and d!298042 (not res!468488)) b!1045324))

(declare-fun m!1212259 () Bool)

(assert (=> b!1045327 m!1212259))

(declare-fun m!1212261 () Bool)

(assert (=> b!1045322 m!1212261))

(assert (=> b!1045322 m!1212261))

(declare-fun m!1212263 () Bool)

(assert (=> b!1045322 m!1212263))

(declare-fun m!1212265 () Bool)

(assert (=> b!1045322 m!1212265))

(assert (=> b!1045322 m!1212261))

(declare-fun m!1212267 () Bool)

(assert (=> b!1045322 m!1212267))

(declare-fun m!1212269 () Bool)

(assert (=> b!1045324 m!1212269))

(assert (=> d!298042 m!1212269))

(declare-fun m!1212271 () Bool)

(assert (=> d!298042 m!1212271))

(assert (=> d!298042 m!1212207))

(declare-fun m!1212273 () Bool)

(assert (=> b!1045326 m!1212273))

(declare-fun m!1212275 () Bool)

(assert (=> b!1045326 m!1212275))

(assert (=> b!1045319 m!1212273))

(declare-fun m!1212277 () Bool)

(assert (=> b!1045319 m!1212277))

(assert (=> b!1045323 m!1212273))

(declare-fun m!1212279 () Bool)

(assert (=> b!1045323 m!1212279))

(assert (=> b!1044968 d!298042))

(declare-fun bs!249517 () Bool)

(declare-fun d!298044 () Bool)

(assert (= bs!249517 (and d!298044 b!1045225)))

(declare-fun lambda!37710 () Int)

(assert (=> bs!249517 (not (= lambda!37710 lambda!37696))))

(declare-fun bs!249518 () Bool)

(assert (= bs!249518 (and d!298044 b!1044968)))

(assert (=> bs!249518 (not (= lambda!37710 lambda!37674))))

(declare-fun bs!249519 () Bool)

(assert (= bs!249519 (and d!298044 b!1044973)))

(assert (=> bs!249519 (not (= lambda!37710 lambda!37672))))

(declare-fun bs!249521 () Bool)

(assert (= bs!249521 (and d!298044 d!298040)))

(assert (=> bs!249521 (not (= lambda!37710 lambda!37702))))

(assert (=> bs!249521 (= lambda!37710 lambda!37701)))

(assert (=> bs!249519 (= (and (= lt!357670 (regOne!6288 r!15766)) (= lt!357676 (regTwo!6288 r!15766))) (= lambda!37710 lambda!37671))))

(declare-fun bs!249523 () Bool)

(assert (= bs!249523 (and d!298044 b!1045227)))

(assert (=> bs!249523 (not (= lambda!37710 lambda!37695))))

(assert (=> bs!249518 (= lambda!37710 lambda!37673)))

(assert (=> d!298044 true))

(assert (=> d!298044 true))

(assert (=> d!298044 true))

(assert (=> d!298044 (= (isDefined!2055 (findConcatSeparation!519 lt!357670 lt!357676 Nil!10102 s!10566 s!10566)) (Exists!615 lambda!37710))))

(declare-fun lt!357758 () Unit!15451)

(declare-fun choose!6658 (Regex!2888 Regex!2888 List!10118) Unit!15451)

(assert (=> d!298044 (= lt!357758 (choose!6658 lt!357670 lt!357676 s!10566))))

(assert (=> d!298044 (validRegex!1357 lt!357670)))

(assert (=> d!298044 (= (lemmaFindConcatSeparationEquivalentToExists!519 lt!357670 lt!357676 s!10566) lt!357758)))

(declare-fun bs!249525 () Bool)

(assert (= bs!249525 d!298044))

(assert (=> bs!249525 m!1212207))

(assert (=> bs!249525 m!1212077))

(assert (=> bs!249525 m!1212077))

(declare-fun m!1212281 () Bool)

(assert (=> bs!249525 m!1212281))

(declare-fun m!1212283 () Bool)

(assert (=> bs!249525 m!1212283))

(declare-fun m!1212285 () Bool)

(assert (=> bs!249525 m!1212285))

(assert (=> b!1044968 d!298044))

(declare-fun d!298046 () Bool)

(declare-fun choose!6659 (Int) Bool)

(assert (=> d!298046 (= (Exists!615 lambda!37674) (choose!6659 lambda!37674))))

(declare-fun bs!249526 () Bool)

(assert (= bs!249526 d!298046))

(declare-fun m!1212287 () Bool)

(assert (=> bs!249526 m!1212287))

(assert (=> b!1044968 d!298046))

(declare-fun d!298048 () Bool)

(declare-fun isEmpty!6508 (Option!2413) Bool)

(assert (=> d!298048 (= (isDefined!2055 lt!357683) (not (isEmpty!6508 lt!357683)))))

(declare-fun bs!249527 () Bool)

(assert (= bs!249527 d!298048))

(declare-fun m!1212289 () Bool)

(assert (=> bs!249527 m!1212289))

(assert (=> b!1044968 d!298048))

(declare-fun d!298050 () Bool)

(assert (=> d!298050 (= (Exists!615 lambda!37673) (choose!6659 lambda!37673))))

(declare-fun bs!249528 () Bool)

(assert (= bs!249528 d!298050))

(declare-fun m!1212291 () Bool)

(assert (=> bs!249528 m!1212291))

(assert (=> b!1044968 d!298050))

(declare-fun bs!249529 () Bool)

(declare-fun b!1045348 () Bool)

(assert (= bs!249529 (and b!1045348 b!1045225)))

(declare-fun lambda!37712 () Int)

(assert (=> bs!249529 (not (= lambda!37712 lambda!37696))))

(declare-fun bs!249530 () Bool)

(assert (= bs!249530 (and b!1045348 d!298044)))

(assert (=> bs!249530 (not (= lambda!37712 lambda!37710))))

(declare-fun bs!249531 () Bool)

(assert (= bs!249531 (and b!1045348 b!1044968)))

(assert (=> bs!249531 (not (= lambda!37712 lambda!37674))))

(declare-fun bs!249532 () Bool)

(assert (= bs!249532 (and b!1045348 b!1044973)))

(assert (=> bs!249532 (not (= lambda!37712 lambda!37672))))

(declare-fun bs!249533 () Bool)

(assert (= bs!249533 (and b!1045348 d!298040)))

(assert (=> bs!249533 (not (= lambda!37712 lambda!37702))))

(assert (=> bs!249533 (not (= lambda!37712 lambda!37701))))

(assert (=> bs!249532 (not (= lambda!37712 lambda!37671))))

(declare-fun bs!249534 () Bool)

(assert (= bs!249534 (and b!1045348 b!1045227)))

(assert (=> bs!249534 (= (and (= (reg!3217 lt!357679) (reg!3217 r!15766)) (= lt!357679 r!15766)) (= lambda!37712 lambda!37695))))

(assert (=> bs!249531 (not (= lambda!37712 lambda!37673))))

(assert (=> b!1045348 true))

(assert (=> b!1045348 true))

(declare-fun bs!249535 () Bool)

(declare-fun b!1045346 () Bool)

(assert (= bs!249535 (and b!1045346 b!1045225)))

(declare-fun lambda!37713 () Int)

(assert (=> bs!249535 (= (and (= (regOne!6288 lt!357679) (regOne!6288 r!15766)) (= (regTwo!6288 lt!357679) (regTwo!6288 r!15766))) (= lambda!37713 lambda!37696))))

(declare-fun bs!249536 () Bool)

(assert (= bs!249536 (and b!1045346 d!298044)))

(assert (=> bs!249536 (not (= lambda!37713 lambda!37710))))

(declare-fun bs!249537 () Bool)

(assert (= bs!249537 (and b!1045346 b!1044968)))

(assert (=> bs!249537 (= (and (= (regOne!6288 lt!357679) lt!357670) (= (regTwo!6288 lt!357679) lt!357676)) (= lambda!37713 lambda!37674))))

(declare-fun bs!249538 () Bool)

(assert (= bs!249538 (and b!1045346 b!1044973)))

(assert (=> bs!249538 (= (and (= (regOne!6288 lt!357679) (regOne!6288 r!15766)) (= (regTwo!6288 lt!357679) (regTwo!6288 r!15766))) (= lambda!37713 lambda!37672))))

(declare-fun bs!249539 () Bool)

(assert (= bs!249539 (and b!1045346 b!1045348)))

(assert (=> bs!249539 (not (= lambda!37713 lambda!37712))))

(declare-fun bs!249540 () Bool)

(assert (= bs!249540 (and b!1045346 d!298040)))

(assert (=> bs!249540 (= (and (= (regOne!6288 lt!357679) lt!357670) (= (regTwo!6288 lt!357679) lt!357676)) (= lambda!37713 lambda!37702))))

(assert (=> bs!249540 (not (= lambda!37713 lambda!37701))))

(assert (=> bs!249538 (not (= lambda!37713 lambda!37671))))

(declare-fun bs!249541 () Bool)

(assert (= bs!249541 (and b!1045346 b!1045227)))

(assert (=> bs!249541 (not (= lambda!37713 lambda!37695))))

(assert (=> bs!249537 (not (= lambda!37713 lambda!37673))))

(assert (=> b!1045346 true))

(assert (=> b!1045346 true))

(declare-fun b!1045343 () Bool)

(declare-fun c!174159 () Bool)

(assert (=> b!1045343 (= c!174159 (is-ElementMatch!2888 lt!357679))))

(declare-fun e!664856 () Bool)

(declare-fun e!664857 () Bool)

(assert (=> b!1045343 (= e!664856 e!664857)))

(declare-fun call!73429 () Bool)

(declare-fun c!174157 () Bool)

(declare-fun bm!73424 () Bool)

(assert (=> bm!73424 (= call!73429 (Exists!615 (ite c!174157 lambda!37712 lambda!37713)))))

(declare-fun b!1045345 () Bool)

(declare-fun e!664852 () Bool)

(declare-fun e!664858 () Bool)

(assert (=> b!1045345 (= e!664852 e!664858)))

(assert (=> b!1045345 (= c!174157 (is-Star!2888 lt!357679))))

(declare-fun bm!73425 () Bool)

(declare-fun call!73430 () Bool)

(assert (=> bm!73425 (= call!73430 (isEmpty!6506 s!10566))))

(assert (=> b!1045346 (= e!664858 call!73429)))

(declare-fun b!1045347 () Bool)

(declare-fun e!664854 () Bool)

(assert (=> b!1045347 (= e!664854 e!664856)))

(declare-fun res!468502 () Bool)

(assert (=> b!1045347 (= res!468502 (not (is-EmptyLang!2888 lt!357679)))))

(assert (=> b!1045347 (=> (not res!468502) (not e!664856))))

(declare-fun e!664855 () Bool)

(assert (=> b!1045348 (= e!664855 call!73429)))

(declare-fun b!1045349 () Bool)

(assert (=> b!1045349 (= e!664854 call!73430)))

(declare-fun d!298052 () Bool)

(declare-fun c!174156 () Bool)

(assert (=> d!298052 (= c!174156 (is-EmptyExpr!2888 lt!357679))))

(assert (=> d!298052 (= (matchRSpec!687 lt!357679 s!10566) e!664854)))

(declare-fun b!1045344 () Bool)

(declare-fun e!664853 () Bool)

(assert (=> b!1045344 (= e!664853 (matchRSpec!687 (regTwo!6289 lt!357679) s!10566))))

(declare-fun b!1045350 () Bool)

(declare-fun c!174158 () Bool)

(assert (=> b!1045350 (= c!174158 (is-Union!2888 lt!357679))))

(assert (=> b!1045350 (= e!664857 e!664852)))

(declare-fun b!1045351 () Bool)

(assert (=> b!1045351 (= e!664857 (= s!10566 (Cons!10102 (c!174085 lt!357679) Nil!10102)))))

(declare-fun b!1045352 () Bool)

(assert (=> b!1045352 (= e!664852 e!664853)))

(declare-fun res!468500 () Bool)

(assert (=> b!1045352 (= res!468500 (matchRSpec!687 (regOne!6289 lt!357679) s!10566))))

(assert (=> b!1045352 (=> res!468500 e!664853)))

(declare-fun b!1045353 () Bool)

(declare-fun res!468501 () Bool)

(assert (=> b!1045353 (=> res!468501 e!664855)))

(assert (=> b!1045353 (= res!468501 call!73430)))

(assert (=> b!1045353 (= e!664858 e!664855)))

(assert (= (and d!298052 c!174156) b!1045349))

(assert (= (and d!298052 (not c!174156)) b!1045347))

(assert (= (and b!1045347 res!468502) b!1045343))

(assert (= (and b!1045343 c!174159) b!1045351))

(assert (= (and b!1045343 (not c!174159)) b!1045350))

(assert (= (and b!1045350 c!174158) b!1045352))

(assert (= (and b!1045350 (not c!174158)) b!1045345))

(assert (= (and b!1045352 (not res!468500)) b!1045344))

(assert (= (and b!1045345 c!174157) b!1045353))

(assert (= (and b!1045345 (not c!174157)) b!1045346))

(assert (= (and b!1045353 (not res!468501)) b!1045348))

(assert (= (or b!1045348 b!1045346) bm!73424))

(assert (= (or b!1045349 b!1045353) bm!73425))

(declare-fun m!1212311 () Bool)

(assert (=> bm!73424 m!1212311))

(assert (=> bm!73425 m!1212105))

(declare-fun m!1212313 () Bool)

(assert (=> b!1045344 m!1212313))

(declare-fun m!1212315 () Bool)

(assert (=> b!1045352 m!1212315))

(assert (=> b!1044968 d!298052))

(declare-fun d!298058 () Bool)

(assert (=> d!298058 (= (matchR!1424 lt!357679 s!10566) (matchRSpec!687 lt!357679 s!10566))))

(declare-fun lt!357760 () Unit!15451)

(assert (=> d!298058 (= lt!357760 (choose!6656 lt!357679 s!10566))))

(assert (=> d!298058 (validRegex!1357 lt!357679)))

(assert (=> d!298058 (= (mainMatchTheorem!687 lt!357679 s!10566) lt!357760)))

(declare-fun bs!249542 () Bool)

(assert (= bs!249542 d!298058))

(assert (=> bs!249542 m!1212057))

(assert (=> bs!249542 m!1212069))

(declare-fun m!1212317 () Bool)

(assert (=> bs!249542 m!1212317))

(declare-fun m!1212319 () Bool)

(assert (=> bs!249542 m!1212319))

(assert (=> b!1044968 d!298058))

(declare-fun d!298060 () Bool)

(assert (=> d!298060 (= (isDefined!2055 (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) Nil!10102 s!10566 s!10566)) (not (isEmpty!6508 (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) Nil!10102 s!10566 s!10566))))))

(declare-fun bs!249543 () Bool)

(assert (= bs!249543 d!298060))

(assert (=> bs!249543 m!1212099))

(declare-fun m!1212321 () Bool)

(assert (=> bs!249543 m!1212321))

(assert (=> b!1044973 d!298060))

(declare-fun d!298062 () Bool)

(assert (=> d!298062 (= (Exists!615 lambda!37671) (choose!6659 lambda!37671))))

(declare-fun bs!249544 () Bool)

(assert (= bs!249544 d!298062))

(declare-fun m!1212323 () Bool)

(assert (=> bs!249544 m!1212323))

(assert (=> b!1044973 d!298062))

(declare-fun bs!249545 () Bool)

(declare-fun d!298064 () Bool)

(assert (= bs!249545 (and d!298064 b!1045225)))

(declare-fun lambda!37714 () Int)

(assert (=> bs!249545 (not (= lambda!37714 lambda!37696))))

(declare-fun bs!249546 () Bool)

(assert (= bs!249546 (and d!298064 b!1045346)))

(assert (=> bs!249546 (not (= lambda!37714 lambda!37713))))

(declare-fun bs!249547 () Bool)

(assert (= bs!249547 (and d!298064 d!298044)))

(assert (=> bs!249547 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37714 lambda!37710))))

(declare-fun bs!249548 () Bool)

(assert (= bs!249548 (and d!298064 b!1044968)))

(assert (=> bs!249548 (not (= lambda!37714 lambda!37674))))

(declare-fun bs!249549 () Bool)

(assert (= bs!249549 (and d!298064 b!1044973)))

(assert (=> bs!249549 (not (= lambda!37714 lambda!37672))))

(declare-fun bs!249550 () Bool)

(assert (= bs!249550 (and d!298064 b!1045348)))

(assert (=> bs!249550 (not (= lambda!37714 lambda!37712))))

(declare-fun bs!249551 () Bool)

(assert (= bs!249551 (and d!298064 d!298040)))

(assert (=> bs!249551 (not (= lambda!37714 lambda!37702))))

(assert (=> bs!249551 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37714 lambda!37701))))

(assert (=> bs!249549 (= lambda!37714 lambda!37671)))

(declare-fun bs!249552 () Bool)

(assert (= bs!249552 (and d!298064 b!1045227)))

(assert (=> bs!249552 (not (= lambda!37714 lambda!37695))))

(assert (=> bs!249548 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37714 lambda!37673))))

(assert (=> d!298064 true))

(assert (=> d!298064 true))

(assert (=> d!298064 true))

(assert (=> d!298064 (= (isDefined!2055 (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) Nil!10102 s!10566 s!10566)) (Exists!615 lambda!37714))))

(declare-fun lt!357761 () Unit!15451)

(assert (=> d!298064 (= lt!357761 (choose!6658 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566))))

(assert (=> d!298064 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298064 (= (lemmaFindConcatSeparationEquivalentToExists!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566) lt!357761)))

(declare-fun bs!249553 () Bool)

(assert (= bs!249553 d!298064))

(assert (=> bs!249553 m!1212195))

(assert (=> bs!249553 m!1212099))

(assert (=> bs!249553 m!1212099))

(assert (=> bs!249553 m!1212101))

(declare-fun m!1212325 () Bool)

(assert (=> bs!249553 m!1212325))

(declare-fun m!1212327 () Bool)

(assert (=> bs!249553 m!1212327))

(assert (=> b!1044973 d!298064))

(declare-fun b!1045368 () Bool)

(declare-fun res!468515 () Bool)

(declare-fun e!664869 () Bool)

(assert (=> b!1045368 (=> (not res!468515) (not e!664869))))

(declare-fun lt!357764 () Option!2413)

(assert (=> b!1045368 (= res!468515 (matchR!1424 (regTwo!6288 r!15766) (_2!6597 (get!3610 lt!357764))))))

(declare-fun b!1045369 () Bool)

(declare-fun e!664868 () Option!2413)

(assert (=> b!1045369 (= e!664868 (Some!2412 (tuple2!11543 Nil!10102 s!10566)))))

(declare-fun b!1045370 () Bool)

(declare-fun e!664867 () Option!2413)

(assert (=> b!1045370 (= e!664867 None!2412)))

(declare-fun b!1045371 () Bool)

(declare-fun lt!357763 () Unit!15451)

(declare-fun lt!357762 () Unit!15451)

(assert (=> b!1045371 (= lt!357763 lt!357762)))

(assert (=> b!1045371 (= (++!2788 (++!2788 Nil!10102 (Cons!10102 (h!15503 s!10566) Nil!10102)) (t!101164 s!10566)) s!10566)))

(assert (=> b!1045371 (= lt!357762 (lemmaMoveElementToOtherListKeepsConcatEq!381 Nil!10102 (h!15503 s!10566) (t!101164 s!10566) s!10566))))

(assert (=> b!1045371 (= e!664867 (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) (++!2788 Nil!10102 (Cons!10102 (h!15503 s!10566) Nil!10102)) (t!101164 s!10566) s!10566))))

(declare-fun b!1045372 () Bool)

(declare-fun res!468513 () Bool)

(assert (=> b!1045372 (=> (not res!468513) (not e!664869))))

(assert (=> b!1045372 (= res!468513 (matchR!1424 (regOne!6288 r!15766) (_1!6597 (get!3610 lt!357764))))))

(declare-fun d!298066 () Bool)

(declare-fun e!664870 () Bool)

(assert (=> d!298066 e!664870))

(declare-fun res!468511 () Bool)

(assert (=> d!298066 (=> res!468511 e!664870)))

(assert (=> d!298066 (= res!468511 e!664869)))

(declare-fun res!468512 () Bool)

(assert (=> d!298066 (=> (not res!468512) (not e!664869))))

(assert (=> d!298066 (= res!468512 (isDefined!2055 lt!357764))))

(assert (=> d!298066 (= lt!357764 e!664868)))

(declare-fun c!174164 () Bool)

(declare-fun e!664866 () Bool)

(assert (=> d!298066 (= c!174164 e!664866)))

(declare-fun res!468514 () Bool)

(assert (=> d!298066 (=> (not res!468514) (not e!664866))))

(assert (=> d!298066 (= res!468514 (matchR!1424 (regOne!6288 r!15766) Nil!10102))))

(assert (=> d!298066 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298066 (= (findConcatSeparation!519 (regOne!6288 r!15766) (regTwo!6288 r!15766) Nil!10102 s!10566 s!10566) lt!357764)))

(declare-fun b!1045373 () Bool)

(assert (=> b!1045373 (= e!664870 (not (isDefined!2055 lt!357764)))))

(declare-fun b!1045374 () Bool)

(assert (=> b!1045374 (= e!664868 e!664867)))

(declare-fun c!174163 () Bool)

(assert (=> b!1045374 (= c!174163 (is-Nil!10102 s!10566))))

(declare-fun b!1045375 () Bool)

(assert (=> b!1045375 (= e!664869 (= (++!2788 (_1!6597 (get!3610 lt!357764)) (_2!6597 (get!3610 lt!357764))) s!10566))))

(declare-fun b!1045376 () Bool)

(assert (=> b!1045376 (= e!664866 (matchR!1424 (regTwo!6288 r!15766) s!10566))))

(assert (= (and d!298066 res!468514) b!1045376))

(assert (= (and d!298066 c!174164) b!1045369))

(assert (= (and d!298066 (not c!174164)) b!1045374))

(assert (= (and b!1045374 c!174163) b!1045370))

(assert (= (and b!1045374 (not c!174163)) b!1045371))

(assert (= (and d!298066 res!468512) b!1045372))

(assert (= (and b!1045372 res!468513) b!1045368))

(assert (= (and b!1045368 res!468515) b!1045375))

(assert (= (and d!298066 (not res!468511)) b!1045373))

(declare-fun m!1212329 () Bool)

(assert (=> b!1045376 m!1212329))

(assert (=> b!1045371 m!1212261))

(assert (=> b!1045371 m!1212261))

(assert (=> b!1045371 m!1212263))

(assert (=> b!1045371 m!1212265))

(assert (=> b!1045371 m!1212261))

(declare-fun m!1212331 () Bool)

(assert (=> b!1045371 m!1212331))

(declare-fun m!1212333 () Bool)

(assert (=> b!1045373 m!1212333))

(assert (=> d!298066 m!1212333))

(declare-fun m!1212335 () Bool)

(assert (=> d!298066 m!1212335))

(assert (=> d!298066 m!1212195))

(declare-fun m!1212337 () Bool)

(assert (=> b!1045375 m!1212337))

(declare-fun m!1212339 () Bool)

(assert (=> b!1045375 m!1212339))

(assert (=> b!1045368 m!1212337))

(declare-fun m!1212341 () Bool)

(assert (=> b!1045368 m!1212341))

(assert (=> b!1045372 m!1212337))

(declare-fun m!1212343 () Bool)

(assert (=> b!1045372 m!1212343))

(assert (=> b!1044973 d!298066))

(declare-fun bs!249554 () Bool)

(declare-fun d!298068 () Bool)

(assert (= bs!249554 (and d!298068 b!1045225)))

(declare-fun lambda!37715 () Int)

(assert (=> bs!249554 (not (= lambda!37715 lambda!37696))))

(declare-fun bs!249555 () Bool)

(assert (= bs!249555 (and d!298068 b!1045346)))

(assert (=> bs!249555 (not (= lambda!37715 lambda!37713))))

(declare-fun bs!249556 () Bool)

(assert (= bs!249556 (and d!298068 d!298044)))

(assert (=> bs!249556 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37715 lambda!37710))))

(declare-fun bs!249557 () Bool)

(assert (= bs!249557 (and d!298068 b!1044968)))

(assert (=> bs!249557 (not (= lambda!37715 lambda!37674))))

(declare-fun bs!249558 () Bool)

(assert (= bs!249558 (and d!298068 b!1044973)))

(assert (=> bs!249558 (not (= lambda!37715 lambda!37672))))

(declare-fun bs!249559 () Bool)

(assert (= bs!249559 (and d!298068 b!1045348)))

(assert (=> bs!249559 (not (= lambda!37715 lambda!37712))))

(declare-fun bs!249560 () Bool)

(assert (= bs!249560 (and d!298068 d!298040)))

(assert (=> bs!249560 (not (= lambda!37715 lambda!37702))))

(declare-fun bs!249561 () Bool)

(assert (= bs!249561 (and d!298068 d!298064)))

(assert (=> bs!249561 (= lambda!37715 lambda!37714)))

(assert (=> bs!249560 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37715 lambda!37701))))

(assert (=> bs!249558 (= lambda!37715 lambda!37671)))

(declare-fun bs!249562 () Bool)

(assert (= bs!249562 (and d!298068 b!1045227)))

(assert (=> bs!249562 (not (= lambda!37715 lambda!37695))))

(assert (=> bs!249557 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37715 lambda!37673))))

(assert (=> d!298068 true))

(assert (=> d!298068 true))

(assert (=> d!298068 true))

(declare-fun lambda!37716 () Int)

(assert (=> bs!249554 (= lambda!37716 lambda!37696)))

(assert (=> bs!249555 (= (and (= (regOne!6288 r!15766) (regOne!6288 lt!357679)) (= (regTwo!6288 r!15766) (regTwo!6288 lt!357679))) (= lambda!37716 lambda!37713))))

(assert (=> bs!249556 (not (= lambda!37716 lambda!37710))))

(assert (=> bs!249557 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37716 lambda!37674))))

(assert (=> bs!249558 (= lambda!37716 lambda!37672)))

(assert (=> bs!249559 (not (= lambda!37716 lambda!37712))))

(assert (=> bs!249560 (= (and (= (regOne!6288 r!15766) lt!357670) (= (regTwo!6288 r!15766) lt!357676)) (= lambda!37716 lambda!37702))))

(declare-fun bs!249564 () Bool)

(assert (= bs!249564 d!298068))

(assert (=> bs!249564 (not (= lambda!37716 lambda!37715))))

(assert (=> bs!249561 (not (= lambda!37716 lambda!37714))))

(assert (=> bs!249560 (not (= lambda!37716 lambda!37701))))

(assert (=> bs!249558 (not (= lambda!37716 lambda!37671))))

(assert (=> bs!249562 (not (= lambda!37716 lambda!37695))))

(assert (=> bs!249557 (not (= lambda!37716 lambda!37673))))

(assert (=> d!298068 true))

(assert (=> d!298068 true))

(assert (=> d!298068 true))

(assert (=> d!298068 (= (Exists!615 lambda!37715) (Exists!615 lambda!37716))))

(declare-fun lt!357765 () Unit!15451)

(assert (=> d!298068 (= lt!357765 (choose!6657 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566))))

(assert (=> d!298068 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298068 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!303 (regOne!6288 r!15766) (regTwo!6288 r!15766) s!10566) lt!357765)))

(declare-fun m!1212347 () Bool)

(assert (=> bs!249564 m!1212347))

(declare-fun m!1212349 () Bool)

(assert (=> bs!249564 m!1212349))

(declare-fun m!1212351 () Bool)

(assert (=> bs!249564 m!1212351))

(assert (=> bs!249564 m!1212195))

(assert (=> b!1044973 d!298068))

(declare-fun d!298072 () Bool)

(assert (=> d!298072 (= (Exists!615 lambda!37672) (choose!6659 lambda!37672))))

(declare-fun bs!249565 () Bool)

(assert (= bs!249565 d!298072))

(declare-fun m!1212353 () Bool)

(assert (=> bs!249565 m!1212353))

(assert (=> b!1044973 d!298072))

(declare-fun d!298074 () Bool)

(assert (=> d!298074 (= (isEmpty!6506 s!10566) (is-Nil!10102 s!10566))))

(assert (=> b!1044973 d!298074))

(declare-fun b!1045391 () Bool)

(declare-fun res!468526 () Bool)

(declare-fun e!664878 () Bool)

(assert (=> b!1045391 (=> (not res!468526) (not e!664878))))

(declare-fun call!73435 () Bool)

(assert (=> b!1045391 (= res!468526 call!73435)))

(declare-fun e!664883 () Bool)

(assert (=> b!1045391 (= e!664883 e!664878)))

(declare-fun bm!73428 () Bool)

(declare-fun c!174168 () Bool)

(assert (=> bm!73428 (= call!73435 (validRegex!1357 (ite c!174168 (regOne!6289 r!15766) (regOne!6288 r!15766))))))

(declare-fun b!1045392 () Bool)

(declare-fun e!664884 () Bool)

(declare-fun e!664879 () Bool)

(assert (=> b!1045392 (= e!664884 e!664879)))

(declare-fun c!174169 () Bool)

(assert (=> b!1045392 (= c!174169 (is-Star!2888 r!15766))))

(declare-fun d!298076 () Bool)

(declare-fun res!468527 () Bool)

(assert (=> d!298076 (=> res!468527 e!664884)))

(assert (=> d!298076 (= res!468527 (is-ElementMatch!2888 r!15766))))

(assert (=> d!298076 (= (validRegex!1357 r!15766) e!664884)))

(declare-fun bm!73429 () Bool)

(declare-fun call!73434 () Bool)

(declare-fun call!73433 () Bool)

(assert (=> bm!73429 (= call!73434 call!73433)))

(declare-fun b!1045393 () Bool)

(declare-fun e!664882 () Bool)

(assert (=> b!1045393 (= e!664882 call!73434)))

(declare-fun b!1045394 () Bool)

(assert (=> b!1045394 (= e!664878 call!73434)))

(declare-fun b!1045395 () Bool)

(declare-fun e!664880 () Bool)

(assert (=> b!1045395 (= e!664880 e!664882)))

(declare-fun res!468528 () Bool)

(assert (=> b!1045395 (=> (not res!468528) (not e!664882))))

(assert (=> b!1045395 (= res!468528 call!73435)))

(declare-fun bm!73430 () Bool)

(assert (=> bm!73430 (= call!73433 (validRegex!1357 (ite c!174169 (reg!3217 r!15766) (ite c!174168 (regTwo!6289 r!15766) (regTwo!6288 r!15766)))))))

(declare-fun b!1045396 () Bool)

(declare-fun res!468524 () Bool)

(assert (=> b!1045396 (=> res!468524 e!664880)))

(assert (=> b!1045396 (= res!468524 (not (is-Concat!4721 r!15766)))))

(assert (=> b!1045396 (= e!664883 e!664880)))

(declare-fun b!1045397 () Bool)

(assert (=> b!1045397 (= e!664879 e!664883)))

(assert (=> b!1045397 (= c!174168 (is-Union!2888 r!15766))))

(declare-fun b!1045398 () Bool)

(declare-fun e!664881 () Bool)

(assert (=> b!1045398 (= e!664879 e!664881)))

(declare-fun res!468525 () Bool)

(assert (=> b!1045398 (= res!468525 (not (nullable!980 (reg!3217 r!15766))))))

(assert (=> b!1045398 (=> (not res!468525) (not e!664881))))

(declare-fun b!1045399 () Bool)

(assert (=> b!1045399 (= e!664881 call!73433)))

(assert (= (and d!298076 (not res!468527)) b!1045392))

(assert (= (and b!1045392 c!174169) b!1045398))

(assert (= (and b!1045392 (not c!174169)) b!1045397))

(assert (= (and b!1045398 res!468525) b!1045399))

(assert (= (and b!1045397 c!174168) b!1045391))

(assert (= (and b!1045397 (not c!174168)) b!1045396))

(assert (= (and b!1045391 res!468526) b!1045394))

(assert (= (and b!1045396 (not res!468524)) b!1045395))

(assert (= (and b!1045395 res!468528) b!1045393))

(assert (= (or b!1045394 b!1045393) bm!73429))

(assert (= (or b!1045391 b!1045395) bm!73428))

(assert (= (or b!1045399 bm!73429) bm!73430))

(declare-fun m!1212363 () Bool)

(assert (=> bm!73428 m!1212363))

(declare-fun m!1212365 () Bool)

(assert (=> bm!73430 m!1212365))

(declare-fun m!1212367 () Bool)

(assert (=> b!1045398 m!1212367))

(assert (=> start!90484 d!298076))

(declare-fun b!1045400 () Bool)

(declare-fun e!664889 () Bool)

(assert (=> b!1045400 (= e!664889 (matchR!1424 (derivativeStep!780 lt!357679 (head!1935 s!10566)) (tail!1497 s!10566)))))

(declare-fun b!1045401 () Bool)

(declare-fun e!664885 () Bool)

(assert (=> b!1045401 (= e!664885 (not (= (head!1935 s!10566) (c!174085 lt!357679))))))

(declare-fun bm!73431 () Bool)

(declare-fun call!73436 () Bool)

(assert (=> bm!73431 (= call!73436 (isEmpty!6506 s!10566))))

(declare-fun b!1045402 () Bool)

(declare-fun e!664887 () Bool)

(declare-fun lt!357770 () Bool)

(assert (=> b!1045402 (= e!664887 (not lt!357770))))

(declare-fun b!1045403 () Bool)

(declare-fun res!468534 () Bool)

(assert (=> b!1045403 (=> res!468534 e!664885)))

(assert (=> b!1045403 (= res!468534 (not (isEmpty!6506 (tail!1497 s!10566))))))

(declare-fun d!298080 () Bool)

(declare-fun e!664886 () Bool)

(assert (=> d!298080 e!664886))

(declare-fun c!174170 () Bool)

(assert (=> d!298080 (= c!174170 (is-EmptyExpr!2888 lt!357679))))

(assert (=> d!298080 (= lt!357770 e!664889)))

(declare-fun c!174172 () Bool)

(assert (=> d!298080 (= c!174172 (isEmpty!6506 s!10566))))

(assert (=> d!298080 (validRegex!1357 lt!357679)))

(assert (=> d!298080 (= (matchR!1424 lt!357679 s!10566) lt!357770)))

(declare-fun b!1045404 () Bool)

(declare-fun res!468529 () Bool)

(declare-fun e!664888 () Bool)

(assert (=> b!1045404 (=> (not res!468529) (not e!664888))))

(assert (=> b!1045404 (= res!468529 (not call!73436))))

(declare-fun b!1045405 () Bool)

(assert (=> b!1045405 (= e!664886 (= lt!357770 call!73436))))

(declare-fun b!1045406 () Bool)

(declare-fun res!468530 () Bool)

(declare-fun e!664890 () Bool)

(assert (=> b!1045406 (=> res!468530 e!664890)))

(assert (=> b!1045406 (= res!468530 (not (is-ElementMatch!2888 lt!357679)))))

(assert (=> b!1045406 (= e!664887 e!664890)))

(declare-fun b!1045407 () Bool)

(assert (=> b!1045407 (= e!664889 (nullable!980 lt!357679))))

(declare-fun b!1045408 () Bool)

(declare-fun res!468531 () Bool)

(assert (=> b!1045408 (=> (not res!468531) (not e!664888))))

(assert (=> b!1045408 (= res!468531 (isEmpty!6506 (tail!1497 s!10566)))))

(declare-fun b!1045409 () Bool)

(assert (=> b!1045409 (= e!664886 e!664887)))

(declare-fun c!174171 () Bool)

(assert (=> b!1045409 (= c!174171 (is-EmptyLang!2888 lt!357679))))

(declare-fun b!1045410 () Bool)

(declare-fun e!664891 () Bool)

(assert (=> b!1045410 (= e!664891 e!664885)))

(declare-fun res!468536 () Bool)

(assert (=> b!1045410 (=> res!468536 e!664885)))

(assert (=> b!1045410 (= res!468536 call!73436)))

(declare-fun b!1045411 () Bool)

(assert (=> b!1045411 (= e!664890 e!664891)))

(declare-fun res!468535 () Bool)

(assert (=> b!1045411 (=> (not res!468535) (not e!664891))))

(assert (=> b!1045411 (= res!468535 (not lt!357770))))

(declare-fun b!1045412 () Bool)

(assert (=> b!1045412 (= e!664888 (= (head!1935 s!10566) (c!174085 lt!357679)))))

(declare-fun b!1045413 () Bool)

(declare-fun res!468533 () Bool)

(assert (=> b!1045413 (=> res!468533 e!664890)))

(assert (=> b!1045413 (= res!468533 e!664888)))

(declare-fun res!468532 () Bool)

(assert (=> b!1045413 (=> (not res!468532) (not e!664888))))

(assert (=> b!1045413 (= res!468532 lt!357770)))

(assert (= (and d!298080 c!174172) b!1045407))

(assert (= (and d!298080 (not c!174172)) b!1045400))

(assert (= (and d!298080 c!174170) b!1045405))

(assert (= (and d!298080 (not c!174170)) b!1045409))

(assert (= (and b!1045409 c!174171) b!1045402))

(assert (= (and b!1045409 (not c!174171)) b!1045406))

(assert (= (and b!1045406 (not res!468530)) b!1045413))

(assert (= (and b!1045413 res!468532) b!1045404))

(assert (= (and b!1045404 res!468529) b!1045408))

(assert (= (and b!1045408 res!468531) b!1045412))

(assert (= (and b!1045413 (not res!468533)) b!1045411))

(assert (= (and b!1045411 res!468535) b!1045410))

(assert (= (and b!1045410 (not res!468536)) b!1045403))

(assert (= (and b!1045403 (not res!468534)) b!1045401))

(assert (= (or b!1045405 b!1045404 b!1045410) bm!73431))

(assert (=> b!1045412 m!1212233))

(assert (=> b!1045403 m!1212237))

(assert (=> b!1045403 m!1212237))

(assert (=> b!1045403 m!1212239))

(assert (=> b!1045408 m!1212237))

(assert (=> b!1045408 m!1212237))

(assert (=> b!1045408 m!1212239))

(assert (=> b!1045400 m!1212233))

(assert (=> b!1045400 m!1212233))

(declare-fun m!1212369 () Bool)

(assert (=> b!1045400 m!1212369))

(assert (=> b!1045400 m!1212237))

(assert (=> b!1045400 m!1212369))

(assert (=> b!1045400 m!1212237))

(declare-fun m!1212371 () Bool)

(assert (=> b!1045400 m!1212371))

(assert (=> bm!73431 m!1212105))

(assert (=> d!298080 m!1212105))

(assert (=> d!298080 m!1212319))

(declare-fun m!1212373 () Bool)

(assert (=> b!1045407 m!1212373))

(assert (=> b!1045401 m!1212233))

(assert (=> b!1044967 d!298080))

(declare-fun b!1045456 () Bool)

(declare-fun e!664916 () Regex!2888)

(declare-fun call!73450 () Regex!2888)

(declare-fun call!73448 () Regex!2888)

(assert (=> b!1045456 (= e!664916 (Concat!4721 call!73450 call!73448))))

(declare-fun call!73447 () Regex!2888)

(declare-fun c!174197 () Bool)

(declare-fun c!174195 () Bool)

(declare-fun bm!73442 () Bool)

(declare-fun c!174196 () Bool)

(assert (=> bm!73442 (= call!73447 (removeUselessConcat!437 (ite c!174195 (regTwo!6288 (regTwo!6288 r!15766)) (ite (or c!174196 c!174197) (regOne!6288 (regTwo!6288 r!15766)) (regOne!6289 (regTwo!6288 r!15766))))))))

(declare-fun b!1045457 () Bool)

(declare-fun e!664914 () Regex!2888)

(assert (=> b!1045457 (= e!664914 call!73447)))

(declare-fun b!1045458 () Bool)

(declare-fun e!664919 () Regex!2888)

(declare-fun call!73451 () Regex!2888)

(assert (=> b!1045458 (= e!664919 (Star!2888 call!73451))))

(declare-fun b!1045459 () Bool)

(assert (=> b!1045459 (= c!174197 (is-Concat!4721 (regTwo!6288 r!15766)))))

(declare-fun e!664918 () Regex!2888)

(assert (=> b!1045459 (= e!664918 e!664916)))

(declare-fun b!1045460 () Bool)

(declare-fun e!664915 () Bool)

(declare-fun lt!357775 () Regex!2888)

(assert (=> b!1045460 (= e!664915 (= (nullable!980 lt!357775) (nullable!980 (regTwo!6288 r!15766))))))

(declare-fun b!1045461 () Bool)

(declare-fun c!174194 () Bool)

(assert (=> b!1045461 (= c!174194 (is-Star!2888 (regTwo!6288 r!15766)))))

(declare-fun e!664917 () Regex!2888)

(assert (=> b!1045461 (= e!664917 e!664919)))

(declare-fun bm!73443 () Bool)

(declare-fun call!73449 () Regex!2888)

(assert (=> bm!73443 (= call!73450 call!73449)))

(declare-fun b!1045462 () Bool)

(assert (=> b!1045462 (= e!664916 e!664917)))

(declare-fun c!174193 () Bool)

(assert (=> b!1045462 (= c!174193 (is-Union!2888 (regTwo!6288 r!15766)))))

(declare-fun bm!73444 () Bool)

(assert (=> bm!73444 (= call!73448 (removeUselessConcat!437 (ite c!174197 (regTwo!6288 (regTwo!6288 r!15766)) (ite c!174193 (regTwo!6289 (regTwo!6288 r!15766)) (reg!3217 (regTwo!6288 r!15766))))))))

(declare-fun bm!73445 () Bool)

(assert (=> bm!73445 (= call!73451 call!73448)))

(declare-fun b!1045463 () Bool)

(assert (=> b!1045463 (= e!664918 call!73449)))

(declare-fun d!298082 () Bool)

(assert (=> d!298082 e!664915))

(declare-fun res!468539 () Bool)

(assert (=> d!298082 (=> (not res!468539) (not e!664915))))

(assert (=> d!298082 (= res!468539 (validRegex!1357 lt!357775))))

(assert (=> d!298082 (= lt!357775 e!664914)))

(assert (=> d!298082 (= c!174195 (and (is-Concat!4721 (regTwo!6288 r!15766)) (is-EmptyExpr!2888 (regOne!6288 (regTwo!6288 r!15766)))))))

(assert (=> d!298082 (validRegex!1357 (regTwo!6288 r!15766))))

(assert (=> d!298082 (= (removeUselessConcat!437 (regTwo!6288 r!15766)) lt!357775)))

(declare-fun bm!73446 () Bool)

(assert (=> bm!73446 (= call!73449 call!73447)))

(declare-fun b!1045464 () Bool)

(assert (=> b!1045464 (= e!664919 (regTwo!6288 r!15766))))

(declare-fun b!1045465 () Bool)

(assert (=> b!1045465 (= e!664917 (Union!2888 call!73450 call!73451))))

(declare-fun b!1045466 () Bool)

(assert (=> b!1045466 (= e!664914 e!664918)))

(assert (=> b!1045466 (= c!174196 (and (is-Concat!4721 (regTwo!6288 r!15766)) (is-EmptyExpr!2888 (regTwo!6288 (regTwo!6288 r!15766)))))))

(assert (= (and d!298082 c!174195) b!1045457))

(assert (= (and d!298082 (not c!174195)) b!1045466))

(assert (= (and b!1045466 c!174196) b!1045463))

(assert (= (and b!1045466 (not c!174196)) b!1045459))

(assert (= (and b!1045459 c!174197) b!1045456))

(assert (= (and b!1045459 (not c!174197)) b!1045462))

(assert (= (and b!1045462 c!174193) b!1045465))

(assert (= (and b!1045462 (not c!174193)) b!1045461))

(assert (= (and b!1045461 c!174194) b!1045458))

(assert (= (and b!1045461 (not c!174194)) b!1045464))

(assert (= (or b!1045465 b!1045458) bm!73445))

(assert (= (or b!1045456 bm!73445) bm!73444))

(assert (= (or b!1045456 b!1045465) bm!73443))

(assert (= (or b!1045463 bm!73443) bm!73446))

(assert (= (or b!1045457 bm!73446) bm!73442))

(assert (= (and d!298082 res!468539) b!1045460))

(declare-fun m!1212375 () Bool)

(assert (=> bm!73442 m!1212375))

(declare-fun m!1212377 () Bool)

(assert (=> b!1045460 m!1212377))

(declare-fun m!1212379 () Bool)

(assert (=> b!1045460 m!1212379))

(declare-fun m!1212381 () Bool)

(assert (=> bm!73444 m!1212381))

(declare-fun m!1212383 () Bool)

(assert (=> d!298082 m!1212383))

(assert (=> d!298082 m!1212089))

(assert (=> b!1044967 d!298082))

(declare-fun b!1045467 () Bool)

(declare-fun e!664922 () Regex!2888)

(declare-fun call!73457 () Regex!2888)

(declare-fun call!73455 () Regex!2888)

(assert (=> b!1045467 (= e!664922 (Concat!4721 call!73457 call!73455))))

(declare-fun c!174202 () Bool)

(declare-fun c!174200 () Bool)

(declare-fun call!73454 () Regex!2888)

(declare-fun bm!73449 () Bool)

(declare-fun c!174201 () Bool)

(assert (=> bm!73449 (= call!73454 (removeUselessConcat!437 (ite c!174200 (regTwo!6288 (regOne!6288 r!15766)) (ite (or c!174201 c!174202) (regOne!6288 (regOne!6288 r!15766)) (regOne!6289 (regOne!6288 r!15766))))))))

(declare-fun b!1045468 () Bool)

(declare-fun e!664920 () Regex!2888)

(assert (=> b!1045468 (= e!664920 call!73454)))

(declare-fun b!1045469 () Bool)

(declare-fun e!664925 () Regex!2888)

(declare-fun call!73458 () Regex!2888)

(assert (=> b!1045469 (= e!664925 (Star!2888 call!73458))))

(declare-fun b!1045470 () Bool)

(assert (=> b!1045470 (= c!174202 (is-Concat!4721 (regOne!6288 r!15766)))))

(declare-fun e!664924 () Regex!2888)

(assert (=> b!1045470 (= e!664924 e!664922)))

(declare-fun b!1045471 () Bool)

(declare-fun e!664921 () Bool)

(declare-fun lt!357776 () Regex!2888)

(assert (=> b!1045471 (= e!664921 (= (nullable!980 lt!357776) (nullable!980 (regOne!6288 r!15766))))))

(declare-fun b!1045472 () Bool)

(declare-fun c!174199 () Bool)

(assert (=> b!1045472 (= c!174199 (is-Star!2888 (regOne!6288 r!15766)))))

(declare-fun e!664923 () Regex!2888)

(assert (=> b!1045472 (= e!664923 e!664925)))

(declare-fun bm!73450 () Bool)

(declare-fun call!73456 () Regex!2888)

(assert (=> bm!73450 (= call!73457 call!73456)))

(declare-fun b!1045473 () Bool)

(assert (=> b!1045473 (= e!664922 e!664923)))

(declare-fun c!174198 () Bool)

(assert (=> b!1045473 (= c!174198 (is-Union!2888 (regOne!6288 r!15766)))))

(declare-fun bm!73451 () Bool)

(assert (=> bm!73451 (= call!73455 (removeUselessConcat!437 (ite c!174202 (regTwo!6288 (regOne!6288 r!15766)) (ite c!174198 (regTwo!6289 (regOne!6288 r!15766)) (reg!3217 (regOne!6288 r!15766))))))))

(declare-fun bm!73452 () Bool)

(assert (=> bm!73452 (= call!73458 call!73455)))

(declare-fun b!1045474 () Bool)

(assert (=> b!1045474 (= e!664924 call!73456)))

(declare-fun d!298084 () Bool)

(assert (=> d!298084 e!664921))

(declare-fun res!468540 () Bool)

(assert (=> d!298084 (=> (not res!468540) (not e!664921))))

(assert (=> d!298084 (= res!468540 (validRegex!1357 lt!357776))))

(assert (=> d!298084 (= lt!357776 e!664920)))

(assert (=> d!298084 (= c!174200 (and (is-Concat!4721 (regOne!6288 r!15766)) (is-EmptyExpr!2888 (regOne!6288 (regOne!6288 r!15766)))))))

(assert (=> d!298084 (validRegex!1357 (regOne!6288 r!15766))))

(assert (=> d!298084 (= (removeUselessConcat!437 (regOne!6288 r!15766)) lt!357776)))

(declare-fun bm!73453 () Bool)

(assert (=> bm!73453 (= call!73456 call!73454)))

(declare-fun b!1045475 () Bool)

(assert (=> b!1045475 (= e!664925 (regOne!6288 r!15766))))

(declare-fun b!1045476 () Bool)

(assert (=> b!1045476 (= e!664923 (Union!2888 call!73457 call!73458))))

(declare-fun b!1045477 () Bool)

(assert (=> b!1045477 (= e!664920 e!664924)))

(assert (=> b!1045477 (= c!174201 (and (is-Concat!4721 (regOne!6288 r!15766)) (is-EmptyExpr!2888 (regTwo!6288 (regOne!6288 r!15766)))))))

(assert (= (and d!298084 c!174200) b!1045468))

(assert (= (and d!298084 (not c!174200)) b!1045477))

(assert (= (and b!1045477 c!174201) b!1045474))

(assert (= (and b!1045477 (not c!174201)) b!1045470))

(assert (= (and b!1045470 c!174202) b!1045467))

(assert (= (and b!1045470 (not c!174202)) b!1045473))

(assert (= (and b!1045473 c!174198) b!1045476))

(assert (= (and b!1045473 (not c!174198)) b!1045472))

(assert (= (and b!1045472 c!174199) b!1045469))

(assert (= (and b!1045472 (not c!174199)) b!1045475))

(assert (= (or b!1045476 b!1045469) bm!73452))

(assert (= (or b!1045467 bm!73452) bm!73451))

(assert (= (or b!1045467 b!1045476) bm!73450))

(assert (= (or b!1045474 bm!73450) bm!73453))

(assert (= (or b!1045468 bm!73453) bm!73449))

(assert (= (and d!298084 res!468540) b!1045471))

(declare-fun m!1212385 () Bool)

(assert (=> bm!73449 m!1212385))

(declare-fun m!1212387 () Bool)

(assert (=> b!1045471 m!1212387))

(assert (=> b!1045471 m!1212197))

(declare-fun m!1212389 () Bool)

(assert (=> bm!73451 m!1212389))

(declare-fun m!1212391 () Bool)

(assert (=> d!298084 m!1212391))

(assert (=> d!298084 m!1212195))

(assert (=> b!1044967 d!298084))

(declare-fun b!1045482 () Bool)

(declare-fun e!664928 () Bool)

(declare-fun tp!315607 () Bool)

(assert (=> b!1045482 (= e!664928 (and tp_is_empty!5419 tp!315607))))

(assert (=> b!1044971 (= tp!315583 e!664928)))

(assert (= (and b!1044971 (is-Cons!10102 (t!101164 s!10566))) b!1045482))

(declare-fun e!664931 () Bool)

(assert (=> b!1044969 (= tp!315586 e!664931)))

(declare-fun b!1045494 () Bool)

(declare-fun tp!315622 () Bool)

(declare-fun tp!315618 () Bool)

(assert (=> b!1045494 (= e!664931 (and tp!315622 tp!315618))))

(declare-fun b!1045495 () Bool)

(declare-fun tp!315619 () Bool)

(assert (=> b!1045495 (= e!664931 tp!315619)))

(declare-fun b!1045493 () Bool)

(assert (=> b!1045493 (= e!664931 tp_is_empty!5419)))

(declare-fun b!1045496 () Bool)

(declare-fun tp!315621 () Bool)

(declare-fun tp!315620 () Bool)

(assert (=> b!1045496 (= e!664931 (and tp!315621 tp!315620))))

(assert (= (and b!1044969 (is-ElementMatch!2888 (reg!3217 r!15766))) b!1045493))

(assert (= (and b!1044969 (is-Concat!4721 (reg!3217 r!15766))) b!1045494))

(assert (= (and b!1044969 (is-Star!2888 (reg!3217 r!15766))) b!1045495))

(assert (= (and b!1044969 (is-Union!2888 (reg!3217 r!15766))) b!1045496))

(declare-fun e!664932 () Bool)

(assert (=> b!1044974 (= tp!315581 e!664932)))

(declare-fun b!1045498 () Bool)

(declare-fun tp!315627 () Bool)

(declare-fun tp!315623 () Bool)

(assert (=> b!1045498 (= e!664932 (and tp!315627 tp!315623))))

(declare-fun b!1045499 () Bool)

(declare-fun tp!315624 () Bool)

(assert (=> b!1045499 (= e!664932 tp!315624)))

(declare-fun b!1045497 () Bool)

(assert (=> b!1045497 (= e!664932 tp_is_empty!5419)))

(declare-fun b!1045500 () Bool)

(declare-fun tp!315626 () Bool)

(declare-fun tp!315625 () Bool)

(assert (=> b!1045500 (= e!664932 (and tp!315626 tp!315625))))

(assert (= (and b!1044974 (is-ElementMatch!2888 (regOne!6289 r!15766))) b!1045497))

(assert (= (and b!1044974 (is-Concat!4721 (regOne!6289 r!15766))) b!1045498))

(assert (= (and b!1044974 (is-Star!2888 (regOne!6289 r!15766))) b!1045499))

(assert (= (and b!1044974 (is-Union!2888 (regOne!6289 r!15766))) b!1045500))

(declare-fun e!664933 () Bool)

(assert (=> b!1044974 (= tp!315584 e!664933)))

(declare-fun b!1045502 () Bool)

(declare-fun tp!315632 () Bool)

(declare-fun tp!315628 () Bool)

(assert (=> b!1045502 (= e!664933 (and tp!315632 tp!315628))))

(declare-fun b!1045503 () Bool)

(declare-fun tp!315629 () Bool)

(assert (=> b!1045503 (= e!664933 tp!315629)))

(declare-fun b!1045501 () Bool)

(assert (=> b!1045501 (= e!664933 tp_is_empty!5419)))

(declare-fun b!1045504 () Bool)

(declare-fun tp!315631 () Bool)

(declare-fun tp!315630 () Bool)

(assert (=> b!1045504 (= e!664933 (and tp!315631 tp!315630))))

(assert (= (and b!1044974 (is-ElementMatch!2888 (regTwo!6289 r!15766))) b!1045501))

(assert (= (and b!1044974 (is-Concat!4721 (regTwo!6289 r!15766))) b!1045502))

(assert (= (and b!1044974 (is-Star!2888 (regTwo!6289 r!15766))) b!1045503))

(assert (= (and b!1044974 (is-Union!2888 (regTwo!6289 r!15766))) b!1045504))

(declare-fun e!664934 () Bool)

(assert (=> b!1044972 (= tp!315582 e!664934)))

(declare-fun b!1045506 () Bool)

(declare-fun tp!315637 () Bool)

(declare-fun tp!315633 () Bool)

(assert (=> b!1045506 (= e!664934 (and tp!315637 tp!315633))))

(declare-fun b!1045507 () Bool)

(declare-fun tp!315634 () Bool)

(assert (=> b!1045507 (= e!664934 tp!315634)))

(declare-fun b!1045505 () Bool)

(assert (=> b!1045505 (= e!664934 tp_is_empty!5419)))

(declare-fun b!1045508 () Bool)

(declare-fun tp!315636 () Bool)

(declare-fun tp!315635 () Bool)

(assert (=> b!1045508 (= e!664934 (and tp!315636 tp!315635))))

(assert (= (and b!1044972 (is-ElementMatch!2888 (regOne!6288 r!15766))) b!1045505))

(assert (= (and b!1044972 (is-Concat!4721 (regOne!6288 r!15766))) b!1045506))

(assert (= (and b!1044972 (is-Star!2888 (regOne!6288 r!15766))) b!1045507))

(assert (= (and b!1044972 (is-Union!2888 (regOne!6288 r!15766))) b!1045508))

(declare-fun e!664935 () Bool)

(assert (=> b!1044972 (= tp!315585 e!664935)))

(declare-fun b!1045510 () Bool)

(declare-fun tp!315642 () Bool)

(declare-fun tp!315638 () Bool)

(assert (=> b!1045510 (= e!664935 (and tp!315642 tp!315638))))

(declare-fun b!1045511 () Bool)

(declare-fun tp!315639 () Bool)

(assert (=> b!1045511 (= e!664935 tp!315639)))

(declare-fun b!1045509 () Bool)

(assert (=> b!1045509 (= e!664935 tp_is_empty!5419)))

(declare-fun b!1045512 () Bool)

(declare-fun tp!315641 () Bool)

(declare-fun tp!315640 () Bool)

(assert (=> b!1045512 (= e!664935 (and tp!315641 tp!315640))))

(assert (= (and b!1044972 (is-ElementMatch!2888 (regTwo!6288 r!15766))) b!1045509))

(assert (= (and b!1044972 (is-Concat!4721 (regTwo!6288 r!15766))) b!1045510))

(assert (= (and b!1044972 (is-Star!2888 (regTwo!6288 r!15766))) b!1045511))

(assert (= (and b!1044972 (is-Union!2888 (regTwo!6288 r!15766))) b!1045512))

(push 1)

(assert (not b!1045373))

(assert (not b!1045247))

(assert (not d!298072))

(assert (not d!298080))

(assert (not d!298040))

(assert (not d!298034))

(assert (not bm!73431))

(assert (not b!1045401))

(assert (not b!1045250))

(assert (not d!298060))

(assert (not b!1045248))

(assert (not bm!73428))

(assert (not b!1045231))

(assert (not b!1045326))

(assert (not bm!73451))

(assert (not d!298084))

(assert (not d!298062))

(assert (not b!1045123))

(assert (not b!1045496))

(assert (not bm!73442))

(assert (not b!1045503))

(assert (not b!1045500))

(assert (not b!1045322))

(assert (not b!1045344))

(assert (not b!1045375))

(assert (not b!1045398))

(assert (not bm!73415))

(assert (not b!1045499))

(assert (not b!1045495))

(assert (not b!1045142))

(assert (not b!1045512))

(assert (not d!298050))

(assert (not d!298046))

(assert (not b!1045506))

(assert (not b!1045254))

(assert (not b!1045403))

(assert (not bm!73400))

(assert (not b!1045323))

(assert (not d!298068))

(assert (not bm!73417))

(assert (not d!298024))

(assert (not bm!73424))

(assert (not b!1045223))

(assert (not d!298066))

(assert (not b!1045327))

(assert (not b!1045510))

(assert (not b!1045508))

(assert (not d!298032))

(assert (not b!1045507))

(assert (not b!1045504))

(assert (not b!1045146))

(assert (not b!1045120))

(assert (not b!1045482))

(assert (not b!1045132))

(assert (not b!1045494))

(assert (not b!1045368))

(assert (not b!1045135))

(assert (not d!298048))

(assert (not b!1045090))

(assert (not d!298018))

(assert (not b!1045400))

(assert (not b!1045460))

(assert (not bm!73430))

(assert (not b!1045128))

(assert (not b!1045127))

(assert (not d!298026))

(assert (not b!1045511))

(assert (not b!1045376))

(assert (not b!1045407))

(assert (not d!298042))

(assert (not b!1045498))

(assert (not b!1045255))

(assert (not bm!73414))

(assert (not b!1045412))

(assert (not b!1045502))

(assert (not b!1045319))

(assert (not b!1045137))

(assert (not d!298064))

(assert (not b!1045134))

(assert tp_is_empty!5419)

(assert (not d!298044))

(assert (not b!1045324))

(assert (not bm!73425))

(assert (not b!1045408))

(assert (not b!1045471))

(assert (not d!298058))

(assert (not b!1045371))

(assert (not b!1045121))

(assert (not bm!73444))

(assert (not bm!73402))

(assert (not b!1045141))

(assert (not bm!73406))

(assert (not d!298082))

(assert (not bm!73405))

(assert (not b!1045372))

(assert (not b!1045352))

(assert (not b!1045259))

(assert (not bm!73449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

