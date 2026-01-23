; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246572 () Bool)

(assert start!246572)

(declare-fun b!2534247 () Bool)

(declare-fun e!1603262 () Bool)

(declare-fun tp_is_empty!12957 () Bool)

(assert (=> b!2534247 (= e!1603262 tp_is_empty!12957)))

(declare-fun b!2534248 () Bool)

(declare-fun res!1069280 () Bool)

(declare-fun e!1603263 () Bool)

(assert (=> b!2534248 (=> (not res!1069280) (not e!1603263))))

(declare-datatypes ((C!15260 0))(
  ( (C!15261 (val!9282 Int)) )
))
(declare-datatypes ((List!29616 0))(
  ( (Nil!29516) (Cons!29516 (h!34936 C!15260) (t!211315 List!29616)) )
))
(declare-fun tl!4068 () List!29616)

(declare-datatypes ((Regex!7551 0))(
  ( (ElementMatch!7551 (c!404979 C!15260)) (Concat!12247 (regOne!15614 Regex!7551) (regTwo!15614 Regex!7551)) (EmptyExpr!7551) (Star!7551 (reg!7880 Regex!7551)) (EmptyLang!7551) (Union!7551 (regOne!15615 Regex!7551) (regTwo!15615 Regex!7551)) )
))
(declare-fun r!27340 () Regex!7551)

(declare-fun c!14016 () C!15260)

(declare-fun nullable!2468 (Regex!7551) Bool)

(declare-fun derivative!246 (Regex!7551 List!29616) Regex!7551)

(declare-fun derivativeStep!2120 (Regex!7551 C!15260) Regex!7551)

(assert (=> b!2534248 (= res!1069280 (nullable!2468 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))

(declare-fun b!2534249 () Bool)

(declare-fun contains!5297 (List!29616 C!15260) Bool)

(declare-fun firstChars!88 (Regex!7551) List!29616)

(assert (=> b!2534249 (= e!1603263 (not (contains!5297 (firstChars!88 r!27340) c!14016)))))

(assert (=> b!2534249 (contains!5297 (firstChars!88 (regOne!15615 r!27340)) c!14016)))

(declare-datatypes ((Unit!43311 0))(
  ( (Unit!43312) )
))
(declare-fun lt!901426 () Unit!43311)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!4 (Regex!7551 C!15260 List!29616) Unit!43311)

(assert (=> b!2534249 (= lt!901426 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!4 (regOne!15615 r!27340) c!14016 tl!4068))))

(declare-fun b!2534250 () Bool)

(declare-fun tp!809654 () Bool)

(assert (=> b!2534250 (= e!1603262 tp!809654)))

(declare-fun b!2534251 () Bool)

(declare-fun res!1069282 () Bool)

(assert (=> b!2534251 (=> (not res!1069282) (not e!1603263))))

(get-info :version)

(assert (=> b!2534251 (= res!1069282 (and (not ((_ is EmptyExpr!7551) r!27340)) (not ((_ is EmptyLang!7551) r!27340)) (not ((_ is ElementMatch!7551) r!27340)) ((_ is Union!7551) r!27340)))))

(declare-fun b!2534252 () Bool)

(declare-fun tp!809649 () Bool)

(declare-fun tp!809650 () Bool)

(assert (=> b!2534252 (= e!1603262 (and tp!809649 tp!809650))))

(declare-fun b!2534253 () Bool)

(declare-fun tp!809651 () Bool)

(declare-fun tp!809652 () Bool)

(assert (=> b!2534253 (= e!1603262 (and tp!809651 tp!809652))))

(declare-fun res!1069283 () Bool)

(assert (=> start!246572 (=> (not res!1069283) (not e!1603263))))

(declare-fun validRegex!3177 (Regex!7551) Bool)

(assert (=> start!246572 (= res!1069283 (validRegex!3177 r!27340))))

(assert (=> start!246572 e!1603263))

(assert (=> start!246572 e!1603262))

(assert (=> start!246572 tp_is_empty!12957))

(declare-fun e!1603264 () Bool)

(assert (=> start!246572 e!1603264))

(declare-fun b!2534254 () Bool)

(declare-fun res!1069284 () Bool)

(assert (=> b!2534254 (=> (not res!1069284) (not e!1603263))))

