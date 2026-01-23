; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718598 () Bool)

(assert start!718598)

(declare-fun b!7359344 () Bool)

(declare-fun e!4406258 () Bool)

(declare-fun tp!2090946 () Bool)

(declare-fun tp!2090945 () Bool)

(assert (=> b!7359344 (= e!4406258 (and tp!2090946 tp!2090945))))

(declare-fun b!7359345 () Bool)

(declare-fun tp_is_empty!48677 () Bool)

(assert (=> b!7359345 (= e!4406258 tp_is_empty!48677)))

(declare-fun b!7359346 () Bool)

(declare-fun e!4406256 () Bool)

(declare-fun tp!2090948 () Bool)

(assert (=> b!7359346 (= e!4406256 tp!2090948)))

(declare-fun b!7359347 () Bool)

(declare-fun res!2971219 () Bool)

(declare-fun e!4406257 () Bool)

(assert (=> b!7359347 (=> (not res!2971219) (not e!4406257))))

(declare-datatypes ((C!38706 0))(
  ( (C!38707 (val!29713 Int)) )
))
(declare-datatypes ((Regex!19216 0))(
  ( (ElementMatch!19216 (c!1367366 C!38706)) (Concat!28061 (regOne!38944 Regex!19216) (regTwo!38944 Regex!19216)) (EmptyExpr!19216) (Star!19216 (reg!19545 Regex!19216)) (EmptyLang!19216) (Union!19216 (regOne!38945 Regex!19216) (regTwo!38945 Regex!19216)) )
))
(declare-fun r1!2370 () Regex!19216)

(declare-fun validRegex!9812 (Regex!19216) Bool)

(assert (=> b!7359347 (= res!2971219 (validRegex!9812 (regTwo!38944 r1!2370)))))

(declare-fun b!7359348 () Bool)

(declare-fun res!2971221 () Bool)

(assert (=> b!7359348 (=> (not res!2971221) (not e!4406257))))

(declare-fun e!4406259 () Bool)

(assert (=> b!7359348 (= res!2971221 e!4406259)))

(declare-fun res!2971220 () Bool)

(assert (=> b!7359348 (=> res!2971220 e!4406259)))

(assert (=> b!7359348 (= res!2971220 (not (is-Concat!28061 r1!2370)))))

(declare-fun b!7359349 () Bool)

(declare-fun e!4406255 () Bool)

(assert (=> b!7359349 (= e!4406255 e!4406257)))

(declare-fun res!2971224 () Bool)

(assert (=> b!7359349 (=> (not res!2971224) (not e!4406257))))

(declare-fun c!10362 () C!38706)

(assert (=> b!7359349 (= res!2971224 (and (or (not (is-ElementMatch!19216 r1!2370)) (not (= c!10362 (c!1367366 r1!2370)))) (not (is-Union!19216 r1!2370))))))

(declare-datatypes ((List!71712 0))(
  ( (Nil!71588) (Cons!71588 (h!78036 Regex!19216) (t!386157 List!71712)) )
))
(declare-datatypes ((Context!16312 0))(
  ( (Context!16313 (exprs!8656 List!71712)) )
))
(declare-fun lt!2613686 () (Set Context!16312))

(declare-fun ct1!282 () Context!16312)

(declare-fun ct2!378 () Context!16312)

(declare-fun derivationStepZipperDown!3042 (Regex!19216 Context!16312 C!38706) (Set Context!16312))

(declare-fun ++!17034 (List!71712 List!71712) List!71712)

(assert (=> b!7359349 (= lt!2613686 (derivationStepZipperDown!3042 r1!2370 (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165385 0))(
  ( (Unit!165386) )
))
(declare-fun lt!2613687 () Unit!165385)

(declare-fun lambda!457240 () Int)

(declare-fun lemmaConcatPreservesForall!1891 (List!71712 List!71712 Int) Unit!165385)

(assert (=> b!7359349 (= lt!2613687 (lemmaConcatPreservesForall!1891 (exprs!8656 ct1!282) (exprs!8656 ct2!378) lambda!457240))))

(declare-fun res!2971223 () Bool)

(declare-fun e!4406261 () Bool)

(assert (=> start!718598 (=> (not res!2971223) (not e!4406261))))

(assert (=> start!718598 (= res!2971223 (validRegex!9812 r1!2370))))

(assert (=> start!718598 e!4406261))

(assert (=> start!718598 tp_is_empty!48677))

(declare-fun cWitness!61 () Context!16312)

(declare-fun inv!91381 (Context!16312) Bool)

(assert (=> start!718598 (and (inv!91381 cWitness!61) e!4406256)))

(declare-fun e!4406260 () Bool)

(assert (=> start!718598 (and (inv!91381 ct1!282) e!4406260)))

(assert (=> start!718598 e!4406258))

(declare-fun e!4406262 () Bool)

(assert (=> start!718598 (and (inv!91381 ct2!378) e!4406262)))

(declare-fun b!7359350 () Bool)

(declare-fun res!2971222 () Bool)

(assert (=> b!7359350 (=> (not res!2971222) (not e!4406257))))

(assert (=> b!7359350 (= res!2971222 (is-Concat!28061 r1!2370))))

(declare-fun b!7359351 () Bool)

(declare-fun tp!2090949 () Bool)

(assert (=> b!7359351 (= e!4406262 tp!2090949)))

(declare-fun b!7359352 () Bool)

(declare-fun tp!2090947 () Bool)

(assert (=> b!7359352 (= e!4406260 tp!2090947)))

(declare-fun lt!2613688 () (Set Context!16312))

(declare-fun b!7359353 () Bool)

(declare-fun $colon$colon!3209 (List!71712 Regex!19216) List!71712)

(assert (=> b!7359353 (= e!4406257 (not (= lt!2613688 (derivationStepZipperDown!3042 (regOne!38944 r1!2370) (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370))) c!10362))))))

(declare-fun b!7359354 () Bool)

(declare-fun tp!2090950 () Bool)

(declare-fun tp!2090951 () Bool)

(assert (=> b!7359354 (= e!4406258 (and tp!2090950 tp!2090951))))

(declare-fun b!7359355 () Bool)

(declare-fun tp!2090944 () Bool)

(assert (=> b!7359355 (= e!4406258 tp!2090944)))

(declare-fun b!7359356 () Bool)

(assert (=> b!7359356 (= e!4406261 e!4406255)))

(declare-fun res!2971225 () Bool)

(assert (=> b!7359356 (=> (not res!2971225) (not e!4406255))))

(assert (=> b!7359356 (= res!2971225 (set.member cWitness!61 lt!2613688))))

(assert (=> b!7359356 (= lt!2613688 (derivationStepZipperDown!3042 r1!2370 ct1!282 c!10362))))

(declare-fun b!7359357 () Bool)

(declare-fun nullable!8303 (Regex!19216) Bool)

