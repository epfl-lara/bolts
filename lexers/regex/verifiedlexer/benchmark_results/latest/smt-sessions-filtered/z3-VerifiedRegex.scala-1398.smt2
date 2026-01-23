; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73730 () Bool)

(assert start!73730)

(declare-fun b!824261 () Bool)

(declare-fun e!544190 () Bool)

(declare-datatypes ((C!4680 0))(
  ( (C!4681 (val!2588 Int)) )
))
(declare-datatypes ((Regex!2055 0))(
  ( (ElementMatch!2055 (c!133704 C!4680)) (Concat!3786 (regOne!4622 Regex!2055) (regTwo!4622 Regex!2055)) (EmptyExpr!2055) (Star!2055 (reg!2384 Regex!2055)) (EmptyLang!2055) (Union!2055 (regOne!4623 Regex!2055) (regTwo!4623 Regex!2055)) )
))
(declare-fun r!27177 () Regex!2055)

(declare-fun RegexPrimitiveSize!88 (Regex!2055) Int)

(assert (=> b!824261 (= e!544190 (>= (RegexPrimitiveSize!88 (reg!2384 r!27177)) (RegexPrimitiveSize!88 r!27177)))))

(declare-fun res!379987 () Bool)

(assert (=> start!73730 (=> (not res!379987) (not e!544190))))

(declare-fun validRegex!608 (Regex!2055) Bool)

(assert (=> start!73730 (= res!379987 (validRegex!608 r!27177))))

(assert (=> start!73730 e!544190))

(declare-fun e!544191 () Bool)

(assert (=> start!73730 e!544191))

(declare-fun tp_is_empty!3833 () Bool)

(assert (=> start!73730 tp_is_empty!3833))

(declare-fun b!824262 () Bool)

(declare-fun res!379985 () Bool)

(assert (=> b!824262 (=> (not res!379985) (not e!544190))))

(declare-fun c!13916 () C!4680)

(declare-datatypes ((List!8881 0))(
  ( (Nil!8865) (Cons!8865 (h!14266 C!4680) (t!93173 List!8881)) )
))
(declare-fun contains!1646 (List!8881 C!4680) Bool)

(declare-fun firstChars!26 (Regex!2055) List!8881)

(assert (=> b!824262 (= res!379985 (contains!1646 (firstChars!26 r!27177) c!13916))))

(declare-fun b!824263 () Bool)

(declare-fun tp!257664 () Bool)

(assert (=> b!824263 (= e!544191 tp!257664)))

(declare-fun b!824264 () Bool)

(declare-fun res!379986 () Bool)

(assert (=> b!824264 (=> (not res!379986) (not e!544190))))

(assert (=> b!824264 (= res!379986 (validRegex!608 (reg!2384 r!27177)))))

(declare-fun b!824265 () Bool)

(declare-fun res!379988 () Bool)

(assert (=> b!824265 (=> (not res!379988) (not e!544190))))

(get-info :version)

(assert (=> b!824265 (= res!379988 (and (not ((_ is EmptyExpr!2055) r!27177)) (not ((_ is EmptyLang!2055) r!27177)) (not ((_ is ElementMatch!2055) r!27177)) ((_ is Star!2055) r!27177)))))

(declare-fun b!824266 () Bool)

(assert (=> b!824266 (= e!544191 tp_is_empty!3833)))

(declare-fun b!824267 () Bool)

(declare-fun tp!257660 () Bool)

(declare-fun tp!257663 () Bool)

(assert (=> b!824267 (= e!544191 (and tp!257660 tp!257663))))

(declare-fun b!824268 () Bool)

(declare-fun tp!257662 () Bool)

(declare-fun tp!257661 () Bool)

(assert (=> b!824268 (= e!544191 (and tp!257662 tp!257661))))

(declare-fun b!824269 () Bool)

(declare-fun res!379989 () Bool)

(assert (=> b!824269 (=> (not res!379989) (not e!544190))))

(assert (=> b!824269 (= res!379989 (contains!1646 (firstChars!26 (reg!2384 r!27177)) c!13916))))

(assert (= (and start!73730 res!379987) b!824262))

(assert (= (and b!824262 res!379985) b!824265))

(assert (= (and b!824265 res!379988) b!824264))

(assert (= (and b!824264 res!379986) b!824269))

(assert (= (and b!824269 res!379989) b!824261))

(assert (= (and start!73730 ((_ is ElementMatch!2055) r!27177)) b!824266))

(assert (= (and start!73730 ((_ is Concat!3786) r!27177)) b!824268))

(assert (= (and start!73730 ((_ is Star!2055) r!27177)) b!824263))

(assert (= (and start!73730 ((_ is Union!2055) r!27177)) b!824267))

(declare-fun m!1064197 () Bool)

(assert (=> b!824262 m!1064197))

(assert (=> b!824262 m!1064197))

(declare-fun m!1064199 () Bool)

(assert (=> b!824262 m!1064199))

(declare-fun m!1064201 () Bool)

(assert (=> b!824269 m!1064201))

(assert (=> b!824269 m!1064201))

(declare-fun m!1064203 () Bool)

(assert (=> b!824269 m!1064203))

(declare-fun m!1064205 () Bool)

(assert (=> b!824264 m!1064205))

(declare-fun m!1064207 () Bool)

(assert (=> start!73730 m!1064207))

(declare-fun m!1064209 () Bool)

(assert (=> b!824261 m!1064209))

