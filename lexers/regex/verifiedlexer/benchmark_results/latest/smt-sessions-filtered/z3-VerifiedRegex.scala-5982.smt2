; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292860 () Bool)

(assert start!292860)

(declare-fun b!3071213 () Bool)

(declare-fun e!1922094 () Bool)

(declare-fun tp!968892 () Bool)

(declare-fun tp!968896 () Bool)

(assert (=> b!3071213 (= e!1922094 (and tp!968892 tp!968896))))

(declare-fun b!3071214 () Bool)

(declare-fun res!1260424 () Bool)

(declare-fun e!1922092 () Bool)

(assert (=> b!3071214 (=> res!1260424 e!1922092)))

(declare-datatypes ((C!19216 0))(
  ( (C!19217 (val!11644 Int)) )
))
(declare-datatypes ((Regex!9515 0))(
  ( (ElementMatch!9515 (c!510651 C!19216)) (Concat!14836 (regOne!19542 Regex!9515) (regTwo!19542 Regex!9515)) (EmptyExpr!9515) (Star!9515 (reg!9844 Regex!9515)) (EmptyLang!9515) (Union!9515 (regOne!19543 Regex!9515) (regTwo!19543 Regex!9515)) )
))
(declare-fun lt!1051596 () Regex!9515)

(declare-fun isEmptyLang!566 (Regex!9515) Bool)

(assert (=> b!3071214 (= res!1260424 (isEmptyLang!566 lt!1051596))))

(declare-fun b!3071215 () Bool)

(declare-fun e!1922096 () Bool)

(declare-datatypes ((List!35380 0))(
  ( (Nil!35256) (Cons!35256 (h!40676 C!19216) (t!234445 List!35380)) )
))
(declare-fun s!11993 () List!35380)

(declare-fun ++!8466 (List!35380 List!35380) List!35380)

(assert (=> b!3071215 (= e!1922096 (= (++!8466 s!11993 Nil!35256) s!11993))))

(declare-fun b!3071216 () Bool)

(declare-fun res!1260422 () Bool)

(assert (=> b!3071216 (=> res!1260422 e!1922092)))

(declare-fun isEmptyExpr!572 (Regex!9515) Bool)

(assert (=> b!3071216 (= res!1260422 (not (isEmptyExpr!572 lt!1051596)))))

(declare-fun b!3071217 () Bool)

(declare-fun e!1922093 () Bool)

(assert (=> b!3071217 (= e!1922093 e!1922092)))

(declare-fun res!1260425 () Bool)

(assert (=> b!3071217 (=> res!1260425 e!1922092)))

(declare-fun lt!1051600 () Regex!9515)

(assert (=> b!3071217 (= res!1260425 (isEmptyLang!566 lt!1051600))))

(declare-fun r!17423 () Regex!9515)

(declare-fun simplify!470 (Regex!9515) Regex!9515)

(assert (=> b!3071217 (= lt!1051596 (simplify!470 (regTwo!19542 r!17423)))))

(assert (=> b!3071217 (= lt!1051600 (simplify!470 (regOne!19542 r!17423)))))

(declare-fun b!3071218 () Bool)

(declare-fun res!1260427 () Bool)

(assert (=> b!3071218 (=> res!1260427 e!1922096)))

(declare-fun validRegex!4248 (Regex!9515) Bool)

(assert (=> b!3071218 (= res!1260427 (not (validRegex!4248 (regOne!19542 r!17423))))))

(declare-fun res!1260423 () Bool)

(declare-fun e!1922097 () Bool)

(assert (=> start!292860 (=> (not res!1260423) (not e!1922097))))

(assert (=> start!292860 (= res!1260423 (validRegex!4248 r!17423))))

(assert (=> start!292860 e!1922097))

(assert (=> start!292860 e!1922094))

(declare-fun e!1922095 () Bool)

(assert (=> start!292860 e!1922095))

(declare-fun b!3071219 () Bool)

(declare-fun tp!968894 () Bool)

(declare-fun tp!968895 () Bool)

(assert (=> b!3071219 (= e!1922094 (and tp!968894 tp!968895))))

(declare-fun b!3071220 () Bool)

(declare-fun tp_is_empty!16593 () Bool)

(declare-fun tp!968897 () Bool)

(assert (=> b!3071220 (= e!1922095 (and tp_is_empty!16593 tp!968897))))

(declare-fun b!3071221 () Bool)

(declare-fun res!1260430 () Bool)

(assert (=> b!3071221 (=> res!1260430 e!1922092)))

(assert (=> b!3071221 (= res!1260430 (isEmptyExpr!572 lt!1051600))))

(declare-fun b!3071222 () Bool)

(assert (=> b!3071222 (= e!1922094 tp_is_empty!16593)))

(declare-fun b!3071223 () Bool)

(declare-fun res!1260426 () Bool)

(assert (=> b!3071223 (=> res!1260426 e!1922093)))

(declare-fun isEmpty!19581 (List!35380) Bool)

(assert (=> b!3071223 (= res!1260426 (isEmpty!19581 s!11993))))

(declare-fun b!3071224 () Bool)

(declare-fun tp!968893 () Bool)

(assert (=> b!3071224 (= e!1922094 tp!968893)))

(declare-fun b!3071225 () Bool)

(assert (=> b!3071225 (= e!1922092 e!1922096)))

(declare-fun res!1260421 () Bool)

(assert (=> b!3071225 (=> res!1260421 e!1922096)))

(declare-fun lt!1051595 () Bool)

(assert (=> b!3071225 (= res!1260421 (not lt!1051595))))

(declare-fun matchR!4397 (Regex!9515 List!35380) Bool)

(assert (=> b!3071225 (= (matchR!4397 (regTwo!19542 r!17423) Nil!35256) (matchR!4397 lt!1051596 Nil!35256))))

(declare-datatypes ((Unit!49469 0))(
  ( (Unit!49470) )
))
(declare-fun lt!1051599 () Unit!49469)

(declare-fun lemmaSimplifySound!296 (Regex!9515 List!35380) Unit!49469)

(assert (=> b!3071225 (= lt!1051599 (lemmaSimplifySound!296 (regTwo!19542 r!17423) Nil!35256))))

(assert (=> b!3071225 (= lt!1051595 (matchR!4397 lt!1051600 s!11993))))

(assert (=> b!3071225 (= lt!1051595 (matchR!4397 (regOne!19542 r!17423) s!11993))))

(declare-fun lt!1051598 () Unit!49469)

(assert (=> b!3071225 (= lt!1051598 (lemmaSimplifySound!296 (regOne!19542 r!17423) s!11993))))

(declare-fun b!3071226 () Bool)

(assert (=> b!3071226 (= e!1922097 (not e!1922093))))

(declare-fun res!1260428 () Bool)

(assert (=> b!3071226 (=> res!1260428 e!1922093)))

(declare-fun lt!1051597 () Bool)

(get-info :version)

(assert (=> b!3071226 (= res!1260428 (or lt!1051597 (not ((_ is Concat!14836) r!17423))))))

(declare-fun matchRSpec!1652 (Regex!9515 List!35380) Bool)

(assert (=> b!3071226 (= lt!1051597 (matchRSpec!1652 r!17423 s!11993))))

(assert (=> b!3071226 (= lt!1051597 (matchR!4397 r!17423 s!11993))))

(declare-fun lt!1051594 () Unit!49469)

(declare-fun mainMatchTheorem!1652 (Regex!9515 List!35380) Unit!49469)

(assert (=> b!3071226 (= lt!1051594 (mainMatchTheorem!1652 r!17423 s!11993))))

(declare-fun b!3071227 () Bool)

(declare-fun res!1260429 () Bool)

(assert (=> b!3071227 (=> res!1260429 e!1922096)))

(assert (=> b!3071227 (= res!1260429 (not (validRegex!4248 (regTwo!19542 r!17423))))))

(assert (= (and start!292860 res!1260423) b!3071226))

(assert (= (and b!3071226 (not res!1260428)) b!3071223))

(assert (= (and b!3071223 (not res!1260426)) b!3071217))

(assert (= (and b!3071217 (not res!1260425)) b!3071214))

(assert (= (and b!3071214 (not res!1260424)) b!3071221))

(assert (= (and b!3071221 (not res!1260430)) b!3071216))

(assert (= (and b!3071216 (not res!1260422)) b!3071225))

(assert (= (and b!3071225 (not res!1260421)) b!3071218))

(assert (= (and b!3071218 (not res!1260427)) b!3071227))

(assert (= (and b!3071227 (not res!1260429)) b!3071215))

(assert (= (and start!292860 ((_ is ElementMatch!9515) r!17423)) b!3071222))

(assert (= (and start!292860 ((_ is Concat!14836) r!17423)) b!3071219))

(assert (= (and start!292860 ((_ is Star!9515) r!17423)) b!3071224))

(assert (= (and start!292860 ((_ is Union!9515) r!17423)) b!3071213))

(assert (= (and start!292860 ((_ is Cons!35256) s!11993)) b!3071220))

(declare-fun m!3385677 () Bool)

(assert (=> b!3071214 m!3385677))

(declare-fun m!3385679 () Bool)

(assert (=> b!3071227 m!3385679))

(declare-fun m!3385681 () Bool)

(assert (=> b!3071223 m!3385681))

(declare-fun m!3385683 () Bool)

(assert (=> start!292860 m!3385683))

(declare-fun m!3385685 () Bool)

(assert (=> b!3071225 m!3385685))

(declare-fun m!3385687 () Bool)

(assert (=> b!3071225 m!3385687))

(declare-fun m!3385689 () Bool)

(assert (=> b!3071225 m!3385689))

(declare-fun m!3385691 () Bool)

(assert (=> b!3071225 m!3385691))

(declare-fun m!3385693 () Bool)

(assert (=> b!3071225 m!3385693))

(declare-fun m!3385695 () Bool)

(assert (=> b!3071225 m!3385695))

(declare-fun m!3385697 () Bool)

(assert (=> b!3071226 m!3385697))

(declare-fun m!3385699 () Bool)

(assert (=> b!3071226 m!3385699))

(declare-fun m!3385701 () Bool)

(assert (=> b!3071226 m!3385701))

(declare-fun m!3385703 () Bool)

(assert (=> b!3071215 m!3385703))

(declare-fun m!3385705 () Bool)

(assert (=> b!3071217 m!3385705))

(declare-fun m!3385707 () Bool)

(assert (=> b!3071217 m!3385707))

(declare-fun m!3385709 () Bool)

(assert (=> b!3071217 m!3385709))

(declare-fun m!3385711 () Bool)

(assert (=> b!3071221 m!3385711))

(declare-fun m!3385713 () Bool)

(assert (=> b!3071216 m!3385713))

(declare-fun m!3385715 () Bool)

(assert (=> b!3071218 m!3385715))

(check-sat (not b!3071221) (not b!3071220) (not b!3071224) (not b!3071214) (not b!3071215) (not b!3071226) (not b!3071227) (not b!3071223) (not start!292860) (not b!3071216) (not b!3071225) (not b!3071219) (not b!3071217) (not b!3071213) (not b!3071218) tp_is_empty!16593)
(check-sat)
(get-model)

(declare-fun d!856263 () Bool)

(assert (=> d!856263 (= (isEmptyLang!566 lt!1051596) ((_ is EmptyLang!9515) lt!1051596))))

(assert (=> b!3071214 d!856263))

(declare-fun d!856265 () Bool)

(assert (=> d!856265 (= (matchR!4397 (regTwo!19542 r!17423) Nil!35256) (matchR!4397 (simplify!470 (regTwo!19542 r!17423)) Nil!35256))))

(declare-fun lt!1051606 () Unit!49469)

(declare-fun choose!18199 (Regex!9515 List!35380) Unit!49469)

(assert (=> d!856265 (= lt!1051606 (choose!18199 (regTwo!19542 r!17423) Nil!35256))))

(assert (=> d!856265 (validRegex!4248 (regTwo!19542 r!17423))))

(assert (=> d!856265 (= (lemmaSimplifySound!296 (regTwo!19542 r!17423) Nil!35256) lt!1051606)))

(declare-fun bs!532654 () Bool)

(assert (= bs!532654 d!856265))

(declare-fun m!3385717 () Bool)

(assert (=> bs!532654 m!3385717))

(assert (=> bs!532654 m!3385707))

(declare-fun m!3385721 () Bool)

(assert (=> bs!532654 m!3385721))

(assert (=> bs!532654 m!3385679))

(assert (=> bs!532654 m!3385707))

(assert (=> bs!532654 m!3385693))

(assert (=> b!3071225 d!856265))

(declare-fun d!856267 () Bool)

(assert (=> d!856267 (= (matchR!4397 (regOne!19542 r!17423) s!11993) (matchR!4397 (simplify!470 (regOne!19542 r!17423)) s!11993))))

(declare-fun lt!1051607 () Unit!49469)

