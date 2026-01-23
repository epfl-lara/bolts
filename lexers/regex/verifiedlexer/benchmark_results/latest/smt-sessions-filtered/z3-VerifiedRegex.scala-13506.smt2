; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728296 () Bool)

(assert start!728296)

(declare-fun b!7525359 () Bool)

(declare-fun e!4485592 () Bool)

(declare-datatypes ((C!39940 0))(
  ( (C!39941 (val!30410 Int)) )
))
(declare-datatypes ((Regex!19807 0))(
  ( (ElementMatch!19807 (c!1390158 C!39940)) (Concat!28652 (regOne!40126 Regex!19807) (regTwo!40126 Regex!19807)) (EmptyExpr!19807) (Star!19807 (reg!20136 Regex!19807)) (EmptyLang!19807) (Union!19807 (regOne!40127 Regex!19807) (regTwo!40127 Regex!19807)) )
))
(declare-fun expr!41 () Regex!19807)

(declare-fun regexDepth!457 (Regex!19807) Int)

(assert (=> b!7525359 (= e!4485592 (>= (regexDepth!457 (reg!20136 expr!41)) (regexDepth!457 expr!41)))))

(declare-fun b!7525360 () Bool)

(declare-fun e!4485593 () Bool)

(declare-fun tp!2186914 () Bool)

(declare-fun tp!2186911 () Bool)

(assert (=> b!7525360 (= e!4485593 (and tp!2186914 tp!2186911))))

(declare-fun b!7525361 () Bool)

(declare-fun e!4485591 () Bool)

(declare-fun nullable!8641 (Regex!19807) Bool)

(assert (=> b!7525361 (= e!4485591 (not (nullable!8641 (regOne!40126 expr!41))))))

(declare-fun res!3016085 () Bool)

(assert (=> start!728296 (=> (not res!3016085) (not e!4485592))))

(declare-fun validRegex!10235 (Regex!19807) Bool)

(assert (=> start!728296 (= res!3016085 (validRegex!10235 expr!41))))

(assert (=> start!728296 e!4485592))

(assert (=> start!728296 e!4485593))

(declare-fun tp_is_empty!49969 () Bool)

(assert (=> start!728296 tp_is_empty!49969))

(declare-fun b!7525362 () Bool)

(declare-fun res!3016082 () Bool)

(assert (=> b!7525362 (=> (not res!3016082) (not e!4485592))))

(declare-fun a!1106 () C!39940)

(get-info :version)

(assert (=> b!7525362 (= res!3016082 (and (or (not ((_ is ElementMatch!19807) expr!41)) (not (= (c!1390158 expr!41) a!1106))) (not ((_ is Union!19807) expr!41))))))

(declare-fun b!7525363 () Bool)

(declare-fun res!3016084 () Bool)

(assert (=> b!7525363 (=> (not res!3016084) (not e!4485592))))

(assert (=> b!7525363 (= res!3016084 e!4485591)))

(declare-fun res!3016083 () Bool)

(assert (=> b!7525363 (=> res!3016083 e!4485591)))

(assert (=> b!7525363 (= res!3016083 (not ((_ is Concat!28652) expr!41)))))

(declare-fun b!7525364 () Bool)

(declare-fun tp!2186915 () Bool)

(declare-fun tp!2186913 () Bool)

(assert (=> b!7525364 (= e!4485593 (and tp!2186915 tp!2186913))))

(declare-fun b!7525365 () Bool)

(declare-fun tp!2186912 () Bool)

(assert (=> b!7525365 (= e!4485593 tp!2186912)))

(declare-fun b!7525366 () Bool)

(declare-fun res!3016086 () Bool)

(assert (=> b!7525366 (=> (not res!3016086) (not e!4485592))))

(assert (=> b!7525366 (= res!3016086 (and (not ((_ is Concat!28652) expr!41)) ((_ is Star!19807) expr!41)))))

(declare-fun b!7525367 () Bool)

(assert (=> b!7525367 (= e!4485593 tp_is_empty!49969)))

(assert (= (and start!728296 res!3016085) b!7525362))

(assert (= (and b!7525362 res!3016082) b!7525363))

(assert (= (and b!7525363 (not res!3016083)) b!7525361))

(assert (= (and b!7525363 res!3016084) b!7525366))

(assert (= (and b!7525366 res!3016086) b!7525359))

