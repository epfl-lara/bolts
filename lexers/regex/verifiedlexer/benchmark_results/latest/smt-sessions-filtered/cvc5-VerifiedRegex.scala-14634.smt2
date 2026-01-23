; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756662 () Bool)

(assert start!756662)

(declare-fun b!8033188 () Bool)

(declare-fun e!4732328 () Bool)

(declare-fun tp!2404654 () Bool)

(declare-fun tp!2404655 () Bool)

(assert (=> b!8033188 (= e!4732328 (and tp!2404654 tp!2404655))))

(declare-fun b!8033189 () Bool)

(declare-fun e!4732329 () Bool)

(declare-datatypes ((C!43778 0))(
  ( (C!43779 (val!32665 Int)) )
))
(declare-datatypes ((Regex!21720 0))(
  ( (ElementMatch!21720 (c!1473655 C!43778)) (Concat!30723 (regOne!43952 Regex!21720) (regTwo!43952 Regex!21720)) (EmptyExpr!21720) (Star!21720 (reg!22049 Regex!21720)) (EmptyLang!21720) (Union!21720 (regOne!43953 Regex!21720) (regTwo!43953 Regex!21720)) )
))
(declare-fun r!13107 () Regex!21720)

(declare-fun validRegex!12016 (Regex!21720) Bool)

(assert (=> b!8033189 (= e!4732329 (not (validRegex!12016 (regTwo!43952 r!13107))))))

(declare-fun lt!2721995 () Regex!21720)

(declare-fun a!2390 () C!43778)

(declare-fun derivativeStep!6657 (Regex!21720 C!43778) Regex!21720)

(assert (=> b!8033189 (= lt!2721995 (derivativeStep!6657 (regOne!43952 r!13107) a!2390))))

(declare-fun b!8033190 () Bool)

(declare-fun res!3176625 () Bool)

(assert (=> b!8033190 (=> (not res!3176625) (not e!4732329))))

(assert (=> b!8033190 (= res!3176625 (and (not (is-EmptyExpr!21720 r!13107)) (not (is-EmptyLang!21720 r!13107)) (not (is-ElementMatch!21720 r!13107)) (not (is-Union!21720 r!13107)) (not (is-Star!21720 r!13107))))))

(declare-fun b!8033191 () Bool)

(declare-fun tp!2404658 () Bool)

(assert (=> b!8033191 (= e!4732328 tp!2404658)))

(declare-fun res!3176626 () Bool)

(assert (=> start!756662 (=> (not res!3176626) (not e!4732329))))

(assert (=> start!756662 (= res!3176626 (validRegex!12016 r!13107))))

(assert (=> start!756662 e!4732329))

(assert (=> start!756662 e!4732328))

(declare-fun tp_is_empty!54435 () Bool)

(assert (=> start!756662 tp_is_empty!54435))

(declare-fun b!8033192 () Bool)

(assert (=> b!8033192 (= e!4732328 tp_is_empty!54435)))

(declare-fun b!8033193 () Bool)

(declare-fun res!3176624 () Bool)

(assert (=> b!8033193 (=> (not res!3176624) (not e!4732329))))

(declare-fun nullable!9753 (Regex!21720) Bool)

(assert (=> b!8033193 (= res!3176624 (nullable!9753 (regOne!43952 r!13107)))))

(declare-fun b!8033194 () Bool)

(declare-fun tp!2404657 () Bool)

(declare-fun tp!2404656 () Bool)

(assert (=> b!8033194 (= e!4732328 (and tp!2404657 tp!2404656))))

(assert (= (and start!756662 res!3176626) b!8033190))

(assert (= (and b!8033190 res!3176625) b!8033193))

(assert (= (and b!8033193 res!3176624) b!8033189))

(assert (= (and start!756662 (is-ElementMatch!21720 r!13107)) b!8033192))

(assert (= (and start!756662 (is-Concat!30723 r!13107)) b!8033188))

(assert (= (and start!756662 (is-Star!21720 r!13107)) b!8033191))