(assert (=> d!856267 (= lt!1051607 (choose!18199 (regOne!19542 r!17423) s!11993))))

(assert (=> d!856267 (validRegex!4248 (regOne!19542 r!17423))))

(assert (=> d!856267 (= (lemmaSimplifySound!296 (regOne!19542 r!17423) s!11993) lt!1051607)))

(declare-fun bs!532655 () Bool)

(assert (= bs!532655 d!856267))

(declare-fun m!3385735 () Bool)

(assert (=> bs!532655 m!3385735))

(assert (=> bs!532655 m!3385709))

(declare-fun m!3385737 () Bool)

(assert (=> bs!532655 m!3385737))

(assert (=> bs!532655 m!3385715))

(assert (=> bs!532655 m!3385709))

(assert (=> bs!532655 m!3385687))

(assert (=> b!3071225 d!856267))

(declare-fun b!3071295 () Bool)

(declare-fun e!1922139 () Bool)

(declare-fun e!1922142 () Bool)

(assert (=> b!3071295 (= e!1922139 e!1922142)))

(declare-fun c!510667 () Bool)

(assert (=> b!3071295 (= c!510667 ((_ is EmptyLang!9515) (regTwo!19542 r!17423)))))

(declare-fun b!3071296 () Bool)

(declare-fun res!1260469 () Bool)

(declare-fun e!1922145 () Bool)

(assert (=> b!3071296 (=> (not res!1260469) (not e!1922145))))

(declare-fun call!213306 () Bool)

(assert (=> b!3071296 (= res!1260469 (not call!213306))))

(declare-fun b!3071297 () Bool)

(declare-fun res!1260472 () Bool)

(declare-fun e!1922141 () Bool)

(assert (=> b!3071297 (=> res!1260472 e!1922141)))

(assert (=> b!3071297 (= res!1260472 e!1922145)))

(declare-fun res!1260473 () Bool)

(assert (=> b!3071297 (=> (not res!1260473) (not e!1922145))))

(declare-fun lt!1051610 () Bool)

(assert (=> b!3071297 (= res!1260473 lt!1051610)))

(declare-fun d!856271 () Bool)

(assert (=> d!856271 e!1922139))

(declare-fun c!510669 () Bool)

(assert (=> d!856271 (= c!510669 ((_ is EmptyExpr!9515) (regTwo!19542 r!17423)))))

(declare-fun e!1922144 () Bool)

(assert (=> d!856271 (= lt!1051610 e!1922144)))

(declare-fun c!510668 () Bool)

(assert (=> d!856271 (= c!510668 (isEmpty!19581 Nil!35256))))

(assert (=> d!856271 (validRegex!4248 (regTwo!19542 r!17423))))

(assert (=> d!856271 (= (matchR!4397 (regTwo!19542 r!17423) Nil!35256) lt!1051610)))

(declare-fun bm!213301 () Bool)

(assert (=> bm!213301 (= call!213306 (isEmpty!19581 Nil!35256))))

(declare-fun b!3071298 () Bool)

(declare-fun e!1922143 () Bool)

(declare-fun head!6816 (List!35380) C!19216)

(assert (=> b!3071298 (= e!1922143 (not (= (head!6816 Nil!35256) (c!510651 (regTwo!19542 r!17423)))))))

(declare-fun b!3071299 () Bool)

(declare-fun derivativeStep!2757 (Regex!9515 C!19216) Regex!9515)

(declare-fun tail!5042 (List!35380) List!35380)

(assert (=> b!3071299 (= e!1922144 (matchR!4397 (derivativeStep!2757 (regTwo!19542 r!17423) (head!6816 Nil!35256)) (tail!5042 Nil!35256)))))

(declare-fun b!3071300 () Bool)

(assert (=> b!3071300 (= e!1922145 (= (head!6816 Nil!35256) (c!510651 (regTwo!19542 r!17423))))))

(declare-fun b!3071301 () Bool)

(declare-fun res!1260468 () Bool)

(assert (=> b!3071301 (=> (not res!1260468) (not e!1922145))))

(assert (=> b!3071301 (= res!1260468 (isEmpty!19581 (tail!5042 Nil!35256)))))

(declare-fun b!3071302 () Bool)

(declare-fun e!1922140 () Bool)

(assert (=> b!3071302 (= e!1922140 e!1922143)))

(declare-fun res!1260475 () Bool)

(assert (=> b!3071302 (=> res!1260475 e!1922143)))

(assert (=> b!3071302 (= res!1260475 call!213306)))

(declare-fun b!3071303 () Bool)

(declare-fun res!1260471 () Bool)

(assert (=> b!3071303 (=> res!1260471 e!1922141)))

(assert (=> b!3071303 (= res!1260471 (not ((_ is ElementMatch!9515) (regTwo!19542 r!17423))))))

(assert (=> b!3071303 (= e!1922142 e!1922141)))

(declare-fun b!3071304 () Bool)

(assert (=> b!3071304 (= e!1922142 (not lt!1051610))))

(declare-fun b!3071305 () Bool)

(declare-fun res!1260470 () Bool)

(assert (=> b!3071305 (=> res!1260470 e!1922143)))

(assert (=> b!3071305 (= res!1260470 (not (isEmpty!19581 (tail!5042 Nil!35256))))))

(declare-fun b!3071306 () Bool)

(declare-fun nullable!3161 (Regex!9515) Bool)

(assert (=> b!3071306 (= e!1922144 (nullable!3161 (regTwo!19542 r!17423)))))

(declare-fun b!3071307 () Bool)

(assert (=> b!3071307 (= e!1922141 e!1922140)))

(declare-fun res!1260474 () Bool)

(assert (=> b!3071307 (=> (not res!1260474) (not e!1922140))))

(assert (=> b!3071307 (= res!1260474 (not lt!1051610))))

(declare-fun b!3071308 () Bool)

(assert (=> b!3071308 (= e!1922139 (= lt!1051610 call!213306))))

(assert (= (and d!856271 c!510668) b!3071306))

(assert (= (and d!856271 (not c!510668)) b!3071299))

(assert (= (and d!856271 c!510669) b!3071308))

(assert (= (and d!856271 (not c!510669)) b!3071295))

(assert (= (and b!3071295 c!510667) b!3071304))

(assert (= (and b!3071295 (not c!510667)) b!3071303))

(assert (= (and b!3071303 (not res!1260471)) b!3071297))

(assert (= (and b!3071297 res!1260473) b!3071296))

(assert (= (and b!3071296 res!1260469) b!3071301))

(assert (= (and b!3071301 res!1260468) b!3071300))

(assert (= (and b!3071297 (not res!1260472)) b!3071307))

(assert (= (and b!3071307 res!1260474) b!3071302))

(assert (= (and b!3071302 (not res!1260475)) b!3071305))

(assert (= (and b!3071305 (not res!1260470)) b!3071298))

(assert (= (or b!3071308 b!3071296 b!3071302) bm!213301))

(declare-fun m!3385745 () Bool)

(assert (=> b!3071299 m!3385745))

(assert (=> b!3071299 m!3385745))

(declare-fun m!3385747 () Bool)

(assert (=> b!3071299 m!3385747))

(declare-fun m!3385749 () Bool)

(assert (=> b!3071299 m!3385749))

(assert (=> b!3071299 m!3385747))

(assert (=> b!3071299 m!3385749))

(declare-fun m!3385751 () Bool)

(assert (=> b!3071299 m!3385751))

(assert (=> b!3071300 m!3385745))

(assert (=> b!3071301 m!3385749))

(assert (=> b!3071301 m!3385749))

(declare-fun m!3385753 () Bool)

(assert (=> b!3071301 m!3385753))

(assert (=> b!3071305 m!3385749))

(assert (=> b!3071305 m!3385749))

(assert (=> b!3071305 m!3385753))

(assert (=> b!3071298 m!3385745))

(declare-fun m!3385755 () Bool)

(assert (=> b!3071306 m!3385755))

(declare-fun m!3385757 () Bool)

(assert (=> bm!213301 m!3385757))

(assert (=> d!856271 m!3385757))

(assert (=> d!856271 m!3385679))

(assert (=> b!3071225 d!856271))

(declare-fun b!3071313 () Bool)

(declare-fun e!1922148 () Bool)

(declare-fun e!1922151 () Bool)

(assert (=> b!3071313 (= e!1922148 e!1922151)))

(declare-fun c!510672 () Bool)

(assert (=> b!3071313 (= c!510672 ((_ is EmptyLang!9515) lt!1051600))))

(declare-fun b!3071314 () Bool)

(declare-fun res!1260477 () Bool)

(declare-fun e!1922154 () Bool)

(assert (=> b!3071314 (=> (not res!1260477) (not e!1922154))))

(declare-fun call!213307 () Bool)

(assert (=> b!3071314 (= res!1260477 (not call!213307))))

(declare-fun b!3071315 () Bool)

(declare-fun res!1260480 () Bool)

(declare-fun e!1922150 () Bool)

(assert (=> b!3071315 (=> res!1260480 e!1922150)))

(assert (=> b!3071315 (= res!1260480 e!1922154)))

(declare-fun res!1260481 () Bool)

(assert (=> b!3071315 (=> (not res!1260481) (not e!1922154))))

(declare-fun lt!1051611 () Bool)

(assert (=> b!3071315 (= res!1260481 lt!1051611)))

(declare-fun d!856277 () Bool)

(assert (=> d!856277 e!1922148))

(declare-fun c!510674 () Bool)

(assert (=> d!856277 (= c!510674 ((_ is EmptyExpr!9515) lt!1051600))))

(declare-fun e!1922153 () Bool)

(assert (=> d!856277 (= lt!1051611 e!1922153)))

(declare-fun c!510673 () Bool)

(assert (=> d!856277 (= c!510673 (isEmpty!19581 s!11993))))

(assert (=> d!856277 (validRegex!4248 lt!1051600)))

(assert (=> d!856277 (= (matchR!4397 lt!1051600 s!11993) lt!1051611)))

(declare-fun bm!213302 () Bool)

(assert (=> bm!213302 (= call!213307 (isEmpty!19581 s!11993))))

(declare-fun b!3071316 () Bool)

(declare-fun e!1922152 () Bool)

(assert (=> b!3071316 (= e!1922152 (not (= (head!6816 s!11993) (c!510651 lt!1051600))))))

(declare-fun b!3071317 () Bool)

(assert (=> b!3071317 (= e!1922153 (matchR!4397 (derivativeStep!2757 lt!1051600 (head!6816 s!11993)) (tail!5042 s!11993)))))

(declare-fun b!3071318 () Bool)

(assert (=> b!3071318 (= e!1922154 (= (head!6816 s!11993) (c!510651 lt!1051600)))))

(declare-fun b!3071319 () Bool)

(declare-fun res!1260476 () Bool)

(assert (=> b!3071319 (=> (not res!1260476) (not e!1922154))))

(assert (=> b!3071319 (= res!1260476 (isEmpty!19581 (tail!5042 s!11993)))))

(declare-fun b!3071320 () Bool)

(declare-fun e!1922149 () Bool)

(assert (=> b!3071320 (= e!1922149 e!1922152)))

(declare-fun res!1260483 () Bool)

(assert (=> b!3071320 (=> res!1260483 e!1922152)))

(assert (=> b!3071320 (= res!1260483 call!213307)))

(declare-fun b!3071321 () Bool)

(declare-fun res!1260479 () Bool)

(assert (=> b!3071321 (=> res!1260479 e!1922150)))

(assert (=> b!3071321 (= res!1260479 (not ((_ is ElementMatch!9515) lt!1051600)))))

(assert (=> b!3071321 (= e!1922151 e!1922150)))

(declare-fun b!3071322 () Bool)

(assert (=> b!3071322 (= e!1922151 (not lt!1051611))))

(declare-fun b!3071323 () Bool)

(declare-fun res!1260478 () Bool)

(assert (=> b!3071323 (=> res!1260478 e!1922152)))

(assert (=> b!3071323 (= res!1260478 (not (isEmpty!19581 (tail!5042 s!11993))))))

(declare-fun b!3071324 () Bool)

(assert (=> b!3071324 (= e!1922153 (nullable!3161 lt!1051600))))

(declare-fun b!3071325 () Bool)

(assert (=> b!3071325 (= e!1922150 e!1922149)))

(declare-fun res!1260482 () Bool)

(assert (=> b!3071325 (=> (not res!1260482) (not e!1922149))))

(assert (=> b!3071325 (= res!1260482 (not lt!1051611))))

(declare-fun b!3071326 () Bool)

(assert (=> b!3071326 (= e!1922148 (= lt!1051611 call!213307))))

(assert (= (and d!856277 c!510673) b!3071324))

(assert (= (and d!856277 (not c!510673)) b!3071317))

(assert (= (and d!856277 c!510674) b!3071326))

(assert (= (and d!856277 (not c!510674)) b!3071313))

(assert (= (and b!3071313 c!510672) b!3071322))