(assert (= (and start!728296 ((_ is ElementMatch!19807) expr!41)) b!7525367))

(assert (= (and start!728296 ((_ is Concat!28652) expr!41)) b!7525364))

(assert (= (and start!728296 ((_ is Star!19807) expr!41)) b!7525365))

(assert (= (and start!728296 ((_ is Union!19807) expr!41)) b!7525360))

(declare-fun m!8101302 () Bool)

(assert (=> b!7525359 m!8101302))

(declare-fun m!8101304 () Bool)

(assert (=> b!7525359 m!8101304))

(declare-fun m!8101306 () Bool)

(assert (=> b!7525361 m!8101306))

(declare-fun m!8101308 () Bool)

(assert (=> start!728296 m!8101308))

(check-sat (not b!7525365) (not b!7525361) (not b!7525364) tp_is_empty!49969 (not start!728296) (not b!7525360) (not b!7525359))
(check-sat)
(get-model)

(declare-fun b!7525386 () Bool)

(declare-fun e!4485613 () Bool)

(declare-fun call!690356 () Bool)

(assert (=> b!7525386 (= e!4485613 call!690356)))

(declare-fun b!7525387 () Bool)

(declare-fun e!4485610 () Bool)

(declare-fun e!4485608 () Bool)

(assert (=> b!7525387 (= e!4485610 e!4485608)))

(declare-fun res!3016099 () Bool)

(assert (=> b!7525387 (= res!3016099 (not (nullable!8641 (reg!20136 expr!41))))))

(assert (=> b!7525387 (=> (not res!3016099) (not e!4485608))))

(declare-fun b!7525388 () Bool)

(declare-fun e!4485614 () Bool)

(assert (=> b!7525388 (= e!4485614 e!4485613)))

(declare-fun res!3016101 () Bool)

(assert (=> b!7525388 (=> (not res!3016101) (not e!4485613))))

(declare-fun call!690357 () Bool)

(assert (=> b!7525388 (= res!3016101 call!690357)))

(declare-fun bm!690350 () Bool)

(declare-fun call!690355 () Bool)

(assert (=> bm!690350 (= call!690356 call!690355)))

(declare-fun bm!690351 () Bool)

(declare-fun c!1390163 () Bool)

(declare-fun c!1390164 () Bool)

(assert (=> bm!690351 (= call!690355 (validRegex!10235 (ite c!1390163 (reg!20136 expr!41) (ite c!1390164 (regOne!40127 expr!41) (regTwo!40126 expr!41)))))))

(declare-fun b!7525389 () Bool)

(declare-fun res!3016097 () Bool)

(assert (=> b!7525389 (=> res!3016097 e!4485614)))

(assert (=> b!7525389 (= res!3016097 (not ((_ is Concat!28652) expr!41)))))

(declare-fun e!4485609 () Bool)

(assert (=> b!7525389 (= e!4485609 e!4485614)))

(declare-fun b!7525390 () Bool)

(declare-fun res!3016098 () Bool)

(declare-fun e!4485612 () Bool)

(assert (=> b!7525390 (=> (not res!3016098) (not e!4485612))))

(assert (=> b!7525390 (= res!3016098 call!690356)))

(assert (=> b!7525390 (= e!4485609 e!4485612)))

(declare-fun b!7525391 () Bool)

(assert (=> b!7525391 (= e!4485610 e!4485609)))

(assert (=> b!7525391 (= c!1390164 ((_ is Union!19807) expr!41))))

(declare-fun b!7525392 () Bool)

(assert (=> b!7525392 (= e!4485608 call!690355)))

(declare-fun d!2309371 () Bool)

(declare-fun res!3016100 () Bool)

(declare-fun e!4485611 () Bool)

(assert (=> d!2309371 (=> res!3016100 e!4485611)))

(assert (=> d!2309371 (= res!3016100 ((_ is ElementMatch!19807) expr!41))))

(assert (=> d!2309371 (= (validRegex!10235 expr!41) e!4485611)))

(declare-fun b!7525393 () Bool)

(assert (=> b!7525393 (= e!4485611 e!4485610)))

(assert (=> b!7525393 (= c!1390163 ((_ is Star!19807) expr!41))))

(declare-fun bm!690352 () Bool)

(assert (=> bm!690352 (= call!690357 (validRegex!10235 (ite c!1390164 (regTwo!40127 expr!41) (regOne!40126 expr!41))))))

