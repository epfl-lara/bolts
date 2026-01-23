; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290676 () Bool)

(assert start!290676)

(declare-fun b!3028476 () Bool)

(declare-fun e!1899571 () Bool)

(declare-datatypes ((C!19020 0))(
  ( (C!19021 (val!11546 Int)) )
))
(declare-datatypes ((Regex!9417 0))(
  ( (ElementMatch!9417 (c!500241 C!19020)) (Concat!14738 (regOne!19346 Regex!9417) (regTwo!19346 Regex!9417)) (EmptyExpr!9417) (Star!9417 (reg!9746 Regex!9417)) (EmptyLang!9417) (Union!9417 (regOne!19347 Regex!9417) (regTwo!19347 Regex!9417)) )
))
(declare-fun r!17423 () Regex!9417)

(declare-fun validRegex!4150 (Regex!9417) Bool)

(assert (=> b!3028476 (= e!1899571 (validRegex!4150 (regTwo!19347 r!17423)))))

(declare-fun res!1246160 () Bool)

(declare-fun e!1899567 () Bool)

(assert (=> start!290676 (=> (not res!1246160) (not e!1899567))))

(assert (=> start!290676 (= res!1246160 (validRegex!4150 r!17423))))

(assert (=> start!290676 e!1899567))

(declare-fun e!1899570 () Bool)

(assert (=> start!290676 e!1899570))

(declare-fun e!1899569 () Bool)

(assert (=> start!290676 e!1899569))

(declare-fun b!3028477 () Bool)

(declare-fun e!1899568 () Bool)

(assert (=> b!3028477 (= e!1899567 (not e!1899568))))

(declare-fun res!1246158 () Bool)

(assert (=> b!3028477 (=> res!1246158 e!1899568)))

(declare-fun lt!1045647 () Bool)

(get-info :version)

(assert (=> b!3028477 (= res!1246158 (or (not lt!1045647) ((_ is Concat!14738) r!17423) (not ((_ is Union!9417) r!17423))))))

(declare-datatypes ((List!35282 0))(
  ( (Nil!35158) (Cons!35158 (h!40578 C!19020) (t!234347 List!35282)) )
))
(declare-fun s!11993 () List!35282)

(declare-fun matchRSpec!1554 (Regex!9417 List!35282) Bool)

(assert (=> b!3028477 (= lt!1045647 (matchRSpec!1554 r!17423 s!11993))))

(declare-fun matchR!4299 (Regex!9417 List!35282) Bool)

(assert (=> b!3028477 (= lt!1045647 (matchR!4299 r!17423 s!11993))))

(declare-datatypes ((Unit!49257 0))(
  ( (Unit!49258) )
))
(declare-fun lt!1045648 () Unit!49257)

(declare-fun mainMatchTheorem!1554 (Regex!9417 List!35282) Unit!49257)

(assert (=> b!3028477 (= lt!1045648 (mainMatchTheorem!1554 r!17423 s!11993))))

(declare-fun b!3028478 () Bool)

(declare-fun tp_is_empty!16397 () Bool)

(assert (=> b!3028478 (= e!1899570 tp_is_empty!16397)))

(declare-fun b!3028479 () Bool)

(declare-fun tp!960120 () Bool)

(assert (=> b!3028479 (= e!1899570 tp!960120)))

(declare-fun b!3028480 () Bool)

(assert (=> b!3028480 (= e!1899568 e!1899571)))

(declare-fun res!1246159 () Bool)

(assert (=> b!3028480 (=> (not res!1246159) (not e!1899571))))

(assert (=> b!3028480 (= res!1246159 (validRegex!4150 (regOne!19347 r!17423)))))

(declare-fun b!3028481 () Bool)

(declare-fun tp!960121 () Bool)

(declare-fun tp!960124 () Bool)

(assert (=> b!3028481 (= e!1899570 (and tp!960121 tp!960124))))

(declare-fun b!3028482 () Bool)

(declare-fun tp!960122 () Bool)

(assert (=> b!3028482 (= e!1899569 (and tp_is_empty!16397 tp!960122))))

(declare-fun b!3028483 () Bool)

(declare-fun tp!960125 () Bool)

(declare-fun tp!960123 () Bool)

(assert (=> b!3028483 (= e!1899570 (and tp!960125 tp!960123))))

(assert (= (and start!290676 res!1246160) b!3028477))

(assert (= (and b!3028477 (not res!1246158)) b!3028480))

(assert (= (and b!3028480 res!1246159) b!3028476))

(assert (= (and start!290676 ((_ is ElementMatch!9417) r!17423)) b!3028478))

(assert (= (and start!290676 ((_ is Concat!14738) r!17423)) b!3028481))

(assert (= (and start!290676 ((_ is Star!9417) r!17423)) b!3028479))

(assert (= (and start!290676 ((_ is Union!9417) r!17423)) b!3028483))

(assert (= (and start!290676 ((_ is Cons!35158) s!11993)) b!3028482))

(declare-fun m!3366937 () Bool)

(assert (=> b!3028476 m!3366937))

(declare-fun m!3366939 () Bool)

(assert (=> start!290676 m!3366939))

(declare-fun m!3366941 () Bool)