(declare-fun m!1064211 () Bool)

(assert (=> b!824261 m!1064211))

(check-sat (not b!824269) (not b!824267) (not b!824264) (not b!824262) (not start!73730) (not b!824268) tp_is_empty!3833 (not b!824261) (not b!824263))
(check-sat)
(get-model)

(declare-fun b!824316 () Bool)

(declare-fun e!544222 () Int)

(declare-fun call!47507 () Int)

(declare-fun call!47506 () Int)

(assert (=> b!824316 (= e!544222 (+ 1 call!47507 call!47506))))

(declare-fun bm!47501 () Bool)

(declare-fun call!47508 () Int)

(assert (=> bm!47501 (= call!47507 call!47508)))

(declare-fun b!824317 () Bool)

(declare-fun e!544219 () Int)

(declare-fun e!544220 () Int)

(assert (=> b!824317 (= e!544219 e!544220)))

(declare-fun c!133729 () Bool)

(assert (=> b!824317 (= c!133729 ((_ is Star!2055) (reg!2384 r!27177)))))

(declare-fun b!824318 () Bool)

(assert (=> b!824318 (= e!544220 (+ 1 call!47507))))

(declare-fun b!824319 () Bool)

(declare-fun c!133726 () Bool)

(assert (=> b!824319 (= c!133726 ((_ is EmptyLang!2055) (reg!2384 r!27177)))))

(assert (=> b!824319 (= e!544220 e!544222)))

(declare-fun bm!47502 () Bool)

(declare-fun c!133725 () Bool)

(assert (=> bm!47502 (= call!47508 (RegexPrimitiveSize!88 (ite c!133725 (regOne!4622 (reg!2384 r!27177)) (ite c!133729 (reg!2384 (reg!2384 r!27177)) (regOne!4623 (reg!2384 r!27177))))))))

(declare-fun d!259133 () Bool)

(declare-fun lt!317431 () Int)

(assert (=> d!259133 (>= lt!317431 0)))

(declare-fun e!544221 () Int)

(assert (=> d!259133 (= lt!317431 e!544221)))

(declare-fun c!133727 () Bool)

(assert (=> d!259133 (= c!133727 ((_ is ElementMatch!2055) (reg!2384 r!27177)))))

(assert (=> d!259133 (= (RegexPrimitiveSize!88 (reg!2384 r!27177)) lt!317431)))

(declare-fun b!824320 () Bool)

(declare-fun c!133728 () Bool)

(assert (=> b!824320 (= c!133728 ((_ is EmptyExpr!2055) (reg!2384 r!27177)))))

(declare-fun e!544218 () Int)

(assert (=> b!824320 (= e!544218 e!544219)))

(declare-fun b!824321 () Bool)

(assert (=> b!824321 (= e!544221 e!544218)))

(assert (=> b!824321 (= c!133725 ((_ is Concat!3786) (reg!2384 r!27177)))))

(declare-fun b!824322 () Bool)

(assert (=> b!824322 (= e!544218 (+ 1 call!47508 call!47506))))

(declare-fun b!824323 () Bool)

(assert (=> b!824323 (= e!544222 0)))

(declare-fun bm!47503 () Bool)

(assert (=> bm!47503 (= call!47506 (RegexPrimitiveSize!88 (ite c!133725 (regTwo!4622 (reg!2384 r!27177)) (regTwo!4623 (reg!2384 r!27177)))))))

(declare-fun b!824324 () Bool)

(assert (=> b!824324 (= e!544219 0)))

(declare-fun b!824325 () Bool)

(assert (=> b!824325 (= e!544221 1)))

(assert (= (and d!259133 c!133727) b!824325))

(assert (= (and d!259133 (not c!133727)) b!824321))

(assert (= (and b!824321 c!133725) b!824322))

(assert (= (and b!824321 (not c!133725)) b!824320))

(assert (= (and b!824320 c!133728) b!824324))

(assert (= (and b!824320 (not c!133728)) b!824317))

(assert (= (and b!824317 c!133729) b!824318))

(assert (= (and b!824317 (not c!133729)) b!824319))

(assert (= (and b!824319 c!133726) b!824323))

(assert (= (and b!824319 (not c!133726)) b!824316))

(assert (= (or b!824318 b!824316) bm!47501))

(assert (= (or b!824322 bm!47501) bm!47502))

(assert (= (or b!824322 b!824316) bm!47503))

(declare-fun m!1064219 () Bool)

(assert (=> bm!47502 m!1064219))

(declare-fun m!1064221 () Bool)

(assert (=> bm!47503 m!1064221))

(assert (=> b!824261 d!259133))

(declare-fun b!824326 () Bool)

(declare-fun e!544227 () Int)

(declare-fun call!47512 () Int)

(declare-fun call!47511 () Int)

(assert (=> b!824326 (= e!544227 (+ 1 call!47512 call!47511))))

(declare-fun bm!47506 () Bool)

(declare-fun call!47513 () Int)

(assert (=> bm!47506 (= call!47512 call!47513)))

(declare-fun b!824327 () Bool)

(declare-fun e!544224 () Int)

(declare-fun e!544225 () Int)

(assert (=> b!824327 (= e!544224 e!544225)))

(declare-fun c!133734 () Bool)

(assert (=> b!824327 (= c!133734 ((_ is Star!2055) r!27177))))

(declare-fun b!824328 () Bool)

(assert (=> b!824328 (= e!544225 (+ 1 call!47512))))

