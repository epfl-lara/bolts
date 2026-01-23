; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717694 () Bool)

(assert start!717694)

(declare-fun b!7349212 () Bool)

(declare-fun res!2968065 () Bool)

(declare-fun e!4400469 () Bool)

(assert (=> b!7349212 (=> (not res!2968065) (not e!4400469))))

(declare-datatypes ((C!38590 0))(
  ( (C!38591 (val!29655 Int)) )
))
(declare-datatypes ((Regex!19158 0))(
  ( (ElementMatch!19158 (c!1365324 C!38590)) (Concat!28003 (regOne!38828 Regex!19158) (regTwo!38828 Regex!19158)) (EmptyExpr!19158) (Star!19158 (reg!19487 Regex!19158)) (EmptyLang!19158) (Union!19158 (regOne!38829 Regex!19158) (regTwo!38829 Regex!19158)) )
))
(declare-datatypes ((List!71654 0))(
  ( (Nil!71530) (Cons!71530 (h!77978 Regex!19158) (t!386067 List!71654)) )
))
(declare-datatypes ((Context!16196 0))(
  ( (Context!16197 (exprs!8598 List!71654)) )
))
(declare-fun cWitness!61 () Context!16196)

(declare-fun lt!2611845 () (Set Context!16196))

(assert (=> b!7349212 (= res!2968065 (not (set.member cWitness!61 lt!2611845)))))

(declare-fun b!7349213 () Bool)

(declare-fun e!4400463 () Bool)

(declare-fun e!4400470 () Bool)

(assert (=> b!7349213 (= e!4400463 e!4400470)))

(declare-fun res!2968069 () Bool)

(assert (=> b!7349213 (=> res!2968069 e!4400470)))

(declare-fun lambda!456398 () Int)

(declare-fun forall!17982 (List!71654 Int) Bool)

(assert (=> b!7349213 (= res!2968069 (not (forall!17982 (exprs!8598 cWitness!61) lambda!456398)))))

(declare-fun b!7349214 () Bool)

(declare-fun ct2!378 () Context!16196)

(assert (=> b!7349214 (= e!4400470 (forall!17982 (exprs!8598 ct2!378) lambda!456398))))

(declare-fun b!7349215 () Bool)

(declare-fun e!4400466 () Bool)

(declare-fun tp!2087302 () Bool)

(assert (=> b!7349215 (= e!4400466 tp!2087302)))

(declare-fun b!7349217 () Bool)

(assert (=> b!7349217 (= e!4400469 (not e!4400463))))

(declare-fun res!2968071 () Bool)

(assert (=> b!7349217 (=> res!2968071 e!4400463)))

(declare-fun lt!2611848 () Context!16196)

(declare-fun lt!2611851 () (Set Context!16196))

(assert (=> b!7349217 (= res!2968071 (not (set.member lt!2611848 lt!2611851)))))

(declare-datatypes ((Unit!165269 0))(
  ( (Unit!165270) )
))
(declare-fun lt!2611842 () Unit!165269)

(declare-fun lemmaConcatPreservesForall!1833 (List!71654 List!71654 Int) Unit!165269)

(assert (=> b!7349217 (= lt!2611842 (lemmaConcatPreservesForall!1833 (exprs!8598 cWitness!61) (exprs!8598 ct2!378) lambda!456398))))

(declare-fun lt!2611846 () Context!16196)

(declare-fun r1!2370 () Regex!19158)

(declare-fun c!10362 () C!38590)

(declare-fun derivationStepZipperDown!2984 (Regex!19158 Context!16196 C!38590) (Set Context!16196))

(assert (=> b!7349217 (set.member lt!2611848 (derivationStepZipperDown!2984 (regTwo!38828 r1!2370) lt!2611846 c!10362))))

(declare-fun ++!16976 (List!71654 List!71654) List!71654)

(assert (=> b!7349217 (= lt!2611848 (Context!16197 (++!16976 (exprs!8598 cWitness!61) (exprs!8598 ct2!378))))))

(declare-fun ct1!282 () Context!16196)

(declare-fun lt!2611850 () Unit!165269)

(assert (=> b!7349217 (= lt!2611850 (lemmaConcatPreservesForall!1833 (exprs!8598 ct1!282) (exprs!8598 ct2!378) lambda!456398))))

(declare-fun lt!2611844 () Unit!165269)

(assert (=> b!7349217 (= lt!2611844 (lemmaConcatPreservesForall!1833 (exprs!8598 cWitness!61) (exprs!8598 ct2!378) lambda!456398))))

(declare-fun lt!2611849 () Unit!165269)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!83 (Regex!19158 Context!16196 Context!16196 Context!16196 C!38590) Unit!165269)