(assert (=> b!7359357 (= e!4406259 (not (nullable!8303 (regOne!38944 r1!2370))))))

(assert (= (and start!718598 res!2971223) b!7359356))

(assert (= (and b!7359356 res!2971225) b!7359349))

(assert (= (and b!7359349 res!2971224) b!7359348))

(assert (= (and b!7359348 (not res!2971220)) b!7359357))

(assert (= (and b!7359348 res!2971221) b!7359350))

(assert (= (and b!7359350 res!2971222) b!7359347))

(assert (= (and b!7359347 res!2971219) b!7359353))

(assert (= start!718598 b!7359346))

(assert (= start!718598 b!7359352))

(assert (= (and start!718598 (is-ElementMatch!19216 r1!2370)) b!7359345))

(assert (= (and start!718598 (is-Concat!28061 r1!2370)) b!7359344))

(assert (= (and start!718598 (is-Star!19216 r1!2370)) b!7359355))

(assert (= (and start!718598 (is-Union!19216 r1!2370)) b!7359354))

(assert (= start!718598 b!7359351))

(declare-fun m!8017778 () Bool)

(assert (=> b!7359353 m!8017778))

(declare-fun m!8017780 () Bool)

(assert (=> b!7359353 m!8017780))

(declare-fun m!8017782 () Bool)

(assert (=> b!7359357 m!8017782))

(declare-fun m!8017784 () Bool)

(assert (=> b!7359347 m!8017784))

(declare-fun m!8017786 () Bool)

(assert (=> b!7359349 m!8017786))

(declare-fun m!8017788 () Bool)

(assert (=> b!7359349 m!8017788))

(declare-fun m!8017790 () Bool)

(assert (=> b!7359349 m!8017790))

(declare-fun m!8017792 () Bool)

(assert (=> start!718598 m!8017792))

(declare-fun m!8017794 () Bool)

(assert (=> start!718598 m!8017794))

(declare-fun m!8017796 () Bool)

(assert (=> start!718598 m!8017796))

(declare-fun m!8017798 () Bool)

(assert (=> start!718598 m!8017798))

(declare-fun m!8017800 () Bool)

(assert (=> b!7359356 m!8017800))

(declare-fun m!8017802 () Bool)

(assert (=> b!7359356 m!8017802))

(push 1)

(assert (not b!7359355))

(assert (not b!7359357))

(assert (not b!7359349))

(assert (not b!7359353))

(assert (not b!7359351))

(assert tp_is_empty!48677)

(assert (not b!7359354))

(assert (not b!7359347))

(assert (not b!7359344))

(assert (not b!7359352))

(assert (not b!7359346))

(assert (not start!718598))

(assert (not b!7359356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!674191 () Bool)

(declare-fun call!674196 () Bool)

(declare-fun c!1367373 () Bool)

(assert (=> bm!674191 (= call!674196 (validRegex!9812 (ite c!1367373 (regTwo!38945 r1!2370) (regOne!38944 r1!2370))))))

(declare-fun c!1367372 () Bool)

(declare-fun bm!674192 () Bool)

(declare-fun call!674197 () Bool)

(assert (=> bm!674192 (= call!674197 (validRegex!9812 (ite c!1367372 (reg!19545 r1!2370) (ite c!1367373 (regOne!38945 r1!2370) (regTwo!38944 r1!2370)))))))

(declare-fun b!7359418 () Bool)

(declare-fun e!4406306 () Bool)

(declare-fun e!4406304 () Bool)

(assert (=> b!7359418 (= e!4406306 e!4406304)))

(assert (=> b!7359418 (= c!1367373 (is-Union!19216 r1!2370))))

(declare-fun b!7359419 () Bool)

(declare-fun e!4406303 () Bool)

(assert (=> b!7359419 (= e!4406303 call!674197)))

(declare-fun b!7359421 () Bool)

(declare-fun res!2971260 () Bool)

(declare-fun e!4406305 () Bool)

(assert (=> b!7359421 (=> res!2971260 e!4406305)))

(assert (=> b!7359421 (= res!2971260 (not (is-Concat!28061 r1!2370)))))

(assert (=> b!7359421 (= e!4406304 e!4406305)))

(declare-fun b!7359422 () Bool)

(declare-fun e!4406307 () Bool)

(assert (=> b!7359422 (= e!4406307 e!4406306)))

(assert (=> b!7359422 (= c!1367372 (is-Star!19216 r1!2370))))

(declare-fun b!7359423 () Bool)

(declare-fun e!4406302 () Bool)

(assert (=> b!7359423 (= e!4406302 call!674196)))

(declare-fun b!7359424 () Bool)

(declare-fun res!2971261 () Bool)

(assert (=> b!7359424 (=> (not res!2971261) (not e!4406302))))

(declare-fun call!674198 () Bool)

(assert (=> b!7359424 (= res!2971261 call!674198)))

(assert (=> b!7359424 (= e!4406304 e!4406302)))

(declare-fun b!7359425 () Bool)

(declare-fun e!4406301 () Bool)

(assert (=> b!7359425 (= e!4406301 call!674198)))

(declare-fun d!2281951 () Bool)

(declare-fun res!2971259 () Bool)

(assert (=> d!2281951 (=> res!2971259 e!4406307)))

(assert (=> d!2281951 (= res!2971259 (is-ElementMatch!19216 r1!2370))))

(assert (=> d!2281951 (= (validRegex!9812 r1!2370) e!4406307)))

(declare-fun b!7359420 () Bool)

(assert (=> b!7359420 (= e!4406305 e!4406301)))

(declare-fun res!2971258 () Bool)

(assert (=> b!7359420 (=> (not res!2971258) (not e!4406301))))

(assert (=> b!7359420 (= res!2971258 call!674196)))

(declare-fun b!7359426 () Bool)

(assert (=> b!7359426 (= e!4406306 e!4406303)))

(declare-fun res!2971257 () Bool)

(assert (=> b!7359426 (= res!2971257 (not (nullable!8303 (reg!19545 r1!2370))))))

(assert (=> b!7359426 (=> (not res!2971257) (not e!4406303))))

(declare-fun bm!674193 () Bool)

(assert (=> bm!674193 (= call!674198 call!674197)))

(assert (= (and d!2281951 (not res!2971259)) b!7359422))

(assert (= (and b!7359422 c!1367372) b!7359426))

(assert (= (and b!7359422 (not c!1367372)) b!7359418))

(assert (= (and b!7359426 res!2971257) b!7359419))

(assert (= (and b!7359418 c!1367373) b!7359424))

(assert (= (and b!7359418 (not c!1367373)) b!7359421))

(assert (= (and b!7359424 res!2971261) b!7359423))

(assert (= (and b!7359421 (not res!2971260)) b!7359420))

(assert (= (and b!7359420 res!2971258) b!7359425))

(assert (= (or b!7359424 b!7359425) bm!674193))

(assert (= (or b!7359423 b!7359420) bm!674191))

(assert (= (or b!7359419 bm!674193) bm!674192))

(declare-fun m!8017830 () Bool)

(assert (=> bm!674191 m!8017830))

(declare-fun m!8017832 () Bool)

(assert (=> bm!674192 m!8017832))

(declare-fun m!8017834 () Bool)

(assert (=> b!7359426 m!8017834))

(assert (=> start!718598 d!2281951))

(declare-fun bs!1920014 () Bool)

(declare-fun d!2281953 () Bool)

(assert (= bs!1920014 (and d!2281953 b!7359349)))

(declare-fun lambda!457246 () Int)

(assert (=> bs!1920014 (= lambda!457246 lambda!457240)))

(declare-fun forall!18032 (List!71712 Int) Bool)

(assert (=> d!2281953 (= (inv!91381 cWitness!61) (forall!18032 (exprs!8656 cWitness!61) lambda!457246))))

(declare-fun bs!1920015 () Bool)

(assert (= bs!1920015 d!2281953))

(declare-fun m!8017836 () Bool)

(assert (=> bs!1920015 m!8017836))

(assert (=> start!718598 d!2281953))

(declare-fun bs!1920016 () Bool)

(declare-fun d!2281955 () Bool)

(assert (= bs!1920016 (and d!2281955 b!7359349)))

(declare-fun lambda!457247 () Int)

(assert (=> bs!1920016 (= lambda!457247 lambda!457240)))

(declare-fun bs!1920017 () Bool)

(assert (= bs!1920017 (and d!2281955 d!2281953)))

(assert (=> bs!1920017 (= lambda!457247 lambda!457246)))

(assert (=> d!2281955 (= (inv!91381 ct1!282) (forall!18032 (exprs!8656 ct1!282) lambda!457247))))

(declare-fun bs!1920018 () Bool)

(assert (= bs!1920018 d!2281955))

(declare-fun m!8017838 () Bool)

(assert (=> bs!1920018 m!8017838))

(assert (=> start!718598 d!2281955))

(declare-fun bs!1920019 () Bool)

(declare-fun d!2281957 () Bool)

(assert (= bs!1920019 (and d!2281957 b!7359349)))

(declare-fun lambda!457248 () Int)

(assert (=> bs!1920019 (= lambda!457248 lambda!457240)))

(declare-fun bs!1920020 () Bool)

(assert (= bs!1920020 (and d!2281957 d!2281953)))

(assert (=> bs!1920020 (= lambda!457248 lambda!457246)))

(declare-fun bs!1920021 () Bool)

(assert (= bs!1920021 (and d!2281957 d!2281955)))

(assert (=> bs!1920021 (= lambda!457248 lambda!457247)))

(assert (=> d!2281957 (= (inv!91381 ct2!378) (forall!18032 (exprs!8656 ct2!378) lambda!457248))))

(declare-fun bs!1920022 () Bool)

(assert (= bs!1920022 d!2281957))

(declare-fun m!8017840 () Bool)

(assert (=> bs!1920022 m!8017840))

(assert (=> start!718598 d!2281957))

(declare-fun b!7359467 () Bool)

(declare-fun e!4406337 () (Set Context!16312))

(assert (=> b!7359467 (= e!4406337 (set.insert (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378))) (as set.empty (Set Context!16312))))))

