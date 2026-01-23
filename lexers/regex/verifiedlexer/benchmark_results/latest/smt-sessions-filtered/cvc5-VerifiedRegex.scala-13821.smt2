; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735506 () Bool)

(assert start!735506)

(declare-fun b!7640054 () Bool)

(declare-fun res!3060170 () Bool)

(declare-fun e!4541392 () Bool)

(assert (=> b!7640054 (=> (not res!3060170) (not e!4541392))))

(declare-datatypes ((C!41198 0))(
  ( (C!41199 (val!31039 Int)) )
))
(declare-datatypes ((Regex!20436 0))(
  ( (ElementMatch!20436 (c!1407297 C!41198)) (Concat!29281 (regOne!41384 Regex!20436) (regTwo!41384 Regex!20436)) (EmptyExpr!20436) (Star!20436 (reg!20765 Regex!20436)) (EmptyLang!20436) (Union!20436 (regOne!41385 Regex!20436) (regTwo!41385 Regex!20436)) )
))
(declare-fun r!14126 () Regex!20436)

(assert (=> b!7640054 (= res!3060170 (and (not (is-EmptyExpr!20436 r!14126)) (not (is-EmptyLang!20436 r!14126)) (is-ElementMatch!20436 r!14126)))))

(declare-fun b!7640055 () Bool)

(declare-fun e!4541394 () Bool)

(declare-fun tp_is_empty!51227 () Bool)

(assert (=> b!7640055 (= e!4541394 tp_is_empty!51227)))

(declare-fun b!7640056 () Bool)

(declare-fun tp!2230098 () Bool)

(declare-fun tp!2230094 () Bool)

(assert (=> b!7640056 (= e!4541394 (and tp!2230098 tp!2230094))))

(declare-fun b!7640058 () Bool)

(declare-fun tp!2230095 () Bool)

(declare-fun tp!2230099 () Bool)

(assert (=> b!7640058 (= e!4541394 (and tp!2230095 tp!2230099))))

(declare-fun b!7640059 () Bool)

(declare-datatypes ((List!73287 0))(
  ( (Nil!73163) (Cons!73163 (h!79611 C!41198) (t!388022 List!73287)) )
))
(declare-fun s!9605 () List!73287)

(declare-fun matchR!9937 (Regex!20436 List!73287) Bool)

(declare-fun matchRSpec!4567 (Regex!20436 List!73287) Bool)

(assert (=> b!7640059 (= e!4541392 (not (= (matchR!9937 r!14126 s!9605) (matchRSpec!4567 r!14126 s!9605))))))

(declare-fun b!7640060 () Bool)

(declare-fun e!4541393 () Bool)

(declare-fun tp!2230097 () Bool)

(assert (=> b!7640060 (= e!4541393 (and tp_is_empty!51227 tp!2230097))))

(declare-fun b!7640057 () Bool)

(declare-fun tp!2230096 () Bool)

(assert (=> b!7640057 (= e!4541394 tp!2230096)))

(declare-fun res!3060169 () Bool)

(assert (=> start!735506 (=> (not res!3060169) (not e!4541392))))

(declare-fun validRegex!10854 (Regex!20436) Bool)

(assert (=> start!735506 (= res!3060169 (validRegex!10854 r!14126))))

(assert (=> start!735506 e!4541392))

(assert (=> start!735506 e!4541394))

(assert (=> start!735506 e!4541393))

(assert (= (and start!735506 res!3060169) b!7640054))

(assert (= (and b!7640054 res!3060170) b!7640059))

(assert (= (and start!735506 (is-ElementMatch!20436 r!14126)) b!7640055))

(assert (= (and start!735506 (is-Concat!29281 r!14126)) b!7640056))

(assert (= (and start!735506 (is-Star!20436 r!14126)) b!7640057))

(assert (= (and start!735506 (is-Union!20436 r!14126)) b!7640058))

(assert (= (and start!735506 (is-Cons!73163 s!9605)) b!7640060))

(declare-fun m!8162722 () Bool)

(assert (=> b!7640059 m!8162722))

(declare-fun m!8162724 () Bool)

(assert (=> b!7640059 m!8162724))

(declare-fun m!8162726 () Bool)

(assert (=> start!735506 m!8162726))

(push 1)

(assert (not b!7640056))

(assert tp_is_empty!51227)

(assert (not b!7640060))

(assert (not b!7640059))

(assert (not b!7640057))

(assert (not b!7640058))

