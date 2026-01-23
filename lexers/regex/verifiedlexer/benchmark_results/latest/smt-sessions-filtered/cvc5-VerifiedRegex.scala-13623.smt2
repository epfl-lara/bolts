; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731318 () Bool)

(assert start!731318)

(declare-fun b!7573586 () Bool)

(assert (=> b!7573586 true))

(assert (=> b!7573586 true))

(declare-fun lambda!466487 () Int)

(declare-fun lambda!466486 () Int)

(assert (=> b!7573586 (not (= lambda!466487 lambda!466486))))

(assert (=> b!7573586 true))

(assert (=> b!7573586 true))

(declare-fun b!7573578 () Bool)

(declare-fun e!4508501 () Bool)

(declare-fun tp!2206986 () Bool)

(declare-fun tp!2206985 () Bool)

(assert (=> b!7573578 (= e!4508501 (and tp!2206986 tp!2206985))))

(declare-fun b!7573579 () Bool)

(declare-fun tp!2206983 () Bool)

(assert (=> b!7573579 (= e!4508501 tp!2206983)))

(declare-fun b!7573580 () Bool)

(declare-fun tp!2206984 () Bool)

(declare-fun tp!2206982 () Bool)

(assert (=> b!7573580 (= e!4508501 (and tp!2206984 tp!2206982))))

(declare-fun b!7573581 () Bool)

(declare-fun res!3033891 () Bool)

(declare-fun e!4508503 () Bool)

(assert (=> b!7573581 (=> (not res!3033891) (not e!4508503))))

(declare-datatypes ((C!40406 0))(
  ( (C!40407 (val!30643 Int)) )
))
(declare-datatypes ((Regex!20040 0))(
  ( (ElementMatch!20040 (c!1397201 C!40406)) (Concat!28885 (regOne!40592 Regex!20040) (regTwo!40592 Regex!20040)) (EmptyExpr!20040) (Star!20040 (reg!20369 Regex!20040)) (EmptyLang!20040) (Union!20040 (regOne!40593 Regex!20040) (regTwo!40593 Regex!20040)) )
))
(declare-fun r!22341 () Regex!20040)

(declare-fun lostCause!1816 (Regex!20040) Bool)

(assert (=> b!7573581 (= res!3033891 (lostCause!1816 r!22341))))

(declare-fun b!7573582 () Bool)

(declare-fun e!4508500 () Bool)

(assert (=> b!7573582 (= e!4508503 (not e!4508500))))

(declare-fun res!3033889 () Bool)

(assert (=> b!7573582 (=> res!3033889 e!4508500)))

(declare-fun lt!2651698 () Bool)

(assert (=> b!7573582 (= res!3033889 (or (is-EmptyLang!20040 r!22341) (is-EmptyExpr!20040 r!22341) (is-ElementMatch!20040 r!22341) (is-Union!20040 r!22341) (is-Star!20040 r!22341) (not lt!2651698)))))

(declare-datatypes ((List!72923 0))(
  ( (Nil!72799) (Cons!72799 (h!79247 C!40406) (t!387658 List!72923)) )
))
(declare-fun s!13436 () List!72923)

(declare-fun matchRSpec!4359 (Regex!20040 List!72923) Bool)

(assert (=> b!7573582 (= lt!2651698 (matchRSpec!4359 r!22341 s!13436))))

(declare-fun matchR!9636 (Regex!20040 List!72923) Bool)

(assert (=> b!7573582 (= lt!2651698 (matchR!9636 r!22341 s!13436))))

(declare-datatypes ((Unit!167036 0))(
  ( (Unit!167037) )
))
(declare-fun lt!2651700 () Unit!167036)

(declare-fun mainMatchTheorem!4353 (Regex!20040 List!72923) Unit!167036)

(assert (=> b!7573582 (= lt!2651700 (mainMatchTheorem!4353 r!22341 s!13436))))

(declare-fun b!7573583 () Bool)

(declare-fun tp_is_empty!50435 () Bool)

(assert (=> b!7573583 (= e!4508501 tp_is_empty!50435)))

(declare-fun b!7573584 () Bool)

(declare-fun res!3033890 () Bool)

(assert (=> b!7573584 (=> (not res!3033890) (not e!4508503))))

(declare-fun isEmpty!41458 (List!72923) Bool)

(assert (=> b!7573584 (= res!3033890 (not (isEmpty!41458 s!13436)))))

(declare-fun b!7573585 () Bool)

(declare-fun e!4508502 () Bool)

(declare-fun tp!2206987 () Bool)

(assert (=> b!7573585 (= e!4508502 (and tp_is_empty!50435 tp!2206987))))

(declare-fun validRegex!10468 (Regex!20040) Bool)

(assert (=> b!7573586 (= e!4508500 (validRegex!10468 (regOne!40592 r!22341)))))

(declare-fun Exists!4283 (Int) Bool)

(assert (=> b!7573586 (= (Exists!4283 lambda!466486) (Exists!4283 lambda!466487))))

(declare-fun lt!2651699 () Unit!167036)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2601 (Regex!20040 Regex!20040 List!72923) Unit!167036)

(assert (=> b!7573586 (= lt!2651699 (lemmaExistCutMatchRandMatchRSpecEquivalent!2601 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436))))

(declare-datatypes ((tuple2!68874 0))(
  ( (tuple2!68875 (_1!37740 List!72923) (_2!37740 List!72923)) )
))
(declare-datatypes ((Option!17273 0))(
  ( (None!17272) (Some!17272 (v!54407 tuple2!68874)) )
))
(declare-fun isDefined!13919 (Option!17273) Bool)

(declare-fun findConcatSeparation!3333 (Regex!20040 Regex!20040 List!72923 List!72923 List!72923) Option!17273)

(assert (=> b!7573586 (= (isDefined!13919 (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) Nil!72799 s!13436 s!13436)) (Exists!4283 lambda!466486))))

(declare-fun lt!2651697 () Unit!167036)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3091 (Regex!20040 Regex!20040 List!72923) Unit!167036)

(assert (=> b!7573586 (= lt!2651697 (lemmaFindConcatSeparationEquivalentToExists!3091 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436))))

(declare-fun res!3033892 () Bool)

(assert (=> start!731318 (=> (not res!3033892) (not e!4508503))))

(assert (=> start!731318 (= res!3033892 (validRegex!10468 r!22341))))

(assert (=> start!731318 e!4508503))

(assert (=> start!731318 e!4508501))

(assert (=> start!731318 e!4508502))

(assert (= (and start!731318 res!3033892) b!7573581))

(assert (= (and b!7573581 res!3033891) b!7573584))

(assert (= (and b!7573584 res!3033890) b!7573582))

(assert (= (and b!7573582 (not res!3033889)) b!7573586))