(declare-fun bm!674212 () Bool)

(declare-fun call!674222 () (Set Context!16312))

(declare-fun call!674218 () (Set Context!16312))

(assert (=> bm!674212 (= call!674222 call!674218)))

(declare-fun b!7359468 () Bool)

(declare-fun e!4406338 () (Set Context!16312))

(assert (=> b!7359468 (= e!4406337 e!4406338)))

(declare-fun c!1367391 () Bool)

(assert (=> b!7359468 (= c!1367391 (is-Union!19216 r1!2370))))

(declare-fun b!7359469 () Bool)

(declare-fun call!674221 () (Set Context!16312))

(assert (=> b!7359469 (= e!4406338 (set.union call!674221 call!674218))))

(declare-fun b!7359470 () Bool)

(declare-fun c!1367390 () Bool)

(declare-fun e!4406334 () Bool)

(assert (=> b!7359470 (= c!1367390 e!4406334)))

(declare-fun res!2971274 () Bool)

(assert (=> b!7359470 (=> (not res!2971274) (not e!4406334))))

(assert (=> b!7359470 (= res!2971274 (is-Concat!28061 r1!2370))))

(declare-fun e!4406339 () (Set Context!16312))

(assert (=> b!7359470 (= e!4406338 e!4406339)))

(declare-fun b!7359471 () Bool)

(assert (=> b!7359471 (= e!4406334 (nullable!8303 (regOne!38944 r1!2370)))))

(declare-fun c!1367392 () Bool)

(declare-fun bm!674214 () Bool)

(declare-fun call!674219 () List!71712)

(assert (=> bm!674214 (= call!674219 ($colon$colon!3209 (exprs!8656 (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378)))) (ite (or c!1367390 c!1367392) (regTwo!38944 r1!2370) r1!2370)))))

(declare-fun b!7359472 () Bool)

(declare-fun e!4406336 () (Set Context!16312))

(assert (=> b!7359472 (= e!4406336 (as set.empty (Set Context!16312)))))

(declare-fun bm!674215 () Bool)

(declare-fun call!674220 () List!71712)

(assert (=> bm!674215 (= call!674220 call!674219)))

(declare-fun b!7359473 () Bool)

(assert (=> b!7359473 (= e!4406339 (set.union call!674221 call!674222))))

(declare-fun b!7359474 () Bool)

(declare-fun call!674217 () (Set Context!16312))

(assert (=> b!7359474 (= e!4406336 call!674217)))

(declare-fun bm!674216 () Bool)

(assert (=> bm!674216 (= call!674221 (derivationStepZipperDown!3042 (ite c!1367391 (regOne!38945 r1!2370) (regOne!38944 r1!2370)) (ite c!1367391 (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378))) (Context!16313 call!674219)) c!10362))))

(declare-fun b!7359475 () Bool)

(declare-fun e!4406335 () (Set Context!16312))

(assert (=> b!7359475 (= e!4406335 call!674217)))

(declare-fun b!7359476 () Bool)

(declare-fun c!1367388 () Bool)

(assert (=> b!7359476 (= c!1367388 (is-Star!19216 r1!2370))))

(assert (=> b!7359476 (= e!4406335 e!4406336)))

(declare-fun bm!674217 () Bool)

(assert (=> bm!674217 (= call!674217 call!674222)))

(declare-fun b!7359477 () Bool)

(assert (=> b!7359477 (= e!4406339 e!4406335)))

(assert (=> b!7359477 (= c!1367392 (is-Concat!28061 r1!2370))))

(declare-fun bm!674213 () Bool)