(assert (not start!735506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7640137 () Bool)

(declare-fun e!4541441 () Bool)

(declare-fun lt!2660495 () Bool)

(assert (=> b!7640137 (= e!4541441 (not lt!2660495))))

(declare-fun b!7640138 () Bool)

(declare-fun e!4541439 () Bool)

(assert (=> b!7640138 (= e!4541439 e!4541441)))

(declare-fun c!1407312 () Bool)

(assert (=> b!7640138 (= c!1407312 (is-EmptyLang!20436 r!14126))))

(declare-fun b!7640139 () Bool)

(declare-fun call!701234 () Bool)

(assert (=> b!7640139 (= e!4541439 (= lt!2660495 call!701234))))

(declare-fun b!7640140 () Bool)

(declare-fun e!4541442 () Bool)

(declare-fun derivativeStep!5914 (Regex!20436 C!41198) Regex!20436)

(declare-fun head!15714 (List!73287) C!41198)

(declare-fun tail!15254 (List!73287) List!73287)

(assert (=> b!7640140 (= e!4541442 (matchR!9937 (derivativeStep!5914 r!14126 (head!15714 s!9605)) (tail!15254 s!9605)))))

(declare-fun b!7640141 () Bool)

(declare-fun res!3060212 () Bool)

(declare-fun e!4541440 () Bool)

(assert (=> b!7640141 (=> (not res!3060212) (not e!4541440))))

(declare-fun isEmpty!41794 (List!73287) Bool)

(assert (=> b!7640141 (= res!3060212 (isEmpty!41794 (tail!15254 s!9605)))))

(declare-fun bm!701229 () Bool)

(assert (=> bm!701229 (= call!701234 (isEmpty!41794 s!9605))))

(declare-fun b!7640142 () Bool)

(declare-fun res!3060215 () Bool)

(declare-fun e!4541443 () Bool)

(assert (=> b!7640142 (=> res!3060215 e!4541443)))

(assert (=> b!7640142 (= res!3060215 e!4541440)))

(declare-fun res!3060214 () Bool)

(assert (=> b!7640142 (=> (not res!3060214) (not e!4541440))))

(assert (=> b!7640142 (= res!3060214 lt!2660495)))

(declare-fun d!2325094 () Bool)

(assert (=> d!2325094 e!4541439))

(declare-fun c!1407313 () Bool)

(assert (=> d!2325094 (= c!1407313 (is-EmptyExpr!20436 r!14126))))

(assert (=> d!2325094 (= lt!2660495 e!4541442)))

(declare-fun c!1407311 () Bool)

(assert (=> d!2325094 (= c!1407311 (isEmpty!41794 s!9605))))

(assert (=> d!2325094 (validRegex!10854 r!14126)))

(assert (=> d!2325094 (= (matchR!9937 r!14126 s!9605) lt!2660495)))

(declare-fun b!7640143 () Bool)

(declare-fun e!4541445 () Bool)

(declare-fun e!4541444 () Bool)

(assert (=> b!7640143 (= e!4541445 e!4541444)))

(declare-fun res!3060210 () Bool)

(assert (=> b!7640143 (=> res!3060210 e!4541444)))

(assert (=> b!7640143 (= res!3060210 call!701234)))

(declare-fun b!7640144 () Bool)

(declare-fun res!3060209 () Bool)

(assert (=> b!7640144 (=> (not res!3060209) (not e!4541440))))

(assert (=> b!7640144 (= res!3060209 (not call!701234))))

(declare-fun b!7640145 () Bool)

(assert (=> b!7640145 (= e!4541443 e!4541445)))

(declare-fun res!3060208 () Bool)

(assert (=> b!7640145 (=> (not res!3060208) (not e!4541445))))

(assert (=> b!7640145 (= res!3060208 (not lt!2660495))))

(declare-fun b!7640146 () Bool)

(assert (=> b!7640146 (= e!4541444 (not (= (head!15714 s!9605) (c!1407297 r!14126))))))

(declare-fun b!7640147 () Bool)

(declare-fun res!3060213 () Bool)

(assert (=> b!7640147 (=> res!3060213 e!4541444)))

(assert (=> b!7640147 (= res!3060213 (not (isEmpty!41794 (tail!15254 s!9605))))))

(declare-fun b!7640148 () Bool)

(declare-fun nullable!8943 (Regex!20436) Bool)

(assert (=> b!7640148 (= e!4541442 (nullable!8943 r!14126))))

(declare-fun b!7640149 () Bool)

(declare-fun res!3060211 () Bool)

(assert (=> b!7640149 (=> res!3060211 e!4541443)))

(assert (=> b!7640149 (= res!3060211 (not (is-ElementMatch!20436 r!14126)))))

(assert (=> b!7640149 (= e!4541441 e!4541443)))

(declare-fun b!7640150 () Bool)

(assert (=> b!7640150 (= e!4541440 (= (head!15714 s!9605) (c!1407297 r!14126)))))

(assert (= (and d!2325094 c!1407311) b!7640148))

(assert (= (and d!2325094 (not c!1407311)) b!7640140))

(assert (= (and d!2325094 c!1407313) b!7640139))

(assert (= (and d!2325094 (not c!1407313)) b!7640138))

(assert (= (and b!7640138 c!1407312) b!7640137))

(assert (= (and b!7640138 (not c!1407312)) b!7640149))

(assert (= (and b!7640149 (not res!3060211)) b!7640142))

(assert (= (and b!7640142 res!3060214) b!7640144))

(assert (= (and b!7640144 res!3060209) b!7640141))

(assert (= (and b!7640141 res!3060212) b!7640150))

(assert (= (and b!7640142 (not res!3060215)) b!7640145))

(assert (= (and b!7640145 res!3060208) b!7640143))

(assert (= (and b!7640143 (not res!3060210)) b!7640147))

(assert (= (and b!7640147 (not res!3060213)) b!7640146))

(assert (= (or b!7640139 b!7640143 b!7640144) bm!701229))

(declare-fun m!8162740 () Bool)

(assert (=> b!7640147 m!8162740))

(assert (=> b!7640147 m!8162740))

(declare-fun m!8162742 () Bool)

(assert (=> b!7640147 m!8162742))

(declare-fun m!8162744 () Bool)

(assert (=> bm!701229 m!8162744))

(assert (=> d!2325094 m!8162744))

(assert (=> d!2325094 m!8162726))

(declare-fun m!8162746 () Bool)

(assert (=> b!7640150 m!8162746))

(assert (=> b!7640146 m!8162746))

(declare-fun m!8162748 () Bool)

(assert (=> b!7640148 m!8162748))

(assert (=> b!7640140 m!8162746))

(assert (=> b!7640140 m!8162746))

(declare-fun m!8162750 () Bool)

(assert (=> b!7640140 m!8162750))

(assert (=> b!7640140 m!8162740))

(assert (=> b!7640140 m!8162750))

(assert (=> b!7640140 m!8162740))

(declare-fun m!8162752 () Bool)

(assert (=> b!7640140 m!8162752))

(assert (=> b!7640141 m!8162740))

(assert (=> b!7640141 m!8162740))

(assert (=> b!7640141 m!8162742))

(assert (=> b!7640059 d!2325094))

(declare-fun b!7640257 () Bool)

(assert (=> b!7640257 true))

(assert (=> b!7640257 true))

(declare-fun bs!1944689 () Bool)

(declare-fun b!7640247 () Bool)

(assert (= bs!1944689 (and b!7640247 b!7640257)))

(declare-fun lambda!469633 () Int)

(declare-fun lambda!469632 () Int)

(assert (=> bs!1944689 (not (= lambda!469633 lambda!469632))))

(assert (=> b!7640247 true))

(assert (=> b!7640247 true))

(declare-fun e!4541504 () Bool)

(declare-fun call!701243 () Bool)

(assert (=> b!7640247 (= e!4541504 call!701243)))

(declare-fun b!7640248 () Bool)

(declare-fun e!4541502 () Bool)

(assert (=> b!7640248 (= e!4541502 (= s!9605 (Cons!73163 (c!1407297 r!14126) Nil!73163)))))

(declare-fun b!7640249 () Bool)

(declare-fun c!1407341 () Bool)

(assert (=> b!7640249 (= c!1407341 (is-ElementMatch!20436 r!14126))))

(declare-fun e!4541503 () Bool)

(assert (=> b!7640249 (= e!4541503 e!4541502)))

(declare-fun b!7640250 () Bool)

(declare-fun res!3060262 () Bool)

(declare-fun e!4541500 () Bool)

(assert (=> b!7640250 (=> res!3060262 e!4541500)))

(declare-fun call!701242 () Bool)

(assert (=> b!7640250 (= res!3060262 call!701242)))

(assert (=> b!7640250 (= e!4541504 e!4541500)))

(declare-fun b!7640251 () Bool)

(declare-fun e!4541501 () Bool)

(declare-fun e!4541499 () Bool)

(assert (=> b!7640251 (= e!4541501 e!4541499)))

(declare-fun res!3060264 () Bool)

(assert (=> b!7640251 (= res!3060264 (matchRSpec!4567 (regOne!41385 r!14126) s!9605))))

(assert (=> b!7640251 (=> res!3060264 e!4541499)))

(declare-fun bm!701237 () Bool)

(assert (=> bm!701237 (= call!701242 (isEmpty!41794 s!9605))))

(declare-fun b!7640252 () Bool)

(assert (=> b!7640252 (= e!4541499 (matchRSpec!4567 (regTwo!41385 r!14126) s!9605))))

(declare-fun b!7640253 () Bool)

(assert (=> b!7640253 (= e!4541501 e!4541504)))

(declare-fun c!1407340 () Bool)

(assert (=> b!7640253 (= c!1407340 (is-Star!20436 r!14126))))

(declare-fun b!7640254 () Bool)

(declare-fun c!1407342 () Bool)

(assert (=> b!7640254 (= c!1407342 (is-Union!20436 r!14126))))

(assert (=> b!7640254 (= e!4541502 e!4541501)))

(declare-fun d!2325100 () Bool)

(declare-fun c!1407339 () Bool)

(assert (=> d!2325100 (= c!1407339 (is-EmptyExpr!20436 r!14126))))

(declare-fun e!4541505 () Bool)

(assert (=> d!2325100 (= (matchRSpec!4567 r!14126 s!9605) e!4541505)))

(declare-fun bm!701238 () Bool)

(declare-fun Exists!4588 (Int) Bool)

(assert (=> bm!701238 (= call!701243 (Exists!4588 (ite c!1407340 lambda!469632 lambda!469633)))))

(declare-fun b!7640255 () Bool)

(assert (=> b!7640255 (= e!4541505 call!701242)))

(declare-fun b!7640256 () Bool)

(assert (=> b!7640256 (= e!4541505 e!4541503)))

(declare-fun res!3060263 () Bool)

(assert (=> b!7640256 (= res!3060263 (not (is-EmptyLang!20436 r!14126)))))

(assert (=> b!7640256 (=> (not res!3060263) (not e!4541503))))

(assert (=> b!7640257 (= e!4541500 call!701243)))

(assert (= (and d!2325100 c!1407339) b!7640255))

(assert (= (and d!2325100 (not c!1407339)) b!7640256))

(assert (= (and b!7640256 res!3060263) b!7640249))

(assert (= (and b!7640249 c!1407341) b!7640248))

(assert (= (and b!7640249 (not c!1407341)) b!7640254))

(assert (= (and b!7640254 c!1407342) b!7640251))

(assert (= (and b!7640254 (not c!1407342)) b!7640253))

(assert (= (and b!7640251 (not res!3060264)) b!7640252))

(assert (= (and b!7640253 c!1407340) b!7640250))

(assert (= (and b!7640253 (not c!1407340)) b!7640247))

(assert (= (and b!7640250 (not res!3060262)) b!7640257))

(assert (= (or b!7640257 b!7640247) bm!701238))

(assert (= (or b!7640255 b!7640250) bm!701237))

(declare-fun m!8162768 () Bool)

(assert (=> b!7640251 m!8162768))

(assert (=> bm!701237 m!8162744))

(declare-fun m!8162770 () Bool)

(assert (=> b!7640252 m!8162770))

(declare-fun m!8162772 () Bool)

(assert (=> bm!701238 m!8162772))

(assert (=> b!7640059 d!2325100))

(declare-fun b!7640280 () Bool)

(declare-fun res!3060279 () Bool)

(declare-fun e!4541525 () Bool)

(assert (=> b!7640280 (=> (not res!3060279) (not e!4541525))))

(declare-fun call!701251 () Bool)

(assert (=> b!7640280 (= res!3060279 call!701251)))

(declare-fun e!4541521 () Bool)

(assert (=> b!7640280 (= e!4541521 e!4541525)))

(declare-fun d!2325104 () Bool)

(declare-fun res!3060278 () Bool)

(declare-fun e!4541524 () Bool)

(assert (=> d!2325104 (=> res!3060278 e!4541524)))

(assert (=> d!2325104 (= res!3060278 (is-ElementMatch!20436 r!14126))))

(assert (=> d!2325104 (= (validRegex!10854 r!14126) e!4541524)))

(declare-fun b!7640281 () Bool)

(declare-fun e!4541520 () Bool)

(declare-fun e!4541526 () Bool)

(assert (=> b!7640281 (= e!4541520 e!4541526)))

(declare-fun res!3060277 () Bool)

(assert (=> b!7640281 (= res!3060277 (not (nullable!8943 (reg!20765 r!14126))))))

(assert (=> b!7640281 (=> (not res!3060277) (not e!4541526))))

(declare-fun b!7640282 () Bool)

(assert (=> b!7640282 (= e!4541520 e!4541521)))

(declare-fun c!1407347 () Bool)

(assert (=> b!7640282 (= c!1407347 (is-Union!20436 r!14126))))

(declare-fun b!7640283 () Bool)

(declare-fun call!701250 () Bool)

(assert (=> b!7640283 (= e!4541526 call!701250)))

(declare-fun bm!701245 () Bool)

(declare-fun c!1407348 () Bool)

(assert (=> bm!701245 (= call!701250 (validRegex!10854 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))

(declare-fun b!7640284 () Bool)

(assert (=> b!7640284 (= e!4541524 e!4541520)))

(assert (=> b!7640284 (= c!1407348 (is-Star!20436 r!14126))))

(declare-fun b!7640285 () Bool)

(declare-fun e!4541523 () Bool)

(declare-fun call!701252 () Bool)

(assert (=> b!7640285 (= e!4541523 call!701252)))

(declare-fun b!7640286 () Bool)

(declare-fun e!4541522 () Bool)

(assert (=> b!7640286 (= e!4541522 e!4541523)))

(declare-fun res!3060276 () Bool)

(assert (=> b!7640286 (=> (not res!3060276) (not e!4541523))))

(assert (=> b!7640286 (= res!3060276 call!701251)))

(declare-fun b!7640287 () Bool)

(assert (=> b!7640287 (= e!4541525 call!701252)))

(declare-fun bm!701246 () Bool)

(assert (=> bm!701246 (= call!701252 (validRegex!10854 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))

(declare-fun bm!701247 () Bool)

(assert (=> bm!701247 (= call!701251 call!701250)))

(declare-fun b!7640288 () Bool)

(declare-fun res!3060275 () Bool)

(assert (=> b!7640288 (=> res!3060275 e!4541522)))

(assert (=> b!7640288 (= res!3060275 (not (is-Concat!29281 r!14126)))))

(assert (=> b!7640288 (= e!4541521 e!4541522)))

(assert (= (and d!2325104 (not res!3060278)) b!7640284))

(assert (= (and b!7640284 c!1407348) b!7640281))

(assert (= (and b!7640284 (not c!1407348)) b!7640282))

(assert (= (and b!7640281 res!3060277) b!7640283))

(assert (= (and b!7640282 c!1407347) b!7640280))

(assert (= (and b!7640282 (not c!1407347)) b!7640288))

(assert (= (and b!7640280 res!3060279) b!7640287))

(assert (= (and b!7640288 (not res!3060275)) b!7640286))

(assert (= (and b!7640286 res!3060276) b!7640285))

(assert (= (or b!7640280 b!7640286) bm!701247))

(assert (= (or b!7640287 b!7640285) bm!701246))

(assert (= (or b!7640283 bm!701247) bm!701245))

(declare-fun m!8162774 () Bool)

(assert (=> b!7640281 m!8162774))

(declare-fun m!8162776 () Bool)

(assert (=> bm!701245 m!8162776))

(declare-fun m!8162778 () Bool)

(assert (=> bm!701246 m!8162778))

(assert (=> start!735506 d!2325104))

(declare-fun b!7640293 () Bool)

(declare-fun e!4541529 () Bool)

(declare-fun tp!2230120 () Bool)

(assert (=> b!7640293 (= e!4541529 (and tp_is_empty!51227 tp!2230120))))

(assert (=> b!7640060 (= tp!2230097 e!4541529)))

(assert (= (and b!7640060 (is-Cons!73163 (t!388022 s!9605))) b!7640293))

(declare-fun b!7640307 () Bool)

(declare-fun e!4541532 () Bool)

(declare-fun tp!2230131 () Bool)

(declare-fun tp!2230133 () Bool)

(assert (=> b!7640307 (= e!4541532 (and tp!2230131 tp!2230133))))

(declare-fun b!7640304 () Bool)

(assert (=> b!7640304 (= e!4541532 tp_is_empty!51227)))

(declare-fun b!7640305 () Bool)

(declare-fun tp!2230134 () Bool)

(declare-fun tp!2230132 () Bool)

(assert (=> b!7640305 (= e!4541532 (and tp!2230134 tp!2230132))))

(declare-fun b!7640306 () Bool)

(declare-fun tp!2230135 () Bool)

(assert (=> b!7640306 (= e!4541532 tp!2230135)))

(assert (=> b!7640058 (= tp!2230095 e!4541532)))

(assert (= (and b!7640058 (is-ElementMatch!20436 (regOne!41385 r!14126))) b!7640304))

(assert (= (and b!7640058 (is-Concat!29281 (regOne!41385 r!14126))) b!7640305))

(assert (= (and b!7640058 (is-Star!20436 (regOne!41385 r!14126))) b!7640306))

(assert (= (and b!7640058 (is-Union!20436 (regOne!41385 r!14126))) b!7640307))

(declare-fun b!7640311 () Bool)

(declare-fun e!4541533 () Bool)

(declare-fun tp!2230136 () Bool)

(declare-fun tp!2230138 () Bool)

(assert (=> b!7640311 (= e!4541533 (and tp!2230136 tp!2230138))))

(declare-fun b!7640308 () Bool)

(assert (=> b!7640308 (= e!4541533 tp_is_empty!51227)))

(declare-fun b!7640309 () Bool)

(declare-fun tp!2230139 () Bool)

(declare-fun tp!2230137 () Bool)

(assert (=> b!7640309 (= e!4541533 (and tp!2230139 tp!2230137))))

(declare-fun b!7640310 () Bool)

(declare-fun tp!2230140 () Bool)

(assert (=> b!7640310 (= e!4541533 tp!2230140)))

(assert (=> b!7640058 (= tp!2230099 e!4541533)))

(assert (= (and b!7640058 (is-ElementMatch!20436 (regTwo!41385 r!14126))) b!7640308))

(assert (= (and b!7640058 (is-Concat!29281 (regTwo!41385 r!14126))) b!7640309))

(assert (= (and b!7640058 (is-Star!20436 (regTwo!41385 r!14126))) b!7640310))

(assert (= (and b!7640058 (is-Union!20436 (regTwo!41385 r!14126))) b!7640311))

(declare-fun b!7640315 () Bool)

(declare-fun e!4541534 () Bool)

(declare-fun tp!2230141 () Bool)

(declare-fun tp!2230143 () Bool)

(assert (=> b!7640315 (= e!4541534 (and tp!2230141 tp!2230143))))

(declare-fun b!7640312 () Bool)

(assert (=> b!7640312 (= e!4541534 tp_is_empty!51227)))

(declare-fun b!7640313 () Bool)

(declare-fun tp!2230144 () Bool)

(declare-fun tp!2230142 () Bool)

(assert (=> b!7640313 (= e!4541534 (and tp!2230144 tp!2230142))))

(declare-fun b!7640314 () Bool)

(declare-fun tp!2230145 () Bool)

(assert (=> b!7640314 (= e!4541534 tp!2230145)))

(assert (=> b!7640057 (= tp!2230096 e!4541534)))

(assert (= (and b!7640057 (is-ElementMatch!20436 (reg!20765 r!14126))) b!7640312))

(assert (= (and b!7640057 (is-Concat!29281 (reg!20765 r!14126))) b!7640313))

(assert (= (and b!7640057 (is-Star!20436 (reg!20765 r!14126))) b!7640314))

(assert (= (and b!7640057 (is-Union!20436 (reg!20765 r!14126))) b!7640315))

(declare-fun b!7640319 () Bool)

(declare-fun e!4541535 () Bool)

(declare-fun tp!2230146 () Bool)

(declare-fun tp!2230148 () Bool)

(assert (=> b!7640319 (= e!4541535 (and tp!2230146 tp!2230148))))

(declare-fun b!7640316 () Bool)

(assert (=> b!7640316 (= e!4541535 tp_is_empty!51227)))

(declare-fun b!7640317 () Bool)

(declare-fun tp!2230149 () Bool)

(declare-fun tp!2230147 () Bool)

(assert (=> b!7640317 (= e!4541535 (and tp!2230149 tp!2230147))))

(declare-fun b!7640318 () Bool)

(declare-fun tp!2230150 () Bool)

(assert (=> b!7640318 (= e!4541535 tp!2230150)))

(assert (=> b!7640056 (= tp!2230098 e!4541535)))

(assert (= (and b!7640056 (is-ElementMatch!20436 (regOne!41384 r!14126))) b!7640316))

(assert (= (and b!7640056 (is-Concat!29281 (regOne!41384 r!14126))) b!7640317))

(assert (= (and b!7640056 (is-Star!20436 (regOne!41384 r!14126))) b!7640318))

(assert (= (and b!7640056 (is-Union!20436 (regOne!41384 r!14126))) b!7640319))

(declare-fun b!7640323 () Bool)

(declare-fun e!4541536 () Bool)

(declare-fun tp!2230151 () Bool)

(declare-fun tp!2230153 () Bool)

(assert (=> b!7640323 (= e!4541536 (and tp!2230151 tp!2230153))))

(declare-fun b!7640320 () Bool)

(assert (=> b!7640320 (= e!4541536 tp_is_empty!51227)))

(declare-fun b!7640321 () Bool)

(declare-fun tp!2230154 () Bool)

(declare-fun tp!2230152 () Bool)

(assert (=> b!7640321 (= e!4541536 (and tp!2230154 tp!2230152))))

(declare-fun b!7640322 () Bool)

(declare-fun tp!2230155 () Bool)

(assert (=> b!7640322 (= e!4541536 tp!2230155)))

(assert (=> b!7640056 (= tp!2230094 e!4541536)))

(assert (= (and b!7640056 (is-ElementMatch!20436 (regTwo!41384 r!14126))) b!7640320))

(assert (= (and b!7640056 (is-Concat!29281 (regTwo!41384 r!14126))) b!7640321))

(assert (= (and b!7640056 (is-Star!20436 (regTwo!41384 r!14126))) b!7640322))

(assert (= (and b!7640056 (is-Union!20436 (regTwo!41384 r!14126))) b!7640323))

(push 1)

(assert (not b!7640281))

(assert (not b!7640293))

(assert (not bm!701245))

(assert (not b!7640305))

(assert (not b!7640318))

(assert (not b!7640146))

(assert (not b!7640317))

(assert (not bm!701246))

(assert (not b!7640309))

(assert (not bm!701238))

(assert (not b!7640319))

(assert (not b!7640321))

(assert (not bm!701237))

(assert (not b!7640141))

(assert (not b!7640322))

(assert (not bm!701229))

(assert (not b!7640323))

(assert (not b!7640306))

(assert (not b!7640140))

(assert (not b!7640314))

(assert tp_is_empty!51227)

(assert (not b!7640148))

(assert (not b!7640307))

(assert (not b!7640311))

(assert (not b!7640150))

(assert (not b!7640147))

(assert (not b!7640310))

(assert (not b!7640315))

(assert (not b!7640251))

(assert (not b!7640313))

(assert (not b!7640252))

(assert (not d!2325094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1944691 () Bool)

(declare-fun b!7640394 () Bool)

(assert (= bs!1944691 (and b!7640394 b!7640257)))

(declare-fun lambda!469640 () Int)

(assert (=> bs!1944691 (= (and (= (reg!20765 (regOne!41385 r!14126)) (reg!20765 r!14126)) (= (regOne!41385 r!14126) r!14126)) (= lambda!469640 lambda!469632))))

(declare-fun bs!1944692 () Bool)

(assert (= bs!1944692 (and b!7640394 b!7640247)))

(assert (=> bs!1944692 (not (= lambda!469640 lambda!469633))))

(assert (=> b!7640394 true))

(assert (=> b!7640394 true))

(declare-fun bs!1944693 () Bool)

(declare-fun b!7640384 () Bool)

(assert (= bs!1944693 (and b!7640384 b!7640257)))

(declare-fun lambda!469641 () Int)

(assert (=> bs!1944693 (not (= lambda!469641 lambda!469632))))

(declare-fun bs!1944694 () Bool)

(assert (= bs!1944694 (and b!7640384 b!7640247)))

(assert (=> bs!1944694 (= (and (= (regOne!41384 (regOne!41385 r!14126)) (regOne!41384 r!14126)) (= (regTwo!41384 (regOne!41385 r!14126)) (regTwo!41384 r!14126))) (= lambda!469641 lambda!469633))))

(declare-fun bs!1944695 () Bool)

(assert (= bs!1944695 (and b!7640384 b!7640394)))

(assert (=> bs!1944695 (not (= lambda!469641 lambda!469640))))

(assert (=> b!7640384 true))

(assert (=> b!7640384 true))

(declare-fun e!4541563 () Bool)

(declare-fun call!701260 () Bool)

(assert (=> b!7640384 (= e!4541563 call!701260)))

(declare-fun b!7640385 () Bool)

(declare-fun e!4541561 () Bool)

(assert (=> b!7640385 (= e!4541561 (= s!9605 (Cons!73163 (c!1407297 (regOne!41385 r!14126)) Nil!73163)))))

(declare-fun b!7640386 () Bool)

(declare-fun c!1407355 () Bool)

(assert (=> b!7640386 (= c!1407355 (is-ElementMatch!20436 (regOne!41385 r!14126)))))

(declare-fun e!4541562 () Bool)

(assert (=> b!7640386 (= e!4541562 e!4541561)))

(declare-fun b!7640387 () Bool)

(declare-fun res!3060293 () Bool)

(declare-fun e!4541559 () Bool)

(assert (=> b!7640387 (=> res!3060293 e!4541559)))

(declare-fun call!701259 () Bool)

(assert (=> b!7640387 (= res!3060293 call!701259)))

(assert (=> b!7640387 (= e!4541563 e!4541559)))

(declare-fun b!7640388 () Bool)

(declare-fun e!4541560 () Bool)

(declare-fun e!4541558 () Bool)

(assert (=> b!7640388 (= e!4541560 e!4541558)))

(declare-fun res!3060295 () Bool)

(assert (=> b!7640388 (= res!3060295 (matchRSpec!4567 (regOne!41385 (regOne!41385 r!14126)) s!9605))))

(assert (=> b!7640388 (=> res!3060295 e!4541558)))

(declare-fun bm!701254 () Bool)

(assert (=> bm!701254 (= call!701259 (isEmpty!41794 s!9605))))

(declare-fun b!7640389 () Bool)

(assert (=> b!7640389 (= e!4541558 (matchRSpec!4567 (regTwo!41385 (regOne!41385 r!14126)) s!9605))))

(declare-fun b!7640390 () Bool)

(assert (=> b!7640390 (= e!4541560 e!4541563)))

(declare-fun c!1407354 () Bool)

(assert (=> b!7640390 (= c!1407354 (is-Star!20436 (regOne!41385 r!14126)))))

(declare-fun b!7640391 () Bool)

(declare-fun c!1407356 () Bool)

(assert (=> b!7640391 (= c!1407356 (is-Union!20436 (regOne!41385 r!14126)))))

(assert (=> b!7640391 (= e!4541561 e!4541560)))

(declare-fun d!2325106 () Bool)

(declare-fun c!1407353 () Bool)

(assert (=> d!2325106 (= c!1407353 (is-EmptyExpr!20436 (regOne!41385 r!14126)))))

(declare-fun e!4541564 () Bool)

(assert (=> d!2325106 (= (matchRSpec!4567 (regOne!41385 r!14126) s!9605) e!4541564)))

(declare-fun bm!701255 () Bool)

(assert (=> bm!701255 (= call!701260 (Exists!4588 (ite c!1407354 lambda!469640 lambda!469641)))))

(declare-fun b!7640392 () Bool)

(assert (=> b!7640392 (= e!4541564 call!701259)))

(declare-fun b!7640393 () Bool)

(assert (=> b!7640393 (= e!4541564 e!4541562)))

(declare-fun res!3060294 () Bool)

(assert (=> b!7640393 (= res!3060294 (not (is-EmptyLang!20436 (regOne!41385 r!14126))))))

(assert (=> b!7640393 (=> (not res!3060294) (not e!4541562))))

(assert (=> b!7640394 (= e!4541559 call!701260)))

(assert (= (and d!2325106 c!1407353) b!7640392))

(assert (= (and d!2325106 (not c!1407353)) b!7640393))

(assert (= (and b!7640393 res!3060294) b!7640386))

(assert (= (and b!7640386 c!1407355) b!7640385))

(assert (= (and b!7640386 (not c!1407355)) b!7640391))

(assert (= (and b!7640391 c!1407356) b!7640388))

(assert (= (and b!7640391 (not c!1407356)) b!7640390))

(assert (= (and b!7640388 (not res!3060295)) b!7640389))

(assert (= (and b!7640390 c!1407354) b!7640387))

(assert (= (and b!7640390 (not c!1407354)) b!7640384))

(assert (= (and b!7640387 (not res!3060293)) b!7640394))

(assert (= (or b!7640394 b!7640384) bm!701255))

(assert (= (or b!7640392 b!7640387) bm!701254))

(declare-fun m!8162786 () Bool)

(assert (=> b!7640388 m!8162786))

(assert (=> bm!701254 m!8162744))

(declare-fun m!8162788 () Bool)

(assert (=> b!7640389 m!8162788))

(declare-fun m!8162790 () Bool)

(assert (=> bm!701255 m!8162790))

(assert (=> b!7640251 d!2325106))

(declare-fun d!2325108 () Bool)

(assert (=> d!2325108 (= (isEmpty!41794 s!9605) (is-Nil!73163 s!9605))))

(assert (=> bm!701229 d!2325108))

(declare-fun d!2325110 () Bool)

(assert (=> d!2325110 (= (isEmpty!41794 (tail!15254 s!9605)) (is-Nil!73163 (tail!15254 s!9605)))))

(assert (=> b!7640141 d!2325110))

(declare-fun d!2325112 () Bool)

(assert (=> d!2325112 (= (tail!15254 s!9605) (t!388022 s!9605))))

(assert (=> b!7640141 d!2325112))

(declare-fun d!2325114 () Bool)

(assert (=> d!2325114 (= (head!15714 s!9605) (h!79611 s!9605))))

(assert (=> b!7640150 d!2325114))

(declare-fun b!7640395 () Bool)

(declare-fun e!4541567 () Bool)

(declare-fun lt!2660499 () Bool)

(assert (=> b!7640395 (= e!4541567 (not lt!2660499))))

(declare-fun b!7640396 () Bool)

(declare-fun e!4541565 () Bool)

(assert (=> b!7640396 (= e!4541565 e!4541567)))

(declare-fun c!1407358 () Bool)

(assert (=> b!7640396 (= c!1407358 (is-EmptyLang!20436 (derivativeStep!5914 r!14126 (head!15714 s!9605))))))

(declare-fun b!7640397 () Bool)

(declare-fun call!701261 () Bool)

(assert (=> b!7640397 (= e!4541565 (= lt!2660499 call!701261))))

(declare-fun b!7640398 () Bool)

(declare-fun e!4541568 () Bool)

(assert (=> b!7640398 (= e!4541568 (matchR!9937 (derivativeStep!5914 (derivativeStep!5914 r!14126 (head!15714 s!9605)) (head!15714 (tail!15254 s!9605))) (tail!15254 (tail!15254 s!9605))))))

(declare-fun b!7640399 () Bool)

(declare-fun res!3060300 () Bool)

(declare-fun e!4541566 () Bool)

(assert (=> b!7640399 (=> (not res!3060300) (not e!4541566))))

(assert (=> b!7640399 (= res!3060300 (isEmpty!41794 (tail!15254 (tail!15254 s!9605))))))

(declare-fun bm!701256 () Bool)

(assert (=> bm!701256 (= call!701261 (isEmpty!41794 (tail!15254 s!9605)))))

(declare-fun b!7640400 () Bool)

(declare-fun res!3060303 () Bool)

(declare-fun e!4541569 () Bool)

(assert (=> b!7640400 (=> res!3060303 e!4541569)))

(assert (=> b!7640400 (= res!3060303 e!4541566)))

(declare-fun res!3060302 () Bool)

(assert (=> b!7640400 (=> (not res!3060302) (not e!4541566))))

(assert (=> b!7640400 (= res!3060302 lt!2660499)))

(declare-fun d!2325116 () Bool)

(assert (=> d!2325116 e!4541565))

(declare-fun c!1407359 () Bool)

(assert (=> d!2325116 (= c!1407359 (is-EmptyExpr!20436 (derivativeStep!5914 r!14126 (head!15714 s!9605))))))

(assert (=> d!2325116 (= lt!2660499 e!4541568)))

(declare-fun c!1407357 () Bool)

(assert (=> d!2325116 (= c!1407357 (isEmpty!41794 (tail!15254 s!9605)))))

(assert (=> d!2325116 (validRegex!10854 (derivativeStep!5914 r!14126 (head!15714 s!9605)))))

(assert (=> d!2325116 (= (matchR!9937 (derivativeStep!5914 r!14126 (head!15714 s!9605)) (tail!15254 s!9605)) lt!2660499)))

(declare-fun b!7640401 () Bool)

(declare-fun e!4541571 () Bool)

(declare-fun e!4541570 () Bool)

(assert (=> b!7640401 (= e!4541571 e!4541570)))

(declare-fun res!3060298 () Bool)

(assert (=> b!7640401 (=> res!3060298 e!4541570)))

(assert (=> b!7640401 (= res!3060298 call!701261)))

(declare-fun b!7640402 () Bool)

(declare-fun res!3060297 () Bool)

(assert (=> b!7640402 (=> (not res!3060297) (not e!4541566))))

(assert (=> b!7640402 (= res!3060297 (not call!701261))))

(declare-fun b!7640403 () Bool)

(assert (=> b!7640403 (= e!4541569 e!4541571)))

(declare-fun res!3060296 () Bool)

(assert (=> b!7640403 (=> (not res!3060296) (not e!4541571))))

(assert (=> b!7640403 (= res!3060296 (not lt!2660499))))

(declare-fun b!7640404 () Bool)

(assert (=> b!7640404 (= e!4541570 (not (= (head!15714 (tail!15254 s!9605)) (c!1407297 (derivativeStep!5914 r!14126 (head!15714 s!9605))))))))

(declare-fun b!7640405 () Bool)

(declare-fun res!3060301 () Bool)

(assert (=> b!7640405 (=> res!3060301 e!4541570)))

(assert (=> b!7640405 (= res!3060301 (not (isEmpty!41794 (tail!15254 (tail!15254 s!9605)))))))

(declare-fun b!7640406 () Bool)

(assert (=> b!7640406 (= e!4541568 (nullable!8943 (derivativeStep!5914 r!14126 (head!15714 s!9605))))))

(declare-fun b!7640407 () Bool)

(declare-fun res!3060299 () Bool)

(assert (=> b!7640407 (=> res!3060299 e!4541569)))

(assert (=> b!7640407 (= res!3060299 (not (is-ElementMatch!20436 (derivativeStep!5914 r!14126 (head!15714 s!9605)))))))

(assert (=> b!7640407 (= e!4541567 e!4541569)))

(declare-fun b!7640408 () Bool)

(assert (=> b!7640408 (= e!4541566 (= (head!15714 (tail!15254 s!9605)) (c!1407297 (derivativeStep!5914 r!14126 (head!15714 s!9605)))))))

(assert (= (and d!2325116 c!1407357) b!7640406))

(assert (= (and d!2325116 (not c!1407357)) b!7640398))

(assert (= (and d!2325116 c!1407359) b!7640397))

(assert (= (and d!2325116 (not c!1407359)) b!7640396))

(assert (= (and b!7640396 c!1407358) b!7640395))

(assert (= (and b!7640396 (not c!1407358)) b!7640407))

(assert (= (and b!7640407 (not res!3060299)) b!7640400))

(assert (= (and b!7640400 res!3060302) b!7640402))

(assert (= (and b!7640402 res!3060297) b!7640399))

(assert (= (and b!7640399 res!3060300) b!7640408))

(assert (= (and b!7640400 (not res!3060303)) b!7640403))

(assert (= (and b!7640403 res!3060296) b!7640401))

(assert (= (and b!7640401 (not res!3060298)) b!7640405))

(assert (= (and b!7640405 (not res!3060301)) b!7640404))

(assert (= (or b!7640397 b!7640401 b!7640402) bm!701256))

(assert (=> b!7640405 m!8162740))

(declare-fun m!8162792 () Bool)

(assert (=> b!7640405 m!8162792))

(assert (=> b!7640405 m!8162792))

(declare-fun m!8162794 () Bool)

(assert (=> b!7640405 m!8162794))

(assert (=> bm!701256 m!8162740))

(assert (=> bm!701256 m!8162742))

(assert (=> d!2325116 m!8162740))

(assert (=> d!2325116 m!8162742))

(assert (=> d!2325116 m!8162750))

(declare-fun m!8162796 () Bool)

(assert (=> d!2325116 m!8162796))

(assert (=> b!7640408 m!8162740))

(declare-fun m!8162798 () Bool)

(assert (=> b!7640408 m!8162798))

(assert (=> b!7640404 m!8162740))

(assert (=> b!7640404 m!8162798))

(assert (=> b!7640406 m!8162750))

(declare-fun m!8162800 () Bool)

(assert (=> b!7640406 m!8162800))

(assert (=> b!7640398 m!8162740))

(assert (=> b!7640398 m!8162798))

(assert (=> b!7640398 m!8162750))

(assert (=> b!7640398 m!8162798))

(declare-fun m!8162802 () Bool)

(assert (=> b!7640398 m!8162802))

(assert (=> b!7640398 m!8162740))

(assert (=> b!7640398 m!8162792))

(assert (=> b!7640398 m!8162802))

(assert (=> b!7640398 m!8162792))

(declare-fun m!8162804 () Bool)

(assert (=> b!7640398 m!8162804))

(assert (=> b!7640399 m!8162740))

(assert (=> b!7640399 m!8162792))

(assert (=> b!7640399 m!8162792))

(assert (=> b!7640399 m!8162794))

(assert (=> b!7640140 d!2325116))

(declare-fun b!7640429 () Bool)

(declare-fun e!4541583 () Regex!20436)

(declare-fun call!701270 () Regex!20436)

(assert (=> b!7640429 (= e!4541583 (Concat!29281 call!701270 r!14126))))

(declare-fun b!7640430 () Bool)

(declare-fun e!4541585 () Regex!20436)

(assert (=> b!7640430 (= e!4541585 e!4541583)))

(declare-fun c!1407374 () Bool)

(assert (=> b!7640430 (= c!1407374 (is-Star!20436 r!14126))))

(declare-fun b!7640431 () Bool)

(declare-fun e!4541582 () Regex!20436)

(declare-fun call!701271 () Regex!20436)

(assert (=> b!7640431 (= e!4541582 (Union!20436 (Concat!29281 call!701271 (regTwo!41384 r!14126)) EmptyLang!20436))))

(declare-fun b!7640432 () Bool)

(declare-fun c!1407373 () Bool)

(assert (=> b!7640432 (= c!1407373 (is-Union!20436 r!14126))))

(declare-fun e!4541584 () Regex!20436)

(assert (=> b!7640432 (= e!4541584 e!4541585)))

(declare-fun call!701272 () Regex!20436)

(declare-fun b!7640433 () Bool)

(assert (=> b!7640433 (= e!4541582 (Union!20436 (Concat!29281 call!701271 (regTwo!41384 r!14126)) call!701272))))

(declare-fun b!7640434 () Bool)

(declare-fun e!4541586 () Regex!20436)

(assert (=> b!7640434 (= e!4541586 EmptyLang!20436)))

(declare-fun b!7640435 () Bool)

(declare-fun call!701273 () Regex!20436)

(assert (=> b!7640435 (= e!4541585 (Union!20436 call!701272 call!701273))))

(declare-fun b!7640436 () Bool)

(assert (=> b!7640436 (= e!4541584 (ite (= (head!15714 s!9605) (c!1407297 r!14126)) EmptyExpr!20436 EmptyLang!20436))))

(declare-fun b!7640437 () Bool)

(assert (=> b!7640437 (= e!4541586 e!4541584)))

(declare-fun c!1407370 () Bool)

(assert (=> b!7640437 (= c!1407370 (is-ElementMatch!20436 r!14126))))

(declare-fun bm!701266 () Bool)

(assert (=> bm!701266 (= call!701271 call!701270)))

(declare-fun b!7640438 () Bool)

(declare-fun c!1407372 () Bool)

(assert (=> b!7640438 (= c!1407372 (nullable!8943 (regOne!41384 r!14126)))))

(assert (=> b!7640438 (= e!4541583 e!4541582)))

(declare-fun bm!701267 () Bool)

(assert (=> bm!701267 (= call!701270 call!701273)))

(declare-fun bm!701268 () Bool)

(assert (=> bm!701268 (= call!701272 (derivativeStep!5914 (ite c!1407373 (regOne!41385 r!14126) (regTwo!41384 r!14126)) (head!15714 s!9605)))))

(declare-fun d!2325118 () Bool)

(declare-fun lt!2660502 () Regex!20436)

(assert (=> d!2325118 (validRegex!10854 lt!2660502)))

(assert (=> d!2325118 (= lt!2660502 e!4541586)))

(declare-fun c!1407371 () Bool)

(assert (=> d!2325118 (= c!1407371 (or (is-EmptyExpr!20436 r!14126) (is-EmptyLang!20436 r!14126)))))

(assert (=> d!2325118 (validRegex!10854 r!14126)))

(assert (=> d!2325118 (= (derivativeStep!5914 r!14126 (head!15714 s!9605)) lt!2660502)))

(declare-fun bm!701265 () Bool)

(assert (=> bm!701265 (= call!701273 (derivativeStep!5914 (ite c!1407373 (regTwo!41385 r!14126) (ite c!1407374 (reg!20765 r!14126) (regOne!41384 r!14126))) (head!15714 s!9605)))))

(assert (= (and d!2325118 c!1407371) b!7640434))

(assert (= (and d!2325118 (not c!1407371)) b!7640437))

(assert (= (and b!7640437 c!1407370) b!7640436))

(assert (= (and b!7640437 (not c!1407370)) b!7640432))

(assert (= (and b!7640432 c!1407373) b!7640435))

(assert (= (and b!7640432 (not c!1407373)) b!7640430))

(assert (= (and b!7640430 c!1407374) b!7640429))

(assert (= (and b!7640430 (not c!1407374)) b!7640438))

(assert (= (and b!7640438 c!1407372) b!7640433))

(assert (= (and b!7640438 (not c!1407372)) b!7640431))

(assert (= (or b!7640433 b!7640431) bm!701266))

(assert (= (or b!7640429 bm!701266) bm!701267))

(assert (= (or b!7640435 bm!701267) bm!701265))

(assert (= (or b!7640435 b!7640433) bm!701268))

(declare-fun m!8162806 () Bool)

(assert (=> b!7640438 m!8162806))

(assert (=> bm!701268 m!8162746))

(declare-fun m!8162808 () Bool)

(assert (=> bm!701268 m!8162808))

(declare-fun m!8162810 () Bool)

(assert (=> d!2325118 m!8162810))

(assert (=> d!2325118 m!8162726))

(assert (=> bm!701265 m!8162746))

(declare-fun m!8162812 () Bool)

(assert (=> bm!701265 m!8162812))

(assert (=> b!7640140 d!2325118))

(assert (=> b!7640140 d!2325114))

(assert (=> b!7640140 d!2325112))

(declare-fun d!2325120 () Bool)

(declare-fun nullableFct!3554 (Regex!20436) Bool)

(assert (=> d!2325120 (= (nullable!8943 (reg!20765 r!14126)) (nullableFct!3554 (reg!20765 r!14126)))))

(declare-fun bs!1944696 () Bool)

(assert (= bs!1944696 d!2325120))

(declare-fun m!8162814 () Bool)

(assert (=> bs!1944696 m!8162814))

(assert (=> b!7640281 d!2325120))

(declare-fun d!2325122 () Bool)

(assert (=> d!2325122 (= (nullable!8943 r!14126) (nullableFct!3554 r!14126))))

(declare-fun bs!1944697 () Bool)

(assert (= bs!1944697 d!2325122))

(declare-fun m!8162816 () Bool)

(assert (=> bs!1944697 m!8162816))

(assert (=> b!7640148 d!2325122))

(assert (=> b!7640147 d!2325110))

(assert (=> b!7640147 d!2325112))

(declare-fun b!7640439 () Bool)

(declare-fun res!3060308 () Bool)

(declare-fun e!4541592 () Bool)

(assert (=> b!7640439 (=> (not res!3060308) (not e!4541592))))

(declare-fun call!701275 () Bool)

(assert (=> b!7640439 (= res!3060308 call!701275)))

(declare-fun e!4541588 () Bool)

(assert (=> b!7640439 (= e!4541588 e!4541592)))

(declare-fun d!2325124 () Bool)

(declare-fun res!3060307 () Bool)

(declare-fun e!4541591 () Bool)

(assert (=> d!2325124 (=> res!3060307 e!4541591)))

(assert (=> d!2325124 (= res!3060307 (is-ElementMatch!20436 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))

(assert (=> d!2325124 (= (validRegex!10854 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))) e!4541591)))

(declare-fun b!7640440 () Bool)

(declare-fun e!4541587 () Bool)

(declare-fun e!4541593 () Bool)

(assert (=> b!7640440 (= e!4541587 e!4541593)))

(declare-fun res!3060306 () Bool)

(assert (=> b!7640440 (= res!3060306 (not (nullable!8943 (reg!20765 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))))

(assert (=> b!7640440 (=> (not res!3060306) (not e!4541593))))

(declare-fun b!7640441 () Bool)

(assert (=> b!7640441 (= e!4541587 e!4541588)))

(declare-fun c!1407375 () Bool)

(assert (=> b!7640441 (= c!1407375 (is-Union!20436 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))

(declare-fun b!7640442 () Bool)

(declare-fun call!701274 () Bool)

(assert (=> b!7640442 (= e!4541593 call!701274)))

(declare-fun bm!701269 () Bool)

(declare-fun c!1407376 () Bool)

(assert (=> bm!701269 (= call!701274 (validRegex!10854 (ite c!1407376 (reg!20765 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))) (ite c!1407375 (regOne!41385 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))) (regOne!41384 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126)))))))))

(declare-fun b!7640443 () Bool)

(assert (=> b!7640443 (= e!4541591 e!4541587)))

(assert (=> b!7640443 (= c!1407376 (is-Star!20436 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))

(declare-fun b!7640444 () Bool)

(declare-fun e!4541590 () Bool)

(declare-fun call!701276 () Bool)

(assert (=> b!7640444 (= e!4541590 call!701276)))

(declare-fun b!7640445 () Bool)

(declare-fun e!4541589 () Bool)

(assert (=> b!7640445 (= e!4541589 e!4541590)))

(declare-fun res!3060305 () Bool)

(assert (=> b!7640445 (=> (not res!3060305) (not e!4541590))))

(assert (=> b!7640445 (= res!3060305 call!701275)))

(declare-fun b!7640446 () Bool)

(assert (=> b!7640446 (= e!4541592 call!701276)))

(declare-fun bm!701270 () Bool)

(assert (=> bm!701270 (= call!701276 (validRegex!10854 (ite c!1407375 (regTwo!41385 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))) (regTwo!41384 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126))))))))

(declare-fun bm!701271 () Bool)

(assert (=> bm!701271 (= call!701275 call!701274)))

(declare-fun b!7640447 () Bool)

(declare-fun res!3060304 () Bool)

(assert (=> b!7640447 (=> res!3060304 e!4541589)))

(assert (=> b!7640447 (= res!3060304 (not (is-Concat!29281 (ite c!1407347 (regTwo!41385 r!14126) (regTwo!41384 r!14126)))))))

(assert (=> b!7640447 (= e!4541588 e!4541589)))

(assert (= (and d!2325124 (not res!3060307)) b!7640443))

(assert (= (and b!7640443 c!1407376) b!7640440))

(assert (= (and b!7640443 (not c!1407376)) b!7640441))

(assert (= (and b!7640440 res!3060306) b!7640442))

(assert (= (and b!7640441 c!1407375) b!7640439))

(assert (= (and b!7640441 (not c!1407375)) b!7640447))

(assert (= (and b!7640439 res!3060308) b!7640446))

(assert (= (and b!7640447 (not res!3060304)) b!7640445))

(assert (= (and b!7640445 res!3060305) b!7640444))

(assert (= (or b!7640439 b!7640445) bm!701271))

(assert (= (or b!7640446 b!7640444) bm!701270))

(assert (= (or b!7640442 bm!701271) bm!701269))

(declare-fun m!8162818 () Bool)

(assert (=> b!7640440 m!8162818))

(declare-fun m!8162820 () Bool)

(assert (=> bm!701269 m!8162820))

(declare-fun m!8162822 () Bool)

(assert (=> bm!701270 m!8162822))

(assert (=> bm!701246 d!2325124))

(assert (=> b!7640146 d!2325114))

(declare-fun d!2325126 () Bool)

(declare-fun choose!59006 (Int) Bool)

(assert (=> d!2325126 (= (Exists!4588 (ite c!1407340 lambda!469632 lambda!469633)) (choose!59006 (ite c!1407340 lambda!469632 lambda!469633)))))

(declare-fun bs!1944698 () Bool)

(assert (= bs!1944698 d!2325126))

(declare-fun m!8162824 () Bool)

(assert (=> bs!1944698 m!8162824))

(assert (=> bm!701238 d!2325126))

(assert (=> d!2325094 d!2325108))

(assert (=> d!2325094 d!2325104))

(declare-fun bs!1944699 () Bool)

(declare-fun b!7640458 () Bool)

(assert (= bs!1944699 (and b!7640458 b!7640257)))

(declare-fun lambda!469642 () Int)

(assert (=> bs!1944699 (= (and (= (reg!20765 (regTwo!41385 r!14126)) (reg!20765 r!14126)) (= (regTwo!41385 r!14126) r!14126)) (= lambda!469642 lambda!469632))))

(declare-fun bs!1944700 () Bool)

(assert (= bs!1944700 (and b!7640458 b!7640247)))

(assert (=> bs!1944700 (not (= lambda!469642 lambda!469633))))

(declare-fun bs!1944701 () Bool)

(assert (= bs!1944701 (and b!7640458 b!7640394)))

(assert (=> bs!1944701 (= (and (= (reg!20765 (regTwo!41385 r!14126)) (reg!20765 (regOne!41385 r!14126))) (= (regTwo!41385 r!14126) (regOne!41385 r!14126))) (= lambda!469642 lambda!469640))))

(declare-fun bs!1944702 () Bool)

(assert (= bs!1944702 (and b!7640458 b!7640384)))

(assert (=> bs!1944702 (not (= lambda!469642 lambda!469641))))

(assert (=> b!7640458 true))

(assert (=> b!7640458 true))

(declare-fun bs!1944703 () Bool)

(declare-fun b!7640448 () Bool)

(assert (= bs!1944703 (and b!7640448 b!7640394)))

(declare-fun lambda!469643 () Int)

(assert (=> bs!1944703 (not (= lambda!469643 lambda!469640))))

(declare-fun bs!1944704 () Bool)

(assert (= bs!1944704 (and b!7640448 b!7640384)))

(assert (=> bs!1944704 (= (and (= (regOne!41384 (regTwo!41385 r!14126)) (regOne!41384 (regOne!41385 r!14126))) (= (regTwo!41384 (regTwo!41385 r!14126)) (regTwo!41384 (regOne!41385 r!14126)))) (= lambda!469643 lambda!469641))))

(declare-fun bs!1944705 () Bool)

(assert (= bs!1944705 (and b!7640448 b!7640257)))

(assert (=> bs!1944705 (not (= lambda!469643 lambda!469632))))

(declare-fun bs!1944706 () Bool)

(assert (= bs!1944706 (and b!7640448 b!7640458)))

(assert (=> bs!1944706 (not (= lambda!469643 lambda!469642))))

(declare-fun bs!1944707 () Bool)

(assert (= bs!1944707 (and b!7640448 b!7640247)))

(assert (=> bs!1944707 (= (and (= (regOne!41384 (regTwo!41385 r!14126)) (regOne!41384 r!14126)) (= (regTwo!41384 (regTwo!41385 r!14126)) (regTwo!41384 r!14126))) (= lambda!469643 lambda!469633))))

(assert (=> b!7640448 true))

(assert (=> b!7640448 true))

(declare-fun e!4541599 () Bool)

(declare-fun call!701278 () Bool)

(assert (=> b!7640448 (= e!4541599 call!701278)))

(declare-fun b!7640449 () Bool)

(declare-fun e!4541597 () Bool)

(assert (=> b!7640449 (= e!4541597 (= s!9605 (Cons!73163 (c!1407297 (regTwo!41385 r!14126)) Nil!73163)))))

(declare-fun b!7640450 () Bool)

(declare-fun c!1407379 () Bool)

(assert (=> b!7640450 (= c!1407379 (is-ElementMatch!20436 (regTwo!41385 r!14126)))))

(declare-fun e!4541598 () Bool)

(assert (=> b!7640450 (= e!4541598 e!4541597)))

(declare-fun b!7640451 () Bool)

(declare-fun res!3060309 () Bool)

(declare-fun e!4541595 () Bool)

(assert (=> b!7640451 (=> res!3060309 e!4541595)))

(declare-fun call!701277 () Bool)

(assert (=> b!7640451 (= res!3060309 call!701277)))

(assert (=> b!7640451 (= e!4541599 e!4541595)))

(declare-fun b!7640452 () Bool)

(declare-fun e!4541596 () Bool)

(declare-fun e!4541594 () Bool)

(assert (=> b!7640452 (= e!4541596 e!4541594)))

(declare-fun res!3060311 () Bool)

(assert (=> b!7640452 (= res!3060311 (matchRSpec!4567 (regOne!41385 (regTwo!41385 r!14126)) s!9605))))

(assert (=> b!7640452 (=> res!3060311 e!4541594)))

(declare-fun bm!701272 () Bool)

(assert (=> bm!701272 (= call!701277 (isEmpty!41794 s!9605))))

(declare-fun b!7640453 () Bool)

(assert (=> b!7640453 (= e!4541594 (matchRSpec!4567 (regTwo!41385 (regTwo!41385 r!14126)) s!9605))))

(declare-fun b!7640454 () Bool)

(assert (=> b!7640454 (= e!4541596 e!4541599)))

(declare-fun c!1407378 () Bool)

(assert (=> b!7640454 (= c!1407378 (is-Star!20436 (regTwo!41385 r!14126)))))

(declare-fun b!7640455 () Bool)

(declare-fun c!1407380 () Bool)

(assert (=> b!7640455 (= c!1407380 (is-Union!20436 (regTwo!41385 r!14126)))))

(assert (=> b!7640455 (= e!4541597 e!4541596)))

(declare-fun d!2325128 () Bool)

(declare-fun c!1407377 () Bool)

(assert (=> d!2325128 (= c!1407377 (is-EmptyExpr!20436 (regTwo!41385 r!14126)))))

(declare-fun e!4541600 () Bool)

(assert (=> d!2325128 (= (matchRSpec!4567 (regTwo!41385 r!14126) s!9605) e!4541600)))

(declare-fun bm!701273 () Bool)

(assert (=> bm!701273 (= call!701278 (Exists!4588 (ite c!1407378 lambda!469642 lambda!469643)))))

(declare-fun b!7640456 () Bool)

(assert (=> b!7640456 (= e!4541600 call!701277)))

(declare-fun b!7640457 () Bool)

(assert (=> b!7640457 (= e!4541600 e!4541598)))

(declare-fun res!3060310 () Bool)

(assert (=> b!7640457 (= res!3060310 (not (is-EmptyLang!20436 (regTwo!41385 r!14126))))))

(assert (=> b!7640457 (=> (not res!3060310) (not e!4541598))))

(assert (=> b!7640458 (= e!4541595 call!701278)))

(assert (= (and d!2325128 c!1407377) b!7640456))

(assert (= (and d!2325128 (not c!1407377)) b!7640457))

(assert (= (and b!7640457 res!3060310) b!7640450))

(assert (= (and b!7640450 c!1407379) b!7640449))

(assert (= (and b!7640450 (not c!1407379)) b!7640455))

(assert (= (and b!7640455 c!1407380) b!7640452))

(assert (= (and b!7640455 (not c!1407380)) b!7640454))

(assert (= (and b!7640452 (not res!3060311)) b!7640453))

(assert (= (and b!7640454 c!1407378) b!7640451))

(assert (= (and b!7640454 (not c!1407378)) b!7640448))

(assert (= (and b!7640451 (not res!3060309)) b!7640458))

(assert (= (or b!7640458 b!7640448) bm!701273))

(assert (= (or b!7640456 b!7640451) bm!701272))

(declare-fun m!8162826 () Bool)

(assert (=> b!7640452 m!8162826))

(assert (=> bm!701272 m!8162744))

(declare-fun m!8162828 () Bool)

(assert (=> b!7640453 m!8162828))

(declare-fun m!8162830 () Bool)

(assert (=> bm!701273 m!8162830))

(assert (=> b!7640252 d!2325128))

(declare-fun b!7640459 () Bool)

(declare-fun res!3060316 () Bool)

(declare-fun e!4541606 () Bool)

(assert (=> b!7640459 (=> (not res!3060316) (not e!4541606))))

(declare-fun call!701280 () Bool)

(assert (=> b!7640459 (= res!3060316 call!701280)))

(declare-fun e!4541602 () Bool)

(assert (=> b!7640459 (= e!4541602 e!4541606)))

(declare-fun d!2325130 () Bool)

(declare-fun res!3060315 () Bool)

(declare-fun e!4541605 () Bool)

(assert (=> d!2325130 (=> res!3060315 e!4541605)))

(assert (=> d!2325130 (= res!3060315 (is-ElementMatch!20436 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))

(assert (=> d!2325130 (= (validRegex!10854 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))) e!4541605)))

(declare-fun b!7640460 () Bool)

(declare-fun e!4541601 () Bool)

(declare-fun e!4541607 () Bool)

(assert (=> b!7640460 (= e!4541601 e!4541607)))

(declare-fun res!3060314 () Bool)

(assert (=> b!7640460 (= res!3060314 (not (nullable!8943 (reg!20765 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))))

(assert (=> b!7640460 (=> (not res!3060314) (not e!4541607))))

(declare-fun b!7640461 () Bool)

(assert (=> b!7640461 (= e!4541601 e!4541602)))

(declare-fun c!1407381 () Bool)

(assert (=> b!7640461 (= c!1407381 (is-Union!20436 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))

(declare-fun b!7640462 () Bool)

(declare-fun call!701279 () Bool)

(assert (=> b!7640462 (= e!4541607 call!701279)))

(declare-fun bm!701274 () Bool)

(declare-fun c!1407382 () Bool)

(assert (=> bm!701274 (= call!701279 (validRegex!10854 (ite c!1407382 (reg!20765 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))) (ite c!1407381 (regOne!41385 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))) (regOne!41384 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126))))))))))

