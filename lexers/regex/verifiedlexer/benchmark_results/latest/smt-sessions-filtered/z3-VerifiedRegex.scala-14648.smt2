; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756836 () Bool)

(assert start!756836)

(declare-fun b!8037199 () Bool)

(declare-fun e!4734149 () Bool)

(declare-fun tp_is_empty!54493 () Bool)

(assert (=> b!8037199 (= e!4734149 tp_is_empty!54493)))

(declare-fun b!8037200 () Bool)

(declare-fun res!3177315 () Bool)

(declare-fun e!4734148 () Bool)

(assert (=> b!8037200 (=> (not res!3177315) (not e!4734148))))

(declare-datatypes ((C!43836 0))(
  ( (C!43837 (val!32694 Int)) )
))
(declare-datatypes ((Regex!21749 0))(
  ( (ElementMatch!21749 (c!1474470 C!43836)) (Concat!30752 (regOne!44010 Regex!21749) (regTwo!44010 Regex!21749)) (EmptyExpr!21749) (Star!21749 (reg!22078 Regex!21749)) (EmptyLang!21749) (Union!21749 (regOne!44011 Regex!21749) (regTwo!44011 Regex!21749)) )
))
(declare-fun r!13107 () Regex!21749)

(declare-fun nullable!9774 (Regex!21749) Bool)

(assert (=> b!8037200 (= res!3177315 (nullable!9774 (regOne!44010 r!13107)))))

(declare-fun b!8037201 () Bool)

(declare-fun res!3177317 () Bool)

(assert (=> b!8037201 (=> (not res!3177317) (not e!4734148))))

(get-info :version)

(assert (=> b!8037201 (= res!3177317 (and (not ((_ is EmptyExpr!21749) r!13107)) (not ((_ is EmptyLang!21749) r!13107)) (not ((_ is ElementMatch!21749) r!13107)) (not ((_ is Union!21749) r!13107)) (not ((_ is Star!21749) r!13107))))))

(declare-fun b!8037202 () Bool)

(declare-fun tp!2406789 () Bool)

(assert (=> b!8037202 (= e!4734149 tp!2406789)))

(declare-fun b!8037203 () Bool)

(declare-fun a!2390 () C!43836)

(declare-fun validRegex!12045 (Regex!21749) Bool)

(declare-fun derivativeStep!6668 (Regex!21749 C!43836) Regex!21749)