(assert (=> bm!674213 (= call!674218 (derivationStepZipperDown!3042 (ite c!1367391 (regTwo!38945 r1!2370) (ite c!1367390 (regTwo!38944 r1!2370) (ite c!1367392 (regOne!38944 r1!2370) (reg!19545 r1!2370)))) (ite (or c!1367391 c!1367390) (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378))) (Context!16313 call!674220)) c!10362))))

(declare-fun d!2281959 () Bool)

(declare-fun c!1367389 () Bool)

(assert (=> d!2281959 (= c!1367389 (and (is-ElementMatch!19216 r1!2370) (= (c!1367366 r1!2370) c!10362)))))

(assert (=> d!2281959 (= (derivationStepZipperDown!3042 r1!2370 (Context!16313 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378))) c!10362) e!4406337)))

(assert (= (and d!2281959 c!1367389) b!7359467))

(assert (= (and d!2281959 (not c!1367389)) b!7359468))

(assert (= (and b!7359468 c!1367391) b!7359469))

(assert (= (and b!7359468 (not c!1367391)) b!7359470))

(assert (= (and b!7359470 res!2971274) b!7359471))

(assert (= (and b!7359470 c!1367390) b!7359473))

(assert (= (and b!7359470 (not c!1367390)) b!7359477))

(assert (= (and b!7359477 c!1367392) b!7359475))

(assert (= (and b!7359477 (not c!1367392)) b!7359476))

(assert (= (and b!7359476 c!1367388) b!7359474))

(assert (= (and b!7359476 (not c!1367388)) b!7359472))

(assert (= (or b!7359475 b!7359474) bm!674215))

(assert (= (or b!7359475 b!7359474) bm!674217))

(assert (= (or b!7359473 bm!674217) bm!674212))

(assert (= (or b!7359473 bm!674215) bm!674214))

(assert (= (or b!7359469 bm!674212) bm!674213))

(assert (= (or b!7359469 b!7359473) bm!674216))

(declare-fun m!8017842 () Bool)

(assert (=> bm!674214 m!8017842))

(declare-fun m!8017844 () Bool)

(assert (=> bm!674213 m!8017844))

(declare-fun m!8017846 () Bool)

(assert (=> bm!674216 m!8017846))

(assert (=> b!7359471 m!8017782))

(declare-fun m!8017848 () Bool)

(assert (=> b!7359467 m!8017848))

(assert (=> b!7359349 d!2281959))

(declare-fun b!7359497 () Bool)

(declare-fun res!2971285 () Bool)

(declare-fun e!4406352 () Bool)

(assert (=> b!7359497 (=> (not res!2971285) (not e!4406352))))

(declare-fun lt!2613700 () List!71712)

(declare-fun size!42091 (List!71712) Int)

(assert (=> b!7359497 (= res!2971285 (= (size!42091 lt!2613700) (+ (size!42091 (exprs!8656 ct1!282)) (size!42091 (exprs!8656 ct2!378)))))))

(declare-fun d!2281963 () Bool)

(assert (=> d!2281963 e!4406352))

(declare-fun res!2971284 () Bool)

(assert (=> d!2281963 (=> (not res!2971284) (not e!4406352))))

(declare-fun content!15113 (List!71712) (Set Regex!19216))

(assert (=> d!2281963 (= res!2971284 (= (content!15113 lt!2613700) (set.union (content!15113 (exprs!8656 ct1!282)) (content!15113 (exprs!8656 ct2!378)))))))

(declare-fun e!4406351 () List!71712)

(assert (=> d!2281963 (= lt!2613700 e!4406351)))

(declare-fun c!1367397 () Bool)

(assert (=> d!2281963 (= c!1367397 (is-Nil!71588 (exprs!8656 ct1!282)))))

(assert (=> d!2281963 (= (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378)) lt!2613700)))

(declare-fun b!7359495 () Bool)

(assert (=> b!7359495 (= e!4406351 (exprs!8656 ct2!378))))

(declare-fun b!7359498 () Bool)

(assert (=> b!7359498 (= e!4406352 (or (not (= (exprs!8656 ct2!378) Nil!71588)) (= lt!2613700 (exprs!8656 ct1!282))))))

(declare-fun b!7359496 () Bool)

(assert (=> b!7359496 (= e!4406351 (Cons!71588 (h!78036 (exprs!8656 ct1!282)) (++!17034 (t!386157 (exprs!8656 ct1!282)) (exprs!8656 ct2!378))))))

(assert (= (and d!2281963 c!1367397) b!7359495))

(assert (= (and d!2281963 (not c!1367397)) b!7359496))

(assert (= (and d!2281963 res!2971284) b!7359497))

(assert (= (and b!7359497 res!2971285) b!7359498))

(declare-fun m!8017856 () Bool)

(assert (=> b!7359497 m!8017856))

(declare-fun m!8017858 () Bool)

(assert (=> b!7359497 m!8017858))

(declare-fun m!8017860 () Bool)

(assert (=> b!7359497 m!8017860))

(declare-fun m!8017862 () Bool)

(assert (=> d!2281963 m!8017862))

(declare-fun m!8017864 () Bool)

(assert (=> d!2281963 m!8017864))

(declare-fun m!8017866 () Bool)

(assert (=> d!2281963 m!8017866))

(declare-fun m!8017868 () Bool)

(assert (=> b!7359496 m!8017868))

(assert (=> b!7359349 d!2281963))

(declare-fun d!2281967 () Bool)

(assert (=> d!2281967 (forall!18032 (++!17034 (exprs!8656 ct1!282) (exprs!8656 ct2!378)) lambda!457240)))

(declare-fun lt!2613703 () Unit!165385)

(declare-fun choose!57243 (List!71712 List!71712 Int) Unit!165385)

(assert (=> d!2281967 (= lt!2613703 (choose!57243 (exprs!8656 ct1!282) (exprs!8656 ct2!378) lambda!457240))))

(assert (=> d!2281967 (forall!18032 (exprs!8656 ct1!282) lambda!457240)))

(assert (=> d!2281967 (= (lemmaConcatPreservesForall!1891 (exprs!8656 ct1!282) (exprs!8656 ct2!378) lambda!457240) lt!2613703)))

(declare-fun bs!1920027 () Bool)

(assert (= bs!1920027 d!2281967))

(assert (=> bs!1920027 m!8017786))

(assert (=> bs!1920027 m!8017786))

(declare-fun m!8017874 () Bool)

(assert (=> bs!1920027 m!8017874))

(declare-fun m!8017876 () Bool)

(assert (=> bs!1920027 m!8017876))

(declare-fun m!8017878 () Bool)

(assert (=> bs!1920027 m!8017878))

(assert (=> b!7359349 d!2281967))

(declare-fun b!7359499 () Bool)

(declare-fun e!4406356 () (Set Context!16312))

(assert (=> b!7359499 (= e!4406356 (set.insert (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370))) (as set.empty (Set Context!16312))))))

(declare-fun bm!674221 () Bool)

(declare-fun call!674231 () (Set Context!16312))