(assert (= (and b!3071313 (not c!510672)) b!3071321))

(assert (= (and b!3071321 (not res!1260479)) b!3071315))

(assert (= (and b!3071315 res!1260481) b!3071314))

(assert (= (and b!3071314 res!1260477) b!3071319))

(assert (= (and b!3071319 res!1260476) b!3071318))

(assert (= (and b!3071315 (not res!1260480)) b!3071325))

(assert (= (and b!3071325 res!1260482) b!3071320))

(assert (= (and b!3071320 (not res!1260483)) b!3071323))

(assert (= (and b!3071323 (not res!1260478)) b!3071316))

(assert (= (or b!3071326 b!3071314 b!3071320) bm!213302))

(declare-fun m!3385759 () Bool)

(assert (=> b!3071317 m!3385759))

(assert (=> b!3071317 m!3385759))

(declare-fun m!3385761 () Bool)

(assert (=> b!3071317 m!3385761))

(declare-fun m!3385763 () Bool)

(assert (=> b!3071317 m!3385763))

(assert (=> b!3071317 m!3385761))

(assert (=> b!3071317 m!3385763))

(declare-fun m!3385765 () Bool)

(assert (=> b!3071317 m!3385765))

(assert (=> b!3071318 m!3385759))

(assert (=> b!3071319 m!3385763))

(assert (=> b!3071319 m!3385763))

(declare-fun m!3385767 () Bool)

(assert (=> b!3071319 m!3385767))

(assert (=> b!3071323 m!3385763))

(assert (=> b!3071323 m!3385763))

(assert (=> b!3071323 m!3385767))

(assert (=> b!3071316 m!3385759))

(declare-fun m!3385769 () Bool)

(assert (=> b!3071324 m!3385769))

(assert (=> bm!213302 m!3385681))

(assert (=> d!856277 m!3385681))

(declare-fun m!3385771 () Bool)

(assert (=> d!856277 m!3385771))

(assert (=> b!3071225 d!856277))

(declare-fun b!3071345 () Bool)

(declare-fun e!1922167 () Bool)

(declare-fun e!1922170 () Bool)

(assert (=> b!3071345 (= e!1922167 e!1922170)))

(declare-fun c!510681 () Bool)

(assert (=> b!3071345 (= c!510681 ((_ is EmptyLang!9515) (regOne!19542 r!17423)))))

(declare-fun b!3071346 () Bool)

(declare-fun res!1260491 () Bool)

(declare-fun e!1922173 () Bool)

(assert (=> b!3071346 (=> (not res!1260491) (not e!1922173))))

(declare-fun call!213308 () Bool)

(assert (=> b!3071346 (= res!1260491 (not call!213308))))

(declare-fun b!3071347 () Bool)

(declare-fun res!1260494 () Bool)

(declare-fun e!1922169 () Bool)

(assert (=> b!3071347 (=> res!1260494 e!1922169)))

(assert (=> b!3071347 (= res!1260494 e!1922173)))

(declare-fun res!1260495 () Bool)

(assert (=> b!3071347 (=> (not res!1260495) (not e!1922173))))

(declare-fun lt!1051612 () Bool)

(assert (=> b!3071347 (= res!1260495 lt!1051612)))

(declare-fun d!856279 () Bool)

(assert (=> d!856279 e!1922167))

(declare-fun c!510683 () Bool)

(assert (=> d!856279 (= c!510683 ((_ is EmptyExpr!9515) (regOne!19542 r!17423)))))

(declare-fun e!1922172 () Bool)

(assert (=> d!856279 (= lt!1051612 e!1922172)))

(declare-fun c!510682 () Bool)

(assert (=> d!856279 (= c!510682 (isEmpty!19581 s!11993))))

(assert (=> d!856279 (validRegex!4248 (regOne!19542 r!17423))))

(assert (=> d!856279 (= (matchR!4397 (regOne!19542 r!17423) s!11993) lt!1051612)))

(declare-fun bm!213303 () Bool)

(assert (=> bm!213303 (= call!213308 (isEmpty!19581 s!11993))))

(declare-fun b!3071348 () Bool)

(declare-fun e!1922171 () Bool)

(assert (=> b!3071348 (= e!1922171 (not (= (head!6816 s!11993) (c!510651 (regOne!19542 r!17423)))))))

(declare-fun b!3071349 () Bool)

(assert (=> b!3071349 (= e!1922172 (matchR!4397 (derivativeStep!2757 (regOne!19542 r!17423) (head!6816 s!11993)) (tail!5042 s!11993)))))

(declare-fun b!3071350 () Bool)

(assert (=> b!3071350 (= e!1922173 (= (head!6816 s!11993) (c!510651 (regOne!19542 r!17423))))))

(declare-fun b!3071351 () Bool)

(declare-fun res!1260490 () Bool)

(assert (=> b!3071351 (=> (not res!1260490) (not e!1922173))))

(assert (=> b!3071351 (= res!1260490 (isEmpty!19581 (tail!5042 s!11993)))))

(declare-fun b!3071352 () Bool)

(declare-fun e!1922168 () Bool)

(assert (=> b!3071352 (= e!1922168 e!1922171)))

(declare-fun res!1260497 () Bool)

(assert (=> b!3071352 (=> res!1260497 e!1922171)))

(assert (=> b!3071352 (= res!1260497 call!213308)))

(declare-fun b!3071353 () Bool)

(declare-fun res!1260493 () Bool)

(assert (=> b!3071353 (=> res!1260493 e!1922169)))

(assert (=> b!3071353 (= res!1260493 (not ((_ is ElementMatch!9515) (regOne!19542 r!17423))))))

(assert (=> b!3071353 (= e!1922170 e!1922169)))

(declare-fun b!3071354 () Bool)

(assert (=> b!3071354 (= e!1922170 (not lt!1051612))))

(declare-fun b!3071355 () Bool)

(declare-fun res!1260492 () Bool)

(assert (=> b!3071355 (=> res!1260492 e!1922171)))

(assert (=> b!3071355 (= res!1260492 (not (isEmpty!19581 (tail!5042 s!11993))))))

(declare-fun b!3071356 () Bool)

(assert (=> b!3071356 (= e!1922172 (nullable!3161 (regOne!19542 r!17423)))))

(declare-fun b!3071357 () Bool)

(assert (=> b!3071357 (= e!1922169 e!1922168)))

(declare-fun res!1260496 () Bool)

(assert (=> b!3071357 (=> (not res!1260496) (not e!1922168))))

(assert (=> b!3071357 (= res!1260496 (not lt!1051612))))

(declare-fun b!3071358 () Bool)

(assert (=> b!3071358 (= e!1922167 (= lt!1051612 call!213308))))

(assert (= (and d!856279 c!510682) b!3071356))

(assert (= (and d!856279 (not c!510682)) b!3071349))

(assert (= (and d!856279 c!510683) b!3071358))

(assert (= (and d!856279 (not c!510683)) b!3071345))

(assert (= (and b!3071345 c!510681) b!3071354))

(assert (= (and b!3071345 (not c!510681)) b!3071353))

(assert (= (and b!3071353 (not res!1260493)) b!3071347))

(assert (= (and b!3071347 res!1260495) b!3071346))

(assert (= (and b!3071346 res!1260491) b!3071351))

(assert (= (and b!3071351 res!1260490) b!3071350))

(assert (= (and b!3071347 (not res!1260494)) b!3071357))

(assert (= (and b!3071357 res!1260496) b!3071352))

(assert (= (and b!3071352 (not res!1260497)) b!3071355))

(assert (= (and b!3071355 (not res!1260492)) b!3071348))

(assert (= (or b!3071358 b!3071346 b!3071352) bm!213303))

(assert (=> b!3071349 m!3385759))

(assert (=> b!3071349 m!3385759))

(declare-fun m!3385773 () Bool)

(assert (=> b!3071349 m!3385773))

(assert (=> b!3071349 m!3385763))

(assert (=> b!3071349 m!3385773))

(assert (=> b!3071349 m!3385763))

(declare-fun m!3385775 () Bool)

(assert (=> b!3071349 m!3385775))

(assert (=> b!3071350 m!3385759))

(assert (=> b!3071351 m!3385763))

(assert (=> b!3071351 m!3385763))

(assert (=> b!3071351 m!3385767))

(assert (=> b!3071355 m!3385763))

(assert (=> b!3071355 m!3385763))

(assert (=> b!3071355 m!3385767))

(assert (=> b!3071348 m!3385759))

(declare-fun m!3385777 () Bool)

(assert (=> b!3071356 m!3385777))

(assert (=> bm!213303 m!3385681))

(assert (=> d!856279 m!3385681))

(assert (=> d!856279 m!3385715))

(assert (=> b!3071225 d!856279))

(declare-fun b!3071359 () Bool)

(declare-fun e!1922174 () Bool)

(declare-fun e!1922177 () Bool)

(assert (=> b!3071359 (= e!1922174 e!1922177)))

(declare-fun c!510684 () Bool)

(assert (=> b!3071359 (= c!510684 ((_ is EmptyLang!9515) lt!1051596))))

(declare-fun b!3071360 () Bool)

(declare-fun res!1260499 () Bool)

(declare-fun e!1922180 () Bool)

(assert (=> b!3071360 (=> (not res!1260499) (not e!1922180))))

(declare-fun call!213309 () Bool)

(assert (=> b!3071360 (= res!1260499 (not call!213309))))

(declare-fun b!3071361 () Bool)

(declare-fun res!1260502 () Bool)

(declare-fun e!1922176 () Bool)

(assert (=> b!3071361 (=> res!1260502 e!1922176)))

(assert (=> b!3071361 (= res!1260502 e!1922180)))

(declare-fun res!1260503 () Bool)

(assert (=> b!3071361 (=> (not res!1260503) (not e!1922180))))

(declare-fun lt!1051613 () Bool)

(assert (=> b!3071361 (= res!1260503 lt!1051613)))

(declare-fun d!856281 () Bool)

(assert (=> d!856281 e!1922174))

(declare-fun c!510686 () Bool)

(assert (=> d!856281 (= c!510686 ((_ is EmptyExpr!9515) lt!1051596))))

(declare-fun e!1922179 () Bool)

(assert (=> d!856281 (= lt!1051613 e!1922179)))

(declare-fun c!510685 () Bool)

(assert (=> d!856281 (= c!510685 (isEmpty!19581 Nil!35256))))

(assert (=> d!856281 (validRegex!4248 lt!1051596)))

(assert (=> d!856281 (= (matchR!4397 lt!1051596 Nil!35256) lt!1051613)))

(declare-fun bm!213304 () Bool)

(assert (=> bm!213304 (= call!213309 (isEmpty!19581 Nil!35256))))

(declare-fun b!3071362 () Bool)

(declare-fun e!1922178 () Bool)

(assert (=> b!3071362 (= e!1922178 (not (= (head!6816 Nil!35256) (c!510651 lt!1051596))))))

(declare-fun b!3071363 () Bool)

(assert (=> b!3071363 (= e!1922179 (matchR!4397 (derivativeStep!2757 lt!1051596 (head!6816 Nil!35256)) (tail!5042 Nil!35256)))))

(declare-fun b!3071364 () Bool)

(assert (=> b!3071364 (= e!1922180 (= (head!6816 Nil!35256) (c!510651 lt!1051596)))))

(declare-fun b!3071365 () Bool)

(declare-fun res!1260498 () Bool)

(assert (=> b!3071365 (=> (not res!1260498) (not e!1922180))))

(assert (=> b!3071365 (= res!1260498 (isEmpty!19581 (tail!5042 Nil!35256)))))

(declare-fun b!3071366 () Bool)

(declare-fun e!1922175 () Bool)

(assert (=> b!3071366 (= e!1922175 e!1922178)))

(declare-fun res!1260505 () Bool)

(assert (=> b!3071366 (=> res!1260505 e!1922178)))

(assert (=> b!3071366 (= res!1260505 call!213309)))

(declare-fun b!3071367 () Bool)

(declare-fun res!1260501 () Bool)

(assert (=> b!3071367 (=> res!1260501 e!1922176)))

(assert (=> b!3071367 (= res!1260501 (not ((_ is ElementMatch!9515) lt!1051596)))))

(assert (=> b!3071367 (= e!1922177 e!1922176)))

(declare-fun b!3071368 () Bool)

(assert (=> b!3071368 (= e!1922177 (not lt!1051613))))

(declare-fun b!3071369 () Bool)

(declare-fun res!1260500 () Bool)

(assert (=> b!3071369 (=> res!1260500 e!1922178)))

(assert (=> b!3071369 (= res!1260500 (not (isEmpty!19581 (tail!5042 Nil!35256))))))

(declare-fun b!3071370 () Bool)

(assert (=> b!3071370 (= e!1922179 (nullable!3161 lt!1051596))))

(declare-fun b!3071371 () Bool)

(assert (=> b!3071371 (= e!1922176 e!1922175)))

(declare-fun res!1260504 () Bool)