(assert (=> b!7349217 (= lt!2611849 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!83 (regTwo!38828 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7349218 () Bool)

(declare-fun tp_is_empty!48561 () Bool)

(assert (=> b!7349218 (= e!4400466 tp_is_empty!48561)))

(declare-fun b!7349219 () Bool)

(declare-fun tp!2087303 () Bool)

(declare-fun tp!2087307 () Bool)

(assert (=> b!7349219 (= e!4400466 (and tp!2087303 tp!2087307))))

(declare-fun b!7349220 () Bool)

(declare-fun e!4400465 () Bool)

(declare-fun e!4400467 () Bool)

(assert (=> b!7349220 (= e!4400465 e!4400467)))

(declare-fun res!2968070 () Bool)

(assert (=> b!7349220 (=> (not res!2968070) (not e!4400467))))

(assert (=> b!7349220 (= res!2968070 (and (or (not (is-ElementMatch!19158 r1!2370)) (not (= c!10362 (c!1365324 r1!2370)))) (not (is-Union!19158 r1!2370)) (is-Concat!28003 r1!2370)))))

(assert (=> b!7349220 (= lt!2611851 (derivationStepZipperDown!2984 r1!2370 lt!2611846 c!10362))))

(assert (=> b!7349220 (= lt!2611846 (Context!16197 (++!16976 (exprs!8598 ct1!282) (exprs!8598 ct2!378))))))

(declare-fun lt!2611843 () Unit!165269)

(assert (=> b!7349220 (= lt!2611843 (lemmaConcatPreservesForall!1833 (exprs!8598 ct1!282) (exprs!8598 ct2!378) lambda!456398))))

(declare-fun b!7349221 () Bool)

(declare-fun res!2968066 () Bool)

(assert (=> b!7349221 (=> (not res!2968066) (not e!4400467))))

(declare-fun validRegex!9754 (Regex!19158) Bool)

(assert (=> b!7349221 (= res!2968066 (validRegex!9754 (regTwo!38828 r1!2370)))))

(declare-fun b!7349222 () Bool)

(declare-fun e!4400468 () Bool)

(declare-fun tp!2087308 () Bool)

(assert (=> b!7349222 (= e!4400468 tp!2087308)))

(declare-fun b!7349223 () Bool)

(declare-fun tp!2087304 () Bool)

(declare-fun tp!2087305 () Bool)

(assert (=> b!7349223 (= e!4400466 (and tp!2087304 tp!2087305))))

(declare-fun b!7349216 () Bool)

(declare-fun e!4400461 () Bool)

(declare-fun tp!2087306 () Bool)

(assert (=> b!7349216 (= e!4400461 tp!2087306)))

(declare-fun res!2968063 () Bool)

(declare-fun e!4400464 () Bool)

(assert (=> start!717694 (=> (not res!2968063) (not e!4400464))))

(assert (=> start!717694 (= res!2968063 (validRegex!9754 r1!2370))))

(assert (=> start!717694 e!4400464))

(assert (=> start!717694 tp_is_empty!48561))

(declare-fun inv!91236 (Context!16196) Bool)

(assert (=> start!717694 (and (inv!91236 cWitness!61) e!4400461)))

(declare-fun e!4400462 () Bool)

(assert (=> start!717694 (and (inv!91236 ct1!282) e!4400462)))

(assert (=> start!717694 e!4400466))

(assert (=> start!717694 (and (inv!91236 ct2!378) e!4400468)))

(declare-fun b!7349224 () Bool)

(declare-fun tp!2087309 () Bool)

(assert (=> b!7349224 (= e!4400462 tp!2087309)))

(declare-fun b!7349225 () Bool)

(assert (=> b!7349225 (= e!4400467 e!4400469)))

(declare-fun res!2968064 () Bool)

(assert (=> b!7349225 (=> (not res!2968064) (not e!4400469))))

(declare-fun lt!2611847 () (Set Context!16196))

(assert (=> b!7349225 (= res!2968064 (= lt!2611847 (set.union lt!2611845 (derivationStepZipperDown!2984 (regTwo!38828 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3156 (List!71654 Regex!19158) List!71654)

(assert (=> b!7349225 (= lt!2611845 (derivationStepZipperDown!2984 (regOne!38828 r1!2370) (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370))) c!10362))))

(declare-fun b!7349226 () Bool)

(assert (=> b!7349226 (= e!4400464 e!4400465)))

(declare-fun res!2968067 () Bool)

(assert (=> b!7349226 (=> (not res!2968067) (not e!4400465))))

(assert (=> b!7349226 (= res!2968067 (set.member cWitness!61 lt!2611847))))

(assert (=> b!7349226 (= lt!2611847 (derivationStepZipperDown!2984 r1!2370 ct1!282 c!10362))))

(declare-fun b!7349227 () Bool)

(declare-fun res!2968068 () Bool)

(assert (=> b!7349227 (=> (not res!2968068) (not e!4400467))))

(declare-fun nullable!8249 (Regex!19158) Bool)

(assert (=> b!7349227 (= res!2968068 (nullable!8249 (regOne!38828 r1!2370)))))

(assert (= (and start!717694 res!2968063) b!7349226))

(assert (= (and b!7349226 res!2968067) b!7349220))

(assert (= (and b!7349220 res!2968070) b!7349227))

(assert (= (and b!7349227 res!2968068) b!7349221))

(assert (= (and b!7349221 res!2968066) b!7349225))

(assert (= (and b!7349225 res!2968064) b!7349212))

(assert (= (and b!7349212 res!2968065) b!7349217))

(assert (= (and b!7349217 (not res!2968071)) b!7349213))

(assert (= (and b!7349213 (not res!2968069)) b!7349214))

(assert (= start!717694 b!7349216))

(assert (= start!717694 b!7349224))

(assert (= (and start!717694 (is-ElementMatch!19158 r1!2370)) b!7349218))

(assert (= (and start!717694 (is-Concat!28003 r1!2370)) b!7349219))

(assert (= (and start!717694 (is-Star!19158 r1!2370)) b!7349215))

(assert (= (and start!717694 (is-Union!19158 r1!2370)) b!7349223))

(assert (= start!717694 b!7349222))

(declare-fun m!8010830 () Bool)

(assert (=> b!7349221 m!8010830))

(declare-fun m!8010832 () Bool)

(assert (=> b!7349213 m!8010832))

(declare-fun m!8010834 () Bool)

(assert (=> start!717694 m!8010834))

(declare-fun m!8010836 () Bool)

(assert (=> start!717694 m!8010836))

(declare-fun m!8010838 () Bool)

(assert (=> start!717694 m!8010838))

(declare-fun m!8010840 () Bool)

(assert (=> start!717694 m!8010840))

(declare-fun m!8010842 () Bool)

(assert (=> b!7349226 m!8010842))

(declare-fun m!8010844 () Bool)

(assert (=> b!7349226 m!8010844))

(declare-fun m!8010846 () Bool)

(assert (=> b!7349225 m!8010846))

(declare-fun m!8010848 () Bool)

(assert (=> b!7349225 m!8010848))

(declare-fun m!8010850 () Bool)

(assert (=> b!7349225 m!8010850))

(declare-fun m!8010852 () Bool)

(assert (=> b!7349214 m!8010852))

(declare-fun m!8010854 () Bool)

(assert (=> b!7349220 m!8010854))

(declare-fun m!8010856 () Bool)

(assert (=> b!7349220 m!8010856))

(declare-fun m!8010858 () Bool)

(assert (=> b!7349220 m!8010858))

(declare-fun m!8010860 () Bool)

(assert (=> b!7349227 m!8010860))

(declare-fun m!8010862 () Bool)

(assert (=> b!7349217 m!8010862))

(assert (=> b!7349217 m!8010858))

(assert (=> b!7349217 m!8010862))

(declare-fun m!8010864 () Bool)

(assert (=> b!7349217 m!8010864))

(declare-fun m!8010866 () Bool)

(assert (=> b!7349217 m!8010866))

(declare-fun m!8010868 () Bool)

(assert (=> b!7349217 m!8010868))

(declare-fun m!8010870 () Bool)

(assert (=> b!7349217 m!8010870))

(declare-fun m!8010872 () Bool)

(assert (=> b!7349217 m!8010872))

(declare-fun m!8010874 () Bool)

(assert (=> b!7349212 m!8010874))

(push 1)

(assert (not b!7349224))

(assert (not b!7349213))

(assert (not start!717694))

(assert tp_is_empty!48561)

(assert (not b!7349225))

(assert (not b!7349220))

(assert (not b!7349216))

(assert (not b!7349226))

(assert (not b!7349217))

(assert (not b!7349221))

(assert (not b!7349222))

(assert (not b!7349223))

(assert (not b!7349215))

(assert (not b!7349227))

(assert (not b!7349214))

(assert (not b!7349219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7349316 () Bool)

(declare-fun e!4400529 () (Set Context!16196))

(declare-fun e!4400530 () (Set Context!16196))

(assert (=> b!7349316 (= e!4400529 e!4400530)))

(declare-fun c!1365343 () Bool)

(assert (=> b!7349316 (= c!1365343 (is-Concat!28003 r1!2370))))

(declare-fun call!671997 () (Set Context!16196))

(declare-fun call!671993 () List!71654)

(declare-fun bm!671986 () Bool)

(declare-fun c!1365342 () Bool)

(assert (=> bm!671986 (= call!671997 (derivationStepZipperDown!2984 (ite c!1365342 (regTwo!38829 r1!2370) (regOne!38828 r1!2370)) (ite c!1365342 lt!2611846 (Context!16197 call!671993)) c!10362))))

(declare-fun bm!671987 () Bool)

(declare-fun call!671995 () List!71654)

(assert (=> bm!671987 (= call!671995 call!671993)))

(declare-fun b!7349317 () Bool)

(declare-fun call!671994 () (Set Context!16196))

(assert (=> b!7349317 (= e!4400529 (set.union call!671997 call!671994))))

(declare-fun b!7349318 () Bool)

(declare-fun call!671996 () (Set Context!16196))

(assert (=> b!7349318 (= e!4400530 call!671996)))

(declare-fun b!7349319 () Bool)

(declare-fun e!4400528 () (Set Context!16196))

(declare-fun e!4400527 () (Set Context!16196))

(assert (=> b!7349319 (= e!4400528 e!4400527)))

(assert (=> b!7349319 (= c!1365342 (is-Union!19158 r1!2370))))

(declare-fun b!7349320 () Bool)

(declare-fun call!671992 () (Set Context!16196))

(assert (=> b!7349320 (= e!4400527 (set.union call!671992 call!671997))))

(declare-fun b!7349321 () Bool)

(declare-fun c!1365341 () Bool)

(assert (=> b!7349321 (= c!1365341 (is-Star!19158 r1!2370))))

(declare-fun e!4400531 () (Set Context!16196))

(assert (=> b!7349321 (= e!4400530 e!4400531)))

(declare-fun c!1365344 () Bool)

(declare-fun bm!671989 () Bool)

(assert (=> bm!671989 (= call!671992 (derivationStepZipperDown!2984 (ite c!1365342 (regOne!38829 r1!2370) (ite c!1365344 (regTwo!38828 r1!2370) (ite c!1365343 (regOne!38828 r1!2370) (reg!19487 r1!2370)))) (ite (or c!1365342 c!1365344) lt!2611846 (Context!16197 call!671995)) c!10362))))

(declare-fun b!7349322 () Bool)

(assert (=> b!7349322 (= e!4400531 (as set.empty (Set Context!16196)))))

(declare-fun b!7349323 () Bool)

(declare-fun e!4400532 () Bool)

(assert (=> b!7349323 (= c!1365344 e!4400532)))

(declare-fun res!2968111 () Bool)

(assert (=> b!7349323 (=> (not res!2968111) (not e!4400532))))

(assert (=> b!7349323 (= res!2968111 (is-Concat!28003 r1!2370))))

(assert (=> b!7349323 (= e!4400527 e!4400529)))

(declare-fun d!2280228 () Bool)

(declare-fun c!1365340 () Bool)

(assert (=> d!2280228 (= c!1365340 (and (is-ElementMatch!19158 r1!2370) (= (c!1365324 r1!2370) c!10362)))))

(assert (=> d!2280228 (= (derivationStepZipperDown!2984 r1!2370 lt!2611846 c!10362) e!4400528)))

(declare-fun bm!671990 () Bool)

(assert (=> bm!671990 (= call!671996 call!671994)))

(declare-fun bm!671991 () Bool)

(assert (=> bm!671991 (= call!671994 call!671992)))

(declare-fun bm!671992 () Bool)

(assert (=> bm!671992 (= call!671993 ($colon$colon!3156 (exprs!8598 lt!2611846) (ite (or c!1365344 c!1365343) (regTwo!38828 r1!2370) r1!2370)))))

(declare-fun b!7349324 () Bool)

(assert (=> b!7349324 (= e!4400531 call!671996)))

(declare-fun b!7349325 () Bool)

(assert (=> b!7349325 (= e!4400532 (nullable!8249 (regOne!38828 r1!2370)))))

(declare-fun b!7349326 () Bool)

(assert (=> b!7349326 (= e!4400528 (set.insert lt!2611846 (as set.empty (Set Context!16196))))))

(assert (= (and d!2280228 c!1365340) b!7349326))

(assert (= (and d!2280228 (not c!1365340)) b!7349319))

(assert (= (and b!7349319 c!1365342) b!7349320))

(assert (= (and b!7349319 (not c!1365342)) b!7349323))

(assert (= (and b!7349323 res!2968111) b!7349325))

(assert (= (and b!7349323 c!1365344) b!7349317))

(assert (= (and b!7349323 (not c!1365344)) b!7349316))

(assert (= (and b!7349316 c!1365343) b!7349318))

(assert (= (and b!7349316 (not c!1365343)) b!7349321))

(assert (= (and b!7349321 c!1365341) b!7349324))

(assert (= (and b!7349321 (not c!1365341)) b!7349322))

(assert (= (or b!7349318 b!7349324) bm!671987))

(assert (= (or b!7349318 b!7349324) bm!671990))

(assert (= (or b!7349317 bm!671990) bm!671991))

(assert (= (or b!7349317 bm!671987) bm!671992))

(assert (= (or b!7349320 b!7349317) bm!671986))

(assert (= (or b!7349320 bm!671991) bm!671989))

(declare-fun m!8010924 () Bool)

(assert (=> b!7349326 m!8010924))

(assert (=> b!7349325 m!8010860))

(declare-fun m!8010926 () Bool)

(assert (=> bm!671989 m!8010926))

(declare-fun m!8010928 () Bool)

(assert (=> bm!671986 m!8010928))

(declare-fun m!8010930 () Bool)

(assert (=> bm!671992 m!8010930))

(assert (=> b!7349220 d!2280228))

(declare-fun b!7349335 () Bool)

(declare-fun e!4400537 () List!71654)

(assert (=> b!7349335 (= e!4400537 (exprs!8598 ct2!378))))

(declare-fun b!7349337 () Bool)

(declare-fun res!2968116 () Bool)

(declare-fun e!4400538 () Bool)

(assert (=> b!7349337 (=> (not res!2968116) (not e!4400538))))

(declare-fun lt!2611884 () List!71654)

(declare-fun size!42045 (List!71654) Int)

(assert (=> b!7349337 (= res!2968116 (= (size!42045 lt!2611884) (+ (size!42045 (exprs!8598 ct1!282)) (size!42045 (exprs!8598 ct2!378)))))))

(declare-fun b!7349336 () Bool)

(assert (=> b!7349336 (= e!4400537 (Cons!71530 (h!77978 (exprs!8598 ct1!282)) (++!16976 (t!386067 (exprs!8598 ct1!282)) (exprs!8598 ct2!378))))))

(declare-fun b!7349338 () Bool)

(assert (=> b!7349338 (= e!4400538 (or (not (= (exprs!8598 ct2!378) Nil!71530)) (= lt!2611884 (exprs!8598 ct1!282))))))

(declare-fun d!2280232 () Bool)

(assert (=> d!2280232 e!4400538))

(declare-fun res!2968117 () Bool)

(assert (=> d!2280232 (=> (not res!2968117) (not e!4400538))))

(declare-fun content!15066 (List!71654) (Set Regex!19158))

(assert (=> d!2280232 (= res!2968117 (= (content!15066 lt!2611884) (set.union (content!15066 (exprs!8598 ct1!282)) (content!15066 (exprs!8598 ct2!378)))))))

(assert (=> d!2280232 (= lt!2611884 e!4400537)))

(declare-fun c!1365347 () Bool)

(assert (=> d!2280232 (= c!1365347 (is-Nil!71530 (exprs!8598 ct1!282)))))

(assert (=> d!2280232 (= (++!16976 (exprs!8598 ct1!282) (exprs!8598 ct2!378)) lt!2611884)))

(assert (= (and d!2280232 c!1365347) b!7349335))

(assert (= (and d!2280232 (not c!1365347)) b!7349336))

(assert (= (and d!2280232 res!2968117) b!7349337))

(assert (= (and b!7349337 res!2968116) b!7349338))

(declare-fun m!8010932 () Bool)

(assert (=> b!7349337 m!8010932))

(declare-fun m!8010934 () Bool)

(assert (=> b!7349337 m!8010934))

(declare-fun m!8010936 () Bool)

(assert (=> b!7349337 m!8010936))

(declare-fun m!8010938 () Bool)

(assert (=> b!7349336 m!8010938))

(declare-fun m!8010940 () Bool)

(assert (=> d!2280232 m!8010940))

(declare-fun m!8010942 () Bool)

(assert (=> d!2280232 m!8010942))

(declare-fun m!8010944 () Bool)

(assert (=> d!2280232 m!8010944))

(assert (=> b!7349220 d!2280232))

(declare-fun d!2280234 () Bool)

(assert (=> d!2280234 (forall!17982 (++!16976 (exprs!8598 ct1!282) (exprs!8598 ct2!378)) lambda!456398)))

(declare-fun lt!2611887 () Unit!165269)

(declare-fun choose!57168 (List!71654 List!71654 Int) Unit!165269)

(assert (=> d!2280234 (= lt!2611887 (choose!57168 (exprs!8598 ct1!282) (exprs!8598 ct2!378) lambda!456398))))

(assert (=> d!2280234 (forall!17982 (exprs!8598 ct1!282) lambda!456398)))

(assert (=> d!2280234 (= (lemmaConcatPreservesForall!1833 (exprs!8598 ct1!282) (exprs!8598 ct2!378) lambda!456398) lt!2611887)))

(declare-fun bs!1919147 () Bool)

(assert (= bs!1919147 d!2280234))

(assert (=> bs!1919147 m!8010856))

(assert (=> bs!1919147 m!8010856))

(declare-fun m!8010946 () Bool)

(assert (=> bs!1919147 m!8010946))

(declare-fun m!8010948 () Bool)

(assert (=> bs!1919147 m!8010948))

(declare-fun m!8010950 () Bool)

(assert (=> bs!1919147 m!8010950))

(assert (=> b!7349220 d!2280234))

(declare-fun b!7349339 () Bool)

(declare-fun e!4400541 () (Set Context!16196))

(declare-fun e!4400542 () (Set Context!16196))

(assert (=> b!7349339 (= e!4400541 e!4400542)))

(declare-fun c!1365351 () Bool)

(assert (=> b!7349339 (= c!1365351 (is-Concat!28003 (regTwo!38828 r1!2370)))))

(declare-fun call!672005 () (Set Context!16196))

(declare-fun call!672001 () List!71654)

(declare-fun c!1365350 () Bool)

(declare-fun bm!671995 () Bool)

(assert (=> bm!671995 (= call!672005 (derivationStepZipperDown!2984 (ite c!1365350 (regTwo!38829 (regTwo!38828 r1!2370)) (regOne!38828 (regTwo!38828 r1!2370))) (ite c!1365350 ct1!282 (Context!16197 call!672001)) c!10362))))

(declare-fun bm!671996 () Bool)

(declare-fun call!672003 () List!71654)

(assert (=> bm!671996 (= call!672003 call!672001)))

(declare-fun b!7349340 () Bool)

(declare-fun call!672002 () (Set Context!16196))

(assert (=> b!7349340 (= e!4400541 (set.union call!672005 call!672002))))

(declare-fun b!7349341 () Bool)

(declare-fun call!672004 () (Set Context!16196))

(assert (=> b!7349341 (= e!4400542 call!672004)))

(declare-fun b!7349342 () Bool)

(declare-fun e!4400540 () (Set Context!16196))

(declare-fun e!4400539 () (Set Context!16196))

(assert (=> b!7349342 (= e!4400540 e!4400539)))

(assert (=> b!7349342 (= c!1365350 (is-Union!19158 (regTwo!38828 r1!2370)))))

(declare-fun b!7349343 () Bool)

(declare-fun call!672000 () (Set Context!16196))

(assert (=> b!7349343 (= e!4400539 (set.union call!672000 call!672005))))

(declare-fun b!7349344 () Bool)

(declare-fun c!1365349 () Bool)

(assert (=> b!7349344 (= c!1365349 (is-Star!19158 (regTwo!38828 r1!2370)))))

(declare-fun e!4400543 () (Set Context!16196))

(assert (=> b!7349344 (= e!4400542 e!4400543)))

(declare-fun c!1365352 () Bool)

(declare-fun bm!671997 () Bool)

(assert (=> bm!671997 (= call!672000 (derivationStepZipperDown!2984 (ite c!1365350 (regOne!38829 (regTwo!38828 r1!2370)) (ite c!1365352 (regTwo!38828 (regTwo!38828 r1!2370)) (ite c!1365351 (regOne!38828 (regTwo!38828 r1!2370)) (reg!19487 (regTwo!38828 r1!2370))))) (ite (or c!1365350 c!1365352) ct1!282 (Context!16197 call!672003)) c!10362))))

(declare-fun b!7349345 () Bool)

(assert (=> b!7349345 (= e!4400543 (as set.empty (Set Context!16196)))))

(declare-fun b!7349346 () Bool)

(declare-fun e!4400544 () Bool)

(assert (=> b!7349346 (= c!1365352 e!4400544)))

(declare-fun res!2968118 () Bool)

(assert (=> b!7349346 (=> (not res!2968118) (not e!4400544))))

(assert (=> b!7349346 (= res!2968118 (is-Concat!28003 (regTwo!38828 r1!2370)))))

(assert (=> b!7349346 (= e!4400539 e!4400541)))

(declare-fun d!2280236 () Bool)

(declare-fun c!1365348 () Bool)

(assert (=> d!2280236 (= c!1365348 (and (is-ElementMatch!19158 (regTwo!38828 r1!2370)) (= (c!1365324 (regTwo!38828 r1!2370)) c!10362)))))

(assert (=> d!2280236 (= (derivationStepZipperDown!2984 (regTwo!38828 r1!2370) ct1!282 c!10362) e!4400540)))

(declare-fun bm!671998 () Bool)

(assert (=> bm!671998 (= call!672004 call!672002)))

(declare-fun bm!671999 () Bool)

(assert (=> bm!671999 (= call!672002 call!672000)))

(declare-fun bm!672000 () Bool)

(assert (=> bm!672000 (= call!672001 ($colon$colon!3156 (exprs!8598 ct1!282) (ite (or c!1365352 c!1365351) (regTwo!38828 (regTwo!38828 r1!2370)) (regTwo!38828 r1!2370))))))

(declare-fun b!7349347 () Bool)

(assert (=> b!7349347 (= e!4400543 call!672004)))

(declare-fun b!7349348 () Bool)

(assert (=> b!7349348 (= e!4400544 (nullable!8249 (regOne!38828 (regTwo!38828 r1!2370))))))

(declare-fun b!7349349 () Bool)

(assert (=> b!7349349 (= e!4400540 (set.insert ct1!282 (as set.empty (Set Context!16196))))))

(assert (= (and d!2280236 c!1365348) b!7349349))

(assert (= (and d!2280236 (not c!1365348)) b!7349342))

(assert (= (and b!7349342 c!1365350) b!7349343))

(assert (= (and b!7349342 (not c!1365350)) b!7349346))

(assert (= (and b!7349346 res!2968118) b!7349348))

(assert (= (and b!7349346 c!1365352) b!7349340))

(assert (= (and b!7349346 (not c!1365352)) b!7349339))

(assert (= (and b!7349339 c!1365351) b!7349341))

(assert (= (and b!7349339 (not c!1365351)) b!7349344))

(assert (= (and b!7349344 c!1365349) b!7349347))

(assert (= (and b!7349344 (not c!1365349)) b!7349345))

(assert (= (or b!7349341 b!7349347) bm!671996))

(assert (= (or b!7349341 b!7349347) bm!671998))

(assert (= (or b!7349340 bm!671998) bm!671999))

(assert (= (or b!7349340 bm!671996) bm!672000))

(assert (= (or b!7349343 b!7349340) bm!671995))

(assert (= (or b!7349343 bm!671999) bm!671997))

(declare-fun m!8010952 () Bool)

(assert (=> b!7349349 m!8010952))

(declare-fun m!8010954 () Bool)

(assert (=> b!7349348 m!8010954))

(declare-fun m!8010956 () Bool)

(assert (=> bm!671997 m!8010956))

(declare-fun m!8010958 () Bool)

(assert (=> bm!671995 m!8010958))

(declare-fun m!8010960 () Bool)

(assert (=> bm!672000 m!8010960))

(assert (=> b!7349225 d!2280236))

(declare-fun b!7349359 () Bool)

(declare-fun e!4400554 () (Set Context!16196))

(declare-fun e!4400555 () (Set Context!16196))

(assert (=> b!7349359 (= e!4400554 e!4400555)))

(declare-fun c!1365358 () Bool)

(assert (=> b!7349359 (= c!1365358 (is-Concat!28003 (regOne!38828 r1!2370)))))

(declare-fun call!672010 () List!71654)

(declare-fun bm!672004 () Bool)

(declare-fun call!672014 () (Set Context!16196))

(declare-fun c!1365357 () Bool)

(assert (=> bm!672004 (= call!672014 (derivationStepZipperDown!2984 (ite c!1365357 (regTwo!38829 (regOne!38828 r1!2370)) (regOne!38828 (regOne!38828 r1!2370))) (ite c!1365357 (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370))) (Context!16197 call!672010)) c!10362))))

(declare-fun bm!672005 () Bool)

(declare-fun call!672012 () List!71654)

(assert (=> bm!672005 (= call!672012 call!672010)))

(declare-fun b!7349360 () Bool)

(declare-fun call!672011 () (Set Context!16196))

(assert (=> b!7349360 (= e!4400554 (set.union call!672014 call!672011))))

(declare-fun b!7349361 () Bool)

(declare-fun call!672013 () (Set Context!16196))

(assert (=> b!7349361 (= e!4400555 call!672013)))

(declare-fun b!7349362 () Bool)

(declare-fun e!4400553 () (Set Context!16196))

(declare-fun e!4400552 () (Set Context!16196))

(assert (=> b!7349362 (= e!4400553 e!4400552)))

(assert (=> b!7349362 (= c!1365357 (is-Union!19158 (regOne!38828 r1!2370)))))

(declare-fun b!7349363 () Bool)

(declare-fun call!672009 () (Set Context!16196))

(assert (=> b!7349363 (= e!4400552 (set.union call!672009 call!672014))))

(declare-fun b!7349364 () Bool)

(declare-fun c!1365356 () Bool)

(assert (=> b!7349364 (= c!1365356 (is-Star!19158 (regOne!38828 r1!2370)))))

(declare-fun e!4400556 () (Set Context!16196))

(assert (=> b!7349364 (= e!4400555 e!4400556)))

(declare-fun c!1365359 () Bool)

(declare-fun bm!672006 () Bool)

(assert (=> bm!672006 (= call!672009 (derivationStepZipperDown!2984 (ite c!1365357 (regOne!38829 (regOne!38828 r1!2370)) (ite c!1365359 (regTwo!38828 (regOne!38828 r1!2370)) (ite c!1365358 (regOne!38828 (regOne!38828 r1!2370)) (reg!19487 (regOne!38828 r1!2370))))) (ite (or c!1365357 c!1365359) (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370))) (Context!16197 call!672012)) c!10362))))

(declare-fun b!7349365 () Bool)

(assert (=> b!7349365 (= e!4400556 (as set.empty (Set Context!16196)))))

(declare-fun b!7349366 () Bool)

(declare-fun e!4400557 () Bool)

(assert (=> b!7349366 (= c!1365359 e!4400557)))

(declare-fun res!2968124 () Bool)

(assert (=> b!7349366 (=> (not res!2968124) (not e!4400557))))

(assert (=> b!7349366 (= res!2968124 (is-Concat!28003 (regOne!38828 r1!2370)))))

(assert (=> b!7349366 (= e!4400552 e!4400554)))

(declare-fun d!2280238 () Bool)

(declare-fun c!1365355 () Bool)

(assert (=> d!2280238 (= c!1365355 (and (is-ElementMatch!19158 (regOne!38828 r1!2370)) (= (c!1365324 (regOne!38828 r1!2370)) c!10362)))))

(assert (=> d!2280238 (= (derivationStepZipperDown!2984 (regOne!38828 r1!2370) (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370))) c!10362) e!4400553)))

(declare-fun bm!672007 () Bool)

(assert (=> bm!672007 (= call!672013 call!672011)))

(declare-fun bm!672008 () Bool)

(assert (=> bm!672008 (= call!672011 call!672009)))

(declare-fun bm!672009 () Bool)

(assert (=> bm!672009 (= call!672010 ($colon$colon!3156 (exprs!8598 (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370)))) (ite (or c!1365359 c!1365358) (regTwo!38828 (regOne!38828 r1!2370)) (regOne!38828 r1!2370))))))

