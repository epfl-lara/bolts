; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244006 () Bool)

(assert start!244006)

(declare-fun res!1056915 () Bool)

(declare-fun e!1585335 () Bool)

(assert (=> start!244006 (=> (not res!1056915) (not e!1585335))))

(declare-datatypes ((C!14950 0))(
  ( (C!14951 (val!9127 Int)) )
))
(declare-datatypes ((Regex!7396 0))(
  ( (ElementMatch!7396 (c!397518 C!14950)) (Concat!12092 (regOne!15304 Regex!7396) (regTwo!15304 Regex!7396)) (EmptyExpr!7396) (Star!7396 (reg!7725 Regex!7396)) (EmptyLang!7396) (Union!7396 (regOne!15305 Regex!7396) (regTwo!15305 Regex!7396)) )
))
(declare-fun r!27340 () Regex!7396)

(declare-fun validRegex!3022 (Regex!7396) Bool)

(assert (=> start!244006 (= res!1056915 (validRegex!3022 r!27340))))

(assert (=> start!244006 e!1585335))

(declare-fun e!1585337 () Bool)

(assert (=> start!244006 e!1585337))

(declare-fun tp_is_empty!12647 () Bool)

(assert (=> start!244006 tp_is_empty!12647))

(declare-fun e!1585336 () Bool)

(assert (=> start!244006 e!1585336))

(declare-fun b!2499067 () Bool)

(declare-fun res!1056916 () Bool)

(assert (=> b!2499067 (=> (not res!1056916) (not e!1585335))))

(declare-datatypes ((List!29461 0))(
  ( (Nil!29361) (Cons!29361 (h!34781 C!14950) (t!211160 List!29461)) )
))
(declare-fun tl!4068 () List!29461)

(declare-fun c!14016 () C!14950)

(declare-fun nullable!2313 (Regex!7396) Bool)

(declare-fun derivative!91 (Regex!7396 List!29461) Regex!7396)

(declare-fun derivativeStep!1965 (Regex!7396 C!14950) Regex!7396)

(assert (=> b!2499067 (= res!1056916 (nullable!2313 (derivative!91 (derivativeStep!1965 r!27340 c!14016) tl!4068)))))

(declare-fun b!2499068 () Bool)

(declare-fun tp!800185 () Bool)

(declare-fun tp!800187 () Bool)

(assert (=> b!2499068 (= e!1585337 (and tp!800185 tp!800187))))

(declare-fun b!2499069 () Bool)

(declare-fun tp!800184 () Bool)

(assert (=> b!2499069 (= e!1585337 tp!800184)))

(declare-fun b!2499070 () Bool)

(declare-fun tp!800188 () Bool)

(declare-fun tp!800186 () Bool)

(assert (=> b!2499070 (= e!1585337 (and tp!800188 tp!800186))))

(declare-fun b!2499071 () Bool)

(assert (=> b!2499071 (= e!1585337 tp_is_empty!12647)))

(declare-fun b!2499072 () Bool)

(declare-fun tp!800183 () Bool)

(assert (=> b!2499072 (= e!1585336 (and tp_is_empty!12647 tp!800183))))

(declare-fun b!2499073 () Bool)

(declare-fun res!1056918 () Bool)

(assert (=> b!2499073 (=> (not res!1056918) (not e!1585335))))

(assert (=> b!2499073 (= res!1056918 (and (not (is-EmptyExpr!7396 r!27340)) (not (is-EmptyLang!7396 r!27340)) (not (is-ElementMatch!7396 r!27340)) (not (is-Union!7396 r!27340)) (not (is-Star!7396 r!27340))))))

(declare-fun b!2499074 () Bool)

(assert (=> b!2499074 (= e!1585335 (not (validRegex!3022 (regTwo!15304 r!27340))))))

(declare-fun lt!895399 () Regex!7396)

(assert (=> b!2499074 (= lt!895399 (derivativeStep!1965 (regOne!15304 r!27340) c!14016))))

(declare-fun b!2499075 () Bool)

(declare-fun res!1056917 () Bool)

(assert (=> b!2499075 (=> (not res!1056917) (not e!1585335))))

(assert (=> b!2499075 (= res!1056917 (nullable!2313 (regOne!15304 r!27340)))))

(assert (= (and start!244006 res!1056915) b!2499067))

(assert (= (and b!2499067 res!1056916) b!2499073))

(assert (= (and b!2499073 res!1056918) b!2499075))

(assert (= (and b!2499075 res!1056917) b!2499074))

(assert (= (and start!244006 (is-ElementMatch!7396 r!27340)) b!2499071))

(assert (= (and start!244006 (is-Concat!12092 r!27340)) b!2499070))

