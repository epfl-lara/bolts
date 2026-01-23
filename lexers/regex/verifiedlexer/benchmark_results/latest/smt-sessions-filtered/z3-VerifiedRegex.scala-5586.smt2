; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279964 () Bool)

(assert start!279964)

(declare-fun b!2868369 () Bool)

(declare-fun e!1815689 () Bool)

(declare-fun e!1815691 () Bool)

(assert (=> b!2868369 (= e!1815689 e!1815691)))

(declare-fun res!1190513 () Bool)

(assert (=> b!2868369 (=> (not res!1190513) (not e!1815691))))

(declare-datatypes ((C!17636 0))(
  ( (C!17637 (val!10852 Int)) )
))
(declare-datatypes ((List!34481 0))(
  ( (Nil!34357) (Cons!34357 (h!39777 C!17636) (t!233524 List!34481)) )
))
(declare-datatypes ((Option!6402 0))(
  ( (None!6401) (Some!6401 (v!34523 List!34481)) )
))
(declare-fun lt!1017463 () Option!6402)

(get-info :version)

(assert (=> b!2868369 (= res!1190513 ((_ is Some!6401) lt!1017463))))

(declare-datatypes ((Regex!8727 0))(
  ( (ElementMatch!8727 (c!463510 C!17636)) (Concat!14048 (regOne!17966 Regex!8727) (regTwo!17966 Regex!8727)) (EmptyExpr!8727) (Star!8727 (reg!9056 Regex!8727)) (EmptyLang!8727) (Union!8727 (regOne!17967 Regex!8727) (regTwo!17967 Regex!8727)) )
))
(declare-datatypes ((List!34482 0))(
  ( (Nil!34358) (Cons!34358 (h!39778 Regex!8727) (t!233525 List!34482)) )
))
(declare-datatypes ((Context!5374 0))(
  ( (Context!5375 (exprs!3187 List!34482)) )
))
(declare-fun c!7184 () Context!5374)

(declare-fun getLanguageWitness!405 (Regex!8727) Option!6402)

(assert (=> b!2868369 (= lt!1017463 (getLanguageWitness!405 (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868370 () Bool)

(declare-fun res!1190515 () Bool)

(assert (=> b!2868370 (=> (not res!1190515) (not e!1815691))))

(declare-fun validRegex!3505 (Regex!8727) Bool)

(assert (=> b!2868370 (= res!1190515 (validRegex!3505 (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868371 () Bool)

(declare-fun isDefined!4998 (Option!6402) Bool)

(assert (=> b!2868371 (= e!1815691 (not (isDefined!4998 lt!1017463)))))

(declare-fun b!2868372 () Bool)

(declare-fun e!1815690 () Bool)

(declare-fun tp!923180 () Bool)

(assert (=> b!2868372 (= e!1815690 tp!923180)))

(declare-fun b!2868373 () Bool)

(declare-fun res!1190514 () Bool)

(assert (=> b!2868373 (=> (not res!1190514) (not e!1815691))))

(declare-fun getLanguageWitness!406 (Context!5374) Option!6402)

(assert (=> b!2868373 (= res!1190514 ((_ is Some!6401) (getLanguageWitness!406 (Context!5375 (t!233525 (exprs!3187 c!7184))))))))

(declare-fun res!1190512 () Bool)

(assert (=> start!279964 (=> (not res!1190512) (not e!1815689))))

(declare-fun lostCause!819 (Context!5374) Bool)

(assert (=> start!279964 (= res!1190512 (not (lostCause!819 c!7184)))))

(assert (=> start!279964 e!1815689))

(declare-fun inv!46404 (Context!5374) Bool)

(assert (=> start!279964 (and (inv!46404 c!7184) e!1815690)))

(declare-fun b!2868368 () Bool)

(declare-fun res!1190511 () Bool)

(assert (=> b!2868368 (=> (not res!1190511) (not e!1815689))))

(assert (=> b!2868368 (= res!1190511 ((_ is Cons!34358) (exprs!3187 c!7184)))))

(assert (= (and start!279964 res!1190512) b!2868368))

(assert (= (and b!2868368 res!1190511) b!2868369))

(assert (= (and b!2868369 res!1190513) b!2868373))

(assert (= (and b!2868373 res!1190514) b!2868370))

(assert (= (and b!2868370 res!1190515) b!2868371))

(assert (= start!279964 b!2868372))

(declare-fun m!3287999 () Bool)

(assert (=> b!2868371 m!3287999))

(declare-fun m!3288001 () Bool)

(assert (=> b!2868369 m!3288001))

(declare-fun m!3288003 () Bool)

(assert (=> b!2868370 m!3288003))

(declare-fun m!3288005 () Bool)

(assert (=> start!279964 m!3288005))

(declare-fun m!3288007 () Bool)

(assert (=> start!279964 m!3288007))

(declare-fun m!3288009 () Bool)

(assert (=> b!2868373 m!3288009))

(check-sat (not b!2868371) (not start!279964) (not b!2868373) (not b!2868369) (not b!2868372) (not b!2868370))
(check-sat)
(get-model)

(declare-fun b!2868425 () Bool)

(declare-fun c!463533 () Bool)

(declare-fun lt!1017478 () Option!6402)

(assert (=> b!2868425 (= c!463533 ((_ is Some!6401) lt!1017478))))

(assert (=> b!2868425 (= lt!1017478 (getLanguageWitness!406 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184))))))))))

(declare-fun e!1815726 () Option!6402)

(declare-fun e!1815725 () Option!6402)

(assert (=> b!2868425 (= e!1815726 e!1815725)))

(declare-fun b!2868426 () Bool)

(declare-fun e!1815727 () Option!6402)

(assert (=> b!2868426 (= e!1815727 e!1815726)))

(declare-fun lt!1017477 () Option!6402)

(assert (=> b!2868426 (= lt!1017477 (getLanguageWitness!405 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(declare-fun c!463532 () Bool)

(assert (=> b!2868426 (= c!463532 ((_ is Some!6401) lt!1017477))))

(declare-fun b!2868427 () Bool)

(declare-fun ++!8163 (List!34481 List!34481) List!34481)

(assert (=> b!2868427 (= e!1815725 (Some!6401 (++!8163 (v!34523 lt!1017477) (v!34523 lt!1017478))))))

(declare-fun b!2868428 () Bool)

(assert (=> b!2868428 (= e!1815726 None!6401)))

(declare-fun b!2868429 () Bool)

(assert (=> b!2868429 (= e!1815725 None!6401)))

(declare-fun b!2868430 () Bool)

(assert (=> b!2868430 (= e!1815727 (Some!6401 Nil!34357))))

(declare-fun d!829099 () Bool)

(declare-fun lt!1017476 () Option!6402)

(declare-fun lambda!106955 () Int)

(declare-fun isEmpty!18696 (Option!6402) Bool)

(declare-fun exists!1146 (List!34482 Int) Bool)

(assert (=> d!829099 (= (isEmpty!18696 lt!1017476) (exists!1146 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))) lambda!106955))))

(assert (=> d!829099 (= lt!1017476 e!1815727)))

(declare-fun c!463531 () Bool)

(assert (=> d!829099 (= c!463531 ((_ is Cons!34358) (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184))))))))

(assert (=> d!829099 (= (getLanguageWitness!406 (Context!5375 (t!233525 (exprs!3187 c!7184)))) lt!1017476)))

(assert (= (and d!829099 c!463531) b!2868426))

(assert (= (and d!829099 (not c!463531)) b!2868430))

(assert (= (and b!2868426 c!463532) b!2868425))

(assert (= (and b!2868426 (not c!463532)) b!2868428))

(assert (= (and b!2868425 c!463533) b!2868427))

(assert (= (and b!2868425 (not c!463533)) b!2868429))

(declare-fun m!3288021 () Bool)

(assert (=> b!2868425 m!3288021))

(declare-fun m!3288023 () Bool)

(assert (=> b!2868426 m!3288023))

(declare-fun m!3288025 () Bool)

(assert (=> b!2868427 m!3288025))

(declare-fun m!3288027 () Bool)

(assert (=> d!829099 m!3288027))

(declare-fun m!3288029 () Bool)

(assert (=> d!829099 m!3288029))

(assert (=> b!2868373 d!829099))

(declare-fun bs!521777 () Bool)

(declare-fun d!829109 () Bool)

