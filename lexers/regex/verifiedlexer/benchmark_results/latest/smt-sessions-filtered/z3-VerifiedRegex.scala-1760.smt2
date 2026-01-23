; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87966 () Bool)

(assert start!87966)

(declare-fun b!1002181 () Bool)

(declare-fun e!642337 () Bool)

(declare-fun tp_is_empty!5201 () Bool)

(assert (=> b!1002181 (= e!642337 tp_is_empty!5201)))

(declare-fun b!1002182 () Bool)

(declare-fun e!642335 () Bool)

(declare-fun e!642334 () Bool)

(assert (=> b!1002182 (= e!642335 (not e!642334))))

(declare-fun res!452435 () Bool)

(assert (=> b!1002182 (=> res!452435 e!642334)))

(declare-fun lt!352191 () Bool)

(declare-datatypes ((C!6128 0))(
  ( (C!6129 (val!3312 Int)) )
))
(declare-datatypes ((Regex!2779 0))(
  ( (ElementMatch!2779 (c!165084 C!6128)) (Concat!4612 (regOne!6070 Regex!2779) (regTwo!6070 Regex!2779)) (EmptyExpr!2779) (Star!2779 (reg!3108 Regex!2779)) (EmptyLang!2779) (Union!2779 (regOne!6071 Regex!2779) (regTwo!6071 Regex!2779)) )
))
(declare-fun r!15766 () Regex!2779)

(get-info :version)

(assert (=> b!1002182 (= res!452435 (or (not lt!352191) (and ((_ is Concat!4612) r!15766) ((_ is EmptyExpr!2779) (regOne!6070 r!15766))) (and ((_ is Concat!4612) r!15766) ((_ is EmptyExpr!2779) (regTwo!6070 r!15766))) ((_ is Concat!4612) r!15766) ((_ is Union!2779) r!15766) (not ((_ is Star!2779) r!15766))))))

(declare-datatypes ((List!10009 0))(
  ( (Nil!9993) (Cons!9993 (h!15394 C!6128) (t!101055 List!10009)) )
))
(declare-fun s!10566 () List!10009)

(declare-fun matchRSpec!578 (Regex!2779 List!10009) Bool)

(assert (=> b!1002182 (= lt!352191 (matchRSpec!578 r!15766 s!10566))))

(declare-fun matchR!1315 (Regex!2779 List!10009) Bool)

(assert (=> b!1002182 (= lt!352191 (matchR!1315 r!15766 s!10566))))

(declare-datatypes ((Unit!15217 0))(
  ( (Unit!15218) )
))
(declare-fun lt!352190 () Unit!15217)

(declare-fun mainMatchTheorem!578 (Regex!2779 List!10009) Unit!15217)

(assert (=> b!1002182 (= lt!352190 (mainMatchTheorem!578 r!15766 s!10566))))

(declare-fun b!1002184 () Bool)

(declare-fun e!642336 () Bool)

(declare-fun tp!305188 () Bool)

(assert (=> b!1002184 (= e!642336 (and tp_is_empty!5201 tp!305188))))

(declare-fun b!1002185 () Bool)

(declare-fun tp!305187 () Bool)

(assert (=> b!1002185 (= e!642337 tp!305187)))

(declare-fun b!1002186 () Bool)

(declare-fun validRegex!1248 (Regex!2779) Bool)

(assert (=> b!1002186 (= e!642334 (validRegex!1248 (reg!3108 r!15766)))))

(declare-fun b!1002187 () Bool)

(declare-fun tp!305186 () Bool)

(declare-fun tp!305183 () Bool)

(assert (=> b!1002187 (= e!642337 (and tp!305186 tp!305183))))

(declare-fun b!1002183 () Bool)

(declare-fun tp!305184 () Bool)

(declare-fun tp!305185 () Bool)

(assert (=> b!1002183 (= e!642337 (and tp!305184 tp!305185))))

(declare-fun res!452436 () Bool)

(assert (=> start!87966 (=> (not res!452436) (not e!642335))))

(assert (=> start!87966 (= res!452436 (validRegex!1248 r!15766))))

(assert (=> start!87966 e!642335))

(assert (=> start!87966 e!642337))

(assert (=> start!87966 e!642336))

(assert (= (and start!87966 res!452436) b!1002182))

(assert (= (and b!1002182 (not res!452435)) b!1002186))

(assert (= (and start!87966 ((_ is ElementMatch!2779) r!15766)) b!1002181))