(assert (= (and start!756662 (is-Union!21720 r!13107)) b!8033194))

(declare-fun m!8392666 () Bool)

(assert (=> b!8033189 m!8392666))

(declare-fun m!8392668 () Bool)

(assert (=> b!8033189 m!8392668))

(declare-fun m!8392670 () Bool)

(assert (=> start!756662 m!8392670))

(declare-fun m!8392672 () Bool)

(assert (=> b!8033193 m!8392672))

(push 1)

(assert (not b!8033189))

(assert (not b!8033194))

(assert (not start!756662))

(assert (not b!8033191))

(assert (not b!8033193))

(assert tp_is_empty!54435)

(assert (not b!8033188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394809 () Bool)

(declare-fun nullableFct!3856 (Regex!21720) Bool)

(assert (=> d!2394809 (= (nullable!9753 (regOne!43952 r!13107)) (nullableFct!3856 (regOne!43952 r!13107)))))

(declare-fun bs!1971471 () Bool)

(assert (= bs!1971471 d!2394809))

(declare-fun m!8392682 () Bool)

(assert (=> bs!1971471 m!8392682))

(assert (=> b!8033193 d!2394809))

(declare-fun b!8033252 () Bool)

(declare-fun e!4732364 () Bool)

(declare-fun call!745261 () Bool)

(assert (=> b!8033252 (= e!4732364 call!745261)))

(declare-fun b!8033253 () Bool)

(declare-fun e!4732365 () Bool)

(declare-fun e!4732369 () Bool)

(assert (=> b!8033253 (= e!4732365 e!4732369)))

(declare-fun c!1473665 () Bool)

(assert (=> b!8033253 (= c!1473665 (is-Star!21720 r!13107))))

(declare-fun b!8033254 () Bool)

(declare-fun e!4732370 () Bool)

(assert (=> b!8033254 (= e!4732369 e!4732370)))

(declare-fun res!3176659 () Bool)

(assert (=> b!8033254 (= res!3176659 (not (nullable!9753 (reg!22049 r!13107))))))

(assert (=> b!8033254 (=> (not res!3176659) (not e!4732370))))

(declare-fun b!8033255 () Bool)

(declare-fun e!4732367 () Bool)

(assert (=> b!8033255 (= e!4732367 e!4732364)))

(declare-fun res!3176658 () Bool)

(assert (=> b!8033255 (=> (not res!3176658) (not e!4732364))))

(declare-fun call!745263 () Bool)

(assert (=> b!8033255 (= res!3176658 call!745263)))

(declare-fun bm!745256 () Bool)

(declare-fun c!1473666 () Bool)

(declare-fun call!745262 () Bool)

(assert (=> bm!745256 (= call!745262 (validRegex!12016 (ite c!1473665 (reg!22049 r!13107) (ite c!1473666 (regTwo!43953 r!13107) (regTwo!43952 r!13107)))))))

(declare-fun bm!745257 () Bool)

(assert (=> bm!745257 (= call!745263 (validRegex!12016 (ite c!1473666 (regOne!43953 r!13107) (regOne!43952 r!13107))))))

(declare-fun d!2394811 () Bool)

(declare-fun res!3176656 () Bool)

(assert (=> d!2394811 (=> res!3176656 e!4732365)))

(assert (=> d!2394811 (= res!3176656 (is-ElementMatch!21720 r!13107))))

(assert (=> d!2394811 (= (validRegex!12016 r!13107) e!4732365)))

(declare-fun b!8033256 () Bool)

(declare-fun e!4732368 () Bool)

(assert (=> b!8033256 (= e!4732368 call!745261)))

(declare-fun b!8033257 () Bool)

(declare-fun res!3176660 () Bool)

(assert (=> b!8033257 (=> (not res!3176660) (not e!4732368))))

(assert (=> b!8033257 (= res!3176660 call!745263)))

(declare-fun e!4732366 () Bool)

(assert (=> b!8033257 (= e!4732366 e!4732368)))

(declare-fun b!8033258 () Bool)

(declare-fun res!3176657 () Bool)

(assert (=> b!8033258 (=> res!3176657 e!4732367)))

(assert (=> b!8033258 (= res!3176657 (not (is-Concat!30723 r!13107)))))

(assert (=> b!8033258 (= e!4732366 e!4732367)))

(declare-fun b!8033259 () Bool)

(assert (=> b!8033259 (= e!4732370 call!745262)))

(declare-fun bm!745258 () Bool)

(assert (=> bm!745258 (= call!745261 call!745262)))

(declare-fun b!8033260 () Bool)

(assert (=> b!8033260 (= e!4732369 e!4732366)))

(assert (=> b!8033260 (= c!1473666 (is-Union!21720 r!13107))))

(assert (= (and d!2394811 (not res!3176656)) b!8033253))

(assert (= (and b!8033253 c!1473665) b!8033254))

(assert (= (and b!8033253 (not c!1473665)) b!8033260))

(assert (= (and b!8033254 res!3176659) b!8033259))

(assert (= (and b!8033260 c!1473666) b!8033257))

(assert (= (and b!8033260 (not c!1473666)) b!8033258))

(assert (= (and b!8033257 res!3176660) b!8033256))

(assert (= (and b!8033258 (not res!3176657)) b!8033255))

(assert (= (and b!8033255 res!3176658) b!8033252))

(assert (= (or b!8033256 b!8033252) bm!745258))

(assert (= (or b!8033257 b!8033255) bm!745257))

(assert (= (or b!8033259 bm!745258) bm!745256))

(declare-fun m!8392684 () Bool)

(assert (=> b!8033254 m!8392684))

(declare-fun m!8392686 () Bool)

(assert (=> bm!745256 m!8392686))

(declare-fun m!8392688 () Bool)

(assert (=> bm!745257 m!8392688))

(assert (=> start!756662 d!2394811))

(declare-fun b!8033261 () Bool)

(declare-fun e!4732371 () Bool)

(declare-fun call!745266 () Bool)

(assert (=> b!8033261 (= e!4732371 call!745266)))

(declare-fun b!8033262 () Bool)

(declare-fun e!4732372 () Bool)

(declare-fun e!4732376 () Bool)

(assert (=> b!8033262 (= e!4732372 e!4732376)))

(declare-fun c!1473667 () Bool)

(assert (=> b!8033262 (= c!1473667 (is-Star!21720 (regTwo!43952 r!13107)))))

(declare-fun b!8033263 () Bool)

(declare-fun e!4732377 () Bool)

(assert (=> b!8033263 (= e!4732376 e!4732377)))

(declare-fun res!3176664 () Bool)

(assert (=> b!8033263 (= res!3176664 (not (nullable!9753 (reg!22049 (regTwo!43952 r!13107)))))))

(assert (=> b!8033263 (=> (not res!3176664) (not e!4732377))))

(declare-fun b!8033264 () Bool)

(declare-fun e!4732374 () Bool)

(assert (=> b!8033264 (= e!4732374 e!4732371)))

(declare-fun res!3176663 () Bool)

(assert (=> b!8033264 (=> (not res!3176663) (not e!4732371))))

(declare-fun call!745268 () Bool)

(assert (=> b!8033264 (= res!3176663 call!745268)))

(declare-fun c!1473668 () Bool)

(declare-fun call!745267 () Bool)

(declare-fun bm!745261 () Bool)

(assert (=> bm!745261 (= call!745267 (validRegex!12016 (ite c!1473667 (reg!22049 (regTwo!43952 r!13107)) (ite c!1473668 (regTwo!43953 (regTwo!43952 r!13107)) (regTwo!43952 (regTwo!43952 r!13107))))))))

(declare-fun bm!745262 () Bool)

(assert (=> bm!745262 (= call!745268 (validRegex!12016 (ite c!1473668 (regOne!43953 (regTwo!43952 r!13107)) (regOne!43952 (regTwo!43952 r!13107)))))))

(declare-fun d!2394815 () Bool)

(declare-fun res!3176661 () Bool)

(assert (=> d!2394815 (=> res!3176661 e!4732372)))

(assert (=> d!2394815 (= res!3176661 (is-ElementMatch!21720 (regTwo!43952 r!13107)))))

(assert (=> d!2394815 (= (validRegex!12016 (regTwo!43952 r!13107)) e!4732372)))

(declare-fun b!8033265 () Bool)

(declare-fun e!4732375 () Bool)

(assert (=> b!8033265 (= e!4732375 call!745266)))

(declare-fun b!8033266 () Bool)

(declare-fun res!3176665 () Bool)

(assert (=> b!8033266 (=> (not res!3176665) (not e!4732375))))

(assert (=> b!8033266 (= res!3176665 call!745268)))

(declare-fun e!4732373 () Bool)

(assert (=> b!8033266 (= e!4732373 e!4732375)))

(declare-fun b!8033267 () Bool)

(declare-fun res!3176662 () Bool)

(assert (=> b!8033267 (=> res!3176662 e!4732374)))

(assert (=> b!8033267 (= res!3176662 (not (is-Concat!30723 (regTwo!43952 r!13107))))))

(assert (=> b!8033267 (= e!4732373 e!4732374)))

(declare-fun b!8033268 () Bool)

(assert (=> b!8033268 (= e!4732377 call!745267)))

(declare-fun bm!745263 () Bool)

(assert (=> bm!745263 (= call!745266 call!745267)))

(declare-fun b!8033269 () Bool)

(assert (=> b!8033269 (= e!4732376 e!4732373)))

(assert (=> b!8033269 (= c!1473668 (is-Union!21720 (regTwo!43952 r!13107)))))

(assert (= (and d!2394815 (not res!3176661)) b!8033262))

(assert (= (and b!8033262 c!1473667) b!8033263))

(assert (= (and b!8033262 (not c!1473667)) b!8033269))

(assert (= (and b!8033263 res!3176664) b!8033268))

(assert (= (and b!8033269 c!1473668) b!8033266))

(assert (= (and b!8033269 (not c!1473668)) b!8033267))

(assert (= (and b!8033266 res!3176665) b!8033265))

(assert (= (and b!8033267 (not res!3176662)) b!8033264))

(assert (= (and b!8033264 res!3176663) b!8033261))

(assert (= (or b!8033265 b!8033261) bm!745263))

(assert (= (or b!8033266 b!8033264) bm!745262))

(assert (= (or b!8033268 bm!745263) bm!745261))

(declare-fun m!8392690 () Bool)

(assert (=> b!8033263 m!8392690))

(declare-fun m!8392692 () Bool)

(assert (=> bm!745261 m!8392692))

(declare-fun m!8392694 () Bool)

(assert (=> bm!745262 m!8392694))

(assert (=> b!8033189 d!2394815))

(declare-fun b!8033308 () Bool)

(declare-fun e!4732404 () Regex!21720)

(declare-fun call!745286 () Regex!21720)

(declare-fun call!745285 () Regex!21720)

(assert (=> b!8033308 (= e!4732404 (Union!21720 call!745286 call!745285))))

(declare-fun b!8033309 () Bool)

(declare-fun c!1473686 () Bool)

(assert (=> b!8033309 (= c!1473686 (nullable!9753 (regOne!43952 (regOne!43952 r!13107))))))

(declare-fun e!4732403 () Regex!21720)

(declare-fun e!4732405 () Regex!21720)

(assert (=> b!8033309 (= e!4732403 e!4732405)))

(declare-fun bm!745278 () Bool)

(declare-fun call!745284 () Regex!21720)

(assert (=> bm!745278 (= call!745284 call!745285)))

(declare-fun b!8033310 () Bool)

(declare-fun e!4732406 () Regex!21720)

(assert (=> b!8033310 (= e!4732406 EmptyLang!21720)))

(declare-fun b!8033312 () Bool)

(declare-fun c!1473683 () Bool)

(assert (=> b!8033312 (= c!1473683 (is-Union!21720 (regOne!43952 r!13107)))))

(declare-fun e!4732402 () Regex!21720)

(assert (=> b!8033312 (= e!4732402 e!4732404)))

(declare-fun call!745283 () Regex!21720)

(declare-fun b!8033313 () Bool)

(assert (=> b!8033313 (= e!4732405 (Union!21720 (Concat!30723 call!745284 (regTwo!43952 (regOne!43952 r!13107))) call!745283))))

(declare-fun bm!745279 () Bool)

(assert (=> bm!745279 (= call!745286 (derivativeStep!6657 (ite c!1473683 (regOne!43953 (regOne!43952 r!13107)) (ite c!1473686 (regTwo!43952 (regOne!43952 r!13107)) (regOne!43952 (regOne!43952 r!13107)))) a!2390))))

(declare-fun bm!745280 () Bool)

(assert (=> bm!745280 (= call!745283 call!745286)))

(declare-fun b!8033314 () Bool)

(assert (=> b!8033314 (= e!4732404 e!4732403)))

(declare-fun c!1473685 () Bool)

(assert (=> b!8033314 (= c!1473685 (is-Star!21720 (regOne!43952 r!13107)))))

(declare-fun bm!745281 () Bool)

(assert (=> bm!745281 (= call!745285 (derivativeStep!6657 (ite c!1473683 (regTwo!43953 (regOne!43952 r!13107)) (ite c!1473685 (reg!22049 (regOne!43952 r!13107)) (regOne!43952 (regOne!43952 r!13107)))) a!2390))))

(declare-fun b!8033315 () Bool)

(assert (=> b!8033315 (= e!4732403 (Concat!30723 call!745284 (regOne!43952 r!13107)))))

(declare-fun b!8033316 () Bool)

(assert (=> b!8033316 (= e!4732405 (Union!21720 (Concat!30723 call!745283 (regTwo!43952 (regOne!43952 r!13107))) EmptyLang!21720))))

(declare-fun b!8033317 () Bool)

(assert (=> b!8033317 (= e!4732402 (ite (= a!2390 (c!1473655 (regOne!43952 r!13107))) EmptyExpr!21720 EmptyLang!21720))))

(declare-fun b!8033311 () Bool)

(assert (=> b!8033311 (= e!4732406 e!4732402)))

(declare-fun c!1473684 () Bool)

(assert (=> b!8033311 (= c!1473684 (is-ElementMatch!21720 (regOne!43952 r!13107)))))

(declare-fun d!2394817 () Bool)

(declare-fun lt!2722001 () Regex!21720)

(assert (=> d!2394817 (validRegex!12016 lt!2722001)))

(assert (=> d!2394817 (= lt!2722001 e!4732406)))

(declare-fun c!1473687 () Bool)

(assert (=> d!2394817 (= c!1473687 (or (is-EmptyExpr!21720 (regOne!43952 r!13107)) (is-EmptyLang!21720 (regOne!43952 r!13107))))))

(assert (=> d!2394817 (validRegex!12016 (regOne!43952 r!13107))))

(assert (=> d!2394817 (= (derivativeStep!6657 (regOne!43952 r!13107) a!2390) lt!2722001)))

(assert (= (and d!2394817 c!1473687) b!8033310))

(assert (= (and d!2394817 (not c!1473687)) b!8033311))

(assert (= (and b!8033311 c!1473684) b!8033317))

(assert (= (and b!8033311 (not c!1473684)) b!8033312))

(assert (= (and b!8033312 c!1473683) b!8033308))

(assert (= (and b!8033312 (not c!1473683)) b!8033314))

(assert (= (and b!8033314 c!1473685) b!8033315))

(assert (= (and b!8033314 (not c!1473685)) b!8033309))

(assert (= (and b!8033309 c!1473686) b!8033313))

(assert (= (and b!8033309 (not c!1473686)) b!8033316))

(assert (= (or b!8033313 b!8033316) bm!745280))

(assert (= (or b!8033315 b!8033313) bm!745278))

(assert (= (or b!8033308 bm!745278) bm!745281))

(assert (= (or b!8033308 bm!745280) bm!745279))

(declare-fun m!8392708 () Bool)

(assert (=> b!8033309 m!8392708))

(declare-fun m!8392710 () Bool)

(assert (=> bm!745279 m!8392710))

(declare-fun m!8392712 () Bool)

(assert (=> bm!745281 m!8392712))

(declare-fun m!8392714 () Bool)

(assert (=> d!2394817 m!8392714))

(declare-fun m!8392716 () Bool)

(assert (=> d!2394817 m!8392716))

(assert (=> b!8033189 d!2394817))

(declare-fun b!8033330 () Bool)

(declare-fun e!4732409 () Bool)

(declare-fun tp!2404687 () Bool)

(assert (=> b!8033330 (= e!4732409 tp!2404687)))

(declare-fun b!8033331 () Bool)

(declare-fun tp!2404688 () Bool)

(declare-fun tp!2404684 () Bool)

(assert (=> b!8033331 (= e!4732409 (and tp!2404688 tp!2404684))))

(declare-fun b!8033329 () Bool)

(declare-fun tp!2404685 () Bool)

(declare-fun tp!2404686 () Bool)

(assert (=> b!8033329 (= e!4732409 (and tp!2404685 tp!2404686))))

(assert (=> b!8033188 (= tp!2404654 e!4732409)))

(declare-fun b!8033328 () Bool)

(assert (=> b!8033328 (= e!4732409 tp_is_empty!54435)))

(assert (= (and b!8033188 (is-ElementMatch!21720 (regOne!43952 r!13107))) b!8033328))

(assert (= (and b!8033188 (is-Concat!30723 (regOne!43952 r!13107))) b!8033329))

(assert (= (and b!8033188 (is-Star!21720 (regOne!43952 r!13107))) b!8033330))

(assert (= (and b!8033188 (is-Union!21720 (regOne!43952 r!13107))) b!8033331))

(declare-fun b!8033334 () Bool)

(declare-fun e!4732410 () Bool)

(declare-fun tp!2404692 () Bool)

(assert (=> b!8033334 (= e!4732410 tp!2404692)))

(declare-fun b!8033335 () Bool)

(declare-fun tp!2404693 () Bool)

(declare-fun tp!2404689 () Bool)

(assert (=> b!8033335 (= e!4732410 (and tp!2404693 tp!2404689))))

(declare-fun b!8033333 () Bool)

(declare-fun tp!2404690 () Bool)

(declare-fun tp!2404691 () Bool)

(assert (=> b!8033333 (= e!4732410 (and tp!2404690 tp!2404691))))

(assert (=> b!8033188 (= tp!2404655 e!4732410)))

(declare-fun b!8033332 () Bool)

(assert (=> b!8033332 (= e!4732410 tp_is_empty!54435)))

(assert (= (and b!8033188 (is-ElementMatch!21720 (regTwo!43952 r!13107))) b!8033332))

(assert (= (and b!8033188 (is-Concat!30723 (regTwo!43952 r!13107))) b!8033333))

(assert (= (and b!8033188 (is-Star!21720 (regTwo!43952 r!13107))) b!8033334))

(assert (= (and b!8033188 (is-Union!21720 (regTwo!43952 r!13107))) b!8033335))

(declare-fun b!8033338 () Bool)

(declare-fun e!4732411 () Bool)

(declare-fun tp!2404697 () Bool)

(assert (=> b!8033338 (= e!4732411 tp!2404697)))

(declare-fun b!8033339 () Bool)

(declare-fun tp!2404698 () Bool)

(declare-fun tp!2404694 () Bool)

(assert (=> b!8033339 (= e!4732411 (and tp!2404698 tp!2404694))))

(declare-fun b!8033337 () Bool)

(declare-fun tp!2404695 () Bool)

(declare-fun tp!2404696 () Bool)

(assert (=> b!8033337 (= e!4732411 (and tp!2404695 tp!2404696))))

(assert (=> b!8033191 (= tp!2404658 e!4732411)))

(declare-fun b!8033336 () Bool)

(assert (=> b!8033336 (= e!4732411 tp_is_empty!54435)))

(assert (= (and b!8033191 (is-ElementMatch!21720 (reg!22049 r!13107))) b!8033336))

(assert (= (and b!8033191 (is-Concat!30723 (reg!22049 r!13107))) b!8033337))

(assert (= (and b!8033191 (is-Star!21720 (reg!22049 r!13107))) b!8033338))

(assert (= (and b!8033191 (is-Union!21720 (reg!22049 r!13107))) b!8033339))

(declare-fun b!8033344 () Bool)

(declare-fun e!4732412 () Bool)

(declare-fun tp!2404702 () Bool)

(assert (=> b!8033344 (= e!4732412 tp!2404702)))

(declare-fun b!8033345 () Bool)

(declare-fun tp!2404703 () Bool)

(declare-fun tp!2404699 () Bool)

(assert (=> b!8033345 (= e!4732412 (and tp!2404703 tp!2404699))))

(declare-fun b!8033343 () Bool)

(declare-fun tp!2404700 () Bool)

(declare-fun tp!2404701 () Bool)

(assert (=> b!8033343 (= e!4732412 (and tp!2404700 tp!2404701))))

(assert (=> b!8033194 (= tp!2404657 e!4732412)))

(declare-fun b!8033342 () Bool)

(assert (=> b!8033342 (= e!4732412 tp_is_empty!54435)))

(assert (= (and b!8033194 (is-ElementMatch!21720 (regOne!43953 r!13107))) b!8033342))

(assert (= (and b!8033194 (is-Concat!30723 (regOne!43953 r!13107))) b!8033343))

(assert (= (and b!8033194 (is-Star!21720 (regOne!43953 r!13107))) b!8033344))

(assert (= (and b!8033194 (is-Union!21720 (regOne!43953 r!13107))) b!8033345))

(declare-fun b!8033350 () Bool)

(declare-fun e!4732415 () Bool)

(declare-fun tp!2404707 () Bool)

(assert (=> b!8033350 (= e!4732415 tp!2404707)))

(declare-fun b!8033351 () Bool)

(declare-fun tp!2404708 () Bool)

(declare-fun tp!2404704 () Bool)

(assert (=> b!8033351 (= e!4732415 (and tp!2404708 tp!2404704))))

(declare-fun b!8033349 () Bool)

(declare-fun tp!2404705 () Bool)

(declare-fun tp!2404706 () Bool)

(assert (=> b!8033349 (= e!4732415 (and tp!2404705 tp!2404706))))

(assert (=> b!8033194 (= tp!2404656 e!4732415)))

(declare-fun b!8033348 () Bool)

(assert (=> b!8033348 (= e!4732415 tp_is_empty!54435)))

(assert (= (and b!8033194 (is-ElementMatch!21720 (regTwo!43953 r!13107))) b!8033348))

(assert (= (and b!8033194 (is-Concat!30723 (regTwo!43953 r!13107))) b!8033349))

(assert (= (and b!8033194 (is-Star!21720 (regTwo!43953 r!13107))) b!8033350))

(assert (= (and b!8033194 (is-Union!21720 (regTwo!43953 r!13107))) b!8033351))

(push 1)

(assert (not b!8033338))

(assert (not d!2394809))

(assert (not bm!745256))

(assert (not b!8033333))

(assert (not b!8033337))

(assert (not b!8033344))

(assert (not b!8033351))

(assert (not bm!745257))

(assert (not b!8033345))

(assert (not b!8033254))

(assert (not b!8033329))

(assert (not b!8033350))

(assert (not b!8033339))

(assert tp_is_empty!54435)

(assert (not d!2394817))

(assert (not b!8033349))

(assert (not bm!745281))

(assert (not b!8033331))

(assert (not b!8033309))

(assert (not b!8033335))

(assert (not b!8033343))

(assert (not b!8033334))

(assert (not b!8033330))

(assert (not bm!745279))

(assert (not bm!745261))

(assert (not bm!745262))

(assert (not b!8033263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