(assert (= (and start!731318 (is-ElementMatch!20040 r!22341)) b!7573583))

(assert (= (and start!731318 (is-Concat!28885 r!22341)) b!7573580))

(assert (= (and start!731318 (is-Star!20040 r!22341)) b!7573579))

(assert (= (and start!731318 (is-Union!20040 r!22341)) b!7573578))

(assert (= (and start!731318 (is-Cons!72799 s!13436)) b!7573585))

(declare-fun m!8133006 () Bool)

(assert (=> b!7573581 m!8133006))

(declare-fun m!8133008 () Bool)

(assert (=> b!7573582 m!8133008))

(declare-fun m!8133010 () Bool)

(assert (=> b!7573582 m!8133010))

(declare-fun m!8133012 () Bool)

(assert (=> b!7573582 m!8133012))

(declare-fun m!8133014 () Bool)

(assert (=> b!7573586 m!8133014))

(assert (=> b!7573586 m!8133014))

(declare-fun m!8133016 () Bool)

(assert (=> b!7573586 m!8133016))

(declare-fun m!8133018 () Bool)

(assert (=> b!7573586 m!8133018))

(declare-fun m!8133020 () Bool)

(assert (=> b!7573586 m!8133020))

(assert (=> b!7573586 m!8133018))

(declare-fun m!8133022 () Bool)

(assert (=> b!7573586 m!8133022))

(declare-fun m!8133024 () Bool)

(assert (=> b!7573586 m!8133024))

(declare-fun m!8133026 () Bool)

(assert (=> b!7573586 m!8133026))

(declare-fun m!8133028 () Bool)

(assert (=> b!7573584 m!8133028))

(declare-fun m!8133030 () Bool)

(assert (=> start!731318 m!8133030))

(push 1)

(assert (not b!7573584))

(assert (not b!7573578))

(assert tp_is_empty!50435)

(assert (not b!7573579))

(assert (not b!7573585))

(assert (not b!7573580))

(assert (not b!7573582))

(assert (not b!7573586))

(assert (not start!731318))

