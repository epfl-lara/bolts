; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731366 () Bool)

(assert start!731366)

(declare-fun b!7574057 () Bool)

(assert (=> b!7574057 true))

(assert (=> b!7574057 true))

(declare-fun lambda!466533 () Int)

(declare-fun lambda!466532 () Int)

(assert (=> b!7574057 (not (= lambda!466533 lambda!466532))))

(assert (=> b!7574057 true))

(assert (=> b!7574057 true))

(declare-fun b!7574056 () Bool)

(declare-fun e!4508749 () Bool)

(declare-fun tp_is_empty!50439 () Bool)

(declare-fun tp!2207095 () Bool)

(assert (=> b!7574056 (= e!4508749 (and tp_is_empty!50439 tp!2207095))))

(declare-fun e!4508752 () Bool)

(declare-fun e!4508748 () Bool)

(assert (=> b!7574057 (= e!4508752 e!4508748)))

(declare-fun res!3034120 () Bool)

(assert (=> b!7574057 (=> res!3034120 e!4508748)))

(declare-datatypes ((C!40410 0))(
  ( (C!40411 (val!30645 Int)) )
))
(declare-datatypes ((Regex!20042 0))(
  ( (ElementMatch!20042 (c!1397273 C!40410)) (Concat!28887 (regOne!40596 Regex!20042) (regTwo!40596 Regex!20042)) (EmptyExpr!20042) (Star!20042 (reg!20371 Regex!20042)) (EmptyLang!20042) (Union!20042 (regOne!40597 Regex!20042) (regTwo!40597 Regex!20042)) )
))
(declare-fun r!22341 () Regex!20042)

(declare-fun validRegex!10470 (Regex!20042) Bool)

(assert (=> b!7574057 (= res!3034120 (not (validRegex!10470 (regOne!40596 r!22341))))))

(declare-fun Exists!4285 (Int) Bool)

(assert (=> b!7574057 (= (Exists!4285 lambda!466532) (Exists!4285 lambda!466533))))

(declare-datatypes ((Unit!167040 0))(
  ( (Unit!167041) )
))
(declare-fun lt!2651763 () Unit!167040)

(declare-datatypes ((List!72925 0))(
  ( (Nil!72801) (Cons!72801 (h!79249 C!40410) (t!387660 List!72925)) )
))
(declare-fun s!13436 () List!72925)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2603 (Regex!20042 Regex!20042 List!72925) Unit!167040)

(assert (=> b!7574057 (= lt!2651763 (lemmaExistCutMatchRandMatchRSpecEquivalent!2603 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436))))

(declare-datatypes ((tuple2!68878 0))(
  ( (tuple2!68879 (_1!37742 List!72925) (_2!37742 List!72925)) )
))
(declare-datatypes ((Option!17275 0))(
  ( (None!17274) (Some!17274 (v!54409 tuple2!68878)) )
))
(declare-fun isDefined!13921 (Option!17275) Bool)

(declare-fun findConcatSeparation!3335 (Regex!20042 Regex!20042 List!72925 List!72925 List!72925) Option!17275)

(assert (=> b!7574057 (= (isDefined!13921 (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) Nil!72801 s!13436 s!13436)) (Exists!4285 lambda!466532))))

(declare-fun lt!2651765 () Unit!167040)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3093 (Regex!20042 Regex!20042 List!72925) Unit!167040)

(assert (=> b!7574057 (= lt!2651765 (lemmaFindConcatSeparationEquivalentToExists!3093 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436))))

(declare-fun res!3034123 () Bool)

(declare-fun e!4508751 () Bool)

(assert (=> start!731366 (=> (not res!3034123) (not e!4508751))))

(assert (=> start!731366 (= res!3034123 (validRegex!10470 r!22341))))

(assert (=> start!731366 e!4508751))

(declare-fun e!4508750 () Bool)

(assert (=> start!731366 e!4508750))

(assert (=> start!731366 e!4508749))

(declare-fun b!7574058 () Bool)

(declare-fun res!3034119 () Bool)

(assert (=> b!7574058 (=> (not res!3034119) (not e!4508751))))

(declare-fun isEmpty!41461 (List!72925) Bool)

(assert (=> b!7574058 (= res!3034119 (not (isEmpty!41461 s!13436)))))

(declare-fun b!7574059 () Bool)

(assert (=> b!7574059 (= e!4508748 (validRegex!10470 (regTwo!40596 r!22341)))))

(declare-fun b!7574060 () Bool)

(declare-fun tp!2207094 () Bool)

(assert (=> b!7574060 (= e!4508750 tp!2207094)))

(declare-fun b!7574061 () Bool)

(declare-fun res!3034121 () Bool)

(assert (=> b!7574061 (=> (not res!3034121) (not e!4508751))))

(declare-fun lostCause!1818 (Regex!20042) Bool)

(assert (=> b!7574061 (= res!3034121 (lostCause!1818 r!22341))))

(declare-fun b!7574062 () Bool)

(declare-fun tp!2207097 () Bool)

(declare-fun tp!2207096 () Bool)

(assert (=> b!7574062 (= e!4508750 (and tp!2207097 tp!2207096))))

(declare-fun b!7574063 () Bool)

(declare-fun tp!2207098 () Bool)

(declare-fun tp!2207099 () Bool)

(assert (=> b!7574063 (= e!4508750 (and tp!2207098 tp!2207099))))

(declare-fun b!7574064 () Bool)

(assert (=> b!7574064 (= e!4508750 tp_is_empty!50439)))

(declare-fun b!7574065 () Bool)

(assert (=> b!7574065 (= e!4508751 (not e!4508752))))

(declare-fun res!3034122 () Bool)

(assert (=> b!7574065 (=> res!3034122 e!4508752)))

(declare-fun lt!2651764 () Bool)

(assert (=> b!7574065 (= res!3034122 (or (is-EmptyLang!20042 r!22341) (is-EmptyExpr!20042 r!22341) (is-ElementMatch!20042 r!22341) (is-Union!20042 r!22341) (is-Star!20042 r!22341) (not lt!2651764)))))

(declare-fun matchRSpec!4361 (Regex!20042 List!72925) Bool)

(assert (=> b!7574065 (= lt!2651764 (matchRSpec!4361 r!22341 s!13436))))

(declare-fun matchR!9638 (Regex!20042 List!72925) Bool)

(assert (=> b!7574065 (= lt!2651764 (matchR!9638 r!22341 s!13436))))

(declare-fun lt!2651766 () Unit!167040)

(declare-fun mainMatchTheorem!4355 (Regex!20042 List!72925) Unit!167040)

(assert (=> b!7574065 (= lt!2651766 (mainMatchTheorem!4355 r!22341 s!13436))))

(assert (= (and start!731366 res!3034123) b!7574061))

(assert (= (and b!7574061 res!3034121) b!7574058))

(assert (= (and b!7574058 res!3034119) b!7574065))

(assert (= (and b!7574065 (not res!3034122)) b!7574057))

(assert (= (and b!7574057 (not res!3034120)) b!7574059))

(assert (= (and start!731366 (is-ElementMatch!20042 r!22341)) b!7574064))

(assert (= (and start!731366 (is-Concat!28887 r!22341)) b!7574062))

(assert (= (and start!731366 (is-Star!20042 r!22341)) b!7574060))

(assert (= (and start!731366 (is-Union!20042 r!22341)) b!7574063))