(declare-fun b!824329 () Bool)

(declare-fun c!133731 () Bool)

(assert (=> b!824329 (= c!133731 ((_ is EmptyLang!2055) r!27177))))

(assert (=> b!824329 (= e!544225 e!544227)))

(declare-fun c!133730 () Bool)

(declare-fun bm!47507 () Bool)

(assert (=> bm!47507 (= call!47513 (RegexPrimitiveSize!88 (ite c!133730 (regOne!4622 r!27177) (ite c!133734 (reg!2384 r!27177) (regOne!4623 r!27177)))))))

(declare-fun d!259137 () Bool)

(declare-fun lt!317432 () Int)

(assert (=> d!259137 (>= lt!317432 0)))

(declare-fun e!544226 () Int)

(assert (=> d!259137 (= lt!317432 e!544226)))

(declare-fun c!133732 () Bool)

(assert (=> d!259137 (= c!133732 ((_ is ElementMatch!2055) r!27177))))

(assert (=> d!259137 (= (RegexPrimitiveSize!88 r!27177) lt!317432)))

(declare-fun b!824330 () Bool)

(declare-fun c!133733 () Bool)

(assert (=> b!824330 (= c!133733 ((_ is EmptyExpr!2055) r!27177))))

(declare-fun e!544223 () Int)

(assert (=> b!824330 (= e!544223 e!544224)))

(declare-fun b!824331 () Bool)

(assert (=> b!824331 (= e!544226 e!544223)))

(assert (=> b!824331 (= c!133730 ((_ is Concat!3786) r!27177))))

(declare-fun b!824332 () Bool)

(assert (=> b!824332 (= e!544223 (+ 1 call!47513 call!47511))))

(declare-fun b!824333 () Bool)

(assert (=> b!824333 (= e!544227 0)))

(declare-fun bm!47508 () Bool)

(assert (=> bm!47508 (= call!47511 (RegexPrimitiveSize!88 (ite c!133730 (regTwo!4622 r!27177) (regTwo!4623 r!27177))))))

(declare-fun b!824334 () Bool)

(assert (=> b!824334 (= e!544224 0)))

(declare-fun b!824335 () Bool)

(assert (=> b!824335 (= e!544226 1)))

(assert (= (and d!259137 c!133732) b!824335))

(assert (= (and d!259137 (not c!133732)) b!824331))

(assert (= (and b!824331 c!133730) b!824332))

(assert (= (and b!824331 (not c!133730)) b!824330))

(assert (= (and b!824330 c!133733) b!824334))

(assert (= (and b!824330 (not c!133733)) b!824327))

(assert (= (and b!824327 c!133734) b!824328))

(assert (= (and b!824327 (not c!133734)) b!824329))

(assert (= (and b!824329 c!133731) b!824333))

(assert (= (and b!824329 (not c!133731)) b!824326))

(assert (= (or b!824328 b!824326) bm!47506))

(assert (= (or b!824332 bm!47506) bm!47507))

(assert (= (or b!824332 b!824326) bm!47508))

(declare-fun m!1064223 () Bool)

(assert (=> bm!47507 m!1064223))

(declare-fun m!1064225 () Bool)

(assert (=> bm!47508 m!1064225))

(assert (=> b!824261 d!259137))

(declare-fun d!259139 () Bool)

(declare-fun lt!317435 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1294 (List!8881) (InoxSet C!4680))

(assert (=> d!259139 (= lt!317435 (select (content!1294 (firstChars!26 r!27177)) c!13916))))

(declare-fun e!544238 () Bool)

(assert (=> d!259139 (= lt!317435 e!544238)))

(declare-fun res!380001 () Bool)

(assert (=> d!259139 (=> (not res!380001) (not e!544238))))

(assert (=> d!259139 (= res!380001 ((_ is Cons!8865) (firstChars!26 r!27177)))))

(assert (=> d!259139 (= (contains!1646 (firstChars!26 r!27177) c!13916) lt!317435)))

(declare-fun b!824350 () Bool)

(declare-fun e!544237 () Bool)

(assert (=> b!824350 (= e!544238 e!544237)))

(declare-fun res!380000 () Bool)

(assert (=> b!824350 (=> res!380000 e!544237)))

(assert (=> b!824350 (= res!380000 (= (h!14266 (firstChars!26 r!27177)) c!13916))))

(declare-fun b!824351 () Bool)

(assert (=> b!824351 (= e!544237 (contains!1646 (t!93173 (firstChars!26 r!27177)) c!13916))))

(assert (= (and d!259139 res!380001) b!824350))

(assert (= (and b!824350 (not res!380000)) b!824351))

(assert (=> d!259139 m!1064197))

(declare-fun m!1064227 () Bool)

(assert (=> d!259139 m!1064227))

(declare-fun m!1064229 () Bool)

(assert (=> d!259139 m!1064229))

(declare-fun m!1064231 () Bool)

(assert (=> b!824351 m!1064231))

(assert (=> b!824262 d!259139))

(declare-fun b!824411 () Bool)

(declare-fun c!133765 () Bool)

(declare-fun nullable!506 (Regex!2055) Bool)

(assert (=> b!824411 (= c!133765 (nullable!506 (regOne!4622 r!27177)))))

(declare-fun e!544280 () List!8881)

(declare-fun e!544281 () List!8881)

(assert (=> b!824411 (= e!544280 e!544281)))

(declare-fun bm!47538 () Bool)