(assert (not b!7573581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7573652 () Bool)

(declare-fun e!4508540 () Bool)

(declare-fun call!694302 () Bool)

(assert (=> b!7573652 (= e!4508540 call!694302)))

(declare-fun b!7573653 () Bool)

(declare-fun e!4508537 () Bool)

(declare-fun call!694303 () Bool)

(assert (=> b!7573653 (= e!4508537 call!694303)))

(declare-fun b!7573654 () Bool)

(declare-fun e!4508539 () Bool)

(assert (=> b!7573654 (= e!4508539 e!4508540)))

(declare-fun res!3033927 () Bool)

(declare-fun nullable!8744 (Regex!20040) Bool)

(assert (=> b!7573654 (= res!3033927 (not (nullable!8744 (reg!20369 r!22341))))))

(assert (=> b!7573654 (=> (not res!3033927) (not e!4508540))))

(declare-fun bm!694296 () Bool)

(declare-fun c!1397208 () Bool)

(assert (=> bm!694296 (= call!694303 (validRegex!10468 (ite c!1397208 (regTwo!40593 r!22341) (regOne!40592 r!22341))))))

(declare-fun b!7573655 () Bool)

(declare-fun e!4508541 () Bool)

(assert (=> b!7573655 (= e!4508539 e!4508541)))

(assert (=> b!7573655 (= c!1397208 (is-Union!20040 r!22341))))

(declare-fun bm!694297 () Bool)

(declare-fun call!694301 () Bool)

(assert (=> bm!694297 (= call!694301 call!694302)))

(declare-fun b!7573657 () Bool)

(declare-fun e!4508542 () Bool)

(assert (=> b!7573657 (= e!4508542 call!694301)))

(declare-fun bm!694298 () Bool)

(declare-fun c!1397207 () Bool)

(assert (=> bm!694298 (= call!694302 (validRegex!10468 (ite c!1397207 (reg!20369 r!22341) (ite c!1397208 (regOne!40593 r!22341) (regTwo!40592 r!22341)))))))

(declare-fun b!7573658 () Bool)

(declare-fun res!3033930 () Bool)

(declare-fun e!4508538 () Bool)

(assert (=> b!7573658 (=> res!3033930 e!4508538)))

(assert (=> b!7573658 (= res!3033930 (not (is-Concat!28885 r!22341)))))

(assert (=> b!7573658 (= e!4508541 e!4508538)))

(declare-fun b!7573659 () Bool)

(declare-fun res!3033929 () Bool)

(assert (=> b!7573659 (=> (not res!3033929) (not e!4508537))))

(assert (=> b!7573659 (= res!3033929 call!694301)))

(assert (=> b!7573659 (= e!4508541 e!4508537)))

(declare-fun b!7573660 () Bool)

(declare-fun e!4508536 () Bool)

(assert (=> b!7573660 (= e!4508536 e!4508539)))

(assert (=> b!7573660 (= c!1397207 (is-Star!20040 r!22341))))

(declare-fun d!2317708 () Bool)

(declare-fun res!3033931 () Bool)

(assert (=> d!2317708 (=> res!3033931 e!4508536)))

(assert (=> d!2317708 (= res!3033931 (is-ElementMatch!20040 r!22341))))

(assert (=> d!2317708 (= (validRegex!10468 r!22341) e!4508536)))

(declare-fun b!7573656 () Bool)

(assert (=> b!7573656 (= e!4508538 e!4508542)))

(declare-fun res!3033928 () Bool)

(assert (=> b!7573656 (=> (not res!3033928) (not e!4508542))))

(assert (=> b!7573656 (= res!3033928 call!694303)))

(assert (= (and d!2317708 (not res!3033931)) b!7573660))

(assert (= (and b!7573660 c!1397207) b!7573654))

(assert (= (and b!7573660 (not c!1397207)) b!7573655))

(assert (= (and b!7573654 res!3033927) b!7573652))

(assert (= (and b!7573655 c!1397208) b!7573659))

(assert (= (and b!7573655 (not c!1397208)) b!7573658))

(assert (= (and b!7573659 res!3033929) b!7573653))

(assert (= (and b!7573658 (not res!3033930)) b!7573656))

(assert (= (and b!7573656 res!3033928) b!7573657))

(assert (= (or b!7573653 b!7573656) bm!694296))

(assert (= (or b!7573659 b!7573657) bm!694297))

(assert (= (or b!7573652 bm!694297) bm!694298))

(declare-fun m!8133058 () Bool)

(assert (=> b!7573654 m!8133058))

(declare-fun m!8133060 () Bool)

(assert (=> bm!694296 m!8133060))

(declare-fun m!8133062 () Bool)

(assert (=> bm!694298 m!8133062))

(assert (=> start!731318 d!2317708))

(declare-fun d!2317710 () Bool)

(declare-fun lostCauseFct!483 (Regex!20040) Bool)

(assert (=> d!2317710 (= (lostCause!1816 r!22341) (lostCauseFct!483 r!22341))))

(declare-fun bs!1940653 () Bool)

(assert (= bs!1940653 d!2317710))

(declare-fun m!8133064 () Bool)

(assert (=> bs!1940653 m!8133064))

(assert (=> b!7573581 d!2317710))

(declare-fun b!7573661 () Bool)

(declare-fun e!4508547 () Bool)

(declare-fun call!694305 () Bool)

(assert (=> b!7573661 (= e!4508547 call!694305)))

(declare-fun b!7573662 () Bool)

(declare-fun e!4508544 () Bool)

(declare-fun call!694306 () Bool)

(assert (=> b!7573662 (= e!4508544 call!694306)))

(declare-fun b!7573663 () Bool)

(declare-fun e!4508546 () Bool)

(assert (=> b!7573663 (= e!4508546 e!4508547)))

(declare-fun res!3033932 () Bool)

(assert (=> b!7573663 (= res!3033932 (not (nullable!8744 (reg!20369 (regOne!40592 r!22341)))))))

(assert (=> b!7573663 (=> (not res!3033932) (not e!4508547))))

(declare-fun bm!694299 () Bool)

(declare-fun c!1397210 () Bool)

(assert (=> bm!694299 (= call!694306 (validRegex!10468 (ite c!1397210 (regTwo!40593 (regOne!40592 r!22341)) (regOne!40592 (regOne!40592 r!22341)))))))

(declare-fun b!7573664 () Bool)

(declare-fun e!4508548 () Bool)

(assert (=> b!7573664 (= e!4508546 e!4508548)))

(assert (=> b!7573664 (= c!1397210 (is-Union!20040 (regOne!40592 r!22341)))))

(declare-fun bm!694300 () Bool)

(declare-fun call!694304 () Bool)

(assert (=> bm!694300 (= call!694304 call!694305)))

(declare-fun b!7573666 () Bool)

(declare-fun e!4508549 () Bool)

(assert (=> b!7573666 (= e!4508549 call!694304)))

(declare-fun c!1397209 () Bool)

(declare-fun bm!694301 () Bool)

(assert (=> bm!694301 (= call!694305 (validRegex!10468 (ite c!1397209 (reg!20369 (regOne!40592 r!22341)) (ite c!1397210 (regOne!40593 (regOne!40592 r!22341)) (regTwo!40592 (regOne!40592 r!22341))))))))

(declare-fun b!7573667 () Bool)

(declare-fun res!3033935 () Bool)

(declare-fun e!4508545 () Bool)

(assert (=> b!7573667 (=> res!3033935 e!4508545)))

(assert (=> b!7573667 (= res!3033935 (not (is-Concat!28885 (regOne!40592 r!22341))))))

(assert (=> b!7573667 (= e!4508548 e!4508545)))

(declare-fun b!7573668 () Bool)

(declare-fun res!3033934 () Bool)

(assert (=> b!7573668 (=> (not res!3033934) (not e!4508544))))

(assert (=> b!7573668 (= res!3033934 call!694304)))

(assert (=> b!7573668 (= e!4508548 e!4508544)))

(declare-fun b!7573669 () Bool)

(declare-fun e!4508543 () Bool)

(assert (=> b!7573669 (= e!4508543 e!4508546)))

(assert (=> b!7573669 (= c!1397209 (is-Star!20040 (regOne!40592 r!22341)))))

(declare-fun d!2317712 () Bool)

(declare-fun res!3033936 () Bool)

(assert (=> d!2317712 (=> res!3033936 e!4508543)))

(assert (=> d!2317712 (= res!3033936 (is-ElementMatch!20040 (regOne!40592 r!22341)))))

(assert (=> d!2317712 (= (validRegex!10468 (regOne!40592 r!22341)) e!4508543)))

(declare-fun b!7573665 () Bool)

(assert (=> b!7573665 (= e!4508545 e!4508549)))

(declare-fun res!3033933 () Bool)

(assert (=> b!7573665 (=> (not res!3033933) (not e!4508549))))

(assert (=> b!7573665 (= res!3033933 call!694306)))

(assert (= (and d!2317712 (not res!3033936)) b!7573669))

(assert (= (and b!7573669 c!1397209) b!7573663))

(assert (= (and b!7573669 (not c!1397209)) b!7573664))

(assert (= (and b!7573663 res!3033932) b!7573661))

(assert (= (and b!7573664 c!1397210) b!7573668))

(assert (= (and b!7573664 (not c!1397210)) b!7573667))

(assert (= (and b!7573668 res!3033934) b!7573662))

(assert (= (and b!7573667 (not res!3033935)) b!7573665))

(assert (= (and b!7573665 res!3033933) b!7573666))

(assert (= (or b!7573662 b!7573665) bm!694299))

(assert (= (or b!7573668 b!7573666) bm!694300))

(assert (= (or b!7573661 bm!694300) bm!694301))

(declare-fun m!8133066 () Bool)

(assert (=> b!7573663 m!8133066))

(declare-fun m!8133068 () Bool)

(assert (=> bm!694299 m!8133068))

(declare-fun m!8133070 () Bool)

(assert (=> bm!694301 m!8133070))

(assert (=> b!7573586 d!2317712))

(declare-fun bs!1940655 () Bool)

(declare-fun d!2317714 () Bool)

(assert (= bs!1940655 (and d!2317714 b!7573586)))

(declare-fun lambda!466500 () Int)

(assert (=> bs!1940655 (= lambda!466500 lambda!466486)))

(assert (=> bs!1940655 (not (= lambda!466500 lambda!466487))))

(assert (=> d!2317714 true))

(assert (=> d!2317714 true))

(assert (=> d!2317714 true))

(declare-fun lambda!466501 () Int)

(assert (=> bs!1940655 (not (= lambda!466501 lambda!466486))))

(assert (=> bs!1940655 (= lambda!466501 lambda!466487)))

(declare-fun bs!1940656 () Bool)

(assert (= bs!1940656 d!2317714))

(assert (=> bs!1940656 (not (= lambda!466501 lambda!466500))))

(assert (=> d!2317714 true))

(assert (=> d!2317714 true))

(assert (=> d!2317714 true))

(assert (=> d!2317714 (= (Exists!4283 lambda!466500) (Exists!4283 lambda!466501))))

(declare-fun lt!2651715 () Unit!167036)

(declare-fun choose!58550 (Regex!20040 Regex!20040 List!72923) Unit!167036)

(assert (=> d!2317714 (= lt!2651715 (choose!58550 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436))))

(assert (=> d!2317714 (validRegex!10468 (regOne!40592 r!22341))))

(assert (=> d!2317714 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2601 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436) lt!2651715)))