(declare-fun b!7640463 () Bool)

(assert (=> b!7640463 (= e!4541605 e!4541601)))

(assert (=> b!7640463 (= c!1407382 (is-Star!20436 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))

(declare-fun b!7640464 () Bool)

(declare-fun e!4541604 () Bool)

(declare-fun call!701281 () Bool)

(assert (=> b!7640464 (= e!4541604 call!701281)))

(declare-fun b!7640465 () Bool)

(declare-fun e!4541603 () Bool)

(assert (=> b!7640465 (= e!4541603 e!4541604)))

(declare-fun res!3060313 () Bool)

(assert (=> b!7640465 (=> (not res!3060313) (not e!4541604))))

(assert (=> b!7640465 (= res!3060313 call!701280)))

(declare-fun b!7640466 () Bool)

(assert (=> b!7640466 (= e!4541606 call!701281)))

(declare-fun bm!701275 () Bool)

(assert (=> bm!701275 (= call!701281 (validRegex!10854 (ite c!1407381 (regTwo!41385 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))) (regTwo!41384 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126)))))))))

(declare-fun bm!701276 () Bool)

(assert (=> bm!701276 (= call!701280 call!701279)))

(declare-fun b!7640467 () Bool)

(declare-fun res!3060312 () Bool)

(assert (=> b!7640467 (=> res!3060312 e!4541603)))