(assert (= (and start!87966 ((_ is Concat!4612) r!15766)) b!1002183))

(assert (= (and start!87966 ((_ is Star!2779) r!15766)) b!1002185))

(assert (= (and start!87966 ((_ is Union!2779) r!15766)) b!1002187))

(assert (= (and start!87966 ((_ is Cons!9993) s!10566)) b!1002184))

(declare-fun m!1190491 () Bool)

(assert (=> b!1002182 m!1190491))

(declare-fun m!1190493 () Bool)

(assert (=> b!1002182 m!1190493))

(declare-fun m!1190495 () Bool)

(assert (=> b!1002182 m!1190495))

(declare-fun m!1190497 () Bool)

(assert (=> b!1002186 m!1190497))

(declare-fun m!1190499 () Bool)

(assert (=> start!87966 m!1190499))

(check-sat (not b!1002183) tp_is_empty!5201 (not b!1002185) (not b!1002187) (not b!1002182) (not b!1002184) (not b!1002186) (not start!87966))
(check-sat)
(get-model)

(declare-fun bm!66748 () Bool)

(declare-fun call!66756 () Bool)

(declare-fun c!165097 () Bool)

(assert (=> bm!66748 (= call!66756 (validRegex!1248 (ite c!165097 (regTwo!6071 r!15766) (regTwo!6070 r!15766))))))

(declare-fun b!1002239 () Bool)

(declare-fun e!642384 () Bool)

(assert (=> b!1002239 (= e!642384 call!66756)))

(declare-fun d!291427 () Bool)

(declare-fun res!452466 () Bool)

(declare-fun e!642380 () Bool)

(assert (=> d!291427 (=> res!452466 e!642380)))

(assert (=> d!291427 (= res!452466 ((_ is ElementMatch!2779) r!15766))))

(assert (=> d!291427 (= (validRegex!1248 r!15766) e!642380)))

(declare-fun b!1002241 () Bool)

(declare-fun e!642382 () Bool)

(assert (=> b!1002241 (= e!642382 e!642384)))

(declare-fun res!452462 () Bool)

(assert (=> b!1002241 (=> (not res!452462) (not e!642384))))

(declare-fun call!66755 () Bool)

(assert (=> b!1002241 (= res!452462 call!66755)))

(declare-fun b!1002243 () Bool)

(declare-fun e!642386 () Bool)

(declare-fun call!66753 () Bool)

(assert (=> b!1002243 (= e!642386 call!66753)))

(declare-fun b!1002245 () Bool)

(declare-fun res!452470 () Bool)

(assert (=> b!1002245 (=> res!452470 e!642382)))

(assert (=> b!1002245 (= res!452470 (not ((_ is Concat!4612) r!15766)))))

(declare-fun e!642377 () Bool)

(assert (=> b!1002245 (= e!642377 e!642382)))

(declare-fun b!1002246 () Bool)

(declare-fun e!642379 () Bool)

(assert (=> b!1002246 (= e!642379 e!642377)))

(assert (=> b!1002246 (= c!165097 ((_ is Union!2779) r!15766))))

(declare-fun b!1002247 () Bool)

(assert (=> b!1002247 (= e!642380 e!642379)))

(declare-fun c!165098 () Bool)

(assert (=> b!1002247 (= c!165098 ((_ is Star!2779) r!15766))))

(declare-fun b!1002248 () Bool)

(assert (=> b!1002248 (= e!642379 e!642386)))

(declare-fun res!452471 () Bool)

(declare-fun nullable!893 (Regex!2779) Bool)

(assert (=> b!1002248 (= res!452471 (not (nullable!893 (reg!3108 r!15766))))))

(assert (=> b!1002248 (=> (not res!452471) (not e!642386))))

(declare-fun bm!66750 () Bool)

(assert (=> bm!66750 (= call!66755 call!66753)))

(declare-fun bm!66751 () Bool)

(assert (=> bm!66751 (= call!66753 (validRegex!1248 (ite c!165098 (reg!3108 r!15766) (ite c!165097 (regOne!6071 r!15766) (regOne!6070 r!15766)))))))

(declare-fun b!1002249 () Bool)

(declare-fun res!452469 () Bool)

(declare-fun e!642385 () Bool)

(assert (=> b!1002249 (=> (not res!452469) (not e!642385))))

(assert (=> b!1002249 (= res!452469 call!66755)))

(assert (=> b!1002249 (= e!642377 e!642385)))

(declare-fun b!1002250 () Bool)