(declare-fun m!8133074 () Bool)

(assert (=> bs!1940656 m!8133074))

(declare-fun m!8133076 () Bool)

(assert (=> bs!1940656 m!8133076))

(declare-fun m!8133078 () Bool)

(assert (=> bs!1940656 m!8133078))

(assert (=> bs!1940656 m!8133020))

(assert (=> b!7573586 d!2317714))

(declare-fun bs!1940657 () Bool)

(declare-fun d!2317720 () Bool)

(assert (= bs!1940657 (and d!2317720 b!7573586)))

(declare-fun lambda!466504 () Int)

(assert (=> bs!1940657 (= lambda!466504 lambda!466486)))

(assert (=> bs!1940657 (not (= lambda!466504 lambda!466487))))

(declare-fun bs!1940658 () Bool)

(assert (= bs!1940658 (and d!2317720 d!2317714)))

(assert (=> bs!1940658 (= lambda!466504 lambda!466500)))

(assert (=> bs!1940658 (not (= lambda!466504 lambda!466501))))

(assert (=> d!2317720 true))

(assert (=> d!2317720 true))

(assert (=> d!2317720 true))

(assert (=> d!2317720 (= (isDefined!13919 (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) Nil!72799 s!13436 s!13436)) (Exists!4283 lambda!466504))))

(declare-fun lt!2651718 () Unit!167036)

(declare-fun choose!58551 (Regex!20040 Regex!20040 List!72923) Unit!167036)

(assert (=> d!2317720 (= lt!2651718 (choose!58551 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436))))

(assert (=> d!2317720 (validRegex!10468 (regOne!40592 r!22341))))

(assert (=> d!2317720 (= (lemmaFindConcatSeparationEquivalentToExists!3091 (regOne!40592 r!22341) (regTwo!40592 r!22341) s!13436) lt!2651718)))

(declare-fun bs!1940659 () Bool)

(assert (= bs!1940659 d!2317720))

(declare-fun m!8133080 () Bool)

(assert (=> bs!1940659 m!8133080))

(assert (=> bs!1940659 m!8133018))

(assert (=> bs!1940659 m!8133022))

(assert (=> bs!1940659 m!8133020))

(declare-fun m!8133082 () Bool)

(assert (=> bs!1940659 m!8133082))

(assert (=> bs!1940659 m!8133018))

(assert (=> b!7573586 d!2317720))

(declare-fun d!2317722 () Bool)

(declare-fun choose!58552 (Int) Bool)

(assert (=> d!2317722 (= (Exists!4283 lambda!466486) (choose!58552 lambda!466486))))

(declare-fun bs!1940660 () Bool)

(assert (= bs!1940660 d!2317722))

(declare-fun m!8133084 () Bool)

(assert (=> bs!1940660 m!8133084))

(assert (=> b!7573586 d!2317722))

(declare-fun b!7573732 () Bool)

(declare-fun e!4508588 () Bool)

(declare-fun lt!2651726 () Option!17273)

(declare-fun ++!17496 (List!72923 List!72923) List!72923)

(declare-fun get!25568 (Option!17273) tuple2!68874)

(assert (=> b!7573732 (= e!4508588 (= (++!17496 (_1!37740 (get!25568 lt!2651726)) (_2!37740 (get!25568 lt!2651726))) s!13436))))

(declare-fun b!7573733 () Bool)

(declare-fun e!4508586 () Option!17273)

(declare-fun e!4508584 () Option!17273)

(assert (=> b!7573733 (= e!4508586 e!4508584)))

(declare-fun c!1397223 () Bool)

(assert (=> b!7573733 (= c!1397223 (is-Nil!72799 s!13436))))

(declare-fun b!7573734 () Bool)

(declare-fun res!3033976 () Bool)

(assert (=> b!7573734 (=> (not res!3033976) (not e!4508588))))

(assert (=> b!7573734 (= res!3033976 (matchR!9636 (regTwo!40592 r!22341) (_2!37740 (get!25568 lt!2651726))))))

(declare-fun b!7573735 () Bool)

(declare-fun e!4508587 () Bool)

(assert (=> b!7573735 (= e!4508587 (matchR!9636 (regTwo!40592 r!22341) s!13436))))

(declare-fun b!7573736 () Bool)

(assert (=> b!7573736 (= e!4508586 (Some!17272 (tuple2!68875 Nil!72799 s!13436)))))

(declare-fun b!7573737 () Bool)

(declare-fun lt!2651727 () Unit!167036)

(declare-fun lt!2651725 () Unit!167036)

(assert (=> b!7573737 (= lt!2651727 lt!2651725)))

