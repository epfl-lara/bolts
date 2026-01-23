; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282456 () Bool)

(assert start!282456)

(declare-fun b!2901267 () Bool)

(declare-fun e!1832211 () Bool)

(declare-fun tp!931013 () Bool)

(declare-fun tp!931010 () Bool)

(assert (=> b!2901267 (= e!1832211 (and tp!931013 tp!931010))))

(declare-fun b!2901268 () Bool)

(declare-fun tp!931014 () Bool)

(assert (=> b!2901268 (= e!1832211 tp!931014)))

(declare-fun b!2901269 () Bool)

(declare-fun e!1832210 () Bool)

(declare-datatypes ((C!17910 0))(
  ( (C!17911 (val!10989 Int)) )
))
(declare-datatypes ((Regex!8864 0))(
  ( (ElementMatch!8864 (c!472759 C!17910)) (Concat!14185 (regOne!18240 Regex!8864) (regTwo!18240 Regex!8864)) (EmptyExpr!8864) (Star!8864 (reg!9193 Regex!8864)) (EmptyLang!8864) (Union!8864 (regOne!18241 Regex!8864) (regTwo!18241 Regex!8864)) )
))
(declare-fun r!23079 () Regex!8864)

(declare-datatypes ((List!34665 0))(
  ( (Nil!34541) (Cons!34541 (h!39961 C!17910) (t!233708 List!34665)) )
))
(declare-datatypes ((Option!6537 0))(
  ( (None!6536) (Some!6536 (v!34662 List!34665)) )
))
(declare-fun lt!1022205 () Option!6537)

(declare-fun matchR!3822 (Regex!8864 List!34665) Bool)

(declare-fun get!10487 (Option!6537) List!34665)

(assert (=> b!2901269 (= e!1832210 (not (matchR!3822 r!23079 (get!10487 lt!1022205))))))

(declare-fun b!2901270 () Bool)

(declare-fun tp_is_empty!15315 () Bool)

(assert (=> b!2901270 (= e!1832211 tp_is_empty!15315)))

(declare-fun res!1198937 () Bool)

(declare-fun e!1832212 () Bool)

(assert (=> start!282456 (=> (not res!1198937) (not e!1832212))))

(declare-fun validRegex!3637 (Regex!8864) Bool)

(assert (=> start!282456 (= res!1198937 (validRegex!3637 r!23079))))

(assert (=> start!282456 e!1832212))

(assert (=> start!282456 e!1832211))

(declare-fun b!2901271 () Bool)

(declare-fun res!1198936 () Bool)

(assert (=> b!2901271 (=> (not res!1198936) (not e!1832210))))

(assert (=> b!2901271 (= res!1198936 (and (not (is-EmptyExpr!8864 r!23079)) (not (is-EmptyLang!8864 r!23079)) (not (is-ElementMatch!8864 r!23079)) (not (is-Star!8864 r!23079)) (not (is-Union!8864 r!23079))))))

(declare-fun b!2901272 () Bool)

(declare-fun res!1198939 () Bool)

(assert (=> b!2901272 (=> (not res!1198939) (not e!1832210))))

(declare-fun getLanguageWitness!571 (Regex!8864) Option!6537)

(assert (=> b!2901272 (= res!1198939 (not (is-Some!6536 (getLanguageWitness!571 (regOne!18240 r!23079)))))))

(declare-fun b!2901273 () Bool)

(declare-fun tp!931011 () Bool)

(declare-fun tp!931012 () Bool)

(assert (=> b!2901273 (= e!1832211 (and tp!931011 tp!931012))))

(declare-fun b!2901274 () Bool)

(assert (=> b!2901274 (= e!1832212 e!1832210)))

(declare-fun res!1198938 () Bool)

(assert (=> b!2901274 (=> (not res!1198938) (not e!1832210))))

(declare-fun isDefined!5101 (Option!6537) Bool)

(assert (=> b!2901274 (= res!1198938 (isDefined!5101 lt!1022205))))

(assert (=> b!2901274 (= lt!1022205 (getLanguageWitness!571 r!23079))))

(assert (= (and start!282456 res!1198937) b!2901274))

(assert (= (and b!2901274 res!1198938) b!2901271))

(assert (= (and b!2901271 res!1198936) b!2901272))

(assert (= (and b!2901272 res!1198939) b!2901269))

(assert (= (and start!282456 (is-ElementMatch!8864 r!23079)) b!2901270))

(assert (= (and start!282456 (is-Concat!14185 r!23079)) b!2901267))

(assert (= (and start!282456 (is-Star!8864 r!23079)) b!2901268))

(assert (= (and start!282456 (is-Union!8864 r!23079)) b!2901273))

(declare-fun m!3306267 () Bool)

(assert (=> b!2901269 m!3306267))

(assert (=> b!2901269 m!3306267))

(declare-fun m!3306269 () Bool)

(assert (=> b!2901269 m!3306269))

(declare-fun m!3306271 () Bool)

(assert (=> start!282456 m!3306271))

(declare-fun m!3306273 () Bool)

(assert (=> b!2901272 m!3306273))

(declare-fun m!3306275 () Bool)

(assert (=> b!2901274 m!3306275))

(declare-fun m!3306277 () Bool)

(assert (=> b!2901274 m!3306277))

(push 1)

(assert (not start!282456))

(assert (not b!2901268))

(assert (not b!2901267))

(assert tp_is_empty!15315)

(assert (not b!2901269))

(assert (not b!2901274))

(assert (not b!2901272))