(declare-fun call!674227 () (Set Context!16312))

(assert (=> bm!674221 (= call!674231 call!674227)))

(declare-fun b!7359500 () Bool)

(declare-fun e!4406357 () (Set Context!16312))

(assert (=> b!7359500 (= e!4406356 e!4406357)))

(declare-fun c!1367401 () Bool)

(assert (=> b!7359500 (= c!1367401 (is-Union!19216 (regOne!38944 r1!2370)))))

(declare-fun b!7359501 () Bool)

(declare-fun call!674230 () (Set Context!16312))

(assert (=> b!7359501 (= e!4406357 (set.union call!674230 call!674227))))

(declare-fun b!7359502 () Bool)

(declare-fun c!1367400 () Bool)

(declare-fun e!4406353 () Bool)

(assert (=> b!7359502 (= c!1367400 e!4406353)))

(declare-fun res!2971286 () Bool)

(assert (=> b!7359502 (=> (not res!2971286) (not e!4406353))))

(assert (=> b!7359502 (= res!2971286 (is-Concat!28061 (regOne!38944 r1!2370)))))

(declare-fun e!4406358 () (Set Context!16312))

(assert (=> b!7359502 (= e!4406357 e!4406358)))

(declare-fun b!7359503 () Bool)

(assert (=> b!7359503 (= e!4406353 (nullable!8303 (regOne!38944 (regOne!38944 r1!2370))))))

(declare-fun c!1367402 () Bool)

(declare-fun bm!674223 () Bool)

(declare-fun call!674228 () List!71712)

(assert (=> bm!674223 (= call!674228 ($colon$colon!3209 (exprs!8656 (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370)))) (ite (or c!1367400 c!1367402) (regTwo!38944 (regOne!38944 r1!2370)) (regOne!38944 r1!2370))))))

(declare-fun b!7359504 () Bool)

(declare-fun e!4406355 () (Set Context!16312))

(assert (=> b!7359504 (= e!4406355 (as set.empty (Set Context!16312)))))

(declare-fun bm!674224 () Bool)

(declare-fun call!674229 () List!71712)

(assert (=> bm!674224 (= call!674229 call!674228)))

(declare-fun b!7359505 () Bool)

(assert (=> b!7359505 (= e!4406358 (set.union call!674230 call!674231))))

(declare-fun b!7359506 () Bool)

(declare-fun call!674226 () (Set Context!16312))

(assert (=> b!7359506 (= e!4406355 call!674226)))

(declare-fun bm!674225 () Bool)

(assert (=> bm!674225 (= call!674230 (derivationStepZipperDown!3042 (ite c!1367401 (regOne!38945 (regOne!38944 r1!2370)) (regOne!38944 (regOne!38944 r1!2370))) (ite c!1367401 (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370))) (Context!16313 call!674228)) c!10362))))

(declare-fun b!7359507 () Bool)

(declare-fun e!4406354 () (Set Context!16312))

(assert (=> b!7359507 (= e!4406354 call!674226)))

(declare-fun b!7359508 () Bool)

(declare-fun c!1367398 () Bool)

(assert (=> b!7359508 (= c!1367398 (is-Star!19216 (regOne!38944 r1!2370)))))

(assert (=> b!7359508 (= e!4406354 e!4406355)))

(declare-fun bm!674226 () Bool)

(assert (=> bm!674226 (= call!674226 call!674231)))

(declare-fun b!7359509 () Bool)

(assert (=> b!7359509 (= e!4406358 e!4406354)))

(assert (=> b!7359509 (= c!1367402 (is-Concat!28061 (regOne!38944 r1!2370)))))

(declare-fun bm!674222 () Bool)

(assert (=> bm!674222 (= call!674227 (derivationStepZipperDown!3042 (ite c!1367401 (regTwo!38945 (regOne!38944 r1!2370)) (ite c!1367400 (regTwo!38944 (regOne!38944 r1!2370)) (ite c!1367402 (regOne!38944 (regOne!38944 r1!2370)) (reg!19545 (regOne!38944 r1!2370))))) (ite (or c!1367401 c!1367400) (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370))) (Context!16313 call!674229)) c!10362))))

(declare-fun d!2281973 () Bool)

(declare-fun c!1367399 () Bool)

(assert (=> d!2281973 (= c!1367399 (and (is-ElementMatch!19216 (regOne!38944 r1!2370)) (= (c!1367366 (regOne!38944 r1!2370)) c!10362)))))

(assert (=> d!2281973 (= (derivationStepZipperDown!3042 (regOne!38944 r1!2370) (Context!16313 ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370))) c!10362) e!4406356)))

(assert (= (and d!2281973 c!1367399) b!7359499))

(assert (= (and d!2281973 (not c!1367399)) b!7359500))

(assert (= (and b!7359500 c!1367401) b!7359501))

(assert (= (and b!7359500 (not c!1367401)) b!7359502))

(assert (= (and b!7359502 res!2971286) b!7359503))

(assert (= (and b!7359502 c!1367400) b!7359505))

(assert (= (and b!7359502 (not c!1367400)) b!7359509))

(assert (= (and b!7359509 c!1367402) b!7359507))

(assert (= (and b!7359509 (not c!1367402)) b!7359508))

(assert (= (and b!7359508 c!1367398) b!7359506))

(assert (= (and b!7359508 (not c!1367398)) b!7359504))

(assert (= (or b!7359507 b!7359506) bm!674224))

(assert (= (or b!7359507 b!7359506) bm!674226))

(assert (= (or b!7359505 bm!674226) bm!674221))

(assert (= (or b!7359505 bm!674224) bm!674223))

(assert (= (or b!7359501 bm!674221) bm!674222))

(assert (= (or b!7359501 b!7359505) bm!674225))

(declare-fun m!8017882 () Bool)

(assert (=> bm!674223 m!8017882))

(declare-fun m!8017884 () Bool)

(assert (=> bm!674222 m!8017884))

(declare-fun m!8017886 () Bool)

(assert (=> bm!674225 m!8017886))

(declare-fun m!8017888 () Bool)

(assert (=> b!7359503 m!8017888))

(declare-fun m!8017890 () Bool)

(assert (=> b!7359499 m!8017890))

(assert (=> b!7359353 d!2281973))

(declare-fun d!2281977 () Bool)

(assert (=> d!2281977 (= ($colon$colon!3209 (exprs!8656 ct1!282) (regTwo!38944 r1!2370)) (Cons!71588 (regTwo!38944 r1!2370) (exprs!8656 ct1!282)))))

(assert (=> b!7359353 d!2281977))

(declare-fun bm!674227 () Bool)

(declare-fun call!674232 () Bool)

(declare-fun c!1367404 () Bool)

(assert (=> bm!674227 (= call!674232 (validRegex!9812 (ite c!1367404 (regTwo!38945 (regTwo!38944 r1!2370)) (regOne!38944 (regTwo!38944 r1!2370)))))))