(assert (=> b!7640467 (= res!3060312 (not (is-Concat!29281 (ite c!1407348 (reg!20765 r!14126) (ite c!1407347 (regOne!41385 r!14126) (regOne!41384 r!14126))))))))

(assert (=> b!7640467 (= e!4541602 e!4541603)))

(assert (= (and d!2325130 (not res!3060315)) b!7640463))

(assert (= (and b!7640463 c!1407382) b!7640460))

(assert (= (and b!7640463 (not c!1407382)) b!7640461))

(assert (= (and b!7640460 res!3060314) b!7640462))

(assert (= (and b!7640461 c!1407381) b!7640459))

(assert (= (and b!7640461 (not c!1407381)) b!7640467))

(assert (= (and b!7640459 res!3060316) b!7640466))

(assert (= (and b!7640467 (not res!3060312)) b!7640465))

(assert (= (and b!7640465 res!3060313) b!7640464))

(assert (= (or b!7640459 b!7640465) bm!701276))

(assert (= (or b!7640466 b!7640464) bm!701275))

(assert (= (or b!7640462 bm!701276) bm!701274))

(declare-fun m!8162832 () Bool)

(assert (=> b!7640460 m!8162832))

(declare-fun m!8162834 () Bool)

(assert (=> bm!701274 m!8162834))