(assert (=> b!8037203 (= e!4734148 (not (validRegex!12045 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))

(declare-fun b!8037204 () Bool)

(declare-fun tp!2406792 () Bool)

(declare-fun tp!2406791 () Bool)

(assert (=> b!8037204 (= e!4734149 (and tp!2406792 tp!2406791))))

(declare-fun b!8037205 () Bool)

(declare-fun tp!2406790 () Bool)

(declare-fun tp!2406793 () Bool)

(assert (=> b!8037205 (= e!4734149 (and tp!2406790 tp!2406793))))

(declare-fun res!3177316 () Bool)

(assert (=> start!756836 (=> (not res!3177316) (not e!4734148))))

(assert (=> start!756836 (= res!3177316 (validRegex!12045 r!13107))))

(assert (=> start!756836 e!4734148))

(assert (=> start!756836 e!4734149))

(assert (=> start!756836 tp_is_empty!54493))

(assert (= (and start!756836 res!3177316) b!8037201))

(assert (= (and b!8037201 res!3177317) b!8037200))

(assert (= (and b!8037200 res!3177315) b!8037203))

(assert (= (and start!756836 ((_ is ElementMatch!21749) r!13107)) b!8037199))

(assert (= (and start!756836 ((_ is Concat!30752) r!13107)) b!8037205))

(assert (= (and start!756836 ((_ is Star!21749) r!13107)) b!8037202))

(assert (= (and start!756836 ((_ is Union!21749) r!13107)) b!8037204))

(declare-fun m!8393616 () Bool)

(assert (=> b!8037200 m!8393616))

(declare-fun m!8393618 () Bool)

(assert (=> b!8037203 m!8393618))

(declare-fun m!8393620 () Bool)

(assert (=> b!8037203 m!8393620))

(declare-fun m!8393622 () Bool)

(assert (=> b!8037203 m!8393622))

(declare-fun m!8393624 () Bool)

(assert (=> start!756836 m!8393624))

(check-sat (not b!8037200) (not b!8037203) (not b!8037202) (not b!8037204) (not b!8037205) tp_is_empty!54493 (not start!756836))
(check-sat)
(get-model)

(declare-fun b!8037224 () Bool)

(declare-fun e!4734165 () Bool)

(declare-fun e!4734168 () Bool)

(assert (=> b!8037224 (= e!4734165 e!4734168)))

(declare-fun res!3177331 () Bool)

(assert (=> b!8037224 (= res!3177331 (not (nullable!9774 (reg!22078 r!13107))))))

(assert (=> b!8037224 (=> (not res!3177331) (not e!4734168))))

(declare-fun b!8037225 () Bool)

(declare-fun e!4734167 () Bool)

(assert (=> b!8037225 (= e!4734165 e!4734167)))

(declare-fun c!1474475 () Bool)

(assert (=> b!8037225 (= c!1474475 ((_ is Union!21749) r!13107))))

(declare-fun b!8037226 () Bool)

(declare-fun res!3177328 () Bool)

(declare-fun e!4734170 () Bool)

(assert (=> b!8037226 (=> (not res!3177328) (not e!4734170))))

(declare-fun call!745951 () Bool)

(assert (=> b!8037226 (= res!3177328 call!745951)))

(assert (=> b!8037226 (= e!4734167 e!4734170)))

(declare-fun bm!745947 () Bool)

(assert (=> bm!745947 (= call!745951 (validRegex!12045 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))

(declare-fun b!8037227 () Bool)

(declare-fun e!4734169 () Bool)

(declare-fun e!4734166 () Bool)

(assert (=> b!8037227 (= e!4734169 e!4734166)))

(declare-fun res!3177330 () Bool)

(assert (=> b!8037227 (=> (not res!3177330) (not e!4734166))))

(assert (=> b!8037227 (= res!3177330 call!745951)))

(declare-fun b!8037228 () Bool)

(declare-fun res!3177329 () Bool)

(assert (=> b!8037228 (=> res!3177329 e!4734169)))

(assert (=> b!8037228 (= res!3177329 (not ((_ is Concat!30752) r!13107)))))

(assert (=> b!8037228 (= e!4734167 e!4734169)))

(declare-fun b!8037229 () Bool)

(declare-fun call!745953 () Bool)

(assert (=> b!8037229 (= e!4734166 call!745953)))

(declare-fun bm!745948 () Bool)

(declare-fun call!745952 () Bool)

(assert (=> bm!745948 (= call!745953 call!745952)))

(declare-fun b!8037230 () Bool)

(assert (=> b!8037230 (= e!4734168 call!745952)))

(declare-fun d!2395123 () Bool)

(declare-fun res!3177332 () Bool)

(declare-fun e!4734164 () Bool)

(assert (=> d!2395123 (=> res!3177332 e!4734164)))

(assert (=> d!2395123 (= res!3177332 ((_ is ElementMatch!21749) r!13107))))

(assert (=> d!2395123 (= (validRegex!12045 r!13107) e!4734164)))

(declare-fun bm!745946 () Bool)

(declare-fun c!1474476 () Bool)

(assert (=> bm!745946 (= call!745952 (validRegex!12045 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))

(declare-fun b!8037231 () Bool)

(assert (=> b!8037231 (= e!4734164 e!4734165)))

(assert (=> b!8037231 (= c!1474476 ((_ is Star!21749) r!13107))))

(declare-fun b!8037232 () Bool)

(assert (=> b!8037232 (= e!4734170 call!745953)))

(assert (= (and d!2395123 (not res!3177332)) b!8037231))

(assert (= (and b!8037231 c!1474476) b!8037224))

(assert (= (and b!8037231 (not c!1474476)) b!8037225))

(assert (= (and b!8037224 res!3177331) b!8037230))

(assert (= (and b!8037225 c!1474475) b!8037226))

(assert (= (and b!8037225 (not c!1474475)) b!8037228))

(assert (= (and b!8037226 res!3177328) b!8037232))

(assert (= (and b!8037228 (not res!3177329)) b!8037227))

(assert (= (and b!8037227 res!3177330) b!8037229))

(assert (= (or b!8037232 b!8037229) bm!745948))

(assert (= (or b!8037226 b!8037227) bm!745947))

(assert (= (or b!8037230 bm!745948) bm!745946))

(declare-fun m!8393626 () Bool)

(assert (=> b!8037224 m!8393626))

(declare-fun m!8393628 () Bool)

(assert (=> bm!745947 m!8393628))

(declare-fun m!8393630 () Bool)

(assert (=> bm!745946 m!8393630))

(assert (=> start!756836 d!2395123))

(declare-fun d!2395127 () Bool)

(declare-fun nullableFct!3867 (Regex!21749) Bool)

(assert (=> d!2395127 (= (nullable!9774 (regOne!44010 r!13107)) (nullableFct!3867 (regOne!44010 r!13107)))))

(declare-fun bs!1971519 () Bool)

(assert (= bs!1971519 d!2395127))

(declare-fun m!8393632 () Bool)

(assert (=> bs!1971519 m!8393632))

(assert (=> b!8037200 d!2395127))

(declare-fun b!8037233 () Bool)

(declare-fun e!4734172 () Bool)

(declare-fun e!4734175 () Bool)

(assert (=> b!8037233 (= e!4734172 e!4734175)))

(declare-fun res!3177336 () Bool)

(assert (=> b!8037233 (= res!3177336 (not (nullable!9774 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))

(assert (=> b!8037233 (=> (not res!3177336) (not e!4734175))))

(declare-fun b!8037234 () Bool)

(declare-fun e!4734174 () Bool)

(assert (=> b!8037234 (= e!4734172 e!4734174)))

(declare-fun c!1474477 () Bool)

(assert (=> b!8037234 (= c!1474477 ((_ is Union!21749) (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))

(declare-fun b!8037235 () Bool)

(declare-fun res!3177333 () Bool)

(declare-fun e!4734177 () Bool)

(assert (=> b!8037235 (=> (not res!3177333) (not e!4734177))))

(declare-fun call!745954 () Bool)

(assert (=> b!8037235 (= res!3177333 call!745954)))

(assert (=> b!8037235 (= e!4734174 e!4734177)))

(declare-fun bm!745950 () Bool)

(assert (=> bm!745950 (= call!745954 (validRegex!12045 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))

(declare-fun b!8037236 () Bool)

(declare-fun e!4734176 () Bool)

(declare-fun e!4734173 () Bool)

(assert (=> b!8037236 (= e!4734176 e!4734173)))

(declare-fun res!3177335 () Bool)

(assert (=> b!8037236 (=> (not res!3177335) (not e!4734173))))

(assert (=> b!8037236 (= res!3177335 call!745954)))

(declare-fun b!8037237 () Bool)

(declare-fun res!3177334 () Bool)

(assert (=> b!8037237 (=> res!3177334 e!4734176)))

(assert (=> b!8037237 (= res!3177334 (not ((_ is Concat!30752) (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))

(assert (=> b!8037237 (= e!4734174 e!4734176)))

(declare-fun b!8037238 () Bool)

(declare-fun call!745956 () Bool)

(assert (=> b!8037238 (= e!4734173 call!745956)))

(declare-fun bm!745951 () Bool)

(declare-fun call!745955 () Bool)

(assert (=> bm!745951 (= call!745956 call!745955)))

(declare-fun b!8037239 () Bool)

(assert (=> b!8037239 (= e!4734175 call!745955)))

(declare-fun d!2395129 () Bool)

(declare-fun res!3177337 () Bool)

(declare-fun e!4734171 () Bool)

(assert (=> d!2395129 (=> res!3177337 e!4734171)))

(assert (=> d!2395129 (= res!3177337 ((_ is ElementMatch!21749) (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))

(assert (=> d!2395129 (= (validRegex!12045 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) e!4734171)))

(declare-fun bm!745949 () Bool)

(declare-fun c!1474478 () Bool)

(assert (=> bm!745949 (= call!745955 (validRegex!12045 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))

(declare-fun b!8037240 () Bool)

(assert (=> b!8037240 (= e!4734171 e!4734172)))

(assert (=> b!8037240 (= c!1474478 ((_ is Star!21749) (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))

(declare-fun b!8037241 () Bool)

(assert (=> b!8037241 (= e!4734177 call!745956)))

(assert (= (and d!2395129 (not res!3177337)) b!8037240))

(assert (= (and b!8037240 c!1474478) b!8037233))

(assert (= (and b!8037240 (not c!1474478)) b!8037234))

(assert (= (and b!8037233 res!3177336) b!8037239))

(assert (= (and b!8037234 c!1474477) b!8037235))

(assert (= (and b!8037234 (not c!1474477)) b!8037237))

(assert (= (and b!8037235 res!3177333) b!8037241))

(assert (= (and b!8037237 (not res!3177334)) b!8037236))

(assert (= (and b!8037236 res!3177335) b!8037238))

(assert (= (or b!8037241 b!8037238) bm!745951))

(assert (= (or b!8037235 b!8037236) bm!745950))

(assert (= (or b!8037239 bm!745951) bm!745949))

(declare-fun m!8393634 () Bool)

(assert (=> b!8037233 m!8393634))

(declare-fun m!8393636 () Bool)

(assert (=> bm!745950 m!8393636))

(declare-fun m!8393638 () Bool)

(assert (=> bm!745949 m!8393638))

(assert (=> b!8037203 d!2395129))

(declare-fun b!8037289 () Bool)

(declare-fun e!4734212 () Regex!21749)

(declare-fun call!745975 () Regex!21749)

(assert (=> b!8037289 (= e!4734212 (Concat!30752 call!745975 (regOne!44010 r!13107)))))

(declare-fun b!8037290 () Bool)

(declare-fun e!4734213 () Regex!21749)

(assert (=> b!8037290 (= e!4734213 e!4734212)))

(declare-fun c!1474496 () Bool)

(assert (=> b!8037290 (= c!1474496 ((_ is Star!21749) (regOne!44010 r!13107)))))

(declare-fun d!2395131 () Bool)

(declare-fun lt!2722131 () Regex!21749)

(assert (=> d!2395131 (validRegex!12045 lt!2722131)))

(declare-fun e!4734211 () Regex!21749)

(assert (=> d!2395131 (= lt!2722131 e!4734211)))

(declare-fun c!1474495 () Bool)

(assert (=> d!2395131 (= c!1474495 (or ((_ is EmptyExpr!21749) (regOne!44010 r!13107)) ((_ is EmptyLang!21749) (regOne!44010 r!13107))))))

(assert (=> d!2395131 (validRegex!12045 (regOne!44010 r!13107))))

(assert (=> d!2395131 (= (derivativeStep!6668 (regOne!44010 r!13107) a!2390) lt!2722131)))

(declare-fun b!8037291 () Bool)

(declare-fun call!745976 () Regex!21749)

(declare-fun call!745977 () Regex!21749)

(assert (=> b!8037291 (= e!4734213 (Union!21749 call!745976 call!745977))))

(declare-fun b!8037292 () Bool)

(declare-fun e!4734209 () Regex!21749)

(declare-fun call!745974 () Regex!21749)

(assert (=> b!8037292 (= e!4734209 (Union!21749 (Concat!30752 call!745974 (regTwo!44010 (regOne!44010 r!13107))) EmptyLang!21749))))

(declare-fun b!8037293 () Bool)

(declare-fun e!4734210 () Regex!21749)

(assert (=> b!8037293 (= e!4734210 (ite (= a!2390 (c!1474470 (regOne!44010 r!13107))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun b!8037294 () Bool)

(declare-fun c!1474498 () Bool)

(assert (=> b!8037294 (= c!1474498 ((_ is Union!21749) (regOne!44010 r!13107)))))

(assert (=> b!8037294 (= e!4734210 e!4734213)))

(declare-fun bm!745969 () Bool)

(assert (=> bm!745969 (= call!745976 (derivativeStep!6668 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))) a!2390))))

(declare-fun c!1474497 () Bool)

(declare-fun bm!745970 () Bool)

(assert (=> bm!745970 (= call!745977 (derivativeStep!6668 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))) a!2390))))

(declare-fun bm!745971 () Bool)

(assert (=> bm!745971 (= call!745975 call!745976)))

(declare-fun b!8037295 () Bool)

(assert (=> b!8037295 (= c!1474497 (nullable!9774 (regOne!44010 (regOne!44010 r!13107))))))

(assert (=> b!8037295 (= e!4734212 e!4734209)))

(declare-fun b!8037296 () Bool)

(assert (=> b!8037296 (= e!4734211 EmptyLang!21749)))

(declare-fun b!8037297 () Bool)

(assert (=> b!8037297 (= e!4734211 e!4734210)))

(declare-fun c!1474499 () Bool)

(assert (=> b!8037297 (= c!1474499 ((_ is ElementMatch!21749) (regOne!44010 r!13107)))))

(declare-fun bm!745972 () Bool)

(assert (=> bm!745972 (= call!745974 call!745977)))

(declare-fun b!8037298 () Bool)

(assert (=> b!8037298 (= e!4734209 (Union!21749 (Concat!30752 call!745975 (regTwo!44010 (regOne!44010 r!13107))) call!745974))))

(assert (= (and d!2395131 c!1474495) b!8037296))

(assert (= (and d!2395131 (not c!1474495)) b!8037297))

(assert (= (and b!8037297 c!1474499) b!8037293))

(assert (= (and b!8037297 (not c!1474499)) b!8037294))

(assert (= (and b!8037294 c!1474498) b!8037291))

(assert (= (and b!8037294 (not c!1474498)) b!8037290))

(assert (= (and b!8037290 c!1474496) b!8037289))

(assert (= (and b!8037290 (not c!1474496)) b!8037295))

(assert (= (and b!8037295 c!1474497) b!8037298))

(assert (= (and b!8037295 (not c!1474497)) b!8037292))

(assert (= (or b!8037298 b!8037292) bm!745972))

(assert (= (or b!8037289 b!8037298) bm!745971))

(assert (= (or b!8037291 bm!745972) bm!745970))

(assert (= (or b!8037291 bm!745971) bm!745969))

(declare-fun m!8393646 () Bool)

(assert (=> d!2395131 m!8393646))

(declare-fun m!8393648 () Bool)

(assert (=> d!2395131 m!8393648))

(declare-fun m!8393650 () Bool)

(assert (=> bm!745969 m!8393650))

(declare-fun m!8393652 () Bool)

(assert (=> bm!745970 m!8393652))

(declare-fun m!8393654 () Bool)

(assert (=> b!8037295 m!8393654))

(assert (=> b!8037203 d!2395131))

(declare-fun b!8037299 () Bool)

(declare-fun e!4734217 () Regex!21749)

(declare-fun call!745979 () Regex!21749)

(assert (=> b!8037299 (= e!4734217 (Concat!30752 call!745979 (regTwo!44010 r!13107)))))

(declare-fun b!8037300 () Bool)

(declare-fun e!4734218 () Regex!21749)

(assert (=> b!8037300 (= e!4734218 e!4734217)))

(declare-fun c!1474501 () Bool)

(assert (=> b!8037300 (= c!1474501 ((_ is Star!21749) (regTwo!44010 r!13107)))))

(declare-fun d!2395135 () Bool)

(declare-fun lt!2722132 () Regex!21749)

(assert (=> d!2395135 (validRegex!12045 lt!2722132)))

(declare-fun e!4734216 () Regex!21749)

(assert (=> d!2395135 (= lt!2722132 e!4734216)))

(declare-fun c!1474500 () Bool)

(assert (=> d!2395135 (= c!1474500 (or ((_ is EmptyExpr!21749) (regTwo!44010 r!13107)) ((_ is EmptyLang!21749) (regTwo!44010 r!13107))))))

(assert (=> d!2395135 (validRegex!12045 (regTwo!44010 r!13107))))

(assert (=> d!2395135 (= (derivativeStep!6668 (regTwo!44010 r!13107) a!2390) lt!2722132)))

(declare-fun b!8037301 () Bool)

(declare-fun call!745980 () Regex!21749)

(declare-fun call!745981 () Regex!21749)

(assert (=> b!8037301 (= e!4734218 (Union!21749 call!745980 call!745981))))

(declare-fun b!8037302 () Bool)

(declare-fun e!4734214 () Regex!21749)

(declare-fun call!745978 () Regex!21749)

(assert (=> b!8037302 (= e!4734214 (Union!21749 (Concat!30752 call!745978 (regTwo!44010 (regTwo!44010 r!13107))) EmptyLang!21749))))

(declare-fun b!8037303 () Bool)

(declare-fun e!4734215 () Regex!21749)

(assert (=> b!8037303 (= e!4734215 (ite (= a!2390 (c!1474470 (regTwo!44010 r!13107))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun b!8037304 () Bool)

(declare-fun c!1474503 () Bool)

(assert (=> b!8037304 (= c!1474503 ((_ is Union!21749) (regTwo!44010 r!13107)))))

(assert (=> b!8037304 (= e!4734215 e!4734218)))

(declare-fun bm!745973 () Bool)

(assert (=> bm!745973 (= call!745980 (derivativeStep!6668 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))) a!2390))))

(declare-fun bm!745974 () Bool)

(declare-fun c!1474502 () Bool)

(assert (=> bm!745974 (= call!745981 (derivativeStep!6668 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))) a!2390))))

(declare-fun bm!745975 () Bool)

(assert (=> bm!745975 (= call!745979 call!745980)))

(declare-fun b!8037305 () Bool)

(assert (=> b!8037305 (= c!1474502 (nullable!9774 (regOne!44010 (regTwo!44010 r!13107))))))

(assert (=> b!8037305 (= e!4734217 e!4734214)))

(declare-fun b!8037306 () Bool)

(assert (=> b!8037306 (= e!4734216 EmptyLang!21749)))

(declare-fun b!8037307 () Bool)

(assert (=> b!8037307 (= e!4734216 e!4734215)))

(declare-fun c!1474504 () Bool)

(assert (=> b!8037307 (= c!1474504 ((_ is ElementMatch!21749) (regTwo!44010 r!13107)))))

(declare-fun bm!745976 () Bool)

(assert (=> bm!745976 (= call!745978 call!745981)))

(declare-fun b!8037308 () Bool)

(assert (=> b!8037308 (= e!4734214 (Union!21749 (Concat!30752 call!745979 (regTwo!44010 (regTwo!44010 r!13107))) call!745978))))

(assert (= (and d!2395135 c!1474500) b!8037306))

(assert (= (and d!2395135 (not c!1474500)) b!8037307))

(assert (= (and b!8037307 c!1474504) b!8037303))

(assert (= (and b!8037307 (not c!1474504)) b!8037304))

(assert (= (and b!8037304 c!1474503) b!8037301))

(assert (= (and b!8037304 (not c!1474503)) b!8037300))

(assert (= (and b!8037300 c!1474501) b!8037299))

(assert (= (and b!8037300 (not c!1474501)) b!8037305))

(assert (= (and b!8037305 c!1474502) b!8037308))

(assert (= (and b!8037305 (not c!1474502)) b!8037302))

(assert (= (or b!8037308 b!8037302) bm!745976))

(assert (= (or b!8037299 b!8037308) bm!745975))

(assert (= (or b!8037301 bm!745976) bm!745974))

(assert (= (or b!8037301 bm!745975) bm!745973))

(declare-fun m!8393656 () Bool)

(assert (=> d!2395135 m!8393656))

(declare-fun m!8393658 () Bool)

(assert (=> d!2395135 m!8393658))

(declare-fun m!8393660 () Bool)

(assert (=> bm!745973 m!8393660))

(declare-fun m!8393662 () Bool)

(assert (=> bm!745974 m!8393662))

(declare-fun m!8393664 () Bool)

(assert (=> b!8037305 m!8393664))

(assert (=> b!8037203 d!2395135))

(declare-fun e!4734221 () Bool)

(assert (=> b!8037204 (= tp!2406792 e!4734221)))

(declare-fun b!8037321 () Bool)

(declare-fun tp!2406804 () Bool)

(assert (=> b!8037321 (= e!4734221 tp!2406804)))

(declare-fun b!8037319 () Bool)

(assert (=> b!8037319 (= e!4734221 tp_is_empty!54493)))

(declare-fun b!8037322 () Bool)

(declare-fun tp!2406808 () Bool)

(declare-fun tp!2406807 () Bool)

(assert (=> b!8037322 (= e!4734221 (and tp!2406808 tp!2406807))))

(declare-fun b!8037320 () Bool)

(declare-fun tp!2406805 () Bool)

(declare-fun tp!2406806 () Bool)

(assert (=> b!8037320 (= e!4734221 (and tp!2406805 tp!2406806))))

(assert (= (and b!8037204 ((_ is ElementMatch!21749) (regOne!44011 r!13107))) b!8037319))

(assert (= (and b!8037204 ((_ is Concat!30752) (regOne!44011 r!13107))) b!8037320))

(assert (= (and b!8037204 ((_ is Star!21749) (regOne!44011 r!13107))) b!8037321))

(assert (= (and b!8037204 ((_ is Union!21749) (regOne!44011 r!13107))) b!8037322))

(declare-fun e!4734222 () Bool)

(assert (=> b!8037204 (= tp!2406791 e!4734222)))

(declare-fun b!8037325 () Bool)

(declare-fun tp!2406809 () Bool)

(assert (=> b!8037325 (= e!4734222 tp!2406809)))

(declare-fun b!8037323 () Bool)

(assert (=> b!8037323 (= e!4734222 tp_is_empty!54493)))

(declare-fun b!8037326 () Bool)

(declare-fun tp!2406813 () Bool)

(declare-fun tp!2406812 () Bool)

(assert (=> b!8037326 (= e!4734222 (and tp!2406813 tp!2406812))))

(declare-fun b!8037324 () Bool)

(declare-fun tp!2406810 () Bool)

(declare-fun tp!2406811 () Bool)

(assert (=> b!8037324 (= e!4734222 (and tp!2406810 tp!2406811))))

(assert (= (and b!8037204 ((_ is ElementMatch!21749) (regTwo!44011 r!13107))) b!8037323))

(assert (= (and b!8037204 ((_ is Concat!30752) (regTwo!44011 r!13107))) b!8037324))

(assert (= (and b!8037204 ((_ is Star!21749) (regTwo!44011 r!13107))) b!8037325))

(assert (= (and b!8037204 ((_ is Union!21749) (regTwo!44011 r!13107))) b!8037326))

(declare-fun e!4734223 () Bool)

(assert (=> b!8037205 (= tp!2406790 e!4734223)))

(declare-fun b!8037329 () Bool)

(declare-fun tp!2406814 () Bool)

(assert (=> b!8037329 (= e!4734223 tp!2406814)))

(declare-fun b!8037327 () Bool)

(assert (=> b!8037327 (= e!4734223 tp_is_empty!54493)))

(declare-fun b!8037330 () Bool)

(declare-fun tp!2406818 () Bool)

(declare-fun tp!2406817 () Bool)

(assert (=> b!8037330 (= e!4734223 (and tp!2406818 tp!2406817))))

(declare-fun b!8037328 () Bool)

(declare-fun tp!2406815 () Bool)

(declare-fun tp!2406816 () Bool)

(assert (=> b!8037328 (= e!4734223 (and tp!2406815 tp!2406816))))

(assert (= (and b!8037205 ((_ is ElementMatch!21749) (regOne!44010 r!13107))) b!8037327))

(assert (= (and b!8037205 ((_ is Concat!30752) (regOne!44010 r!13107))) b!8037328))

(assert (= (and b!8037205 ((_ is Star!21749) (regOne!44010 r!13107))) b!8037329))

(assert (= (and b!8037205 ((_ is Union!21749) (regOne!44010 r!13107))) b!8037330))

(declare-fun e!4734224 () Bool)

(assert (=> b!8037205 (= tp!2406793 e!4734224)))

(declare-fun b!8037333 () Bool)

(declare-fun tp!2406819 () Bool)

(assert (=> b!8037333 (= e!4734224 tp!2406819)))

(declare-fun b!8037331 () Bool)

(assert (=> b!8037331 (= e!4734224 tp_is_empty!54493)))

(declare-fun b!8037334 () Bool)

(declare-fun tp!2406823 () Bool)

(declare-fun tp!2406822 () Bool)

(assert (=> b!8037334 (= e!4734224 (and tp!2406823 tp!2406822))))

(declare-fun b!8037332 () Bool)

(declare-fun tp!2406820 () Bool)

(declare-fun tp!2406821 () Bool)

(assert (=> b!8037332 (= e!4734224 (and tp!2406820 tp!2406821))))

(assert (= (and b!8037205 ((_ is ElementMatch!21749) (regTwo!44010 r!13107))) b!8037331))

(assert (= (and b!8037205 ((_ is Concat!30752) (regTwo!44010 r!13107))) b!8037332))

(assert (= (and b!8037205 ((_ is Star!21749) (regTwo!44010 r!13107))) b!8037333))

(assert (= (and b!8037205 ((_ is Union!21749) (regTwo!44010 r!13107))) b!8037334))

(declare-fun e!4734225 () Bool)

(assert (=> b!8037202 (= tp!2406789 e!4734225)))

(declare-fun b!8037337 () Bool)

(declare-fun tp!2406824 () Bool)

(assert (=> b!8037337 (= e!4734225 tp!2406824)))

(declare-fun b!8037335 () Bool)

(assert (=> b!8037335 (= e!4734225 tp_is_empty!54493)))

(declare-fun b!8037338 () Bool)

(declare-fun tp!2406828 () Bool)

(declare-fun tp!2406827 () Bool)

(assert (=> b!8037338 (= e!4734225 (and tp!2406828 tp!2406827))))

(declare-fun b!8037336 () Bool)

(declare-fun tp!2406825 () Bool)

(declare-fun tp!2406826 () Bool)

(assert (=> b!8037336 (= e!4734225 (and tp!2406825 tp!2406826))))

(assert (= (and b!8037202 ((_ is ElementMatch!21749) (reg!22078 r!13107))) b!8037335))

(assert (= (and b!8037202 ((_ is Concat!30752) (reg!22078 r!13107))) b!8037336))

(assert (= (and b!8037202 ((_ is Star!21749) (reg!22078 r!13107))) b!8037337))

(assert (= (and b!8037202 ((_ is Union!21749) (reg!22078 r!13107))) b!8037338))

(check-sat (not b!8037337) (not b!8037325) (not b!8037336) (not b!8037330) (not d!2395135) (not b!8037338) (not b!8037321) (not d!2395131) (not b!8037305) (not b!8037322) (not bm!745947) (not b!8037295) (not bm!745970) (not b!8037320) (not b!8037224) (not b!8037332) (not b!8037328) (not bm!745950) tp_is_empty!54493 (not bm!745969) (not b!8037233) (not b!8037329) (not d!2395127) (not bm!745974) (not bm!745973) (not b!8037334) (not bm!745946) (not b!8037326) (not b!8037333) (not bm!745949) (not b!8037324))
(check-sat)
(get-model)

(declare-fun call!746002 () Regex!21749)

(declare-fun b!8037418 () Bool)

(declare-fun e!4734263 () Regex!21749)

(assert (=> b!8037418 (= e!4734263 (Concat!30752 call!746002 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun b!8037419 () Bool)

(declare-fun e!4734264 () Regex!21749)

(assert (=> b!8037419 (= e!4734264 e!4734263)))

(declare-fun c!1474528 () Bool)

(assert (=> b!8037419 (= c!1474528 ((_ is Star!21749) (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun d!2395143 () Bool)

(declare-fun lt!2722137 () Regex!21749)

(assert (=> d!2395143 (validRegex!12045 lt!2722137)))

(declare-fun e!4734262 () Regex!21749)

(assert (=> d!2395143 (= lt!2722137 e!4734262)))

(declare-fun c!1474527 () Bool)

(assert (=> d!2395143 (= c!1474527 (or ((_ is EmptyExpr!21749) (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) ((_ is EmptyLang!21749) (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))))

(assert (=> d!2395143 (validRegex!12045 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))

(assert (=> d!2395143 (= (derivativeStep!6668 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))) a!2390) lt!2722137)))

(declare-fun b!8037420 () Bool)

(declare-fun call!746003 () Regex!21749)

(declare-fun call!746004 () Regex!21749)

(assert (=> b!8037420 (= e!4734264 (Union!21749 call!746003 call!746004))))

(declare-fun e!4734260 () Regex!21749)

(declare-fun b!8037421 () Bool)

(declare-fun call!746001 () Regex!21749)

(assert (=> b!8037421 (= e!4734260 (Union!21749 (Concat!30752 call!746001 (regTwo!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) EmptyLang!21749))))

(declare-fun e!4734261 () Regex!21749)

(declare-fun b!8037422 () Bool)

(assert (=> b!8037422 (= e!4734261 (ite (= a!2390 (c!1474470 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun b!8037423 () Bool)

(declare-fun c!1474530 () Bool)

(assert (=> b!8037423 (= c!1474530 ((_ is Union!21749) (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(assert (=> b!8037423 (= e!4734261 e!4734264)))

(declare-fun bm!745996 () Bool)

(assert (=> bm!745996 (= call!746003 (derivativeStep!6668 (ite c!1474530 (regOne!44011 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (ite c!1474528 (reg!22078 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (regOne!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))) a!2390))))

(declare-fun c!1474529 () Bool)

(declare-fun bm!745997 () Bool)

(assert (=> bm!745997 (= call!746004 (derivativeStep!6668 (ite c!1474530 (regTwo!44011 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (ite c!1474529 (regTwo!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (regOne!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))) a!2390))))

(declare-fun bm!745998 () Bool)

(assert (=> bm!745998 (= call!746002 call!746003)))

(declare-fun b!8037424 () Bool)

(assert (=> b!8037424 (= c!1474529 (nullable!9774 (regOne!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))))

(assert (=> b!8037424 (= e!4734263 e!4734260)))

(declare-fun b!8037425 () Bool)

(assert (=> b!8037425 (= e!4734262 EmptyLang!21749)))

(declare-fun b!8037426 () Bool)

(assert (=> b!8037426 (= e!4734262 e!4734261)))

(declare-fun c!1474531 () Bool)

(assert (=> b!8037426 (= c!1474531 ((_ is ElementMatch!21749) (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun bm!745999 () Bool)

(assert (=> bm!745999 (= call!746001 call!746004)))

(declare-fun b!8037427 () Bool)

(assert (=> b!8037427 (= e!4734260 (Union!21749 (Concat!30752 call!746002 (regTwo!44010 (ite c!1474503 (regOne!44011 (regTwo!44010 r!13107)) (ite c!1474501 (reg!22078 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) call!746001))))

(assert (= (and d!2395143 c!1474527) b!8037425))

(assert (= (and d!2395143 (not c!1474527)) b!8037426))

(assert (= (and b!8037426 c!1474531) b!8037422))

(assert (= (and b!8037426 (not c!1474531)) b!8037423))

(assert (= (and b!8037423 c!1474530) b!8037420))

(assert (= (and b!8037423 (not c!1474530)) b!8037419))

(assert (= (and b!8037419 c!1474528) b!8037418))

(assert (= (and b!8037419 (not c!1474528)) b!8037424))

(assert (= (and b!8037424 c!1474529) b!8037427))

(assert (= (and b!8037424 (not c!1474529)) b!8037421))

(assert (= (or b!8037427 b!8037421) bm!745999))

(assert (= (or b!8037418 b!8037427) bm!745998))

(assert (= (or b!8037420 bm!745999) bm!745997))

(assert (= (or b!8037420 bm!745998) bm!745996))

(declare-fun m!8393694 () Bool)

(assert (=> d!2395143 m!8393694))

(declare-fun m!8393696 () Bool)

(assert (=> d!2395143 m!8393696))

(declare-fun m!8393698 () Bool)

(assert (=> bm!745996 m!8393698))

(declare-fun m!8393700 () Bool)

(assert (=> bm!745997 m!8393700))

(declare-fun m!8393702 () Bool)

(assert (=> b!8037424 m!8393702))

(assert (=> bm!745973 d!2395143))

(declare-fun b!8037428 () Bool)

(declare-fun e!4734266 () Bool)

(declare-fun e!4734269 () Bool)

(assert (=> b!8037428 (= e!4734266 e!4734269)))

(declare-fun res!3177361 () Bool)

(assert (=> b!8037428 (= res!3177361 (not (nullable!9774 (reg!22078 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))))

(assert (=> b!8037428 (=> (not res!3177361) (not e!4734269))))

(declare-fun b!8037429 () Bool)

(declare-fun e!4734268 () Bool)

(assert (=> b!8037429 (= e!4734266 e!4734268)))

(declare-fun c!1474532 () Bool)

(assert (=> b!8037429 (= c!1474532 ((_ is Union!21749) (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))

(declare-fun b!8037430 () Bool)

(declare-fun res!3177358 () Bool)

(declare-fun e!4734271 () Bool)

(assert (=> b!8037430 (=> (not res!3177358) (not e!4734271))))

(declare-fun call!746005 () Bool)

(assert (=> b!8037430 (= res!3177358 call!746005)))

(assert (=> b!8037430 (= e!4734268 e!4734271)))

(declare-fun bm!746001 () Bool)

(assert (=> bm!746001 (= call!746005 (validRegex!12045 (ite c!1474532 (regOne!44011 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))) (regOne!44010 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))))

(declare-fun b!8037431 () Bool)

(declare-fun e!4734270 () Bool)

(declare-fun e!4734267 () Bool)

(assert (=> b!8037431 (= e!4734270 e!4734267)))

(declare-fun res!3177360 () Bool)

(assert (=> b!8037431 (=> (not res!3177360) (not e!4734267))))

(assert (=> b!8037431 (= res!3177360 call!746005)))

(declare-fun b!8037432 () Bool)

(declare-fun res!3177359 () Bool)

(assert (=> b!8037432 (=> res!3177359 e!4734270)))

(assert (=> b!8037432 (= res!3177359 (not ((_ is Concat!30752) (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))

(assert (=> b!8037432 (= e!4734268 e!4734270)))

(declare-fun b!8037433 () Bool)

(declare-fun call!746007 () Bool)

(assert (=> b!8037433 (= e!4734267 call!746007)))

(declare-fun bm!746002 () Bool)

(declare-fun call!746006 () Bool)

(assert (=> bm!746002 (= call!746007 call!746006)))

(declare-fun b!8037434 () Bool)

(assert (=> b!8037434 (= e!4734269 call!746006)))

(declare-fun d!2395145 () Bool)

(declare-fun res!3177362 () Bool)

(declare-fun e!4734265 () Bool)

(assert (=> d!2395145 (=> res!3177362 e!4734265)))

(assert (=> d!2395145 (= res!3177362 ((_ is ElementMatch!21749) (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))

(assert (=> d!2395145 (= (validRegex!12045 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))) e!4734265)))

(declare-fun bm!746000 () Bool)

(declare-fun c!1474533 () Bool)

(assert (=> bm!746000 (= call!746006 (validRegex!12045 (ite c!1474533 (reg!22078 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))) (ite c!1474532 (regTwo!44011 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))) (regTwo!44010 (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))))

(declare-fun b!8037435 () Bool)

(assert (=> b!8037435 (= e!4734265 e!4734266)))

(assert (=> b!8037435 (= c!1474533 ((_ is Star!21749) (ite c!1474477 (regOne!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regOne!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))

(declare-fun b!8037436 () Bool)

(assert (=> b!8037436 (= e!4734271 call!746007)))

(assert (= (and d!2395145 (not res!3177362)) b!8037435))

(assert (= (and b!8037435 c!1474533) b!8037428))

(assert (= (and b!8037435 (not c!1474533)) b!8037429))

(assert (= (and b!8037428 res!3177361) b!8037434))

(assert (= (and b!8037429 c!1474532) b!8037430))

(assert (= (and b!8037429 (not c!1474532)) b!8037432))

(assert (= (and b!8037430 res!3177358) b!8037436))

(assert (= (and b!8037432 (not res!3177359)) b!8037431))

(assert (= (and b!8037431 res!3177360) b!8037433))

(assert (= (or b!8037436 b!8037433) bm!746002))

(assert (= (or b!8037430 b!8037431) bm!746001))

(assert (= (or b!8037434 bm!746002) bm!746000))

(declare-fun m!8393704 () Bool)

(assert (=> b!8037428 m!8393704))

(declare-fun m!8393706 () Bool)

(assert (=> bm!746001 m!8393706))

(declare-fun m!8393708 () Bool)

(assert (=> bm!746000 m!8393708))

(assert (=> bm!745950 d!2395145))

(declare-fun b!8037437 () Bool)

(declare-fun e!4734273 () Bool)

(declare-fun e!4734276 () Bool)

(assert (=> b!8037437 (= e!4734273 e!4734276)))

(declare-fun res!3177366 () Bool)

(assert (=> b!8037437 (= res!3177366 (not (nullable!9774 (reg!22078 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))))

(assert (=> b!8037437 (=> (not res!3177366) (not e!4734276))))

(declare-fun b!8037438 () Bool)

(declare-fun e!4734275 () Bool)

(assert (=> b!8037438 (= e!4734273 e!4734275)))

(declare-fun c!1474534 () Bool)

(assert (=> b!8037438 (= c!1474534 ((_ is Union!21749) (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))

(declare-fun b!8037439 () Bool)

(declare-fun res!3177363 () Bool)

(declare-fun e!4734278 () Bool)

(assert (=> b!8037439 (=> (not res!3177363) (not e!4734278))))

(declare-fun call!746008 () Bool)

(assert (=> b!8037439 (= res!3177363 call!746008)))

(assert (=> b!8037439 (= e!4734275 e!4734278)))

(declare-fun bm!746004 () Bool)

(assert (=> bm!746004 (= call!746008 (validRegex!12045 (ite c!1474534 (regOne!44011 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))) (regOne!44010 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))))

(declare-fun b!8037440 () Bool)

(declare-fun e!4734277 () Bool)

(declare-fun e!4734274 () Bool)

(assert (=> b!8037440 (= e!4734277 e!4734274)))

(declare-fun res!3177365 () Bool)

(assert (=> b!8037440 (=> (not res!3177365) (not e!4734274))))

(assert (=> b!8037440 (= res!3177365 call!746008)))

(declare-fun b!8037441 () Bool)

(declare-fun res!3177364 () Bool)

(assert (=> b!8037441 (=> res!3177364 e!4734277)))

(assert (=> b!8037441 (= res!3177364 (not ((_ is Concat!30752) (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107))))))))

(assert (=> b!8037441 (= e!4734275 e!4734277)))

(declare-fun b!8037442 () Bool)

(declare-fun call!746010 () Bool)

(assert (=> b!8037442 (= e!4734274 call!746010)))

(declare-fun bm!746005 () Bool)

(declare-fun call!746009 () Bool)

(assert (=> bm!746005 (= call!746010 call!746009)))

(declare-fun b!8037443 () Bool)

(assert (=> b!8037443 (= e!4734276 call!746009)))

(declare-fun d!2395147 () Bool)

(declare-fun res!3177367 () Bool)

(declare-fun e!4734272 () Bool)

(assert (=> d!2395147 (=> res!3177367 e!4734272)))

(assert (=> d!2395147 (= res!3177367 ((_ is ElementMatch!21749) (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))

(assert (=> d!2395147 (= (validRegex!12045 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))) e!4734272)))

(declare-fun bm!746003 () Bool)

(declare-fun c!1474535 () Bool)

(assert (=> bm!746003 (= call!746009 (validRegex!12045 (ite c!1474535 (reg!22078 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))) (ite c!1474534 (regTwo!44011 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))) (regTwo!44010 (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107))))))))))

(declare-fun b!8037444 () Bool)

(assert (=> b!8037444 (= e!4734272 e!4734273)))

(assert (=> b!8037444 (= c!1474535 ((_ is Star!21749) (ite c!1474476 (reg!22078 r!13107) (ite c!1474475 (regTwo!44011 r!13107) (regTwo!44010 r!13107)))))))

(declare-fun b!8037445 () Bool)

(assert (=> b!8037445 (= e!4734278 call!746010)))

(assert (= (and d!2395147 (not res!3177367)) b!8037444))

(assert (= (and b!8037444 c!1474535) b!8037437))

(assert (= (and b!8037444 (not c!1474535)) b!8037438))

(assert (= (and b!8037437 res!3177366) b!8037443))

(assert (= (and b!8037438 c!1474534) b!8037439))

(assert (= (and b!8037438 (not c!1474534)) b!8037441))

(assert (= (and b!8037439 res!3177363) b!8037445))

(assert (= (and b!8037441 (not res!3177364)) b!8037440))

(assert (= (and b!8037440 res!3177365) b!8037442))

(assert (= (or b!8037445 b!8037442) bm!746005))

(assert (= (or b!8037439 b!8037440) bm!746004))

(assert (= (or b!8037443 bm!746005) bm!746003))

(declare-fun m!8393710 () Bool)

(assert (=> b!8037437 m!8393710))

(declare-fun m!8393712 () Bool)

(assert (=> bm!746004 m!8393712))

(declare-fun m!8393714 () Bool)

(assert (=> bm!746003 m!8393714))

(assert (=> bm!745946 d!2395147))

(declare-fun b!8037446 () Bool)

(declare-fun call!746012 () Regex!21749)

(declare-fun e!4734282 () Regex!21749)

(assert (=> b!8037446 (= e!4734282 (Concat!30752 call!746012 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun b!8037447 () Bool)

(declare-fun e!4734283 () Regex!21749)

(assert (=> b!8037447 (= e!4734283 e!4734282)))

(declare-fun c!1474537 () Bool)

(assert (=> b!8037447 (= c!1474537 ((_ is Star!21749) (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun d!2395149 () Bool)

(declare-fun lt!2722138 () Regex!21749)

(assert (=> d!2395149 (validRegex!12045 lt!2722138)))

(declare-fun e!4734281 () Regex!21749)

(assert (=> d!2395149 (= lt!2722138 e!4734281)))

(declare-fun c!1474536 () Bool)

(assert (=> d!2395149 (= c!1474536 (or ((_ is EmptyExpr!21749) (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) ((_ is EmptyLang!21749) (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))))

(assert (=> d!2395149 (validRegex!12045 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))

(assert (=> d!2395149 (= (derivativeStep!6668 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))) a!2390) lt!2722138)))

(declare-fun b!8037448 () Bool)

(declare-fun call!746013 () Regex!21749)

(declare-fun call!746014 () Regex!21749)

(assert (=> b!8037448 (= e!4734283 (Union!21749 call!746013 call!746014))))

(declare-fun call!746011 () Regex!21749)

(declare-fun b!8037449 () Bool)

(declare-fun e!4734279 () Regex!21749)

(assert (=> b!8037449 (= e!4734279 (Union!21749 (Concat!30752 call!746011 (regTwo!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) EmptyLang!21749))))

(declare-fun e!4734280 () Regex!21749)

(declare-fun b!8037450 () Bool)

(assert (=> b!8037450 (= e!4734280 (ite (= a!2390 (c!1474470 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun b!8037451 () Bool)

(declare-fun c!1474539 () Bool)

(assert (=> b!8037451 (= c!1474539 ((_ is Union!21749) (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(assert (=> b!8037451 (= e!4734280 e!4734283)))

(declare-fun bm!746006 () Bool)

(assert (=> bm!746006 (= call!746013 (derivativeStep!6668 (ite c!1474539 (regOne!44011 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (ite c!1474537 (reg!22078 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (regOne!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))) a!2390))))

(declare-fun c!1474538 () Bool)

(declare-fun bm!746007 () Bool)

(assert (=> bm!746007 (= call!746014 (derivativeStep!6668 (ite c!1474539 (regTwo!44011 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (ite c!1474538 (regTwo!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))) (regOne!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))) a!2390))))

(declare-fun bm!746008 () Bool)

(assert (=> bm!746008 (= call!746012 call!746013)))

(declare-fun b!8037452 () Bool)

(assert (=> b!8037452 (= c!1474538 (nullable!9774 (regOne!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))))

(assert (=> b!8037452 (= e!4734282 e!4734279)))

(declare-fun b!8037453 () Bool)

(assert (=> b!8037453 (= e!4734281 EmptyLang!21749)))

(declare-fun b!8037454 () Bool)

(assert (=> b!8037454 (= e!4734281 e!4734280)))

(declare-fun c!1474540 () Bool)

(assert (=> b!8037454 (= c!1474540 ((_ is ElementMatch!21749) (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107))))))))

(declare-fun bm!746009 () Bool)

(assert (=> bm!746009 (= call!746011 call!746014)))

(declare-fun b!8037455 () Bool)

(assert (=> b!8037455 (= e!4734279 (Union!21749 (Concat!30752 call!746012 (regTwo!44010 (ite c!1474503 (regTwo!44011 (regTwo!44010 r!13107)) (ite c!1474502 (regTwo!44010 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))) call!746011))))

(assert (= (and d!2395149 c!1474536) b!8037453))

(assert (= (and d!2395149 (not c!1474536)) b!8037454))

(assert (= (and b!8037454 c!1474540) b!8037450))

(assert (= (and b!8037454 (not c!1474540)) b!8037451))

(assert (= (and b!8037451 c!1474539) b!8037448))

(assert (= (and b!8037451 (not c!1474539)) b!8037447))

(assert (= (and b!8037447 c!1474537) b!8037446))

(assert (= (and b!8037447 (not c!1474537)) b!8037452))

(assert (= (and b!8037452 c!1474538) b!8037455))

(assert (= (and b!8037452 (not c!1474538)) b!8037449))

(assert (= (or b!8037455 b!8037449) bm!746009))

(assert (= (or b!8037446 b!8037455) bm!746008))

(assert (= (or b!8037448 bm!746009) bm!746007))

(assert (= (or b!8037448 bm!746008) bm!746006))

(declare-fun m!8393716 () Bool)

(assert (=> d!2395149 m!8393716))

(declare-fun m!8393718 () Bool)

(assert (=> d!2395149 m!8393718))

(declare-fun m!8393720 () Bool)

(assert (=> bm!746006 m!8393720))

(declare-fun m!8393722 () Bool)

(assert (=> bm!746007 m!8393722))

(declare-fun m!8393724 () Bool)

(assert (=> b!8037452 m!8393724))

(assert (=> bm!745974 d!2395149))

(declare-fun d!2395151 () Bool)

(assert (=> d!2395151 (= (nullable!9774 (reg!22078 r!13107)) (nullableFct!3867 (reg!22078 r!13107)))))

(declare-fun bs!1971521 () Bool)

(assert (= bs!1971521 d!2395151))

(declare-fun m!8393726 () Bool)

(assert (=> bs!1971521 m!8393726))

(assert (=> b!8037224 d!2395151))

(declare-fun d!2395153 () Bool)

(assert (=> d!2395153 (= (nullable!9774 (regOne!44010 (regTwo!44010 r!13107))) (nullableFct!3867 (regOne!44010 (regTwo!44010 r!13107))))))

(declare-fun bs!1971522 () Bool)

(assert (= bs!1971522 d!2395153))

(declare-fun m!8393728 () Bool)

(assert (=> bs!1971522 m!8393728))

(assert (=> b!8037305 d!2395153))

(declare-fun call!746016 () Regex!21749)

(declare-fun e!4734287 () Regex!21749)

(declare-fun b!8037456 () Bool)

(assert (=> b!8037456 (= e!4734287 (Concat!30752 call!746016 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun b!8037457 () Bool)

(declare-fun e!4734288 () Regex!21749)

(assert (=> b!8037457 (= e!4734288 e!4734287)))

(declare-fun c!1474542 () Bool)

(assert (=> b!8037457 (= c!1474542 ((_ is Star!21749) (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun d!2395155 () Bool)

(declare-fun lt!2722139 () Regex!21749)

(assert (=> d!2395155 (validRegex!12045 lt!2722139)))

(declare-fun e!4734286 () Regex!21749)

(assert (=> d!2395155 (= lt!2722139 e!4734286)))

(declare-fun c!1474541 () Bool)

(assert (=> d!2395155 (= c!1474541 (or ((_ is EmptyExpr!21749) (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) ((_ is EmptyLang!21749) (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))))

(assert (=> d!2395155 (validRegex!12045 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))

(assert (=> d!2395155 (= (derivativeStep!6668 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))) a!2390) lt!2722139)))

(declare-fun b!8037458 () Bool)

(declare-fun call!746017 () Regex!21749)

(declare-fun call!746018 () Regex!21749)

(assert (=> b!8037458 (= e!4734288 (Union!21749 call!746017 call!746018))))

(declare-fun b!8037459 () Bool)

(declare-fun e!4734284 () Regex!21749)

(declare-fun call!746015 () Regex!21749)

(assert (=> b!8037459 (= e!4734284 (Union!21749 (Concat!30752 call!746015 (regTwo!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) EmptyLang!21749))))

(declare-fun b!8037460 () Bool)

(declare-fun e!4734285 () Regex!21749)

(assert (=> b!8037460 (= e!4734285 (ite (= a!2390 (c!1474470 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun c!1474544 () Bool)

(declare-fun b!8037461 () Bool)

(assert (=> b!8037461 (= c!1474544 ((_ is Union!21749) (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(assert (=> b!8037461 (= e!4734285 e!4734288)))

(declare-fun bm!746010 () Bool)

(assert (=> bm!746010 (= call!746017 (derivativeStep!6668 (ite c!1474544 (regOne!44011 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (ite c!1474542 (reg!22078 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (regOne!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))) a!2390))))

(declare-fun bm!746011 () Bool)

(declare-fun c!1474543 () Bool)

(assert (=> bm!746011 (= call!746018 (derivativeStep!6668 (ite c!1474544 (regTwo!44011 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (ite c!1474543 (regTwo!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (regOne!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))) a!2390))))

(declare-fun bm!746012 () Bool)

(assert (=> bm!746012 (= call!746016 call!746017)))

(declare-fun b!8037462 () Bool)

(assert (=> b!8037462 (= c!1474543 (nullable!9774 (regOne!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))))

(assert (=> b!8037462 (= e!4734287 e!4734284)))

(declare-fun b!8037463 () Bool)

(assert (=> b!8037463 (= e!4734286 EmptyLang!21749)))

(declare-fun b!8037464 () Bool)

(assert (=> b!8037464 (= e!4734286 e!4734285)))

(declare-fun c!1474545 () Bool)

(assert (=> b!8037464 (= c!1474545 ((_ is ElementMatch!21749) (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun bm!746013 () Bool)

(assert (=> bm!746013 (= call!746015 call!746018)))

(declare-fun b!8037465 () Bool)

(assert (=> b!8037465 (= e!4734284 (Union!21749 (Concat!30752 call!746016 (regTwo!44010 (ite c!1474498 (regOne!44011 (regOne!44010 r!13107)) (ite c!1474496 (reg!22078 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) call!746015))))

(assert (= (and d!2395155 c!1474541) b!8037463))

(assert (= (and d!2395155 (not c!1474541)) b!8037464))

(assert (= (and b!8037464 c!1474545) b!8037460))

(assert (= (and b!8037464 (not c!1474545)) b!8037461))

(assert (= (and b!8037461 c!1474544) b!8037458))

(assert (= (and b!8037461 (not c!1474544)) b!8037457))

(assert (= (and b!8037457 c!1474542) b!8037456))

(assert (= (and b!8037457 (not c!1474542)) b!8037462))

(assert (= (and b!8037462 c!1474543) b!8037465))

(assert (= (and b!8037462 (not c!1474543)) b!8037459))

(assert (= (or b!8037465 b!8037459) bm!746013))

(assert (= (or b!8037456 b!8037465) bm!746012))

(assert (= (or b!8037458 bm!746013) bm!746011))

(assert (= (or b!8037458 bm!746012) bm!746010))

(declare-fun m!8393730 () Bool)

(assert (=> d!2395155 m!8393730))

(declare-fun m!8393732 () Bool)

(assert (=> d!2395155 m!8393732))

(declare-fun m!8393734 () Bool)

(assert (=> bm!746010 m!8393734))

(declare-fun m!8393736 () Bool)

(assert (=> bm!746011 m!8393736))

(declare-fun m!8393738 () Bool)

(assert (=> b!8037462 m!8393738))

(assert (=> bm!745969 d!2395155))

(declare-fun b!8037466 () Bool)

(declare-fun e!4734290 () Bool)

(declare-fun e!4734293 () Bool)

(assert (=> b!8037466 (= e!4734290 e!4734293)))

(declare-fun res!3177371 () Bool)

(assert (=> b!8037466 (= res!3177371 (not (nullable!9774 (reg!22078 lt!2722131))))))

(assert (=> b!8037466 (=> (not res!3177371) (not e!4734293))))

(declare-fun b!8037467 () Bool)

(declare-fun e!4734292 () Bool)

(assert (=> b!8037467 (= e!4734290 e!4734292)))

(declare-fun c!1474546 () Bool)

(assert (=> b!8037467 (= c!1474546 ((_ is Union!21749) lt!2722131))))

(declare-fun b!8037468 () Bool)

(declare-fun res!3177368 () Bool)

(declare-fun e!4734295 () Bool)

(assert (=> b!8037468 (=> (not res!3177368) (not e!4734295))))

(declare-fun call!746019 () Bool)

(assert (=> b!8037468 (= res!3177368 call!746019)))

(assert (=> b!8037468 (= e!4734292 e!4734295)))

(declare-fun bm!746015 () Bool)

(assert (=> bm!746015 (= call!746019 (validRegex!12045 (ite c!1474546 (regOne!44011 lt!2722131) (regOne!44010 lt!2722131))))))

(declare-fun b!8037469 () Bool)

(declare-fun e!4734294 () Bool)

(declare-fun e!4734291 () Bool)

(assert (=> b!8037469 (= e!4734294 e!4734291)))

(declare-fun res!3177370 () Bool)

(assert (=> b!8037469 (=> (not res!3177370) (not e!4734291))))

(assert (=> b!8037469 (= res!3177370 call!746019)))

(declare-fun b!8037470 () Bool)

(declare-fun res!3177369 () Bool)

(assert (=> b!8037470 (=> res!3177369 e!4734294)))

(assert (=> b!8037470 (= res!3177369 (not ((_ is Concat!30752) lt!2722131)))))

(assert (=> b!8037470 (= e!4734292 e!4734294)))

(declare-fun b!8037471 () Bool)

(declare-fun call!746021 () Bool)

(assert (=> b!8037471 (= e!4734291 call!746021)))

(declare-fun bm!746016 () Bool)

(declare-fun call!746020 () Bool)

(assert (=> bm!746016 (= call!746021 call!746020)))

(declare-fun b!8037472 () Bool)

(assert (=> b!8037472 (= e!4734293 call!746020)))

(declare-fun d!2395157 () Bool)

(declare-fun res!3177372 () Bool)

(declare-fun e!4734289 () Bool)

(assert (=> d!2395157 (=> res!3177372 e!4734289)))

(assert (=> d!2395157 (= res!3177372 ((_ is ElementMatch!21749) lt!2722131))))

(assert (=> d!2395157 (= (validRegex!12045 lt!2722131) e!4734289)))

(declare-fun c!1474547 () Bool)

(declare-fun bm!746014 () Bool)

(assert (=> bm!746014 (= call!746020 (validRegex!12045 (ite c!1474547 (reg!22078 lt!2722131) (ite c!1474546 (regTwo!44011 lt!2722131) (regTwo!44010 lt!2722131)))))))

(declare-fun b!8037473 () Bool)

(assert (=> b!8037473 (= e!4734289 e!4734290)))

(assert (=> b!8037473 (= c!1474547 ((_ is Star!21749) lt!2722131))))

(declare-fun b!8037474 () Bool)

(assert (=> b!8037474 (= e!4734295 call!746021)))

(assert (= (and d!2395157 (not res!3177372)) b!8037473))

(assert (= (and b!8037473 c!1474547) b!8037466))

(assert (= (and b!8037473 (not c!1474547)) b!8037467))

(assert (= (and b!8037466 res!3177371) b!8037472))

(assert (= (and b!8037467 c!1474546) b!8037468))

(assert (= (and b!8037467 (not c!1474546)) b!8037470))

(assert (= (and b!8037468 res!3177368) b!8037474))

(assert (= (and b!8037470 (not res!3177369)) b!8037469))

(assert (= (and b!8037469 res!3177370) b!8037471))

(assert (= (or b!8037474 b!8037471) bm!746016))

(assert (= (or b!8037468 b!8037469) bm!746015))

(assert (= (or b!8037472 bm!746016) bm!746014))

(declare-fun m!8393740 () Bool)

(assert (=> b!8037466 m!8393740))

(declare-fun m!8393742 () Bool)

(assert (=> bm!746015 m!8393742))

(declare-fun m!8393744 () Bool)

(assert (=> bm!746014 m!8393744))

(assert (=> d!2395131 d!2395157))

(declare-fun b!8037475 () Bool)

(declare-fun e!4734297 () Bool)

(declare-fun e!4734300 () Bool)

(assert (=> b!8037475 (= e!4734297 e!4734300)))

(declare-fun res!3177376 () Bool)

(assert (=> b!8037475 (= res!3177376 (not (nullable!9774 (reg!22078 (regOne!44010 r!13107)))))))

(assert (=> b!8037475 (=> (not res!3177376) (not e!4734300))))

(declare-fun b!8037476 () Bool)

(declare-fun e!4734299 () Bool)

(assert (=> b!8037476 (= e!4734297 e!4734299)))

(declare-fun c!1474548 () Bool)

(assert (=> b!8037476 (= c!1474548 ((_ is Union!21749) (regOne!44010 r!13107)))))

(declare-fun b!8037477 () Bool)

(declare-fun res!3177373 () Bool)

(declare-fun e!4734302 () Bool)

(assert (=> b!8037477 (=> (not res!3177373) (not e!4734302))))

(declare-fun call!746022 () Bool)

(assert (=> b!8037477 (= res!3177373 call!746022)))

(assert (=> b!8037477 (= e!4734299 e!4734302)))

(declare-fun bm!746018 () Bool)

(assert (=> bm!746018 (= call!746022 (validRegex!12045 (ite c!1474548 (regOne!44011 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))

(declare-fun b!8037478 () Bool)

(declare-fun e!4734301 () Bool)

(declare-fun e!4734298 () Bool)

(assert (=> b!8037478 (= e!4734301 e!4734298)))

(declare-fun res!3177375 () Bool)

(assert (=> b!8037478 (=> (not res!3177375) (not e!4734298))))

(assert (=> b!8037478 (= res!3177375 call!746022)))

(declare-fun b!8037479 () Bool)

(declare-fun res!3177374 () Bool)

(assert (=> b!8037479 (=> res!3177374 e!4734301)))

(assert (=> b!8037479 (= res!3177374 (not ((_ is Concat!30752) (regOne!44010 r!13107))))))

(assert (=> b!8037479 (= e!4734299 e!4734301)))

(declare-fun b!8037480 () Bool)

(declare-fun call!746024 () Bool)

(assert (=> b!8037480 (= e!4734298 call!746024)))

(declare-fun bm!746019 () Bool)

(declare-fun call!746023 () Bool)

(assert (=> bm!746019 (= call!746024 call!746023)))

(declare-fun b!8037481 () Bool)

(assert (=> b!8037481 (= e!4734300 call!746023)))

(declare-fun d!2395159 () Bool)

(declare-fun res!3177377 () Bool)

(declare-fun e!4734296 () Bool)

(assert (=> d!2395159 (=> res!3177377 e!4734296)))

(assert (=> d!2395159 (= res!3177377 ((_ is ElementMatch!21749) (regOne!44010 r!13107)))))

(assert (=> d!2395159 (= (validRegex!12045 (regOne!44010 r!13107)) e!4734296)))

(declare-fun c!1474549 () Bool)

(declare-fun bm!746017 () Bool)

(assert (=> bm!746017 (= call!746023 (validRegex!12045 (ite c!1474549 (reg!22078 (regOne!44010 r!13107)) (ite c!1474548 (regTwo!44011 (regOne!44010 r!13107)) (regTwo!44010 (regOne!44010 r!13107))))))))

(declare-fun b!8037482 () Bool)

(assert (=> b!8037482 (= e!4734296 e!4734297)))

(assert (=> b!8037482 (= c!1474549 ((_ is Star!21749) (regOne!44010 r!13107)))))

(declare-fun b!8037483 () Bool)

(assert (=> b!8037483 (= e!4734302 call!746024)))

(assert (= (and d!2395159 (not res!3177377)) b!8037482))

(assert (= (and b!8037482 c!1474549) b!8037475))

(assert (= (and b!8037482 (not c!1474549)) b!8037476))

(assert (= (and b!8037475 res!3177376) b!8037481))

(assert (= (and b!8037476 c!1474548) b!8037477))

(assert (= (and b!8037476 (not c!1474548)) b!8037479))

(assert (= (and b!8037477 res!3177373) b!8037483))

(assert (= (and b!8037479 (not res!3177374)) b!8037478))

(assert (= (and b!8037478 res!3177375) b!8037480))

(assert (= (or b!8037483 b!8037480) bm!746019))

(assert (= (or b!8037477 b!8037478) bm!746018))

(assert (= (or b!8037481 bm!746019) bm!746017))

(declare-fun m!8393746 () Bool)

(assert (=> b!8037475 m!8393746))

(declare-fun m!8393748 () Bool)

(assert (=> bm!746018 m!8393748))

(declare-fun m!8393750 () Bool)

(assert (=> bm!746017 m!8393750))

(assert (=> d!2395131 d!2395159))

(declare-fun b!8037484 () Bool)

(declare-fun e!4734304 () Bool)

(declare-fun e!4734307 () Bool)

(assert (=> b!8037484 (= e!4734304 e!4734307)))

(declare-fun res!3177381 () Bool)

(assert (=> b!8037484 (= res!3177381 (not (nullable!9774 (reg!22078 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))))

(assert (=> b!8037484 (=> (not res!3177381) (not e!4734307))))

(declare-fun b!8037485 () Bool)

(declare-fun e!4734306 () Bool)

(assert (=> b!8037485 (= e!4734304 e!4734306)))

(declare-fun c!1474550 () Bool)

(assert (=> b!8037485 (= c!1474550 ((_ is Union!21749) (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))

(declare-fun b!8037486 () Bool)

(declare-fun res!3177378 () Bool)

(declare-fun e!4734309 () Bool)

(assert (=> b!8037486 (=> (not res!3177378) (not e!4734309))))

(declare-fun call!746025 () Bool)

(assert (=> b!8037486 (= res!3177378 call!746025)))

(assert (=> b!8037486 (= e!4734306 e!4734309)))

(declare-fun bm!746021 () Bool)

(assert (=> bm!746021 (= call!746025 (validRegex!12045 (ite c!1474550 (regOne!44011 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))) (regOne!44010 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))))

(declare-fun b!8037487 () Bool)

(declare-fun e!4734308 () Bool)

(declare-fun e!4734305 () Bool)

(assert (=> b!8037487 (= e!4734308 e!4734305)))

(declare-fun res!3177380 () Bool)

(assert (=> b!8037487 (=> (not res!3177380) (not e!4734305))))

(assert (=> b!8037487 (= res!3177380 call!746025)))

(declare-fun b!8037488 () Bool)

(declare-fun res!3177379 () Bool)

(assert (=> b!8037488 (=> res!3177379 e!4734308)))

(assert (=> b!8037488 (= res!3177379 (not ((_ is Concat!30752) (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107)))))))

(assert (=> b!8037488 (= e!4734306 e!4734308)))

(declare-fun b!8037489 () Bool)

(declare-fun call!746027 () Bool)

(assert (=> b!8037489 (= e!4734305 call!746027)))

(declare-fun bm!746022 () Bool)

(declare-fun call!746026 () Bool)

(assert (=> bm!746022 (= call!746027 call!746026)))

(declare-fun b!8037490 () Bool)

(assert (=> b!8037490 (= e!4734307 call!746026)))

(declare-fun d!2395161 () Bool)

(declare-fun res!3177382 () Bool)

(declare-fun e!4734303 () Bool)

(assert (=> d!2395161 (=> res!3177382 e!4734303)))

(assert (=> d!2395161 (= res!3177382 ((_ is ElementMatch!21749) (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))

(assert (=> d!2395161 (= (validRegex!12045 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))) e!4734303)))

(declare-fun bm!746020 () Bool)

(declare-fun c!1474551 () Bool)

(assert (=> bm!746020 (= call!746026 (validRegex!12045 (ite c!1474551 (reg!22078 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))) (ite c!1474550 (regTwo!44011 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))) (regTwo!44010 (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107)))))))))

(declare-fun b!8037491 () Bool)

(assert (=> b!8037491 (= e!4734303 e!4734304)))

(assert (=> b!8037491 (= c!1474551 ((_ is Star!21749) (ite c!1474475 (regOne!44011 r!13107) (regOne!44010 r!13107))))))

(declare-fun b!8037492 () Bool)

(assert (=> b!8037492 (= e!4734309 call!746027)))

(assert (= (and d!2395161 (not res!3177382)) b!8037491))

(assert (= (and b!8037491 c!1474551) b!8037484))

(assert (= (and b!8037491 (not c!1474551)) b!8037485))

(assert (= (and b!8037484 res!3177381) b!8037490))

(assert (= (and b!8037485 c!1474550) b!8037486))

(assert (= (and b!8037485 (not c!1474550)) b!8037488))

(assert (= (and b!8037486 res!3177378) b!8037492))

(assert (= (and b!8037488 (not res!3177379)) b!8037487))

(assert (= (and b!8037487 res!3177380) b!8037489))

(assert (= (or b!8037492 b!8037489) bm!746022))

(assert (= (or b!8037486 b!8037487) bm!746021))

(assert (= (or b!8037490 bm!746022) bm!746020))

(declare-fun m!8393752 () Bool)

(assert (=> b!8037484 m!8393752))

(declare-fun m!8393754 () Bool)

(assert (=> bm!746021 m!8393754))

(declare-fun m!8393756 () Bool)

(assert (=> bm!746020 m!8393756))

(assert (=> bm!745947 d!2395161))

(declare-fun call!746029 () Regex!21749)

(declare-fun e!4734313 () Regex!21749)

(declare-fun b!8037493 () Bool)

(assert (=> b!8037493 (= e!4734313 (Concat!30752 call!746029 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun b!8037494 () Bool)

(declare-fun e!4734314 () Regex!21749)

(assert (=> b!8037494 (= e!4734314 e!4734313)))

(declare-fun c!1474553 () Bool)

(assert (=> b!8037494 (= c!1474553 ((_ is Star!21749) (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun d!2395163 () Bool)

(declare-fun lt!2722140 () Regex!21749)

(assert (=> d!2395163 (validRegex!12045 lt!2722140)))

(declare-fun e!4734312 () Regex!21749)

(assert (=> d!2395163 (= lt!2722140 e!4734312)))

(declare-fun c!1474552 () Bool)

(assert (=> d!2395163 (= c!1474552 (or ((_ is EmptyExpr!21749) (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) ((_ is EmptyLang!21749) (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))))

(assert (=> d!2395163 (validRegex!12045 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))

(assert (=> d!2395163 (= (derivativeStep!6668 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))) a!2390) lt!2722140)))

(declare-fun b!8037495 () Bool)

(declare-fun call!746030 () Regex!21749)

(declare-fun call!746031 () Regex!21749)

(assert (=> b!8037495 (= e!4734314 (Union!21749 call!746030 call!746031))))

(declare-fun call!746028 () Regex!21749)

(declare-fun e!4734310 () Regex!21749)

(declare-fun b!8037496 () Bool)

(assert (=> b!8037496 (= e!4734310 (Union!21749 (Concat!30752 call!746028 (regTwo!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) EmptyLang!21749))))

(declare-fun b!8037497 () Bool)

(declare-fun e!4734311 () Regex!21749)

(assert (=> b!8037497 (= e!4734311 (ite (= a!2390 (c!1474470 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) EmptyExpr!21749 EmptyLang!21749))))

(declare-fun b!8037498 () Bool)

(declare-fun c!1474555 () Bool)

(assert (=> b!8037498 (= c!1474555 ((_ is Union!21749) (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(assert (=> b!8037498 (= e!4734311 e!4734314)))

(declare-fun bm!746023 () Bool)

(assert (=> bm!746023 (= call!746030 (derivativeStep!6668 (ite c!1474555 (regOne!44011 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (ite c!1474553 (reg!22078 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (regOne!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))) a!2390))))

(declare-fun bm!746024 () Bool)

(declare-fun c!1474554 () Bool)

(assert (=> bm!746024 (= call!746031 (derivativeStep!6668 (ite c!1474555 (regTwo!44011 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (ite c!1474554 (regTwo!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))) (regOne!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))) a!2390))))

(declare-fun bm!746025 () Bool)

(assert (=> bm!746025 (= call!746029 call!746030)))

(declare-fun b!8037499 () Bool)

(assert (=> b!8037499 (= c!1474554 (nullable!9774 (regOne!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))))

(assert (=> b!8037499 (= e!4734313 e!4734310)))

(declare-fun b!8037500 () Bool)

(assert (=> b!8037500 (= e!4734312 EmptyLang!21749)))

(declare-fun b!8037501 () Bool)

(assert (=> b!8037501 (= e!4734312 e!4734311)))

(declare-fun c!1474556 () Bool)

(assert (=> b!8037501 (= c!1474556 ((_ is ElementMatch!21749) (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107))))))))

(declare-fun bm!746026 () Bool)

(assert (=> bm!746026 (= call!746028 call!746031)))

(declare-fun b!8037502 () Bool)

(assert (=> b!8037502 (= e!4734310 (Union!21749 (Concat!30752 call!746029 (regTwo!44010 (ite c!1474498 (regTwo!44011 (regOne!44010 r!13107)) (ite c!1474497 (regTwo!44010 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))) call!746028))))

(assert (= (and d!2395163 c!1474552) b!8037500))

(assert (= (and d!2395163 (not c!1474552)) b!8037501))

(assert (= (and b!8037501 c!1474556) b!8037497))

(assert (= (and b!8037501 (not c!1474556)) b!8037498))

(assert (= (and b!8037498 c!1474555) b!8037495))

(assert (= (and b!8037498 (not c!1474555)) b!8037494))

(assert (= (and b!8037494 c!1474553) b!8037493))

(assert (= (and b!8037494 (not c!1474553)) b!8037499))

(assert (= (and b!8037499 c!1474554) b!8037502))

(assert (= (and b!8037499 (not c!1474554)) b!8037496))

(assert (= (or b!8037502 b!8037496) bm!746026))

(assert (= (or b!8037493 b!8037502) bm!746025))

(assert (= (or b!8037495 bm!746026) bm!746024))

(assert (= (or b!8037495 bm!746025) bm!746023))

(declare-fun m!8393758 () Bool)

(assert (=> d!2395163 m!8393758))

(declare-fun m!8393760 () Bool)

(assert (=> d!2395163 m!8393760))

(declare-fun m!8393762 () Bool)

(assert (=> bm!746023 m!8393762))

(declare-fun m!8393764 () Bool)

(assert (=> bm!746024 m!8393764))

(declare-fun m!8393766 () Bool)

(assert (=> b!8037499 m!8393766))

(assert (=> bm!745970 d!2395163))

(declare-fun b!8037503 () Bool)

(declare-fun e!4734316 () Bool)

(declare-fun e!4734319 () Bool)

(assert (=> b!8037503 (= e!4734316 e!4734319)))

(declare-fun res!3177386 () Bool)

(assert (=> b!8037503 (= res!3177386 (not (nullable!9774 (reg!22078 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))))

(assert (=> b!8037503 (=> (not res!3177386) (not e!4734319))))

(declare-fun b!8037504 () Bool)

(declare-fun e!4734318 () Bool)

(assert (=> b!8037504 (= e!4734316 e!4734318)))

(declare-fun c!1474557 () Bool)

(assert (=> b!8037504 (= c!1474557 ((_ is Union!21749) (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))

(declare-fun b!8037505 () Bool)

(declare-fun res!3177383 () Bool)

(declare-fun e!4734321 () Bool)

(assert (=> b!8037505 (=> (not res!3177383) (not e!4734321))))

(declare-fun call!746032 () Bool)

(assert (=> b!8037505 (= res!3177383 call!746032)))

(assert (=> b!8037505 (= e!4734318 e!4734321)))

(declare-fun bm!746028 () Bool)

(assert (=> bm!746028 (= call!746032 (validRegex!12045 (ite c!1474557 (regOne!44011 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))) (regOne!44010 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))))

(declare-fun b!8037506 () Bool)

(declare-fun e!4734320 () Bool)

(declare-fun e!4734317 () Bool)

(assert (=> b!8037506 (= e!4734320 e!4734317)))

(declare-fun res!3177385 () Bool)

(assert (=> b!8037506 (=> (not res!3177385) (not e!4734317))))

(assert (=> b!8037506 (= res!3177385 call!746032)))

(declare-fun b!8037507 () Bool)

(declare-fun res!3177384 () Bool)

(assert (=> b!8037507 (=> res!3177384 e!4734320)))

(assert (=> b!8037507 (= res!3177384 (not ((_ is Concat!30752) (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))))

(assert (=> b!8037507 (= e!4734318 e!4734320)))

(declare-fun b!8037508 () Bool)

(declare-fun call!746034 () Bool)

(assert (=> b!8037508 (= e!4734317 call!746034)))

(declare-fun bm!746029 () Bool)

(declare-fun call!746033 () Bool)

(assert (=> bm!746029 (= call!746034 call!746033)))

(declare-fun b!8037509 () Bool)

(assert (=> b!8037509 (= e!4734319 call!746033)))

(declare-fun d!2395165 () Bool)

(declare-fun res!3177387 () Bool)

(declare-fun e!4734315 () Bool)

(assert (=> d!2395165 (=> res!3177387 e!4734315)))

(assert (=> d!2395165 (= res!3177387 ((_ is ElementMatch!21749) (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))

(assert (=> d!2395165 (= (validRegex!12045 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))) e!4734315)))

(declare-fun bm!746027 () Bool)

(declare-fun c!1474558 () Bool)

(assert (=> bm!746027 (= call!746033 (validRegex!12045 (ite c!1474558 (reg!22078 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))) (ite c!1474557 (regTwo!44011 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))) (regTwo!44010 (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))))))))))))

(declare-fun b!8037510 () Bool)

(assert (=> b!8037510 (= e!4734315 e!4734316)))

(assert (=> b!8037510 (= c!1474558 ((_ is Star!21749) (ite c!1474478 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (ite c!1474477 (regTwo!44011 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390))) (regTwo!44010 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))))

(declare-fun b!8037511 () Bool)

(assert (=> b!8037511 (= e!4734321 call!746034)))

(assert (= (and d!2395165 (not res!3177387)) b!8037510))

(assert (= (and b!8037510 c!1474558) b!8037503))

(assert (= (and b!8037510 (not c!1474558)) b!8037504))

(assert (= (and b!8037503 res!3177386) b!8037509))

(assert (= (and b!8037504 c!1474557) b!8037505))

(assert (= (and b!8037504 (not c!1474557)) b!8037507))

(assert (= (and b!8037505 res!3177383) b!8037511))

(assert (= (and b!8037507 (not res!3177384)) b!8037506))

(assert (= (and b!8037506 res!3177385) b!8037508))

(assert (= (or b!8037511 b!8037508) bm!746029))

(assert (= (or b!8037505 b!8037506) bm!746028))

(assert (= (or b!8037509 bm!746029) bm!746027))

(declare-fun m!8393768 () Bool)

(assert (=> b!8037503 m!8393768))

(declare-fun m!8393770 () Bool)

(assert (=> bm!746028 m!8393770))

(declare-fun m!8393772 () Bool)

(assert (=> bm!746027 m!8393772))

(assert (=> bm!745949 d!2395165))

(declare-fun d!2395167 () Bool)

(assert (=> d!2395167 (= (nullable!9774 (regOne!44010 (regOne!44010 r!13107))) (nullableFct!3867 (regOne!44010 (regOne!44010 r!13107))))))

(declare-fun bs!1971523 () Bool)

(assert (= bs!1971523 d!2395167))

(declare-fun m!8393774 () Bool)

(assert (=> bs!1971523 m!8393774))

(assert (=> b!8037295 d!2395167))

(declare-fun d!2395169 () Bool)

(assert (=> d!2395169 (= (nullable!9774 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))) (nullableFct!3867 (reg!22078 (Union!21749 (Concat!30752 (derivativeStep!6668 (regOne!44010 r!13107) a!2390) (regTwo!44010 r!13107)) (derivativeStep!6668 (regTwo!44010 r!13107) a!2390)))))))

(declare-fun bs!1971524 () Bool)

(assert (= bs!1971524 d!2395169))

(declare-fun m!8393776 () Bool)

(assert (=> bs!1971524 m!8393776))

(assert (=> b!8037233 d!2395169))

(declare-fun b!8037512 () Bool)

(declare-fun e!4734323 () Bool)

(declare-fun e!4734326 () Bool)

(assert (=> b!8037512 (= e!4734323 e!4734326)))

(declare-fun res!3177391 () Bool)

(assert (=> b!8037512 (= res!3177391 (not (nullable!9774 (reg!22078 lt!2722132))))))

(assert (=> b!8037512 (=> (not res!3177391) (not e!4734326))))

(declare-fun b!8037513 () Bool)

(declare-fun e!4734325 () Bool)

(assert (=> b!8037513 (= e!4734323 e!4734325)))

(declare-fun c!1474559 () Bool)

(assert (=> b!8037513 (= c!1474559 ((_ is Union!21749) lt!2722132))))

(declare-fun b!8037514 () Bool)

(declare-fun res!3177388 () Bool)

(declare-fun e!4734328 () Bool)

(assert (=> b!8037514 (=> (not res!3177388) (not e!4734328))))

(declare-fun call!746035 () Bool)

(assert (=> b!8037514 (= res!3177388 call!746035)))

(assert (=> b!8037514 (= e!4734325 e!4734328)))

(declare-fun bm!746031 () Bool)

(assert (=> bm!746031 (= call!746035 (validRegex!12045 (ite c!1474559 (regOne!44011 lt!2722132) (regOne!44010 lt!2722132))))))

(declare-fun b!8037515 () Bool)

(declare-fun e!4734327 () Bool)

(declare-fun e!4734324 () Bool)

(assert (=> b!8037515 (= e!4734327 e!4734324)))

(declare-fun res!3177390 () Bool)

(assert (=> b!8037515 (=> (not res!3177390) (not e!4734324))))

(assert (=> b!8037515 (= res!3177390 call!746035)))

(declare-fun b!8037516 () Bool)

(declare-fun res!3177389 () Bool)

(assert (=> b!8037516 (=> res!3177389 e!4734327)))

(assert (=> b!8037516 (= res!3177389 (not ((_ is Concat!30752) lt!2722132)))))

(assert (=> b!8037516 (= e!4734325 e!4734327)))

(declare-fun b!8037517 () Bool)

(declare-fun call!746037 () Bool)

(assert (=> b!8037517 (= e!4734324 call!746037)))

(declare-fun bm!746032 () Bool)

(declare-fun call!746036 () Bool)

(assert (=> bm!746032 (= call!746037 call!746036)))

(declare-fun b!8037518 () Bool)

(assert (=> b!8037518 (= e!4734326 call!746036)))

(declare-fun d!2395171 () Bool)

(declare-fun res!3177392 () Bool)

(declare-fun e!4734322 () Bool)

(assert (=> d!2395171 (=> res!3177392 e!4734322)))

(assert (=> d!2395171 (= res!3177392 ((_ is ElementMatch!21749) lt!2722132))))

(assert (=> d!2395171 (= (validRegex!12045 lt!2722132) e!4734322)))

(declare-fun c!1474560 () Bool)

(declare-fun bm!746030 () Bool)

(assert (=> bm!746030 (= call!746036 (validRegex!12045 (ite c!1474560 (reg!22078 lt!2722132) (ite c!1474559 (regTwo!44011 lt!2722132) (regTwo!44010 lt!2722132)))))))

(declare-fun b!8037519 () Bool)

(assert (=> b!8037519 (= e!4734322 e!4734323)))

(assert (=> b!8037519 (= c!1474560 ((_ is Star!21749) lt!2722132))))

(declare-fun b!8037520 () Bool)

(assert (=> b!8037520 (= e!4734328 call!746037)))

(assert (= (and d!2395171 (not res!3177392)) b!8037519))

(assert (= (and b!8037519 c!1474560) b!8037512))

(assert (= (and b!8037519 (not c!1474560)) b!8037513))

(assert (= (and b!8037512 res!3177391) b!8037518))

(assert (= (and b!8037513 c!1474559) b!8037514))

(assert (= (and b!8037513 (not c!1474559)) b!8037516))

(assert (= (and b!8037514 res!3177388) b!8037520))

(assert (= (and b!8037516 (not res!3177389)) b!8037515))

(assert (= (and b!8037515 res!3177390) b!8037517))

(assert (= (or b!8037520 b!8037517) bm!746032))

(assert (= (or b!8037514 b!8037515) bm!746031))

(assert (= (or b!8037518 bm!746032) bm!746030))

(declare-fun m!8393778 () Bool)

(assert (=> b!8037512 m!8393778))

(declare-fun m!8393780 () Bool)

(assert (=> bm!746031 m!8393780))

(declare-fun m!8393782 () Bool)

(assert (=> bm!746030 m!8393782))

(assert (=> d!2395135 d!2395171))

(declare-fun b!8037521 () Bool)

(declare-fun e!4734330 () Bool)

(declare-fun e!4734333 () Bool)

(assert (=> b!8037521 (= e!4734330 e!4734333)))

(declare-fun res!3177396 () Bool)

(assert (=> b!8037521 (= res!3177396 (not (nullable!9774 (reg!22078 (regTwo!44010 r!13107)))))))

(assert (=> b!8037521 (=> (not res!3177396) (not e!4734333))))

(declare-fun b!8037522 () Bool)

(declare-fun e!4734332 () Bool)

(assert (=> b!8037522 (= e!4734330 e!4734332)))

(declare-fun c!1474561 () Bool)

(assert (=> b!8037522 (= c!1474561 ((_ is Union!21749) (regTwo!44010 r!13107)))))

(declare-fun b!8037523 () Bool)

(declare-fun res!3177393 () Bool)

(declare-fun e!4734335 () Bool)

(assert (=> b!8037523 (=> (not res!3177393) (not e!4734335))))

(declare-fun call!746038 () Bool)

(assert (=> b!8037523 (= res!3177393 call!746038)))

(assert (=> b!8037523 (= e!4734332 e!4734335)))

(declare-fun bm!746034 () Bool)

(assert (=> bm!746034 (= call!746038 (validRegex!12045 (ite c!1474561 (regOne!44011 (regTwo!44010 r!13107)) (regOne!44010 (regTwo!44010 r!13107)))))))

(declare-fun b!8037524 () Bool)

(declare-fun e!4734334 () Bool)

(declare-fun e!4734331 () Bool)

(assert (=> b!8037524 (= e!4734334 e!4734331)))

(declare-fun res!3177395 () Bool)

(assert (=> b!8037524 (=> (not res!3177395) (not e!4734331))))

(assert (=> b!8037524 (= res!3177395 call!746038)))

(declare-fun b!8037525 () Bool)

(declare-fun res!3177394 () Bool)

(assert (=> b!8037525 (=> res!3177394 e!4734334)))

(assert (=> b!8037525 (= res!3177394 (not ((_ is Concat!30752) (regTwo!44010 r!13107))))))

(assert (=> b!8037525 (= e!4734332 e!4734334)))

(declare-fun b!8037526 () Bool)

(declare-fun call!746040 () Bool)

(assert (=> b!8037526 (= e!4734331 call!746040)))

(declare-fun bm!746035 () Bool)

(declare-fun call!746039 () Bool)

(assert (=> bm!746035 (= call!746040 call!746039)))

(declare-fun b!8037527 () Bool)

(assert (=> b!8037527 (= e!4734333 call!746039)))

(declare-fun d!2395173 () Bool)

(declare-fun res!3177397 () Bool)

(declare-fun e!4734329 () Bool)

(assert (=> d!2395173 (=> res!3177397 e!4734329)))

(assert (=> d!2395173 (= res!3177397 ((_ is ElementMatch!21749) (regTwo!44010 r!13107)))))

(assert (=> d!2395173 (= (validRegex!12045 (regTwo!44010 r!13107)) e!4734329)))

(declare-fun bm!746033 () Bool)

(declare-fun c!1474562 () Bool)

(assert (=> bm!746033 (= call!746039 (validRegex!12045 (ite c!1474562 (reg!22078 (regTwo!44010 r!13107)) (ite c!1474561 (regTwo!44011 (regTwo!44010 r!13107)) (regTwo!44010 (regTwo!44010 r!13107))))))))

(declare-fun b!8037528 () Bool)

(assert (=> b!8037528 (= e!4734329 e!4734330)))

(assert (=> b!8037528 (= c!1474562 ((_ is Star!21749) (regTwo!44010 r!13107)))))

(declare-fun b!8037529 () Bool)

(assert (=> b!8037529 (= e!4734335 call!746040)))

(assert (= (and d!2395173 (not res!3177397)) b!8037528))

(assert (= (and b!8037528 c!1474562) b!8037521))

(assert (= (and b!8037528 (not c!1474562)) b!8037522))

(assert (= (and b!8037521 res!3177396) b!8037527))

(assert (= (and b!8037522 c!1474561) b!8037523))

(assert (= (and b!8037522 (not c!1474561)) b!8037525))

(assert (= (and b!8037523 res!3177393) b!8037529))

(assert (= (and b!8037525 (not res!3177394)) b!8037524))

(assert (= (and b!8037524 res!3177395) b!8037526))

(assert (= (or b!8037529 b!8037526) bm!746035))

(assert (= (or b!8037523 b!8037524) bm!746034))

(assert (= (or b!8037527 bm!746035) bm!746033))

(declare-fun m!8393784 () Bool)

(assert (=> b!8037521 m!8393784))

(declare-fun m!8393786 () Bool)

(assert (=> bm!746034 m!8393786))

(declare-fun m!8393788 () Bool)

(assert (=> bm!746033 m!8393788))

(assert (=> d!2395135 d!2395173))

(declare-fun bm!746040 () Bool)

(declare-fun call!746046 () Bool)

(declare-fun c!1474565 () Bool)

(assert (=> bm!746040 (= call!746046 (nullable!9774 (ite c!1474565 (regOne!44011 (regOne!44010 r!13107)) (regOne!44010 (regOne!44010 r!13107)))))))

(declare-fun b!8037544 () Bool)

(declare-fun e!4734352 () Bool)

(declare-fun call!746045 () Bool)

(assert (=> b!8037544 (= e!4734352 call!746045)))

(declare-fun b!8037545 () Bool)

(declare-fun e!4734349 () Bool)

(declare-fun e!4734348 () Bool)

(assert (=> b!8037545 (= e!4734349 e!4734348)))

(assert (=> b!8037545 (= c!1474565 ((_ is Union!21749) (regOne!44010 r!13107)))))

(declare-fun b!8037546 () Bool)

(assert (=> b!8037546 (= e!4734348 e!4734352)))

(declare-fun res!3177412 () Bool)

(assert (=> b!8037546 (= res!3177412 call!746046)))

(assert (=> b!8037546 (=> (not res!3177412) (not e!4734352))))

(declare-fun b!8037548 () Bool)

(declare-fun e!4734350 () Bool)

(assert (=> b!8037548 (= e!4734350 call!746045)))

(declare-fun b!8037549 () Bool)

(declare-fun e!4734353 () Bool)

(declare-fun e!4734351 () Bool)

(assert (=> b!8037549 (= e!4734353 e!4734351)))

(declare-fun res!3177409 () Bool)

(assert (=> b!8037549 (=> (not res!3177409) (not e!4734351))))

(assert (=> b!8037549 (= res!3177409 (and (not ((_ is EmptyLang!21749) (regOne!44010 r!13107))) (not ((_ is ElementMatch!21749) (regOne!44010 r!13107)))))))

(declare-fun bm!746041 () Bool)

(assert (=> bm!746041 (= call!746045 (nullable!9774 (ite c!1474565 (regTwo!44011 (regOne!44010 r!13107)) (regTwo!44010 (regOne!44010 r!13107)))))))

(declare-fun b!8037550 () Bool)

(assert (=> b!8037550 (= e!4734351 e!4734349)))

(declare-fun res!3177408 () Bool)

(assert (=> b!8037550 (=> res!3177408 e!4734349)))

(assert (=> b!8037550 (= res!3177408 ((_ is Star!21749) (regOne!44010 r!13107)))))

(declare-fun d!2395175 () Bool)

(declare-fun res!3177411 () Bool)

(assert (=> d!2395175 (=> res!3177411 e!4734353)))

(assert (=> d!2395175 (= res!3177411 ((_ is EmptyExpr!21749) (regOne!44010 r!13107)))))

(assert (=> d!2395175 (= (nullableFct!3867 (regOne!44010 r!13107)) e!4734353)))

(declare-fun b!8037547 () Bool)

(assert (=> b!8037547 (= e!4734348 e!4734350)))

(declare-fun res!3177410 () Bool)

(assert (=> b!8037547 (= res!3177410 call!746046)))

(assert (=> b!8037547 (=> res!3177410 e!4734350)))

(assert (= (and d!2395175 (not res!3177411)) b!8037549))

(assert (= (and b!8037549 res!3177409) b!8037550))

(assert (= (and b!8037550 (not res!3177408)) b!8037545))

(assert (= (and b!8037545 c!1474565) b!8037547))

(assert (= (and b!8037545 (not c!1474565)) b!8037546))

(assert (= (and b!8037547 (not res!3177410)) b!8037548))

(assert (= (and b!8037546 res!3177412) b!8037544))

(assert (= (or b!8037548 b!8037544) bm!746041))

(assert (= (or b!8037547 b!8037546) bm!746040))

(declare-fun m!8393790 () Bool)

(assert (=> bm!746040 m!8393790))

(declare-fun m!8393792 () Bool)

(assert (=> bm!746041 m!8393792))

(assert (=> d!2395127 d!2395175))

(declare-fun e!4734354 () Bool)

(assert (=> b!8037322 (= tp!2406808 e!4734354)))

(declare-fun b!8037553 () Bool)

(declare-fun tp!2406864 () Bool)

(assert (=> b!8037553 (= e!4734354 tp!2406864)))

(declare-fun b!8037551 () Bool)

(assert (=> b!8037551 (= e!4734354 tp_is_empty!54493)))

(declare-fun b!8037554 () Bool)

(declare-fun tp!2406868 () Bool)

(declare-fun tp!2406867 () Bool)

(assert (=> b!8037554 (= e!4734354 (and tp!2406868 tp!2406867))))

(declare-fun b!8037552 () Bool)

(declare-fun tp!2406865 () Bool)

(declare-fun tp!2406866 () Bool)

(assert (=> b!8037552 (= e!4734354 (and tp!2406865 tp!2406866))))

(assert (= (and b!8037322 ((_ is ElementMatch!21749) (regOne!44011 (regOne!44011 r!13107)))) b!8037551))

(assert (= (and b!8037322 ((_ is Concat!30752) (regOne!44011 (regOne!44011 r!13107)))) b!8037552))

(assert (= (and b!8037322 ((_ is Star!21749) (regOne!44011 (regOne!44011 r!13107)))) b!8037553))

(assert (= (and b!8037322 ((_ is Union!21749) (regOne!44011 (regOne!44011 r!13107)))) b!8037554))

(declare-fun e!4734355 () Bool)

(assert (=> b!8037322 (= tp!2406807 e!4734355)))

(declare-fun b!8037557 () Bool)

(declare-fun tp!2406869 () Bool)

(assert (=> b!8037557 (= e!4734355 tp!2406869)))

(declare-fun b!8037555 () Bool)

(assert (=> b!8037555 (= e!4734355 tp_is_empty!54493)))

(declare-fun b!8037558 () Bool)

(declare-fun tp!2406873 () Bool)

(declare-fun tp!2406872 () Bool)

(assert (=> b!8037558 (= e!4734355 (and tp!2406873 tp!2406872))))

(declare-fun b!8037556 () Bool)

(declare-fun tp!2406870 () Bool)

(declare-fun tp!2406871 () Bool)

(assert (=> b!8037556 (= e!4734355 (and tp!2406870 tp!2406871))))

(assert (= (and b!8037322 ((_ is ElementMatch!21749) (regTwo!44011 (regOne!44011 r!13107)))) b!8037555))

(assert (= (and b!8037322 ((_ is Concat!30752) (regTwo!44011 (regOne!44011 r!13107)))) b!8037556))

(assert (= (and b!8037322 ((_ is Star!21749) (regTwo!44011 (regOne!44011 r!13107)))) b!8037557))

(assert (= (and b!8037322 ((_ is Union!21749) (regTwo!44011 (regOne!44011 r!13107)))) b!8037558))

(declare-fun e!4734356 () Bool)

(assert (=> b!8037336 (= tp!2406825 e!4734356)))

(declare-fun b!8037561 () Bool)

(declare-fun tp!2406874 () Bool)

(assert (=> b!8037561 (= e!4734356 tp!2406874)))

(declare-fun b!8037559 () Bool)

(assert (=> b!8037559 (= e!4734356 tp_is_empty!54493)))

(declare-fun b!8037562 () Bool)

(declare-fun tp!2406878 () Bool)

(declare-fun tp!2406877 () Bool)

(assert (=> b!8037562 (= e!4734356 (and tp!2406878 tp!2406877))))

(declare-fun b!8037560 () Bool)

(declare-fun tp!2406875 () Bool)

(declare-fun tp!2406876 () Bool)

(assert (=> b!8037560 (= e!4734356 (and tp!2406875 tp!2406876))))

(assert (= (and b!8037336 ((_ is ElementMatch!21749) (regOne!44010 (reg!22078 r!13107)))) b!8037559))

(assert (= (and b!8037336 ((_ is Concat!30752) (regOne!44010 (reg!22078 r!13107)))) b!8037560))

(assert (= (and b!8037336 ((_ is Star!21749) (regOne!44010 (reg!22078 r!13107)))) b!8037561))

(assert (= (and b!8037336 ((_ is Union!21749) (regOne!44010 (reg!22078 r!13107)))) b!8037562))

(declare-fun e!4734357 () Bool)

(assert (=> b!8037336 (= tp!2406826 e!4734357)))

(declare-fun b!8037565 () Bool)

(declare-fun tp!2406879 () Bool)

(assert (=> b!8037565 (= e!4734357 tp!2406879)))

(declare-fun b!8037563 () Bool)

(assert (=> b!8037563 (= e!4734357 tp_is_empty!54493)))

(declare-fun b!8037566 () Bool)

(declare-fun tp!2406883 () Bool)

(declare-fun tp!2406882 () Bool)

(assert (=> b!8037566 (= e!4734357 (and tp!2406883 tp!2406882))))

(declare-fun b!8037564 () Bool)

(declare-fun tp!2406880 () Bool)

(declare-fun tp!2406881 () Bool)

(assert (=> b!8037564 (= e!4734357 (and tp!2406880 tp!2406881))))

(assert (= (and b!8037336 ((_ is ElementMatch!21749) (regTwo!44010 (reg!22078 r!13107)))) b!8037563))

(assert (= (and b!8037336 ((_ is Concat!30752) (regTwo!44010 (reg!22078 r!13107)))) b!8037564))

(assert (= (and b!8037336 ((_ is Star!21749) (regTwo!44010 (reg!22078 r!13107)))) b!8037565))

(assert (= (and b!8037336 ((_ is Union!21749) (regTwo!44010 (reg!22078 r!13107)))) b!8037566))

(declare-fun e!4734358 () Bool)

(assert (=> b!8037337 (= tp!2406824 e!4734358)))

(declare-fun b!8037569 () Bool)

(declare-fun tp!2406884 () Bool)

(assert (=> b!8037569 (= e!4734358 tp!2406884)))

(declare-fun b!8037567 () Bool)

(assert (=> b!8037567 (= e!4734358 tp_is_empty!54493)))

(declare-fun b!8037570 () Bool)

(declare-fun tp!2406888 () Bool)

(declare-fun tp!2406887 () Bool)

(assert (=> b!8037570 (= e!4734358 (and tp!2406888 tp!2406887))))

(declare-fun b!8037568 () Bool)

(declare-fun tp!2406885 () Bool)

(declare-fun tp!2406886 () Bool)

(assert (=> b!8037568 (= e!4734358 (and tp!2406885 tp!2406886))))

(assert (= (and b!8037337 ((_ is ElementMatch!21749) (reg!22078 (reg!22078 r!13107)))) b!8037567))

(assert (= (and b!8037337 ((_ is Concat!30752) (reg!22078 (reg!22078 r!13107)))) b!8037568))

(assert (= (and b!8037337 ((_ is Star!21749) (reg!22078 (reg!22078 r!13107)))) b!8037569))

(assert (= (and b!8037337 ((_ is Union!21749) (reg!22078 (reg!22078 r!13107)))) b!8037570))

(declare-fun e!4734359 () Bool)

(assert (=> b!8037332 (= tp!2406820 e!4734359)))

(declare-fun b!8037573 () Bool)

(declare-fun tp!2406889 () Bool)

(assert (=> b!8037573 (= e!4734359 tp!2406889)))

(declare-fun b!8037571 () Bool)

(assert (=> b!8037571 (= e!4734359 tp_is_empty!54493)))

(declare-fun b!8037574 () Bool)

(declare-fun tp!2406893 () Bool)

(declare-fun tp!2406892 () Bool)

(assert (=> b!8037574 (= e!4734359 (and tp!2406893 tp!2406892))))

(declare-fun b!8037572 () Bool)

(declare-fun tp!2406890 () Bool)

(declare-fun tp!2406891 () Bool)

(assert (=> b!8037572 (= e!4734359 (and tp!2406890 tp!2406891))))

(assert (= (and b!8037332 ((_ is ElementMatch!21749) (regOne!44010 (regTwo!44010 r!13107)))) b!8037571))

(assert (= (and b!8037332 ((_ is Concat!30752) (regOne!44010 (regTwo!44010 r!13107)))) b!8037572))

(assert (= (and b!8037332 ((_ is Star!21749) (regOne!44010 (regTwo!44010 r!13107)))) b!8037573))

(assert (= (and b!8037332 ((_ is Union!21749) (regOne!44010 (regTwo!44010 r!13107)))) b!8037574))

(declare-fun e!4734360 () Bool)

(assert (=> b!8037332 (= tp!2406821 e!4734360)))

(declare-fun b!8037577 () Bool)

(declare-fun tp!2406894 () Bool)

(assert (=> b!8037577 (= e!4734360 tp!2406894)))

(declare-fun b!8037575 () Bool)

(assert (=> b!8037575 (= e!4734360 tp_is_empty!54493)))

(declare-fun b!8037578 () Bool)

(declare-fun tp!2406898 () Bool)

(declare-fun tp!2406897 () Bool)

(assert (=> b!8037578 (= e!4734360 (and tp!2406898 tp!2406897))))

(declare-fun b!8037576 () Bool)

(declare-fun tp!2406895 () Bool)

(declare-fun tp!2406896 () Bool)

(assert (=> b!8037576 (= e!4734360 (and tp!2406895 tp!2406896))))

(assert (= (and b!8037332 ((_ is ElementMatch!21749) (regTwo!44010 (regTwo!44010 r!13107)))) b!8037575))

(assert (= (and b!8037332 ((_ is Concat!30752) (regTwo!44010 (regTwo!44010 r!13107)))) b!8037576))

(assert (= (and b!8037332 ((_ is Star!21749) (regTwo!44010 (regTwo!44010 r!13107)))) b!8037577))

(assert (= (and b!8037332 ((_ is Union!21749) (regTwo!44010 (regTwo!44010 r!13107)))) b!8037578))

(declare-fun e!4734361 () Bool)

(assert (=> b!8037333 (= tp!2406819 e!4734361)))

(declare-fun b!8037581 () Bool)

(declare-fun tp!2406899 () Bool)

(assert (=> b!8037581 (= e!4734361 tp!2406899)))

(declare-fun b!8037579 () Bool)

(assert (=> b!8037579 (= e!4734361 tp_is_empty!54493)))

(declare-fun b!8037582 () Bool)

(declare-fun tp!2406903 () Bool)

(declare-fun tp!2406902 () Bool)

(assert (=> b!8037582 (= e!4734361 (and tp!2406903 tp!2406902))))

(declare-fun b!8037580 () Bool)

(declare-fun tp!2406900 () Bool)

(declare-fun tp!2406901 () Bool)

(assert (=> b!8037580 (= e!4734361 (and tp!2406900 tp!2406901))))

(assert (= (and b!8037333 ((_ is ElementMatch!21749) (reg!22078 (regTwo!44010 r!13107)))) b!8037579))

(assert (= (and b!8037333 ((_ is Concat!30752) (reg!22078 (regTwo!44010 r!13107)))) b!8037580))

(assert (= (and b!8037333 ((_ is Star!21749) (reg!22078 (regTwo!44010 r!13107)))) b!8037581))

(assert (= (and b!8037333 ((_ is Union!21749) (reg!22078 (regTwo!44010 r!13107)))) b!8037582))

(declare-fun e!4734362 () Bool)

(assert (=> b!8037328 (= tp!2406815 e!4734362)))

(declare-fun b!8037585 () Bool)

(declare-fun tp!2406904 () Bool)

(assert (=> b!8037585 (= e!4734362 tp!2406904)))

(declare-fun b!8037583 () Bool)

(assert (=> b!8037583 (= e!4734362 tp_is_empty!54493)))

(declare-fun b!8037586 () Bool)

(declare-fun tp!2406908 () Bool)

(declare-fun tp!2406907 () Bool)

(assert (=> b!8037586 (= e!4734362 (and tp!2406908 tp!2406907))))

(declare-fun b!8037584 () Bool)

(declare-fun tp!2406905 () Bool)

(declare-fun tp!2406906 () Bool)

(assert (=> b!8037584 (= e!4734362 (and tp!2406905 tp!2406906))))

(assert (= (and b!8037328 ((_ is ElementMatch!21749) (regOne!44010 (regOne!44010 r!13107)))) b!8037583))

(assert (= (and b!8037328 ((_ is Concat!30752) (regOne!44010 (regOne!44010 r!13107)))) b!8037584))

(assert (= (and b!8037328 ((_ is Star!21749) (regOne!44010 (regOne!44010 r!13107)))) b!8037585))

(assert (= (and b!8037328 ((_ is Union!21749) (regOne!44010 (regOne!44010 r!13107)))) b!8037586))

(declare-fun e!4734363 () Bool)

(assert (=> b!8037328 (= tp!2406816 e!4734363)))

(declare-fun b!8037589 () Bool)

(declare-fun tp!2406909 () Bool)

(assert (=> b!8037589 (= e!4734363 tp!2406909)))

(declare-fun b!8037587 () Bool)

(assert (=> b!8037587 (= e!4734363 tp_is_empty!54493)))

(declare-fun b!8037590 () Bool)

(declare-fun tp!2406913 () Bool)

(declare-fun tp!2406912 () Bool)

(assert (=> b!8037590 (= e!4734363 (and tp!2406913 tp!2406912))))

(declare-fun b!8037588 () Bool)

(declare-fun tp!2406910 () Bool)

(declare-fun tp!2406911 () Bool)

(assert (=> b!8037588 (= e!4734363 (and tp!2406910 tp!2406911))))

(assert (= (and b!8037328 ((_ is ElementMatch!21749) (regTwo!44010 (regOne!44010 r!13107)))) b!8037587))

(assert (= (and b!8037328 ((_ is Concat!30752) (regTwo!44010 (regOne!44010 r!13107)))) b!8037588))

(assert (= (and b!8037328 ((_ is Star!21749) (regTwo!44010 (regOne!44010 r!13107)))) b!8037589))

(assert (= (and b!8037328 ((_ is Union!21749) (regTwo!44010 (regOne!44010 r!13107)))) b!8037590))

(declare-fun e!4734364 () Bool)

(assert (=> b!8037329 (= tp!2406814 e!4734364)))

(declare-fun b!8037593 () Bool)

(declare-fun tp!2406914 () Bool)

(assert (=> b!8037593 (= e!4734364 tp!2406914)))

(declare-fun b!8037591 () Bool)

(assert (=> b!8037591 (= e!4734364 tp_is_empty!54493)))

(declare-fun b!8037594 () Bool)

(declare-fun tp!2406918 () Bool)

(declare-fun tp!2406917 () Bool)

(assert (=> b!8037594 (= e!4734364 (and tp!2406918 tp!2406917))))

(declare-fun b!8037592 () Bool)

(declare-fun tp!2406915 () Bool)

(declare-fun tp!2406916 () Bool)

(assert (=> b!8037592 (= e!4734364 (and tp!2406915 tp!2406916))))

(assert (= (and b!8037329 ((_ is ElementMatch!21749) (reg!22078 (regOne!44010 r!13107)))) b!8037591))

(assert (= (and b!8037329 ((_ is Concat!30752) (reg!22078 (regOne!44010 r!13107)))) b!8037592))

(assert (= (and b!8037329 ((_ is Star!21749) (reg!22078 (regOne!44010 r!13107)))) b!8037593))

(assert (= (and b!8037329 ((_ is Union!21749) (reg!22078 (regOne!44010 r!13107)))) b!8037594))

(declare-fun e!4734365 () Bool)

(assert (=> b!8037338 (= tp!2406828 e!4734365)))

(declare-fun b!8037597 () Bool)

(declare-fun tp!2406919 () Bool)

(assert (=> b!8037597 (= e!4734365 tp!2406919)))

(declare-fun b!8037595 () Bool)

(assert (=> b!8037595 (= e!4734365 tp_is_empty!54493)))

(declare-fun b!8037598 () Bool)

(declare-fun tp!2406923 () Bool)

(declare-fun tp!2406922 () Bool)

(assert (=> b!8037598 (= e!4734365 (and tp!2406923 tp!2406922))))

(declare-fun b!8037596 () Bool)

(declare-fun tp!2406920 () Bool)

(declare-fun tp!2406921 () Bool)

(assert (=> b!8037596 (= e!4734365 (and tp!2406920 tp!2406921))))

(assert (= (and b!8037338 ((_ is ElementMatch!21749) (regOne!44011 (reg!22078 r!13107)))) b!8037595))

(assert (= (and b!8037338 ((_ is Concat!30752) (regOne!44011 (reg!22078 r!13107)))) b!8037596))

(assert (= (and b!8037338 ((_ is Star!21749) (regOne!44011 (reg!22078 r!13107)))) b!8037597))

(assert (= (and b!8037338 ((_ is Union!21749) (regOne!44011 (reg!22078 r!13107)))) b!8037598))

(declare-fun e!4734366 () Bool)

(assert (=> b!8037338 (= tp!2406827 e!4734366)))

(declare-fun b!8037601 () Bool)

(declare-fun tp!2406924 () Bool)

(assert (=> b!8037601 (= e!4734366 tp!2406924)))

(declare-fun b!8037599 () Bool)

(assert (=> b!8037599 (= e!4734366 tp_is_empty!54493)))

(declare-fun b!8037602 () Bool)

(declare-fun tp!2406928 () Bool)

(declare-fun tp!2406927 () Bool)

(assert (=> b!8037602 (= e!4734366 (and tp!2406928 tp!2406927))))

(declare-fun b!8037600 () Bool)

(declare-fun tp!2406925 () Bool)

(declare-fun tp!2406926 () Bool)

(assert (=> b!8037600 (= e!4734366 (and tp!2406925 tp!2406926))))

(assert (= (and b!8037338 ((_ is ElementMatch!21749) (regTwo!44011 (reg!22078 r!13107)))) b!8037599))

(assert (= (and b!8037338 ((_ is Concat!30752) (regTwo!44011 (reg!22078 r!13107)))) b!8037600))

(assert (= (and b!8037338 ((_ is Star!21749) (regTwo!44011 (reg!22078 r!13107)))) b!8037601))

(assert (= (and b!8037338 ((_ is Union!21749) (regTwo!44011 (reg!22078 r!13107)))) b!8037602))

(declare-fun e!4734367 () Bool)

(assert (=> b!8037324 (= tp!2406810 e!4734367)))

(declare-fun b!8037605 () Bool)

(declare-fun tp!2406929 () Bool)

(assert (=> b!8037605 (= e!4734367 tp!2406929)))

(declare-fun b!8037603 () Bool)

(assert (=> b!8037603 (= e!4734367 tp_is_empty!54493)))

(declare-fun b!8037606 () Bool)

(declare-fun tp!2406933 () Bool)

(declare-fun tp!2406932 () Bool)

(assert (=> b!8037606 (= e!4734367 (and tp!2406933 tp!2406932))))

(declare-fun b!8037604 () Bool)

(declare-fun tp!2406930 () Bool)

(declare-fun tp!2406931 () Bool)

(assert (=> b!8037604 (= e!4734367 (and tp!2406930 tp!2406931))))

(assert (= (and b!8037324 ((_ is ElementMatch!21749) (regOne!44010 (regTwo!44011 r!13107)))) b!8037603))

(assert (= (and b!8037324 ((_ is Concat!30752) (regOne!44010 (regTwo!44011 r!13107)))) b!8037604))

(assert (= (and b!8037324 ((_ is Star!21749) (regOne!44010 (regTwo!44011 r!13107)))) b!8037605))

(assert (= (and b!8037324 ((_ is Union!21749) (regOne!44010 (regTwo!44011 r!13107)))) b!8037606))

(declare-fun e!4734368 () Bool)

(assert (=> b!8037324 (= tp!2406811 e!4734368)))

(declare-fun b!8037609 () Bool)

(declare-fun tp!2406934 () Bool)

(assert (=> b!8037609 (= e!4734368 tp!2406934)))

(declare-fun b!8037607 () Bool)

(assert (=> b!8037607 (= e!4734368 tp_is_empty!54493)))

(declare-fun b!8037610 () Bool)

(declare-fun tp!2406938 () Bool)

(declare-fun tp!2406937 () Bool)

(assert (=> b!8037610 (= e!4734368 (and tp!2406938 tp!2406937))))

(declare-fun b!8037608 () Bool)

(declare-fun tp!2406935 () Bool)

(declare-fun tp!2406936 () Bool)

(assert (=> b!8037608 (= e!4734368 (and tp!2406935 tp!2406936))))

(assert (= (and b!8037324 ((_ is ElementMatch!21749) (regTwo!44010 (regTwo!44011 r!13107)))) b!8037607))

(assert (= (and b!8037324 ((_ is Concat!30752) (regTwo!44010 (regTwo!44011 r!13107)))) b!8037608))

(assert (= (and b!8037324 ((_ is Star!21749) (regTwo!44010 (regTwo!44011 r!13107)))) b!8037609))

(assert (= (and b!8037324 ((_ is Union!21749) (regTwo!44010 (regTwo!44011 r!13107)))) b!8037610))

(declare-fun e!4734369 () Bool)

(assert (=> b!8037325 (= tp!2406809 e!4734369)))

(declare-fun b!8037613 () Bool)

(declare-fun tp!2406939 () Bool)

(assert (=> b!8037613 (= e!4734369 tp!2406939)))

(declare-fun b!8037611 () Bool)

(assert (=> b!8037611 (= e!4734369 tp_is_empty!54493)))

(declare-fun b!8037614 () Bool)

(declare-fun tp!2406943 () Bool)

(declare-fun tp!2406942 () Bool)

(assert (=> b!8037614 (= e!4734369 (and tp!2406943 tp!2406942))))

(declare-fun b!8037612 () Bool)

(declare-fun tp!2406940 () Bool)

(declare-fun tp!2406941 () Bool)

(assert (=> b!8037612 (= e!4734369 (and tp!2406940 tp!2406941))))

(assert (= (and b!8037325 ((_ is ElementMatch!21749) (reg!22078 (regTwo!44011 r!13107)))) b!8037611))

(assert (= (and b!8037325 ((_ is Concat!30752) (reg!22078 (regTwo!44011 r!13107)))) b!8037612))

(assert (= (and b!8037325 ((_ is Star!21749) (reg!22078 (regTwo!44011 r!13107)))) b!8037613))

(assert (= (and b!8037325 ((_ is Union!21749) (reg!22078 (regTwo!44011 r!13107)))) b!8037614))

(declare-fun e!4734370 () Bool)

(assert (=> b!8037334 (= tp!2406823 e!4734370)))

(declare-fun b!8037617 () Bool)

(declare-fun tp!2406944 () Bool)

(assert (=> b!8037617 (= e!4734370 tp!2406944)))

(declare-fun b!8037615 () Bool)

(assert (=> b!8037615 (= e!4734370 tp_is_empty!54493)))

(declare-fun b!8037618 () Bool)

(declare-fun tp!2406948 () Bool)

(declare-fun tp!2406947 () Bool)

(assert (=> b!8037618 (= e!4734370 (and tp!2406948 tp!2406947))))

(declare-fun b!8037616 () Bool)

(declare-fun tp!2406945 () Bool)

(declare-fun tp!2406946 () Bool)

(assert (=> b!8037616 (= e!4734370 (and tp!2406945 tp!2406946))))

(assert (= (and b!8037334 ((_ is ElementMatch!21749) (regOne!44011 (regTwo!44010 r!13107)))) b!8037615))

(assert (= (and b!8037334 ((_ is Concat!30752) (regOne!44011 (regTwo!44010 r!13107)))) b!8037616))

(assert (= (and b!8037334 ((_ is Star!21749) (regOne!44011 (regTwo!44010 r!13107)))) b!8037617))

(assert (= (and b!8037334 ((_ is Union!21749) (regOne!44011 (regTwo!44010 r!13107)))) b!8037618))

(declare-fun e!4734371 () Bool)

(assert (=> b!8037334 (= tp!2406822 e!4734371)))

(declare-fun b!8037621 () Bool)

(declare-fun tp!2406949 () Bool)

(assert (=> b!8037621 (= e!4734371 tp!2406949)))

(declare-fun b!8037619 () Bool)

(assert (=> b!8037619 (= e!4734371 tp_is_empty!54493)))

(declare-fun b!8037622 () Bool)

(declare-fun tp!2406953 () Bool)

(declare-fun tp!2406952 () Bool)

(assert (=> b!8037622 (= e!4734371 (and tp!2406953 tp!2406952))))

(declare-fun b!8037620 () Bool)

(declare-fun tp!2406950 () Bool)

(declare-fun tp!2406951 () Bool)

(assert (=> b!8037620 (= e!4734371 (and tp!2406950 tp!2406951))))

(assert (= (and b!8037334 ((_ is ElementMatch!21749) (regTwo!44011 (regTwo!44010 r!13107)))) b!8037619))

(assert (= (and b!8037334 ((_ is Concat!30752) (regTwo!44011 (regTwo!44010 r!13107)))) b!8037620))

(assert (= (and b!8037334 ((_ is Star!21749) (regTwo!44011 (regTwo!44010 r!13107)))) b!8037621))

(assert (= (and b!8037334 ((_ is Union!21749) (regTwo!44011 (regTwo!44010 r!13107)))) b!8037622))

(declare-fun e!4734372 () Bool)

(assert (=> b!8037320 (= tp!2406805 e!4734372)))

(declare-fun b!8037625 () Bool)

(declare-fun tp!2406954 () Bool)

(assert (=> b!8037625 (= e!4734372 tp!2406954)))

(declare-fun b!8037623 () Bool)

(assert (=> b!8037623 (= e!4734372 tp_is_empty!54493)))

(declare-fun b!8037626 () Bool)

(declare-fun tp!2406958 () Bool)

(declare-fun tp!2406957 () Bool)

(assert (=> b!8037626 (= e!4734372 (and tp!2406958 tp!2406957))))

(declare-fun b!8037624 () Bool)

(declare-fun tp!2406955 () Bool)

(declare-fun tp!2406956 () Bool)

(assert (=> b!8037624 (= e!4734372 (and tp!2406955 tp!2406956))))

(assert (= (and b!8037320 ((_ is ElementMatch!21749) (regOne!44010 (regOne!44011 r!13107)))) b!8037623))

(assert (= (and b!8037320 ((_ is Concat!30752) (regOne!44010 (regOne!44011 r!13107)))) b!8037624))

(assert (= (and b!8037320 ((_ is Star!21749) (regOne!44010 (regOne!44011 r!13107)))) b!8037625))

(assert (= (and b!8037320 ((_ is Union!21749) (regOne!44010 (regOne!44011 r!13107)))) b!8037626))

(declare-fun e!4734373 () Bool)

(assert (=> b!8037320 (= tp!2406806 e!4734373)))

(declare-fun b!8037629 () Bool)

(declare-fun tp!2406959 () Bool)

(assert (=> b!8037629 (= e!4734373 tp!2406959)))

(declare-fun b!8037627 () Bool)

(assert (=> b!8037627 (= e!4734373 tp_is_empty!54493)))

(declare-fun b!8037630 () Bool)

(declare-fun tp!2406963 () Bool)

(declare-fun tp!2406962 () Bool)

(assert (=> b!8037630 (= e!4734373 (and tp!2406963 tp!2406962))))

(declare-fun b!8037628 () Bool)

(declare-fun tp!2406960 () Bool)

(declare-fun tp!2406961 () Bool)

(assert (=> b!8037628 (= e!4734373 (and tp!2406960 tp!2406961))))

(assert (= (and b!8037320 ((_ is ElementMatch!21749) (regTwo!44010 (regOne!44011 r!13107)))) b!8037627))

(assert (= (and b!8037320 ((_ is Concat!30752) (regTwo!44010 (regOne!44011 r!13107)))) b!8037628))

(assert (= (and b!8037320 ((_ is Star!21749) (regTwo!44010 (regOne!44011 r!13107)))) b!8037629))

(assert (= (and b!8037320 ((_ is Union!21749) (regTwo!44010 (regOne!44011 r!13107)))) b!8037630))

(declare-fun e!4734374 () Bool)

(assert (=> b!8037321 (= tp!2406804 e!4734374)))

(declare-fun b!8037633 () Bool)

(declare-fun tp!2406964 () Bool)

(assert (=> b!8037633 (= e!4734374 tp!2406964)))

(declare-fun b!8037631 () Bool)

(assert (=> b!8037631 (= e!4734374 tp_is_empty!54493)))

(declare-fun b!8037634 () Bool)

(declare-fun tp!2406968 () Bool)

(declare-fun tp!2406967 () Bool)

(assert (=> b!8037634 (= e!4734374 (and tp!2406968 tp!2406967))))

(declare-fun b!8037632 () Bool)

(declare-fun tp!2406965 () Bool)

(declare-fun tp!2406966 () Bool)

(assert (=> b!8037632 (= e!4734374 (and tp!2406965 tp!2406966))))

(assert (= (and b!8037321 ((_ is ElementMatch!21749) (reg!22078 (regOne!44011 r!13107)))) b!8037631))

(assert (= (and b!8037321 ((_ is Concat!30752) (reg!22078 (regOne!44011 r!13107)))) b!8037632))

(assert (= (and b!8037321 ((_ is Star!21749) (reg!22078 (regOne!44011 r!13107)))) b!8037633))

(assert (= (and b!8037321 ((_ is Union!21749) (reg!22078 (regOne!44011 r!13107)))) b!8037634))

(declare-fun e!4734375 () Bool)

(assert (=> b!8037330 (= tp!2406818 e!4734375)))

(declare-fun b!8037637 () Bool)

(declare-fun tp!2406969 () Bool)

(assert (=> b!8037637 (= e!4734375 tp!2406969)))

(declare-fun b!8037635 () Bool)

(assert (=> b!8037635 (= e!4734375 tp_is_empty!54493)))

(declare-fun b!8037638 () Bool)

(declare-fun tp!2406973 () Bool)

(declare-fun tp!2406972 () Bool)

(assert (=> b!8037638 (= e!4734375 (and tp!2406973 tp!2406972))))

(declare-fun b!8037636 () Bool)

(declare-fun tp!2406970 () Bool)

(declare-fun tp!2406971 () Bool)

(assert (=> b!8037636 (= e!4734375 (and tp!2406970 tp!2406971))))

(assert (= (and b!8037330 ((_ is ElementMatch!21749) (regOne!44011 (regOne!44010 r!13107)))) b!8037635))

(assert (= (and b!8037330 ((_ is Concat!30752) (regOne!44011 (regOne!44010 r!13107)))) b!8037636))

(assert (= (and b!8037330 ((_ is Star!21749) (regOne!44011 (regOne!44010 r!13107)))) b!8037637))

(assert (= (and b!8037330 ((_ is Union!21749) (regOne!44011 (regOne!44010 r!13107)))) b!8037638))

(declare-fun e!4734376 () Bool)

(assert (=> b!8037330 (= tp!2406817 e!4734376)))

(declare-fun b!8037641 () Bool)

(declare-fun tp!2406974 () Bool)

(assert (=> b!8037641 (= e!4734376 tp!2406974)))

(declare-fun b!8037639 () Bool)

(assert (=> b!8037639 (= e!4734376 tp_is_empty!54493)))

(declare-fun b!8037642 () Bool)

(declare-fun tp!2406978 () Bool)

(declare-fun tp!2406977 () Bool)

(assert (=> b!8037642 (= e!4734376 (and tp!2406978 tp!2406977))))

(declare-fun b!8037640 () Bool)

(declare-fun tp!2406975 () Bool)

(declare-fun tp!2406976 () Bool)

(assert (=> b!8037640 (= e!4734376 (and tp!2406975 tp!2406976))))

(assert (= (and b!8037330 ((_ is ElementMatch!21749) (regTwo!44011 (regOne!44010 r!13107)))) b!8037639))

(assert (= (and b!8037330 ((_ is Concat!30752) (regTwo!44011 (regOne!44010 r!13107)))) b!8037640))

(assert (= (and b!8037330 ((_ is Star!21749) (regTwo!44011 (regOne!44010 r!13107)))) b!8037641))

(assert (= (and b!8037330 ((_ is Union!21749) (regTwo!44011 (regOne!44010 r!13107)))) b!8037642))

(declare-fun e!4734377 () Bool)

(assert (=> b!8037326 (= tp!2406813 e!4734377)))

(declare-fun b!8037645 () Bool)

(declare-fun tp!2406979 () Bool)

(assert (=> b!8037645 (= e!4734377 tp!2406979)))

(declare-fun b!8037643 () Bool)

(assert (=> b!8037643 (= e!4734377 tp_is_empty!54493)))

(declare-fun b!8037646 () Bool)

(declare-fun tp!2406983 () Bool)

(declare-fun tp!2406982 () Bool)

(assert (=> b!8037646 (= e!4734377 (and tp!2406983 tp!2406982))))

(declare-fun b!8037644 () Bool)

(declare-fun tp!2406980 () Bool)

(declare-fun tp!2406981 () Bool)

(assert (=> b!8037644 (= e!4734377 (and tp!2406980 tp!2406981))))

(assert (= (and b!8037326 ((_ is ElementMatch!21749) (regOne!44011 (regTwo!44011 r!13107)))) b!8037643))

(assert (= (and b!8037326 ((_ is Concat!30752) (regOne!44011 (regTwo!44011 r!13107)))) b!8037644))

(assert (= (and b!8037326 ((_ is Star!21749) (regOne!44011 (regTwo!44011 r!13107)))) b!8037645))

(assert (= (and b!8037326 ((_ is Union!21749) (regOne!44011 (regTwo!44011 r!13107)))) b!8037646))

(declare-fun e!4734378 () Bool)

(assert (=> b!8037326 (= tp!2406812 e!4734378)))

(declare-fun b!8037649 () Bool)

(declare-fun tp!2406984 () Bool)

(assert (=> b!8037649 (= e!4734378 tp!2406984)))

(declare-fun b!8037647 () Bool)

(assert (=> b!8037647 (= e!4734378 tp_is_empty!54493)))

(declare-fun b!8037650 () Bool)

(declare-fun tp!2406988 () Bool)

(declare-fun tp!2406987 () Bool)

(assert (=> b!8037650 (= e!4734378 (and tp!2406988 tp!2406987))))

(declare-fun b!8037648 () Bool)

(declare-fun tp!2406985 () Bool)

(declare-fun tp!2406986 () Bool)

(assert (=> b!8037648 (= e!4734378 (and tp!2406985 tp!2406986))))

(assert (= (and b!8037326 ((_ is ElementMatch!21749) (regTwo!44011 (regTwo!44011 r!13107)))) b!8037647))

(assert (= (and b!8037326 ((_ is Concat!30752) (regTwo!44011 (regTwo!44011 r!13107)))) b!8037648))

(assert (= (and b!8037326 ((_ is Star!21749) (regTwo!44011 (regTwo!44011 r!13107)))) b!8037649))

(assert (= (and b!8037326 ((_ is Union!21749) (regTwo!44011 (regTwo!44011 r!13107)))) b!8037650))

(check-sat (not bm!746007) (not bm!746006) (not b!8037597) (not b!8037628) (not b!8037589) (not bm!746033) (not bm!746015) (not d!2395143) (not b!8037618) (not bm!746023) (not b!8037580) (not bm!746010) (not b!8037633) (not b!8037424) (not b!8037641) (not b!8037592) (not bm!746000) (not b!8037594) (not d!2395169) (not b!8037557) (not d!2395151) (not b!8037606) (not b!8037552) (not bm!746040) (not bm!746024) (not b!8037590) (not b!8037561) (not b!8037645) (not bm!746020) (not b!8037560) (not bm!746001) (not b!8037624) (not b!8037553) (not b!8037570) (not b!8037614) (not b!8037574) (not b!8037646) (not b!8037634) (not d!2395153) (not bm!746004) (not b!8037581) (not b!8037638) (not b!8037565) (not d!2395167) (not b!8037626) (not b!8037616) (not b!8037572) (not d!2395155) (not b!8037462) (not bm!746030) (not b!8037625) (not b!8037452) (not b!8037582) (not b!8037586) (not b!8037428) (not b!8037617) (not b!8037466) (not b!8037632) (not bm!746041) (not b!8037512) (not b!8037609) (not b!8037600) (not b!8037621) (not b!8037573) (not b!8037637) (not b!8037568) (not b!8037598) (not b!8037608) (not b!8037521) (not bm!746014) (not b!8037577) (not b!8037610) (not b!8037640) (not bm!746018) (not bm!746027) (not b!8037588) (not b!8037622) (not b!8037604) (not b!8037578) (not bm!745997) (not b!8037499) tp_is_empty!54493 (not b!8037620) (not bm!746017) (not b!8037437) (not b!8037636) (not b!8037556) (not bm!746011) (not bm!746034) (not b!8037554) (not b!8037564) (not b!8037605) (not b!8037642) (not d!2395149) (not b!8037630) (not b!8037562) (not b!8037558) (not b!8037648) (not bm!746003) (not bm!746021) (not b!8037503) (not b!8037613) (not bm!746028) (not b!8037566) (not b!8037585) (not bm!746031) (not b!8037569) (not b!8037650) (not b!8037612) (not d!2395163) (not b!8037484) (not b!8037629) (not b!8037593) (not bm!745996) (not b!8037596) (not b!8037601) (not b!8037649) (not b!8037602) (not b!8037576) (not b!8037584) (not b!8037644) (not b!8037475))
(check-sat)