(assert (= (and start!244006 (is-Star!7396 r!27340)) b!2499069))

(assert (= (and start!244006 (is-Union!7396 r!27340)) b!2499068))

(assert (= (and start!244006 (is-Cons!29361 tl!4068)) b!2499072))

(declare-fun m!2862469 () Bool)

(assert (=> start!244006 m!2862469))

(declare-fun m!2862471 () Bool)

(assert (=> b!2499067 m!2862471))

(assert (=> b!2499067 m!2862471))

(declare-fun m!2862473 () Bool)

(assert (=> b!2499067 m!2862473))

(assert (=> b!2499067 m!2862473))

(declare-fun m!2862475 () Bool)

(assert (=> b!2499067 m!2862475))

(declare-fun m!2862477 () Bool)

(assert (=> b!2499074 m!2862477))

(declare-fun m!2862479 () Bool)

(assert (=> b!2499074 m!2862479))

(declare-fun m!2862481 () Bool)

(assert (=> b!2499075 m!2862481))

(push 1)

(assert (not b!2499072))

(assert (not b!2499068))

(assert (not b!2499069))

(assert (not start!244006))

(assert (not b!2499067))

(assert (not b!2499075))

(assert (not b!2499074))

(assert tp_is_empty!12647)

(assert (not b!2499070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!715220 () Bool)

(declare-fun nullableFct!586 (Regex!7396) Bool)

(assert (=> d!715220 (= (nullable!2313 (derivative!91 (derivativeStep!1965 r!27340 c!14016) tl!4068)) (nullableFct!586 (derivative!91 (derivativeStep!1965 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468534 () Bool)

(assert (= bs!468534 d!715220))

(assert (=> bs!468534 m!2862473))

(declare-fun m!2862497 () Bool)

(assert (=> bs!468534 m!2862497))

(assert (=> b!2499067 d!715220))

(declare-fun d!715222 () Bool)

(declare-fun lt!895405 () Regex!7396)

(assert (=> d!715222 (validRegex!3022 lt!895405)))

(declare-fun e!1585349 () Regex!7396)

(assert (=> d!715222 (= lt!895405 e!1585349)))

(declare-fun c!397522 () Bool)

(assert (=> d!715222 (= c!397522 (is-Cons!29361 tl!4068))))

(assert (=> d!715222 (validRegex!3022 (derivativeStep!1965 r!27340 c!14016))))

(assert (=> d!715222 (= (derivative!91 (derivativeStep!1965 r!27340 c!14016) tl!4068) lt!895405)))

(declare-fun b!2499107 () Bool)

(assert (=> b!2499107 (= e!1585349 (derivative!91 (derivativeStep!1965 (derivativeStep!1965 r!27340 c!14016) (h!34781 tl!4068)) (t!211160 tl!4068)))))

(declare-fun b!2499108 () Bool)

(assert (=> b!2499108 (= e!1585349 (derivativeStep!1965 r!27340 c!14016))))

(assert (= (and d!715222 c!397522) b!2499107))

(assert (= (and d!715222 (not c!397522)) b!2499108))

(declare-fun m!2862499 () Bool)

(assert (=> d!715222 m!2862499))

(assert (=> d!715222 m!2862471))

(declare-fun m!2862501 () Bool)

(assert (=> d!715222 m!2862501))

(assert (=> b!2499107 m!2862471))

(declare-fun m!2862503 () Bool)

(assert (=> b!2499107 m!2862503))

(assert (=> b!2499107 m!2862503))

(declare-fun m!2862505 () Bool)

(assert (=> b!2499107 m!2862505))

(assert (=> b!2499067 d!715222))

(declare-fun call!154190 () Regex!7396)

(declare-fun bm!154185 () Bool)

(declare-fun c!397539 () Bool)

(declare-fun c!397538 () Bool)

(assert (=> bm!154185 (= call!154190 (derivativeStep!1965 (ite c!397538 (regOne!15305 r!27340) (ite c!397539 (reg!7725 r!27340) (regOne!15304 r!27340))) c!14016))))

(declare-fun call!154192 () Regex!7396)

(declare-fun b!2499147 () Bool)

(declare-fun e!1585377 () Regex!7396)

(declare-fun call!154193 () Regex!7396)

(assert (=> b!2499147 (= e!1585377 (Union!7396 (Concat!12092 call!154193 (regTwo!15304 r!27340)) call!154192))))

(declare-fun b!2499148 () Bool)

(declare-fun c!397537 () Bool)

(assert (=> b!2499148 (= c!397537 (nullable!2313 (regOne!15304 r!27340)))))

(declare-fun e!1585374 () Regex!7396)

(assert (=> b!2499148 (= e!1585374 e!1585377)))

(declare-fun b!2499149 () Bool)

(declare-fun e!1585375 () Regex!7396)

(assert (=> b!2499149 (= e!1585375 (Union!7396 call!154190 call!154192))))

(declare-fun b!2499150 () Bool)

(assert (=> b!2499150 (= e!1585375 e!1585374)))

(assert (=> b!2499150 (= c!397539 (is-Star!7396 r!27340))))

(declare-fun b!2499151 () Bool)

(assert (=> b!2499151 (= c!397538 (is-Union!7396 r!27340))))

(declare-fun e!1585376 () Regex!7396)

(assert (=> b!2499151 (= e!1585376 e!1585375)))

(declare-fun b!2499152 () Bool)

(declare-fun call!154191 () Regex!7396)

(assert (=> b!2499152 (= e!1585374 (Concat!12092 call!154191 r!27340))))

(declare-fun bm!154186 () Bool)

(assert (=> bm!154186 (= call!154191 call!154190)))

(declare-fun d!715224 () Bool)

(declare-fun lt!895408 () Regex!7396)

(assert (=> d!715224 (validRegex!3022 lt!895408)))

(declare-fun e!1585378 () Regex!7396)

(assert (=> d!715224 (= lt!895408 e!1585378)))

(declare-fun c!397540 () Bool)

(assert (=> d!715224 (= c!397540 (or (is-EmptyExpr!7396 r!27340) (is-EmptyLang!7396 r!27340)))))

(assert (=> d!715224 (validRegex!3022 r!27340)))

(assert (=> d!715224 (= (derivativeStep!1965 r!27340 c!14016) lt!895408)))

(declare-fun b!2499153 () Bool)

(assert (=> b!2499153 (= e!1585378 EmptyLang!7396)))

(declare-fun b!2499154 () Bool)

(assert (=> b!2499154 (= e!1585377 (Union!7396 (Concat!12092 call!154193 (regTwo!15304 r!27340)) EmptyLang!7396))))

(declare-fun bm!154187 () Bool)

(assert (=> bm!154187 (= call!154192 (derivativeStep!1965 (ite c!397538 (regTwo!15305 r!27340) (regTwo!15304 r!27340)) c!14016))))

(declare-fun bm!154188 () Bool)

(assert (=> bm!154188 (= call!154193 call!154191)))

(declare-fun b!2499155 () Bool)

(assert (=> b!2499155 (= e!1585376 (ite (= c!14016 (c!397518 r!27340)) EmptyExpr!7396 EmptyLang!7396))))

(declare-fun b!2499156 () Bool)

(assert (=> b!2499156 (= e!1585378 e!1585376)))

(declare-fun c!397541 () Bool)

(assert (=> b!2499156 (= c!397541 (is-ElementMatch!7396 r!27340))))

(assert (= (and d!715224 c!397540) b!2499153))

(assert (= (and d!715224 (not c!397540)) b!2499156))

(assert (= (and b!2499156 c!397541) b!2499155))

(assert (= (and b!2499156 (not c!397541)) b!2499151))

(assert (= (and b!2499151 c!397538) b!2499149))

(assert (= (and b!2499151 (not c!397538)) b!2499150))

(assert (= (and b!2499150 c!397539) b!2499152))

(assert (= (and b!2499150 (not c!397539)) b!2499148))

(assert (= (and b!2499148 c!397537) b!2499147))

(assert (= (and b!2499148 (not c!397537)) b!2499154))

(assert (= (or b!2499147 b!2499154) bm!154188))

(assert (= (or b!2499152 bm!154188) bm!154186))

(assert (= (or b!2499149 b!2499147) bm!154187))

(assert (= (or b!2499149 bm!154186) bm!154185))

(declare-fun m!2862507 () Bool)

(assert (=> bm!154185 m!2862507))

(assert (=> b!2499148 m!2862481))

(declare-fun m!2862509 () Bool)

(assert (=> d!715224 m!2862509))

(assert (=> d!715224 m!2862469))

(declare-fun m!2862511 () Bool)

(assert (=> bm!154187 m!2862511))

(assert (=> b!2499067 d!715224))

(declare-fun b!2499184 () Bool)

(declare-fun e!1585406 () Bool)

(declare-fun call!154203 () Bool)

(assert (=> b!2499184 (= e!1585406 call!154203)))

(declare-fun b!2499185 () Bool)

(declare-fun e!1585405 () Bool)

(declare-fun call!154204 () Bool)

(assert (=> b!2499185 (= e!1585405 call!154204)))

(declare-fun b!2499186 () Bool)

(declare-fun e!1585401 () Bool)

(assert (=> b!2499186 (= e!1585401 e!1585406)))

(declare-fun res!1056960 () Bool)

(assert (=> b!2499186 (= res!1056960 (not (nullable!2313 (reg!7725 r!27340))))))

(assert (=> b!2499186 (=> (not res!1056960) (not e!1585406))))

(declare-fun b!2499187 () Bool)

(declare-fun e!1585400 () Bool)

(declare-fun call!154205 () Bool)

(assert (=> b!2499187 (= e!1585400 call!154205)))

(declare-fun bm!154198 () Bool)

(declare-fun c!397549 () Bool)

(assert (=> bm!154198 (= call!154204 (validRegex!3022 (ite c!397549 (regOne!15305 r!27340) (regTwo!15304 r!27340))))))

(declare-fun c!397548 () Bool)

(declare-fun bm!154199 () Bool)

(assert (=> bm!154199 (= call!154203 (validRegex!3022 (ite c!397548 (reg!7725 r!27340) (ite c!397549 (regTwo!15305 r!27340) (regOne!15304 r!27340)))))))

(declare-fun b!2499189 () Bool)

(declare-fun e!1585402 () Bool)

(assert (=> b!2499189 (= e!1585401 e!1585402)))

(assert (=> b!2499189 (= c!397549 (is-Union!7396 r!27340))))

(declare-fun bm!154200 () Bool)

(assert (=> bm!154200 (= call!154205 call!154203)))

(declare-fun b!2499190 () Bool)

(declare-fun res!1056956 () Bool)

(declare-fun e!1585404 () Bool)

(assert (=> b!2499190 (=> res!1056956 e!1585404)))

(assert (=> b!2499190 (= res!1056956 (not (is-Concat!12092 r!27340)))))

(assert (=> b!2499190 (= e!1585402 e!1585404)))

(declare-fun b!2499191 () Bool)

(assert (=> b!2499191 (= e!1585404 e!1585405)))

(declare-fun res!1056959 () Bool)

(assert (=> b!2499191 (=> (not res!1056959) (not e!1585405))))

(assert (=> b!2499191 (= res!1056959 call!154205)))

(declare-fun b!2499192 () Bool)

(declare-fun e!1585403 () Bool)

(assert (=> b!2499192 (= e!1585403 e!1585401)))

(assert (=> b!2499192 (= c!397548 (is-Star!7396 r!27340))))

(declare-fun b!2499188 () Bool)

(declare-fun res!1056957 () Bool)

(assert (=> b!2499188 (=> (not res!1056957) (not e!1585400))))

(assert (=> b!2499188 (= res!1056957 call!154204)))

(assert (=> b!2499188 (= e!1585402 e!1585400)))

(declare-fun d!715228 () Bool)

(declare-fun res!1056958 () Bool)

(assert (=> d!715228 (=> res!1056958 e!1585403)))

(assert (=> d!715228 (= res!1056958 (is-ElementMatch!7396 r!27340))))

(assert (=> d!715228 (= (validRegex!3022 r!27340) e!1585403)))

(assert (= (and d!715228 (not res!1056958)) b!2499192))

(assert (= (and b!2499192 c!397548) b!2499186))

(assert (= (and b!2499192 (not c!397548)) b!2499189))

(assert (= (and b!2499186 res!1056960) b!2499184))

(assert (= (and b!2499189 c!397549) b!2499188))

(assert (= (and b!2499189 (not c!397549)) b!2499190))

(assert (= (and b!2499188 res!1056957) b!2499187))

(assert (= (and b!2499190 (not res!1056956)) b!2499191))

(assert (= (and b!2499191 res!1056959) b!2499185))

(assert (= (or b!2499188 b!2499185) bm!154198))

(assert (= (or b!2499187 b!2499191) bm!154200))

(assert (= (or b!2499184 bm!154200) bm!154199))

(declare-fun m!2862515 () Bool)

(assert (=> b!2499186 m!2862515))

(declare-fun m!2862517 () Bool)

(assert (=> bm!154198 m!2862517))

(declare-fun m!2862521 () Bool)

(assert (=> bm!154199 m!2862521))

(assert (=> start!244006 d!715228))

(declare-fun d!715230 () Bool)

(assert (=> d!715230 (= (nullable!2313 (regOne!15304 r!27340)) (nullableFct!586 (regOne!15304 r!27340)))))

(declare-fun bs!468535 () Bool)

(assert (= bs!468535 d!715230))

(declare-fun m!2862525 () Bool)

(assert (=> bs!468535 m!2862525))

(assert (=> b!2499075 d!715230))

(declare-fun b!2499193 () Bool)

(declare-fun e!1585413 () Bool)

(declare-fun call!154206 () Bool)

(assert (=> b!2499193 (= e!1585413 call!154206)))

(declare-fun b!2499194 () Bool)

(declare-fun e!1585412 () Bool)

(declare-fun call!154207 () Bool)

(assert (=> b!2499194 (= e!1585412 call!154207)))

(declare-fun b!2499195 () Bool)

(declare-fun e!1585408 () Bool)

(assert (=> b!2499195 (= e!1585408 e!1585413)))

(declare-fun res!1056965 () Bool)

(assert (=> b!2499195 (= res!1056965 (not (nullable!2313 (reg!7725 (regTwo!15304 r!27340)))))))

(assert (=> b!2499195 (=> (not res!1056965) (not e!1585413))))

(declare-fun b!2499196 () Bool)

(declare-fun e!1585407 () Bool)

(declare-fun call!154208 () Bool)

(assert (=> b!2499196 (= e!1585407 call!154208)))

(declare-fun bm!154201 () Bool)

(declare-fun c!397551 () Bool)

(assert (=> bm!154201 (= call!154207 (validRegex!3022 (ite c!397551 (regOne!15305 (regTwo!15304 r!27340)) (regTwo!15304 (regTwo!15304 r!27340)))))))

(declare-fun c!397550 () Bool)

(declare-fun bm!154202 () Bool)

(assert (=> bm!154202 (= call!154206 (validRegex!3022 (ite c!397550 (reg!7725 (regTwo!15304 r!27340)) (ite c!397551 (regTwo!15305 (regTwo!15304 r!27340)) (regOne!15304 (regTwo!15304 r!27340))))))))

(declare-fun b!2499198 () Bool)

(declare-fun e!1585409 () Bool)

(assert (=> b!2499198 (= e!1585408 e!1585409)))

(assert (=> b!2499198 (= c!397551 (is-Union!7396 (regTwo!15304 r!27340)))))

(declare-fun bm!154203 () Bool)

(assert (=> bm!154203 (= call!154208 call!154206)))

(declare-fun b!2499199 () Bool)

(declare-fun res!1056961 () Bool)

(declare-fun e!1585411 () Bool)

(assert (=> b!2499199 (=> res!1056961 e!1585411)))

(assert (=> b!2499199 (= res!1056961 (not (is-Concat!12092 (regTwo!15304 r!27340))))))

(assert (=> b!2499199 (= e!1585409 e!1585411)))

(declare-fun b!2499200 () Bool)

(assert (=> b!2499200 (= e!1585411 e!1585412)))

(declare-fun res!1056964 () Bool)

(assert (=> b!2499200 (=> (not res!1056964) (not e!1585412))))

(assert (=> b!2499200 (= res!1056964 call!154208)))

(declare-fun b!2499201 () Bool)

(declare-fun e!1585410 () Bool)

(assert (=> b!2499201 (= e!1585410 e!1585408)))

(assert (=> b!2499201 (= c!397550 (is-Star!7396 (regTwo!15304 r!27340)))))

(declare-fun b!2499197 () Bool)

(declare-fun res!1056962 () Bool)

(assert (=> b!2499197 (=> (not res!1056962) (not e!1585407))))

(assert (=> b!2499197 (= res!1056962 call!154207)))

(assert (=> b!2499197 (= e!1585409 e!1585407)))

(declare-fun d!715234 () Bool)

(declare-fun res!1056963 () Bool)

(assert (=> d!715234 (=> res!1056963 e!1585410)))

(assert (=> d!715234 (= res!1056963 (is-ElementMatch!7396 (regTwo!15304 r!27340)))))

(assert (=> d!715234 (= (validRegex!3022 (regTwo!15304 r!27340)) e!1585410)))

(assert (= (and d!715234 (not res!1056963)) b!2499201))

(assert (= (and b!2499201 c!397550) b!2499195))

(assert (= (and b!2499201 (not c!397550)) b!2499198))

(assert (= (and b!2499195 res!1056965) b!2499193))

(assert (= (and b!2499198 c!397551) b!2499197))

(assert (= (and b!2499198 (not c!397551)) b!2499199))

(assert (= (and b!2499197 res!1056962) b!2499196))

(assert (= (and b!2499199 (not res!1056961)) b!2499200))

(assert (= (and b!2499200 res!1056964) b!2499194))

(assert (= (or b!2499197 b!2499194) bm!154201))

(assert (= (or b!2499196 b!2499200) bm!154203))

(assert (= (or b!2499193 bm!154203) bm!154202))

(declare-fun m!2862527 () Bool)

(assert (=> b!2499195 m!2862527))

(declare-fun m!2862529 () Bool)

(assert (=> bm!154201 m!2862529))

(declare-fun m!2862531 () Bool)

(assert (=> bm!154202 m!2862531))

(assert (=> b!2499074 d!715234))

(declare-fun bm!154204 () Bool)

(declare-fun call!154209 () Regex!7396)

(declare-fun c!397553 () Bool)

(declare-fun c!397554 () Bool)

(assert (=> bm!154204 (= call!154209 (derivativeStep!1965 (ite c!397553 (regOne!15305 (regOne!15304 r!27340)) (ite c!397554 (reg!7725 (regOne!15304 r!27340)) (regOne!15304 (regOne!15304 r!27340)))) c!14016))))

(declare-fun e!1585417 () Regex!7396)

(declare-fun call!154211 () Regex!7396)

(declare-fun call!154212 () Regex!7396)

(declare-fun b!2499202 () Bool)

(assert (=> b!2499202 (= e!1585417 (Union!7396 (Concat!12092 call!154212 (regTwo!15304 (regOne!15304 r!27340))) call!154211))))

(declare-fun b!2499203 () Bool)

(declare-fun c!397552 () Bool)

(assert (=> b!2499203 (= c!397552 (nullable!2313 (regOne!15304 (regOne!15304 r!27340))))))

(declare-fun e!1585414 () Regex!7396)

(assert (=> b!2499203 (= e!1585414 e!1585417)))

(declare-fun b!2499204 () Bool)

(declare-fun e!1585415 () Regex!7396)

(assert (=> b!2499204 (= e!1585415 (Union!7396 call!154209 call!154211))))

(declare-fun b!2499205 () Bool)

(assert (=> b!2499205 (= e!1585415 e!1585414)))

(assert (=> b!2499205 (= c!397554 (is-Star!7396 (regOne!15304 r!27340)))))

(declare-fun b!2499206 () Bool)

(assert (=> b!2499206 (= c!397553 (is-Union!7396 (regOne!15304 r!27340)))))

(declare-fun e!1585416 () Regex!7396)

(assert (=> b!2499206 (= e!1585416 e!1585415)))

(declare-fun b!2499207 () Bool)

(declare-fun call!154210 () Regex!7396)

(assert (=> b!2499207 (= e!1585414 (Concat!12092 call!154210 (regOne!15304 r!27340)))))

(declare-fun bm!154205 () Bool)

(assert (=> bm!154205 (= call!154210 call!154209)))

(declare-fun d!715236 () Bool)

(declare-fun lt!895409 () Regex!7396)

(assert (=> d!715236 (validRegex!3022 lt!895409)))

(declare-fun e!1585418 () Regex!7396)

(assert (=> d!715236 (= lt!895409 e!1585418)))

(declare-fun c!397555 () Bool)

(assert (=> d!715236 (= c!397555 (or (is-EmptyExpr!7396 (regOne!15304 r!27340)) (is-EmptyLang!7396 (regOne!15304 r!27340))))))

(assert (=> d!715236 (validRegex!3022 (regOne!15304 r!27340))))

(assert (=> d!715236 (= (derivativeStep!1965 (regOne!15304 r!27340) c!14016) lt!895409)))

(declare-fun b!2499208 () Bool)

(assert (=> b!2499208 (= e!1585418 EmptyLang!7396)))

(declare-fun b!2499209 () Bool)

(assert (=> b!2499209 (= e!1585417 (Union!7396 (Concat!12092 call!154212 (regTwo!15304 (regOne!15304 r!27340))) EmptyLang!7396))))

(declare-fun bm!154206 () Bool)

(assert (=> bm!154206 (= call!154211 (derivativeStep!1965 (ite c!397553 (regTwo!15305 (regOne!15304 r!27340)) (regTwo!15304 (regOne!15304 r!27340))) c!14016))))

(declare-fun bm!154207 () Bool)

(assert (=> bm!154207 (= call!154212 call!154210)))

(declare-fun b!2499210 () Bool)

(assert (=> b!2499210 (= e!1585416 (ite (= c!14016 (c!397518 (regOne!15304 r!27340))) EmptyExpr!7396 EmptyLang!7396))))

(declare-fun b!2499211 () Bool)

(assert (=> b!2499211 (= e!1585418 e!1585416)))

(declare-fun c!397556 () Bool)

(assert (=> b!2499211 (= c!397556 (is-ElementMatch!7396 (regOne!15304 r!27340)))))

(assert (= (and d!715236 c!397555) b!2499208))

(assert (= (and d!715236 (not c!397555)) b!2499211))

(assert (= (and b!2499211 c!397556) b!2499210))

(assert (= (and b!2499211 (not c!397556)) b!2499206))

(assert (= (and b!2499206 c!397553) b!2499204))

(assert (= (and b!2499206 (not c!397553)) b!2499205))

(assert (= (and b!2499205 c!397554) b!2499207))

(assert (= (and b!2499205 (not c!397554)) b!2499203))

(assert (= (and b!2499203 c!397552) b!2499202))

(assert (= (and b!2499203 (not c!397552)) b!2499209))

(assert (= (or b!2499202 b!2499209) bm!154207))

(assert (= (or b!2499207 bm!154207) bm!154205))

(assert (= (or b!2499204 b!2499202) bm!154206))

(assert (= (or b!2499204 bm!154205) bm!154204))

(declare-fun m!2862533 () Bool)

(assert (=> bm!154204 m!2862533))

(declare-fun m!2862535 () Bool)

(assert (=> b!2499203 m!2862535))

(declare-fun m!2862537 () Bool)

(assert (=> d!715236 m!2862537))

(declare-fun m!2862539 () Bool)

(assert (=> d!715236 m!2862539))

(declare-fun m!2862541 () Bool)

(assert (=> bm!154206 m!2862541))

(assert (=> b!2499074 d!715236))

(declare-fun b!2499216 () Bool)

(declare-fun e!1585421 () Bool)

(declare-fun tp!800209 () Bool)

(assert (=> b!2499216 (= e!1585421 (and tp_is_empty!12647 tp!800209))))

(assert (=> b!2499072 (= tp!800183 e!1585421)))

(assert (= (and b!2499072 (is-Cons!29361 (t!211160 tl!4068))) b!2499216))

(declare-fun b!2499228 () Bool)

(declare-fun e!1585424 () Bool)

(declare-fun tp!800223 () Bool)

(declare-fun tp!800224 () Bool)

(assert (=> b!2499228 (= e!1585424 (and tp!800223 tp!800224))))

(assert (=> b!2499068 (= tp!800185 e!1585424)))

(declare-fun b!2499230 () Bool)

(declare-fun tp!800222 () Bool)

(declare-fun tp!800220 () Bool)

(assert (=> b!2499230 (= e!1585424 (and tp!800222 tp!800220))))

(declare-fun b!2499227 () Bool)

(assert (=> b!2499227 (= e!1585424 tp_is_empty!12647)))

(declare-fun b!2499229 () Bool)

(declare-fun tp!800221 () Bool)

(assert (=> b!2499229 (= e!1585424 tp!800221)))

(assert (= (and b!2499068 (is-ElementMatch!7396 (regOne!15305 r!27340))) b!2499227))

(assert (= (and b!2499068 (is-Concat!12092 (regOne!15305 r!27340))) b!2499228))

(assert (= (and b!2499068 (is-Star!7396 (regOne!15305 r!27340))) b!2499229))

(assert (= (and b!2499068 (is-Union!7396 (regOne!15305 r!27340))) b!2499230))

(declare-fun b!2499232 () Bool)

(declare-fun e!1585425 () Bool)

(declare-fun tp!800228 () Bool)

(declare-fun tp!800229 () Bool)

(assert (=> b!2499232 (= e!1585425 (and tp!800228 tp!800229))))

(assert (=> b!2499068 (= tp!800187 e!1585425)))

(declare-fun b!2499234 () Bool)

(declare-fun tp!800227 () Bool)

(declare-fun tp!800225 () Bool)

(assert (=> b!2499234 (= e!1585425 (and tp!800227 tp!800225))))

(declare-fun b!2499231 () Bool)

(assert (=> b!2499231 (= e!1585425 tp_is_empty!12647)))

(declare-fun b!2499233 () Bool)

(declare-fun tp!800226 () Bool)

(assert (=> b!2499233 (= e!1585425 tp!800226)))

(assert (= (and b!2499068 (is-ElementMatch!7396 (regTwo!15305 r!27340))) b!2499231))

(assert (= (and b!2499068 (is-Concat!12092 (regTwo!15305 r!27340))) b!2499232))

(assert (= (and b!2499068 (is-Star!7396 (regTwo!15305 r!27340))) b!2499233))

(assert (= (and b!2499068 (is-Union!7396 (regTwo!15305 r!27340))) b!2499234))

(declare-fun b!2499236 () Bool)

(declare-fun e!1585426 () Bool)

(declare-fun tp!800233 () Bool)

(declare-fun tp!800234 () Bool)

(assert (=> b!2499236 (= e!1585426 (and tp!800233 tp!800234))))

(assert (=> b!2499069 (= tp!800184 e!1585426)))

(declare-fun b!2499238 () Bool)

(declare-fun tp!800232 () Bool)

(declare-fun tp!800230 () Bool)

(assert (=> b!2499238 (= e!1585426 (and tp!800232 tp!800230))))

(declare-fun b!2499235 () Bool)

(assert (=> b!2499235 (= e!1585426 tp_is_empty!12647)))

(declare-fun b!2499237 () Bool)

(declare-fun tp!800231 () Bool)

(assert (=> b!2499237 (= e!1585426 tp!800231)))

(assert (= (and b!2499069 (is-ElementMatch!7396 (reg!7725 r!27340))) b!2499235))

(assert (= (and b!2499069 (is-Concat!12092 (reg!7725 r!27340))) b!2499236))

(assert (= (and b!2499069 (is-Star!7396 (reg!7725 r!27340))) b!2499237))

(assert (= (and b!2499069 (is-Union!7396 (reg!7725 r!27340))) b!2499238))

(declare-fun b!2499240 () Bool)

(declare-fun e!1585427 () Bool)

(declare-fun tp!800238 () Bool)

(declare-fun tp!800239 () Bool)

(assert (=> b!2499240 (= e!1585427 (and tp!800238 tp!800239))))

(assert (=> b!2499070 (= tp!800188 e!1585427)))

(declare-fun b!2499242 () Bool)

(declare-fun tp!800237 () Bool)

(declare-fun tp!800235 () Bool)

(assert (=> b!2499242 (= e!1585427 (and tp!800237 tp!800235))))

(declare-fun b!2499239 () Bool)

(assert (=> b!2499239 (= e!1585427 tp_is_empty!12647)))

(declare-fun b!2499241 () Bool)

(declare-fun tp!800236 () Bool)

(assert (=> b!2499241 (= e!1585427 tp!800236)))

(assert (= (and b!2499070 (is-ElementMatch!7396 (regOne!15304 r!27340))) b!2499239))

(assert (= (and b!2499070 (is-Concat!12092 (regOne!15304 r!27340))) b!2499240))

(assert (= (and b!2499070 (is-Star!7396 (regOne!15304 r!27340))) b!2499241))

(assert (= (and b!2499070 (is-Union!7396 (regOne!15304 r!27340))) b!2499242))

(declare-fun b!2499244 () Bool)

(declare-fun e!1585428 () Bool)

(declare-fun tp!800243 () Bool)

(declare-fun tp!800244 () Bool)

(assert (=> b!2499244 (= e!1585428 (and tp!800243 tp!800244))))

(assert (=> b!2499070 (= tp!800186 e!1585428)))

(declare-fun b!2499246 () Bool)

(declare-fun tp!800242 () Bool)

(declare-fun tp!800240 () Bool)

(assert (=> b!2499246 (= e!1585428 (and tp!800242 tp!800240))))

(declare-fun b!2499243 () Bool)

(assert (=> b!2499243 (= e!1585428 tp_is_empty!12647)))

(declare-fun b!2499245 () Bool)

(declare-fun tp!800241 () Bool)

(assert (=> b!2499245 (= e!1585428 tp!800241)))

(assert (= (and b!2499070 (is-ElementMatch!7396 (regTwo!15304 r!27340))) b!2499243))

(assert (= (and b!2499070 (is-Concat!12092 (regTwo!15304 r!27340))) b!2499244))

(assert (= (and b!2499070 (is-Star!7396 (regTwo!15304 r!27340))) b!2499245))

(assert (= (and b!2499070 (is-Union!7396 (regTwo!15304 r!27340))) b!2499246))

(push 1)

(assert (not d!715224))

(assert (not b!2499240))

(assert (not b!2499148))

(assert (not bm!154201))

(assert (not b!2499238))

(assert (not bm!154199))

(assert (not bm!154187))

(assert (not d!715230))

(assert (not bm!154206))

(assert (not b!2499244))

(assert (not b!2499236))

(assert (not bm!154185))

(assert (not b!2499233))

(assert (not d!715236))

(assert (not bm!154204))

(assert (not b!2499186))

(assert (not d!715220))

(assert tp_is_empty!12647)

(assert (not b!2499241))

(assert (not bm!154198))

(assert (not b!2499245))

(assert (not b!2499203))

(assert (not b!2499216))

(assert (not b!2499229))

(assert (not d!715222))

(assert (not b!2499228))

(assert (not b!2499242))

(assert (not b!2499237))

(assert (not b!2499234))

(assert (not bm!154202))

(assert (not b!2499230))

(assert (not b!2499195))

(assert (not b!2499107))

(assert (not b!2499246))

(assert (not b!2499232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