(assert (=> b!3071371 (=> (not res!1260504) (not e!1922175))))

(assert (=> b!3071371 (= res!1260504 (not lt!1051613))))

(declare-fun b!3071372 () Bool)

(assert (=> b!3071372 (= e!1922174 (= lt!1051613 call!213309))))

(assert (= (and d!856281 c!510685) b!3071370))

(assert (= (and d!856281 (not c!510685)) b!3071363))

(assert (= (and d!856281 c!510686) b!3071372))

(assert (= (and d!856281 (not c!510686)) b!3071359))

(assert (= (and b!3071359 c!510684) b!3071368))

(assert (= (and b!3071359 (not c!510684)) b!3071367))

(assert (= (and b!3071367 (not res!1260501)) b!3071361))

(assert (= (and b!3071361 res!1260503) b!3071360))

(assert (= (and b!3071360 res!1260499) b!3071365))

(assert (= (and b!3071365 res!1260498) b!3071364))

(assert (= (and b!3071361 (not res!1260502)) b!3071371))

(assert (= (and b!3071371 res!1260504) b!3071366))

(assert (= (and b!3071366 (not res!1260505)) b!3071369))

(assert (= (and b!3071369 (not res!1260500)) b!3071362))

(assert (= (or b!3071372 b!3071360 b!3071366) bm!213304))

(assert (=> b!3071363 m!3385745))

(assert (=> b!3071363 m!3385745))

(declare-fun m!3385779 () Bool)

(assert (=> b!3071363 m!3385779))

(assert (=> b!3071363 m!3385749))

(assert (=> b!3071363 m!3385779))

(assert (=> b!3071363 m!3385749))

(declare-fun m!3385781 () Bool)

(assert (=> b!3071363 m!3385781))

(assert (=> b!3071364 m!3385745))

(assert (=> b!3071365 m!3385749))

(assert (=> b!3071365 m!3385749))

(assert (=> b!3071365 m!3385753))

(assert (=> b!3071369 m!3385749))

(assert (=> b!3071369 m!3385749))

(assert (=> b!3071369 m!3385753))

(assert (=> b!3071362 m!3385745))

(declare-fun m!3385783 () Bool)

(assert (=> b!3071370 m!3385783))

(assert (=> bm!213304 m!3385757))

(assert (=> d!856281 m!3385757))

(declare-fun m!3385785 () Bool)

(assert (=> d!856281 m!3385785))

(assert (=> b!3071225 d!856281))

(declare-fun b!3071691 () Bool)

(assert (=> b!3071691 true))

(assert (=> b!3071691 true))

(declare-fun bs!532660 () Bool)

(declare-fun b!3071689 () Bool)

(assert (= bs!532660 (and b!3071689 b!3071691)))

(declare-fun lambda!114112 () Int)

(declare-fun lambda!114111 () Int)

(assert (=> bs!532660 (not (= lambda!114112 lambda!114111))))

(assert (=> b!3071689 true))

(assert (=> b!3071689 true))

(declare-fun b!3071681 () Bool)

(declare-fun e!1922339 () Bool)

(assert (=> b!3071681 (= e!1922339 (= s!11993 (Cons!35256 (c!510651 r!17423) Nil!35256)))))

(declare-fun b!3071682 () Bool)

(declare-fun c!510769 () Bool)

(assert (=> b!3071682 (= c!510769 ((_ is Union!9515) r!17423))))

(declare-fun e!1922344 () Bool)

(assert (=> b!3071682 (= e!1922339 e!1922344)))

(declare-fun d!856283 () Bool)

(declare-fun c!510771 () Bool)

(assert (=> d!856283 (= c!510771 ((_ is EmptyExpr!9515) r!17423))))

(declare-fun e!1922345 () Bool)

(assert (=> d!856283 (= (matchRSpec!1652 r!17423 s!11993) e!1922345)))

(declare-fun b!3071683 () Bool)

(declare-fun e!1922343 () Bool)

(assert (=> b!3071683 (= e!1922344 e!1922343)))

(declare-fun c!510770 () Bool)

(assert (=> b!3071683 (= c!510770 ((_ is Star!9515) r!17423))))

(declare-fun bm!213356 () Bool)

(declare-fun call!213361 () Bool)

(assert (=> bm!213356 (= call!213361 (isEmpty!19581 s!11993))))

(declare-fun b!3071684 () Bool)

(declare-fun e!1922340 () Bool)

(assert (=> b!3071684 (= e!1922345 e!1922340)))

(declare-fun res!1260614 () Bool)

(assert (=> b!3071684 (= res!1260614 (not ((_ is EmptyLang!9515) r!17423)))))

(assert (=> b!3071684 (=> (not res!1260614) (not e!1922340))))

(declare-fun b!3071685 () Bool)

(declare-fun e!1922341 () Bool)

(assert (=> b!3071685 (= e!1922344 e!1922341)))

(declare-fun res!1260613 () Bool)

(assert (=> b!3071685 (= res!1260613 (matchRSpec!1652 (regOne!19543 r!17423) s!11993))))

(assert (=> b!3071685 (=> res!1260613 e!1922341)))

(declare-fun b!3071686 () Bool)

(declare-fun c!510768 () Bool)

(assert (=> b!3071686 (= c!510768 ((_ is ElementMatch!9515) r!17423))))

(assert (=> b!3071686 (= e!1922340 e!1922339)))

(declare-fun b!3071687 () Bool)

(assert (=> b!3071687 (= e!1922345 call!213361)))

(declare-fun b!3071688 () Bool)

(assert (=> b!3071688 (= e!1922341 (matchRSpec!1652 (regTwo!19543 r!17423) s!11993))))

(declare-fun call!213362 () Bool)

(declare-fun bm!213357 () Bool)

(declare-fun Exists!1778 (Int) Bool)

(assert (=> bm!213357 (= call!213362 (Exists!1778 (ite c!510770 lambda!114111 lambda!114112)))))

(assert (=> b!3071689 (= e!1922343 call!213362)))

(declare-fun b!3071690 () Bool)

(declare-fun res!1260615 () Bool)

(declare-fun e!1922342 () Bool)

(assert (=> b!3071690 (=> res!1260615 e!1922342)))

(assert (=> b!3071690 (= res!1260615 call!213361)))

(assert (=> b!3071690 (= e!1922343 e!1922342)))

(assert (=> b!3071691 (= e!1922342 call!213362)))

(assert (= (and d!856283 c!510771) b!3071687))

(assert (= (and d!856283 (not c!510771)) b!3071684))

(assert (= (and b!3071684 res!1260614) b!3071686))

(assert (= (and b!3071686 c!510768) b!3071681))

(assert (= (and b!3071686 (not c!510768)) b!3071682))

(assert (= (and b!3071682 c!510769) b!3071685))

(assert (= (and b!3071682 (not c!510769)) b!3071683))

(assert (= (and b!3071685 (not res!1260613)) b!3071688))

(assert (= (and b!3071683 c!510770) b!3071690))

(assert (= (and b!3071683 (not c!510770)) b!3071689))

(assert (= (and b!3071690 (not res!1260615)) b!3071691))

(assert (= (or b!3071691 b!3071689) bm!213357))

(assert (= (or b!3071687 b!3071690) bm!213356))

(assert (=> bm!213356 m!3385681))

(declare-fun m!3385895 () Bool)

(assert (=> b!3071685 m!3385895))

(declare-fun m!3385897 () Bool)

(assert (=> b!3071688 m!3385897))

(declare-fun m!3385899 () Bool)

(assert (=> bm!213357 m!3385899))

(assert (=> b!3071226 d!856283))

(declare-fun b!3071696 () Bool)

(declare-fun e!1922346 () Bool)

(declare-fun e!1922349 () Bool)

(assert (=> b!3071696 (= e!1922346 e!1922349)))

(declare-fun c!510772 () Bool)

(assert (=> b!3071696 (= c!510772 ((_ is EmptyLang!9515) r!17423))))

(declare-fun b!3071697 () Bool)

(declare-fun res!1260617 () Bool)

(declare-fun e!1922352 () Bool)

(assert (=> b!3071697 (=> (not res!1260617) (not e!1922352))))

(declare-fun call!213363 () Bool)

(assert (=> b!3071697 (= res!1260617 (not call!213363))))

(declare-fun b!3071698 () Bool)

(declare-fun res!1260620 () Bool)

(declare-fun e!1922348 () Bool)

(assert (=> b!3071698 (=> res!1260620 e!1922348)))

(assert (=> b!3071698 (= res!1260620 e!1922352)))

(declare-fun res!1260621 () Bool)

(assert (=> b!3071698 (=> (not res!1260621) (not e!1922352))))

(declare-fun lt!1051652 () Bool)

(assert (=> b!3071698 (= res!1260621 lt!1051652)))

(declare-fun d!856317 () Bool)

(assert (=> d!856317 e!1922346))

(declare-fun c!510774 () Bool)

(assert (=> d!856317 (= c!510774 ((_ is EmptyExpr!9515) r!17423))))

(declare-fun e!1922351 () Bool)

(assert (=> d!856317 (= lt!1051652 e!1922351)))

(declare-fun c!510773 () Bool)

(assert (=> d!856317 (= c!510773 (isEmpty!19581 s!11993))))

(assert (=> d!856317 (validRegex!4248 r!17423)))

(assert (=> d!856317 (= (matchR!4397 r!17423 s!11993) lt!1051652)))

(declare-fun bm!213358 () Bool)

(assert (=> bm!213358 (= call!213363 (isEmpty!19581 s!11993))))

(declare-fun b!3071699 () Bool)

(declare-fun e!1922350 () Bool)

(assert (=> b!3071699 (= e!1922350 (not (= (head!6816 s!11993) (c!510651 r!17423))))))

(declare-fun b!3071700 () Bool)

(assert (=> b!3071700 (= e!1922351 (matchR!4397 (derivativeStep!2757 r!17423 (head!6816 s!11993)) (tail!5042 s!11993)))))

(declare-fun b!3071701 () Bool)

(assert (=> b!3071701 (= e!1922352 (= (head!6816 s!11993) (c!510651 r!17423)))))

(declare-fun b!3071702 () Bool)

(declare-fun res!1260616 () Bool)

(assert (=> b!3071702 (=> (not res!1260616) (not e!1922352))))

(assert (=> b!3071702 (= res!1260616 (isEmpty!19581 (tail!5042 s!11993)))))

(declare-fun b!3071703 () Bool)

(declare-fun e!1922347 () Bool)

(assert (=> b!3071703 (= e!1922347 e!1922350)))

(declare-fun res!1260623 () Bool)

(assert (=> b!3071703 (=> res!1260623 e!1922350)))

(assert (=> b!3071703 (= res!1260623 call!213363)))

(declare-fun b!3071704 () Bool)

(declare-fun res!1260619 () Bool)

(assert (=> b!3071704 (=> res!1260619 e!1922348)))

(assert (=> b!3071704 (= res!1260619 (not ((_ is ElementMatch!9515) r!17423)))))

(assert (=> b!3071704 (= e!1922349 e!1922348)))

(declare-fun b!3071705 () Bool)

(assert (=> b!3071705 (= e!1922349 (not lt!1051652))))

(declare-fun b!3071706 () Bool)

(declare-fun res!1260618 () Bool)

(assert (=> b!3071706 (=> res!1260618 e!1922350)))

(assert (=> b!3071706 (= res!1260618 (not (isEmpty!19581 (tail!5042 s!11993))))))

(declare-fun b!3071707 () Bool)

(assert (=> b!3071707 (= e!1922351 (nullable!3161 r!17423))))

(declare-fun b!3071708 () Bool)

(assert (=> b!3071708 (= e!1922348 e!1922347)))

(declare-fun res!1260622 () Bool)

(assert (=> b!3071708 (=> (not res!1260622) (not e!1922347))))

(assert (=> b!3071708 (= res!1260622 (not lt!1051652))))

(declare-fun b!3071709 () Bool)

(assert (=> b!3071709 (= e!1922346 (= lt!1051652 call!213363))))

(assert (= (and d!856317 c!510773) b!3071707))

(assert (= (and d!856317 (not c!510773)) b!3071700))

(assert (= (and d!856317 c!510774) b!3071709))

(assert (= (and d!856317 (not c!510774)) b!3071696))

(assert (= (and b!3071696 c!510772) b!3071705))

(assert (= (and b!3071696 (not c!510772)) b!3071704))

(assert (= (and b!3071704 (not res!1260619)) b!3071698))

(assert (= (and b!3071698 res!1260621) b!3071697))

(assert (= (and b!3071697 res!1260617) b!3071702))

(assert (= (and b!3071702 res!1260616) b!3071701))

(assert (= (and b!3071698 (not res!1260620)) b!3071708))

(assert (= (and b!3071708 res!1260622) b!3071703))

(assert (= (and b!3071703 (not res!1260623)) b!3071706))

(assert (= (and b!3071706 (not res!1260618)) b!3071699))

