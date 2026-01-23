; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718318 () Bool)

(assert start!718318)

(declare-fun b!7356148 () Bool)

(declare-fun e!4404462 () Bool)

(declare-fun tp_is_empty!48633 () Bool)

(assert (=> b!7356148 (= e!4404462 tp_is_empty!48633)))

(declare-fun b!7356149 () Bool)

(declare-fun tp!2089608 () Bool)

(assert (=> b!7356149 (= e!4404462 tp!2089608)))

(declare-fun b!7356150 () Bool)

(declare-fun e!4404465 () Bool)

(declare-datatypes ((C!38662 0))(
  ( (C!38663 (val!29691 Int)) )
))
(declare-datatypes ((Regex!19194 0))(
  ( (ElementMatch!19194 (c!1366748 C!38662)) (Concat!28039 (regOne!38900 Regex!19194) (regTwo!38900 Regex!19194)) (EmptyExpr!19194) (Star!19194 (reg!19523 Regex!19194)) (EmptyLang!19194) (Union!19194 (regOne!38901 Regex!19194) (regTwo!38901 Regex!19194)) )
))
(declare-fun r1!2370 () Regex!19194)

(declare-fun nullable!8285 (Regex!19194) Bool)

(assert (=> b!7356150 (= e!4404465 (not (nullable!8285 (regOne!38900 r1!2370))))))

(declare-fun b!7356151 () Bool)

(declare-fun e!4404459 () Bool)

(declare-fun tp!2089613 () Bool)

(assert (=> b!7356151 (= e!4404459 tp!2089613)))

(declare-fun b!7356152 () Bool)

(declare-fun tp!2089607 () Bool)

(declare-fun tp!2089610 () Bool)

(assert (=> b!7356152 (= e!4404462 (and tp!2089607 tp!2089610))))

(declare-fun b!7356153 () Bool)

(declare-fun e!4404460 () Bool)

(declare-fun e!4404457 () Bool)

(assert (=> b!7356153 (= e!4404460 e!4404457)))

(declare-fun res!2970340 () Bool)

(assert (=> b!7356153 (=> (not res!2970340) (not e!4404457))))

(declare-fun c!10362 () C!38662)

(declare-datatypes ((List!71690 0))(
  ( (Nil!71566) (Cons!71566 (h!78014 Regex!19194) (t!386131 List!71690)) )
))
(declare-datatypes ((Context!16268 0))(
  ( (Context!16269 (exprs!8634 List!71690)) )
))
(declare-fun lt!2613315 () Context!16268)

(declare-fun lt!2613319 () (Set Context!16268))

(declare-fun derivationStepZipperDown!3020 (Regex!19194 Context!16268 C!38662) (Set Context!16268))

(assert (=> b!7356153 (= res!2970340 (= lt!2613319 (derivationStepZipperDown!3020 (reg!19523 r1!2370) lt!2613315 c!10362)))))

(declare-fun lt!2613313 () List!71690)

(assert (=> b!7356153 (= lt!2613315 (Context!16269 lt!2613313))))

(declare-fun ct1!282 () Context!16268)

(declare-fun lt!2613308 () Regex!19194)

(declare-fun $colon$colon!3191 (List!71690 Regex!19194) List!71690)

(assert (=> b!7356153 (= lt!2613313 ($colon$colon!3191 (exprs!8634 ct1!282) lt!2613308))))

(declare-fun b!7356154 () Bool)

(declare-fun tp!2089606 () Bool)

(declare-fun tp!2089609 () Bool)

(assert (=> b!7356154 (= e!4404462 (and tp!2089606 tp!2089609))))

(declare-fun b!7356155 () Bool)

(declare-fun e!4404463 () Bool)

(declare-fun tp!2089611 () Bool)

(assert (=> b!7356155 (= e!4404463 tp!2089611)))

(declare-fun b!7356156 () Bool)

(declare-fun e!4404467 () Bool)

(declare-fun e!4404464 () Bool)

(assert (=> b!7356156 (= e!4404467 e!4404464)))

(declare-fun res!2970348 () Bool)

(assert (=> b!7356156 (=> (not res!2970348) (not e!4404464))))

(declare-fun cWitness!61 () Context!16268)

(assert (=> b!7356156 (= res!2970348 (set.member cWitness!61 lt!2613319))))

(assert (=> b!7356156 (= lt!2613319 (derivationStepZipperDown!3020 r1!2370 ct1!282 c!10362))))

(declare-fun b!7356157 () Bool)

(declare-fun res!2970342 () Bool)

(declare-fun e!4404466 () Bool)

(assert (=> b!7356157 (=> (not res!2970342) (not e!4404466))))

(assert (=> b!7356157 (= res!2970342 (and (not (is-Concat!28039 r1!2370)) (is-Star!19194 r1!2370)))))

(declare-fun b!7356158 () Bool)

(declare-fun e!4404461 () Bool)

(assert (=> b!7356158 (= e!4404457 (not e!4404461))))

(declare-fun res!2970339 () Bool)

(assert (=> b!7356158 (=> res!2970339 e!4404461)))

(declare-fun lt!2613318 () Context!16268)

(declare-fun lt!2613310 () (Set Context!16268))

(assert (=> b!7356158 (= res!2970339 (not (set.member lt!2613318 lt!2613310)))))

(declare-fun ct2!378 () Context!16268)

(declare-fun lambda!457036 () Int)

(declare-datatypes ((Unit!165341 0))(
  ( (Unit!165342) )
))
(declare-fun lt!2613314 () Unit!165341)

(declare-fun lemmaConcatPreservesForall!1869 (List!71690 List!71690 Int) Unit!165341)

(assert (=> b!7356158 (= lt!2613314 (lemmaConcatPreservesForall!1869 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457036))))

(declare-fun ++!17012 (List!71690 List!71690) List!71690)

(assert (=> b!7356158 (set.member lt!2613318 (derivationStepZipperDown!3020 (reg!19523 r1!2370) (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378))) c!10362))))

(assert (=> b!7356158 (= lt!2613318 (Context!16269 (++!17012 (exprs!8634 cWitness!61) (exprs!8634 ct2!378))))))

(declare-fun lt!2613311 () Unit!165341)

(assert (=> b!7356158 (= lt!2613311 (lemmaConcatPreservesForall!1869 lt!2613313 (exprs!8634 ct2!378) lambda!457036))))

(declare-fun lt!2613312 () Unit!165341)

(assert (=> b!7356158 (= lt!2613312 (lemmaConcatPreservesForall!1869 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457036))))

(declare-fun lt!2613309 () Unit!165341)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!111 (Regex!19194 Context!16268 Context!16268 Context!16268 C!38662) Unit!165341)

(assert (=> b!7356158 (= lt!2613309 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!111 (reg!19523 r1!2370) lt!2613315 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7356159 () Bool)

(declare-fun res!2970346 () Bool)

(assert (=> b!7356159 (=> (not res!2970346) (not e!4404466))))

(assert (=> b!7356159 (= res!2970346 e!4404465)))

(declare-fun res!2970347 () Bool)

(assert (=> b!7356159 (=> res!2970347 e!4404465)))

(assert (=> b!7356159 (= res!2970347 (not (is-Concat!28039 r1!2370)))))

(declare-fun b!7356160 () Bool)

(declare-fun e!4404458 () Bool)

(declare-fun forall!18014 (List!71690 Int) Bool)

(assert (=> b!7356160 (= e!4404458 (forall!18014 (exprs!8634 ct2!378) lambda!457036))))

(declare-fun res!2970343 () Bool)

(assert (=> start!718318 (=> (not res!2970343) (not e!4404467))))

(declare-fun validRegex!9790 (Regex!19194) Bool)

(assert (=> start!718318 (= res!2970343 (validRegex!9790 r1!2370))))

(assert (=> start!718318 e!4404467))

(assert (=> start!718318 tp_is_empty!48633))

(declare-fun inv!91326 (Context!16268) Bool)

(assert (=> start!718318 (and (inv!91326 cWitness!61) e!4404463)))

(assert (=> start!718318 (and (inv!91326 ct1!282) e!4404459)))

(assert (=> start!718318 e!4404462))

(declare-fun e!4404468 () Bool)

(assert (=> start!718318 (and (inv!91326 ct2!378) e!4404468)))

(declare-fun b!7356161 () Bool)

(assert (=> b!7356161 (= e!4404464 e!4404466)))

(declare-fun res!2970345 () Bool)

(assert (=> b!7356161 (=> (not res!2970345) (not e!4404466))))

(assert (=> b!7356161 (= res!2970345 (and (or (not (is-ElementMatch!19194 r1!2370)) (not (= c!10362 (c!1366748 r1!2370)))) (not (is-Union!19194 r1!2370))))))

(assert (=> b!7356161 (= lt!2613310 (derivationStepZipperDown!3020 r1!2370 (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378))) c!10362))))

(declare-fun lt!2613317 () Unit!165341)

(assert (=> b!7356161 (= lt!2613317 (lemmaConcatPreservesForall!1869 (exprs!8634 ct1!282) (exprs!8634 ct2!378) lambda!457036))))

(declare-fun b!7356162 () Bool)

(assert (=> b!7356162 (= e!4404461 e!4404458)))

(declare-fun res!2970341 () Bool)

(assert (=> b!7356162 (=> res!2970341 e!4404458)))

(assert (=> b!7356162 (= res!2970341 (not (forall!18014 (exprs!8634 ct1!282) lambda!457036)))))

(declare-fun lt!2613316 () Unit!165341)

(assert (=> b!7356162 (= lt!2613316 (lemmaConcatPreservesForall!1869 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457036))))

(declare-fun b!7356163 () Bool)

(assert (=> b!7356163 (= e!4404466 e!4404460)))

(declare-fun res!2970344 () Bool)

(assert (=> b!7356163 (=> (not res!2970344) (not e!4404460))))

(assert (=> b!7356163 (= res!2970344 (validRegex!9790 lt!2613308))))

(assert (=> b!7356163 (= lt!2613308 (Star!19194 (reg!19523 r1!2370)))))

(declare-fun b!7356164 () Bool)

(declare-fun tp!2089612 () Bool)