(assert (= (and start!731366 (is-Cons!72801 s!13436)) b!7574056))

(declare-fun m!8133202 () Bool)

(assert (=> b!7574057 m!8133202))

(declare-fun m!8133204 () Bool)

(assert (=> b!7574057 m!8133204))

(declare-fun m!8133206 () Bool)

(assert (=> b!7574057 m!8133206))

(declare-fun m!8133208 () Bool)

(assert (=> b!7574057 m!8133208))

(declare-fun m!8133210 () Bool)

(assert (=> b!7574057 m!8133210))

(assert (=> b!7574057 m!8133208))

(declare-fun m!8133212 () Bool)

(assert (=> b!7574057 m!8133212))

(declare-fun m!8133214 () Bool)

(assert (=> b!7574057 m!8133214))

(assert (=> b!7574057 m!8133206))

(declare-fun m!8133216 () Bool)

(assert (=> start!731366 m!8133216))

(declare-fun m!8133218 () Bool)

(assert (=> b!7574059 m!8133218))

(declare-fun m!8133220 () Bool)

(assert (=> b!7574058 m!8133220))

(declare-fun m!8133222 () Bool)

(assert (=> b!7574061 m!8133222))

(declare-fun m!8133224 () Bool)

(assert (=> b!7574065 m!8133224))

(declare-fun m!8133226 () Bool)

(assert (=> b!7574065 m!8133226))

(declare-fun m!8133228 () Bool)

(assert (=> b!7574065 m!8133228))

(push 1)

(assert (not b!7574061))

(assert (not b!7574058))

(assert (not b!7574060))

(assert (not b!7574056))

(assert (not b!7574057))

(assert (not b!7574065))

(assert (not b!7574059))

(assert (not b!7574063))

(assert (not b!7574062))

(assert (not start!731366))

(assert tp_is_empty!50439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1940689 () Bool)

(declare-fun b!7574153 () Bool)

(assert (= bs!1940689 (and b!7574153 b!7574057)))

(declare-fun lambda!466546 () Int)

(assert (=> bs!1940689 (not (= lambda!466546 lambda!466532))))

(assert (=> bs!1940689 (not (= lambda!466546 lambda!466533))))

(assert (=> b!7574153 true))

(assert (=> b!7574153 true))

(declare-fun bs!1940690 () Bool)

(declare-fun b!7574148 () Bool)

(assert (= bs!1940690 (and b!7574148 b!7574057)))

(declare-fun lambda!466547 () Int)

(assert (=> bs!1940690 (not (= lambda!466547 lambda!466532))))

(assert (=> bs!1940690 (= lambda!466547 lambda!466533)))

(declare-fun bs!1940691 () Bool)

(assert (= bs!1940691 (and b!7574148 b!7574153)))

(assert (=> bs!1940691 (not (= lambda!466547 lambda!466546))))

(assert (=> b!7574148 true))

(assert (=> b!7574148 true))

(declare-fun e!4508797 () Bool)

(declare-fun call!694342 () Bool)

(assert (=> b!7574148 (= e!4508797 call!694342)))

(declare-fun b!7574149 () Bool)

(declare-fun c!1397285 () Bool)

(assert (=> b!7574149 (= c!1397285 (is-ElementMatch!20042 r!22341))))

(declare-fun e!4508796 () Bool)

(declare-fun e!4508793 () Bool)

(assert (=> b!7574149 (= e!4508796 e!4508793)))

(declare-fun b!7574150 () Bool)

(declare-fun e!4508795 () Bool)

(assert (=> b!7574150 (= e!4508795 (matchRSpec!4361 (regTwo!40597 r!22341) s!13436))))

(declare-fun d!2317761 () Bool)

(declare-fun c!1397286 () Bool)

(assert (=> d!2317761 (= c!1397286 (is-EmptyExpr!20042 r!22341))))

(declare-fun e!4508792 () Bool)

(assert (=> d!2317761 (= (matchRSpec!4361 r!22341 s!13436) e!4508792)))

(declare-fun b!7574151 () Bool)

(declare-fun c!1397284 () Bool)

(assert (=> b!7574151 (= c!1397284 (is-Union!20042 r!22341))))

(declare-fun e!4508794 () Bool)

(assert (=> b!7574151 (= e!4508793 e!4508794)))

(declare-fun bm!694336 () Bool)

(declare-fun call!694341 () Bool)

(assert (=> bm!694336 (= call!694341 (isEmpty!41461 s!13436))))

(declare-fun b!7574152 () Bool)

(assert (=> b!7574152 (= e!4508794 e!4508795)))

(declare-fun res!3034168 () Bool)

(assert (=> b!7574152 (= res!3034168 (matchRSpec!4361 (regOne!40597 r!22341) s!13436))))

(assert (=> b!7574152 (=> res!3034168 e!4508795)))

(declare-fun c!1397283 () Bool)

(declare-fun bm!694337 () Bool)

(assert (=> bm!694337 (= call!694342 (Exists!4285 (ite c!1397283 lambda!466546 lambda!466547)))))

(declare-fun e!4508798 () Bool)

(assert (=> b!7574153 (= e!4508798 call!694342)))

(declare-fun b!7574154 () Bool)

(assert (=> b!7574154 (= e!4508794 e!4508797)))

(assert (=> b!7574154 (= c!1397283 (is-Star!20042 r!22341))))

(declare-fun b!7574155 () Bool)

(assert (=> b!7574155 (= e!4508793 (= s!13436 (Cons!72801 (c!1397273 r!22341) Nil!72801)))))

(declare-fun b!7574156 () Bool)

(assert (=> b!7574156 (= e!4508792 call!694341)))

(declare-fun b!7574157 () Bool)

(assert (=> b!7574157 (= e!4508792 e!4508796)))

(declare-fun res!3034169 () Bool)

(assert (=> b!7574157 (= res!3034169 (not (is-EmptyLang!20042 r!22341)))))

(assert (=> b!7574157 (=> (not res!3034169) (not e!4508796))))

(declare-fun b!7574158 () Bool)

(declare-fun res!3034167 () Bool)

(assert (=> b!7574158 (=> res!3034167 e!4508798)))

(assert (=> b!7574158 (= res!3034167 call!694341)))

(assert (=> b!7574158 (= e!4508797 e!4508798)))

(assert (= (and d!2317761 c!1397286) b!7574156))

(assert (= (and d!2317761 (not c!1397286)) b!7574157))

(assert (= (and b!7574157 res!3034169) b!7574149))

(assert (= (and b!7574149 c!1397285) b!7574155))

(assert (= (and b!7574149 (not c!1397285)) b!7574151))

(assert (= (and b!7574151 c!1397284) b!7574152))

(assert (= (and b!7574151 (not c!1397284)) b!7574154))

(assert (= (and b!7574152 (not res!3034168)) b!7574150))

(assert (= (and b!7574154 c!1397283) b!7574158))

(assert (= (and b!7574154 (not c!1397283)) b!7574148))

(assert (= (and b!7574158 (not res!3034167)) b!7574153))

(assert (= (or b!7574153 b!7574148) bm!694337))

(assert (= (or b!7574156 b!7574158) bm!694336))

(declare-fun m!8133258 () Bool)

(assert (=> b!7574150 m!8133258))

(assert (=> bm!694336 m!8133220))

(declare-fun m!8133260 () Bool)

(assert (=> b!7574152 m!8133260))

(declare-fun m!8133262 () Bool)