(declare-fun b!7349367 () Bool)

(assert (=> b!7349367 (= e!4400556 call!672013)))

(declare-fun b!7349368 () Bool)

(assert (=> b!7349368 (= e!4400557 (nullable!8249 (regOne!38828 (regOne!38828 r1!2370))))))

(declare-fun b!7349369 () Bool)

(assert (=> b!7349369 (= e!4400553 (set.insert (Context!16197 ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370))) (as set.empty (Set Context!16196))))))

(assert (= (and d!2280238 c!1365355) b!7349369))

(assert (= (and d!2280238 (not c!1365355)) b!7349362))

(assert (= (and b!7349362 c!1365357) b!7349363))

(assert (= (and b!7349362 (not c!1365357)) b!7349366))

(assert (= (and b!7349366 res!2968124) b!7349368))

(assert (= (and b!7349366 c!1365359) b!7349360))

(assert (= (and b!7349366 (not c!1365359)) b!7349359))

(assert (= (and b!7349359 c!1365358) b!7349361))

(assert (= (and b!7349359 (not c!1365358)) b!7349364))

(assert (= (and b!7349364 c!1365356) b!7349367))

(assert (= (and b!7349364 (not c!1365356)) b!7349365))

(assert (= (or b!7349361 b!7349367) bm!672005))