(declare-fun b!7525394 () Bool)

(assert (=> b!7525394 (= e!4485612 call!690357)))

(assert (= (and d!2309371 (not res!3016100)) b!7525393))

(assert (= (and b!7525393 c!1390163) b!7525387))

(assert (= (and b!7525393 (not c!1390163)) b!7525391))

(assert (= (and b!7525387 res!3016099) b!7525392))

(assert (= (and b!7525391 c!1390164) b!7525390))

(assert (= (and b!7525391 (not c!1390164)) b!7525389))

(assert (= (and b!7525390 res!3016098) b!7525394))

(assert (= (and b!7525389 (not res!3016097)) b!7525388))

(assert (= (and b!7525388 res!3016101) b!7525386))

(assert (= (or b!7525394 b!7525388) bm!690352))

(assert (= (or b!7525390 b!7525386) bm!690350))

(assert (= (or b!7525392 bm!690350) bm!690351))

(declare-fun m!8101312 () Bool)

(assert (=> b!7525387 m!8101312))

(declare-fun m!8101314 () Bool)

(assert (=> bm!690351 m!8101314))

(declare-fun m!8101316 () Bool)

(assert (=> bm!690352 m!8101316))

(assert (=> start!728296 d!2309371))

(declare-fun bm!690381 () Bool)

(declare-fun call!690389 () Int)

(declare-fun call!690392 () Int)

(assert (=> bm!690381 (= call!690389 call!690392)))

(declare-fun b!7525463 () Bool)

(declare-fun res!3016116 () Bool)

(declare-fun e!4485657 () Bool)

(assert (=> b!7525463 (=> (not res!3016116) (not e!4485657))))

(declare-fun lt!2638645 () Int)

(declare-fun call!690391 () Int)

(assert (=> b!7525463 (= res!3016116 (> lt!2638645 call!690391))))

(declare-fun e!4485655 () Bool)

(assert (=> b!7525463 (= e!4485655 e!4485657)))

(declare-fun call!690386 () Int)

(declare-fun bm!690382 () Bool)

(declare-fun c!1390198 () Bool)

(declare-fun c!1390196 () Bool)

(assert (=> bm!690382 (= call!690386 (regexDepth!457 (ite c!1390198 (regTwo!40127 (reg!20136 expr!41)) (ite c!1390196 (regTwo!40126 (reg!20136 expr!41)) (reg!20136 (reg!20136 expr!41))))))))

(declare-fun b!7525465 () Bool)

(declare-fun e!4485658 () Int)

(declare-fun call!690388 () Int)

(assert (=> b!7525465 (= e!4485658 (+ 1 call!690388))))

(declare-fun call!690390 () Int)

(declare-fun c!1390195 () Bool)

(declare-fun bm!690383 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!690383 (= call!690388 (maxBigInt!0 (ite c!1390195 call!690389 call!690390) (ite c!1390195 call!690390 call!690389)))))

(declare-fun b!7525466 () Bool)

(declare-fun e!4485661 () Int)

(declare-fun e!4485656 () Int)

(assert (=> b!7525466 (= e!4485661 e!4485656)))

(declare-fun c!1390193 () Bool)

(assert (=> b!7525466 (= c!1390193 ((_ is Star!19807) (reg!20136 expr!41)))))

(declare-fun b!7525467 () Bool)

(declare-fun e!4485664 () Bool)

(assert (=> b!7525467 (= e!4485664 e!4485655)))

(assert (=> b!7525467 (= c!1390196 ((_ is Concat!28652) (reg!20136 expr!41)))))

(declare-fun b!7525468 () Bool)

(declare-fun e!4485663 () Bool)

(assert (=> b!7525468 (= e!4485663 (= lt!2638645 1))))

(declare-fun b!7525469 () Bool)

(declare-fun e!4485659 () Int)

(assert (=> b!7525469 (= e!4485659 (+ 1 call!690388))))

(declare-fun b!7525470 () Bool)

(declare-fun e!4485662 () Bool)

(assert (=> b!7525470 (= e!4485664 e!4485662)))

(declare-fun res!3016115 () Bool)

(assert (=> b!7525470 (= res!3016115 (> lt!2638645 call!690391))))

(assert (=> b!7525470 (=> (not res!3016115) (not e!4485662))))

(declare-fun bm!690384 () Bool)