(assert (=> b!3028477 m!3366941))

(declare-fun m!3366943 () Bool)

(assert (=> b!3028477 m!3366943))

(declare-fun m!3366945 () Bool)

(assert (=> b!3028477 m!3366945))

(declare-fun m!3366947 () Bool)

(assert (=> b!3028480 m!3366947))

(check-sat (not b!3028477) (not b!3028481) (not b!3028483) (not b!3028482) (not b!3028479) (not b!3028480) (not start!290676) (not b!3028476) tp_is_empty!16397)
(check-sat)
(get-model)

(declare-fun b!3028520 () Bool)

(declare-fun res!1246185 () Bool)

(declare-fun e!1899604 () Bool)

(assert (=> b!3028520 (=> res!1246185 e!1899604)))

(assert (=> b!3028520 (= res!1246185 (not ((_ is Concat!14738) (regOne!19347 r!17423))))))

(declare-fun e!1899605 () Bool)

(assert (=> b!3028520 (= e!1899605 e!1899604)))

(declare-fun bm!206072 () Bool)

(declare-fun call!206077 () Bool)

(declare-fun call!206079 () Bool)

(assert (=> bm!206072 (= call!206077 call!206079)))

(declare-fun bm!206073 () Bool)

(declare-fun call!206078 () Bool)

(declare-fun c!500250 () Bool)

(assert (=> bm!206073 (= call!206078 (validRegex!4150 (ite c!500250 (regOne!19347 (regOne!19347 r!17423)) (regTwo!19346 (regOne!19347 r!17423)))))))

(declare-fun b!3028521 () Bool)

(declare-fun e!1899600 () Bool)

(assert (=> b!3028521 (= e!1899600 call!206078)))

(declare-fun b!3028522 () Bool)

(declare-fun res!1246184 () Bool)

(declare-fun e!1899603 () Bool)

(assert (=> b!3028522 (=> (not res!1246184) (not e!1899603))))

(assert (=> b!3028522 (= res!1246184 call!206078)))

(assert (=> b!3028522 (= e!1899605 e!1899603)))

(declare-fun b!3028523 () Bool)

(assert (=> b!3028523 (= e!1899603 call!206077)))

(declare-fun b!3028524 () Bool)

(declare-fun e!1899602 () Bool)

(assert (=> b!3028524 (= e!1899602 e!1899605)))

(assert (=> b!3028524 (= c!500250 ((_ is Union!9417) (regOne!19347 r!17423)))))

(declare-fun b!3028525 () Bool)

(assert (=> b!3028525 (= e!1899604 e!1899600)))

(declare-fun res!1246183 () Bool)

(assert (=> b!3028525 (=> (not res!1246183) (not e!1899600))))

(assert (=> b!3028525 (= res!1246183 call!206077)))

(declare-fun bm!206074 () Bool)

(declare-fun c!500251 () Bool)

(assert (=> bm!206074 (= call!206079 (validRegex!4150 (ite c!500251 (reg!9746 (regOne!19347 r!17423)) (ite c!500250 (regTwo!19347 (regOne!19347 r!17423)) (regOne!19346 (regOne!19347 r!17423))))))))

(declare-fun d!850896 () Bool)

(declare-fun res!1246182 () Bool)

(declare-fun e!1899601 () Bool)

(assert (=> d!850896 (=> res!1246182 e!1899601)))

(assert (=> d!850896 (= res!1246182 ((_ is ElementMatch!9417) (regOne!19347 r!17423)))))

(assert (=> d!850896 (= (validRegex!4150 (regOne!19347 r!17423)) e!1899601)))

(declare-fun b!3028526 () Bool)

(assert (=> b!3028526 (= e!1899601 e!1899602)))

(assert (=> b!3028526 (= c!500251 ((_ is Star!9417) (regOne!19347 r!17423)))))

(declare-fun b!3028527 () Bool)

(declare-fun e!1899606 () Bool)

(assert (=> b!3028527 (= e!1899606 call!206079)))

(declare-fun b!3028528 () Bool)

(assert (=> b!3028528 (= e!1899602 e!1899606)))

(declare-fun res!1246181 () Bool)

(declare-fun nullable!3069 (Regex!9417) Bool)

(assert (=> b!3028528 (= res!1246181 (not (nullable!3069 (reg!9746 (regOne!19347 r!17423)))))))

(assert (=> b!3028528 (=> (not res!1246181) (not e!1899606))))

(assert (= (and d!850896 (not res!1246182)) b!3028526))

(assert (= (and b!3028526 c!500251) b!3028528))

(assert (= (and b!3028526 (not c!500251)) b!3028524))

(assert (= (and b!3028528 res!1246181) b!3028527))

(assert (= (and b!3028524 c!500250) b!3028522))

(assert (= (and b!3028524 (not c!500250)) b!3028520))

(assert (= (and b!3028522 res!1246184) b!3028523))

(assert (= (and b!3028520 (not res!1246185)) b!3028525))

(assert (= (and b!3028525 res!1246183) b!3028521))

(assert (= (or b!3028522 b!3028521) bm!206073))

(assert (= (or b!3028523 b!3028525) bm!206072))

(assert (= (or b!3028527 bm!206072) bm!206074))