(assert (=> bm!694337 m!8133262))

(assert (=> b!7574065 d!2317761))

(declare-fun b!7574206 () Bool)

(declare-fun res!3034202 () Bool)

(declare-fun e!4508832 () Bool)

(assert (=> b!7574206 (=> (not res!3034202) (not e!4508832))))

(declare-fun call!694351 () Bool)

(assert (=> b!7574206 (= res!3034202 (not call!694351))))

(declare-fun b!7574207 () Bool)

(declare-fun e!4508828 () Bool)

(declare-fun lt!2651781 () Bool)

(assert (=> b!7574207 (= e!4508828 (= lt!2651781 call!694351))))

(declare-fun b!7574208 () Bool)

(declare-fun e!4508829 () Bool)

(declare-fun head!15578 (List!72925) C!40410)

(assert (=> b!7574208 (= e!4508829 (not (= (head!15578 s!13436) (c!1397273 r!22341))))))

(declare-fun b!7574209 () Bool)

(declare-fun e!4508830 () Bool)

(declare-fun derivativeStep!5778 (Regex!20042 C!40410) Regex!20042)

(declare-fun tail!15118 (List!72925) List!72925)

(assert (=> b!7574209 (= e!4508830 (matchR!9638 (derivativeStep!5778 r!22341 (head!15578 s!13436)) (tail!15118 s!13436)))))

(declare-fun bm!694346 () Bool)

(assert (=> bm!694346 (= call!694351 (isEmpty!41461 s!13436))))

(declare-fun b!7574210 () Bool)

(declare-fun res!3034196 () Bool)

(assert (=> b!7574210 (=> res!3034196 e!4508829)))

(assert (=> b!7574210 (= res!3034196 (not (isEmpty!41461 (tail!15118 s!13436))))))

(declare-fun b!7574211 () Bool)

(declare-fun e!4508833 () Bool)

(declare-fun e!4508831 () Bool)

(assert (=> b!7574211 (= e!4508833 e!4508831)))

(declare-fun res!3034203 () Bool)

(assert (=> b!7574211 (=> (not res!3034203) (not e!4508831))))

(assert (=> b!7574211 (= res!3034203 (not lt!2651781))))

(declare-fun b!7574212 () Bool)

(declare-fun e!4508827 () Bool)

(assert (=> b!7574212 (= e!4508828 e!4508827)))

(declare-fun c!1397297 () Bool)

(assert (=> b!7574212 (= c!1397297 (is-EmptyLang!20042 r!22341))))

(declare-fun b!7574213 () Bool)

(declare-fun res!3034200 () Bool)

(assert (=> b!7574213 (=> (not res!3034200) (not e!4508832))))

(assert (=> b!7574213 (= res!3034200 (isEmpty!41461 (tail!15118 s!13436)))))

(declare-fun b!7574214 () Bool)

(declare-fun nullable!8746 (Regex!20042) Bool)

(assert (=> b!7574214 (= e!4508830 (nullable!8746 r!22341))))

(declare-fun b!7574215 () Bool)

(assert (=> b!7574215 (= e!4508832 (= (head!15578 s!13436) (c!1397273 r!22341)))))

(declare-fun b!7574216 () Bool)

(assert (=> b!7574216 (= e!4508827 (not lt!2651781))))

(declare-fun d!2317767 () Bool)

(assert (=> d!2317767 e!4508828))

(declare-fun c!1397298 () Bool)

(assert (=> d!2317767 (= c!1397298 (is-EmptyExpr!20042 r!22341))))

(assert (=> d!2317767 (= lt!2651781 e!4508830)))

(declare-fun c!1397299 () Bool)

(assert (=> d!2317767 (= c!1397299 (isEmpty!41461 s!13436))))

(assert (=> d!2317767 (validRegex!10470 r!22341)))

(assert (=> d!2317767 (= (matchR!9638 r!22341 s!13436) lt!2651781)))

(declare-fun b!7574205 () Bool)

(declare-fun res!3034201 () Bool)

(assert (=> b!7574205 (=> res!3034201 e!4508833)))

(assert (=> b!7574205 (= res!3034201 e!4508832)))

(declare-fun res!3034199 () Bool)

(assert (=> b!7574205 (=> (not res!3034199) (not e!4508832))))

(assert (=> b!7574205 (= res!3034199 lt!2651781)))

(declare-fun b!7574217 () Bool)

(declare-fun res!3034197 () Bool)

(assert (=> b!7574217 (=> res!3034197 e!4508833)))

(assert (=> b!7574217 (= res!3034197 (not (is-ElementMatch!20042 r!22341)))))

(assert (=> b!7574217 (= e!4508827 e!4508833)))

(declare-fun b!7574218 () Bool)

(assert (=> b!7574218 (= e!4508831 e!4508829)))

(declare-fun res!3034198 () Bool)

(assert (=> b!7574218 (=> res!3034198 e!4508829)))

(assert (=> b!7574218 (= res!3034198 call!694351)))

(assert (= (and d!2317767 c!1397299) b!7574214))

(assert (= (and d!2317767 (not c!1397299)) b!7574209))

(assert (= (and d!2317767 c!1397298) b!7574207))

(assert (= (and d!2317767 (not c!1397298)) b!7574212))

(assert (= (and b!7574212 c!1397297) b!7574216))

(assert (= (and b!7574212 (not c!1397297)) b!7574217))

(assert (= (and b!7574217 (not res!3034197)) b!7574205))

(assert (= (and b!7574205 res!3034199) b!7574206))

(assert (= (and b!7574206 res!3034202) b!7574213))

(assert (= (and b!7574213 res!3034200) b!7574215))

(assert (= (and b!7574205 (not res!3034201)) b!7574211))

(assert (= (and b!7574211 res!3034203) b!7574218))

(assert (= (and b!7574218 (not res!3034198)) b!7574210))

(assert (= (and b!7574210 (not res!3034196)) b!7574208))

(assert (= (or b!7574207 b!7574206 b!7574218) bm!694346))

(assert (=> bm!694346 m!8133220))

(declare-fun m!8133264 () Bool)

(assert (=> b!7574214 m!8133264))

(declare-fun m!8133266 () Bool)

(assert (=> b!7574210 m!8133266))

(assert (=> b!7574210 m!8133266))

(declare-fun m!8133268 () Bool)

(assert (=> b!7574210 m!8133268))

(declare-fun m!8133270 () Bool)

(assert (=> b!7574209 m!8133270))

(assert (=> b!7574209 m!8133270))

(declare-fun m!8133272 () Bool)

(assert (=> b!7574209 m!8133272))

(assert (=> b!7574209 m!8133266))

(assert (=> b!7574209 m!8133272))

(assert (=> b!7574209 m!8133266))

(declare-fun m!8133274 () Bool)

(assert (=> b!7574209 m!8133274))

(assert (=> b!7574215 m!8133270))

(assert (=> b!7574208 m!8133270))

(assert (=> b!7574213 m!8133266))

(assert (=> b!7574213 m!8133266))

(assert (=> b!7574213 m!8133268))

(assert (=> d!2317767 m!8133220))

(assert (=> d!2317767 m!8133216))

(assert (=> b!7574065 d!2317767))

(declare-fun d!2317769 () Bool)

(assert (=> d!2317769 (= (matchR!9638 r!22341 s!13436) (matchRSpec!4361 r!22341 s!13436))))