(assert (=> b!1002250 (= e!642385 call!66756)))

(assert (= (and d!291427 (not res!452466)) b!1002247))

(assert (= (and b!1002247 c!165098) b!1002248))

(assert (= (and b!1002247 (not c!165098)) b!1002246))

(assert (= (and b!1002248 res!452471) b!1002243))

(assert (= (and b!1002246 c!165097) b!1002249))

(assert (= (and b!1002246 (not c!165097)) b!1002245))

(assert (= (and b!1002249 res!452469) b!1002250))

(assert (= (and b!1002245 (not res!452470)) b!1002241))

(assert (= (and b!1002241 res!452462) b!1002239))

(assert (= (or b!1002250 b!1002239) bm!66748))

(assert (= (or b!1002249 b!1002241) bm!66750))

(assert (= (or b!1002243 bm!66750) bm!66751))

(declare-fun m!1190513 () Bool)

(assert (=> bm!66748 m!1190513))

(declare-fun m!1190515 () Bool)

(assert (=> b!1002248 m!1190515))

(declare-fun m!1190517 () Bool)

(assert (=> bm!66751 m!1190517))

(assert (=> start!87966 d!291427))

(declare-fun bm!66752 () Bool)

(declare-fun call!66759 () Bool)

(declare-fun c!165099 () Bool)

(assert (=> bm!66752 (= call!66759 (validRegex!1248 (ite c!165099 (regTwo!6071 (reg!3108 r!15766)) (regTwo!6070 (reg!3108 r!15766)))))))

(declare-fun b!1002251 () Bool)

(declare-fun e!642391 () Bool)

(assert (=> b!1002251 (= e!642391 call!66759)))

(declare-fun d!291433 () Bool)

(declare-fun res!452473 () Bool)

(declare-fun e!642389 () Bool)

(assert (=> d!291433 (=> res!452473 e!642389)))

(assert (=> d!291433 (= res!452473 ((_ is ElementMatch!2779) (reg!3108 r!15766)))))

(assert (=> d!291433 (= (validRegex!1248 (reg!3108 r!15766)) e!642389)))

(declare-fun b!1002252 () Bool)

(declare-fun e!642390 () Bool)

(assert (=> b!1002252 (= e!642390 e!642391)))

(declare-fun res!452472 () Bool)

(assert (=> b!1002252 (=> (not res!452472) (not e!642391))))

(declare-fun call!66758 () Bool)

(assert (=> b!1002252 (= res!452472 call!66758)))

(declare-fun b!1002253 () Bool)

(declare-fun e!642393 () Bool)

(declare-fun call!66757 () Bool)

(assert (=> b!1002253 (= e!642393 call!66757)))

(declare-fun b!1002254 () Bool)

(declare-fun res!452475 () Bool)

(assert (=> b!1002254 (=> res!452475 e!642390)))

(assert (=> b!1002254 (= res!452475 (not ((_ is Concat!4612) (reg!3108 r!15766))))))

(declare-fun e!642387 () Bool)

(assert (=> b!1002254 (= e!642387 e!642390)))

(declare-fun b!1002255 () Bool)

(declare-fun e!642388 () Bool)

(assert (=> b!1002255 (= e!642388 e!642387)))

(assert (=> b!1002255 (= c!165099 ((_ is Union!2779) (reg!3108 r!15766)))))

(declare-fun b!1002256 () Bool)

(assert (=> b!1002256 (= e!642389 e!642388)))

(declare-fun c!165100 () Bool)

(assert (=> b!1002256 (= c!165100 ((_ is Star!2779) (reg!3108 r!15766)))))

(declare-fun b!1002257 () Bool)

(assert (=> b!1002257 (= e!642388 e!642393)))

(declare-fun res!452476 () Bool)

(assert (=> b!1002257 (= res!452476 (not (nullable!893 (reg!3108 (reg!3108 r!15766)))))))

(assert (=> b!1002257 (=> (not res!452476) (not e!642393))))

(declare-fun bm!66753 () Bool)

(assert (=> bm!66753 (= call!66758 call!66757)))

(declare-fun bm!66754 () Bool)

(assert (=> bm!66754 (= call!66757 (validRegex!1248 (ite c!165100 (reg!3108 (reg!3108 r!15766)) (ite c!165099 (regOne!6071 (reg!3108 r!15766)) (regOne!6070 (reg!3108 r!15766))))))))

(declare-fun b!1002258 () Bool)