(declare-fun m!3366949 () Bool)

(assert (=> bm!206073 m!3366949))

(declare-fun m!3366951 () Bool)

(assert (=> bm!206074 m!3366951))

(declare-fun m!3366953 () Bool)

(assert (=> b!3028528 m!3366953))

(assert (=> b!3028480 d!850896))

(declare-fun b!3028529 () Bool)

(declare-fun res!1246190 () Bool)

(declare-fun e!1899611 () Bool)

(assert (=> b!3028529 (=> res!1246190 e!1899611)))

(assert (=> b!3028529 (= res!1246190 (not ((_ is Concat!14738) (regTwo!19347 r!17423))))))

(declare-fun e!1899612 () Bool)

(assert (=> b!3028529 (= e!1899612 e!1899611)))

(declare-fun bm!206075 () Bool)

(declare-fun call!206080 () Bool)

(declare-fun call!206082 () Bool)

(assert (=> bm!206075 (= call!206080 call!206082)))

(declare-fun bm!206076 () Bool)

(declare-fun call!206081 () Bool)

(declare-fun c!500252 () Bool)

(assert (=> bm!206076 (= call!206081 (validRegex!4150 (ite c!500252 (regOne!19347 (regTwo!19347 r!17423)) (regTwo!19346 (regTwo!19347 r!17423)))))))

(declare-fun b!3028530 () Bool)

(declare-fun e!1899607 () Bool)

(assert (=> b!3028530 (= e!1899607 call!206081)))

(declare-fun b!3028531 () Bool)

(declare-fun res!1246189 () Bool)

(declare-fun e!1899610 () Bool)

(assert (=> b!3028531 (=> (not res!1246189) (not e!1899610))))

(assert (=> b!3028531 (= res!1246189 call!206081)))

(assert (=> b!3028531 (= e!1899612 e!1899610)))

(declare-fun b!3028532 () Bool)

(assert (=> b!3028532 (= e!1899610 call!206080)))

(declare-fun b!3028533 () Bool)

(declare-fun e!1899609 () Bool)

(assert (=> b!3028533 (= e!1899609 e!1899612)))

(assert (=> b!3028533 (= c!500252 ((_ is Union!9417) (regTwo!19347 r!17423)))))

(declare-fun b!3028534 () Bool)

(assert (=> b!3028534 (= e!1899611 e!1899607)))

(declare-fun res!1246188 () Bool)

(assert (=> b!3028534 (=> (not res!1246188) (not e!1899607))))

(assert (=> b!3028534 (= res!1246188 call!206080)))

(declare-fun bm!206077 () Bool)

(declare-fun c!500253 () Bool)

(assert (=> bm!206077 (= call!206082 (validRegex!4150 (ite c!500253 (reg!9746 (regTwo!19347 r!17423)) (ite c!500252 (regTwo!19347 (regTwo!19347 r!17423)) (regOne!19346 (regTwo!19347 r!17423))))))))

(declare-fun d!850900 () Bool)

(declare-fun res!1246187 () Bool)

(declare-fun e!1899608 () Bool)

(assert (=> d!850900 (=> res!1246187 e!1899608)))

(assert (=> d!850900 (= res!1246187 ((_ is ElementMatch!9417) (regTwo!19347 r!17423)))))

(assert (=> d!850900 (= (validRegex!4150 (regTwo!19347 r!17423)) e!1899608)))

(declare-fun b!3028535 () Bool)

(assert (=> b!3028535 (= e!1899608 e!1899609)))

(assert (=> b!3028535 (= c!500253 ((_ is Star!9417) (regTwo!19347 r!17423)))))

(declare-fun b!3028536 () Bool)

(declare-fun e!1899613 () Bool)

(assert (=> b!3028536 (= e!1899613 call!206082)))

(declare-fun b!3028537 () Bool)

(assert (=> b!3028537 (= e!1899609 e!1899613)))

(declare-fun res!1246186 () Bool)

(assert (=> b!3028537 (= res!1246186 (not (nullable!3069 (reg!9746 (regTwo!19347 r!17423)))))))

(assert (=> b!3028537 (=> (not res!1246186) (not e!1899613))))

(assert (= (and d!850900 (not res!1246187)) b!3028535))

(assert (= (and b!3028535 c!500253) b!3028537))

(assert (= (and b!3028535 (not c!500253)) b!3028533))

(assert (= (and b!3028537 res!1246186) b!3028536))

(assert (= (and b!3028533 c!500252) b!3028531))

(assert (= (and b!3028533 (not c!500252)) b!3028529))

(assert (= (and b!3028531 res!1246189) b!3028532))

(assert (= (and b!3028529 (not res!1246190)) b!3028534))

(assert (= (and b!3028534 res!1246188) b!3028530))

(assert (= (or b!3028531 b!3028530) bm!206076))

(assert (= (or b!3028532 b!3028534) bm!206075))

(assert (= (or b!3028536 bm!206075) bm!206077))

(declare-fun m!3366955 () Bool)

(assert (=> bm!206076 m!3366955))

(declare-fun m!3366957 () Bool)

(assert (=> bm!206077 m!3366957))

(declare-fun m!3366959 () Bool)