(declare-fun lt!2651784 () Unit!167040)

(declare-fun choose!58555 (Regex!20042 List!72925) Unit!167040)

(assert (=> d!2317769 (= lt!2651784 (choose!58555 r!22341 s!13436))))

(assert (=> d!2317769 (validRegex!10470 r!22341)))

(assert (=> d!2317769 (= (mainMatchTheorem!4355 r!22341 s!13436) lt!2651784)))

(declare-fun bs!1940692 () Bool)

(assert (= bs!1940692 d!2317769))

(assert (=> bs!1940692 m!8133226))

(assert (=> bs!1940692 m!8133224))

(declare-fun m!8133282 () Bool)

(assert (=> bs!1940692 m!8133282))

(assert (=> bs!1940692 m!8133216))

(assert (=> b!7574065 d!2317769))

(declare-fun b!7574246 () Bool)

(declare-fun e!4508855 () Bool)

(declare-fun e!4508856 () Bool)

(assert (=> b!7574246 (= e!4508855 e!4508856)))

(declare-fun res!3034220 () Bool)

(assert (=> b!7574246 (= res!3034220 (not (nullable!8746 (reg!20371 (regTwo!40596 r!22341)))))))

(assert (=> b!7574246 (=> (not res!3034220) (not e!4508856))))

(declare-fun bm!694356 () Bool)

(declare-fun call!694362 () Bool)

(declare-fun call!694361 () Bool)

(assert (=> bm!694356 (= call!694362 call!694361)))

(declare-fun bm!694357 () Bool)

(declare-fun call!694363 () Bool)

(declare-fun c!1397307 () Bool)

(assert (=> bm!694357 (= call!694363 (validRegex!10470 (ite c!1397307 (regTwo!40597 (regTwo!40596 r!22341)) (regOne!40596 (regTwo!40596 r!22341)))))))

(declare-fun b!7574247 () Bool)

(declare-fun e!4508858 () Bool)

(assert (=> b!7574247 (= e!4508858 call!694363)))

(declare-fun b!7574248 () Bool)

(declare-fun e!4508861 () Bool)

(assert (=> b!7574248 (= e!4508861 call!694362)))

(declare-fun b!7574249 () Bool)

(declare-fun e!4508859 () Bool)

(assert (=> b!7574249 (= e!4508855 e!4508859)))

(assert (=> b!7574249 (= c!1397307 (is-Union!20042 (regTwo!40596 r!22341)))))

(declare-fun b!7574250 () Bool)

(declare-fun e!4508857 () Bool)

(assert (=> b!7574250 (= e!4508857 e!4508855)))

(declare-fun c!1397306 () Bool)

(assert (=> b!7574250 (= c!1397306 (is-Star!20042 (regTwo!40596 r!22341)))))

(declare-fun b!7574251 () Bool)

(assert (=> b!7574251 (= e!4508856 call!694361)))

(declare-fun d!2317773 () Bool)

(declare-fun res!3034222 () Bool)

(assert (=> d!2317773 (=> res!3034222 e!4508857)))

(assert (=> d!2317773 (= res!3034222 (is-ElementMatch!20042 (regTwo!40596 r!22341)))))

(assert (=> d!2317773 (= (validRegex!10470 (regTwo!40596 r!22341)) e!4508857)))

(declare-fun b!7574252 () Bool)

(declare-fun e!4508860 () Bool)

(assert (=> b!7574252 (= e!4508860 e!4508861)))

(declare-fun res!3034221 () Bool)

(assert (=> b!7574252 (=> (not res!3034221) (not e!4508861))))

(assert (=> b!7574252 (= res!3034221 call!694363)))

(declare-fun b!7574253 () Bool)

(declare-fun res!3034223 () Bool)

(assert (=> b!7574253 (=> res!3034223 e!4508860)))

(assert (=> b!7574253 (= res!3034223 (not (is-Concat!28887 (regTwo!40596 r!22341))))))

(assert (=> b!7574253 (= e!4508859 e!4508860)))

(declare-fun b!7574254 () Bool)

(declare-fun res!3034219 () Bool)

(assert (=> b!7574254 (=> (not res!3034219) (not e!4508858))))

(assert (=> b!7574254 (= res!3034219 call!694362)))

(assert (=> b!7574254 (= e!4508859 e!4508858)))

(declare-fun bm!694358 () Bool)

(assert (=> bm!694358 (= call!694361 (validRegex!10470 (ite c!1397306 (reg!20371 (regTwo!40596 r!22341)) (ite c!1397307 (regOne!40597 (regTwo!40596 r!22341)) (regTwo!40596 (regTwo!40596 r!22341))))))))

(assert (= (and d!2317773 (not res!3034222)) b!7574250))

(assert (= (and b!7574250 c!1397306) b!7574246))

(assert (= (and b!7574250 (not c!1397306)) b!7574249))

(assert (= (and b!7574246 res!3034220) b!7574251))

(assert (= (and b!7574249 c!1397307) b!7574254))

(assert (= (and b!7574249 (not c!1397307)) b!7574253))

(assert (= (and b!7574254 res!3034219) b!7574247))

(assert (= (and b!7574253 (not res!3034223)) b!7574252))

(assert (= (and b!7574252 res!3034221) b!7574248))

(assert (= (or b!7574247 b!7574252) bm!694357))

(assert (= (or b!7574254 b!7574248) bm!694356))

(assert (= (or b!7574251 bm!694356) bm!694358))

(declare-fun m!8133284 () Bool)

(assert (=> b!7574246 m!8133284))

(declare-fun m!8133286 () Bool)

(assert (=> bm!694357 m!8133286))

(declare-fun m!8133288 () Bool)

(assert (=> bm!694358 m!8133288))

(assert (=> b!7574059 d!2317773))

(declare-fun b!7574255 () Bool)

(declare-fun e!4508862 () Bool)

(declare-fun e!4508863 () Bool)

(assert (=> b!7574255 (= e!4508862 e!4508863)))

(declare-fun res!3034225 () Bool)

(assert (=> b!7574255 (= res!3034225 (not (nullable!8746 (reg!20371 r!22341))))))

(assert (=> b!7574255 (=> (not res!3034225) (not e!4508863))))

(declare-fun bm!694359 () Bool)

(declare-fun call!694365 () Bool)

(declare-fun call!694364 () Bool)

(assert (=> bm!694359 (= call!694365 call!694364)))

(declare-fun bm!694360 () Bool)

(declare-fun call!694366 () Bool)

(declare-fun c!1397309 () Bool)

(assert (=> bm!694360 (= call!694366 (validRegex!10470 (ite c!1397309 (regTwo!40597 r!22341) (regOne!40596 r!22341))))))

(declare-fun b!7574256 () Bool)

(declare-fun e!4508865 () Bool)

(assert (=> b!7574256 (= e!4508865 call!694366)))

(declare-fun b!7574257 () Bool)

(declare-fun e!4508868 () Bool)

(assert (=> b!7574257 (= e!4508868 call!694365)))

(declare-fun b!7574258 () Bool)

(declare-fun e!4508866 () Bool)

(assert (=> b!7574258 (= e!4508862 e!4508866)))

(assert (=> b!7574258 (= c!1397309 (is-Union!20042 r!22341))))

(declare-fun b!7574259 () Bool)

(declare-fun e!4508864 () Bool)

(assert (=> b!7574259 (= e!4508864 e!4508862)))

(declare-fun c!1397308 () Bool)