(assert (= (or b!7349361 b!7349367) bm!672007))

(assert (= (or b!7349360 bm!672007) bm!672008))

(assert (= (or b!7349360 bm!672005) bm!672009))

(assert (= (or b!7349363 b!7349360) bm!672004))

(assert (= (or b!7349363 bm!672008) bm!672006))

(declare-fun m!8010962 () Bool)

(assert (=> b!7349369 m!8010962))

(declare-fun m!8010964 () Bool)

(assert (=> b!7349368 m!8010964))

(declare-fun m!8010966 () Bool)

(assert (=> bm!672006 m!8010966))

(declare-fun m!8010969 () Bool)

(assert (=> bm!672004 m!8010969))

(declare-fun m!8010972 () Bool)

(assert (=> bm!672009 m!8010972))

(assert (=> b!7349225 d!2280238))

(declare-fun d!2280240 () Bool)

(assert (=> d!2280240 (= ($colon$colon!3156 (exprs!8598 ct1!282) (regTwo!38828 r1!2370)) (Cons!71530 (regTwo!38828 r1!2370) (exprs!8598 ct1!282)))))

(assert (=> b!7349225 d!2280240))

(declare-fun b!7349370 () Bool)

(declare-fun e!4400560 () (Set Context!16196))

(declare-fun e!4400561 () (Set Context!16196))

(assert (=> b!7349370 (= e!4400560 e!4400561)))

(declare-fun c!1365363 () Bool)

(assert (=> b!7349370 (= c!1365363 (is-Concat!28003 r1!2370))))

(declare-fun bm!672010 () Bool)

(declare-fun call!672020 () (Set Context!16196))

(declare-fun call!672016 () List!71654)

(declare-fun c!1365362 () Bool)

(assert (=> bm!672010 (= call!672020 (derivationStepZipperDown!2984 (ite c!1365362 (regTwo!38829 r1!2370) (regOne!38828 r1!2370)) (ite c!1365362 ct1!282 (Context!16197 call!672016)) c!10362))))

(declare-fun bm!672011 () Bool)

(declare-fun call!672018 () List!71654)

(assert (=> bm!672011 (= call!672018 call!672016)))

(declare-fun b!7349371 () Bool)

(declare-fun call!672017 () (Set Context!16196))

(assert (=> b!7349371 (= e!4400560 (set.union call!672020 call!672017))))

(declare-fun b!7349372 () Bool)

(declare-fun call!672019 () (Set Context!16196))

(assert (=> b!7349372 (= e!4400561 call!672019)))

(declare-fun b!7349373 () Bool)

(declare-fun e!4400559 () (Set Context!16196))

(declare-fun e!4400558 () (Set Context!16196))

(assert (=> b!7349373 (= e!4400559 e!4400558)))

(assert (=> b!7349373 (= c!1365362 (is-Union!19158 r1!2370))))

(declare-fun b!7349374 () Bool)

(declare-fun call!672015 () (Set Context!16196))

(assert (=> b!7349374 (= e!4400558 (set.union call!672015 call!672020))))

(declare-fun b!7349375 () Bool)

(declare-fun c!1365361 () Bool)

(assert (=> b!7349375 (= c!1365361 (is-Star!19158 r1!2370))))

(declare-fun e!4400562 () (Set Context!16196))

(assert (=> b!7349375 (= e!4400561 e!4400562)))

(declare-fun c!1365364 () Bool)

(declare-fun bm!672012 () Bool)

(assert (=> bm!672012 (= call!672015 (derivationStepZipperDown!2984 (ite c!1365362 (regOne!38829 r1!2370) (ite c!1365364 (regTwo!38828 r1!2370) (ite c!1365363 (regOne!38828 r1!2370) (reg!19487 r1!2370)))) (ite (or c!1365362 c!1365364) ct1!282 (Context!16197 call!672018)) c!10362))))

(declare-fun b!7349376 () Bool)

(assert (=> b!7349376 (= e!4400562 (as set.empty (Set Context!16196)))))

(declare-fun b!7349377 () Bool)

(declare-fun e!4400563 () Bool)

(assert (=> b!7349377 (= c!1365364 e!4400563)))

(declare-fun res!2968125 () Bool)

(assert (=> b!7349377 (=> (not res!2968125) (not e!4400563))))

(assert (=> b!7349377 (= res!2968125 (is-Concat!28003 r1!2370))))

(assert (=> b!7349377 (= e!4400558 e!4400560)))

(declare-fun d!2280244 () Bool)

(declare-fun c!1365360 () Bool)

(assert (=> d!2280244 (= c!1365360 (and (is-ElementMatch!19158 r1!2370) (= (c!1365324 r1!2370) c!10362)))))

(assert (=> d!2280244 (= (derivationStepZipperDown!2984 r1!2370 ct1!282 c!10362) e!4400559)))

(declare-fun bm!672013 () Bool)

(assert (=> bm!672013 (= call!672019 call!672017)))

(declare-fun bm!672014 () Bool)

(assert (=> bm!672014 (= call!672017 call!672015)))

(declare-fun bm!672015 () Bool)

(assert (=> bm!672015 (= call!672016 ($colon$colon!3156 (exprs!8598 ct1!282) (ite (or c!1365364 c!1365363) (regTwo!38828 r1!2370) r1!2370)))))

(declare-fun b!7349378 () Bool)

(assert (=> b!7349378 (= e!4400562 call!672019)))

(declare-fun b!7349379 () Bool)

(assert (=> b!7349379 (= e!4400563 (nullable!8249 (regOne!38828 r1!2370)))))

(declare-fun b!7349380 () Bool)

(assert (=> b!7349380 (= e!4400559 (set.insert ct1!282 (as set.empty (Set Context!16196))))))

(assert (= (and d!2280244 c!1365360) b!7349380))

(assert (= (and d!2280244 (not c!1365360)) b!7349373))