(assert (=> bm!690384 (= call!690390 (regexDepth!457 (ite c!1390195 (regTwo!40127 (reg!20136 expr!41)) (regOne!40126 (reg!20136 expr!41)))))))

(declare-fun bm!690385 () Bool)

(assert (=> bm!690385 (= call!690392 (regexDepth!457 (ite c!1390193 (reg!20136 (reg!20136 expr!41)) (ite c!1390195 (regOne!40127 (reg!20136 expr!41)) (regTwo!40126 (reg!20136 expr!41))))))))

(declare-fun b!7525471 () Bool)

(declare-fun c!1390197 () Bool)

(assert (=> b!7525471 (= c!1390197 ((_ is Star!19807) (reg!20136 expr!41)))))

(assert (=> b!7525471 (= e!4485655 e!4485663)))

(declare-fun b!7525472 () Bool)

(assert (=> b!7525472 (= e!4485658 1)))

(declare-fun bm!690386 () Bool)

(assert (=> bm!690386 (= call!690391 (regexDepth!457 (ite c!1390198 (regOne!40127 (reg!20136 expr!41)) (regOne!40126 (reg!20136 expr!41)))))))

(declare-fun d!2309377 () Bool)

(declare-fun e!4485660 () Bool)

(assert (=> d!2309377 e!4485660))

(declare-fun res!3016114 () Bool)

(assert (=> d!2309377 (=> (not res!3016114) (not e!4485660))))

(assert (=> d!2309377 (= res!3016114 (> lt!2638645 0))))

(assert (=> d!2309377 (= lt!2638645 e!4485661)))

(declare-fun c!1390194 () Bool)

(assert (=> d!2309377 (= c!1390194 ((_ is ElementMatch!19807) (reg!20136 expr!41)))))

(assert (=> d!2309377 (= (regexDepth!457 (reg!20136 expr!41)) lt!2638645)))

(declare-fun b!7525464 () Bool)

(assert (=> b!7525464 (= e!4485656 (+ 1 call!690392))))

(declare-fun b!7525473 () Bool)

(assert (=> b!7525473 (= e!4485662 (> lt!2638645 call!690386))))

(declare-fun bm!690387 () Bool)

(declare-fun call!690387 () Int)

(assert (=> bm!690387 (= call!690387 call!690386)))

(declare-fun b!7525474 () Bool)

(assert (=> b!7525474 (= e!4485660 e!4485664)))

(assert (=> b!7525474 (= c!1390198 ((_ is Union!19807) (reg!20136 expr!41)))))

(declare-fun b!7525475 () Bool)

(assert (=> b!7525475 (= e!4485659 e!4485658)))

(declare-fun c!1390199 () Bool)

(assert (=> b!7525475 (= c!1390199 ((_ is Concat!28652) (reg!20136 expr!41)))))

(declare-fun b!7525476 () Bool)

(assert (=> b!7525476 (= e!4485661 1)))

(declare-fun b!7525477 () Bool)

(assert (=> b!7525477 (= e!4485657 (> lt!2638645 call!690387))))

(declare-fun b!7525478 () Bool)

(assert (=> b!7525478 (= c!1390195 ((_ is Union!19807) (reg!20136 expr!41)))))

(assert (=> b!7525478 (= e!4485656 e!4485659)))

(declare-fun b!7525479 () Bool)

(assert (=> b!7525479 (= e!4485663 (> lt!2638645 call!690387))))

(assert (= (and d!2309377 c!1390194) b!7525476))

(assert (= (and d!2309377 (not c!1390194)) b!7525466))

(assert (= (and b!7525466 c!1390193) b!7525464))

(assert (= (and b!7525466 (not c!1390193)) b!7525478))

(assert (= (and b!7525478 c!1390195) b!7525469))

(assert (= (and b!7525478 (not c!1390195)) b!7525475))

(assert (= (and b!7525475 c!1390199) b!7525465))

(assert (= (and b!7525475 (not c!1390199)) b!7525472))

(assert (= (or b!7525469 b!7525465) bm!690381))

(assert (= (or b!7525469 b!7525465) bm!690384))

(assert (= (or b!7525469 b!7525465) bm!690383))

(assert (= (or b!7525464 bm!690381) bm!690385))

(assert (= (and d!2309377 res!3016114) b!7525474))

(assert (= (and b!7525474 c!1390198) b!7525470))