(assert (=> b!7574259 (= c!1397308 (is-Star!20042 r!22341))))

(declare-fun b!7574260 () Bool)

(assert (=> b!7574260 (= e!4508863 call!694364)))

(declare-fun d!2317775 () Bool)

(declare-fun res!3034227 () Bool)

(assert (=> d!2317775 (=> res!3034227 e!4508864)))

(assert (=> d!2317775 (= res!3034227 (is-ElementMatch!20042 r!22341))))

(assert (=> d!2317775 (= (validRegex!10470 r!22341) e!4508864)))

(declare-fun b!7574261 () Bool)

(declare-fun e!4508867 () Bool)

(assert (=> b!7574261 (= e!4508867 e!4508868)))

(declare-fun res!3034226 () Bool)

(assert (=> b!7574261 (=> (not res!3034226) (not e!4508868))))

(assert (=> b!7574261 (= res!3034226 call!694366)))

(declare-fun b!7574262 () Bool)

(declare-fun res!3034228 () Bool)

(assert (=> b!7574262 (=> res!3034228 e!4508867)))

(assert (=> b!7574262 (= res!3034228 (not (is-Concat!28887 r!22341)))))

(assert (=> b!7574262 (= e!4508866 e!4508867)))

(declare-fun b!7574263 () Bool)

(declare-fun res!3034224 () Bool)

(assert (=> b!7574263 (=> (not res!3034224) (not e!4508865))))

(assert (=> b!7574263 (= res!3034224 call!694365)))

(assert (=> b!7574263 (= e!4508866 e!4508865)))

(declare-fun bm!694361 () Bool)

(assert (=> bm!694361 (= call!694364 (validRegex!10470 (ite c!1397308 (reg!20371 r!22341) (ite c!1397309 (regOne!40597 r!22341) (regTwo!40596 r!22341)))))))

(assert (= (and d!2317775 (not res!3034227)) b!7574259))

(assert (= (and b!7574259 c!1397308) b!7574255))

(assert (= (and b!7574259 (not c!1397308)) b!7574258))

(assert (= (and b!7574255 res!3034225) b!7574260))

(assert (= (and b!7574258 c!1397309) b!7574263))

(assert (= (and b!7574258 (not c!1397309)) b!7574262))

(assert (= (and b!7574263 res!3034224) b!7574256))

(assert (= (and b!7574262 (not res!3034228)) b!7574261))

(assert (= (and b!7574261 res!3034226) b!7574257))

(assert (= (or b!7574256 b!7574261) bm!694360))

(assert (= (or b!7574263 b!7574257) bm!694359))

(assert (= (or b!7574260 bm!694359) bm!694361))

(declare-fun m!8133290 () Bool)

(assert (=> b!7574255 m!8133290))

(declare-fun m!8133292 () Bool)

(assert (=> bm!694360 m!8133292))

(declare-fun m!8133294 () Bool)

(assert (=> bm!694361 m!8133294))

(assert (=> start!731366 d!2317775))

(declare-fun d!2317777 () Bool)

(assert (=> d!2317777 (= (isEmpty!41461 s!13436) (is-Nil!72801 s!13436))))

(assert (=> b!7574058 d!2317777))

(declare-fun b!7574264 () Bool)

(declare-fun e!4508869 () Bool)

(declare-fun e!4508870 () Bool)

(assert (=> b!7574264 (= e!4508869 e!4508870)))

(declare-fun res!3034230 () Bool)

(assert (=> b!7574264 (= res!3034230 (not (nullable!8746 (reg!20371 (regOne!40596 r!22341)))))))

(assert (=> b!7574264 (=> (not res!3034230) (not e!4508870))))

(declare-fun bm!694362 () Bool)

(declare-fun call!694368 () Bool)

(declare-fun call!694367 () Bool)

(assert (=> bm!694362 (= call!694368 call!694367)))

(declare-fun bm!694363 () Bool)

(declare-fun call!694369 () Bool)

(declare-fun c!1397311 () Bool)

(assert (=> bm!694363 (= call!694369 (validRegex!10470 (ite c!1397311 (regTwo!40597 (regOne!40596 r!22341)) (regOne!40596 (regOne!40596 r!22341)))))))

(declare-fun b!7574265 () Bool)

(declare-fun e!4508872 () Bool)

(assert (=> b!7574265 (= e!4508872 call!694369)))

(declare-fun b!7574266 () Bool)

(declare-fun e!4508875 () Bool)

(assert (=> b!7574266 (= e!4508875 call!694368)))

(declare-fun b!7574267 () Bool)

(declare-fun e!4508873 () Bool)

(assert (=> b!7574267 (= e!4508869 e!4508873)))

(assert (=> b!7574267 (= c!1397311 (is-Union!20042 (regOne!40596 r!22341)))))

(declare-fun b!7574268 () Bool)

(declare-fun e!4508871 () Bool)

(assert (=> b!7574268 (= e!4508871 e!4508869)))

(declare-fun c!1397310 () Bool)

(assert (=> b!7574268 (= c!1397310 (is-Star!20042 (regOne!40596 r!22341)))))

(declare-fun b!7574269 () Bool)

(assert (=> b!7574269 (= e!4508870 call!694367)))

(declare-fun d!2317779 () Bool)

(declare-fun res!3034232 () Bool)

(assert (=> d!2317779 (=> res!3034232 e!4508871)))

(assert (=> d!2317779 (= res!3034232 (is-ElementMatch!20042 (regOne!40596 r!22341)))))

(assert (=> d!2317779 (= (validRegex!10470 (regOne!40596 r!22341)) e!4508871)))

(declare-fun b!7574270 () Bool)

(declare-fun e!4508874 () Bool)

(assert (=> b!7574270 (= e!4508874 e!4508875)))

(declare-fun res!3034231 () Bool)

(assert (=> b!7574270 (=> (not res!3034231) (not e!4508875))))

(assert (=> b!7574270 (= res!3034231 call!694369)))

(declare-fun b!7574271 () Bool)

(declare-fun res!3034233 () Bool)

(assert (=> b!7574271 (=> res!3034233 e!4508874)))

(assert (=> b!7574271 (= res!3034233 (not (is-Concat!28887 (regOne!40596 r!22341))))))

(assert (=> b!7574271 (= e!4508873 e!4508874)))

(declare-fun b!7574272 () Bool)

(declare-fun res!3034229 () Bool)

(assert (=> b!7574272 (=> (not res!3034229) (not e!4508872))))

(assert (=> b!7574272 (= res!3034229 call!694368)))

(assert (=> b!7574272 (= e!4508873 e!4508872)))

(declare-fun bm!694364 () Bool)

(assert (=> bm!694364 (= call!694367 (validRegex!10470 (ite c!1397310 (reg!20371 (regOne!40596 r!22341)) (ite c!1397311 (regOne!40597 (regOne!40596 r!22341)) (regTwo!40596 (regOne!40596 r!22341))))))))

(assert (= (and d!2317779 (not res!3034232)) b!7574268))

(assert (= (and b!7574268 c!1397310) b!7574264))

(assert (= (and b!7574268 (not c!1397310)) b!7574267))

(assert (= (and b!7574264 res!3034230) b!7574269))

(assert (= (and b!7574267 c!1397311) b!7574272))

(assert (= (and b!7574267 (not c!1397311)) b!7574271))

(assert (= (and b!7574272 res!3034229) b!7574265))