(assert (=> b!2534254 (= res!1069284 (nullable!2468 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))

(declare-fun b!2534255 () Bool)

(declare-fun res!1069281 () Bool)

(assert (=> b!2534255 (=> (not res!1069281) (not e!1603263))))

(assert (=> b!2534255 (= res!1069281 (validRegex!3177 (regOne!15615 r!27340)))))

(declare-fun b!2534256 () Bool)

(declare-fun tp!809653 () Bool)

(assert (=> b!2534256 (= e!1603264 (and tp_is_empty!12957 tp!809653))))

(assert (= (and start!246572 res!1069283) b!2534254))

(assert (= (and b!2534254 res!1069284) b!2534251))

(assert (= (and b!2534251 res!1069282) b!2534248))

(assert (= (and b!2534248 res!1069280) b!2534255))

(assert (= (and b!2534255 res!1069281) b!2534249))

(assert (= (and start!246572 ((_ is ElementMatch!7551) r!27340)) b!2534247))

(assert (= (and start!246572 ((_ is Concat!12247) r!27340)) b!2534252))

(assert (= (and start!246572 ((_ is Star!7551) r!27340)) b!2534250))

(assert (= (and start!246572 ((_ is Union!7551) r!27340)) b!2534253))

(assert (= (and start!246572 ((_ is Cons!29516) tl!4068)) b!2534256))

(declare-fun m!2883583 () Bool)

(assert (=> b!2534248 m!2883583))

(assert (=> b!2534248 m!2883583))

(declare-fun m!2883585 () Bool)

(assert (=> b!2534248 m!2883585))

(assert (=> b!2534248 m!2883585))

(declare-fun m!2883587 () Bool)

(assert (=> b!2534248 m!2883587))

(declare-fun m!2883589 () Bool)

(assert (=> b!2534255 m!2883589))

(declare-fun m!2883591 () Bool)

(assert (=> start!246572 m!2883591))

(declare-fun m!2883593 () Bool)

(assert (=> b!2534249 m!2883593))

(declare-fun m!2883595 () Bool)

(assert (=> b!2534249 m!2883595))

(declare-fun m!2883597 () Bool)

(assert (=> b!2534249 m!2883597))

(declare-fun m!2883599 () Bool)

(assert (=> b!2534249 m!2883599))

(declare-fun m!2883601 () Bool)

(assert (=> b!2534249 m!2883601))

(assert (=> b!2534249 m!2883599))

(assert (=> b!2534249 m!2883595))

(declare-fun m!2883603 () Bool)

(assert (=> b!2534254 m!2883603))

(assert (=> b!2534254 m!2883603))

(declare-fun m!2883605 () Bool)

(assert (=> b!2534254 m!2883605))

(assert (=> b!2534254 m!2883605))

(declare-fun m!2883607 () Bool)

(assert (=> b!2534254 m!2883607))

(check-sat (not b!2534252) (not start!246572) (not b!2534249) tp_is_empty!12957 (not b!2534250) (not b!2534254) (not b!2534255) (not b!2534256) (not b!2534248) (not b!2534253))
(check-sat)
(get-model)

(declare-fun b!2534293 () Bool)

(declare-fun e!1603294 () Bool)

(declare-fun call!159201 () Bool)

(assert (=> b!2534293 (= e!1603294 call!159201)))

(declare-fun b!2534294 () Bool)

(declare-fun res!1069309 () Bool)

(declare-fun e!1603298 () Bool)

(assert (=> b!2534294 (=> res!1069309 e!1603298)))

(assert (=> b!2534294 (= res!1069309 (not ((_ is Concat!12247) (regOne!15615 r!27340))))))

(declare-fun e!1603297 () Bool)

(assert (=> b!2534294 (= e!1603297 e!1603298)))

(declare-fun bm!159195 () Bool)

(declare-fun call!159200 () Bool)

(assert (=> bm!159195 (= call!159201 call!159200)))

(declare-fun bm!159196 () Bool)

(declare-fun call!159202 () Bool)

(declare-fun c!404989 () Bool)

(assert (=> bm!159196 (= call!159202 (validRegex!3177 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun b!2534295 () Bool)

(declare-fun e!1603296 () Bool)

(declare-fun e!1603299 () Bool)

(assert (=> b!2534295 (= e!1603296 e!1603299)))

(declare-fun res!1069306 () Bool)

(assert (=> b!2534295 (= res!1069306 (not (nullable!2468 (reg!7880 (regOne!15615 r!27340)))))))

(assert (=> b!2534295 (=> (not res!1069306) (not e!1603299))))

(declare-fun b!2534296 () Bool)

(assert (=> b!2534296 (= e!1603298 e!1603294)))

(declare-fun res!1069308 () Bool)

(assert (=> b!2534296 (=> (not res!1069308) (not e!1603294))))

(assert (=> b!2534296 (= res!1069308 call!159202)))

(declare-fun b!2534297 () Bool)

(declare-fun e!1603293 () Bool)

(assert (=> b!2534297 (= e!1603293 e!1603296)))

(declare-fun c!404988 () Bool)

(assert (=> b!2534297 (= c!404988 ((_ is Star!7551) (regOne!15615 r!27340)))))

(declare-fun b!2534298 () Bool)

(declare-fun e!1603295 () Bool)

(assert (=> b!2534298 (= e!1603295 call!159202)))

(declare-fun bm!159197 () Bool)

(assert (=> bm!159197 (= call!159200 (validRegex!3177 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(declare-fun b!2534299 () Bool)

(assert (=> b!2534299 (= e!1603299 call!159200)))

(declare-fun b!2534300 () Bool)

(assert (=> b!2534300 (= e!1603296 e!1603297)))

(assert (=> b!2534300 (= c!404989 ((_ is Union!7551) (regOne!15615 r!27340)))))

(declare-fun d!720313 () Bool)

(declare-fun res!1069307 () Bool)

(assert (=> d!720313 (=> res!1069307 e!1603293)))

(assert (=> d!720313 (= res!1069307 ((_ is ElementMatch!7551) (regOne!15615 r!27340)))))

(assert (=> d!720313 (= (validRegex!3177 (regOne!15615 r!27340)) e!1603293)))

(declare-fun b!2534301 () Bool)

(declare-fun res!1069305 () Bool)

(assert (=> b!2534301 (=> (not res!1069305) (not e!1603295))))

(assert (=> b!2534301 (= res!1069305 call!159201)))

(assert (=> b!2534301 (= e!1603297 e!1603295)))

(assert (= (and d!720313 (not res!1069307)) b!2534297))

(assert (= (and b!2534297 c!404988) b!2534295))

(assert (= (and b!2534297 (not c!404988)) b!2534300))

(assert (= (and b!2534295 res!1069306) b!2534299))

(assert (= (and b!2534300 c!404989) b!2534301))

(assert (= (and b!2534300 (not c!404989)) b!2534294))

(assert (= (and b!2534301 res!1069305) b!2534298))

(assert (= (and b!2534294 (not res!1069309)) b!2534296))

(assert (= (and b!2534296 res!1069308) b!2534293))

(assert (= (or b!2534301 b!2534293) bm!159195))

(assert (= (or b!2534298 b!2534296) bm!159196))

(assert (= (or b!2534299 bm!159195) bm!159197))

(declare-fun m!2883609 () Bool)

(assert (=> bm!159196 m!2883609))

(declare-fun m!2883611 () Bool)

(assert (=> b!2534295 m!2883611))

(declare-fun m!2883613 () Bool)

(assert (=> bm!159197 m!2883613))

(assert (=> b!2534255 d!720313))

(declare-fun d!720317 () Bool)

(declare-fun lt!901429 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4051 (List!29616) (InoxSet C!15260))

(assert (=> d!720317 (= lt!901429 (select (content!4051 (firstChars!88 (regOne!15615 r!27340))) c!14016))))

(declare-fun e!1603311 () Bool)

(assert (=> d!720317 (= lt!901429 e!1603311)))

(declare-fun res!1069320 () Bool)

(assert (=> d!720317 (=> (not res!1069320) (not e!1603311))))

(assert (=> d!720317 (= res!1069320 ((_ is Cons!29516) (firstChars!88 (regOne!15615 r!27340))))))

(assert (=> d!720317 (= (contains!5297 (firstChars!88 (regOne!15615 r!27340)) c!14016) lt!901429)))

(declare-fun b!2534315 () Bool)

(declare-fun e!1603312 () Bool)

(assert (=> b!2534315 (= e!1603311 e!1603312)))

(declare-fun res!1069319 () Bool)

(assert (=> b!2534315 (=> res!1069319 e!1603312)))

(assert (=> b!2534315 (= res!1069319 (= (h!34936 (firstChars!88 (regOne!15615 r!27340))) c!14016))))

(declare-fun b!2534316 () Bool)

(assert (=> b!2534316 (= e!1603312 (contains!5297 (t!211315 (firstChars!88 (regOne!15615 r!27340))) c!14016))))

(assert (= (and d!720317 res!1069320) b!2534315))

(assert (= (and b!2534315 (not res!1069319)) b!2534316))

(assert (=> d!720317 m!2883595))

(declare-fun m!2883621 () Bool)

(assert (=> d!720317 m!2883621))

(declare-fun m!2883623 () Bool)

(assert (=> d!720317 m!2883623))

(declare-fun m!2883625 () Bool)

(assert (=> b!2534316 m!2883625))

(assert (=> b!2534249 d!720317))

(declare-fun b!2534363 () Bool)

(declare-fun e!1603339 () List!29616)

(assert (=> b!2534363 (= e!1603339 (Cons!29516 (c!404979 (regOne!15615 r!27340)) Nil!29516))))

(declare-fun b!2534364 () Bool)

(declare-fun e!1603342 () List!29616)

(declare-fun call!159228 () List!29616)

(assert (=> b!2534364 (= e!1603342 call!159228)))

(declare-fun b!2534365 () Bool)

(declare-fun e!1603340 () List!29616)

(assert (=> b!2534365 (= e!1603340 call!159228)))

(declare-fun b!2534366 () Bool)

(declare-fun c!405016 () Bool)

(assert (=> b!2534366 (= c!405016 ((_ is Star!7551) (regOne!15615 r!27340)))))

(declare-fun e!1603343 () List!29616)

(assert (=> b!2534366 (= e!1603339 e!1603343)))

(declare-fun b!2534367 () Bool)

(declare-fun e!1603341 () List!29616)

(assert (=> b!2534367 (= e!1603341 Nil!29516)))

(declare-fun d!720321 () Bool)

(declare-fun c!405014 () Bool)

(assert (=> d!720321 (= c!405014 (or ((_ is EmptyExpr!7551) (regOne!15615 r!27340)) ((_ is EmptyLang!7551) (regOne!15615 r!27340))))))

(assert (=> d!720321 (= (firstChars!88 (regOne!15615 r!27340)) e!1603341)))

(declare-fun b!2534368 () Bool)

(declare-fun c!405013 () Bool)

(assert (=> b!2534368 (= c!405013 (nullable!2468 (regOne!15614 (regOne!15615 r!27340))))))

(assert (=> b!2534368 (= e!1603340 e!1603342)))

(declare-fun c!405012 () Bool)

(declare-fun call!159232 () List!29616)

(declare-fun bm!159223 () Bool)

(assert (=> bm!159223 (= call!159232 (firstChars!88 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(declare-fun b!2534369 () Bool)

(assert (=> b!2534369 (= e!1603341 e!1603339)))

(declare-fun c!405015 () Bool)

(assert (=> b!2534369 (= c!405015 ((_ is ElementMatch!7551) (regOne!15615 r!27340)))))

(declare-fun call!159229 () List!29616)

(declare-fun call!159231 () List!29616)

(declare-fun bm!159224 () Bool)

(declare-fun call!159230 () List!29616)

(declare-fun ++!7246 (List!29616 List!29616) List!29616)

(assert (=> bm!159224 (= call!159228 (++!7246 (ite c!405012 call!159231 call!159229) (ite c!405012 call!159229 call!159230)))))

(declare-fun b!2534370 () Bool)

(assert (=> b!2534370 (= e!1603343 call!159232)))

(declare-fun bm!159225 () Bool)

(assert (=> bm!159225 (= call!159230 call!159231)))

(declare-fun bm!159226 () Bool)

(assert (=> bm!159226 (= call!159231 call!159232)))

(declare-fun b!2534371 () Bool)

(assert (=> b!2534371 (= e!1603342 call!159230)))

(declare-fun bm!159227 () Bool)

(assert (=> bm!159227 (= call!159229 (firstChars!88 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun b!2534372 () Bool)

(assert (=> b!2534372 (= e!1603343 e!1603340)))

(assert (=> b!2534372 (= c!405012 ((_ is Union!7551) (regOne!15615 r!27340)))))

(assert (= (and d!720321 c!405014) b!2534367))

(assert (= (and d!720321 (not c!405014)) b!2534369))

(assert (= (and b!2534369 c!405015) b!2534363))

(assert (= (and b!2534369 (not c!405015)) b!2534366))

(assert (= (and b!2534366 c!405016) b!2534370))

(assert (= (and b!2534366 (not c!405016)) b!2534372))

(assert (= (and b!2534372 c!405012) b!2534365))

(assert (= (and b!2534372 (not c!405012)) b!2534368))

(assert (= (and b!2534368 c!405013) b!2534364))

(assert (= (and b!2534368 (not c!405013)) b!2534371))

(assert (= (or b!2534364 b!2534371) bm!159225))

(assert (= (or b!2534365 bm!159225) bm!159226))

(assert (= (or b!2534365 b!2534364) bm!159227))

(assert (= (or b!2534365 b!2534364) bm!159224))

(assert (= (or b!2534370 bm!159226) bm!159223))

(declare-fun m!2883633 () Bool)

(assert (=> b!2534368 m!2883633))

(declare-fun m!2883635 () Bool)

(assert (=> bm!159223 m!2883635))

(declare-fun m!2883637 () Bool)

(assert (=> bm!159224 m!2883637))

(declare-fun m!2883639 () Bool)

(assert (=> bm!159227 m!2883639))

(assert (=> b!2534249 d!720321))

(declare-fun d!720325 () Bool)

(declare-fun lt!901433 () Bool)

(assert (=> d!720325 (= lt!901433 (select (content!4051 (firstChars!88 r!27340)) c!14016))))

(declare-fun e!1603344 () Bool)

(assert (=> d!720325 (= lt!901433 e!1603344)))

(declare-fun res!1069328 () Bool)

(assert (=> d!720325 (=> (not res!1069328) (not e!1603344))))

(assert (=> d!720325 (= res!1069328 ((_ is Cons!29516) (firstChars!88 r!27340)))))

(assert (=> d!720325 (= (contains!5297 (firstChars!88 r!27340) c!14016) lt!901433)))

(declare-fun b!2534373 () Bool)

(declare-fun e!1603345 () Bool)

(assert (=> b!2534373 (= e!1603344 e!1603345)))

(declare-fun res!1069327 () Bool)

(assert (=> b!2534373 (=> res!1069327 e!1603345)))

(assert (=> b!2534373 (= res!1069327 (= (h!34936 (firstChars!88 r!27340)) c!14016))))

(declare-fun b!2534374 () Bool)

(assert (=> b!2534374 (= e!1603345 (contains!5297 (t!211315 (firstChars!88 r!27340)) c!14016))))

(assert (= (and d!720325 res!1069328) b!2534373))

(assert (= (and b!2534373 (not res!1069327)) b!2534374))

(assert (=> d!720325 m!2883599))

(declare-fun m!2883641 () Bool)

(assert (=> d!720325 m!2883641))

(declare-fun m!2883643 () Bool)

(assert (=> d!720325 m!2883643))

(declare-fun m!2883645 () Bool)

(assert (=> b!2534374 m!2883645))

(assert (=> b!2534249 d!720325))

(declare-fun b!2534375 () Bool)

(declare-fun e!1603346 () List!29616)

(assert (=> b!2534375 (= e!1603346 (Cons!29516 (c!404979 r!27340) Nil!29516))))

(declare-fun b!2534376 () Bool)

(declare-fun e!1603349 () List!29616)

(declare-fun call!159233 () List!29616)

(assert (=> b!2534376 (= e!1603349 call!159233)))

(declare-fun b!2534377 () Bool)

(declare-fun e!1603347 () List!29616)

(assert (=> b!2534377 (= e!1603347 call!159233)))

(declare-fun b!2534378 () Bool)

(declare-fun c!405021 () Bool)

(assert (=> b!2534378 (= c!405021 ((_ is Star!7551) r!27340))))

(declare-fun e!1603350 () List!29616)

(assert (=> b!2534378 (= e!1603346 e!1603350)))

(declare-fun b!2534379 () Bool)

(declare-fun e!1603348 () List!29616)

(assert (=> b!2534379 (= e!1603348 Nil!29516)))

(declare-fun d!720327 () Bool)

(declare-fun c!405019 () Bool)

(assert (=> d!720327 (= c!405019 (or ((_ is EmptyExpr!7551) r!27340) ((_ is EmptyLang!7551) r!27340)))))

(assert (=> d!720327 (= (firstChars!88 r!27340) e!1603348)))

(declare-fun b!2534380 () Bool)

(declare-fun c!405018 () Bool)

(assert (=> b!2534380 (= c!405018 (nullable!2468 (regOne!15614 r!27340)))))

(assert (=> b!2534380 (= e!1603347 e!1603349)))

(declare-fun bm!159228 () Bool)

(declare-fun call!159237 () List!29616)

(declare-fun c!405017 () Bool)

(assert (=> bm!159228 (= call!159237 (firstChars!88 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))

(declare-fun b!2534381 () Bool)

(assert (=> b!2534381 (= e!1603348 e!1603346)))

(declare-fun c!405020 () Bool)

(assert (=> b!2534381 (= c!405020 ((_ is ElementMatch!7551) r!27340))))

(declare-fun call!159234 () List!29616)

(declare-fun call!159236 () List!29616)

(declare-fun call!159235 () List!29616)

(declare-fun bm!159229 () Bool)

(assert (=> bm!159229 (= call!159233 (++!7246 (ite c!405017 call!159236 call!159234) (ite c!405017 call!159234 call!159235)))))

(declare-fun b!2534382 () Bool)

(assert (=> b!2534382 (= e!1603350 call!159237)))

(declare-fun bm!159230 () Bool)

(assert (=> bm!159230 (= call!159235 call!159236)))

(declare-fun bm!159231 () Bool)

(assert (=> bm!159231 (= call!159236 call!159237)))

(declare-fun b!2534383 () Bool)

(assert (=> b!2534383 (= e!1603349 call!159235)))

(declare-fun bm!159232 () Bool)

(assert (=> bm!159232 (= call!159234 (firstChars!88 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun b!2534384 () Bool)

(assert (=> b!2534384 (= e!1603350 e!1603347)))

(assert (=> b!2534384 (= c!405017 ((_ is Union!7551) r!27340))))

(assert (= (and d!720327 c!405019) b!2534379))

(assert (= (and d!720327 (not c!405019)) b!2534381))

(assert (= (and b!2534381 c!405020) b!2534375))

(assert (= (and b!2534381 (not c!405020)) b!2534378))

(assert (= (and b!2534378 c!405021) b!2534382))

(assert (= (and b!2534378 (not c!405021)) b!2534384))

(assert (= (and b!2534384 c!405017) b!2534377))

(assert (= (and b!2534384 (not c!405017)) b!2534380))

(assert (= (and b!2534380 c!405018) b!2534376))

(assert (= (and b!2534380 (not c!405018)) b!2534383))

(assert (= (or b!2534376 b!2534383) bm!159230))

(assert (= (or b!2534377 bm!159230) bm!159231))

(assert (= (or b!2534377 b!2534376) bm!159232))

(assert (= (or b!2534377 b!2534376) bm!159229))

(assert (= (or b!2534382 bm!159231) bm!159228))

(declare-fun m!2883647 () Bool)

(assert (=> b!2534380 m!2883647))

(declare-fun m!2883649 () Bool)

(assert (=> bm!159228 m!2883649))

(declare-fun m!2883651 () Bool)

(assert (=> bm!159229 m!2883651))

(declare-fun m!2883653 () Bool)

(assert (=> bm!159232 m!2883653))

(assert (=> b!2534249 d!720327))

(declare-fun d!720329 () Bool)

(assert (=> d!720329 (contains!5297 (firstChars!88 (regOne!15615 r!27340)) c!14016)))

(declare-fun lt!901437 () Unit!43311)

(declare-fun choose!15012 (Regex!7551 C!15260 List!29616) Unit!43311)

(assert (=> d!720329 (= lt!901437 (choose!15012 (regOne!15615 r!27340) c!14016 tl!4068))))

(assert (=> d!720329 (validRegex!3177 (regOne!15615 r!27340))))

(assert (=> d!720329 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!4 (regOne!15615 r!27340) c!14016 tl!4068) lt!901437)))

(declare-fun bs!469260 () Bool)

(assert (= bs!469260 d!720329))

(assert (=> bs!469260 m!2883595))

(assert (=> bs!469260 m!2883595))

(assert (=> bs!469260 m!2883597))

(declare-fun m!2883677 () Bool)

(assert (=> bs!469260 m!2883677))

(assert (=> bs!469260 m!2883589))

(assert (=> b!2534249 d!720329))

(declare-fun b!2534407 () Bool)

(declare-fun e!1603364 () Bool)

(declare-fun call!159249 () Bool)

(assert (=> b!2534407 (= e!1603364 call!159249)))

(declare-fun b!2534408 () Bool)

(declare-fun res!1069335 () Bool)

(declare-fun e!1603368 () Bool)

(assert (=> b!2534408 (=> res!1069335 e!1603368)))

(assert (=> b!2534408 (= res!1069335 (not ((_ is Concat!12247) r!27340)))))

(declare-fun e!1603367 () Bool)

(assert (=> b!2534408 (= e!1603367 e!1603368)))

(declare-fun bm!159243 () Bool)

(declare-fun call!159248 () Bool)

(assert (=> bm!159243 (= call!159249 call!159248)))

(declare-fun bm!159244 () Bool)

(declare-fun call!159250 () Bool)

(declare-fun c!405034 () Bool)

(assert (=> bm!159244 (= call!159250 (validRegex!3177 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun b!2534409 () Bool)

(declare-fun e!1603366 () Bool)

(declare-fun e!1603369 () Bool)

(assert (=> b!2534409 (= e!1603366 e!1603369)))

(declare-fun res!1069332 () Bool)

(assert (=> b!2534409 (= res!1069332 (not (nullable!2468 (reg!7880 r!27340))))))

(assert (=> b!2534409 (=> (not res!1069332) (not e!1603369))))

(declare-fun b!2534410 () Bool)

(assert (=> b!2534410 (= e!1603368 e!1603364)))

(declare-fun res!1069334 () Bool)

(assert (=> b!2534410 (=> (not res!1069334) (not e!1603364))))

(assert (=> b!2534410 (= res!1069334 call!159250)))

(declare-fun b!2534411 () Bool)

(declare-fun e!1603363 () Bool)

(assert (=> b!2534411 (= e!1603363 e!1603366)))

(declare-fun c!405033 () Bool)

(assert (=> b!2534411 (= c!405033 ((_ is Star!7551) r!27340))))

(declare-fun b!2534412 () Bool)

(declare-fun e!1603365 () Bool)

(assert (=> b!2534412 (= e!1603365 call!159250)))

(declare-fun bm!159245 () Bool)

(assert (=> bm!159245 (= call!159248 (validRegex!3177 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(declare-fun b!2534413 () Bool)

(assert (=> b!2534413 (= e!1603369 call!159248)))

(declare-fun b!2534414 () Bool)

(assert (=> b!2534414 (= e!1603366 e!1603367)))

(assert (=> b!2534414 (= c!405034 ((_ is Union!7551) r!27340))))

(declare-fun d!720337 () Bool)

(declare-fun res!1069333 () Bool)

(assert (=> d!720337 (=> res!1069333 e!1603363)))

(assert (=> d!720337 (= res!1069333 ((_ is ElementMatch!7551) r!27340))))

(assert (=> d!720337 (= (validRegex!3177 r!27340) e!1603363)))

(declare-fun b!2534415 () Bool)

(declare-fun res!1069331 () Bool)

(assert (=> b!2534415 (=> (not res!1069331) (not e!1603365))))

(assert (=> b!2534415 (= res!1069331 call!159249)))

(assert (=> b!2534415 (= e!1603367 e!1603365)))

(assert (= (and d!720337 (not res!1069333)) b!2534411))

(assert (= (and b!2534411 c!405033) b!2534409))

(assert (= (and b!2534411 (not c!405033)) b!2534414))

(assert (= (and b!2534409 res!1069332) b!2534413))

(assert (= (and b!2534414 c!405034) b!2534415))

(assert (= (and b!2534414 (not c!405034)) b!2534408))

(assert (= (and b!2534415 res!1069331) b!2534412))

(assert (= (and b!2534408 (not res!1069335)) b!2534410))

(assert (= (and b!2534410 res!1069334) b!2534407))

(assert (= (or b!2534415 b!2534407) bm!159243))

(assert (= (or b!2534412 b!2534410) bm!159244))

(assert (= (or b!2534413 bm!159243) bm!159245))

(declare-fun m!2883679 () Bool)

(assert (=> bm!159244 m!2883679))

(declare-fun m!2883681 () Bool)

(assert (=> b!2534409 m!2883681))

(declare-fun m!2883683 () Bool)

(assert (=> bm!159245 m!2883683))

(assert (=> start!246572 d!720337))

(declare-fun d!720339 () Bool)

(declare-fun nullableFct!699 (Regex!7551) Bool)

(assert (=> d!720339 (= (nullable!2468 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)) (nullableFct!699 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469261 () Bool)

(assert (= bs!469261 d!720339))

(assert (=> bs!469261 m!2883605))

(declare-fun m!2883685 () Bool)

(assert (=> bs!469261 m!2883685))

(assert (=> b!2534254 d!720339))

(declare-fun d!720341 () Bool)

(declare-fun lt!901443 () Regex!7551)

(assert (=> d!720341 (validRegex!3177 lt!901443)))

(declare-fun e!1603379 () Regex!7551)

(assert (=> d!720341 (= lt!901443 e!1603379)))

(declare-fun c!405040 () Bool)

(assert (=> d!720341 (= c!405040 ((_ is Cons!29516) tl!4068))))

(assert (=> d!720341 (validRegex!3177 (derivativeStep!2120 r!27340 c!14016))))

(assert (=> d!720341 (= (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068) lt!901443)))

(declare-fun b!2534429 () Bool)

(assert (=> b!2534429 (= e!1603379 (derivative!246 (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)) (t!211315 tl!4068)))))

(declare-fun b!2534430 () Bool)

(assert (=> b!2534430 (= e!1603379 (derivativeStep!2120 r!27340 c!14016))))

(assert (= (and d!720341 c!405040) b!2534429))

(assert (= (and d!720341 (not c!405040)) b!2534430))

(declare-fun m!2883697 () Bool)

(assert (=> d!720341 m!2883697))

(assert (=> d!720341 m!2883603))

(declare-fun m!2883699 () Bool)

(assert (=> d!720341 m!2883699))

(assert (=> b!2534429 m!2883603))

(declare-fun m!2883701 () Bool)

(assert (=> b!2534429 m!2883701))

(assert (=> b!2534429 m!2883701))

(declare-fun m!2883703 () Bool)

(assert (=> b!2534429 m!2883703))

(assert (=> b!2534254 d!720341))

(declare-fun bm!159265 () Bool)

(declare-fun call!159272 () Regex!7551)

(declare-fun call!159270 () Regex!7551)

(assert (=> bm!159265 (= call!159272 call!159270)))

(declare-fun b!2534477 () Bool)

(declare-fun e!1603406 () Regex!7551)

(declare-fun e!1603407 () Regex!7551)

(assert (=> b!2534477 (= e!1603406 e!1603407)))

(declare-fun c!405065 () Bool)

(assert (=> b!2534477 (= c!405065 ((_ is ElementMatch!7551) r!27340))))

(declare-fun d!720349 () Bool)

(declare-fun lt!901451 () Regex!7551)

(assert (=> d!720349 (validRegex!3177 lt!901451)))

(assert (=> d!720349 (= lt!901451 e!1603406)))

(declare-fun c!405064 () Bool)

(assert (=> d!720349 (= c!405064 (or ((_ is EmptyExpr!7551) r!27340) ((_ is EmptyLang!7551) r!27340)))))

(assert (=> d!720349 (validRegex!3177 r!27340)))

(assert (=> d!720349 (= (derivativeStep!2120 r!27340 c!14016) lt!901451)))

(declare-fun bm!159266 () Bool)

(declare-fun c!405066 () Bool)

(declare-fun call!159273 () Regex!7551)

(assert (=> bm!159266 (= call!159273 (derivativeStep!2120 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)) c!14016))))

(declare-fun bm!159267 () Bool)

(declare-fun call!159271 () Regex!7551)

(assert (=> bm!159267 (= call!159270 call!159271)))

(declare-fun c!405067 () Bool)

(declare-fun bm!159268 () Bool)

(assert (=> bm!159268 (= call!159271 (derivativeStep!2120 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))) c!14016))))

(declare-fun b!2534478 () Bool)

(assert (=> b!2534478 (= c!405066 ((_ is Union!7551) r!27340))))

(declare-fun e!1603404 () Regex!7551)

(assert (=> b!2534478 (= e!1603407 e!1603404)))

(declare-fun b!2534479 () Bool)

(declare-fun e!1603403 () Regex!7551)

(assert (=> b!2534479 (= e!1603404 e!1603403)))

(assert (=> b!2534479 (= c!405067 ((_ is Star!7551) r!27340))))

(declare-fun b!2534480 () Bool)

(assert (=> b!2534480 (= e!1603403 (Concat!12247 call!159270 r!27340))))

(declare-fun e!1603405 () Regex!7551)

(declare-fun b!2534481 () Bool)

(assert (=> b!2534481 (= e!1603405 (Union!7551 (Concat!12247 call!159272 (regTwo!15614 r!27340)) call!159273))))

(declare-fun b!2534482 () Bool)

(assert (=> b!2534482 (= e!1603404 (Union!7551 call!159273 call!159271))))

(declare-fun b!2534483 () Bool)

(declare-fun c!405068 () Bool)

(assert (=> b!2534483 (= c!405068 (nullable!2468 (regOne!15614 r!27340)))))

(assert (=> b!2534483 (= e!1603403 e!1603405)))

(declare-fun b!2534484 () Bool)

(assert (=> b!2534484 (= e!1603407 (ite (= c!14016 (c!404979 r!27340)) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534485 () Bool)

(assert (=> b!2534485 (= e!1603406 EmptyLang!7551)))

(declare-fun b!2534486 () Bool)

(assert (=> b!2534486 (= e!1603405 (Union!7551 (Concat!12247 call!159272 (regTwo!15614 r!27340)) EmptyLang!7551))))

(assert (= (and d!720349 c!405064) b!2534485))

(assert (= (and d!720349 (not c!405064)) b!2534477))

(assert (= (and b!2534477 c!405065) b!2534484))

(assert (= (and b!2534477 (not c!405065)) b!2534478))

(assert (= (and b!2534478 c!405066) b!2534482))

(assert (= (and b!2534478 (not c!405066)) b!2534479))

(assert (= (and b!2534479 c!405067) b!2534480))

(assert (= (and b!2534479 (not c!405067)) b!2534483))

(assert (= (and b!2534483 c!405068) b!2534481))

(assert (= (and b!2534483 (not c!405068)) b!2534486))

(assert (= (or b!2534481 b!2534486) bm!159265))

(assert (= (or b!2534480 bm!159265) bm!159267))

(assert (= (or b!2534482 bm!159267) bm!159268))

(assert (= (or b!2534482 b!2534481) bm!159266))

(declare-fun m!2883713 () Bool)

(assert (=> d!720349 m!2883713))

(assert (=> d!720349 m!2883591))

(declare-fun m!2883715 () Bool)

(assert (=> bm!159266 m!2883715))

(declare-fun m!2883717 () Bool)

(assert (=> bm!159268 m!2883717))

(assert (=> b!2534483 m!2883647))

(assert (=> b!2534254 d!720349))

(declare-fun d!720353 () Bool)

(assert (=> d!720353 (= (nullable!2468 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)) (nullableFct!699 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469264 () Bool)

(assert (= bs!469264 d!720353))

(assert (=> bs!469264 m!2883585))

(declare-fun m!2883719 () Bool)

(assert (=> bs!469264 m!2883719))

(assert (=> b!2534248 d!720353))

(declare-fun d!720355 () Bool)

(declare-fun lt!901452 () Regex!7551)

(assert (=> d!720355 (validRegex!3177 lt!901452)))

(declare-fun e!1603408 () Regex!7551)

(assert (=> d!720355 (= lt!901452 e!1603408)))

(declare-fun c!405069 () Bool)

(assert (=> d!720355 (= c!405069 ((_ is Cons!29516) tl!4068))))

(assert (=> d!720355 (validRegex!3177 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))

(assert (=> d!720355 (= (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068) lt!901452)))

(declare-fun b!2534487 () Bool)

(assert (=> b!2534487 (= e!1603408 (derivative!246 (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)) (t!211315 tl!4068)))))

(declare-fun b!2534488 () Bool)

(assert (=> b!2534488 (= e!1603408 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))

(assert (= (and d!720355 c!405069) b!2534487))

(assert (= (and d!720355 (not c!405069)) b!2534488))

(declare-fun m!2883721 () Bool)

(assert (=> d!720355 m!2883721))

(assert (=> d!720355 m!2883583))

(declare-fun m!2883723 () Bool)

(assert (=> d!720355 m!2883723))

(assert (=> b!2534487 m!2883583))

(declare-fun m!2883725 () Bool)

(assert (=> b!2534487 m!2883725))

(assert (=> b!2534487 m!2883725))

(declare-fun m!2883727 () Bool)

(assert (=> b!2534487 m!2883727))

(assert (=> b!2534248 d!720355))

(declare-fun bm!159273 () Bool)

(declare-fun call!159280 () Regex!7551)

(declare-fun call!159278 () Regex!7551)

(assert (=> bm!159273 (= call!159280 call!159278)))

(declare-fun b!2534499 () Bool)

(declare-fun e!1603417 () Regex!7551)

(declare-fun e!1603418 () Regex!7551)

(assert (=> b!2534499 (= e!1603417 e!1603418)))

(declare-fun c!405076 () Bool)

(assert (=> b!2534499 (= c!405076 ((_ is ElementMatch!7551) (regOne!15615 r!27340)))))

(declare-fun d!720357 () Bool)

(declare-fun lt!901454 () Regex!7551)

(assert (=> d!720357 (validRegex!3177 lt!901454)))

(assert (=> d!720357 (= lt!901454 e!1603417)))

(declare-fun c!405075 () Bool)

(assert (=> d!720357 (= c!405075 (or ((_ is EmptyExpr!7551) (regOne!15615 r!27340)) ((_ is EmptyLang!7551) (regOne!15615 r!27340))))))

(assert (=> d!720357 (validRegex!3177 (regOne!15615 r!27340))))

(assert (=> d!720357 (= (derivativeStep!2120 (regOne!15615 r!27340) c!14016) lt!901454)))

(declare-fun c!405077 () Bool)

(declare-fun call!159281 () Regex!7551)

(declare-fun bm!159274 () Bool)

(assert (=> bm!159274 (= call!159281 (derivativeStep!2120 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))) c!14016))))

(declare-fun bm!159275 () Bool)

(declare-fun call!159279 () Regex!7551)

(assert (=> bm!159275 (= call!159278 call!159279)))

(declare-fun c!405078 () Bool)

(declare-fun bm!159276 () Bool)

(assert (=> bm!159276 (= call!159279 (derivativeStep!2120 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) c!14016))))

(declare-fun b!2534500 () Bool)

(assert (=> b!2534500 (= c!405077 ((_ is Union!7551) (regOne!15615 r!27340)))))

(declare-fun e!1603415 () Regex!7551)

(assert (=> b!2534500 (= e!1603418 e!1603415)))

(declare-fun b!2534501 () Bool)

(declare-fun e!1603414 () Regex!7551)

(assert (=> b!2534501 (= e!1603415 e!1603414)))

(assert (=> b!2534501 (= c!405078 ((_ is Star!7551) (regOne!15615 r!27340)))))

(declare-fun b!2534502 () Bool)

(assert (=> b!2534502 (= e!1603414 (Concat!12247 call!159278 (regOne!15615 r!27340)))))

(declare-fun b!2534503 () Bool)

(declare-fun e!1603416 () Regex!7551)

(assert (=> b!2534503 (= e!1603416 (Union!7551 (Concat!12247 call!159280 (regTwo!15614 (regOne!15615 r!27340))) call!159281))))

(declare-fun b!2534504 () Bool)

(assert (=> b!2534504 (= e!1603415 (Union!7551 call!159281 call!159279))))

(declare-fun b!2534505 () Bool)

(declare-fun c!405079 () Bool)

(assert (=> b!2534505 (= c!405079 (nullable!2468 (regOne!15614 (regOne!15615 r!27340))))))

(assert (=> b!2534505 (= e!1603414 e!1603416)))

(declare-fun b!2534506 () Bool)

(assert (=> b!2534506 (= e!1603418 (ite (= c!14016 (c!404979 (regOne!15615 r!27340))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534507 () Bool)

(assert (=> b!2534507 (= e!1603417 EmptyLang!7551)))

(declare-fun b!2534508 () Bool)

(assert (=> b!2534508 (= e!1603416 (Union!7551 (Concat!12247 call!159280 (regTwo!15614 (regOne!15615 r!27340))) EmptyLang!7551))))

(assert (= (and d!720357 c!405075) b!2534507))

(assert (= (and d!720357 (not c!405075)) b!2534499))

(assert (= (and b!2534499 c!405076) b!2534506))

(assert (= (and b!2534499 (not c!405076)) b!2534500))

(assert (= (and b!2534500 c!405077) b!2534504))

(assert (= (and b!2534500 (not c!405077)) b!2534501))

(assert (= (and b!2534501 c!405078) b!2534502))

(assert (= (and b!2534501 (not c!405078)) b!2534505))

(assert (= (and b!2534505 c!405079) b!2534503))

(assert (= (and b!2534505 (not c!405079)) b!2534508))

(assert (= (or b!2534503 b!2534508) bm!159273))

(assert (= (or b!2534502 bm!159273) bm!159275))

(assert (= (or b!2534504 bm!159275) bm!159276))

(assert (= (or b!2534504 b!2534503) bm!159274))

(declare-fun m!2883737 () Bool)

(assert (=> d!720357 m!2883737))

(assert (=> d!720357 m!2883589))

(declare-fun m!2883739 () Bool)

(assert (=> bm!159274 m!2883739))

(declare-fun m!2883741 () Bool)

(assert (=> bm!159276 m!2883741))

(assert (=> b!2534505 m!2883633))

(assert (=> b!2534248 d!720357))

(declare-fun b!2534535 () Bool)

(declare-fun e!1603429 () Bool)

(assert (=> b!2534535 (= e!1603429 tp_is_empty!12957)))

(declare-fun b!2534538 () Bool)

(declare-fun tp!809667 () Bool)

(declare-fun tp!809669 () Bool)

(assert (=> b!2534538 (= e!1603429 (and tp!809667 tp!809669))))

(assert (=> b!2534252 (= tp!809649 e!1603429)))

(declare-fun b!2534537 () Bool)

(declare-fun tp!809670 () Bool)

(assert (=> b!2534537 (= e!1603429 tp!809670)))

(declare-fun b!2534536 () Bool)

(declare-fun tp!809671 () Bool)

(declare-fun tp!809668 () Bool)

(assert (=> b!2534536 (= e!1603429 (and tp!809671 tp!809668))))

(assert (= (and b!2534252 ((_ is ElementMatch!7551) (regOne!15614 r!27340))) b!2534535))

(assert (= (and b!2534252 ((_ is Concat!12247) (regOne!15614 r!27340))) b!2534536))

(assert (= (and b!2534252 ((_ is Star!7551) (regOne!15614 r!27340))) b!2534537))

(assert (= (and b!2534252 ((_ is Union!7551) (regOne!15614 r!27340))) b!2534538))

(declare-fun b!2534546 () Bool)

(declare-fun e!1603433 () Bool)

(assert (=> b!2534546 (= e!1603433 tp_is_empty!12957)))

(declare-fun b!2534549 () Bool)

(declare-fun tp!809675 () Bool)

(declare-fun tp!809679 () Bool)

(assert (=> b!2534549 (= e!1603433 (and tp!809675 tp!809679))))

(assert (=> b!2534252 (= tp!809650 e!1603433)))

(declare-fun b!2534548 () Bool)

(declare-fun tp!809680 () Bool)

(assert (=> b!2534548 (= e!1603433 tp!809680)))

(declare-fun b!2534547 () Bool)

(declare-fun tp!809681 () Bool)

(declare-fun tp!809676 () Bool)

(assert (=> b!2534547 (= e!1603433 (and tp!809681 tp!809676))))

(assert (= (and b!2534252 ((_ is ElementMatch!7551) (regTwo!15614 r!27340))) b!2534546))

(assert (= (and b!2534252 ((_ is Concat!12247) (regTwo!15614 r!27340))) b!2534547))

(assert (= (and b!2534252 ((_ is Star!7551) (regTwo!15614 r!27340))) b!2534548))

(assert (= (and b!2534252 ((_ is Union!7551) (regTwo!15614 r!27340))) b!2534549))

(declare-fun b!2534558 () Bool)

(declare-fun e!1603436 () Bool)

(declare-fun tp!809690 () Bool)

(assert (=> b!2534558 (= e!1603436 (and tp_is_empty!12957 tp!809690))))

(assert (=> b!2534256 (= tp!809653 e!1603436)))

(assert (= (and b!2534256 ((_ is Cons!29516) (t!211315 tl!4068))) b!2534558))

(declare-fun b!2534559 () Bool)

(declare-fun e!1603437 () Bool)

(assert (=> b!2534559 (= e!1603437 tp_is_empty!12957)))

(declare-fun b!2534562 () Bool)

(declare-fun tp!809691 () Bool)

(declare-fun tp!809693 () Bool)

(assert (=> b!2534562 (= e!1603437 (and tp!809691 tp!809693))))

(assert (=> b!2534250 (= tp!809654 e!1603437)))

(declare-fun b!2534561 () Bool)

(declare-fun tp!809694 () Bool)

(assert (=> b!2534561 (= e!1603437 tp!809694)))

(declare-fun b!2534560 () Bool)

(declare-fun tp!809696 () Bool)

(declare-fun tp!809692 () Bool)

(assert (=> b!2534560 (= e!1603437 (and tp!809696 tp!809692))))

(assert (= (and b!2534250 ((_ is ElementMatch!7551) (reg!7880 r!27340))) b!2534559))

(assert (= (and b!2534250 ((_ is Concat!12247) (reg!7880 r!27340))) b!2534560))

(assert (= (and b!2534250 ((_ is Star!7551) (reg!7880 r!27340))) b!2534561))

(assert (= (and b!2534250 ((_ is Union!7551) (reg!7880 r!27340))) b!2534562))

(declare-fun b!2534571 () Bool)

(declare-fun e!1603440 () Bool)

(assert (=> b!2534571 (= e!1603440 tp_is_empty!12957)))

(declare-fun b!2534574 () Bool)

(declare-fun tp!809704 () Bool)

(declare-fun tp!809708 () Bool)

(assert (=> b!2534574 (= e!1603440 (and tp!809704 tp!809708))))

(assert (=> b!2534253 (= tp!809651 e!1603440)))

(declare-fun b!2534573 () Bool)

(declare-fun tp!809709 () Bool)

(assert (=> b!2534573 (= e!1603440 tp!809709)))

(declare-fun b!2534572 () Bool)

(declare-fun tp!809710 () Bool)

(declare-fun tp!809706 () Bool)

(assert (=> b!2534572 (= e!1603440 (and tp!809710 tp!809706))))

(assert (= (and b!2534253 ((_ is ElementMatch!7551) (regOne!15615 r!27340))) b!2534571))

(assert (= (and b!2534253 ((_ is Concat!12247) (regOne!15615 r!27340))) b!2534572))

(assert (= (and b!2534253 ((_ is Star!7551) (regOne!15615 r!27340))) b!2534573))

(assert (= (and b!2534253 ((_ is Union!7551) (regOne!15615 r!27340))) b!2534574))

(declare-fun b!2534579 () Bool)

(declare-fun e!1603442 () Bool)

(assert (=> b!2534579 (= e!1603442 tp_is_empty!12957)))

(declare-fun b!2534582 () Bool)

(declare-fun tp!809716 () Bool)

(declare-fun tp!809718 () Bool)

(assert (=> b!2534582 (= e!1603442 (and tp!809716 tp!809718))))

(assert (=> b!2534253 (= tp!809652 e!1603442)))

(declare-fun b!2534581 () Bool)

(declare-fun tp!809719 () Bool)

(assert (=> b!2534581 (= e!1603442 tp!809719)))

(declare-fun b!2534580 () Bool)

(declare-fun tp!809720 () Bool)

(declare-fun tp!809717 () Bool)

(assert (=> b!2534580 (= e!1603442 (and tp!809720 tp!809717))))

(assert (= (and b!2534253 ((_ is ElementMatch!7551) (regTwo!15615 r!27340))) b!2534579))

(assert (= (and b!2534253 ((_ is Concat!12247) (regTwo!15615 r!27340))) b!2534580))

(assert (= (and b!2534253 ((_ is Star!7551) (regTwo!15615 r!27340))) b!2534581))

(assert (= (and b!2534253 ((_ is Union!7551) (regTwo!15615 r!27340))) b!2534582))

(check-sat (not b!2534380) (not b!2534505) (not d!720325) (not b!2534409) (not b!2534573) (not d!720329) (not b!2534560) (not b!2534487) tp_is_empty!12957 (not bm!159244) (not b!2534483) (not b!2534316) (not b!2534537) (not bm!159224) (not b!2534582) (not d!720357) (not bm!159196) (not b!2534572) (not b!2534558) (not b!2534547) (not b!2534374) (not bm!159197) (not b!2534561) (not d!720349) (not bm!159227) (not d!720339) (not bm!159274) (not bm!159229) (not b!2534548) (not b!2534581) (not b!2534368) (not d!720355) (not bm!159268) (not b!2534536) (not b!2534549) (not b!2534574) (not bm!159245) (not b!2534295) (not b!2534580) (not bm!159223) (not bm!159228) (not b!2534538) (not b!2534429) (not bm!159276) (not d!720317) (not bm!159232) (not d!720353) (not d!720341) (not b!2534562) (not bm!159266))
(check-sat)
(get-model)

(declare-fun bm!159281 () Bool)

(declare-fun call!159288 () Regex!7551)

(declare-fun call!159286 () Regex!7551)

(assert (=> bm!159281 (= call!159288 call!159286)))

(declare-fun b!2534591 () Bool)

(declare-fun e!1603448 () Regex!7551)

(declare-fun e!1603449 () Regex!7551)

(assert (=> b!2534591 (= e!1603448 e!1603449)))

(declare-fun c!405087 () Bool)

(assert (=> b!2534591 (= c!405087 ((_ is ElementMatch!7551) (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))))))

(declare-fun d!720365 () Bool)

(declare-fun lt!901457 () Regex!7551)

(assert (=> d!720365 (validRegex!3177 lt!901457)))

(assert (=> d!720365 (= lt!901457 e!1603448)))

(declare-fun c!405086 () Bool)

(assert (=> d!720365 (= c!405086 (or ((_ is EmptyExpr!7551) (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))) ((_ is EmptyLang!7551) (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))))))

(assert (=> d!720365 (validRegex!3177 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))))

(assert (=> d!720365 (= (derivativeStep!2120 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))) c!14016) lt!901457)))

(declare-fun bm!159282 () Bool)

(declare-fun call!159289 () Regex!7551)

(declare-fun c!405088 () Bool)

(assert (=> bm!159282 (= call!159289 (derivativeStep!2120 (ite c!405088 (regOne!15615 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))) (regTwo!15614 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))) c!14016))))

(declare-fun bm!159283 () Bool)

(declare-fun call!159287 () Regex!7551)

(assert (=> bm!159283 (= call!159286 call!159287)))

(declare-fun bm!159284 () Bool)

(declare-fun c!405089 () Bool)

(assert (=> bm!159284 (= call!159287 (derivativeStep!2120 (ite c!405088 (regTwo!15615 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))) (ite c!405089 (reg!7880 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))) (regOne!15614 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))))) c!14016))))

(declare-fun b!2534592 () Bool)

(assert (=> b!2534592 (= c!405088 ((_ is Union!7551) (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))))))

(declare-fun e!1603446 () Regex!7551)

(assert (=> b!2534592 (= e!1603449 e!1603446)))

(declare-fun b!2534593 () Bool)

(declare-fun e!1603445 () Regex!7551)

(assert (=> b!2534593 (= e!1603446 e!1603445)))

(assert (=> b!2534593 (= c!405089 ((_ is Star!7551) (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))))))

(declare-fun b!2534594 () Bool)

(assert (=> b!2534594 (= e!1603445 (Concat!12247 call!159286 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340)))))))

(declare-fun b!2534595 () Bool)

(declare-fun e!1603447 () Regex!7551)

(assert (=> b!2534595 (= e!1603447 (Union!7551 (Concat!12247 call!159288 (regTwo!15614 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))) call!159289))))

(declare-fun b!2534596 () Bool)

(assert (=> b!2534596 (= e!1603446 (Union!7551 call!159289 call!159287))))

(declare-fun b!2534597 () Bool)

(declare-fun c!405090 () Bool)

(assert (=> b!2534597 (= c!405090 (nullable!2468 (regOne!15614 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))))))

(assert (=> b!2534597 (= e!1603445 e!1603447)))

(declare-fun b!2534598 () Bool)

(assert (=> b!2534598 (= e!1603449 (ite (= c!14016 (c!404979 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534599 () Bool)

(assert (=> b!2534599 (= e!1603448 EmptyLang!7551)))

(declare-fun b!2534600 () Bool)

(assert (=> b!2534600 (= e!1603447 (Union!7551 (Concat!12247 call!159288 (regTwo!15614 (ite c!405066 (regTwo!15615 r!27340) (ite c!405067 (reg!7880 r!27340) (regOne!15614 r!27340))))) EmptyLang!7551))))

(assert (= (and d!720365 c!405086) b!2534599))

(assert (= (and d!720365 (not c!405086)) b!2534591))

(assert (= (and b!2534591 c!405087) b!2534598))

(assert (= (and b!2534591 (not c!405087)) b!2534592))

(assert (= (and b!2534592 c!405088) b!2534596))

(assert (= (and b!2534592 (not c!405088)) b!2534593))

(assert (= (and b!2534593 c!405089) b!2534594))

(assert (= (and b!2534593 (not c!405089)) b!2534597))

(assert (= (and b!2534597 c!405090) b!2534595))

(assert (= (and b!2534597 (not c!405090)) b!2534600))

(assert (= (or b!2534595 b!2534600) bm!159281))

(assert (= (or b!2534594 bm!159281) bm!159283))

(assert (= (or b!2534596 bm!159283) bm!159284))

(assert (= (or b!2534596 b!2534595) bm!159282))

(declare-fun m!2883757 () Bool)

(assert (=> d!720365 m!2883757))

(declare-fun m!2883759 () Bool)

(assert (=> d!720365 m!2883759))

(declare-fun m!2883761 () Bool)

(assert (=> bm!159282 m!2883761))

(declare-fun m!2883763 () Bool)

(assert (=> bm!159284 m!2883763))

(declare-fun m!2883765 () Bool)

(assert (=> b!2534597 m!2883765))

(assert (=> bm!159268 d!720365))

(declare-fun b!2534601 () Bool)

(declare-fun e!1603451 () Bool)

(declare-fun call!159291 () Bool)

(assert (=> b!2534601 (= e!1603451 call!159291)))

(declare-fun b!2534602 () Bool)

(declare-fun res!1069345 () Bool)

(declare-fun e!1603455 () Bool)

(assert (=> b!2534602 (=> res!1069345 e!1603455)))

(assert (=> b!2534602 (= res!1069345 (not ((_ is Concat!12247) lt!901452)))))

(declare-fun e!1603454 () Bool)

(assert (=> b!2534602 (= e!1603454 e!1603455)))

(declare-fun bm!159285 () Bool)

(declare-fun call!159290 () Bool)

(assert (=> bm!159285 (= call!159291 call!159290)))

(declare-fun bm!159286 () Bool)

(declare-fun call!159292 () Bool)

(declare-fun c!405092 () Bool)

(assert (=> bm!159286 (= call!159292 (validRegex!3177 (ite c!405092 (regTwo!15615 lt!901452) (regOne!15614 lt!901452))))))

(declare-fun b!2534603 () Bool)

(declare-fun e!1603453 () Bool)

(declare-fun e!1603456 () Bool)

(assert (=> b!2534603 (= e!1603453 e!1603456)))

(declare-fun res!1069342 () Bool)

(assert (=> b!2534603 (= res!1069342 (not (nullable!2468 (reg!7880 lt!901452))))))

(assert (=> b!2534603 (=> (not res!1069342) (not e!1603456))))

(declare-fun b!2534604 () Bool)

(assert (=> b!2534604 (= e!1603455 e!1603451)))

(declare-fun res!1069344 () Bool)

(assert (=> b!2534604 (=> (not res!1069344) (not e!1603451))))

(assert (=> b!2534604 (= res!1069344 call!159292)))

(declare-fun b!2534605 () Bool)

(declare-fun e!1603450 () Bool)

(assert (=> b!2534605 (= e!1603450 e!1603453)))

(declare-fun c!405091 () Bool)

(assert (=> b!2534605 (= c!405091 ((_ is Star!7551) lt!901452))))

(declare-fun b!2534606 () Bool)

(declare-fun e!1603452 () Bool)

(assert (=> b!2534606 (= e!1603452 call!159292)))

(declare-fun bm!159287 () Bool)

(assert (=> bm!159287 (= call!159290 (validRegex!3177 (ite c!405091 (reg!7880 lt!901452) (ite c!405092 (regOne!15615 lt!901452) (regTwo!15614 lt!901452)))))))

(declare-fun b!2534607 () Bool)

(assert (=> b!2534607 (= e!1603456 call!159290)))

(declare-fun b!2534608 () Bool)

(assert (=> b!2534608 (= e!1603453 e!1603454)))

(assert (=> b!2534608 (= c!405092 ((_ is Union!7551) lt!901452))))

(declare-fun d!720367 () Bool)

(declare-fun res!1069343 () Bool)

(assert (=> d!720367 (=> res!1069343 e!1603450)))

(assert (=> d!720367 (= res!1069343 ((_ is ElementMatch!7551) lt!901452))))

(assert (=> d!720367 (= (validRegex!3177 lt!901452) e!1603450)))

(declare-fun b!2534609 () Bool)

(declare-fun res!1069341 () Bool)

(assert (=> b!2534609 (=> (not res!1069341) (not e!1603452))))

(assert (=> b!2534609 (= res!1069341 call!159291)))

(assert (=> b!2534609 (= e!1603454 e!1603452)))

(assert (= (and d!720367 (not res!1069343)) b!2534605))

(assert (= (and b!2534605 c!405091) b!2534603))

(assert (= (and b!2534605 (not c!405091)) b!2534608))

(assert (= (and b!2534603 res!1069342) b!2534607))

(assert (= (and b!2534608 c!405092) b!2534609))

(assert (= (and b!2534608 (not c!405092)) b!2534602))

(assert (= (and b!2534609 res!1069341) b!2534606))

(assert (= (and b!2534602 (not res!1069345)) b!2534604))

(assert (= (and b!2534604 res!1069344) b!2534601))

(assert (= (or b!2534609 b!2534601) bm!159285))

(assert (= (or b!2534606 b!2534604) bm!159286))

(assert (= (or b!2534607 bm!159285) bm!159287))

(declare-fun m!2883767 () Bool)

(assert (=> bm!159286 m!2883767))

(declare-fun m!2883769 () Bool)

(assert (=> b!2534603 m!2883769))

(declare-fun m!2883771 () Bool)

(assert (=> bm!159287 m!2883771))

(assert (=> d!720355 d!720367))

(declare-fun b!2534610 () Bool)

(declare-fun e!1603458 () Bool)

(declare-fun call!159294 () Bool)

(assert (=> b!2534610 (= e!1603458 call!159294)))

(declare-fun b!2534611 () Bool)

(declare-fun res!1069350 () Bool)

(declare-fun e!1603462 () Bool)

(assert (=> b!2534611 (=> res!1069350 e!1603462)))

(assert (=> b!2534611 (= res!1069350 (not ((_ is Concat!12247) (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))))

(declare-fun e!1603461 () Bool)

(assert (=> b!2534611 (= e!1603461 e!1603462)))

(declare-fun bm!159288 () Bool)

(declare-fun call!159293 () Bool)

(assert (=> bm!159288 (= call!159294 call!159293)))

(declare-fun bm!159289 () Bool)

(declare-fun c!405094 () Bool)

(declare-fun call!159295 () Bool)

(assert (=> bm!159289 (= call!159295 (validRegex!3177 (ite c!405094 (regTwo!15615 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (regOne!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))))

(declare-fun b!2534612 () Bool)

(declare-fun e!1603460 () Bool)

(declare-fun e!1603463 () Bool)

(assert (=> b!2534612 (= e!1603460 e!1603463)))

(declare-fun res!1069347 () Bool)

(assert (=> b!2534612 (= res!1069347 (not (nullable!2468 (reg!7880 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))))

(assert (=> b!2534612 (=> (not res!1069347) (not e!1603463))))

(declare-fun b!2534613 () Bool)

(assert (=> b!2534613 (= e!1603462 e!1603458)))

(declare-fun res!1069349 () Bool)

(assert (=> b!2534613 (=> (not res!1069349) (not e!1603458))))

(assert (=> b!2534613 (= res!1069349 call!159295)))

(declare-fun b!2534614 () Bool)

(declare-fun e!1603457 () Bool)

(assert (=> b!2534614 (= e!1603457 e!1603460)))

(declare-fun c!405093 () Bool)

(assert (=> b!2534614 (= c!405093 ((_ is Star!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun b!2534615 () Bool)

(declare-fun e!1603459 () Bool)

(assert (=> b!2534615 (= e!1603459 call!159295)))

(declare-fun bm!159290 () Bool)

(assert (=> bm!159290 (= call!159293 (validRegex!3177 (ite c!405093 (reg!7880 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (ite c!405094 (regOne!15615 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (regTwo!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))))))

(declare-fun b!2534616 () Bool)

(assert (=> b!2534616 (= e!1603463 call!159293)))

(declare-fun b!2534617 () Bool)

(assert (=> b!2534617 (= e!1603460 e!1603461)))

(assert (=> b!2534617 (= c!405094 ((_ is Union!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun d!720369 () Bool)

(declare-fun res!1069348 () Bool)

(assert (=> d!720369 (=> res!1069348 e!1603457)))

(assert (=> d!720369 (= res!1069348 ((_ is ElementMatch!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(assert (=> d!720369 (= (validRegex!3177 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) e!1603457)))

(declare-fun b!2534618 () Bool)

(declare-fun res!1069346 () Bool)

(assert (=> b!2534618 (=> (not res!1069346) (not e!1603459))))

(assert (=> b!2534618 (= res!1069346 call!159294)))

(assert (=> b!2534618 (= e!1603461 e!1603459)))

(assert (= (and d!720369 (not res!1069348)) b!2534614))

(assert (= (and b!2534614 c!405093) b!2534612))

(assert (= (and b!2534614 (not c!405093)) b!2534617))

(assert (= (and b!2534612 res!1069347) b!2534616))

(assert (= (and b!2534617 c!405094) b!2534618))

(assert (= (and b!2534617 (not c!405094)) b!2534611))

(assert (= (and b!2534618 res!1069346) b!2534615))

(assert (= (and b!2534611 (not res!1069350)) b!2534613))

(assert (= (and b!2534613 res!1069349) b!2534610))

(assert (= (or b!2534618 b!2534610) bm!159288))

(assert (= (or b!2534615 b!2534613) bm!159289))

(assert (= (or b!2534616 bm!159288) bm!159290))

(declare-fun m!2883773 () Bool)

(assert (=> bm!159289 m!2883773))

(declare-fun m!2883775 () Bool)

(assert (=> b!2534612 m!2883775))

(declare-fun m!2883777 () Bool)

(assert (=> bm!159290 m!2883777))

(assert (=> d!720355 d!720369))

(declare-fun bm!159291 () Bool)

(declare-fun call!159298 () Regex!7551)

(declare-fun call!159296 () Regex!7551)

(assert (=> bm!159291 (= call!159298 call!159296)))

(declare-fun b!2534619 () Bool)

(declare-fun e!1603467 () Regex!7551)

(declare-fun e!1603468 () Regex!7551)

(assert (=> b!2534619 (= e!1603467 e!1603468)))

(declare-fun c!405096 () Bool)

(assert (=> b!2534619 (= c!405096 ((_ is ElementMatch!7551) (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(declare-fun d!720371 () Bool)

(declare-fun lt!901458 () Regex!7551)

(assert (=> d!720371 (validRegex!3177 lt!901458)))

(assert (=> d!720371 (= lt!901458 e!1603467)))

(declare-fun c!405095 () Bool)

(assert (=> d!720371 (= c!405095 (or ((_ is EmptyExpr!7551) (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))) ((_ is EmptyLang!7551) (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(assert (=> d!720371 (validRegex!3177 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(assert (=> d!720371 (= (derivativeStep!2120 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) c!14016) lt!901458)))

(declare-fun call!159299 () Regex!7551)

(declare-fun bm!159292 () Bool)

(declare-fun c!405097 () Bool)

(assert (=> bm!159292 (= call!159299 (derivativeStep!2120 (ite c!405097 (regOne!15615 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))) (regTwo!15614 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) c!14016))))

(declare-fun bm!159293 () Bool)

(declare-fun call!159297 () Regex!7551)

(assert (=> bm!159293 (= call!159296 call!159297)))

(declare-fun c!405098 () Bool)

(declare-fun bm!159294 () Bool)

(assert (=> bm!159294 (= call!159297 (derivativeStep!2120 (ite c!405097 (regTwo!15615 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))) (ite c!405098 (reg!7880 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))) (regOne!15614 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))) c!14016))))

(declare-fun b!2534620 () Bool)

(assert (=> b!2534620 (= c!405097 ((_ is Union!7551) (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(declare-fun e!1603465 () Regex!7551)

(assert (=> b!2534620 (= e!1603468 e!1603465)))

(declare-fun b!2534621 () Bool)

(declare-fun e!1603464 () Regex!7551)

(assert (=> b!2534621 (= e!1603465 e!1603464)))

(assert (=> b!2534621 (= c!405098 ((_ is Star!7551) (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(declare-fun b!2534622 () Bool)

(assert (=> b!2534622 (= e!1603464 (Concat!12247 call!159296 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(declare-fun b!2534623 () Bool)

(declare-fun e!1603466 () Regex!7551)

(assert (=> b!2534623 (= e!1603466 (Union!7551 (Concat!12247 call!159298 (regTwo!15614 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) call!159299))))

(declare-fun b!2534624 () Bool)

(assert (=> b!2534624 (= e!1603465 (Union!7551 call!159299 call!159297))))

(declare-fun c!405099 () Bool)

(declare-fun b!2534625 () Bool)

(assert (=> b!2534625 (= c!405099 (nullable!2468 (regOne!15614 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(assert (=> b!2534625 (= e!1603464 e!1603466)))

(declare-fun b!2534626 () Bool)

(assert (=> b!2534626 (= e!1603468 (ite (= c!14016 (c!404979 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534627 () Bool)

(assert (=> b!2534627 (= e!1603467 EmptyLang!7551)))

(declare-fun b!2534628 () Bool)

(assert (=> b!2534628 (= e!1603466 (Union!7551 (Concat!12247 call!159298 (regTwo!15614 (ite c!405077 (regTwo!15615 (regOne!15615 r!27340)) (ite c!405078 (reg!7880 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) EmptyLang!7551))))

(assert (= (and d!720371 c!405095) b!2534627))

(assert (= (and d!720371 (not c!405095)) b!2534619))

(assert (= (and b!2534619 c!405096) b!2534626))

(assert (= (and b!2534619 (not c!405096)) b!2534620))

(assert (= (and b!2534620 c!405097) b!2534624))

(assert (= (and b!2534620 (not c!405097)) b!2534621))

(assert (= (and b!2534621 c!405098) b!2534622))

(assert (= (and b!2534621 (not c!405098)) b!2534625))

(assert (= (and b!2534625 c!405099) b!2534623))

(assert (= (and b!2534625 (not c!405099)) b!2534628))

(assert (= (or b!2534623 b!2534628) bm!159291))

(assert (= (or b!2534622 bm!159291) bm!159293))

(assert (= (or b!2534624 bm!159293) bm!159294))

(assert (= (or b!2534624 b!2534623) bm!159292))

(declare-fun m!2883779 () Bool)

(assert (=> d!720371 m!2883779))

(declare-fun m!2883781 () Bool)

(assert (=> d!720371 m!2883781))

(declare-fun m!2883783 () Bool)

(assert (=> bm!159292 m!2883783))

(declare-fun m!2883785 () Bool)

(assert (=> bm!159294 m!2883785))

(declare-fun m!2883787 () Bool)

(assert (=> b!2534625 m!2883787))

(assert (=> bm!159276 d!720371))

(declare-fun bm!159295 () Bool)

(declare-fun call!159302 () Regex!7551)

(declare-fun call!159300 () Regex!7551)

(assert (=> bm!159295 (= call!159302 call!159300)))

(declare-fun b!2534629 () Bool)

(declare-fun e!1603472 () Regex!7551)

(declare-fun e!1603473 () Regex!7551)

(assert (=> b!2534629 (= e!1603472 e!1603473)))

(declare-fun c!405101 () Bool)

(assert (=> b!2534629 (= c!405101 ((_ is ElementMatch!7551) (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))

(declare-fun d!720373 () Bool)

(declare-fun lt!901459 () Regex!7551)

(assert (=> d!720373 (validRegex!3177 lt!901459)))

(assert (=> d!720373 (= lt!901459 e!1603472)))

(declare-fun c!405100 () Bool)

(assert (=> d!720373 (= c!405100 (or ((_ is EmptyExpr!7551) (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))) ((_ is EmptyLang!7551) (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(assert (=> d!720373 (validRegex!3177 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))

(assert (=> d!720373 (= (derivativeStep!2120 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))) c!14016) lt!901459)))

(declare-fun bm!159296 () Bool)

(declare-fun c!405102 () Bool)

(declare-fun call!159303 () Regex!7551)

(assert (=> bm!159296 (= call!159303 (derivativeStep!2120 (ite c!405102 (regOne!15615 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))) (regTwo!15614 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) c!14016))))

(declare-fun bm!159297 () Bool)

(declare-fun call!159301 () Regex!7551)

(assert (=> bm!159297 (= call!159300 call!159301)))

(declare-fun c!405103 () Bool)

(declare-fun bm!159298 () Bool)

(assert (=> bm!159298 (= call!159301 (derivativeStep!2120 (ite c!405102 (regTwo!15615 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))) (ite c!405103 (reg!7880 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))) (regOne!15614 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))) c!14016))))

(declare-fun b!2534630 () Bool)

(assert (=> b!2534630 (= c!405102 ((_ is Union!7551) (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))

(declare-fun e!1603470 () Regex!7551)

(assert (=> b!2534630 (= e!1603473 e!1603470)))

(declare-fun b!2534631 () Bool)

(declare-fun e!1603469 () Regex!7551)

(assert (=> b!2534631 (= e!1603470 e!1603469)))

(assert (=> b!2534631 (= c!405103 ((_ is Star!7551) (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))

(declare-fun b!2534632 () Bool)

(assert (=> b!2534632 (= e!1603469 (Concat!12247 call!159300 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))

(declare-fun e!1603471 () Regex!7551)

(declare-fun b!2534633 () Bool)

(assert (=> b!2534633 (= e!1603471 (Union!7551 (Concat!12247 call!159302 (regTwo!15614 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) call!159303))))

(declare-fun b!2534634 () Bool)

(assert (=> b!2534634 (= e!1603470 (Union!7551 call!159303 call!159301))))

(declare-fun b!2534635 () Bool)

(declare-fun c!405104 () Bool)

(assert (=> b!2534635 (= c!405104 (nullable!2468 (regOne!15614 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(assert (=> b!2534635 (= e!1603469 e!1603471)))

(declare-fun b!2534636 () Bool)

(assert (=> b!2534636 (= e!1603473 (ite (= c!14016 (c!404979 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534637 () Bool)

(assert (=> b!2534637 (= e!1603472 EmptyLang!7551)))

(declare-fun b!2534638 () Bool)

(assert (=> b!2534638 (= e!1603471 (Union!7551 (Concat!12247 call!159302 (regTwo!15614 (ite c!405077 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) EmptyLang!7551))))

(assert (= (and d!720373 c!405100) b!2534637))

(assert (= (and d!720373 (not c!405100)) b!2534629))

(assert (= (and b!2534629 c!405101) b!2534636))

(assert (= (and b!2534629 (not c!405101)) b!2534630))

(assert (= (and b!2534630 c!405102) b!2534634))

(assert (= (and b!2534630 (not c!405102)) b!2534631))

(assert (= (and b!2534631 c!405103) b!2534632))

(assert (= (and b!2534631 (not c!405103)) b!2534635))

(assert (= (and b!2534635 c!405104) b!2534633))

(assert (= (and b!2534635 (not c!405104)) b!2534638))

(assert (= (or b!2534633 b!2534638) bm!159295))

(assert (= (or b!2534632 bm!159295) bm!159297))

(assert (= (or b!2534634 bm!159297) bm!159298))

(assert (= (or b!2534634 b!2534633) bm!159296))

(declare-fun m!2883789 () Bool)

(assert (=> d!720373 m!2883789))

(declare-fun m!2883791 () Bool)

(assert (=> d!720373 m!2883791))

(declare-fun m!2883793 () Bool)

(assert (=> bm!159296 m!2883793))

(declare-fun m!2883795 () Bool)

(assert (=> bm!159298 m!2883795))

(declare-fun m!2883797 () Bool)

(assert (=> b!2534635 m!2883797))

(assert (=> bm!159274 d!720373))

(declare-fun b!2534639 () Bool)

(declare-fun e!1603475 () Bool)

(declare-fun call!159305 () Bool)

(assert (=> b!2534639 (= e!1603475 call!159305)))

(declare-fun b!2534640 () Bool)

(declare-fun res!1069355 () Bool)

(declare-fun e!1603479 () Bool)

(assert (=> b!2534640 (=> res!1069355 e!1603479)))

(assert (=> b!2534640 (= res!1069355 (not ((_ is Concat!12247) (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))))

(declare-fun e!1603478 () Bool)

(assert (=> b!2534640 (= e!1603478 e!1603479)))

(declare-fun bm!159299 () Bool)

(declare-fun call!159304 () Bool)

(assert (=> bm!159299 (= call!159305 call!159304)))

(declare-fun call!159306 () Bool)

(declare-fun c!405106 () Bool)

(declare-fun bm!159300 () Bool)

(assert (=> bm!159300 (= call!159306 (validRegex!3177 (ite c!405106 (regTwo!15615 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) (regOne!15614 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))))

(declare-fun b!2534641 () Bool)

(declare-fun e!1603477 () Bool)

(declare-fun e!1603480 () Bool)

(assert (=> b!2534641 (= e!1603477 e!1603480)))

(declare-fun res!1069352 () Bool)

(assert (=> b!2534641 (= res!1069352 (not (nullable!2468 (reg!7880 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))))

(assert (=> b!2534641 (=> (not res!1069352) (not e!1603480))))

(declare-fun b!2534642 () Bool)

(assert (=> b!2534642 (= e!1603479 e!1603475)))

(declare-fun res!1069354 () Bool)

(assert (=> b!2534642 (=> (not res!1069354) (not e!1603475))))

(assert (=> b!2534642 (= res!1069354 call!159306)))

(declare-fun b!2534643 () Bool)

(declare-fun e!1603474 () Bool)

(assert (=> b!2534643 (= e!1603474 e!1603477)))

(declare-fun c!405105 () Bool)

(assert (=> b!2534643 (= c!405105 ((_ is Star!7551) (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(declare-fun b!2534644 () Bool)

(declare-fun e!1603476 () Bool)

(assert (=> b!2534644 (= e!1603476 call!159306)))

(declare-fun bm!159301 () Bool)

(assert (=> bm!159301 (= call!159304 (validRegex!3177 (ite c!405105 (reg!7880 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) (ite c!405106 (regOne!15615 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) (regTwo!15614 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))))))

(declare-fun b!2534645 () Bool)

(assert (=> b!2534645 (= e!1603480 call!159304)))

(declare-fun b!2534646 () Bool)

(assert (=> b!2534646 (= e!1603477 e!1603478)))

(assert (=> b!2534646 (= c!405106 ((_ is Union!7551) (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(declare-fun d!720375 () Bool)

(declare-fun res!1069353 () Bool)

(assert (=> d!720375 (=> res!1069353 e!1603474)))

(assert (=> d!720375 (= res!1069353 ((_ is ElementMatch!7551) (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(assert (=> d!720375 (= (validRegex!3177 (ite c!405033 (reg!7880 r!27340) (ite c!405034 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) e!1603474)))

(declare-fun b!2534647 () Bool)

(declare-fun res!1069351 () Bool)

(assert (=> b!2534647 (=> (not res!1069351) (not e!1603476))))

(assert (=> b!2534647 (= res!1069351 call!159305)))

(assert (=> b!2534647 (= e!1603478 e!1603476)))

(assert (= (and d!720375 (not res!1069353)) b!2534643))

(assert (= (and b!2534643 c!405105) b!2534641))

(assert (= (and b!2534643 (not c!405105)) b!2534646))

(assert (= (and b!2534641 res!1069352) b!2534645))

(assert (= (and b!2534646 c!405106) b!2534647))

(assert (= (and b!2534646 (not c!405106)) b!2534640))

(assert (= (and b!2534647 res!1069351) b!2534644))

(assert (= (and b!2534640 (not res!1069355)) b!2534642))

(assert (= (and b!2534642 res!1069354) b!2534639))

(assert (= (or b!2534647 b!2534639) bm!159299))

(assert (= (or b!2534644 b!2534642) bm!159300))

(assert (= (or b!2534645 bm!159299) bm!159301))

(declare-fun m!2883799 () Bool)

(assert (=> bm!159300 m!2883799))

(declare-fun m!2883801 () Bool)

(assert (=> b!2534641 m!2883801))

(declare-fun m!2883803 () Bool)

(assert (=> bm!159301 m!2883803))

(assert (=> bm!159245 d!720375))

(declare-fun bm!159302 () Bool)

(declare-fun call!159309 () Regex!7551)

(declare-fun call!159307 () Regex!7551)

(assert (=> bm!159302 (= call!159309 call!159307)))

(declare-fun b!2534648 () Bool)

(declare-fun e!1603484 () Regex!7551)

(declare-fun e!1603485 () Regex!7551)

(assert (=> b!2534648 (= e!1603484 e!1603485)))

(declare-fun c!405108 () Bool)

(assert (=> b!2534648 (= c!405108 ((_ is ElementMatch!7551) (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))

(declare-fun d!720377 () Bool)

(declare-fun lt!901460 () Regex!7551)

(assert (=> d!720377 (validRegex!3177 lt!901460)))

(assert (=> d!720377 (= lt!901460 e!1603484)))

(declare-fun c!405107 () Bool)

(assert (=> d!720377 (= c!405107 (or ((_ is EmptyExpr!7551) (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))) ((_ is EmptyLang!7551) (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(assert (=> d!720377 (validRegex!3177 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))

(assert (=> d!720377 (= (derivativeStep!2120 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)) c!14016) lt!901460)))

(declare-fun call!159310 () Regex!7551)

(declare-fun c!405109 () Bool)

(declare-fun bm!159303 () Bool)

(assert (=> bm!159303 (= call!159310 (derivativeStep!2120 (ite c!405109 (regOne!15615 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))) (regTwo!15614 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) c!14016))))

(declare-fun bm!159304 () Bool)

(declare-fun call!159308 () Regex!7551)

(assert (=> bm!159304 (= call!159307 call!159308)))

(declare-fun bm!159305 () Bool)

(declare-fun c!405110 () Bool)

(assert (=> bm!159305 (= call!159308 (derivativeStep!2120 (ite c!405109 (regTwo!15615 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))) (ite c!405110 (reg!7880 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))) (regOne!15614 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))))) c!14016))))

(declare-fun b!2534649 () Bool)

(assert (=> b!2534649 (= c!405109 ((_ is Union!7551) (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))

(declare-fun e!1603482 () Regex!7551)

(assert (=> b!2534649 (= e!1603485 e!1603482)))

(declare-fun b!2534650 () Bool)

(declare-fun e!1603481 () Regex!7551)

(assert (=> b!2534650 (= e!1603482 e!1603481)))

(assert (=> b!2534650 (= c!405110 ((_ is Star!7551) (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))

(declare-fun b!2534651 () Bool)

(assert (=> b!2534651 (= e!1603481 (Concat!12247 call!159307 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340))))))

(declare-fun b!2534652 () Bool)

(declare-fun e!1603483 () Regex!7551)

(assert (=> b!2534652 (= e!1603483 (Union!7551 (Concat!12247 call!159309 (regTwo!15614 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) call!159310))))

(declare-fun b!2534653 () Bool)

(assert (=> b!2534653 (= e!1603482 (Union!7551 call!159310 call!159308))))

(declare-fun b!2534654 () Bool)

(declare-fun c!405111 () Bool)

(assert (=> b!2534654 (= c!405111 (nullable!2468 (regOne!15614 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))))))

(assert (=> b!2534654 (= e!1603481 e!1603483)))

(declare-fun b!2534655 () Bool)

(assert (=> b!2534655 (= e!1603485 (ite (= c!14016 (c!404979 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534656 () Bool)

(assert (=> b!2534656 (= e!1603484 EmptyLang!7551)))

(declare-fun b!2534657 () Bool)

(assert (=> b!2534657 (= e!1603483 (Union!7551 (Concat!12247 call!159309 (regTwo!15614 (ite c!405066 (regOne!15615 r!27340) (regTwo!15614 r!27340)))) EmptyLang!7551))))

(assert (= (and d!720377 c!405107) b!2534656))

(assert (= (and d!720377 (not c!405107)) b!2534648))

(assert (= (and b!2534648 c!405108) b!2534655))

(assert (= (and b!2534648 (not c!405108)) b!2534649))

(assert (= (and b!2534649 c!405109) b!2534653))

(assert (= (and b!2534649 (not c!405109)) b!2534650))

(assert (= (and b!2534650 c!405110) b!2534651))

(assert (= (and b!2534650 (not c!405110)) b!2534654))

(assert (= (and b!2534654 c!405111) b!2534652))

(assert (= (and b!2534654 (not c!405111)) b!2534657))

(assert (= (or b!2534652 b!2534657) bm!159302))

(assert (= (or b!2534651 bm!159302) bm!159304))

(assert (= (or b!2534653 bm!159304) bm!159305))

(assert (= (or b!2534653 b!2534652) bm!159303))

(declare-fun m!2883805 () Bool)

(assert (=> d!720377 m!2883805))

(declare-fun m!2883807 () Bool)

(assert (=> d!720377 m!2883807))

(declare-fun m!2883809 () Bool)

(assert (=> bm!159303 m!2883809))

(declare-fun m!2883811 () Bool)

(assert (=> bm!159305 m!2883811))

(declare-fun m!2883813 () Bool)

(assert (=> b!2534654 m!2883813))

(assert (=> bm!159266 d!720377))

(declare-fun d!720379 () Bool)

(declare-fun e!1603491 () Bool)

(assert (=> d!720379 e!1603491))

(declare-fun res!1069361 () Bool)

(assert (=> d!720379 (=> (not res!1069361) (not e!1603491))))

(declare-fun lt!901463 () List!29616)

(assert (=> d!720379 (= res!1069361 (= (content!4051 lt!901463) ((_ map or) (content!4051 (ite c!405017 call!159236 call!159234)) (content!4051 (ite c!405017 call!159234 call!159235)))))))

(declare-fun e!1603490 () List!29616)

(assert (=> d!720379 (= lt!901463 e!1603490)))

(declare-fun c!405114 () Bool)

(assert (=> d!720379 (= c!405114 ((_ is Nil!29516) (ite c!405017 call!159236 call!159234)))))

(assert (=> d!720379 (= (++!7246 (ite c!405017 call!159236 call!159234) (ite c!405017 call!159234 call!159235)) lt!901463)))

(declare-fun b!2534669 () Bool)

(assert (=> b!2534669 (= e!1603491 (or (not (= (ite c!405017 call!159234 call!159235) Nil!29516)) (= lt!901463 (ite c!405017 call!159236 call!159234))))))

(declare-fun b!2534666 () Bool)

(assert (=> b!2534666 (= e!1603490 (ite c!405017 call!159234 call!159235))))

(declare-fun b!2534668 () Bool)

(declare-fun res!1069360 () Bool)

(assert (=> b!2534668 (=> (not res!1069360) (not e!1603491))))

(declare-fun size!22933 (List!29616) Int)

(assert (=> b!2534668 (= res!1069360 (= (size!22933 lt!901463) (+ (size!22933 (ite c!405017 call!159236 call!159234)) (size!22933 (ite c!405017 call!159234 call!159235)))))))

(declare-fun b!2534667 () Bool)

(assert (=> b!2534667 (= e!1603490 (Cons!29516 (h!34936 (ite c!405017 call!159236 call!159234)) (++!7246 (t!211315 (ite c!405017 call!159236 call!159234)) (ite c!405017 call!159234 call!159235))))))

(assert (= (and d!720379 c!405114) b!2534666))

(assert (= (and d!720379 (not c!405114)) b!2534667))

(assert (= (and d!720379 res!1069361) b!2534668))

(assert (= (and b!2534668 res!1069360) b!2534669))

(declare-fun m!2883815 () Bool)

(assert (=> d!720379 m!2883815))

(declare-fun m!2883817 () Bool)

(assert (=> d!720379 m!2883817))

(declare-fun m!2883819 () Bool)

(assert (=> d!720379 m!2883819))

(declare-fun m!2883821 () Bool)

(assert (=> b!2534668 m!2883821))

(declare-fun m!2883823 () Bool)

(assert (=> b!2534668 m!2883823))

(declare-fun m!2883825 () Bool)

(assert (=> b!2534668 m!2883825))

(declare-fun m!2883827 () Bool)

(assert (=> b!2534667 m!2883827))

(assert (=> bm!159229 d!720379))

(declare-fun b!2534670 () Bool)

(declare-fun e!1603493 () Bool)

(declare-fun call!159312 () Bool)

(assert (=> b!2534670 (= e!1603493 call!159312)))

(declare-fun b!2534671 () Bool)

(declare-fun res!1069366 () Bool)

(declare-fun e!1603497 () Bool)

(assert (=> b!2534671 (=> res!1069366 e!1603497)))

(assert (=> b!2534671 (= res!1069366 (not ((_ is Concat!12247) lt!901451)))))

(declare-fun e!1603496 () Bool)

(assert (=> b!2534671 (= e!1603496 e!1603497)))

(declare-fun bm!159306 () Bool)

(declare-fun call!159311 () Bool)

(assert (=> bm!159306 (= call!159312 call!159311)))

(declare-fun bm!159307 () Bool)

(declare-fun call!159313 () Bool)

(declare-fun c!405116 () Bool)

(assert (=> bm!159307 (= call!159313 (validRegex!3177 (ite c!405116 (regTwo!15615 lt!901451) (regOne!15614 lt!901451))))))

(declare-fun b!2534672 () Bool)

(declare-fun e!1603495 () Bool)

(declare-fun e!1603498 () Bool)

(assert (=> b!2534672 (= e!1603495 e!1603498)))

(declare-fun res!1069363 () Bool)

(assert (=> b!2534672 (= res!1069363 (not (nullable!2468 (reg!7880 lt!901451))))))

(assert (=> b!2534672 (=> (not res!1069363) (not e!1603498))))

(declare-fun b!2534673 () Bool)

(assert (=> b!2534673 (= e!1603497 e!1603493)))

(declare-fun res!1069365 () Bool)

(assert (=> b!2534673 (=> (not res!1069365) (not e!1603493))))

(assert (=> b!2534673 (= res!1069365 call!159313)))

(declare-fun b!2534674 () Bool)

(declare-fun e!1603492 () Bool)

(assert (=> b!2534674 (= e!1603492 e!1603495)))

(declare-fun c!405115 () Bool)

(assert (=> b!2534674 (= c!405115 ((_ is Star!7551) lt!901451))))

(declare-fun b!2534675 () Bool)

(declare-fun e!1603494 () Bool)

(assert (=> b!2534675 (= e!1603494 call!159313)))

(declare-fun bm!159308 () Bool)

(assert (=> bm!159308 (= call!159311 (validRegex!3177 (ite c!405115 (reg!7880 lt!901451) (ite c!405116 (regOne!15615 lt!901451) (regTwo!15614 lt!901451)))))))

(declare-fun b!2534676 () Bool)

(assert (=> b!2534676 (= e!1603498 call!159311)))

(declare-fun b!2534677 () Bool)

(assert (=> b!2534677 (= e!1603495 e!1603496)))

(assert (=> b!2534677 (= c!405116 ((_ is Union!7551) lt!901451))))

(declare-fun d!720381 () Bool)

(declare-fun res!1069364 () Bool)

(assert (=> d!720381 (=> res!1069364 e!1603492)))

(assert (=> d!720381 (= res!1069364 ((_ is ElementMatch!7551) lt!901451))))

(assert (=> d!720381 (= (validRegex!3177 lt!901451) e!1603492)))

(declare-fun b!2534678 () Bool)

(declare-fun res!1069362 () Bool)

(assert (=> b!2534678 (=> (not res!1069362) (not e!1603494))))

(assert (=> b!2534678 (= res!1069362 call!159312)))

(assert (=> b!2534678 (= e!1603496 e!1603494)))

(assert (= (and d!720381 (not res!1069364)) b!2534674))

(assert (= (and b!2534674 c!405115) b!2534672))

(assert (= (and b!2534674 (not c!405115)) b!2534677))

(assert (= (and b!2534672 res!1069363) b!2534676))

(assert (= (and b!2534677 c!405116) b!2534678))

(assert (= (and b!2534677 (not c!405116)) b!2534671))

(assert (= (and b!2534678 res!1069362) b!2534675))

(assert (= (and b!2534671 (not res!1069366)) b!2534673))

(assert (= (and b!2534673 res!1069365) b!2534670))

(assert (= (or b!2534678 b!2534670) bm!159306))

(assert (= (or b!2534675 b!2534673) bm!159307))

(assert (= (or b!2534676 bm!159306) bm!159308))

(declare-fun m!2883829 () Bool)

(assert (=> bm!159307 m!2883829))

(declare-fun m!2883831 () Bool)

(assert (=> b!2534672 m!2883831))

(declare-fun m!2883833 () Bool)

(assert (=> bm!159308 m!2883833))

(assert (=> d!720349 d!720381))

(assert (=> d!720349 d!720337))

(declare-fun b!2534679 () Bool)

(declare-fun e!1603500 () Bool)

(declare-fun call!159315 () Bool)

(assert (=> b!2534679 (= e!1603500 call!159315)))

(declare-fun b!2534680 () Bool)

(declare-fun res!1069371 () Bool)

(declare-fun e!1603504 () Bool)

(assert (=> b!2534680 (=> res!1069371 e!1603504)))

(assert (=> b!2534680 (= res!1069371 (not ((_ is Concat!12247) lt!901443)))))

(declare-fun e!1603503 () Bool)

(assert (=> b!2534680 (= e!1603503 e!1603504)))

(declare-fun bm!159309 () Bool)

(declare-fun call!159314 () Bool)

(assert (=> bm!159309 (= call!159315 call!159314)))

(declare-fun bm!159310 () Bool)

(declare-fun call!159316 () Bool)

(declare-fun c!405118 () Bool)

(assert (=> bm!159310 (= call!159316 (validRegex!3177 (ite c!405118 (regTwo!15615 lt!901443) (regOne!15614 lt!901443))))))

(declare-fun b!2534681 () Bool)

(declare-fun e!1603502 () Bool)

(declare-fun e!1603505 () Bool)

(assert (=> b!2534681 (= e!1603502 e!1603505)))

(declare-fun res!1069368 () Bool)

(assert (=> b!2534681 (= res!1069368 (not (nullable!2468 (reg!7880 lt!901443))))))

(assert (=> b!2534681 (=> (not res!1069368) (not e!1603505))))

(declare-fun b!2534682 () Bool)

(assert (=> b!2534682 (= e!1603504 e!1603500)))

(declare-fun res!1069370 () Bool)

(assert (=> b!2534682 (=> (not res!1069370) (not e!1603500))))

(assert (=> b!2534682 (= res!1069370 call!159316)))

(declare-fun b!2534683 () Bool)

(declare-fun e!1603499 () Bool)

(assert (=> b!2534683 (= e!1603499 e!1603502)))

(declare-fun c!405117 () Bool)

(assert (=> b!2534683 (= c!405117 ((_ is Star!7551) lt!901443))))

(declare-fun b!2534684 () Bool)

(declare-fun e!1603501 () Bool)

(assert (=> b!2534684 (= e!1603501 call!159316)))

(declare-fun bm!159311 () Bool)

(assert (=> bm!159311 (= call!159314 (validRegex!3177 (ite c!405117 (reg!7880 lt!901443) (ite c!405118 (regOne!15615 lt!901443) (regTwo!15614 lt!901443)))))))

(declare-fun b!2534685 () Bool)

(assert (=> b!2534685 (= e!1603505 call!159314)))

(declare-fun b!2534686 () Bool)

(assert (=> b!2534686 (= e!1603502 e!1603503)))

(assert (=> b!2534686 (= c!405118 ((_ is Union!7551) lt!901443))))

(declare-fun d!720383 () Bool)

(declare-fun res!1069369 () Bool)

(assert (=> d!720383 (=> res!1069369 e!1603499)))

(assert (=> d!720383 (= res!1069369 ((_ is ElementMatch!7551) lt!901443))))

(assert (=> d!720383 (= (validRegex!3177 lt!901443) e!1603499)))

(declare-fun b!2534687 () Bool)

(declare-fun res!1069367 () Bool)

(assert (=> b!2534687 (=> (not res!1069367) (not e!1603501))))

(assert (=> b!2534687 (= res!1069367 call!159315)))

(assert (=> b!2534687 (= e!1603503 e!1603501)))

(assert (= (and d!720383 (not res!1069369)) b!2534683))

(assert (= (and b!2534683 c!405117) b!2534681))

(assert (= (and b!2534683 (not c!405117)) b!2534686))

(assert (= (and b!2534681 res!1069368) b!2534685))

(assert (= (and b!2534686 c!405118) b!2534687))

(assert (= (and b!2534686 (not c!405118)) b!2534680))

(assert (= (and b!2534687 res!1069367) b!2534684))

(assert (= (and b!2534680 (not res!1069371)) b!2534682))

(assert (= (and b!2534682 res!1069370) b!2534679))

(assert (= (or b!2534687 b!2534679) bm!159309))

(assert (= (or b!2534684 b!2534682) bm!159310))

(assert (= (or b!2534685 bm!159309) bm!159311))

(declare-fun m!2883835 () Bool)

(assert (=> bm!159310 m!2883835))

(declare-fun m!2883837 () Bool)

(assert (=> b!2534681 m!2883837))

(declare-fun m!2883839 () Bool)

(assert (=> bm!159311 m!2883839))

(assert (=> d!720341 d!720383))

(declare-fun b!2534688 () Bool)

(declare-fun e!1603507 () Bool)

(declare-fun call!159318 () Bool)

(assert (=> b!2534688 (= e!1603507 call!159318)))

(declare-fun b!2534689 () Bool)

(declare-fun res!1069376 () Bool)

(declare-fun e!1603511 () Bool)

(assert (=> b!2534689 (=> res!1069376 e!1603511)))

(assert (=> b!2534689 (= res!1069376 (not ((_ is Concat!12247) (derivativeStep!2120 r!27340 c!14016))))))

(declare-fun e!1603510 () Bool)

(assert (=> b!2534689 (= e!1603510 e!1603511)))

(declare-fun bm!159312 () Bool)

(declare-fun call!159317 () Bool)

(assert (=> bm!159312 (= call!159318 call!159317)))

(declare-fun bm!159313 () Bool)

(declare-fun call!159319 () Bool)

(declare-fun c!405120 () Bool)

(assert (=> bm!159313 (= call!159319 (validRegex!3177 (ite c!405120 (regTwo!15615 (derivativeStep!2120 r!27340 c!14016)) (regOne!15614 (derivativeStep!2120 r!27340 c!14016)))))))

(declare-fun b!2534690 () Bool)

(declare-fun e!1603509 () Bool)

(declare-fun e!1603512 () Bool)

(assert (=> b!2534690 (= e!1603509 e!1603512)))

(declare-fun res!1069373 () Bool)

(assert (=> b!2534690 (= res!1069373 (not (nullable!2468 (reg!7880 (derivativeStep!2120 r!27340 c!14016)))))))

(assert (=> b!2534690 (=> (not res!1069373) (not e!1603512))))

(declare-fun b!2534691 () Bool)

(assert (=> b!2534691 (= e!1603511 e!1603507)))

(declare-fun res!1069375 () Bool)

(assert (=> b!2534691 (=> (not res!1069375) (not e!1603507))))

(assert (=> b!2534691 (= res!1069375 call!159319)))

(declare-fun b!2534692 () Bool)

(declare-fun e!1603506 () Bool)

(assert (=> b!2534692 (= e!1603506 e!1603509)))

(declare-fun c!405119 () Bool)

(assert (=> b!2534692 (= c!405119 ((_ is Star!7551) (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun b!2534693 () Bool)

(declare-fun e!1603508 () Bool)

(assert (=> b!2534693 (= e!1603508 call!159319)))

(declare-fun bm!159314 () Bool)

(assert (=> bm!159314 (= call!159317 (validRegex!3177 (ite c!405119 (reg!7880 (derivativeStep!2120 r!27340 c!14016)) (ite c!405120 (regOne!15615 (derivativeStep!2120 r!27340 c!14016)) (regTwo!15614 (derivativeStep!2120 r!27340 c!14016))))))))

(declare-fun b!2534694 () Bool)

(assert (=> b!2534694 (= e!1603512 call!159317)))

(declare-fun b!2534695 () Bool)

(assert (=> b!2534695 (= e!1603509 e!1603510)))

(assert (=> b!2534695 (= c!405120 ((_ is Union!7551) (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun d!720385 () Bool)

(declare-fun res!1069374 () Bool)

(assert (=> d!720385 (=> res!1069374 e!1603506)))

(assert (=> d!720385 (= res!1069374 ((_ is ElementMatch!7551) (derivativeStep!2120 r!27340 c!14016)))))

(assert (=> d!720385 (= (validRegex!3177 (derivativeStep!2120 r!27340 c!14016)) e!1603506)))

(declare-fun b!2534696 () Bool)

(declare-fun res!1069372 () Bool)

(assert (=> b!2534696 (=> (not res!1069372) (not e!1603508))))

(assert (=> b!2534696 (= res!1069372 call!159318)))

(assert (=> b!2534696 (= e!1603510 e!1603508)))

(assert (= (and d!720385 (not res!1069374)) b!2534692))

(assert (= (and b!2534692 c!405119) b!2534690))

(assert (= (and b!2534692 (not c!405119)) b!2534695))

(assert (= (and b!2534690 res!1069373) b!2534694))

(assert (= (and b!2534695 c!405120) b!2534696))

(assert (= (and b!2534695 (not c!405120)) b!2534689))

(assert (= (and b!2534696 res!1069372) b!2534693))

(assert (= (and b!2534689 (not res!1069376)) b!2534691))

(assert (= (and b!2534691 res!1069375) b!2534688))

(assert (= (or b!2534696 b!2534688) bm!159312))

(assert (= (or b!2534693 b!2534691) bm!159313))

(assert (= (or b!2534694 bm!159312) bm!159314))

(declare-fun m!2883841 () Bool)

(assert (=> bm!159313 m!2883841))

(declare-fun m!2883843 () Bool)

(assert (=> b!2534690 m!2883843))

(declare-fun m!2883845 () Bool)

(assert (=> bm!159314 m!2883845))

(assert (=> d!720341 d!720385))

(declare-fun e!1603513 () List!29616)

(declare-fun b!2534697 () Bool)

(assert (=> b!2534697 (= e!1603513 (Cons!29516 (c!404979 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) Nil!29516))))

(declare-fun b!2534698 () Bool)

(declare-fun e!1603516 () List!29616)

(declare-fun call!159320 () List!29616)

(assert (=> b!2534698 (= e!1603516 call!159320)))

(declare-fun b!2534699 () Bool)

(declare-fun e!1603514 () List!29616)

(assert (=> b!2534699 (= e!1603514 call!159320)))

(declare-fun c!405125 () Bool)

(declare-fun b!2534700 () Bool)

(assert (=> b!2534700 (= c!405125 ((_ is Star!7551) (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))

(declare-fun e!1603517 () List!29616)

(assert (=> b!2534700 (= e!1603513 e!1603517)))

(declare-fun b!2534701 () Bool)

(declare-fun e!1603515 () List!29616)

(assert (=> b!2534701 (= e!1603515 Nil!29516)))

(declare-fun d!720387 () Bool)

(declare-fun c!405123 () Bool)

(assert (=> d!720387 (= c!405123 (or ((_ is EmptyExpr!7551) (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) ((_ is EmptyLang!7551) (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340)))))))))

(assert (=> d!720387 (= (firstChars!88 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) e!1603515)))

(declare-fun c!405122 () Bool)

(declare-fun b!2534702 () Bool)

(assert (=> b!2534702 (= c!405122 (nullable!2468 (regOne!15614 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340)))))))))

(assert (=> b!2534702 (= e!1603514 e!1603516)))

(declare-fun call!159324 () List!29616)

(declare-fun bm!159315 () Bool)

(declare-fun c!405121 () Bool)

(assert (=> bm!159315 (= call!159324 (firstChars!88 (ite c!405125 (reg!7880 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) (ite c!405121 (regOne!15615 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) (ite c!405122 (regTwo!15614 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) (regOne!15614 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))))))

(declare-fun b!2534703 () Bool)

(assert (=> b!2534703 (= e!1603515 e!1603513)))

(declare-fun c!405124 () Bool)

(assert (=> b!2534703 (= c!405124 ((_ is ElementMatch!7551) (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))

(declare-fun call!159323 () List!29616)

(declare-fun call!159322 () List!29616)

(declare-fun call!159321 () List!29616)

(declare-fun bm!159316 () Bool)

(assert (=> bm!159316 (= call!159320 (++!7246 (ite c!405121 call!159323 call!159321) (ite c!405121 call!159321 call!159322)))))

(declare-fun b!2534704 () Bool)

(assert (=> b!2534704 (= e!1603517 call!159324)))

(declare-fun bm!159317 () Bool)

(assert (=> bm!159317 (= call!159322 call!159323)))

(declare-fun bm!159318 () Bool)

(assert (=> bm!159318 (= call!159323 call!159324)))

(declare-fun b!2534705 () Bool)

(assert (=> b!2534705 (= e!1603516 call!159322)))

(declare-fun bm!159319 () Bool)

(assert (=> bm!159319 (= call!159321 (firstChars!88 (ite c!405121 (regTwo!15615 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))) (regOne!15614 (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))))

(declare-fun b!2534706 () Bool)

(assert (=> b!2534706 (= e!1603517 e!1603514)))

(assert (=> b!2534706 (= c!405121 ((_ is Union!7551) (ite c!405021 (reg!7880 r!27340) (ite c!405017 (regOne!15615 r!27340) (ite c!405018 (regTwo!15614 r!27340) (regOne!15614 r!27340))))))))

(assert (= (and d!720387 c!405123) b!2534701))

(assert (= (and d!720387 (not c!405123)) b!2534703))

(assert (= (and b!2534703 c!405124) b!2534697))

(assert (= (and b!2534703 (not c!405124)) b!2534700))

(assert (= (and b!2534700 c!405125) b!2534704))

(assert (= (and b!2534700 (not c!405125)) b!2534706))

(assert (= (and b!2534706 c!405121) b!2534699))

(assert (= (and b!2534706 (not c!405121)) b!2534702))

(assert (= (and b!2534702 c!405122) b!2534698))

(assert (= (and b!2534702 (not c!405122)) b!2534705))

(assert (= (or b!2534698 b!2534705) bm!159317))

(assert (= (or b!2534699 bm!159317) bm!159318))

(assert (= (or b!2534699 b!2534698) bm!159319))

(assert (= (or b!2534699 b!2534698) bm!159316))

(assert (= (or b!2534704 bm!159318) bm!159315))

(declare-fun m!2883847 () Bool)

(assert (=> b!2534702 m!2883847))

(declare-fun m!2883849 () Bool)

(assert (=> bm!159315 m!2883849))

(declare-fun m!2883851 () Bool)

(assert (=> bm!159316 m!2883851))

(declare-fun m!2883853 () Bool)

(assert (=> bm!159319 m!2883853))

(assert (=> bm!159228 d!720387))

(declare-fun call!159329 () Bool)

(declare-fun bm!159324 () Bool)

(declare-fun c!405128 () Bool)

(assert (=> bm!159324 (= call!159329 (nullable!2468 (ite c!405128 (regOne!15615 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)) (regTwo!15614 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))))

(declare-fun d!720389 () Bool)

(declare-fun res!1069390 () Bool)

(declare-fun e!1603535 () Bool)

(assert (=> d!720389 (=> res!1069390 e!1603535)))

(assert (=> d!720389 (= res!1069390 ((_ is EmptyExpr!7551) (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))

(assert (=> d!720389 (= (nullableFct!699 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)) e!1603535)))

(declare-fun b!2534721 () Bool)

(declare-fun e!1603533 () Bool)

(assert (=> b!2534721 (= e!1603533 call!159329)))

(declare-fun b!2534722 () Bool)

(declare-fun e!1603530 () Bool)

(declare-fun e!1603532 () Bool)

(assert (=> b!2534722 (= e!1603530 e!1603532)))

(assert (=> b!2534722 (= c!405128 ((_ is Union!7551) (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))

(declare-fun b!2534723 () Bool)

(declare-fun e!1603531 () Bool)

(assert (=> b!2534723 (= e!1603535 e!1603531)))

(declare-fun res!1069389 () Bool)

(assert (=> b!2534723 (=> (not res!1069389) (not e!1603531))))

(assert (=> b!2534723 (= res!1069389 (and (not ((_ is EmptyLang!7551) (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7551) (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2534724 () Bool)

(assert (=> b!2534724 (= e!1603531 e!1603530)))

(declare-fun res!1069387 () Bool)

(assert (=> b!2534724 (=> res!1069387 e!1603530)))

(assert (=> b!2534724 (= res!1069387 ((_ is Star!7551) (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))

(declare-fun b!2534725 () Bool)

(assert (=> b!2534725 (= e!1603532 e!1603533)))

(declare-fun res!1069391 () Bool)

(declare-fun call!159330 () Bool)

(assert (=> b!2534725 (= res!1069391 call!159330)))

(assert (=> b!2534725 (=> (not res!1069391) (not e!1603533))))

(declare-fun b!2534726 () Bool)

(declare-fun e!1603534 () Bool)

(assert (=> b!2534726 (= e!1603534 call!159330)))

(declare-fun bm!159325 () Bool)

(assert (=> bm!159325 (= call!159330 (nullable!2468 (ite c!405128 (regTwo!15615 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)) (regOne!15614 (derivative!246 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2534727 () Bool)

(assert (=> b!2534727 (= e!1603532 e!1603534)))

(declare-fun res!1069388 () Bool)

(assert (=> b!2534727 (= res!1069388 call!159329)))

(assert (=> b!2534727 (=> res!1069388 e!1603534)))

(assert (= (and d!720389 (not res!1069390)) b!2534723))

(assert (= (and b!2534723 res!1069389) b!2534724))

(assert (= (and b!2534724 (not res!1069387)) b!2534722))

(assert (= (and b!2534722 c!405128) b!2534727))

(assert (= (and b!2534722 (not c!405128)) b!2534725))

(assert (= (and b!2534727 (not res!1069388)) b!2534726))

(assert (= (and b!2534725 res!1069391) b!2534721))

(assert (= (or b!2534726 b!2534725) bm!159325))

(assert (= (or b!2534727 b!2534721) bm!159324))

(declare-fun m!2883855 () Bool)

(assert (=> bm!159324 m!2883855))

(declare-fun m!2883857 () Bool)

(assert (=> bm!159325 m!2883857))

(assert (=> d!720353 d!720389))

(declare-fun d!720391 () Bool)

(assert (=> d!720391 (= (nullable!2468 (regOne!15614 r!27340)) (nullableFct!699 (regOne!15614 r!27340)))))

(declare-fun bs!469266 () Bool)

(assert (= bs!469266 d!720391))

(declare-fun m!2883859 () Bool)

(assert (=> bs!469266 m!2883859))

(assert (=> b!2534483 d!720391))

(declare-fun d!720393 () Bool)

(assert (=> d!720393 (= (nullable!2468 (regOne!15614 (regOne!15615 r!27340))) (nullableFct!699 (regOne!15614 (regOne!15615 r!27340))))))

(declare-fun bs!469267 () Bool)

(assert (= bs!469267 d!720393))

(declare-fun m!2883861 () Bool)

(assert (=> bs!469267 m!2883861))

(assert (=> b!2534368 d!720393))

(declare-fun e!1603536 () List!29616)

(declare-fun b!2534728 () Bool)

(assert (=> b!2534728 (= e!1603536 (Cons!29516 (c!404979 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) Nil!29516))))

(declare-fun b!2534729 () Bool)

(declare-fun e!1603539 () List!29616)

(declare-fun call!159331 () List!29616)

(assert (=> b!2534729 (= e!1603539 call!159331)))

(declare-fun b!2534730 () Bool)

(declare-fun e!1603537 () List!29616)

(assert (=> b!2534730 (= e!1603537 call!159331)))

(declare-fun b!2534731 () Bool)

(declare-fun c!405133 () Bool)

(assert (=> b!2534731 (= c!405133 ((_ is Star!7551) (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(declare-fun e!1603540 () List!29616)

(assert (=> b!2534731 (= e!1603536 e!1603540)))

(declare-fun b!2534732 () Bool)

(declare-fun e!1603538 () List!29616)

(assert (=> b!2534732 (= e!1603538 Nil!29516)))

(declare-fun c!405131 () Bool)

(declare-fun d!720395 () Bool)

(assert (=> d!720395 (= c!405131 (or ((_ is EmptyExpr!7551) (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) ((_ is EmptyLang!7551) (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))))

(assert (=> d!720395 (= (firstChars!88 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) e!1603538)))

(declare-fun c!405130 () Bool)

(declare-fun b!2534733 () Bool)

(assert (=> b!2534733 (= c!405130 (nullable!2468 (regOne!15614 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))))

(assert (=> b!2534733 (= e!1603537 e!1603539)))

(declare-fun c!405129 () Bool)

(declare-fun call!159335 () List!29616)

(declare-fun bm!159326 () Bool)

(assert (=> bm!159326 (= call!159335 (firstChars!88 (ite c!405133 (reg!7880 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) (ite c!405129 (regOne!15615 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) (ite c!405130 (regTwo!15614 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) (regOne!15614 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))))))

(declare-fun b!2534734 () Bool)

(assert (=> b!2534734 (= e!1603538 e!1603536)))

(declare-fun c!405132 () Bool)

(assert (=> b!2534734 (= c!405132 ((_ is ElementMatch!7551) (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(declare-fun bm!159327 () Bool)

(declare-fun call!159333 () List!29616)

(declare-fun call!159332 () List!29616)

(declare-fun call!159334 () List!29616)

(assert (=> bm!159327 (= call!159331 (++!7246 (ite c!405129 call!159334 call!159332) (ite c!405129 call!159332 call!159333)))))

(declare-fun b!2534735 () Bool)

(assert (=> b!2534735 (= e!1603540 call!159335)))

(declare-fun bm!159328 () Bool)

(assert (=> bm!159328 (= call!159333 call!159334)))

(declare-fun bm!159329 () Bool)

(assert (=> bm!159329 (= call!159334 call!159335)))

(declare-fun b!2534736 () Bool)

(assert (=> b!2534736 (= e!1603539 call!159333)))

(declare-fun bm!159330 () Bool)

(assert (=> bm!159330 (= call!159332 (firstChars!88 (ite c!405129 (regTwo!15615 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))) (regOne!15614 (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))))

(declare-fun b!2534737 () Bool)

(assert (=> b!2534737 (= e!1603540 e!1603537)))

(assert (=> b!2534737 (= c!405129 ((_ is Union!7551) (ite c!405016 (reg!7880 (regOne!15615 r!27340)) (ite c!405012 (regOne!15615 (regOne!15615 r!27340)) (ite c!405013 (regTwo!15614 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(assert (= (and d!720395 c!405131) b!2534732))

(assert (= (and d!720395 (not c!405131)) b!2534734))

(assert (= (and b!2534734 c!405132) b!2534728))

(assert (= (and b!2534734 (not c!405132)) b!2534731))

(assert (= (and b!2534731 c!405133) b!2534735))

(assert (= (and b!2534731 (not c!405133)) b!2534737))

(assert (= (and b!2534737 c!405129) b!2534730))

(assert (= (and b!2534737 (not c!405129)) b!2534733))

(assert (= (and b!2534733 c!405130) b!2534729))

(assert (= (and b!2534733 (not c!405130)) b!2534736))

(assert (= (or b!2534729 b!2534736) bm!159328))

(assert (= (or b!2534730 bm!159328) bm!159329))

(assert (= (or b!2534730 b!2534729) bm!159330))

(assert (= (or b!2534730 b!2534729) bm!159327))

(assert (= (or b!2534735 bm!159329) bm!159326))

(declare-fun m!2883863 () Bool)

(assert (=> b!2534733 m!2883863))

(declare-fun m!2883865 () Bool)

(assert (=> bm!159326 m!2883865))

(declare-fun m!2883867 () Bool)

(assert (=> bm!159327 m!2883867))

(declare-fun m!2883869 () Bool)

(assert (=> bm!159330 m!2883869))

(assert (=> bm!159223 d!720395))

(declare-fun d!720397 () Bool)

(declare-fun lt!901464 () Regex!7551)

(assert (=> d!720397 (validRegex!3177 lt!901464)))

(declare-fun e!1603541 () Regex!7551)

(assert (=> d!720397 (= lt!901464 e!1603541)))

(declare-fun c!405134 () Bool)

(assert (=> d!720397 (= c!405134 ((_ is Cons!29516) (t!211315 tl!4068)))))

(assert (=> d!720397 (validRegex!3177 (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)))))

(assert (=> d!720397 (= (derivative!246 (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)) (t!211315 tl!4068)) lt!901464)))

(declare-fun b!2534738 () Bool)

(assert (=> b!2534738 (= e!1603541 (derivative!246 (derivativeStep!2120 (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)) (h!34936 (t!211315 tl!4068))) (t!211315 (t!211315 tl!4068))))))

(declare-fun b!2534739 () Bool)

(assert (=> b!2534739 (= e!1603541 (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)))))

(assert (= (and d!720397 c!405134) b!2534738))

(assert (= (and d!720397 (not c!405134)) b!2534739))

(declare-fun m!2883871 () Bool)

(assert (=> d!720397 m!2883871))

(assert (=> d!720397 m!2883725))

(declare-fun m!2883873 () Bool)

(assert (=> d!720397 m!2883873))

(assert (=> b!2534738 m!2883725))

(declare-fun m!2883875 () Bool)

(assert (=> b!2534738 m!2883875))

(assert (=> b!2534738 m!2883875))

(declare-fun m!2883877 () Bool)

(assert (=> b!2534738 m!2883877))

(assert (=> b!2534487 d!720397))

(declare-fun bm!159331 () Bool)

(declare-fun call!159338 () Regex!7551)

(declare-fun call!159336 () Regex!7551)

(assert (=> bm!159331 (= call!159338 call!159336)))

(declare-fun b!2534740 () Bool)

(declare-fun e!1603545 () Regex!7551)

(declare-fun e!1603546 () Regex!7551)

(assert (=> b!2534740 (= e!1603545 e!1603546)))

(declare-fun c!405136 () Bool)

(assert (=> b!2534740 (= c!405136 ((_ is ElementMatch!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun d!720399 () Bool)

(declare-fun lt!901465 () Regex!7551)

(assert (=> d!720399 (validRegex!3177 lt!901465)))

(assert (=> d!720399 (= lt!901465 e!1603545)))

(declare-fun c!405135 () Bool)

(assert (=> d!720399 (= c!405135 (or ((_ is EmptyExpr!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) ((_ is EmptyLang!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))))

(assert (=> d!720399 (validRegex!3177 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))

(assert (=> d!720399 (= (derivativeStep!2120 (derivativeStep!2120 (regOne!15615 r!27340) c!14016) (h!34936 tl!4068)) lt!901465)))

(declare-fun bm!159332 () Bool)

(declare-fun c!405137 () Bool)

(declare-fun call!159339 () Regex!7551)

(assert (=> bm!159332 (= call!159339 (derivativeStep!2120 (ite c!405137 (regOne!15615 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (regTwo!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))) (h!34936 tl!4068)))))

(declare-fun bm!159333 () Bool)

(declare-fun call!159337 () Regex!7551)

(assert (=> bm!159333 (= call!159336 call!159337)))

(declare-fun bm!159334 () Bool)

(declare-fun c!405138 () Bool)

(assert (=> bm!159334 (= call!159337 (derivativeStep!2120 (ite c!405137 (regTwo!15615 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (ite c!405138 (reg!7880 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)) (regOne!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))) (h!34936 tl!4068)))))

(declare-fun b!2534741 () Bool)

(assert (=> b!2534741 (= c!405137 ((_ is Union!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun e!1603543 () Regex!7551)

(assert (=> b!2534741 (= e!1603546 e!1603543)))

(declare-fun b!2534742 () Bool)

(declare-fun e!1603542 () Regex!7551)

(assert (=> b!2534742 (= e!1603543 e!1603542)))

(assert (=> b!2534742 (= c!405138 ((_ is Star!7551) (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun b!2534743 () Bool)

(assert (=> b!2534743 (= e!1603542 (Concat!12247 call!159336 (derivativeStep!2120 (regOne!15615 r!27340) c!14016)))))

(declare-fun b!2534744 () Bool)

(declare-fun e!1603544 () Regex!7551)

(assert (=> b!2534744 (= e!1603544 (Union!7551 (Concat!12247 call!159338 (regTwo!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))) call!159339))))

(declare-fun b!2534745 () Bool)

(assert (=> b!2534745 (= e!1603543 (Union!7551 call!159339 call!159337))))

(declare-fun b!2534746 () Bool)

(declare-fun c!405139 () Bool)

(assert (=> b!2534746 (= c!405139 (nullable!2468 (regOne!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))))))

(assert (=> b!2534746 (= e!1603542 e!1603544)))

(declare-fun b!2534747 () Bool)

(assert (=> b!2534747 (= e!1603546 (ite (= (h!34936 tl!4068) (c!404979 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534748 () Bool)

(assert (=> b!2534748 (= e!1603545 EmptyLang!7551)))

(declare-fun b!2534749 () Bool)

(assert (=> b!2534749 (= e!1603544 (Union!7551 (Concat!12247 call!159338 (regTwo!15614 (derivativeStep!2120 (regOne!15615 r!27340) c!14016))) EmptyLang!7551))))

(assert (= (and d!720399 c!405135) b!2534748))

(assert (= (and d!720399 (not c!405135)) b!2534740))

(assert (= (and b!2534740 c!405136) b!2534747))

(assert (= (and b!2534740 (not c!405136)) b!2534741))

(assert (= (and b!2534741 c!405137) b!2534745))

(assert (= (and b!2534741 (not c!405137)) b!2534742))

(assert (= (and b!2534742 c!405138) b!2534743))

(assert (= (and b!2534742 (not c!405138)) b!2534746))

(assert (= (and b!2534746 c!405139) b!2534744))

(assert (= (and b!2534746 (not c!405139)) b!2534749))

(assert (= (or b!2534744 b!2534749) bm!159331))

(assert (= (or b!2534743 bm!159331) bm!159333))

(assert (= (or b!2534745 bm!159333) bm!159334))

(assert (= (or b!2534745 b!2534744) bm!159332))

(declare-fun m!2883879 () Bool)

(assert (=> d!720399 m!2883879))

(assert (=> d!720399 m!2883583))

(assert (=> d!720399 m!2883723))

(declare-fun m!2883881 () Bool)

(assert (=> bm!159332 m!2883881))

(declare-fun m!2883883 () Bool)

(assert (=> bm!159334 m!2883883))

(declare-fun m!2883885 () Bool)

(assert (=> b!2534746 m!2883885))

(assert (=> b!2534487 d!720399))

(declare-fun b!2534750 () Bool)

(declare-fun e!1603547 () List!29616)

(assert (=> b!2534750 (= e!1603547 (Cons!29516 (c!404979 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) Nil!29516))))

(declare-fun b!2534751 () Bool)

(declare-fun e!1603550 () List!29616)

(declare-fun call!159340 () List!29616)

(assert (=> b!2534751 (= e!1603550 call!159340)))

(declare-fun b!2534752 () Bool)

(declare-fun e!1603548 () List!29616)

(assert (=> b!2534752 (= e!1603548 call!159340)))

(declare-fun b!2534753 () Bool)

(declare-fun c!405144 () Bool)

(assert (=> b!2534753 (= c!405144 ((_ is Star!7551) (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun e!1603551 () List!29616)

(assert (=> b!2534753 (= e!1603547 e!1603551)))

(declare-fun b!2534754 () Bool)

(declare-fun e!1603549 () List!29616)

(assert (=> b!2534754 (= e!1603549 Nil!29516)))

(declare-fun d!720401 () Bool)

(declare-fun c!405142 () Bool)

(assert (=> d!720401 (= c!405142 (or ((_ is EmptyExpr!7551) (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) ((_ is EmptyLang!7551) (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340)))))))

(assert (=> d!720401 (= (firstChars!88 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) e!1603549)))

(declare-fun b!2534755 () Bool)

(declare-fun c!405141 () Bool)

(assert (=> b!2534755 (= c!405141 (nullable!2468 (regOne!15614 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340)))))))

(assert (=> b!2534755 (= e!1603548 e!1603550)))

(declare-fun bm!159335 () Bool)

(declare-fun c!405140 () Bool)

(declare-fun call!159344 () List!29616)

(assert (=> bm!159335 (= call!159344 (firstChars!88 (ite c!405144 (reg!7880 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (ite c!405140 (regOne!15615 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (ite c!405141 (regTwo!15614 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (regOne!15614 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))))))

(declare-fun b!2534756 () Bool)

(assert (=> b!2534756 (= e!1603549 e!1603547)))

(declare-fun c!405143 () Bool)

(assert (=> b!2534756 (= c!405143 ((_ is ElementMatch!7551) (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun call!159341 () List!29616)

(declare-fun bm!159336 () Bool)

(declare-fun call!159342 () List!29616)

(declare-fun call!159343 () List!29616)

(assert (=> bm!159336 (= call!159340 (++!7246 (ite c!405140 call!159343 call!159341) (ite c!405140 call!159341 call!159342)))))

(declare-fun b!2534757 () Bool)

(assert (=> b!2534757 (= e!1603551 call!159344)))

(declare-fun bm!159337 () Bool)

(assert (=> bm!159337 (= call!159342 call!159343)))

(declare-fun bm!159338 () Bool)

(assert (=> bm!159338 (= call!159343 call!159344)))

(declare-fun b!2534758 () Bool)

(assert (=> b!2534758 (= e!1603550 call!159342)))

(declare-fun bm!159339 () Bool)

(assert (=> bm!159339 (= call!159341 (firstChars!88 (ite c!405140 (regTwo!15615 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (regOne!15614 (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))))

(declare-fun b!2534759 () Bool)

(assert (=> b!2534759 (= e!1603551 e!1603548)))

(assert (=> b!2534759 (= c!405140 ((_ is Union!7551) (ite c!405017 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(assert (= (and d!720401 c!405142) b!2534754))

(assert (= (and d!720401 (not c!405142)) b!2534756))

(assert (= (and b!2534756 c!405143) b!2534750))

(assert (= (and b!2534756 (not c!405143)) b!2534753))

(assert (= (and b!2534753 c!405144) b!2534757))

(assert (= (and b!2534753 (not c!405144)) b!2534759))

(assert (= (and b!2534759 c!405140) b!2534752))

(assert (= (and b!2534759 (not c!405140)) b!2534755))

(assert (= (and b!2534755 c!405141) b!2534751))

(assert (= (and b!2534755 (not c!405141)) b!2534758))

(assert (= (or b!2534751 b!2534758) bm!159337))

(assert (= (or b!2534752 bm!159337) bm!159338))

(assert (= (or b!2534752 b!2534751) bm!159339))

(assert (= (or b!2534752 b!2534751) bm!159336))

(assert (= (or b!2534757 bm!159338) bm!159335))

(declare-fun m!2883887 () Bool)

(assert (=> b!2534755 m!2883887))

(declare-fun m!2883889 () Bool)

(assert (=> bm!159335 m!2883889))

(declare-fun m!2883891 () Bool)

(assert (=> bm!159336 m!2883891))

(declare-fun m!2883893 () Bool)

(assert (=> bm!159339 m!2883893))

(assert (=> bm!159232 d!720401))

(declare-fun d!720403 () Bool)

(declare-fun lt!901466 () Bool)

(assert (=> d!720403 (= lt!901466 (select (content!4051 (t!211315 (firstChars!88 (regOne!15615 r!27340)))) c!14016))))

(declare-fun e!1603552 () Bool)

(assert (=> d!720403 (= lt!901466 e!1603552)))

(declare-fun res!1069393 () Bool)

(assert (=> d!720403 (=> (not res!1069393) (not e!1603552))))

(assert (=> d!720403 (= res!1069393 ((_ is Cons!29516) (t!211315 (firstChars!88 (regOne!15615 r!27340)))))))

(assert (=> d!720403 (= (contains!5297 (t!211315 (firstChars!88 (regOne!15615 r!27340))) c!14016) lt!901466)))

(declare-fun b!2534760 () Bool)

(declare-fun e!1603553 () Bool)

(assert (=> b!2534760 (= e!1603552 e!1603553)))

(declare-fun res!1069392 () Bool)

(assert (=> b!2534760 (=> res!1069392 e!1603553)))

(assert (=> b!2534760 (= res!1069392 (= (h!34936 (t!211315 (firstChars!88 (regOne!15615 r!27340)))) c!14016))))

(declare-fun b!2534761 () Bool)

(assert (=> b!2534761 (= e!1603553 (contains!5297 (t!211315 (t!211315 (firstChars!88 (regOne!15615 r!27340)))) c!14016))))

(assert (= (and d!720403 res!1069393) b!2534760))

(assert (= (and b!2534760 (not res!1069392)) b!2534761))

(declare-fun m!2883895 () Bool)

(assert (=> d!720403 m!2883895))

(declare-fun m!2883897 () Bool)

(assert (=> d!720403 m!2883897))

(declare-fun m!2883899 () Bool)

(assert (=> b!2534761 m!2883899))

(assert (=> b!2534316 d!720403))

(declare-fun d!720405 () Bool)

(declare-fun c!405147 () Bool)

(assert (=> d!720405 (= c!405147 ((_ is Nil!29516) (firstChars!88 r!27340)))))

(declare-fun e!1603556 () (InoxSet C!15260))

(assert (=> d!720405 (= (content!4051 (firstChars!88 r!27340)) e!1603556)))

(declare-fun b!2534766 () Bool)

(assert (=> b!2534766 (= e!1603556 ((as const (Array C!15260 Bool)) false))))

(declare-fun b!2534767 () Bool)

(assert (=> b!2534767 (= e!1603556 ((_ map or) (store ((as const (Array C!15260 Bool)) false) (h!34936 (firstChars!88 r!27340)) true) (content!4051 (t!211315 (firstChars!88 r!27340)))))))

(assert (= (and d!720405 c!405147) b!2534766))

(assert (= (and d!720405 (not c!405147)) b!2534767))

(declare-fun m!2883901 () Bool)

(assert (=> b!2534767 m!2883901))

(declare-fun m!2883903 () Bool)

(assert (=> b!2534767 m!2883903))

(assert (=> d!720325 d!720405))

(declare-fun b!2534768 () Bool)

(declare-fun e!1603558 () Bool)

(declare-fun call!159346 () Bool)

(assert (=> b!2534768 (= e!1603558 call!159346)))

(declare-fun b!2534769 () Bool)

(declare-fun res!1069398 () Bool)

(declare-fun e!1603562 () Bool)

(assert (=> b!2534769 (=> res!1069398 e!1603562)))

(assert (=> b!2534769 (= res!1069398 (not ((_ is Concat!12247) lt!901454)))))

(declare-fun e!1603561 () Bool)

(assert (=> b!2534769 (= e!1603561 e!1603562)))

(declare-fun bm!159340 () Bool)

(declare-fun call!159345 () Bool)

(assert (=> bm!159340 (= call!159346 call!159345)))

(declare-fun bm!159341 () Bool)

(declare-fun call!159347 () Bool)

(declare-fun c!405149 () Bool)

(assert (=> bm!159341 (= call!159347 (validRegex!3177 (ite c!405149 (regTwo!15615 lt!901454) (regOne!15614 lt!901454))))))

(declare-fun b!2534770 () Bool)

(declare-fun e!1603560 () Bool)

(declare-fun e!1603563 () Bool)

(assert (=> b!2534770 (= e!1603560 e!1603563)))

(declare-fun res!1069395 () Bool)

(assert (=> b!2534770 (= res!1069395 (not (nullable!2468 (reg!7880 lt!901454))))))

(assert (=> b!2534770 (=> (not res!1069395) (not e!1603563))))

(declare-fun b!2534771 () Bool)

(assert (=> b!2534771 (= e!1603562 e!1603558)))

(declare-fun res!1069397 () Bool)

(assert (=> b!2534771 (=> (not res!1069397) (not e!1603558))))

(assert (=> b!2534771 (= res!1069397 call!159347)))

(declare-fun b!2534772 () Bool)

(declare-fun e!1603557 () Bool)

(assert (=> b!2534772 (= e!1603557 e!1603560)))

(declare-fun c!405148 () Bool)

(assert (=> b!2534772 (= c!405148 ((_ is Star!7551) lt!901454))))

(declare-fun b!2534773 () Bool)

(declare-fun e!1603559 () Bool)

(assert (=> b!2534773 (= e!1603559 call!159347)))

(declare-fun bm!159342 () Bool)

(assert (=> bm!159342 (= call!159345 (validRegex!3177 (ite c!405148 (reg!7880 lt!901454) (ite c!405149 (regOne!15615 lt!901454) (regTwo!15614 lt!901454)))))))

(declare-fun b!2534774 () Bool)

(assert (=> b!2534774 (= e!1603563 call!159345)))

(declare-fun b!2534775 () Bool)

(assert (=> b!2534775 (= e!1603560 e!1603561)))

(assert (=> b!2534775 (= c!405149 ((_ is Union!7551) lt!901454))))

(declare-fun d!720407 () Bool)

(declare-fun res!1069396 () Bool)

(assert (=> d!720407 (=> res!1069396 e!1603557)))

(assert (=> d!720407 (= res!1069396 ((_ is ElementMatch!7551) lt!901454))))

(assert (=> d!720407 (= (validRegex!3177 lt!901454) e!1603557)))

(declare-fun b!2534776 () Bool)

(declare-fun res!1069394 () Bool)

(assert (=> b!2534776 (=> (not res!1069394) (not e!1603559))))

(assert (=> b!2534776 (= res!1069394 call!159346)))

(assert (=> b!2534776 (= e!1603561 e!1603559)))

(assert (= (and d!720407 (not res!1069396)) b!2534772))

(assert (= (and b!2534772 c!405148) b!2534770))

(assert (= (and b!2534772 (not c!405148)) b!2534775))

(assert (= (and b!2534770 res!1069395) b!2534774))

(assert (= (and b!2534775 c!405149) b!2534776))

(assert (= (and b!2534775 (not c!405149)) b!2534769))

(assert (= (and b!2534776 res!1069394) b!2534773))

(assert (= (and b!2534769 (not res!1069398)) b!2534771))

(assert (= (and b!2534771 res!1069397) b!2534768))

(assert (= (or b!2534776 b!2534768) bm!159340))

(assert (= (or b!2534773 b!2534771) bm!159341))

(assert (= (or b!2534774 bm!159340) bm!159342))

(declare-fun m!2883905 () Bool)

(assert (=> bm!159341 m!2883905))

(declare-fun m!2883907 () Bool)

(assert (=> b!2534770 m!2883907))

(declare-fun m!2883909 () Bool)

(assert (=> bm!159342 m!2883909))

(assert (=> d!720357 d!720407))

(assert (=> d!720357 d!720313))

(declare-fun b!2534777 () Bool)

(declare-fun e!1603565 () Bool)

(declare-fun call!159349 () Bool)

(assert (=> b!2534777 (= e!1603565 call!159349)))

(declare-fun b!2534778 () Bool)

(declare-fun res!1069403 () Bool)

(declare-fun e!1603569 () Bool)

(assert (=> b!2534778 (=> res!1069403 e!1603569)))

(assert (=> b!2534778 (= res!1069403 (not ((_ is Concat!12247) (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(declare-fun e!1603568 () Bool)

(assert (=> b!2534778 (= e!1603568 e!1603569)))

(declare-fun bm!159343 () Bool)

(declare-fun call!159348 () Bool)

(assert (=> bm!159343 (= call!159349 call!159348)))

(declare-fun bm!159344 () Bool)

(declare-fun call!159350 () Bool)

(declare-fun c!405151 () Bool)

(assert (=> bm!159344 (= call!159350 (validRegex!3177 (ite c!405151 (regTwo!15615 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (regOne!15614 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(declare-fun b!2534779 () Bool)

(declare-fun e!1603567 () Bool)

(declare-fun e!1603570 () Bool)

(assert (=> b!2534779 (= e!1603567 e!1603570)))

(declare-fun res!1069400 () Bool)

(assert (=> b!2534779 (= res!1069400 (not (nullable!2468 (reg!7880 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(assert (=> b!2534779 (=> (not res!1069400) (not e!1603570))))

(declare-fun b!2534780 () Bool)

(assert (=> b!2534780 (= e!1603569 e!1603565)))

(declare-fun res!1069402 () Bool)

(assert (=> b!2534780 (=> (not res!1069402) (not e!1603565))))

(assert (=> b!2534780 (= res!1069402 call!159350)))

(declare-fun b!2534781 () Bool)

(declare-fun e!1603564 () Bool)

(assert (=> b!2534781 (= e!1603564 e!1603567)))

(declare-fun c!405150 () Bool)

(assert (=> b!2534781 (= c!405150 ((_ is Star!7551) (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun b!2534782 () Bool)

(declare-fun e!1603566 () Bool)

(assert (=> b!2534782 (= e!1603566 call!159350)))

(declare-fun bm!159345 () Bool)

(assert (=> bm!159345 (= call!159348 (validRegex!3177 (ite c!405150 (reg!7880 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (ite c!405151 (regOne!15615 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (regTwo!15614 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))))

(declare-fun b!2534783 () Bool)

(assert (=> b!2534783 (= e!1603570 call!159348)))

(declare-fun b!2534784 () Bool)

(assert (=> b!2534784 (= e!1603567 e!1603568)))

(assert (=> b!2534784 (= c!405151 ((_ is Union!7551) (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun d!720409 () Bool)

(declare-fun res!1069401 () Bool)

(assert (=> d!720409 (=> res!1069401 e!1603564)))

(assert (=> d!720409 (= res!1069401 ((_ is ElementMatch!7551) (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(assert (=> d!720409 (= (validRegex!3177 (ite c!404989 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) e!1603564)))

(declare-fun b!2534785 () Bool)

(declare-fun res!1069399 () Bool)

(assert (=> b!2534785 (=> (not res!1069399) (not e!1603566))))

(assert (=> b!2534785 (= res!1069399 call!159349)))

(assert (=> b!2534785 (= e!1603568 e!1603566)))

(assert (= (and d!720409 (not res!1069401)) b!2534781))

(assert (= (and b!2534781 c!405150) b!2534779))

(assert (= (and b!2534781 (not c!405150)) b!2534784))

(assert (= (and b!2534779 res!1069400) b!2534783))

(assert (= (and b!2534784 c!405151) b!2534785))

(assert (= (and b!2534784 (not c!405151)) b!2534778))

(assert (= (and b!2534785 res!1069399) b!2534782))

(assert (= (and b!2534778 (not res!1069403)) b!2534780))

(assert (= (and b!2534780 res!1069402) b!2534777))

(assert (= (or b!2534785 b!2534777) bm!159343))

(assert (= (or b!2534782 b!2534780) bm!159344))

(assert (= (or b!2534783 bm!159343) bm!159345))

(declare-fun m!2883911 () Bool)

(assert (=> bm!159344 m!2883911))

(declare-fun m!2883913 () Bool)

(assert (=> b!2534779 m!2883913))

(declare-fun m!2883915 () Bool)

(assert (=> bm!159345 m!2883915))

(assert (=> bm!159196 d!720409))

(declare-fun d!720411 () Bool)

(declare-fun c!405152 () Bool)

(assert (=> d!720411 (= c!405152 ((_ is Nil!29516) (firstChars!88 (regOne!15615 r!27340))))))

(declare-fun e!1603571 () (InoxSet C!15260))

(assert (=> d!720411 (= (content!4051 (firstChars!88 (regOne!15615 r!27340))) e!1603571)))

(declare-fun b!2534786 () Bool)

(assert (=> b!2534786 (= e!1603571 ((as const (Array C!15260 Bool)) false))))

(declare-fun b!2534787 () Bool)

(assert (=> b!2534787 (= e!1603571 ((_ map or) (store ((as const (Array C!15260 Bool)) false) (h!34936 (firstChars!88 (regOne!15615 r!27340))) true) (content!4051 (t!211315 (firstChars!88 (regOne!15615 r!27340))))))))

(assert (= (and d!720411 c!405152) b!2534786))

(assert (= (and d!720411 (not c!405152)) b!2534787))

(declare-fun m!2883917 () Bool)

(assert (=> b!2534787 m!2883917))

(assert (=> b!2534787 m!2883895))

(assert (=> d!720317 d!720411))

(declare-fun bm!159346 () Bool)

(declare-fun call!159351 () Bool)

(declare-fun c!405153 () Bool)

(assert (=> bm!159346 (= call!159351 (nullable!2468 (ite c!405153 (regOne!15615 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)) (regTwo!15614 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))))

(declare-fun d!720413 () Bool)

(declare-fun res!1069407 () Bool)

(declare-fun e!1603577 () Bool)

(assert (=> d!720413 (=> res!1069407 e!1603577)))

(assert (=> d!720413 (= res!1069407 ((_ is EmptyExpr!7551) (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))

(assert (=> d!720413 (= (nullableFct!699 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)) e!1603577)))

(declare-fun b!2534788 () Bool)

(declare-fun e!1603575 () Bool)

(assert (=> b!2534788 (= e!1603575 call!159351)))

(declare-fun b!2534789 () Bool)

(declare-fun e!1603572 () Bool)

(declare-fun e!1603574 () Bool)

(assert (=> b!2534789 (= e!1603572 e!1603574)))

(assert (=> b!2534789 (= c!405153 ((_ is Union!7551) (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))

(declare-fun b!2534790 () Bool)

(declare-fun e!1603573 () Bool)

(assert (=> b!2534790 (= e!1603577 e!1603573)))

(declare-fun res!1069406 () Bool)

(assert (=> b!2534790 (=> (not res!1069406) (not e!1603573))))

(assert (=> b!2534790 (= res!1069406 (and (not ((_ is EmptyLang!7551) (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7551) (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2534791 () Bool)

(assert (=> b!2534791 (= e!1603573 e!1603572)))

(declare-fun res!1069404 () Bool)

(assert (=> b!2534791 (=> res!1069404 e!1603572)))

(assert (=> b!2534791 (= res!1069404 ((_ is Star!7551) (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))

(declare-fun b!2534792 () Bool)

(assert (=> b!2534792 (= e!1603574 e!1603575)))

(declare-fun res!1069408 () Bool)

(declare-fun call!159352 () Bool)

(assert (=> b!2534792 (= res!1069408 call!159352)))

(assert (=> b!2534792 (=> (not res!1069408) (not e!1603575))))

(declare-fun b!2534793 () Bool)

(declare-fun e!1603576 () Bool)

(assert (=> b!2534793 (= e!1603576 call!159352)))

(declare-fun bm!159347 () Bool)

(assert (=> bm!159347 (= call!159352 (nullable!2468 (ite c!405153 (regTwo!15615 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)) (regOne!15614 (derivative!246 (derivativeStep!2120 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2534794 () Bool)

(assert (=> b!2534794 (= e!1603574 e!1603576)))

(declare-fun res!1069405 () Bool)

(assert (=> b!2534794 (= res!1069405 call!159351)))

(assert (=> b!2534794 (=> res!1069405 e!1603576)))

(assert (= (and d!720413 (not res!1069407)) b!2534790))

(assert (= (and b!2534790 res!1069406) b!2534791))

(assert (= (and b!2534791 (not res!1069404)) b!2534789))

(assert (= (and b!2534789 c!405153) b!2534794))

(assert (= (and b!2534789 (not c!405153)) b!2534792))

(assert (= (and b!2534794 (not res!1069405)) b!2534793))

(assert (= (and b!2534792 res!1069408) b!2534788))

(assert (= (or b!2534793 b!2534792) bm!159347))

(assert (= (or b!2534794 b!2534788) bm!159346))

(declare-fun m!2883919 () Bool)

(assert (=> bm!159346 m!2883919))

(declare-fun m!2883921 () Bool)

(assert (=> bm!159347 m!2883921))

(assert (=> d!720339 d!720413))

(declare-fun d!720417 () Bool)

(declare-fun lt!901467 () Regex!7551)

(assert (=> d!720417 (validRegex!3177 lt!901467)))

(declare-fun e!1603578 () Regex!7551)

(assert (=> d!720417 (= lt!901467 e!1603578)))

(declare-fun c!405154 () Bool)

(assert (=> d!720417 (= c!405154 ((_ is Cons!29516) (t!211315 tl!4068)))))

(assert (=> d!720417 (validRegex!3177 (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)))))

(assert (=> d!720417 (= (derivative!246 (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)) (t!211315 tl!4068)) lt!901467)))

(declare-fun b!2534795 () Bool)

(assert (=> b!2534795 (= e!1603578 (derivative!246 (derivativeStep!2120 (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)) (h!34936 (t!211315 tl!4068))) (t!211315 (t!211315 tl!4068))))))

(declare-fun b!2534796 () Bool)

(assert (=> b!2534796 (= e!1603578 (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)))))

(assert (= (and d!720417 c!405154) b!2534795))

(assert (= (and d!720417 (not c!405154)) b!2534796))

(declare-fun m!2883923 () Bool)

(assert (=> d!720417 m!2883923))

(assert (=> d!720417 m!2883701))

(declare-fun m!2883925 () Bool)

(assert (=> d!720417 m!2883925))

(assert (=> b!2534795 m!2883701))

(declare-fun m!2883927 () Bool)

(assert (=> b!2534795 m!2883927))

(assert (=> b!2534795 m!2883927))

(declare-fun m!2883929 () Bool)

(assert (=> b!2534795 m!2883929))

(assert (=> b!2534429 d!720417))

(declare-fun bm!159353 () Bool)

(declare-fun call!159360 () Regex!7551)

(declare-fun call!159358 () Regex!7551)

(assert (=> bm!159353 (= call!159360 call!159358)))

(declare-fun b!2534807 () Bool)

(declare-fun e!1603587 () Regex!7551)

(declare-fun e!1603588 () Regex!7551)

(assert (=> b!2534807 (= e!1603587 e!1603588)))

(declare-fun c!405161 () Bool)

(assert (=> b!2534807 (= c!405161 ((_ is ElementMatch!7551) (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun d!720419 () Bool)

(declare-fun lt!901468 () Regex!7551)

(assert (=> d!720419 (validRegex!3177 lt!901468)))

(assert (=> d!720419 (= lt!901468 e!1603587)))

(declare-fun c!405160 () Bool)

(assert (=> d!720419 (= c!405160 (or ((_ is EmptyExpr!7551) (derivativeStep!2120 r!27340 c!14016)) ((_ is EmptyLang!7551) (derivativeStep!2120 r!27340 c!14016))))))

(assert (=> d!720419 (validRegex!3177 (derivativeStep!2120 r!27340 c!14016))))

(assert (=> d!720419 (= (derivativeStep!2120 (derivativeStep!2120 r!27340 c!14016) (h!34936 tl!4068)) lt!901468)))

(declare-fun c!405162 () Bool)

(declare-fun call!159361 () Regex!7551)

(declare-fun bm!159354 () Bool)

(assert (=> bm!159354 (= call!159361 (derivativeStep!2120 (ite c!405162 (regOne!15615 (derivativeStep!2120 r!27340 c!14016)) (regTwo!15614 (derivativeStep!2120 r!27340 c!14016))) (h!34936 tl!4068)))))

(declare-fun bm!159355 () Bool)

(declare-fun call!159359 () Regex!7551)

(assert (=> bm!159355 (= call!159358 call!159359)))

(declare-fun bm!159356 () Bool)

(declare-fun c!405163 () Bool)

(assert (=> bm!159356 (= call!159359 (derivativeStep!2120 (ite c!405162 (regTwo!15615 (derivativeStep!2120 r!27340 c!14016)) (ite c!405163 (reg!7880 (derivativeStep!2120 r!27340 c!14016)) (regOne!15614 (derivativeStep!2120 r!27340 c!14016)))) (h!34936 tl!4068)))))

(declare-fun b!2534808 () Bool)

(assert (=> b!2534808 (= c!405162 ((_ is Union!7551) (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun e!1603585 () Regex!7551)

(assert (=> b!2534808 (= e!1603588 e!1603585)))

(declare-fun b!2534809 () Bool)

(declare-fun e!1603584 () Regex!7551)

(assert (=> b!2534809 (= e!1603585 e!1603584)))

(assert (=> b!2534809 (= c!405163 ((_ is Star!7551) (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun b!2534810 () Bool)

(assert (=> b!2534810 (= e!1603584 (Concat!12247 call!159358 (derivativeStep!2120 r!27340 c!14016)))))

(declare-fun b!2534811 () Bool)

(declare-fun e!1603586 () Regex!7551)

(assert (=> b!2534811 (= e!1603586 (Union!7551 (Concat!12247 call!159360 (regTwo!15614 (derivativeStep!2120 r!27340 c!14016))) call!159361))))

(declare-fun b!2534812 () Bool)

(assert (=> b!2534812 (= e!1603585 (Union!7551 call!159361 call!159359))))

(declare-fun b!2534813 () Bool)

(declare-fun c!405164 () Bool)

(assert (=> b!2534813 (= c!405164 (nullable!2468 (regOne!15614 (derivativeStep!2120 r!27340 c!14016))))))

(assert (=> b!2534813 (= e!1603584 e!1603586)))

(declare-fun b!2534814 () Bool)

(assert (=> b!2534814 (= e!1603588 (ite (= (h!34936 tl!4068) (c!404979 (derivativeStep!2120 r!27340 c!14016))) EmptyExpr!7551 EmptyLang!7551))))

(declare-fun b!2534815 () Bool)

(assert (=> b!2534815 (= e!1603587 EmptyLang!7551)))

(declare-fun b!2534816 () Bool)

(assert (=> b!2534816 (= e!1603586 (Union!7551 (Concat!12247 call!159360 (regTwo!15614 (derivativeStep!2120 r!27340 c!14016))) EmptyLang!7551))))

(assert (= (and d!720419 c!405160) b!2534815))

(assert (= (and d!720419 (not c!405160)) b!2534807))

(assert (= (and b!2534807 c!405161) b!2534814))

(assert (= (and b!2534807 (not c!405161)) b!2534808))

(assert (= (and b!2534808 c!405162) b!2534812))

(assert (= (and b!2534808 (not c!405162)) b!2534809))

(assert (= (and b!2534809 c!405163) b!2534810))

(assert (= (and b!2534809 (not c!405163)) b!2534813))

(assert (= (and b!2534813 c!405164) b!2534811))

(assert (= (and b!2534813 (not c!405164)) b!2534816))

(assert (= (or b!2534811 b!2534816) bm!159353))

(assert (= (or b!2534810 bm!159353) bm!159355))

(assert (= (or b!2534812 bm!159355) bm!159356))

(assert (= (or b!2534812 b!2534811) bm!159354))

(declare-fun m!2883931 () Bool)

(assert (=> d!720419 m!2883931))

(assert (=> d!720419 m!2883603))

(assert (=> d!720419 m!2883699))

(declare-fun m!2883933 () Bool)

(assert (=> bm!159354 m!2883933))

(declare-fun m!2883935 () Bool)

(assert (=> bm!159356 m!2883935))

(declare-fun m!2883937 () Bool)

(assert (=> b!2534813 m!2883937))

(assert (=> b!2534429 d!720419))

(declare-fun d!720421 () Bool)

(declare-fun lt!901469 () Bool)

(assert (=> d!720421 (= lt!901469 (select (content!4051 (t!211315 (firstChars!88 r!27340))) c!14016))))

(declare-fun e!1603589 () Bool)

(assert (=> d!720421 (= lt!901469 e!1603589)))

(declare-fun res!1069410 () Bool)

(assert (=> d!720421 (=> (not res!1069410) (not e!1603589))))

(assert (=> d!720421 (= res!1069410 ((_ is Cons!29516) (t!211315 (firstChars!88 r!27340))))))

(assert (=> d!720421 (= (contains!5297 (t!211315 (firstChars!88 r!27340)) c!14016) lt!901469)))

(declare-fun b!2534817 () Bool)

(declare-fun e!1603590 () Bool)

(assert (=> b!2534817 (= e!1603589 e!1603590)))

(declare-fun res!1069409 () Bool)

(assert (=> b!2534817 (=> res!1069409 e!1603590)))

(assert (=> b!2534817 (= res!1069409 (= (h!34936 (t!211315 (firstChars!88 r!27340))) c!14016))))

(declare-fun b!2534818 () Bool)

(assert (=> b!2534818 (= e!1603590 (contains!5297 (t!211315 (t!211315 (firstChars!88 r!27340))) c!14016))))

(assert (= (and d!720421 res!1069410) b!2534817))

(assert (= (and b!2534817 (not res!1069409)) b!2534818))

(assert (=> d!720421 m!2883903))

(declare-fun m!2883943 () Bool)

(assert (=> d!720421 m!2883943))

(declare-fun m!2883947 () Bool)

(assert (=> b!2534818 m!2883947))

(assert (=> b!2534374 d!720421))

(declare-fun d!720423 () Bool)

(declare-fun e!1603592 () Bool)

(assert (=> d!720423 e!1603592))

(declare-fun res!1069412 () Bool)

(assert (=> d!720423 (=> (not res!1069412) (not e!1603592))))

(declare-fun lt!901470 () List!29616)

(assert (=> d!720423 (= res!1069412 (= (content!4051 lt!901470) ((_ map or) (content!4051 (ite c!405012 call!159231 call!159229)) (content!4051 (ite c!405012 call!159229 call!159230)))))))

(declare-fun e!1603591 () List!29616)

(assert (=> d!720423 (= lt!901470 e!1603591)))

(declare-fun c!405165 () Bool)

(assert (=> d!720423 (= c!405165 ((_ is Nil!29516) (ite c!405012 call!159231 call!159229)))))

(assert (=> d!720423 (= (++!7246 (ite c!405012 call!159231 call!159229) (ite c!405012 call!159229 call!159230)) lt!901470)))

(declare-fun b!2534822 () Bool)

(assert (=> b!2534822 (= e!1603592 (or (not (= (ite c!405012 call!159229 call!159230) Nil!29516)) (= lt!901470 (ite c!405012 call!159231 call!159229))))))

(declare-fun b!2534819 () Bool)

(assert (=> b!2534819 (= e!1603591 (ite c!405012 call!159229 call!159230))))

(declare-fun b!2534821 () Bool)

(declare-fun res!1069411 () Bool)

(assert (=> b!2534821 (=> (not res!1069411) (not e!1603592))))

(assert (=> b!2534821 (= res!1069411 (= (size!22933 lt!901470) (+ (size!22933 (ite c!405012 call!159231 call!159229)) (size!22933 (ite c!405012 call!159229 call!159230)))))))

(declare-fun b!2534820 () Bool)

(assert (=> b!2534820 (= e!1603591 (Cons!29516 (h!34936 (ite c!405012 call!159231 call!159229)) (++!7246 (t!211315 (ite c!405012 call!159231 call!159229)) (ite c!405012 call!159229 call!159230))))))

(assert (= (and d!720423 c!405165) b!2534819))

(assert (= (and d!720423 (not c!405165)) b!2534820))

(assert (= (and d!720423 res!1069412) b!2534821))

(assert (= (and b!2534821 res!1069411) b!2534822))

(declare-fun m!2883953 () Bool)

(assert (=> d!720423 m!2883953))

(declare-fun m!2883955 () Bool)

(assert (=> d!720423 m!2883955))

(declare-fun m!2883959 () Bool)

(assert (=> d!720423 m!2883959))

(declare-fun m!2883961 () Bool)

(assert (=> b!2534821 m!2883961))

(declare-fun m!2883965 () Bool)

(assert (=> b!2534821 m!2883965))

(declare-fun m!2883967 () Bool)

(assert (=> b!2534821 m!2883967))

(declare-fun m!2883969 () Bool)

(assert (=> b!2534820 m!2883969))

(assert (=> bm!159224 d!720423))

(assert (=> b!2534505 d!720393))

(assert (=> b!2534380 d!720391))

(declare-fun d!720429 () Bool)

(assert (=> d!720429 (= (nullable!2468 (reg!7880 r!27340)) (nullableFct!699 (reg!7880 r!27340)))))

(declare-fun bs!469268 () Bool)

(assert (= bs!469268 d!720429))

(declare-fun m!2883971 () Bool)

(assert (=> bs!469268 m!2883971))

(assert (=> b!2534409 d!720429))

(declare-fun b!2534825 () Bool)

(declare-fun e!1603596 () Bool)

(declare-fun call!159363 () Bool)

(assert (=> b!2534825 (= e!1603596 call!159363)))

(declare-fun b!2534826 () Bool)

(declare-fun res!1069419 () Bool)

(declare-fun e!1603600 () Bool)

(assert (=> b!2534826 (=> res!1069419 e!1603600)))

(assert (=> b!2534826 (= res!1069419 (not ((_ is Concat!12247) (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))))

(declare-fun e!1603599 () Bool)

(assert (=> b!2534826 (= e!1603599 e!1603600)))

(declare-fun bm!159357 () Bool)

(declare-fun call!159362 () Bool)

(assert (=> bm!159357 (= call!159363 call!159362)))

(declare-fun c!405167 () Bool)

(declare-fun bm!159358 () Bool)

(declare-fun call!159364 () Bool)

(assert (=> bm!159358 (= call!159364 (validRegex!3177 (ite c!405167 (regTwo!15615 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) (regOne!15614 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))))

(declare-fun b!2534827 () Bool)

(declare-fun e!1603598 () Bool)

(declare-fun e!1603601 () Bool)

(assert (=> b!2534827 (= e!1603598 e!1603601)))

(declare-fun res!1069416 () Bool)

(assert (=> b!2534827 (= res!1069416 (not (nullable!2468 (reg!7880 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))))

(assert (=> b!2534827 (=> (not res!1069416) (not e!1603601))))

(declare-fun b!2534828 () Bool)

(assert (=> b!2534828 (= e!1603600 e!1603596)))

(declare-fun res!1069418 () Bool)

(assert (=> b!2534828 (=> (not res!1069418) (not e!1603596))))

(assert (=> b!2534828 (= res!1069418 call!159364)))

(declare-fun b!2534829 () Bool)

(declare-fun e!1603595 () Bool)

(assert (=> b!2534829 (= e!1603595 e!1603598)))

(declare-fun c!405166 () Bool)

(assert (=> b!2534829 (= c!405166 ((_ is Star!7551) (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(declare-fun b!2534830 () Bool)

(declare-fun e!1603597 () Bool)

(assert (=> b!2534830 (= e!1603597 call!159364)))

(declare-fun bm!159359 () Bool)

(assert (=> bm!159359 (= call!159362 (validRegex!3177 (ite c!405166 (reg!7880 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) (ite c!405167 (regOne!15615 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) (regTwo!15614 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340)))))))))))

(declare-fun b!2534831 () Bool)

(assert (=> b!2534831 (= e!1603601 call!159362)))

(declare-fun b!2534832 () Bool)

(assert (=> b!2534832 (= e!1603598 e!1603599)))

(assert (=> b!2534832 (= c!405167 ((_ is Union!7551) (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(declare-fun d!720431 () Bool)

(declare-fun res!1069417 () Bool)

(assert (=> d!720431 (=> res!1069417 e!1603595)))

(assert (=> d!720431 (= res!1069417 ((_ is ElementMatch!7551) (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))))))

(assert (=> d!720431 (= (validRegex!3177 (ite c!404988 (reg!7880 (regOne!15615 r!27340)) (ite c!404989 (regOne!15615 (regOne!15615 r!27340)) (regTwo!15614 (regOne!15615 r!27340))))) e!1603595)))

(declare-fun b!2534833 () Bool)

(declare-fun res!1069415 () Bool)

(assert (=> b!2534833 (=> (not res!1069415) (not e!1603597))))

(assert (=> b!2534833 (= res!1069415 call!159363)))

(assert (=> b!2534833 (= e!1603599 e!1603597)))

(assert (= (and d!720431 (not res!1069417)) b!2534829))

(assert (= (and b!2534829 c!405166) b!2534827))

(assert (= (and b!2534829 (not c!405166)) b!2534832))

(assert (= (and b!2534827 res!1069416) b!2534831))

(assert (= (and b!2534832 c!405167) b!2534833))

(assert (= (and b!2534832 (not c!405167)) b!2534826))

(assert (= (and b!2534833 res!1069415) b!2534830))

(assert (= (and b!2534826 (not res!1069419)) b!2534828))

(assert (= (and b!2534828 res!1069418) b!2534825))

(assert (= (or b!2534833 b!2534825) bm!159357))

(assert (= (or b!2534830 b!2534828) bm!159358))

(assert (= (or b!2534831 bm!159357) bm!159359))

(declare-fun m!2883973 () Bool)

(assert (=> bm!159358 m!2883973))

(declare-fun m!2883975 () Bool)

(assert (=> b!2534827 m!2883975))

(declare-fun m!2883977 () Bool)

(assert (=> bm!159359 m!2883977))

(assert (=> bm!159197 d!720431))

(declare-fun b!2534834 () Bool)

(declare-fun e!1603603 () Bool)

(declare-fun call!159366 () Bool)

(assert (=> b!2534834 (= e!1603603 call!159366)))

(declare-fun b!2534835 () Bool)

(declare-fun res!1069424 () Bool)

(declare-fun e!1603607 () Bool)

(assert (=> b!2534835 (=> res!1069424 e!1603607)))

(assert (=> b!2534835 (= res!1069424 (not ((_ is Concat!12247) (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340)))))))

(declare-fun e!1603606 () Bool)

(assert (=> b!2534835 (= e!1603606 e!1603607)))

(declare-fun bm!159360 () Bool)

(declare-fun call!159365 () Bool)

(assert (=> bm!159360 (= call!159366 call!159365)))

(declare-fun c!405169 () Bool)

(declare-fun bm!159361 () Bool)

(declare-fun call!159367 () Bool)

(assert (=> bm!159361 (= call!159367 (validRegex!3177 (ite c!405169 (regTwo!15615 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (regOne!15614 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))))

(declare-fun b!2534836 () Bool)

(declare-fun e!1603605 () Bool)

(declare-fun e!1603608 () Bool)

(assert (=> b!2534836 (= e!1603605 e!1603608)))

(declare-fun res!1069421 () Bool)

(assert (=> b!2534836 (= res!1069421 (not (nullable!2468 (reg!7880 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))))

(assert (=> b!2534836 (=> (not res!1069421) (not e!1603608))))

(declare-fun b!2534837 () Bool)

(assert (=> b!2534837 (= e!1603607 e!1603603)))

(declare-fun res!1069423 () Bool)

(assert (=> b!2534837 (=> (not res!1069423) (not e!1603603))))

(assert (=> b!2534837 (= res!1069423 call!159367)))

(declare-fun b!2534838 () Bool)

(declare-fun e!1603602 () Bool)

(assert (=> b!2534838 (= e!1603602 e!1603605)))

(declare-fun c!405168 () Bool)

(assert (=> b!2534838 (= c!405168 ((_ is Star!7551) (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun b!2534839 () Bool)

(declare-fun e!1603604 () Bool)

(assert (=> b!2534839 (= e!1603604 call!159367)))

(declare-fun bm!159362 () Bool)

(assert (=> bm!159362 (= call!159365 (validRegex!3177 (ite c!405168 (reg!7880 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (ite c!405169 (regOne!15615 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))) (regTwo!15614 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340)))))))))

(declare-fun b!2534840 () Bool)

(assert (=> b!2534840 (= e!1603608 call!159365)))

(declare-fun b!2534841 () Bool)

(assert (=> b!2534841 (= e!1603605 e!1603606)))

(assert (=> b!2534841 (= c!405169 ((_ is Union!7551) (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(declare-fun d!720433 () Bool)

(declare-fun res!1069422 () Bool)

(assert (=> d!720433 (=> res!1069422 e!1603602)))

(assert (=> d!720433 (= res!1069422 ((_ is ElementMatch!7551) (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))))))

(assert (=> d!720433 (= (validRegex!3177 (ite c!405034 (regTwo!15615 r!27340) (regOne!15614 r!27340))) e!1603602)))

(declare-fun b!2534842 () Bool)

(declare-fun res!1069420 () Bool)

(assert (=> b!2534842 (=> (not res!1069420) (not e!1603604))))

(assert (=> b!2534842 (= res!1069420 call!159366)))

(assert (=> b!2534842 (= e!1603606 e!1603604)))

(assert (= (and d!720433 (not res!1069422)) b!2534838))

(assert (= (and b!2534838 c!405168) b!2534836))

(assert (= (and b!2534838 (not c!405168)) b!2534841))

(assert (= (and b!2534836 res!1069421) b!2534840))

(assert (= (and b!2534841 c!405169) b!2534842))

(assert (= (and b!2534841 (not c!405169)) b!2534835))

(assert (= (and b!2534842 res!1069420) b!2534839))

(assert (= (and b!2534835 (not res!1069424)) b!2534837))

(assert (= (and b!2534837 res!1069423) b!2534834))

(assert (= (or b!2534842 b!2534834) bm!159360))

(assert (= (or b!2534839 b!2534837) bm!159361))

(assert (= (or b!2534840 bm!159360) bm!159362))

(declare-fun m!2883979 () Bool)

(assert (=> bm!159361 m!2883979))

(declare-fun m!2883981 () Bool)

(assert (=> b!2534836 m!2883981))

(declare-fun m!2883983 () Bool)

(assert (=> bm!159362 m!2883983))

(assert (=> bm!159244 d!720433))

(assert (=> d!720329 d!720317))

(assert (=> d!720329 d!720321))

(declare-fun d!720435 () Bool)

(assert (=> d!720435 (contains!5297 (firstChars!88 (regOne!15615 r!27340)) c!14016)))

(assert (=> d!720435 true))

(declare-fun _$136!97 () Unit!43311)

(assert (=> d!720435 (= (choose!15012 (regOne!15615 r!27340) c!14016 tl!4068) _$136!97)))

(declare-fun bs!469269 () Bool)

(assert (= bs!469269 d!720435))

(assert (=> bs!469269 m!2883595))

(assert (=> bs!469269 m!2883595))

(assert (=> bs!469269 m!2883597))

(assert (=> d!720329 d!720435))

(assert (=> d!720329 d!720313))

(declare-fun b!2534857 () Bool)

(declare-fun e!1603621 () List!29616)

(assert (=> b!2534857 (= e!1603621 (Cons!29516 (c!404979 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) Nil!29516))))

(declare-fun b!2534858 () Bool)

(declare-fun e!1603624 () List!29616)

(declare-fun call!159372 () List!29616)

(assert (=> b!2534858 (= e!1603624 call!159372)))

(declare-fun b!2534859 () Bool)

(declare-fun e!1603622 () List!29616)

(assert (=> b!2534859 (= e!1603622 call!159372)))

(declare-fun b!2534860 () Bool)

(declare-fun c!405177 () Bool)

(assert (=> b!2534860 (= c!405177 ((_ is Star!7551) (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun e!1603625 () List!29616)

(assert (=> b!2534860 (= e!1603621 e!1603625)))

(declare-fun b!2534861 () Bool)

(declare-fun e!1603623 () List!29616)

(assert (=> b!2534861 (= e!1603623 Nil!29516)))

(declare-fun d!720437 () Bool)

(declare-fun c!405175 () Bool)

(assert (=> d!720437 (= c!405175 (or ((_ is EmptyExpr!7551) (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) ((_ is EmptyLang!7551) (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(assert (=> d!720437 (= (firstChars!88 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) e!1603623)))

(declare-fun b!2534862 () Bool)

(declare-fun c!405174 () Bool)

(assert (=> b!2534862 (= c!405174 (nullable!2468 (regOne!15614 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340))))))))

(assert (=> b!2534862 (= e!1603622 e!1603624)))

(declare-fun c!405173 () Bool)

(declare-fun bm!159367 () Bool)

(declare-fun call!159376 () List!29616)

(assert (=> bm!159367 (= call!159376 (firstChars!88 (ite c!405177 (reg!7880 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (ite c!405173 (regOne!15615 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (ite c!405174 (regTwo!15614 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (regOne!15614 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))))

(declare-fun b!2534863 () Bool)

(assert (=> b!2534863 (= e!1603623 e!1603621)))

(declare-fun c!405176 () Bool)

(assert (=> b!2534863 (= c!405176 ((_ is ElementMatch!7551) (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(declare-fun call!159374 () List!29616)

(declare-fun call!159375 () List!29616)

(declare-fun call!159373 () List!29616)

(declare-fun bm!159368 () Bool)

(assert (=> bm!159368 (= call!159372 (++!7246 (ite c!405173 call!159375 call!159373) (ite c!405173 call!159373 call!159374)))))

(declare-fun b!2534864 () Bool)

(assert (=> b!2534864 (= e!1603625 call!159376)))

(declare-fun bm!159369 () Bool)

(assert (=> bm!159369 (= call!159374 call!159375)))

(declare-fun bm!159370 () Bool)

(assert (=> bm!159370 (= call!159375 call!159376)))

(declare-fun b!2534865 () Bool)

(assert (=> b!2534865 (= e!1603624 call!159374)))

(declare-fun bm!159371 () Bool)

(assert (=> bm!159371 (= call!159373 (firstChars!88 (ite c!405173 (regTwo!15615 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))) (regOne!15614 (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))))

(declare-fun b!2534866 () Bool)

(assert (=> b!2534866 (= e!1603625 e!1603622)))

(assert (=> b!2534866 (= c!405173 ((_ is Union!7551) (ite c!405012 (regTwo!15615 (regOne!15615 r!27340)) (regOne!15614 (regOne!15615 r!27340)))))))

(assert (= (and d!720437 c!405175) b!2534861))

(assert (= (and d!720437 (not c!405175)) b!2534863))

(assert (= (and b!2534863 c!405176) b!2534857))

(assert (= (and b!2534863 (not c!405176)) b!2534860))

(assert (= (and b!2534860 c!405177) b!2534864))

(assert (= (and b!2534860 (not c!405177)) b!2534866))

(assert (= (and b!2534866 c!405173) b!2534859))

(assert (= (and b!2534866 (not c!405173)) b!2534862))

(assert (= (and b!2534862 c!405174) b!2534858))

(assert (= (and b!2534862 (not c!405174)) b!2534865))

(assert (= (or b!2534858 b!2534865) bm!159369))

(assert (= (or b!2534859 bm!159369) bm!159370))

(assert (= (or b!2534859 b!2534858) bm!159371))

(assert (= (or b!2534859 b!2534858) bm!159368))

(assert (= (or b!2534864 bm!159370) bm!159367))

(declare-fun m!2883985 () Bool)

(assert (=> b!2534862 m!2883985))

(declare-fun m!2883987 () Bool)

(assert (=> bm!159367 m!2883987))

(declare-fun m!2883989 () Bool)

(assert (=> bm!159368 m!2883989))

(declare-fun m!2883991 () Bool)

(assert (=> bm!159371 m!2883991))

(assert (=> bm!159227 d!720437))

(declare-fun d!720439 () Bool)

(assert (=> d!720439 (= (nullable!2468 (reg!7880 (regOne!15615 r!27340))) (nullableFct!699 (reg!7880 (regOne!15615 r!27340))))))

(declare-fun bs!469270 () Bool)

(assert (= bs!469270 d!720439))

(declare-fun m!2883993 () Bool)

(assert (=> bs!469270 m!2883993))

(assert (=> b!2534295 d!720439))

(declare-fun b!2534867 () Bool)

(declare-fun e!1603626 () Bool)

(assert (=> b!2534867 (= e!1603626 tp_is_empty!12957)))

(declare-fun b!2534870 () Bool)

(declare-fun tp!809731 () Bool)

(declare-fun tp!809733 () Bool)

(assert (=> b!2534870 (= e!1603626 (and tp!809731 tp!809733))))

(assert (=> b!2534560 (= tp!809696 e!1603626)))

(declare-fun b!2534869 () Bool)

(declare-fun tp!809734 () Bool)

(assert (=> b!2534869 (= e!1603626 tp!809734)))

(declare-fun b!2534868 () Bool)

(declare-fun tp!809735 () Bool)

(declare-fun tp!809732 () Bool)

(assert (=> b!2534868 (= e!1603626 (and tp!809735 tp!809732))))

(assert (= (and b!2534560 ((_ is ElementMatch!7551) (regOne!15614 (reg!7880 r!27340)))) b!2534867))

(assert (= (and b!2534560 ((_ is Concat!12247) (regOne!15614 (reg!7880 r!27340)))) b!2534868))

(assert (= (and b!2534560 ((_ is Star!7551) (regOne!15614 (reg!7880 r!27340)))) b!2534869))

(assert (= (and b!2534560 ((_ is Union!7551) (regOne!15614 (reg!7880 r!27340)))) b!2534870))

(declare-fun b!2534871 () Bool)

(declare-fun e!1603627 () Bool)

(assert (=> b!2534871 (= e!1603627 tp_is_empty!12957)))

(declare-fun b!2534874 () Bool)

(declare-fun tp!809736 () Bool)

(declare-fun tp!809738 () Bool)

(assert (=> b!2534874 (= e!1603627 (and tp!809736 tp!809738))))

(assert (=> b!2534560 (= tp!809692 e!1603627)))

(declare-fun b!2534873 () Bool)

(declare-fun tp!809739 () Bool)

(assert (=> b!2534873 (= e!1603627 tp!809739)))

(declare-fun b!2534872 () Bool)

(declare-fun tp!809740 () Bool)

(declare-fun tp!809737 () Bool)

(assert (=> b!2534872 (= e!1603627 (and tp!809740 tp!809737))))

(assert (= (and b!2534560 ((_ is ElementMatch!7551) (regTwo!15614 (reg!7880 r!27340)))) b!2534871))

(assert (= (and b!2534560 ((_ is Concat!12247) (regTwo!15614 (reg!7880 r!27340)))) b!2534872))

(assert (= (and b!2534560 ((_ is Star!7551) (regTwo!15614 (reg!7880 r!27340)))) b!2534873))

(assert (= (and b!2534560 ((_ is Union!7551) (regTwo!15614 (reg!7880 r!27340)))) b!2534874))

(declare-fun b!2534875 () Bool)

(declare-fun e!1603628 () Bool)

(assert (=> b!2534875 (= e!1603628 tp_is_empty!12957)))

(declare-fun b!2534878 () Bool)

(declare-fun tp!809741 () Bool)

(declare-fun tp!809743 () Bool)

(assert (=> b!2534878 (= e!1603628 (and tp!809741 tp!809743))))

(assert (=> b!2534538 (= tp!809667 e!1603628)))

(declare-fun b!2534877 () Bool)

(declare-fun tp!809744 () Bool)

(assert (=> b!2534877 (= e!1603628 tp!809744)))

(declare-fun b!2534876 () Bool)

(declare-fun tp!809745 () Bool)

(declare-fun tp!809742 () Bool)

(assert (=> b!2534876 (= e!1603628 (and tp!809745 tp!809742))))

(assert (= (and b!2534538 ((_ is ElementMatch!7551) (regOne!15615 (regOne!15614 r!27340)))) b!2534875))

(assert (= (and b!2534538 ((_ is Concat!12247) (regOne!15615 (regOne!15614 r!27340)))) b!2534876))

(assert (= (and b!2534538 ((_ is Star!7551) (regOne!15615 (regOne!15614 r!27340)))) b!2534877))

(assert (= (and b!2534538 ((_ is Union!7551) (regOne!15615 (regOne!15614 r!27340)))) b!2534878))

(declare-fun b!2534879 () Bool)

(declare-fun e!1603629 () Bool)

(assert (=> b!2534879 (= e!1603629 tp_is_empty!12957)))

(declare-fun b!2534882 () Bool)

(declare-fun tp!809746 () Bool)

(declare-fun tp!809748 () Bool)

(assert (=> b!2534882 (= e!1603629 (and tp!809746 tp!809748))))

(assert (=> b!2534538 (= tp!809669 e!1603629)))

(declare-fun b!2534881 () Bool)

(declare-fun tp!809749 () Bool)

(assert (=> b!2534881 (= e!1603629 tp!809749)))

(declare-fun b!2534880 () Bool)

(declare-fun tp!809750 () Bool)

(declare-fun tp!809747 () Bool)

(assert (=> b!2534880 (= e!1603629 (and tp!809750 tp!809747))))

(assert (= (and b!2534538 ((_ is ElementMatch!7551) (regTwo!15615 (regOne!15614 r!27340)))) b!2534879))

(assert (= (and b!2534538 ((_ is Concat!12247) (regTwo!15615 (regOne!15614 r!27340)))) b!2534880))

(assert (= (and b!2534538 ((_ is Star!7551) (regTwo!15615 (regOne!15614 r!27340)))) b!2534881))

(assert (= (and b!2534538 ((_ is Union!7551) (regTwo!15615 (regOne!15614 r!27340)))) b!2534882))

(declare-fun b!2534883 () Bool)

(declare-fun e!1603630 () Bool)

(declare-fun tp!809751 () Bool)

(assert (=> b!2534883 (= e!1603630 (and tp_is_empty!12957 tp!809751))))

(assert (=> b!2534558 (= tp!809690 e!1603630)))

(assert (= (and b!2534558 ((_ is Cons!29516) (t!211315 (t!211315 tl!4068)))) b!2534883))

(declare-fun b!2534884 () Bool)

(declare-fun e!1603631 () Bool)

(assert (=> b!2534884 (= e!1603631 tp_is_empty!12957)))

(declare-fun b!2534887 () Bool)

(declare-fun tp!809752 () Bool)

(declare-fun tp!809754 () Bool)

(assert (=> b!2534887 (= e!1603631 (and tp!809752 tp!809754))))

(assert (=> b!2534537 (= tp!809670 e!1603631)))

(declare-fun b!2534886 () Bool)

(declare-fun tp!809755 () Bool)

(assert (=> b!2534886 (= e!1603631 tp!809755)))

(declare-fun b!2534885 () Bool)

(declare-fun tp!809756 () Bool)

(declare-fun tp!809753 () Bool)

(assert (=> b!2534885 (= e!1603631 (and tp!809756 tp!809753))))

(assert (= (and b!2534537 ((_ is ElementMatch!7551) (reg!7880 (regOne!15614 r!27340)))) b!2534884))

(assert (= (and b!2534537 ((_ is Concat!12247) (reg!7880 (regOne!15614 r!27340)))) b!2534885))

(assert (= (and b!2534537 ((_ is Star!7551) (reg!7880 (regOne!15614 r!27340)))) b!2534886))

(assert (= (and b!2534537 ((_ is Union!7551) (reg!7880 (regOne!15614 r!27340)))) b!2534887))

(declare-fun b!2534888 () Bool)

(declare-fun e!1603632 () Bool)

(assert (=> b!2534888 (= e!1603632 tp_is_empty!12957)))

(declare-fun b!2534891 () Bool)

(declare-fun tp!809757 () Bool)

(declare-fun tp!809759 () Bool)

(assert (=> b!2534891 (= e!1603632 (and tp!809757 tp!809759))))

(assert (=> b!2534549 (= tp!809675 e!1603632)))

(declare-fun b!2534890 () Bool)

(declare-fun tp!809760 () Bool)

(assert (=> b!2534890 (= e!1603632 tp!809760)))

(declare-fun b!2534889 () Bool)

(declare-fun tp!809761 () Bool)

(declare-fun tp!809758 () Bool)

(assert (=> b!2534889 (= e!1603632 (and tp!809761 tp!809758))))

(assert (= (and b!2534549 ((_ is ElementMatch!7551) (regOne!15615 (regTwo!15614 r!27340)))) b!2534888))

(assert (= (and b!2534549 ((_ is Concat!12247) (regOne!15615 (regTwo!15614 r!27340)))) b!2534889))

(assert (= (and b!2534549 ((_ is Star!7551) (regOne!15615 (regTwo!15614 r!27340)))) b!2534890))

(assert (= (and b!2534549 ((_ is Union!7551) (regOne!15615 (regTwo!15614 r!27340)))) b!2534891))

(declare-fun b!2534892 () Bool)

(declare-fun e!1603633 () Bool)

(assert (=> b!2534892 (= e!1603633 tp_is_empty!12957)))

(declare-fun b!2534895 () Bool)

(declare-fun tp!809762 () Bool)

(declare-fun tp!809764 () Bool)

(assert (=> b!2534895 (= e!1603633 (and tp!809762 tp!809764))))

(assert (=> b!2534549 (= tp!809679 e!1603633)))

(declare-fun b!2534894 () Bool)

(declare-fun tp!809765 () Bool)

(assert (=> b!2534894 (= e!1603633 tp!809765)))

(declare-fun b!2534893 () Bool)

(declare-fun tp!809766 () Bool)

(declare-fun tp!809763 () Bool)

(assert (=> b!2534893 (= e!1603633 (and tp!809766 tp!809763))))

(assert (= (and b!2534549 ((_ is ElementMatch!7551) (regTwo!15615 (regTwo!15614 r!27340)))) b!2534892))

(assert (= (and b!2534549 ((_ is Concat!12247) (regTwo!15615 (regTwo!15614 r!27340)))) b!2534893))

(assert (= (and b!2534549 ((_ is Star!7551) (regTwo!15615 (regTwo!15614 r!27340)))) b!2534894))

(assert (= (and b!2534549 ((_ is Union!7551) (regTwo!15615 (regTwo!15614 r!27340)))) b!2534895))

(declare-fun b!2534896 () Bool)

(declare-fun e!1603634 () Bool)

(assert (=> b!2534896 (= e!1603634 tp_is_empty!12957)))

(declare-fun b!2534899 () Bool)

(declare-fun tp!809767 () Bool)

(declare-fun tp!809769 () Bool)

(assert (=> b!2534899 (= e!1603634 (and tp!809767 tp!809769))))

(assert (=> b!2534573 (= tp!809709 e!1603634)))

(declare-fun b!2534898 () Bool)

(declare-fun tp!809770 () Bool)

(assert (=> b!2534898 (= e!1603634 tp!809770)))

(declare-fun b!2534897 () Bool)

(declare-fun tp!809771 () Bool)

(declare-fun tp!809768 () Bool)

(assert (=> b!2534897 (= e!1603634 (and tp!809771 tp!809768))))

(assert (= (and b!2534573 ((_ is ElementMatch!7551) (reg!7880 (regOne!15615 r!27340)))) b!2534896))

(assert (= (and b!2534573 ((_ is Concat!12247) (reg!7880 (regOne!15615 r!27340)))) b!2534897))

(assert (= (and b!2534573 ((_ is Star!7551) (reg!7880 (regOne!15615 r!27340)))) b!2534898))

(assert (= (and b!2534573 ((_ is Union!7551) (reg!7880 (regOne!15615 r!27340)))) b!2534899))

(declare-fun b!2534903 () Bool)

(declare-fun e!1603641 () Bool)

(assert (=> b!2534903 (= e!1603641 tp_is_empty!12957)))

(declare-fun b!2534909 () Bool)

(declare-fun tp!809772 () Bool)

(declare-fun tp!809774 () Bool)

(assert (=> b!2534909 (= e!1603641 (and tp!809772 tp!809774))))

(assert (=> b!2534536 (= tp!809671 e!1603641)))

(declare-fun b!2534907 () Bool)

(declare-fun tp!809775 () Bool)

(assert (=> b!2534907 (= e!1603641 tp!809775)))

(declare-fun b!2534905 () Bool)

(declare-fun tp!809776 () Bool)

(declare-fun tp!809773 () Bool)

(assert (=> b!2534905 (= e!1603641 (and tp!809776 tp!809773))))

(assert (= (and b!2534536 ((_ is ElementMatch!7551) (regOne!15614 (regOne!15614 r!27340)))) b!2534903))

(assert (= (and b!2534536 ((_ is Concat!12247) (regOne!15614 (regOne!15614 r!27340)))) b!2534905))

(assert (= (and b!2534536 ((_ is Star!7551) (regOne!15614 (regOne!15614 r!27340)))) b!2534907))

(assert (= (and b!2534536 ((_ is Union!7551) (regOne!15614 (regOne!15614 r!27340)))) b!2534909))

(declare-fun b!2534911 () Bool)

(declare-fun e!1603642 () Bool)

(assert (=> b!2534911 (= e!1603642 tp_is_empty!12957)))

(declare-fun b!2534914 () Bool)

(declare-fun tp!809777 () Bool)

(declare-fun tp!809779 () Bool)

(assert (=> b!2534914 (= e!1603642 (and tp!809777 tp!809779))))

(assert (=> b!2534536 (= tp!809668 e!1603642)))

(declare-fun b!2534913 () Bool)

(declare-fun tp!809780 () Bool)

(assert (=> b!2534913 (= e!1603642 tp!809780)))

(declare-fun b!2534912 () Bool)

(declare-fun tp!809781 () Bool)

(declare-fun tp!809778 () Bool)

(assert (=> b!2534912 (= e!1603642 (and tp!809781 tp!809778))))

(assert (= (and b!2534536 ((_ is ElementMatch!7551) (regTwo!15614 (regOne!15614 r!27340)))) b!2534911))

(assert (= (and b!2534536 ((_ is Concat!12247) (regTwo!15614 (regOne!15614 r!27340)))) b!2534912))

(assert (= (and b!2534536 ((_ is Star!7551) (regTwo!15614 (regOne!15614 r!27340)))) b!2534913))

(assert (= (and b!2534536 ((_ is Union!7551) (regTwo!15614 (regOne!15614 r!27340)))) b!2534914))

(declare-fun b!2534915 () Bool)

(declare-fun e!1603643 () Bool)

(assert (=> b!2534915 (= e!1603643 tp_is_empty!12957)))

(declare-fun b!2534918 () Bool)

(declare-fun tp!809782 () Bool)

(declare-fun tp!809784 () Bool)

(assert (=> b!2534918 (= e!1603643 (and tp!809782 tp!809784))))

(assert (=> b!2534574 (= tp!809704 e!1603643)))

(declare-fun b!2534917 () Bool)

(declare-fun tp!809785 () Bool)

(assert (=> b!2534917 (= e!1603643 tp!809785)))

(declare-fun b!2534916 () Bool)

(declare-fun tp!809786 () Bool)

(declare-fun tp!809783 () Bool)

(assert (=> b!2534916 (= e!1603643 (and tp!809786 tp!809783))))

(assert (= (and b!2534574 ((_ is ElementMatch!7551) (regOne!15615 (regOne!15615 r!27340)))) b!2534915))

(assert (= (and b!2534574 ((_ is Concat!12247) (regOne!15615 (regOne!15615 r!27340)))) b!2534916))

(assert (= (and b!2534574 ((_ is Star!7551) (regOne!15615 (regOne!15615 r!27340)))) b!2534917))

(assert (= (and b!2534574 ((_ is Union!7551) (regOne!15615 (regOne!15615 r!27340)))) b!2534918))

(declare-fun b!2534919 () Bool)

(declare-fun e!1603644 () Bool)

(assert (=> b!2534919 (= e!1603644 tp_is_empty!12957)))

(declare-fun b!2534922 () Bool)

(declare-fun tp!809787 () Bool)

(declare-fun tp!809789 () Bool)

(assert (=> b!2534922 (= e!1603644 (and tp!809787 tp!809789))))

(assert (=> b!2534574 (= tp!809708 e!1603644)))

(declare-fun b!2534921 () Bool)

(declare-fun tp!809790 () Bool)

(assert (=> b!2534921 (= e!1603644 tp!809790)))

(declare-fun b!2534920 () Bool)

(declare-fun tp!809791 () Bool)

(declare-fun tp!809788 () Bool)

(assert (=> b!2534920 (= e!1603644 (and tp!809791 tp!809788))))

(assert (= (and b!2534574 ((_ is ElementMatch!7551) (regTwo!15615 (regOne!15615 r!27340)))) b!2534919))

(assert (= (and b!2534574 ((_ is Concat!12247) (regTwo!15615 (regOne!15615 r!27340)))) b!2534920))

(assert (= (and b!2534574 ((_ is Star!7551) (regTwo!15615 (regOne!15615 r!27340)))) b!2534921))

(assert (= (and b!2534574 ((_ is Union!7551) (regTwo!15615 (regOne!15615 r!27340)))) b!2534922))

(declare-fun b!2534923 () Bool)

(declare-fun e!1603645 () Bool)

(assert (=> b!2534923 (= e!1603645 tp_is_empty!12957)))

(declare-fun b!2534926 () Bool)

(declare-fun tp!809792 () Bool)

(declare-fun tp!809794 () Bool)

(assert (=> b!2534926 (= e!1603645 (and tp!809792 tp!809794))))

(assert (=> b!2534548 (= tp!809680 e!1603645)))

(declare-fun b!2534925 () Bool)

(declare-fun tp!809795 () Bool)

(assert (=> b!2534925 (= e!1603645 tp!809795)))

(declare-fun b!2534924 () Bool)

(declare-fun tp!809796 () Bool)

(declare-fun tp!809793 () Bool)

(assert (=> b!2534924 (= e!1603645 (and tp!809796 tp!809793))))

(assert (= (and b!2534548 ((_ is ElementMatch!7551) (reg!7880 (regTwo!15614 r!27340)))) b!2534923))

(assert (= (and b!2534548 ((_ is Concat!12247) (reg!7880 (regTwo!15614 r!27340)))) b!2534924))

(assert (= (and b!2534548 ((_ is Star!7551) (reg!7880 (regTwo!15614 r!27340)))) b!2534925))

(assert (= (and b!2534548 ((_ is Union!7551) (reg!7880 (regTwo!15614 r!27340)))) b!2534926))

(declare-fun b!2534929 () Bool)

(declare-fun e!1603648 () Bool)

(assert (=> b!2534929 (= e!1603648 tp_is_empty!12957)))

(declare-fun b!2534932 () Bool)

(declare-fun tp!809797 () Bool)

(declare-fun tp!809799 () Bool)

(assert (=> b!2534932 (= e!1603648 (and tp!809797 tp!809799))))

(assert (=> b!2534572 (= tp!809710 e!1603648)))

(declare-fun b!2534931 () Bool)

(declare-fun tp!809800 () Bool)

(assert (=> b!2534931 (= e!1603648 tp!809800)))

(declare-fun b!2534930 () Bool)

(declare-fun tp!809801 () Bool)

(declare-fun tp!809798 () Bool)

(assert (=> b!2534930 (= e!1603648 (and tp!809801 tp!809798))))

(assert (= (and b!2534572 ((_ is ElementMatch!7551) (regOne!15614 (regOne!15615 r!27340)))) b!2534929))

(assert (= (and b!2534572 ((_ is Concat!12247) (regOne!15614 (regOne!15615 r!27340)))) b!2534930))

(assert (= (and b!2534572 ((_ is Star!7551) (regOne!15614 (regOne!15615 r!27340)))) b!2534931))

(assert (= (and b!2534572 ((_ is Union!7551) (regOne!15614 (regOne!15615 r!27340)))) b!2534932))

(declare-fun b!2534933 () Bool)

(declare-fun e!1603649 () Bool)

(assert (=> b!2534933 (= e!1603649 tp_is_empty!12957)))

(declare-fun b!2534936 () Bool)

(declare-fun tp!809802 () Bool)

(declare-fun tp!809804 () Bool)

(assert (=> b!2534936 (= e!1603649 (and tp!809802 tp!809804))))

(assert (=> b!2534572 (= tp!809706 e!1603649)))

(declare-fun b!2534935 () Bool)

(declare-fun tp!809805 () Bool)

(assert (=> b!2534935 (= e!1603649 tp!809805)))

(declare-fun b!2534934 () Bool)

(declare-fun tp!809806 () Bool)

(declare-fun tp!809803 () Bool)

(assert (=> b!2534934 (= e!1603649 (and tp!809806 tp!809803))))

(assert (= (and b!2534572 ((_ is ElementMatch!7551) (regTwo!15614 (regOne!15615 r!27340)))) b!2534933))

(assert (= (and b!2534572 ((_ is Concat!12247) (regTwo!15614 (regOne!15615 r!27340)))) b!2534934))

(assert (= (and b!2534572 ((_ is Star!7551) (regTwo!15614 (regOne!15615 r!27340)))) b!2534935))

(assert (= (and b!2534572 ((_ is Union!7551) (regTwo!15614 (regOne!15615 r!27340)))) b!2534936))

(declare-fun b!2534937 () Bool)

(declare-fun e!1603650 () Bool)

(assert (=> b!2534937 (= e!1603650 tp_is_empty!12957)))

(declare-fun b!2534940 () Bool)

(declare-fun tp!809807 () Bool)

(declare-fun tp!809809 () Bool)

(assert (=> b!2534940 (= e!1603650 (and tp!809807 tp!809809))))

(assert (=> b!2534581 (= tp!809719 e!1603650)))

(declare-fun b!2534939 () Bool)

(declare-fun tp!809810 () Bool)

(assert (=> b!2534939 (= e!1603650 tp!809810)))

(declare-fun b!2534938 () Bool)

(declare-fun tp!809811 () Bool)

(declare-fun tp!809808 () Bool)

(assert (=> b!2534938 (= e!1603650 (and tp!809811 tp!809808))))

(assert (= (and b!2534581 ((_ is ElementMatch!7551) (reg!7880 (regTwo!15615 r!27340)))) b!2534937))

(assert (= (and b!2534581 ((_ is Concat!12247) (reg!7880 (regTwo!15615 r!27340)))) b!2534938))

(assert (= (and b!2534581 ((_ is Star!7551) (reg!7880 (regTwo!15615 r!27340)))) b!2534939))

(assert (= (and b!2534581 ((_ is Union!7551) (reg!7880 (regTwo!15615 r!27340)))) b!2534940))

(declare-fun b!2534948 () Bool)

(declare-fun e!1603657 () Bool)

(assert (=> b!2534948 (= e!1603657 tp_is_empty!12957)))

(declare-fun b!2534951 () Bool)

(declare-fun tp!809812 () Bool)

(declare-fun tp!809814 () Bool)

(assert (=> b!2534951 (= e!1603657 (and tp!809812 tp!809814))))

(assert (=> b!2534582 (= tp!809716 e!1603657)))

(declare-fun b!2534950 () Bool)

(declare-fun tp!809815 () Bool)

(assert (=> b!2534950 (= e!1603657 tp!809815)))

(declare-fun b!2534949 () Bool)

(declare-fun tp!809816 () Bool)

(declare-fun tp!809813 () Bool)

(assert (=> b!2534949 (= e!1603657 (and tp!809816 tp!809813))))

(assert (= (and b!2534582 ((_ is ElementMatch!7551) (regOne!15615 (regTwo!15615 r!27340)))) b!2534948))

(assert (= (and b!2534582 ((_ is Concat!12247) (regOne!15615 (regTwo!15615 r!27340)))) b!2534949))

(assert (= (and b!2534582 ((_ is Star!7551) (regOne!15615 (regTwo!15615 r!27340)))) b!2534950))

(assert (= (and b!2534582 ((_ is Union!7551) (regOne!15615 (regTwo!15615 r!27340)))) b!2534951))

(declare-fun b!2534952 () Bool)

(declare-fun e!1603658 () Bool)

(assert (=> b!2534952 (= e!1603658 tp_is_empty!12957)))

(declare-fun b!2534955 () Bool)

(declare-fun tp!809817 () Bool)

(declare-fun tp!809819 () Bool)

(assert (=> b!2534955 (= e!1603658 (and tp!809817 tp!809819))))

(assert (=> b!2534582 (= tp!809718 e!1603658)))

(declare-fun b!2534954 () Bool)

(declare-fun tp!809820 () Bool)

(assert (=> b!2534954 (= e!1603658 tp!809820)))

(declare-fun b!2534953 () Bool)

(declare-fun tp!809821 () Bool)

(declare-fun tp!809818 () Bool)

(assert (=> b!2534953 (= e!1603658 (and tp!809821 tp!809818))))

(assert (= (and b!2534582 ((_ is ElementMatch!7551) (regTwo!15615 (regTwo!15615 r!27340)))) b!2534952))

(assert (= (and b!2534582 ((_ is Concat!12247) (regTwo!15615 (regTwo!15615 r!27340)))) b!2534953))

(assert (= (and b!2534582 ((_ is Star!7551) (regTwo!15615 (regTwo!15615 r!27340)))) b!2534954))

(assert (= (and b!2534582 ((_ is Union!7551) (regTwo!15615 (regTwo!15615 r!27340)))) b!2534955))

(declare-fun b!2534956 () Bool)

(declare-fun e!1603659 () Bool)

(assert (=> b!2534956 (= e!1603659 tp_is_empty!12957)))

(declare-fun b!2534959 () Bool)

(declare-fun tp!809822 () Bool)

(declare-fun tp!809824 () Bool)

(assert (=> b!2534959 (= e!1603659 (and tp!809822 tp!809824))))

(assert (=> b!2534580 (= tp!809720 e!1603659)))

(declare-fun b!2534958 () Bool)

(declare-fun tp!809825 () Bool)

(assert (=> b!2534958 (= e!1603659 tp!809825)))

(declare-fun b!2534957 () Bool)

(declare-fun tp!809826 () Bool)

(declare-fun tp!809823 () Bool)

(assert (=> b!2534957 (= e!1603659 (and tp!809826 tp!809823))))

(assert (= (and b!2534580 ((_ is ElementMatch!7551) (regOne!15614 (regTwo!15615 r!27340)))) b!2534956))

(assert (= (and b!2534580 ((_ is Concat!12247) (regOne!15614 (regTwo!15615 r!27340)))) b!2534957))

(assert (= (and b!2534580 ((_ is Star!7551) (regOne!15614 (regTwo!15615 r!27340)))) b!2534958))

(assert (= (and b!2534580 ((_ is Union!7551) (regOne!15614 (regTwo!15615 r!27340)))) b!2534959))

(declare-fun b!2534960 () Bool)

(declare-fun e!1603660 () Bool)

(assert (=> b!2534960 (= e!1603660 tp_is_empty!12957)))

(declare-fun b!2534963 () Bool)

(declare-fun tp!809827 () Bool)

(declare-fun tp!809829 () Bool)

(assert (=> b!2534963 (= e!1603660 (and tp!809827 tp!809829))))

(assert (=> b!2534580 (= tp!809717 e!1603660)))

(declare-fun b!2534962 () Bool)

(declare-fun tp!809830 () Bool)

(assert (=> b!2534962 (= e!1603660 tp!809830)))

(declare-fun b!2534961 () Bool)

(declare-fun tp!809831 () Bool)

(declare-fun tp!809828 () Bool)

(assert (=> b!2534961 (= e!1603660 (and tp!809831 tp!809828))))

(assert (= (and b!2534580 ((_ is ElementMatch!7551) (regTwo!15614 (regTwo!15615 r!27340)))) b!2534960))

(assert (= (and b!2534580 ((_ is Concat!12247) (regTwo!15614 (regTwo!15615 r!27340)))) b!2534961))

(assert (= (and b!2534580 ((_ is Star!7551) (regTwo!15614 (regTwo!15615 r!27340)))) b!2534962))

(assert (= (and b!2534580 ((_ is Union!7551) (regTwo!15614 (regTwo!15615 r!27340)))) b!2534963))

(declare-fun b!2534964 () Bool)

(declare-fun e!1603661 () Bool)

(assert (=> b!2534964 (= e!1603661 tp_is_empty!12957)))

(declare-fun b!2534967 () Bool)

(declare-fun tp!809832 () Bool)

(declare-fun tp!809834 () Bool)

(assert (=> b!2534967 (= e!1603661 (and tp!809832 tp!809834))))

(assert (=> b!2534562 (= tp!809691 e!1603661)))

(declare-fun b!2534966 () Bool)

(declare-fun tp!809835 () Bool)

(assert (=> b!2534966 (= e!1603661 tp!809835)))

(declare-fun b!2534965 () Bool)

(declare-fun tp!809836 () Bool)

(declare-fun tp!809833 () Bool)

(assert (=> b!2534965 (= e!1603661 (and tp!809836 tp!809833))))

(assert (= (and b!2534562 ((_ is ElementMatch!7551) (regOne!15615 (reg!7880 r!27340)))) b!2534964))

(assert (= (and b!2534562 ((_ is Concat!12247) (regOne!15615 (reg!7880 r!27340)))) b!2534965))

(assert (= (and b!2534562 ((_ is Star!7551) (regOne!15615 (reg!7880 r!27340)))) b!2534966))

(assert (= (and b!2534562 ((_ is Union!7551) (regOne!15615 (reg!7880 r!27340)))) b!2534967))

(declare-fun b!2534977 () Bool)

(declare-fun e!1603669 () Bool)

(assert (=> b!2534977 (= e!1603669 tp_is_empty!12957)))

(declare-fun b!2534980 () Bool)

(declare-fun tp!809837 () Bool)

(declare-fun tp!809839 () Bool)

(assert (=> b!2534980 (= e!1603669 (and tp!809837 tp!809839))))

(assert (=> b!2534562 (= tp!809693 e!1603669)))

(declare-fun b!2534979 () Bool)

(declare-fun tp!809840 () Bool)

(assert (=> b!2534979 (= e!1603669 tp!809840)))

(declare-fun b!2534978 () Bool)

(declare-fun tp!809841 () Bool)

(declare-fun tp!809838 () Bool)

(assert (=> b!2534978 (= e!1603669 (and tp!809841 tp!809838))))

(assert (= (and b!2534562 ((_ is ElementMatch!7551) (regTwo!15615 (reg!7880 r!27340)))) b!2534977))

(assert (= (and b!2534562 ((_ is Concat!12247) (regTwo!15615 (reg!7880 r!27340)))) b!2534978))

(assert (= (and b!2534562 ((_ is Star!7551) (regTwo!15615 (reg!7880 r!27340)))) b!2534979))

(assert (= (and b!2534562 ((_ is Union!7551) (regTwo!15615 (reg!7880 r!27340)))) b!2534980))

(declare-fun b!2534981 () Bool)

(declare-fun e!1603670 () Bool)

(assert (=> b!2534981 (= e!1603670 tp_is_empty!12957)))

(declare-fun b!2534984 () Bool)

(declare-fun tp!809842 () Bool)

(declare-fun tp!809844 () Bool)

(assert (=> b!2534984 (= e!1603670 (and tp!809842 tp!809844))))

(assert (=> b!2534547 (= tp!809681 e!1603670)))

(declare-fun b!2534983 () Bool)

(declare-fun tp!809845 () Bool)

(assert (=> b!2534983 (= e!1603670 tp!809845)))

(declare-fun b!2534982 () Bool)

(declare-fun tp!809846 () Bool)

(declare-fun tp!809843 () Bool)

(assert (=> b!2534982 (= e!1603670 (and tp!809846 tp!809843))))

(assert (= (and b!2534547 ((_ is ElementMatch!7551) (regOne!15614 (regTwo!15614 r!27340)))) b!2534981))

(assert (= (and b!2534547 ((_ is Concat!12247) (regOne!15614 (regTwo!15614 r!27340)))) b!2534982))

(assert (= (and b!2534547 ((_ is Star!7551) (regOne!15614 (regTwo!15614 r!27340)))) b!2534983))

(assert (= (and b!2534547 ((_ is Union!7551) (regOne!15614 (regTwo!15614 r!27340)))) b!2534984))

(declare-fun b!2534985 () Bool)

(declare-fun e!1603671 () Bool)

(assert (=> b!2534985 (= e!1603671 tp_is_empty!12957)))

(declare-fun b!2534988 () Bool)

(declare-fun tp!809847 () Bool)

(declare-fun tp!809849 () Bool)

(assert (=> b!2534988 (= e!1603671 (and tp!809847 tp!809849))))

(assert (=> b!2534547 (= tp!809676 e!1603671)))

(declare-fun b!2534987 () Bool)

(declare-fun tp!809850 () Bool)

(assert (=> b!2534987 (= e!1603671 tp!809850)))

(declare-fun b!2534986 () Bool)

(declare-fun tp!809851 () Bool)

(declare-fun tp!809848 () Bool)

(assert (=> b!2534986 (= e!1603671 (and tp!809851 tp!809848))))

(assert (= (and b!2534547 ((_ is ElementMatch!7551) (regTwo!15614 (regTwo!15614 r!27340)))) b!2534985))

(assert (= (and b!2534547 ((_ is Concat!12247) (regTwo!15614 (regTwo!15614 r!27340)))) b!2534986))

(assert (= (and b!2534547 ((_ is Star!7551) (regTwo!15614 (regTwo!15614 r!27340)))) b!2534987))

(assert (= (and b!2534547 ((_ is Union!7551) (regTwo!15614 (regTwo!15614 r!27340)))) b!2534988))

(declare-fun b!2534989 () Bool)

(declare-fun e!1603672 () Bool)

(assert (=> b!2534989 (= e!1603672 tp_is_empty!12957)))

(declare-fun b!2534992 () Bool)

(declare-fun tp!809852 () Bool)

(declare-fun tp!809854 () Bool)

(assert (=> b!2534992 (= e!1603672 (and tp!809852 tp!809854))))

(assert (=> b!2534561 (= tp!809694 e!1603672)))

(declare-fun b!2534991 () Bool)

(declare-fun tp!809855 () Bool)

(assert (=> b!2534991 (= e!1603672 tp!809855)))

(declare-fun b!2534990 () Bool)

(declare-fun tp!809856 () Bool)

(declare-fun tp!809853 () Bool)

(assert (=> b!2534990 (= e!1603672 (and tp!809856 tp!809853))))

(assert (= (and b!2534561 ((_ is ElementMatch!7551) (reg!7880 (reg!7880 r!27340)))) b!2534989))

(assert (= (and b!2534561 ((_ is Concat!12247) (reg!7880 (reg!7880 r!27340)))) b!2534990))

(assert (= (and b!2534561 ((_ is Star!7551) (reg!7880 (reg!7880 r!27340)))) b!2534991))

(assert (= (and b!2534561 ((_ is Union!7551) (reg!7880 (reg!7880 r!27340)))) b!2534992))

(check-sat (not bm!159336) (not bm!159324) (not d!720399) (not d!720403) (not bm!159292) (not b!2534881) (not b!2534936) (not b!2534962) (not b!2534787) (not b!2534672) (not b!2534813) (not d!720377) (not b!2534914) (not b!2534868) (not b!2534827) (not b!2534755) (not b!2534938) (not bm!159286) (not b!2534746) (not bm!159310) (not d!720371) (not bm!159346) (not b!2534667) (not bm!159334) (not b!2534939) (not bm!159289) (not b!2534654) (not b!2534668) (not bm!159354) (not b!2534916) (not b!2534885) (not b!2534886) (not d!720435) (not bm!159287) (not bm!159284) (not bm!159362) (not b!2534738) (not b!2534913) (not b!2534979) (not d!720421) (not b!2534897) (not b!2534920) (not bm!159315) (not b!2534959) (not b!2534921) (not b!2534965) (not b!2534641) (not b!2534761) (not b!2534597) (not b!2534932) (not b!2534612) (not d!720379) (not bm!159300) (not b!2534961) (not b!2534898) (not b!2534918) (not bm!159345) (not bm!159342) (not d!720391) (not b!2534770) (not bm!159296) (not b!2534978) (not b!2534874) (not b!2534733) (not bm!159339) (not b!2534877) (not bm!159294) (not b!2534878) (not bm!159290) (not bm!159308) (not bm!159301) (not b!2534963) (not b!2534992) (not d!720373) (not b!2534987) (not d!720423) (not bm!159316) (not b!2534635) (not bm!159344) (not bm!159319) (not bm!159314) (not b!2534934) (not b!2534926) (not b!2534882) (not b!2534869) (not bm!159282) (not b!2534930) (not bm!159313) (not b!2534954) (not bm!159332) (not bm!159327) (not b!2534967) (not b!2534984) (not b!2534870) (not b!2534912) (not b!2534895) (not bm!159359) (not d!720397) (not b!2534836) (not bm!159330) (not b!2534983) (not d!720365) (not b!2534767) (not b!2534931) (not b!2534795) (not bm!159335) (not b!2534950) (not b!2534889) (not b!2534891) (not bm!159347) (not bm!159305) (not b!2534625) (not bm!159367) (not b!2534949) (not b!2534894) (not b!2534876) (not bm!159303) (not b!2534883) (not bm!159307) (not bm!159298) (not b!2534872) (not b!2534917) (not b!2534958) (not b!2534887) (not b!2534986) (not b!2534603) (not b!2534779) (not bm!159326) (not d!720393) (not bm!159361) (not b!2534890) (not bm!159368) (not bm!159311) tp_is_empty!12957 (not b!2534924) (not d!720417) (not bm!159356) (not b!2534955) (not b!2534893) (not b!2534909) (not b!2534925) (not bm!159325) (not d!720419) (not b!2534702) (not b!2534991) (not b!2534681) (not bm!159341) (not bm!159358) (not b!2534821) (not bm!159371) (not b!2534820) (not b!2534951) (not b!2534907) (not b!2534940) (not d!720439) (not b!2534953) (not b!2534880) (not b!2534922) (not b!2534988) (not b!2534690) (not b!2534966) (not b!2534899) (not b!2534873) (not b!2534980) (not b!2534982) (not b!2534935) (not b!2534862) (not b!2534990) (not d!720429) (not b!2534905) (not b!2534957) (not b!2534818))
(check-sat)