(declare-fun m!8162836 () Bool)

(assert (=> bm!701275 m!8162836))

(assert (=> bm!701245 d!2325130))

(assert (=> bm!701237 d!2325108))

(declare-fun b!7640471 () Bool)

(declare-fun e!4541608 () Bool)

(declare-fun tp!2230194 () Bool)

(declare-fun tp!2230196 () Bool)

(assert (=> b!7640471 (= e!4541608 (and tp!2230194 tp!2230196))))

(declare-fun b!7640468 () Bool)

(assert (=> b!7640468 (= e!4541608 tp_is_empty!51227)))

(declare-fun b!7640469 () Bool)

(declare-fun tp!2230197 () Bool)

(declare-fun tp!2230195 () Bool)

(assert (=> b!7640469 (= e!4541608 (and tp!2230197 tp!2230195))))

(declare-fun b!7640470 () Bool)

(declare-fun tp!2230198 () Bool)

(assert (=> b!7640470 (= e!4541608 tp!2230198)))

(assert (=> b!7640311 (= tp!2230136 e!4541608)))

(assert (= (and b!7640311 (is-ElementMatch!20436 (regOne!41385 (regTwo!41385 r!14126)))) b!7640468))

(assert (= (and b!7640311 (is-Concat!29281 (regOne!41385 (regTwo!41385 r!14126)))) b!7640469))

