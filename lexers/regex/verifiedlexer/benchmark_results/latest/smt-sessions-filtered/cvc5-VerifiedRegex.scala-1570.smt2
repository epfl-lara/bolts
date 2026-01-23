; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81528 () Bool)

(assert start!81528)

(declare-fun b!906477 () Bool)

(assert (=> b!906477 true))

(assert (=> b!906477 true))

(declare-fun lambda!28614 () Int)

(declare-fun lambda!28613 () Int)

(assert (=> b!906477 (not (= lambda!28614 lambda!28613))))

(assert (=> b!906477 true))

(assert (=> b!906477 true))

(declare-fun b!906470 () Bool)

(declare-fun e!591925 () Bool)

(declare-fun e!591921 () Bool)

(assert (=> b!906470 (= e!591925 e!591921)))

(declare-fun res!412178 () Bool)

(assert (=> b!906470 (=> res!412178 e!591921)))

(declare-fun lt!335726 () Bool)

(assert (=> b!906470 (= res!412178 (not lt!335726))))

(declare-fun lt!335731 () Bool)

(assert (=> b!906470 (= lt!335731 lt!335726)))

(declare-datatypes ((C!5366 0))(
  ( (C!5367 (val!2931 Int)) )
))
(declare-datatypes ((Regex!2398 0))(
  ( (ElementMatch!2398 (c!146855 C!5366)) (Concat!4231 (regOne!5308 Regex!2398) (regTwo!5308 Regex!2398)) (EmptyExpr!2398) (Star!2398 (reg!2727 Regex!2398)) (EmptyLang!2398) (Union!2398 (regOne!5309 Regex!2398) (regTwo!5309 Regex!2398)) )
))
(declare-fun lt!335730 () Regex!2398)

(declare-datatypes ((List!9628 0))(
  ( (Nil!9612) (Cons!9612 (h!15013 C!5366) (t!100674 List!9628)) )
))
(declare-fun s!10566 () List!9628)

(declare-fun matchR!936 (Regex!2398 List!9628) Bool)

(assert (=> b!906470 (= lt!335726 (matchR!936 lt!335730 s!10566))))

(declare-fun r!15766 () Regex!2398)

(assert (=> b!906470 (= lt!335731 (matchR!936 (regTwo!5308 r!15766) s!10566))))

(declare-fun removeUselessConcat!97 (Regex!2398) Regex!2398)

(assert (=> b!906470 (= lt!335730 (removeUselessConcat!97 (regTwo!5308 r!15766)))))

(declare-datatypes ((Unit!14415 0))(
  ( (Unit!14416) )
))
(declare-fun lt!335729 () Unit!14415)

(declare-fun lemmaRemoveUselessConcatSound!85 (Regex!2398 List!9628) Unit!14415)

(assert (=> b!906470 (= lt!335729 (lemmaRemoveUselessConcatSound!85 (regTwo!5308 r!15766) s!10566))))

(declare-fun b!906471 () Bool)

(declare-fun e!591922 () Bool)

(declare-fun tp!283806 () Bool)

(declare-fun tp!283802 () Bool)

(assert (=> b!906471 (= e!591922 (and tp!283806 tp!283802))))

(declare-fun b!906472 () Bool)

(declare-fun tp!283804 () Bool)

(declare-fun tp!283805 () Bool)

(assert (=> b!906472 (= e!591922 (and tp!283804 tp!283805))))

(declare-fun res!412177 () Bool)

(declare-fun e!591920 () Bool)

(assert (=> start!81528 (=> (not res!412177) (not e!591920))))

(declare-fun validRegex!867 (Regex!2398) Bool)

(assert (=> start!81528 (= res!412177 (validRegex!867 r!15766))))

(assert (=> start!81528 e!591920))

(assert (=> start!81528 e!591922))

(declare-fun e!591924 () Bool)

(assert (=> start!81528 e!591924))

(declare-fun b!906473 () Bool)

(declare-fun res!412180 () Bool)

(assert (=> b!906473 (=> res!412180 e!591925)))

(declare-datatypes ((tuple2!10790 0))(
  ( (tuple2!10791 (_1!6221 List!9628) (_2!6221 List!9628)) )
))
(declare-datatypes ((Option!2037 0))(
  ( (None!2036) (Some!2036 (v!19453 tuple2!10790)) )
))
(declare-fun lt!335734 () Option!2037)

(declare-fun isEmpty!5818 (Option!2037) Bool)

(assert (=> b!906473 (= res!412180 (not (isEmpty!5818 lt!335734)))))

(declare-fun b!906474 () Bool)

(declare-fun tp_is_empty!4439 () Bool)

(assert (=> b!906474 (= e!591922 tp_is_empty!4439)))

(declare-fun b!906475 () Bool)

(declare-fun tp!283803 () Bool)

(assert (=> b!906475 (= e!591924 (and tp_is_empty!4439 tp!283803))))

(declare-fun b!906476 () Bool)

(assert (=> b!906476 (= e!591921 (validRegex!867 (regTwo!5308 r!15766)))))

(declare-fun e!591923 () Bool)

(assert (=> b!906477 (= e!591923 e!591925)))

(declare-fun res!412179 () Bool)

(assert (=> b!906477 (=> res!412179 e!591925)))

(declare-fun isEmpty!5819 (List!9628) Bool)

(assert (=> b!906477 (= res!412179 (isEmpty!5819 s!10566))))

(declare-fun Exists!173 (Int) Bool)

(assert (=> b!906477 (= (Exists!173 lambda!28613) (Exists!173 lambda!28614))))

(declare-fun lt!335727 () Unit!14415)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!89 (Regex!2398 Regex!2398 List!9628) Unit!14415)

(assert (=> b!906477 (= lt!335727 (lemmaExistCutMatchRandMatchRSpecEquivalent!89 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566))))

(declare-fun isDefined!1679 (Option!2037) Bool)

(assert (=> b!906477 (= (isDefined!1679 lt!335734) (Exists!173 lambda!28613))))

(declare-fun findConcatSeparation!143 (Regex!2398 Regex!2398 List!9628 List!9628 List!9628) Option!2037)

(assert (=> b!906477 (= lt!335734 (findConcatSeparation!143 EmptyExpr!2398 (regTwo!5308 r!15766) Nil!9612 s!10566 s!10566))))

(declare-fun lt!335728 () Unit!14415)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!143 (Regex!2398 Regex!2398 List!9628) Unit!14415)

(assert (=> b!906477 (= lt!335728 (lemmaFindConcatSeparationEquivalentToExists!143 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566))))

(declare-fun b!906478 () Bool)

(assert (=> b!906478 (= e!591920 (not e!591923))))

(declare-fun res!412181 () Bool)

(assert (=> b!906478 (=> res!412181 e!591923)))

(declare-fun lt!335733 () Bool)

(assert (=> b!906478 (= res!412181 (or lt!335733 (not (is-Concat!4231 r!15766)) (not (is-EmptyExpr!2398 (regOne!5308 r!15766)))))))

(declare-fun matchRSpec!199 (Regex!2398 List!9628) Bool)

(assert (=> b!906478 (= lt!335733 (matchRSpec!199 r!15766 s!10566))))

(assert (=> b!906478 (= lt!335733 (matchR!936 r!15766 s!10566))))

(declare-fun lt!335732 () Unit!14415)

(declare-fun mainMatchTheorem!199 (Regex!2398 List!9628) Unit!14415)

(assert (=> b!906478 (= lt!335732 (mainMatchTheorem!199 r!15766 s!10566))))

(declare-fun b!906479 () Bool)

(declare-fun tp!283801 () Bool)

(assert (=> b!906479 (= e!591922 tp!283801)))

(assert (= (and start!81528 res!412177) b!906478))

(assert (= (and b!906478 (not res!412181)) b!906477))

(assert (= (and b!906477 (not res!412179)) b!906473))

(assert (= (and b!906473 (not res!412180)) b!906470))

(assert (= (and b!906470 (not res!412178)) b!906476))

(assert (= (and start!81528 (is-ElementMatch!2398 r!15766)) b!906474))

(assert (= (and start!81528 (is-Concat!4231 r!15766)) b!906472))

(assert (= (and start!81528 (is-Star!2398 r!15766)) b!906479))

(assert (= (and start!81528 (is-Union!2398 r!15766)) b!906471))

(assert (= (and start!81528 (is-Cons!9612 s!10566)) b!906475))

(declare-fun m!1141193 () Bool)

(assert (=> b!906476 m!1141193))

(declare-fun m!1141195 () Bool)

(assert (=> start!81528 m!1141195))

(declare-fun m!1141197 () Bool)

(assert (=> b!906470 m!1141197))

(declare-fun m!1141199 () Bool)

(assert (=> b!906470 m!1141199))

(declare-fun m!1141201 () Bool)

(assert (=> b!906470 m!1141201))

(declare-fun m!1141203 () Bool)

(assert (=> b!906470 m!1141203))

(declare-fun m!1141205 () Bool)

(assert (=> b!906477 m!1141205))

(declare-fun m!1141207 () Bool)