(assert (= (and b!7574271 (not res!3034233)) b!7574270))

(assert (= (and b!7574270 res!3034231) b!7574266))

(assert (= (or b!7574265 b!7574270) bm!694363))

(assert (= (or b!7574272 b!7574266) bm!694362))

(assert (= (or b!7574269 bm!694362) bm!694364))

(declare-fun m!8133296 () Bool)

(assert (=> b!7574264 m!8133296))

(declare-fun m!8133298 () Bool)

(assert (=> bm!694363 m!8133298))

(declare-fun m!8133300 () Bool)

(assert (=> bm!694364 m!8133300))

(assert (=> b!7574057 d!2317779))

(declare-fun bs!1940693 () Bool)

(declare-fun d!2317781 () Bool)

(assert (= bs!1940693 (and d!2317781 b!7574057)))

(declare-fun lambda!466554 () Int)

(assert (=> bs!1940693 (= lambda!466554 lambda!466532)))

(assert (=> bs!1940693 (not (= lambda!466554 lambda!466533))))

(declare-fun bs!1940694 () Bool)

(assert (= bs!1940694 (and d!2317781 b!7574153)))

(assert (=> bs!1940694 (not (= lambda!466554 lambda!466546))))

(declare-fun bs!1940695 () Bool)

(assert (= bs!1940695 (and d!2317781 b!7574148)))

(assert (=> bs!1940695 (not (= lambda!466554 lambda!466547))))

(assert (=> d!2317781 true))

(assert (=> d!2317781 true))

(assert (=> d!2317781 true))

(declare-fun lambda!466555 () Int)

(assert (=> bs!1940693 (= lambda!466555 lambda!466533)))

(declare-fun bs!1940696 () Bool)

(assert (= bs!1940696 d!2317781))

(assert (=> bs!1940696 (not (= lambda!466555 lambda!466554))))

(assert (=> bs!1940693 (not (= lambda!466555 lambda!466532))))

(assert (=> bs!1940695 (= lambda!466555 lambda!466547)))

(assert (=> bs!1940694 (not (= lambda!466555 lambda!466546))))

(assert (=> d!2317781 true))

(assert (=> d!2317781 true))

(assert (=> d!2317781 true))

(assert (=> d!2317781 (= (Exists!4285 lambda!466554) (Exists!4285 lambda!466555))))

(declare-fun lt!2651787 () Unit!167040)

(declare-fun choose!58556 (Regex!20042 Regex!20042 List!72925) Unit!167040)

(assert (=> d!2317781 (= lt!2651787 (choose!58556 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436))))

(assert (=> d!2317781 (validRegex!10470 (regOne!40596 r!22341))))

(assert (=> d!2317781 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2603 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436) lt!2651787)))

(declare-fun m!8133302 () Bool)

(assert (=> bs!1940696 m!8133302))

(declare-fun m!8133304 () Bool)

(assert (=> bs!1940696 m!8133304))

(declare-fun m!8133306 () Bool)

(assert (=> bs!1940696 m!8133306))

(assert (=> bs!1940696 m!8133210))

(assert (=> b!7574057 d!2317781))

(declare-fun bs!1940697 () Bool)

(declare-fun d!2317783 () Bool)

(assert (= bs!1940697 (and d!2317783 b!7574057)))

(declare-fun lambda!466560 () Int)

(assert (=> bs!1940697 (not (= lambda!466560 lambda!466533))))

(declare-fun bs!1940698 () Bool)

(assert (= bs!1940698 (and d!2317783 d!2317781)))

(assert (=> bs!1940698 (= lambda!466560 lambda!466554)))

(assert (=> bs!1940697 (= lambda!466560 lambda!466532)))

(declare-fun bs!1940699 () Bool)

(assert (= bs!1940699 (and d!2317783 b!7574148)))

(assert (=> bs!1940699 (not (= lambda!466560 lambda!466547))))

(declare-fun bs!1940700 () Bool)

(assert (= bs!1940700 (and d!2317783 b!7574153)))

(assert (=> bs!1940700 (not (= lambda!466560 lambda!466546))))

(assert (=> bs!1940698 (not (= lambda!466560 lambda!466555))))

(assert (=> d!2317783 true))

(assert (=> d!2317783 true))

(assert (=> d!2317783 true))

(assert (=> d!2317783 (= (isDefined!13921 (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) Nil!72801 s!13436 s!13436)) (Exists!4285 lambda!466560))))

(declare-fun lt!2651790 () Unit!167040)

(declare-fun choose!58557 (Regex!20042 Regex!20042 List!72925) Unit!167040)

(assert (=> d!2317783 (= lt!2651790 (choose!58557 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436))))

(assert (=> d!2317783 (validRegex!10470 (regOne!40596 r!22341))))

(assert (=> d!2317783 (= (lemmaFindConcatSeparationEquivalentToExists!3093 (regOne!40596 r!22341) (regTwo!40596 r!22341) s!13436) lt!2651790)))

(declare-fun bs!1940701 () Bool)

(assert (= bs!1940701 d!2317783))

(assert (=> bs!1940701 m!8133210))

(assert (=> bs!1940701 m!8133208))

(assert (=> bs!1940701 m!8133212))

(declare-fun m!8133308 () Bool)

(assert (=> bs!1940701 m!8133308))

(assert (=> bs!1940701 m!8133208))

(declare-fun m!8133310 () Bool)

(assert (=> bs!1940701 m!8133310))

(assert (=> b!7574057 d!2317783))

(declare-fun d!2317785 () Bool)

(declare-fun choose!58558 (Int) Bool)

(assert (=> d!2317785 (= (Exists!4285 lambda!466532) (choose!58558 lambda!466532))))

(declare-fun bs!1940702 () Bool)

(assert (= bs!1940702 d!2317785))

(declare-fun m!8133312 () Bool)

(assert (=> bs!1940702 m!8133312))

(assert (=> b!7574057 d!2317785))

(declare-fun b!7574347 () Bool)

(declare-fun e!4508918 () Bool)

(declare-fun lt!2651798 () Option!17275)

(declare-fun ++!17497 (List!72925 List!72925) List!72925)

(declare-fun get!25570 (Option!17275) tuple2!68878)

(assert (=> b!7574347 (= e!4508918 (= (++!17497 (_1!37742 (get!25570 lt!2651798)) (_2!37742 (get!25570 lt!2651798))) s!13436))))

(declare-fun b!7574348 () Bool)

(declare-fun res!3034277 () Bool)

(assert (=> b!7574348 (=> (not res!3034277) (not e!4508918))))

(assert (=> b!7574348 (= res!3034277 (matchR!9638 (regOne!40596 r!22341) (_1!37742 (get!25570 lt!2651798))))))

(declare-fun d!2317787 () Bool)

(declare-fun e!4508921 () Bool)

(assert (=> d!2317787 e!4508921))

(declare-fun res!3034276 () Bool)

(assert (=> d!2317787 (=> res!3034276 e!4508921)))

(assert (=> d!2317787 (= res!3034276 e!4508918)))

(declare-fun res!3034278 () Bool)

(assert (=> d!2317787 (=> (not res!3034278) (not e!4508918))))

(assert (=> d!2317787 (= res!3034278 (isDefined!13921 lt!2651798))))

(declare-fun e!4508919 () Option!17275)

(assert (=> d!2317787 (= lt!2651798 e!4508919)))

(declare-fun c!1397329 () Bool)