(declare-fun res!452474 () Bool)

(declare-fun e!642392 () Bool)

(assert (=> b!1002258 (=> (not res!452474) (not e!642392))))

(assert (=> b!1002258 (= res!452474 call!66758)))

(assert (=> b!1002258 (= e!642387 e!642392)))

(declare-fun b!1002259 () Bool)

(assert (=> b!1002259 (= e!642392 call!66759)))

(assert (= (and d!291433 (not res!452473)) b!1002256))

(assert (= (and b!1002256 c!165100) b!1002257))

(assert (= (and b!1002256 (not c!165100)) b!1002255))

(assert (= (and b!1002257 res!452476) b!1002253))

(assert (= (and b!1002255 c!165099) b!1002258))

(assert (= (and b!1002255 (not c!165099)) b!1002254))

(assert (= (and b!1002258 res!452474) b!1002259))

(assert (= (and b!1002254 (not res!452475)) b!1002252))

(assert (= (and b!1002252 res!452472) b!1002251))

(assert (= (or b!1002259 b!1002251) bm!66752))

(assert (= (or b!1002258 b!1002252) bm!66753))

(assert (= (or b!1002253 bm!66753) bm!66754))

(declare-fun m!1190519 () Bool)

(assert (=> bm!66752 m!1190519))

(declare-fun m!1190521 () Bool)

(assert (=> b!1002257 m!1190521))

(declare-fun m!1190523 () Bool)

(assert (=> bm!66754 m!1190523))

(assert (=> b!1002186 d!291433))

(declare-fun b!1002417 () Bool)

(assert (=> b!1002417 true))

(assert (=> b!1002417 true))

(declare-fun bs!245116 () Bool)

(declare-fun b!1002416 () Bool)

(assert (= bs!245116 (and b!1002416 b!1002417)))

(declare-fun lambda!35562 () Int)

(declare-fun lambda!35561 () Int)

(assert (=> bs!245116 (not (= lambda!35562 lambda!35561))))

(assert (=> b!1002416 true))

(assert (=> b!1002416 true))

(declare-fun e!642472 () Bool)

(declare-fun call!66773 () Bool)

(assert (=> b!1002416 (= e!642472 call!66773)))

(declare-fun e!642470 () Bool)

(assert (=> b!1002417 (= e!642470 call!66773)))

(declare-fun b!1002418 () Bool)

(declare-fun c!165133 () Bool)

(assert (=> b!1002418 (= c!165133 ((_ is Union!2779) r!15766))))

(declare-fun e!642474 () Bool)

(declare-fun e!642471 () Bool)

(assert (=> b!1002418 (= e!642474 e!642471)))

(declare-fun c!165130 () Bool)

(declare-fun bm!66768 () Bool)

(declare-fun Exists!514 (Int) Bool)

(assert (=> bm!66768 (= call!66773 (Exists!514 (ite c!165130 lambda!35561 lambda!35562)))))

(declare-fun b!1002419 () Bool)

(declare-fun e!642468 () Bool)

(declare-fun call!66774 () Bool)

(assert (=> b!1002419 (= e!642468 call!66774)))

(declare-fun b!1002420 () Bool)

(declare-fun res!452537 () Bool)

(assert (=> b!1002420 (=> res!452537 e!642470)))

(assert (=> b!1002420 (= res!452537 call!66774)))

(assert (=> b!1002420 (= e!642472 e!642470)))

(declare-fun b!1002421 () Bool)

(declare-fun e!642473 () Bool)

(assert (=> b!1002421 (= e!642471 e!642473)))

(declare-fun res!452536 () Bool)

(assert (=> b!1002421 (= res!452536 (matchRSpec!578 (regOne!6071 r!15766) s!10566))))

(assert (=> b!1002421 (=> res!452536 e!642473)))

(declare-fun b!1002423 () Bool)

(declare-fun e!642469 () Bool)

(assert (=> b!1002423 (= e!642468 e!642469)))

(declare-fun res!452538 () Bool)

(assert (=> b!1002423 (= res!452538 (not ((_ is EmptyLang!2779) r!15766)))))

(assert (=> b!1002423 (=> (not res!452538) (not e!642469))))

(declare-fun bm!66769 () Bool)

(declare-fun isEmpty!6331 (List!10009) Bool)

(assert (=> bm!66769 (= call!66774 (isEmpty!6331 s!10566))))

(declare-fun b!1002424 () Bool)