(assert (= (and b!7525474 (not c!1390198)) b!7525467))

(assert (= (and b!7525470 res!3016115) b!7525473))

(assert (= (and b!7525467 c!1390196) b!7525463))

(assert (= (and b!7525467 (not c!1390196)) b!7525471))

(assert (= (and b!7525463 res!3016116) b!7525477))

(assert (= (and b!7525471 c!1390197) b!7525479))

(assert (= (and b!7525471 (not c!1390197)) b!7525468))

(assert (= (or b!7525477 b!7525479) bm!690387))

(assert (= (or b!7525470 b!7525463) bm!690386))

(assert (= (or b!7525473 bm!690387) bm!690382))

(declare-fun m!8101318 () Bool)

(assert (=> bm!690382 m!8101318))

(declare-fun m!8101320 () Bool)

(assert (=> bm!690385 m!8101320))

(declare-fun m!8101322 () Bool)

(assert (=> bm!690383 m!8101322))

(declare-fun m!8101324 () Bool)

(assert (=> bm!690386 m!8101324))

(declare-fun m!8101326 () Bool)

(assert (=> bm!690384 m!8101326))

(assert (=> b!7525359 d!2309377))

(declare-fun bm!690388 () Bool)

(declare-fun call!690396 () Int)

(declare-fun call!690399 () Int)

(assert (=> bm!690388 (= call!690396 call!690399)))

(declare-fun b!7525480 () Bool)

(declare-fun res!3016119 () Bool)

(declare-fun e!4485667 () Bool)

(assert (=> b!7525480 (=> (not res!3016119) (not e!4485667))))

(declare-fun lt!2638646 () Int)

(declare-fun call!690398 () Int)

(assert (=> b!7525480 (= res!3016119 (> lt!2638646 call!690398))))

(declare-fun e!4485665 () Bool)

(assert (=> b!7525480 (= e!4485665 e!4485667)))

(declare-fun c!1390205 () Bool)

(declare-fun c!1390203 () Bool)

(declare-fun call!690393 () Int)

(declare-fun bm!690389 () Bool)

(assert (=> bm!690389 (= call!690393 (regexDepth!457 (ite c!1390205 (regTwo!40127 expr!41) (ite c!1390203 (regTwo!40126 expr!41) (reg!20136 expr!41)))))))

(declare-fun b!7525482 () Bool)

(declare-fun e!4485668 () Int)

(declare-fun call!690395 () Int)

(assert (=> b!7525482 (= e!4485668 (+ 1 call!690395))))

(declare-fun c!1390202 () Bool)

(declare-fun call!690397 () Int)

(declare-fun bm!690390 () Bool)

(assert (=> bm!690390 (= call!690395 (maxBigInt!0 (ite c!1390202 call!690396 call!690397) (ite c!1390202 call!690397 call!690396)))))

(declare-fun b!7525483 () Bool)

(declare-fun e!4485671 () Int)

(declare-fun e!4485666 () Int)

(assert (=> b!7525483 (= e!4485671 e!4485666)))

(declare-fun c!1390200 () Bool)

(assert (=> b!7525483 (= c!1390200 ((_ is Star!19807) expr!41))))

(declare-fun b!7525484 () Bool)

(declare-fun e!4485674 () Bool)

(assert (=> b!7525484 (= e!4485674 e!4485665)))

(assert (=> b!7525484 (= c!1390203 ((_ is Concat!28652) expr!41))))

(declare-fun b!7525485 () Bool)

(declare-fun e!4485673 () Bool)

(assert (=> b!7525485 (= e!4485673 (= lt!2638646 1))))

(declare-fun b!7525486 () Bool)

(declare-fun e!4485669 () Int)

(assert (=> b!7525486 (= e!4485669 (+ 1 call!690395))))

(declare-fun b!7525487 () Bool)

(declare-fun e!4485672 () Bool)

(assert (=> b!7525487 (= e!4485674 e!4485672)))

(declare-fun res!3016118 () Bool)

(assert (=> b!7525487 (= res!3016118 (> lt!2638646 call!690398))))

(assert (=> b!7525487 (=> (not res!3016118) (not e!4485672))))

(declare-fun bm!690391 () Bool)

(assert (=> bm!690391 (= call!690397 (regexDepth!457 (ite c!1390202 (regTwo!40127 expr!41) (regOne!40126 expr!41))))))