(assert (= (and b!7640311 (is-Star!20436 (regOne!41385 (regTwo!41385 r!14126)))) b!7640470))

(assert (= (and b!7640311 (is-Union!20436 (regOne!41385 (regTwo!41385 r!14126)))) b!7640471))

(declare-fun b!7640475 () Bool)

(declare-fun e!4541609 () Bool)

(declare-fun tp!2230199 () Bool)

(declare-fun tp!2230201 () Bool)

(assert (=> b!7640475 (= e!4541609 (and tp!2230199 tp!2230201))))

(declare-fun b!7640472 () Bool)

(assert (=> b!7640472 (= e!4541609 tp_is_empty!51227)))

(declare-fun b!7640473 () Bool)

(declare-fun tp!2230202 () Bool)

(declare-fun tp!2230200 () Bool)

(assert (=> b!7640473 (= e!4541609 (and tp!2230202 tp!2230200))))

(declare-fun b!7640474 () Bool)

(declare-fun tp!2230203 () Bool)

(assert (=> b!7640474 (= e!4541609 tp!2230203)))

(assert (=> b!7640311 (= tp!2230138 e!4541609)))

(assert (= (and b!7640311 (is-ElementMatch!20436 (regTwo!41385 (regTwo!41385 r!14126)))) b!7640472))

(assert (= (and b!7640311 (is-Concat!29281 (regTwo!41385 (regTwo!41385 r!14126)))) b!7640473))

(assert (= (and b!7640311 (is-Star!20436 (regTwo!41385 (regTwo!41385 r!14126)))) b!7640474))

(assert (= (and b!7640311 (is-Union!20436 (regTwo!41385 (regTwo!41385 r!14126)))) b!7640475))

(declare-fun b!7640479 () Bool)

(declare-fun e!4541610 () Bool)

(declare-fun tp!2230204 () Bool)

(declare-fun tp!2230206 () Bool)

(assert (=> b!7640479 (= e!4541610 (and tp!2230204 tp!2230206))))

(declare-fun b!7640476 () Bool)

(assert (=> b!7640476 (= e!4541610 tp_is_empty!51227)))

(declare-fun b!7640477 () Bool)

(declare-fun tp!2230207 () Bool)

(declare-fun tp!2230205 () Bool)

(assert (=> b!7640477 (= e!4541610 (and tp!2230207 tp!2230205))))

(declare-fun b!7640478 () Bool)

(declare-fun tp!2230208 () Bool)

(assert (=> b!7640478 (= e!4541610 tp!2230208)))

(assert (=> b!7640315 (= tp!2230141 e!4541610)))

(assert (= (and b!7640315 (is-ElementMatch!20436 (regOne!41385 (reg!20765 r!14126)))) b!7640476))

(assert (= (and b!7640315 (is-Concat!29281 (regOne!41385 (reg!20765 r!14126)))) b!7640477))

(assert (= (and b!7640315 (is-Star!20436 (regOne!41385 (reg!20765 r!14126)))) b!7640478))

(assert (= (and b!7640315 (is-Union!20436 (regOne!41385 (reg!20765 r!14126)))) b!7640479))

(declare-fun b!7640483 () Bool)

(declare-fun e!4541611 () Bool)

(declare-fun tp!2230209 () Bool)

(declare-fun tp!2230211 () Bool)

(assert (=> b!7640483 (= e!4541611 (and tp!2230209 tp!2230211))))

(declare-fun b!7640480 () Bool)

(assert (=> b!7640480 (= e!4541611 tp_is_empty!51227)))

(declare-fun b!7640481 () Bool)

(declare-fun tp!2230212 () Bool)

(declare-fun tp!2230210 () Bool)

(assert (=> b!7640481 (= e!4541611 (and tp!2230212 tp!2230210))))

(declare-fun b!7640482 () Bool)

(declare-fun tp!2230213 () Bool)

(assert (=> b!7640482 (= e!4541611 tp!2230213)))

(assert (=> b!7640315 (= tp!2230143 e!4541611)))

(assert (= (and b!7640315 (is-ElementMatch!20436 (regTwo!41385 (reg!20765 r!14126)))) b!7640480))

(assert (= (and b!7640315 (is-Concat!29281 (regTwo!41385 (reg!20765 r!14126)))) b!7640481))

(assert (= (and b!7640315 (is-Star!20436 (regTwo!41385 (reg!20765 r!14126)))) b!7640482))

(assert (= (and b!7640315 (is-Union!20436 (regTwo!41385 (reg!20765 r!14126)))) b!7640483))

(declare-fun b!7640487 () Bool)

(declare-fun e!4541612 () Bool)

(declare-fun tp!2230214 () Bool)

(declare-fun tp!2230216 () Bool)

(assert (=> b!7640487 (= e!4541612 (and tp!2230214 tp!2230216))))

(declare-fun b!7640484 () Bool)

(assert (=> b!7640484 (= e!4541612 tp_is_empty!51227)))

(declare-fun b!7640485 () Bool)

(declare-fun tp!2230217 () Bool)

(declare-fun tp!2230215 () Bool)

(assert (=> b!7640485 (= e!4541612 (and tp!2230217 tp!2230215))))

(declare-fun b!7640486 () Bool)

(declare-fun tp!2230218 () Bool)

(assert (=> b!7640486 (= e!4541612 tp!2230218)))

(assert (=> b!7640306 (= tp!2230135 e!4541612)))

(assert (= (and b!7640306 (is-ElementMatch!20436 (reg!20765 (regOne!41385 r!14126)))) b!7640484))

(assert (= (and b!7640306 (is-Concat!29281 (reg!20765 (regOne!41385 r!14126)))) b!7640485))

(assert (= (and b!7640306 (is-Star!20436 (reg!20765 (regOne!41385 r!14126)))) b!7640486))

(assert (= (and b!7640306 (is-Union!20436 (reg!20765 (regOne!41385 r!14126)))) b!7640487))

(declare-fun b!7640491 () Bool)

(declare-fun e!4541613 () Bool)

(declare-fun tp!2230219 () Bool)

(declare-fun tp!2230221 () Bool)

(assert (=> b!7640491 (= e!4541613 (and tp!2230219 tp!2230221))))

(declare-fun b!7640488 () Bool)

(assert (=> b!7640488 (= e!4541613 tp_is_empty!51227)))

(declare-fun b!7640489 () Bool)

(declare-fun tp!2230222 () Bool)

(declare-fun tp!2230220 () Bool)

(assert (=> b!7640489 (= e!4541613 (and tp!2230222 tp!2230220))))

(declare-fun b!7640490 () Bool)

(declare-fun tp!2230223 () Bool)

(assert (=> b!7640490 (= e!4541613 tp!2230223)))

(assert (=> b!7640305 (= tp!2230134 e!4541613)))

(assert (= (and b!7640305 (is-ElementMatch!20436 (regOne!41384 (regOne!41385 r!14126)))) b!7640488))

(assert (= (and b!7640305 (is-Concat!29281 (regOne!41384 (regOne!41385 r!14126)))) b!7640489))

(assert (= (and b!7640305 (is-Star!20436 (regOne!41384 (regOne!41385 r!14126)))) b!7640490))

(assert (= (and b!7640305 (is-Union!20436 (regOne!41384 (regOne!41385 r!14126)))) b!7640491))

(declare-fun b!7640495 () Bool)

(declare-fun e!4541614 () Bool)

(declare-fun tp!2230224 () Bool)

(declare-fun tp!2230226 () Bool)

(assert (=> b!7640495 (= e!4541614 (and tp!2230224 tp!2230226))))

(declare-fun b!7640492 () Bool)

(assert (=> b!7640492 (= e!4541614 tp_is_empty!51227)))

(declare-fun b!7640493 () Bool)

(declare-fun tp!2230227 () Bool)

(declare-fun tp!2230225 () Bool)

(assert (=> b!7640493 (= e!4541614 (and tp!2230227 tp!2230225))))

(declare-fun b!7640494 () Bool)

(declare-fun tp!2230228 () Bool)

(assert (=> b!7640494 (= e!4541614 tp!2230228)))

(assert (=> b!7640305 (= tp!2230132 e!4541614)))

(assert (= (and b!7640305 (is-ElementMatch!20436 (regTwo!41384 (regOne!41385 r!14126)))) b!7640492))

(assert (= (and b!7640305 (is-Concat!29281 (regTwo!41384 (regOne!41385 r!14126)))) b!7640493))

(assert (= (and b!7640305 (is-Star!20436 (regTwo!41384 (regOne!41385 r!14126)))) b!7640494))

(assert (= (and b!7640305 (is-Union!20436 (regTwo!41384 (regOne!41385 r!14126)))) b!7640495))

(declare-fun b!7640499 () Bool)

(declare-fun e!4541615 () Bool)

(declare-fun tp!2230229 () Bool)

(declare-fun tp!2230231 () Bool)

(assert (=> b!7640499 (= e!4541615 (and tp!2230229 tp!2230231))))

(declare-fun b!7640496 () Bool)

(assert (=> b!7640496 (= e!4541615 tp_is_empty!51227)))

(declare-fun b!7640497 () Bool)

(declare-fun tp!2230232 () Bool)

(declare-fun tp!2230230 () Bool)

(assert (=> b!7640497 (= e!4541615 (and tp!2230232 tp!2230230))))

(declare-fun b!7640498 () Bool)

(declare-fun tp!2230233 () Bool)

(assert (=> b!7640498 (= e!4541615 tp!2230233)))

(assert (=> b!7640319 (= tp!2230146 e!4541615)))

(assert (= (and b!7640319 (is-ElementMatch!20436 (regOne!41385 (regOne!41384 r!14126)))) b!7640496))

(assert (= (and b!7640319 (is-Concat!29281 (regOne!41385 (regOne!41384 r!14126)))) b!7640497))

(assert (= (and b!7640319 (is-Star!20436 (regOne!41385 (regOne!41384 r!14126)))) b!7640498))

(assert (= (and b!7640319 (is-Union!20436 (regOne!41385 (regOne!41384 r!14126)))) b!7640499))

(declare-fun b!7640503 () Bool)

(declare-fun e!4541616 () Bool)

(declare-fun tp!2230234 () Bool)

(declare-fun tp!2230236 () Bool)

(assert (=> b!7640503 (= e!4541616 (and tp!2230234 tp!2230236))))

(declare-fun b!7640500 () Bool)

(assert (=> b!7640500 (= e!4541616 tp_is_empty!51227)))

(declare-fun b!7640501 () Bool)

(declare-fun tp!2230237 () Bool)

(declare-fun tp!2230235 () Bool)

(assert (=> b!7640501 (= e!4541616 (and tp!2230237 tp!2230235))))