(assert (=> b!1002424 (= e!642474 (= s!10566 (Cons!9993 (c!165084 r!15766) Nil!9993)))))

(declare-fun b!1002425 () Bool)

(assert (=> b!1002425 (= e!642471 e!642472)))

(assert (=> b!1002425 (= c!165130 ((_ is Star!2779) r!15766))))

(declare-fun b!1002426 () Bool)

(assert (=> b!1002426 (= e!642473 (matchRSpec!578 (regTwo!6071 r!15766) s!10566))))

(declare-fun b!1002422 () Bool)

(declare-fun c!165132 () Bool)

(assert (=> b!1002422 (= c!165132 ((_ is ElementMatch!2779) r!15766))))

(assert (=> b!1002422 (= e!642469 e!642474)))

(declare-fun d!291435 () Bool)

(declare-fun c!165131 () Bool)

(assert (=> d!291435 (= c!165131 ((_ is EmptyExpr!2779) r!15766))))

(assert (=> d!291435 (= (matchRSpec!578 r!15766 s!10566) e!642468)))

(assert (= (and d!291435 c!165131) b!1002419))

(assert (= (and d!291435 (not c!165131)) b!1002423))

(assert (= (and b!1002423 res!452538) b!1002422))

(assert (= (and b!1002422 c!165132) b!1002424))

(assert (= (and b!1002422 (not c!165132)) b!1002418))

(assert (= (and b!1002418 c!165133) b!1002421))

(assert (= (and b!1002418 (not c!165133)) b!1002425))

(assert (= (and b!1002421 (not res!452536)) b!1002426))

(assert (= (and b!1002425 c!165130) b!1002420))

(assert (= (and b!1002425 (not c!165130)) b!1002416))

(assert (= (and b!1002420 (not res!452537)) b!1002417))

(assert (= (or b!1002417 b!1002416) bm!66768))

(assert (= (or b!1002419 b!1002420) bm!66769))

(declare-fun m!1190547 () Bool)

(assert (=> bm!66768 m!1190547))

(declare-fun m!1190549 () Bool)

(assert (=> b!1002421 m!1190549))

(declare-fun m!1190551 () Bool)

(assert (=> bm!66769 m!1190551))

(declare-fun m!1190553 () Bool)

(assert (=> b!1002426 m!1190553))

(assert (=> b!1002182 d!291435))

(declare-fun b!1002459 () Bool)

(declare-fun e!642492 () Bool)

(declare-fun e!642494 () Bool)

(assert (=> b!1002459 (= e!642492 e!642494)))

(declare-fun c!165141 () Bool)

(assert (=> b!1002459 (= c!165141 ((_ is EmptyLang!2779) r!15766))))

(declare-fun b!1002460 () Bool)

(declare-fun lt!352200 () Bool)

(assert (=> b!1002460 (= e!642494 (not lt!352200))))

(declare-fun b!1002461 () Bool)

(declare-fun e!642495 () Bool)

(declare-fun head!1852 (List!10009) C!6128)

(assert (=> b!1002461 (= e!642495 (= (head!1852 s!10566) (c!165084 r!15766)))))

(declare-fun b!1002462 () Bool)

(declare-fun res!452559 () Bool)

(declare-fun e!642491 () Bool)

(assert (=> b!1002462 (=> res!452559 e!642491)))

(declare-fun tail!1414 (List!10009) List!10009)

(assert (=> b!1002462 (= res!452559 (not (isEmpty!6331 (tail!1414 s!10566))))))

(declare-fun b!1002463 () Bool)

(declare-fun e!642489 () Bool)

(declare-fun derivativeStep!699 (Regex!2779 C!6128) Regex!2779)

(assert (=> b!1002463 (= e!642489 (matchR!1315 (derivativeStep!699 r!15766 (head!1852 s!10566)) (tail!1414 s!10566)))))

(declare-fun b!1002464 () Bool)

(assert (=> b!1002464 (= e!642491 (not (= (head!1852 s!10566) (c!165084 r!15766))))))

(declare-fun b!1002465 () Bool)

(declare-fun call!66777 () Bool)

(assert (=> b!1002465 (= e!642492 (= lt!352200 call!66777))))

(declare-fun bm!66772 () Bool)

(assert (=> bm!66772 (= call!66777 (isEmpty!6331 s!10566))))

(declare-fun d!291441 () Bool)

(assert (=> d!291441 e!642492))

(declare-fun c!165140 () Bool)

(assert (=> d!291441 (= c!165140 ((_ is EmptyExpr!2779) r!15766))))