(assert (= (and b!7349373 c!1365362) b!7349374))

(assert (= (and b!7349373 (not c!1365362)) b!7349377))

(assert (= (and b!7349377 res!2968125) b!7349379))

(assert (= (and b!7349377 c!1365364) b!7349371))

(assert (= (and b!7349377 (not c!1365364)) b!7349370))

(assert (= (and b!7349370 c!1365363) b!7349372))

(assert (= (and b!7349370 (not c!1365363)) b!7349375))

(assert (= (and b!7349375 c!1365361) b!7349378))

(assert (= (and b!7349375 (not c!1365361)) b!7349376))

(assert (= (or b!7349372 b!7349378) bm!672011))

(assert (= (or b!7349372 b!7349378) bm!672013))

(assert (= (or b!7349371 bm!672013) bm!672014))

(assert (= (or b!7349371 bm!672011) bm!672015))

(assert (= (or b!7349374 b!7349371) bm!672010))

(assert (= (or b!7349374 bm!672014) bm!672012))

(assert (=> b!7349380 m!8010952))

(assert (=> b!7349379 m!8010860))

(declare-fun m!8010978 () Bool)

(assert (=> bm!672012 m!8010978))

(declare-fun m!8010980 () Bool)

(assert (=> bm!672010 m!8010980))

(declare-fun m!8010982 () Bool)

(assert (=> bm!672015 m!8010982))

(assert (=> b!7349226 d!2280244))

(declare-fun d!2280246 () Bool)

(declare-fun res!2968130 () Bool)

(declare-fun e!4400568 () Bool)

(assert (=> d!2280246 (=> res!2968130 e!4400568)))

(assert (=> d!2280246 (= res!2968130 (is-Nil!71530 (exprs!8598 cWitness!61)))))

(assert (=> d!2280246 (= (forall!17982 (exprs!8598 cWitness!61) lambda!456398) e!4400568)))

(declare-fun b!7349385 () Bool)

(declare-fun e!4400569 () Bool)

(assert (=> b!7349385 (= e!4400568 e!4400569)))

(declare-fun res!2968131 () Bool)

(assert (=> b!7349385 (=> (not res!2968131) (not e!4400569))))

(declare-fun dynLambda!29487 (Int Regex!19158) Bool)

(assert (=> b!7349385 (= res!2968131 (dynLambda!29487 lambda!456398 (h!77978 (exprs!8598 cWitness!61))))))

(declare-fun b!7349386 () Bool)

(assert (=> b!7349386 (= e!4400569 (forall!17982 (t!386067 (exprs!8598 cWitness!61)) lambda!456398))))

(assert (= (and d!2280246 (not res!2968130)) b!7349385))

(assert (= (and b!7349385 res!2968131) b!7349386))

(declare-fun b_lambda!284083 () Bool)

(assert (=> (not b_lambda!284083) (not b!7349385)))

(declare-fun m!8010984 () Bool)

(assert (=> b!7349385 m!8010984))

(declare-fun m!8010986 () Bool)

(assert (=> b!7349386 m!8010986))

(assert (=> b!7349213 d!2280246))

(declare-fun d!2280248 () Bool)

(declare-fun res!2968132 () Bool)

(declare-fun e!4400570 () Bool)

(assert (=> d!2280248 (=> res!2968132 e!4400570)))

(assert (=> d!2280248 (= res!2968132 (is-Nil!71530 (exprs!8598 ct2!378)))))

(assert (=> d!2280248 (= (forall!17982 (exprs!8598 ct2!378) lambda!456398) e!4400570)))

(declare-fun b!7349387 () Bool)

(declare-fun e!4400571 () Bool)

(assert (=> b!7349387 (= e!4400570 e!4400571)))

(declare-fun res!2968133 () Bool)

(assert (=> b!7349387 (=> (not res!2968133) (not e!4400571))))

(assert (=> b!7349387 (= res!2968133 (dynLambda!29487 lambda!456398 (h!77978 (exprs!8598 ct2!378))))))

(declare-fun b!7349388 () Bool)

(assert (=> b!7349388 (= e!4400571 (forall!17982 (t!386067 (exprs!8598 ct2!378)) lambda!456398))))

(assert (= (and d!2280248 (not res!2968132)) b!7349387))

(assert (= (and b!7349387 res!2968133) b!7349388))

(declare-fun b_lambda!284085 () Bool)

(assert (=> (not b_lambda!284085) (not b!7349387)))

(declare-fun m!8010988 () Bool)

(assert (=> b!7349387 m!8010988))

(declare-fun m!8010990 () Bool)

(assert (=> b!7349388 m!8010990))

(assert (=> b!7349214 d!2280248))

(declare-fun b!7349389 () Bool)

(declare-fun e!4400572 () List!71654)

(assert (=> b!7349389 (= e!4400572 (exprs!8598 ct2!378))))

(declare-fun b!7349391 () Bool)

(declare-fun res!2968134 () Bool)

(declare-fun e!4400573 () Bool)

(assert (=> b!7349391 (=> (not res!2968134) (not e!4400573))))

(declare-fun lt!2611888 () List!71654)

(assert (=> b!7349391 (= res!2968134 (= (size!42045 lt!2611888) (+ (size!42045 (exprs!8598 cWitness!61)) (size!42045 (exprs!8598 ct2!378)))))))

(declare-fun b!7349390 () Bool)

(assert (=> b!7349390 (= e!4400572 (Cons!71530 (h!77978 (exprs!8598 cWitness!61)) (++!16976 (t!386067 (exprs!8598 cWitness!61)) (exprs!8598 ct2!378))))))

(declare-fun b!7349392 () Bool)

(assert (=> b!7349392 (= e!4400573 (or (not (= (exprs!8598 ct2!378) Nil!71530)) (= lt!2611888 (exprs!8598 cWitness!61))))))

(declare-fun d!2280250 () Bool)

(assert (=> d!2280250 e!4400573))

(declare-fun res!2968135 () Bool)

(assert (=> d!2280250 (=> (not res!2968135) (not e!4400573))))

(assert (=> d!2280250 (= res!2968135 (= (content!15066 lt!2611888) (set.union (content!15066 (exprs!8598 cWitness!61)) (content!15066 (exprs!8598 ct2!378)))))))

(assert (=> d!2280250 (= lt!2611888 e!4400572)))

(declare-fun c!1365365 () Bool)

(assert (=> d!2280250 (= c!1365365 (is-Nil!71530 (exprs!8598 cWitness!61)))))

(assert (=> d!2280250 (= (++!16976 (exprs!8598 cWitness!61) (exprs!8598 ct2!378)) lt!2611888)))

(assert (= (and d!2280250 c!1365365) b!7349389))

(assert (= (and d!2280250 (not c!1365365)) b!7349390))

(assert (= (and d!2280250 res!2968135) b!7349391))

(assert (= (and b!7349391 res!2968134) b!7349392))

(declare-fun m!8010994 () Bool)

(assert (=> b!7349391 m!8010994))

(declare-fun m!8010996 () Bool)

(assert (=> b!7349391 m!8010996))

(assert (=> b!7349391 m!8010936))

(declare-fun m!8010998 () Bool)

(assert (=> b!7349390 m!8010998))

(declare-fun m!8011000 () Bool)

(assert (=> d!2280250 m!8011000))

(declare-fun m!8011002 () Bool)

(assert (=> d!2280250 m!8011002))

(assert (=> d!2280250 m!8010944))

(assert (=> b!7349217 d!2280250))

(declare-fun b!7349393 () Bool)

(declare-fun e!4400576 () (Set Context!16196))

(declare-fun e!4400577 () (Set Context!16196))

(assert (=> b!7349393 (= e!4400576 e!4400577)))

(declare-fun c!1365369 () Bool)

(assert (=> b!7349393 (= c!1365369 (is-Concat!28003 (regTwo!38828 r1!2370)))))

(declare-fun call!672026 () (Set Context!16196))

(declare-fun c!1365368 () Bool)

(declare-fun bm!672016 () Bool)

(declare-fun call!672022 () List!71654)

(assert (=> bm!672016 (= call!672026 (derivationStepZipperDown!2984 (ite c!1365368 (regTwo!38829 (regTwo!38828 r1!2370)) (regOne!38828 (regTwo!38828 r1!2370))) (ite c!1365368 lt!2611846 (Context!16197 call!672022)) c!10362))))

(declare-fun bm!672017 () Bool)

(declare-fun call!672024 () List!71654)

(assert (=> bm!672017 (= call!672024 call!672022)))

(declare-fun b!7349394 () Bool)

(declare-fun call!672023 () (Set Context!16196))

(assert (=> b!7349394 (= e!4400576 (set.union call!672026 call!672023))))

(declare-fun b!7349395 () Bool)

(declare-fun call!672025 () (Set Context!16196))

(assert (=> b!7349395 (= e!4400577 call!672025)))

(declare-fun b!7349396 () Bool)

(declare-fun e!4400575 () (Set Context!16196))

(declare-fun e!4400574 () (Set Context!16196))

(assert (=> b!7349396 (= e!4400575 e!4400574)))

(assert (=> b!7349396 (= c!1365368 (is-Union!19158 (regTwo!38828 r1!2370)))))

(declare-fun b!7349397 () Bool)

(declare-fun call!672021 () (Set Context!16196))

(assert (=> b!7349397 (= e!4400574 (set.union call!672021 call!672026))))

(declare-fun b!7349398 () Bool)

(declare-fun c!1365367 () Bool)

(assert (=> b!7349398 (= c!1365367 (is-Star!19158 (regTwo!38828 r1!2370)))))

(declare-fun e!4400578 () (Set Context!16196))

(assert (=> b!7349398 (= e!4400577 e!4400578)))

(declare-fun bm!672018 () Bool)

(declare-fun c!1365370 () Bool)

(assert (=> bm!672018 (= call!672021 (derivationStepZipperDown!2984 (ite c!1365368 (regOne!38829 (regTwo!38828 r1!2370)) (ite c!1365370 (regTwo!38828 (regTwo!38828 r1!2370)) (ite c!1365369 (regOne!38828 (regTwo!38828 r1!2370)) (reg!19487 (regTwo!38828 r1!2370))))) (ite (or c!1365368 c!1365370) lt!2611846 (Context!16197 call!672024)) c!10362))))

(declare-fun b!7349399 () Bool)

(assert (=> b!7349399 (= e!4400578 (as set.empty (Set Context!16196)))))

(declare-fun b!7349400 () Bool)