(assert (= bs!521777 (and d!829109 d!829099)))

(declare-fun lambda!106959 () Int)

(assert (=> bs!521777 (= lambda!106959 lambda!106955)))

(assert (=> d!829109 (= (lostCause!819 c!7184) (exists!1146 (exprs!3187 c!7184) lambda!106959))))

(declare-fun bs!521778 () Bool)

(assert (= bs!521778 d!829109))

(declare-fun m!3288041 () Bool)

(assert (=> bs!521778 m!3288041))

(assert (=> start!279964 d!829109))

(declare-fun bs!521779 () Bool)

(declare-fun d!829113 () Bool)

(assert (= bs!521779 (and d!829113 d!829099)))

(declare-fun lambda!106962 () Int)

(assert (=> bs!521779 (not (= lambda!106962 lambda!106955))))

(declare-fun bs!521780 () Bool)

(assert (= bs!521780 (and d!829113 d!829109)))

(assert (=> bs!521780 (not (= lambda!106962 lambda!106959))))

(declare-fun forall!7072 (List!34482 Int) Bool)

(assert (=> d!829113 (= (inv!46404 c!7184) (forall!7072 (exprs!3187 c!7184) lambda!106962))))

(declare-fun bs!521781 () Bool)

(assert (= bs!521781 d!829113))

(declare-fun m!3288043 () Bool)

(assert (=> bs!521781 m!3288043))

(assert (=> start!279964 d!829113))

(declare-fun d!829115 () Bool)

(assert (=> d!829115 (= (isDefined!4998 lt!1017463) (not (isEmpty!18696 lt!1017463)))))

(declare-fun bs!521782 () Bool)

(assert (= bs!521782 d!829115))

(declare-fun m!3288045 () Bool)

(assert (=> bs!521782 m!3288045))

(assert (=> b!2868371 d!829115))

(declare-fun b!2868487 () Bool)

(declare-fun e!1815761 () Bool)

(declare-fun e!1815763 () Bool)

(assert (=> b!2868487 (= e!1815761 e!1815763)))

(declare-fun res!1190544 () Bool)

(assert (=> b!2868487 (=> (not res!1190544) (not e!1815763))))

(declare-fun call!185092 () Bool)

(assert (=> b!2868487 (= res!1190544 call!185092)))

(declare-fun b!2868488 () Bool)

(declare-fun res!1190543 () Bool)

(assert (=> b!2868488 (=> res!1190543 e!1815761)))

(assert (=> b!2868488 (= res!1190543 (not ((_ is Concat!14048) (h!39778 (exprs!3187 c!7184)))))))

(declare-fun e!1815764 () Bool)

(assert (=> b!2868488 (= e!1815764 e!1815761)))

(declare-fun b!2868489 () Bool)

(declare-fun e!1815766 () Bool)

(declare-fun e!1815767 () Bool)

(assert (=> b!2868489 (= e!1815766 e!1815767)))

(declare-fun res!1190541 () Bool)

(declare-fun nullable!2677 (Regex!8727) Bool)