(assert (=> b!3028537 m!3366959))

(assert (=> b!3028476 d!850900))

(declare-fun b!3028678 () Bool)

(assert (=> b!3028678 true))

(assert (=> b!3028678 true))

(declare-fun bs!530803 () Bool)

(declare-fun b!3028674 () Bool)

(assert (= bs!530803 (and b!3028674 b!3028678)))

(declare-fun lambda!113142 () Int)

(declare-fun lambda!113141 () Int)

(assert (=> bs!530803 (not (= lambda!113142 lambda!113141))))

(assert (=> b!3028674 true))

(assert (=> b!3028674 true))

(declare-fun b!3028672 () Bool)

(declare-fun e!1899697 () Bool)

(assert (=> b!3028672 (= e!1899697 (matchRSpec!1554 (regTwo!19347 r!17423) s!11993))))

(declare-fun b!3028673 () Bool)

(declare-fun e!1899692 () Bool)

(declare-fun call!206104 () Bool)

(assert (=> b!3028673 (= e!1899692 call!206104)))

(declare-fun e!1899694 () Bool)

(declare-fun call!206105 () Bool)

(assert (=> b!3028674 (= e!1899694 call!206105)))

(declare-fun b!3028675 () Bool)

(declare-fun e!1899693 () Bool)

(assert (=> b!3028675 (= e!1899693 (= s!11993 (Cons!35158 (c!500241 r!17423) Nil!35158)))))

(declare-fun b!3028676 () Bool)

(declare-fun c!500288 () Bool)

(assert (=> b!3028676 (= c!500288 ((_ is Union!9417) r!17423))))

(declare-fun e!1899696 () Bool)

(assert (=> b!3028676 (= e!1899693 e!1899696)))

(declare-fun d!850902 () Bool)

(declare-fun c!500289 () Bool)

(assert (=> d!850902 (= c!500289 ((_ is EmptyExpr!9417) r!17423))))

(assert (=> d!850902 (= (matchRSpec!1554 r!17423 s!11993) e!1899692)))

(declare-fun b!3028677 () Bool)

(declare-fun c!500287 () Bool)

(assert (=> b!3028677 (= c!500287 ((_ is ElementMatch!9417) r!17423))))

(declare-fun e!1899698 () Bool)

(assert (=> b!3028677 (= e!1899698 e!1899693)))

(declare-fun bm!206099 () Bool)

(declare-fun isEmpty!19460 (List!35282) Bool)

(assert (=> bm!206099 (= call!206104 (isEmpty!19460 s!11993))))

(declare-fun e!1899695 () Bool)

(assert (=> b!3028678 (= e!1899695 call!206105)))

(declare-fun b!3028679 () Bool)

(assert (=> b!3028679 (= e!1899696 e!1899697)))

(declare-fun res!1246257 () Bool)

(assert (=> b!3028679 (= res!1246257 (matchRSpec!1554 (regOne!19347 r!17423) s!11993))))

(assert (=> b!3028679 (=> res!1246257 e!1899697)))

(declare-fun c!500286 () Bool)

(declare-fun bm!206100 () Bool)

(declare-fun Exists!1685 (Int) Bool)

(assert (=> bm!206100 (= call!206105 (Exists!1685 (ite c!500286 lambda!113141 lambda!113142)))))

(declare-fun b!3028680 () Bool)

(declare-fun res!1246259 () Bool)

(assert (=> b!3028680 (=> res!1246259 e!1899695)))

(assert (=> b!3028680 (= res!1246259 call!206104)))

(assert (=> b!3028680 (= e!1899694 e!1899695)))

(declare-fun b!3028681 () Bool)

(assert (=> b!3028681 (= e!1899696 e!1899694)))

(assert (=> b!3028681 (= c!500286 ((_ is Star!9417) r!17423))))

(declare-fun b!3028682 () Bool)

(assert (=> b!3028682 (= e!1899692 e!1899698)))

(declare-fun res!1246258 () Bool)

(assert (=> b!3028682 (= res!1246258 (not ((_ is EmptyLang!9417) r!17423)))))

(assert (=> b!3028682 (=> (not res!1246258) (not e!1899698))))

(assert (= (and d!850902 c!500289) b!3028673))

(assert (= (and d!850902 (not c!500289)) b!3028682))

(assert (= (and b!3028682 res!1246258) b!3028677))

(assert (= (and b!3028677 c!500287) b!3028675))

(assert (= (and b!3028677 (not c!500287)) b!3028676))

(assert (= (and b!3028676 c!500288) b!3028679))

(assert (= (and b!3028676 (not c!500288)) b!3028681))

(assert (= (and b!3028679 (not res!1246257)) b!3028672))

(assert (= (and b!3028681 c!500286) b!3028680))

(assert (= (and b!3028681 (not c!500286)) b!3028674))

(assert (= (and b!3028680 (not res!1246259)) b!3028678))

(assert (= (or b!3028678 b!3028674) bm!206100))

(assert (= (or b!3028673 b!3028680) bm!206099))

(declare-fun m!3366987 () Bool)

(assert (=> b!3028672 m!3366987))

(declare-fun m!3366989 () Bool)

(assert (=> bm!206099 m!3366989))