(assert (=> d!291441 (= lt!352200 e!642489)))

(declare-fun c!165142 () Bool)

(assert (=> d!291441 (= c!165142 (isEmpty!6331 s!10566))))

(assert (=> d!291441 (validRegex!1248 r!15766)))

(assert (=> d!291441 (= (matchR!1315 r!15766 s!10566) lt!352200)))

(declare-fun b!1002466 () Bool)

(declare-fun res!452561 () Bool)

(assert (=> b!1002466 (=> (not res!452561) (not e!642495))))

(assert (=> b!1002466 (= res!452561 (isEmpty!6331 (tail!1414 s!10566)))))

(declare-fun b!1002467 () Bool)

(assert (=> b!1002467 (= e!642489 (nullable!893 r!15766))))

(declare-fun b!1002468 () Bool)

(declare-fun res!452560 () Bool)

(declare-fun e!642493 () Bool)

(assert (=> b!1002468 (=> res!452560 e!642493)))

(assert (=> b!1002468 (= res!452560 e!642495)))

(declare-fun res!452555 () Bool)

(assert (=> b!1002468 (=> (not res!452555) (not e!642495))))

(assert (=> b!1002468 (= res!452555 lt!352200)))

(declare-fun b!1002469 () Bool)

(declare-fun e!642490 () Bool)

(assert (=> b!1002469 (= e!642490 e!642491)))

(declare-fun res!452556 () Bool)

(assert (=> b!1002469 (=> res!452556 e!642491)))

(assert (=> b!1002469 (= res!452556 call!66777)))

(declare-fun b!1002470 () Bool)

(declare-fun res!452558 () Bool)

(assert (=> b!1002470 (=> res!452558 e!642493)))

(assert (=> b!1002470 (= res!452558 (not ((_ is ElementMatch!2779) r!15766)))))

(assert (=> b!1002470 (= e!642494 e!642493)))

(declare-fun b!1002471 () Bool)

(assert (=> b!1002471 (= e!642493 e!642490)))

(declare-fun res!452562 () Bool)

(assert (=> b!1002471 (=> (not res!452562) (not e!642490))))

(assert (=> b!1002471 (= res!452562 (not lt!352200))))

(declare-fun b!1002472 () Bool)

(declare-fun res!452557 () Bool)

(assert (=> b!1002472 (=> (not res!452557) (not e!642495))))

(assert (=> b!1002472 (= res!452557 (not call!66777))))

(assert (= (and d!291441 c!165142) b!1002467))

(assert (= (and d!291441 (not c!165142)) b!1002463))

(assert (= (and d!291441 c!165140) b!1002465))

(assert (= (and d!291441 (not c!165140)) b!1002459))

(assert (= (and b!1002459 c!165141) b!1002460))

(assert (= (and b!1002459 (not c!165141)) b!1002470))

(assert (= (and b!1002470 (not res!452558)) b!1002468))

(assert (= (and b!1002468 res!452555) b!1002472))

(assert (= (and b!1002472 res!452557) b!1002466))

(assert (= (and b!1002466 res!452561) b!1002461))

(assert (= (and b!1002468 (not res!452560)) b!1002471))

(assert (= (and b!1002471 res!452562) b!1002469))

(assert (= (and b!1002469 (not res!452556)) b!1002462))

(assert (= (and b!1002462 (not res!452559)) b!1002464))

(assert (= (or b!1002465 b!1002469 b!1002472) bm!66772))

(declare-fun m!1190555 () Bool)

(assert (=> b!1002466 m!1190555))

(assert (=> b!1002466 m!1190555))

(declare-fun m!1190557 () Bool)

(assert (=> b!1002466 m!1190557))

(assert (=> b!1002462 m!1190555))

(assert (=> b!1002462 m!1190555))

(assert (=> b!1002462 m!1190557))

(declare-fun m!1190559 () Bool)

(assert (=> b!1002461 m!1190559))

(assert (=> b!1002463 m!1190559))

(assert (=> b!1002463 m!1190559))

(declare-fun m!1190561 () Bool)

(assert (=> b!1002463 m!1190561))

(assert (=> b!1002463 m!1190555))

(assert (=> b!1002463 m!1190561))

(assert (=> b!1002463 m!1190555))

(declare-fun m!1190563 () Bool)

(assert (=> b!1002463 m!1190563))

(assert (=> d!291441 m!1190551))

(assert (=> d!291441 m!1190499))