(assert (=> b!906477 m!1141207))

(assert (=> b!906477 m!1141205))

(declare-fun m!1141209 () Bool)

(assert (=> b!906477 m!1141209))

(declare-fun m!1141211 () Bool)

(assert (=> b!906477 m!1141211))

(declare-fun m!1141213 () Bool)

(assert (=> b!906477 m!1141213))

(declare-fun m!1141215 () Bool)

(assert (=> b!906477 m!1141215))

(declare-fun m!1141217 () Bool)

(assert (=> b!906477 m!1141217))

(declare-fun m!1141219 () Bool)

(assert (=> b!906478 m!1141219))

(declare-fun m!1141221 () Bool)

(assert (=> b!906478 m!1141221))

(declare-fun m!1141223 () Bool)

(assert (=> b!906478 m!1141223))

(declare-fun m!1141225 () Bool)

(assert (=> b!906473 m!1141225))

(push 1)

(assert (not b!906479))

(assert (not b!906477))

(assert (not start!81528))

(assert (not b!906478))

(assert (not b!906475))

(assert (not b!906472))

(assert (not b!906470))

(assert (not b!906471))

(assert (not b!906473))

(assert tp_is_empty!4439)

(assert (not b!906476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!54295 () Bool)

(declare-fun call!54300 () Bool)

(declare-fun call!54302 () Bool)

(assert (=> bm!54295 (= call!54300 call!54302)))

(declare-fun b!906548 () Bool)

(declare-fun e!591965 () Bool)

(declare-fun call!54301 () Bool)

(assert (=> b!906548 (= e!591965 call!54301)))

(declare-fun b!906549 () Bool)

(declare-fun e!591967 () Bool)

(declare-fun e!591964 () Bool)

(assert (=> b!906549 (= e!591967 e!591964)))

(declare-fun c!146861 () Bool)

(assert (=> b!906549 (= c!146861 (is-Star!2398 r!15766))))

(declare-fun b!906550 () Bool)

(declare-fun e!591969 () Bool)

(assert (=> b!906550 (= e!591969 e!591965)))

(declare-fun res!412219 () Bool)

(assert (=> b!906550 (=> (not res!412219) (not e!591965))))

(assert (=> b!906550 (= res!412219 call!54300)))

(declare-fun b!906551 () Bool)

(declare-fun e!591970 () Bool)

(assert (=> b!906551 (= e!591964 e!591970)))

(declare-fun c!146862 () Bool)

(assert (=> b!906551 (= c!146862 (is-Union!2398 r!15766))))

(declare-fun b!906552 () Bool)

(declare-fun res!412223 () Bool)

(assert (=> b!906552 (=> res!412223 e!591969)))

(assert (=> b!906552 (= res!412223 (not (is-Concat!4231 r!15766)))))

(assert (=> b!906552 (= e!591970 e!591969)))

(declare-fun bm!54296 () Bool)

(assert (=> bm!54296 (= call!54301 (validRegex!867 (ite c!146862 (regTwo!5309 r!15766) (regTwo!5308 r!15766))))))

(declare-fun b!906553 () Bool)

(declare-fun e!591966 () Bool)

(assert (=> b!906553 (= e!591966 call!54302)))

(declare-fun b!906554 () Bool)

(declare-fun res!412222 () Bool)

(declare-fun e!591968 () Bool)

(assert (=> b!906554 (=> (not res!412222) (not e!591968))))

(assert (=> b!906554 (= res!412222 call!54300)))

(assert (=> b!906554 (= e!591970 e!591968)))

(declare-fun b!906555 () Bool)

(assert (=> b!906555 (= e!591964 e!591966)))

(declare-fun res!412220 () Bool)

(declare-fun nullable!646 (Regex!2398) Bool)

(assert (=> b!906555 (= res!412220 (not (nullable!646 (reg!2727 r!15766))))))

(assert (=> b!906555 (=> (not res!412220) (not e!591966))))

(declare-fun b!906556 () Bool)

(assert (=> b!906556 (= e!591968 call!54301)))

(declare-fun d!278875 () Bool)

(declare-fun res!412221 () Bool)

(assert (=> d!278875 (=> res!412221 e!591967)))

(assert (=> d!278875 (= res!412221 (is-ElementMatch!2398 r!15766))))

(assert (=> d!278875 (= (validRegex!867 r!15766) e!591967)))

(declare-fun bm!54297 () Bool)

(assert (=> bm!54297 (= call!54302 (validRegex!867 (ite c!146861 (reg!2727 r!15766) (ite c!146862 (regOne!5309 r!15766) (regOne!5308 r!15766)))))))

(assert (= (and d!278875 (not res!412221)) b!906549))

(assert (= (and b!906549 c!146861) b!906555))

(assert (= (and b!906549 (not c!146861)) b!906551))

(assert (= (and b!906555 res!412220) b!906553))

(assert (= (and b!906551 c!146862) b!906554))

(assert (= (and b!906551 (not c!146862)) b!906552))

(assert (= (and b!906554 res!412222) b!906556))

(assert (= (and b!906552 (not res!412223)) b!906550))

(assert (= (and b!906550 res!412219) b!906548))

(assert (= (or b!906556 b!906548) bm!54296))

(assert (= (or b!906554 b!906550) bm!54295))

(assert (= (or b!906553 bm!54295) bm!54297))

(declare-fun m!1141261 () Bool)

(assert (=> bm!54296 m!1141261))

(declare-fun m!1141263 () Bool)

(assert (=> b!906555 m!1141263))

(declare-fun m!1141265 () Bool)

(assert (=> bm!54297 m!1141265))

(assert (=> start!81528 d!278875))

(declare-fun bs!235510 () Bool)

(declare-fun b!906603 () Bool)

(assert (= bs!235510 (and b!906603 b!906477)))

(declare-fun lambda!28627 () Int)

(assert (=> bs!235510 (not (= lambda!28627 lambda!28613))))

(assert (=> bs!235510 (not (= lambda!28627 lambda!28614))))

(assert (=> b!906603 true))

(assert (=> b!906603 true))

(declare-fun bs!235511 () Bool)

(declare-fun b!906599 () Bool)

(assert (= bs!235511 (and b!906599 b!906477)))

(declare-fun lambda!28628 () Int)

(assert (=> bs!235511 (not (= lambda!28628 lambda!28613))))

(assert (=> bs!235511 (= (= (regOne!5308 r!15766) EmptyExpr!2398) (= lambda!28628 lambda!28614))))

(declare-fun bs!235512 () Bool)

(assert (= bs!235512 (and b!906599 b!906603)))

(assert (=> bs!235512 (not (= lambda!28628 lambda!28627))))

(assert (=> b!906599 true))

(assert (=> b!906599 true))

(declare-fun b!906597 () Bool)

(declare-fun e!591999 () Bool)

(declare-fun call!54307 () Bool)

(assert (=> b!906597 (= e!591999 call!54307)))

(declare-fun b!906598 () Bool)

(declare-fun e!591995 () Bool)

(declare-fun e!591994 () Bool)

(assert (=> b!906598 (= e!591995 e!591994)))

(declare-fun res!412240 () Bool)

(assert (=> b!906598 (= res!412240 (matchRSpec!199 (regOne!5309 r!15766) s!10566))))

(assert (=> b!906598 (=> res!412240 e!591994)))

(declare-fun e!591993 () Bool)

(declare-fun call!54308 () Bool)

(assert (=> b!906599 (= e!591993 call!54308)))

(declare-fun b!906600 () Bool)

(declare-fun e!591996 () Bool)

(assert (=> b!906600 (= e!591996 (= s!10566 (Cons!9612 (c!146855 r!15766) Nil!9612)))))

(declare-fun b!906601 () Bool)

(assert (=> b!906601 (= e!591994 (matchRSpec!199 (regTwo!5309 r!15766) s!10566))))

(declare-fun b!906602 () Bool)

(declare-fun c!146878 () Bool)

(assert (=> b!906602 (= c!146878 (is-ElementMatch!2398 r!15766))))

(declare-fun e!591997 () Bool)

(assert (=> b!906602 (= e!591997 e!591996)))

(declare-fun e!591998 () Bool)

(assert (=> b!906603 (= e!591998 call!54308)))

(declare-fun c!146875 () Bool)

(declare-fun bm!54302 () Bool)

(assert (=> bm!54302 (= call!54308 (Exists!173 (ite c!146875 lambda!28627 lambda!28628)))))

(declare-fun b!906604 () Bool)

(declare-fun c!146876 () Bool)

(assert (=> b!906604 (= c!146876 (is-Union!2398 r!15766))))

(assert (=> b!906604 (= e!591996 e!591995)))

(declare-fun b!906605 () Bool)

(assert (=> b!906605 (= e!591995 e!591993)))

(assert (=> b!906605 (= c!146875 (is-Star!2398 r!15766))))

(declare-fun b!906606 () Bool)

(declare-fun res!412242 () Bool)

(assert (=> b!906606 (=> res!412242 e!591998)))

(assert (=> b!906606 (= res!412242 call!54307)))

(assert (=> b!906606 (= e!591993 e!591998)))

(declare-fun b!906607 () Bool)

(assert (=> b!906607 (= e!591999 e!591997)))

(declare-fun res!412241 () Bool)

(assert (=> b!906607 (= res!412241 (not (is-EmptyLang!2398 r!15766)))))

(assert (=> b!906607 (=> (not res!412241) (not e!591997))))

(declare-fun bm!54303 () Bool)

(assert (=> bm!54303 (= call!54307 (isEmpty!5819 s!10566))))

(declare-fun d!278879 () Bool)

(declare-fun c!146877 () Bool)

(assert (=> d!278879 (= c!146877 (is-EmptyExpr!2398 r!15766))))

(assert (=> d!278879 (= (matchRSpec!199 r!15766 s!10566) e!591999)))

(assert (= (and d!278879 c!146877) b!906597))

(assert (= (and d!278879 (not c!146877)) b!906607))

(assert (= (and b!906607 res!412241) b!906602))

(assert (= (and b!906602 c!146878) b!906600))

(assert (= (and b!906602 (not c!146878)) b!906604))

(assert (= (and b!906604 c!146876) b!906598))

(assert (= (and b!906604 (not c!146876)) b!906605))

(assert (= (and b!906598 (not res!412240)) b!906601))

(assert (= (and b!906605 c!146875) b!906606))

(assert (= (and b!906605 (not c!146875)) b!906599))

(assert (= (and b!906606 (not res!412242)) b!906603))

(assert (= (or b!906603 b!906599) bm!54302))

(assert (= (or b!906597 b!906606) bm!54303))

(declare-fun m!1141267 () Bool)

(assert (=> b!906598 m!1141267))

(declare-fun m!1141269 () Bool)

(assert (=> b!906601 m!1141269))

(declare-fun m!1141271 () Bool)

(assert (=> bm!54302 m!1141271))

(assert (=> bm!54303 m!1141213))

(assert (=> b!906478 d!278879))

(declare-fun b!906670 () Bool)

(declare-fun e!592032 () Bool)

(declare-fun e!592035 () Bool)

(assert (=> b!906670 (= e!592032 e!592035)))

(declare-fun c!146892 () Bool)

(assert (=> b!906670 (= c!146892 (is-EmptyLang!2398 r!15766))))

(declare-fun d!278883 () Bool)

(assert (=> d!278883 e!592032))

(declare-fun c!146890 () Bool)

(assert (=> d!278883 (= c!146890 (is-EmptyExpr!2398 r!15766))))

(declare-fun lt!335767 () Bool)

(declare-fun e!592033 () Bool)

(assert (=> d!278883 (= lt!335767 e!592033)))

(declare-fun c!146891 () Bool)

(assert (=> d!278883 (= c!146891 (isEmpty!5819 s!10566))))

(assert (=> d!278883 (validRegex!867 r!15766)))

(assert (=> d!278883 (= (matchR!936 r!15766 s!10566) lt!335767)))

(declare-fun b!906671 () Bool)

(declare-fun e!592031 () Bool)

(declare-fun e!592034 () Bool)

(assert (=> b!906671 (= e!592031 e!592034)))

(declare-fun res!412288 () Bool)

(assert (=> b!906671 (=> res!412288 e!592034)))

(declare-fun call!54314 () Bool)

(assert (=> b!906671 (= res!412288 call!54314)))

(declare-fun b!906672 () Bool)

(declare-fun e!592036 () Bool)

(assert (=> b!906672 (= e!592036 e!592031)))

(declare-fun res!412287 () Bool)

(assert (=> b!906672 (=> (not res!412287) (not e!592031))))

(assert (=> b!906672 (= res!412287 (not lt!335767))))

(declare-fun b!906673 () Bool)

(declare-fun res!412283 () Bool)

(assert (=> b!906673 (=> res!412283 e!592034)))

(declare-fun tail!1172 (List!9628) List!9628)

(assert (=> b!906673 (= res!412283 (not (isEmpty!5819 (tail!1172 s!10566))))))

(declare-fun b!906674 () Bool)

(declare-fun res!412286 () Bool)

(declare-fun e!592037 () Bool)

(assert (=> b!906674 (=> (not res!412286) (not e!592037))))

(assert (=> b!906674 (= res!412286 (isEmpty!5819 (tail!1172 s!10566)))))

(declare-fun b!906675 () Bool)

(declare-fun res!412284 () Bool)

(assert (=> b!906675 (=> res!412284 e!592036)))

(assert (=> b!906675 (= res!412284 (not (is-ElementMatch!2398 r!15766)))))

(assert (=> b!906675 (= e!592035 e!592036)))

(declare-fun b!906676 () Bool)

(assert (=> b!906676 (= e!592033 (nullable!646 r!15766))))

(declare-fun b!906677 () Bool)

(declare-fun head!1610 (List!9628) C!5366)

(assert (=> b!906677 (= e!592037 (= (head!1610 s!10566) (c!146855 r!15766)))))

(declare-fun bm!54309 () Bool)

(assert (=> bm!54309 (= call!54314 (isEmpty!5819 s!10566))))

(declare-fun b!906678 () Bool)

(assert (=> b!906678 (= e!592035 (not lt!335767))))

(declare-fun b!906679 () Bool)

(declare-fun derivativeStep!457 (Regex!2398 C!5366) Regex!2398)

(assert (=> b!906679 (= e!592033 (matchR!936 (derivativeStep!457 r!15766 (head!1610 s!10566)) (tail!1172 s!10566)))))

(declare-fun b!906680 () Bool)

(assert (=> b!906680 (= e!592032 (= lt!335767 call!54314))))

(declare-fun b!906681 () Bool)

(assert (=> b!906681 (= e!592034 (not (= (head!1610 s!10566) (c!146855 r!15766))))))

(declare-fun b!906682 () Bool)

(declare-fun res!412285 () Bool)

(assert (=> b!906682 (=> res!412285 e!592036)))

(assert (=> b!906682 (= res!412285 e!592037)))

(declare-fun res!412289 () Bool)

(assert (=> b!906682 (=> (not res!412289) (not e!592037))))

(assert (=> b!906682 (= res!412289 lt!335767)))

(declare-fun b!906683 () Bool)

(declare-fun res!412290 () Bool)

(assert (=> b!906683 (=> (not res!412290) (not e!592037))))

(assert (=> b!906683 (= res!412290 (not call!54314))))

(assert (= (and d!278883 c!146891) b!906676))

(assert (= (and d!278883 (not c!146891)) b!906679))

(assert (= (and d!278883 c!146890) b!906680))

(assert (= (and d!278883 (not c!146890)) b!906670))

(assert (= (and b!906670 c!146892) b!906678))

(assert (= (and b!906670 (not c!146892)) b!906675))

(assert (= (and b!906675 (not res!412284)) b!906682))

(assert (= (and b!906682 res!412289) b!906683))

(assert (= (and b!906683 res!412290) b!906674))

(assert (= (and b!906674 res!412286) b!906677))

(assert (= (and b!906682 (not res!412285)) b!906672))

(assert (= (and b!906672 res!412287) b!906671))

(assert (= (and b!906671 (not res!412288)) b!906673))

(assert (= (and b!906673 (not res!412283)) b!906681))

(assert (= (or b!906680 b!906671 b!906683) bm!54309))

(declare-fun m!1141281 () Bool)

(assert (=> b!906681 m!1141281))

(assert (=> b!906679 m!1141281))

(assert (=> b!906679 m!1141281))

(declare-fun m!1141283 () Bool)

(assert (=> b!906679 m!1141283))

(declare-fun m!1141285 () Bool)

(assert (=> b!906679 m!1141285))

(assert (=> b!906679 m!1141283))

(assert (=> b!906679 m!1141285))

(declare-fun m!1141289 () Bool)

(assert (=> b!906679 m!1141289))

(assert (=> d!278883 m!1141213))

(assert (=> d!278883 m!1141195))

(assert (=> b!906677 m!1141281))

(assert (=> b!906673 m!1141285))

(assert (=> b!906673 m!1141285))

(declare-fun m!1141291 () Bool)

(assert (=> b!906673 m!1141291))

(declare-fun m!1141293 () Bool)

(assert (=> b!906676 m!1141293))

(assert (=> bm!54309 m!1141213))

(assert (=> b!906674 m!1141285))

(assert (=> b!906674 m!1141285))

(assert (=> b!906674 m!1141291))

(assert (=> b!906478 d!278883))

(declare-fun d!278885 () Bool)

(assert (=> d!278885 (= (matchR!936 r!15766 s!10566) (matchRSpec!199 r!15766 s!10566))))

(declare-fun lt!335771 () Unit!14415)

(declare-fun choose!5488 (Regex!2398 List!9628) Unit!14415)

(assert (=> d!278885 (= lt!335771 (choose!5488 r!15766 s!10566))))

(assert (=> d!278885 (validRegex!867 r!15766)))

(assert (=> d!278885 (= (mainMatchTheorem!199 r!15766 s!10566) lt!335771)))

(declare-fun bs!235513 () Bool)

(assert (= bs!235513 d!278885))

(assert (=> bs!235513 m!1141221))

(assert (=> bs!235513 m!1141219))

(declare-fun m!1141305 () Bool)

(assert (=> bs!235513 m!1141305))

(assert (=> bs!235513 m!1141195))

(assert (=> b!906478 d!278885))

(declare-fun d!278891 () Bool)

(assert (=> d!278891 (= (isEmpty!5818 lt!335734) (not (is-Some!2036 lt!335734)))))

(assert (=> b!906473 d!278891))

(declare-fun d!278893 () Bool)

(declare-fun choose!5489 (Int) Bool)

(assert (=> d!278893 (= (Exists!173 lambda!28613) (choose!5489 lambda!28613))))

(declare-fun bs!235514 () Bool)

(assert (= bs!235514 d!278893))

(declare-fun m!1141307 () Bool)

(assert (=> bs!235514 m!1141307))

(assert (=> b!906477 d!278893))

(declare-fun d!278895 () Bool)

(assert (=> d!278895 (= (isDefined!1679 lt!335734) (not (isEmpty!5818 lt!335734)))))

(declare-fun bs!235515 () Bool)

(assert (= bs!235515 d!278895))

(assert (=> bs!235515 m!1141225))

(assert (=> b!906477 d!278895))

(declare-fun d!278897 () Bool)

(assert (=> d!278897 (= (isEmpty!5819 s!10566) (is-Nil!9612 s!10566))))

(assert (=> b!906477 d!278897))

(declare-fun b!906738 () Bool)

(declare-fun e!592069 () Bool)

(assert (=> b!906738 (= e!592069 (matchR!936 (regTwo!5308 r!15766) s!10566))))

(declare-fun b!906739 () Bool)

(declare-fun e!592070 () Option!2037)

(assert (=> b!906739 (= e!592070 (Some!2036 (tuple2!10791 Nil!9612 s!10566)))))

(declare-fun b!906740 () Bool)

(declare-fun e!592067 () Bool)

(declare-fun lt!335782 () Option!2037)

(declare-fun ++!2523 (List!9628 List!9628) List!9628)

(declare-fun get!3082 (Option!2037) tuple2!10790)

(assert (=> b!906740 (= e!592067 (= (++!2523 (_1!6221 (get!3082 lt!335782)) (_2!6221 (get!3082 lt!335782))) s!10566))))

(declare-fun d!278899 () Bool)

(declare-fun e!592068 () Bool)

(assert (=> d!278899 e!592068))

(declare-fun res!412313 () Bool)

(assert (=> d!278899 (=> res!412313 e!592068)))

(assert (=> d!278899 (= res!412313 e!592067)))

(declare-fun res!412311 () Bool)

(assert (=> d!278899 (=> (not res!412311) (not e!592067))))

(assert (=> d!278899 (= res!412311 (isDefined!1679 lt!335782))))

(assert (=> d!278899 (= lt!335782 e!592070)))

(declare-fun c!146910 () Bool)

(assert (=> d!278899 (= c!146910 e!592069)))

(declare-fun res!412312 () Bool)

(assert (=> d!278899 (=> (not res!412312) (not e!592069))))

(assert (=> d!278899 (= res!412312 (matchR!936 EmptyExpr!2398 Nil!9612))))

(assert (=> d!278899 (validRegex!867 EmptyExpr!2398)))

(assert (=> d!278899 (= (findConcatSeparation!143 EmptyExpr!2398 (regTwo!5308 r!15766) Nil!9612 s!10566 s!10566) lt!335782)))

(declare-fun b!906741 () Bool)

(declare-fun res!412315 () Bool)

(assert (=> b!906741 (=> (not res!412315) (not e!592067))))

(assert (=> b!906741 (= res!412315 (matchR!936 (regTwo!5308 r!15766) (_2!6221 (get!3082 lt!335782))))))

(declare-fun b!906742 () Bool)

(declare-fun e!592071 () Option!2037)

(assert (=> b!906742 (= e!592070 e!592071)))

(declare-fun c!146911 () Bool)

(assert (=> b!906742 (= c!146911 (is-Nil!9612 s!10566))))

(declare-fun b!906743 () Bool)

(assert (=> b!906743 (= e!592071 None!2036)))

(declare-fun b!906744 () Bool)

(declare-fun lt!335780 () Unit!14415)

(declare-fun lt!335781 () Unit!14415)

(assert (=> b!906744 (= lt!335780 lt!335781)))

(assert (=> b!906744 (= (++!2523 (++!2523 Nil!9612 (Cons!9612 (h!15013 s!10566) Nil!9612)) (t!100674 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!142 (List!9628 C!5366 List!9628 List!9628) Unit!14415)

(assert (=> b!906744 (= lt!335781 (lemmaMoveElementToOtherListKeepsConcatEq!142 Nil!9612 (h!15013 s!10566) (t!100674 s!10566) s!10566))))

(assert (=> b!906744 (= e!592071 (findConcatSeparation!143 EmptyExpr!2398 (regTwo!5308 r!15766) (++!2523 Nil!9612 (Cons!9612 (h!15013 s!10566) Nil!9612)) (t!100674 s!10566) s!10566))))

(declare-fun b!906745 () Bool)

(declare-fun res!412314 () Bool)

(assert (=> b!906745 (=> (not res!412314) (not e!592067))))

(assert (=> b!906745 (= res!412314 (matchR!936 EmptyExpr!2398 (_1!6221 (get!3082 lt!335782))))))

(declare-fun b!906746 () Bool)

(assert (=> b!906746 (= e!592068 (not (isDefined!1679 lt!335782)))))

(assert (= (and d!278899 res!412312) b!906738))

(assert (= (and d!278899 c!146910) b!906739))

(assert (= (and d!278899 (not c!146910)) b!906742))

(assert (= (and b!906742 c!146911) b!906743))

(assert (= (and b!906742 (not c!146911)) b!906744))

(assert (= (and d!278899 res!412311) b!906745))

(assert (= (and b!906745 res!412314) b!906741))

(assert (= (and b!906741 res!412315) b!906740))

(assert (= (and d!278899 (not res!412313)) b!906746))

(declare-fun m!1141309 () Bool)

(assert (=> b!906741 m!1141309))

(declare-fun m!1141311 () Bool)

(assert (=> b!906741 m!1141311))

(assert (=> b!906738 m!1141199))

(declare-fun m!1141313 () Bool)

(assert (=> d!278899 m!1141313))

(declare-fun m!1141315 () Bool)

(assert (=> d!278899 m!1141315))

(declare-fun m!1141317 () Bool)

(assert (=> d!278899 m!1141317))

(declare-fun m!1141319 () Bool)

(assert (=> b!906744 m!1141319))

(assert (=> b!906744 m!1141319))

(declare-fun m!1141321 () Bool)

(assert (=> b!906744 m!1141321))

(declare-fun m!1141323 () Bool)

(assert (=> b!906744 m!1141323))

(assert (=> b!906744 m!1141319))

(declare-fun m!1141325 () Bool)

(assert (=> b!906744 m!1141325))

(assert (=> b!906746 m!1141313))

(assert (=> b!906745 m!1141309))

(declare-fun m!1141327 () Bool)

(assert (=> b!906745 m!1141327))

(assert (=> b!906740 m!1141309))

(declare-fun m!1141329 () Bool)

(assert (=> b!906740 m!1141329))

(assert (=> b!906477 d!278899))

(declare-fun bs!235516 () Bool)

(declare-fun d!278901 () Bool)

(assert (= bs!235516 (and d!278901 b!906477)))

(declare-fun lambda!28631 () Int)

(assert (=> bs!235516 (= lambda!28631 lambda!28613)))

(assert (=> bs!235516 (not (= lambda!28631 lambda!28614))))

(declare-fun bs!235517 () Bool)

(assert (= bs!235517 (and d!278901 b!906603)))

(assert (=> bs!235517 (not (= lambda!28631 lambda!28627))))

(declare-fun bs!235518 () Bool)

(assert (= bs!235518 (and d!278901 b!906599)))

(assert (=> bs!235518 (not (= lambda!28631 lambda!28628))))

(assert (=> d!278901 true))

(assert (=> d!278901 true))

(assert (=> d!278901 true))

(assert (=> d!278901 (= (isDefined!1679 (findConcatSeparation!143 EmptyExpr!2398 (regTwo!5308 r!15766) Nil!9612 s!10566 s!10566)) (Exists!173 lambda!28631))))

(declare-fun lt!335786 () Unit!14415)

(declare-fun choose!5490 (Regex!2398 Regex!2398 List!9628) Unit!14415)

(assert (=> d!278901 (= lt!335786 (choose!5490 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566))))

(assert (=> d!278901 (validRegex!867 EmptyExpr!2398)))

(assert (=> d!278901 (= (lemmaFindConcatSeparationEquivalentToExists!143 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566) lt!335786)))

(declare-fun bs!235519 () Bool)

(assert (= bs!235519 d!278901))

(assert (=> bs!235519 m!1141215))

(declare-fun m!1141339 () Bool)

(assert (=> bs!235519 m!1141339))

(declare-fun m!1141341 () Bool)

(assert (=> bs!235519 m!1141341))

(assert (=> bs!235519 m!1141317))

(declare-fun m!1141343 () Bool)

(assert (=> bs!235519 m!1141343))

(assert (=> bs!235519 m!1141215))

(assert (=> b!906477 d!278901))

(declare-fun bs!235522 () Bool)

(declare-fun d!278905 () Bool)

(assert (= bs!235522 (and d!278905 b!906603)))

(declare-fun lambda!28636 () Int)

(assert (=> bs!235522 (not (= lambda!28636 lambda!28627))))

(declare-fun bs!235523 () Bool)

(assert (= bs!235523 (and d!278905 b!906477)))

(assert (=> bs!235523 (= lambda!28636 lambda!28613)))

(declare-fun bs!235524 () Bool)

(assert (= bs!235524 (and d!278905 d!278901)))

(assert (=> bs!235524 (= lambda!28636 lambda!28631)))

(declare-fun bs!235525 () Bool)

(assert (= bs!235525 (and d!278905 b!906599)))

(assert (=> bs!235525 (not (= lambda!28636 lambda!28628))))

(assert (=> bs!235523 (not (= lambda!28636 lambda!28614))))

(assert (=> d!278905 true))

(assert (=> d!278905 true))

(assert (=> d!278905 true))

(declare-fun lambda!28637 () Int)

(assert (=> bs!235522 (not (= lambda!28637 lambda!28627))))

(assert (=> bs!235523 (not (= lambda!28637 lambda!28613))))

(assert (=> bs!235524 (not (= lambda!28637 lambda!28631))))

(declare-fun bs!235526 () Bool)

(assert (= bs!235526 d!278905))

(assert (=> bs!235526 (not (= lambda!28637 lambda!28636))))

(assert (=> bs!235525 (= (= EmptyExpr!2398 (regOne!5308 r!15766)) (= lambda!28637 lambda!28628))))

(assert (=> bs!235523 (= lambda!28637 lambda!28614)))

(assert (=> d!278905 true))

(assert (=> d!278905 true))

(assert (=> d!278905 true))

(assert (=> d!278905 (= (Exists!173 lambda!28636) (Exists!173 lambda!28637))))

(declare-fun lt!335792 () Unit!14415)

(declare-fun choose!5491 (Regex!2398 Regex!2398 List!9628) Unit!14415)

(assert (=> d!278905 (= lt!335792 (choose!5491 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566))))

(assert (=> d!278905 (validRegex!867 EmptyExpr!2398)))

(assert (=> d!278905 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!89 EmptyExpr!2398 (regTwo!5308 r!15766) s!10566) lt!335792)))

(declare-fun m!1141349 () Bool)

(assert (=> bs!235526 m!1141349))

(declare-fun m!1141351 () Bool)

(assert (=> bs!235526 m!1141351))

(declare-fun m!1141353 () Bool)

(assert (=> bs!235526 m!1141353))

(assert (=> bs!235526 m!1141317))

(assert (=> b!906477 d!278905))

(declare-fun d!278913 () Bool)

(assert (=> d!278913 (= (Exists!173 lambda!28614) (choose!5489 lambda!28614))))

(declare-fun bs!235527 () Bool)

(assert (= bs!235527 d!278913))

(declare-fun m!1141355 () Bool)

(assert (=> bs!235527 m!1141355))

(assert (=> b!906477 d!278913))

(declare-fun b!906770 () Bool)

(declare-fun e!592085 () Bool)

(declare-fun e!592088 () Bool)

(assert (=> b!906770 (= e!592085 e!592088)))

(declare-fun c!146919 () Bool)

(assert (=> b!906770 (= c!146919 (is-EmptyLang!2398 lt!335730))))

(declare-fun d!278915 () Bool)

(assert (=> d!278915 e!592085))

(declare-fun c!146917 () Bool)

(assert (=> d!278915 (= c!146917 (is-EmptyExpr!2398 lt!335730))))

(declare-fun lt!335793 () Bool)

(declare-fun e!592086 () Bool)

(assert (=> d!278915 (= lt!335793 e!592086)))

(declare-fun c!146918 () Bool)

(assert (=> d!278915 (= c!146918 (isEmpty!5819 s!10566))))

(assert (=> d!278915 (validRegex!867 lt!335730)))

(assert (=> d!278915 (= (matchR!936 lt!335730 s!10566) lt!335793)))

(declare-fun b!906771 () Bool)

(declare-fun e!592084 () Bool)

(declare-fun e!592087 () Bool)

(assert (=> b!906771 (= e!592084 e!592087)))

(declare-fun res!412334 () Bool)

(assert (=> b!906771 (=> res!412334 e!592087)))

(declare-fun call!54331 () Bool)

(assert (=> b!906771 (= res!412334 call!54331)))

(declare-fun b!906772 () Bool)

(declare-fun e!592089 () Bool)

(assert (=> b!906772 (= e!592089 e!592084)))

(declare-fun res!412333 () Bool)

(assert (=> b!906772 (=> (not res!412333) (not e!592084))))

(assert (=> b!906772 (= res!412333 (not lt!335793))))

(declare-fun b!906773 () Bool)

(declare-fun res!412329 () Bool)

(assert (=> b!906773 (=> res!412329 e!592087)))

(assert (=> b!906773 (= res!412329 (not (isEmpty!5819 (tail!1172 s!10566))))))

(declare-fun b!906774 () Bool)

(declare-fun res!412332 () Bool)

(declare-fun e!592090 () Bool)

(assert (=> b!906774 (=> (not res!412332) (not e!592090))))

(assert (=> b!906774 (= res!412332 (isEmpty!5819 (tail!1172 s!10566)))))

(declare-fun b!906775 () Bool)

(declare-fun res!412330 () Bool)

(assert (=> b!906775 (=> res!412330 e!592089)))

(assert (=> b!906775 (= res!412330 (not (is-ElementMatch!2398 lt!335730)))))

(assert (=> b!906775 (= e!592088 e!592089)))

(declare-fun b!906776 () Bool)

(assert (=> b!906776 (= e!592086 (nullable!646 lt!335730))))

(declare-fun b!906777 () Bool)

(assert (=> b!906777 (= e!592090 (= (head!1610 s!10566) (c!146855 lt!335730)))))

(declare-fun bm!54326 () Bool)

(assert (=> bm!54326 (= call!54331 (isEmpty!5819 s!10566))))

(declare-fun b!906778 () Bool)

(assert (=> b!906778 (= e!592088 (not lt!335793))))

(declare-fun b!906779 () Bool)

(assert (=> b!906779 (= e!592086 (matchR!936 (derivativeStep!457 lt!335730 (head!1610 s!10566)) (tail!1172 s!10566)))))

(declare-fun b!906780 () Bool)

(assert (=> b!906780 (= e!592085 (= lt!335793 call!54331))))

(declare-fun b!906781 () Bool)

(assert (=> b!906781 (= e!592087 (not (= (head!1610 s!10566) (c!146855 lt!335730))))))

(declare-fun b!906782 () Bool)

(declare-fun res!412331 () Bool)

(assert (=> b!906782 (=> res!412331 e!592089)))

(assert (=> b!906782 (= res!412331 e!592090)))

(declare-fun res!412335 () Bool)

(assert (=> b!906782 (=> (not res!412335) (not e!592090))))

(assert (=> b!906782 (= res!412335 lt!335793)))

(declare-fun b!906783 () Bool)

(declare-fun res!412336 () Bool)

(assert (=> b!906783 (=> (not res!412336) (not e!592090))))

(assert (=> b!906783 (= res!412336 (not call!54331))))

(assert (= (and d!278915 c!146918) b!906776))

(assert (= (and d!278915 (not c!146918)) b!906779))

(assert (= (and d!278915 c!146917) b!906780))

(assert (= (and d!278915 (not c!146917)) b!906770))

(assert (= (and b!906770 c!146919) b!906778))

(assert (= (and b!906770 (not c!146919)) b!906775))

(assert (= (and b!906775 (not res!412330)) b!906782))

(assert (= (and b!906782 res!412335) b!906783))

(assert (= (and b!906783 res!412336) b!906774))

(assert (= (and b!906774 res!412332) b!906777))

(assert (= (and b!906782 (not res!412331)) b!906772))

(assert (= (and b!906772 res!412333) b!906771))

(assert (= (and b!906771 (not res!412334)) b!906773))

(assert (= (and b!906773 (not res!412329)) b!906781))

(assert (= (or b!906780 b!906771 b!906783) bm!54326))

(assert (=> b!906781 m!1141281))

(assert (=> b!906779 m!1141281))

(assert (=> b!906779 m!1141281))

(declare-fun m!1141357 () Bool)

(assert (=> b!906779 m!1141357))

(assert (=> b!906779 m!1141285))

(assert (=> b!906779 m!1141357))

(assert (=> b!906779 m!1141285))

(declare-fun m!1141359 () Bool)

(assert (=> b!906779 m!1141359))

(assert (=> d!278915 m!1141213))

(declare-fun m!1141361 () Bool)

(assert (=> d!278915 m!1141361))

(assert (=> b!906777 m!1141281))

(assert (=> b!906773 m!1141285))

(assert (=> b!906773 m!1141285))

(assert (=> b!906773 m!1141291))

(declare-fun m!1141363 () Bool)

(assert (=> b!906776 m!1141363))

(assert (=> bm!54326 m!1141213))

(assert (=> b!906774 m!1141285))

(assert (=> b!906774 m!1141285))

(assert (=> b!906774 m!1141291))

(assert (=> b!906470 d!278915))

(declare-fun b!906784 () Bool)

(declare-fun e!592092 () Bool)

(declare-fun e!592095 () Bool)

(assert (=> b!906784 (= e!592092 e!592095)))

(declare-fun c!146922 () Bool)

(assert (=> b!906784 (= c!146922 (is-EmptyLang!2398 (regTwo!5308 r!15766)))))

(declare-fun d!278917 () Bool)

(assert (=> d!278917 e!592092))

(declare-fun c!146920 () Bool)

(assert (=> d!278917 (= c!146920 (is-EmptyExpr!2398 (regTwo!5308 r!15766)))))

(declare-fun lt!335794 () Bool)

(declare-fun e!592093 () Bool)

(assert (=> d!278917 (= lt!335794 e!592093)))

(declare-fun c!146921 () Bool)

(assert (=> d!278917 (= c!146921 (isEmpty!5819 s!10566))))

(assert (=> d!278917 (validRegex!867 (regTwo!5308 r!15766))))

(assert (=> d!278917 (= (matchR!936 (regTwo!5308 r!15766) s!10566) lt!335794)))

(declare-fun b!906785 () Bool)

(declare-fun e!592091 () Bool)

(declare-fun e!592094 () Bool)

(assert (=> b!906785 (= e!592091 e!592094)))

(declare-fun res!412342 () Bool)

(assert (=> b!906785 (=> res!412342 e!592094)))

(declare-fun call!54332 () Bool)

(assert (=> b!906785 (= res!412342 call!54332)))

(declare-fun b!906786 () Bool)

(declare-fun e!592096 () Bool)

(assert (=> b!906786 (= e!592096 e!592091)))

(declare-fun res!412341 () Bool)

(assert (=> b!906786 (=> (not res!412341) (not e!592091))))

(assert (=> b!906786 (= res!412341 (not lt!335794))))

(declare-fun b!906787 () Bool)

(declare-fun res!412337 () Bool)

(assert (=> b!906787 (=> res!412337 e!592094)))

(assert (=> b!906787 (= res!412337 (not (isEmpty!5819 (tail!1172 s!10566))))))

(declare-fun b!906788 () Bool)

(declare-fun res!412340 () Bool)

(declare-fun e!592097 () Bool)

(assert (=> b!906788 (=> (not res!412340) (not e!592097))))

(assert (=> b!906788 (= res!412340 (isEmpty!5819 (tail!1172 s!10566)))))

(declare-fun b!906789 () Bool)

(declare-fun res!412338 () Bool)

(assert (=> b!906789 (=> res!412338 e!592096)))

(assert (=> b!906789 (= res!412338 (not (is-ElementMatch!2398 (regTwo!5308 r!15766))))))

(assert (=> b!906789 (= e!592095 e!592096)))

(declare-fun b!906790 () Bool)

(assert (=> b!906790 (= e!592093 (nullable!646 (regTwo!5308 r!15766)))))

(declare-fun b!906791 () Bool)

(assert (=> b!906791 (= e!592097 (= (head!1610 s!10566) (c!146855 (regTwo!5308 r!15766))))))

(declare-fun bm!54327 () Bool)

(assert (=> bm!54327 (= call!54332 (isEmpty!5819 s!10566))))

(declare-fun b!906792 () Bool)

(assert (=> b!906792 (= e!592095 (not lt!335794))))

(declare-fun b!906793 () Bool)

(assert (=> b!906793 (= e!592093 (matchR!936 (derivativeStep!457 (regTwo!5308 r!15766) (head!1610 s!10566)) (tail!1172 s!10566)))))

(declare-fun b!906794 () Bool)

(assert (=> b!906794 (= e!592092 (= lt!335794 call!54332))))

(declare-fun b!906795 () Bool)

(assert (=> b!906795 (= e!592094 (not (= (head!1610 s!10566) (c!146855 (regTwo!5308 r!15766)))))))

(declare-fun b!906796 () Bool)

(declare-fun res!412339 () Bool)

(assert (=> b!906796 (=> res!412339 e!592096)))

(assert (=> b!906796 (= res!412339 e!592097)))

(declare-fun res!412343 () Bool)

(assert (=> b!906796 (=> (not res!412343) (not e!592097))))

(assert (=> b!906796 (= res!412343 lt!335794)))

(declare-fun b!906797 () Bool)

(declare-fun res!412344 () Bool)

(assert (=> b!906797 (=> (not res!412344) (not e!592097))))

(assert (=> b!906797 (= res!412344 (not call!54332))))

(assert (= (and d!278917 c!146921) b!906790))

(assert (= (and d!278917 (not c!146921)) b!906793))

(assert (= (and d!278917 c!146920) b!906794))

(assert (= (and d!278917 (not c!146920)) b!906784))

(assert (= (and b!906784 c!146922) b!906792))

(assert (= (and b!906784 (not c!146922)) b!906789))

(assert (= (and b!906789 (not res!412338)) b!906796))

(assert (= (and b!906796 res!412343) b!906797))

(assert (= (and b!906797 res!412344) b!906788))

(assert (= (and b!906788 res!412340) b!906791))

(assert (= (and b!906796 (not res!412339)) b!906786))

(assert (= (and b!906786 res!412341) b!906785))

(assert (= (and b!906785 (not res!412342)) b!906787))

(assert (= (and b!906787 (not res!412337)) b!906795))

(assert (= (or b!906794 b!906785 b!906797) bm!54327))

(assert (=> b!906795 m!1141281))

(assert (=> b!906793 m!1141281))

(assert (=> b!906793 m!1141281))

(declare-fun m!1141365 () Bool)

(assert (=> b!906793 m!1141365))

(assert (=> b!906793 m!1141285))

(assert (=> b!906793 m!1141365))

(assert (=> b!906793 m!1141285))

(declare-fun m!1141367 () Bool)

(assert (=> b!906793 m!1141367))

(assert (=> d!278917 m!1141213))

(assert (=> d!278917 m!1141193))

(assert (=> b!906791 m!1141281))

(assert (=> b!906787 m!1141285))

(assert (=> b!906787 m!1141285))

(assert (=> b!906787 m!1141291))

(declare-fun m!1141369 () Bool)

(assert (=> b!906790 m!1141369))

(assert (=> bm!54327 m!1141213))

(assert (=> b!906788 m!1141285))

(assert (=> b!906788 m!1141285))

(assert (=> b!906788 m!1141291))

(assert (=> b!906470 d!278917))

(declare-fun b!906824 () Bool)

(declare-fun c!146933 () Bool)

(assert (=> b!906824 (= c!146933 (is-Star!2398 (regTwo!5308 r!15766)))))

(declare-fun e!592113 () Regex!2398)

(declare-fun e!592116 () Regex!2398)

(assert (=> b!906824 (= e!592113 e!592116)))

(declare-fun d!278919 () Bool)

(declare-fun e!592114 () Bool)

(assert (=> d!278919 e!592114))

(declare-fun res!412351 () Bool)

(assert (=> d!278919 (=> (not res!412351) (not e!592114))))

(declare-fun lt!335799 () Regex!2398)

(assert (=> d!278919 (= res!412351 (validRegex!867 lt!335799))))

(declare-fun e!592112 () Regex!2398)

(assert (=> d!278919 (= lt!335799 e!592112)))

(declare-fun c!146935 () Bool)

(assert (=> d!278919 (= c!146935 (and (is-Concat!4231 (regTwo!5308 r!15766)) (is-EmptyExpr!2398 (regOne!5308 (regTwo!5308 r!15766)))))))

(assert (=> d!278919 (validRegex!867 (regTwo!5308 r!15766))))

(assert (=> d!278919 (= (removeUselessConcat!97 (regTwo!5308 r!15766)) lt!335799)))

(declare-fun bm!54338 () Bool)

(declare-fun call!54345 () Regex!2398)

(declare-fun call!54347 () Regex!2398)

(assert (=> bm!54338 (= call!54345 call!54347)))

(declare-fun b!906825 () Bool)

(declare-fun call!54343 () Regex!2398)

(assert (=> b!906825 (= e!592116 (Star!2398 call!54343))))

(declare-fun b!906826 () Bool)

(assert (=> b!906826 (= e!592114 (= (nullable!646 lt!335799) (nullable!646 (regTwo!5308 r!15766))))))

(declare-fun c!146934 () Bool)

(declare-fun bm!54339 () Bool)

(declare-fun c!146936 () Bool)

(assert (=> bm!54339 (= call!54347 (removeUselessConcat!97 (ite c!146935 (regTwo!5308 (regTwo!5308 r!15766)) (ite (or c!146934 c!146936) (regOne!5308 (regTwo!5308 r!15766)) (regOne!5309 (regTwo!5308 r!15766))))))))

(declare-fun b!906827 () Bool)

(assert (=> b!906827 (= e!592116 (regTwo!5308 r!15766))))

(declare-fun b!906828 () Bool)

(assert (=> b!906828 (= c!146936 (is-Concat!4231 (regTwo!5308 r!15766)))))

(declare-fun e!592117 () Regex!2398)

(declare-fun e!592115 () Regex!2398)

(assert (=> b!906828 (= e!592117 e!592115)))

(declare-fun b!906829 () Bool)

(declare-fun call!54344 () Regex!2398)

(assert (=> b!906829 (= e!592113 (Union!2398 call!54344 call!54343))))

(declare-fun b!906830 () Bool)

(assert (=> b!906830 (= e!592115 e!592113)))

(declare-fun c!146937 () Bool)

(assert (=> b!906830 (= c!146937 (is-Union!2398 (regTwo!5308 r!15766)))))

(declare-fun b!906831 () Bool)

(declare-fun call!54346 () Regex!2398)

(assert (=> b!906831 (= e!592115 (Concat!4231 call!54344 call!54346))))

(declare-fun b!906832 () Bool)

(assert (=> b!906832 (= e!592117 call!54345)))

(declare-fun b!906833 () Bool)

(assert (=> b!906833 (= e!592112 e!592117)))

(assert (=> b!906833 (= c!146934 (and (is-Concat!4231 (regTwo!5308 r!15766)) (is-EmptyExpr!2398 (regTwo!5308 (regTwo!5308 r!15766)))))))

(declare-fun bm!54340 () Bool)

(assert (=> bm!54340 (= call!54346 (removeUselessConcat!97 (ite c!146936 (regTwo!5308 (regTwo!5308 r!15766)) (ite c!146937 (regTwo!5309 (regTwo!5308 r!15766)) (reg!2727 (regTwo!5308 r!15766))))))))

(declare-fun bm!54341 () Bool)

(assert (=> bm!54341 (= call!54343 call!54346)))

(declare-fun bm!54342 () Bool)

(assert (=> bm!54342 (= call!54344 call!54345)))

(declare-fun b!906834 () Bool)

(assert (=> b!906834 (= e!592112 call!54347)))

(assert (= (and d!278919 c!146935) b!906834))

(assert (= (and d!278919 (not c!146935)) b!906833))

(assert (= (and b!906833 c!146934) b!906832))

(assert (= (and b!906833 (not c!146934)) b!906828))

(assert (= (and b!906828 c!146936) b!906831))

(assert (= (and b!906828 (not c!146936)) b!906830))

(assert (= (and b!906830 c!146937) b!906829))

(assert (= (and b!906830 (not c!146937)) b!906824))

(assert (= (and b!906824 c!146933) b!906825))

(assert (= (and b!906824 (not c!146933)) b!906827))

(assert (= (or b!906829 b!906825) bm!54341))

(assert (= (or b!906831 bm!54341) bm!54340))

(assert (= (or b!906831 b!906829) bm!54342))

(assert (= (or b!906832 bm!54342) bm!54338))

(assert (= (or b!906834 bm!54338) bm!54339))

(assert (= (and d!278919 res!412351) b!906826))

(declare-fun m!1141371 () Bool)

(assert (=> d!278919 m!1141371))

(assert (=> d!278919 m!1141193))

(declare-fun m!1141373 () Bool)

(assert (=> b!906826 m!1141373))

(assert (=> b!906826 m!1141369))

(declare-fun m!1141375 () Bool)

(assert (=> bm!54339 m!1141375))

(declare-fun m!1141377 () Bool)

(assert (=> bm!54340 m!1141377))

(assert (=> b!906470 d!278919))

(declare-fun d!278921 () Bool)

(assert (=> d!278921 (= (matchR!936 (regTwo!5308 r!15766) s!10566) (matchR!936 (removeUselessConcat!97 (regTwo!5308 r!15766)) s!10566))))

(declare-fun lt!335803 () Unit!14415)

(declare-fun choose!5492 (Regex!2398 List!9628) Unit!14415)

(assert (=> d!278921 (= lt!335803 (choose!5492 (regTwo!5308 r!15766) s!10566))))

(assert (=> d!278921 (validRegex!867 (regTwo!5308 r!15766))))

(assert (=> d!278921 (= (lemmaRemoveUselessConcatSound!85 (regTwo!5308 r!15766) s!10566) lt!335803)))

(declare-fun bs!235530 () Bool)

(assert (= bs!235530 d!278921))

(assert (=> bs!235530 m!1141201))

(declare-fun m!1141383 () Bool)

(assert (=> bs!235530 m!1141383))

(assert (=> bs!235530 m!1141201))

(declare-fun m!1141387 () Bool)

(assert (=> bs!235530 m!1141387))

(assert (=> bs!235530 m!1141193))

(assert (=> bs!235530 m!1141199))

(assert (=> b!906470 d!278921))

(declare-fun bm!54343 () Bool)

(declare-fun call!54348 () Bool)

(declare-fun call!54350 () Bool)

(assert (=> bm!54343 (= call!54348 call!54350)))

(declare-fun b!906835 () Bool)

(declare-fun e!592119 () Bool)

(declare-fun call!54349 () Bool)

(assert (=> b!906835 (= e!592119 call!54349)))

(declare-fun b!906836 () Bool)

(declare-fun e!592121 () Bool)

(declare-fun e!592118 () Bool)

(assert (=> b!906836 (= e!592121 e!592118)))

(declare-fun c!146938 () Bool)

(assert (=> b!906836 (= c!146938 (is-Star!2398 (regTwo!5308 r!15766)))))

(declare-fun b!906837 () Bool)

(declare-fun e!592123 () Bool)

(assert (=> b!906837 (= e!592123 e!592119)))

(declare-fun res!412352 () Bool)

(assert (=> b!906837 (=> (not res!412352) (not e!592119))))

(assert (=> b!906837 (= res!412352 call!54348)))

(declare-fun b!906838 () Bool)

(declare-fun e!592124 () Bool)

(assert (=> b!906838 (= e!592118 e!592124)))

(declare-fun c!146939 () Bool)

(assert (=> b!906838 (= c!146939 (is-Union!2398 (regTwo!5308 r!15766)))))

(declare-fun b!906839 () Bool)

(declare-fun res!412356 () Bool)

(assert (=> b!906839 (=> res!412356 e!592123)))

(assert (=> b!906839 (= res!412356 (not (is-Concat!4231 (regTwo!5308 r!15766))))))

(assert (=> b!906839 (= e!592124 e!592123)))

(declare-fun bm!54344 () Bool)

(assert (=> bm!54344 (= call!54349 (validRegex!867 (ite c!146939 (regTwo!5309 (regTwo!5308 r!15766)) (regTwo!5308 (regTwo!5308 r!15766)))))))

(declare-fun b!906840 () Bool)

(declare-fun e!592120 () Bool)

(assert (=> b!906840 (= e!592120 call!54350)))

(declare-fun b!906841 () Bool)

(declare-fun res!412355 () Bool)

(declare-fun e!592122 () Bool)

(assert (=> b!906841 (=> (not res!412355) (not e!592122))))

(assert (=> b!906841 (= res!412355 call!54348)))

(assert (=> b!906841 (= e!592124 e!592122)))

(declare-fun b!906842 () Bool)

(assert (=> b!906842 (= e!592118 e!592120)))

(declare-fun res!412353 () Bool)

(assert (=> b!906842 (= res!412353 (not (nullable!646 (reg!2727 (regTwo!5308 r!15766)))))))

(assert (=> b!906842 (=> (not res!412353) (not e!592120))))

(declare-fun b!906843 () Bool)

(assert (=> b!906843 (= e!592122 call!54349)))

(declare-fun d!278923 () Bool)

(declare-fun res!412354 () Bool)

(assert (=> d!278923 (=> res!412354 e!592121)))

(assert (=> d!278923 (= res!412354 (is-ElementMatch!2398 (regTwo!5308 r!15766)))))

(assert (=> d!278923 (= (validRegex!867 (regTwo!5308 r!15766)) e!592121)))

(declare-fun bm!54345 () Bool)

(assert (=> bm!54345 (= call!54350 (validRegex!867 (ite c!146938 (reg!2727 (regTwo!5308 r!15766)) (ite c!146939 (regOne!5309 (regTwo!5308 r!15766)) (regOne!5308 (regTwo!5308 r!15766))))))))

(assert (= (and d!278923 (not res!412354)) b!906836))

(assert (= (and b!906836 c!146938) b!906842))

(assert (= (and b!906836 (not c!146938)) b!906838))

(assert (= (and b!906842 res!412353) b!906840))

(assert (= (and b!906838 c!146939) b!906841))

(assert (= (and b!906838 (not c!146939)) b!906839))

(assert (= (and b!906841 res!412355) b!906843))

(assert (= (and b!906839 (not res!412356)) b!906837))

(assert (= (and b!906837 res!412352) b!906835))

(assert (= (or b!906843 b!906835) bm!54344))

(assert (= (or b!906841 b!906837) bm!54343))

(assert (= (or b!906840 bm!54343) bm!54345))

(declare-fun m!1141391 () Bool)

(assert (=> bm!54344 m!1141391))

(declare-fun m!1141393 () Bool)

(assert (=> b!906842 m!1141393))

(declare-fun m!1141395 () Bool)

(assert (=> bm!54345 m!1141395))

(assert (=> b!906476 d!278923))

(declare-fun b!906855 () Bool)

(declare-fun e!592127 () Bool)

(declare-fun tp!283839 () Bool)

(declare-fun tp!283838 () Bool)

(assert (=> b!906855 (= e!592127 (and tp!283839 tp!283838))))

(declare-fun b!906854 () Bool)

(assert (=> b!906854 (= e!592127 tp_is_empty!4439)))

(declare-fun b!906857 () Bool)

(declare-fun tp!283835 () Bool)

(declare-fun tp!283837 () Bool)

(assert (=> b!906857 (= e!592127 (and tp!283835 tp!283837))))

(declare-fun b!906856 () Bool)

(declare-fun tp!283836 () Bool)

(assert (=> b!906856 (= e!592127 tp!283836)))

(assert (=> b!906479 (= tp!283801 e!592127)))

(assert (= (and b!906479 (is-ElementMatch!2398 (reg!2727 r!15766))) b!906854))

(assert (= (and b!906479 (is-Concat!4231 (reg!2727 r!15766))) b!906855))

(assert (= (and b!906479 (is-Star!2398 (reg!2727 r!15766))) b!906856))

(assert (= (and b!906479 (is-Union!2398 (reg!2727 r!15766))) b!906857))

(declare-fun b!906859 () Bool)

(declare-fun e!592128 () Bool)

(declare-fun tp!283844 () Bool)

(declare-fun tp!283843 () Bool)

(assert (=> b!906859 (= e!592128 (and tp!283844 tp!283843))))

(declare-fun b!906858 () Bool)

(assert (=> b!906858 (= e!592128 tp_is_empty!4439)))

(declare-fun b!906861 () Bool)

(declare-fun tp!283840 () Bool)

(declare-fun tp!283842 () Bool)

(assert (=> b!906861 (= e!592128 (and tp!283840 tp!283842))))

(declare-fun b!906860 () Bool)

(declare-fun tp!283841 () Bool)

(assert (=> b!906860 (= e!592128 tp!283841)))

(assert (=> b!906471 (= tp!283806 e!592128)))

(assert (= (and b!906471 (is-ElementMatch!2398 (regOne!5309 r!15766))) b!906858))

(assert (= (and b!906471 (is-Concat!4231 (regOne!5309 r!15766))) b!906859))

(assert (= (and b!906471 (is-Star!2398 (regOne!5309 r!15766))) b!906860))

(assert (= (and b!906471 (is-Union!2398 (regOne!5309 r!15766))) b!906861))

(declare-fun b!906863 () Bool)

(declare-fun e!592129 () Bool)

(declare-fun tp!283849 () Bool)

(declare-fun tp!283848 () Bool)

(assert (=> b!906863 (= e!592129 (and tp!283849 tp!283848))))

(declare-fun b!906862 () Bool)

(assert (=> b!906862 (= e!592129 tp_is_empty!4439)))

(declare-fun b!906865 () Bool)

(declare-fun tp!283845 () Bool)

(declare-fun tp!283847 () Bool)

(assert (=> b!906865 (= e!592129 (and tp!283845 tp!283847))))

(declare-fun b!906864 () Bool)

(declare-fun tp!283846 () Bool)

(assert (=> b!906864 (= e!592129 tp!283846)))

(assert (=> b!906471 (= tp!283802 e!592129)))

(assert (= (and b!906471 (is-ElementMatch!2398 (regTwo!5309 r!15766))) b!906862))

(assert (= (and b!906471 (is-Concat!4231 (regTwo!5309 r!15766))) b!906863))

(assert (= (and b!906471 (is-Star!2398 (regTwo!5309 r!15766))) b!906864))

(assert (= (and b!906471 (is-Union!2398 (regTwo!5309 r!15766))) b!906865))

(declare-fun b!906867 () Bool)

(declare-fun e!592130 () Bool)

(declare-fun tp!283854 () Bool)

(declare-fun tp!283853 () Bool)

(assert (=> b!906867 (= e!592130 (and tp!283854 tp!283853))))

(declare-fun b!906866 () Bool)

(assert (=> b!906866 (= e!592130 tp_is_empty!4439)))

(declare-fun b!906869 () Bool)

(declare-fun tp!283850 () Bool)

(declare-fun tp!283852 () Bool)

(assert (=> b!906869 (= e!592130 (and tp!283850 tp!283852))))

(declare-fun b!906868 () Bool)

(declare-fun tp!283851 () Bool)

(assert (=> b!906868 (= e!592130 tp!283851)))

(assert (=> b!906472 (= tp!283804 e!592130)))

(assert (= (and b!906472 (is-ElementMatch!2398 (regOne!5308 r!15766))) b!906866))

(assert (= (and b!906472 (is-Concat!4231 (regOne!5308 r!15766))) b!906867))

(assert (= (and b!906472 (is-Star!2398 (regOne!5308 r!15766))) b!906868))

(assert (= (and b!906472 (is-Union!2398 (regOne!5308 r!15766))) b!906869))

(declare-fun b!906871 () Bool)

(declare-fun e!592131 () Bool)

(declare-fun tp!283859 () Bool)

(declare-fun tp!283858 () Bool)

(assert (=> b!906871 (= e!592131 (and tp!283859 tp!283858))))

(declare-fun b!906870 () Bool)

(assert (=> b!906870 (= e!592131 tp_is_empty!4439)))

(declare-fun b!906873 () Bool)

(declare-fun tp!283855 () Bool)

(declare-fun tp!283857 () Bool)

(assert (=> b!906873 (= e!592131 (and tp!283855 tp!283857))))

(declare-fun b!906872 () Bool)

(declare-fun tp!283856 () Bool)

(assert (=> b!906872 (= e!592131 tp!283856)))

(assert (=> b!906472 (= tp!283805 e!592131)))

(assert (= (and b!906472 (is-ElementMatch!2398 (regTwo!5308 r!15766))) b!906870))

(assert (= (and b!906472 (is-Concat!4231 (regTwo!5308 r!15766))) b!906871))

(assert (= (and b!906472 (is-Star!2398 (regTwo!5308 r!15766))) b!906872))

(assert (= (and b!906472 (is-Union!2398 (regTwo!5308 r!15766))) b!906873))

(declare-fun b!906878 () Bool)

(declare-fun e!592134 () Bool)

(declare-fun tp!283862 () Bool)

(assert (=> b!906878 (= e!592134 (and tp_is_empty!4439 tp!283862))))

(assert (=> b!906475 (= tp!283803 e!592134)))

(assert (= (and b!906475 (is-Cons!9612 (t!100674 s!10566))) b!906878))

(push 1)

(assert (not d!278919))

(assert (not d!278893))

(assert (not b!906855))

(assert (not b!906869))

(assert (not bm!54326))

(assert (not b!906774))

(assert (not b!906863))

(assert (not b!906744))

(assert (not b!906776))

(assert (not b!906773))

(assert (not bm!54345))

(assert (not b!906856))

(assert (not b!906781))

(assert (not bm!54302))

(assert (not b!906777))

(assert (not b!906790))

(assert (not b!906878))

(assert (not b!906793))

(assert (not b!906674))

(assert (not b!906555))

(assert (not d!278913))

(assert (not bm!54339))

(assert (not b!906861))

(assert (not b!906779))

(assert (not d!278883))

(assert (not d!278901))

(assert (not bm!54309))

(assert (not b!906788))

(assert (not d!278917))

(assert (not d!278885))

(assert (not bm!54303))

(assert (not b!906795))

(assert (not b!906867))

(assert (not b!906791))

(assert (not b!906681))

(assert (not d!278905))

(assert (not b!906859))

(assert (not bm!54297))

(assert (not b!906745))

(assert (not b!906598))

(assert (not d!278899))

(assert (not b!906872))

(assert (not b!906787))

(assert (not d!278915))

(assert (not bm!54296))

(assert (not b!906842))

(assert (not b!906741))

(assert (not d!278921))

(assert (not b!906601))

(assert (not b!906864))

(assert (not b!906857))

(assert (not bm!54327))

(assert (not b!906746))

(assert (not bm!54340))

(assert (not b!906679))

(assert (not b!906860))

(assert (not b!906873))

(assert (not bm!54344))

(assert (not d!278895))

(assert (not b!906871))

(assert (not b!906738))

(assert (not b!906868))

(assert (not b!906677))

(assert (not b!906740))

(assert tp_is_empty!4439)

(assert (not b!906673))

(assert (not b!906865))

(assert (not b!906826))

(assert (not b!906676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