(assert (=> b!2868489 (= res!1190541 (not (nullable!2677 (reg!9056 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> b!2868489 (=> (not res!1190541) (not e!1815767))))

(declare-fun bm!185087 () Bool)

(declare-fun call!185093 () Bool)

(declare-fun call!185094 () Bool)

(assert (=> bm!185087 (= call!185093 call!185094)))

(declare-fun b!2868490 () Bool)

(declare-fun e!1815762 () Bool)

(assert (=> b!2868490 (= e!1815762 call!185092)))

(declare-fun b!2868491 () Bool)

(assert (=> b!2868491 (= e!1815767 call!185094)))

(declare-fun b!2868492 () Bool)

(assert (=> b!2868492 (= e!1815763 call!185093)))

(declare-fun b!2868493 () Bool)

(assert (=> b!2868493 (= e!1815766 e!1815764)))

(declare-fun c!463557 () Bool)

(assert (=> b!2868493 (= c!463557 ((_ is Union!8727) (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868494 () Bool)

(declare-fun res!1190542 () Bool)

(assert (=> b!2868494 (=> (not res!1190542) (not e!1815762))))

(assert (=> b!2868494 (= res!1190542 call!185093)))

(assert (=> b!2868494 (= e!1815764 e!1815762)))

(declare-fun d!829117 () Bool)

(declare-fun res!1190545 () Bool)

(declare-fun e!1815765 () Bool)

(assert (=> d!829117 (=> res!1190545 e!1815765)))

(assert (=> d!829117 (= res!1190545 ((_ is ElementMatch!8727) (h!39778 (exprs!3187 c!7184))))))

(assert (=> d!829117 (= (validRegex!3505 (h!39778 (exprs!3187 c!7184))) e!1815765)))

(declare-fun bm!185088 () Bool)

(assert (=> bm!185088 (= call!185092 (validRegex!3505 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun c!463558 () Bool)

(declare-fun bm!185089 () Bool)

(assert (=> bm!185089 (= call!185094 (validRegex!3505 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))

(declare-fun b!2868495 () Bool)

(assert (=> b!2868495 (= e!1815765 e!1815766)))

(assert (=> b!2868495 (= c!463558 ((_ is Star!8727) (h!39778 (exprs!3187 c!7184))))))

(assert (= (and d!829117 (not res!1190545)) b!2868495))

(assert (= (and b!2868495 c!463558) b!2868489))

(assert (= (and b!2868495 (not c!463558)) b!2868493))

(assert (= (and b!2868489 res!1190541) b!2868491))

(assert (= (and b!2868493 c!463557) b!2868494))

(assert (= (and b!2868493 (not c!463557)) b!2868488))

(assert (= (and b!2868494 res!1190542) b!2868490))

(assert (= (and b!2868488 (not res!1190543)) b!2868487))

(assert (= (and b!2868487 res!1190544) b!2868492))

(assert (= (or b!2868490 b!2868487) bm!185088))

(assert (= (or b!2868494 b!2868492) bm!185087))

(assert (= (or b!2868491 bm!185087) bm!185089))

(declare-fun m!3288047 () Bool)

(assert (=> b!2868489 m!3288047))

(declare-fun m!3288049 () Bool)

(assert (=> bm!185088 m!3288049))

(declare-fun m!3288051 () Bool)

(assert (=> bm!185089 m!3288051))

(assert (=> b!2868370 d!829117))

(declare-fun b!2868549 () Bool)

(declare-fun e!1815802 () Option!6402)

(assert (=> b!2868549 (= e!1815802 None!6401)))

(declare-fun b!2868550 () Bool)

(declare-fun e!1815801 () Option!6402)

(assert (=> b!2868550 (= e!1815801 (Some!6401 Nil!34357))))

(declare-fun b!2868551 () Bool)

(declare-fun c!463586 () Bool)

(assert (=> b!2868551 (= c!463586 ((_ is ElementMatch!8727) (h!39778 (exprs!3187 c!7184))))))

(declare-fun e!1815800 () Option!6402)

(assert (=> b!2868551 (= e!1815802 e!1815800)))

(declare-fun b!2868552 () Bool)

(assert (=> b!2868552 (= e!1815800 (Some!6401 (Cons!34357 (c!463510 (h!39778 (exprs!3187 c!7184))) Nil!34357)))))

(declare-fun bm!185096 () Bool)

(declare-fun call!185101 () Option!6402)

(declare-fun c!463589 () Bool)

(assert (=> bm!185096 (= call!185101 (getLanguageWitness!405 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868553 () Bool)

(declare-fun e!1815798 () Option!6402)

(declare-fun e!1815797 () Option!6402)

(assert (=> b!2868553 (= e!1815798 e!1815797)))

(declare-fun lt!1017497 () Option!6402)

(declare-fun call!185102 () Option!6402)

(assert (=> b!2868553 (= lt!1017497 call!185102)))

(declare-fun c!463583 () Bool)

(assert (=> b!2868553 (= c!463583 ((_ is Some!6401) lt!1017497))))

(declare-fun d!829119 () Bool)

(declare-fun c!463587 () Bool)

(assert (=> d!829119 (= c!463587 ((_ is EmptyExpr!8727) (h!39778 (exprs!3187 c!7184))))))

(assert (=> d!829119 (= (getLanguageWitness!405 (h!39778 (exprs!3187 c!7184))) e!1815801)))

(declare-fun b!2868554 () Bool)

(declare-fun e!1815799 () Option!6402)

(assert (=> b!2868554 (= e!1815800 e!1815799)))

(declare-fun c!463584 () Bool)

(assert (=> b!2868554 (= c!463584 ((_ is Star!8727) (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868555 () Bool)

(assert (=> b!2868555 (= c!463589 ((_ is Union!8727) (h!39778 (exprs!3187 c!7184))))))

(assert (=> b!2868555 (= e!1815799 e!1815798)))

(declare-fun b!2868556 () Bool)

(assert (=> b!2868556 (= e!1815801 e!1815802)))

(declare-fun c!463585 () Bool)

(assert (=> b!2868556 (= c!463585 ((_ is EmptyLang!8727) (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868557 () Bool)

(declare-fun e!1815795 () Option!6402)

(assert (=> b!2868557 (= e!1815795 call!185101)))

(declare-fun bm!185097 () Bool)

(assert (=> bm!185097 (= call!185102 (getLanguageWitness!405 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868558 () Bool)

(declare-fun e!1815796 () Option!6402)

(assert (=> b!2868558 (= e!1815796 None!6401)))

(declare-fun b!2868559 () Bool)

(declare-fun lt!1017498 () Option!6402)

(assert (=> b!2868559 (= e!1815796 (Some!6401 (++!8163 (v!34523 lt!1017497) (v!34523 lt!1017498))))))

(declare-fun b!2868560 () Bool)

(assert (=> b!2868560 (= e!1815799 (Some!6401 Nil!34357))))

(declare-fun b!2868561 () Bool)

(assert (=> b!2868561 (= e!1815797 None!6401)))

(declare-fun b!2868562 () Bool)

(declare-fun c!463588 () Bool)

(assert (=> b!2868562 (= c!463588 ((_ is Some!6401) lt!1017498))))

(assert (=> b!2868562 (= lt!1017498 call!185101)))

(assert (=> b!2868562 (= e!1815797 e!1815796)))

(declare-fun b!2868563 () Bool)

(declare-fun lt!1017499 () Option!6402)

(assert (=> b!2868563 (= e!1815795 lt!1017499)))

(declare-fun b!2868564 () Bool)

(assert (=> b!2868564 (= e!1815798 e!1815795)))

(assert (=> b!2868564 (= lt!1017499 call!185102)))

(declare-fun c!463590 () Bool)

(assert (=> b!2868564 (= c!463590 ((_ is Some!6401) lt!1017499))))

(assert (= (and d!829119 c!463587) b!2868550))

(assert (= (and d!829119 (not c!463587)) b!2868556))

(assert (= (and b!2868556 c!463585) b!2868549))

(assert (= (and b!2868556 (not c!463585)) b!2868551))

(assert (= (and b!2868551 c!463586) b!2868552))

(assert (= (and b!2868551 (not c!463586)) b!2868554))

(assert (= (and b!2868554 c!463584) b!2868560))

(assert (= (and b!2868554 (not c!463584)) b!2868555))

(assert (= (and b!2868555 c!463589) b!2868564))

(assert (= (and b!2868555 (not c!463589)) b!2868553))

(assert (= (and b!2868564 c!463590) b!2868563))

(assert (= (and b!2868564 (not c!463590)) b!2868557))

(assert (= (and b!2868553 c!463583) b!2868562))

(assert (= (and b!2868553 (not c!463583)) b!2868561))

(assert (= (and b!2868562 c!463588) b!2868559))

(assert (= (and b!2868562 (not c!463588)) b!2868558))

(assert (= (or b!2868557 b!2868562) bm!185096))

(assert (= (or b!2868564 b!2868553) bm!185097))

(declare-fun m!3288061 () Bool)

(assert (=> bm!185096 m!3288061))

(declare-fun m!3288063 () Bool)

(assert (=> bm!185097 m!3288063))

(declare-fun m!3288065 () Bool)

(assert (=> b!2868559 m!3288065))

(assert (=> b!2868369 d!829119))

(declare-fun b!2868569 () Bool)

(declare-fun e!1815805 () Bool)

(declare-fun tp!923191 () Bool)

(declare-fun tp!923192 () Bool)

(assert (=> b!2868569 (= e!1815805 (and tp!923191 tp!923192))))

(assert (=> b!2868372 (= tp!923180 e!1815805)))

(assert (= (and b!2868372 ((_ is Cons!34358) (exprs!3187 c!7184))) b!2868569))

(check-sat (not b!2868425) (not d!829113) (not b!2868426) (not d!829115) (not bm!185096) (not bm!185097) (not d!829109) (not bm!185088) (not b!2868427) (not d!829099) (not b!2868569) (not b!2868559) (not bm!185089) (not b!2868489))
(check-sat)
(get-model)

(declare-fun b!2868570 () Bool)

(declare-fun e!1815813 () Option!6402)

(assert (=> b!2868570 (= e!1815813 None!6401)))

(declare-fun b!2868571 () Bool)

(declare-fun e!1815812 () Option!6402)

(assert (=> b!2868571 (= e!1815812 (Some!6401 Nil!34357))))

(declare-fun b!2868572 () Bool)

(declare-fun c!463594 () Bool)

(assert (=> b!2868572 (= c!463594 ((_ is ElementMatch!8727) (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun e!1815811 () Option!6402)

(assert (=> b!2868572 (= e!1815813 e!1815811)))

(declare-fun b!2868573 () Bool)

(assert (=> b!2868573 (= e!1815811 (Some!6401 (Cons!34357 (c!463510 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))) Nil!34357)))))

(declare-fun bm!185098 () Bool)

(declare-fun c!463597 () Bool)

(declare-fun call!185103 () Option!6402)

(assert (=> bm!185098 (= call!185103 (getLanguageWitness!405 (ite c!463597 (regTwo!17967 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))) (regTwo!17966 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun b!2868574 () Bool)

(declare-fun e!1815809 () Option!6402)

(declare-fun e!1815808 () Option!6402)

(assert (=> b!2868574 (= e!1815809 e!1815808)))

(declare-fun lt!1017500 () Option!6402)

(declare-fun call!185104 () Option!6402)

(assert (=> b!2868574 (= lt!1017500 call!185104)))

(declare-fun c!463591 () Bool)

(assert (=> b!2868574 (= c!463591 ((_ is Some!6401) lt!1017500))))

(declare-fun d!829123 () Bool)

(declare-fun c!463595 () Bool)

(assert (=> d!829123 (= c!463595 ((_ is EmptyExpr!8727) (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> d!829123 (= (getLanguageWitness!405 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))) e!1815812)))

(declare-fun b!2868575 () Bool)

(declare-fun e!1815810 () Option!6402)

(assert (=> b!2868575 (= e!1815811 e!1815810)))

(declare-fun c!463592 () Bool)

(assert (=> b!2868575 (= c!463592 ((_ is Star!8727) (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868576 () Bool)

(assert (=> b!2868576 (= c!463597 ((_ is Union!8727) (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> b!2868576 (= e!1815810 e!1815809)))

(declare-fun b!2868577 () Bool)

(assert (=> b!2868577 (= e!1815812 e!1815813)))

(declare-fun c!463593 () Bool)

(assert (=> b!2868577 (= c!463593 ((_ is EmptyLang!8727) (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868578 () Bool)

(declare-fun e!1815806 () Option!6402)

(assert (=> b!2868578 (= e!1815806 call!185103)))

(declare-fun bm!185099 () Bool)

(assert (=> bm!185099 (= call!185104 (getLanguageWitness!405 (ite c!463597 (regOne!17967 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))) (regOne!17966 (ite c!463589 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun b!2868579 () Bool)

(declare-fun e!1815807 () Option!6402)

(assert (=> b!2868579 (= e!1815807 None!6401)))

(declare-fun b!2868580 () Bool)

(declare-fun lt!1017501 () Option!6402)

(assert (=> b!2868580 (= e!1815807 (Some!6401 (++!8163 (v!34523 lt!1017500) (v!34523 lt!1017501))))))

(declare-fun b!2868581 () Bool)

(assert (=> b!2868581 (= e!1815810 (Some!6401 Nil!34357))))

(declare-fun b!2868582 () Bool)

(assert (=> b!2868582 (= e!1815808 None!6401)))

(declare-fun b!2868583 () Bool)

(declare-fun c!463596 () Bool)

(assert (=> b!2868583 (= c!463596 ((_ is Some!6401) lt!1017501))))

(assert (=> b!2868583 (= lt!1017501 call!185103)))

(assert (=> b!2868583 (= e!1815808 e!1815807)))

(declare-fun b!2868584 () Bool)

(declare-fun lt!1017502 () Option!6402)

(assert (=> b!2868584 (= e!1815806 lt!1017502)))

(declare-fun b!2868585 () Bool)

(assert (=> b!2868585 (= e!1815809 e!1815806)))

(assert (=> b!2868585 (= lt!1017502 call!185104)))

(declare-fun c!463598 () Bool)

(assert (=> b!2868585 (= c!463598 ((_ is Some!6401) lt!1017502))))

(assert (= (and d!829123 c!463595) b!2868571))

(assert (= (and d!829123 (not c!463595)) b!2868577))

(assert (= (and b!2868577 c!463593) b!2868570))

(assert (= (and b!2868577 (not c!463593)) b!2868572))

(assert (= (and b!2868572 c!463594) b!2868573))

(assert (= (and b!2868572 (not c!463594)) b!2868575))

(assert (= (and b!2868575 c!463592) b!2868581))

(assert (= (and b!2868575 (not c!463592)) b!2868576))

(assert (= (and b!2868576 c!463597) b!2868585))

(assert (= (and b!2868576 (not c!463597)) b!2868574))

(assert (= (and b!2868585 c!463598) b!2868584))

(assert (= (and b!2868585 (not c!463598)) b!2868578))

(assert (= (and b!2868574 c!463591) b!2868583))

(assert (= (and b!2868574 (not c!463591)) b!2868582))

(assert (= (and b!2868583 c!463596) b!2868580))

(assert (= (and b!2868583 (not c!463596)) b!2868579))

(assert (= (or b!2868578 b!2868583) bm!185098))

(assert (= (or b!2868585 b!2868574) bm!185099))

(declare-fun m!3288067 () Bool)

(assert (=> bm!185098 m!3288067))

(declare-fun m!3288069 () Bool)

(assert (=> bm!185099 m!3288069))

(declare-fun m!3288071 () Bool)

(assert (=> b!2868580 m!3288071))

(assert (=> bm!185096 d!829123))

(declare-fun d!829125 () Bool)

(assert (=> d!829125 (= (isEmpty!18696 lt!1017476) (not ((_ is Some!6401) lt!1017476)))))

(assert (=> d!829099 d!829125))

(declare-fun bs!521784 () Bool)

(declare-fun d!829127 () Bool)

(assert (= bs!521784 (and d!829127 d!829099)))

(declare-fun lambda!106965 () Int)

(assert (=> bs!521784 (not (= lambda!106965 lambda!106955))))

(declare-fun bs!521785 () Bool)

(assert (= bs!521785 (and d!829127 d!829109)))

(assert (=> bs!521785 (not (= lambda!106965 lambda!106959))))

(declare-fun bs!521786 () Bool)

(assert (= bs!521786 (and d!829127 d!829113)))

(assert (=> bs!521786 (not (= lambda!106965 lambda!106962))))

(assert (=> d!829127 true))

(declare-fun order!18113 () Int)

(declare-fun dynLambda!14295 (Int Int) Int)

(assert (=> d!829127 (< (dynLambda!14295 order!18113 lambda!106955) (dynLambda!14295 order!18113 lambda!106965))))

(assert (=> d!829127 (= (exists!1146 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))) lambda!106955) (not (forall!7072 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))) lambda!106965)))))

(declare-fun bs!521787 () Bool)

(assert (= bs!521787 d!829127))

(declare-fun m!3288073 () Bool)

(assert (=> bs!521787 m!3288073))

(assert (=> d!829099 d!829127))

(declare-fun b!2868588 () Bool)

(declare-fun e!1815814 () Bool)

(declare-fun e!1815816 () Bool)

(assert (=> b!2868588 (= e!1815814 e!1815816)))

(declare-fun res!1190549 () Bool)

(assert (=> b!2868588 (=> (not res!1190549) (not e!1815816))))

(declare-fun call!185105 () Bool)

(assert (=> b!2868588 (= res!1190549 call!185105)))

(declare-fun b!2868589 () Bool)

(declare-fun res!1190548 () Bool)

(assert (=> b!2868589 (=> res!1190548 e!1815814)))

(assert (=> b!2868589 (= res!1190548 (not ((_ is Concat!14048) (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184)))))))))

(declare-fun e!1815817 () Bool)

(assert (=> b!2868589 (= e!1815817 e!1815814)))

(declare-fun b!2868590 () Bool)

(declare-fun e!1815819 () Bool)

(declare-fun e!1815820 () Bool)

(assert (=> b!2868590 (= e!1815819 e!1815820)))

(declare-fun res!1190546 () Bool)

(assert (=> b!2868590 (= res!1190546 (not (nullable!2677 (reg!9056 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))))

(assert (=> b!2868590 (=> (not res!1190546) (not e!1815820))))

(declare-fun bm!185100 () Bool)

(declare-fun call!185106 () Bool)

(declare-fun call!185107 () Bool)

(assert (=> bm!185100 (= call!185106 call!185107)))

(declare-fun b!2868591 () Bool)

(declare-fun e!1815815 () Bool)

(assert (=> b!2868591 (= e!1815815 call!185105)))

(declare-fun b!2868592 () Bool)

(assert (=> b!2868592 (= e!1815820 call!185107)))

(declare-fun b!2868593 () Bool)

(assert (=> b!2868593 (= e!1815816 call!185106)))

(declare-fun b!2868594 () Bool)

(assert (=> b!2868594 (= e!1815819 e!1815817)))

(declare-fun c!463599 () Bool)

(assert (=> b!2868594 (= c!463599 ((_ is Union!8727) (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868595 () Bool)

(declare-fun res!1190547 () Bool)

(assert (=> b!2868595 (=> (not res!1190547) (not e!1815815))))

(assert (=> b!2868595 (= res!1190547 call!185106)))

(assert (=> b!2868595 (= e!1815817 e!1815815)))

(declare-fun d!829129 () Bool)

(declare-fun res!1190550 () Bool)

(declare-fun e!1815818 () Bool)

(assert (=> d!829129 (=> res!1190550 e!1815818)))

(assert (=> d!829129 (= res!1190550 ((_ is ElementMatch!8727) (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> d!829129 (= (validRegex!3505 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) e!1815818)))

(declare-fun bm!185101 () Bool)

(assert (=> bm!185101 (= call!185105 (validRegex!3505 (ite c!463599 (regTwo!17967 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) (regOne!17966 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun bm!185102 () Bool)

(declare-fun c!463600 () Bool)

(assert (=> bm!185102 (= call!185107 (validRegex!3505 (ite c!463600 (reg!9056 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) (ite c!463599 (regOne!17967 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) (regTwo!17966 (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184)))))))))))

(declare-fun b!2868596 () Bool)

(assert (=> b!2868596 (= e!1815818 e!1815819)))

(assert (=> b!2868596 (= c!463600 ((_ is Star!8727) (ite c!463557 (regTwo!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (= (and d!829129 (not res!1190550)) b!2868596))

(assert (= (and b!2868596 c!463600) b!2868590))

(assert (= (and b!2868596 (not c!463600)) b!2868594))

(assert (= (and b!2868590 res!1190546) b!2868592))

(assert (= (and b!2868594 c!463599) b!2868595))

(assert (= (and b!2868594 (not c!463599)) b!2868589))

(assert (= (and b!2868595 res!1190547) b!2868591))

(assert (= (and b!2868589 (not res!1190548)) b!2868588))

(assert (= (and b!2868588 res!1190549) b!2868593))

(assert (= (or b!2868591 b!2868588) bm!185101))

(assert (= (or b!2868595 b!2868593) bm!185100))

(assert (= (or b!2868592 bm!185100) bm!185102))

(declare-fun m!3288075 () Bool)

(assert (=> b!2868590 m!3288075))

(declare-fun m!3288077 () Bool)

(assert (=> bm!185101 m!3288077))

(declare-fun m!3288079 () Bool)

(assert (=> bm!185102 m!3288079))

(assert (=> bm!185088 d!829129))

(declare-fun bs!521788 () Bool)

(declare-fun d!829131 () Bool)

(assert (= bs!521788 (and d!829131 d!829099)))

(declare-fun lambda!106966 () Int)

(assert (=> bs!521788 (not (= lambda!106966 lambda!106955))))

(declare-fun bs!521789 () Bool)

(assert (= bs!521789 (and d!829131 d!829109)))

(assert (=> bs!521789 (not (= lambda!106966 lambda!106959))))

(declare-fun bs!521790 () Bool)

(assert (= bs!521790 (and d!829131 d!829113)))

(assert (=> bs!521790 (not (= lambda!106966 lambda!106962))))

(declare-fun bs!521791 () Bool)

(assert (= bs!521791 (and d!829131 d!829127)))

(assert (=> bs!521791 (= (= lambda!106959 lambda!106955) (= lambda!106966 lambda!106965))))

(assert (=> d!829131 true))

(assert (=> d!829131 (< (dynLambda!14295 order!18113 lambda!106959) (dynLambda!14295 order!18113 lambda!106966))))

(assert (=> d!829131 (= (exists!1146 (exprs!3187 c!7184) lambda!106959) (not (forall!7072 (exprs!3187 c!7184) lambda!106966)))))

(declare-fun bs!521792 () Bool)

(assert (= bs!521792 d!829131))

(declare-fun m!3288081 () Bool)

(assert (=> bs!521792 m!3288081))

(assert (=> d!829109 d!829131))

(declare-fun d!829133 () Bool)

(assert (=> d!829133 (= (isEmpty!18696 lt!1017463) (not ((_ is Some!6401) lt!1017463)))))

(assert (=> d!829115 d!829133))

(declare-fun b!2868597 () Bool)

(declare-fun e!1815821 () Bool)

(declare-fun e!1815823 () Bool)

(assert (=> b!2868597 (= e!1815821 e!1815823)))

(declare-fun res!1190554 () Bool)

(assert (=> b!2868597 (=> (not res!1190554) (not e!1815823))))

(declare-fun call!185108 () Bool)

(assert (=> b!2868597 (= res!1190554 call!185108)))

(declare-fun b!2868598 () Bool)

(declare-fun res!1190553 () Bool)

(assert (=> b!2868598 (=> res!1190553 e!1815821)))

(assert (=> b!2868598 (= res!1190553 (not ((_ is Concat!14048) (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun e!1815824 () Bool)

(assert (=> b!2868598 (= e!1815824 e!1815821)))

(declare-fun b!2868599 () Bool)

(declare-fun e!1815826 () Bool)

(declare-fun e!1815827 () Bool)

(assert (=> b!2868599 (= e!1815826 e!1815827)))

(declare-fun res!1190551 () Bool)

(assert (=> b!2868599 (= res!1190551 (not (nullable!2677 (reg!9056 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))))

(assert (=> b!2868599 (=> (not res!1190551) (not e!1815827))))

(declare-fun bm!185103 () Bool)

(declare-fun call!185109 () Bool)

(declare-fun call!185110 () Bool)

(assert (=> bm!185103 (= call!185109 call!185110)))

(declare-fun b!2868600 () Bool)

(declare-fun e!1815822 () Bool)

(assert (=> b!2868600 (= e!1815822 call!185108)))

(declare-fun b!2868601 () Bool)

(assert (=> b!2868601 (= e!1815827 call!185110)))

(declare-fun b!2868602 () Bool)

(assert (=> b!2868602 (= e!1815823 call!185109)))

(declare-fun b!2868603 () Bool)

(assert (=> b!2868603 (= e!1815826 e!1815824)))

(declare-fun c!463601 () Bool)

(assert (=> b!2868603 (= c!463601 ((_ is Union!8727) (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))

(declare-fun b!2868604 () Bool)

(declare-fun res!1190552 () Bool)

(assert (=> b!2868604 (=> (not res!1190552) (not e!1815822))))

(assert (=> b!2868604 (= res!1190552 call!185109)))

(assert (=> b!2868604 (= e!1815824 e!1815822)))

(declare-fun d!829135 () Bool)

(declare-fun res!1190555 () Bool)

(declare-fun e!1815825 () Bool)

(assert (=> d!829135 (=> res!1190555 e!1815825)))

(assert (=> d!829135 (= res!1190555 ((_ is ElementMatch!8727) (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))

(assert (=> d!829135 (= (validRegex!3505 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))) e!1815825)))

(declare-fun bm!185104 () Bool)

(assert (=> bm!185104 (= call!185108 (validRegex!3505 (ite c!463601 (regTwo!17967 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))) (regOne!17966 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))))

(declare-fun c!463602 () Bool)

(declare-fun bm!185105 () Bool)

(assert (=> bm!185105 (= call!185110 (validRegex!3505 (ite c!463602 (reg!9056 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))) (ite c!463601 (regOne!17967 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))) (regTwo!17966 (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184))))))))))))

(declare-fun b!2868605 () Bool)

(assert (=> b!2868605 (= e!1815825 e!1815826)))

(assert (=> b!2868605 (= c!463602 ((_ is Star!8727) (ite c!463558 (reg!9056 (h!39778 (exprs!3187 c!7184))) (ite c!463557 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regTwo!17966 (h!39778 (exprs!3187 c!7184)))))))))

(assert (= (and d!829135 (not res!1190555)) b!2868605))

(assert (= (and b!2868605 c!463602) b!2868599))

(assert (= (and b!2868605 (not c!463602)) b!2868603))

(assert (= (and b!2868599 res!1190551) b!2868601))

(assert (= (and b!2868603 c!463601) b!2868604))

(assert (= (and b!2868603 (not c!463601)) b!2868598))

(assert (= (and b!2868604 res!1190552) b!2868600))

(assert (= (and b!2868598 (not res!1190553)) b!2868597))

(assert (= (and b!2868597 res!1190554) b!2868602))

(assert (= (or b!2868600 b!2868597) bm!185104))

(assert (= (or b!2868604 b!2868602) bm!185103))

(assert (= (or b!2868601 bm!185103) bm!185105))

(declare-fun m!3288083 () Bool)

(assert (=> b!2868599 m!3288083))

(declare-fun m!3288085 () Bool)

(assert (=> bm!185104 m!3288085))

(declare-fun m!3288087 () Bool)

(assert (=> bm!185105 m!3288087))

(assert (=> bm!185089 d!829135))

(declare-fun bs!521793 () Bool)

(declare-fun d!829137 () Bool)

(assert (= bs!521793 (and d!829137 d!829127)))

(declare-fun lambda!106967 () Int)

(assert (=> bs!521793 (not (= lambda!106967 lambda!106965))))

(declare-fun bs!521794 () Bool)

(assert (= bs!521794 (and d!829137 d!829109)))

(assert (=> bs!521794 (= lambda!106967 lambda!106959)))

(declare-fun bs!521795 () Bool)

(assert (= bs!521795 (and d!829137 d!829131)))

(assert (=> bs!521795 (not (= lambda!106967 lambda!106966))))

(declare-fun bs!521796 () Bool)

(assert (= bs!521796 (and d!829137 d!829113)))

(assert (=> bs!521796 (not (= lambda!106967 lambda!106962))))

(declare-fun bs!521797 () Bool)

(assert (= bs!521797 (and d!829137 d!829099)))

(assert (=> bs!521797 (= lambda!106967 lambda!106955)))

(declare-fun b!2868606 () Bool)

(declare-fun c!463605 () Bool)

(declare-fun lt!1017505 () Option!6402)

(assert (=> b!2868606 (= c!463605 ((_ is Some!6401) lt!1017505))))

(assert (=> b!2868606 (= lt!1017505 (getLanguageWitness!406 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))))))

(declare-fun e!1815829 () Option!6402)

(declare-fun e!1815828 () Option!6402)

(assert (=> b!2868606 (= e!1815829 e!1815828)))

(declare-fun b!2868607 () Bool)

(declare-fun e!1815830 () Option!6402)

(assert (=> b!2868607 (= e!1815830 e!1815829)))

(declare-fun lt!1017504 () Option!6402)

(assert (=> b!2868607 (= lt!1017504 (getLanguageWitness!405 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184))))))))))))

(declare-fun c!463604 () Bool)

(assert (=> b!2868607 (= c!463604 ((_ is Some!6401) lt!1017504))))

(declare-fun b!2868608 () Bool)

(assert (=> b!2868608 (= e!1815828 (Some!6401 (++!8163 (v!34523 lt!1017504) (v!34523 lt!1017505))))))

(declare-fun b!2868609 () Bool)

(assert (=> b!2868609 (= e!1815829 None!6401)))

(declare-fun b!2868610 () Bool)

(assert (=> b!2868610 (= e!1815828 None!6401)))

(declare-fun b!2868611 () Bool)

(assert (=> b!2868611 (= e!1815830 (Some!6401 Nil!34357))))

(declare-fun lt!1017503 () Option!6402)

(assert (=> d!829137 (= (isEmpty!18696 lt!1017503) (exists!1146 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184))))))) lambda!106967))))

(assert (=> d!829137 (= lt!1017503 e!1815830)))

(declare-fun c!463603 () Bool)

(assert (=> d!829137 (= c!463603 ((_ is Cons!34358) (exprs!3187 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))))

(assert (=> d!829137 (= (getLanguageWitness!406 (Context!5375 (t!233525 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184))))))) lt!1017503)))

(assert (= (and d!829137 c!463603) b!2868607))

(assert (= (and d!829137 (not c!463603)) b!2868611))

(assert (= (and b!2868607 c!463604) b!2868606))

(assert (= (and b!2868607 (not c!463604)) b!2868609))

(assert (= (and b!2868606 c!463605) b!2868608))

(assert (= (and b!2868606 (not c!463605)) b!2868610))

(declare-fun m!3288089 () Bool)

(assert (=> b!2868606 m!3288089))

(declare-fun m!3288091 () Bool)

(assert (=> b!2868607 m!3288091))

(declare-fun m!3288093 () Bool)

(assert (=> b!2868608 m!3288093))

(declare-fun m!3288095 () Bool)

(assert (=> d!829137 m!3288095))

(declare-fun m!3288097 () Bool)

(assert (=> d!829137 m!3288097))

(assert (=> b!2868425 d!829137))

(declare-fun d!829139 () Bool)

(declare-fun res!1190560 () Bool)

(declare-fun e!1815835 () Bool)

(assert (=> d!829139 (=> res!1190560 e!1815835)))

(assert (=> d!829139 (= res!1190560 ((_ is Nil!34358) (exprs!3187 c!7184)))))

(assert (=> d!829139 (= (forall!7072 (exprs!3187 c!7184) lambda!106962) e!1815835)))

(declare-fun b!2868616 () Bool)

(declare-fun e!1815836 () Bool)

(assert (=> b!2868616 (= e!1815835 e!1815836)))

(declare-fun res!1190561 () Bool)

(assert (=> b!2868616 (=> (not res!1190561) (not e!1815836))))

(declare-fun dynLambda!14296 (Int Regex!8727) Bool)

(assert (=> b!2868616 (= res!1190561 (dynLambda!14296 lambda!106962 (h!39778 (exprs!3187 c!7184))))))

(declare-fun b!2868617 () Bool)

(assert (=> b!2868617 (= e!1815836 (forall!7072 (t!233525 (exprs!3187 c!7184)) lambda!106962))))

(assert (= (and d!829139 (not res!1190560)) b!2868616))

(assert (= (and b!2868616 res!1190561) b!2868617))

(declare-fun b_lambda!85963 () Bool)

(assert (=> (not b_lambda!85963) (not b!2868616)))

(declare-fun m!3288099 () Bool)

(assert (=> b!2868616 m!3288099))

(declare-fun m!3288101 () Bool)

(assert (=> b!2868617 m!3288101))

(assert (=> d!829113 d!829139))

(declare-fun b!2868628 () Bool)

(declare-fun res!1190567 () Bool)

(declare-fun e!1815841 () Bool)

(assert (=> b!2868628 (=> (not res!1190567) (not e!1815841))))

(declare-fun lt!1017508 () List!34481)

(declare-fun size!26311 (List!34481) Int)

(assert (=> b!2868628 (= res!1190567 (= (size!26311 lt!1017508) (+ (size!26311 (v!34523 lt!1017497)) (size!26311 (v!34523 lt!1017498)))))))

(declare-fun d!829141 () Bool)

(assert (=> d!829141 e!1815841))

(declare-fun res!1190566 () Bool)

(assert (=> d!829141 (=> (not res!1190566) (not e!1815841))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4690 (List!34481) (InoxSet C!17636))

(assert (=> d!829141 (= res!1190566 (= (content!4690 lt!1017508) ((_ map or) (content!4690 (v!34523 lt!1017497)) (content!4690 (v!34523 lt!1017498)))))))

(declare-fun e!1815842 () List!34481)

(assert (=> d!829141 (= lt!1017508 e!1815842)))

(declare-fun c!463608 () Bool)

(assert (=> d!829141 (= c!463608 ((_ is Nil!34357) (v!34523 lt!1017497)))))

(assert (=> d!829141 (= (++!8163 (v!34523 lt!1017497) (v!34523 lt!1017498)) lt!1017508)))

(declare-fun b!2868626 () Bool)

(assert (=> b!2868626 (= e!1815842 (v!34523 lt!1017498))))

(declare-fun b!2868627 () Bool)

(assert (=> b!2868627 (= e!1815842 (Cons!34357 (h!39777 (v!34523 lt!1017497)) (++!8163 (t!233524 (v!34523 lt!1017497)) (v!34523 lt!1017498))))))

(declare-fun b!2868629 () Bool)

(assert (=> b!2868629 (= e!1815841 (or (not (= (v!34523 lt!1017498) Nil!34357)) (= lt!1017508 (v!34523 lt!1017497))))))

(assert (= (and d!829141 c!463608) b!2868626))

(assert (= (and d!829141 (not c!463608)) b!2868627))

(assert (= (and d!829141 res!1190566) b!2868628))

(assert (= (and b!2868628 res!1190567) b!2868629))

(declare-fun m!3288103 () Bool)

(assert (=> b!2868628 m!3288103))

(declare-fun m!3288105 () Bool)

(assert (=> b!2868628 m!3288105))

(declare-fun m!3288107 () Bool)

(assert (=> b!2868628 m!3288107))

(declare-fun m!3288109 () Bool)

(assert (=> d!829141 m!3288109))

(declare-fun m!3288111 () Bool)

(assert (=> d!829141 m!3288111))

(declare-fun m!3288113 () Bool)

(assert (=> d!829141 m!3288113))

(declare-fun m!3288115 () Bool)

(assert (=> b!2868627 m!3288115))

(assert (=> b!2868559 d!829141))

(declare-fun b!2868632 () Bool)

(declare-fun res!1190569 () Bool)

(declare-fun e!1815843 () Bool)

(assert (=> b!2868632 (=> (not res!1190569) (not e!1815843))))

(declare-fun lt!1017509 () List!34481)

(assert (=> b!2868632 (= res!1190569 (= (size!26311 lt!1017509) (+ (size!26311 (v!34523 lt!1017477)) (size!26311 (v!34523 lt!1017478)))))))

(declare-fun d!829143 () Bool)

(assert (=> d!829143 e!1815843))

(declare-fun res!1190568 () Bool)

(assert (=> d!829143 (=> (not res!1190568) (not e!1815843))))

(assert (=> d!829143 (= res!1190568 (= (content!4690 lt!1017509) ((_ map or) (content!4690 (v!34523 lt!1017477)) (content!4690 (v!34523 lt!1017478)))))))

(declare-fun e!1815844 () List!34481)

(assert (=> d!829143 (= lt!1017509 e!1815844)))

(declare-fun c!463609 () Bool)

(assert (=> d!829143 (= c!463609 ((_ is Nil!34357) (v!34523 lt!1017477)))))

(assert (=> d!829143 (= (++!8163 (v!34523 lt!1017477) (v!34523 lt!1017478)) lt!1017509)))

(declare-fun b!2868630 () Bool)

(assert (=> b!2868630 (= e!1815844 (v!34523 lt!1017478))))

(declare-fun b!2868631 () Bool)

(assert (=> b!2868631 (= e!1815844 (Cons!34357 (h!39777 (v!34523 lt!1017477)) (++!8163 (t!233524 (v!34523 lt!1017477)) (v!34523 lt!1017478))))))

(declare-fun b!2868633 () Bool)

(assert (=> b!2868633 (= e!1815843 (or (not (= (v!34523 lt!1017478) Nil!34357)) (= lt!1017509 (v!34523 lt!1017477))))))

(assert (= (and d!829143 c!463609) b!2868630))

(assert (= (and d!829143 (not c!463609)) b!2868631))

(assert (= (and d!829143 res!1190568) b!2868632))

(assert (= (and b!2868632 res!1190569) b!2868633))

(declare-fun m!3288117 () Bool)

(assert (=> b!2868632 m!3288117))

(declare-fun m!3288119 () Bool)

(assert (=> b!2868632 m!3288119))

(declare-fun m!3288121 () Bool)

(assert (=> b!2868632 m!3288121))

(declare-fun m!3288123 () Bool)

(assert (=> d!829143 m!3288123))

(declare-fun m!3288125 () Bool)

(assert (=> d!829143 m!3288125))

(declare-fun m!3288127 () Bool)

(assert (=> d!829143 m!3288127))

(declare-fun m!3288129 () Bool)

(assert (=> b!2868631 m!3288129))

(assert (=> b!2868427 d!829143))

(declare-fun d!829145 () Bool)

(declare-fun nullableFct!810 (Regex!8727) Bool)

(assert (=> d!829145 (= (nullable!2677 (reg!9056 (h!39778 (exprs!3187 c!7184)))) (nullableFct!810 (reg!9056 (h!39778 (exprs!3187 c!7184)))))))

(declare-fun bs!521798 () Bool)

(assert (= bs!521798 d!829145))

(declare-fun m!3288131 () Bool)

(assert (=> bs!521798 m!3288131))

(assert (=> b!2868489 d!829145))

(declare-fun b!2868634 () Bool)

(declare-fun e!1815852 () Option!6402)

(assert (=> b!2868634 (= e!1815852 None!6401)))

(declare-fun b!2868635 () Bool)

(declare-fun e!1815851 () Option!6402)

(assert (=> b!2868635 (= e!1815851 (Some!6401 Nil!34357))))

(declare-fun b!2868636 () Bool)

(declare-fun c!463613 () Bool)

(assert (=> b!2868636 (= c!463613 ((_ is ElementMatch!8727) (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(declare-fun e!1815850 () Option!6402)

(assert (=> b!2868636 (= e!1815852 e!1815850)))

(declare-fun b!2868637 () Bool)

(assert (=> b!2868637 (= e!1815850 (Some!6401 (Cons!34357 (c!463510 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))) Nil!34357)))))

(declare-fun bm!185106 () Bool)

(declare-fun call!185111 () Option!6402)

(declare-fun c!463616 () Bool)

(assert (=> bm!185106 (= call!185111 (getLanguageWitness!405 (ite c!463616 (regTwo!17967 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))) (regTwo!17966 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))))

(declare-fun b!2868638 () Bool)

(declare-fun e!1815848 () Option!6402)

(declare-fun e!1815847 () Option!6402)

(assert (=> b!2868638 (= e!1815848 e!1815847)))

(declare-fun lt!1017510 () Option!6402)

(declare-fun call!185112 () Option!6402)

(assert (=> b!2868638 (= lt!1017510 call!185112)))

(declare-fun c!463610 () Bool)

(assert (=> b!2868638 (= c!463610 ((_ is Some!6401) lt!1017510))))

(declare-fun d!829147 () Bool)

(declare-fun c!463614 () Bool)

(assert (=> d!829147 (= c!463614 ((_ is EmptyExpr!8727) (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(assert (=> d!829147 (= (getLanguageWitness!405 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))) e!1815851)))

(declare-fun b!2868639 () Bool)

(declare-fun e!1815849 () Option!6402)

(assert (=> b!2868639 (= e!1815850 e!1815849)))

(declare-fun c!463611 () Bool)

(assert (=> b!2868639 (= c!463611 ((_ is Star!8727) (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(declare-fun b!2868640 () Bool)

(assert (=> b!2868640 (= c!463616 ((_ is Union!8727) (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(assert (=> b!2868640 (= e!1815849 e!1815848)))

(declare-fun b!2868641 () Bool)

(assert (=> b!2868641 (= e!1815851 e!1815852)))

(declare-fun c!463612 () Bool)

(assert (=> b!2868641 (= c!463612 ((_ is EmptyLang!8727) (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))

(declare-fun b!2868642 () Bool)

(declare-fun e!1815845 () Option!6402)

(assert (=> b!2868642 (= e!1815845 call!185111)))

(declare-fun bm!185107 () Bool)

(assert (=> bm!185107 (= call!185112 (getLanguageWitness!405 (ite c!463616 (regOne!17967 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))) (regOne!17966 (h!39778 (exprs!3187 (Context!5375 (t!233525 (exprs!3187 c!7184)))))))))))

(declare-fun b!2868643 () Bool)

(declare-fun e!1815846 () Option!6402)

(assert (=> b!2868643 (= e!1815846 None!6401)))

(declare-fun b!2868644 () Bool)

(declare-fun lt!1017511 () Option!6402)

(assert (=> b!2868644 (= e!1815846 (Some!6401 (++!8163 (v!34523 lt!1017510) (v!34523 lt!1017511))))))

(declare-fun b!2868645 () Bool)

(assert (=> b!2868645 (= e!1815849 (Some!6401 Nil!34357))))

(declare-fun b!2868646 () Bool)

(assert (=> b!2868646 (= e!1815847 None!6401)))

(declare-fun b!2868647 () Bool)

(declare-fun c!463615 () Bool)

(assert (=> b!2868647 (= c!463615 ((_ is Some!6401) lt!1017511))))

(assert (=> b!2868647 (= lt!1017511 call!185111)))

(assert (=> b!2868647 (= e!1815847 e!1815846)))

(declare-fun b!2868648 () Bool)

(declare-fun lt!1017512 () Option!6402)

(assert (=> b!2868648 (= e!1815845 lt!1017512)))

(declare-fun b!2868649 () Bool)

(assert (=> b!2868649 (= e!1815848 e!1815845)))

(assert (=> b!2868649 (= lt!1017512 call!185112)))

(declare-fun c!463617 () Bool)

(assert (=> b!2868649 (= c!463617 ((_ is Some!6401) lt!1017512))))

(assert (= (and d!829147 c!463614) b!2868635))

(assert (= (and d!829147 (not c!463614)) b!2868641))

(assert (= (and b!2868641 c!463612) b!2868634))

(assert (= (and b!2868641 (not c!463612)) b!2868636))

(assert (= (and b!2868636 c!463613) b!2868637))

(assert (= (and b!2868636 (not c!463613)) b!2868639))

(assert (= (and b!2868639 c!463611) b!2868645))

(assert (= (and b!2868639 (not c!463611)) b!2868640))

(assert (= (and b!2868640 c!463616) b!2868649))

(assert (= (and b!2868640 (not c!463616)) b!2868638))

(assert (= (and b!2868649 c!463617) b!2868648))

(assert (= (and b!2868649 (not c!463617)) b!2868642))

(assert (= (and b!2868638 c!463610) b!2868647))

(assert (= (and b!2868638 (not c!463610)) b!2868646))

(assert (= (and b!2868647 c!463615) b!2868644))

(assert (= (and b!2868647 (not c!463615)) b!2868643))

(assert (= (or b!2868642 b!2868647) bm!185106))

(assert (= (or b!2868649 b!2868638) bm!185107))

(declare-fun m!3288133 () Bool)

(assert (=> bm!185106 m!3288133))

(declare-fun m!3288135 () Bool)

(assert (=> bm!185107 m!3288135))

(declare-fun m!3288137 () Bool)

(assert (=> b!2868644 m!3288137))

(assert (=> b!2868426 d!829147))

(declare-fun b!2868650 () Bool)

(declare-fun e!1815860 () Option!6402)

(assert (=> b!2868650 (= e!1815860 None!6401)))

(declare-fun b!2868651 () Bool)

(declare-fun e!1815859 () Option!6402)

(assert (=> b!2868651 (= e!1815859 (Some!6401 Nil!34357))))

(declare-fun b!2868652 () Bool)

(declare-fun c!463621 () Bool)

(assert (=> b!2868652 (= c!463621 ((_ is ElementMatch!8727) (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun e!1815858 () Option!6402)

(assert (=> b!2868652 (= e!1815860 e!1815858)))

(declare-fun b!2868653 () Bool)

(assert (=> b!2868653 (= e!1815858 (Some!6401 (Cons!34357 (c!463510 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) Nil!34357)))))

(declare-fun c!463624 () Bool)

(declare-fun call!185113 () Option!6402)

(declare-fun bm!185108 () Bool)

(assert (=> bm!185108 (= call!185113 (getLanguageWitness!405 (ite c!463624 (regTwo!17967 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) (regTwo!17966 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun b!2868654 () Bool)

(declare-fun e!1815856 () Option!6402)

(declare-fun e!1815855 () Option!6402)

(assert (=> b!2868654 (= e!1815856 e!1815855)))

(declare-fun lt!1017513 () Option!6402)

(declare-fun call!185114 () Option!6402)

(assert (=> b!2868654 (= lt!1017513 call!185114)))

(declare-fun c!463618 () Bool)

(assert (=> b!2868654 (= c!463618 ((_ is Some!6401) lt!1017513))))

(declare-fun d!829149 () Bool)

(declare-fun c!463622 () Bool)

(assert (=> d!829149 (= c!463622 ((_ is EmptyExpr!8727) (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> d!829149 (= (getLanguageWitness!405 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) e!1815859)))

(declare-fun b!2868655 () Bool)

(declare-fun e!1815857 () Option!6402)

(assert (=> b!2868655 (= e!1815858 e!1815857)))

(declare-fun c!463619 () Bool)

(assert (=> b!2868655 (= c!463619 ((_ is Star!8727) (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868656 () Bool)

(assert (=> b!2868656 (= c!463624 ((_ is Union!8727) (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(assert (=> b!2868656 (= e!1815857 e!1815856)))

(declare-fun b!2868657 () Bool)

(assert (=> b!2868657 (= e!1815859 e!1815860)))

(declare-fun c!463620 () Bool)

(assert (=> b!2868657 (= c!463620 ((_ is EmptyLang!8727) (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))

(declare-fun b!2868658 () Bool)

(declare-fun e!1815853 () Option!6402)

(assert (=> b!2868658 (= e!1815853 call!185113)))

(declare-fun bm!185109 () Bool)

(assert (=> bm!185109 (= call!185114 (getLanguageWitness!405 (ite c!463624 (regOne!17967 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))) (regOne!17966 (ite c!463589 (regOne!17967 (h!39778 (exprs!3187 c!7184))) (regOne!17966 (h!39778 (exprs!3187 c!7184))))))))))

(declare-fun b!2868659 () Bool)

(declare-fun e!1815854 () Option!6402)

(assert (=> b!2868659 (= e!1815854 None!6401)))

(declare-fun b!2868660 () Bool)

(declare-fun lt!1017514 () Option!6402)

(assert (=> b!2868660 (= e!1815854 (Some!6401 (++!8163 (v!34523 lt!1017513) (v!34523 lt!1017514))))))

(declare-fun b!2868661 () Bool)

(assert (=> b!2868661 (= e!1815857 (Some!6401 Nil!34357))))

(declare-fun b!2868662 () Bool)

(assert (=> b!2868662 (= e!1815855 None!6401)))

(declare-fun b!2868663 () Bool)

(declare-fun c!463623 () Bool)

(assert (=> b!2868663 (= c!463623 ((_ is Some!6401) lt!1017514))))

(assert (=> b!2868663 (= lt!1017514 call!185113)))

(assert (=> b!2868663 (= e!1815855 e!1815854)))

(declare-fun b!2868664 () Bool)

(declare-fun lt!1017515 () Option!6402)

(assert (=> b!2868664 (= e!1815853 lt!1017515)))

(declare-fun b!2868665 () Bool)

(assert (=> b!2868665 (= e!1815856 e!1815853)))

(assert (=> b!2868665 (= lt!1017515 call!185114)))

(declare-fun c!463625 () Bool)

(assert (=> b!2868665 (= c!463625 ((_ is Some!6401) lt!1017515))))

(assert (= (and d!829149 c!463622) b!2868651))

(assert (= (and d!829149 (not c!463622)) b!2868657))

(assert (= (and b!2868657 c!463620) b!2868650))

(assert (= (and b!2868657 (not c!463620)) b!2868652))

(assert (= (and b!2868652 c!463621) b!2868653))

(assert (= (and b!2868652 (not c!463621)) b!2868655))

(assert (= (and b!2868655 c!463619) b!2868661))

(assert (= (and b!2868655 (not c!463619)) b!2868656))

(assert (= (and b!2868656 c!463624) b!2868665))

(assert (= (and b!2868656 (not c!463624)) b!2868654))

(assert (= (and b!2868665 c!463625) b!2868664))

(assert (= (and b!2868665 (not c!463625)) b!2868658))

(assert (= (and b!2868654 c!463618) b!2868663))

(assert (= (and b!2868654 (not c!463618)) b!2868662))

(assert (= (and b!2868663 c!463623) b!2868660))

(assert (= (and b!2868663 (not c!463623)) b!2868659))

(assert (= (or b!2868658 b!2868663) bm!185108))

(assert (= (or b!2868665 b!2868654) bm!185109))

(declare-fun m!3288139 () Bool)

(assert (=> bm!185108 m!3288139))

(declare-fun m!3288141 () Bool)

(assert (=> bm!185109 m!3288141))

(declare-fun m!3288143 () Bool)

(assert (=> b!2868660 m!3288143))

(assert (=> bm!185097 d!829149))

(declare-fun b!2868676 () Bool)

(declare-fun e!1815863 () Bool)

(declare-fun tp_is_empty!15057 () Bool)

(assert (=> b!2868676 (= e!1815863 tp_is_empty!15057)))

(declare-fun b!2868679 () Bool)

(declare-fun tp!923205 () Bool)

(declare-fun tp!923207 () Bool)

(assert (=> b!2868679 (= e!1815863 (and tp!923205 tp!923207))))

(assert (=> b!2868569 (= tp!923191 e!1815863)))

(declare-fun b!2868678 () Bool)

(declare-fun tp!923206 () Bool)

(assert (=> b!2868678 (= e!1815863 tp!923206)))

(declare-fun b!2868677 () Bool)

(declare-fun tp!923203 () Bool)

(declare-fun tp!923204 () Bool)

(assert (=> b!2868677 (= e!1815863 (and tp!923203 tp!923204))))

(assert (= (and b!2868569 ((_ is ElementMatch!8727) (h!39778 (exprs!3187 c!7184)))) b!2868676))

(assert (= (and b!2868569 ((_ is Concat!14048) (h!39778 (exprs!3187 c!7184)))) b!2868677))

(assert (= (and b!2868569 ((_ is Star!8727) (h!39778 (exprs!3187 c!7184)))) b!2868678))

(assert (= (and b!2868569 ((_ is Union!8727) (h!39778 (exprs!3187 c!7184)))) b!2868679))

(declare-fun b!2868680 () Bool)

(declare-fun e!1815864 () Bool)

(declare-fun tp!923208 () Bool)

(declare-fun tp!923209 () Bool)

(assert (=> b!2868680 (= e!1815864 (and tp!923208 tp!923209))))

(assert (=> b!2868569 (= tp!923192 e!1815864)))

(assert (= (and b!2868569 ((_ is Cons!34358) (t!233525 (exprs!3187 c!7184)))) b!2868680))

(declare-fun b_lambda!85965 () Bool)

(assert (= b_lambda!85963 (or d!829113 b_lambda!85965)))

(declare-fun bs!521799 () Bool)

(declare-fun d!829151 () Bool)

(assert (= bs!521799 (and d!829151 d!829113)))

(assert (=> bs!521799 (= (dynLambda!14296 lambda!106962 (h!39778 (exprs!3187 c!7184))) (validRegex!3505 (h!39778 (exprs!3187 c!7184))))))

(assert (=> bs!521799 m!3288003))

(assert (=> b!2868616 d!829151))

(check-sat (not b!2868632) (not b!2868680) (not d!829143) (not b!2868627) (not bm!185099) (not b!2868644) (not b!2868599) (not bm!185098) (not d!829127) (not b!2868628) (not b!2868660) (not b!2868631) (not d!829145) tp_is_empty!15057 (not bm!185106) (not d!829131) (not bs!521799) (not b!2868677) (not b!2868590) (not b!2868678) (not bm!185101) (not bm!185104) (not b_lambda!85965) (not b!2868617) (not bm!185107) (not d!829137) (not d!829141) (not b!2868607) (not bm!185105) (not bm!185109) (not b!2868679) (not b!2868580) (not bm!185108) (not b!2868606) (not bm!185102) (not b!2868608))
(check-sat)