(assert (=> b!7573737 (= (++!17496 (++!17496 Nil!72799 (Cons!72799 (h!79247 s!13436) Nil!72799)) (t!387658 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3184 (List!72923 C!40406 List!72923 List!72923) Unit!167036)

(assert (=> b!7573737 (= lt!2651725 (lemmaMoveElementToOtherListKeepsConcatEq!3184 Nil!72799 (h!79247 s!13436) (t!387658 s!13436) s!13436))))

(assert (=> b!7573737 (= e!4508584 (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) (++!17496 Nil!72799 (Cons!72799 (h!79247 s!13436) Nil!72799)) (t!387658 s!13436) s!13436))))

(declare-fun b!7573738 () Bool)

(declare-fun e!4508585 () Bool)

(assert (=> b!7573738 (= e!4508585 (not (isDefined!13919 lt!2651726)))))

(declare-fun d!2317724 () Bool)

(assert (=> d!2317724 e!4508585))

(declare-fun res!3033977 () Bool)

(assert (=> d!2317724 (=> res!3033977 e!4508585)))

(assert (=> d!2317724 (= res!3033977 e!4508588)))

(declare-fun res!3033978 () Bool)

(assert (=> d!2317724 (=> (not res!3033978) (not e!4508588))))

(assert (=> d!2317724 (= res!3033978 (isDefined!13919 lt!2651726))))

(assert (=> d!2317724 (= lt!2651726 e!4508586)))

(declare-fun c!1397224 () Bool)

(assert (=> d!2317724 (= c!1397224 e!4508587)))

(declare-fun res!3033979 () Bool)

(assert (=> d!2317724 (=> (not res!3033979) (not e!4508587))))

(assert (=> d!2317724 (= res!3033979 (matchR!9636 (regOne!40592 r!22341) Nil!72799))))

(assert (=> d!2317724 (validRegex!10468 (regOne!40592 r!22341))))

(assert (=> d!2317724 (= (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) Nil!72799 s!13436 s!13436) lt!2651726)))

(declare-fun b!7573739 () Bool)

(assert (=> b!7573739 (= e!4508584 None!17272)))

(declare-fun b!7573740 () Bool)

(declare-fun res!3033975 () Bool)

(assert (=> b!7573740 (=> (not res!3033975) (not e!4508588))))

(assert (=> b!7573740 (= res!3033975 (matchR!9636 (regOne!40592 r!22341) (_1!37740 (get!25568 lt!2651726))))))

(assert (= (and d!2317724 res!3033979) b!7573735))

(assert (= (and d!2317724 c!1397224) b!7573736))

(assert (= (and d!2317724 (not c!1397224)) b!7573733))

(assert (= (and b!7573733 c!1397223) b!7573739))

(assert (= (and b!7573733 (not c!1397223)) b!7573737))

(assert (= (and d!2317724 res!3033978) b!7573740))

(assert (= (and b!7573740 res!3033975) b!7573734))

(assert (= (and b!7573734 res!3033976) b!7573732))

(assert (= (and d!2317724 (not res!3033977)) b!7573738))

(declare-fun m!8133086 () Bool)

(assert (=> b!7573740 m!8133086))

(declare-fun m!8133088 () Bool)

(assert (=> b!7573740 m!8133088))

(assert (=> b!7573734 m!8133086))

(declare-fun m!8133090 () Bool)

(assert (=> b!7573734 m!8133090))

(assert (=> b!7573732 m!8133086))

(declare-fun m!8133092 () Bool)

(assert (=> b!7573732 m!8133092))

(declare-fun m!8133094 () Bool)

(assert (=> d!2317724 m!8133094))

(declare-fun m!8133096 () Bool)

(assert (=> d!2317724 m!8133096))

(assert (=> d!2317724 m!8133020))

(declare-fun m!8133098 () Bool)

(assert (=> b!7573737 m!8133098))

(assert (=> b!7573737 m!8133098))

(declare-fun m!8133100 () Bool)

(assert (=> b!7573737 m!8133100))

(declare-fun m!8133102 () Bool)

(assert (=> b!7573737 m!8133102))

(assert (=> b!7573737 m!8133098))

(declare-fun m!8133104 () Bool)

(assert (=> b!7573737 m!8133104))

(declare-fun m!8133106 () Bool)

(assert (=> b!7573735 m!8133106))

(assert (=> b!7573738 m!8133094))

(assert (=> b!7573586 d!2317724))

(declare-fun d!2317726 () Bool)

(assert (=> d!2317726 (= (Exists!4283 lambda!466487) (choose!58552 lambda!466487))))

(declare-fun bs!1940661 () Bool)

(assert (= bs!1940661 d!2317726))

(declare-fun m!8133108 () Bool)

(assert (=> bs!1940661 m!8133108))

(assert (=> b!7573586 d!2317726))

(declare-fun d!2317728 () Bool)

(declare-fun isEmpty!41460 (Option!17273) Bool)

(assert (=> d!2317728 (= (isDefined!13919 (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) Nil!72799 s!13436 s!13436)) (not (isEmpty!41460 (findConcatSeparation!3333 (regOne!40592 r!22341) (regTwo!40592 r!22341) Nil!72799 s!13436 s!13436))))))

(declare-fun bs!1940662 () Bool)

(assert (= bs!1940662 d!2317728))

(assert (=> bs!1940662 m!8133018))

(declare-fun m!8133110 () Bool)

(assert (=> bs!1940662 m!8133110))

(assert (=> b!7573586 d!2317728))

(declare-fun bs!1940666 () Bool)

(declare-fun b!7573794 () Bool)

(assert (= bs!1940666 (and b!7573794 d!2317720)))

(declare-fun lambda!466515 () Int)

(assert (=> bs!1940666 (not (= lambda!466515 lambda!466504))))

(declare-fun bs!1940667 () Bool)

(assert (= bs!1940667 (and b!7573794 d!2317714)))

(assert (=> bs!1940667 (not (= lambda!466515 lambda!466501))))

(declare-fun bs!1940668 () Bool)

(assert (= bs!1940668 (and b!7573794 b!7573586)))

(assert (=> bs!1940668 (not (= lambda!466515 lambda!466487))))

(assert (=> bs!1940667 (not (= lambda!466515 lambda!466500))))

(assert (=> bs!1940668 (not (= lambda!466515 lambda!466486))))

(assert (=> b!7573794 true))

(assert (=> b!7573794 true))

(declare-fun bs!1940669 () Bool)

(declare-fun b!7573788 () Bool)

(assert (= bs!1940669 (and b!7573788 d!2317720)))

(declare-fun lambda!466516 () Int)

(assert (=> bs!1940669 (not (= lambda!466516 lambda!466504))))

(declare-fun bs!1940670 () Bool)

(assert (= bs!1940670 (and b!7573788 d!2317714)))

(assert (=> bs!1940670 (= lambda!466516 lambda!466501)))

(declare-fun bs!1940671 () Bool)

(assert (= bs!1940671 (and b!7573788 b!7573794)))

(assert (=> bs!1940671 (not (= lambda!466516 lambda!466515))))

(declare-fun bs!1940672 () Bool)

(assert (= bs!1940672 (and b!7573788 b!7573586)))

(assert (=> bs!1940672 (= lambda!466516 lambda!466487)))

(assert (=> bs!1940670 (not (= lambda!466516 lambda!466500))))

(assert (=> bs!1940672 (not (= lambda!466516 lambda!466486))))

(assert (=> b!7573788 true))

(assert (=> b!7573788 true))

(declare-fun b!7573784 () Bool)

(declare-fun e!4508618 () Bool)

(assert (=> b!7573784 (= e!4508618 (= s!13436 (Cons!72799 (c!1397201 r!22341) Nil!72799)))))

(declare-fun d!2317730 () Bool)

(declare-fun c!1397240 () Bool)

(assert (=> d!2317730 (= c!1397240 (is-EmptyExpr!20040 r!22341))))

(declare-fun e!4508617 () Bool)

(assert (=> d!2317730 (= (matchRSpec!4359 r!22341 s!13436) e!4508617)))

(declare-fun b!7573785 () Bool)

(declare-fun e!4508615 () Bool)

(declare-fun e!4508614 () Bool)

(assert (=> b!7573785 (= e!4508615 e!4508614)))

(declare-fun res!3034000 () Bool)

(assert (=> b!7573785 (= res!3034000 (matchRSpec!4359 (regOne!40593 r!22341) s!13436))))

(assert (=> b!7573785 (=> res!3034000 e!4508614)))

(declare-fun bm!694312 () Bool)

(declare-fun c!1397239 () Bool)

(declare-fun call!694317 () Bool)

(assert (=> bm!694312 (= call!694317 (Exists!4283 (ite c!1397239 lambda!466515 lambda!466516)))))

(declare-fun b!7573786 () Bool)

(declare-fun c!1397237 () Bool)

(assert (=> b!7573786 (= c!1397237 (is-Union!20040 r!22341))))

(assert (=> b!7573786 (= e!4508618 e!4508615)))

(declare-fun b!7573787 () Bool)

(declare-fun c!1397238 () Bool)

(assert (=> b!7573787 (= c!1397238 (is-ElementMatch!20040 r!22341))))

(declare-fun e!4508619 () Bool)

(assert (=> b!7573787 (= e!4508619 e!4508618)))

(declare-fun bm!694313 () Bool)

(declare-fun call!694318 () Bool)

(assert (=> bm!694313 (= call!694318 (isEmpty!41458 s!13436))))

(declare-fun e!4508620 () Bool)

(assert (=> b!7573788 (= e!4508620 call!694317)))

(declare-fun b!7573789 () Bool)

(assert (=> b!7573789 (= e!4508614 (matchRSpec!4359 (regTwo!40593 r!22341) s!13436))))

(declare-fun b!7573790 () Bool)

(assert (=> b!7573790 (= e!4508615 e!4508620)))

(assert (=> b!7573790 (= c!1397239 (is-Star!20040 r!22341))))

(declare-fun b!7573791 () Bool)

(assert (=> b!7573791 (= e!4508617 e!4508619)))

(declare-fun res!3033999 () Bool)

(assert (=> b!7573791 (= res!3033999 (not (is-EmptyLang!20040 r!22341)))))

(assert (=> b!7573791 (=> (not res!3033999) (not e!4508619))))

(declare-fun b!7573792 () Bool)

(assert (=> b!7573792 (= e!4508617 call!694318)))

(declare-fun b!7573793 () Bool)

(declare-fun res!3034001 () Bool)

(declare-fun e!4508616 () Bool)

(assert (=> b!7573793 (=> res!3034001 e!4508616)))

(assert (=> b!7573793 (= res!3034001 call!694318)))

(assert (=> b!7573793 (= e!4508620 e!4508616)))

(assert (=> b!7573794 (= e!4508616 call!694317)))

(assert (= (and d!2317730 c!1397240) b!7573792))

(assert (= (and d!2317730 (not c!1397240)) b!7573791))

(assert (= (and b!7573791 res!3033999) b!7573787))

(assert (= (and b!7573787 c!1397238) b!7573784))

(assert (= (and b!7573787 (not c!1397238)) b!7573786))

(assert (= (and b!7573786 c!1397237) b!7573785))

(assert (= (and b!7573786 (not c!1397237)) b!7573790))

(assert (= (and b!7573785 (not res!3034000)) b!7573789))

(assert (= (and b!7573790 c!1397239) b!7573793))

(assert (= (and b!7573790 (not c!1397239)) b!7573788))

(assert (= (and b!7573793 (not res!3034001)) b!7573794))

(assert (= (or b!7573794 b!7573788) bm!694312))

(assert (= (or b!7573792 b!7573793) bm!694313))

(declare-fun m!8133118 () Bool)

(assert (=> b!7573785 m!8133118))

(declare-fun m!8133120 () Bool)

(assert (=> bm!694312 m!8133120))

(assert (=> bm!694313 m!8133028))

(declare-fun m!8133122 () Bool)

(assert (=> b!7573789 m!8133122))

(assert (=> b!7573582 d!2317730))

(declare-fun b!7573851 () Bool)

(declare-fun res!3034039 () Bool)

(declare-fun e!4508653 () Bool)

(assert (=> b!7573851 (=> res!3034039 e!4508653)))

(assert (=> b!7573851 (= res!3034039 (not (is-ElementMatch!20040 r!22341)))))

(declare-fun e!4508649 () Bool)

(assert (=> b!7573851 (= e!4508649 e!4508653)))

(declare-fun b!7573852 () Bool)

(declare-fun res!3034041 () Bool)

(declare-fun e!4508652 () Bool)

(assert (=> b!7573852 (=> res!3034041 e!4508652)))

(declare-fun tail!15116 (List!72923) List!72923)

(assert (=> b!7573852 (= res!3034041 (not (isEmpty!41458 (tail!15116 s!13436))))))

(declare-fun b!7573853 () Bool)

(declare-fun res!3034036 () Bool)

(declare-fun e!4508650 () Bool)

(assert (=> b!7573853 (=> (not res!3034036) (not e!4508650))))

(declare-fun call!694321 () Bool)

(assert (=> b!7573853 (= res!3034036 (not call!694321))))

(declare-fun b!7573854 () Bool)

(declare-fun e!4508654 () Bool)

(assert (=> b!7573854 (= e!4508654 e!4508652)))

(declare-fun res!3034035 () Bool)

(assert (=> b!7573854 (=> res!3034035 e!4508652)))

(assert (=> b!7573854 (= res!3034035 call!694321)))

(declare-fun b!7573855 () Bool)

(declare-fun head!15576 (List!72923) C!40406)

(assert (=> b!7573855 (= e!4508652 (not (= (head!15576 s!13436) (c!1397201 r!22341))))))

(declare-fun b!7573856 () Bool)

(declare-fun e!4508651 () Bool)

(assert (=> b!7573856 (= e!4508651 e!4508649)))

(declare-fun c!1397253 () Bool)

(assert (=> b!7573856 (= c!1397253 (is-EmptyLang!20040 r!22341))))

(declare-fun b!7573857 () Bool)

(declare-fun res!3034037 () Bool)

(assert (=> b!7573857 (=> res!3034037 e!4508653)))

(assert (=> b!7573857 (= res!3034037 e!4508650)))

(declare-fun res!3034040 () Bool)

(assert (=> b!7573857 (=> (not res!3034040) (not e!4508650))))

(declare-fun lt!2651732 () Bool)

(assert (=> b!7573857 (= res!3034040 lt!2651732)))

(declare-fun b!7573858 () Bool)

(declare-fun e!4508655 () Bool)

(assert (=> b!7573858 (= e!4508655 (nullable!8744 r!22341))))

(declare-fun b!7573859 () Bool)

(assert (=> b!7573859 (= e!4508653 e!4508654)))

(declare-fun res!3034034 () Bool)

(assert (=> b!7573859 (=> (not res!3034034) (not e!4508654))))

(assert (=> b!7573859 (= res!3034034 (not lt!2651732))))

(declare-fun b!7573860 () Bool)

(assert (=> b!7573860 (= e!4508650 (= (head!15576 s!13436) (c!1397201 r!22341)))))

(declare-fun b!7573861 () Bool)

(assert (=> b!7573861 (= e!4508649 (not lt!2651732))))

(declare-fun b!7573862 () Bool)

(declare-fun res!3034038 () Bool)

(assert (=> b!7573862 (=> (not res!3034038) (not e!4508650))))

(assert (=> b!7573862 (= res!3034038 (isEmpty!41458 (tail!15116 s!13436)))))

(declare-fun b!7573863 () Bool)

(declare-fun derivativeStep!5776 (Regex!20040 C!40406) Regex!20040)

(assert (=> b!7573863 (= e!4508655 (matchR!9636 (derivativeStep!5776 r!22341 (head!15576 s!13436)) (tail!15116 s!13436)))))

(declare-fun b!7573864 () Bool)

(assert (=> b!7573864 (= e!4508651 (= lt!2651732 call!694321))))

(declare-fun bm!694316 () Bool)

(assert (=> bm!694316 (= call!694321 (isEmpty!41458 s!13436))))

(declare-fun d!2317734 () Bool)

(assert (=> d!2317734 e!4508651))

(declare-fun c!1397255 () Bool)

(assert (=> d!2317734 (= c!1397255 (is-EmptyExpr!20040 r!22341))))

(assert (=> d!2317734 (= lt!2651732 e!4508655)))

(declare-fun c!1397254 () Bool)

(assert (=> d!2317734 (= c!1397254 (isEmpty!41458 s!13436))))

(assert (=> d!2317734 (validRegex!10468 r!22341)))

(assert (=> d!2317734 (= (matchR!9636 r!22341 s!13436) lt!2651732)))

(assert (= (and d!2317734 c!1397254) b!7573858))

(assert (= (and d!2317734 (not c!1397254)) b!7573863))

(assert (= (and d!2317734 c!1397255) b!7573864))

(assert (= (and d!2317734 (not c!1397255)) b!7573856))

(assert (= (and b!7573856 c!1397253) b!7573861))

(assert (= (and b!7573856 (not c!1397253)) b!7573851))

(assert (= (and b!7573851 (not res!3034039)) b!7573857))

(assert (= (and b!7573857 res!3034040) b!7573853))

(assert (= (and b!7573853 res!3034036) b!7573862))

(assert (= (and b!7573862 res!3034038) b!7573860))

(assert (= (and b!7573857 (not res!3034037)) b!7573859))

(assert (= (and b!7573859 res!3034034) b!7573854))

(assert (= (and b!7573854 (not res!3034035)) b!7573852))

(assert (= (and b!7573852 (not res!3034041)) b!7573855))

(assert (= (or b!7573864 b!7573853 b!7573854) bm!694316))

(declare-fun m!8133124 () Bool)

(assert (=> b!7573860 m!8133124))

(assert (=> d!2317734 m!8133028))

(assert (=> d!2317734 m!8133030))

(declare-fun m!8133126 () Bool)

(assert (=> b!7573852 m!8133126))

(assert (=> b!7573852 m!8133126))

(declare-fun m!8133128 () Bool)

(assert (=> b!7573852 m!8133128))

(assert (=> b!7573863 m!8133124))

(assert (=> b!7573863 m!8133124))

(declare-fun m!8133130 () Bool)

(assert (=> b!7573863 m!8133130))

(assert (=> b!7573863 m!8133126))

(assert (=> b!7573863 m!8133130))

(assert (=> b!7573863 m!8133126))

(declare-fun m!8133132 () Bool)

(assert (=> b!7573863 m!8133132))

(assert (=> b!7573855 m!8133124))

(assert (=> bm!694316 m!8133028))

(declare-fun m!8133134 () Bool)

(assert (=> b!7573858 m!8133134))

(assert (=> b!7573862 m!8133126))

(assert (=> b!7573862 m!8133126))

(assert (=> b!7573862 m!8133128))

(assert (=> b!7573582 d!2317734))

(declare-fun d!2317736 () Bool)

(assert (=> d!2317736 (= (matchR!9636 r!22341 s!13436) (matchRSpec!4359 r!22341 s!13436))))

(declare-fun lt!2651735 () Unit!167036)

(declare-fun choose!58553 (Regex!20040 List!72923) Unit!167036)

(assert (=> d!2317736 (= lt!2651735 (choose!58553 r!22341 s!13436))))

(assert (=> d!2317736 (validRegex!10468 r!22341)))

(assert (=> d!2317736 (= (mainMatchTheorem!4353 r!22341 s!13436) lt!2651735)))

(declare-fun bs!1940673 () Bool)

(assert (= bs!1940673 d!2317736))

(assert (=> bs!1940673 m!8133010))

(assert (=> bs!1940673 m!8133008))

(declare-fun m!8133136 () Bool)

(assert (=> bs!1940673 m!8133136))

(assert (=> bs!1940673 m!8133030))

(assert (=> b!7573582 d!2317736))

(declare-fun d!2317738 () Bool)

(assert (=> d!2317738 (= (isEmpty!41458 s!13436) (is-Nil!72799 s!13436))))

(assert (=> b!7573584 d!2317738))

(declare-fun b!7573869 () Bool)

(declare-fun e!4508658 () Bool)

(declare-fun tp!2207008 () Bool)

(assert (=> b!7573869 (= e!4508658 (and tp_is_empty!50435 tp!2207008))))

(assert (=> b!7573585 (= tp!2206987 e!4508658)))

(assert (= (and b!7573585 (is-Cons!72799 (t!387658 s!13436))) b!7573869))

(declare-fun e!4508661 () Bool)

(assert (=> b!7573580 (= tp!2206984 e!4508661)))

(declare-fun b!7573882 () Bool)

(declare-fun tp!2207021 () Bool)

(assert (=> b!7573882 (= e!4508661 tp!2207021)))

(declare-fun b!7573880 () Bool)

(assert (=> b!7573880 (= e!4508661 tp_is_empty!50435)))

(declare-fun b!7573881 () Bool)

(declare-fun tp!2207022 () Bool)

(declare-fun tp!2207023 () Bool)

(assert (=> b!7573881 (= e!4508661 (and tp!2207022 tp!2207023))))

(declare-fun b!7573883 () Bool)

(declare-fun tp!2207020 () Bool)

(declare-fun tp!2207019 () Bool)

(assert (=> b!7573883 (= e!4508661 (and tp!2207020 tp!2207019))))

(assert (= (and b!7573580 (is-ElementMatch!20040 (regOne!40592 r!22341))) b!7573880))

(assert (= (and b!7573580 (is-Concat!28885 (regOne!40592 r!22341))) b!7573881))

(assert (= (and b!7573580 (is-Star!20040 (regOne!40592 r!22341))) b!7573882))

(assert (= (and b!7573580 (is-Union!20040 (regOne!40592 r!22341))) b!7573883))

(declare-fun e!4508662 () Bool)

(assert (=> b!7573580 (= tp!2206982 e!4508662)))

(declare-fun b!7573886 () Bool)

(declare-fun tp!2207026 () Bool)

(assert (=> b!7573886 (= e!4508662 tp!2207026)))

(declare-fun b!7573884 () Bool)

(assert (=> b!7573884 (= e!4508662 tp_is_empty!50435)))

(declare-fun b!7573885 () Bool)

(declare-fun tp!2207027 () Bool)

(declare-fun tp!2207028 () Bool)

(assert (=> b!7573885 (= e!4508662 (and tp!2207027 tp!2207028))))

(declare-fun b!7573887 () Bool)

(declare-fun tp!2207025 () Bool)

(declare-fun tp!2207024 () Bool)

(assert (=> b!7573887 (= e!4508662 (and tp!2207025 tp!2207024))))

(assert (= (and b!7573580 (is-ElementMatch!20040 (regTwo!40592 r!22341))) b!7573884))

(assert (= (and b!7573580 (is-Concat!28885 (regTwo!40592 r!22341))) b!7573885))

(assert (= (and b!7573580 (is-Star!20040 (regTwo!40592 r!22341))) b!7573886))

(assert (= (and b!7573580 (is-Union!20040 (regTwo!40592 r!22341))) b!7573887))

(declare-fun e!4508663 () Bool)

(assert (=> b!7573578 (= tp!2206986 e!4508663)))

(declare-fun b!7573890 () Bool)

(declare-fun tp!2207031 () Bool)

(assert (=> b!7573890 (= e!4508663 tp!2207031)))

(declare-fun b!7573888 () Bool)

(assert (=> b!7573888 (= e!4508663 tp_is_empty!50435)))

(declare-fun b!7573889 () Bool)

(declare-fun tp!2207032 () Bool)

(declare-fun tp!2207033 () Bool)

(assert (=> b!7573889 (= e!4508663 (and tp!2207032 tp!2207033))))

(declare-fun b!7573891 () Bool)

(declare-fun tp!2207030 () Bool)

(declare-fun tp!2207029 () Bool)

(assert (=> b!7573891 (= e!4508663 (and tp!2207030 tp!2207029))))

(assert (= (and b!7573578 (is-ElementMatch!20040 (regOne!40593 r!22341))) b!7573888))

(assert (= (and b!7573578 (is-Concat!28885 (regOne!40593 r!22341))) b!7573889))

(assert (= (and b!7573578 (is-Star!20040 (regOne!40593 r!22341))) b!7573890))

(assert (= (and b!7573578 (is-Union!20040 (regOne!40593 r!22341))) b!7573891))

(declare-fun e!4508664 () Bool)

(assert (=> b!7573578 (= tp!2206985 e!4508664)))

(declare-fun b!7573894 () Bool)

(declare-fun tp!2207036 () Bool)

(assert (=> b!7573894 (= e!4508664 tp!2207036)))

(declare-fun b!7573892 () Bool)

(assert (=> b!7573892 (= e!4508664 tp_is_empty!50435)))

(declare-fun b!7573893 () Bool)

(declare-fun tp!2207037 () Bool)

(declare-fun tp!2207038 () Bool)

(assert (=> b!7573893 (= e!4508664 (and tp!2207037 tp!2207038))))

(declare-fun b!7573895 () Bool)

(declare-fun tp!2207035 () Bool)

(declare-fun tp!2207034 () Bool)

(assert (=> b!7573895 (= e!4508664 (and tp!2207035 tp!2207034))))

(assert (= (and b!7573578 (is-ElementMatch!20040 (regTwo!40593 r!22341))) b!7573892))

(assert (= (and b!7573578 (is-Concat!28885 (regTwo!40593 r!22341))) b!7573893))

(assert (= (and b!7573578 (is-Star!20040 (regTwo!40593 r!22341))) b!7573894))

(assert (= (and b!7573578 (is-Union!20040 (regTwo!40593 r!22341))) b!7573895))

(declare-fun e!4508665 () Bool)

(assert (=> b!7573579 (= tp!2206983 e!4508665)))

(declare-fun b!7573898 () Bool)

(declare-fun tp!2207041 () Bool)

(assert (=> b!7573898 (= e!4508665 tp!2207041)))

(declare-fun b!7573896 () Bool)

(assert (=> b!7573896 (= e!4508665 tp_is_empty!50435)))

(declare-fun b!7573897 () Bool)

(declare-fun tp!2207042 () Bool)

(declare-fun tp!2207043 () Bool)

(assert (=> b!7573897 (= e!4508665 (and tp!2207042 tp!2207043))))

(declare-fun b!7573899 () Bool)

(declare-fun tp!2207040 () Bool)

(declare-fun tp!2207039 () Bool)

(assert (=> b!7573899 (= e!4508665 (and tp!2207040 tp!2207039))))

(assert (= (and b!7573579 (is-ElementMatch!20040 (reg!20369 r!22341))) b!7573896))

(assert (= (and b!7573579 (is-Concat!28885 (reg!20369 r!22341))) b!7573897))

(assert (= (and b!7573579 (is-Star!20040 (reg!20369 r!22341))) b!7573898))

(assert (= (and b!7573579 (is-Union!20040 (reg!20369 r!22341))) b!7573899))

(push 1)

(assert (not b!7573890))

(assert (not b!7573852))

(assert (not b!7573734))

(assert (not b!7573732))

(assert (not b!7573654))

(assert (not bm!694313))

(assert (not d!2317728))

(assert (not b!7573785))

(assert (not b!7573740))

(assert (not d!2317736))

(assert (not bm!694298))

(assert (not b!7573899))

(assert (not b!7573860))

(assert (not b!7573869))

(assert (not b!7573893))

(assert (not b!7573882))

(assert (not d!2317720))

(assert (not b!7573887))

(assert (not b!7573735))

(assert tp_is_empty!50435)

(assert (not b!7573885))

(assert (not b!7573889))

(assert (not b!7573898))

(assert (not b!7573862))

(assert (not bm!694299))

(assert (not d!2317710))

(assert (not b!7573897))

(assert (not d!2317724))

(assert (not bm!694316))

(assert (not b!7573855))

(assert (not d!2317714))

(assert (not b!7573858))

(assert (not d!2317726))

(assert (not b!7573737))

(assert (not d!2317722))

(assert (not b!7573894))

(assert (not bm!694296))

(assert (not b!7573883))

(assert (not b!7573891))

(assert (not d!2317734))

(assert (not bm!694312))

(assert (not b!7573863))

(assert (not b!7573886))

(assert (not b!7573881))

(assert (not b!7573895))

(assert (not b!7573789))

(assert (not bm!694301))

(assert (not b!7573663))

(assert (not b!7573738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