(assert (=> b!7356164 (= e!4404468 tp!2089612)))

(assert (= (and start!718318 res!2970343) b!7356156))

(assert (= (and b!7356156 res!2970348) b!7356161))

(assert (= (and b!7356161 res!2970345) b!7356159))

(assert (= (and b!7356159 (not res!2970347)) b!7356150))

(assert (= (and b!7356159 res!2970346) b!7356157))

(assert (= (and b!7356157 res!2970342) b!7356163))

(assert (= (and b!7356163 res!2970344) b!7356153))

(assert (= (and b!7356153 res!2970340) b!7356158))

(assert (= (and b!7356158 (not res!2970339)) b!7356162))

(assert (= (and b!7356162 (not res!2970341)) b!7356160))

(assert (= start!718318 b!7356155))

(assert (= start!718318 b!7356151))

(assert (= (and start!718318 (is-ElementMatch!19194 r1!2370)) b!7356148))

(assert (= (and start!718318 (is-Concat!28039 r1!2370)) b!7356152))

(assert (= (and start!718318 (is-Star!19194 r1!2370)) b!7356149))

(assert (= (and start!718318 (is-Union!19194 r1!2370)) b!7356154))

(assert (= start!718318 b!7356164))

(declare-fun m!8015994 () Bool)

(assert (=> b!7356162 m!8015994))

(declare-fun m!8015996 () Bool)

(assert (=> b!7356162 m!8015996))

(declare-fun m!8015998 () Bool)

(assert (=> b!7356161 m!8015998))

(declare-fun m!8016000 () Bool)

(assert (=> b!7356161 m!8016000))

(declare-fun m!8016002 () Bool)

(assert (=> b!7356161 m!8016002))

(declare-fun m!8016004 () Bool)

(assert (=> b!7356163 m!8016004))

(declare-fun m!8016006 () Bool)

(assert (=> b!7356150 m!8016006))

(declare-fun m!8016008 () Bool)

(assert (=> b!7356160 m!8016008))

(declare-fun m!8016010 () Bool)

(assert (=> b!7356156 m!8016010))

(declare-fun m!8016012 () Bool)

(assert (=> b!7356156 m!8016012))

(declare-fun m!8016014 () Bool)

(assert (=> b!7356153 m!8016014))

(declare-fun m!8016016 () Bool)

(assert (=> b!7356153 m!8016016))

(declare-fun m!8016018 () Bool)

(assert (=> start!718318 m!8016018))

(declare-fun m!8016020 () Bool)

(assert (=> start!718318 m!8016020))

(declare-fun m!8016022 () Bool)

(assert (=> start!718318 m!8016022))

(declare-fun m!8016024 () Bool)

(assert (=> start!718318 m!8016024))

(declare-fun m!8016026 () Bool)

(assert (=> b!7356158 m!8016026))

(declare-fun m!8016028 () Bool)

(assert (=> b!7356158 m!8016028))

(declare-fun m!8016030 () Bool)

(assert (=> b!7356158 m!8016030))

(assert (=> b!7356158 m!8015996))

(declare-fun m!8016032 () Bool)

(assert (=> b!7356158 m!8016032))

(declare-fun m!8016034 () Bool)

(assert (=> b!7356158 m!8016034))

(declare-fun m!8016036 () Bool)

(assert (=> b!7356158 m!8016036))

(assert (=> b!7356158 m!8015996))

(declare-fun m!8016038 () Bool)

(assert (=> b!7356158 m!8016038))

(push 1)

(assert (not b!7356158))

(assert (not b!7356151))

(assert (not b!7356150))

(assert (not b!7356160))

(assert (not b!7356152))

(assert (not b!7356156))

(assert tp_is_empty!48633)

(assert (not b!7356154))

(assert (not b!7356155))

(assert (not b!7356162))

(assert (not start!718318))

(assert (not b!7356153))

(assert (not b!7356164))

(assert (not b!7356163))

(assert (not b!7356149))

(assert (not b!7356161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2281496 () Bool)

(declare-fun res!2970383 () Bool)

(declare-fun e!4404509 () Bool)

(assert (=> d!2281496 (=> res!2970383 e!4404509)))

(assert (=> d!2281496 (= res!2970383 (is-Nil!71566 (exprs!8634 ct1!282)))))

(assert (=> d!2281496 (= (forall!18014 (exprs!8634 ct1!282) lambda!457036) e!4404509)))

(declare-fun b!7356220 () Bool)

(declare-fun e!4404510 () Bool)

(assert (=> b!7356220 (= e!4404509 e!4404510)))

(declare-fun res!2970384 () Bool)

(assert (=> b!7356220 (=> (not res!2970384) (not e!4404510))))

(declare-fun dynLambda!29511 (Int Regex!19194) Bool)

(assert (=> b!7356220 (= res!2970384 (dynLambda!29511 lambda!457036 (h!78014 (exprs!8634 ct1!282))))))

(declare-fun b!7356221 () Bool)

(assert (=> b!7356221 (= e!4404510 (forall!18014 (t!386131 (exprs!8634 ct1!282)) lambda!457036))))

(assert (= (and d!2281496 (not res!2970383)) b!7356220))

(assert (= (and b!7356220 res!2970384) b!7356221))

(declare-fun b_lambda!284251 () Bool)

(assert (=> (not b_lambda!284251) (not b!7356220)))

(declare-fun m!8016086 () Bool)

(assert (=> b!7356220 m!8016086))

(declare-fun m!8016088 () Bool)

(assert (=> b!7356221 m!8016088))

(assert (=> b!7356162 d!2281496))

(declare-fun d!2281500 () Bool)

(assert (=> d!2281500 (forall!18014 (++!17012 (exprs!8634 cWitness!61) (exprs!8634 ct2!378)) lambda!457036)))

(declare-fun lt!2613358 () Unit!165341)

(declare-fun choose!57224 (List!71690 List!71690 Int) Unit!165341)

(assert (=> d!2281500 (= lt!2613358 (choose!57224 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457036))))

(assert (=> d!2281500 (forall!18014 (exprs!8634 cWitness!61) lambda!457036)))

(assert (=> d!2281500 (= (lemmaConcatPreservesForall!1869 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457036) lt!2613358)))

(declare-fun bs!1919766 () Bool)

(assert (= bs!1919766 d!2281500))

(assert (=> bs!1919766 m!8016034))

(assert (=> bs!1919766 m!8016034))

(declare-fun m!8016090 () Bool)

(assert (=> bs!1919766 m!8016090))

(declare-fun m!8016092 () Bool)

(assert (=> bs!1919766 m!8016092))

(declare-fun m!8016094 () Bool)

(assert (=> bs!1919766 m!8016094))

(assert (=> b!7356162 d!2281500))

(declare-fun d!2281502 () Bool)

(declare-fun nullableFct!3312 (Regex!19194) Bool)

(assert (=> d!2281502 (= (nullable!8285 (regOne!38900 r1!2370)) (nullableFct!3312 (regOne!38900 r1!2370)))))

(declare-fun bs!1919767 () Bool)

(assert (= bs!1919767 d!2281502))

(declare-fun m!8016096 () Bool)

(assert (=> bs!1919767 m!8016096))

(assert (=> b!7356150 d!2281502))

(declare-fun call!673535 () (Set Context!16268))

(declare-fun bm!673528 () Bool)

(declare-fun c!1366766 () Bool)

(declare-fun call!673536 () List!71690)

(declare-fun c!1366768 () Bool)

(declare-fun c!1366770 () Bool)

(assert (=> bm!673528 (= call!673535 (derivationStepZipperDown!3020 (ite c!1366770 (regTwo!38901 r1!2370) (ite c!1366768 (regTwo!38900 r1!2370) (ite c!1366766 (regOne!38900 r1!2370) (reg!19523 r1!2370)))) (ite (or c!1366770 c!1366768) ct1!282 (Context!16269 call!673536)) c!10362))))

(declare-fun d!2281504 () Bool)

(declare-fun c!1366769 () Bool)

(assert (=> d!2281504 (= c!1366769 (and (is-ElementMatch!19194 r1!2370) (= (c!1366748 r1!2370) c!10362)))))

(declare-fun e!4404544 () (Set Context!16268))

(assert (=> d!2281504 (= (derivationStepZipperDown!3020 r1!2370 ct1!282 c!10362) e!4404544)))

(declare-fun b!7356271 () Bool)

(declare-fun e!4404549 () Bool)

(assert (=> b!7356271 (= e!4404549 (nullable!8285 (regOne!38900 r1!2370)))))

(declare-fun b!7356272 () Bool)

(declare-fun e!4404547 () (Set Context!16268))

(declare-fun e!4404545 () (Set Context!16268))

(assert (=> b!7356272 (= e!4404547 e!4404545)))

(assert (=> b!7356272 (= c!1366766 (is-Concat!28039 r1!2370))))

(declare-fun b!7356273 () Bool)

(declare-fun c!1366767 () Bool)

(assert (=> b!7356273 (= c!1366767 (is-Star!19194 r1!2370))))

(declare-fun e!4404546 () (Set Context!16268))

(assert (=> b!7356273 (= e!4404545 e!4404546)))

(declare-fun call!673533 () List!71690)

(declare-fun call!673537 () (Set Context!16268))

(declare-fun bm!673529 () Bool)

(assert (=> bm!673529 (= call!673537 (derivationStepZipperDown!3020 (ite c!1366770 (regOne!38901 r1!2370) (regOne!38900 r1!2370)) (ite c!1366770 ct1!282 (Context!16269 call!673533)) c!10362))))

(declare-fun b!7356274 () Bool)

(declare-fun e!4404548 () (Set Context!16268))

(assert (=> b!7356274 (= e!4404548 (set.union call!673537 call!673535))))

(declare-fun b!7356275 () Bool)

(declare-fun call!673534 () (Set Context!16268))

(assert (=> b!7356275 (= e!4404547 (set.union call!673537 call!673534))))

(declare-fun bm!673530 () Bool)

(assert (=> bm!673530 (= call!673533 ($colon$colon!3191 (exprs!8634 ct1!282) (ite (or c!1366768 c!1366766) (regTwo!38900 r1!2370) r1!2370)))))

(declare-fun b!7356276 () Bool)

(declare-fun call!673538 () (Set Context!16268))

(assert (=> b!7356276 (= e!4404545 call!673538)))

(declare-fun b!7356277 () Bool)

(assert (=> b!7356277 (= e!4404544 e!4404548)))

(assert (=> b!7356277 (= c!1366770 (is-Union!19194 r1!2370))))

(declare-fun b!7356278 () Bool)

(assert (=> b!7356278 (= e!4404546 call!673538)))

(declare-fun b!7356279 () Bool)

(assert (=> b!7356279 (= e!4404546 (as set.empty (Set Context!16268)))))

(declare-fun bm!673531 () Bool)

(assert (=> bm!673531 (= call!673536 call!673533)))

(declare-fun bm!673532 () Bool)

(assert (=> bm!673532 (= call!673534 call!673535)))

(declare-fun bm!673533 () Bool)

(assert (=> bm!673533 (= call!673538 call!673534)))

(declare-fun b!7356280 () Bool)

(assert (=> b!7356280 (= e!4404544 (set.insert ct1!282 (as set.empty (Set Context!16268))))))

(declare-fun b!7356281 () Bool)

(assert (=> b!7356281 (= c!1366768 e!4404549)))

(declare-fun res!2970402 () Bool)

(assert (=> b!7356281 (=> (not res!2970402) (not e!4404549))))

(assert (=> b!7356281 (= res!2970402 (is-Concat!28039 r1!2370))))

(assert (=> b!7356281 (= e!4404548 e!4404547)))

(assert (= (and d!2281504 c!1366769) b!7356280))

(assert (= (and d!2281504 (not c!1366769)) b!7356277))

(assert (= (and b!7356277 c!1366770) b!7356274))

(assert (= (and b!7356277 (not c!1366770)) b!7356281))

(assert (= (and b!7356281 res!2970402) b!7356271))

(assert (= (and b!7356281 c!1366768) b!7356275))

(assert (= (and b!7356281 (not c!1366768)) b!7356272))

(assert (= (and b!7356272 c!1366766) b!7356276))

(assert (= (and b!7356272 (not c!1366766)) b!7356273))

(assert (= (and b!7356273 c!1366767) b!7356278))

(assert (= (and b!7356273 (not c!1366767)) b!7356279))

(assert (= (or b!7356276 b!7356278) bm!673531))

(assert (= (or b!7356276 b!7356278) bm!673533))

(assert (= (or b!7356275 bm!673533) bm!673532))

(assert (= (or b!7356275 bm!673531) bm!673530))

(assert (= (or b!7356274 bm!673532) bm!673528))

(assert (= (or b!7356274 b!7356275) bm!673529))

(declare-fun m!8016104 () Bool)

(assert (=> bm!673530 m!8016104))

(declare-fun m!8016106 () Bool)

(assert (=> bm!673529 m!8016106))

(declare-fun m!8016108 () Bool)

(assert (=> b!7356280 m!8016108))

(declare-fun m!8016110 () Bool)

(assert (=> bm!673528 m!8016110))

(assert (=> b!7356271 m!8016006))

(assert (=> b!7356156 d!2281504))

(declare-fun c!1366775 () Bool)

(declare-fun c!1366773 () Bool)

(declare-fun c!1366771 () Bool)

(declare-fun call!673541 () (Set Context!16268))

(declare-fun bm!673534 () Bool)

(declare-fun call!673542 () List!71690)

(assert (=> bm!673534 (= call!673541 (derivationStepZipperDown!3020 (ite c!1366775 (regTwo!38901 r1!2370) (ite c!1366773 (regTwo!38900 r1!2370) (ite c!1366771 (regOne!38900 r1!2370) (reg!19523 r1!2370)))) (ite (or c!1366775 c!1366773) (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378))) (Context!16269 call!673542)) c!10362))))