(declare-fun b!7640502 () Bool)

(declare-fun tp!2230238 () Bool)

(assert (=> b!7640502 (= e!4541616 tp!2230238)))

(assert (=> b!7640319 (= tp!2230148 e!4541616)))

(assert (= (and b!7640319 (is-ElementMatch!20436 (regTwo!41385 (regOne!41384 r!14126)))) b!7640500))

(assert (= (and b!7640319 (is-Concat!29281 (regTwo!41385 (regOne!41384 r!14126)))) b!7640501))

(assert (= (and b!7640319 (is-Star!20436 (regTwo!41385 (regOne!41384 r!14126)))) b!7640502))

(assert (= (and b!7640319 (is-Union!20436 (regTwo!41385 (regOne!41384 r!14126)))) b!7640503))

(declare-fun b!7640507 () Bool)

(declare-fun e!4541617 () Bool)

(declare-fun tp!2230239 () Bool)

(declare-fun tp!2230241 () Bool)

(assert (=> b!7640507 (= e!4541617 (and tp!2230239 tp!2230241))))

(declare-fun b!7640504 () Bool)

(assert (=> b!7640504 (= e!4541617 tp_is_empty!51227)))

(declare-fun b!7640505 () Bool)

(declare-fun tp!2230242 () Bool)

(declare-fun tp!2230240 () Bool)

(assert (=> b!7640505 (= e!4541617 (and tp!2230242 tp!2230240))))

(declare-fun b!7640506 () Bool)

(declare-fun tp!2230243 () Bool)

(assert (=> b!7640506 (= e!4541617 tp!2230243)))

(assert (=> b!7640310 (= tp!2230140 e!4541617)))

(assert (= (and b!7640310 (is-ElementMatch!20436 (reg!20765 (regTwo!41385 r!14126)))) b!7640504))

(assert (= (and b!7640310 (is-Concat!29281 (reg!20765 (regTwo!41385 r!14126)))) b!7640505))

(assert (= (and b!7640310 (is-Star!20436 (reg!20765 (regTwo!41385 r!14126)))) b!7640506))

(assert (= (and b!7640310 (is-Union!20436 (reg!20765 (regTwo!41385 r!14126)))) b!7640507))

(declare-fun b!7640511 () Bool)

(declare-fun e!4541618 () Bool)

(declare-fun tp!2230244 () Bool)

(declare-fun tp!2230246 () Bool)

(assert (=> b!7640511 (= e!4541618 (and tp!2230244 tp!2230246))))

(declare-fun b!7640508 () Bool)

(assert (=> b!7640508 (= e!4541618 tp_is_empty!51227)))

(declare-fun b!7640509 () Bool)

(declare-fun tp!2230247 () Bool)

(declare-fun tp!2230245 () Bool)

(assert (=> b!7640509 (= e!4541618 (and tp!2230247 tp!2230245))))

(declare-fun b!7640510 () Bool)

(declare-fun tp!2230248 () Bool)

(assert (=> b!7640510 (= e!4541618 tp!2230248)))

(assert (=> b!7640309 (= tp!2230139 e!4541618)))

(assert (= (and b!7640309 (is-ElementMatch!20436 (regOne!41384 (regTwo!41385 r!14126)))) b!7640508))

(assert (= (and b!7640309 (is-Concat!29281 (regOne!41384 (regTwo!41385 r!14126)))) b!7640509))

(assert (= (and b!7640309 (is-Star!20436 (regOne!41384 (regTwo!41385 r!14126)))) b!7640510))

(assert (= (and b!7640309 (is-Union!20436 (regOne!41384 (regTwo!41385 r!14126)))) b!7640511))

(declare-fun b!7640515 () Bool)

(declare-fun e!4541619 () Bool)

(declare-fun tp!2230249 () Bool)

(declare-fun tp!2230251 () Bool)

(assert (=> b!7640515 (= e!4541619 (and tp!2230249 tp!2230251))))

(declare-fun b!7640512 () Bool)

(assert (=> b!7640512 (= e!4541619 tp_is_empty!51227)))

(declare-fun b!7640513 () Bool)

(declare-fun tp!2230252 () Bool)

(declare-fun tp!2230250 () Bool)

(assert (=> b!7640513 (= e!4541619 (and tp!2230252 tp!2230250))))

(declare-fun b!7640514 () Bool)

(declare-fun tp!2230253 () Bool)

(assert (=> b!7640514 (= e!4541619 tp!2230253)))

(assert (=> b!7640309 (= tp!2230137 e!4541619)))

(assert (= (and b!7640309 (is-ElementMatch!20436 (regTwo!41384 (regTwo!41385 r!14126)))) b!7640512))

(assert (= (and b!7640309 (is-Concat!29281 (regTwo!41384 (regTwo!41385 r!14126)))) b!7640513))

(assert (= (and b!7640309 (is-Star!20436 (regTwo!41384 (regTwo!41385 r!14126)))) b!7640514))

(assert (= (and b!7640309 (is-Union!20436 (regTwo!41384 (regTwo!41385 r!14126)))) b!7640515))

(declare-fun b!7640519 () Bool)

(declare-fun e!4541620 () Bool)

(declare-fun tp!2230254 () Bool)

(declare-fun tp!2230256 () Bool)

(assert (=> b!7640519 (= e!4541620 (and tp!2230254 tp!2230256))))

(declare-fun b!7640516 () Bool)

(assert (=> b!7640516 (= e!4541620 tp_is_empty!51227)))

(declare-fun b!7640517 () Bool)

(declare-fun tp!2230257 () Bool)

(declare-fun tp!2230255 () Bool)

(assert (=> b!7640517 (= e!4541620 (and tp!2230257 tp!2230255))))

(declare-fun b!7640518 () Bool)

(declare-fun tp!2230258 () Bool)

(assert (=> b!7640518 (= e!4541620 tp!2230258)))

(assert (=> b!7640323 (= tp!2230151 e!4541620)))

(assert (= (and b!7640323 (is-ElementMatch!20436 (regOne!41385 (regTwo!41384 r!14126)))) b!7640516))

(assert (= (and b!7640323 (is-Concat!29281 (regOne!41385 (regTwo!41384 r!14126)))) b!7640517))

(assert (= (and b!7640323 (is-Star!20436 (regOne!41385 (regTwo!41384 r!14126)))) b!7640518))

(assert (= (and b!7640323 (is-Union!20436 (regOne!41385 (regTwo!41384 r!14126)))) b!7640519))

(declare-fun b!7640523 () Bool)

(declare-fun e!4541621 () Bool)

(declare-fun tp!2230259 () Bool)

(declare-fun tp!2230261 () Bool)

(assert (=> b!7640523 (= e!4541621 (and tp!2230259 tp!2230261))))

(declare-fun b!7640520 () Bool)

(assert (=> b!7640520 (= e!4541621 tp_is_empty!51227)))

(declare-fun b!7640521 () Bool)

(declare-fun tp!2230262 () Bool)

(declare-fun tp!2230260 () Bool)

(assert (=> b!7640521 (= e!4541621 (and tp!2230262 tp!2230260))))

(declare-fun b!7640522 () Bool)

(declare-fun tp!2230263 () Bool)

(assert (=> b!7640522 (= e!4541621 tp!2230263)))

(assert (=> b!7640323 (= tp!2230153 e!4541621)))

(assert (= (and b!7640323 (is-ElementMatch!20436 (regTwo!41385 (regTwo!41384 r!14126)))) b!7640520))

(assert (= (and b!7640323 (is-Concat!29281 (regTwo!41385 (regTwo!41384 r!14126)))) b!7640521))

(assert (= (and b!7640323 (is-Star!20436 (regTwo!41385 (regTwo!41384 r!14126)))) b!7640522))

(assert (= (and b!7640323 (is-Union!20436 (regTwo!41385 (regTwo!41384 r!14126)))) b!7640523))

(declare-fun b!7640527 () Bool)

(declare-fun e!4541622 () Bool)

(declare-fun tp!2230264 () Bool)

(declare-fun tp!2230266 () Bool)

(assert (=> b!7640527 (= e!4541622 (and tp!2230264 tp!2230266))))

(declare-fun b!7640524 () Bool)

(assert (=> b!7640524 (= e!4541622 tp_is_empty!51227)))

(declare-fun b!7640525 () Bool)

(declare-fun tp!2230267 () Bool)

(declare-fun tp!2230265 () Bool)

(assert (=> b!7640525 (= e!4541622 (and tp!2230267 tp!2230265))))

(declare-fun b!7640526 () Bool)

(declare-fun tp!2230268 () Bool)

(assert (=> b!7640526 (= e!4541622 tp!2230268)))

(assert (=> b!7640314 (= tp!2230145 e!4541622)))

(assert (= (and b!7640314 (is-ElementMatch!20436 (reg!20765 (reg!20765 r!14126)))) b!7640524))

(assert (= (and b!7640314 (is-Concat!29281 (reg!20765 (reg!20765 r!14126)))) b!7640525))

(assert (= (and b!7640314 (is-Star!20436 (reg!20765 (reg!20765 r!14126)))) b!7640526))

(assert (= (and b!7640314 (is-Union!20436 (reg!20765 (reg!20765 r!14126)))) b!7640527))

(declare-fun b!7640531 () Bool)

(declare-fun e!4541623 () Bool)

(declare-fun tp!2230269 () Bool)

(declare-fun tp!2230271 () Bool)

(assert (=> b!7640531 (= e!4541623 (and tp!2230269 tp!2230271))))

(declare-fun b!7640528 () Bool)

(assert (=> b!7640528 (= e!4541623 tp_is_empty!51227)))

(declare-fun b!7640529 () Bool)

(declare-fun tp!2230272 () Bool)

(declare-fun tp!2230270 () Bool)

(assert (=> b!7640529 (= e!4541623 (and tp!2230272 tp!2230270))))

(declare-fun b!7640530 () Bool)

(declare-fun tp!2230273 () Bool)

(assert (=> b!7640530 (= e!4541623 tp!2230273)))

(assert (=> b!7640313 (= tp!2230144 e!4541623)))

(assert (= (and b!7640313 (is-ElementMatch!20436 (regOne!41384 (reg!20765 r!14126)))) b!7640528))

(assert (= (and b!7640313 (is-Concat!29281 (regOne!41384 (reg!20765 r!14126)))) b!7640529))

(assert (= (and b!7640313 (is-Star!20436 (regOne!41384 (reg!20765 r!14126)))) b!7640530))

(assert (= (and b!7640313 (is-Union!20436 (regOne!41384 (reg!20765 r!14126)))) b!7640531))

(declare-fun b!7640535 () Bool)

(declare-fun e!4541624 () Bool)

(declare-fun tp!2230274 () Bool)

(declare-fun tp!2230276 () Bool)

(assert (=> b!7640535 (= e!4541624 (and tp!2230274 tp!2230276))))

(declare-fun b!7640532 () Bool)

(assert (=> b!7640532 (= e!4541624 tp_is_empty!51227)))

(declare-fun b!7640533 () Bool)

(declare-fun tp!2230277 () Bool)

(declare-fun tp!2230275 () Bool)

(assert (=> b!7640533 (= e!4541624 (and tp!2230277 tp!2230275))))

(declare-fun b!7640534 () Bool)

(declare-fun tp!2230278 () Bool)

(assert (=> b!7640534 (= e!4541624 tp!2230278)))

(assert (=> b!7640313 (= tp!2230142 e!4541624)))

(assert (= (and b!7640313 (is-ElementMatch!20436 (regTwo!41384 (reg!20765 r!14126)))) b!7640532))

(assert (= (and b!7640313 (is-Concat!29281 (regTwo!41384 (reg!20765 r!14126)))) b!7640533))

(assert (= (and b!7640313 (is-Star!20436 (regTwo!41384 (reg!20765 r!14126)))) b!7640534))

(assert (= (and b!7640313 (is-Union!20436 (regTwo!41384 (reg!20765 r!14126)))) b!7640535))

(declare-fun b!7640539 () Bool)

(declare-fun e!4541625 () Bool)

(declare-fun tp!2230279 () Bool)

(declare-fun tp!2230281 () Bool)

(assert (=> b!7640539 (= e!4541625 (and tp!2230279 tp!2230281))))

(declare-fun b!7640536 () Bool)

(assert (=> b!7640536 (= e!4541625 tp_is_empty!51227)))

(declare-fun b!7640537 () Bool)

(declare-fun tp!2230282 () Bool)

(declare-fun tp!2230280 () Bool)

(assert (=> b!7640537 (= e!4541625 (and tp!2230282 tp!2230280))))

(declare-fun b!7640538 () Bool)

(declare-fun tp!2230283 () Bool)

(assert (=> b!7640538 (= e!4541625 tp!2230283)))

(assert (=> b!7640318 (= tp!2230150 e!4541625)))

(assert (= (and b!7640318 (is-ElementMatch!20436 (reg!20765 (regOne!41384 r!14126)))) b!7640536))

(assert (= (and b!7640318 (is-Concat!29281 (reg!20765 (regOne!41384 r!14126)))) b!7640537))

(assert (= (and b!7640318 (is-Star!20436 (reg!20765 (regOne!41384 r!14126)))) b!7640538))

(assert (= (and b!7640318 (is-Union!20436 (reg!20765 (regOne!41384 r!14126)))) b!7640539))

(declare-fun b!7640543 () Bool)