(declare-fun call!47545 () List!8881)

(declare-fun call!47546 () List!8881)

(assert (=> bm!47538 (= call!47545 call!47546)))

(declare-fun b!824412 () Bool)

(assert (=> b!824412 (= e!544281 call!47545)))

(declare-fun b!824413 () Bool)

(declare-fun call!47547 () List!8881)

(assert (=> b!824413 (= e!544280 call!47547)))

(declare-fun call!47543 () List!8881)

(declare-fun c!133764 () Bool)

(declare-fun c!133763 () Bool)

(declare-fun bm!47539 () Bool)

(assert (=> bm!47539 (= call!47543 (firstChars!26 (ite c!133764 (reg!2384 r!27177) (ite c!133763 (regOne!4623 r!27177) (regTwo!4622 r!27177)))))))

(declare-fun b!824414 () Bool)

(declare-fun e!544279 () List!8881)

(assert (=> b!824414 (= e!544279 (Cons!8865 (c!133704 r!27177) Nil!8865))))

(declare-fun b!824415 () Bool)

(assert (=> b!824415 (= c!133764 ((_ is Star!2055) r!27177))))

(declare-fun e!544277 () List!8881)

(assert (=> b!824415 (= e!544279 e!544277)))

(declare-fun b!824416 () Bool)

(assert (=> b!824416 (= e!544277 call!47543)))

(declare-fun b!824417 () Bool)

(declare-fun e!544278 () List!8881)

(assert (=> b!824417 (= e!544278 e!544279)))

(declare-fun c!133762 () Bool)

(assert (=> b!824417 (= c!133762 ((_ is ElementMatch!2055) r!27177))))

(declare-fun d!259141 () Bool)

(declare-fun c!133761 () Bool)

(assert (=> d!259141 (= c!133761 (or ((_ is EmptyExpr!2055) r!27177) ((_ is EmptyLang!2055) r!27177)))))

(assert (=> d!259141 (= (firstChars!26 r!27177) e!544278)))

(declare-fun b!824418 () Bool)

(assert (=> b!824418 (= e!544281 call!47547)))

(declare-fun call!47544 () List!8881)

(declare-fun bm!47540 () Bool)

(declare-fun ++!2282 (List!8881 List!8881) List!8881)

(assert (=> bm!47540 (= call!47547 (++!2282 (ite c!133763 call!47544 call!47545) (ite c!133763 call!47546 call!47544)))))

(declare-fun bm!47541 () Bool)

(assert (=> bm!47541 (= call!47546 (firstChars!26 (ite c!133763 (regTwo!4623 r!27177) (regOne!4622 r!27177))))))

(declare-fun bm!47542 () Bool)

(assert (=> bm!47542 (= call!47544 call!47543)))

(declare-fun b!824419 () Bool)

(assert (=> b!824419 (= e!544277 e!544280)))

(assert (=> b!824419 (= c!133763 ((_ is Union!2055) r!27177))))

(declare-fun b!824420 () Bool)

(assert (=> b!824420 (= e!544278 Nil!8865)))

(assert (= (and d!259141 c!133761) b!824420))

(assert (= (and d!259141 (not c!133761)) b!824417))

(assert (= (and b!824417 c!133762) b!824414))

(assert (= (and b!824417 (not c!133762)) b!824415))

(assert (= (and b!824415 c!133764) b!824416))

(assert (= (and b!824415 (not c!133764)) b!824419))

(assert (= (and b!824419 c!133763) b!824413))

(assert (= (and b!824419 (not c!133763)) b!824411))

(assert (= (and b!824411 c!133765) b!824418))

(assert (= (and b!824411 (not c!133765)) b!824412))

(assert (= (or b!824418 b!824412) bm!47538))

(assert (= (or b!824413 bm!47538) bm!47541))

(assert (= (or b!824413 b!824418) bm!47542))

(assert (= (or b!824413 b!824418) bm!47540))

(assert (= (or b!824416 bm!47542) bm!47539))

(declare-fun m!1064261 () Bool)

(assert (=> b!824411 m!1064261))

(declare-fun m!1064263 () Bool)

(assert (=> bm!47539 m!1064263))

(declare-fun m!1064265 () Bool)

(assert (=> bm!47540 m!1064265))

(declare-fun m!1064267 () Bool)

(assert (=> bm!47541 m!1064267))

(assert (=> b!824262 d!259141))

(declare-fun b!824468 () Bool)

(declare-fun e!544319 () Bool)

(declare-fun call!47565 () Bool)

(assert (=> b!824468 (= e!544319 call!47565)))

(declare-fun b!824469 () Bool)

(declare-fun res!380038 () Bool)

(declare-fun e!544317 () Bool)

(assert (=> b!824469 (=> res!380038 e!544317)))

(assert (=> b!824469 (= res!380038 (not ((_ is Concat!3786) r!27177)))))

(declare-fun e!544315 () Bool)

(assert (=> b!824469 (= e!544315 e!544317)))

(declare-fun b!824470 () Bool)

(declare-fun e!544313 () Bool)

(declare-fun call!47564 () Bool)

(assert (=> b!824470 (= e!544313 call!47564)))

(declare-fun bm!47558 () Bool)

(declare-fun c!133782 () Bool)

(assert (=> bm!47558 (= call!47565 (validRegex!608 (ite c!133782 (regTwo!4623 r!27177) (regOne!4622 r!27177))))))

(declare-fun bm!47559 () Bool)