(declare-fun bm!690392 () Bool)

(assert (=> bm!690392 (= call!690399 (regexDepth!457 (ite c!1390200 (reg!20136 expr!41) (ite c!1390202 (regOne!40127 expr!41) (regTwo!40126 expr!41)))))))

(declare-fun b!7525488 () Bool)

(declare-fun c!1390204 () Bool)

(assert (=> b!7525488 (= c!1390204 ((_ is Star!19807) expr!41))))

(assert (=> b!7525488 (= e!4485665 e!4485673)))

(declare-fun b!7525489 () Bool)

(assert (=> b!7525489 (= e!4485668 1)))

(declare-fun bm!690393 () Bool)

(assert (=> bm!690393 (= call!690398 (regexDepth!457 (ite c!1390205 (regOne!40127 expr!41) (regOne!40126 expr!41))))))

(declare-fun d!2309379 () Bool)

(declare-fun e!4485670 () Bool)

(assert (=> d!2309379 e!4485670))

(declare-fun res!3016117 () Bool)

(assert (=> d!2309379 (=> (not res!3016117) (not e!4485670))))

(assert (=> d!2309379 (= res!3016117 (> lt!2638646 0))))

(assert (=> d!2309379 (= lt!2638646 e!4485671)))

(declare-fun c!1390201 () Bool)

(assert (=> d!2309379 (= c!1390201 ((_ is ElementMatch!19807) expr!41))))

(assert (=> d!2309379 (= (regexDepth!457 expr!41) lt!2638646)))

(declare-fun b!7525481 () Bool)

(assert (=> b!7525481 (= e!4485666 (+ 1 call!690399))))

(declare-fun b!7525490 () Bool)

(assert (=> b!7525490 (= e!4485672 (> lt!2638646 call!690393))))

(declare-fun bm!690394 () Bool)

(declare-fun call!690394 () Int)

(assert (=> bm!690394 (= call!690394 call!690393)))

(declare-fun b!7525491 () Bool)

(assert (=> b!7525491 (= e!4485670 e!4485674)))

(assert (=> b!7525491 (= c!1390205 ((_ is Union!19807) expr!41))))

(declare-fun b!7525492 () Bool)

(assert (=> b!7525492 (= e!4485669 e!4485668)))

(declare-fun c!1390206 () Bool)

(assert (=> b!7525492 (= c!1390206 ((_ is Concat!28652) expr!41))))

(declare-fun b!7525493 () Bool)

(assert (=> b!7525493 (= e!4485671 1)))

(declare-fun b!7525494 () Bool)

(assert (=> b!7525494 (= e!4485667 (> lt!2638646 call!690394))))

(declare-fun b!7525495 () Bool)

(assert (=> b!7525495 (= c!1390202 ((_ is Union!19807) expr!41))))

(assert (=> b!7525495 (= e!4485666 e!4485669)))

(declare-fun b!7525496 () Bool)

(assert (=> b!7525496 (= e!4485673 (> lt!2638646 call!690394))))

(assert (= (and d!2309379 c!1390201) b!7525493))

(assert (= (and d!2309379 (not c!1390201)) b!7525483))

(assert (= (and b!7525483 c!1390200) b!7525481))

(assert (= (and b!7525483 (not c!1390200)) b!7525495))

(assert (= (and b!7525495 c!1390202) b!7525486))

(assert (= (and b!7525495 (not c!1390202)) b!7525492))

(assert (= (and b!7525492 c!1390206) b!7525482))

(assert (= (and b!7525492 (not c!1390206)) b!7525489))

(assert (= (or b!7525486 b!7525482) bm!690388))

(assert (= (or b!7525486 b!7525482) bm!690391))

(assert (= (or b!7525486 b!7525482) bm!690390))

(assert (= (or b!7525481 bm!690388) bm!690392))

(assert (= (and d!2309379 res!3016117) b!7525491))

(assert (= (and b!7525491 c!1390205) b!7525487))

(assert (= (and b!7525491 (not c!1390205)) b!7525484))

(assert (= (and b!7525487 res!3016118) b!7525490))

(assert (= (and b!7525484 c!1390203) b!7525480))

(assert (= (and b!7525484 (not c!1390203)) b!7525488))

(assert (= (and b!7525480 res!3016119) b!7525494))

(assert (= (and b!7525488 c!1390204) b!7525496))