(declare-fun d!2281508 () Bool)

(declare-fun c!1366774 () Bool)

(assert (=> d!2281508 (= c!1366774 (and (is-ElementMatch!19194 r1!2370) (= (c!1366748 r1!2370) c!10362)))))

(declare-fun e!4404550 () (Set Context!16268))

(assert (=> d!2281508 (= (derivationStepZipperDown!3020 r1!2370 (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378))) c!10362) e!4404550)))

(declare-fun b!7356282 () Bool)

(declare-fun e!4404555 () Bool)

(assert (=> b!7356282 (= e!4404555 (nullable!8285 (regOne!38900 r1!2370)))))

(declare-fun b!7356283 () Bool)

(declare-fun e!4404553 () (Set Context!16268))

(declare-fun e!4404551 () (Set Context!16268))

(assert (=> b!7356283 (= e!4404553 e!4404551)))

(assert (=> b!7356283 (= c!1366771 (is-Concat!28039 r1!2370))))

(declare-fun b!7356284 () Bool)

(declare-fun c!1366772 () Bool)

(assert (=> b!7356284 (= c!1366772 (is-Star!19194 r1!2370))))

(declare-fun e!4404552 () (Set Context!16268))

(assert (=> b!7356284 (= e!4404551 e!4404552)))

(declare-fun call!673539 () List!71690)

(declare-fun bm!673535 () Bool)

(declare-fun call!673543 () (Set Context!16268))

(assert (=> bm!673535 (= call!673543 (derivationStepZipperDown!3020 (ite c!1366775 (regOne!38901 r1!2370) (regOne!38900 r1!2370)) (ite c!1366775 (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378))) (Context!16269 call!673539)) c!10362))))

(declare-fun b!7356285 () Bool)

(declare-fun e!4404554 () (Set Context!16268))

(assert (=> b!7356285 (= e!4404554 (set.union call!673543 call!673541))))

(declare-fun b!7356286 () Bool)

(declare-fun call!673540 () (Set Context!16268))

(assert (=> b!7356286 (= e!4404553 (set.union call!673543 call!673540))))

(declare-fun bm!673536 () Bool)

(assert (=> bm!673536 (= call!673539 ($colon$colon!3191 (exprs!8634 (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378)))) (ite (or c!1366773 c!1366771) (regTwo!38900 r1!2370) r1!2370)))))

(declare-fun b!7356287 () Bool)

(declare-fun call!673544 () (Set Context!16268))

(assert (=> b!7356287 (= e!4404551 call!673544)))

(declare-fun b!7356288 () Bool)

(assert (=> b!7356288 (= e!4404550 e!4404554)))

(assert (=> b!7356288 (= c!1366775 (is-Union!19194 r1!2370))))

(declare-fun b!7356289 () Bool)

(assert (=> b!7356289 (= e!4404552 call!673544)))

(declare-fun b!7356290 () Bool)

(assert (=> b!7356290 (= e!4404552 (as set.empty (Set Context!16268)))))

(declare-fun bm!673537 () Bool)

(assert (=> bm!673537 (= call!673542 call!673539)))

(declare-fun bm!673538 () Bool)

(assert (=> bm!673538 (= call!673540 call!673541)))

(declare-fun bm!673539 () Bool)

(assert (=> bm!673539 (= call!673544 call!673540)))

(declare-fun b!7356291 () Bool)

(assert (=> b!7356291 (= e!4404550 (set.insert (Context!16269 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378))) (as set.empty (Set Context!16268))))))

(declare-fun b!7356292 () Bool)

(assert (=> b!7356292 (= c!1366773 e!4404555)))

(declare-fun res!2970403 () Bool)

(assert (=> b!7356292 (=> (not res!2970403) (not e!4404555))))

(assert (=> b!7356292 (= res!2970403 (is-Concat!28039 r1!2370))))

(assert (=> b!7356292 (= e!4404554 e!4404553)))

(assert (= (and d!2281508 c!1366774) b!7356291))

(assert (= (and d!2281508 (not c!1366774)) b!7356288))

(assert (= (and b!7356288 c!1366775) b!7356285))

(assert (= (and b!7356288 (not c!1366775)) b!7356292))

(assert (= (and b!7356292 res!2970403) b!7356282))

(assert (= (and b!7356292 c!1366773) b!7356286))

(assert (= (and b!7356292 (not c!1366773)) b!7356283))

(assert (= (and b!7356283 c!1366771) b!7356287))

(assert (= (and b!7356283 (not c!1366771)) b!7356284))

(assert (= (and b!7356284 c!1366772) b!7356289))

(assert (= (and b!7356284 (not c!1366772)) b!7356290))

(assert (= (or b!7356287 b!7356289) bm!673537))

(assert (= (or b!7356287 b!7356289) bm!673539))

(assert (= (or b!7356286 bm!673539) bm!673538))

(assert (= (or b!7356286 bm!673537) bm!673536))

(assert (= (or b!7356285 bm!673538) bm!673534))

(assert (= (or b!7356285 b!7356286) bm!673535))

(declare-fun m!8016112 () Bool)

(assert (=> bm!673536 m!8016112))

(declare-fun m!8016114 () Bool)

(assert (=> bm!673535 m!8016114))

(declare-fun m!8016116 () Bool)

(assert (=> b!7356291 m!8016116))

(declare-fun m!8016118 () Bool)

(assert (=> bm!673534 m!8016118))

(assert (=> b!7356282 m!8016006))

(assert (=> b!7356161 d!2281508))

(declare-fun b!7356326 () Bool)

(declare-fun lt!2613361 () List!71690)

(declare-fun e!4404573 () Bool)

(assert (=> b!7356326 (= e!4404573 (or (not (= (exprs!8634 ct2!378) Nil!71566)) (= lt!2613361 (exprs!8634 ct1!282))))))

(declare-fun b!7356325 () Bool)

(declare-fun res!2970411 () Bool)

(assert (=> b!7356325 (=> (not res!2970411) (not e!4404573))))

(declare-fun size!42075 (List!71690) Int)

(assert (=> b!7356325 (= res!2970411 (= (size!42075 lt!2613361) (+ (size!42075 (exprs!8634 ct1!282)) (size!42075 (exprs!8634 ct2!378)))))))

(declare-fun b!7356323 () Bool)

(declare-fun e!4404572 () List!71690)

(assert (=> b!7356323 (= e!4404572 (exprs!8634 ct2!378))))

(declare-fun d!2281510 () Bool)