(declare-fun e!4508917 () Bool)

(assert (=> d!2317787 (= c!1397329 e!4508917)))

(declare-fun res!3034275 () Bool)

(assert (=> d!2317787 (=> (not res!3034275) (not e!4508917))))

(assert (=> d!2317787 (= res!3034275 (matchR!9638 (regOne!40596 r!22341) Nil!72801))))

(assert (=> d!2317787 (validRegex!10470 (regOne!40596 r!22341))))

(assert (=> d!2317787 (= (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) Nil!72801 s!13436 s!13436) lt!2651798)))

(declare-fun b!7574346 () Bool)

(assert (=> b!7574346 (= e!4508917 (matchR!9638 (regTwo!40596 r!22341) s!13436))))

(declare-fun b!7574349 () Bool)

(declare-fun res!3034279 () Bool)

(assert (=> b!7574349 (=> (not res!3034279) (not e!4508918))))

(assert (=> b!7574349 (= res!3034279 (matchR!9638 (regTwo!40596 r!22341) (_2!37742 (get!25570 lt!2651798))))))

(declare-fun b!7574350 () Bool)

(declare-fun e!4508920 () Option!17275)

(assert (=> b!7574350 (= e!4508919 e!4508920)))

(declare-fun c!1397328 () Bool)

(assert (=> b!7574350 (= c!1397328 (is-Nil!72801 s!13436))))

(declare-fun b!7574351 () Bool)

(assert (=> b!7574351 (= e!4508919 (Some!17274 (tuple2!68879 Nil!72801 s!13436)))))

(declare-fun b!7574352 () Bool)

(declare-fun lt!2651797 () Unit!167040)

(declare-fun lt!2651799 () Unit!167040)

(assert (=> b!7574352 (= lt!2651797 lt!2651799)))