(assert (= (and b!7525488 (not c!1390204)) b!7525485))

(assert (= (or b!7525494 b!7525496) bm!690394))

(assert (= (or b!7525487 b!7525480) bm!690393))

(assert (= (or b!7525490 bm!690394) bm!690389))

(declare-fun m!8101328 () Bool)

(assert (=> bm!690389 m!8101328))

(declare-fun m!8101330 () Bool)

(assert (=> bm!690392 m!8101330))

(declare-fun m!8101332 () Bool)

(assert (=> bm!690390 m!8101332))

(declare-fun m!8101334 () Bool)

(assert (=> bm!690393 m!8101334))

(declare-fun m!8101336 () Bool)

(assert (=> bm!690391 m!8101336))

(assert (=> b!7525359 d!2309379))

(declare-fun d!2309381 () Bool)

(declare-fun nullableFct!3466 (Regex!19807) Bool)

(assert (=> d!2309381 (= (nullable!8641 (regOne!40126 expr!41)) (nullableFct!3466 (regOne!40126 expr!41)))))

(declare-fun bs!1939756 () Bool)

(assert (= bs!1939756 d!2309381))

(declare-fun m!8101338 () Bool)

(assert (=> bs!1939756 m!8101338))

(assert (=> b!7525361 d!2309381))

(declare-fun b!7525510 () Bool)

(declare-fun e!4485677 () Bool)

(declare-fun tp!2186930 () Bool)

(declare-fun tp!2186929 () Bool)

(assert (=> b!7525510 (= e!4485677 (and tp!2186930 tp!2186929))))

(declare-fun b!7525508 () Bool)

(declare-fun tp!2186927 () Bool)

(declare-fun tp!2186928 () Bool)

(assert (=> b!7525508 (= e!4485677 (and tp!2186927 tp!2186928))))

(assert (=> b!7525364 (= tp!2186915 e!4485677)))

(declare-fun b!7525509 () Bool)

(declare-fun tp!2186926 () Bool)

(assert (=> b!7525509 (= e!4485677 tp!2186926)))

(declare-fun b!7525507 () Bool)

(assert (=> b!7525507 (= e!4485677 tp_is_empty!49969)))

(assert (= (and b!7525364 ((_ is ElementMatch!19807) (regOne!40126 expr!41))) b!7525507))

(assert (= (and b!7525364 ((_ is Concat!28652) (regOne!40126 expr!41))) b!7525508))

(assert (= (and b!7525364 ((_ is Star!19807) (regOne!40126 expr!41))) b!7525509))

(assert (= (and b!7525364 ((_ is Union!19807) (regOne!40126 expr!41))) b!7525510))

(declare-fun b!7525514 () Bool)

(declare-fun e!4485678 () Bool)

(declare-fun tp!2186935 () Bool)

(declare-fun tp!2186934 () Bool)

(assert (=> b!7525514 (= e!4485678 (and tp!2186935 tp!2186934))))

(declare-fun b!7525512 () Bool)

(declare-fun tp!2186932 () Bool)

(declare-fun tp!2186933 () Bool)

(assert (=> b!7525512 (= e!4485678 (and tp!2186932 tp!2186933))))

(assert (=> b!7525364 (= tp!2186913 e!4485678)))

(declare-fun b!7525513 () Bool)

(declare-fun tp!2186931 () Bool)

(assert (=> b!7525513 (= e!4485678 tp!2186931)))

(declare-fun b!7525511 () Bool)

(assert (=> b!7525511 (= e!4485678 tp_is_empty!49969)))

(assert (= (and b!7525364 ((_ is ElementMatch!19807) (regTwo!40126 expr!41))) b!7525511))

(assert (= (and b!7525364 ((_ is Concat!28652) (regTwo!40126 expr!41))) b!7525512))

(assert (= (and b!7525364 ((_ is Star!19807) (regTwo!40126 expr!41))) b!7525513))

(assert (= (and b!7525364 ((_ is Union!19807) (regTwo!40126 expr!41))) b!7525514))

(declare-fun b!7525518 () Bool)

(declare-fun e!4485679 () Bool)

(declare-fun tp!2186940 () Bool)

(declare-fun tp!2186939 () Bool)

(assert (=> b!7525518 (= e!4485679 (and tp!2186940 tp!2186939))))

(declare-fun b!7525516 () Bool)