(declare-fun m!3366991 () Bool)

(assert (=> b!3028679 m!3366991))

(declare-fun m!3366993 () Bool)

(assert (=> bm!206100 m!3366993))

(assert (=> b!3028477 d!850902))

(declare-fun b!3028764 () Bool)

(declare-fun e!1899733 () Bool)

(declare-fun head!6725 (List!35282) C!19020)

(assert (=> b!3028764 (= e!1899733 (not (= (head!6725 s!11993) (c!500241 r!17423))))))

(declare-fun b!3028765 () Bool)

(declare-fun res!1246285 () Bool)

(declare-fun e!1899732 () Bool)

(assert (=> b!3028765 (=> (not res!1246285) (not e!1899732))))

(declare-fun call!206109 () Bool)

(assert (=> b!3028765 (= res!1246285 (not call!206109))))

(declare-fun b!3028766 () Bool)

(declare-fun e!1899736 () Bool)

(declare-fun lt!1045657 () Bool)

(assert (=> b!3028766 (= e!1899736 (not lt!1045657))))

(declare-fun bm!206104 () Bool)

(assert (=> bm!206104 (= call!206109 (isEmpty!19460 s!11993))))

(declare-fun b!3028768 () Bool)

(declare-fun e!1899734 () Bool)

(declare-fun e!1899735 () Bool)

(assert (=> b!3028768 (= e!1899734 e!1899735)))

(declare-fun res!1246286 () Bool)

(assert (=> b!3028768 (=> (not res!1246286) (not e!1899735))))

(assert (=> b!3028768 (= res!1246286 (not lt!1045657))))

(declare-fun b!3028769 () Bool)

(declare-fun e!1899730 () Bool)

(assert (=> b!3028769 (= e!1899730 (nullable!3069 r!17423))))

(declare-fun b!3028770 () Bool)

(declare-fun e!1899731 () Bool)

(assert (=> b!3028770 (= e!1899731 (= lt!1045657 call!206109))))

(declare-fun b!3028767 () Bool)

(assert (=> b!3028767 (= e!1899731 e!1899736)))

(declare-fun c!500300 () Bool)

(assert (=> b!3028767 (= c!500300 ((_ is EmptyLang!9417) r!17423))))

(declare-fun d!850912 () Bool)

(assert (=> d!850912 e!1899731))

(declare-fun c!500299 () Bool)

(assert (=> d!850912 (= c!500299 ((_ is EmptyExpr!9417) r!17423))))

(assert (=> d!850912 (= lt!1045657 e!1899730)))

(declare-fun c!500301 () Bool)

(assert (=> d!850912 (= c!500301 (isEmpty!19460 s!11993))))

(assert (=> d!850912 (validRegex!4150 r!17423)))

(assert (=> d!850912 (= (matchR!4299 r!17423 s!11993) lt!1045657)))

(declare-fun b!3028771 () Bool)

(declare-fun res!1246289 () Bool)

(assert (=> b!3028771 (=> res!1246289 e!1899734)))

(assert (=> b!3028771 (= res!1246289 e!1899732)))

(declare-fun res!1246284 () Bool)

(assert (=> b!3028771 (=> (not res!1246284) (not e!1899732))))

(assert (=> b!3028771 (= res!1246284 lt!1045657)))

(declare-fun b!3028772 () Bool)

(assert (=> b!3028772 (= e!1899732 (= (head!6725 s!11993) (c!500241 r!17423)))))

(declare-fun b!3028773 () Bool)

(declare-fun res!1246287 () Bool)

(assert (=> b!3028773 (=> res!1246287 e!1899734)))

(assert (=> b!3028773 (= res!1246287 (not ((_ is ElementMatch!9417) r!17423)))))

(assert (=> b!3028773 (= e!1899736 e!1899734)))

(declare-fun b!3028774 () Bool)

(declare-fun res!1246291 () Bool)

(assert (=> b!3028774 (=> res!1246291 e!1899733)))

(declare-fun tail!4951 (List!35282) List!35282)

(assert (=> b!3028774 (= res!1246291 (not (isEmpty!19460 (tail!4951 s!11993))))))

(declare-fun b!3028775 () Bool)

(declare-fun res!1246288 () Bool)

(assert (=> b!3028775 (=> (not res!1246288) (not e!1899732))))

(assert (=> b!3028775 (= res!1246288 (isEmpty!19460 (tail!4951 s!11993)))))

(declare-fun b!3028776 () Bool)

(declare-fun derivativeStep!2666 (Regex!9417 C!19020) Regex!9417)

(assert (=> b!3028776 (= e!1899730 (matchR!4299 (derivativeStep!2666 r!17423 (head!6725 s!11993)) (tail!4951 s!11993)))))

(declare-fun b!3028777 () Bool)

(assert (=> b!3028777 (= e!1899735 e!1899733)))

(declare-fun res!1246290 () Bool)

(assert (=> b!3028777 (=> res!1246290 e!1899733)))

(assert (=> b!3028777 (= res!1246290 call!206109)))

(assert (= (and d!850912 c!500301) b!3028769))

(assert (= (and d!850912 (not c!500301)) b!3028776))

(assert (= (and d!850912 c!500299) b!3028770))