(assert (= (or b!3071709 b!3071697 b!3071703) bm!213358))

(assert (=> b!3071700 m!3385759))

(assert (=> b!3071700 m!3385759))

(declare-fun m!3385901 () Bool)

(assert (=> b!3071700 m!3385901))

(assert (=> b!3071700 m!3385763))

(assert (=> b!3071700 m!3385901))

(assert (=> b!3071700 m!3385763))

(declare-fun m!3385903 () Bool)

(assert (=> b!3071700 m!3385903))

(assert (=> b!3071701 m!3385759))

(assert (=> b!3071702 m!3385763))

(assert (=> b!3071702 m!3385763))

(assert (=> b!3071702 m!3385767))

(assert (=> b!3071706 m!3385763))

(assert (=> b!3071706 m!3385763))

(assert (=> b!3071706 m!3385767))

(assert (=> b!3071699 m!3385759))

(declare-fun m!3385905 () Bool)

(assert (=> b!3071707 m!3385905))

(assert (=> bm!213358 m!3385681))

(assert (=> d!856317 m!3385681))

(assert (=> d!856317 m!3385683))

(assert (=> b!3071226 d!856317))

(declare-fun d!856319 () Bool)

(assert (=> d!856319 (= (matchR!4397 r!17423 s!11993) (matchRSpec!1652 r!17423 s!11993))))

(declare-fun lt!1051655 () Unit!49469)

(declare-fun choose!18200 (Regex!9515 List!35380) Unit!49469)

(assert (=> d!856319 (= lt!1051655 (choose!18200 r!17423 s!11993))))

(assert (=> d!856319 (validRegex!4248 r!17423)))

(assert (=> d!856319 (= (mainMatchTheorem!1652 r!17423 s!11993) lt!1051655)))

(declare-fun bs!532661 () Bool)

(assert (= bs!532661 d!856319))

(assert (=> bs!532661 m!3385699))

(assert (=> bs!532661 m!3385697))

(declare-fun m!3385907 () Bool)

(assert (=> bs!532661 m!3385907))

(assert (=> bs!532661 m!3385683))

(assert (=> b!3071226 d!856319))

(declare-fun b!3071718 () Bool)

(declare-fun e!1922357 () List!35380)

(assert (=> b!3071718 (= e!1922357 Nil!35256)))

(declare-fun b!3071720 () Bool)

(declare-fun res!1260628 () Bool)

(declare-fun e!1922358 () Bool)

(assert (=> b!3071720 (=> (not res!1260628) (not e!1922358))))

(declare-fun lt!1051658 () List!35380)

(declare-fun size!26561 (List!35380) Int)

(assert (=> b!3071720 (= res!1260628 (= (size!26561 lt!1051658) (+ (size!26561 s!11993) (size!26561 Nil!35256))))))

(declare-fun d!856321 () Bool)

(assert (=> d!856321 e!1922358))

(declare-fun res!1260629 () Bool)