(declare-fun call!47563 () Bool)

(assert (=> bm!47559 (= call!47563 call!47564)))

(declare-fun b!824471 () Bool)

(declare-fun e!544314 () Bool)

(assert (=> b!824471 (= e!544314 e!544313)))

(declare-fun res!380034 () Bool)

(assert (=> b!824471 (= res!380034 (not (nullable!506 (reg!2384 r!27177))))))

(assert (=> b!824471 (=> (not res!380034) (not e!544313))))

(declare-fun d!259151 () Bool)

(declare-fun res!380037 () Bool)

(declare-fun e!544316 () Bool)

(assert (=> d!259151 (=> res!380037 e!544316)))

(assert (=> d!259151 (= res!380037 ((_ is ElementMatch!2055) r!27177))))

(assert (=> d!259151 (= (validRegex!608 r!27177) e!544316)))

(declare-fun b!824472 () Bool)

(declare-fun res!380036 () Bool)

(assert (=> b!824472 (=> (not res!380036) (not e!544319))))

(assert (=> b!824472 (= res!380036 call!47563)))

(assert (=> b!824472 (= e!544315 e!544319)))

(declare-fun b!824473 () Bool)

(declare-fun e!544318 () Bool)

(assert (=> b!824473 (= e!544318 call!47563)))

(declare-fun c!133783 () Bool)

(declare-fun bm!47560 () Bool)

(assert (=> bm!47560 (= call!47564 (validRegex!608 (ite c!133783 (reg!2384 r!27177) (ite c!133782 (regOne!4623 r!27177) (regTwo!4622 r!27177)))))))

(declare-fun b!824474 () Bool)

(assert (=> b!824474 (= e!544317 e!544318)))

(declare-fun res!380035 () Bool)

(assert (=> b!824474 (=> (not res!380035) (not e!544318))))

(assert (=> b!824474 (= res!380035 call!47565)))

(declare-fun b!824475 () Bool)

(assert (=> b!824475 (= e!544314 e!544315)))

(assert (=> b!824475 (= c!133782 ((_ is Union!2055) r!27177))))

(declare-fun b!824476 () Bool)

(assert (=> b!824476 (= e!544316 e!544314)))

(assert (=> b!824476 (= c!133783 ((_ is Star!2055) r!27177))))

(assert (= (and d!259151 (not res!380037)) b!824476))

(assert (= (and b!824476 c!133783) b!824471))

(assert (= (and b!824476 (not c!133783)) b!824475))

(assert (= (and b!824471 res!380034) b!824470))

(assert (= (and b!824475 c!133782) b!824472))

(assert (= (and b!824475 (not c!133782)) b!824469))

(assert (= (and b!824472 res!380036) b!824468))

(assert (= (and b!824469 (not res!380038)) b!824474))

(assert (= (and b!824474 res!380035) b!824473))

(assert (= (or b!824472 b!824473) bm!47559))

(assert (= (or b!824468 b!824474) bm!47558))

(assert (= (or b!824470 bm!47559) bm!47560))

(declare-fun m!1064275 () Bool)

(assert (=> bm!47558 m!1064275))

(declare-fun m!1064277 () Bool)

(assert (=> b!824471 m!1064277))

(declare-fun m!1064279 () Bool)

(assert (=> bm!47560 m!1064279))

(assert (=> start!73730 d!259151))

(declare-fun b!824487 () Bool)

(declare-fun e!544331 () Bool)

(declare-fun call!47571 () Bool)

(assert (=> b!824487 (= e!544331 call!47571)))

(declare-fun b!824488 () Bool)

(declare-fun res!380043 () Bool)

(declare-fun e!544329 () Bool)

(assert (=> b!824488 (=> res!380043 e!544329)))

(assert (=> b!824488 (= res!380043 (not ((_ is Concat!3786) (reg!2384 r!27177))))))

(declare-fun e!544327 () Bool)

(assert (=> b!824488 (= e!544327 e!544329)))

(declare-fun b!824489 () Bool)

(declare-fun e!544325 () Bool)

(declare-fun call!47570 () Bool)

(assert (=> b!824489 (= e!544325 call!47570)))

(declare-fun bm!47564 () Bool)

(declare-fun c!133789 () Bool)

(assert (=> bm!47564 (= call!47571 (validRegex!608 (ite c!133789 (regTwo!4623 (reg!2384 r!27177)) (regOne!4622 (reg!2384 r!27177)))))))

(declare-fun bm!47565 () Bool)

(declare-fun call!47569 () Bool)

(assert (=> bm!47565 (= call!47569 call!47570)))

(declare-fun b!824490 () Bool)

(declare-fun e!544326 () Bool)

(assert (=> b!824490 (= e!544326 e!544325)))

(declare-fun res!380039 () Bool)

(assert (=> b!824490 (= res!380039 (not (nullable!506 (reg!2384 (reg!2384 r!27177)))))))

(assert (=> b!824490 (=> (not res!380039) (not e!544325))))

(declare-fun d!259155 () Bool)

(declare-fun res!380042 () Bool)

(declare-fun e!544328 () Bool)

(assert (=> d!259155 (=> res!380042 e!544328)))

(assert (=> d!259155 (= res!380042 ((_ is ElementMatch!2055) (reg!2384 r!27177)))))

(assert (=> d!259155 (= (validRegex!608 (reg!2384 r!27177)) e!544328)))

(declare-fun b!824491 () Bool)

