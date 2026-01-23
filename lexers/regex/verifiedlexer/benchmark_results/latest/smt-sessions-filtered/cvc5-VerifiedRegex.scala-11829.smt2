; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665432 () Bool)

(assert start!665432)

(declare-fun b!6916852 () Bool)

(declare-fun e!4163478 () Bool)

(declare-datatypes ((C!34078 0))(
  ( (C!34079 (val!26741 Int)) )
))
(declare-datatypes ((Regex!16904 0))(
  ( (ElementMatch!16904 (c!1284372 C!34078)) (Concat!25749 (regOne!34320 Regex!16904) (regTwo!34320 Regex!16904)) (EmptyExpr!16904) (Star!16904 (reg!17233 Regex!16904)) (EmptyLang!16904) (Union!16904 (regOne!34321 Regex!16904) (regTwo!34321 Regex!16904)) )
))
(declare-fun lt!2469346 () Regex!16904)

(declare-fun validRegex!8610 (Regex!16904) Bool)

(assert (=> b!6916852 (= e!4163478 (validRegex!8610 lt!2469346))))

(declare-fun b!6916853 () Bool)

(declare-fun res!2820234 () Bool)

(declare-fun e!4163479 () Bool)

(assert (=> b!6916853 (=> (not res!2820234) (not e!4163479))))

(declare-fun r2!6280 () Regex!16904)

(assert (=> b!6916853 (= res!2820234 (validRegex!8610 r2!6280))))

(declare-fun b!6916854 () Bool)

(declare-fun e!4163480 () Bool)

(declare-fun tp_is_empty!43033 () Bool)

(assert (=> b!6916854 (= e!4163480 tp_is_empty!43033)))

(declare-fun b!6916855 () Bool)

(declare-fun tp!1906383 () Bool)

(declare-fun tp!1906385 () Bool)

(assert (=> b!6916855 (= e!4163480 (and tp!1906383 tp!1906385))))

(declare-fun b!6916856 () Bool)

(declare-fun e!4163482 () Bool)

(assert (=> b!6916856 (= e!4163482 tp_is_empty!43033)))

(declare-fun b!6916857 () Bool)

(declare-fun tp!1906384 () Bool)

(declare-fun tp!1906387 () Bool)

(assert (=> b!6916857 (= e!4163482 (and tp!1906384 tp!1906387))))

(declare-fun b!6916858 () Bool)

(declare-fun e!4163477 () Bool)

(declare-fun tp!1906378 () Bool)

(declare-fun tp!1906379 () Bool)

(assert (=> b!6916858 (= e!4163477 (and tp!1906378 tp!1906379))))

(declare-fun b!6916860 () Bool)

(declare-fun tp!1906377 () Bool)

(declare-fun tp!1906375 () Bool)

(assert (=> b!6916860 (= e!4163482 (and tp!1906377 tp!1906375))))

(declare-fun b!6916861 () Bool)

(assert (=> b!6916861 (= e!4163479 (not e!4163478))))

(declare-fun res!2820235 () Bool)

(assert (=> b!6916861 (=> res!2820235 e!4163478)))

(declare-fun lt!2469349 () Bool)

(assert (=> b!6916861 (= res!2820235 (not lt!2469349))))

(declare-fun lt!2469344 () Regex!16904)

(declare-datatypes ((List!66657 0))(
  ( (Nil!66533) (Cons!66533 (h!72981 C!34078) (t!380400 List!66657)) )
))
(declare-fun s!14361 () List!66657)

(declare-fun matchR!9043 (Regex!16904 List!66657) Bool)

(declare-fun matchRSpec!3961 (Regex!16904 List!66657) Bool)

(assert (=> b!6916861 (= (matchR!9043 lt!2469344 s!14361) (matchRSpec!3961 lt!2469344 s!14361))))

(declare-datatypes ((Unit!160532 0))(
  ( (Unit!160533) )
))
(declare-fun lt!2469347 () Unit!160532)

(declare-fun mainMatchTheorem!3961 (Regex!16904 List!66657) Unit!160532)

(assert (=> b!6916861 (= lt!2469347 (mainMatchTheorem!3961 lt!2469344 s!14361))))

(declare-fun lt!2469348 () Regex!16904)

(assert (=> b!6916861 (= lt!2469349 (matchRSpec!3961 lt!2469348 s!14361))))

(assert (=> b!6916861 (= lt!2469349 (matchR!9043 lt!2469348 s!14361))))

(declare-fun lt!2469345 () Unit!160532)

(assert (=> b!6916861 (= lt!2469345 (mainMatchTheorem!3961 lt!2469348 s!14361))))

(declare-fun r1!6342 () Regex!16904)

(declare-fun r3!135 () Regex!16904)

(assert (=> b!6916861 (= lt!2469344 (Concat!25749 r1!6342 (Concat!25749 r2!6280 r3!135)))))

(assert (=> b!6916861 (= lt!2469348 (Concat!25749 lt!2469346 r3!135))))

(assert (=> b!6916861 (= lt!2469346 (Concat!25749 r1!6342 r2!6280))))

(declare-fun b!6916862 () Bool)

(declare-fun tp!1906372 () Bool)

(declare-fun tp!1906373 () Bool)

(assert (=> b!6916862 (= e!4163480 (and tp!1906372 tp!1906373))))

(declare-fun b!6916863 () Bool)

(declare-fun tp!1906380 () Bool)

(assert (=> b!6916863 (= e!4163480 tp!1906380)))

(declare-fun b!6916864 () Bool)

(declare-fun tp!1906381 () Bool)

(declare-fun tp!1906382 () Bool)

(assert (=> b!6916864 (= e!4163477 (and tp!1906381 tp!1906382))))

(declare-fun res!2820236 () Bool)

(assert (=> start!665432 (=> (not res!2820236) (not e!4163479))))

(assert (=> start!665432 (= res!2820236 (validRegex!8610 r1!6342))))

(assert (=> start!665432 e!4163479))

(assert (=> start!665432 e!4163480))

(assert (=> start!665432 e!4163477))

(assert (=> start!665432 e!4163482))

(declare-fun e!4163481 () Bool)

(assert (=> start!665432 e!4163481))

(declare-fun b!6916859 () Bool)

(assert (=> b!6916859 (= e!4163477 tp_is_empty!43033)))

(declare-fun b!6916865 () Bool)

(declare-fun tp!1906376 () Bool)

(assert (=> b!6916865 (= e!4163482 tp!1906376)))

(declare-fun b!6916866 () Bool)

(declare-fun res!2820233 () Bool)

(assert (=> b!6916866 (=> (not res!2820233) (not e!4163479))))

(assert (=> b!6916866 (= res!2820233 (validRegex!8610 r3!135))))

(declare-fun b!6916867 () Bool)

(declare-fun tp!1906386 () Bool)

(assert (=> b!6916867 (= e!4163477 tp!1906386)))

(declare-fun b!6916868 () Bool)

(declare-fun tp!1906374 () Bool)

(assert (=> b!6916868 (= e!4163481 (and tp_is_empty!43033 tp!1906374))))

(assert (= (and start!665432 res!2820236) b!6916853))

(assert (= (and b!6916853 res!2820234) b!6916866))

(assert (= (and b!6916866 res!2820233) b!6916861))

(assert (= (and b!6916861 (not res!2820235)) b!6916852))

(assert (= (and start!665432 (is-ElementMatch!16904 r1!6342)) b!6916854))

(assert (= (and start!665432 (is-Concat!25749 r1!6342)) b!6916862))

(assert (= (and start!665432 (is-Star!16904 r1!6342)) b!6916863))

(assert (= (and start!665432 (is-Union!16904 r1!6342)) b!6916855))

(assert (= (and start!665432 (is-ElementMatch!16904 r2!6280)) b!6916859))

(assert (= (and start!665432 (is-Concat!25749 r2!6280)) b!6916864))

(assert (= (and start!665432 (is-Star!16904 r2!6280)) b!6916867))

(assert (= (and start!665432 (is-Union!16904 r2!6280)) b!6916858))

(assert (= (and start!665432 (is-ElementMatch!16904 r3!135)) b!6916856))

(assert (= (and start!665432 (is-Concat!25749 r3!135)) b!6916860))

(assert (= (and start!665432 (is-Star!16904 r3!135)) b!6916865))

(assert (= (and start!665432 (is-Union!16904 r3!135)) b!6916857))

(assert (= (and start!665432 (is-Cons!66533 s!14361)) b!6916868))

(declare-fun m!7628204 () Bool)

(assert (=> start!665432 m!7628204))

(declare-fun m!7628206 () Bool)

(assert (=> b!6916866 m!7628206))

(declare-fun m!7628208 () Bool)

(assert (=> b!6916853 m!7628208))

(declare-fun m!7628210 () Bool)

(assert (=> b!6916861 m!7628210))

(declare-fun m!7628212 () Bool)

(assert (=> b!6916861 m!7628212))

(declare-fun m!7628214 () Bool)

(assert (=> b!6916861 m!7628214))

(declare-fun m!7628216 () Bool)

(assert (=> b!6916861 m!7628216))

(declare-fun m!7628218 () Bool)

(assert (=> b!6916861 m!7628218))

(declare-fun m!7628220 () Bool)

(assert (=> b!6916861 m!7628220))

(declare-fun m!7628222 () Bool)

(assert (=> b!6916852 m!7628222))

(push 1)

(assert (not b!6916863))

(assert (not b!6916852))

(assert (not b!6916858))

(assert tp_is_empty!43033)

(assert (not b!6916866))

(assert (not b!6916853))

(assert (not b!6916855))

(assert (not b!6916860))

(assert (not b!6916857))

(assert (not b!6916861))

(assert (not b!6916862))

(assert (not b!6916864))

(assert (not start!665432))

(assert (not b!6916868))

(assert (not b!6916865))