(declare-fun call!674233 () Bool)

(declare-fun c!1367403 () Bool)

(declare-fun bm!674228 () Bool)

(assert (=> bm!674228 (= call!674233 (validRegex!9812 (ite c!1367403 (reg!19545 (regTwo!38944 r1!2370)) (ite c!1367404 (regOne!38945 (regTwo!38944 r1!2370)) (regTwo!38944 (regTwo!38944 r1!2370))))))))

(declare-fun b!7359510 () Bool)

(declare-fun e!4406364 () Bool)

(declare-fun e!4406362 () Bool)

(assert (=> b!7359510 (= e!4406364 e!4406362)))

(assert (=> b!7359510 (= c!1367404 (is-Union!19216 (regTwo!38944 r1!2370)))))

(declare-fun b!7359511 () Bool)

(declare-fun e!4406361 () Bool)

(assert (=> b!7359511 (= e!4406361 call!674233)))

(declare-fun b!7359513 () Bool)

(declare-fun res!2971290 () Bool)

(declare-fun e!4406363 () Bool)

(assert (=> b!7359513 (=> res!2971290 e!4406363)))

(assert (=> b!7359513 (= res!2971290 (not (is-Concat!28061 (regTwo!38944 r1!2370))))))

(assert (=> b!7359513 (= e!4406362 e!4406363)))

(declare-fun b!7359514 () Bool)

(declare-fun e!4406365 () Bool)

(assert (=> b!7359514 (= e!4406365 e!4406364)))

(assert (=> b!7359514 (= c!1367403 (is-Star!19216 (regTwo!38944 r1!2370)))))

(declare-fun b!7359515 () Bool)

(declare-fun e!4406360 () Bool)

(assert (=> b!7359515 (= e!4406360 call!674232)))

(declare-fun b!7359516 () Bool)

(declare-fun res!2971291 () Bool)

(assert (=> b!7359516 (=> (not res!2971291) (not e!4406360))))

(declare-fun call!674234 () Bool)

(assert (=> b!7359516 (= res!2971291 call!674234)))

(assert (=> b!7359516 (= e!4406362 e!4406360)))

(declare-fun b!7359517 () Bool)

(declare-fun e!4406359 () Bool)

(assert (=> b!7359517 (= e!4406359 call!674234)))

(declare-fun d!2281979 () Bool)

(declare-fun res!2971289 () Bool)

(assert (=> d!2281979 (=> res!2971289 e!4406365)))

(assert (=> d!2281979 (= res!2971289 (is-ElementMatch!19216 (regTwo!38944 r1!2370)))))

(assert (=> d!2281979 (= (validRegex!9812 (regTwo!38944 r1!2370)) e!4406365)))

(declare-fun b!7359512 () Bool)

(assert (=> b!7359512 (= e!4406363 e!4406359)))

(declare-fun res!2971288 () Bool)

(assert (=> b!7359512 (=> (not res!2971288) (not e!4406359))))

(assert (=> b!7359512 (= res!2971288 call!674232)))

(declare-fun b!7359518 () Bool)

(assert (=> b!7359518 (= e!4406364 e!4406361)))

(declare-fun res!2971287 () Bool)

(assert (=> b!7359518 (= res!2971287 (not (nullable!8303 (reg!19545 (regTwo!38944 r1!2370)))))))

(assert (=> b!7359518 (=> (not res!2971287) (not e!4406361))))

(declare-fun bm!674229 () Bool)

(assert (=> bm!674229 (= call!674234 call!674233)))

(assert (= (and d!2281979 (not res!2971289)) b!7359514))

(assert (= (and b!7359514 c!1367403) b!7359518))

(assert (= (and b!7359514 (not c!1367403)) b!7359510))

(assert (= (and b!7359518 res!2971287) b!7359511))

(assert (= (and b!7359510 c!1367404) b!7359516))

(assert (= (and b!7359510 (not c!1367404)) b!7359513))

(assert (= (and b!7359516 res!2971291) b!7359515))

(assert (= (and b!7359513 (not res!2971290)) b!7359512))

(assert (= (and b!7359512 res!2971288) b!7359517))

(assert (= (or b!7359516 b!7359517) bm!674229))

(assert (= (or b!7359515 b!7359512) bm!674227))

(assert (= (or b!7359511 bm!674229) bm!674228))

(declare-fun m!8017892 () Bool)

(assert (=> bm!674227 m!8017892))

(declare-fun m!8017894 () Bool)

(assert (=> bm!674228 m!8017894))

(declare-fun m!8017896 () Bool)

(assert (=> b!7359518 m!8017896))

(assert (=> b!7359347 d!2281979))

(declare-fun d!2281981 () Bool)

(declare-fun nullableFct!3323 (Regex!19216) Bool)

(assert (=> d!2281981 (= (nullable!8303 (regOne!38944 r1!2370)) (nullableFct!3323 (regOne!38944 r1!2370)))))

(declare-fun bs!1920033 () Bool)

(assert (= bs!1920033 d!2281981))

(declare-fun m!8017898 () Bool)

(assert (=> bs!1920033 m!8017898))

(assert (=> b!7359357 d!2281981))

(declare-fun b!7359519 () Bool)

(declare-fun e!4406369 () (Set Context!16312))

(assert (=> b!7359519 (= e!4406369 (set.insert ct1!282 (as set.empty (Set Context!16312))))))

(declare-fun bm!674230 () Bool)

(declare-fun call!674240 () (Set Context!16312))

(declare-fun call!674236 () (Set Context!16312))

(assert (=> bm!674230 (= call!674240 call!674236)))

(declare-fun b!7359520 () Bool)

(declare-fun e!4406370 () (Set Context!16312))

(assert (=> b!7359520 (= e!4406369 e!4406370)))

(declare-fun c!1367408 () Bool)

(assert (=> b!7359520 (= c!1367408 (is-Union!19216 r1!2370))))

(declare-fun b!7359521 () Bool)

(declare-fun call!674239 () (Set Context!16312))

(assert (=> b!7359521 (= e!4406370 (set.union call!674239 call!674236))))

(declare-fun b!7359522 () Bool)

(declare-fun c!1367407 () Bool)

(declare-fun e!4406366 () Bool)

(assert (=> b!7359522 (= c!1367407 e!4406366)))

(declare-fun res!2971292 () Bool)

(assert (=> b!7359522 (=> (not res!2971292) (not e!4406366))))

(assert (=> b!7359522 (= res!2971292 (is-Concat!28061 r1!2370))))

(declare-fun e!4406371 () (Set Context!16312))

(assert (=> b!7359522 (= e!4406370 e!4406371)))

(declare-fun b!7359523 () Bool)

(assert (=> b!7359523 (= e!4406366 (nullable!8303 (regOne!38944 r1!2370)))))

(declare-fun bm!674232 () Bool)

(declare-fun c!1367409 () Bool)

(declare-fun call!674237 () List!71712)