(declare-fun res!380041 () Bool)

(assert (=> b!824491 (=> (not res!380041) (not e!544331))))

(assert (=> b!824491 (= res!380041 call!47569)))

(assert (=> b!824491 (= e!544327 e!544331)))

(declare-fun b!824492 () Bool)

(declare-fun e!544330 () Bool)

(assert (=> b!824492 (= e!544330 call!47569)))

(declare-fun bm!47566 () Bool)

(declare-fun c!133790 () Bool)

(assert (=> bm!47566 (= call!47570 (validRegex!608 (ite c!133790 (reg!2384 (reg!2384 r!27177)) (ite c!133789 (regOne!4623 (reg!2384 r!27177)) (regTwo!4622 (reg!2384 r!27177))))))))

(declare-fun b!824493 () Bool)

(assert (=> b!824493 (= e!544329 e!544330)))

(declare-fun res!380040 () Bool)

(assert (=> b!824493 (=> (not res!380040) (not e!544330))))

(assert (=> b!824493 (= res!380040 call!47571)))

(declare-fun b!824494 () Bool)

(assert (=> b!824494 (= e!544326 e!544327)))

(assert (=> b!824494 (= c!133789 ((_ is Union!2055) (reg!2384 r!27177)))))

(declare-fun b!824495 () Bool)

(assert (=> b!824495 (= e!544328 e!544326)))

(assert (=> b!824495 (= c!133790 ((_ is Star!2055) (reg!2384 r!27177)))))

(assert (= (and d!259155 (not res!380042)) b!824495))

(assert (= (and b!824495 c!133790) b!824490))

(assert (= (and b!824495 (not c!133790)) b!824494))

(assert (= (and b!824490 res!380039) b!824489))

(assert (= (and b!824494 c!133789) b!824491))

(assert (= (and b!824494 (not c!133789)) b!824488))

(assert (= (and b!824491 res!380041) b!824487))

(assert (= (and b!824488 (not res!380043)) b!824493))

(assert (= (and b!824493 res!380040) b!824492))

(assert (= (or b!824491 b!824492) bm!47565))

(assert (= (or b!824487 b!824493) bm!47564))

(assert (= (or b!824489 bm!47565) bm!47566))

(declare-fun m!1064283 () Bool)

(assert (=> bm!47564 m!1064283))

(declare-fun m!1064285 () Bool)

(assert (=> b!824490 m!1064285))

(declare-fun m!1064289 () Bool)

(assert (=> bm!47566 m!1064289))

(assert (=> b!824264 d!259155))

(declare-fun d!259159 () Bool)

(declare-fun lt!317441 () Bool)

(assert (=> d!259159 (= lt!317441 (select (content!1294 (firstChars!26 (reg!2384 r!27177))) c!13916))))

(declare-fun e!544338 () Bool)

(assert (=> d!259159 (= lt!317441 e!544338)))

(declare-fun res!380045 () Bool)

(assert (=> d!259159 (=> (not res!380045) (not e!544338))))

(assert (=> d!259159 (= res!380045 ((_ is Cons!8865) (firstChars!26 (reg!2384 r!27177))))))

(assert (=> d!259159 (= (contains!1646 (firstChars!26 (reg!2384 r!27177)) c!13916) lt!317441)))

(declare-fun b!824506 () Bool)

(declare-fun e!544337 () Bool)

(assert (=> b!824506 (= e!544338 e!544337)))

(declare-fun res!380044 () Bool)

(assert (=> b!824506 (=> res!380044 e!544337)))

(assert (=> b!824506 (= res!380044 (= (h!14266 (firstChars!26 (reg!2384 r!27177))) c!13916))))

(declare-fun b!824507 () Bool)

(assert (=> b!824507 (= e!544337 (contains!1646 (t!93173 (firstChars!26 (reg!2384 r!27177))) c!13916))))

(assert (= (and d!259159 res!380045) b!824506))

(assert (= (and b!824506 (not res!380044)) b!824507))

(assert (=> d!259159 m!1064201))

(declare-fun m!1064291 () Bool)

(assert (=> d!259159 m!1064291))

(declare-fun m!1064293 () Bool)

(assert (=> d!259159 m!1064293))

(declare-fun m!1064295 () Bool)

(assert (=> b!824507 m!1064295))

(assert (=> b!824269 d!259159))

(declare-fun b!824508 () Bool)

(declare-fun c!133800 () Bool)

(assert (=> b!824508 (= c!133800 (nullable!506 (regOne!4622 (reg!2384 r!27177))))))

(declare-fun e!544342 () List!8881)

(declare-fun e!544343 () List!8881)

(assert (=> b!824508 (= e!544342 e!544343)))

(declare-fun bm!47570 () Bool)

(declare-fun call!47577 () List!8881)

(declare-fun call!47578 () List!8881)

(assert (=> bm!47570 (= call!47577 call!47578)))

(declare-fun b!824509 () Bool)

(assert (=> b!824509 (= e!544343 call!47577)))

(declare-fun b!824510 () Bool)

(declare-fun call!47579 () List!8881)

(assert (=> b!824510 (= e!544342 call!47579)))

(declare-fun bm!47571 () Bool)

(declare-fun c!133798 () Bool)

(declare-fun c!133799 () Bool)

(declare-fun call!47575 () List!8881)

(assert (=> bm!47571 (= call!47575 (firstChars!26 (ite c!133799 (reg!2384 (reg!2384 r!27177)) (ite c!133798 (regOne!4623 (reg!2384 r!27177)) (regTwo!4622 (reg!2384 r!27177))))))))