(declare-fun tp!2186937 () Bool)

(declare-fun tp!2186938 () Bool)

(assert (=> b!7525516 (= e!4485679 (and tp!2186937 tp!2186938))))

(assert (=> b!7525365 (= tp!2186912 e!4485679)))

(declare-fun b!7525517 () Bool)

(declare-fun tp!2186936 () Bool)

(assert (=> b!7525517 (= e!4485679 tp!2186936)))

(declare-fun b!7525515 () Bool)

(assert (=> b!7525515 (= e!4485679 tp_is_empty!49969)))

(assert (= (and b!7525365 ((_ is ElementMatch!19807) (reg!20136 expr!41))) b!7525515))

(assert (= (and b!7525365 ((_ is Concat!28652) (reg!20136 expr!41))) b!7525516))

(assert (= (and b!7525365 ((_ is Star!19807) (reg!20136 expr!41))) b!7525517))

(assert (= (and b!7525365 ((_ is Union!19807) (reg!20136 expr!41))) b!7525518))

(declare-fun b!7525522 () Bool)

(declare-fun e!4485680 () Bool)

(declare-fun tp!2186945 () Bool)

(declare-fun tp!2186944 () Bool)

(assert (=> b!7525522 (= e!4485680 (and tp!2186945 tp!2186944))))

(declare-fun b!7525520 () Bool)

(declare-fun tp!2186942 () Bool)

(declare-fun tp!2186943 () Bool)

(assert (=> b!7525520 (= e!4485680 (and tp!2186942 tp!2186943))))

(assert (=> b!7525360 (= tp!2186914 e!4485680)))

(declare-fun b!7525521 () Bool)

(declare-fun tp!2186941 () Bool)

(assert (=> b!7525521 (= e!4485680 tp!2186941)))

(declare-fun b!7525519 () Bool)

(assert (=> b!7525519 (= e!4485680 tp_is_empty!49969)))

(assert (= (and b!7525360 ((_ is ElementMatch!19807) (regOne!40127 expr!41))) b!7525519))

(assert (= (and b!7525360 ((_ is Concat!28652) (regOne!40127 expr!41))) b!7525520))

(assert (= (and b!7525360 ((_ is Star!19807) (regOne!40127 expr!41))) b!7525521))

(assert (= (and b!7525360 ((_ is Union!19807) (regOne!40127 expr!41))) b!7525522))

(declare-fun b!7525526 () Bool)

(declare-fun e!4485681 () Bool)

(declare-fun tp!2186950 () Bool)

(declare-fun tp!2186949 () Bool)

(assert (=> b!7525526 (= e!4485681 (and tp!2186950 tp!2186949))))

(declare-fun b!7525524 () Bool)

(declare-fun tp!2186947 () Bool)

(declare-fun tp!2186948 () Bool)

(assert (=> b!7525524 (= e!4485681 (and tp!2186947 tp!2186948))))

(assert (=> b!7525360 (= tp!2186911 e!4485681)))

(declare-fun b!7525525 () Bool)

(declare-fun tp!2186946 () Bool)

(assert (=> b!7525525 (= e!4485681 tp!2186946)))

(declare-fun b!7525523 () Bool)

(assert (=> b!7525523 (= e!4485681 tp_is_empty!49969)))

(assert (= (and b!7525360 ((_ is ElementMatch!19807) (regTwo!40127 expr!41))) b!7525523))

(assert (= (and b!7525360 ((_ is Concat!28652) (regTwo!40127 expr!41))) b!7525524))

(assert (= (and b!7525360 ((_ is Star!19807) (regTwo!40127 expr!41))) b!7525525))

(assert (= (and b!7525360 ((_ is Union!19807) (regTwo!40127 expr!41))) b!7525526))

(check-sat (not d!2309381) (not bm!690385) (not bm!690390) (not b!7525520) (not bm!690351) (not b!7525512) (not b!7525517) (not bm!690383) (not b!7525522) (not b!7525524) (not bm!690382) (not b!7525514) (not bm!690389) (not b!7525518) (not b!7525387) tp_is_empty!49969 (not b!7525509) (not bm!690393) (not bm!690392) (not b!7525513) (not b!7525525) (not b!7525510) (not b!7525508) (not b!7525516) (not bm!690391) (not b!7525521) (not bm!690386) (not bm!690384) (not bm!690352) (not b!7525526))
(check-sat)