(assert (not b!6916867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6916987 () Bool)

(declare-fun e!4163553 () Bool)

(declare-fun call!628821 () Bool)

(assert (=> b!6916987 (= e!4163553 call!628821)))

(declare-fun c!1284392 () Bool)

(declare-fun bm!628816 () Bool)

(declare-fun c!1284393 () Bool)

(assert (=> bm!628816 (= call!628821 (validRegex!8610 (ite c!1284393 (reg!17233 r2!6280) (ite c!1284392 (regOne!34321 r2!6280) (regTwo!34320 r2!6280)))))))

(declare-fun bm!628817 () Bool)

(declare-fun call!628823 () Bool)

(assert (=> bm!628817 (= call!628823 (validRegex!8610 (ite c!1284392 (regTwo!34321 r2!6280) (regOne!34320 r2!6280))))))

(declare-fun d!2164022 () Bool)

(declare-fun res!2820283 () Bool)

(declare-fun e!4163555 () Bool)

(assert (=> d!2164022 (=> res!2820283 e!4163555)))

(assert (=> d!2164022 (= res!2820283 (is-ElementMatch!16904 r2!6280))))

(assert (=> d!2164022 (= (validRegex!8610 r2!6280) e!4163555)))

(declare-fun b!6916988 () Bool)

(declare-fun res!2820280 () Bool)

(declare-fun e!4163554 () Bool)

(assert (=> b!6916988 (=> res!2820280 e!4163554)))

(assert (=> b!6916988 (= res!2820280 (not (is-Concat!25749 r2!6280)))))

(declare-fun e!4163556 () Bool)

(assert (=> b!6916988 (= e!4163556 e!4163554)))

(declare-fun b!6916989 () Bool)

(declare-fun e!4163552 () Bool)

(assert (=> b!6916989 (= e!4163552 e!4163556)))

(assert (=> b!6916989 (= c!1284392 (is-Union!16904 r2!6280))))

(declare-fun b!6916990 () Bool)

(declare-fun e!4163551 () Bool)

(declare-fun call!628822 () Bool)

(assert (=> b!6916990 (= e!4163551 call!628822)))

(declare-fun b!6916991 () Bool)

(assert (=> b!6916991 (= e!4163554 e!4163551)))

(declare-fun res!2820284 () Bool)

(assert (=> b!6916991 (=> (not res!2820284) (not e!4163551))))

(assert (=> b!6916991 (= res!2820284 call!628823)))

(declare-fun b!6916992 () Bool)

(assert (=> b!6916992 (= e!4163555 e!4163552)))

(assert (=> b!6916992 (= c!1284393 (is-Star!16904 r2!6280))))

(declare-fun bm!628818 () Bool)

(assert (=> bm!628818 (= call!628822 call!628821)))

(declare-fun b!6916993 () Bool)

(declare-fun e!4163550 () Bool)

(assert (=> b!6916993 (= e!4163550 call!628823)))

(declare-fun b!6916994 () Bool)

(declare-fun res!2820282 () Bool)

(assert (=> b!6916994 (=> (not res!2820282) (not e!4163550))))

(assert (=> b!6916994 (= res!2820282 call!628822)))

(assert (=> b!6916994 (= e!4163556 e!4163550)))

(declare-fun b!6916995 () Bool)

(assert (=> b!6916995 (= e!4163552 e!4163553)))

(declare-fun res!2820281 () Bool)

(declare-fun nullable!6739 (Regex!16904) Bool)

(assert (=> b!6916995 (= res!2820281 (not (nullable!6739 (reg!17233 r2!6280))))))

(assert (=> b!6916995 (=> (not res!2820281) (not e!4163553))))

(assert (= (and d!2164022 (not res!2820283)) b!6916992))

(assert (= (and b!6916992 c!1284393) b!6916995))

(assert (= (and b!6916992 (not c!1284393)) b!6916989))

(assert (= (and b!6916995 res!2820281) b!6916987))

(assert (= (and b!6916989 c!1284392) b!6916994))

(assert (= (and b!6916989 (not c!1284392)) b!6916988))

(assert (= (and b!6916994 res!2820282) b!6916993))

(assert (= (and b!6916988 (not res!2820280)) b!6916991))

(assert (= (and b!6916991 res!2820284) b!6916990))

(assert (= (or b!6916994 b!6916990) bm!628818))

(assert (= (or b!6916993 b!6916991) bm!628817))

(assert (= (or b!6916987 bm!628818) bm!628816))

(declare-fun m!7628250 () Bool)

(assert (=> bm!628816 m!7628250))

(declare-fun m!7628252 () Bool)

(assert (=> bm!628817 m!7628252))

(declare-fun m!7628254 () Bool)

(assert (=> b!6916995 m!7628254))

(assert (=> b!6916853 d!2164022))

(declare-fun b!6916996 () Bool)

(declare-fun e!4163560 () Bool)

(declare-fun call!628824 () Bool)

(assert (=> b!6916996 (= e!4163560 call!628824)))

(declare-fun bm!628819 () Bool)

(declare-fun c!1284394 () Bool)

(declare-fun c!1284395 () Bool)

(assert (=> bm!628819 (= call!628824 (validRegex!8610 (ite c!1284395 (reg!17233 r1!6342) (ite c!1284394 (regOne!34321 r1!6342) (regTwo!34320 r1!6342)))))))

(declare-fun bm!628820 () Bool)

(declare-fun call!628826 () Bool)

(assert (=> bm!628820 (= call!628826 (validRegex!8610 (ite c!1284394 (regTwo!34321 r1!6342) (regOne!34320 r1!6342))))))

(declare-fun d!2164026 () Bool)

(declare-fun res!2820288 () Bool)

(declare-fun e!4163562 () Bool)

(assert (=> d!2164026 (=> res!2820288 e!4163562)))

(assert (=> d!2164026 (= res!2820288 (is-ElementMatch!16904 r1!6342))))

(assert (=> d!2164026 (= (validRegex!8610 r1!6342) e!4163562)))

(declare-fun b!6916997 () Bool)

(declare-fun res!2820285 () Bool)

(declare-fun e!4163561 () Bool)

(assert (=> b!6916997 (=> res!2820285 e!4163561)))

(assert (=> b!6916997 (= res!2820285 (not (is-Concat!25749 r1!6342)))))

(declare-fun e!4163563 () Bool)

(assert (=> b!6916997 (= e!4163563 e!4163561)))

(declare-fun b!6916998 () Bool)

(declare-fun e!4163559 () Bool)

(assert (=> b!6916998 (= e!4163559 e!4163563)))

(assert (=> b!6916998 (= c!1284394 (is-Union!16904 r1!6342))))

(declare-fun b!6916999 () Bool)

(declare-fun e!4163558 () Bool)

(declare-fun call!628825 () Bool)

(assert (=> b!6916999 (= e!4163558 call!628825)))

(declare-fun b!6917000 () Bool)

(assert (=> b!6917000 (= e!4163561 e!4163558)))

(declare-fun res!2820289 () Bool)

(assert (=> b!6917000 (=> (not res!2820289) (not e!4163558))))

(assert (=> b!6917000 (= res!2820289 call!628826)))

(declare-fun b!6917001 () Bool)

(assert (=> b!6917001 (= e!4163562 e!4163559)))

(assert (=> b!6917001 (= c!1284395 (is-Star!16904 r1!6342))))

(declare-fun bm!628821 () Bool)

(assert (=> bm!628821 (= call!628825 call!628824)))

(declare-fun b!6917002 () Bool)

(declare-fun e!4163557 () Bool)

(assert (=> b!6917002 (= e!4163557 call!628826)))

(declare-fun b!6917003 () Bool)

(declare-fun res!2820287 () Bool)

(assert (=> b!6917003 (=> (not res!2820287) (not e!4163557))))

(assert (=> b!6917003 (= res!2820287 call!628825)))

(assert (=> b!6917003 (= e!4163563 e!4163557)))

(declare-fun b!6917004 () Bool)

(assert (=> b!6917004 (= e!4163559 e!4163560)))

(declare-fun res!2820286 () Bool)

(assert (=> b!6917004 (= res!2820286 (not (nullable!6739 (reg!17233 r1!6342))))))

(assert (=> b!6917004 (=> (not res!2820286) (not e!4163560))))

(assert (= (and d!2164026 (not res!2820288)) b!6917001))

(assert (= (and b!6917001 c!1284395) b!6917004))

(assert (= (and b!6917001 (not c!1284395)) b!6916998))

(assert (= (and b!6917004 res!2820286) b!6916996))

(assert (= (and b!6916998 c!1284394) b!6917003))

(assert (= (and b!6916998 (not c!1284394)) b!6916997))

(assert (= (and b!6917003 res!2820287) b!6917002))

(assert (= (and b!6916997 (not res!2820285)) b!6917000))

(assert (= (and b!6917000 res!2820289) b!6916999))

(assert (= (or b!6917003 b!6916999) bm!628821))

(assert (= (or b!6917002 b!6917000) bm!628820))

(assert (= (or b!6916996 bm!628821) bm!628819))

(declare-fun m!7628256 () Bool)

(assert (=> bm!628819 m!7628256))

(declare-fun m!7628258 () Bool)

(assert (=> bm!628820 m!7628258))

(declare-fun m!7628260 () Bool)

(assert (=> b!6917004 m!7628260))

(assert (=> start!665432 d!2164026))

(declare-fun b!6917005 () Bool)

(declare-fun e!4163567 () Bool)

(declare-fun call!628827 () Bool)

(assert (=> b!6917005 (= e!4163567 call!628827)))

(declare-fun bm!628822 () Bool)

(declare-fun c!1284397 () Bool)

(declare-fun c!1284396 () Bool)

(assert (=> bm!628822 (= call!628827 (validRegex!8610 (ite c!1284397 (reg!17233 lt!2469346) (ite c!1284396 (regOne!34321 lt!2469346) (regTwo!34320 lt!2469346)))))))

(declare-fun bm!628823 () Bool)

(declare-fun call!628829 () Bool)

(assert (=> bm!628823 (= call!628829 (validRegex!8610 (ite c!1284396 (regTwo!34321 lt!2469346) (regOne!34320 lt!2469346))))))

(declare-fun d!2164028 () Bool)

(declare-fun res!2820293 () Bool)

(declare-fun e!4163569 () Bool)

(assert (=> d!2164028 (=> res!2820293 e!4163569)))

(assert (=> d!2164028 (= res!2820293 (is-ElementMatch!16904 lt!2469346))))

(assert (=> d!2164028 (= (validRegex!8610 lt!2469346) e!4163569)))

(declare-fun b!6917006 () Bool)

(declare-fun res!2820290 () Bool)

(declare-fun e!4163568 () Bool)

(assert (=> b!6917006 (=> res!2820290 e!4163568)))

(assert (=> b!6917006 (= res!2820290 (not (is-Concat!25749 lt!2469346)))))

(declare-fun e!4163570 () Bool)

(assert (=> b!6917006 (= e!4163570 e!4163568)))

(declare-fun b!6917007 () Bool)

(declare-fun e!4163566 () Bool)

(assert (=> b!6917007 (= e!4163566 e!4163570)))

(assert (=> b!6917007 (= c!1284396 (is-Union!16904 lt!2469346))))

(declare-fun b!6917008 () Bool)

(declare-fun e!4163565 () Bool)

(declare-fun call!628828 () Bool)

(assert (=> b!6917008 (= e!4163565 call!628828)))

(declare-fun b!6917009 () Bool)

(assert (=> b!6917009 (= e!4163568 e!4163565)))

(declare-fun res!2820294 () Bool)

(assert (=> b!6917009 (=> (not res!2820294) (not e!4163565))))

(assert (=> b!6917009 (= res!2820294 call!628829)))

(declare-fun b!6917010 () Bool)

(assert (=> b!6917010 (= e!4163569 e!4163566)))

(assert (=> b!6917010 (= c!1284397 (is-Star!16904 lt!2469346))))

(declare-fun bm!628824 () Bool)

(assert (=> bm!628824 (= call!628828 call!628827)))

(declare-fun b!6917011 () Bool)

(declare-fun e!4163564 () Bool)

(assert (=> b!6917011 (= e!4163564 call!628829)))

(declare-fun b!6917012 () Bool)

(declare-fun res!2820292 () Bool)

(assert (=> b!6917012 (=> (not res!2820292) (not e!4163564))))

(assert (=> b!6917012 (= res!2820292 call!628828)))

(assert (=> b!6917012 (= e!4163570 e!4163564)))

(declare-fun b!6917013 () Bool)

(assert (=> b!6917013 (= e!4163566 e!4163567)))

(declare-fun res!2820291 () Bool)

(assert (=> b!6917013 (= res!2820291 (not (nullable!6739 (reg!17233 lt!2469346))))))

(assert (=> b!6917013 (=> (not res!2820291) (not e!4163567))))

(assert (= (and d!2164028 (not res!2820293)) b!6917010))

(assert (= (and b!6917010 c!1284397) b!6917013))

(assert (= (and b!6917010 (not c!1284397)) b!6917007))

(assert (= (and b!6917013 res!2820291) b!6917005))

(assert (= (and b!6917007 c!1284396) b!6917012))

(assert (= (and b!6917007 (not c!1284396)) b!6917006))

(assert (= (and b!6917012 res!2820292) b!6917011))

(assert (= (and b!6917006 (not res!2820290)) b!6917009))

(assert (= (and b!6917009 res!2820294) b!6917008))

(assert (= (or b!6917012 b!6917008) bm!628824))

(assert (= (or b!6917011 b!6917009) bm!628823))

(assert (= (or b!6917005 bm!628824) bm!628822))

(declare-fun m!7628262 () Bool)

(assert (=> bm!628822 m!7628262))

(declare-fun m!7628264 () Bool)

(assert (=> bm!628823 m!7628264))

(declare-fun m!7628266 () Bool)

(assert (=> b!6917013 m!7628266))

(assert (=> b!6916852 d!2164028))

(declare-fun b!6917054 () Bool)

(assert (=> b!6917054 true))

(assert (=> b!6917054 true))

(declare-fun bs!1845912 () Bool)

(declare-fun b!6917060 () Bool)

(assert (= bs!1845912 (and b!6917060 b!6917054)))

(declare-fun lambda!393048 () Int)

(declare-fun lambda!393045 () Int)

(assert (=> bs!1845912 (not (= lambda!393048 lambda!393045))))

(assert (=> b!6917060 true))

(assert (=> b!6917060 true))

(declare-fun d!2164030 () Bool)

(declare-fun c!1284406 () Bool)

(assert (=> d!2164030 (= c!1284406 (is-EmptyExpr!16904 lt!2469348))))

(declare-fun e!4163593 () Bool)

(assert (=> d!2164030 (= (matchRSpec!3961 lt!2469348 s!14361) e!4163593)))

(declare-fun b!6917052 () Bool)

(declare-fun e!4163595 () Bool)

(declare-fun e!4163594 () Bool)

(assert (=> b!6917052 (= e!4163595 e!4163594)))

(declare-fun c!1284408 () Bool)

(assert (=> b!6917052 (= c!1284408 (is-Star!16904 lt!2469348))))

(declare-fun b!6917053 () Bool)

(declare-fun e!4163592 () Bool)

(assert (=> b!6917053 (= e!4163593 e!4163592)))

(declare-fun res!2820317 () Bool)

(assert (=> b!6917053 (= res!2820317 (not (is-EmptyLang!16904 lt!2469348)))))

(assert (=> b!6917053 (=> (not res!2820317) (not e!4163592))))

(declare-fun e!4163591 () Bool)

(declare-fun call!628834 () Bool)

(assert (=> b!6917054 (= e!4163591 call!628834)))

(declare-fun bm!628829 () Bool)

(declare-fun Exists!3907 (Int) Bool)

(assert (=> bm!628829 (= call!628834 (Exists!3907 (ite c!1284408 lambda!393045 lambda!393048)))))

(declare-fun b!6917055 () Bool)

(declare-fun res!2820319 () Bool)

(assert (=> b!6917055 (=> res!2820319 e!4163591)))

(declare-fun call!628835 () Bool)

(assert (=> b!6917055 (= res!2820319 call!628835)))

(assert (=> b!6917055 (= e!4163594 e!4163591)))

(declare-fun b!6917056 () Bool)

(declare-fun e!4163596 () Bool)

(assert (=> b!6917056 (= e!4163596 (= s!14361 (Cons!66533 (c!1284372 lt!2469348) Nil!66533)))))

(declare-fun bm!628830 () Bool)

(declare-fun isEmpty!38783 (List!66657) Bool)

(assert (=> bm!628830 (= call!628835 (isEmpty!38783 s!14361))))

(declare-fun b!6917057 () Bool)

(declare-fun c!1284407 () Bool)

(assert (=> b!6917057 (= c!1284407 (is-ElementMatch!16904 lt!2469348))))

(assert (=> b!6917057 (= e!4163592 e!4163596)))

(declare-fun b!6917058 () Bool)

(assert (=> b!6917058 (= e!4163593 call!628835)))

(declare-fun b!6917059 () Bool)

(declare-fun c!1284409 () Bool)

(assert (=> b!6917059 (= c!1284409 (is-Union!16904 lt!2469348))))

(assert (=> b!6917059 (= e!4163596 e!4163595)))

(assert (=> b!6917060 (= e!4163594 call!628834)))

(declare-fun b!6917061 () Bool)

(declare-fun e!4163597 () Bool)

(assert (=> b!6917061 (= e!4163595 e!4163597)))

(declare-fun res!2820318 () Bool)

(assert (=> b!6917061 (= res!2820318 (matchRSpec!3961 (regOne!34321 lt!2469348) s!14361))))

(assert (=> b!6917061 (=> res!2820318 e!4163597)))

(declare-fun b!6917062 () Bool)

(assert (=> b!6917062 (= e!4163597 (matchRSpec!3961 (regTwo!34321 lt!2469348) s!14361))))

(assert (= (and d!2164030 c!1284406) b!6917058))

(assert (= (and d!2164030 (not c!1284406)) b!6917053))

(assert (= (and b!6917053 res!2820317) b!6917057))

(assert (= (and b!6917057 c!1284407) b!6917056))

(assert (= (and b!6917057 (not c!1284407)) b!6917059))

(assert (= (and b!6917059 c!1284409) b!6917061))

(assert (= (and b!6917059 (not c!1284409)) b!6917052))

(assert (= (and b!6917061 (not res!2820318)) b!6917062))

(assert (= (and b!6917052 c!1284408) b!6917055))

(assert (= (and b!6917052 (not c!1284408)) b!6917060))

(assert (= (and b!6917055 (not res!2820319)) b!6917054))

(assert (= (or b!6917054 b!6917060) bm!628829))

(assert (= (or b!6917058 b!6917055) bm!628830))

(declare-fun m!7628268 () Bool)

(assert (=> bm!628829 m!7628268))

(declare-fun m!7628270 () Bool)

(assert (=> bm!628830 m!7628270))

(declare-fun m!7628272 () Bool)

(assert (=> b!6917061 m!7628272))

(declare-fun m!7628274 () Bool)

(assert (=> b!6917062 m!7628274))

(assert (=> b!6916861 d!2164030))

(declare-fun d!2164032 () Bool)

(assert (=> d!2164032 (= (matchR!9043 lt!2469348 s!14361) (matchRSpec!3961 lt!2469348 s!14361))))

(declare-fun lt!2469370 () Unit!160532)

(declare-fun choose!51502 (Regex!16904 List!66657) Unit!160532)

(assert (=> d!2164032 (= lt!2469370 (choose!51502 lt!2469348 s!14361))))

(assert (=> d!2164032 (validRegex!8610 lt!2469348)))

(assert (=> d!2164032 (= (mainMatchTheorem!3961 lt!2469348 s!14361) lt!2469370)))

(declare-fun bs!1845913 () Bool)

(assert (= bs!1845913 d!2164032))

(assert (=> bs!1845913 m!7628212))

(assert (=> bs!1845913 m!7628214))

(declare-fun m!7628276 () Bool)

(assert (=> bs!1845913 m!7628276))

(declare-fun m!7628278 () Bool)

(assert (=> bs!1845913 m!7628278))

(assert (=> b!6916861 d!2164032))

(declare-fun bs!1845914 () Bool)

(declare-fun b!6917084 () Bool)

(assert (= bs!1845914 (and b!6917084 b!6917054)))

(declare-fun lambda!393050 () Int)

(assert (=> bs!1845914 (= (and (= (reg!17233 lt!2469344) (reg!17233 lt!2469348)) (= lt!2469344 lt!2469348)) (= lambda!393050 lambda!393045))))

(declare-fun bs!1845915 () Bool)

(assert (= bs!1845915 (and b!6917084 b!6917060)))

(assert (=> bs!1845915 (not (= lambda!393050 lambda!393048))))

(assert (=> b!6917084 true))

(assert (=> b!6917084 true))

(declare-fun bs!1845917 () Bool)

(declare-fun b!6917090 () Bool)

(assert (= bs!1845917 (and b!6917090 b!6917054)))

(declare-fun lambda!393052 () Int)

(assert (=> bs!1845917 (not (= lambda!393052 lambda!393045))))

(declare-fun bs!1845918 () Bool)

(assert (= bs!1845918 (and b!6917090 b!6917060)))

(assert (=> bs!1845918 (= (and (= (regOne!34320 lt!2469344) (regOne!34320 lt!2469348)) (= (regTwo!34320 lt!2469344) (regTwo!34320 lt!2469348))) (= lambda!393052 lambda!393048))))

(declare-fun bs!1845919 () Bool)

(assert (= bs!1845919 (and b!6917090 b!6917084)))

(assert (=> bs!1845919 (not (= lambda!393052 lambda!393050))))

(assert (=> b!6917090 true))

(assert (=> b!6917090 true))

(declare-fun d!2164034 () Bool)

(declare-fun c!1284414 () Bool)

(assert (=> d!2164034 (= c!1284414 (is-EmptyExpr!16904 lt!2469344))))

(declare-fun e!4163609 () Bool)

(assert (=> d!2164034 (= (matchRSpec!3961 lt!2469344 s!14361) e!4163609)))

(declare-fun b!6917082 () Bool)

(declare-fun e!4163611 () Bool)

(declare-fun e!4163610 () Bool)

(assert (=> b!6917082 (= e!4163611 e!4163610)))

(declare-fun c!1284416 () Bool)

(assert (=> b!6917082 (= c!1284416 (is-Star!16904 lt!2469344))))

(declare-fun b!6917083 () Bool)

(declare-fun e!4163608 () Bool)

(assert (=> b!6917083 (= e!4163609 e!4163608)))

(declare-fun res!2820327 () Bool)

(assert (=> b!6917083 (= res!2820327 (not (is-EmptyLang!16904 lt!2469344)))))

(assert (=> b!6917083 (=> (not res!2820327) (not e!4163608))))

(declare-fun e!4163607 () Bool)

(declare-fun call!628842 () Bool)

(assert (=> b!6917084 (= e!4163607 call!628842)))

(declare-fun bm!628837 () Bool)

(assert (=> bm!628837 (= call!628842 (Exists!3907 (ite c!1284416 lambda!393050 lambda!393052)))))

(declare-fun b!6917085 () Bool)

(declare-fun res!2820329 () Bool)

(assert (=> b!6917085 (=> res!2820329 e!4163607)))

(declare-fun call!628843 () Bool)

(assert (=> b!6917085 (= res!2820329 call!628843)))

(assert (=> b!6917085 (= e!4163610 e!4163607)))

(declare-fun b!6917086 () Bool)

(declare-fun e!4163612 () Bool)

(assert (=> b!6917086 (= e!4163612 (= s!14361 (Cons!66533 (c!1284372 lt!2469344) Nil!66533)))))

(declare-fun bm!628838 () Bool)

(assert (=> bm!628838 (= call!628843 (isEmpty!38783 s!14361))))

(declare-fun b!6917087 () Bool)

(declare-fun c!1284415 () Bool)

(assert (=> b!6917087 (= c!1284415 (is-ElementMatch!16904 lt!2469344))))

(assert (=> b!6917087 (= e!4163608 e!4163612)))

(declare-fun b!6917088 () Bool)

(assert (=> b!6917088 (= e!4163609 call!628843)))

(declare-fun b!6917089 () Bool)

(declare-fun c!1284417 () Bool)

(assert (=> b!6917089 (= c!1284417 (is-Union!16904 lt!2469344))))

(assert (=> b!6917089 (= e!4163612 e!4163611)))

(assert (=> b!6917090 (= e!4163610 call!628842)))

(declare-fun b!6917091 () Bool)

(declare-fun e!4163613 () Bool)

(assert (=> b!6917091 (= e!4163611 e!4163613)))

(declare-fun res!2820328 () Bool)

(assert (=> b!6917091 (= res!2820328 (matchRSpec!3961 (regOne!34321 lt!2469344) s!14361))))

(assert (=> b!6917091 (=> res!2820328 e!4163613)))

(declare-fun b!6917092 () Bool)

(assert (=> b!6917092 (= e!4163613 (matchRSpec!3961 (regTwo!34321 lt!2469344) s!14361))))

(assert (= (and d!2164034 c!1284414) b!6917088))

(assert (= (and d!2164034 (not c!1284414)) b!6917083))

(assert (= (and b!6917083 res!2820327) b!6917087))

(assert (= (and b!6917087 c!1284415) b!6917086))

(assert (= (and b!6917087 (not c!1284415)) b!6917089))

(assert (= (and b!6917089 c!1284417) b!6917091))

(assert (= (and b!6917089 (not c!1284417)) b!6917082))

(assert (= (and b!6917091 (not res!2820328)) b!6917092))

(assert (= (and b!6917082 c!1284416) b!6917085))

(assert (= (and b!6917082 (not c!1284416)) b!6917090))

(assert (= (and b!6917085 (not res!2820329)) b!6917084))

(assert (= (or b!6917084 b!6917090) bm!628837))

(assert (= (or b!6917088 b!6917085) bm!628838))

(declare-fun m!7628288 () Bool)

(assert (=> bm!628837 m!7628288))

(assert (=> bm!628838 m!7628270))

(declare-fun m!7628290 () Bool)

(assert (=> b!6917091 m!7628290))

(declare-fun m!7628292 () Bool)

(assert (=> b!6917092 m!7628292))

(assert (=> b!6916861 d!2164034))

(declare-fun b!6917153 () Bool)

(declare-fun e!4163648 () Bool)

(declare-fun e!4163644 () Bool)

(assert (=> b!6917153 (= e!4163648 e!4163644)))

(declare-fun c!1284432 () Bool)

(assert (=> b!6917153 (= c!1284432 (is-EmptyLang!16904 lt!2469348))))

(declare-fun d!2164038 () Bool)

(assert (=> d!2164038 e!4163648))

(declare-fun c!1284430 () Bool)

(assert (=> d!2164038 (= c!1284430 (is-EmptyExpr!16904 lt!2469348))))

(declare-fun lt!2469375 () Bool)

(declare-fun e!4163643 () Bool)

(assert (=> d!2164038 (= lt!2469375 e!4163643)))

(declare-fun c!1284431 () Bool)

(assert (=> d!2164038 (= c!1284431 (isEmpty!38783 s!14361))))

(assert (=> d!2164038 (validRegex!8610 lt!2469348)))

(assert (=> d!2164038 (= (matchR!9043 lt!2469348 s!14361) lt!2469375)))

(declare-fun bm!628843 () Bool)

(declare-fun call!628848 () Bool)

(assert (=> bm!628843 (= call!628848 (isEmpty!38783 s!14361))))

(declare-fun b!6917154 () Bool)

(assert (=> b!6917154 (= e!4163643 (nullable!6739 lt!2469348))))

(declare-fun b!6917155 () Bool)

(assert (=> b!6917155 (= e!4163648 (= lt!2469375 call!628848))))

(declare-fun b!6917156 () Bool)

(declare-fun e!4163647 () Bool)

(declare-fun head!13868 (List!66657) C!34078)

(assert (=> b!6917156 (= e!4163647 (not (= (head!13868 s!14361) (c!1284372 lt!2469348))))))

(declare-fun b!6917157 () Bool)

(assert (=> b!6917157 (= e!4163644 (not lt!2469375))))

(declare-fun b!6917158 () Bool)

(declare-fun res!2820362 () Bool)

(declare-fun e!4163646 () Bool)

(assert (=> b!6917158 (=> (not res!2820362) (not e!4163646))))

(declare-fun tail!12920 (List!66657) List!66657)

(assert (=> b!6917158 (= res!2820362 (isEmpty!38783 (tail!12920 s!14361)))))

(declare-fun b!6917159 () Bool)

(assert (=> b!6917159 (= e!4163646 (= (head!13868 s!14361) (c!1284372 lt!2469348)))))

(declare-fun b!6917160 () Bool)

(declare-fun res!2820367 () Bool)

(declare-fun e!4163645 () Bool)

(assert (=> b!6917160 (=> res!2820367 e!4163645)))

(assert (=> b!6917160 (= res!2820367 (not (is-ElementMatch!16904 lt!2469348)))))

(assert (=> b!6917160 (= e!4163644 e!4163645)))

(declare-fun b!6917161 () Bool)

(declare-fun e!4163642 () Bool)

(assert (=> b!6917161 (= e!4163642 e!4163647)))

(declare-fun res!2820366 () Bool)

(assert (=> b!6917161 (=> res!2820366 e!4163647)))

(assert (=> b!6917161 (= res!2820366 call!628848)))

(declare-fun b!6917162 () Bool)

(declare-fun res!2820364 () Bool)

(assert (=> b!6917162 (=> res!2820364 e!4163647)))

(assert (=> b!6917162 (= res!2820364 (not (isEmpty!38783 (tail!12920 s!14361))))))

(declare-fun b!6917163 () Bool)

(declare-fun derivativeStep!5415 (Regex!16904 C!34078) Regex!16904)

(assert (=> b!6917163 (= e!4163643 (matchR!9043 (derivativeStep!5415 lt!2469348 (head!13868 s!14361)) (tail!12920 s!14361)))))

(declare-fun b!6917164 () Bool)

(declare-fun res!2820363 () Bool)

(assert (=> b!6917164 (=> (not res!2820363) (not e!4163646))))

(assert (=> b!6917164 (= res!2820363 (not call!628848))))

(declare-fun b!6917165 () Bool)

(declare-fun res!2820369 () Bool)

(assert (=> b!6917165 (=> res!2820369 e!4163645)))

(assert (=> b!6917165 (= res!2820369 e!4163646)))

(declare-fun res!2820368 () Bool)

(assert (=> b!6917165 (=> (not res!2820368) (not e!4163646))))

(assert (=> b!6917165 (= res!2820368 lt!2469375)))

(declare-fun b!6917166 () Bool)

(assert (=> b!6917166 (= e!4163645 e!4163642)))

(declare-fun res!2820365 () Bool)

(assert (=> b!6917166 (=> (not res!2820365) (not e!4163642))))

(assert (=> b!6917166 (= res!2820365 (not lt!2469375))))

(assert (= (and d!2164038 c!1284431) b!6917154))

(assert (= (and d!2164038 (not c!1284431)) b!6917163))

(assert (= (and d!2164038 c!1284430) b!6917155))

(assert (= (and d!2164038 (not c!1284430)) b!6917153))

(assert (= (and b!6917153 c!1284432) b!6917157))

(assert (= (and b!6917153 (not c!1284432)) b!6917160))

(assert (= (and b!6917160 (not res!2820367)) b!6917165))

(assert (= (and b!6917165 res!2820368) b!6917164))

(assert (= (and b!6917164 res!2820363) b!6917158))

(assert (= (and b!6917158 res!2820362) b!6917159))

(assert (= (and b!6917165 (not res!2820369)) b!6917166))

(assert (= (and b!6917166 res!2820365) b!6917161))

(assert (= (and b!6917161 (not res!2820366)) b!6917162))

(assert (= (and b!6917162 (not res!2820364)) b!6917156))

(assert (= (or b!6917155 b!6917161 b!6917164) bm!628843))

(assert (=> bm!628843 m!7628270))

(declare-fun m!7628294 () Bool)

(assert (=> b!6917158 m!7628294))

(assert (=> b!6917158 m!7628294))

(declare-fun m!7628296 () Bool)

(assert (=> b!6917158 m!7628296))

(declare-fun m!7628298 () Bool)

(assert (=> b!6917156 m!7628298))

(assert (=> b!6917163 m!7628298))

(assert (=> b!6917163 m!7628298))

(declare-fun m!7628300 () Bool)

(assert (=> b!6917163 m!7628300))

(assert (=> b!6917163 m!7628294))

(assert (=> b!6917163 m!7628300))

(assert (=> b!6917163 m!7628294))

(declare-fun m!7628302 () Bool)

(assert (=> b!6917163 m!7628302))

(assert (=> b!6917159 m!7628298))

(declare-fun m!7628304 () Bool)

(assert (=> b!6917154 m!7628304))

(assert (=> b!6917162 m!7628294))

(assert (=> b!6917162 m!7628294))

(assert (=> b!6917162 m!7628296))

(assert (=> d!2164038 m!7628270))

(assert (=> d!2164038 m!7628278))

(assert (=> b!6916861 d!2164038))

(declare-fun d!2164040 () Bool)

(assert (=> d!2164040 (= (matchR!9043 lt!2469344 s!14361) (matchRSpec!3961 lt!2469344 s!14361))))

(declare-fun lt!2469377 () Unit!160532)

(assert (=> d!2164040 (= lt!2469377 (choose!51502 lt!2469344 s!14361))))

(assert (=> d!2164040 (validRegex!8610 lt!2469344)))

(assert (=> d!2164040 (= (mainMatchTheorem!3961 lt!2469344 s!14361) lt!2469377)))

(declare-fun bs!1845920 () Bool)

(assert (= bs!1845920 d!2164040))

(assert (=> bs!1845920 m!7628218))

(assert (=> bs!1845920 m!7628216))

(declare-fun m!7628316 () Bool)

(assert (=> bs!1845920 m!7628316))

(declare-fun m!7628320 () Bool)

(assert (=> bs!1845920 m!7628320))

(assert (=> b!6916861 d!2164040))

(declare-fun b!6917181 () Bool)

(declare-fun e!4163662 () Bool)

(declare-fun e!4163658 () Bool)

(assert (=> b!6917181 (= e!4163662 e!4163658)))

(declare-fun c!1284438 () Bool)

(assert (=> b!6917181 (= c!1284438 (is-EmptyLang!16904 lt!2469344))))

(declare-fun d!2164042 () Bool)

(assert (=> d!2164042 e!4163662))

(declare-fun c!1284436 () Bool)

(assert (=> d!2164042 (= c!1284436 (is-EmptyExpr!16904 lt!2469344))))

(declare-fun lt!2469378 () Bool)

(declare-fun e!4163657 () Bool)

(assert (=> d!2164042 (= lt!2469378 e!4163657)))

(declare-fun c!1284437 () Bool)

(assert (=> d!2164042 (= c!1284437 (isEmpty!38783 s!14361))))

(assert (=> d!2164042 (validRegex!8610 lt!2469344)))

(assert (=> d!2164042 (= (matchR!9043 lt!2469344 s!14361) lt!2469378)))

(declare-fun bm!628845 () Bool)

(declare-fun call!628850 () Bool)

(assert (=> bm!628845 (= call!628850 (isEmpty!38783 s!14361))))

(declare-fun b!6917182 () Bool)

(assert (=> b!6917182 (= e!4163657 (nullable!6739 lt!2469344))))

(declare-fun b!6917183 () Bool)

(assert (=> b!6917183 (= e!4163662 (= lt!2469378 call!628850))))

(declare-fun b!6917184 () Bool)

(declare-fun e!4163661 () Bool)

(assert (=> b!6917184 (= e!4163661 (not (= (head!13868 s!14361) (c!1284372 lt!2469344))))))

(declare-fun b!6917185 () Bool)

(assert (=> b!6917185 (= e!4163658 (not lt!2469378))))

(declare-fun b!6917186 () Bool)

(declare-fun res!2820378 () Bool)

(declare-fun e!4163660 () Bool)

(assert (=> b!6917186 (=> (not res!2820378) (not e!4163660))))

(assert (=> b!6917186 (= res!2820378 (isEmpty!38783 (tail!12920 s!14361)))))

(declare-fun b!6917187 () Bool)

(assert (=> b!6917187 (= e!4163660 (= (head!13868 s!14361) (c!1284372 lt!2469344)))))

(declare-fun b!6917188 () Bool)

(declare-fun res!2820383 () Bool)

(declare-fun e!4163659 () Bool)

(assert (=> b!6917188 (=> res!2820383 e!4163659)))

(assert (=> b!6917188 (= res!2820383 (not (is-ElementMatch!16904 lt!2469344)))))

(assert (=> b!6917188 (= e!4163658 e!4163659)))

(declare-fun b!6917189 () Bool)

(declare-fun e!4163656 () Bool)

(assert (=> b!6917189 (= e!4163656 e!4163661)))

(declare-fun res!2820382 () Bool)

(assert (=> b!6917189 (=> res!2820382 e!4163661)))

(assert (=> b!6917189 (= res!2820382 call!628850)))

(declare-fun b!6917190 () Bool)

(declare-fun res!2820380 () Bool)

(assert (=> b!6917190 (=> res!2820380 e!4163661)))

(assert (=> b!6917190 (= res!2820380 (not (isEmpty!38783 (tail!12920 s!14361))))))

(declare-fun b!6917191 () Bool)

(assert (=> b!6917191 (= e!4163657 (matchR!9043 (derivativeStep!5415 lt!2469344 (head!13868 s!14361)) (tail!12920 s!14361)))))

(declare-fun b!6917192 () Bool)

(declare-fun res!2820379 () Bool)

(assert (=> b!6917192 (=> (not res!2820379) (not e!4163660))))

(assert (=> b!6917192 (= res!2820379 (not call!628850))))

(declare-fun b!6917193 () Bool)

(declare-fun res!2820385 () Bool)

(assert (=> b!6917193 (=> res!2820385 e!4163659)))

(assert (=> b!6917193 (= res!2820385 e!4163660)))

(declare-fun res!2820384 () Bool)

(assert (=> b!6917193 (=> (not res!2820384) (not e!4163660))))

(assert (=> b!6917193 (= res!2820384 lt!2469378)))

(declare-fun b!6917194 () Bool)

(assert (=> b!6917194 (= e!4163659 e!4163656)))

(declare-fun res!2820381 () Bool)

(assert (=> b!6917194 (=> (not res!2820381) (not e!4163656))))

(assert (=> b!6917194 (= res!2820381 (not lt!2469378))))

(assert (= (and d!2164042 c!1284437) b!6917182))

(assert (= (and d!2164042 (not c!1284437)) b!6917191))

(assert (= (and d!2164042 c!1284436) b!6917183))

(assert (= (and d!2164042 (not c!1284436)) b!6917181))

(assert (= (and b!6917181 c!1284438) b!6917185))

(assert (= (and b!6917181 (not c!1284438)) b!6917188))

(assert (= (and b!6917188 (not res!2820383)) b!6917193))

(assert (= (and b!6917193 res!2820384) b!6917192))

(assert (= (and b!6917192 res!2820379) b!6917186))

(assert (= (and b!6917186 res!2820378) b!6917187))

(assert (= (and b!6917193 (not res!2820385)) b!6917194))

(assert (= (and b!6917194 res!2820381) b!6917189))

(assert (= (and b!6917189 (not res!2820382)) b!6917190))

(assert (= (and b!6917190 (not res!2820380)) b!6917184))

(assert (= (or b!6917183 b!6917189 b!6917192) bm!628845))

(assert (=> bm!628845 m!7628270))

(assert (=> b!6917186 m!7628294))

(assert (=> b!6917186 m!7628294))

(assert (=> b!6917186 m!7628296))

(assert (=> b!6917184 m!7628298))

(assert (=> b!6917191 m!7628298))

(assert (=> b!6917191 m!7628298))

(declare-fun m!7628324 () Bool)

(assert (=> b!6917191 m!7628324))

(assert (=> b!6917191 m!7628294))

(assert (=> b!6917191 m!7628324))

(assert (=> b!6917191 m!7628294))

(declare-fun m!7628326 () Bool)

(assert (=> b!6917191 m!7628326))

(assert (=> b!6917187 m!7628298))

(declare-fun m!7628328 () Bool)

(assert (=> b!6917182 m!7628328))

(assert (=> b!6917190 m!7628294))

(assert (=> b!6917190 m!7628294))

(assert (=> b!6917190 m!7628296))

(assert (=> d!2164042 m!7628270))

(assert (=> d!2164042 m!7628320))

(assert (=> b!6916861 d!2164042))

(declare-fun b!6917206 () Bool)

(declare-fun e!4163673 () Bool)

(declare-fun call!628853 () Bool)

(assert (=> b!6917206 (= e!4163673 call!628853)))

(declare-fun c!1284444 () Bool)

(declare-fun c!1284443 () Bool)

(declare-fun bm!628848 () Bool)

(assert (=> bm!628848 (= call!628853 (validRegex!8610 (ite c!1284444 (reg!17233 r3!135) (ite c!1284443 (regOne!34321 r3!135) (regTwo!34320 r3!135)))))))

(declare-fun bm!628849 () Bool)

(declare-fun call!628855 () Bool)

(assert (=> bm!628849 (= call!628855 (validRegex!8610 (ite c!1284443 (regTwo!34321 r3!135) (regOne!34320 r3!135))))))

(declare-fun d!2164046 () Bool)

(declare-fun res!2820392 () Bool)

(declare-fun e!4163675 () Bool)

(assert (=> d!2164046 (=> res!2820392 e!4163675)))

(assert (=> d!2164046 (= res!2820392 (is-ElementMatch!16904 r3!135))))

(assert (=> d!2164046 (= (validRegex!8610 r3!135) e!4163675)))

(declare-fun b!6917207 () Bool)

(declare-fun res!2820389 () Bool)

(declare-fun e!4163674 () Bool)

(assert (=> b!6917207 (=> res!2820389 e!4163674)))

(assert (=> b!6917207 (= res!2820389 (not (is-Concat!25749 r3!135)))))

(declare-fun e!4163676 () Bool)

(assert (=> b!6917207 (= e!4163676 e!4163674)))

(declare-fun b!6917208 () Bool)

(declare-fun e!4163672 () Bool)

(assert (=> b!6917208 (= e!4163672 e!4163676)))

(assert (=> b!6917208 (= c!1284443 (is-Union!16904 r3!135))))

(declare-fun b!6917209 () Bool)

(declare-fun e!4163671 () Bool)

(declare-fun call!628854 () Bool)

(assert (=> b!6917209 (= e!4163671 call!628854)))

(declare-fun b!6917210 () Bool)

(assert (=> b!6917210 (= e!4163674 e!4163671)))

(declare-fun res!2820393 () Bool)

(assert (=> b!6917210 (=> (not res!2820393) (not e!4163671))))

(assert (=> b!6917210 (= res!2820393 call!628855)))

(declare-fun b!6917211 () Bool)

(assert (=> b!6917211 (= e!4163675 e!4163672)))

(assert (=> b!6917211 (= c!1284444 (is-Star!16904 r3!135))))

(declare-fun bm!628850 () Bool)

(assert (=> bm!628850 (= call!628854 call!628853)))

(declare-fun b!6917212 () Bool)

(declare-fun e!4163670 () Bool)

(assert (=> b!6917212 (= e!4163670 call!628855)))

(declare-fun b!6917213 () Bool)

(declare-fun res!2820391 () Bool)

(assert (=> b!6917213 (=> (not res!2820391) (not e!4163670))))

(assert (=> b!6917213 (= res!2820391 call!628854)))

(assert (=> b!6917213 (= e!4163676 e!4163670)))

(declare-fun b!6917214 () Bool)

(assert (=> b!6917214 (= e!4163672 e!4163673)))

(declare-fun res!2820390 () Bool)

(assert (=> b!6917214 (= res!2820390 (not (nullable!6739 (reg!17233 r3!135))))))

(assert (=> b!6917214 (=> (not res!2820390) (not e!4163673))))

(assert (= (and d!2164046 (not res!2820392)) b!6917211))

(assert (= (and b!6917211 c!1284444) b!6917214))

(assert (= (and b!6917211 (not c!1284444)) b!6917208))

(assert (= (and b!6917214 res!2820390) b!6917206))

(assert (= (and b!6917208 c!1284443) b!6917213))

(assert (= (and b!6917208 (not c!1284443)) b!6917207))

(assert (= (and b!6917213 res!2820391) b!6917212))

(assert (= (and b!6917207 (not res!2820389)) b!6917210))

(assert (= (and b!6917210 res!2820393) b!6917209))

(assert (= (or b!6917213 b!6917209) bm!628850))

(assert (= (or b!6917212 b!6917210) bm!628849))

(assert (= (or b!6917206 bm!628850) bm!628848))

(declare-fun m!7628330 () Bool)

(assert (=> bm!628848 m!7628330))

(declare-fun m!7628332 () Bool)

(assert (=> bm!628849 m!7628332))

(declare-fun m!7628334 () Bool)

(assert (=> b!6917214 m!7628334))

(assert (=> b!6916866 d!2164046))

(declare-fun b!6917225 () Bool)

(declare-fun e!4163679 () Bool)

(assert (=> b!6917225 (= e!4163679 tp_is_empty!43033)))

(declare-fun b!6917226 () Bool)

(declare-fun tp!1906450 () Bool)

(declare-fun tp!1906449 () Bool)

(assert (=> b!6917226 (= e!4163679 (and tp!1906450 tp!1906449))))

(declare-fun b!6917227 () Bool)

(declare-fun tp!1906447 () Bool)

(assert (=> b!6917227 (= e!4163679 tp!1906447)))

(assert (=> b!6916864 (= tp!1906381 e!4163679)))

(declare-fun b!6917228 () Bool)

(declare-fun tp!1906446 () Bool)

(declare-fun tp!1906448 () Bool)

(assert (=> b!6917228 (= e!4163679 (and tp!1906446 tp!1906448))))

(assert (= (and b!6916864 (is-ElementMatch!16904 (regOne!34320 r2!6280))) b!6917225))

(assert (= (and b!6916864 (is-Concat!25749 (regOne!34320 r2!6280))) b!6917226))

(assert (= (and b!6916864 (is-Star!16904 (regOne!34320 r2!6280))) b!6917227))

(assert (= (and b!6916864 (is-Union!16904 (regOne!34320 r2!6280))) b!6917228))

(declare-fun b!6917229 () Bool)

(declare-fun e!4163680 () Bool)

(assert (=> b!6917229 (= e!4163680 tp_is_empty!43033)))

(declare-fun b!6917230 () Bool)

(declare-fun tp!1906455 () Bool)

(declare-fun tp!1906454 () Bool)

(assert (=> b!6917230 (= e!4163680 (and tp!1906455 tp!1906454))))

(declare-fun b!6917231 () Bool)

(declare-fun tp!1906452 () Bool)

(assert (=> b!6917231 (= e!4163680 tp!1906452)))

(assert (=> b!6916864 (= tp!1906382 e!4163680)))

(declare-fun b!6917232 () Bool)

(declare-fun tp!1906451 () Bool)

(declare-fun tp!1906453 () Bool)

(assert (=> b!6917232 (= e!4163680 (and tp!1906451 tp!1906453))))

(assert (= (and b!6916864 (is-ElementMatch!16904 (regTwo!34320 r2!6280))) b!6917229))

(assert (= (and b!6916864 (is-Concat!25749 (regTwo!34320 r2!6280))) b!6917230))

(assert (= (and b!6916864 (is-Star!16904 (regTwo!34320 r2!6280))) b!6917231))

(assert (= (and b!6916864 (is-Union!16904 (regTwo!34320 r2!6280))) b!6917232))

(declare-fun b!6917233 () Bool)

(declare-fun e!4163681 () Bool)

(assert (=> b!6917233 (= e!4163681 tp_is_empty!43033)))

(declare-fun b!6917234 () Bool)

(declare-fun tp!1906460 () Bool)

(declare-fun tp!1906459 () Bool)

(assert (=> b!6917234 (= e!4163681 (and tp!1906460 tp!1906459))))

(declare-fun b!6917235 () Bool)

(declare-fun tp!1906457 () Bool)

(assert (=> b!6917235 (= e!4163681 tp!1906457)))

(assert (=> b!6916858 (= tp!1906378 e!4163681)))

(declare-fun b!6917236 () Bool)

(declare-fun tp!1906456 () Bool)

(declare-fun tp!1906458 () Bool)

(assert (=> b!6917236 (= e!4163681 (and tp!1906456 tp!1906458))))

(assert (= (and b!6916858 (is-ElementMatch!16904 (regOne!34321 r2!6280))) b!6917233))

(assert (= (and b!6916858 (is-Concat!25749 (regOne!34321 r2!6280))) b!6917234))

(assert (= (and b!6916858 (is-Star!16904 (regOne!34321 r2!6280))) b!6917235))

(assert (= (and b!6916858 (is-Union!16904 (regOne!34321 r2!6280))) b!6917236))

(declare-fun b!6917237 () Bool)

(declare-fun e!4163682 () Bool)

(assert (=> b!6917237 (= e!4163682 tp_is_empty!43033)))

(declare-fun b!6917238 () Bool)

(declare-fun tp!1906465 () Bool)

(declare-fun tp!1906464 () Bool)

(assert (=> b!6917238 (= e!4163682 (and tp!1906465 tp!1906464))))

(declare-fun b!6917239 () Bool)

(declare-fun tp!1906462 () Bool)

(assert (=> b!6917239 (= e!4163682 tp!1906462)))

(assert (=> b!6916858 (= tp!1906379 e!4163682)))

(declare-fun b!6917240 () Bool)

(declare-fun tp!1906461 () Bool)

(declare-fun tp!1906463 () Bool)

(assert (=> b!6917240 (= e!4163682 (and tp!1906461 tp!1906463))))

(assert (= (and b!6916858 (is-ElementMatch!16904 (regTwo!34321 r2!6280))) b!6917237))

(assert (= (and b!6916858 (is-Concat!25749 (regTwo!34321 r2!6280))) b!6917238))

(assert (= (and b!6916858 (is-Star!16904 (regTwo!34321 r2!6280))) b!6917239))

(assert (= (and b!6916858 (is-Union!16904 (regTwo!34321 r2!6280))) b!6917240))

(declare-fun b!6917241 () Bool)

(declare-fun e!4163683 () Bool)

(assert (=> b!6917241 (= e!4163683 tp_is_empty!43033)))

(declare-fun b!6917242 () Bool)

(declare-fun tp!1906470 () Bool)

(declare-fun tp!1906469 () Bool)

(assert (=> b!6917242 (= e!4163683 (and tp!1906470 tp!1906469))))

(declare-fun b!6917243 () Bool)

(declare-fun tp!1906467 () Bool)

(assert (=> b!6917243 (= e!4163683 tp!1906467)))

(assert (=> b!6916863 (= tp!1906380 e!4163683)))

(declare-fun b!6917244 () Bool)

(declare-fun tp!1906466 () Bool)

(declare-fun tp!1906468 () Bool)

(assert (=> b!6917244 (= e!4163683 (and tp!1906466 tp!1906468))))

(assert (= (and b!6916863 (is-ElementMatch!16904 (reg!17233 r1!6342))) b!6917241))

(assert (= (and b!6916863 (is-Concat!25749 (reg!17233 r1!6342))) b!6917242))

(assert (= (and b!6916863 (is-Star!16904 (reg!17233 r1!6342))) b!6917243))

(assert (= (and b!6916863 (is-Union!16904 (reg!17233 r1!6342))) b!6917244))

(declare-fun b!6917249 () Bool)

(declare-fun e!4163686 () Bool)

(declare-fun tp!1906473 () Bool)

(assert (=> b!6917249 (= e!4163686 (and tp_is_empty!43033 tp!1906473))))

(assert (=> b!6916868 (= tp!1906374 e!4163686)))

(assert (= (and b!6916868 (is-Cons!66533 (t!380400 s!14361))) b!6917249))

(declare-fun b!6917250 () Bool)

(declare-fun e!4163687 () Bool)

(assert (=> b!6917250 (= e!4163687 tp_is_empty!43033)))

(declare-fun b!6917251 () Bool)

(declare-fun tp!1906478 () Bool)

(declare-fun tp!1906477 () Bool)

(assert (=> b!6917251 (= e!4163687 (and tp!1906478 tp!1906477))))

(declare-fun b!6917252 () Bool)

(declare-fun tp!1906475 () Bool)

(assert (=> b!6917252 (= e!4163687 tp!1906475)))

(assert (=> b!6916857 (= tp!1906384 e!4163687)))

(declare-fun b!6917253 () Bool)

(declare-fun tp!1906474 () Bool)

(declare-fun tp!1906476 () Bool)

(assert (=> b!6917253 (= e!4163687 (and tp!1906474 tp!1906476))))

(assert (= (and b!6916857 (is-ElementMatch!16904 (regOne!34321 r3!135))) b!6917250))

(assert (= (and b!6916857 (is-Concat!25749 (regOne!34321 r3!135))) b!6917251))

(assert (= (and b!6916857 (is-Star!16904 (regOne!34321 r3!135))) b!6917252))

(assert (= (and b!6916857 (is-Union!16904 (regOne!34321 r3!135))) b!6917253))

(declare-fun b!6917254 () Bool)

(declare-fun e!4163688 () Bool)

(assert (=> b!6917254 (= e!4163688 tp_is_empty!43033)))

(declare-fun b!6917255 () Bool)

(declare-fun tp!1906483 () Bool)

(declare-fun tp!1906482 () Bool)

(assert (=> b!6917255 (= e!4163688 (and tp!1906483 tp!1906482))))

(declare-fun b!6917256 () Bool)

(declare-fun tp!1906480 () Bool)

(assert (=> b!6917256 (= e!4163688 tp!1906480)))

(assert (=> b!6916857 (= tp!1906387 e!4163688)))

(declare-fun b!6917257 () Bool)

(declare-fun tp!1906479 () Bool)

(declare-fun tp!1906481 () Bool)

(assert (=> b!6917257 (= e!4163688 (and tp!1906479 tp!1906481))))

(assert (= (and b!6916857 (is-ElementMatch!16904 (regTwo!34321 r3!135))) b!6917254))

(assert (= (and b!6916857 (is-Concat!25749 (regTwo!34321 r3!135))) b!6917255))

(assert (= (and b!6916857 (is-Star!16904 (regTwo!34321 r3!135))) b!6917256))

(assert (= (and b!6916857 (is-Union!16904 (regTwo!34321 r3!135))) b!6917257))

(declare-fun b!6917258 () Bool)

(declare-fun e!4163689 () Bool)

(assert (=> b!6917258 (= e!4163689 tp_is_empty!43033)))

(declare-fun b!6917259 () Bool)

(declare-fun tp!1906488 () Bool)

(declare-fun tp!1906487 () Bool)

(assert (=> b!6917259 (= e!4163689 (and tp!1906488 tp!1906487))))

(declare-fun b!6917260 () Bool)

(declare-fun tp!1906485 () Bool)

(assert (=> b!6917260 (= e!4163689 tp!1906485)))

(assert (=> b!6916862 (= tp!1906372 e!4163689)))

(declare-fun b!6917261 () Bool)

(declare-fun tp!1906484 () Bool)

(declare-fun tp!1906486 () Bool)

(assert (=> b!6917261 (= e!4163689 (and tp!1906484 tp!1906486))))

(assert (= (and b!6916862 (is-ElementMatch!16904 (regOne!34320 r1!6342))) b!6917258))

(assert (= (and b!6916862 (is-Concat!25749 (regOne!34320 r1!6342))) b!6917259))

(assert (= (and b!6916862 (is-Star!16904 (regOne!34320 r1!6342))) b!6917260))

(assert (= (and b!6916862 (is-Union!16904 (regOne!34320 r1!6342))) b!6917261))

(declare-fun b!6917262 () Bool)

(declare-fun e!4163690 () Bool)

(assert (=> b!6917262 (= e!4163690 tp_is_empty!43033)))

(declare-fun b!6917263 () Bool)

(declare-fun tp!1906493 () Bool)

(declare-fun tp!1906492 () Bool)

(assert (=> b!6917263 (= e!4163690 (and tp!1906493 tp!1906492))))

(declare-fun b!6917264 () Bool)

(declare-fun tp!1906490 () Bool)

(assert (=> b!6917264 (= e!4163690 tp!1906490)))

(assert (=> b!6916862 (= tp!1906373 e!4163690)))

(declare-fun b!6917265 () Bool)

(declare-fun tp!1906489 () Bool)

(declare-fun tp!1906491 () Bool)

(assert (=> b!6917265 (= e!4163690 (and tp!1906489 tp!1906491))))

(assert (= (and b!6916862 (is-ElementMatch!16904 (regTwo!34320 r1!6342))) b!6917262))

(assert (= (and b!6916862 (is-Concat!25749 (regTwo!34320 r1!6342))) b!6917263))

(assert (= (and b!6916862 (is-Star!16904 (regTwo!34320 r1!6342))) b!6917264))

(assert (= (and b!6916862 (is-Union!16904 (regTwo!34320 r1!6342))) b!6917265))

(declare-fun b!6917266 () Bool)

(declare-fun e!4163691 () Bool)

(assert (=> b!6917266 (= e!4163691 tp_is_empty!43033)))

(declare-fun b!6917267 () Bool)

(declare-fun tp!1906498 () Bool)

(declare-fun tp!1906497 () Bool)

(assert (=> b!6917267 (= e!4163691 (and tp!1906498 tp!1906497))))

(declare-fun b!6917268 () Bool)

(declare-fun tp!1906495 () Bool)

(assert (=> b!6917268 (= e!4163691 tp!1906495)))

(assert (=> b!6916867 (= tp!1906386 e!4163691)))

(declare-fun b!6917269 () Bool)

(declare-fun tp!1906494 () Bool)

(declare-fun tp!1906496 () Bool)

(assert (=> b!6917269 (= e!4163691 (and tp!1906494 tp!1906496))))

(assert (= (and b!6916867 (is-ElementMatch!16904 (reg!17233 r2!6280))) b!6917266))

(assert (= (and b!6916867 (is-Concat!25749 (reg!17233 r2!6280))) b!6917267))

(assert (= (and b!6916867 (is-Star!16904 (reg!17233 r2!6280))) b!6917268))

(assert (= (and b!6916867 (is-Union!16904 (reg!17233 r2!6280))) b!6917269))

(declare-fun b!6917270 () Bool)

(declare-fun e!4163692 () Bool)

(assert (=> b!6917270 (= e!4163692 tp_is_empty!43033)))

(declare-fun b!6917271 () Bool)

(declare-fun tp!1906503 () Bool)

(declare-fun tp!1906502 () Bool)

(assert (=> b!6917271 (= e!4163692 (and tp!1906503 tp!1906502))))

(declare-fun b!6917272 () Bool)

(declare-fun tp!1906500 () Bool)

(assert (=> b!6917272 (= e!4163692 tp!1906500)))

(assert (=> b!6916855 (= tp!1906383 e!4163692)))

(declare-fun b!6917273 () Bool)

(declare-fun tp!1906499 () Bool)

(declare-fun tp!1906501 () Bool)

(assert (=> b!6917273 (= e!4163692 (and tp!1906499 tp!1906501))))

(assert (= (and b!6916855 (is-ElementMatch!16904 (regOne!34321 r1!6342))) b!6917270))

(assert (= (and b!6916855 (is-Concat!25749 (regOne!34321 r1!6342))) b!6917271))

(assert (= (and b!6916855 (is-Star!16904 (regOne!34321 r1!6342))) b!6917272))

(assert (= (and b!6916855 (is-Union!16904 (regOne!34321 r1!6342))) b!6917273))

(declare-fun b!6917274 () Bool)

(declare-fun e!4163693 () Bool)

(assert (=> b!6917274 (= e!4163693 tp_is_empty!43033)))

(declare-fun b!6917275 () Bool)

(declare-fun tp!1906508 () Bool)

(declare-fun tp!1906507 () Bool)

(assert (=> b!6917275 (= e!4163693 (and tp!1906508 tp!1906507))))

(declare-fun b!6917276 () Bool)

(declare-fun tp!1906505 () Bool)

(assert (=> b!6917276 (= e!4163693 tp!1906505)))

(assert (=> b!6916855 (= tp!1906385 e!4163693)))

(declare-fun b!6917277 () Bool)

(declare-fun tp!1906504 () Bool)

(declare-fun tp!1906506 () Bool)

(assert (=> b!6917277 (= e!4163693 (and tp!1906504 tp!1906506))))

(assert (= (and b!6916855 (is-ElementMatch!16904 (regTwo!34321 r1!6342))) b!6917274))

(assert (= (and b!6916855 (is-Concat!25749 (regTwo!34321 r1!6342))) b!6917275))

(assert (= (and b!6916855 (is-Star!16904 (regTwo!34321 r1!6342))) b!6917276))

(assert (= (and b!6916855 (is-Union!16904 (regTwo!34321 r1!6342))) b!6917277))

(declare-fun b!6917278 () Bool)

(declare-fun e!4163694 () Bool)

(assert (=> b!6917278 (= e!4163694 tp_is_empty!43033)))

(declare-fun b!6917279 () Bool)

(declare-fun tp!1906513 () Bool)

(declare-fun tp!1906512 () Bool)

(assert (=> b!6917279 (= e!4163694 (and tp!1906513 tp!1906512))))

(declare-fun b!6917280 () Bool)

(declare-fun tp!1906510 () Bool)

(assert (=> b!6917280 (= e!4163694 tp!1906510)))

(assert (=> b!6916860 (= tp!1906377 e!4163694)))

(declare-fun b!6917281 () Bool)

(declare-fun tp!1906509 () Bool)

(declare-fun tp!1906511 () Bool)

(assert (=> b!6917281 (= e!4163694 (and tp!1906509 tp!1906511))))

(assert (= (and b!6916860 (is-ElementMatch!16904 (regOne!34320 r3!135))) b!6917278))

(assert (= (and b!6916860 (is-Concat!25749 (regOne!34320 r3!135))) b!6917279))

(assert (= (and b!6916860 (is-Star!16904 (regOne!34320 r3!135))) b!6917280))

(assert (= (and b!6916860 (is-Union!16904 (regOne!34320 r3!135))) b!6917281))

(declare-fun b!6917282 () Bool)

(declare-fun e!4163695 () Bool)

(assert (=> b!6917282 (= e!4163695 tp_is_empty!43033)))

(declare-fun b!6917283 () Bool)

(declare-fun tp!1906518 () Bool)

(declare-fun tp!1906517 () Bool)

(assert (=> b!6917283 (= e!4163695 (and tp!1906518 tp!1906517))))

(declare-fun b!6917284 () Bool)

(declare-fun tp!1906515 () Bool)

(assert (=> b!6917284 (= e!4163695 tp!1906515)))

(assert (=> b!6916860 (= tp!1906375 e!4163695)))

(declare-fun b!6917285 () Bool)

(declare-fun tp!1906514 () Bool)

(declare-fun tp!1906516 () Bool)

(assert (=> b!6917285 (= e!4163695 (and tp!1906514 tp!1906516))))

(assert (= (and b!6916860 (is-ElementMatch!16904 (regTwo!34320 r3!135))) b!6917282))

(assert (= (and b!6916860 (is-Concat!25749 (regTwo!34320 r3!135))) b!6917283))

(assert (= (and b!6916860 (is-Star!16904 (regTwo!34320 r3!135))) b!6917284))

(assert (= (and b!6916860 (is-Union!16904 (regTwo!34320 r3!135))) b!6917285))

(declare-fun b!6917286 () Bool)

(declare-fun e!4163696 () Bool)

(assert (=> b!6917286 (= e!4163696 tp_is_empty!43033)))

(declare-fun b!6917287 () Bool)

(declare-fun tp!1906523 () Bool)

(declare-fun tp!1906522 () Bool)

(assert (=> b!6917287 (= e!4163696 (and tp!1906523 tp!1906522))))

(declare-fun b!6917288 () Bool)

(declare-fun tp!1906520 () Bool)

(assert (=> b!6917288 (= e!4163696 tp!1906520)))

(assert (=> b!6916865 (= tp!1906376 e!4163696)))

(declare-fun b!6917289 () Bool)

(declare-fun tp!1906519 () Bool)

(declare-fun tp!1906521 () Bool)

(assert (=> b!6917289 (= e!4163696 (and tp!1906519 tp!1906521))))

(assert (= (and b!6916865 (is-ElementMatch!16904 (reg!17233 r3!135))) b!6917286))

(assert (= (and b!6916865 (is-Concat!25749 (reg!17233 r3!135))) b!6917287))

(assert (= (and b!6916865 (is-Star!16904 (reg!17233 r3!135))) b!6917288))

(assert (= (and b!6916865 (is-Union!16904 (reg!17233 r3!135))) b!6917289))

(push 1)

(assert (not b!6917273))

(assert (not d!2164040))

(assert (not b!6917227))

(assert (not b!6917182))

(assert (not b!6917230))

(assert (not b!6917226))

(assert (not b!6917190))

(assert (not b!6917269))

(assert (not bm!628845))

(assert (not b!6917159))

(assert (not b!6917267))

(assert (not b!6917154))

(assert (not b!6917287))

(assert (not b!6917232))

(assert (not b!6917236))

(assert (not b!6917259))

(assert (not b!6917283))

(assert (not b!6917279))

(assert (not bm!628848))

(assert (not b!6917156))

(assert (not b!6917163))

(assert (not bm!628823))

(assert (not b!6917239))

(assert (not d!2164032))

(assert (not bm!628822))

(assert (not b!6917276))

(assert (not b!6917240))

(assert (not bm!628817))

(assert (not b!6917284))

(assert (not b!6917264))

(assert tp_is_empty!43033)

(assert (not b!6917288))

(assert (not b!6917257))

(assert (not b!6917289))

(assert (not b!6917275))

(assert (not b!6917158))

(assert (not b!6917234))

(assert (not b!6917249))

(assert (not b!6917256))

(assert (not b!6917272))

(assert (not b!6917235))

(assert (not bm!628843))

(assert (not bm!628819))

(assert (not b!6917280))

(assert (not b!6917214))

(assert (not b!6917238))

(assert (not bm!628820))

(assert (not b!6917184))

(assert (not b!6917228))

(assert (not b!6917243))

(assert (not bm!628816))

(assert (not b!6917062))

(assert (not b!6917252))

(assert (not b!6917253))

(assert (not b!6917285))

(assert (not b!6917244))

(assert (not bm!628829))

(assert (not d!2164038))

(assert (not b!6917268))

(assert (not b!6917092))

(assert (not b!6917242))

(assert (not b!6916995))

(assert (not b!6917061))

(assert (not d!2164042))

(assert (not b!6917261))

(assert (not b!6917013))

(assert (not bm!628838))

(assert (not b!6917186))

(assert (not b!6917191))

(assert (not b!6917265))

(assert (not bm!628830))

(assert (not b!6917231))

(assert (not b!6917251))

(assert (not b!6917260))

(assert (not b!6917281))

(assert (not b!6917255))

(assert (not b!6917162))

(assert (not bm!628849))

(assert (not b!6917187))

(assert (not b!6917091))

(assert (not b!6917271))

(assert (not bm!628837))

(assert (not b!6917263))

(assert (not b!6917277))

(assert (not b!6917004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