(declare-fun b!824511 () Bool)

(declare-fun e!544341 () List!8881)

(assert (=> b!824511 (= e!544341 (Cons!8865 (c!133704 (reg!2384 r!27177)) Nil!8865))))

(declare-fun b!824512 () Bool)

(assert (=> b!824512 (= c!133799 ((_ is Star!2055) (reg!2384 r!27177)))))

(declare-fun e!544339 () List!8881)

(assert (=> b!824512 (= e!544341 e!544339)))

(declare-fun b!824513 () Bool)

(assert (=> b!824513 (= e!544339 call!47575)))

(declare-fun b!824514 () Bool)

(declare-fun e!544340 () List!8881)

(assert (=> b!824514 (= e!544340 e!544341)))

(declare-fun c!133797 () Bool)

(assert (=> b!824514 (= c!133797 ((_ is ElementMatch!2055) (reg!2384 r!27177)))))

(declare-fun d!259161 () Bool)

(declare-fun c!133796 () Bool)

(assert (=> d!259161 (= c!133796 (or ((_ is EmptyExpr!2055) (reg!2384 r!27177)) ((_ is EmptyLang!2055) (reg!2384 r!27177))))))

(assert (=> d!259161 (= (firstChars!26 (reg!2384 r!27177)) e!544340)))

(declare-fun b!824515 () Bool)

(assert (=> b!824515 (= e!544343 call!47579)))

(declare-fun bm!47572 () Bool)

(declare-fun call!47576 () List!8881)

(assert (=> bm!47572 (= call!47579 (++!2282 (ite c!133798 call!47576 call!47577) (ite c!133798 call!47578 call!47576)))))

(declare-fun bm!47573 () Bool)

(assert (=> bm!47573 (= call!47578 (firstChars!26 (ite c!133798 (regTwo!4623 (reg!2384 r!27177)) (regOne!4622 (reg!2384 r!27177)))))))

(declare-fun bm!47574 () Bool)

(assert (=> bm!47574 (= call!47576 call!47575)))

(declare-fun b!824516 () Bool)

(assert (=> b!824516 (= e!544339 e!544342)))

(assert (=> b!824516 (= c!133798 ((_ is Union!2055) (reg!2384 r!27177)))))

(declare-fun b!824517 () Bool)

(assert (=> b!824517 (= e!544340 Nil!8865)))

(assert (= (and d!259161 c!133796) b!824517))

(assert (= (and d!259161 (not c!133796)) b!824514))

(assert (= (and b!824514 c!133797) b!824511))

(assert (= (and b!824514 (not c!133797)) b!824512))

(assert (= (and b!824512 c!133799) b!824513))

(assert (= (and b!824512 (not c!133799)) b!824516))

(assert (= (and b!824516 c!133798) b!824510))

(assert (= (and b!824516 (not c!133798)) b!824508))

(assert (= (and b!824508 c!133800) b!824515))

(assert (= (and b!824508 (not c!133800)) b!824509))

(assert (= (or b!824515 b!824509) bm!47570))

(assert (= (or b!824510 bm!47570) bm!47573))

(assert (= (or b!824510 b!824515) bm!47574))

(assert (= (or b!824510 b!824515) bm!47572))

(assert (= (or b!824513 bm!47574) bm!47571))

(declare-fun m!1064301 () Bool)

(assert (=> b!824508 m!1064301))

(declare-fun m!1064303 () Bool)

(assert (=> bm!47571 m!1064303))

(declare-fun m!1064305 () Bool)

(assert (=> bm!47572 m!1064305))

(declare-fun m!1064307 () Bool)

(assert (=> bm!47573 m!1064307))

(assert (=> b!824269 d!259161))

(declare-fun b!824552 () Bool)

(declare-fun e!544351 () Bool)

(declare-fun tp!257703 () Bool)

(assert (=> b!824552 (= e!544351 tp!257703)))

(declare-fun b!824551 () Bool)

(declare-fun tp!257701 () Bool)

(declare-fun tp!257700 () Bool)

(assert (=> b!824551 (= e!544351 (and tp!257701 tp!257700))))

(assert (=> b!824267 (= tp!257660 e!544351)))

(declare-fun b!824550 () Bool)

(assert (=> b!824550 (= e!544351 tp_is_empty!3833)))

(declare-fun b!824553 () Bool)

(declare-fun tp!257702 () Bool)

(declare-fun tp!257704 () Bool)

(assert (=> b!824553 (= e!544351 (and tp!257702 tp!257704))))

(assert (= (and b!824267 ((_ is ElementMatch!2055) (regOne!4623 r!27177))) b!824550))

(assert (= (and b!824267 ((_ is Concat!3786) (regOne!4623 r!27177))) b!824551))

(assert (= (and b!824267 ((_ is Star!2055) (regOne!4623 r!27177))) b!824552))

(assert (= (and b!824267 ((_ is Union!2055) (regOne!4623 r!27177))) b!824553))

(declare-fun b!824560 () Bool)

(declare-fun e!544353 () Bool)

(declare-fun tp!257714 () Bool)

(assert (=> b!824560 (= e!544353 tp!257714)))

(declare-fun b!824559 () Bool)

(declare-fun tp!257711 () Bool)

(declare-fun tp!257710 () Bool)

(assert (=> b!824559 (= e!544353 (and tp!257711 tp!257710))))