(assert (=> d!2281510 e!4404573))

(declare-fun res!2970410 () Bool)

(assert (=> d!2281510 (=> (not res!2970410) (not e!4404573))))

(declare-fun content!15097 (List!71690) (Set Regex!19194))

(assert (=> d!2281510 (= res!2970410 (= (content!15097 lt!2613361) (set.union (content!15097 (exprs!8634 ct1!282)) (content!15097 (exprs!8634 ct2!378)))))))

(assert (=> d!2281510 (= lt!2613361 e!4404572)))

(declare-fun c!1366788 () Bool)

(assert (=> d!2281510 (= c!1366788 (is-Nil!71566 (exprs!8634 ct1!282)))))

(assert (=> d!2281510 (= (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378)) lt!2613361)))

(declare-fun b!7356324 () Bool)

(assert (=> b!7356324 (= e!4404572 (Cons!71566 (h!78014 (exprs!8634 ct1!282)) (++!17012 (t!386131 (exprs!8634 ct1!282)) (exprs!8634 ct2!378))))))

(assert (= (and d!2281510 c!1366788) b!7356323))

(assert (= (and d!2281510 (not c!1366788)) b!7356324))

(assert (= (and d!2281510 res!2970410) b!7356325))

(assert (= (and b!7356325 res!2970411) b!7356326))

(declare-fun m!8016120 () Bool)

(assert (=> b!7356325 m!8016120))

(declare-fun m!8016122 () Bool)

(assert (=> b!7356325 m!8016122))

(declare-fun m!8016124 () Bool)

(assert (=> b!7356325 m!8016124))

(declare-fun m!8016126 () Bool)

(assert (=> d!2281510 m!8016126))

(declare-fun m!8016128 () Bool)

(assert (=> d!2281510 m!8016128))

(declare-fun m!8016130 () Bool)

(assert (=> d!2281510 m!8016130))

(declare-fun m!8016132 () Bool)

(assert (=> b!7356324 m!8016132))

(assert (=> b!7356161 d!2281510))

(declare-fun d!2281512 () Bool)

(assert (=> d!2281512 (forall!18014 (++!17012 (exprs!8634 ct1!282) (exprs!8634 ct2!378)) lambda!457036)))

(declare-fun lt!2613362 () Unit!165341)

(assert (=> d!2281512 (= lt!2613362 (choose!57224 (exprs!8634 ct1!282) (exprs!8634 ct2!378) lambda!457036))))

(assert (=> d!2281512 (forall!18014 (exprs!8634 ct1!282) lambda!457036)))

(assert (=> d!2281512 (= (lemmaConcatPreservesForall!1869 (exprs!8634 ct1!282) (exprs!8634 ct2!378) lambda!457036) lt!2613362)))

(declare-fun bs!1919768 () Bool)

(assert (= bs!1919768 d!2281512))

(assert (=> bs!1919768 m!8015998))

(assert (=> bs!1919768 m!8015998))

(declare-fun m!8016134 () Bool)

(assert (=> bs!1919768 m!8016134))

(declare-fun m!8016136 () Bool)

(assert (=> bs!1919768 m!8016136))

(assert (=> bs!1919768 m!8015994))

(assert (=> b!7356161 d!2281512))

(declare-fun d!2281514 () Bool)

(declare-fun res!2970412 () Bool)

(declare-fun e!4404574 () Bool)

(assert (=> d!2281514 (=> res!2970412 e!4404574)))

(assert (=> d!2281514 (= res!2970412 (is-Nil!71566 (exprs!8634 ct2!378)))))

(assert (=> d!2281514 (= (forall!18014 (exprs!8634 ct2!378) lambda!457036) e!4404574)))

(declare-fun b!7356327 () Bool)

(declare-fun e!4404575 () Bool)

(assert (=> b!7356327 (= e!4404574 e!4404575)))

(declare-fun res!2970413 () Bool)

(assert (=> b!7356327 (=> (not res!2970413) (not e!4404575))))

(assert (=> b!7356327 (= res!2970413 (dynLambda!29511 lambda!457036 (h!78014 (exprs!8634 ct2!378))))))

(declare-fun b!7356328 () Bool)

(assert (=> b!7356328 (= e!4404575 (forall!18014 (t!386131 (exprs!8634 ct2!378)) lambda!457036))))

(assert (= (and d!2281514 (not res!2970412)) b!7356327))

(assert (= (and b!7356327 res!2970413) b!7356328))

(declare-fun b_lambda!284253 () Bool)

(assert (=> (not b_lambda!284253) (not b!7356327)))

(declare-fun m!8016138 () Bool)

(assert (=> b!7356327 m!8016138))

(declare-fun m!8016140 () Bool)

(assert (=> b!7356328 m!8016140))

(assert (=> b!7356160 d!2281514))

(declare-fun b!7356347 () Bool)

(declare-fun e!4404596 () Bool)

(declare-fun e!4404591 () Bool)

(assert (=> b!7356347 (= e!4404596 e!4404591)))

(declare-fun res!2970424 () Bool)

(assert (=> b!7356347 (=> (not res!2970424) (not e!4404591))))

(declare-fun call!673564 () Bool)

(assert (=> b!7356347 (= res!2970424 call!673564)))

(declare-fun b!7356348 () Bool)

(declare-fun e!4404592 () Bool)

(declare-fun call!673563 () Bool)

(assert (=> b!7356348 (= e!4404592 call!673563)))

(declare-fun b!7356349 () Bool)

(declare-fun call!673565 () Bool)

(assert (=> b!7356349 (= e!4404591 call!673565)))

(declare-fun c!1366793 () Bool)

(declare-fun bm!673558 () Bool)

(declare-fun c!1366794 () Bool)

(assert (=> bm!673558 (= call!673563 (validRegex!9790 (ite c!1366794 (reg!19523 r1!2370) (ite c!1366793 (regOne!38901 r1!2370) (regTwo!38900 r1!2370)))))))

(declare-fun b!7356350 () Bool)

(declare-fun res!2970428 () Bool)

(assert (=> b!7356350 (=> res!2970428 e!4404596)))

(assert (=> b!7356350 (= res!2970428 (not (is-Concat!28039 r1!2370)))))

(declare-fun e!4404594 () Bool)

(assert (=> b!7356350 (= e!4404594 e!4404596)))

(declare-fun b!7356351 () Bool)

(declare-fun e!4404595 () Bool)

(assert (=> b!7356351 (= e!4404595 e!4404594)))

(assert (=> b!7356351 (= c!1366793 (is-Union!19194 r1!2370))))

(declare-fun d!2281516 () Bool)

(declare-fun res!2970426 () Bool)

(declare-fun e!4404593 () Bool)

(assert (=> d!2281516 (=> res!2970426 e!4404593)))

(assert (=> d!2281516 (= res!2970426 (is-ElementMatch!19194 r1!2370))))

(assert (=> d!2281516 (= (validRegex!9790 r1!2370) e!4404593)))

(declare-fun b!7356352 () Bool)

(declare-fun res!2970425 () Bool)

(declare-fun e!4404590 () Bool)

(assert (=> b!7356352 (=> (not res!2970425) (not e!4404590))))

(assert (=> b!7356352 (= res!2970425 call!673565)))

(assert (=> b!7356352 (= e!4404594 e!4404590)))

(declare-fun b!7356353 () Bool)

(assert (=> b!7356353 (= e!4404590 call!673564)))

(declare-fun bm!673559 () Bool)

(assert (=> bm!673559 (= call!673564 (validRegex!9790 (ite c!1366793 (regTwo!38901 r1!2370) (regOne!38900 r1!2370))))))

(declare-fun bm!673560 () Bool)

(assert (=> bm!673560 (= call!673565 call!673563)))

(declare-fun b!7356354 () Bool)

(assert (=> b!7356354 (= e!4404595 e!4404592)))

(declare-fun res!2970427 () Bool)

(assert (=> b!7356354 (= res!2970427 (not (nullable!8285 (reg!19523 r1!2370))))))

(assert (=> b!7356354 (=> (not res!2970427) (not e!4404592))))

(declare-fun b!7356355 () Bool)

(assert (=> b!7356355 (= e!4404593 e!4404595)))

(assert (=> b!7356355 (= c!1366794 (is-Star!19194 r1!2370))))

(assert (= (and d!2281516 (not res!2970426)) b!7356355))

(assert (= (and b!7356355 c!1366794) b!7356354))

(assert (= (and b!7356355 (not c!1366794)) b!7356351))

(assert (= (and b!7356354 res!2970427) b!7356348))

(assert (= (and b!7356351 c!1366793) b!7356352))

(assert (= (and b!7356351 (not c!1366793)) b!7356350))

(assert (= (and b!7356352 res!2970425) b!7356353))

(assert (= (and b!7356350 (not res!2970428)) b!7356347))

(assert (= (and b!7356347 res!2970424) b!7356349))

(assert (= (or b!7356352 b!7356349) bm!673560))

(assert (= (or b!7356353 b!7356347) bm!673559))

(assert (= (or b!7356348 bm!673560) bm!673558))

(declare-fun m!8016142 () Bool)

(assert (=> bm!673558 m!8016142))

(declare-fun m!8016144 () Bool)

(assert (=> bm!673559 m!8016144))

(declare-fun m!8016146 () Bool)

(assert (=> b!7356354 m!8016146))

(assert (=> start!718318 d!2281516))

(declare-fun bs!1919769 () Bool)

(declare-fun d!2281518 () Bool)

(assert (= bs!1919769 (and d!2281518 b!7356161)))

(declare-fun lambda!457052 () Int)

(assert (=> bs!1919769 (= lambda!457052 lambda!457036)))

(assert (=> d!2281518 (= (inv!91326 cWitness!61) (forall!18014 (exprs!8634 cWitness!61) lambda!457052))))

(declare-fun bs!1919770 () Bool)

(assert (= bs!1919770 d!2281518))

(declare-fun m!8016148 () Bool)

(assert (=> bs!1919770 m!8016148))

(assert (=> start!718318 d!2281518))

(declare-fun bs!1919771 () Bool)

(declare-fun d!2281520 () Bool)

(assert (= bs!1919771 (and d!2281520 b!7356161)))