(assert (=> bm!66772 m!1190551))

(assert (=> b!1002464 m!1190559))

(declare-fun m!1190565 () Bool)

(assert (=> b!1002467 m!1190565))

(assert (=> b!1002182 d!291441))

(declare-fun d!291443 () Bool)

(assert (=> d!291443 (= (matchR!1315 r!15766 s!10566) (matchRSpec!578 r!15766 s!10566))))

(declare-fun lt!352203 () Unit!15217)

(declare-fun choose!6356 (Regex!2779 List!10009) Unit!15217)

(assert (=> d!291443 (= lt!352203 (choose!6356 r!15766 s!10566))))

(assert (=> d!291443 (validRegex!1248 r!15766)))

(assert (=> d!291443 (= (mainMatchTheorem!578 r!15766 s!10566) lt!352203)))

(declare-fun bs!245117 () Bool)

(assert (= bs!245117 d!291443))

(assert (=> bs!245117 m!1190493))

(assert (=> bs!245117 m!1190491))

(declare-fun m!1190567 () Bool)

(assert (=> bs!245117 m!1190567))

(assert (=> bs!245117 m!1190499))

(assert (=> b!1002182 d!291443))

(declare-fun b!1002477 () Bool)

(declare-fun e!642498 () Bool)

(declare-fun tp!305229 () Bool)

(assert (=> b!1002477 (= e!642498 (and tp_is_empty!5201 tp!305229))))

(assert (=> b!1002184 (= tp!305188 e!642498)))

(assert (= (and b!1002184 ((_ is Cons!9993) (t!101055 s!10566))) b!1002477))

(declare-fun b!1002490 () Bool)

(declare-fun e!642501 () Bool)

(declare-fun tp!305243 () Bool)

(assert (=> b!1002490 (= e!642501 tp!305243)))

(declare-fun b!1002488 () Bool)

(assert (=> b!1002488 (= e!642501 tp_is_empty!5201)))

(assert (=> b!1002185 (= tp!305187 e!642501)))

(declare-fun b!1002489 () Bool)

(declare-fun tp!305240 () Bool)

(declare-fun tp!305242 () Bool)

(assert (=> b!1002489 (= e!642501 (and tp!305240 tp!305242))))

(declare-fun b!1002491 () Bool)

(declare-fun tp!305241 () Bool)

(declare-fun tp!305244 () Bool)

(assert (=> b!1002491 (= e!642501 (and tp!305241 tp!305244))))

(assert (= (and b!1002185 ((_ is ElementMatch!2779) (reg!3108 r!15766))) b!1002488))

(assert (= (and b!1002185 ((_ is Concat!4612) (reg!3108 r!15766))) b!1002489))

(assert (= (and b!1002185 ((_ is Star!2779) (reg!3108 r!15766))) b!1002490))

(assert (= (and b!1002185 ((_ is Union!2779) (reg!3108 r!15766))) b!1002491))

(declare-fun b!1002494 () Bool)

(declare-fun e!642502 () Bool)

(declare-fun tp!305248 () Bool)

(assert (=> b!1002494 (= e!642502 tp!305248)))

(declare-fun b!1002492 () Bool)

(assert (=> b!1002492 (= e!642502 tp_is_empty!5201)))

(assert (=> b!1002187 (= tp!305186 e!642502)))

(declare-fun b!1002493 () Bool)

(declare-fun tp!305245 () Bool)

(declare-fun tp!305247 () Bool)

(assert (=> b!1002493 (= e!642502 (and tp!305245 tp!305247))))

(declare-fun b!1002495 () Bool)

(declare-fun tp!305246 () Bool)

(declare-fun tp!305249 () Bool)

(assert (=> b!1002495 (= e!642502 (and tp!305246 tp!305249))))

(assert (= (and b!1002187 ((_ is ElementMatch!2779) (regOne!6071 r!15766))) b!1002492))

(assert (= (and b!1002187 ((_ is Concat!4612) (regOne!6071 r!15766))) b!1002493))

(assert (= (and b!1002187 ((_ is Star!2779) (regOne!6071 r!15766))) b!1002494))

(assert (= (and b!1002187 ((_ is Union!2779) (regOne!6071 r!15766))) b!1002495))

(declare-fun b!1002498 () Bool)

(declare-fun e!642503 () Bool)

(declare-fun tp!305253 () Bool)

(assert (=> b!1002498 (= e!642503 tp!305253)))

(declare-fun b!1002496 () Bool)