(declare-fun e!4400579 () Bool)

(assert (=> b!7349400 (= c!1365370 e!4400579)))

(declare-fun res!2968136 () Bool)

(assert (=> b!7349400 (=> (not res!2968136) (not e!4400579))))

(assert (=> b!7349400 (= res!2968136 (is-Concat!28003 (regTwo!38828 r1!2370)))))

(assert (=> b!7349400 (= e!4400574 e!4400576)))

(declare-fun d!2280254 () Bool)

(declare-fun c!1365366 () Bool)

(assert (=> d!2280254 (= c!1365366 (and (is-ElementMatch!19158 (regTwo!38828 r1!2370)) (= (c!1365324 (regTwo!38828 r1!2370)) c!10362)))))

(assert (=> d!2280254 (= (derivationStepZipperDown!2984 (regTwo!38828 r1!2370) lt!2611846 c!10362) e!4400575)))

(declare-fun bm!672019 () Bool)

(assert (=> bm!672019 (= call!672025 call!672023)))

(declare-fun bm!672020 () Bool)

(assert (=> bm!672020 (= call!672023 call!672021)))

(declare-fun bm!672021 () Bool)

(assert (=> bm!672021 (= call!672022 ($colon$colon!3156 (exprs!8598 lt!2611846) (ite (or c!1365370 c!1365369) (regTwo!38828 (regTwo!38828 r1!2370)) (regTwo!38828 r1!2370))))))

(declare-fun b!7349401 () Bool)

(assert (=> b!7349401 (= e!4400578 call!672025)))

(declare-fun b!7349402 () Bool)

(assert (=> b!7349402 (= e!4400579 (nullable!8249 (regOne!38828 (regTwo!38828 r1!2370))))))

(declare-fun b!7349403 () Bool)

(assert (=> b!7349403 (= e!4400575 (set.insert lt!2611846 (as set.empty (Set Context!16196))))))

(assert (= (and d!2280254 c!1365366) b!7349403))

(assert (= (and d!2280254 (not c!1365366)) b!7349396))

(assert (= (and b!7349396 c!1365368) b!7349397))

(assert (= (and b!7349396 (not c!1365368)) b!7349400))

(assert (= (and b!7349400 res!2968136) b!7349402))

(assert (= (and b!7349400 c!1365370) b!7349394))

(assert (= (and b!7349400 (not c!1365370)) b!7349393))

(assert (= (and b!7349393 c!1365369) b!7349395))

(assert (= (and b!7349393 (not c!1365369)) b!7349398))

(assert (= (and b!7349398 c!1365367) b!7349401))

(assert (= (and b!7349398 (not c!1365367)) b!7349399))

(assert (= (or b!7349395 b!7349401) bm!672017))

(assert (= (or b!7349395 b!7349401) bm!672019))

(assert (= (or b!7349394 bm!672019) bm!672020))

(assert (= (or b!7349394 bm!672017) bm!672021))

(assert (= (or b!7349397 b!7349394) bm!672016))

(assert (= (or b!7349397 bm!672020) bm!672018))

(assert (=> b!7349403 m!8010924))

(assert (=> b!7349402 m!8010954))

(declare-fun m!8011006 () Bool)

(assert (=> bm!672018 m!8011006))

(declare-fun m!8011008 () Bool)

(assert (=> bm!672016 m!8011008))

(declare-fun m!8011010 () Bool)

(assert (=> bm!672021 m!8011010))

(assert (=> b!7349217 d!2280254))

(declare-fun bs!1919157 () Bool)

(declare-fun d!2280258 () Bool)

(assert (= bs!1919157 (and d!2280258 b!7349220)))

(declare-fun lambda!456419 () Int)

(assert (=> bs!1919157 (= lambda!456419 lambda!456398)))

(assert (=> d!2280258 (set.member (Context!16197 (++!16976 (exprs!8598 cWitness!61) (exprs!8598 ct2!378))) (derivationStepZipperDown!2984 (regTwo!38828 r1!2370) (Context!16197 (++!16976 (exprs!8598 ct1!282) (exprs!8598 ct2!378))) c!10362))))

(declare-fun lt!2611897 () Unit!165269)

(assert (=> d!2280258 (= lt!2611897 (lemmaConcatPreservesForall!1833 (exprs!8598 ct1!282) (exprs!8598 ct2!378) lambda!456419))))

(declare-fun lt!2611896 () Unit!165269)

(assert (=> d!2280258 (= lt!2611896 (lemmaConcatPreservesForall!1833 (exprs!8598 cWitness!61) (exprs!8598 ct2!378) lambda!456419))))

(declare-fun lt!2611895 () Unit!165269)

(declare-fun choose!57169 (Regex!19158 Context!16196 Context!16196 Context!16196 C!38590) Unit!165269)