(declare-fun lambda!457053 () Int)

(assert (=> bs!1919771 (= lambda!457053 lambda!457036)))

(declare-fun bs!1919772 () Bool)

(assert (= bs!1919772 (and d!2281520 d!2281518)))

(assert (=> bs!1919772 (= lambda!457053 lambda!457052)))

(assert (=> d!2281520 (= (inv!91326 ct1!282) (forall!18014 (exprs!8634 ct1!282) lambda!457053))))

(declare-fun bs!1919773 () Bool)

(assert (= bs!1919773 d!2281520))

(declare-fun m!8016150 () Bool)

(assert (=> bs!1919773 m!8016150))

(assert (=> start!718318 d!2281520))

(declare-fun bs!1919774 () Bool)

(declare-fun d!2281522 () Bool)

(assert (= bs!1919774 (and d!2281522 b!7356161)))

(declare-fun lambda!457054 () Int)

(assert (=> bs!1919774 (= lambda!457054 lambda!457036)))

(declare-fun bs!1919775 () Bool)

(assert (= bs!1919775 (and d!2281522 d!2281518)))

(assert (=> bs!1919775 (= lambda!457054 lambda!457052)))

(declare-fun bs!1919776 () Bool)

(assert (= bs!1919776 (and d!2281522 d!2281520)))

(assert (=> bs!1919776 (= lambda!457054 lambda!457053)))

(assert (=> d!2281522 (= (inv!91326 ct2!378) (forall!18014 (exprs!8634 ct2!378) lambda!457054))))

(declare-fun bs!1919777 () Bool)

(assert (= bs!1919777 d!2281522))

(declare-fun m!8016152 () Bool)

(assert (=> bs!1919777 m!8016152))

(assert (=> start!718318 d!2281522))

(declare-fun b!7356359 () Bool)

(declare-fun e!4404598 () Bool)

(declare-fun lt!2613363 () List!71690)

(assert (=> b!7356359 (= e!4404598 (or (not (= (exprs!8634 ct2!378) Nil!71566)) (= lt!2613363 lt!2613313)))))

(declare-fun b!7356358 () Bool)

(declare-fun res!2970430 () Bool)

(assert (=> b!7356358 (=> (not res!2970430) (not e!4404598))))

(assert (=> b!7356358 (= res!2970430 (= (size!42075 lt!2613363) (+ (size!42075 lt!2613313) (size!42075 (exprs!8634 ct2!378)))))))

(declare-fun b!7356356 () Bool)

(declare-fun e!4404597 () List!71690)

(assert (=> b!7356356 (= e!4404597 (exprs!8634 ct2!378))))

(declare-fun d!2281524 () Bool)

(assert (=> d!2281524 e!4404598))

(declare-fun res!2970429 () Bool)

(assert (=> d!2281524 (=> (not res!2970429) (not e!4404598))))

(assert (=> d!2281524 (= res!2970429 (= (content!15097 lt!2613363) (set.union (content!15097 lt!2613313) (content!15097 (exprs!8634 ct2!378)))))))

(assert (=> d!2281524 (= lt!2613363 e!4404597)))

(declare-fun c!1366795 () Bool)

(assert (=> d!2281524 (= c!1366795 (is-Nil!71566 lt!2613313))))

(assert (=> d!2281524 (= (++!17012 lt!2613313 (exprs!8634 ct2!378)) lt!2613363)))

(declare-fun b!7356357 () Bool)

(assert (=> b!7356357 (= e!4404597 (Cons!71566 (h!78014 lt!2613313) (++!17012 (t!386131 lt!2613313) (exprs!8634 ct2!378))))))

(assert (= (and d!2281524 c!1366795) b!7356356))

(assert (= (and d!2281524 (not c!1366795)) b!7356357))

(assert (= (and d!2281524 res!2970429) b!7356358))

(assert (= (and b!7356358 res!2970430) b!7356359))

(declare-fun m!8016154 () Bool)

(assert (=> b!7356358 m!8016154))

(declare-fun m!8016156 () Bool)

(assert (=> b!7356358 m!8016156))

(assert (=> b!7356358 m!8016124))

(declare-fun m!8016158 () Bool)

(assert (=> d!2281524 m!8016158))

(declare-fun m!8016160 () Bool)

(assert (=> d!2281524 m!8016160))

(assert (=> d!2281524 m!8016130))

(declare-fun m!8016162 () Bool)

(assert (=> b!7356357 m!8016162))

(assert (=> b!7356158 d!2281524))

(declare-fun call!673569 () List!71690)

(declare-fun call!673568 () (Set Context!16268))

(declare-fun c!1366800 () Bool)

(declare-fun bm!673561 () Bool)

(declare-fun c!1366796 () Bool)

(declare-fun c!1366798 () Bool)

(assert (=> bm!673561 (= call!673568 (derivationStepZipperDown!3020 (ite c!1366800 (regTwo!38901 (reg!19523 r1!2370)) (ite c!1366798 (regTwo!38900 (reg!19523 r1!2370)) (ite c!1366796 (regOne!38900 (reg!19523 r1!2370)) (reg!19523 (reg!19523 r1!2370))))) (ite (or c!1366800 c!1366798) (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378))) (Context!16269 call!673569)) c!10362))))

(declare-fun d!2281526 () Bool)

(declare-fun c!1366799 () Bool)

(assert (=> d!2281526 (= c!1366799 (and (is-ElementMatch!19194 (reg!19523 r1!2370)) (= (c!1366748 (reg!19523 r1!2370)) c!10362)))))

(declare-fun e!4404599 () (Set Context!16268))

(assert (=> d!2281526 (= (derivationStepZipperDown!3020 (reg!19523 r1!2370) (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378))) c!10362) e!4404599)))

(declare-fun b!7356360 () Bool)

(declare-fun e!4404604 () Bool)

(assert (=> b!7356360 (= e!4404604 (nullable!8285 (regOne!38900 (reg!19523 r1!2370))))))

(declare-fun b!7356361 () Bool)

(declare-fun e!4404602 () (Set Context!16268))

(declare-fun e!4404600 () (Set Context!16268))

(assert (=> b!7356361 (= e!4404602 e!4404600)))

(assert (=> b!7356361 (= c!1366796 (is-Concat!28039 (reg!19523 r1!2370)))))

(declare-fun b!7356362 () Bool)

(declare-fun c!1366797 () Bool)

(assert (=> b!7356362 (= c!1366797 (is-Star!19194 (reg!19523 r1!2370)))))

(declare-fun e!4404601 () (Set Context!16268))

(assert (=> b!7356362 (= e!4404600 e!4404601)))

(declare-fun call!673566 () List!71690)

(declare-fun bm!673562 () Bool)

(declare-fun call!673570 () (Set Context!16268))

(assert (=> bm!673562 (= call!673570 (derivationStepZipperDown!3020 (ite c!1366800 (regOne!38901 (reg!19523 r1!2370)) (regOne!38900 (reg!19523 r1!2370))) (ite c!1366800 (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378))) (Context!16269 call!673566)) c!10362))))

(declare-fun b!7356363 () Bool)

(declare-fun e!4404603 () (Set Context!16268))

(assert (=> b!7356363 (= e!4404603 (set.union call!673570 call!673568))))

(declare-fun b!7356364 () Bool)

(declare-fun call!673567 () (Set Context!16268))

(assert (=> b!7356364 (= e!4404602 (set.union call!673570 call!673567))))

(declare-fun bm!673563 () Bool)

(assert (=> bm!673563 (= call!673566 ($colon$colon!3191 (exprs!8634 (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378)))) (ite (or c!1366798 c!1366796) (regTwo!38900 (reg!19523 r1!2370)) (reg!19523 r1!2370))))))

(declare-fun b!7356365 () Bool)

(declare-fun call!673571 () (Set Context!16268))

(assert (=> b!7356365 (= e!4404600 call!673571)))

(declare-fun b!7356366 () Bool)

(assert (=> b!7356366 (= e!4404599 e!4404603)))

(assert (=> b!7356366 (= c!1366800 (is-Union!19194 (reg!19523 r1!2370)))))

(declare-fun b!7356367 () Bool)

(assert (=> b!7356367 (= e!4404601 call!673571)))

(declare-fun b!7356368 () Bool)

(assert (=> b!7356368 (= e!4404601 (as set.empty (Set Context!16268)))))

(declare-fun bm!673564 () Bool)

(assert (=> bm!673564 (= call!673569 call!673566)))

(declare-fun bm!673565 () Bool)

(assert (=> bm!673565 (= call!673567 call!673568)))

(declare-fun bm!673566 () Bool)

(assert (=> bm!673566 (= call!673571 call!673567)))

(declare-fun b!7356369 () Bool)

(assert (=> b!7356369 (= e!4404599 (set.insert (Context!16269 (++!17012 lt!2613313 (exprs!8634 ct2!378))) (as set.empty (Set Context!16268))))))

(declare-fun b!7356370 () Bool)

(assert (=> b!7356370 (= c!1366798 e!4404604)))

(declare-fun res!2970431 () Bool)

(assert (=> b!7356370 (=> (not res!2970431) (not e!4404604))))

(assert (=> b!7356370 (= res!2970431 (is-Concat!28039 (reg!19523 r1!2370)))))

(assert (=> b!7356370 (= e!4404603 e!4404602)))

(assert (= (and d!2281526 c!1366799) b!7356369))

(assert (= (and d!2281526 (not c!1366799)) b!7356366))

(assert (= (and b!7356366 c!1366800) b!7356363))

(assert (= (and b!7356366 (not c!1366800)) b!7356370))

(assert (= (and b!7356370 res!2970431) b!7356360))

(assert (= (and b!7356370 c!1366798) b!7356364))

(assert (= (and b!7356370 (not c!1366798)) b!7356361))

(assert (= (and b!7356361 c!1366796) b!7356365))

(assert (= (and b!7356361 (not c!1366796)) b!7356362))

(assert (= (and b!7356362 c!1366797) b!7356367))

(assert (= (and b!7356362 (not c!1366797)) b!7356368))

(assert (= (or b!7356365 b!7356367) bm!673564))

(assert (= (or b!7356365 b!7356367) bm!673566))