(assert (=> d!856321 (=> (not res!1260629) (not e!1922358))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4806 (List!35380) (InoxSet C!19216))

(assert (=> d!856321 (= res!1260629 (= (content!4806 lt!1051658) ((_ map or) (content!4806 s!11993) (content!4806 Nil!35256))))))

(assert (=> d!856321 (= lt!1051658 e!1922357)))

(declare-fun c!510777 () Bool)

(assert (=> d!856321 (= c!510777 ((_ is Nil!35256) s!11993))))

(assert (=> d!856321 (= (++!8466 s!11993 Nil!35256) lt!1051658)))

(declare-fun b!3071721 () Bool)

(assert (=> b!3071721 (= e!1922358 (or (not (= Nil!35256 Nil!35256)) (= lt!1051658 s!11993)))))

(declare-fun b!3071719 () Bool)

(assert (=> b!3071719 (= e!1922357 (Cons!35256 (h!40676 s!11993) (++!8466 (t!234445 s!11993) Nil!35256)))))

(assert (= (and d!856321 c!510777) b!3071718))

(assert (= (and d!856321 (not c!510777)) b!3071719))

(assert (= (and d!856321 res!1260629) b!3071720))

(assert (= (and b!3071720 res!1260628) b!3071721))

(declare-fun m!3385909 () Bool)

(assert (=> b!3071720 m!3385909))

(declare-fun m!3385911 () Bool)

(assert (=> b!3071720 m!3385911))

(declare-fun m!3385913 () Bool)

(assert (=> b!3071720 m!3385913))

(declare-fun m!3385915 () Bool)

(assert (=> d!856321 m!3385915))

(declare-fun m!3385917 () Bool)

(assert (=> d!856321 m!3385917))

(declare-fun m!3385919 () Bool)

(assert (=> d!856321 m!3385919))

(declare-fun m!3385921 () Bool)

(assert (=> b!3071719 m!3385921))

(assert (=> b!3071215 d!856321))

(declare-fun d!856323 () Bool)

(assert (=> d!856323 (= (isEmptyExpr!572 lt!1051596) ((_ is EmptyExpr!9515) lt!1051596))))

(assert (=> b!3071216 d!856323))

(declare-fun d!856325 () Bool)

(assert (=> d!856325 (= (isEmptyExpr!572 lt!1051600) ((_ is EmptyExpr!9515) lt!1051600))))

(assert (=> b!3071221 d!856325))

(declare-fun b!3071740 () Bool)

(declare-fun e!1922375 () Bool)

(declare-fun e!1922376 () Bool)

(assert (=> b!3071740 (= e!1922375 e!1922376)))

(declare-fun res!1260644 () Bool)

(assert (=> b!3071740 (=> (not res!1260644) (not e!1922376))))

(declare-fun call!213371 () Bool)

(assert (=> b!3071740 (= res!1260644 call!213371)))

(declare-fun call!213372 () Bool)

(declare-fun c!510782 () Bool)

(declare-fun bm!213365 () Bool)

(declare-fun c!510783 () Bool)

(assert (=> bm!213365 (= call!213372 (validRegex!4248 (ite c!510783 (reg!9844 r!17423) (ite c!510782 (regTwo!19543 r!17423) (regOne!19542 r!17423)))))))

(declare-fun b!3071741 () Bool)

(declare-fun e!1922373 () Bool)

(declare-fun e!1922379 () Bool)

(assert (=> b!3071741 (= e!1922373 e!1922379)))

(assert (=> b!3071741 (= c!510782 ((_ is Union!9515) r!17423))))

(declare-fun bm!213366 () Bool)

(assert (=> bm!213366 (= call!213371 call!213372)))

(declare-fun b!3071742 () Bool)

(declare-fun res!1260640 () Bool)

(declare-fun e!1922377 () Bool)

(assert (=> b!3071742 (=> (not res!1260640) (not e!1922377))))

(declare-fun call!213370 () Bool)

(assert (=> b!3071742 (= res!1260640 call!213370)))

(assert (=> b!3071742 (= e!1922379 e!1922377)))

(declare-fun b!3071743 () Bool)

(assert (=> b!3071743 (= e!1922376 call!213370)))

(declare-fun b!3071745 () Bool)

(declare-fun e!1922374 () Bool)

(assert (=> b!3071745 (= e!1922374 call!213372)))

(declare-fun b!3071746 () Bool)

(assert (=> b!3071746 (= e!1922377 call!213371)))

(declare-fun bm!213367 () Bool)

(assert (=> bm!213367 (= call!213370 (validRegex!4248 (ite c!510782 (regOne!19543 r!17423) (regTwo!19542 r!17423))))))

(declare-fun b!3071747 () Bool)

(declare-fun e!1922378 () Bool)

(assert (=> b!3071747 (= e!1922378 e!1922373)))

(assert (=> b!3071747 (= c!510783 ((_ is Star!9515) r!17423))))

(declare-fun b!3071748 () Bool)

(declare-fun res!1260643 () Bool)

(assert (=> b!3071748 (=> res!1260643 e!1922375)))

(assert (=> b!3071748 (= res!1260643 (not ((_ is Concat!14836) r!17423)))))

(assert (=> b!3071748 (= e!1922379 e!1922375)))

(declare-fun b!3071744 () Bool)

(assert (=> b!3071744 (= e!1922373 e!1922374)))

(declare-fun res!1260641 () Bool)

(assert (=> b!3071744 (= res!1260641 (not (nullable!3161 (reg!9844 r!17423))))))

(assert (=> b!3071744 (=> (not res!1260641) (not e!1922374))))

(declare-fun d!856327 () Bool)

(declare-fun res!1260642 () Bool)

(assert (=> d!856327 (=> res!1260642 e!1922378)))

(assert (=> d!856327 (= res!1260642 ((_ is ElementMatch!9515) r!17423))))

(assert (=> d!856327 (= (validRegex!4248 r!17423) e!1922378)))

(assert (= (and d!856327 (not res!1260642)) b!3071747))

(assert (= (and b!3071747 c!510783) b!3071744))

(assert (= (and b!3071747 (not c!510783)) b!3071741))

(assert (= (and b!3071744 res!1260641) b!3071745))

(assert (= (and b!3071741 c!510782) b!3071742))

(assert (= (and b!3071741 (not c!510782)) b!3071748))

(assert (= (and b!3071742 res!1260640) b!3071746))

(assert (= (and b!3071748 (not res!1260643)) b!3071740))

(assert (= (and b!3071740 res!1260644) b!3071743))

(assert (= (or b!3071742 b!3071743) bm!213367))

(assert (= (or b!3071746 b!3071740) bm!213366))

(assert (= (or b!3071745 bm!213366) bm!213365))

(declare-fun m!3385923 () Bool)

(assert (=> bm!213365 m!3385923))

(declare-fun m!3385925 () Bool)

(assert (=> bm!213367 m!3385925))

(declare-fun m!3385927 () Bool)

(assert (=> b!3071744 m!3385927))

(assert (=> start!292860 d!856327))

(declare-fun b!3071749 () Bool)

(declare-fun e!1922382 () Bool)

(declare-fun e!1922383 () Bool)

(assert (=> b!3071749 (= e!1922382 e!1922383)))

(declare-fun res!1260649 () Bool)

(assert (=> b!3071749 (=> (not res!1260649) (not e!1922383))))

(declare-fun call!213374 () Bool)

(assert (=> b!3071749 (= res!1260649 call!213374)))

(declare-fun bm!213368 () Bool)

(declare-fun call!213375 () Bool)

(declare-fun c!510784 () Bool)

(declare-fun c!510785 () Bool)

(assert (=> bm!213368 (= call!213375 (validRegex!4248 (ite c!510785 (reg!9844 (regTwo!19542 r!17423)) (ite c!510784 (regTwo!19543 (regTwo!19542 r!17423)) (regOne!19542 (regTwo!19542 r!17423))))))))

(declare-fun b!3071750 () Bool)

(declare-fun e!1922380 () Bool)

(declare-fun e!1922386 () Bool)

(assert (=> b!3071750 (= e!1922380 e!1922386)))

(assert (=> b!3071750 (= c!510784 ((_ is Union!9515) (regTwo!19542 r!17423)))))

(declare-fun bm!213369 () Bool)

(assert (=> bm!213369 (= call!213374 call!213375)))

(declare-fun b!3071751 () Bool)

(declare-fun res!1260645 () Bool)

(declare-fun e!1922384 () Bool)

(assert (=> b!3071751 (=> (not res!1260645) (not e!1922384))))

(declare-fun call!213373 () Bool)

(assert (=> b!3071751 (= res!1260645 call!213373)))

(assert (=> b!3071751 (= e!1922386 e!1922384)))

(declare-fun b!3071752 () Bool)

(assert (=> b!3071752 (= e!1922383 call!213373)))

(declare-fun b!3071754 () Bool)

(declare-fun e!1922381 () Bool)

(assert (=> b!3071754 (= e!1922381 call!213375)))

(declare-fun b!3071755 () Bool)

(assert (=> b!3071755 (= e!1922384 call!213374)))

(declare-fun bm!213370 () Bool)

(assert (=> bm!213370 (= call!213373 (validRegex!4248 (ite c!510784 (regOne!19543 (regTwo!19542 r!17423)) (regTwo!19542 (regTwo!19542 r!17423)))))))

(declare-fun b!3071756 () Bool)

(declare-fun e!1922385 () Bool)

(assert (=> b!3071756 (= e!1922385 e!1922380)))

(assert (=> b!3071756 (= c!510785 ((_ is Star!9515) (regTwo!19542 r!17423)))))

(declare-fun b!3071757 () Bool)

(declare-fun res!1260648 () Bool)

(assert (=> b!3071757 (=> res!1260648 e!1922382)))

(assert (=> b!3071757 (= res!1260648 (not ((_ is Concat!14836) (regTwo!19542 r!17423))))))

(assert (=> b!3071757 (= e!1922386 e!1922382)))

(declare-fun b!3071753 () Bool)

(assert (=> b!3071753 (= e!1922380 e!1922381)))

(declare-fun res!1260646 () Bool)

(assert (=> b!3071753 (= res!1260646 (not (nullable!3161 (reg!9844 (regTwo!19542 r!17423)))))))

(assert (=> b!3071753 (=> (not res!1260646) (not e!1922381))))

(declare-fun d!856329 () Bool)

(declare-fun res!1260647 () Bool)

(assert (=> d!856329 (=> res!1260647 e!1922385)))

(assert (=> d!856329 (= res!1260647 ((_ is ElementMatch!9515) (regTwo!19542 r!17423)))))

(assert (=> d!856329 (= (validRegex!4248 (regTwo!19542 r!17423)) e!1922385)))

(assert (= (and d!856329 (not res!1260647)) b!3071756))

(assert (= (and b!3071756 c!510785) b!3071753))

(assert (= (and b!3071756 (not c!510785)) b!3071750))

(assert (= (and b!3071753 res!1260646) b!3071754))

(assert (= (and b!3071750 c!510784) b!3071751))

(assert (= (and b!3071750 (not c!510784)) b!3071757))

(assert (= (and b!3071751 res!1260645) b!3071755))

(assert (= (and b!3071757 (not res!1260648)) b!3071749))

(assert (= (and b!3071749 res!1260649) b!3071752))

(assert (= (or b!3071751 b!3071752) bm!213370))

(assert (= (or b!3071755 b!3071749) bm!213369))

(assert (= (or b!3071754 bm!213369) bm!213368))

(declare-fun m!3385929 () Bool)

(assert (=> bm!213368 m!3385929))

(declare-fun m!3385931 () Bool)

(assert (=> bm!213370 m!3385931))

(declare-fun m!3385933 () Bool)

(assert (=> b!3071753 m!3385933))

(assert (=> b!3071227 d!856329))

(declare-fun d!856331 () Bool)

(assert (=> d!856331 (= (isEmptyLang!566 lt!1051600) ((_ is EmptyLang!9515) lt!1051600))))

(assert (=> b!3071217 d!856331))

(declare-fun b!3071808 () Bool)

(declare-fun e!1922423 () Regex!9515)

(assert (=> b!3071808 (= e!1922423 EmptyExpr!9515)))

(declare-fun b!3071809 () Bool)

(declare-fun e!1922424 () Regex!9515)

(declare-fun lt!1051674 () Regex!9515)

(declare-fun lt!1051676 () Regex!9515)

(assert (=> b!3071809 (= e!1922424 (Union!9515 lt!1051674 lt!1051676))))

(declare-fun b!3071811 () Bool)

(declare-fun e!1922419 () Bool)

(declare-fun call!213395 () Bool)

(assert (=> b!3071811 (= e!1922419 call!213395)))

(declare-fun b!3071812 () Bool)

(declare-fun e!1922422 () Regex!9515)

(declare-fun e!1922415 () Regex!9515)

(assert (=> b!3071812 (= e!1922422 e!1922415)))

(declare-fun call!213391 () Regex!9515)

(assert (=> b!3071812 (= lt!1051674 call!213391)))

(declare-fun call!213392 () Regex!9515)

(assert (=> b!3071812 (= lt!1051676 call!213392)))

(declare-fun c!510818 () Bool)

(declare-fun call!213394 () Bool)

(assert (=> b!3071812 (= c!510818 call!213394)))

(declare-fun b!3071813 () Bool)

(declare-fun e!1922426 () Regex!9515)

(assert (=> b!3071813 (= e!1922422 e!1922426)))

(declare-fun lt!1051673 () Regex!9515)

(assert (=> b!3071813 (= lt!1051673 call!213392)))

(declare-fun lt!1051672 () Regex!9515)

(assert (=> b!3071813 (= lt!1051672 call!213391)))

(declare-fun res!1260656 () Bool)

(assert (=> b!3071813 (= res!1260656 call!213394)))

(assert (=> b!3071813 (=> res!1260656 e!1922419)))

(declare-fun c!510808 () Bool)

(assert (=> b!3071813 (= c!510808 e!1922419)))

(declare-fun b!3071814 () Bool)

(declare-fun e!1922417 () Regex!9515)

(declare-fun e!1922427 () Regex!9515)

(assert (=> b!3071814 (= e!1922417 e!1922427)))

(declare-fun c!510810 () Bool)

(assert (=> b!3071814 (= c!510810 ((_ is Star!9515) (regTwo!19542 r!17423)))))

(declare-fun b!3071815 () Bool)

(declare-fun e!1922425 () Regex!9515)

(assert (=> b!3071815 (= e!1922425 (Concat!14836 lt!1051673 lt!1051672))))

(declare-fun bm!213385 () Bool)

(declare-fun c!510816 () Bool)

(declare-fun lt!1051671 () Regex!9515)

(declare-fun call!213390 () Bool)

(assert (=> bm!213385 (= call!213390 (isEmptyLang!566 (ite c!510810 lt!1051671 (ite c!510816 lt!1051674 lt!1051673))))))

(declare-fun b!3071816 () Bool)

(declare-fun e!1922428 () Regex!9515)

(assert (=> b!3071816 (= e!1922428 e!1922425)))

(declare-fun c!510817 () Bool)

(declare-fun call!213396 () Bool)

(assert (=> b!3071816 (= c!510817 call!213396)))

(declare-fun b!3071817 () Bool)

(assert (=> b!3071817 (= c!510816 ((_ is Union!9515) (regTwo!19542 r!17423)))))

(assert (=> b!3071817 (= e!1922427 e!1922422)))

(declare-fun b!3071818 () Bool)

(assert (=> b!3071818 (= e!1922425 lt!1051673)))

(declare-fun b!3071810 () Bool)

(assert (=> b!3071810 (= e!1922426 EmptyLang!9515)))

(declare-fun d!856333 () Bool)

(declare-fun e!1922420 () Bool)

(assert (=> d!856333 e!1922420))

(declare-fun res!1260658 () Bool)

(assert (=> d!856333 (=> (not res!1260658) (not e!1922420))))

(declare-fun lt!1051675 () Regex!9515)

(assert (=> d!856333 (= res!1260658 (validRegex!4248 lt!1051675))))

(declare-fun e!1922421 () Regex!9515)

(assert (=> d!856333 (= lt!1051675 e!1922421)))

(declare-fun c!510811 () Bool)

(assert (=> d!856333 (= c!510811 ((_ is EmptyLang!9515) (regTwo!19542 r!17423)))))

(assert (=> d!856333 (validRegex!4248 (regTwo!19542 r!17423))))

(assert (=> d!856333 (= (simplify!470 (regTwo!19542 r!17423)) lt!1051675)))

(declare-fun b!3071819 () Bool)

(assert (=> b!3071819 (= e!1922423 (Star!9515 lt!1051671))))

(declare-fun b!3071820 () Bool)

(declare-fun c!510814 () Bool)

(assert (=> b!3071820 (= c!510814 ((_ is EmptyExpr!9515) (regTwo!19542 r!17423)))))

(declare-fun e!1922418 () Regex!9515)

(assert (=> b!3071820 (= e!1922418 e!1922417)))

(declare-fun bm!213386 () Bool)

(declare-fun call!213393 () Regex!9515)

(assert (=> bm!213386 (= call!213393 (simplify!470 (ite c!510810 (reg!9844 (regTwo!19542 r!17423)) (ite c!510816 (regOne!19543 (regTwo!19542 r!17423)) (regTwo!19542 (regTwo!19542 r!17423))))))))

(declare-fun bm!213387 () Bool)

(assert (=> bm!213387 (= call!213395 (isEmptyLang!566 (ite c!510816 lt!1051676 lt!1051672)))))

(declare-fun b!3071821 () Bool)

(assert (=> b!3071821 (= e!1922421 EmptyLang!9515)))

(declare-fun b!3071822 () Bool)

(assert (=> b!3071822 (= e!1922418 (regTwo!19542 r!17423))))

(declare-fun b!3071823 () Bool)

(assert (=> b!3071823 (= e!1922421 e!1922418)))

(declare-fun c!510809 () Bool)

(assert (=> b!3071823 (= c!510809 ((_ is ElementMatch!9515) (regTwo!19542 r!17423)))))

(declare-fun bm!213388 () Bool)

(assert (=> bm!213388 (= call!213391 call!213393)))

(declare-fun b!3071824 () Bool)

(declare-fun c!510815 () Bool)

(declare-fun e!1922416 () Bool)

(assert (=> b!3071824 (= c!510815 e!1922416)))

(declare-fun res!1260657 () Bool)

(assert (=> b!3071824 (=> res!1260657 e!1922416)))

(assert (=> b!3071824 (= res!1260657 call!213390)))

(assert (=> b!3071824 (= lt!1051671 call!213393)))

(assert (=> b!3071824 (= e!1922427 e!1922423)))

(declare-fun b!3071825 () Bool)

(assert (=> b!3071825 (= e!1922417 EmptyExpr!9515)))

(declare-fun bm!213389 () Bool)

(assert (=> bm!213389 (= call!213392 (simplify!470 (ite c!510816 (regTwo!19543 (regTwo!19542 r!17423)) (regOne!19542 (regTwo!19542 r!17423)))))))

(declare-fun b!3071826 () Bool)

(assert (=> b!3071826 (= e!1922428 lt!1051672)))

(declare-fun b!3071827 () Bool)

(assert (=> b!3071827 (= e!1922424 lt!1051674)))

(declare-fun b!3071828 () Bool)

(declare-fun c!510813 () Bool)

(assert (=> b!3071828 (= c!510813 call!213395)))

(assert (=> b!3071828 (= e!1922415 e!1922424)))

(declare-fun b!3071829 () Bool)

(assert (=> b!3071829 (= e!1922416 call!213396)))

(declare-fun b!3071830 () Bool)

(declare-fun c!510812 () Bool)

(assert (=> b!3071830 (= c!510812 (isEmptyExpr!572 lt!1051673))))

(assert (=> b!3071830 (= e!1922426 e!1922428)))

(declare-fun bm!213390 () Bool)

(assert (=> bm!213390 (= call!213396 (isEmptyExpr!572 (ite c!510810 lt!1051671 lt!1051672)))))

(declare-fun bm!213391 () Bool)

(assert (=> bm!213391 (= call!213394 call!213390)))

(declare-fun b!3071831 () Bool)

(assert (=> b!3071831 (= e!1922415 lt!1051676)))

(declare-fun b!3071832 () Bool)

(assert (=> b!3071832 (= e!1922420 (= (nullable!3161 lt!1051675) (nullable!3161 (regTwo!19542 r!17423))))))

(assert (= (and d!856333 c!510811) b!3071821))

(assert (= (and d!856333 (not c!510811)) b!3071823))

(assert (= (and b!3071823 c!510809) b!3071822))

(assert (= (and b!3071823 (not c!510809)) b!3071820))

(assert (= (and b!3071820 c!510814) b!3071825))

(assert (= (and b!3071820 (not c!510814)) b!3071814))

(assert (= (and b!3071814 c!510810) b!3071824))

(assert (= (and b!3071814 (not c!510810)) b!3071817))

(assert (= (and b!3071824 (not res!1260657)) b!3071829))

(assert (= (and b!3071824 c!510815) b!3071808))

(assert (= (and b!3071824 (not c!510815)) b!3071819))

(assert (= (and b!3071817 c!510816) b!3071812))

(assert (= (and b!3071817 (not c!510816)) b!3071813))

(assert (= (and b!3071812 c!510818) b!3071831))

(assert (= (and b!3071812 (not c!510818)) b!3071828))

(assert (= (and b!3071828 c!510813) b!3071827))

(assert (= (and b!3071828 (not c!510813)) b!3071809))

(assert (= (and b!3071813 (not res!1260656)) b!3071811))

(assert (= (and b!3071813 c!510808) b!3071810))

(assert (= (and b!3071813 (not c!510808)) b!3071830))

(assert (= (and b!3071830 c!510812) b!3071826))

(assert (= (and b!3071830 (not c!510812)) b!3071816))

(assert (= (and b!3071816 c!510817) b!3071818))

(assert (= (and b!3071816 (not c!510817)) b!3071815))

(assert (= (or b!3071812 b!3071813) bm!213388))

(assert (= (or b!3071812 b!3071813) bm!213389))

(assert (= (or b!3071828 b!3071811) bm!213387))

(assert (= (or b!3071812 b!3071813) bm!213391))

(assert (= (or b!3071829 b!3071816) bm!213390))

(assert (= (or b!3071824 bm!213388) bm!213386))

(assert (= (or b!3071824 bm!213391) bm!213385))

(assert (= (and d!856333 res!1260658) b!3071832))

(declare-fun m!3385935 () Bool)

(assert (=> bm!213390 m!3385935))

(declare-fun m!3385937 () Bool)

(assert (=> bm!213389 m!3385937))

(declare-fun m!3385939 () Bool)

(assert (=> d!856333 m!3385939))

(assert (=> d!856333 m!3385679))

(declare-fun m!3385941 () Bool)

(assert (=> bm!213385 m!3385941))

(declare-fun m!3385943 () Bool)

(assert (=> b!3071832 m!3385943))

(assert (=> b!3071832 m!3385755))

(declare-fun m!3385945 () Bool)

(assert (=> b!3071830 m!3385945))

(declare-fun m!3385947 () Bool)

(assert (=> bm!213386 m!3385947))

(declare-fun m!3385949 () Bool)

(assert (=> bm!213387 m!3385949))

(assert (=> b!3071217 d!856333))

(declare-fun b!3071833 () Bool)

(declare-fun e!1922437 () Regex!9515)

(assert (=> b!3071833 (= e!1922437 EmptyExpr!9515)))

(declare-fun b!3071834 () Bool)

(declare-fun e!1922438 () Regex!9515)

(declare-fun lt!1051680 () Regex!9515)

(declare-fun lt!1051682 () Regex!9515)

(assert (=> b!3071834 (= e!1922438 (Union!9515 lt!1051680 lt!1051682))))

(declare-fun b!3071836 () Bool)

(declare-fun e!1922433 () Bool)

(declare-fun call!213402 () Bool)

(assert (=> b!3071836 (= e!1922433 call!213402)))

(declare-fun b!3071837 () Bool)

(declare-fun e!1922436 () Regex!9515)

(declare-fun e!1922429 () Regex!9515)

(assert (=> b!3071837 (= e!1922436 e!1922429)))

(declare-fun call!213398 () Regex!9515)

(assert (=> b!3071837 (= lt!1051680 call!213398)))

(declare-fun call!213399 () Regex!9515)

(assert (=> b!3071837 (= lt!1051682 call!213399)))

(declare-fun c!510829 () Bool)

(declare-fun call!213401 () Bool)

(assert (=> b!3071837 (= c!510829 call!213401)))

(declare-fun b!3071838 () Bool)

(declare-fun e!1922440 () Regex!9515)

(assert (=> b!3071838 (= e!1922436 e!1922440)))

(declare-fun lt!1051679 () Regex!9515)

(assert (=> b!3071838 (= lt!1051679 call!213399)))

(declare-fun lt!1051678 () Regex!9515)

(assert (=> b!3071838 (= lt!1051678 call!213398)))

(declare-fun res!1260659 () Bool)

(assert (=> b!3071838 (= res!1260659 call!213401)))

(assert (=> b!3071838 (=> res!1260659 e!1922433)))

(declare-fun c!510819 () Bool)

(assert (=> b!3071838 (= c!510819 e!1922433)))

(declare-fun b!3071839 () Bool)

(declare-fun e!1922431 () Regex!9515)

(declare-fun e!1922441 () Regex!9515)

(assert (=> b!3071839 (= e!1922431 e!1922441)))

(declare-fun c!510821 () Bool)

(assert (=> b!3071839 (= c!510821 ((_ is Star!9515) (regOne!19542 r!17423)))))

(declare-fun b!3071840 () Bool)

(declare-fun e!1922439 () Regex!9515)

(assert (=> b!3071840 (= e!1922439 (Concat!14836 lt!1051679 lt!1051678))))

(declare-fun c!510827 () Bool)

(declare-fun lt!1051677 () Regex!9515)

(declare-fun call!213397 () Bool)

(declare-fun bm!213392 () Bool)

(assert (=> bm!213392 (= call!213397 (isEmptyLang!566 (ite c!510821 lt!1051677 (ite c!510827 lt!1051680 lt!1051679))))))

(declare-fun b!3071841 () Bool)

(declare-fun e!1922442 () Regex!9515)

(assert (=> b!3071841 (= e!1922442 e!1922439)))

(declare-fun c!510828 () Bool)

(declare-fun call!213403 () Bool)

(assert (=> b!3071841 (= c!510828 call!213403)))

(declare-fun b!3071842 () Bool)

(assert (=> b!3071842 (= c!510827 ((_ is Union!9515) (regOne!19542 r!17423)))))

(assert (=> b!3071842 (= e!1922441 e!1922436)))

(declare-fun b!3071843 () Bool)

(assert (=> b!3071843 (= e!1922439 lt!1051679)))

(declare-fun b!3071835 () Bool)

(assert (=> b!3071835 (= e!1922440 EmptyLang!9515)))

(declare-fun d!856335 () Bool)

(declare-fun e!1922434 () Bool)

(assert (=> d!856335 e!1922434))

(declare-fun res!1260661 () Bool)

(assert (=> d!856335 (=> (not res!1260661) (not e!1922434))))

(declare-fun lt!1051681 () Regex!9515)

(assert (=> d!856335 (= res!1260661 (validRegex!4248 lt!1051681))))

(declare-fun e!1922435 () Regex!9515)

(assert (=> d!856335 (= lt!1051681 e!1922435)))

(declare-fun c!510822 () Bool)

(assert (=> d!856335 (= c!510822 ((_ is EmptyLang!9515) (regOne!19542 r!17423)))))

(assert (=> d!856335 (validRegex!4248 (regOne!19542 r!17423))))

(assert (=> d!856335 (= (simplify!470 (regOne!19542 r!17423)) lt!1051681)))

(declare-fun b!3071844 () Bool)

(assert (=> b!3071844 (= e!1922437 (Star!9515 lt!1051677))))

(declare-fun b!3071845 () Bool)

(declare-fun c!510825 () Bool)

(assert (=> b!3071845 (= c!510825 ((_ is EmptyExpr!9515) (regOne!19542 r!17423)))))

(declare-fun e!1922432 () Regex!9515)

(assert (=> b!3071845 (= e!1922432 e!1922431)))

(declare-fun bm!213393 () Bool)

(declare-fun call!213400 () Regex!9515)

(assert (=> bm!213393 (= call!213400 (simplify!470 (ite c!510821 (reg!9844 (regOne!19542 r!17423)) (ite c!510827 (regOne!19543 (regOne!19542 r!17423)) (regTwo!19542 (regOne!19542 r!17423))))))))

(declare-fun bm!213394 () Bool)

(assert (=> bm!213394 (= call!213402 (isEmptyLang!566 (ite c!510827 lt!1051682 lt!1051678)))))

(declare-fun b!3071846 () Bool)

(assert (=> b!3071846 (= e!1922435 EmptyLang!9515)))

(declare-fun b!3071847 () Bool)

(assert (=> b!3071847 (= e!1922432 (regOne!19542 r!17423))))

(declare-fun b!3071848 () Bool)

(assert (=> b!3071848 (= e!1922435 e!1922432)))

(declare-fun c!510820 () Bool)

(assert (=> b!3071848 (= c!510820 ((_ is ElementMatch!9515) (regOne!19542 r!17423)))))

(declare-fun bm!213395 () Bool)

(assert (=> bm!213395 (= call!213398 call!213400)))

(declare-fun b!3071849 () Bool)

(declare-fun c!510826 () Bool)

(declare-fun e!1922430 () Bool)

(assert (=> b!3071849 (= c!510826 e!1922430)))

(declare-fun res!1260660 () Bool)

(assert (=> b!3071849 (=> res!1260660 e!1922430)))

(assert (=> b!3071849 (= res!1260660 call!213397)))

(assert (=> b!3071849 (= lt!1051677 call!213400)))

(assert (=> b!3071849 (= e!1922441 e!1922437)))

(declare-fun b!3071850 () Bool)

(assert (=> b!3071850 (= e!1922431 EmptyExpr!9515)))

(declare-fun bm!213396 () Bool)

(assert (=> bm!213396 (= call!213399 (simplify!470 (ite c!510827 (regTwo!19543 (regOne!19542 r!17423)) (regOne!19542 (regOne!19542 r!17423)))))))

(declare-fun b!3071851 () Bool)

(assert (=> b!3071851 (= e!1922442 lt!1051678)))

(declare-fun b!3071852 () Bool)

(assert (=> b!3071852 (= e!1922438 lt!1051680)))

(declare-fun b!3071853 () Bool)

(declare-fun c!510824 () Bool)

(assert (=> b!3071853 (= c!510824 call!213402)))

(assert (=> b!3071853 (= e!1922429 e!1922438)))

(declare-fun b!3071854 () Bool)

(assert (=> b!3071854 (= e!1922430 call!213403)))

(declare-fun b!3071855 () Bool)

(declare-fun c!510823 () Bool)

(assert (=> b!3071855 (= c!510823 (isEmptyExpr!572 lt!1051679))))

(assert (=> b!3071855 (= e!1922440 e!1922442)))

(declare-fun bm!213397 () Bool)

(assert (=> bm!213397 (= call!213403 (isEmptyExpr!572 (ite c!510821 lt!1051677 lt!1051678)))))

(declare-fun bm!213398 () Bool)

(assert (=> bm!213398 (= call!213401 call!213397)))

(declare-fun b!3071856 () Bool)

(assert (=> b!3071856 (= e!1922429 lt!1051682)))

(declare-fun b!3071857 () Bool)

(assert (=> b!3071857 (= e!1922434 (= (nullable!3161 lt!1051681) (nullable!3161 (regOne!19542 r!17423))))))

(assert (= (and d!856335 c!510822) b!3071846))

(assert (= (and d!856335 (not c!510822)) b!3071848))

(assert (= (and b!3071848 c!510820) b!3071847))

(assert (= (and b!3071848 (not c!510820)) b!3071845))

(assert (= (and b!3071845 c!510825) b!3071850))

(assert (= (and b!3071845 (not c!510825)) b!3071839))

(assert (= (and b!3071839 c!510821) b!3071849))

(assert (= (and b!3071839 (not c!510821)) b!3071842))

(assert (= (and b!3071849 (not res!1260660)) b!3071854))

(assert (= (and b!3071849 c!510826) b!3071833))

(assert (= (and b!3071849 (not c!510826)) b!3071844))

(assert (= (and b!3071842 c!510827) b!3071837))

(assert (= (and b!3071842 (not c!510827)) b!3071838))

(assert (= (and b!3071837 c!510829) b!3071856))

(assert (= (and b!3071837 (not c!510829)) b!3071853))

(assert (= (and b!3071853 c!510824) b!3071852))

(assert (= (and b!3071853 (not c!510824)) b!3071834))

(assert (= (and b!3071838 (not res!1260659)) b!3071836))

(assert (= (and b!3071838 c!510819) b!3071835))

(assert (= (and b!3071838 (not c!510819)) b!3071855))

(assert (= (and b!3071855 c!510823) b!3071851))

(assert (= (and b!3071855 (not c!510823)) b!3071841))

(assert (= (and b!3071841 c!510828) b!3071843))

(assert (= (and b!3071841 (not c!510828)) b!3071840))

(assert (= (or b!3071837 b!3071838) bm!213395))

(assert (= (or b!3071837 b!3071838) bm!213396))

(assert (= (or b!3071853 b!3071836) bm!213394))

(assert (= (or b!3071837 b!3071838) bm!213398))

(assert (= (or b!3071854 b!3071841) bm!213397))

(assert (= (or b!3071849 bm!213395) bm!213393))

(assert (= (or b!3071849 bm!213398) bm!213392))

(assert (= (and d!856335 res!1260661) b!3071857))

(declare-fun m!3385951 () Bool)

(assert (=> bm!213397 m!3385951))

(declare-fun m!3385953 () Bool)

(assert (=> bm!213396 m!3385953))

(declare-fun m!3385955 () Bool)

(assert (=> d!856335 m!3385955))

(assert (=> d!856335 m!3385715))

(declare-fun m!3385957 () Bool)

(assert (=> bm!213392 m!3385957))

(declare-fun m!3385959 () Bool)

(assert (=> b!3071857 m!3385959))

(assert (=> b!3071857 m!3385777))

(declare-fun m!3385961 () Bool)

(assert (=> b!3071855 m!3385961))

(declare-fun m!3385963 () Bool)

(assert (=> bm!213393 m!3385963))

(declare-fun m!3385965 () Bool)

(assert (=> bm!213394 m!3385965))

(assert (=> b!3071217 d!856335))

(declare-fun b!3071858 () Bool)

(declare-fun e!1922445 () Bool)

(declare-fun e!1922446 () Bool)

(assert (=> b!3071858 (= e!1922445 e!1922446)))

(declare-fun res!1260666 () Bool)

(assert (=> b!3071858 (=> (not res!1260666) (not e!1922446))))

(declare-fun call!213405 () Bool)

(assert (=> b!3071858 (= res!1260666 call!213405)))

(declare-fun call!213406 () Bool)

(declare-fun c!510830 () Bool)

(declare-fun bm!213399 () Bool)

(declare-fun c!510831 () Bool)

(assert (=> bm!213399 (= call!213406 (validRegex!4248 (ite c!510831 (reg!9844 (regOne!19542 r!17423)) (ite c!510830 (regTwo!19543 (regOne!19542 r!17423)) (regOne!19542 (regOne!19542 r!17423))))))))

(declare-fun b!3071859 () Bool)

(declare-fun e!1922443 () Bool)

(declare-fun e!1922449 () Bool)

(assert (=> b!3071859 (= e!1922443 e!1922449)))

(assert (=> b!3071859 (= c!510830 ((_ is Union!9515) (regOne!19542 r!17423)))))

(declare-fun bm!213400 () Bool)

(assert (=> bm!213400 (= call!213405 call!213406)))

(declare-fun b!3071860 () Bool)

(declare-fun res!1260662 () Bool)

(declare-fun e!1922447 () Bool)

(assert (=> b!3071860 (=> (not res!1260662) (not e!1922447))))

(declare-fun call!213404 () Bool)

(assert (=> b!3071860 (= res!1260662 call!213404)))

(assert (=> b!3071860 (= e!1922449 e!1922447)))

(declare-fun b!3071861 () Bool)

(assert (=> b!3071861 (= e!1922446 call!213404)))

(declare-fun b!3071863 () Bool)

(declare-fun e!1922444 () Bool)

(assert (=> b!3071863 (= e!1922444 call!213406)))

(declare-fun b!3071864 () Bool)

(assert (=> b!3071864 (= e!1922447 call!213405)))

(declare-fun bm!213401 () Bool)

(assert (=> bm!213401 (= call!213404 (validRegex!4248 (ite c!510830 (regOne!19543 (regOne!19542 r!17423)) (regTwo!19542 (regOne!19542 r!17423)))))))

(declare-fun b!3071865 () Bool)

(declare-fun e!1922448 () Bool)

(assert (=> b!3071865 (= e!1922448 e!1922443)))

(assert (=> b!3071865 (= c!510831 ((_ is Star!9515) (regOne!19542 r!17423)))))

(declare-fun b!3071866 () Bool)

(declare-fun res!1260665 () Bool)

(assert (=> b!3071866 (=> res!1260665 e!1922445)))

(assert (=> b!3071866 (= res!1260665 (not ((_ is Concat!14836) (regOne!19542 r!17423))))))

(assert (=> b!3071866 (= e!1922449 e!1922445)))

(declare-fun b!3071862 () Bool)

(assert (=> b!3071862 (= e!1922443 e!1922444)))

(declare-fun res!1260663 () Bool)

(assert (=> b!3071862 (= res!1260663 (not (nullable!3161 (reg!9844 (regOne!19542 r!17423)))))))

(assert (=> b!3071862 (=> (not res!1260663) (not e!1922444))))

(declare-fun d!856337 () Bool)

(declare-fun res!1260664 () Bool)

(assert (=> d!856337 (=> res!1260664 e!1922448)))

(assert (=> d!856337 (= res!1260664 ((_ is ElementMatch!9515) (regOne!19542 r!17423)))))

(assert (=> d!856337 (= (validRegex!4248 (regOne!19542 r!17423)) e!1922448)))

(assert (= (and d!856337 (not res!1260664)) b!3071865))

(assert (= (and b!3071865 c!510831) b!3071862))

(assert (= (and b!3071865 (not c!510831)) b!3071859))

(assert (= (and b!3071862 res!1260663) b!3071863))

(assert (= (and b!3071859 c!510830) b!3071860))

(assert (= (and b!3071859 (not c!510830)) b!3071866))

(assert (= (and b!3071860 res!1260662) b!3071864))

(assert (= (and b!3071866 (not res!1260665)) b!3071858))

(assert (= (and b!3071858 res!1260666) b!3071861))

(assert (= (or b!3071860 b!3071861) bm!213401))

(assert (= (or b!3071864 b!3071858) bm!213400))

(assert (= (or b!3071863 bm!213400) bm!213399))

(declare-fun m!3385967 () Bool)

(assert (=> bm!213399 m!3385967))

(declare-fun m!3385969 () Bool)

(assert (=> bm!213401 m!3385969))

(declare-fun m!3385971 () Bool)

(assert (=> b!3071862 m!3385971))

(assert (=> b!3071218 d!856337))

(declare-fun d!856339 () Bool)

(assert (=> d!856339 (= (isEmpty!19581 s!11993) ((_ is Nil!35256) s!11993))))

(assert (=> b!3071223 d!856339))

(declare-fun b!3071877 () Bool)

(declare-fun e!1922452 () Bool)

(assert (=> b!3071877 (= e!1922452 tp_is_empty!16593)))

(declare-fun b!3071880 () Bool)

(declare-fun tp!968950 () Bool)

(declare-fun tp!968949 () Bool)

(assert (=> b!3071880 (= e!1922452 (and tp!968950 tp!968949))))

(declare-fun b!3071878 () Bool)

(declare-fun tp!968947 () Bool)

(declare-fun tp!968946 () Bool)

(assert (=> b!3071878 (= e!1922452 (and tp!968947 tp!968946))))

(declare-fun b!3071879 () Bool)

(declare-fun tp!968948 () Bool)

(assert (=> b!3071879 (= e!1922452 tp!968948)))

(assert (=> b!3071219 (= tp!968894 e!1922452)))

(assert (= (and b!3071219 ((_ is ElementMatch!9515) (regOne!19542 r!17423))) b!3071877))

(assert (= (and b!3071219 ((_ is Concat!14836) (regOne!19542 r!17423))) b!3071878))

(assert (= (and b!3071219 ((_ is Star!9515) (regOne!19542 r!17423))) b!3071879))

(assert (= (and b!3071219 ((_ is Union!9515) (regOne!19542 r!17423))) b!3071880))

(declare-fun b!3071881 () Bool)

(declare-fun e!1922453 () Bool)

(assert (=> b!3071881 (= e!1922453 tp_is_empty!16593)))

(declare-fun b!3071884 () Bool)

(declare-fun tp!968955 () Bool)

(declare-fun tp!968954 () Bool)

(assert (=> b!3071884 (= e!1922453 (and tp!968955 tp!968954))))

(declare-fun b!3071882 () Bool)

(declare-fun tp!968952 () Bool)

(declare-fun tp!968951 () Bool)

(assert (=> b!3071882 (= e!1922453 (and tp!968952 tp!968951))))

(declare-fun b!3071883 () Bool)

(declare-fun tp!968953 () Bool)

(assert (=> b!3071883 (= e!1922453 tp!968953)))

(assert (=> b!3071219 (= tp!968895 e!1922453)))

(assert (= (and b!3071219 ((_ is ElementMatch!9515) (regTwo!19542 r!17423))) b!3071881))

(assert (= (and b!3071219 ((_ is Concat!14836) (regTwo!19542 r!17423))) b!3071882))

(assert (= (and b!3071219 ((_ is Star!9515) (regTwo!19542 r!17423))) b!3071883))

(assert (= (and b!3071219 ((_ is Union!9515) (regTwo!19542 r!17423))) b!3071884))

(declare-fun b!3071889 () Bool)

(declare-fun e!1922456 () Bool)

(declare-fun tp!968958 () Bool)

(assert (=> b!3071889 (= e!1922456 (and tp_is_empty!16593 tp!968958))))

(assert (=> b!3071220 (= tp!968897 e!1922456)))

(assert (= (and b!3071220 ((_ is Cons!35256) (t!234445 s!11993))) b!3071889))

(declare-fun b!3071890 () Bool)

(declare-fun e!1922457 () Bool)

(assert (=> b!3071890 (= e!1922457 tp_is_empty!16593)))

(declare-fun b!3071893 () Bool)

(declare-fun tp!968963 () Bool)

(declare-fun tp!968962 () Bool)

(assert (=> b!3071893 (= e!1922457 (and tp!968963 tp!968962))))

(declare-fun b!3071891 () Bool)

(declare-fun tp!968960 () Bool)

(declare-fun tp!968959 () Bool)

(assert (=> b!3071891 (= e!1922457 (and tp!968960 tp!968959))))

(declare-fun b!3071892 () Bool)

(declare-fun tp!968961 () Bool)

(assert (=> b!3071892 (= e!1922457 tp!968961)))

(assert (=> b!3071224 (= tp!968893 e!1922457)))

(assert (= (and b!3071224 ((_ is ElementMatch!9515) (reg!9844 r!17423))) b!3071890))

(assert (= (and b!3071224 ((_ is Concat!14836) (reg!9844 r!17423))) b!3071891))

(assert (= (and b!3071224 ((_ is Star!9515) (reg!9844 r!17423))) b!3071892))

(assert (= (and b!3071224 ((_ is Union!9515) (reg!9844 r!17423))) b!3071893))

(declare-fun b!3071894 () Bool)

(declare-fun e!1922458 () Bool)

(assert (=> b!3071894 (= e!1922458 tp_is_empty!16593)))

(declare-fun b!3071897 () Bool)

(declare-fun tp!968968 () Bool)

(declare-fun tp!968967 () Bool)

(assert (=> b!3071897 (= e!1922458 (and tp!968968 tp!968967))))

(declare-fun b!3071895 () Bool)

(declare-fun tp!968965 () Bool)

(declare-fun tp!968964 () Bool)

(assert (=> b!3071895 (= e!1922458 (and tp!968965 tp!968964))))

(declare-fun b!3071896 () Bool)

(declare-fun tp!968966 () Bool)

(assert (=> b!3071896 (= e!1922458 tp!968966)))

(assert (=> b!3071213 (= tp!968892 e!1922458)))

(assert (= (and b!3071213 ((_ is ElementMatch!9515) (regOne!19543 r!17423))) b!3071894))

(assert (= (and b!3071213 ((_ is Concat!14836) (regOne!19543 r!17423))) b!3071895))

(assert (= (and b!3071213 ((_ is Star!9515) (regOne!19543 r!17423))) b!3071896))

(assert (= (and b!3071213 ((_ is Union!9515) (regOne!19543 r!17423))) b!3071897))

(declare-fun b!3071898 () Bool)

(declare-fun e!1922459 () Bool)

(assert (=> b!3071898 (= e!1922459 tp_is_empty!16593)))

(declare-fun b!3071901 () Bool)

(declare-fun tp!968973 () Bool)

(declare-fun tp!968972 () Bool)

(assert (=> b!3071901 (= e!1922459 (and tp!968973 tp!968972))))

(declare-fun b!3071899 () Bool)

(declare-fun tp!968970 () Bool)

(declare-fun tp!968969 () Bool)

(assert (=> b!3071899 (= e!1922459 (and tp!968970 tp!968969))))

(declare-fun b!3071900 () Bool)

(declare-fun tp!968971 () Bool)

(assert (=> b!3071900 (= e!1922459 tp!968971)))

(assert (=> b!3071213 (= tp!968896 e!1922459)))

(assert (= (and b!3071213 ((_ is ElementMatch!9515) (regTwo!19543 r!17423))) b!3071898))

(assert (= (and b!3071213 ((_ is Concat!14836) (regTwo!19543 r!17423))) b!3071899))

(assert (= (and b!3071213 ((_ is Star!9515) (regTwo!19543 r!17423))) b!3071900))

(assert (= (and b!3071213 ((_ is Union!9515) (regTwo!19543 r!17423))) b!3071901))

(check-sat (not b!3071369) (not b!3071355) (not b!3071350) (not d!856335) (not b!3071363) (not bm!213367) (not b!3071897) (not b!3071893) (not b!3071685) (not b!3071891) (not b!3071753) (not b!3071855) (not b!3071702) (not bm!213357) (not b!3071299) (not b!3071880) (not d!856267) (not b!3071701) (not bm!213401) (not b!3071356) (not b!3071720) (not bm!213392) (not b!3071707) (not b!3071365) (not bm!213368) (not bm!213301) (not b!3071349) (not b!3071706) (not bm!213390) (not bm!213399) (not b!3071348) (not bm!213397) (not b!3071362) (not d!856265) (not b!3071896) (not bm!213393) (not b!3071298) (not b!3071830) (not b!3071700) (not b!3071351) (not b!3071301) (not b!3071744) (not bm!213304) (not b!3071884) (not bm!213358) (not b!3071318) (not b!3071319) (not bm!213389) (not bm!213396) (not bm!213386) (not bm!213365) (not b!3071688) (not b!3071889) (not bm!213385) (not b!3071316) (not b!3071895) (not b!3071879) (not d!856317) (not d!856277) (not b!3071300) (not d!856321) (not b!3071305) (not bm!213303) (not bm!213394) (not b!3071883) (not b!3071900) (not b!3071832) (not d!856271) (not b!3071323) (not b!3071862) (not bm!213302) tp_is_empty!16593 (not b!3071878) (not d!856279) (not bm!213356) (not bm!213387) (not b!3071699) (not b!3071364) (not b!3071857) (not b!3071370) (not d!856333) (not b!3071306) (not bm!213370) (not b!3071899) (not b!3071317) (not b!3071719) (not b!3071901) (not d!856281) (not b!3071324) (not d!856319) (not b!3071892) (not b!3071882))
(check-sat)