(assert (=> d!2280258 (= lt!2611895 (choose!57169 (regTwo!38828 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280258 (validRegex!9754 (regTwo!38828 r1!2370))))

(assert (=> d!2280258 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!83 (regTwo!38828 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2611895)))

(declare-fun bs!1919158 () Bool)

(assert (= bs!1919158 d!2280258))

(declare-fun m!8011014 () Bool)

(assert (=> bs!1919158 m!8011014))

(declare-fun m!8011016 () Bool)

(assert (=> bs!1919158 m!8011016))

(assert (=> bs!1919158 m!8010868))

(declare-fun m!8011018 () Bool)

(assert (=> bs!1919158 m!8011018))

(assert (=> bs!1919158 m!8010856))

(declare-fun m!8011020 () Bool)

(assert (=> bs!1919158 m!8011020))

(assert (=> bs!1919158 m!8010830))

(declare-fun m!8011022 () Bool)

(assert (=> bs!1919158 m!8011022))

(assert (=> b!7349217 d!2280258))

(assert (=> b!7349217 d!2280234))

(declare-fun d!2280262 () Bool)

(assert (=> d!2280262 (forall!17982 (++!16976 (exprs!8598 cWitness!61) (exprs!8598 ct2!378)) lambda!456398)))

(declare-fun lt!2611898 () Unit!165269)

(assert (=> d!2280262 (= lt!2611898 (choose!57168 (exprs!8598 cWitness!61) (exprs!8598 ct2!378) lambda!456398))))

(assert (=> d!2280262 (forall!17982 (exprs!8598 cWitness!61) lambda!456398)))

(assert (=> d!2280262 (= (lemmaConcatPreservesForall!1833 (exprs!8598 cWitness!61) (exprs!8598 ct2!378) lambda!456398) lt!2611898)))

(declare-fun bs!1919159 () Bool)

(assert (= bs!1919159 d!2280262))

(assert (=> bs!1919159 m!8010868))

(assert (=> bs!1919159 m!8010868))

(declare-fun m!8011024 () Bool)

(assert (=> bs!1919159 m!8011024))

(declare-fun m!8011026 () Bool)

(assert (=> bs!1919159 m!8011026))

(assert (=> bs!1919159 m!8010832))

(assert (=> b!7349217 d!2280262))

(declare-fun bm!672036 () Bool)

(declare-fun call!672041 () Bool)

(declare-fun call!672042 () Bool)

(assert (=> bm!672036 (= call!672041 call!672042)))

(declare-fun b!7349444 () Bool)

(declare-fun res!2968153 () Bool)

(declare-fun e!4400606 () Bool)

(assert (=> b!7349444 (=> (not res!2968153) (not e!4400606))))

(assert (=> b!7349444 (= res!2968153 call!672041)))

(declare-fun e!4400608 () Bool)

(assert (=> b!7349444 (= e!4400608 e!4400606)))

(declare-fun b!7349445 () Bool)

(declare-fun e!4400611 () Bool)

(declare-fun e!4400609 () Bool)

(assert (=> b!7349445 (= e!4400611 e!4400609)))

(declare-fun res!2968149 () Bool)

(assert (=> b!7349445 (=> (not res!2968149) (not e!4400609))))

(declare-fun call!672043 () Bool)

(assert (=> b!7349445 (= res!2968149 call!672043)))

(declare-fun bm!672037 () Bool)

(declare-fun c!1365387 () Bool)

(declare-fun c!1365386 () Bool)

(assert (=> bm!672037 (= call!672042 (validRegex!9754 (ite c!1365387 (reg!19487 r1!2370) (ite c!1365386 (regOne!38829 r1!2370) (regTwo!38828 r1!2370)))))))

(declare-fun b!7349447 () Bool)

(declare-fun e!4400607 () Bool)

(declare-fun e!4400610 () Bool)

(assert (=> b!7349447 (= e!4400607 e!4400610)))

(declare-fun res!2968150 () Bool)

(assert (=> b!7349447 (= res!2968150 (not (nullable!8249 (reg!19487 r1!2370))))))

(assert (=> b!7349447 (=> (not res!2968150) (not e!4400610))))

(declare-fun bm!672038 () Bool)

(assert (=> bm!672038 (= call!672043 (validRegex!9754 (ite c!1365386 (regTwo!38829 r1!2370) (regOne!38828 r1!2370))))))

(declare-fun b!7349448 () Bool)

(assert (=> b!7349448 (= e!4400607 e!4400608)))

(assert (=> b!7349448 (= c!1365386 (is-Union!19158 r1!2370))))

(declare-fun d!2280264 () Bool)

(declare-fun res!2968151 () Bool)

(declare-fun e!4400612 () Bool)

(assert (=> d!2280264 (=> res!2968151 e!4400612)))

(assert (=> d!2280264 (= res!2968151 (is-ElementMatch!19158 r1!2370))))

(assert (=> d!2280264 (= (validRegex!9754 r1!2370) e!4400612)))

(declare-fun b!7349446 () Bool)

(assert (=> b!7349446 (= e!4400606 call!672043)))

(declare-fun b!7349449 () Bool)

(assert (=> b!7349449 (= e!4400609 call!672041)))

(declare-fun b!7349450 () Bool)

(assert (=> b!7349450 (= e!4400612 e!4400607)))

(assert (=> b!7349450 (= c!1365387 (is-Star!19158 r1!2370))))

(declare-fun b!7349451 () Bool)

(declare-fun res!2968152 () Bool)

(assert (=> b!7349451 (=> res!2968152 e!4400611)))

(assert (=> b!7349451 (= res!2968152 (not (is-Concat!28003 r1!2370)))))

(assert (=> b!7349451 (= e!4400608 e!4400611)))

(declare-fun b!7349452 () Bool)

(assert (=> b!7349452 (= e!4400610 call!672042)))

(assert (= (and d!2280264 (not res!2968151)) b!7349450))

(assert (= (and b!7349450 c!1365387) b!7349447))

(assert (= (and b!7349450 (not c!1365387)) b!7349448))

(assert (= (and b!7349447 res!2968150) b!7349452))

(assert (= (and b!7349448 c!1365386) b!7349444))

(assert (= (and b!7349448 (not c!1365386)) b!7349451))

(assert (= (and b!7349444 res!2968153) b!7349446))

(assert (= (and b!7349451 (not res!2968152)) b!7349445))

(assert (= (and b!7349445 res!2968149) b!7349449))

(assert (= (or b!7349444 b!7349449) bm!672036))

(assert (= (or b!7349446 b!7349445) bm!672038))

(assert (= (or b!7349452 bm!672036) bm!672037))

(declare-fun m!8011028 () Bool)

(assert (=> bm!672037 m!8011028))

(declare-fun m!8011030 () Bool)

(assert (=> b!7349447 m!8011030))

(declare-fun m!8011032 () Bool)

(assert (=> bm!672038 m!8011032))

(assert (=> start!717694 d!2280264))

(declare-fun bs!1919160 () Bool)

(declare-fun d!2280266 () Bool)

(assert (= bs!1919160 (and d!2280266 b!7349220)))

(declare-fun lambda!456422 () Int)

(assert (=> bs!1919160 (= lambda!456422 lambda!456398)))

(declare-fun bs!1919161 () Bool)

(assert (= bs!1919161 (and d!2280266 d!2280258)))

(assert (=> bs!1919161 (= lambda!456422 lambda!456419)))

(assert (=> d!2280266 (= (inv!91236 cWitness!61) (forall!17982 (exprs!8598 cWitness!61) lambda!456422))))

(declare-fun bs!1919162 () Bool)

(assert (= bs!1919162 d!2280266))

(declare-fun m!8011034 () Bool)

(assert (=> bs!1919162 m!8011034))

(assert (=> start!717694 d!2280266))

(declare-fun bs!1919163 () Bool)

(declare-fun d!2280268 () Bool)

(assert (= bs!1919163 (and d!2280268 b!7349220)))

(declare-fun lambda!456423 () Int)

(assert (=> bs!1919163 (= lambda!456423 lambda!456398)))

(declare-fun bs!1919164 () Bool)

(assert (= bs!1919164 (and d!2280268 d!2280258)))

(assert (=> bs!1919164 (= lambda!456423 lambda!456419)))

(declare-fun bs!1919165 () Bool)

(assert (= bs!1919165 (and d!2280268 d!2280266)))

(assert (=> bs!1919165 (= lambda!456423 lambda!456422)))

(assert (=> d!2280268 (= (inv!91236 ct1!282) (forall!17982 (exprs!8598 ct1!282) lambda!456423))))

(declare-fun bs!1919166 () Bool)

(assert (= bs!1919166 d!2280268))

(declare-fun m!8011036 () Bool)

(assert (=> bs!1919166 m!8011036))

(assert (=> start!717694 d!2280268))

(declare-fun bs!1919167 () Bool)

(declare-fun d!2280270 () Bool)

(assert (= bs!1919167 (and d!2280270 b!7349220)))

(declare-fun lambda!456424 () Int)

(assert (=> bs!1919167 (= lambda!456424 lambda!456398)))

(declare-fun bs!1919168 () Bool)

(assert (= bs!1919168 (and d!2280270 d!2280258)))

(assert (=> bs!1919168 (= lambda!456424 lambda!456419)))

(declare-fun bs!1919169 () Bool)

(assert (= bs!1919169 (and d!2280270 d!2280266)))

(assert (=> bs!1919169 (= lambda!456424 lambda!456422)))

(declare-fun bs!1919170 () Bool)

(assert (= bs!1919170 (and d!2280270 d!2280268)))

(assert (=> bs!1919170 (= lambda!456424 lambda!456423)))

(assert (=> d!2280270 (= (inv!91236 ct2!378) (forall!17982 (exprs!8598 ct2!378) lambda!456424))))

(declare-fun bs!1919171 () Bool)

(assert (= bs!1919171 d!2280270))

(declare-fun m!8011038 () Bool)

(assert (=> bs!1919171 m!8011038))

(assert (=> start!717694 d!2280270))

(declare-fun bm!672043 () Bool)

(declare-fun call!672048 () Bool)

(declare-fun call!672049 () Bool)

(assert (=> bm!672043 (= call!672048 call!672049)))

(declare-fun b!7349453 () Bool)

(declare-fun res!2968158 () Bool)

(declare-fun e!4400613 () Bool)

(assert (=> b!7349453 (=> (not res!2968158) (not e!4400613))))

(assert (=> b!7349453 (= res!2968158 call!672048)))

(declare-fun e!4400615 () Bool)

(assert (=> b!7349453 (= e!4400615 e!4400613)))

(declare-fun b!7349454 () Bool)

(declare-fun e!4400618 () Bool)

(declare-fun e!4400616 () Bool)

(assert (=> b!7349454 (= e!4400618 e!4400616)))

(declare-fun res!2968154 () Bool)

(assert (=> b!7349454 (=> (not res!2968154) (not e!4400616))))

(declare-fun call!672050 () Bool)

(assert (=> b!7349454 (= res!2968154 call!672050)))

(declare-fun bm!672044 () Bool)

(declare-fun c!1365388 () Bool)

(declare-fun c!1365389 () Bool)

(assert (=> bm!672044 (= call!672049 (validRegex!9754 (ite c!1365389 (reg!19487 (regTwo!38828 r1!2370)) (ite c!1365388 (regOne!38829 (regTwo!38828 r1!2370)) (regTwo!38828 (regTwo!38828 r1!2370))))))))

(declare-fun b!7349456 () Bool)

(declare-fun e!4400614 () Bool)

(declare-fun e!4400617 () Bool)

(assert (=> b!7349456 (= e!4400614 e!4400617)))

(declare-fun res!2968155 () Bool)

(assert (=> b!7349456 (= res!2968155 (not (nullable!8249 (reg!19487 (regTwo!38828 r1!2370)))))))

(assert (=> b!7349456 (=> (not res!2968155) (not e!4400617))))

(declare-fun bm!672045 () Bool)

(assert (=> bm!672045 (= call!672050 (validRegex!9754 (ite c!1365388 (regTwo!38829 (regTwo!38828 r1!2370)) (regOne!38828 (regTwo!38828 r1!2370)))))))

(declare-fun b!7349457 () Bool)

(assert (=> b!7349457 (= e!4400614 e!4400615)))

(assert (=> b!7349457 (= c!1365388 (is-Union!19158 (regTwo!38828 r1!2370)))))

(declare-fun d!2280272 () Bool)

(declare-fun res!2968156 () Bool)

(declare-fun e!4400619 () Bool)

(assert (=> d!2280272 (=> res!2968156 e!4400619)))

(assert (=> d!2280272 (= res!2968156 (is-ElementMatch!19158 (regTwo!38828 r1!2370)))))

(assert (=> d!2280272 (= (validRegex!9754 (regTwo!38828 r1!2370)) e!4400619)))

(declare-fun b!7349455 () Bool)

(assert (=> b!7349455 (= e!4400613 call!672050)))

(declare-fun b!7349458 () Bool)

(assert (=> b!7349458 (= e!4400616 call!672048)))

(declare-fun b!7349459 () Bool)

(assert (=> b!7349459 (= e!4400619 e!4400614)))

(assert (=> b!7349459 (= c!1365389 (is-Star!19158 (regTwo!38828 r1!2370)))))

(declare-fun b!7349460 () Bool)

(declare-fun res!2968157 () Bool)

(assert (=> b!7349460 (=> res!2968157 e!4400618)))

(assert (=> b!7349460 (= res!2968157 (not (is-Concat!28003 (regTwo!38828 r1!2370))))))

(assert (=> b!7349460 (= e!4400615 e!4400618)))

(declare-fun b!7349461 () Bool)

(assert (=> b!7349461 (= e!4400617 call!672049)))

(assert (= (and d!2280272 (not res!2968156)) b!7349459))

(assert (= (and b!7349459 c!1365389) b!7349456))

(assert (= (and b!7349459 (not c!1365389)) b!7349457))

(assert (= (and b!7349456 res!2968155) b!7349461))

(assert (= (and b!7349457 c!1365388) b!7349453))

(assert (= (and b!7349457 (not c!1365388)) b!7349460))

(assert (= (and b!7349453 res!2968158) b!7349455))

(assert (= (and b!7349460 (not res!2968157)) b!7349454))

(assert (= (and b!7349454 res!2968154) b!7349458))

(assert (= (or b!7349453 b!7349458) bm!672043))

(assert (= (or b!7349455 b!7349454) bm!672045))

(assert (= (or b!7349461 bm!672043) bm!672044))

(declare-fun m!8011040 () Bool)

(assert (=> bm!672044 m!8011040))

(declare-fun m!8011042 () Bool)

(assert (=> b!7349456 m!8011042))

(declare-fun m!8011044 () Bool)

(assert (=> bm!672045 m!8011044))

(assert (=> b!7349221 d!2280272))

(declare-fun d!2280274 () Bool)

(declare-fun nullableFct!3287 (Regex!19158) Bool)

(assert (=> d!2280274 (= (nullable!8249 (regOne!38828 r1!2370)) (nullableFct!3287 (regOne!38828 r1!2370)))))

(declare-fun bs!1919172 () Bool)

(assert (= bs!1919172 d!2280274))

(declare-fun m!8011046 () Bool)

(assert (=> bs!1919172 m!8011046))

(assert (=> b!7349227 d!2280274))

(declare-fun b!7349475 () Bool)

(declare-fun e!4400622 () Bool)

(declare-fun tp!2087348 () Bool)

(declare-fun tp!2087347 () Bool)

(assert (=> b!7349475 (= e!4400622 (and tp!2087348 tp!2087347))))

(declare-fun b!7349473 () Bool)

(declare-fun tp!2087345 () Bool)

(declare-fun tp!2087344 () Bool)

(assert (=> b!7349473 (= e!4400622 (and tp!2087345 tp!2087344))))

(declare-fun b!7349474 () Bool)

(declare-fun tp!2087346 () Bool)

(assert (=> b!7349474 (= e!4400622 tp!2087346)))

(declare-fun b!7349472 () Bool)

(assert (=> b!7349472 (= e!4400622 tp_is_empty!48561)))

(assert (=> b!7349215 (= tp!2087302 e!4400622)))

(assert (= (and b!7349215 (is-ElementMatch!19158 (reg!19487 r1!2370))) b!7349472))

(assert (= (and b!7349215 (is-Concat!28003 (reg!19487 r1!2370))) b!7349473))

(assert (= (and b!7349215 (is-Star!19158 (reg!19487 r1!2370))) b!7349474))

(assert (= (and b!7349215 (is-Union!19158 (reg!19487 r1!2370))) b!7349475))

(declare-fun b!7349480 () Bool)

(declare-fun e!4400625 () Bool)

(declare-fun tp!2087353 () Bool)

(declare-fun tp!2087354 () Bool)

(assert (=> b!7349480 (= e!4400625 (and tp!2087353 tp!2087354))))

(assert (=> b!7349224 (= tp!2087309 e!4400625)))

(assert (= (and b!7349224 (is-Cons!71530 (exprs!8598 ct1!282))) b!7349480))

(declare-fun b!7349484 () Bool)

(declare-fun e!4400626 () Bool)

(declare-fun tp!2087359 () Bool)

(declare-fun tp!2087358 () Bool)

(assert (=> b!7349484 (= e!4400626 (and tp!2087359 tp!2087358))))

(declare-fun b!7349482 () Bool)

(declare-fun tp!2087356 () Bool)

(declare-fun tp!2087355 () Bool)

(assert (=> b!7349482 (= e!4400626 (and tp!2087356 tp!2087355))))

(declare-fun b!7349483 () Bool)

(declare-fun tp!2087357 () Bool)

(assert (=> b!7349483 (= e!4400626 tp!2087357)))

(declare-fun b!7349481 () Bool)

(assert (=> b!7349481 (= e!4400626 tp_is_empty!48561)))

(assert (=> b!7349219 (= tp!2087303 e!4400626)))

(assert (= (and b!7349219 (is-ElementMatch!19158 (regOne!38828 r1!2370))) b!7349481))

(assert (= (and b!7349219 (is-Concat!28003 (regOne!38828 r1!2370))) b!7349482))

(assert (= (and b!7349219 (is-Star!19158 (regOne!38828 r1!2370))) b!7349483))

(assert (= (and b!7349219 (is-Union!19158 (regOne!38828 r1!2370))) b!7349484))

(declare-fun b!7349488 () Bool)

(declare-fun e!4400627 () Bool)

(declare-fun tp!2087364 () Bool)

(declare-fun tp!2087363 () Bool)

(assert (=> b!7349488 (= e!4400627 (and tp!2087364 tp!2087363))))

(declare-fun b!7349486 () Bool)

(declare-fun tp!2087361 () Bool)

(declare-fun tp!2087360 () Bool)

(assert (=> b!7349486 (= e!4400627 (and tp!2087361 tp!2087360))))

(declare-fun b!7349487 () Bool)

(declare-fun tp!2087362 () Bool)

(assert (=> b!7349487 (= e!4400627 tp!2087362)))

(declare-fun b!7349485 () Bool)

(assert (=> b!7349485 (= e!4400627 tp_is_empty!48561)))

(assert (=> b!7349219 (= tp!2087307 e!4400627)))

(assert (= (and b!7349219 (is-ElementMatch!19158 (regTwo!38828 r1!2370))) b!7349485))

(assert (= (and b!7349219 (is-Concat!28003 (regTwo!38828 r1!2370))) b!7349486))

(assert (= (and b!7349219 (is-Star!19158 (regTwo!38828 r1!2370))) b!7349487))

(assert (= (and b!7349219 (is-Union!19158 (regTwo!38828 r1!2370))) b!7349488))

(declare-fun b!7349492 () Bool)

(declare-fun e!4400628 () Bool)

(declare-fun tp!2087369 () Bool)

(declare-fun tp!2087368 () Bool)

(assert (=> b!7349492 (= e!4400628 (and tp!2087369 tp!2087368))))

(declare-fun b!7349490 () Bool)

(declare-fun tp!2087366 () Bool)

(declare-fun tp!2087365 () Bool)

(assert (=> b!7349490 (= e!4400628 (and tp!2087366 tp!2087365))))

(declare-fun b!7349491 () Bool)

(declare-fun tp!2087367 () Bool)

(assert (=> b!7349491 (= e!4400628 tp!2087367)))

(declare-fun b!7349489 () Bool)

(assert (=> b!7349489 (= e!4400628 tp_is_empty!48561)))

(assert (=> b!7349223 (= tp!2087304 e!4400628)))

(assert (= (and b!7349223 (is-ElementMatch!19158 (regOne!38829 r1!2370))) b!7349489))

(assert (= (and b!7349223 (is-Concat!28003 (regOne!38829 r1!2370))) b!7349490))

(assert (= (and b!7349223 (is-Star!19158 (regOne!38829 r1!2370))) b!7349491))

(assert (= (and b!7349223 (is-Union!19158 (regOne!38829 r1!2370))) b!7349492))

(declare-fun b!7349496 () Bool)

(declare-fun e!4400629 () Bool)

(declare-fun tp!2087374 () Bool)

(declare-fun tp!2087373 () Bool)

(assert (=> b!7349496 (= e!4400629 (and tp!2087374 tp!2087373))))

(declare-fun b!7349494 () Bool)

(declare-fun tp!2087371 () Bool)

(declare-fun tp!2087370 () Bool)

(assert (=> b!7349494 (= e!4400629 (and tp!2087371 tp!2087370))))

(declare-fun b!7349495 () Bool)

(declare-fun tp!2087372 () Bool)

(assert (=> b!7349495 (= e!4400629 tp!2087372)))

(declare-fun b!7349493 () Bool)

(assert (=> b!7349493 (= e!4400629 tp_is_empty!48561)))

(assert (=> b!7349223 (= tp!2087305 e!4400629)))

(assert (= (and b!7349223 (is-ElementMatch!19158 (regTwo!38829 r1!2370))) b!7349493))

(assert (= (and b!7349223 (is-Concat!28003 (regTwo!38829 r1!2370))) b!7349494))

(assert (= (and b!7349223 (is-Star!19158 (regTwo!38829 r1!2370))) b!7349495))

(assert (= (and b!7349223 (is-Union!19158 (regTwo!38829 r1!2370))) b!7349496))

(declare-fun b!7349497 () Bool)

(declare-fun e!4400630 () Bool)

(declare-fun tp!2087375 () Bool)

(declare-fun tp!2087376 () Bool)

(assert (=> b!7349497 (= e!4400630 (and tp!2087375 tp!2087376))))

(assert (=> b!7349216 (= tp!2087306 e!4400630)))

(assert (= (and b!7349216 (is-Cons!71530 (exprs!8598 cWitness!61))) b!7349497))

(declare-fun b!7349498 () Bool)

(declare-fun e!4400631 () Bool)

(declare-fun tp!2087377 () Bool)

(declare-fun tp!2087378 () Bool)

(assert (=> b!7349498 (= e!4400631 (and tp!2087377 tp!2087378))))

(assert (=> b!7349222 (= tp!2087308 e!4400631)))

(assert (= (and b!7349222 (is-Cons!71530 (exprs!8598 ct2!378))) b!7349498))

(declare-fun b_lambda!284087 () Bool)

(assert (= b_lambda!284083 (or b!7349220 b_lambda!284087)))

(declare-fun bs!1919173 () Bool)

(declare-fun d!2280276 () Bool)

(assert (= bs!1919173 (and d!2280276 b!7349220)))

(assert (=> bs!1919173 (= (dynLambda!29487 lambda!456398 (h!77978 (exprs!8598 cWitness!61))) (validRegex!9754 (h!77978 (exprs!8598 cWitness!61))))))

(declare-fun m!8011048 () Bool)

(assert (=> bs!1919173 m!8011048))

(assert (=> b!7349385 d!2280276))

(declare-fun b_lambda!284089 () Bool)

(assert (= b_lambda!284085 (or b!7349220 b_lambda!284089)))

(declare-fun bs!1919174 () Bool)

(declare-fun d!2280278 () Bool)

(assert (= bs!1919174 (and d!2280278 b!7349220)))

(assert (=> bs!1919174 (= (dynLambda!29487 lambda!456398 (h!77978 (exprs!8598 ct2!378))) (validRegex!9754 (h!77978 (exprs!8598 ct2!378))))))

(declare-fun m!8011050 () Bool)

(assert (=> bs!1919174 m!8011050))

(assert (=> b!7349387 d!2280278))

(push 1)

(assert (not d!2280258))

(assert (not b!7349325))

(assert (not b!7349336))

(assert (not b!7349447))

(assert (not b!7349496))

(assert (not bm!672021))

(assert (not b_lambda!284087))

(assert (not b!7349483))

(assert (not b!7349488))

(assert (not bm!672000))

(assert (not d!2280268))

(assert (not b!7349386))

(assert (not d!2280274))

(assert (not d!2280270))

(assert (not d!2280250))

(assert (not d!2280234))

(assert (not bs!1919174))

(assert (not bm!672010))

(assert (not bm!672004))

(assert (not bm!672037))

(assert (not bm!672016))

(assert (not bm!671989))

(assert (not b!7349388))

(assert (not b!7349491))

(assert (not bm!671986))

(assert (not b!7349498))

(assert (not bm!671992))

(assert (not b!7349402))

(assert (not b!7349482))

(assert tp_is_empty!48561)

(assert (not bs!1919173))

(assert (not b!7349495))

(assert (not b!7349484))

(assert (not b!7349337))

(assert (not b!7349390))

(assert (not bm!672006))

(assert (not b!7349486))

(assert (not bm!672009))

(assert (not bm!671997))

(assert (not bm!672044))

(assert (not b!7349494))

(assert (not b_lambda!284089))

(assert (not b!7349473))

(assert (not b!7349474))

(assert (not b!7349480))

(assert (not d!2280266))

(assert (not d!2280232))

(assert (not bm!672045))

(assert (not bm!672015))

(assert (not b!7349490))

(assert (not b!7349379))

(assert (not bm!672018))

(assert (not b!7349487))

(assert (not b!7349456))

(assert (not b!7349368))

(assert (not bm!672038))

(assert (not b!7349497))

(assert (not bm!672012))

(assert (not b!7349475))

(assert (not b!7349348))

(assert (not bm!671995))

(assert (not d!2280262))

(assert (not b!7349391))

(assert (not b!7349492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