(assert (=> bm!674232 (= call!674237 ($colon$colon!3209 (exprs!8656 ct1!282) (ite (or c!1367407 c!1367409) (regTwo!38944 r1!2370) r1!2370)))))

(declare-fun b!7359524 () Bool)

(declare-fun e!4406368 () (Set Context!16312))

(assert (=> b!7359524 (= e!4406368 (as set.empty (Set Context!16312)))))

(declare-fun bm!674233 () Bool)

(declare-fun call!674238 () List!71712)

(assert (=> bm!674233 (= call!674238 call!674237)))

(declare-fun b!7359525 () Bool)

(assert (=> b!7359525 (= e!4406371 (set.union call!674239 call!674240))))

(declare-fun b!7359526 () Bool)

(declare-fun call!674235 () (Set Context!16312))

(assert (=> b!7359526 (= e!4406368 call!674235)))

(declare-fun bm!674234 () Bool)

(assert (=> bm!674234 (= call!674239 (derivationStepZipperDown!3042 (ite c!1367408 (regOne!38945 r1!2370) (regOne!38944 r1!2370)) (ite c!1367408 ct1!282 (Context!16313 call!674237)) c!10362))))

(declare-fun b!7359527 () Bool)

(declare-fun e!4406367 () (Set Context!16312))

(assert (=> b!7359527 (= e!4406367 call!674235)))

(declare-fun b!7359528 () Bool)

(declare-fun c!1367405 () Bool)

(assert (=> b!7359528 (= c!1367405 (is-Star!19216 r1!2370))))

(assert (=> b!7359528 (= e!4406367 e!4406368)))

(declare-fun bm!674235 () Bool)

(assert (=> bm!674235 (= call!674235 call!674240)))

(declare-fun b!7359529 () Bool)

(assert (=> b!7359529 (= e!4406371 e!4406367)))

(assert (=> b!7359529 (= c!1367409 (is-Concat!28061 r1!2370))))

(declare-fun bm!674231 () Bool)

(assert (=> bm!674231 (= call!674236 (derivationStepZipperDown!3042 (ite c!1367408 (regTwo!38945 r1!2370) (ite c!1367407 (regTwo!38944 r1!2370) (ite c!1367409 (regOne!38944 r1!2370) (reg!19545 r1!2370)))) (ite (or c!1367408 c!1367407) ct1!282 (Context!16313 call!674238)) c!10362))))

(declare-fun d!2281983 () Bool)

(declare-fun c!1367406 () Bool)

(assert (=> d!2281983 (= c!1367406 (and (is-ElementMatch!19216 r1!2370) (= (c!1367366 r1!2370) c!10362)))))

(assert (=> d!2281983 (= (derivationStepZipperDown!3042 r1!2370 ct1!282 c!10362) e!4406369)))

(assert (= (and d!2281983 c!1367406) b!7359519))

(assert (= (and d!2281983 (not c!1367406)) b!7359520))

(assert (= (and b!7359520 c!1367408) b!7359521))

(assert (= (and b!7359520 (not c!1367408)) b!7359522))

(assert (= (and b!7359522 res!2971292) b!7359523))

(assert (= (and b!7359522 c!1367407) b!7359525))

(assert (= (and b!7359522 (not c!1367407)) b!7359529))

(assert (= (and b!7359529 c!1367409) b!7359527))

(assert (= (and b!7359529 (not c!1367409)) b!7359528))

(assert (= (and b!7359528 c!1367405) b!7359526))

(assert (= (and b!7359528 (not c!1367405)) b!7359524))

(assert (= (or b!7359527 b!7359526) bm!674233))

(assert (= (or b!7359527 b!7359526) bm!674235))

(assert (= (or b!7359525 bm!674235) bm!674230))

(assert (= (or b!7359525 bm!674233) bm!674232))

(assert (= (or b!7359521 bm!674230) bm!674231))

(assert (= (or b!7359521 b!7359525) bm!674234))

(declare-fun m!8017900 () Bool)

(assert (=> bm!674232 m!8017900))

(declare-fun m!8017902 () Bool)

(assert (=> bm!674231 m!8017902))

(declare-fun m!8017904 () Bool)

(assert (=> bm!674234 m!8017904))

(assert (=> b!7359523 m!8017782))

(declare-fun m!8017906 () Bool)

(assert (=> b!7359519 m!8017906))

(assert (=> b!7359356 d!2281983))

(declare-fun b!7359540 () Bool)

(declare-fun e!4406374 () Bool)

(assert (=> b!7359540 (= e!4406374 tp_is_empty!48677)))

(declare-fun b!7359543 () Bool)

(declare-fun tp!2090989 () Bool)

(declare-fun tp!2090990 () Bool)

(assert (=> b!7359543 (= e!4406374 (and tp!2090989 tp!2090990))))

(declare-fun b!7359542 () Bool)

(declare-fun tp!2090986 () Bool)

(assert (=> b!7359542 (= e!4406374 tp!2090986)))

(declare-fun b!7359541 () Bool)

(declare-fun tp!2090987 () Bool)

(declare-fun tp!2090988 () Bool)

(assert (=> b!7359541 (= e!4406374 (and tp!2090987 tp!2090988))))

(assert (=> b!7359355 (= tp!2090944 e!4406374)))

(assert (= (and b!7359355 (is-ElementMatch!19216 (reg!19545 r1!2370))) b!7359540))

(assert (= (and b!7359355 (is-Concat!28061 (reg!19545 r1!2370))) b!7359541))

(assert (= (and b!7359355 (is-Star!19216 (reg!19545 r1!2370))) b!7359542))

(assert (= (and b!7359355 (is-Union!19216 (reg!19545 r1!2370))) b!7359543))

(declare-fun b!7359544 () Bool)

(declare-fun e!4406375 () Bool)

(assert (=> b!7359544 (= e!4406375 tp_is_empty!48677)))

(declare-fun b!7359547 () Bool)

(declare-fun tp!2090994 () Bool)

(declare-fun tp!2090995 () Bool)

(assert (=> b!7359547 (= e!4406375 (and tp!2090994 tp!2090995))))

(declare-fun b!7359546 () Bool)

(declare-fun tp!2090991 () Bool)

(assert (=> b!7359546 (= e!4406375 tp!2090991)))

(declare-fun b!7359545 () Bool)

(declare-fun tp!2090992 () Bool)

(declare-fun tp!2090993 () Bool)

(assert (=> b!7359545 (= e!4406375 (and tp!2090992 tp!2090993))))

(assert (=> b!7359344 (= tp!2090946 e!4406375)))

(assert (= (and b!7359344 (is-ElementMatch!19216 (regOne!38944 r1!2370))) b!7359544))

(assert (= (and b!7359344 (is-Concat!28061 (regOne!38944 r1!2370))) b!7359545))

(assert (= (and b!7359344 (is-Star!19216 (regOne!38944 r1!2370))) b!7359546))