(assert (=> b!824267 (= tp!257663 e!544353)))

(declare-fun b!824558 () Bool)

(assert (=> b!824558 (= e!544353 tp_is_empty!3833)))

(declare-fun b!824561 () Bool)

(declare-fun tp!257712 () Bool)

(declare-fun tp!257716 () Bool)

(assert (=> b!824561 (= e!544353 (and tp!257712 tp!257716))))

(assert (= (and b!824267 ((_ is ElementMatch!2055) (regTwo!4623 r!27177))) b!824558))

(assert (= (and b!824267 ((_ is Concat!3786) (regTwo!4623 r!27177))) b!824559))

(assert (= (and b!824267 ((_ is Star!2055) (regTwo!4623 r!27177))) b!824560))

(assert (= (and b!824267 ((_ is Union!2055) (regTwo!4623 r!27177))) b!824561))

(declare-fun b!824568 () Bool)

(declare-fun e!544355 () Bool)

(declare-fun tp!257723 () Bool)

(assert (=> b!824568 (= e!544355 tp!257723)))

(declare-fun b!824567 () Bool)

(declare-fun tp!257721 () Bool)

(declare-fun tp!257720 () Bool)

(assert (=> b!824567 (= e!544355 (and tp!257721 tp!257720))))

(assert (=> b!824268 (= tp!257662 e!544355)))

(declare-fun b!824566 () Bool)

(assert (=> b!824566 (= e!544355 tp_is_empty!3833)))

(declare-fun b!824569 () Bool)

(declare-fun tp!257722 () Bool)

(declare-fun tp!257724 () Bool)

(assert (=> b!824569 (= e!544355 (and tp!257722 tp!257724))))

(assert (= (and b!824268 ((_ is ElementMatch!2055) (regOne!4622 r!27177))) b!824566))

(assert (= (and b!824268 ((_ is Concat!3786) (regOne!4622 r!27177))) b!824567))

(assert (= (and b!824268 ((_ is Star!2055) (regOne!4622 r!27177))) b!824568))

(assert (= (and b!824268 ((_ is Union!2055) (regOne!4622 r!27177))) b!824569))

(declare-fun b!824572 () Bool)

(declare-fun e!544356 () Bool)

(declare-fun tp!257728 () Bool)

(assert (=> b!824572 (= e!544356 tp!257728)))

(declare-fun b!824571 () Bool)

(declare-fun tp!257726 () Bool)

(declare-fun tp!257725 () Bool)

(assert (=> b!824571 (= e!544356 (and tp!257726 tp!257725))))

(assert (=> b!824268 (= tp!257661 e!544356)))

(declare-fun b!824570 () Bool)

(assert (=> b!824570 (= e!544356 tp_is_empty!3833)))

(declare-fun b!824573 () Bool)

(declare-fun tp!257727 () Bool)

(declare-fun tp!257729 () Bool)

(assert (=> b!824573 (= e!544356 (and tp!257727 tp!257729))))

(assert (= (and b!824268 ((_ is ElementMatch!2055) (regTwo!4622 r!27177))) b!824570))

(assert (= (and b!824268 ((_ is Concat!3786) (regTwo!4622 r!27177))) b!824571))

(assert (= (and b!824268 ((_ is Star!2055) (regTwo!4622 r!27177))) b!824572))

(assert (= (and b!824268 ((_ is Union!2055) (regTwo!4622 r!27177))) b!824573))

(declare-fun b!824576 () Bool)

(declare-fun e!544357 () Bool)

(declare-fun tp!257733 () Bool)

(assert (=> b!824576 (= e!544357 tp!257733)))

(declare-fun b!824575 () Bool)

(declare-fun tp!257731 () Bool)

(declare-fun tp!257730 () Bool)

(assert (=> b!824575 (= e!544357 (and tp!257731 tp!257730))))

(assert (=> b!824263 (= tp!257664 e!544357)))

(declare-fun b!824574 () Bool)

(assert (=> b!824574 (= e!544357 tp_is_empty!3833)))

(declare-fun b!824577 () Bool)

(declare-fun tp!257732 () Bool)

(declare-fun tp!257734 () Bool)

(assert (=> b!824577 (= e!544357 (and tp!257732 tp!257734))))

(assert (= (and b!824263 ((_ is ElementMatch!2055) (reg!2384 r!27177))) b!824574))

(assert (= (and b!824263 ((_ is Concat!3786) (reg!2384 r!27177))) b!824575))

(assert (= (and b!824263 ((_ is Star!2055) (reg!2384 r!27177))) b!824576))

(assert (= (and b!824263 ((_ is Union!2055) (reg!2384 r!27177))) b!824577))

(check-sat (not bm!47541) (not b!824577) (not b!824571) (not bm!47508) (not bm!47502) (not bm!47566) (not b!824576) (not b!824568) (not b!824552) (not b!824575) (not b!824490) (not bm!47560) (not b!824560) (not bm!47572) (not bm!47539) (not b!824572) (not bm!47558) (not b!824471) (not bm!47503) (not b!824553) (not b!824551) (not b!824351) (not d!259139) (not b!824573) (not b!824508) (not bm!47571) (not b!824561) (not bm!47564) (not d!259159) (not b!824411) (not bm!47507) (not b!824569) (not b!824507) (not b!824559) tp_is_empty!3833 (not bm!47540) (not bm!47573) (not b!824567))
(check-sat)