(assert (= (and d!850912 (not c!500299)) b!3028767))

(assert (= (and b!3028767 c!500300) b!3028766))

(assert (= (and b!3028767 (not c!500300)) b!3028773))

(assert (= (and b!3028773 (not res!1246287)) b!3028771))

(assert (= (and b!3028771 res!1246284) b!3028765))

(assert (= (and b!3028765 res!1246285) b!3028775))

(assert (= (and b!3028775 res!1246288) b!3028772))

(assert (= (and b!3028771 (not res!1246289)) b!3028768))

(assert (= (and b!3028768 res!1246286) b!3028777))

(assert (= (and b!3028777 (not res!1246290)) b!3028774))

(assert (= (and b!3028774 (not res!1246291)) b!3028764))

(assert (= (or b!3028770 b!3028765 b!3028777) bm!206104))

(declare-fun m!3367009 () Bool)

(assert (=> b!3028776 m!3367009))

(assert (=> b!3028776 m!3367009))

(declare-fun m!3367011 () Bool)

(assert (=> b!3028776 m!3367011))

(declare-fun m!3367013 () Bool)

(assert (=> b!3028776 m!3367013))

(assert (=> b!3028776 m!3367011))

(assert (=> b!3028776 m!3367013))

(declare-fun m!3367015 () Bool)

(assert (=> b!3028776 m!3367015))

(assert (=> bm!206104 m!3366989))

(assert (=> d!850912 m!3366989))

(assert (=> d!850912 m!3366939))

(assert (=> b!3028775 m!3367013))

(assert (=> b!3028775 m!3367013))

(declare-fun m!3367017 () Bool)

(assert (=> b!3028775 m!3367017))

(assert (=> b!3028764 m!3367009))

(declare-fun m!3367019 () Bool)

(assert (=> b!3028769 m!3367019))

(assert (=> b!3028774 m!3367013))

(assert (=> b!3028774 m!3367013))

(assert (=> b!3028774 m!3367017))

(assert (=> b!3028772 m!3367009))

(assert (=> b!3028477 d!850912))

(declare-fun d!850916 () Bool)

(assert (=> d!850916 (= (matchR!4299 r!17423 s!11993) (matchRSpec!1554 r!17423 s!11993))))

(declare-fun lt!1045660 () Unit!49257)

(declare-fun choose!17957 (Regex!9417 List!35282) Unit!49257)

(assert (=> d!850916 (= lt!1045660 (choose!17957 r!17423 s!11993))))

(assert (=> d!850916 (validRegex!4150 r!17423)))

(assert (=> d!850916 (= (mainMatchTheorem!1554 r!17423 s!11993) lt!1045660)))

(declare-fun bs!530805 () Bool)

(assert (= bs!530805 d!850916))

(assert (=> bs!530805 m!3366943))

(assert (=> bs!530805 m!3366941))

(declare-fun m!3367021 () Bool)

(assert (=> bs!530805 m!3367021))

(assert (=> bs!530805 m!3366939))

(assert (=> b!3028477 d!850916))

(declare-fun b!3028778 () Bool)

(declare-fun res!1246296 () Bool)

(declare-fun e!1899741 () Bool)

(assert (=> b!3028778 (=> res!1246296 e!1899741)))

(assert (=> b!3028778 (= res!1246296 (not ((_ is Concat!14738) r!17423)))))

(declare-fun e!1899742 () Bool)

(assert (=> b!3028778 (= e!1899742 e!1899741)))

(declare-fun bm!206105 () Bool)

(declare-fun call!206110 () Bool)

(declare-fun call!206112 () Bool)

(assert (=> bm!206105 (= call!206110 call!206112)))

(declare-fun bm!206106 () Bool)

(declare-fun call!206111 () Bool)

(declare-fun c!500302 () Bool)

(assert (=> bm!206106 (= call!206111 (validRegex!4150 (ite c!500302 (regOne!19347 r!17423) (regTwo!19346 r!17423))))))

(declare-fun b!3028779 () Bool)

(declare-fun e!1899737 () Bool)

(assert (=> b!3028779 (= e!1899737 call!206111)))

(declare-fun b!3028780 () Bool)

(declare-fun res!1246295 () Bool)

(declare-fun e!1899740 () Bool)

(assert (=> b!3028780 (=> (not res!1246295) (not e!1899740))))

(assert (=> b!3028780 (= res!1246295 call!206111)))

(assert (=> b!3028780 (= e!1899742 e!1899740)))

(declare-fun b!3028781 () Bool)

(assert (=> b!3028781 (= e!1899740 call!206110)))

(declare-fun b!3028782 () Bool)

(declare-fun e!1899739 () Bool)

(assert (=> b!3028782 (= e!1899739 e!1899742)))

(assert (=> b!3028782 (= c!500302 ((_ is Union!9417) r!17423))))

(declare-fun b!3028783 () Bool)

(assert (=> b!3028783 (= e!1899741 e!1899737)))

(declare-fun res!1246294 () Bool)

(assert (=> b!3028783 (=> (not res!1246294) (not e!1899737))))

(assert (=> b!3028783 (= res!1246294 call!206110)))

(declare-fun bm!206107 () Bool)