(declare-fun e!4541626 () Bool)

(declare-fun tp!2230284 () Bool)

(declare-fun tp!2230286 () Bool)

(assert (=> b!7640543 (= e!4541626 (and tp!2230284 tp!2230286))))

(declare-fun b!7640540 () Bool)

(assert (=> b!7640540 (= e!4541626 tp_is_empty!51227)))

(declare-fun b!7640541 () Bool)

(declare-fun tp!2230287 () Bool)

(declare-fun tp!2230285 () Bool)

(assert (=> b!7640541 (= e!4541626 (and tp!2230287 tp!2230285))))

(declare-fun b!7640542 () Bool)

(declare-fun tp!2230288 () Bool)

(assert (=> b!7640542 (= e!4541626 tp!2230288)))

(assert (=> b!7640317 (= tp!2230149 e!4541626)))

(assert (= (and b!7640317 (is-ElementMatch!20436 (regOne!41384 (regOne!41384 r!14126)))) b!7640540))

(assert (= (and b!7640317 (is-Concat!29281 (regOne!41384 (regOne!41384 r!14126)))) b!7640541))

(assert (= (and b!7640317 (is-Star!20436 (regOne!41384 (regOne!41384 r!14126)))) b!7640542))

(assert (= (and b!7640317 (is-Union!20436 (regOne!41384 (regOne!41384 r!14126)))) b!7640543))

(declare-fun b!7640547 () Bool)

(declare-fun e!4541627 () Bool)

(declare-fun tp!2230289 () Bool)

(declare-fun tp!2230291 () Bool)

(assert (=> b!7640547 (= e!4541627 (and tp!2230289 tp!2230291))))

(declare-fun b!7640544 () Bool)

(assert (=> b!7640544 (= e!4541627 tp_is_empty!51227)))

(declare-fun b!7640545 () Bool)

(declare-fun tp!2230292 () Bool)

(declare-fun tp!2230290 () Bool)

(assert (=> b!7640545 (= e!4541627 (and tp!2230292 tp!2230290))))

(declare-fun b!7640546 () Bool)

(declare-fun tp!2230293 () Bool)

(assert (=> b!7640546 (= e!4541627 tp!2230293)))

(assert (=> b!7640317 (= tp!2230147 e!4541627)))

(assert (= (and b!7640317 (is-ElementMatch!20436 (regTwo!41384 (regOne!41384 r!14126)))) b!7640544))

(assert (= (and b!7640317 (is-Concat!29281 (regTwo!41384 (regOne!41384 r!14126)))) b!7640545))

(assert (= (and b!7640317 (is-Star!20436 (regTwo!41384 (regOne!41384 r!14126)))) b!7640546))

(assert (= (and b!7640317 (is-Union!20436 (regTwo!41384 (regOne!41384 r!14126)))) b!7640547))

(declare-fun b!7640548 () Bool)

(declare-fun e!4541628 () Bool)

(declare-fun tp!2230294 () Bool)

(assert (=> b!7640548 (= e!4541628 (and tp_is_empty!51227 tp!2230294))))

(assert (=> b!7640293 (= tp!2230120 e!4541628)))

(assert (= (and b!7640293 (is-Cons!73163 (t!388022 (t!388022 s!9605)))) b!7640548))

(declare-fun b!7640552 () Bool)

(declare-fun e!4541629 () Bool)

(declare-fun tp!2230295 () Bool)

(declare-fun tp!2230297 () Bool)

(assert (=> b!7640552 (= e!4541629 (and tp!2230295 tp!2230297))))

(declare-fun b!7640549 () Bool)

(assert (=> b!7640549 (= e!4541629 tp_is_empty!51227)))

(declare-fun b!7640550 () Bool)

(declare-fun tp!2230298 () Bool)

(declare-fun tp!2230296 () Bool)

(assert (=> b!7640550 (= e!4541629 (and tp!2230298 tp!2230296))))

(declare-fun b!7640551 () Bool)

(declare-fun tp!2230299 () Bool)

(assert (=> b!7640551 (= e!4541629 tp!2230299)))

(assert (=> b!7640322 (= tp!2230155 e!4541629)))

(assert (= (and b!7640322 (is-ElementMatch!20436 (reg!20765 (regTwo!41384 r!14126)))) b!7640549))

(assert (= (and b!7640322 (is-Concat!29281 (reg!20765 (regTwo!41384 r!14126)))) b!7640550))

(assert (= (and b!7640322 (is-Star!20436 (reg!20765 (regTwo!41384 r!14126)))) b!7640551))

(assert (= (and b!7640322 (is-Union!20436 (reg!20765 (regTwo!41384 r!14126)))) b!7640552))

(declare-fun b!7640556 () Bool)

(declare-fun e!4541630 () Bool)

(declare-fun tp!2230300 () Bool)

(declare-fun tp!2230302 () Bool)

(assert (=> b!7640556 (= e!4541630 (and tp!2230300 tp!2230302))))

(declare-fun b!7640553 () Bool)

(assert (=> b!7640553 (= e!4541630 tp_is_empty!51227)))

(declare-fun b!7640554 () Bool)

(declare-fun tp!2230303 () Bool)

(declare-fun tp!2230301 () Bool)

(assert (=> b!7640554 (= e!4541630 (and tp!2230303 tp!2230301))))

(declare-fun b!7640555 () Bool)

(declare-fun tp!2230304 () Bool)

(assert (=> b!7640555 (= e!4541630 tp!2230304)))

(assert (=> b!7640321 (= tp!2230154 e!4541630)))

(assert (= (and b!7640321 (is-ElementMatch!20436 (regOne!41384 (regTwo!41384 r!14126)))) b!7640553))

(assert (= (and b!7640321 (is-Concat!29281 (regOne!41384 (regTwo!41384 r!14126)))) b!7640554))

(assert (= (and b!7640321 (is-Star!20436 (regOne!41384 (regTwo!41384 r!14126)))) b!7640555))

(assert (= (and b!7640321 (is-Union!20436 (regOne!41384 (regTwo!41384 r!14126)))) b!7640556))

(declare-fun b!7640560 () Bool)

(declare-fun e!4541631 () Bool)

(declare-fun tp!2230305 () Bool)

(declare-fun tp!2230307 () Bool)

(assert (=> b!7640560 (= e!4541631 (and tp!2230305 tp!2230307))))

(declare-fun b!7640557 () Bool)

(assert (=> b!7640557 (= e!4541631 tp_is_empty!51227)))

(declare-fun b!7640558 () Bool)

(declare-fun tp!2230308 () Bool)

(declare-fun tp!2230306 () Bool)

(assert (=> b!7640558 (= e!4541631 (and tp!2230308 tp!2230306))))

(declare-fun b!7640559 () Bool)

(declare-fun tp!2230309 () Bool)

(assert (=> b!7640559 (= e!4541631 tp!2230309)))

(assert (=> b!7640321 (= tp!2230152 e!4541631)))

(assert (= (and b!7640321 (is-ElementMatch!20436 (regTwo!41384 (regTwo!41384 r!14126)))) b!7640557))

(assert (= (and b!7640321 (is-Concat!29281 (regTwo!41384 (regTwo!41384 r!14126)))) b!7640558))

(assert (= (and b!7640321 (is-Star!20436 (regTwo!41384 (regTwo!41384 r!14126)))) b!7640559))

(assert (= (and b!7640321 (is-Union!20436 (regTwo!41384 (regTwo!41384 r!14126)))) b!7640560))

(declare-fun b!7640564 () Bool)

(declare-fun e!4541632 () Bool)

(declare-fun tp!2230310 () Bool)

(declare-fun tp!2230312 () Bool)

(assert (=> b!7640564 (= e!4541632 (and tp!2230310 tp!2230312))))

(declare-fun b!7640561 () Bool)

(assert (=> b!7640561 (= e!4541632 tp_is_empty!51227)))

(declare-fun b!7640562 () Bool)

(declare-fun tp!2230313 () Bool)

(declare-fun tp!2230311 () Bool)

(assert (=> b!7640562 (= e!4541632 (and tp!2230313 tp!2230311))))

(declare-fun b!7640563 () Bool)

(declare-fun tp!2230314 () Bool)

(assert (=> b!7640563 (= e!4541632 tp!2230314)))

(assert (=> b!7640307 (= tp!2230131 e!4541632)))

(assert (= (and b!7640307 (is-ElementMatch!20436 (regOne!41385 (regOne!41385 r!14126)))) b!7640561))

(assert (= (and b!7640307 (is-Concat!29281 (regOne!41385 (regOne!41385 r!14126)))) b!7640562))

(assert (= (and b!7640307 (is-Star!20436 (regOne!41385 (regOne!41385 r!14126)))) b!7640563))

(assert (= (and b!7640307 (is-Union!20436 (regOne!41385 (regOne!41385 r!14126)))) b!7640564))

(declare-fun b!7640568 () Bool)

(declare-fun e!4541633 () Bool)

(declare-fun tp!2230315 () Bool)

(declare-fun tp!2230317 () Bool)

(assert (=> b!7640568 (= e!4541633 (and tp!2230315 tp!2230317))))

(declare-fun b!7640565 () Bool)

(assert (=> b!7640565 (= e!4541633 tp_is_empty!51227)))

(declare-fun b!7640566 () Bool)

(declare-fun tp!2230318 () Bool)

(declare-fun tp!2230316 () Bool)

(assert (=> b!7640566 (= e!4541633 (and tp!2230318 tp!2230316))))

(declare-fun b!7640567 () Bool)

(declare-fun tp!2230319 () Bool)

(assert (=> b!7640567 (= e!4541633 tp!2230319)))

(assert (=> b!7640307 (= tp!2230133 e!4541633)))

(assert (= (and b!7640307 (is-ElementMatch!20436 (regTwo!41385 (regOne!41385 r!14126)))) b!7640565))

(assert (= (and b!7640307 (is-Concat!29281 (regTwo!41385 (regOne!41385 r!14126)))) b!7640566))

(assert (= (and b!7640307 (is-Star!20436 (regTwo!41385 (regOne!41385 r!14126)))) b!7640567))

(assert (= (and b!7640307 (is-Union!20436 (regTwo!41385 (regOne!41385 r!14126)))) b!7640568))

(push 1)

(assert (not b!7640440))

(assert (not b!7640535))

(assert (not b!7640537))

(assert (not b!7640527))

(assert (not b!7640495))

(assert (not b!7640469))

(assert (not b!7640507))

(assert (not b!7640511))

(assert (not b!7640453))

(assert (not b!7640389))

(assert (not bm!701269))

(assert (not b!7640523))

(assert (not b!7640502))

(assert (not b!7640475))

(assert (not b!7640483))

(assert (not b!7640550))

(assert (not b!7640519))

(assert (not b!7640474))

(assert (not bm!701256))

(assert (not b!7640498))

(assert (not b!7640503))

(assert (not b!7640478))

(assert (not b!7640408))

(assert (not b!7640506))

(assert (not b!7640460))

(assert (not b!7640546))

(assert (not b!7640405))

(assert (not bm!701275))

(assert (not b!7640564))

(assert (not b!7640493))

(assert (not bm!701270))

(assert (not b!7640518))

(assert (not b!7640479))

(assert (not b!7640404))

(assert (not d!2325118))

(assert (not b!7640525))

(assert (not b!7640482))

(assert (not b!7640567))

(assert (not d!2325116))

(assert (not b!7640556))

(assert (not b!7640552))

(assert (not b!7640514))

(assert (not b!7640542))

(assert (not b!7640485))

(assert (not b!7640539))

(assert (not b!7640529))

(assert (not b!7640486))

(assert (not b!7640547))

(assert (not b!7640494))

(assert (not b!7640558))

(assert (not b!7640521))

(assert (not b!7640406))

(assert (not b!7640559))

(assert (not b!7640554))

(assert (not b!7640399))

(assert (not bm!701272))

(assert (not b!7640481))

(assert (not b!7640491))

(assert (not bm!701255))

(assert (not b!7640452))

(assert (not b!7640522))

(assert (not b!7640555))

(assert (not b!7640538))

(assert (not b!7640398))

(assert (not b!7640497))

(assert (not bm!701254))

(assert tp_is_empty!51227)

(assert (not bm!701274))

(assert (not b!7640499))

(assert (not b!7640487))

(assert (not b!7640563))

(assert (not b!7640530))

(assert (not b!7640388))

(assert (not b!7640543))

(assert (not bm!701265))

(assert (not b!7640490))

(assert (not b!7640551))

(assert (not b!7640477))

(assert (not b!7640501))

(assert (not b!7640517))

(assert (not d!2325120))

(assert (not b!7640531))

(assert (not b!7640534))

(assert (not b!7640526))

(assert (not bm!701268))

(assert (not b!7640568))

(assert (not b!7640505))

(assert (not b!7640489))

(assert (not b!7640470))

(assert (not bm!701273))

(assert (not b!7640515))

(assert (not b!7640510))

(assert (not b!7640562))

(assert (not d!2325122))

(assert (not b!7640566))

(assert (not b!7640509))

(assert (not b!7640545))

(assert (not b!7640473))

(assert (not b!7640533))

(assert (not b!7640471))

(assert (not b!7640513))

(assert (not b!7640560))

(assert (not b!7640541))

(assert (not b!7640548))

(assert (not b!7640438))

(assert (not d!2325126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