(assert (=> b!7574352 (= (++!17497 (++!17497 Nil!72801 (Cons!72801 (h!79249 s!13436) Nil!72801)) (t!387660 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3185 (List!72925 C!40410 List!72925 List!72925) Unit!167040)

(assert (=> b!7574352 (= lt!2651799 (lemmaMoveElementToOtherListKeepsConcatEq!3185 Nil!72801 (h!79249 s!13436) (t!387660 s!13436) s!13436))))

(assert (=> b!7574352 (= e!4508920 (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) (++!17497 Nil!72801 (Cons!72801 (h!79249 s!13436) Nil!72801)) (t!387660 s!13436) s!13436))))

(declare-fun b!7574353 () Bool)

(assert (=> b!7574353 (= e!4508921 (not (isDefined!13921 lt!2651798)))))

(declare-fun b!7574354 () Bool)

(assert (=> b!7574354 (= e!4508920 None!17274)))

(assert (= (and d!2317787 res!3034275) b!7574346))

(assert (= (and d!2317787 c!1397329) b!7574351))

(assert (= (and d!2317787 (not c!1397329)) b!7574350))

(assert (= (and b!7574350 c!1397328) b!7574354))

(assert (= (and b!7574350 (not c!1397328)) b!7574352))

(assert (= (and d!2317787 res!3034278) b!7574348))

(assert (= (and b!7574348 res!3034277) b!7574349))

(assert (= (and b!7574349 res!3034279) b!7574347))

(assert (= (and d!2317787 (not res!3034276)) b!7574353))

(declare-fun m!8133320 () Bool)

(assert (=> b!7574349 m!8133320))

(declare-fun m!8133322 () Bool)

(assert (=> b!7574349 m!8133322))

(declare-fun m!8133324 () Bool)

(assert (=> b!7574353 m!8133324))

(assert (=> b!7574347 m!8133320))

(declare-fun m!8133326 () Bool)

(assert (=> b!7574347 m!8133326))

(assert (=> b!7574348 m!8133320))

(declare-fun m!8133328 () Bool)

(assert (=> b!7574348 m!8133328))

(assert (=> d!2317787 m!8133324))

(declare-fun m!8133330 () Bool)

(assert (=> d!2317787 m!8133330))

(assert (=> d!2317787 m!8133210))

(declare-fun m!8133332 () Bool)

(assert (=> b!7574346 m!8133332))

(declare-fun m!8133334 () Bool)

(assert (=> b!7574352 m!8133334))

(assert (=> b!7574352 m!8133334))

(declare-fun m!8133336 () Bool)

(assert (=> b!7574352 m!8133336))

(declare-fun m!8133338 () Bool)

(assert (=> b!7574352 m!8133338))

(assert (=> b!7574352 m!8133334))

(declare-fun m!8133340 () Bool)

(assert (=> b!7574352 m!8133340))

(assert (=> b!7574057 d!2317787))

(declare-fun d!2317791 () Bool)

(assert (=> d!2317791 (= (Exists!4285 lambda!466533) (choose!58558 lambda!466533))))

(declare-fun bs!1940706 () Bool)

(assert (= bs!1940706 d!2317791))

(declare-fun m!8133342 () Bool)

(assert (=> bs!1940706 m!8133342))

(assert (=> b!7574057 d!2317791))

(declare-fun d!2317793 () Bool)

(declare-fun isEmpty!41463 (Option!17275) Bool)

(assert (=> d!2317793 (= (isDefined!13921 (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) Nil!72801 s!13436 s!13436)) (not (isEmpty!41463 (findConcatSeparation!3335 (regOne!40596 r!22341) (regTwo!40596 r!22341) Nil!72801 s!13436 s!13436))))))

(declare-fun bs!1940707 () Bool)

(assert (= bs!1940707 d!2317793))

(assert (=> bs!1940707 m!8133208))

(declare-fun m!8133344 () Bool)

(assert (=> bs!1940707 m!8133344))

(assert (=> b!7574057 d!2317793))

(declare-fun d!2317795 () Bool)

(declare-fun lostCauseFct!485 (Regex!20042) Bool)

(assert (=> d!2317795 (= (lostCause!1818 r!22341) (lostCauseFct!485 r!22341))))

(declare-fun bs!1940708 () Bool)

(assert (= bs!1940708 d!2317795))

(declare-fun m!8133346 () Bool)

(assert (=> bs!1940708 m!8133346))

(assert (=> b!7574061 d!2317795))

(declare-fun b!7574366 () Bool)

(declare-fun e!4508924 () Bool)

(declare-fun tp!2207129 () Bool)

(declare-fun tp!2207132 () Bool)

(assert (=> b!7574366 (= e!4508924 (and tp!2207129 tp!2207132))))

(declare-fun b!7574367 () Bool)

(declare-fun tp!2207128 () Bool)

(assert (=> b!7574367 (= e!4508924 tp!2207128)))

(declare-fun b!7574368 () Bool)

(declare-fun tp!2207131 () Bool)

(declare-fun tp!2207130 () Bool)

(assert (=> b!7574368 (= e!4508924 (and tp!2207131 tp!2207130))))

(assert (=> b!7574060 (= tp!2207094 e!4508924)))

(declare-fun b!7574365 () Bool)

(assert (=> b!7574365 (= e!4508924 tp_is_empty!50439)))

(assert (= (and b!7574060 (is-ElementMatch!20042 (reg!20371 r!22341))) b!7574365))

(assert (= (and b!7574060 (is-Concat!28887 (reg!20371 r!22341))) b!7574366))

(assert (= (and b!7574060 (is-Star!20042 (reg!20371 r!22341))) b!7574367))

(assert (= (and b!7574060 (is-Union!20042 (reg!20371 r!22341))) b!7574368))

(declare-fun b!7574370 () Bool)

(declare-fun e!4508925 () Bool)

(declare-fun tp!2207134 () Bool)

(declare-fun tp!2207137 () Bool)

(assert (=> b!7574370 (= e!4508925 (and tp!2207134 tp!2207137))))

(declare-fun b!7574371 () Bool)

(declare-fun tp!2207133 () Bool)

(assert (=> b!7574371 (= e!4508925 tp!2207133)))

(declare-fun b!7574372 () Bool)

(declare-fun tp!2207136 () Bool)

(declare-fun tp!2207135 () Bool)

(assert (=> b!7574372 (= e!4508925 (and tp!2207136 tp!2207135))))

(assert (=> b!7574063 (= tp!2207098 e!4508925)))

(declare-fun b!7574369 () Bool)

(assert (=> b!7574369 (= e!4508925 tp_is_empty!50439)))

(assert (= (and b!7574063 (is-ElementMatch!20042 (regOne!40597 r!22341))) b!7574369))

(assert (= (and b!7574063 (is-Concat!28887 (regOne!40597 r!22341))) b!7574370))

(assert (= (and b!7574063 (is-Star!20042 (regOne!40597 r!22341))) b!7574371))

(assert (= (and b!7574063 (is-Union!20042 (regOne!40597 r!22341))) b!7574372))

(declare-fun b!7574374 () Bool)

(declare-fun e!4508926 () Bool)

(declare-fun tp!2207139 () Bool)

(declare-fun tp!2207142 () Bool)

(assert (=> b!7574374 (= e!4508926 (and tp!2207139 tp!2207142))))

(declare-fun b!7574375 () Bool)

(declare-fun tp!2207138 () Bool)

(assert (=> b!7574375 (= e!4508926 tp!2207138)))

(declare-fun b!7574376 () Bool)

(declare-fun tp!2207141 () Bool)

(declare-fun tp!2207140 () Bool)

(assert (=> b!7574376 (= e!4508926 (and tp!2207141 tp!2207140))))

(assert (=> b!7574063 (= tp!2207099 e!4508926)))

(declare-fun b!7574373 () Bool)

(assert (=> b!7574373 (= e!4508926 tp_is_empty!50439)))

(assert (= (and b!7574063 (is-ElementMatch!20042 (regTwo!40597 r!22341))) b!7574373))

(assert (= (and b!7574063 (is-Concat!28887 (regTwo!40597 r!22341))) b!7574374))

(assert (= (and b!7574063 (is-Star!20042 (regTwo!40597 r!22341))) b!7574375))

(assert (= (and b!7574063 (is-Union!20042 (regTwo!40597 r!22341))) b!7574376))

(declare-fun b!7574378 () Bool)

(declare-fun e!4508927 () Bool)

(declare-fun tp!2207144 () Bool)

(declare-fun tp!2207147 () Bool)

(assert (=> b!7574378 (= e!4508927 (and tp!2207144 tp!2207147))))

(declare-fun b!7574379 () Bool)

(declare-fun tp!2207143 () Bool)

(assert (=> b!7574379 (= e!4508927 tp!2207143)))

(declare-fun b!7574380 () Bool)

(declare-fun tp!2207146 () Bool)

(declare-fun tp!2207145 () Bool)

(assert (=> b!7574380 (= e!4508927 (and tp!2207146 tp!2207145))))

(assert (=> b!7574062 (= tp!2207097 e!4508927)))

(declare-fun b!7574377 () Bool)

(assert (=> b!7574377 (= e!4508927 tp_is_empty!50439)))

(assert (= (and b!7574062 (is-ElementMatch!20042 (regOne!40596 r!22341))) b!7574377))

(assert (= (and b!7574062 (is-Concat!28887 (regOne!40596 r!22341))) b!7574378))

(assert (= (and b!7574062 (is-Star!20042 (regOne!40596 r!22341))) b!7574379))

(assert (= (and b!7574062 (is-Union!20042 (regOne!40596 r!22341))) b!7574380))

(declare-fun b!7574382 () Bool)

(declare-fun e!4508928 () Bool)

(declare-fun tp!2207149 () Bool)

(declare-fun tp!2207152 () Bool)

(assert (=> b!7574382 (= e!4508928 (and tp!2207149 tp!2207152))))

(declare-fun b!7574383 () Bool)

(declare-fun tp!2207148 () Bool)

(assert (=> b!7574383 (= e!4508928 tp!2207148)))

(declare-fun b!7574384 () Bool)

(declare-fun tp!2207151 () Bool)

(declare-fun tp!2207150 () Bool)

(assert (=> b!7574384 (= e!4508928 (and tp!2207151 tp!2207150))))

(assert (=> b!7574062 (= tp!2207096 e!4508928)))

(declare-fun b!7574381 () Bool)

(assert (=> b!7574381 (= e!4508928 tp_is_empty!50439)))

(assert (= (and b!7574062 (is-ElementMatch!20042 (regTwo!40596 r!22341))) b!7574381))

(assert (= (and b!7574062 (is-Concat!28887 (regTwo!40596 r!22341))) b!7574382))

(assert (= (and b!7574062 (is-Star!20042 (regTwo!40596 r!22341))) b!7574383))

(assert (= (and b!7574062 (is-Union!20042 (regTwo!40596 r!22341))) b!7574384))

(declare-fun b!7574389 () Bool)

(declare-fun e!4508931 () Bool)

(declare-fun tp!2207155 () Bool)

(assert (=> b!7574389 (= e!4508931 (and tp_is_empty!50439 tp!2207155))))

(assert (=> b!7574056 (= tp!2207095 e!4508931)))

(assert (= (and b!7574056 (is-Cons!72801 (t!387660 s!13436))) b!7574389))

(push 1)

(assert (not b!7574384))

(assert (not b!7574208))

(assert (not b!7574264))

(assert (not bm!694363))

(assert (not bm!694361))

(assert (not b!7574150))

(assert (not b!7574382))

(assert (not d!2317781))

(assert (not b!7574376))

(assert (not bm!694336))

(assert (not bm!694337))

(assert (not b!7574372))

(assert (not bm!694364))

(assert (not d!2317787))

(assert (not d!2317769))

(assert (not b!7574348))

(assert (not b!7574210))

(assert (not b!7574368))

(assert (not b!7574370))

(assert (not d!2317795))

(assert (not b!7574374))

(assert (not b!7574215))

(assert (not b!7574352))

(assert (not b!7574383))

(assert (not bm!694360))

(assert (not b!7574255))

(assert (not b!7574347))

(assert (not b!7574371))

(assert (not d!2317785))

(assert (not b!7574353))

(assert (not b!7574209))

(assert (not b!7574152))

(assert (not bm!694346))

(assert (not d!2317793))

(assert (not b!7574246))

(assert (not d!2317783))

(assert (not b!7574346))

(assert (not b!7574213))

(assert (not b!7574378))

(assert (not bm!694357))

(assert (not b!7574366))

(assert (not bm!694358))

(assert (not b!7574379))

(assert (not b!7574214))

(assert (not d!2317791))

(assert (not b!7574349))

(assert (not b!7574375))

(assert (not d!2317767))

(assert (not b!7574367))

(assert (not b!7574389))

(assert tp_is_empty!50439)

(assert (not b!7574380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