(declare-fun c!500303 () Bool)

(assert (=> bm!206107 (= call!206112 (validRegex!4150 (ite c!500303 (reg!9746 r!17423) (ite c!500302 (regTwo!19347 r!17423) (regOne!19346 r!17423)))))))

(declare-fun d!850918 () Bool)

(declare-fun res!1246293 () Bool)

(declare-fun e!1899738 () Bool)

(assert (=> d!850918 (=> res!1246293 e!1899738)))

(assert (=> d!850918 (= res!1246293 ((_ is ElementMatch!9417) r!17423))))

(assert (=> d!850918 (= (validRegex!4150 r!17423) e!1899738)))

(declare-fun b!3028784 () Bool)

(assert (=> b!3028784 (= e!1899738 e!1899739)))

(assert (=> b!3028784 (= c!500303 ((_ is Star!9417) r!17423))))

(declare-fun b!3028785 () Bool)

(declare-fun e!1899743 () Bool)

(assert (=> b!3028785 (= e!1899743 call!206112)))

(declare-fun b!3028786 () Bool)

(assert (=> b!3028786 (= e!1899739 e!1899743)))

(declare-fun res!1246292 () Bool)

(assert (=> b!3028786 (= res!1246292 (not (nullable!3069 (reg!9746 r!17423))))))

(assert (=> b!3028786 (=> (not res!1246292) (not e!1899743))))

(assert (= (and d!850918 (not res!1246293)) b!3028784))

(assert (= (and b!3028784 c!500303) b!3028786))

(assert (= (and b!3028784 (not c!500303)) b!3028782))

(assert (= (and b!3028786 res!1246292) b!3028785))

(assert (= (and b!3028782 c!500302) b!3028780))

(assert (= (and b!3028782 (not c!500302)) b!3028778))

(assert (= (and b!3028780 res!1246295) b!3028781))

(assert (= (and b!3028778 (not res!1246296)) b!3028783))

(assert (= (and b!3028783 res!1246294) b!3028779))

(assert (= (or b!3028780 b!3028779) bm!206106))

(assert (= (or b!3028781 b!3028783) bm!206105))

(assert (= (or b!3028785 bm!206105) bm!206107))

(declare-fun m!3367023 () Bool)

(assert (=> bm!206106 m!3367023))

(declare-fun m!3367025 () Bool)

(assert (=> bm!206107 m!3367025))

(declare-fun m!3367027 () Bool)

(assert (=> b!3028786 m!3367027))

(assert (=> start!290676 d!850918))

(declare-fun b!3028799 () Bool)

(declare-fun e!1899746 () Bool)

(declare-fun tp!960174 () Bool)

(assert (=> b!3028799 (= e!1899746 tp!960174)))

(declare-fun b!3028798 () Bool)

(declare-fun tp!960177 () Bool)

(declare-fun tp!960176 () Bool)

(assert (=> b!3028798 (= e!1899746 (and tp!960177 tp!960176))))

(declare-fun b!3028797 () Bool)

(assert (=> b!3028797 (= e!1899746 tp_is_empty!16397)))

(assert (=> b!3028481 (= tp!960121 e!1899746)))

(declare-fun b!3028800 () Bool)

(declare-fun tp!960178 () Bool)

(declare-fun tp!960175 () Bool)

(assert (=> b!3028800 (= e!1899746 (and tp!960178 tp!960175))))

(assert (= (and b!3028481 ((_ is ElementMatch!9417) (regOne!19346 r!17423))) b!3028797))

(assert (= (and b!3028481 ((_ is Concat!14738) (regOne!19346 r!17423))) b!3028798))

(assert (= (and b!3028481 ((_ is Star!9417) (regOne!19346 r!17423))) b!3028799))

(assert (= (and b!3028481 ((_ is Union!9417) (regOne!19346 r!17423))) b!3028800))

(declare-fun b!3028803 () Bool)

(declare-fun e!1899747 () Bool)

(declare-fun tp!960179 () Bool)

(assert (=> b!3028803 (= e!1899747 tp!960179)))

(declare-fun b!3028802 () Bool)

(declare-fun tp!960182 () Bool)

(declare-fun tp!960181 () Bool)

(assert (=> b!3028802 (= e!1899747 (and tp!960182 tp!960181))))

(declare-fun b!3028801 () Bool)

(assert (=> b!3028801 (= e!1899747 tp_is_empty!16397)))

(assert (=> b!3028481 (= tp!960124 e!1899747)))

(declare-fun b!3028804 () Bool)

(declare-fun tp!960183 () Bool)

(declare-fun tp!960180 () Bool)

(assert (=> b!3028804 (= e!1899747 (and tp!960183 tp!960180))))

(assert (= (and b!3028481 ((_ is ElementMatch!9417) (regTwo!19346 r!17423))) b!3028801))

(assert (= (and b!3028481 ((_ is Concat!14738) (regTwo!19346 r!17423))) b!3028802))

(assert (= (and b!3028481 ((_ is Star!9417) (regTwo!19346 r!17423))) b!3028803))

(assert (= (and b!3028481 ((_ is Union!9417) (regTwo!19346 r!17423))) b!3028804))