(assert (= (or b!7356364 bm!673566) bm!673565))

(assert (= (or b!7356364 bm!673564) bm!673563))

(assert (= (or b!7356363 bm!673565) bm!673561))

(assert (= (or b!7356363 b!7356364) bm!673562))

(declare-fun m!8016164 () Bool)

(assert (=> bm!673563 m!8016164))

(declare-fun m!8016166 () Bool)

(assert (=> bm!673562 m!8016166))

(declare-fun m!8016168 () Bool)

(assert (=> b!7356369 m!8016168))

(declare-fun m!8016170 () Bool)

(assert (=> bm!673561 m!8016170))

(declare-fun m!8016172 () Bool)

(assert (=> b!7356360 m!8016172))

(assert (=> b!7356158 d!2281526))

(declare-fun b!7356374 () Bool)

(declare-fun e!4404606 () Bool)

(declare-fun lt!2613364 () List!71690)

(assert (=> b!7356374 (= e!4404606 (or (not (= (exprs!8634 ct2!378) Nil!71566)) (= lt!2613364 (exprs!8634 cWitness!61))))))

(declare-fun b!7356373 () Bool)

(declare-fun res!2970433 () Bool)

(assert (=> b!7356373 (=> (not res!2970433) (not e!4404606))))

(assert (=> b!7356373 (= res!2970433 (= (size!42075 lt!2613364) (+ (size!42075 (exprs!8634 cWitness!61)) (size!42075 (exprs!8634 ct2!378)))))))

(declare-fun b!7356371 () Bool)

(declare-fun e!4404605 () List!71690)

(assert (=> b!7356371 (= e!4404605 (exprs!8634 ct2!378))))

(declare-fun d!2281528 () Bool)

(assert (=> d!2281528 e!4404606))

(declare-fun res!2970432 () Bool)

(assert (=> d!2281528 (=> (not res!2970432) (not e!4404606))))

(assert (=> d!2281528 (= res!2970432 (= (content!15097 lt!2613364) (set.union (content!15097 (exprs!8634 cWitness!61)) (content!15097 (exprs!8634 ct2!378)))))))

(assert (=> d!2281528 (= lt!2613364 e!4404605)))

(declare-fun c!1366801 () Bool)

(assert (=> d!2281528 (= c!1366801 (is-Nil!71566 (exprs!8634 cWitness!61)))))

(assert (=> d!2281528 (= (++!17012 (exprs!8634 cWitness!61) (exprs!8634 ct2!378)) lt!2613364)))

(declare-fun b!7356372 () Bool)

(assert (=> b!7356372 (= e!4404605 (Cons!71566 (h!78014 (exprs!8634 cWitness!61)) (++!17012 (t!386131 (exprs!8634 cWitness!61)) (exprs!8634 ct2!378))))))

(assert (= (and d!2281528 c!1366801) b!7356371))

(assert (= (and d!2281528 (not c!1366801)) b!7356372))

(assert (= (and d!2281528 res!2970432) b!7356373))

(assert (= (and b!7356373 res!2970433) b!7356374))

(declare-fun m!8016174 () Bool)

(assert (=> b!7356373 m!8016174))

(declare-fun m!8016176 () Bool)

(assert (=> b!7356373 m!8016176))

(assert (=> b!7356373 m!8016124))

(declare-fun m!8016178 () Bool)

(assert (=> d!2281528 m!8016178))

(declare-fun m!8016180 () Bool)

(assert (=> d!2281528 m!8016180))

(assert (=> d!2281528 m!8016130))

(declare-fun m!8016182 () Bool)

(assert (=> b!7356372 m!8016182))

(assert (=> b!7356158 d!2281528))

(assert (=> b!7356158 d!2281500))

(declare-fun d!2281530 () Bool)

(assert (=> d!2281530 (forall!18014 (++!17012 lt!2613313 (exprs!8634 ct2!378)) lambda!457036)))

(declare-fun lt!2613365 () Unit!165341)

(assert (=> d!2281530 (= lt!2613365 (choose!57224 lt!2613313 (exprs!8634 ct2!378) lambda!457036))))

(assert (=> d!2281530 (forall!18014 lt!2613313 lambda!457036)))

(assert (=> d!2281530 (= (lemmaConcatPreservesForall!1869 lt!2613313 (exprs!8634 ct2!378) lambda!457036) lt!2613365)))

(declare-fun bs!1919778 () Bool)

(assert (= bs!1919778 d!2281530))

(assert (=> bs!1919778 m!8016030))

(assert (=> bs!1919778 m!8016030))

(declare-fun m!8016184 () Bool)

(assert (=> bs!1919778 m!8016184))

(declare-fun m!8016186 () Bool)

(assert (=> bs!1919778 m!8016186))

(declare-fun m!8016188 () Bool)

(assert (=> bs!1919778 m!8016188))

(assert (=> b!7356158 d!2281530))

(declare-fun bs!1919780 () Bool)

(declare-fun d!2281532 () Bool)

(assert (= bs!1919780 (and d!2281532 b!7356161)))

(declare-fun lambda!457059 () Int)

(assert (=> bs!1919780 (= lambda!457059 lambda!457036)))

(declare-fun bs!1919781 () Bool)

(assert (= bs!1919781 (and d!2281532 d!2281518)))

(assert (=> bs!1919781 (= lambda!457059 lambda!457052)))

(declare-fun bs!1919782 () Bool)

(assert (= bs!1919782 (and d!2281532 d!2281520)))

(assert (=> bs!1919782 (= lambda!457059 lambda!457053)))

(declare-fun bs!1919783 () Bool)

(assert (= bs!1919783 (and d!2281532 d!2281522)))

(assert (=> bs!1919783 (= lambda!457059 lambda!457054)))

(assert (=> d!2281532 (set.member (Context!16269 (++!17012 (exprs!8634 cWitness!61) (exprs!8634 ct2!378))) (derivationStepZipperDown!3020 (reg!19523 r1!2370) (Context!16269 (++!17012 (exprs!8634 lt!2613315) (exprs!8634 ct2!378))) c!10362))))

(declare-fun lt!2613377 () Unit!165341)

(assert (=> d!2281532 (= lt!2613377 (lemmaConcatPreservesForall!1869 (exprs!8634 lt!2613315) (exprs!8634 ct2!378) lambda!457059))))

(declare-fun lt!2613376 () Unit!165341)

(assert (=> d!2281532 (= lt!2613376 (lemmaConcatPreservesForall!1869 (exprs!8634 cWitness!61) (exprs!8634 ct2!378) lambda!457059))))

(declare-fun lt!2613375 () Unit!165341)

(declare-fun choose!57225 (Regex!19194 Context!16268 Context!16268 Context!16268 C!38662) Unit!165341)

(assert (=> d!2281532 (= lt!2613375 (choose!57225 (reg!19523 r1!2370) lt!2613315 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281532 (validRegex!9790 (reg!19523 r1!2370))))

(assert (=> d!2281532 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!111 (reg!19523 r1!2370) lt!2613315 ct2!378 cWitness!61 c!10362) lt!2613375)))

(declare-fun bs!1919784 () Bool)

(assert (= bs!1919784 d!2281532))

(declare-fun m!8016204 () Bool)

(assert (=> bs!1919784 m!8016204))

(declare-fun m!8016206 () Bool)

(assert (=> bs!1919784 m!8016206))

(assert (=> bs!1919784 m!8016034))

(declare-fun m!8016208 () Bool)

(assert (=> bs!1919784 m!8016208))

(declare-fun m!8016210 () Bool)

(assert (=> bs!1919784 m!8016210))

(declare-fun m!8016212 () Bool)

(assert (=> bs!1919784 m!8016212))

(declare-fun m!8016214 () Bool)

(assert (=> bs!1919784 m!8016214))

(declare-fun m!8016216 () Bool)

(assert (=> bs!1919784 m!8016216))

(assert (=> b!7356158 d!2281532))

(declare-fun b!7356386 () Bool)

(declare-fun e!4404619 () Bool)

(declare-fun e!4404614 () Bool)

(assert (=> b!7356386 (= e!4404619 e!4404614)))

(declare-fun res!2970435 () Bool)

(assert (=> b!7356386 (=> (not res!2970435) (not e!4404614))))

(declare-fun call!673579 () Bool)

(assert (=> b!7356386 (= res!2970435 call!673579)))

(declare-fun b!7356387 () Bool)

(declare-fun e!4404615 () Bool)

(declare-fun call!673578 () Bool)

(assert (=> b!7356387 (= e!4404615 call!673578)))

(declare-fun b!7356388 () Bool)

(declare-fun call!673580 () Bool)

(assert (=> b!7356388 (= e!4404614 call!673580)))

(declare-fun bm!673573 () Bool)

(declare-fun c!1366808 () Bool)

(declare-fun c!1366809 () Bool)

(assert (=> bm!673573 (= call!673578 (validRegex!9790 (ite c!1366809 (reg!19523 lt!2613308) (ite c!1366808 (regOne!38901 lt!2613308) (regTwo!38900 lt!2613308)))))))

(declare-fun b!7356389 () Bool)

(declare-fun res!2970439 () Bool)

(assert (=> b!7356389 (=> res!2970439 e!4404619)))

(assert (=> b!7356389 (= res!2970439 (not (is-Concat!28039 lt!2613308)))))

(declare-fun e!4404617 () Bool)

(assert (=> b!7356389 (= e!4404617 e!4404619)))

(declare-fun b!7356390 () Bool)

(declare-fun e!4404618 () Bool)

(assert (=> b!7356390 (= e!4404618 e!4404617)))

(assert (=> b!7356390 (= c!1366808 (is-Union!19194 lt!2613308))))

(declare-fun d!2281538 () Bool)

(declare-fun res!2970437 () Bool)

(declare-fun e!4404616 () Bool)

(assert (=> d!2281538 (=> res!2970437 e!4404616)))

(assert (=> d!2281538 (= res!2970437 (is-ElementMatch!19194 lt!2613308))))

(assert (=> d!2281538 (= (validRegex!9790 lt!2613308) e!4404616)))

(declare-fun b!7356391 () Bool)

(declare-fun res!2970436 () Bool)