(assert (= (and b!7359344 (is-Union!19216 (regOne!38944 r1!2370))) b!7359547))

(declare-fun b!7359548 () Bool)

(declare-fun e!4406376 () Bool)

(assert (=> b!7359548 (= e!4406376 tp_is_empty!48677)))

(declare-fun b!7359551 () Bool)

(declare-fun tp!2090999 () Bool)

(declare-fun tp!2091000 () Bool)

(assert (=> b!7359551 (= e!4406376 (and tp!2090999 tp!2091000))))

(declare-fun b!7359550 () Bool)

(declare-fun tp!2090996 () Bool)

(assert (=> b!7359550 (= e!4406376 tp!2090996)))

(declare-fun b!7359549 () Bool)

(declare-fun tp!2090997 () Bool)

(declare-fun tp!2090998 () Bool)

(assert (=> b!7359549 (= e!4406376 (and tp!2090997 tp!2090998))))

(assert (=> b!7359344 (= tp!2090945 e!4406376)))

(assert (= (and b!7359344 (is-ElementMatch!19216 (regTwo!38944 r1!2370))) b!7359548))

(assert (= (and b!7359344 (is-Concat!28061 (regTwo!38944 r1!2370))) b!7359549))

(assert (= (and b!7359344 (is-Star!19216 (regTwo!38944 r1!2370))) b!7359550))

(assert (= (and b!7359344 (is-Union!19216 (regTwo!38944 r1!2370))) b!7359551))

(declare-fun b!7359552 () Bool)

(declare-fun e!4406377 () Bool)

(assert (=> b!7359552 (= e!4406377 tp_is_empty!48677)))

(declare-fun b!7359555 () Bool)

(declare-fun tp!2091004 () Bool)

(declare-fun tp!2091005 () Bool)

(assert (=> b!7359555 (= e!4406377 (and tp!2091004 tp!2091005))))

(declare-fun b!7359554 () Bool)

(declare-fun tp!2091001 () Bool)

(assert (=> b!7359554 (= e!4406377 tp!2091001)))

(declare-fun b!7359553 () Bool)

(declare-fun tp!2091002 () Bool)

(declare-fun tp!2091003 () Bool)

(assert (=> b!7359553 (= e!4406377 (and tp!2091002 tp!2091003))))

(assert (=> b!7359354 (= tp!2090950 e!4406377)))

(assert (= (and b!7359354 (is-ElementMatch!19216 (regOne!38945 r1!2370))) b!7359552))

(assert (= (and b!7359354 (is-Concat!28061 (regOne!38945 r1!2370))) b!7359553))

(assert (= (and b!7359354 (is-Star!19216 (regOne!38945 r1!2370))) b!7359554))

(assert (= (and b!7359354 (is-Union!19216 (regOne!38945 r1!2370))) b!7359555))

(declare-fun b!7359556 () Bool)

(declare-fun e!4406378 () Bool)

(assert (=> b!7359556 (= e!4406378 tp_is_empty!48677)))

(declare-fun b!7359559 () Bool)

(declare-fun tp!2091009 () Bool)

(declare-fun tp!2091010 () Bool)

(assert (=> b!7359559 (= e!4406378 (and tp!2091009 tp!2091010))))

(declare-fun b!7359558 () Bool)

(declare-fun tp!2091006 () Bool)

(assert (=> b!7359558 (= e!4406378 tp!2091006)))

(declare-fun b!7359557 () Bool)

(declare-fun tp!2091007 () Bool)

(declare-fun tp!2091008 () Bool)

(assert (=> b!7359557 (= e!4406378 (and tp!2091007 tp!2091008))))

(assert (=> b!7359354 (= tp!2090951 e!4406378)))

(assert (= (and b!7359354 (is-ElementMatch!19216 (regTwo!38945 r1!2370))) b!7359556))

(assert (= (and b!7359354 (is-Concat!28061 (regTwo!38945 r1!2370))) b!7359557))

(assert (= (and b!7359354 (is-Star!19216 (regTwo!38945 r1!2370))) b!7359558))

(assert (= (and b!7359354 (is-Union!19216 (regTwo!38945 r1!2370))) b!7359559))

(declare-fun b!7359564 () Bool)

(declare-fun e!4406381 () Bool)

(declare-fun tp!2091015 () Bool)

(declare-fun tp!2091016 () Bool)

(assert (=> b!7359564 (= e!4406381 (and tp!2091015 tp!2091016))))

(assert (=> b!7359352 (= tp!2090947 e!4406381)))

(assert (= (and b!7359352 (is-Cons!71588 (exprs!8656 ct1!282))) b!7359564))

(declare-fun b!7359565 () Bool)

(declare-fun e!4406382 () Bool)

(declare-fun tp!2091017 () Bool)

(declare-fun tp!2091018 () Bool)

(assert (=> b!7359565 (= e!4406382 (and tp!2091017 tp!2091018))))

(assert (=> b!7359346 (= tp!2090948 e!4406382)))

(assert (= (and b!7359346 (is-Cons!71588 (exprs!8656 cWitness!61))) b!7359565))

(declare-fun b!7359566 () Bool)

(declare-fun e!4406383 () Bool)

(declare-fun tp!2091019 () Bool)

(declare-fun tp!2091020 () Bool)

(assert (=> b!7359566 (= e!4406383 (and tp!2091019 tp!2091020))))

(assert (=> b!7359351 (= tp!2090949 e!4406383)))

(assert (= (and b!7359351 (is-Cons!71588 (exprs!8656 ct2!378))) b!7359566))

(push 1)

(assert (not d!2281955))

(assert (not b!7359565))

(assert (not b!7359566))

(assert (not d!2281963))

(assert (not d!2281957))

(assert (not b!7359549))

(assert (not d!2281981))

(assert (not d!2281967))

(assert (not bm!674222))

(assert (not b!7359553))

(assert (not b!7359555))

(assert (not bm!674231))

(assert (not b!7359523))

(assert (not b!7359546))

(assert (not b!7359496))

(assert (not bm!674234))

(assert (not b!7359543))

(assert (not b!7359518))

(assert (not b!7359471))

(assert (not b!7359547))

(assert (not b!7359551))

(assert (not bm!674214))

(assert (not bm!674216))

(assert (not b!7359557))

(assert (not bm!674192))

(assert (not bm!674223))

(assert (not b!7359503))

(assert (not bm!674228))

(assert tp_is_empty!48677)

(assert (not b!7359497))

(assert (not bm!674232))

(assert (not b!7359550))

(assert (not b!7359542))

(assert (not b!7359559))

(assert (not b!7359541))

(assert (not bm!674227))

(assert (not bm!674213))

(assert (not bm!674191))

(assert (not b!7359564))

(assert (not b!7359426))

(assert (not b!7359545))

(assert (not bm!674225))

(assert (not b!7359558))

(assert (not d!2281953))

(assert (not b!7359554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