(declare-fun b!3028809 () Bool)

(declare-fun e!1899750 () Bool)

(declare-fun tp!960186 () Bool)

(assert (=> b!3028809 (= e!1899750 (and tp_is_empty!16397 tp!960186))))

(assert (=> b!3028482 (= tp!960122 e!1899750)))

(assert (= (and b!3028482 ((_ is Cons!35158) (t!234347 s!11993))) b!3028809))

(declare-fun b!3028812 () Bool)

(declare-fun e!1899751 () Bool)

(declare-fun tp!960187 () Bool)

(assert (=> b!3028812 (= e!1899751 tp!960187)))

(declare-fun b!3028811 () Bool)

(declare-fun tp!960190 () Bool)

(declare-fun tp!960189 () Bool)

(assert (=> b!3028811 (= e!1899751 (and tp!960190 tp!960189))))

(declare-fun b!3028810 () Bool)

(assert (=> b!3028810 (= e!1899751 tp_is_empty!16397)))

(assert (=> b!3028483 (= tp!960125 e!1899751)))

(declare-fun b!3028813 () Bool)

(declare-fun tp!960191 () Bool)

(declare-fun tp!960188 () Bool)

(assert (=> b!3028813 (= e!1899751 (and tp!960191 tp!960188))))

(assert (= (and b!3028483 ((_ is ElementMatch!9417) (regOne!19347 r!17423))) b!3028810))

(assert (= (and b!3028483 ((_ is Concat!14738) (regOne!19347 r!17423))) b!3028811))

(assert (= (and b!3028483 ((_ is Star!9417) (regOne!19347 r!17423))) b!3028812))

(assert (= (and b!3028483 ((_ is Union!9417) (regOne!19347 r!17423))) b!3028813))

(declare-fun b!3028816 () Bool)

(declare-fun e!1899752 () Bool)

(declare-fun tp!960192 () Bool)

(assert (=> b!3028816 (= e!1899752 tp!960192)))

(declare-fun b!3028815 () Bool)

(declare-fun tp!960195 () Bool)

(declare-fun tp!960194 () Bool)

(assert (=> b!3028815 (= e!1899752 (and tp!960195 tp!960194))))

(declare-fun b!3028814 () Bool)

(assert (=> b!3028814 (= e!1899752 tp_is_empty!16397)))

(assert (=> b!3028483 (= tp!960123 e!1899752)))

(declare-fun b!3028817 () Bool)

(declare-fun tp!960196 () Bool)

(declare-fun tp!960193 () Bool)

(assert (=> b!3028817 (= e!1899752 (and tp!960196 tp!960193))))

(assert (= (and b!3028483 ((_ is ElementMatch!9417) (regTwo!19347 r!17423))) b!3028814))

(assert (= (and b!3028483 ((_ is Concat!14738) (regTwo!19347 r!17423))) b!3028815))

(assert (= (and b!3028483 ((_ is Star!9417) (regTwo!19347 r!17423))) b!3028816))

(assert (= (and b!3028483 ((_ is Union!9417) (regTwo!19347 r!17423))) b!3028817))

(declare-fun b!3028820 () Bool)

(declare-fun e!1899753 () Bool)

(declare-fun tp!960197 () Bool)

(assert (=> b!3028820 (= e!1899753 tp!960197)))

(declare-fun b!3028819 () Bool)

(declare-fun tp!960200 () Bool)

(declare-fun tp!960199 () Bool)

(assert (=> b!3028819 (= e!1899753 (and tp!960200 tp!960199))))

(declare-fun b!3028818 () Bool)

(assert (=> b!3028818 (= e!1899753 tp_is_empty!16397)))

(assert (=> b!3028479 (= tp!960120 e!1899753)))

(declare-fun b!3028821 () Bool)

(declare-fun tp!960201 () Bool)

(declare-fun tp!960198 () Bool)

(assert (=> b!3028821 (= e!1899753 (and tp!960201 tp!960198))))

(assert (= (and b!3028479 ((_ is ElementMatch!9417) (reg!9746 r!17423))) b!3028818))

(assert (= (and b!3028479 ((_ is Concat!14738) (reg!9746 r!17423))) b!3028819))

(assert (= (and b!3028479 ((_ is Star!9417) (reg!9746 r!17423))) b!3028820))

(assert (= (and b!3028479 ((_ is Union!9417) (reg!9746 r!17423))) b!3028821))

(check-sat (not b!3028811) (not bm!206104) (not bm!206073) (not b!3028804) (not b!3028772) (not b!3028528) (not d!850916) (not bm!206076) (not b!3028800) (not b!3028798) (not d!850912) (not b!3028799) (not bm!206074) (not b!3028821) (not b!3028679) (not b!3028802) (not b!3028819) (not b!3028769) (not b!3028776) (not b!3028775) (not bm!206100) (not b!3028774) (not b!3028672) (not b!3028815) (not bm!206106) (not b!3028764) (not b!3028809) (not b!3028803) (not b!3028813) (not b!3028817) (not bm!206099) (not bm!206107) (not b!3028786) (not b!3028812) (not b!3028820) (not b!3028816) tp_is_empty!16397 (not bm!206077) (not b!3028537))
(check-sat)