(declare-fun e!4404613 () Bool)

(assert (=> b!7356391 (=> (not res!2970436) (not e!4404613))))

(assert (=> b!7356391 (= res!2970436 call!673580)))

(assert (=> b!7356391 (= e!4404617 e!4404613)))

(declare-fun b!7356392 () Bool)

(assert (=> b!7356392 (= e!4404613 call!673579)))

(declare-fun bm!673574 () Bool)

(assert (=> bm!673574 (= call!673579 (validRegex!9790 (ite c!1366808 (regTwo!38901 lt!2613308) (regOne!38900 lt!2613308))))))

(declare-fun bm!673575 () Bool)

(assert (=> bm!673575 (= call!673580 call!673578)))

(declare-fun b!7356393 () Bool)

(assert (=> b!7356393 (= e!4404618 e!4404615)))

(declare-fun res!2970438 () Bool)

(assert (=> b!7356393 (= res!2970438 (not (nullable!8285 (reg!19523 lt!2613308))))))

(assert (=> b!7356393 (=> (not res!2970438) (not e!4404615))))

(declare-fun b!7356394 () Bool)

(assert (=> b!7356394 (= e!4404616 e!4404618)))

(assert (=> b!7356394 (= c!1366809 (is-Star!19194 lt!2613308))))

(assert (= (and d!2281538 (not res!2970437)) b!7356394))

(assert (= (and b!7356394 c!1366809) b!7356393))

(assert (= (and b!7356394 (not c!1366809)) b!7356390))

(assert (= (and b!7356393 res!2970438) b!7356387))

(assert (= (and b!7356390 c!1366808) b!7356391))

(assert (= (and b!7356390 (not c!1366808)) b!7356389))

(assert (= (and b!7356391 res!2970436) b!7356392))

(assert (= (and b!7356389 (not res!2970439)) b!7356386))

(assert (= (and b!7356386 res!2970435) b!7356388))

(assert (= (or b!7356391 b!7356388) bm!673575))

(assert (= (or b!7356392 b!7356386) bm!673574))

(assert (= (or b!7356387 bm!673575) bm!673573))

(declare-fun m!8016218 () Bool)

(assert (=> bm!673573 m!8016218))

(declare-fun m!8016220 () Bool)

(assert (=> bm!673574 m!8016220))

(declare-fun m!8016222 () Bool)

(assert (=> b!7356393 m!8016222))

(assert (=> b!7356163 d!2281538))

(declare-fun c!1366812 () Bool)

(declare-fun c!1366814 () Bool)

(declare-fun call!673584 () List!71690)

(declare-fun call!673583 () (Set Context!16268))

(declare-fun c!1366810 () Bool)

(declare-fun bm!673576 () Bool)

(assert (=> bm!673576 (= call!673583 (derivationStepZipperDown!3020 (ite c!1366814 (regTwo!38901 (reg!19523 r1!2370)) (ite c!1366812 (regTwo!38900 (reg!19523 r1!2370)) (ite c!1366810 (regOne!38900 (reg!19523 r1!2370)) (reg!19523 (reg!19523 r1!2370))))) (ite (or c!1366814 c!1366812) lt!2613315 (Context!16269 call!673584)) c!10362))))

(declare-fun d!2281540 () Bool)

(declare-fun c!1366813 () Bool)

(assert (=> d!2281540 (= c!1366813 (and (is-ElementMatch!19194 (reg!19523 r1!2370)) (= (c!1366748 (reg!19523 r1!2370)) c!10362)))))

(declare-fun e!4404620 () (Set Context!16268))

(assert (=> d!2281540 (= (derivationStepZipperDown!3020 (reg!19523 r1!2370) lt!2613315 c!10362) e!4404620)))

(declare-fun b!7356395 () Bool)

(declare-fun e!4404625 () Bool)

(assert (=> b!7356395 (= e!4404625 (nullable!8285 (regOne!38900 (reg!19523 r1!2370))))))

(declare-fun b!7356396 () Bool)

(declare-fun e!4404623 () (Set Context!16268))

(declare-fun e!4404621 () (Set Context!16268))

(assert (=> b!7356396 (= e!4404623 e!4404621)))

(assert (=> b!7356396 (= c!1366810 (is-Concat!28039 (reg!19523 r1!2370)))))

(declare-fun b!7356397 () Bool)

(declare-fun c!1366811 () Bool)

(assert (=> b!7356397 (= c!1366811 (is-Star!19194 (reg!19523 r1!2370)))))

(declare-fun e!4404622 () (Set Context!16268))

(assert (=> b!7356397 (= e!4404621 e!4404622)))

(declare-fun call!673581 () List!71690)

(declare-fun call!673585 () (Set Context!16268))

(declare-fun bm!673577 () Bool)

(assert (=> bm!673577 (= call!673585 (derivationStepZipperDown!3020 (ite c!1366814 (regOne!38901 (reg!19523 r1!2370)) (regOne!38900 (reg!19523 r1!2370))) (ite c!1366814 lt!2613315 (Context!16269 call!673581)) c!10362))))

(declare-fun b!7356398 () Bool)

(declare-fun e!4404624 () (Set Context!16268))

(assert (=> b!7356398 (= e!4404624 (set.union call!673585 call!673583))))

(declare-fun b!7356399 () Bool)

(declare-fun call!673582 () (Set Context!16268))

(assert (=> b!7356399 (= e!4404623 (set.union call!673585 call!673582))))

(declare-fun bm!673578 () Bool)

(assert (=> bm!673578 (= call!673581 ($colon$colon!3191 (exprs!8634 lt!2613315) (ite (or c!1366812 c!1366810) (regTwo!38900 (reg!19523 r1!2370)) (reg!19523 r1!2370))))))

(declare-fun b!7356400 () Bool)

(declare-fun call!673586 () (Set Context!16268))

(assert (=> b!7356400 (= e!4404621 call!673586)))

(declare-fun b!7356401 () Bool)

(assert (=> b!7356401 (= e!4404620 e!4404624)))

(assert (=> b!7356401 (= c!1366814 (is-Union!19194 (reg!19523 r1!2370)))))

(declare-fun b!7356402 () Bool)

(assert (=> b!7356402 (= e!4404622 call!673586)))

(declare-fun b!7356403 () Bool)

(assert (=> b!7356403 (= e!4404622 (as set.empty (Set Context!16268)))))

(declare-fun bm!673579 () Bool)

(assert (=> bm!673579 (= call!673584 call!673581)))

(declare-fun bm!673580 () Bool)

(assert (=> bm!673580 (= call!673582 call!673583)))

(declare-fun bm!673581 () Bool)

(assert (=> bm!673581 (= call!673586 call!673582)))

(declare-fun b!7356404 () Bool)

(assert (=> b!7356404 (= e!4404620 (set.insert lt!2613315 (as set.empty (Set Context!16268))))))

(declare-fun b!7356405 () Bool)

(assert (=> b!7356405 (= c!1366812 e!4404625)))

(declare-fun res!2970440 () Bool)

(assert (=> b!7356405 (=> (not res!2970440) (not e!4404625))))

(assert (=> b!7356405 (= res!2970440 (is-Concat!28039 (reg!19523 r1!2370)))))

(assert (=> b!7356405 (= e!4404624 e!4404623)))

(assert (= (and d!2281540 c!1366813) b!7356404))

(assert (= (and d!2281540 (not c!1366813)) b!7356401))

(assert (= (and b!7356401 c!1366814) b!7356398))

(assert (= (and b!7356401 (not c!1366814)) b!7356405))

(assert (= (and b!7356405 res!2970440) b!7356395))

(assert (= (and b!7356405 c!1366812) b!7356399))

(assert (= (and b!7356405 (not c!1366812)) b!7356396))

(assert (= (and b!7356396 c!1366810) b!7356400))

(assert (= (and b!7356396 (not c!1366810)) b!7356397))

(assert (= (and b!7356397 c!1366811) b!7356402))

(assert (= (and b!7356397 (not c!1366811)) b!7356403))

(assert (= (or b!7356400 b!7356402) bm!673579))

(assert (= (or b!7356400 b!7356402) bm!673581))

(assert (= (or b!7356399 bm!673581) bm!673580))

(assert (= (or b!7356399 bm!673579) bm!673578))

(assert (= (or b!7356398 bm!673580) bm!673576))

(assert (= (or b!7356398 b!7356399) bm!673577))

(declare-fun m!8016224 () Bool)

(assert (=> bm!673578 m!8016224))

(declare-fun m!8016226 () Bool)

(assert (=> bm!673577 m!8016226))

(declare-fun m!8016228 () Bool)

(assert (=> b!7356404 m!8016228))

(declare-fun m!8016230 () Bool)

(assert (=> bm!673576 m!8016230))

(assert (=> b!7356395 m!8016172))

(assert (=> b!7356153 d!2281540))

(declare-fun d!2281542 () Bool)

(assert (=> d!2281542 (= ($colon$colon!3191 (exprs!8634 ct1!282) lt!2613308) (Cons!71566 lt!2613308 (exprs!8634 ct1!282)))))

(assert (=> b!7356153 d!2281542))

(declare-fun b!7356414 () Bool)

(declare-fun e!4404630 () Bool)

(declare-fun tp!2089642 () Bool)

(declare-fun tp!2089643 () Bool)

(assert (=> b!7356414 (= e!4404630 (and tp!2089642 tp!2089643))))

(assert (=> b!7356151 (= tp!2089613 e!4404630)))

(assert (= (and b!7356151 (is-Cons!71566 (exprs!8634 ct1!282))) b!7356414))

(declare-fun b!7356430 () Bool)

(declare-fun e!4404635 () Bool)

(declare-fun tp!2089658 () Bool)

(declare-fun tp!2089655 () Bool)

(assert (=> b!7356430 (= e!4404635 (and tp!2089658 tp!2089655))))

(assert (=> b!7356152 (= tp!2089607 e!4404635)))

(declare-fun b!7356429 () Bool)

(assert (=> b!7356429 (= e!4404635 tp_is_empty!48633)))

(declare-fun b!7356431 () Bool)

(declare-fun tp!2089656 () Bool)