(assert (not b!2901273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!835472 () Bool)

(declare-fun isEmpty!18860 (Option!6537) Bool)

(assert (=> d!835472 (= (isDefined!5101 lt!1022205) (not (isEmpty!18860 lt!1022205)))))

(declare-fun bs!524015 () Bool)

(assert (= bs!524015 d!835472))

(declare-fun m!3306291 () Bool)

(assert (=> bs!524015 m!3306291))

(assert (=> b!2901274 d!835472))

(declare-fun b!2901363 () Bool)

(declare-fun c!472796 () Bool)

(declare-fun lt!1022222 () Option!6537)

(assert (=> b!2901363 (= c!472796 (is-Some!6536 lt!1022222))))

(declare-fun call!189054 () Option!6537)

(assert (=> b!2901363 (= lt!1022222 call!189054)))

(declare-fun e!1832255 () Option!6537)

(declare-fun e!1832256 () Option!6537)

(assert (=> b!2901363 (= e!1832255 e!1832256)))

(declare-fun b!2901364 () Bool)

(declare-fun e!1832261 () Option!6537)

(declare-fun lt!1022221 () Option!6537)

(assert (=> b!2901364 (= e!1832261 lt!1022221)))

(declare-fun b!2901365 () Bool)

(declare-fun e!1832257 () Option!6537)

(assert (=> b!2901365 (= e!1832257 None!6536)))

(declare-fun b!2901366 () Bool)

(declare-fun e!1832254 () Option!6537)

(assert (=> b!2901366 (= e!1832254 (Some!6536 Nil!34541))))

(declare-fun b!2901367 () Bool)

(declare-fun call!189053 () Option!6537)

(assert (=> b!2901367 (= e!1832261 call!189053)))

(declare-fun b!2901368 () Bool)

(declare-fun e!1832260 () Option!6537)

(assert (=> b!2901368 (= e!1832260 e!1832257)))

(declare-fun c!472800 () Bool)

(assert (=> b!2901368 (= c!472800 (is-EmptyLang!8864 r!23079))))

(declare-fun b!2901369 () Bool)

(declare-fun c!472799 () Bool)

(assert (=> b!2901369 (= c!472799 (is-Union!8864 r!23079))))

(declare-fun e!1832259 () Option!6537)

(assert (=> b!2901369 (= e!1832254 e!1832259)))

(declare-fun b!2901370 () Bool)

(declare-fun lt!1022223 () Option!6537)

(declare-fun ++!8262 (List!34665 List!34665) List!34665)

(assert (=> b!2901370 (= e!1832256 (Some!6536 (++!8262 (v!34662 lt!1022223) (v!34662 lt!1022222))))))

(declare-fun d!835474 () Bool)

(declare-fun c!472797 () Bool)

(assert (=> d!835474 (= c!472797 (is-EmptyExpr!8864 r!23079))))

(assert (=> d!835474 (= (getLanguageWitness!571 r!23079) e!1832260)))

(declare-fun bm!189048 () Bool)

(assert (=> bm!189048 (= call!189053 (getLanguageWitness!571 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(declare-fun b!2901371 () Bool)

(assert (=> b!2901371 (= e!1832256 None!6536)))

(declare-fun bm!189049 () Bool)

(assert (=> bm!189049 (= call!189054 (getLanguageWitness!571 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun b!2901372 () Bool)

(declare-fun e!1832258 () Option!6537)

(assert (=> b!2901372 (= e!1832258 (Some!6536 (Cons!34541 (c!472759 r!23079) Nil!34541)))))

(declare-fun b!2901373 () Bool)

(assert (=> b!2901373 (= e!1832259 e!1832255)))

(assert (=> b!2901373 (= lt!1022223 call!189053)))

(declare-fun c!472795 () Bool)

(assert (=> b!2901373 (= c!472795 (is-Some!6536 lt!1022223))))

(declare-fun b!2901374 () Bool)

(declare-fun c!472793 () Bool)

(assert (=> b!2901374 (= c!472793 (is-ElementMatch!8864 r!23079))))

(assert (=> b!2901374 (= e!1832257 e!1832258)))

(declare-fun b!2901375 () Bool)

(assert (=> b!2901375 (= e!1832260 (Some!6536 Nil!34541))))

(declare-fun b!2901376 () Bool)

(assert (=> b!2901376 (= e!1832255 None!6536)))

(declare-fun b!2901377 () Bool)

(assert (=> b!2901377 (= e!1832259 e!1832261)))

(assert (=> b!2901377 (= lt!1022221 call!189054)))

(declare-fun c!472798 () Bool)

(assert (=> b!2901377 (= c!472798 (is-Some!6536 lt!1022221))))

(declare-fun b!2901378 () Bool)

(assert (=> b!2901378 (= e!1832258 e!1832254)))

(declare-fun c!472794 () Bool)

(assert (=> b!2901378 (= c!472794 (is-Star!8864 r!23079))))

(assert (= (and d!835474 c!472797) b!2901375))

(assert (= (and d!835474 (not c!472797)) b!2901368))

(assert (= (and b!2901368 c!472800) b!2901365))

(assert (= (and b!2901368 (not c!472800)) b!2901374))

(assert (= (and b!2901374 c!472793) b!2901372))

(assert (= (and b!2901374 (not c!472793)) b!2901378))

(assert (= (and b!2901378 c!472794) b!2901366))

(assert (= (and b!2901378 (not c!472794)) b!2901369))

(assert (= (and b!2901369 c!472799) b!2901377))

(assert (= (and b!2901369 (not c!472799)) b!2901373))

(assert (= (and b!2901377 c!472798) b!2901364))

(assert (= (and b!2901377 (not c!472798)) b!2901367))

(assert (= (and b!2901373 c!472795) b!2901363))

(assert (= (and b!2901373 (not c!472795)) b!2901376))

(assert (= (and b!2901363 c!472796) b!2901370))

(assert (= (and b!2901363 (not c!472796)) b!2901371))

(assert (= (or b!2901367 b!2901373) bm!189048))

(assert (= (or b!2901377 b!2901363) bm!189049))

(declare-fun m!3306295 () Bool)

(assert (=> b!2901370 m!3306295))

(declare-fun m!3306297 () Bool)

(assert (=> bm!189048 m!3306297))

(declare-fun m!3306299 () Bool)

(assert (=> bm!189049 m!3306299))

(assert (=> b!2901274 d!835474))

(declare-fun bm!189058 () Bool)

(declare-fun call!189065 () Bool)

(declare-fun c!472813 () Bool)

(assert (=> bm!189058 (= call!189065 (validRegex!3637 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun b!2901413 () Bool)

(declare-fun res!1198963 () Bool)

(declare-fun e!1832285 () Bool)

(assert (=> b!2901413 (=> res!1198963 e!1832285)))

(assert (=> b!2901413 (= res!1198963 (not (is-Concat!14185 r!23079)))))

(declare-fun e!1832289 () Bool)

(assert (=> b!2901413 (= e!1832289 e!1832285)))

(declare-fun b!2901414 () Bool)

(declare-fun e!1832287 () Bool)

(assert (=> b!2901414 (= e!1832287 e!1832289)))

(assert (=> b!2901414 (= c!472813 (is-Union!8864 r!23079))))

(declare-fun b!2901415 () Bool)

(declare-fun e!1832288 () Bool)

(assert (=> b!2901415 (= e!1832288 e!1832287)))

(declare-fun c!472814 () Bool)

(assert (=> b!2901415 (= c!472814 (is-Star!8864 r!23079))))

(declare-fun bm!189059 () Bool)

(declare-fun call!189063 () Bool)

(assert (=> bm!189059 (= call!189063 (validRegex!3637 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))

(declare-fun d!835480 () Bool)

(declare-fun res!1198962 () Bool)

(assert (=> d!835480 (=> res!1198962 e!1832288)))

(assert (=> d!835480 (= res!1198962 (is-ElementMatch!8864 r!23079))))

(assert (=> d!835480 (= (validRegex!3637 r!23079) e!1832288)))

(declare-fun b!2901416 () Bool)

(declare-fun res!1198966 () Bool)

(declare-fun e!1832286 () Bool)

(assert (=> b!2901416 (=> (not res!1198966) (not e!1832286))))

(declare-fun call!189064 () Bool)

(assert (=> b!2901416 (= res!1198966 call!189064)))

(assert (=> b!2901416 (= e!1832289 e!1832286)))

(declare-fun b!2901417 () Bool)

(declare-fun e!1832290 () Bool)

(assert (=> b!2901417 (= e!1832290 call!189065)))

(declare-fun b!2901418 () Bool)

(declare-fun e!1832284 () Bool)

(assert (=> b!2901418 (= e!1832284 call!189063)))

(declare-fun b!2901419 () Bool)

(assert (=> b!2901419 (= e!1832287 e!1832284)))

(declare-fun res!1198965 () Bool)

(declare-fun nullable!2764 (Regex!8864) Bool)

(assert (=> b!2901419 (= res!1198965 (not (nullable!2764 (reg!9193 r!23079))))))

(assert (=> b!2901419 (=> (not res!1198965) (not e!1832284))))

(declare-fun b!2901420 () Bool)

(assert (=> b!2901420 (= e!1832286 call!189065)))

(declare-fun b!2901421 () Bool)

(assert (=> b!2901421 (= e!1832285 e!1832290)))

(declare-fun res!1198964 () Bool)

(assert (=> b!2901421 (=> (not res!1198964) (not e!1832290))))

(assert (=> b!2901421 (= res!1198964 call!189064)))

(declare-fun bm!189060 () Bool)

(assert (=> bm!189060 (= call!189064 call!189063)))

(assert (= (and d!835480 (not res!1198962)) b!2901415))

(assert (= (and b!2901415 c!472814) b!2901419))

(assert (= (and b!2901415 (not c!472814)) b!2901414))

(assert (= (and b!2901419 res!1198965) b!2901418))

(assert (= (and b!2901414 c!472813) b!2901416))

(assert (= (and b!2901414 (not c!472813)) b!2901413))

(assert (= (and b!2901416 res!1198966) b!2901420))

(assert (= (and b!2901413 (not res!1198963)) b!2901421))

(assert (= (and b!2901421 res!1198964) b!2901417))

(assert (= (or b!2901420 b!2901417) bm!189058))

(assert (= (or b!2901416 b!2901421) bm!189060))

(assert (= (or b!2901418 bm!189060) bm!189059))

(declare-fun m!3306307 () Bool)

(assert (=> bm!189058 m!3306307))

(declare-fun m!3306309 () Bool)

(assert (=> bm!189059 m!3306309))

(declare-fun m!3306311 () Bool)

(assert (=> b!2901419 m!3306311))

(assert (=> start!282456 d!835480))

(declare-fun b!2901493 () Bool)

(declare-fun e!1832337 () Bool)

(declare-fun lt!1022232 () Bool)

(assert (=> b!2901493 (= e!1832337 (not lt!1022232))))

(declare-fun d!835484 () Bool)

(declare-fun e!1832339 () Bool)

(assert (=> d!835484 e!1832339))

(declare-fun c!472836 () Bool)

(assert (=> d!835484 (= c!472836 (is-EmptyExpr!8864 r!23079))))

(declare-fun e!1832338 () Bool)

(assert (=> d!835484 (= lt!1022232 e!1832338)))

(declare-fun c!472835 () Bool)

(declare-fun isEmpty!18862 (List!34665) Bool)

(assert (=> d!835484 (= c!472835 (isEmpty!18862 (get!10487 lt!1022205)))))

(assert (=> d!835484 (validRegex!3637 r!23079)))

(assert (=> d!835484 (= (matchR!3822 r!23079 (get!10487 lt!1022205)) lt!1022232)))

(declare-fun b!2901494 () Bool)

(assert (=> b!2901494 (= e!1832339 e!1832337)))

(declare-fun c!472837 () Bool)

(assert (=> b!2901494 (= c!472837 (is-EmptyLang!8864 r!23079))))

(declare-fun b!2901495 () Bool)

(declare-fun res!1199005 () Bool)

(declare-fun e!1832335 () Bool)

(assert (=> b!2901495 (=> res!1199005 e!1832335)))

(declare-fun tail!4631 (List!34665) List!34665)

(assert (=> b!2901495 (= res!1199005 (not (isEmpty!18862 (tail!4631 (get!10487 lt!1022205)))))))

(declare-fun b!2901496 () Bool)

(declare-fun derivativeStep!2377 (Regex!8864 C!17910) Regex!8864)

(declare-fun head!6406 (List!34665) C!17910)

(assert (=> b!2901496 (= e!1832338 (matchR!3822 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))) (tail!4631 (get!10487 lt!1022205))))))

(declare-fun b!2901497 () Bool)

(declare-fun res!1199003 () Bool)

(declare-fun e!1832336 () Bool)

(assert (=> b!2901497 (=> (not res!1199003) (not e!1832336))))

(declare-fun call!189079 () Bool)

(assert (=> b!2901497 (= res!1199003 (not call!189079))))

(declare-fun b!2901498 () Bool)

(declare-fun res!1199002 () Bool)

(declare-fun e!1832340 () Bool)

(assert (=> b!2901498 (=> res!1199002 e!1832340)))

(assert (=> b!2901498 (= res!1199002 e!1832336)))

(declare-fun res!1198998 () Bool)

(assert (=> b!2901498 (=> (not res!1198998) (not e!1832336))))

(assert (=> b!2901498 (= res!1198998 lt!1022232)))

(declare-fun b!2901499 () Bool)

(assert (=> b!2901499 (= e!1832338 (nullable!2764 r!23079))))

(declare-fun b!2901500 () Bool)

(declare-fun e!1832334 () Bool)

(assert (=> b!2901500 (= e!1832340 e!1832334)))

(declare-fun res!1198999 () Bool)

(assert (=> b!2901500 (=> (not res!1198999) (not e!1832334))))

(assert (=> b!2901500 (= res!1198999 (not lt!1022232))))

(declare-fun b!2901501 () Bool)

(declare-fun res!1199004 () Bool)

(assert (=> b!2901501 (=> (not res!1199004) (not e!1832336))))

(assert (=> b!2901501 (= res!1199004 (isEmpty!18862 (tail!4631 (get!10487 lt!1022205))))))

(declare-fun b!2901502 () Bool)

(assert (=> b!2901502 (= e!1832339 (= lt!1022232 call!189079))))

(declare-fun b!2901503 () Bool)

(assert (=> b!2901503 (= e!1832335 (not (= (head!6406 (get!10487 lt!1022205)) (c!472759 r!23079))))))

(declare-fun b!2901504 () Bool)

(declare-fun res!1199001 () Bool)

(assert (=> b!2901504 (=> res!1199001 e!1832340)))

(assert (=> b!2901504 (= res!1199001 (not (is-ElementMatch!8864 r!23079)))))

(assert (=> b!2901504 (= e!1832337 e!1832340)))

(declare-fun b!2901505 () Bool)

(assert (=> b!2901505 (= e!1832336 (= (head!6406 (get!10487 lt!1022205)) (c!472759 r!23079)))))

(declare-fun b!2901506 () Bool)

(assert (=> b!2901506 (= e!1832334 e!1832335)))

(declare-fun res!1199000 () Bool)

(assert (=> b!2901506 (=> res!1199000 e!1832335)))

(assert (=> b!2901506 (= res!1199000 call!189079)))

(declare-fun bm!189074 () Bool)

(assert (=> bm!189074 (= call!189079 (isEmpty!18862 (get!10487 lt!1022205)))))

(assert (= (and d!835484 c!472835) b!2901499))

(assert (= (and d!835484 (not c!472835)) b!2901496))

(assert (= (and d!835484 c!472836) b!2901502))

(assert (= (and d!835484 (not c!472836)) b!2901494))

(assert (= (and b!2901494 c!472837) b!2901493))

(assert (= (and b!2901494 (not c!472837)) b!2901504))

(assert (= (and b!2901504 (not res!1199001)) b!2901498))

(assert (= (and b!2901498 res!1198998) b!2901497))

(assert (= (and b!2901497 res!1199003) b!2901501))

(assert (= (and b!2901501 res!1199004) b!2901505))

(assert (= (and b!2901498 (not res!1199002)) b!2901500))

(assert (= (and b!2901500 res!1198999) b!2901506))

(assert (= (and b!2901506 (not res!1199000)) b!2901495))

(assert (= (and b!2901495 (not res!1199005)) b!2901503))

(assert (= (or b!2901502 b!2901506 b!2901497) bm!189074))

(assert (=> b!2901496 m!3306267))

(declare-fun m!3306325 () Bool)

(assert (=> b!2901496 m!3306325))

(assert (=> b!2901496 m!3306325))

(declare-fun m!3306327 () Bool)

(assert (=> b!2901496 m!3306327))

(assert (=> b!2901496 m!3306267))

(declare-fun m!3306329 () Bool)

(assert (=> b!2901496 m!3306329))

(assert (=> b!2901496 m!3306327))

(assert (=> b!2901496 m!3306329))

(declare-fun m!3306331 () Bool)

(assert (=> b!2901496 m!3306331))

(assert (=> b!2901505 m!3306267))

(assert (=> b!2901505 m!3306325))

(assert (=> b!2901501 m!3306267))

(assert (=> b!2901501 m!3306329))

(assert (=> b!2901501 m!3306329))

(declare-fun m!3306333 () Bool)

(assert (=> b!2901501 m!3306333))

(declare-fun m!3306335 () Bool)

(assert (=> b!2901499 m!3306335))

(assert (=> d!835484 m!3306267))

(declare-fun m!3306337 () Bool)

(assert (=> d!835484 m!3306337))

(assert (=> d!835484 m!3306271))

(assert (=> bm!189074 m!3306267))

(assert (=> bm!189074 m!3306337))

(assert (=> b!2901503 m!3306267))

(assert (=> b!2901503 m!3306325))

(assert (=> b!2901495 m!3306267))

(assert (=> b!2901495 m!3306329))

(assert (=> b!2901495 m!3306329))

(assert (=> b!2901495 m!3306333))

(assert (=> b!2901269 d!835484))

(declare-fun d!835490 () Bool)

(assert (=> d!835490 (= (get!10487 lt!1022205) (v!34662 lt!1022205))))

(assert (=> b!2901269 d!835490))

(declare-fun b!2901507 () Bool)

(declare-fun c!472841 () Bool)

(declare-fun lt!1022234 () Option!6537)

(assert (=> b!2901507 (= c!472841 (is-Some!6536 lt!1022234))))

(declare-fun call!189081 () Option!6537)

(assert (=> b!2901507 (= lt!1022234 call!189081)))

(declare-fun e!1832342 () Option!6537)

(declare-fun e!1832343 () Option!6537)

(assert (=> b!2901507 (= e!1832342 e!1832343)))

(declare-fun b!2901508 () Bool)

(declare-fun e!1832348 () Option!6537)

(declare-fun lt!1022233 () Option!6537)

(assert (=> b!2901508 (= e!1832348 lt!1022233)))

(declare-fun b!2901509 () Bool)

(declare-fun e!1832344 () Option!6537)

(assert (=> b!2901509 (= e!1832344 None!6536)))

(declare-fun b!2901510 () Bool)

(declare-fun e!1832341 () Option!6537)

(assert (=> b!2901510 (= e!1832341 (Some!6536 Nil!34541))))

(declare-fun b!2901511 () Bool)

(declare-fun call!189080 () Option!6537)

(assert (=> b!2901511 (= e!1832348 call!189080)))

(declare-fun b!2901512 () Bool)

(declare-fun e!1832347 () Option!6537)

(assert (=> b!2901512 (= e!1832347 e!1832344)))

(declare-fun c!472845 () Bool)

(assert (=> b!2901512 (= c!472845 (is-EmptyLang!8864 (regOne!18240 r!23079)))))

(declare-fun b!2901513 () Bool)

(declare-fun c!472844 () Bool)

(assert (=> b!2901513 (= c!472844 (is-Union!8864 (regOne!18240 r!23079)))))

(declare-fun e!1832346 () Option!6537)

(assert (=> b!2901513 (= e!1832341 e!1832346)))

(declare-fun b!2901514 () Bool)

(declare-fun lt!1022235 () Option!6537)

(assert (=> b!2901514 (= e!1832343 (Some!6536 (++!8262 (v!34662 lt!1022235) (v!34662 lt!1022234))))))

(declare-fun d!835492 () Bool)

(declare-fun c!472842 () Bool)

(assert (=> d!835492 (= c!472842 (is-EmptyExpr!8864 (regOne!18240 r!23079)))))

(assert (=> d!835492 (= (getLanguageWitness!571 (regOne!18240 r!23079)) e!1832347)))

(declare-fun bm!189075 () Bool)

(assert (=> bm!189075 (= call!189080 (getLanguageWitness!571 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(declare-fun b!2901515 () Bool)

(assert (=> b!2901515 (= e!1832343 None!6536)))

(declare-fun bm!189076 () Bool)

(assert (=> bm!189076 (= call!189081 (getLanguageWitness!571 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(declare-fun b!2901516 () Bool)

(declare-fun e!1832345 () Option!6537)

(assert (=> b!2901516 (= e!1832345 (Some!6536 (Cons!34541 (c!472759 (regOne!18240 r!23079)) Nil!34541)))))

(declare-fun b!2901517 () Bool)

(assert (=> b!2901517 (= e!1832346 e!1832342)))

(assert (=> b!2901517 (= lt!1022235 call!189080)))

(declare-fun c!472840 () Bool)

(assert (=> b!2901517 (= c!472840 (is-Some!6536 lt!1022235))))

(declare-fun b!2901518 () Bool)

(declare-fun c!472838 () Bool)

(assert (=> b!2901518 (= c!472838 (is-ElementMatch!8864 (regOne!18240 r!23079)))))

(assert (=> b!2901518 (= e!1832344 e!1832345)))

(declare-fun b!2901519 () Bool)

(assert (=> b!2901519 (= e!1832347 (Some!6536 Nil!34541))))

(declare-fun b!2901520 () Bool)

(assert (=> b!2901520 (= e!1832342 None!6536)))

(declare-fun b!2901521 () Bool)

(assert (=> b!2901521 (= e!1832346 e!1832348)))

(assert (=> b!2901521 (= lt!1022233 call!189081)))

(declare-fun c!472843 () Bool)

(assert (=> b!2901521 (= c!472843 (is-Some!6536 lt!1022233))))

(declare-fun b!2901522 () Bool)

(assert (=> b!2901522 (= e!1832345 e!1832341)))

(declare-fun c!472839 () Bool)

(assert (=> b!2901522 (= c!472839 (is-Star!8864 (regOne!18240 r!23079)))))

(assert (= (and d!835492 c!472842) b!2901519))

(assert (= (and d!835492 (not c!472842)) b!2901512))

(assert (= (and b!2901512 c!472845) b!2901509))

(assert (= (and b!2901512 (not c!472845)) b!2901518))

(assert (= (and b!2901518 c!472838) b!2901516))

(assert (= (and b!2901518 (not c!472838)) b!2901522))

(assert (= (and b!2901522 c!472839) b!2901510))

(assert (= (and b!2901522 (not c!472839)) b!2901513))

(assert (= (and b!2901513 c!472844) b!2901521))

(assert (= (and b!2901513 (not c!472844)) b!2901517))

(assert (= (and b!2901521 c!472843) b!2901508))

(assert (= (and b!2901521 (not c!472843)) b!2901511))

(assert (= (and b!2901517 c!472840) b!2901507))

(assert (= (and b!2901517 (not c!472840)) b!2901520))

(assert (= (and b!2901507 c!472841) b!2901514))

(assert (= (and b!2901507 (not c!472841)) b!2901515))

(assert (= (or b!2901511 b!2901517) bm!189075))

(assert (= (or b!2901521 b!2901507) bm!189076))

(declare-fun m!3306339 () Bool)

(assert (=> b!2901514 m!3306339))

(declare-fun m!3306341 () Bool)

(assert (=> bm!189075 m!3306341))

(declare-fun m!3306343 () Bool)

(assert (=> bm!189076 m!3306343))

(assert (=> b!2901272 d!835492))

(declare-fun b!2901540 () Bool)

(declare-fun e!1832353 () Bool)

(declare-fun tp!931040 () Bool)

(declare-fun tp!931043 () Bool)

(assert (=> b!2901540 (= e!1832353 (and tp!931040 tp!931043))))

(declare-fun b!2901542 () Bool)

(declare-fun tp!931044 () Bool)

(declare-fun tp!931042 () Bool)

(assert (=> b!2901542 (= e!1832353 (and tp!931044 tp!931042))))

(assert (=> b!2901268 (= tp!931014 e!1832353)))

(declare-fun b!2901539 () Bool)

(assert (=> b!2901539 (= e!1832353 tp_is_empty!15315)))

(declare-fun b!2901541 () Bool)

(declare-fun tp!931041 () Bool)

(assert (=> b!2901541 (= e!1832353 tp!931041)))

(assert (= (and b!2901268 (is-ElementMatch!8864 (reg!9193 r!23079))) b!2901539))

(assert (= (and b!2901268 (is-Concat!14185 (reg!9193 r!23079))) b!2901540))

(assert (= (and b!2901268 (is-Star!8864 (reg!9193 r!23079))) b!2901541))

(assert (= (and b!2901268 (is-Union!8864 (reg!9193 r!23079))) b!2901542))

(declare-fun b!2901550 () Bool)

(declare-fun e!1832360 () Bool)

(declare-fun tp!931045 () Bool)

(declare-fun tp!931048 () Bool)

(assert (=> b!2901550 (= e!1832360 (and tp!931045 tp!931048))))

(declare-fun b!2901554 () Bool)

(declare-fun tp!931049 () Bool)

(declare-fun tp!931047 () Bool)

(assert (=> b!2901554 (= e!1832360 (and tp!931049 tp!931047))))

(assert (=> b!2901273 (= tp!931011 e!1832360)))

(declare-fun b!2901549 () Bool)

(assert (=> b!2901549 (= e!1832360 tp_is_empty!15315)))

(declare-fun b!2901552 () Bool)

(declare-fun tp!931046 () Bool)

(assert (=> b!2901552 (= e!1832360 tp!931046)))

(assert (= (and b!2901273 (is-ElementMatch!8864 (regOne!18241 r!23079))) b!2901549))

(assert (= (and b!2901273 (is-Concat!14185 (regOne!18241 r!23079))) b!2901550))

(assert (= (and b!2901273 (is-Star!8864 (regOne!18241 r!23079))) b!2901552))

(assert (= (and b!2901273 (is-Union!8864 (regOne!18241 r!23079))) b!2901554))

(declare-fun b!2901564 () Bool)

(declare-fun e!1832363 () Bool)

(declare-fun tp!931050 () Bool)

(declare-fun tp!931053 () Bool)

(assert (=> b!2901564 (= e!1832363 (and tp!931050 tp!931053))))

(declare-fun b!2901566 () Bool)

(declare-fun tp!931054 () Bool)

(declare-fun tp!931052 () Bool)

(assert (=> b!2901566 (= e!1832363 (and tp!931054 tp!931052))))

(assert (=> b!2901273 (= tp!931012 e!1832363)))

(declare-fun b!2901563 () Bool)

(assert (=> b!2901563 (= e!1832363 tp_is_empty!15315)))

(declare-fun b!2901565 () Bool)

(declare-fun tp!931051 () Bool)

(assert (=> b!2901565 (= e!1832363 tp!931051)))

(assert (= (and b!2901273 (is-ElementMatch!8864 (regTwo!18241 r!23079))) b!2901563))

(assert (= (and b!2901273 (is-Concat!14185 (regTwo!18241 r!23079))) b!2901564))

(assert (= (and b!2901273 (is-Star!8864 (regTwo!18241 r!23079))) b!2901565))

(assert (= (and b!2901273 (is-Union!8864 (regTwo!18241 r!23079))) b!2901566))

(declare-fun b!2901574 () Bool)

(declare-fun e!1832368 () Bool)

(declare-fun tp!931055 () Bool)

(declare-fun tp!931058 () Bool)

(assert (=> b!2901574 (= e!1832368 (and tp!931055 tp!931058))))

(declare-fun b!2901576 () Bool)

(declare-fun tp!931059 () Bool)

(declare-fun tp!931057 () Bool)

(assert (=> b!2901576 (= e!1832368 (and tp!931059 tp!931057))))

(assert (=> b!2901267 (= tp!931013 e!1832368)))

(declare-fun b!2901573 () Bool)

(assert (=> b!2901573 (= e!1832368 tp_is_empty!15315)))

(declare-fun b!2901575 () Bool)

(declare-fun tp!931056 () Bool)

(assert (=> b!2901575 (= e!1832368 tp!931056)))

(assert (= (and b!2901267 (is-ElementMatch!8864 (regOne!18240 r!23079))) b!2901573))

(assert (= (and b!2901267 (is-Concat!14185 (regOne!18240 r!23079))) b!2901574))

(assert (= (and b!2901267 (is-Star!8864 (regOne!18240 r!23079))) b!2901575))

(assert (= (and b!2901267 (is-Union!8864 (regOne!18240 r!23079))) b!2901576))

(declare-fun b!2901578 () Bool)

(declare-fun e!1832369 () Bool)

(declare-fun tp!931060 () Bool)

(declare-fun tp!931063 () Bool)

(assert (=> b!2901578 (= e!1832369 (and tp!931060 tp!931063))))

(declare-fun b!2901580 () Bool)

(declare-fun tp!931064 () Bool)

(declare-fun tp!931062 () Bool)

(assert (=> b!2901580 (= e!1832369 (and tp!931064 tp!931062))))

(assert (=> b!2901267 (= tp!931010 e!1832369)))

(declare-fun b!2901577 () Bool)

(assert (=> b!2901577 (= e!1832369 tp_is_empty!15315)))

(declare-fun b!2901579 () Bool)

(declare-fun tp!931061 () Bool)

(assert (=> b!2901579 (= e!1832369 tp!931061)))

(assert (= (and b!2901267 (is-ElementMatch!8864 (regTwo!18240 r!23079))) b!2901577))

(assert (= (and b!2901267 (is-Concat!14185 (regTwo!18240 r!23079))) b!2901578))

(assert (= (and b!2901267 (is-Star!8864 (regTwo!18240 r!23079))) b!2901579))

(assert (= (and b!2901267 (is-Union!8864 (regTwo!18240 r!23079))) b!2901580))

(push 1)

(assert (not b!2901419))

(assert (not b!2901540))

(assert (not b!2901575))

(assert (not b!2901370))

(assert (not b!2901576))

(assert (not b!2901542))

(assert (not b!2901564))

(assert (not b!2901580))

(assert (not b!2901514))

(assert (not bm!189059))

(assert (not b!2901565))

(assert (not b!2901499))

(assert (not b!2901552))

(assert (not b!2901554))

(assert (not b!2901579))

(assert (not b!2901495))

(assert (not bm!189074))

(assert (not d!835484))

(assert (not bm!189076))

(assert (not bm!189049))

(assert (not b!2901505))

(assert tp_is_empty!15315)

(assert (not b!2901541))

(assert (not bm!189075))

(assert (not d!835472))

(assert (not b!2901578))

(assert (not b!2901566))

(assert (not bm!189048))

(assert (not b!2901574))

(assert (not bm!189058))

(assert (not b!2901496))

(assert (not b!2901550))

(assert (not b!2901503))

(assert (not b!2901501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!835496 () Bool)

(assert (=> d!835496 (= (isEmpty!18862 (tail!4631 (get!10487 lt!1022205))) (is-Nil!34541 (tail!4631 (get!10487 lt!1022205))))))

(assert (=> b!2901501 d!835496))

(declare-fun d!835498 () Bool)

(assert (=> d!835498 (= (tail!4631 (get!10487 lt!1022205)) (t!233708 (get!10487 lt!1022205)))))

(assert (=> b!2901501 d!835498))

(declare-fun call!189087 () Bool)

(declare-fun c!472855 () Bool)

(declare-fun bm!189080 () Bool)

(assert (=> bm!189080 (= call!189087 (validRegex!3637 (ite c!472855 (regTwo!18241 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))) (regTwo!18240 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))))

(declare-fun b!2901625 () Bool)

(declare-fun res!1199031 () Bool)

(declare-fun e!1832385 () Bool)

(assert (=> b!2901625 (=> res!1199031 e!1832385)))

(assert (=> b!2901625 (= res!1199031 (not (is-Concat!14185 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079)))))))

(declare-fun e!1832389 () Bool)

(assert (=> b!2901625 (= e!1832389 e!1832385)))

(declare-fun b!2901626 () Bool)

(declare-fun e!1832387 () Bool)

(assert (=> b!2901626 (= e!1832387 e!1832389)))

(assert (=> b!2901626 (= c!472855 (is-Union!8864 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun b!2901627 () Bool)

(declare-fun e!1832388 () Bool)

(assert (=> b!2901627 (= e!1832388 e!1832387)))

(declare-fun c!472856 () Bool)

(assert (=> b!2901627 (= c!472856 (is-Star!8864 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun bm!189081 () Bool)

(declare-fun call!189085 () Bool)

(assert (=> bm!189081 (= call!189085 (validRegex!3637 (ite c!472856 (reg!9193 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))) (ite c!472855 (regOne!18241 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))) (regOne!18240 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079)))))))))

(declare-fun d!835500 () Bool)

(declare-fun res!1199030 () Bool)

(assert (=> d!835500 (=> res!1199030 e!1832388)))

(assert (=> d!835500 (= res!1199030 (is-ElementMatch!8864 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))

(assert (=> d!835500 (= (validRegex!3637 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))) e!1832388)))

(declare-fun b!2901628 () Bool)

(declare-fun res!1199034 () Bool)

(declare-fun e!1832386 () Bool)

(assert (=> b!2901628 (=> (not res!1199034) (not e!1832386))))

(declare-fun call!189086 () Bool)

(assert (=> b!2901628 (= res!1199034 call!189086)))

(assert (=> b!2901628 (= e!1832389 e!1832386)))

(declare-fun b!2901629 () Bool)

(declare-fun e!1832390 () Bool)

(assert (=> b!2901629 (= e!1832390 call!189087)))

(declare-fun b!2901630 () Bool)

(declare-fun e!1832384 () Bool)

(assert (=> b!2901630 (= e!1832384 call!189085)))

(declare-fun b!2901631 () Bool)

(assert (=> b!2901631 (= e!1832387 e!1832384)))

(declare-fun res!1199033 () Bool)

(assert (=> b!2901631 (= res!1199033 (not (nullable!2764 (reg!9193 (ite c!472813 (regTwo!18241 r!23079) (regTwo!18240 r!23079))))))))

(assert (=> b!2901631 (=> (not res!1199033) (not e!1832384))))

(declare-fun b!2901632 () Bool)

(assert (=> b!2901632 (= e!1832386 call!189087)))

(declare-fun b!2901633 () Bool)

(assert (=> b!2901633 (= e!1832385 e!1832390)))

(declare-fun res!1199032 () Bool)

(assert (=> b!2901633 (=> (not res!1199032) (not e!1832390))))

(assert (=> b!2901633 (= res!1199032 call!189086)))

(declare-fun bm!189082 () Bool)

(assert (=> bm!189082 (= call!189086 call!189085)))

(assert (= (and d!835500 (not res!1199030)) b!2901627))

(assert (= (and b!2901627 c!472856) b!2901631))

(assert (= (and b!2901627 (not c!472856)) b!2901626))

(assert (= (and b!2901631 res!1199033) b!2901630))

(assert (= (and b!2901626 c!472855) b!2901628))

(assert (= (and b!2901626 (not c!472855)) b!2901625))

(assert (= (and b!2901628 res!1199034) b!2901632))

(assert (= (and b!2901625 (not res!1199031)) b!2901633))

(assert (= (and b!2901633 res!1199032) b!2901629))

(assert (= (or b!2901632 b!2901629) bm!189080))

(assert (= (or b!2901628 b!2901633) bm!189082))

(assert (= (or b!2901630 bm!189082) bm!189081))

(declare-fun m!3306359 () Bool)

(assert (=> bm!189080 m!3306359))

(declare-fun m!3306361 () Bool)

(assert (=> bm!189081 m!3306361))

(declare-fun m!3306363 () Bool)

(assert (=> b!2901631 m!3306363))

(assert (=> bm!189058 d!835500))

(declare-fun d!835502 () Bool)

(assert (=> d!835502 (= (isEmpty!18862 (get!10487 lt!1022205)) (is-Nil!34541 (get!10487 lt!1022205)))))

(assert (=> d!835484 d!835502))

(assert (=> d!835484 d!835480))

(declare-fun b!2901634 () Bool)

(declare-fun c!472860 () Bool)

(declare-fun lt!1022240 () Option!6537)

(assert (=> b!2901634 (= c!472860 (is-Some!6536 lt!1022240))))

(declare-fun call!189089 () Option!6537)

(assert (=> b!2901634 (= lt!1022240 call!189089)))

(declare-fun e!1832392 () Option!6537)

(declare-fun e!1832393 () Option!6537)

(assert (=> b!2901634 (= e!1832392 e!1832393)))

(declare-fun b!2901635 () Bool)

(declare-fun e!1832398 () Option!6537)

(declare-fun lt!1022239 () Option!6537)

(assert (=> b!2901635 (= e!1832398 lt!1022239)))

(declare-fun b!2901636 () Bool)

(declare-fun e!1832394 () Option!6537)

(assert (=> b!2901636 (= e!1832394 None!6536)))

(declare-fun b!2901637 () Bool)

(declare-fun e!1832391 () Option!6537)

(assert (=> b!2901637 (= e!1832391 (Some!6536 Nil!34541))))

(declare-fun b!2901638 () Bool)

(declare-fun call!189088 () Option!6537)

(assert (=> b!2901638 (= e!1832398 call!189088)))

(declare-fun b!2901639 () Bool)

(declare-fun e!1832397 () Option!6537)

(assert (=> b!2901639 (= e!1832397 e!1832394)))

(declare-fun c!472864 () Bool)

(assert (=> b!2901639 (= c!472864 (is-EmptyLang!8864 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun b!2901640 () Bool)

(declare-fun c!472863 () Bool)

(assert (=> b!2901640 (= c!472863 (is-Union!8864 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(declare-fun e!1832396 () Option!6537)

(assert (=> b!2901640 (= e!1832391 e!1832396)))

(declare-fun b!2901641 () Bool)

(declare-fun lt!1022241 () Option!6537)

(assert (=> b!2901641 (= e!1832393 (Some!6536 (++!8262 (v!34662 lt!1022241) (v!34662 lt!1022240))))))

(declare-fun d!835504 () Bool)

(declare-fun c!472861 () Bool)

(assert (=> d!835504 (= c!472861 (is-EmptyExpr!8864 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(assert (=> d!835504 (= (getLanguageWitness!571 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))) e!1832397)))

(declare-fun bm!189083 () Bool)

(assert (=> bm!189083 (= call!189088 (getLanguageWitness!571 (ite c!472863 (regTwo!18241 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))) (regOne!18240 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))))

(declare-fun b!2901642 () Bool)

(assert (=> b!2901642 (= e!1832393 None!6536)))

(declare-fun bm!189084 () Bool)

(assert (=> bm!189084 (= call!189089 (getLanguageWitness!571 (ite c!472863 (regOne!18241 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))) (regTwo!18240 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))))

(declare-fun b!2901643 () Bool)

(declare-fun e!1832395 () Option!6537)

(assert (=> b!2901643 (= e!1832395 (Some!6536 (Cons!34541 (c!472759 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))) Nil!34541)))))

(declare-fun b!2901644 () Bool)

(assert (=> b!2901644 (= e!1832396 e!1832392)))

(assert (=> b!2901644 (= lt!1022241 call!189088)))

(declare-fun c!472859 () Bool)

(assert (=> b!2901644 (= c!472859 (is-Some!6536 lt!1022241))))

(declare-fun b!2901645 () Bool)

(declare-fun c!472857 () Bool)

(assert (=> b!2901645 (= c!472857 (is-ElementMatch!8864 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(assert (=> b!2901645 (= e!1832394 e!1832395)))

(declare-fun b!2901646 () Bool)

(assert (=> b!2901646 (= e!1832397 (Some!6536 Nil!34541))))

(declare-fun b!2901647 () Bool)

(assert (=> b!2901647 (= e!1832392 None!6536)))

(declare-fun b!2901648 () Bool)

(assert (=> b!2901648 (= e!1832396 e!1832398)))

(assert (=> b!2901648 (= lt!1022239 call!189089)))

(declare-fun c!472862 () Bool)

(assert (=> b!2901648 (= c!472862 (is-Some!6536 lt!1022239))))

(declare-fun b!2901649 () Bool)

(assert (=> b!2901649 (= e!1832395 e!1832391)))

(declare-fun c!472858 () Bool)

(assert (=> b!2901649 (= c!472858 (is-Star!8864 (ite c!472799 (regOne!18241 r!23079) (regTwo!18240 r!23079))))))

(assert (= (and d!835504 c!472861) b!2901646))

(assert (= (and d!835504 (not c!472861)) b!2901639))

(assert (= (and b!2901639 c!472864) b!2901636))

(assert (= (and b!2901639 (not c!472864)) b!2901645))

(assert (= (and b!2901645 c!472857) b!2901643))

(assert (= (and b!2901645 (not c!472857)) b!2901649))

(assert (= (and b!2901649 c!472858) b!2901637))

(assert (= (and b!2901649 (not c!472858)) b!2901640))

(assert (= (and b!2901640 c!472863) b!2901648))

(assert (= (and b!2901640 (not c!472863)) b!2901644))

(assert (= (and b!2901648 c!472862) b!2901635))

(assert (= (and b!2901648 (not c!472862)) b!2901638))

(assert (= (and b!2901644 c!472859) b!2901634))

(assert (= (and b!2901644 (not c!472859)) b!2901647))

(assert (= (and b!2901634 c!472860) b!2901641))

(assert (= (and b!2901634 (not c!472860)) b!2901642))

(assert (= (or b!2901638 b!2901644) bm!189083))

(assert (= (or b!2901648 b!2901634) bm!189084))

(declare-fun m!3306365 () Bool)

(assert (=> b!2901641 m!3306365))

(declare-fun m!3306367 () Bool)

(assert (=> bm!189083 m!3306367))

(declare-fun m!3306369 () Bool)

(assert (=> bm!189084 m!3306369))

(assert (=> bm!189049 d!835504))

(declare-fun d!835506 () Bool)

(declare-fun nullableFct!843 (Regex!8864) Bool)

(assert (=> d!835506 (= (nullable!2764 (reg!9193 r!23079)) (nullableFct!843 (reg!9193 r!23079)))))

(declare-fun bs!524017 () Bool)

(assert (= bs!524017 d!835506))

(declare-fun m!3306371 () Bool)

(assert (=> bs!524017 m!3306371))

(assert (=> b!2901419 d!835506))

(declare-fun d!835508 () Bool)

(assert (=> d!835508 (= (isEmpty!18860 lt!1022205) (not (is-Some!6536 lt!1022205)))))

(assert (=> d!835472 d!835508))

(declare-fun d!835510 () Bool)

(assert (=> d!835510 (= (nullable!2764 r!23079) (nullableFct!843 r!23079))))

(declare-fun bs!524018 () Bool)

(assert (= bs!524018 d!835510))

(declare-fun m!3306373 () Bool)

(assert (=> bs!524018 m!3306373))

(assert (=> b!2901499 d!835510))

(declare-fun b!2901650 () Bool)

(declare-fun e!1832402 () Bool)

(declare-fun lt!1022242 () Bool)

(assert (=> b!2901650 (= e!1832402 (not lt!1022242))))

(declare-fun d!835512 () Bool)

(declare-fun e!1832404 () Bool)

(assert (=> d!835512 e!1832404))

(declare-fun c!472866 () Bool)

(assert (=> d!835512 (= c!472866 (is-EmptyExpr!8864 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205)))))))

(declare-fun e!1832403 () Bool)

(assert (=> d!835512 (= lt!1022242 e!1832403)))

(declare-fun c!472865 () Bool)

(assert (=> d!835512 (= c!472865 (isEmpty!18862 (tail!4631 (get!10487 lt!1022205))))))

(assert (=> d!835512 (validRegex!3637 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))))))

(assert (=> d!835512 (= (matchR!3822 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))) (tail!4631 (get!10487 lt!1022205))) lt!1022242)))

(declare-fun b!2901651 () Bool)

(assert (=> b!2901651 (= e!1832404 e!1832402)))

(declare-fun c!472867 () Bool)

(assert (=> b!2901651 (= c!472867 (is-EmptyLang!8864 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205)))))))

(declare-fun b!2901652 () Bool)

(declare-fun res!1199042 () Bool)

(declare-fun e!1832400 () Bool)

(assert (=> b!2901652 (=> res!1199042 e!1832400)))

(assert (=> b!2901652 (= res!1199042 (not (isEmpty!18862 (tail!4631 (tail!4631 (get!10487 lt!1022205))))))))

(declare-fun b!2901653 () Bool)

(assert (=> b!2901653 (= e!1832403 (matchR!3822 (derivativeStep!2377 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))) (head!6406 (tail!4631 (get!10487 lt!1022205)))) (tail!4631 (tail!4631 (get!10487 lt!1022205)))))))

(declare-fun b!2901654 () Bool)

(declare-fun res!1199040 () Bool)

(declare-fun e!1832401 () Bool)

(assert (=> b!2901654 (=> (not res!1199040) (not e!1832401))))

(declare-fun call!189090 () Bool)

(assert (=> b!2901654 (= res!1199040 (not call!189090))))

(declare-fun b!2901655 () Bool)

(declare-fun res!1199039 () Bool)

(declare-fun e!1832405 () Bool)

(assert (=> b!2901655 (=> res!1199039 e!1832405)))

(assert (=> b!2901655 (= res!1199039 e!1832401)))

(declare-fun res!1199035 () Bool)

(assert (=> b!2901655 (=> (not res!1199035) (not e!1832401))))

(assert (=> b!2901655 (= res!1199035 lt!1022242)))

(declare-fun b!2901656 () Bool)

(assert (=> b!2901656 (= e!1832403 (nullable!2764 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205)))))))

(declare-fun b!2901657 () Bool)

(declare-fun e!1832399 () Bool)

(assert (=> b!2901657 (= e!1832405 e!1832399)))

(declare-fun res!1199036 () Bool)

(assert (=> b!2901657 (=> (not res!1199036) (not e!1832399))))

(assert (=> b!2901657 (= res!1199036 (not lt!1022242))))

(declare-fun b!2901658 () Bool)

(declare-fun res!1199041 () Bool)

(assert (=> b!2901658 (=> (not res!1199041) (not e!1832401))))

(assert (=> b!2901658 (= res!1199041 (isEmpty!18862 (tail!4631 (tail!4631 (get!10487 lt!1022205)))))))

(declare-fun b!2901659 () Bool)

(assert (=> b!2901659 (= e!1832404 (= lt!1022242 call!189090))))

(declare-fun b!2901660 () Bool)

(assert (=> b!2901660 (= e!1832400 (not (= (head!6406 (tail!4631 (get!10487 lt!1022205))) (c!472759 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205)))))))))

(declare-fun b!2901661 () Bool)

(declare-fun res!1199038 () Bool)

(assert (=> b!2901661 (=> res!1199038 e!1832405)))

(assert (=> b!2901661 (= res!1199038 (not (is-ElementMatch!8864 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))))))))

(assert (=> b!2901661 (= e!1832402 e!1832405)))

(declare-fun b!2901662 () Bool)

(assert (=> b!2901662 (= e!1832401 (= (head!6406 (tail!4631 (get!10487 lt!1022205))) (c!472759 (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))))))))

(declare-fun b!2901663 () Bool)

(assert (=> b!2901663 (= e!1832399 e!1832400)))

(declare-fun res!1199037 () Bool)

(assert (=> b!2901663 (=> res!1199037 e!1832400)))

(assert (=> b!2901663 (= res!1199037 call!189090)))

(declare-fun bm!189085 () Bool)

(assert (=> bm!189085 (= call!189090 (isEmpty!18862 (tail!4631 (get!10487 lt!1022205))))))

(assert (= (and d!835512 c!472865) b!2901656))

(assert (= (and d!835512 (not c!472865)) b!2901653))

(assert (= (and d!835512 c!472866) b!2901659))

(assert (= (and d!835512 (not c!472866)) b!2901651))

(assert (= (and b!2901651 c!472867) b!2901650))

(assert (= (and b!2901651 (not c!472867)) b!2901661))

(assert (= (and b!2901661 (not res!1199038)) b!2901655))

(assert (= (and b!2901655 res!1199035) b!2901654))

(assert (= (and b!2901654 res!1199040) b!2901658))

(assert (= (and b!2901658 res!1199041) b!2901662))

(assert (= (and b!2901655 (not res!1199039)) b!2901657))

(assert (= (and b!2901657 res!1199036) b!2901663))

(assert (= (and b!2901663 (not res!1199037)) b!2901652))

(assert (= (and b!2901652 (not res!1199042)) b!2901660))

(assert (= (or b!2901659 b!2901663 b!2901654) bm!189085))

(assert (=> b!2901653 m!3306329))

(declare-fun m!3306375 () Bool)

(assert (=> b!2901653 m!3306375))

(assert (=> b!2901653 m!3306327))

(assert (=> b!2901653 m!3306375))

(declare-fun m!3306377 () Bool)

(assert (=> b!2901653 m!3306377))

(assert (=> b!2901653 m!3306329))

(declare-fun m!3306379 () Bool)

(assert (=> b!2901653 m!3306379))

(assert (=> b!2901653 m!3306377))

(assert (=> b!2901653 m!3306379))

(declare-fun m!3306381 () Bool)

(assert (=> b!2901653 m!3306381))

(assert (=> b!2901662 m!3306329))

(assert (=> b!2901662 m!3306375))

(assert (=> b!2901658 m!3306329))

(assert (=> b!2901658 m!3306379))

(assert (=> b!2901658 m!3306379))

(declare-fun m!3306383 () Bool)

(assert (=> b!2901658 m!3306383))

(assert (=> b!2901656 m!3306327))

(declare-fun m!3306385 () Bool)

(assert (=> b!2901656 m!3306385))

(assert (=> d!835512 m!3306329))

(assert (=> d!835512 m!3306333))

(assert (=> d!835512 m!3306327))

(declare-fun m!3306387 () Bool)

(assert (=> d!835512 m!3306387))

(assert (=> bm!189085 m!3306329))

(assert (=> bm!189085 m!3306333))

(assert (=> b!2901660 m!3306329))

(assert (=> b!2901660 m!3306375))

(assert (=> b!2901652 m!3306329))

(assert (=> b!2901652 m!3306379))

(assert (=> b!2901652 m!3306379))

(assert (=> b!2901652 m!3306383))

(assert (=> b!2901496 d!835512))

(declare-fun b!2901705 () Bool)

(declare-fun e!1832432 () Regex!8864)

(assert (=> b!2901705 (= e!1832432 (ite (= (head!6406 (get!10487 lt!1022205)) (c!472759 r!23079)) EmptyExpr!8864 EmptyLang!8864))))

(declare-fun b!2901706 () Bool)

(declare-fun e!1832433 () Regex!8864)

(declare-fun call!189103 () Regex!8864)

(declare-fun call!189105 () Regex!8864)

(assert (=> b!2901706 (= e!1832433 (Union!8864 call!189103 call!189105))))

(declare-fun bm!189097 () Bool)

(declare-fun c!472886 () Bool)

(assert (=> bm!189097 (= call!189105 (derivativeStep!2377 (ite c!472886 (regTwo!18241 r!23079) (regTwo!18240 r!23079)) (head!6406 (get!10487 lt!1022205))))))

(declare-fun b!2901707 () Bool)

(assert (=> b!2901707 (= c!472886 (is-Union!8864 r!23079))))

(assert (=> b!2901707 (= e!1832432 e!1832433)))

(declare-fun bm!189098 () Bool)

(declare-fun call!189102 () Regex!8864)

(assert (=> bm!189098 (= call!189102 call!189103)))

(declare-fun bm!189099 () Bool)

(declare-fun c!472887 () Bool)

(assert (=> bm!189099 (= call!189103 (derivativeStep!2377 (ite c!472886 (regOne!18241 r!23079) (ite c!472887 (reg!9193 r!23079) (regOne!18240 r!23079))) (head!6406 (get!10487 lt!1022205))))))

(declare-fun b!2901708 () Bool)

(declare-fun e!1832431 () Regex!8864)

(assert (=> b!2901708 (= e!1832433 e!1832431)))

(assert (=> b!2901708 (= c!472887 (is-Star!8864 r!23079))))

(declare-fun bm!189100 () Bool)

(declare-fun call!189104 () Regex!8864)

(assert (=> bm!189100 (= call!189104 call!189102)))

(declare-fun d!835514 () Bool)

(declare-fun lt!1022248 () Regex!8864)

(assert (=> d!835514 (validRegex!3637 lt!1022248)))

(declare-fun e!1832429 () Regex!8864)

(assert (=> d!835514 (= lt!1022248 e!1832429)))

(declare-fun c!472885 () Bool)

(assert (=> d!835514 (= c!472885 (or (is-EmptyExpr!8864 r!23079) (is-EmptyLang!8864 r!23079)))))

(assert (=> d!835514 (validRegex!3637 r!23079)))

(assert (=> d!835514 (= (derivativeStep!2377 r!23079 (head!6406 (get!10487 lt!1022205))) lt!1022248)))

(declare-fun b!2901709 () Bool)

(assert (=> b!2901709 (= e!1832431 (Concat!14185 call!189102 r!23079))))

(declare-fun b!2901710 () Bool)

(assert (=> b!2901710 (= e!1832429 e!1832432)))

(declare-fun c!472884 () Bool)

(assert (=> b!2901710 (= c!472884 (is-ElementMatch!8864 r!23079))))

(declare-fun b!2901711 () Bool)

(declare-fun e!1832430 () Regex!8864)

(assert (=> b!2901711 (= e!1832430 (Union!8864 (Concat!14185 call!189104 (regTwo!18240 r!23079)) EmptyLang!8864))))

(declare-fun b!2901712 () Bool)

(assert (=> b!2901712 (= e!1832430 (Union!8864 (Concat!14185 call!189104 (regTwo!18240 r!23079)) call!189105))))

(declare-fun b!2901713 () Bool)

(declare-fun c!472883 () Bool)

(assert (=> b!2901713 (= c!472883 (nullable!2764 (regOne!18240 r!23079)))))

(assert (=> b!2901713 (= e!1832431 e!1832430)))

(declare-fun b!2901714 () Bool)

(assert (=> b!2901714 (= e!1832429 EmptyLang!8864)))

(assert (= (and d!835514 c!472885) b!2901714))

(assert (= (and d!835514 (not c!472885)) b!2901710))

(assert (= (and b!2901710 c!472884) b!2901705))

(assert (= (and b!2901710 (not c!472884)) b!2901707))

(assert (= (and b!2901707 c!472886) b!2901706))

(assert (= (and b!2901707 (not c!472886)) b!2901708))

(assert (= (and b!2901708 c!472887) b!2901709))

(assert (= (and b!2901708 (not c!472887)) b!2901713))

(assert (= (and b!2901713 c!472883) b!2901712))

(assert (= (and b!2901713 (not c!472883)) b!2901711))

(assert (= (or b!2901712 b!2901711) bm!189100))

(assert (= (or b!2901709 bm!189100) bm!189098))

(assert (= (or b!2901706 bm!189098) bm!189099))

(assert (= (or b!2901706 b!2901712) bm!189097))

(assert (=> bm!189097 m!3306325))

(declare-fun m!3306411 () Bool)

(assert (=> bm!189097 m!3306411))

(assert (=> bm!189099 m!3306325))

(declare-fun m!3306413 () Bool)

(assert (=> bm!189099 m!3306413))

(declare-fun m!3306415 () Bool)

(assert (=> d!835514 m!3306415))

(assert (=> d!835514 m!3306271))

(declare-fun m!3306417 () Bool)

(assert (=> b!2901713 m!3306417))

(assert (=> b!2901496 d!835514))

(declare-fun d!835528 () Bool)

(assert (=> d!835528 (= (head!6406 (get!10487 lt!1022205)) (h!39961 (get!10487 lt!1022205)))))

(assert (=> b!2901496 d!835528))

(assert (=> b!2901496 d!835498))

(declare-fun b!2901729 () Bool)

(declare-fun c!472894 () Bool)

(declare-fun lt!1022251 () Option!6537)

(assert (=> b!2901729 (= c!472894 (is-Some!6536 lt!1022251))))

(declare-fun call!189108 () Option!6537)

(assert (=> b!2901729 (= lt!1022251 call!189108)))

(declare-fun e!1832442 () Option!6537)

(declare-fun e!1832443 () Option!6537)

(assert (=> b!2901729 (= e!1832442 e!1832443)))

(declare-fun b!2901730 () Bool)

(declare-fun e!1832448 () Option!6537)

(declare-fun lt!1022250 () Option!6537)

(assert (=> b!2901730 (= e!1832448 lt!1022250)))

(declare-fun b!2901731 () Bool)

(declare-fun e!1832444 () Option!6537)

(assert (=> b!2901731 (= e!1832444 None!6536)))

(declare-fun b!2901732 () Bool)

(declare-fun e!1832441 () Option!6537)

(assert (=> b!2901732 (= e!1832441 (Some!6536 Nil!34541))))

(declare-fun b!2901733 () Bool)

(declare-fun call!189107 () Option!6537)

(assert (=> b!2901733 (= e!1832448 call!189107)))

(declare-fun b!2901734 () Bool)

(declare-fun e!1832447 () Option!6537)

(assert (=> b!2901734 (= e!1832447 e!1832444)))

(declare-fun c!472898 () Bool)

(assert (=> b!2901734 (= c!472898 (is-EmptyLang!8864 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(declare-fun b!2901735 () Bool)

(declare-fun c!472897 () Bool)

(assert (=> b!2901735 (= c!472897 (is-Union!8864 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(declare-fun e!1832446 () Option!6537)

(assert (=> b!2901735 (= e!1832441 e!1832446)))

(declare-fun b!2901736 () Bool)

(declare-fun lt!1022252 () Option!6537)

(assert (=> b!2901736 (= e!1832443 (Some!6536 (++!8262 (v!34662 lt!1022252) (v!34662 lt!1022251))))))

(declare-fun d!835530 () Bool)

(declare-fun c!472895 () Bool)

(assert (=> d!835530 (= c!472895 (is-EmptyExpr!8864 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(assert (=> d!835530 (= (getLanguageWitness!571 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))) e!1832447)))

(declare-fun bm!189102 () Bool)

(assert (=> bm!189102 (= call!189107 (getLanguageWitness!571 (ite c!472897 (regTwo!18241 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))) (regOne!18240 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))))

(declare-fun b!2901737 () Bool)

(assert (=> b!2901737 (= e!1832443 None!6536)))

(declare-fun bm!189103 () Bool)

(assert (=> bm!189103 (= call!189108 (getLanguageWitness!571 (ite c!472897 (regOne!18241 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))) (regTwo!18240 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))))

(declare-fun b!2901738 () Bool)

(declare-fun e!1832445 () Option!6537)

(assert (=> b!2901738 (= e!1832445 (Some!6536 (Cons!34541 (c!472759 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))) Nil!34541)))))

(declare-fun b!2901739 () Bool)

(assert (=> b!2901739 (= e!1832446 e!1832442)))

(assert (=> b!2901739 (= lt!1022252 call!189107)))

(declare-fun c!472893 () Bool)

(assert (=> b!2901739 (= c!472893 (is-Some!6536 lt!1022252))))

(declare-fun b!2901740 () Bool)

(declare-fun c!472891 () Bool)

(assert (=> b!2901740 (= c!472891 (is-ElementMatch!8864 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(assert (=> b!2901740 (= e!1832444 e!1832445)))

(declare-fun b!2901741 () Bool)

(assert (=> b!2901741 (= e!1832447 (Some!6536 Nil!34541))))

(declare-fun b!2901742 () Bool)

(assert (=> b!2901742 (= e!1832442 None!6536)))

(declare-fun b!2901743 () Bool)

(assert (=> b!2901743 (= e!1832446 e!1832448)))

(assert (=> b!2901743 (= lt!1022250 call!189108)))

(declare-fun c!472896 () Bool)

(assert (=> b!2901743 (= c!472896 (is-Some!6536 lt!1022250))))

(declare-fun b!2901744 () Bool)

(assert (=> b!2901744 (= e!1832445 e!1832441)))

(declare-fun c!472892 () Bool)

(assert (=> b!2901744 (= c!472892 (is-Star!8864 (ite c!472844 (regOne!18241 (regOne!18240 r!23079)) (regTwo!18240 (regOne!18240 r!23079)))))))

(assert (= (and d!835530 c!472895) b!2901741))

(assert (= (and d!835530 (not c!472895)) b!2901734))

(assert (= (and b!2901734 c!472898) b!2901731))

(assert (= (and b!2901734 (not c!472898)) b!2901740))

(assert (= (and b!2901740 c!472891) b!2901738))

(assert (= (and b!2901740 (not c!472891)) b!2901744))

(assert (= (and b!2901744 c!472892) b!2901732))

(assert (= (and b!2901744 (not c!472892)) b!2901735))

(assert (= (and b!2901735 c!472897) b!2901743))

(assert (= (and b!2901735 (not c!472897)) b!2901739))

(assert (= (and b!2901743 c!472896) b!2901730))

(assert (= (and b!2901743 (not c!472896)) b!2901733))

(assert (= (and b!2901739 c!472893) b!2901729))

(assert (= (and b!2901739 (not c!472893)) b!2901742))

(assert (= (and b!2901729 c!472894) b!2901736))

(assert (= (and b!2901729 (not c!472894)) b!2901737))

(assert (= (or b!2901733 b!2901739) bm!189102))

(assert (= (or b!2901743 b!2901729) bm!189103))

(declare-fun m!3306429 () Bool)

(assert (=> b!2901736 m!3306429))

(declare-fun m!3306433 () Bool)

(assert (=> bm!189102 m!3306433))

(declare-fun m!3306435 () Bool)

(assert (=> bm!189103 m!3306435))

(assert (=> bm!189076 d!835530))

(assert (=> b!2901495 d!835496))

(assert (=> b!2901495 d!835498))

(declare-fun b!2901756 () Bool)

(declare-fun e!1832453 () Bool)

(declare-fun lt!1022255 () List!34665)

(assert (=> b!2901756 (= e!1832453 (or (not (= (v!34662 lt!1022222) Nil!34541)) (= lt!1022255 (v!34662 lt!1022223))))))

(declare-fun d!835532 () Bool)

(assert (=> d!835532 e!1832453))

(declare-fun res!1199067 () Bool)

(assert (=> d!835532 (=> (not res!1199067) (not e!1832453))))

(declare-fun content!4737 (List!34665) (Set C!17910))

(assert (=> d!835532 (= res!1199067 (= (content!4737 lt!1022255) (set.union (content!4737 (v!34662 lt!1022223)) (content!4737 (v!34662 lt!1022222)))))))

(declare-fun e!1832454 () List!34665)

(assert (=> d!835532 (= lt!1022255 e!1832454)))

(declare-fun c!472901 () Bool)

(assert (=> d!835532 (= c!472901 (is-Nil!34541 (v!34662 lt!1022223)))))

(assert (=> d!835532 (= (++!8262 (v!34662 lt!1022223) (v!34662 lt!1022222)) lt!1022255)))

(declare-fun b!2901753 () Bool)

(assert (=> b!2901753 (= e!1832454 (v!34662 lt!1022222))))

(declare-fun b!2901754 () Bool)

(assert (=> b!2901754 (= e!1832454 (Cons!34541 (h!39961 (v!34662 lt!1022223)) (++!8262 (t!233708 (v!34662 lt!1022223)) (v!34662 lt!1022222))))))

(declare-fun b!2901755 () Bool)

(declare-fun res!1199066 () Bool)

(assert (=> b!2901755 (=> (not res!1199066) (not e!1832453))))

(declare-fun size!26356 (List!34665) Int)

(assert (=> b!2901755 (= res!1199066 (= (size!26356 lt!1022255) (+ (size!26356 (v!34662 lt!1022223)) (size!26356 (v!34662 lt!1022222)))))))

(assert (= (and d!835532 c!472901) b!2901753))

(assert (= (and d!835532 (not c!472901)) b!2901754))

(assert (= (and d!835532 res!1199067) b!2901755))

(assert (= (and b!2901755 res!1199066) b!2901756))

(declare-fun m!3306439 () Bool)

(assert (=> d!835532 m!3306439))

(declare-fun m!3306441 () Bool)

(assert (=> d!835532 m!3306441))

(declare-fun m!3306443 () Bool)

(assert (=> d!835532 m!3306443))

(declare-fun m!3306445 () Bool)

(assert (=> b!2901754 m!3306445))

(declare-fun m!3306447 () Bool)

(assert (=> b!2901755 m!3306447))

(declare-fun m!3306449 () Bool)

(assert (=> b!2901755 m!3306449))

(declare-fun m!3306451 () Bool)

(assert (=> b!2901755 m!3306451))

(assert (=> b!2901370 d!835532))

(declare-fun b!2901757 () Bool)

(declare-fun c!472905 () Bool)

(declare-fun lt!1022257 () Option!6537)

(assert (=> b!2901757 (= c!472905 (is-Some!6536 lt!1022257))))

(declare-fun call!189110 () Option!6537)

(assert (=> b!2901757 (= lt!1022257 call!189110)))

(declare-fun e!1832456 () Option!6537)

(declare-fun e!1832457 () Option!6537)

(assert (=> b!2901757 (= e!1832456 e!1832457)))

(declare-fun b!2901758 () Bool)

(declare-fun e!1832462 () Option!6537)

(declare-fun lt!1022256 () Option!6537)

(assert (=> b!2901758 (= e!1832462 lt!1022256)))

(declare-fun b!2901759 () Bool)

(declare-fun e!1832458 () Option!6537)

(assert (=> b!2901759 (= e!1832458 None!6536)))

(declare-fun b!2901760 () Bool)

(declare-fun e!1832455 () Option!6537)

(assert (=> b!2901760 (= e!1832455 (Some!6536 Nil!34541))))

(declare-fun b!2901761 () Bool)

(declare-fun call!189109 () Option!6537)

(assert (=> b!2901761 (= e!1832462 call!189109)))

(declare-fun b!2901762 () Bool)

(declare-fun e!1832461 () Option!6537)

(assert (=> b!2901762 (= e!1832461 e!1832458)))

(declare-fun c!472909 () Bool)

(assert (=> b!2901762 (= c!472909 (is-EmptyLang!8864 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(declare-fun b!2901763 () Bool)

(declare-fun c!472908 () Bool)

(assert (=> b!2901763 (= c!472908 (is-Union!8864 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(declare-fun e!1832460 () Option!6537)

(assert (=> b!2901763 (= e!1832455 e!1832460)))

(declare-fun b!2901764 () Bool)

(declare-fun lt!1022258 () Option!6537)

(assert (=> b!2901764 (= e!1832457 (Some!6536 (++!8262 (v!34662 lt!1022258) (v!34662 lt!1022257))))))

(declare-fun d!835536 () Bool)

(declare-fun c!472906 () Bool)

(assert (=> d!835536 (= c!472906 (is-EmptyExpr!8864 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(assert (=> d!835536 (= (getLanguageWitness!571 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))) e!1832461)))

(declare-fun bm!189104 () Bool)

(assert (=> bm!189104 (= call!189109 (getLanguageWitness!571 (ite c!472908 (regTwo!18241 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))) (regOne!18240 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))))

(declare-fun b!2901765 () Bool)

(assert (=> b!2901765 (= e!1832457 None!6536)))

(declare-fun bm!189105 () Bool)

(assert (=> bm!189105 (= call!189110 (getLanguageWitness!571 (ite c!472908 (regOne!18241 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))) (regTwo!18240 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))))

(declare-fun b!2901766 () Bool)

(declare-fun e!1832459 () Option!6537)

(assert (=> b!2901766 (= e!1832459 (Some!6536 (Cons!34541 (c!472759 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))) Nil!34541)))))

(declare-fun b!2901767 () Bool)

(assert (=> b!2901767 (= e!1832460 e!1832456)))

(assert (=> b!2901767 (= lt!1022258 call!189109)))

(declare-fun c!472904 () Bool)

(assert (=> b!2901767 (= c!472904 (is-Some!6536 lt!1022258))))

(declare-fun b!2901768 () Bool)

(declare-fun c!472902 () Bool)

(assert (=> b!2901768 (= c!472902 (is-ElementMatch!8864 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(assert (=> b!2901768 (= e!1832458 e!1832459)))

(declare-fun b!2901769 () Bool)

(assert (=> b!2901769 (= e!1832461 (Some!6536 Nil!34541))))

(declare-fun b!2901770 () Bool)

(assert (=> b!2901770 (= e!1832456 None!6536)))

(declare-fun b!2901771 () Bool)

(assert (=> b!2901771 (= e!1832460 e!1832462)))

(assert (=> b!2901771 (= lt!1022256 call!189110)))

(declare-fun c!472907 () Bool)

(assert (=> b!2901771 (= c!472907 (is-Some!6536 lt!1022256))))

(declare-fun b!2901772 () Bool)

(assert (=> b!2901772 (= e!1832459 e!1832455)))

(declare-fun c!472903 () Bool)

(assert (=> b!2901772 (= c!472903 (is-Star!8864 (ite c!472799 (regTwo!18241 r!23079) (regOne!18240 r!23079))))))

(assert (= (and d!835536 c!472906) b!2901769))

(assert (= (and d!835536 (not c!472906)) b!2901762))

(assert (= (and b!2901762 c!472909) b!2901759))

(assert (= (and b!2901762 (not c!472909)) b!2901768))

(assert (= (and b!2901768 c!472902) b!2901766))

(assert (= (and b!2901768 (not c!472902)) b!2901772))

(assert (= (and b!2901772 c!472903) b!2901760))

(assert (= (and b!2901772 (not c!472903)) b!2901763))

(assert (= (and b!2901763 c!472908) b!2901771))

(assert (= (and b!2901763 (not c!472908)) b!2901767))

(assert (= (and b!2901771 c!472907) b!2901758))

(assert (= (and b!2901771 (not c!472907)) b!2901761))

(assert (= (and b!2901767 c!472904) b!2901757))

(assert (= (and b!2901767 (not c!472904)) b!2901770))

(assert (= (and b!2901757 c!472905) b!2901764))

(assert (= (and b!2901757 (not c!472905)) b!2901765))

(assert (= (or b!2901761 b!2901767) bm!189104))

(assert (= (or b!2901771 b!2901757) bm!189105))

(declare-fun m!3306453 () Bool)

(assert (=> b!2901764 m!3306453))

(declare-fun m!3306455 () Bool)

(assert (=> bm!189104 m!3306455))

(declare-fun m!3306457 () Bool)

(assert (=> bm!189105 m!3306457))

(assert (=> bm!189048 d!835536))

(assert (=> bm!189074 d!835502))

(declare-fun e!1832473 () Bool)

(declare-fun b!2901796 () Bool)

(declare-fun lt!1022261 () List!34665)

(assert (=> b!2901796 (= e!1832473 (or (not (= (v!34662 lt!1022234) Nil!34541)) (= lt!1022261 (v!34662 lt!1022235))))))

(declare-fun d!835538 () Bool)

(assert (=> d!835538 e!1832473))

(declare-fun res!1199069 () Bool)

(assert (=> d!835538 (=> (not res!1199069) (not e!1832473))))

(assert (=> d!835538 (= res!1199069 (= (content!4737 lt!1022261) (set.union (content!4737 (v!34662 lt!1022235)) (content!4737 (v!34662 lt!1022234)))))))

(declare-fun e!1832474 () List!34665)

(assert (=> d!835538 (= lt!1022261 e!1832474)))

(declare-fun c!472920 () Bool)

(assert (=> d!835538 (= c!472920 (is-Nil!34541 (v!34662 lt!1022235)))))

(assert (=> d!835538 (= (++!8262 (v!34662 lt!1022235) (v!34662 lt!1022234)) lt!1022261)))

(declare-fun b!2901793 () Bool)

(assert (=> b!2901793 (= e!1832474 (v!34662 lt!1022234))))

(declare-fun b!2901794 () Bool)

(assert (=> b!2901794 (= e!1832474 (Cons!34541 (h!39961 (v!34662 lt!1022235)) (++!8262 (t!233708 (v!34662 lt!1022235)) (v!34662 lt!1022234))))))

(declare-fun b!2901795 () Bool)

(declare-fun res!1199068 () Bool)

(assert (=> b!2901795 (=> (not res!1199068) (not e!1832473))))

(assert (=> b!2901795 (= res!1199068 (= (size!26356 lt!1022261) (+ (size!26356 (v!34662 lt!1022235)) (size!26356 (v!34662 lt!1022234)))))))

(assert (= (and d!835538 c!472920) b!2901793))

(assert (= (and d!835538 (not c!472920)) b!2901794))

(assert (= (and d!835538 res!1199069) b!2901795))

(assert (= (and b!2901795 res!1199068) b!2901796))

(declare-fun m!3306459 () Bool)

(assert (=> d!835538 m!3306459))

(declare-fun m!3306461 () Bool)

(assert (=> d!835538 m!3306461))

(declare-fun m!3306463 () Bool)

(assert (=> d!835538 m!3306463))

(declare-fun m!3306465 () Bool)

(assert (=> b!2901794 m!3306465))

(declare-fun m!3306467 () Bool)

(assert (=> b!2901795 m!3306467))

(declare-fun m!3306469 () Bool)

(assert (=> b!2901795 m!3306469))

(declare-fun m!3306471 () Bool)

(assert (=> b!2901795 m!3306471))

(assert (=> b!2901514 d!835538))

(assert (=> b!2901503 d!835528))

(assert (=> b!2901505 d!835528))

(declare-fun call!189117 () Bool)

(declare-fun c!472921 () Bool)

(declare-fun bm!189110 () Bool)

(assert (=> bm!189110 (= call!189117 (validRegex!3637 (ite c!472921 (regTwo!18241 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))) (regTwo!18240 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))))

(declare-fun b!2901797 () Bool)

(declare-fun res!1199071 () Bool)

(declare-fun e!1832476 () Bool)

(assert (=> b!2901797 (=> res!1199071 e!1832476)))

(assert (=> b!2901797 (= res!1199071 (not (is-Concat!14185 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079))))))))

(declare-fun e!1832480 () Bool)

(assert (=> b!2901797 (= e!1832480 e!1832476)))

(declare-fun b!2901798 () Bool)

(declare-fun e!1832478 () Bool)

(assert (=> b!2901798 (= e!1832478 e!1832480)))

(assert (=> b!2901798 (= c!472921 (is-Union!8864 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))

(declare-fun b!2901799 () Bool)

(declare-fun e!1832479 () Bool)

(assert (=> b!2901799 (= e!1832479 e!1832478)))

(declare-fun c!472922 () Bool)

(assert (=> b!2901799 (= c!472922 (is-Star!8864 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))

(declare-fun bm!189111 () Bool)

(declare-fun call!189115 () Bool)

(assert (=> bm!189111 (= call!189115 (validRegex!3637 (ite c!472922 (reg!9193 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))) (ite c!472921 (regOne!18241 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))) (regOne!18240 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079))))))))))

(declare-fun d!835540 () Bool)

(declare-fun res!1199070 () Bool)

(assert (=> d!835540 (=> res!1199070 e!1832479)))

(assert (=> d!835540 (= res!1199070 (is-ElementMatch!8864 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))

(assert (=> d!835540 (= (validRegex!3637 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))) e!1832479)))

(declare-fun b!2901800 () Bool)

(declare-fun res!1199074 () Bool)

(declare-fun e!1832477 () Bool)

(assert (=> b!2901800 (=> (not res!1199074) (not e!1832477))))

(declare-fun call!189116 () Bool)

(assert (=> b!2901800 (= res!1199074 call!189116)))

(assert (=> b!2901800 (= e!1832480 e!1832477)))

(declare-fun b!2901801 () Bool)

(declare-fun e!1832481 () Bool)

(assert (=> b!2901801 (= e!1832481 call!189117)))

(declare-fun b!2901802 () Bool)

(declare-fun e!1832475 () Bool)

(assert (=> b!2901802 (= e!1832475 call!189115)))

(declare-fun b!2901803 () Bool)

(assert (=> b!2901803 (= e!1832478 e!1832475)))

(declare-fun res!1199073 () Bool)

(assert (=> b!2901803 (= res!1199073 (not (nullable!2764 (reg!9193 (ite c!472814 (reg!9193 r!23079) (ite c!472813 (regOne!18241 r!23079) (regOne!18240 r!23079)))))))))

(assert (=> b!2901803 (=> (not res!1199073) (not e!1832475))))

(declare-fun b!2901804 () Bool)

(assert (=> b!2901804 (= e!1832477 call!189117)))

(declare-fun b!2901805 () Bool)

(assert (=> b!2901805 (= e!1832476 e!1832481)))

(declare-fun res!1199072 () Bool)

(assert (=> b!2901805 (=> (not res!1199072) (not e!1832481))))

(assert (=> b!2901805 (= res!1199072 call!189116)))

(declare-fun bm!189112 () Bool)

(assert (=> bm!189112 (= call!189116 call!189115)))

(assert (= (and d!835540 (not res!1199070)) b!2901799))

(assert (= (and b!2901799 c!472922) b!2901803))

(assert (= (and b!2901799 (not c!472922)) b!2901798))

(assert (= (and b!2901803 res!1199073) b!2901802))

(assert (= (and b!2901798 c!472921) b!2901800))

(assert (= (and b!2901798 (not c!472921)) b!2901797))

(assert (= (and b!2901800 res!1199074) b!2901804))

(assert (= (and b!2901797 (not res!1199071)) b!2901805))

(assert (= (and b!2901805 res!1199072) b!2901801))

(assert (= (or b!2901804 b!2901801) bm!189110))

(assert (= (or b!2901800 b!2901805) bm!189112))

(assert (= (or b!2901802 bm!189112) bm!189111))

(declare-fun m!3306473 () Bool)

(assert (=> bm!189110 m!3306473))

(declare-fun m!3306475 () Bool)

(assert (=> bm!189111 m!3306475))

(declare-fun m!3306477 () Bool)

(assert (=> b!2901803 m!3306477))

(assert (=> bm!189059 d!835540))

(declare-fun b!2901806 () Bool)

(declare-fun c!472926 () Bool)

(declare-fun lt!1022263 () Option!6537)

(assert (=> b!2901806 (= c!472926 (is-Some!6536 lt!1022263))))

(declare-fun call!189123 () Option!6537)

(assert (=> b!2901806 (= lt!1022263 call!189123)))

(declare-fun e!1832483 () Option!6537)

(declare-fun e!1832484 () Option!6537)

(assert (=> b!2901806 (= e!1832483 e!1832484)))

(declare-fun b!2901807 () Bool)

(declare-fun e!1832489 () Option!6537)

(declare-fun lt!1022262 () Option!6537)

(assert (=> b!2901807 (= e!1832489 lt!1022262)))

(declare-fun b!2901808 () Bool)

(declare-fun e!1832485 () Option!6537)

(assert (=> b!2901808 (= e!1832485 None!6536)))

(declare-fun b!2901809 () Bool)

(declare-fun e!1832482 () Option!6537)

(assert (=> b!2901809 (= e!1832482 (Some!6536 Nil!34541))))

(declare-fun b!2901810 () Bool)

(declare-fun call!189122 () Option!6537)

(assert (=> b!2901810 (= e!1832489 call!189122)))

(declare-fun b!2901811 () Bool)

(declare-fun e!1832488 () Option!6537)

(assert (=> b!2901811 (= e!1832488 e!1832485)))

(declare-fun c!472930 () Bool)

(assert (=> b!2901811 (= c!472930 (is-EmptyLang!8864 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(declare-fun b!2901812 () Bool)

(declare-fun c!472929 () Bool)

(assert (=> b!2901812 (= c!472929 (is-Union!8864 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(declare-fun e!1832487 () Option!6537)

(assert (=> b!2901812 (= e!1832482 e!1832487)))

(declare-fun b!2901813 () Bool)

(declare-fun lt!1022264 () Option!6537)

(assert (=> b!2901813 (= e!1832484 (Some!6536 (++!8262 (v!34662 lt!1022264) (v!34662 lt!1022263))))))

(declare-fun d!835542 () Bool)

(declare-fun c!472927 () Bool)

(assert (=> d!835542 (= c!472927 (is-EmptyExpr!8864 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(assert (=> d!835542 (= (getLanguageWitness!571 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))) e!1832488)))

(declare-fun bm!189117 () Bool)

(assert (=> bm!189117 (= call!189122 (getLanguageWitness!571 (ite c!472929 (regTwo!18241 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))) (regOne!18240 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))))

(declare-fun b!2901814 () Bool)

(assert (=> b!2901814 (= e!1832484 None!6536)))

(declare-fun bm!189118 () Bool)

(assert (=> bm!189118 (= call!189123 (getLanguageWitness!571 (ite c!472929 (regOne!18241 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))) (regTwo!18240 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))))

(declare-fun b!2901815 () Bool)

(declare-fun e!1832486 () Option!6537)

(assert (=> b!2901815 (= e!1832486 (Some!6536 (Cons!34541 (c!472759 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))) Nil!34541)))))

(declare-fun b!2901816 () Bool)

(assert (=> b!2901816 (= e!1832487 e!1832483)))

(assert (=> b!2901816 (= lt!1022264 call!189122)))

(declare-fun c!472925 () Bool)

(assert (=> b!2901816 (= c!472925 (is-Some!6536 lt!1022264))))

(declare-fun b!2901817 () Bool)

(declare-fun c!472923 () Bool)

(assert (=> b!2901817 (= c!472923 (is-ElementMatch!8864 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(assert (=> b!2901817 (= e!1832485 e!1832486)))

(declare-fun b!2901818 () Bool)

(assert (=> b!2901818 (= e!1832488 (Some!6536 Nil!34541))))

(declare-fun b!2901819 () Bool)

(assert (=> b!2901819 (= e!1832483 None!6536)))

(declare-fun b!2901820 () Bool)

(assert (=> b!2901820 (= e!1832487 e!1832489)))

(assert (=> b!2901820 (= lt!1022262 call!189123)))

(declare-fun c!472928 () Bool)

(assert (=> b!2901820 (= c!472928 (is-Some!6536 lt!1022262))))

(declare-fun b!2901821 () Bool)

(assert (=> b!2901821 (= e!1832486 e!1832482)))

(declare-fun c!472924 () Bool)

(assert (=> b!2901821 (= c!472924 (is-Star!8864 (ite c!472844 (regTwo!18241 (regOne!18240 r!23079)) (regOne!18240 (regOne!18240 r!23079)))))))

(assert (= (and d!835542 c!472927) b!2901818))

(assert (= (and d!835542 (not c!472927)) b!2901811))

(assert (= (and b!2901811 c!472930) b!2901808))

(assert (= (and b!2901811 (not c!472930)) b!2901817))

(assert (= (and b!2901817 c!472923) b!2901815))

(assert (= (and b!2901817 (not c!472923)) b!2901821))

(assert (= (and b!2901821 c!472924) b!2901809))

(assert (= (and b!2901821 (not c!472924)) b!2901812))

(assert (= (and b!2901812 c!472929) b!2901820))

(assert (= (and b!2901812 (not c!472929)) b!2901816))

(assert (= (and b!2901820 c!472928) b!2901807))

(assert (= (and b!2901820 (not c!472928)) b!2901810))

(assert (= (and b!2901816 c!472925) b!2901806))

(assert (= (and b!2901816 (not c!472925)) b!2901819))

(assert (= (and b!2901806 c!472926) b!2901813))

(assert (= (and b!2901806 (not c!472926)) b!2901814))

(assert (= (or b!2901810 b!2901816) bm!189117))

(assert (= (or b!2901820 b!2901806) bm!189118))

(declare-fun m!3306479 () Bool)

(assert (=> b!2901813 m!3306479))

(declare-fun m!3306481 () Bool)

(assert (=> bm!189117 m!3306481))

(declare-fun m!3306483 () Bool)

(assert (=> bm!189118 m!3306483))

(assert (=> bm!189075 d!835542))

(declare-fun b!2901823 () Bool)

(declare-fun e!1832490 () Bool)

(declare-fun tp!931100 () Bool)

(declare-fun tp!931103 () Bool)

(assert (=> b!2901823 (= e!1832490 (and tp!931100 tp!931103))))

(declare-fun b!2901825 () Bool)

(declare-fun tp!931104 () Bool)

(declare-fun tp!931102 () Bool)

(assert (=> b!2901825 (= e!1832490 (and tp!931104 tp!931102))))

(assert (=> b!2901565 (= tp!931051 e!1832490)))

(declare-fun b!2901822 () Bool)

(assert (=> b!2901822 (= e!1832490 tp_is_empty!15315)))

(declare-fun b!2901824 () Bool)

(declare-fun tp!931101 () Bool)

(assert (=> b!2901824 (= e!1832490 tp!931101)))

(assert (= (and b!2901565 (is-ElementMatch!8864 (reg!9193 (regTwo!18241 r!23079)))) b!2901822))

(assert (= (and b!2901565 (is-Concat!14185 (reg!9193 (regTwo!18241 r!23079)))) b!2901823))

(assert (= (and b!2901565 (is-Star!8864 (reg!9193 (regTwo!18241 r!23079)))) b!2901824))

(assert (= (and b!2901565 (is-Union!8864 (reg!9193 (regTwo!18241 r!23079)))) b!2901825))

(declare-fun b!2901827 () Bool)

(declare-fun e!1832491 () Bool)

(declare-fun tp!931105 () Bool)

(declare-fun tp!931108 () Bool)

(assert (=> b!2901827 (= e!1832491 (and tp!931105 tp!931108))))

(declare-fun b!2901829 () Bool)

(declare-fun tp!931109 () Bool)

(declare-fun tp!931107 () Bool)

(assert (=> b!2901829 (= e!1832491 (and tp!931109 tp!931107))))

(assert (=> b!2901550 (= tp!931045 e!1832491)))

(declare-fun b!2901826 () Bool)

(assert (=> b!2901826 (= e!1832491 tp_is_empty!15315)))

(declare-fun b!2901828 () Bool)

(declare-fun tp!931106 () Bool)

(assert (=> b!2901828 (= e!1832491 tp!931106)))

(assert (= (and b!2901550 (is-ElementMatch!8864 (regOne!18240 (regOne!18241 r!23079)))) b!2901826))

(assert (= (and b!2901550 (is-Concat!14185 (regOne!18240 (regOne!18241 r!23079)))) b!2901827))

(assert (= (and b!2901550 (is-Star!8864 (regOne!18240 (regOne!18241 r!23079)))) b!2901828))

(assert (= (and b!2901550 (is-Union!8864 (regOne!18240 (regOne!18241 r!23079)))) b!2901829))

(declare-fun b!2901831 () Bool)

(declare-fun e!1832492 () Bool)

(declare-fun tp!931110 () Bool)

(declare-fun tp!931113 () Bool)

(assert (=> b!2901831 (= e!1832492 (and tp!931110 tp!931113))))

(declare-fun b!2901833 () Bool)

(declare-fun tp!931114 () Bool)

(declare-fun tp!931112 () Bool)

(assert (=> b!2901833 (= e!1832492 (and tp!931114 tp!931112))))

(assert (=> b!2901550 (= tp!931048 e!1832492)))

(declare-fun b!2901830 () Bool)

(assert (=> b!2901830 (= e!1832492 tp_is_empty!15315)))

(declare-fun b!2901832 () Bool)

(declare-fun tp!931111 () Bool)

(assert (=> b!2901832 (= e!1832492 tp!931111)))

(assert (= (and b!2901550 (is-ElementMatch!8864 (regTwo!18240 (regOne!18241 r!23079)))) b!2901830))

(assert (= (and b!2901550 (is-Concat!14185 (regTwo!18240 (regOne!18241 r!23079)))) b!2901831))

(assert (= (and b!2901550 (is-Star!8864 (regTwo!18240 (regOne!18241 r!23079)))) b!2901832))

(assert (= (and b!2901550 (is-Union!8864 (regTwo!18240 (regOne!18241 r!23079)))) b!2901833))

(declare-fun b!2901835 () Bool)

(declare-fun e!1832493 () Bool)

(declare-fun tp!931115 () Bool)

(declare-fun tp!931118 () Bool)

(assert (=> b!2901835 (= e!1832493 (and tp!931115 tp!931118))))

(declare-fun b!2901837 () Bool)

(declare-fun tp!931119 () Bool)

(declare-fun tp!931117 () Bool)

(assert (=> b!2901837 (= e!1832493 (and tp!931119 tp!931117))))

(assert (=> b!2901566 (= tp!931054 e!1832493)))

(declare-fun b!2901834 () Bool)

(assert (=> b!2901834 (= e!1832493 tp_is_empty!15315)))

(declare-fun b!2901836 () Bool)

(declare-fun tp!931116 () Bool)

(assert (=> b!2901836 (= e!1832493 tp!931116)))

(assert (= (and b!2901566 (is-ElementMatch!8864 (regOne!18241 (regTwo!18241 r!23079)))) b!2901834))

(assert (= (and b!2901566 (is-Concat!14185 (regOne!18241 (regTwo!18241 r!23079)))) b!2901835))

(assert (= (and b!2901566 (is-Star!8864 (regOne!18241 (regTwo!18241 r!23079)))) b!2901836))

(assert (= (and b!2901566 (is-Union!8864 (regOne!18241 (regTwo!18241 r!23079)))) b!2901837))

(declare-fun b!2901839 () Bool)

(declare-fun e!1832494 () Bool)

(declare-fun tp!931120 () Bool)

(declare-fun tp!931123 () Bool)

(assert (=> b!2901839 (= e!1832494 (and tp!931120 tp!931123))))

(declare-fun b!2901841 () Bool)

(declare-fun tp!931124 () Bool)

(declare-fun tp!931122 () Bool)

(assert (=> b!2901841 (= e!1832494 (and tp!931124 tp!931122))))

(assert (=> b!2901566 (= tp!931052 e!1832494)))

(declare-fun b!2901838 () Bool)

(assert (=> b!2901838 (= e!1832494 tp_is_empty!15315)))

(declare-fun b!2901840 () Bool)

(declare-fun tp!931121 () Bool)

(assert (=> b!2901840 (= e!1832494 tp!931121)))

(assert (= (and b!2901566 (is-ElementMatch!8864 (regTwo!18241 (regTwo!18241 r!23079)))) b!2901838))

(assert (= (and b!2901566 (is-Concat!14185 (regTwo!18241 (regTwo!18241 r!23079)))) b!2901839))

(assert (= (and b!2901566 (is-Star!8864 (regTwo!18241 (regTwo!18241 r!23079)))) b!2901840))

(assert (= (and b!2901566 (is-Union!8864 (regTwo!18241 (regTwo!18241 r!23079)))) b!2901841))

(declare-fun b!2901843 () Bool)

(declare-fun e!1832495 () Bool)

(declare-fun tp!931125 () Bool)

(declare-fun tp!931128 () Bool)

(assert (=> b!2901843 (= e!1832495 (and tp!931125 tp!931128))))

(declare-fun b!2901845 () Bool)

(declare-fun tp!931129 () Bool)

(declare-fun tp!931127 () Bool)

(assert (=> b!2901845 (= e!1832495 (and tp!931129 tp!931127))))

(assert (=> b!2901564 (= tp!931050 e!1832495)))

(declare-fun b!2901842 () Bool)

(assert (=> b!2901842 (= e!1832495 tp_is_empty!15315)))

(declare-fun b!2901844 () Bool)

(declare-fun tp!931126 () Bool)

(assert (=> b!2901844 (= e!1832495 tp!931126)))

(assert (= (and b!2901564 (is-ElementMatch!8864 (regOne!18240 (regTwo!18241 r!23079)))) b!2901842))

(assert (= (and b!2901564 (is-Concat!14185 (regOne!18240 (regTwo!18241 r!23079)))) b!2901843))

(assert (= (and b!2901564 (is-Star!8864 (regOne!18240 (regTwo!18241 r!23079)))) b!2901844))

(assert (= (and b!2901564 (is-Union!8864 (regOne!18240 (regTwo!18241 r!23079)))) b!2901845))

(declare-fun b!2901847 () Bool)

(declare-fun e!1832496 () Bool)

(declare-fun tp!931130 () Bool)

(declare-fun tp!931133 () Bool)

(assert (=> b!2901847 (= e!1832496 (and tp!931130 tp!931133))))

(declare-fun b!2901849 () Bool)

(declare-fun tp!931134 () Bool)

(declare-fun tp!931132 () Bool)

(assert (=> b!2901849 (= e!1832496 (and tp!931134 tp!931132))))

(assert (=> b!2901564 (= tp!931053 e!1832496)))

(declare-fun b!2901846 () Bool)

(assert (=> b!2901846 (= e!1832496 tp_is_empty!15315)))

(declare-fun b!2901848 () Bool)

(declare-fun tp!931131 () Bool)

(assert (=> b!2901848 (= e!1832496 tp!931131)))

(assert (= (and b!2901564 (is-ElementMatch!8864 (regTwo!18240 (regTwo!18241 r!23079)))) b!2901846))

(assert (= (and b!2901564 (is-Concat!14185 (regTwo!18240 (regTwo!18241 r!23079)))) b!2901847))

(assert (= (and b!2901564 (is-Star!8864 (regTwo!18240 (regTwo!18241 r!23079)))) b!2901848))

(assert (= (and b!2901564 (is-Union!8864 (regTwo!18240 (regTwo!18241 r!23079)))) b!2901849))

(declare-fun b!2901851 () Bool)

(declare-fun e!1832497 () Bool)

(declare-fun tp!931135 () Bool)

(declare-fun tp!931138 () Bool)

(assert (=> b!2901851 (= e!1832497 (and tp!931135 tp!931138))))

(declare-fun b!2901853 () Bool)

(declare-fun tp!931139 () Bool)

(declare-fun tp!931137 () Bool)

(assert (=> b!2901853 (= e!1832497 (and tp!931139 tp!931137))))

(assert (=> b!2901576 (= tp!931059 e!1832497)))

(declare-fun b!2901850 () Bool)

(assert (=> b!2901850 (= e!1832497 tp_is_empty!15315)))

(declare-fun b!2901852 () Bool)

(declare-fun tp!931136 () Bool)

(assert (=> b!2901852 (= e!1832497 tp!931136)))

(assert (= (and b!2901576 (is-ElementMatch!8864 (regOne!18241 (regOne!18240 r!23079)))) b!2901850))

(assert (= (and b!2901576 (is-Concat!14185 (regOne!18241 (regOne!18240 r!23079)))) b!2901851))

(assert (= (and b!2901576 (is-Star!8864 (regOne!18241 (regOne!18240 r!23079)))) b!2901852))

(assert (= (and b!2901576 (is-Union!8864 (regOne!18241 (regOne!18240 r!23079)))) b!2901853))

(declare-fun b!2901855 () Bool)

(declare-fun e!1832498 () Bool)

(declare-fun tp!931140 () Bool)

(declare-fun tp!931143 () Bool)

(assert (=> b!2901855 (= e!1832498 (and tp!931140 tp!931143))))

(declare-fun b!2901857 () Bool)

(declare-fun tp!931144 () Bool)

(declare-fun tp!931142 () Bool)

(assert (=> b!2901857 (= e!1832498 (and tp!931144 tp!931142))))

(assert (=> b!2901576 (= tp!931057 e!1832498)))

(declare-fun b!2901854 () Bool)

(assert (=> b!2901854 (= e!1832498 tp_is_empty!15315)))

(declare-fun b!2901856 () Bool)

(declare-fun tp!931141 () Bool)

(assert (=> b!2901856 (= e!1832498 tp!931141)))

(assert (= (and b!2901576 (is-ElementMatch!8864 (regTwo!18241 (regOne!18240 r!23079)))) b!2901854))

(assert (= (and b!2901576 (is-Concat!14185 (regTwo!18241 (regOne!18240 r!23079)))) b!2901855))

(assert (= (and b!2901576 (is-Star!8864 (regTwo!18241 (regOne!18240 r!23079)))) b!2901856))

(assert (= (and b!2901576 (is-Union!8864 (regTwo!18241 (regOne!18240 r!23079)))) b!2901857))

(declare-fun b!2901859 () Bool)

(declare-fun e!1832499 () Bool)

(declare-fun tp!931145 () Bool)

(declare-fun tp!931148 () Bool)

(assert (=> b!2901859 (= e!1832499 (and tp!931145 tp!931148))))

(declare-fun b!2901861 () Bool)

(declare-fun tp!931149 () Bool)

(declare-fun tp!931147 () Bool)

(assert (=> b!2901861 (= e!1832499 (and tp!931149 tp!931147))))

(assert (=> b!2901541 (= tp!931041 e!1832499)))

(declare-fun b!2901858 () Bool)

(assert (=> b!2901858 (= e!1832499 tp_is_empty!15315)))

(declare-fun b!2901860 () Bool)

(declare-fun tp!931146 () Bool)

(assert (=> b!2901860 (= e!1832499 tp!931146)))

(assert (= (and b!2901541 (is-ElementMatch!8864 (reg!9193 (reg!9193 r!23079)))) b!2901858))

(assert (= (and b!2901541 (is-Concat!14185 (reg!9193 (reg!9193 r!23079)))) b!2901859))

(assert (= (and b!2901541 (is-Star!8864 (reg!9193 (reg!9193 r!23079)))) b!2901860))

(assert (= (and b!2901541 (is-Union!8864 (reg!9193 (reg!9193 r!23079)))) b!2901861))

(declare-fun b!2901863 () Bool)

(declare-fun e!1832500 () Bool)

(declare-fun tp!931150 () Bool)

(declare-fun tp!931153 () Bool)

(assert (=> b!2901863 (= e!1832500 (and tp!931150 tp!931153))))

(declare-fun b!2901865 () Bool)

(declare-fun tp!931154 () Bool)

(declare-fun tp!931152 () Bool)

(assert (=> b!2901865 (= e!1832500 (and tp!931154 tp!931152))))

(assert (=> b!2901554 (= tp!931049 e!1832500)))

(declare-fun b!2901862 () Bool)

(assert (=> b!2901862 (= e!1832500 tp_is_empty!15315)))

(declare-fun b!2901864 () Bool)

(declare-fun tp!931151 () Bool)

(assert (=> b!2901864 (= e!1832500 tp!931151)))

(assert (= (and b!2901554 (is-ElementMatch!8864 (regOne!18241 (regOne!18241 r!23079)))) b!2901862))

(assert (= (and b!2901554 (is-Concat!14185 (regOne!18241 (regOne!18241 r!23079)))) b!2901863))

(assert (= (and b!2901554 (is-Star!8864 (regOne!18241 (regOne!18241 r!23079)))) b!2901864))

(assert (= (and b!2901554 (is-Union!8864 (regOne!18241 (regOne!18241 r!23079)))) b!2901865))

(declare-fun b!2901867 () Bool)

(declare-fun e!1832501 () Bool)

(declare-fun tp!931155 () Bool)

(declare-fun tp!931158 () Bool)

(assert (=> b!2901867 (= e!1832501 (and tp!931155 tp!931158))))

(declare-fun b!2901869 () Bool)

(declare-fun tp!931159 () Bool)

(declare-fun tp!931157 () Bool)

(assert (=> b!2901869 (= e!1832501 (and tp!931159 tp!931157))))

(assert (=> b!2901554 (= tp!931047 e!1832501)))

(declare-fun b!2901866 () Bool)

(assert (=> b!2901866 (= e!1832501 tp_is_empty!15315)))

(declare-fun b!2901868 () Bool)

(declare-fun tp!931156 () Bool)

(assert (=> b!2901868 (= e!1832501 tp!931156)))

(assert (= (and b!2901554 (is-ElementMatch!8864 (regTwo!18241 (regOne!18241 r!23079)))) b!2901866))

(assert (= (and b!2901554 (is-Concat!14185 (regTwo!18241 (regOne!18241 r!23079)))) b!2901867))

(assert (= (and b!2901554 (is-Star!8864 (regTwo!18241 (regOne!18241 r!23079)))) b!2901868))

(assert (= (and b!2901554 (is-Union!8864 (regTwo!18241 (regOne!18241 r!23079)))) b!2901869))

(declare-fun b!2901871 () Bool)

(declare-fun e!1832502 () Bool)

(declare-fun tp!931160 () Bool)

(declare-fun tp!931163 () Bool)

(assert (=> b!2901871 (= e!1832502 (and tp!931160 tp!931163))))

(declare-fun b!2901873 () Bool)

(declare-fun tp!931164 () Bool)

(declare-fun tp!931162 () Bool)

(assert (=> b!2901873 (= e!1832502 (and tp!931164 tp!931162))))

(assert (=> b!2901540 (= tp!931040 e!1832502)))

(declare-fun b!2901870 () Bool)

(assert (=> b!2901870 (= e!1832502 tp_is_empty!15315)))

(declare-fun b!2901872 () Bool)

(declare-fun tp!931161 () Bool)

(assert (=> b!2901872 (= e!1832502 tp!931161)))

(assert (= (and b!2901540 (is-ElementMatch!8864 (regOne!18240 (reg!9193 r!23079)))) b!2901870))

(assert (= (and b!2901540 (is-Concat!14185 (regOne!18240 (reg!9193 r!23079)))) b!2901871))

(assert (= (and b!2901540 (is-Star!8864 (regOne!18240 (reg!9193 r!23079)))) b!2901872))

(assert (= (and b!2901540 (is-Union!8864 (regOne!18240 (reg!9193 r!23079)))) b!2901873))

(declare-fun b!2901875 () Bool)

(declare-fun e!1832503 () Bool)

(declare-fun tp!931165 () Bool)

(declare-fun tp!931168 () Bool)

(assert (=> b!2901875 (= e!1832503 (and tp!931165 tp!931168))))

(declare-fun b!2901877 () Bool)

(declare-fun tp!931169 () Bool)

(declare-fun tp!931167 () Bool)

(assert (=> b!2901877 (= e!1832503 (and tp!931169 tp!931167))))

(assert (=> b!2901540 (= tp!931043 e!1832503)))

(declare-fun b!2901874 () Bool)

(assert (=> b!2901874 (= e!1832503 tp_is_empty!15315)))

(declare-fun b!2901876 () Bool)

(declare-fun tp!931166 () Bool)

(assert (=> b!2901876 (= e!1832503 tp!931166)))

(assert (= (and b!2901540 (is-ElementMatch!8864 (regTwo!18240 (reg!9193 r!23079)))) b!2901874))

(assert (= (and b!2901540 (is-Concat!14185 (regTwo!18240 (reg!9193 r!23079)))) b!2901875))

(assert (= (and b!2901540 (is-Star!8864 (regTwo!18240 (reg!9193 r!23079)))) b!2901876))

(assert (= (and b!2901540 (is-Union!8864 (regTwo!18240 (reg!9193 r!23079)))) b!2901877))

(declare-fun b!2901889 () Bool)

(declare-fun e!1832509 () Bool)

(declare-fun tp!931170 () Bool)

(declare-fun tp!931173 () Bool)

(assert (=> b!2901889 (= e!1832509 (and tp!931170 tp!931173))))

(declare-fun b!2901891 () Bool)

(declare-fun tp!931174 () Bool)

(declare-fun tp!931172 () Bool)

(assert (=> b!2901891 (= e!1832509 (and tp!931174 tp!931172))))

(assert (=> b!2901580 (= tp!931064 e!1832509)))

(declare-fun b!2901888 () Bool)

(assert (=> b!2901888 (= e!1832509 tp_is_empty!15315)))

(declare-fun b!2901890 () Bool)

(declare-fun tp!931171 () Bool)

(assert (=> b!2901890 (= e!1832509 tp!931171)))

(assert (= (and b!2901580 (is-ElementMatch!8864 (regOne!18241 (regTwo!18240 r!23079)))) b!2901888))

(assert (= (and b!2901580 (is-Concat!14185 (regOne!18241 (regTwo!18240 r!23079)))) b!2901889))

(assert (= (and b!2901580 (is-Star!8864 (regOne!18241 (regTwo!18240 r!23079)))) b!2901890))

(assert (= (and b!2901580 (is-Union!8864 (regOne!18241 (regTwo!18240 r!23079)))) b!2901891))

(declare-fun b!2901893 () Bool)

(declare-fun e!1832510 () Bool)

(declare-fun tp!931175 () Bool)

(declare-fun tp!931178 () Bool)

(assert (=> b!2901893 (= e!1832510 (and tp!931175 tp!931178))))

(declare-fun b!2901895 () Bool)

(declare-fun tp!931179 () Bool)

(declare-fun tp!931177 () Bool)

(assert (=> b!2901895 (= e!1832510 (and tp!931179 tp!931177))))

(assert (=> b!2901580 (= tp!931062 e!1832510)))

(declare-fun b!2901892 () Bool)

(assert (=> b!2901892 (= e!1832510 tp_is_empty!15315)))

(declare-fun b!2901894 () Bool)

(declare-fun tp!931176 () Bool)

(assert (=> b!2901894 (= e!1832510 tp!931176)))

(assert (= (and b!2901580 (is-ElementMatch!8864 (regTwo!18241 (regTwo!18240 r!23079)))) b!2901892))

(assert (= (and b!2901580 (is-Concat!14185 (regTwo!18241 (regTwo!18240 r!23079)))) b!2901893))

(assert (= (and b!2901580 (is-Star!8864 (regTwo!18241 (regTwo!18240 r!23079)))) b!2901894))

(assert (= (and b!2901580 (is-Union!8864 (regTwo!18241 (regTwo!18240 r!23079)))) b!2901895))

(declare-fun b!2901897 () Bool)

(declare-fun e!1832511 () Bool)

(declare-fun tp!931180 () Bool)

(declare-fun tp!931183 () Bool)

(assert (=> b!2901897 (= e!1832511 (and tp!931180 tp!931183))))

(declare-fun b!2901899 () Bool)

(declare-fun tp!931184 () Bool)

(declare-fun tp!931182 () Bool)

(assert (=> b!2901899 (= e!1832511 (and tp!931184 tp!931182))))

(assert (=> b!2901542 (= tp!931044 e!1832511)))

(declare-fun b!2901896 () Bool)

(assert (=> b!2901896 (= e!1832511 tp_is_empty!15315)))

(declare-fun b!2901898 () Bool)

(declare-fun tp!931181 () Bool)

(assert (=> b!2901898 (= e!1832511 tp!931181)))

(assert (= (and b!2901542 (is-ElementMatch!8864 (regOne!18241 (reg!9193 r!23079)))) b!2901896))

(assert (= (and b!2901542 (is-Concat!14185 (regOne!18241 (reg!9193 r!23079)))) b!2901897))

(assert (= (and b!2901542 (is-Star!8864 (regOne!18241 (reg!9193 r!23079)))) b!2901898))

(assert (= (and b!2901542 (is-Union!8864 (regOne!18241 (reg!9193 r!23079)))) b!2901899))

(declare-fun b!2901901 () Bool)

(declare-fun e!1832512 () Bool)

(declare-fun tp!931185 () Bool)

(declare-fun tp!931188 () Bool)

(assert (=> b!2901901 (= e!1832512 (and tp!931185 tp!931188))))

(declare-fun b!2901903 () Bool)

(declare-fun tp!931189 () Bool)

(declare-fun tp!931187 () Bool)

(assert (=> b!2901903 (= e!1832512 (and tp!931189 tp!931187))))

(assert (=> b!2901542 (= tp!931042 e!1832512)))

(declare-fun b!2901900 () Bool)

(assert (=> b!2901900 (= e!1832512 tp_is_empty!15315)))

(declare-fun b!2901902 () Bool)

(declare-fun tp!931186 () Bool)

(assert (=> b!2901902 (= e!1832512 tp!931186)))

(assert (= (and b!2901542 (is-ElementMatch!8864 (regTwo!18241 (reg!9193 r!23079)))) b!2901900))

(assert (= (and b!2901542 (is-Concat!14185 (regTwo!18241 (reg!9193 r!23079)))) b!2901901))

(assert (= (and b!2901542 (is-Star!8864 (regTwo!18241 (reg!9193 r!23079)))) b!2901902))

(assert (= (and b!2901542 (is-Union!8864 (regTwo!18241 (reg!9193 r!23079)))) b!2901903))

(declare-fun b!2901905 () Bool)

(declare-fun e!1832513 () Bool)

(declare-fun tp!931190 () Bool)

(declare-fun tp!931193 () Bool)

(assert (=> b!2901905 (= e!1832513 (and tp!931190 tp!931193))))

(declare-fun b!2901907 () Bool)

(declare-fun tp!931194 () Bool)

(declare-fun tp!931192 () Bool)

(assert (=> b!2901907 (= e!1832513 (and tp!931194 tp!931192))))

(assert (=> b!2901552 (= tp!931046 e!1832513)))

(declare-fun b!2901904 () Bool)

(assert (=> b!2901904 (= e!1832513 tp_is_empty!15315)))

(declare-fun b!2901906 () Bool)

(declare-fun tp!931191 () Bool)

(assert (=> b!2901906 (= e!1832513 tp!931191)))

(assert (= (and b!2901552 (is-ElementMatch!8864 (reg!9193 (regOne!18241 r!23079)))) b!2901904))

(assert (= (and b!2901552 (is-Concat!14185 (reg!9193 (regOne!18241 r!23079)))) b!2901905))

(assert (= (and b!2901552 (is-Star!8864 (reg!9193 (regOne!18241 r!23079)))) b!2901906))

(assert (= (and b!2901552 (is-Union!8864 (reg!9193 (regOne!18241 r!23079)))) b!2901907))

(declare-fun b!2901909 () Bool)

(declare-fun e!1832514 () Bool)

(declare-fun tp!931195 () Bool)

(declare-fun tp!931198 () Bool)

(assert (=> b!2901909 (= e!1832514 (and tp!931195 tp!931198))))

(declare-fun b!2901911 () Bool)

(declare-fun tp!931199 () Bool)

(declare-fun tp!931197 () Bool)

(assert (=> b!2901911 (= e!1832514 (and tp!931199 tp!931197))))

(assert (=> b!2901578 (= tp!931060 e!1832514)))

(declare-fun b!2901908 () Bool)

(assert (=> b!2901908 (= e!1832514 tp_is_empty!15315)))

(declare-fun b!2901910 () Bool)

(declare-fun tp!931196 () Bool)

(assert (=> b!2901910 (= e!1832514 tp!931196)))

(assert (= (and b!2901578 (is-ElementMatch!8864 (regOne!18240 (regTwo!18240 r!23079)))) b!2901908))

(assert (= (and b!2901578 (is-Concat!14185 (regOne!18240 (regTwo!18240 r!23079)))) b!2901909))

(assert (= (and b!2901578 (is-Star!8864 (regOne!18240 (regTwo!18240 r!23079)))) b!2901910))

(assert (= (and b!2901578 (is-Union!8864 (regOne!18240 (regTwo!18240 r!23079)))) b!2901911))

(declare-fun b!2901913 () Bool)

(declare-fun e!1832515 () Bool)

(declare-fun tp!931200 () Bool)

(declare-fun tp!931203 () Bool)

(assert (=> b!2901913 (= e!1832515 (and tp!931200 tp!931203))))

(declare-fun b!2901915 () Bool)

(declare-fun tp!931204 () Bool)

(declare-fun tp!931202 () Bool)

(assert (=> b!2901915 (= e!1832515 (and tp!931204 tp!931202))))

(assert (=> b!2901578 (= tp!931063 e!1832515)))

(declare-fun b!2901912 () Bool)

(assert (=> b!2901912 (= e!1832515 tp_is_empty!15315)))

(declare-fun b!2901914 () Bool)

(declare-fun tp!931201 () Bool)

(assert (=> b!2901914 (= e!1832515 tp!931201)))

(assert (= (and b!2901578 (is-ElementMatch!8864 (regTwo!18240 (regTwo!18240 r!23079)))) b!2901912))

(assert (= (and b!2901578 (is-Concat!14185 (regTwo!18240 (regTwo!18240 r!23079)))) b!2901913))

(assert (= (and b!2901578 (is-Star!8864 (regTwo!18240 (regTwo!18240 r!23079)))) b!2901914))

(assert (= (and b!2901578 (is-Union!8864 (regTwo!18240 (regTwo!18240 r!23079)))) b!2901915))

(declare-fun b!2901917 () Bool)

(declare-fun e!1832516 () Bool)

(declare-fun tp!931205 () Bool)

(declare-fun tp!931208 () Bool)

(assert (=> b!2901917 (= e!1832516 (and tp!931205 tp!931208))))

(declare-fun b!2901919 () Bool)

(declare-fun tp!931209 () Bool)

(declare-fun tp!931207 () Bool)

(assert (=> b!2901919 (= e!1832516 (and tp!931209 tp!931207))))

(assert (=> b!2901575 (= tp!931056 e!1832516)))

(declare-fun b!2901916 () Bool)

(assert (=> b!2901916 (= e!1832516 tp_is_empty!15315)))

(declare-fun b!2901918 () Bool)

(declare-fun tp!931206 () Bool)

(assert (=> b!2901918 (= e!1832516 tp!931206)))

(assert (= (and b!2901575 (is-ElementMatch!8864 (reg!9193 (regOne!18240 r!23079)))) b!2901916))

(assert (= (and b!2901575 (is-Concat!14185 (reg!9193 (regOne!18240 r!23079)))) b!2901917))

(assert (= (and b!2901575 (is-Star!8864 (reg!9193 (regOne!18240 r!23079)))) b!2901918))

(assert (= (and b!2901575 (is-Union!8864 (reg!9193 (regOne!18240 r!23079)))) b!2901919))

(declare-fun b!2901921 () Bool)

(declare-fun e!1832517 () Bool)

(declare-fun tp!931210 () Bool)

(declare-fun tp!931213 () Bool)

(assert (=> b!2901921 (= e!1832517 (and tp!931210 tp!931213))))

(declare-fun b!2901923 () Bool)

(declare-fun tp!931214 () Bool)

(declare-fun tp!931212 () Bool)

(assert (=> b!2901923 (= e!1832517 (and tp!931214 tp!931212))))

(assert (=> b!2901574 (= tp!931055 e!1832517)))

(declare-fun b!2901920 () Bool)

(assert (=> b!2901920 (= e!1832517 tp_is_empty!15315)))

(declare-fun b!2901922 () Bool)

(declare-fun tp!931211 () Bool)

(assert (=> b!2901922 (= e!1832517 tp!931211)))

(assert (= (and b!2901574 (is-ElementMatch!8864 (regOne!18240 (regOne!18240 r!23079)))) b!2901920))

(assert (= (and b!2901574 (is-Concat!14185 (regOne!18240 (regOne!18240 r!23079)))) b!2901921))

(assert (= (and b!2901574 (is-Star!8864 (regOne!18240 (regOne!18240 r!23079)))) b!2901922))

(assert (= (and b!2901574 (is-Union!8864 (regOne!18240 (regOne!18240 r!23079)))) b!2901923))

(declare-fun b!2901925 () Bool)

(declare-fun e!1832518 () Bool)

(declare-fun tp!931215 () Bool)

(declare-fun tp!931218 () Bool)

(assert (=> b!2901925 (= e!1832518 (and tp!931215 tp!931218))))

(declare-fun b!2901927 () Bool)

(declare-fun tp!931219 () Bool)

(declare-fun tp!931217 () Bool)

(assert (=> b!2901927 (= e!1832518 (and tp!931219 tp!931217))))

(assert (=> b!2901574 (= tp!931058 e!1832518)))

(declare-fun b!2901924 () Bool)

(assert (=> b!2901924 (= e!1832518 tp_is_empty!15315)))

(declare-fun b!2901926 () Bool)

(declare-fun tp!931216 () Bool)

(assert (=> b!2901926 (= e!1832518 tp!931216)))

(assert (= (and b!2901574 (is-ElementMatch!8864 (regTwo!18240 (regOne!18240 r!23079)))) b!2901924))

(assert (= (and b!2901574 (is-Concat!14185 (regTwo!18240 (regOne!18240 r!23079)))) b!2901925))

(assert (= (and b!2901574 (is-Star!8864 (regTwo!18240 (regOne!18240 r!23079)))) b!2901926))

(assert (= (and b!2901574 (is-Union!8864 (regTwo!18240 (regOne!18240 r!23079)))) b!2901927))

(declare-fun b!2901929 () Bool)

(declare-fun e!1832519 () Bool)

(declare-fun tp!931220 () Bool)

(declare-fun tp!931223 () Bool)

(assert (=> b!2901929 (= e!1832519 (and tp!931220 tp!931223))))

(declare-fun b!2901931 () Bool)

(declare-fun tp!931224 () Bool)

(declare-fun tp!931222 () Bool)

(assert (=> b!2901931 (= e!1832519 (and tp!931224 tp!931222))))

(assert (=> b!2901579 (= tp!931061 e!1832519)))

(declare-fun b!2901928 () Bool)

(assert (=> b!2901928 (= e!1832519 tp_is_empty!15315)))

(declare-fun b!2901930 () Bool)

(declare-fun tp!931221 () Bool)

(assert (=> b!2901930 (= e!1832519 tp!931221)))

(assert (= (and b!2901579 (is-ElementMatch!8864 (reg!9193 (regTwo!18240 r!23079)))) b!2901928))

(assert (= (and b!2901579 (is-Concat!14185 (reg!9193 (regTwo!18240 r!23079)))) b!2901929))

(assert (= (and b!2901579 (is-Star!8864 (reg!9193 (regTwo!18240 r!23079)))) b!2901930))

(assert (= (and b!2901579 (is-Union!8864 (reg!9193 (regTwo!18240 r!23079)))) b!2901931))

(push 1)

(assert (not b!2901631))

(assert (not b!2901813))

(assert (not b!2901856))

(assert (not b!2901867))

(assert (not bm!189083))

(assert (not bm!189084))

(assert (not b!2901875))

(assert (not bm!189103))

(assert (not b!2901901))

(assert (not d!835538))

(assert (not b!2901907))

(assert (not b!2901915))

(assert (not b!2901839))

(assert (not b!2901890))

(assert (not b!2901927))

(assert (not b!2901903))

(assert (not b!2901894))

(assert (not b!2901877))

(assert (not b!2901658))

(assert (not b!2901713))

(assert (not b!2901930))

(assert (not b!2901918))

(assert (not b!2901857))

(assert (not d!835532))

(assert (not b!2901835))

(assert (not b!2901823))

(assert (not b!2901736))

(assert (not b!2901653))

(assert (not bm!189117))

(assert (not bm!189110))

(assert (not bm!189104))

(assert (not d!835510))

(assert (not bm!189097))

(assert tp_is_empty!15315)

(assert (not b!2901914))

(assert (not b!2901852))

(assert (not b!2901855))

(assert (not b!2901899))

(assert (not b!2901913))

(assert (not b!2901925))

(assert (not b!2901906))

(assert (not b!2901660))

(assert (not bm!189111))

(assert (not b!2901848))

(assert (not b!2901836))

(assert (not b!2901794))

(assert (not bm!189085))

(assert (not b!2901871))

(assert (not b!2901863))

(assert (not bm!189099))

(assert (not b!2901840))

(assert (not b!2901831))

(assert (not b!2901755))

(assert (not b!2901833))

(assert (not b!2901869))

(assert (not b!2901860))

(assert (not b!2901865))

(assert (not d!835506))

(assert (not b!2901919))

(assert (not b!2901895))

(assert (not b!2901844))

(assert (not b!2901656))

(assert (not b!2901873))

(assert (not b!2901889))

(assert (not b!2901868))

(assert (not b!2901891))

(assert (not b!2901902))

(assert (not b!2901876))

(assert (not b!2901662))

(assert (not bm!189105))

(assert (not b!2901845))

(assert (not b!2901926))

(assert (not b!2901847))

(assert (not b!2901859))

(assert (not b!2901922))

(assert (not b!2901764))

(assert (not b!2901803))

(assert (not bm!189102))

(assert (not b!2901837))

(assert (not d!835514))

(assert (not d!835512))

(assert (not b!2901893))

(assert (not b!2901909))

(assert (not b!2901921))

(assert (not b!2901829))

(assert (not b!2901898))

(assert (not bm!189081))

(assert (not b!2901910))

(assert (not b!2901641))

(assert (not b!2901851))

(assert (not b!2901652))

(assert (not b!2901931))

(assert (not b!2901911))

(assert (not b!2901853))

(assert (not b!2901754))

(assert (not b!2901843))

(assert (not b!2901841))

(assert (not bm!189080))

(assert (not b!2901864))

(assert (not b!2901861))

(assert (not b!2901905))

(assert (not b!2901923))

(assert (not b!2901872))

(assert (not b!2901825))

(assert (not b!2901832))

(assert (not b!2901827))

(assert (not b!2901917))

(assert (not bm!189118))

(assert (not b!2901795))

(assert (not b!2901828))

(assert (not b!2901824))

(assert (not b!2901849))

(assert (not b!2901897))

(assert (not b!2901929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