(assert (=> b!1002496 (= e!642503 tp_is_empty!5201)))

(assert (=> b!1002187 (= tp!305183 e!642503)))

(declare-fun b!1002497 () Bool)

(declare-fun tp!305250 () Bool)

(declare-fun tp!305252 () Bool)

(assert (=> b!1002497 (= e!642503 (and tp!305250 tp!305252))))

(declare-fun b!1002499 () Bool)

(declare-fun tp!305251 () Bool)

(declare-fun tp!305254 () Bool)

(assert (=> b!1002499 (= e!642503 (and tp!305251 tp!305254))))

(assert (= (and b!1002187 ((_ is ElementMatch!2779) (regTwo!6071 r!15766))) b!1002496))

(assert (= (and b!1002187 ((_ is Concat!4612) (regTwo!6071 r!15766))) b!1002497))

(assert (= (and b!1002187 ((_ is Star!2779) (regTwo!6071 r!15766))) b!1002498))

(assert (= (and b!1002187 ((_ is Union!2779) (regTwo!6071 r!15766))) b!1002499))

(declare-fun b!1002502 () Bool)

(declare-fun e!642504 () Bool)

(declare-fun tp!305258 () Bool)

(assert (=> b!1002502 (= e!642504 tp!305258)))

(declare-fun b!1002500 () Bool)

(assert (=> b!1002500 (= e!642504 tp_is_empty!5201)))

(assert (=> b!1002183 (= tp!305184 e!642504)))

(declare-fun b!1002501 () Bool)

(declare-fun tp!305255 () Bool)

(declare-fun tp!305257 () Bool)

(assert (=> b!1002501 (= e!642504 (and tp!305255 tp!305257))))

(declare-fun b!1002503 () Bool)

(declare-fun tp!305256 () Bool)

(declare-fun tp!305259 () Bool)

(assert (=> b!1002503 (= e!642504 (and tp!305256 tp!305259))))

(assert (= (and b!1002183 ((_ is ElementMatch!2779) (regOne!6070 r!15766))) b!1002500))

(assert (= (and b!1002183 ((_ is Concat!4612) (regOne!6070 r!15766))) b!1002501))

(assert (= (and b!1002183 ((_ is Star!2779) (regOne!6070 r!15766))) b!1002502))

(assert (= (and b!1002183 ((_ is Union!2779) (regOne!6070 r!15766))) b!1002503))

(declare-fun b!1002506 () Bool)

(declare-fun e!642505 () Bool)

(declare-fun tp!305263 () Bool)

(assert (=> b!1002506 (= e!642505 tp!305263)))

(declare-fun b!1002504 () Bool)

(assert (=> b!1002504 (= e!642505 tp_is_empty!5201)))

(assert (=> b!1002183 (= tp!305185 e!642505)))

(declare-fun b!1002505 () Bool)

(declare-fun tp!305260 () Bool)

(declare-fun tp!305262 () Bool)

(assert (=> b!1002505 (= e!642505 (and tp!305260 tp!305262))))

(declare-fun b!1002507 () Bool)

(declare-fun tp!305261 () Bool)

(declare-fun tp!305264 () Bool)

(assert (=> b!1002507 (= e!642505 (and tp!305261 tp!305264))))

(assert (= (and b!1002183 ((_ is ElementMatch!2779) (regTwo!6070 r!15766))) b!1002504))

(assert (= (and b!1002183 ((_ is Concat!4612) (regTwo!6070 r!15766))) b!1002505))

(assert (= (and b!1002183 ((_ is Star!2779) (regTwo!6070 r!15766))) b!1002506))

(assert (= (and b!1002183 ((_ is Union!2779) (regTwo!6070 r!15766))) b!1002507))

(check-sat (not b!1002248) (not bm!66751) (not bm!66768) (not b!1002499) (not bm!66752) (not d!291443) (not b!1002461) (not bm!66769) (not b!1002498) (not b!1002501) (not bm!66748) (not b!1002502) (not b!1002495) (not b!1002494) (not d!291441) (not b!1002426) (not b!1002506) (not b!1002507) tp_is_empty!5201 (not bm!66772) (not b!1002257) (not bm!66754) (not b!1002505) (not b!1002466) (not b!1002467) (not b!1002489) (not b!1002462) (not b!1002497) (not b!1002503) (not b!1002477) (not b!1002493) (not b!1002421) (not b!1002491) (not b!1002490) (not b!1002463) (not b!1002464))
(check-sat)