(assert (=> b!7356431 (= e!4404635 tp!2089656)))

(declare-fun b!7356432 () Bool)

(declare-fun tp!2089654 () Bool)

(declare-fun tp!2089657 () Bool)

(assert (=> b!7356432 (= e!4404635 (and tp!2089654 tp!2089657))))

(assert (= (and b!7356152 (is-ElementMatch!19194 (regOne!38900 r1!2370))) b!7356429))

(assert (= (and b!7356152 (is-Concat!28039 (regOne!38900 r1!2370))) b!7356430))

(assert (= (and b!7356152 (is-Star!19194 (regOne!38900 r1!2370))) b!7356431))

(assert (= (and b!7356152 (is-Union!19194 (regOne!38900 r1!2370))) b!7356432))

(declare-fun b!7356434 () Bool)

(declare-fun e!4404636 () Bool)

(declare-fun tp!2089663 () Bool)

(declare-fun tp!2089660 () Bool)

(assert (=> b!7356434 (= e!4404636 (and tp!2089663 tp!2089660))))

(assert (=> b!7356152 (= tp!2089610 e!4404636)))

(declare-fun b!7356433 () Bool)

(assert (=> b!7356433 (= e!4404636 tp_is_empty!48633)))

(declare-fun b!7356435 () Bool)

(declare-fun tp!2089661 () Bool)

(assert (=> b!7356435 (= e!4404636 tp!2089661)))

(declare-fun b!7356436 () Bool)

(declare-fun tp!2089659 () Bool)

(declare-fun tp!2089662 () Bool)

(assert (=> b!7356436 (= e!4404636 (and tp!2089659 tp!2089662))))

(assert (= (and b!7356152 (is-ElementMatch!19194 (regTwo!38900 r1!2370))) b!7356433))

(assert (= (and b!7356152 (is-Concat!28039 (regTwo!38900 r1!2370))) b!7356434))

(assert (= (and b!7356152 (is-Star!19194 (regTwo!38900 r1!2370))) b!7356435))

(assert (= (and b!7356152 (is-Union!19194 (regTwo!38900 r1!2370))) b!7356436))

(declare-fun b!7356437 () Bool)

(declare-fun e!4404637 () Bool)

(declare-fun tp!2089664 () Bool)

(declare-fun tp!2089665 () Bool)

(assert (=> b!7356437 (= e!4404637 (and tp!2089664 tp!2089665))))

(assert (=> b!7356155 (= tp!2089611 e!4404637)))

(assert (= (and b!7356155 (is-Cons!71566 (exprs!8634 cWitness!61))) b!7356437))

(declare-fun b!7356439 () Bool)

(declare-fun e!4404638 () Bool)

(declare-fun tp!2089670 () Bool)

(declare-fun tp!2089667 () Bool)

(assert (=> b!7356439 (= e!4404638 (and tp!2089670 tp!2089667))))

(assert (=> b!7356154 (= tp!2089606 e!4404638)))

(declare-fun b!7356438 () Bool)

(assert (=> b!7356438 (= e!4404638 tp_is_empty!48633)))

(declare-fun b!7356440 () Bool)

(declare-fun tp!2089668 () Bool)

(assert (=> b!7356440 (= e!4404638 tp!2089668)))

(declare-fun b!7356441 () Bool)

(declare-fun tp!2089666 () Bool)

(declare-fun tp!2089669 () Bool)

(assert (=> b!7356441 (= e!4404638 (and tp!2089666 tp!2089669))))

(assert (= (and b!7356154 (is-ElementMatch!19194 (regOne!38901 r1!2370))) b!7356438))

(assert (= (and b!7356154 (is-Concat!28039 (regOne!38901 r1!2370))) b!7356439))

(assert (= (and b!7356154 (is-Star!19194 (regOne!38901 r1!2370))) b!7356440))

(assert (= (and b!7356154 (is-Union!19194 (regOne!38901 r1!2370))) b!7356441))

(declare-fun b!7356443 () Bool)

(declare-fun e!4404639 () Bool)

(declare-fun tp!2089675 () Bool)

(declare-fun tp!2089672 () Bool)

(assert (=> b!7356443 (= e!4404639 (and tp!2089675 tp!2089672))))

(assert (=> b!7356154 (= tp!2089609 e!4404639)))

(declare-fun b!7356442 () Bool)

(assert (=> b!7356442 (= e!4404639 tp_is_empty!48633)))

(declare-fun b!7356444 () Bool)

(declare-fun tp!2089673 () Bool)

(assert (=> b!7356444 (= e!4404639 tp!2089673)))

(declare-fun b!7356445 () Bool)

(declare-fun tp!2089671 () Bool)

(declare-fun tp!2089674 () Bool)

(assert (=> b!7356445 (= e!4404639 (and tp!2089671 tp!2089674))))

(assert (= (and b!7356154 (is-ElementMatch!19194 (regTwo!38901 r1!2370))) b!7356442))

(assert (= (and b!7356154 (is-Concat!28039 (regTwo!38901 r1!2370))) b!7356443))

(assert (= (and b!7356154 (is-Star!19194 (regTwo!38901 r1!2370))) b!7356444))

(assert (= (and b!7356154 (is-Union!19194 (regTwo!38901 r1!2370))) b!7356445))

(declare-fun b!7356447 () Bool)

(declare-fun e!4404640 () Bool)

(declare-fun tp!2089680 () Bool)

(declare-fun tp!2089677 () Bool)

(assert (=> b!7356447 (= e!4404640 (and tp!2089680 tp!2089677))))

(assert (=> b!7356149 (= tp!2089608 e!4404640)))

(declare-fun b!7356446 () Bool)

(assert (=> b!7356446 (= e!4404640 tp_is_empty!48633)))

(declare-fun b!7356448 () Bool)

(declare-fun tp!2089678 () Bool)

(assert (=> b!7356448 (= e!4404640 tp!2089678)))

(declare-fun b!7356449 () Bool)

(declare-fun tp!2089676 () Bool)

(declare-fun tp!2089679 () Bool)

(assert (=> b!7356449 (= e!4404640 (and tp!2089676 tp!2089679))))

(assert (= (and b!7356149 (is-ElementMatch!19194 (reg!19523 r1!2370))) b!7356446))

(assert (= (and b!7356149 (is-Concat!28039 (reg!19523 r1!2370))) b!7356447))

(assert (= (and b!7356149 (is-Star!19194 (reg!19523 r1!2370))) b!7356448))

(assert (= (and b!7356149 (is-Union!19194 (reg!19523 r1!2370))) b!7356449))

(declare-fun b!7356450 () Bool)

(declare-fun e!4404641 () Bool)

(declare-fun tp!2089681 () Bool)

(declare-fun tp!2089682 () Bool)

(assert (=> b!7356450 (= e!4404641 (and tp!2089681 tp!2089682))))

(assert (=> b!7356164 (= tp!2089612 e!4404641)))

(assert (= (and b!7356164 (is-Cons!71566 (exprs!8634 ct2!378))) b!7356450))

(declare-fun b_lambda!284255 () Bool)

(assert (= b_lambda!284251 (or b!7356161 b_lambda!284255)))

(declare-fun bs!1919785 () Bool)

(declare-fun d!2281544 () Bool)

(assert (= bs!1919785 (and d!2281544 b!7356161)))

(assert (=> bs!1919785 (= (dynLambda!29511 lambda!457036 (h!78014 (exprs!8634 ct1!282))) (validRegex!9790 (h!78014 (exprs!8634 ct1!282))))))

(declare-fun m!8016232 () Bool)

(assert (=> bs!1919785 m!8016232))

(assert (=> b!7356220 d!2281544))

(declare-fun b_lambda!284257 () Bool)

(assert (= b_lambda!284253 (or b!7356161 b_lambda!284257)))

(declare-fun bs!1919786 () Bool)

(declare-fun d!2281546 () Bool)

(assert (= bs!1919786 (and d!2281546 b!7356161)))

(assert (=> bs!1919786 (= (dynLambda!29511 lambda!457036 (h!78014 (exprs!8634 ct2!378))) (validRegex!9790 (h!78014 (exprs!8634 ct2!378))))))

(declare-fun m!8016234 () Bool)

(assert (=> bs!1919786 m!8016234))

(assert (=> b!7356327 d!2281546))

(push 1)

(assert (not b!7356372))

(assert (not bm!673535))

(assert (not b!7356436))

(assert (not b!7356414))

(assert (not b!7356437))

(assert (not b!7356449))

(assert (not b!7356444))

(assert (not b!7356441))

(assert (not b!7356358))

(assert (not b!7356325))

(assert (not bm!673563))

(assert (not b!7356439))

(assert (not b!7356282))

(assert (not b!7356271))

(assert (not d!2281512))

(assert (not b!7356435))

(assert (not b!7356430))

(assert (not d!2281502))

(assert (not bm!673528))

(assert (not b!7356432))

(assert (not d!2281510))

(assert (not b!7356357))

(assert (not bm!673558))

(assert (not bm!673534))

(assert (not d!2281528))

(assert (not b!7356440))

(assert (not b!7356324))

(assert tp_is_empty!48633)

(assert (not d!2281522))

(assert (not bm!673559))

(assert (not b!7356395))

(assert (not bs!1919786))

(assert (not bm!673529))

(assert (not b!7356434))

(assert (not b!7356448))

(assert (not bm!673576))

(assert (not d!2281520))

(assert (not d!2281530))

(assert (not d!2281518))

(assert (not d!2281500))

(assert (not b!7356354))

(assert (not bs!1919785))

(assert (not b!7356328))

(assert (not d!2281524))

(assert (not b!7356450))

(assert (not bm!673574))

(assert (not b!7356393))

(assert (not b_lambda!284257))

(assert (not bm!673530))

(assert (not b!7356447))

(assert (not b!7356373))

(assert (not b!7356221))

(assert (not bm!673578))

(assert (not bm!673536))

(assert (not bm!673561))

(assert (not b!7356445))

(assert (not bm!673573))

(assert (not b!7356360))

(assert (not b_lambda!284255))

(assert (not d!2281532))

(assert (not bm!673577))

(assert (not bm!673562))

(assert (not b!7356443))

(assert (not b!7356431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

