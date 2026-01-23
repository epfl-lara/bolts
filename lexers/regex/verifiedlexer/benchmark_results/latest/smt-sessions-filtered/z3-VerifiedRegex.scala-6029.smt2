; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294936 () Bool)

(assert start!294936)

(declare-fun b!3115276 () Bool)

(declare-fun e!1945689 () Bool)

(declare-fun tp_is_empty!16781 () Bool)

(assert (=> b!3115276 (= e!1945689 tp_is_empty!16781)))

(declare-fun res!1275128 () Bool)

(declare-fun e!1945685 () Bool)

(assert (=> start!294936 (=> (not res!1275128) (not e!1945685))))

(declare-datatypes ((C!19404 0))(
  ( (C!19405 (val!11738 Int)) )
))
(declare-datatypes ((Regex!9609 0))(
  ( (ElementMatch!9609 (c!521753 C!19404)) (Concat!14930 (regOne!19730 Regex!9609) (regTwo!19730 Regex!9609)) (EmptyExpr!9609) (Star!9609 (reg!9938 Regex!9609)) (EmptyLang!9609) (Union!9609 (regOne!19731 Regex!9609) (regTwo!19731 Regex!9609)) )
))
(declare-fun r!17423 () Regex!9609)

(declare-fun validRegex!4342 (Regex!9609) Bool)

(assert (=> start!294936 (= res!1275128 (validRegex!4342 r!17423))))

(assert (=> start!294936 e!1945685))

(assert (=> start!294936 e!1945689))

(declare-fun e!1945688 () Bool)

(assert (=> start!294936 e!1945688))

(declare-fun b!3115277 () Bool)

(declare-fun tp!977114 () Bool)

(assert (=> b!3115277 (= e!1945689 tp!977114)))

(declare-fun b!3115278 () Bool)

(declare-fun e!1945687 () Bool)

(declare-fun e!1945686 () Bool)

(assert (=> b!3115278 (= e!1945687 e!1945686)))

(declare-fun res!1275129 () Bool)

(assert (=> b!3115278 (=> res!1275129 e!1945686)))

(declare-fun lt!1058174 () Bool)

(assert (=> b!3115278 (= res!1275129 (not lt!1058174))))

(declare-fun lt!1058172 () Regex!9609)

(declare-datatypes ((List!35474 0))(
  ( (Nil!35350) (Cons!35350 (h!40770 C!19404) (t!234539 List!35474)) )
))
(declare-fun s!11993 () List!35474)

(declare-fun matchR!4491 (Regex!9609 List!35474) Bool)

(assert (=> b!3115278 (= lt!1058174 (matchR!4491 lt!1058172 s!11993))))

(assert (=> b!3115278 (= lt!1058174 (matchR!4491 (reg!9938 r!17423) s!11993))))

(declare-datatypes ((Unit!49657 0))(
  ( (Unit!49658) )
))
(declare-fun lt!1058176 () Unit!49657)

(declare-fun lemmaSimplifySound!352 (Regex!9609 List!35474) Unit!49657)

(assert (=> b!3115278 (= lt!1058176 (lemmaSimplifySound!352 (reg!9938 r!17423) s!11993))))

(declare-fun b!3115279 () Bool)

(declare-fun res!1275126 () Bool)

(assert (=> b!3115279 (=> res!1275126 e!1945686)))

(assert (=> b!3115279 (= res!1275126 (not (validRegex!4342 (Star!9609 (reg!9938 r!17423)))))))

(declare-fun b!3115280 () Bool)

(declare-fun e!1945684 () Bool)

(assert (=> b!3115280 (= e!1945685 (not e!1945684))))

(declare-fun res!1275130 () Bool)

(assert (=> b!3115280 (=> res!1275130 e!1945684)))

(declare-fun lt!1058173 () Bool)

(get-info :version)

(assert (=> b!3115280 (= res!1275130 (or lt!1058173 ((_ is Concat!14930) r!17423) ((_ is Union!9609) r!17423) (not ((_ is Star!9609) r!17423))))))

(declare-fun matchRSpec!1746 (Regex!9609 List!35474) Bool)

(assert (=> b!3115280 (= lt!1058173 (matchRSpec!1746 r!17423 s!11993))))

(assert (=> b!3115280 (= lt!1058173 (matchR!4491 r!17423 s!11993))))

(declare-fun lt!1058175 () Unit!49657)

(declare-fun mainMatchTheorem!1746 (Regex!9609 List!35474) Unit!49657)

(assert (=> b!3115280 (= lt!1058175 (mainMatchTheorem!1746 r!17423 s!11993))))

(declare-fun b!3115281 () Bool)

(declare-fun tp!977116 () Bool)

(declare-fun tp!977112 () Bool)

(assert (=> b!3115281 (= e!1945689 (and tp!977116 tp!977112))))

(declare-fun b!3115282 () Bool)

(declare-fun tp!977113 () Bool)

(declare-fun tp!977117 () Bool)

(assert (=> b!3115282 (= e!1945689 (and tp!977113 tp!977117))))

(declare-fun b!3115283 () Bool)

(assert (=> b!3115283 (= e!1945686 (matchR!4491 (reg!9938 r!17423) Nil!35350))))

(declare-fun b!3115284 () Bool)

(assert (=> b!3115284 (= e!1945684 e!1945687)))

(declare-fun res!1275127 () Bool)

(assert (=> b!3115284 (=> res!1275127 e!1945687)))

(declare-fun isEmptyLang!660 (Regex!9609) Bool)

(assert (=> b!3115284 (= res!1275127 (not (isEmptyLang!660 lt!1058172)))))

(declare-fun simplify!564 (Regex!9609) Regex!9609)

(assert (=> b!3115284 (= lt!1058172 (simplify!564 (reg!9938 r!17423)))))

(declare-fun b!3115285 () Bool)

(declare-fun tp!977115 () Bool)

(assert (=> b!3115285 (= e!1945688 (and tp_is_empty!16781 tp!977115))))

(assert (= (and start!294936 res!1275128) b!3115280))

(assert (= (and b!3115280 (not res!1275130)) b!3115284))

(assert (= (and b!3115284 (not res!1275127)) b!3115278))

(assert (= (and b!3115278 (not res!1275129)) b!3115279))

(assert (= (and b!3115279 (not res!1275126)) b!3115283))

(assert (= (and start!294936 ((_ is ElementMatch!9609) r!17423)) b!3115276))

(assert (= (and start!294936 ((_ is Concat!14930) r!17423)) b!3115282))

(assert (= (and start!294936 ((_ is Star!9609) r!17423)) b!3115277))

(assert (= (and start!294936 ((_ is Union!9609) r!17423)) b!3115281))

(assert (= (and start!294936 ((_ is Cons!35350) s!11993)) b!3115285))

(declare-fun m!3406231 () Bool)

(assert (=> b!3115284 m!3406231))

(declare-fun m!3406233 () Bool)

(assert (=> b!3115284 m!3406233))

(declare-fun m!3406235 () Bool)

(assert (=> b!3115278 m!3406235))

(declare-fun m!3406237 () Bool)

(assert (=> b!3115278 m!3406237))

(declare-fun m!3406239 () Bool)

(assert (=> b!3115278 m!3406239))

(declare-fun m!3406241 () Bool)

(assert (=> start!294936 m!3406241))

(declare-fun m!3406243 () Bool)

(assert (=> b!3115283 m!3406243))

(declare-fun m!3406245 () Bool)

(assert (=> b!3115279 m!3406245))

(declare-fun m!3406247 () Bool)

(assert (=> b!3115280 m!3406247))

(declare-fun m!3406249 () Bool)

(assert (=> b!3115280 m!3406249))

(declare-fun m!3406251 () Bool)

(assert (=> b!3115280 m!3406251))

(check-sat (not b!3115278) tp_is_empty!16781 (not start!294936) (not b!3115281) (not b!3115280) (not b!3115284) (not b!3115282) (not b!3115277) (not b!3115285) (not b!3115283) (not b!3115279))
(check-sat)
(get-model)

(declare-fun c!521762 () Bool)

(declare-fun bm!220984 () Bool)

(declare-fun call!220991 () Bool)

(declare-fun c!521763 () Bool)

(assert (=> bm!220984 (= call!220991 (validRegex!4342 (ite c!521763 (reg!9938 (Star!9609 (reg!9938 r!17423))) (ite c!521762 (regTwo!19731 (Star!9609 (reg!9938 r!17423))) (regOne!19730 (Star!9609 (reg!9938 r!17423)))))))))

(declare-fun d!862080 () Bool)

(declare-fun res!1275142 () Bool)

(declare-fun e!1945706 () Bool)

(assert (=> d!862080 (=> res!1275142 e!1945706)))

(assert (=> d!862080 (= res!1275142 ((_ is ElementMatch!9609) (Star!9609 (reg!9938 r!17423))))))

(assert (=> d!862080 (= (validRegex!4342 (Star!9609 (reg!9938 r!17423))) e!1945706)))

(declare-fun b!3115312 () Bool)

(declare-fun res!1275141 () Bool)

(declare-fun e!1945709 () Bool)

(assert (=> b!3115312 (=> res!1275141 e!1945709)))

(assert (=> b!3115312 (= res!1275141 (not ((_ is Concat!14930) (Star!9609 (reg!9938 r!17423)))))))

(declare-fun e!1945712 () Bool)

(assert (=> b!3115312 (= e!1945712 e!1945709)))

(declare-fun b!3115313 () Bool)

(declare-fun res!1275143 () Bool)

(declare-fun e!1945714 () Bool)

(assert (=> b!3115313 (=> (not res!1275143) (not e!1945714))))

(declare-fun call!220989 () Bool)

(assert (=> b!3115313 (= res!1275143 call!220989)))

(assert (=> b!3115313 (= e!1945712 e!1945714)))

(declare-fun bm!220985 () Bool)

(assert (=> bm!220985 (= call!220989 (validRegex!4342 (ite c!521762 (regOne!19731 (Star!9609 (reg!9938 r!17423))) (regTwo!19730 (Star!9609 (reg!9938 r!17423))))))))

(declare-fun bm!220986 () Bool)

(declare-fun call!220990 () Bool)

(assert (=> bm!220986 (= call!220990 call!220991)))

(declare-fun b!3115314 () Bool)

(declare-fun e!1945710 () Bool)

(assert (=> b!3115314 (= e!1945710 call!220991)))

(declare-fun b!3115315 () Bool)

(declare-fun e!1945707 () Bool)

(assert (=> b!3115315 (= e!1945706 e!1945707)))

(assert (=> b!3115315 (= c!521763 ((_ is Star!9609) (Star!9609 (reg!9938 r!17423))))))

(declare-fun b!3115316 () Bool)

(declare-fun e!1945713 () Bool)

(assert (=> b!3115316 (= e!1945709 e!1945713)))

(declare-fun res!1275144 () Bool)

(assert (=> b!3115316 (=> (not res!1275144) (not e!1945713))))

(assert (=> b!3115316 (= res!1275144 call!220990)))

(declare-fun b!3115317 () Bool)

(assert (=> b!3115317 (= e!1945713 call!220989)))

(declare-fun b!3115318 () Bool)

(assert (=> b!3115318 (= e!1945707 e!1945710)))

(declare-fun res!1275145 () Bool)

(declare-fun nullable!3247 (Regex!9609) Bool)

(assert (=> b!3115318 (= res!1275145 (not (nullable!3247 (reg!9938 (Star!9609 (reg!9938 r!17423))))))))

(assert (=> b!3115318 (=> (not res!1275145) (not e!1945710))))

(declare-fun b!3115319 () Bool)

(assert (=> b!3115319 (= e!1945714 call!220990)))

(declare-fun b!3115320 () Bool)

(assert (=> b!3115320 (= e!1945707 e!1945712)))

(assert (=> b!3115320 (= c!521762 ((_ is Union!9609) (Star!9609 (reg!9938 r!17423))))))

(assert (= (and d!862080 (not res!1275142)) b!3115315))

(assert (= (and b!3115315 c!521763) b!3115318))

(assert (= (and b!3115315 (not c!521763)) b!3115320))

(assert (= (and b!3115318 res!1275145) b!3115314))

(assert (= (and b!3115320 c!521762) b!3115313))

(assert (= (and b!3115320 (not c!521762)) b!3115312))

(assert (= (and b!3115313 res!1275143) b!3115319))

(assert (= (and b!3115312 (not res!1275141)) b!3115316))

(assert (= (and b!3115316 res!1275144) b!3115317))

(assert (= (or b!3115313 b!3115317) bm!220985))

(assert (= (or b!3115319 b!3115316) bm!220986))

(assert (= (or b!3115314 bm!220986) bm!220984))

(declare-fun m!3406253 () Bool)

(assert (=> bm!220984 m!3406253))

(declare-fun m!3406255 () Bool)

(assert (=> bm!220985 m!3406255))

(declare-fun m!3406257 () Bool)

(assert (=> b!3115318 m!3406257))

(assert (=> b!3115279 d!862080))

(declare-fun d!862084 () Bool)

(assert (=> d!862084 (= (isEmptyLang!660 lt!1058172) ((_ is EmptyLang!9609) lt!1058172))))

(assert (=> b!3115284 d!862084))

(declare-fun b!3115481 () Bool)

(declare-fun e!1945803 () Bool)

(declare-fun call!221021 () Bool)

(assert (=> b!3115481 (= e!1945803 call!221021)))

(declare-fun b!3115482 () Bool)

(declare-fun e!1945805 () Regex!9609)

(declare-fun lt!1058214 () Regex!9609)

(assert (=> b!3115482 (= e!1945805 lt!1058214)))

(declare-fun b!3115483 () Bool)

(declare-fun e!1945806 () Bool)

(declare-fun lt!1058210 () Regex!9609)

(assert (=> b!3115483 (= e!1945806 (= (nullable!3247 lt!1058210) (nullable!3247 (reg!9938 r!17423))))))

(declare-fun call!221018 () Bool)

(declare-fun bm!221010 () Bool)

(declare-fun c!521825 () Bool)

(declare-fun lt!1058213 () Regex!9609)

(declare-fun isEmptyExpr!657 (Regex!9609) Bool)

(assert (=> bm!221010 (= call!221018 (isEmptyExpr!657 (ite c!521825 lt!1058213 lt!1058214)))))

(declare-fun b!3115484 () Bool)

(declare-fun e!1945809 () Regex!9609)

(declare-fun e!1945808 () Regex!9609)

(assert (=> b!3115484 (= e!1945809 e!1945808)))

(declare-fun lt!1058212 () Regex!9609)

(declare-fun call!221020 () Regex!9609)

(assert (=> b!3115484 (= lt!1058212 call!221020)))

(declare-fun call!221015 () Regex!9609)

(assert (=> b!3115484 (= lt!1058214 call!221015)))

(declare-fun res!1275196 () Bool)

(declare-fun call!221016 () Bool)

(assert (=> b!3115484 (= res!1275196 call!221016)))

(assert (=> b!3115484 (=> res!1275196 e!1945803)))

(declare-fun c!521827 () Bool)

(assert (=> b!3115484 (= c!521827 e!1945803)))

(declare-fun b!3115485 () Bool)

(assert (=> b!3115485 (= e!1945808 EmptyLang!9609)))

(declare-fun b!3115486 () Bool)

(declare-fun e!1945810 () Regex!9609)

(assert (=> b!3115486 (= e!1945805 e!1945810)))

(declare-fun c!521828 () Bool)

(assert (=> b!3115486 (= c!521828 call!221018)))

(declare-fun b!3115488 () Bool)

(declare-fun c!521819 () Bool)

(assert (=> b!3115488 (= c!521819 ((_ is EmptyExpr!9609) (reg!9938 r!17423)))))

(declare-fun e!1945807 () Regex!9609)

(declare-fun e!1945801 () Regex!9609)

(assert (=> b!3115488 (= e!1945807 e!1945801)))

(declare-fun b!3115489 () Bool)

(assert (=> b!3115489 (= e!1945801 EmptyExpr!9609)))

(declare-fun c!521824 () Bool)

(declare-fun call!221017 () Bool)

(declare-fun bm!221011 () Bool)

(declare-fun lt!1058211 () Regex!9609)

(assert (=> bm!221011 (= call!221017 (isEmptyLang!660 (ite c!521825 lt!1058213 (ite c!521824 lt!1058211 lt!1058214))))))

(declare-fun b!3115490 () Bool)

(declare-fun e!1945800 () Regex!9609)

(declare-fun lt!1058209 () Regex!9609)

(assert (=> b!3115490 (= e!1945800 (Union!9609 lt!1058209 lt!1058211))))

(declare-fun b!3115491 () Bool)

(declare-fun e!1945813 () Regex!9609)

(assert (=> b!3115491 (= e!1945801 e!1945813)))

(assert (=> b!3115491 (= c!521825 ((_ is Star!9609) (reg!9938 r!17423)))))

(declare-fun b!3115492 () Bool)

(declare-fun e!1945812 () Bool)

(assert (=> b!3115492 (= e!1945812 call!221018)))

(declare-fun b!3115493 () Bool)

(assert (=> b!3115493 (= e!1945800 lt!1058209)))

(declare-fun d!862086 () Bool)

(assert (=> d!862086 e!1945806))

(declare-fun res!1275197 () Bool)

(assert (=> d!862086 (=> (not res!1275197) (not e!1945806))))

(assert (=> d!862086 (= res!1275197 (validRegex!4342 lt!1058210))))

(declare-fun e!1945811 () Regex!9609)

(assert (=> d!862086 (= lt!1058210 e!1945811)))

(declare-fun c!521826 () Bool)

(assert (=> d!862086 (= c!521826 ((_ is EmptyLang!9609) (reg!9938 r!17423)))))

(assert (=> d!862086 (validRegex!4342 (reg!9938 r!17423))))

(assert (=> d!862086 (= (simplify!564 (reg!9938 r!17423)) lt!1058210)))

(declare-fun b!3115487 () Bool)

(assert (=> b!3115487 (= e!1945811 EmptyLang!9609)))

(declare-fun b!3115494 () Bool)

(declare-fun e!1945802 () Regex!9609)

(assert (=> b!3115494 (= e!1945802 lt!1058211)))

(declare-fun call!221019 () Regex!9609)

(declare-fun bm!221012 () Bool)

(assert (=> bm!221012 (= call!221019 (simplify!564 (ite c!521825 (reg!9938 (reg!9938 r!17423)) (ite c!521824 (regTwo!19731 (reg!9938 r!17423)) (regOne!19730 (reg!9938 r!17423))))))))

(declare-fun b!3115495 () Bool)

(declare-fun e!1945804 () Regex!9609)

(assert (=> b!3115495 (= e!1945804 (Star!9609 lt!1058213))))

(declare-fun bm!221013 () Bool)

(assert (=> bm!221013 (= call!221021 call!221017)))

(declare-fun b!3115496 () Bool)

(declare-fun c!521823 () Bool)

(assert (=> b!3115496 (= c!521823 (isEmptyExpr!657 lt!1058212))))

(assert (=> b!3115496 (= e!1945808 e!1945805)))

(declare-fun b!3115497 () Bool)

(assert (=> b!3115497 (= e!1945809 e!1945802)))

(assert (=> b!3115497 (= lt!1058209 call!221015)))

(assert (=> b!3115497 (= lt!1058211 call!221020)))

(declare-fun c!521820 () Bool)

(assert (=> b!3115497 (= c!521820 call!221016)))

(declare-fun b!3115498 () Bool)

(assert (=> b!3115498 (= e!1945810 (Concat!14930 lt!1058212 lt!1058214))))

(declare-fun bm!221014 () Bool)

(assert (=> bm!221014 (= call!221015 (simplify!564 (ite c!521824 (regOne!19731 (reg!9938 r!17423)) (regTwo!19730 (reg!9938 r!17423)))))))

(declare-fun b!3115499 () Bool)

(declare-fun c!521829 () Bool)

(assert (=> b!3115499 (= c!521829 e!1945812)))

(declare-fun res!1275198 () Bool)

(assert (=> b!3115499 (=> res!1275198 e!1945812)))

(assert (=> b!3115499 (= res!1275198 call!221017)))

(assert (=> b!3115499 (= lt!1058213 call!221019)))

(assert (=> b!3115499 (= e!1945813 e!1945804)))

(declare-fun b!3115500 () Bool)

(assert (=> b!3115500 (= c!521824 ((_ is Union!9609) (reg!9938 r!17423)))))

(assert (=> b!3115500 (= e!1945813 e!1945809)))

(declare-fun b!3115501 () Bool)

(declare-fun c!521821 () Bool)

(assert (=> b!3115501 (= c!521821 call!221021)))

(assert (=> b!3115501 (= e!1945802 e!1945800)))

(declare-fun b!3115502 () Bool)

(assert (=> b!3115502 (= e!1945811 e!1945807)))

(declare-fun c!521822 () Bool)

(assert (=> b!3115502 (= c!521822 ((_ is ElementMatch!9609) (reg!9938 r!17423)))))

(declare-fun b!3115503 () Bool)

(assert (=> b!3115503 (= e!1945804 EmptyExpr!9609)))

(declare-fun bm!221015 () Bool)

(assert (=> bm!221015 (= call!221016 (isEmptyLang!660 (ite c!521824 lt!1058209 lt!1058212)))))

(declare-fun b!3115504 () Bool)

(assert (=> b!3115504 (= e!1945810 lt!1058212)))

(declare-fun bm!221016 () Bool)

(assert (=> bm!221016 (= call!221020 call!221019)))

(declare-fun b!3115505 () Bool)

(assert (=> b!3115505 (= e!1945807 (reg!9938 r!17423))))

(assert (= (and d!862086 c!521826) b!3115487))

(assert (= (and d!862086 (not c!521826)) b!3115502))

(assert (= (and b!3115502 c!521822) b!3115505))

(assert (= (and b!3115502 (not c!521822)) b!3115488))

(assert (= (and b!3115488 c!521819) b!3115489))

(assert (= (and b!3115488 (not c!521819)) b!3115491))

(assert (= (and b!3115491 c!521825) b!3115499))

(assert (= (and b!3115491 (not c!521825)) b!3115500))

(assert (= (and b!3115499 (not res!1275198)) b!3115492))

(assert (= (and b!3115499 c!521829) b!3115503))

(assert (= (and b!3115499 (not c!521829)) b!3115495))

(assert (= (and b!3115500 c!521824) b!3115497))

(assert (= (and b!3115500 (not c!521824)) b!3115484))

(assert (= (and b!3115497 c!521820) b!3115494))

(assert (= (and b!3115497 (not c!521820)) b!3115501))

(assert (= (and b!3115501 c!521821) b!3115493))

(assert (= (and b!3115501 (not c!521821)) b!3115490))

(assert (= (and b!3115484 (not res!1275196)) b!3115481))

(assert (= (and b!3115484 c!521827) b!3115485))

(assert (= (and b!3115484 (not c!521827)) b!3115496))

(assert (= (and b!3115496 c!521823) b!3115482))

(assert (= (and b!3115496 (not c!521823)) b!3115486))

(assert (= (and b!3115486 c!521828) b!3115504))

(assert (= (and b!3115486 (not c!521828)) b!3115498))

(assert (= (or b!3115497 b!3115484) bm!221014))

(assert (= (or b!3115497 b!3115484) bm!221016))

(assert (= (or b!3115501 b!3115481) bm!221013))

(assert (= (or b!3115497 b!3115484) bm!221015))

(assert (= (or b!3115492 b!3115486) bm!221010))

(assert (= (or b!3115499 bm!221016) bm!221012))

(assert (= (or b!3115499 bm!221013) bm!221011))

(assert (= (and d!862086 res!1275197) b!3115483))

(declare-fun m!3406299 () Bool)

(assert (=> bm!221010 m!3406299))

(declare-fun m!3406301 () Bool)

(assert (=> bm!221012 m!3406301))

(declare-fun m!3406303 () Bool)

(assert (=> b!3115496 m!3406303))

(declare-fun m!3406305 () Bool)

(assert (=> bm!221014 m!3406305))

(declare-fun m!3406307 () Bool)

(assert (=> b!3115483 m!3406307))

(declare-fun m!3406309 () Bool)

(assert (=> b!3115483 m!3406309))

(declare-fun m!3406311 () Bool)

(assert (=> bm!221015 m!3406311))

(declare-fun m!3406313 () Bool)

(assert (=> bm!221011 m!3406313))

(declare-fun m!3406315 () Bool)

(assert (=> d!862086 m!3406315))

(declare-fun m!3406317 () Bool)

(assert (=> d!862086 m!3406317))

(assert (=> b!3115284 d!862086))

(declare-fun b!3115706 () Bool)

(assert (=> b!3115706 true))

(assert (=> b!3115706 true))

(declare-fun bs!535837 () Bool)

(declare-fun b!3115704 () Bool)

(assert (= bs!535837 (and b!3115704 b!3115706)))

(declare-fun lambda!115132 () Int)

(declare-fun lambda!115131 () Int)

(assert (=> bs!535837 (not (= lambda!115132 lambda!115131))))

(assert (=> b!3115704 true))

(assert (=> b!3115704 true))

(declare-fun b!3115697 () Bool)

(declare-fun res!1275267 () Bool)

(declare-fun e!1945924 () Bool)

(assert (=> b!3115697 (=> res!1275267 e!1945924)))

(declare-fun call!221063 () Bool)

(assert (=> b!3115697 (= res!1275267 call!221063)))

(declare-fun e!1945920 () Bool)

(assert (=> b!3115697 (= e!1945920 e!1945924)))

(declare-fun b!3115698 () Bool)

(declare-fun e!1945923 () Bool)

(assert (=> b!3115698 (= e!1945923 (matchRSpec!1746 (regTwo!19731 r!17423) s!11993))))

(declare-fun d!862098 () Bool)

(declare-fun c!521873 () Bool)

(assert (=> d!862098 (= c!521873 ((_ is EmptyExpr!9609) r!17423))))

(declare-fun e!1945922 () Bool)

(assert (=> d!862098 (= (matchRSpec!1746 r!17423 s!11993) e!1945922)))

(declare-fun b!3115699 () Bool)

(declare-fun e!1945918 () Bool)

(assert (=> b!3115699 (= e!1945918 (= s!11993 (Cons!35350 (c!521753 r!17423) Nil!35350)))))

(declare-fun b!3115700 () Bool)

(declare-fun e!1945919 () Bool)

(assert (=> b!3115700 (= e!1945922 e!1945919)))

(declare-fun res!1275268 () Bool)

(assert (=> b!3115700 (= res!1275268 (not ((_ is EmptyLang!9609) r!17423)))))

(assert (=> b!3115700 (=> (not res!1275268) (not e!1945919))))

(declare-fun b!3115701 () Bool)

(declare-fun e!1945921 () Bool)

(assert (=> b!3115701 (= e!1945921 e!1945920)))

(declare-fun c!521874 () Bool)

(assert (=> b!3115701 (= c!521874 ((_ is Star!9609) r!17423))))

(declare-fun bm!221057 () Bool)

(declare-fun isEmpty!19693 (List!35474) Bool)

(assert (=> bm!221057 (= call!221063 (isEmpty!19693 s!11993))))

(declare-fun b!3115702 () Bool)

(declare-fun c!521875 () Bool)

(assert (=> b!3115702 (= c!521875 ((_ is Union!9609) r!17423))))

(assert (=> b!3115702 (= e!1945918 e!1945921)))

(declare-fun call!221062 () Bool)

(declare-fun bm!221058 () Bool)

(declare-fun Exists!1862 (Int) Bool)

(assert (=> bm!221058 (= call!221062 (Exists!1862 (ite c!521874 lambda!115131 lambda!115132)))))

(declare-fun b!3115703 () Bool)

(declare-fun c!521872 () Bool)

(assert (=> b!3115703 (= c!521872 ((_ is ElementMatch!9609) r!17423))))

(assert (=> b!3115703 (= e!1945919 e!1945918)))

(assert (=> b!3115704 (= e!1945920 call!221062)))

(declare-fun b!3115705 () Bool)

(assert (=> b!3115705 (= e!1945921 e!1945923)))

(declare-fun res!1275269 () Bool)

(assert (=> b!3115705 (= res!1275269 (matchRSpec!1746 (regOne!19731 r!17423) s!11993))))

(assert (=> b!3115705 (=> res!1275269 e!1945923)))

(assert (=> b!3115706 (= e!1945924 call!221062)))

(declare-fun b!3115707 () Bool)

(assert (=> b!3115707 (= e!1945922 call!221063)))

(assert (= (and d!862098 c!521873) b!3115707))

(assert (= (and d!862098 (not c!521873)) b!3115700))

(assert (= (and b!3115700 res!1275268) b!3115703))

(assert (= (and b!3115703 c!521872) b!3115699))

(assert (= (and b!3115703 (not c!521872)) b!3115702))

(assert (= (and b!3115702 c!521875) b!3115705))

(assert (= (and b!3115702 (not c!521875)) b!3115701))

(assert (= (and b!3115705 (not res!1275269)) b!3115698))

(assert (= (and b!3115701 c!521874) b!3115697))

(assert (= (and b!3115701 (not c!521874)) b!3115704))

(assert (= (and b!3115697 (not res!1275267)) b!3115706))

(assert (= (or b!3115706 b!3115704) bm!221058))

(assert (= (or b!3115707 b!3115697) bm!221057))

(declare-fun m!3406359 () Bool)

(assert (=> b!3115698 m!3406359))

(declare-fun m!3406361 () Bool)

(assert (=> bm!221057 m!3406361))

(declare-fun m!3406363 () Bool)

(assert (=> bm!221058 m!3406363))

(declare-fun m!3406365 () Bool)

(assert (=> b!3115705 m!3406365))

(assert (=> b!3115280 d!862098))

(declare-fun b!3115740 () Bool)

(declare-fun res!1275288 () Bool)

(declare-fun e!1945942 () Bool)

(assert (=> b!3115740 (=> res!1275288 e!1945942)))

(declare-fun e!1945941 () Bool)

(assert (=> b!3115740 (= res!1275288 e!1945941)))

(declare-fun res!1275287 () Bool)

(assert (=> b!3115740 (=> (not res!1275287) (not e!1945941))))

(declare-fun lt!1058227 () Bool)

(assert (=> b!3115740 (= res!1275287 lt!1058227)))

(declare-fun b!3115741 () Bool)

(declare-fun e!1945939 () Bool)

(declare-fun e!1945940 () Bool)

(assert (=> b!3115741 (= e!1945939 e!1945940)))

(declare-fun res!1275291 () Bool)

(assert (=> b!3115741 (=> res!1275291 e!1945940)))

(declare-fun call!221066 () Bool)

(assert (=> b!3115741 (= res!1275291 call!221066)))

(declare-fun b!3115742 () Bool)

(declare-fun head!6901 (List!35474) C!19404)

(assert (=> b!3115742 (= e!1945940 (not (= (head!6901 s!11993) (c!521753 r!17423))))))

(declare-fun b!3115743 () Bool)

(declare-fun res!1275286 () Bool)

(assert (=> b!3115743 (=> res!1275286 e!1945940)))

(declare-fun tail!5127 (List!35474) List!35474)

(assert (=> b!3115743 (= res!1275286 (not (isEmpty!19693 (tail!5127 s!11993))))))

(declare-fun b!3115744 () Bool)

(declare-fun res!1275292 () Bool)

(assert (=> b!3115744 (=> (not res!1275292) (not e!1945941))))

(assert (=> b!3115744 (= res!1275292 (not call!221066))))

(declare-fun b!3115745 () Bool)

(declare-fun e!1945943 () Bool)

(declare-fun derivativeStep!2842 (Regex!9609 C!19404) Regex!9609)

(assert (=> b!3115745 (= e!1945943 (matchR!4491 (derivativeStep!2842 r!17423 (head!6901 s!11993)) (tail!5127 s!11993)))))

(declare-fun b!3115746 () Bool)

(assert (=> b!3115746 (= e!1945943 (nullable!3247 r!17423))))

(declare-fun d!862110 () Bool)

(declare-fun e!1945945 () Bool)

(assert (=> d!862110 e!1945945))

(declare-fun c!521882 () Bool)

(assert (=> d!862110 (= c!521882 ((_ is EmptyExpr!9609) r!17423))))

(assert (=> d!862110 (= lt!1058227 e!1945943)))

(declare-fun c!521884 () Bool)

(assert (=> d!862110 (= c!521884 (isEmpty!19693 s!11993))))

(assert (=> d!862110 (validRegex!4342 r!17423)))

(assert (=> d!862110 (= (matchR!4491 r!17423 s!11993) lt!1058227)))

(declare-fun b!3115747 () Bool)

(declare-fun e!1945944 () Bool)

(assert (=> b!3115747 (= e!1945944 (not lt!1058227))))

(declare-fun b!3115748 () Bool)

(declare-fun res!1275293 () Bool)

(assert (=> b!3115748 (=> (not res!1275293) (not e!1945941))))

(assert (=> b!3115748 (= res!1275293 (isEmpty!19693 (tail!5127 s!11993)))))

(declare-fun b!3115749 () Bool)

(assert (=> b!3115749 (= e!1945941 (= (head!6901 s!11993) (c!521753 r!17423)))))

(declare-fun b!3115750 () Bool)

(declare-fun res!1275289 () Bool)

(assert (=> b!3115750 (=> res!1275289 e!1945942)))

(assert (=> b!3115750 (= res!1275289 (not ((_ is ElementMatch!9609) r!17423)))))

(assert (=> b!3115750 (= e!1945944 e!1945942)))

(declare-fun b!3115751 () Bool)

(assert (=> b!3115751 (= e!1945945 (= lt!1058227 call!221066))))

(declare-fun b!3115752 () Bool)

(assert (=> b!3115752 (= e!1945942 e!1945939)))

(declare-fun res!1275290 () Bool)

(assert (=> b!3115752 (=> (not res!1275290) (not e!1945939))))

(assert (=> b!3115752 (= res!1275290 (not lt!1058227))))

(declare-fun b!3115753 () Bool)

(assert (=> b!3115753 (= e!1945945 e!1945944)))

(declare-fun c!521883 () Bool)

(assert (=> b!3115753 (= c!521883 ((_ is EmptyLang!9609) r!17423))))

(declare-fun bm!221061 () Bool)

(assert (=> bm!221061 (= call!221066 (isEmpty!19693 s!11993))))

(assert (= (and d!862110 c!521884) b!3115746))

(assert (= (and d!862110 (not c!521884)) b!3115745))

(assert (= (and d!862110 c!521882) b!3115751))

(assert (= (and d!862110 (not c!521882)) b!3115753))

(assert (= (and b!3115753 c!521883) b!3115747))

(assert (= (and b!3115753 (not c!521883)) b!3115750))

(assert (= (and b!3115750 (not res!1275289)) b!3115740))

(assert (= (and b!3115740 res!1275287) b!3115744))

(assert (= (and b!3115744 res!1275292) b!3115748))

(assert (= (and b!3115748 res!1275293) b!3115749))

(assert (= (and b!3115740 (not res!1275288)) b!3115752))

(assert (= (and b!3115752 res!1275290) b!3115741))

(assert (= (and b!3115741 (not res!1275291)) b!3115743))

(assert (= (and b!3115743 (not res!1275286)) b!3115742))

(assert (= (or b!3115751 b!3115741 b!3115744) bm!221061))

(declare-fun m!3406367 () Bool)

(assert (=> b!3115748 m!3406367))

(assert (=> b!3115748 m!3406367))

(declare-fun m!3406369 () Bool)

(assert (=> b!3115748 m!3406369))

(declare-fun m!3406371 () Bool)

(assert (=> b!3115745 m!3406371))

(assert (=> b!3115745 m!3406371))

(declare-fun m!3406373 () Bool)

(assert (=> b!3115745 m!3406373))

(assert (=> b!3115745 m!3406367))

(assert (=> b!3115745 m!3406373))

(assert (=> b!3115745 m!3406367))

(declare-fun m!3406375 () Bool)

(assert (=> b!3115745 m!3406375))

(assert (=> b!3115743 m!3406367))

(assert (=> b!3115743 m!3406367))

(assert (=> b!3115743 m!3406369))

(assert (=> bm!221061 m!3406361))

(declare-fun m!3406377 () Bool)

(assert (=> b!3115746 m!3406377))

(assert (=> b!3115742 m!3406371))

(assert (=> d!862110 m!3406361))

(assert (=> d!862110 m!3406241))

(assert (=> b!3115749 m!3406371))

(assert (=> b!3115280 d!862110))

(declare-fun d!862112 () Bool)

(assert (=> d!862112 (= (matchR!4491 r!17423 s!11993) (matchRSpec!1746 r!17423 s!11993))))

(declare-fun lt!1058230 () Unit!49657)

(declare-fun choose!18424 (Regex!9609 List!35474) Unit!49657)

(assert (=> d!862112 (= lt!1058230 (choose!18424 r!17423 s!11993))))

(assert (=> d!862112 (validRegex!4342 r!17423)))

(assert (=> d!862112 (= (mainMatchTheorem!1746 r!17423 s!11993) lt!1058230)))

(declare-fun bs!535838 () Bool)

(assert (= bs!535838 d!862112))

(assert (=> bs!535838 m!3406249))

(assert (=> bs!535838 m!3406247))

(declare-fun m!3406379 () Bool)

(assert (=> bs!535838 m!3406379))

(assert (=> bs!535838 m!3406241))

(assert (=> b!3115280 d!862112))

(declare-fun b!3115754 () Bool)

(declare-fun res!1275296 () Bool)

(declare-fun e!1945949 () Bool)

(assert (=> b!3115754 (=> res!1275296 e!1945949)))

(declare-fun e!1945948 () Bool)

(assert (=> b!3115754 (= res!1275296 e!1945948)))

(declare-fun res!1275295 () Bool)

(assert (=> b!3115754 (=> (not res!1275295) (not e!1945948))))

(declare-fun lt!1058231 () Bool)

(assert (=> b!3115754 (= res!1275295 lt!1058231)))

(declare-fun b!3115755 () Bool)

(declare-fun e!1945946 () Bool)

(declare-fun e!1945947 () Bool)

(assert (=> b!3115755 (= e!1945946 e!1945947)))

(declare-fun res!1275299 () Bool)

(assert (=> b!3115755 (=> res!1275299 e!1945947)))

(declare-fun call!221067 () Bool)

(assert (=> b!3115755 (= res!1275299 call!221067)))

(declare-fun b!3115756 () Bool)

(assert (=> b!3115756 (= e!1945947 (not (= (head!6901 s!11993) (c!521753 lt!1058172))))))

(declare-fun b!3115757 () Bool)

(declare-fun res!1275294 () Bool)

(assert (=> b!3115757 (=> res!1275294 e!1945947)))

(assert (=> b!3115757 (= res!1275294 (not (isEmpty!19693 (tail!5127 s!11993))))))

(declare-fun b!3115758 () Bool)

(declare-fun res!1275300 () Bool)

(assert (=> b!3115758 (=> (not res!1275300) (not e!1945948))))

(assert (=> b!3115758 (= res!1275300 (not call!221067))))

(declare-fun b!3115759 () Bool)

(declare-fun e!1945950 () Bool)

(assert (=> b!3115759 (= e!1945950 (matchR!4491 (derivativeStep!2842 lt!1058172 (head!6901 s!11993)) (tail!5127 s!11993)))))

(declare-fun b!3115760 () Bool)

(assert (=> b!3115760 (= e!1945950 (nullable!3247 lt!1058172))))

(declare-fun d!862114 () Bool)

(declare-fun e!1945952 () Bool)

(assert (=> d!862114 e!1945952))

(declare-fun c!521885 () Bool)

(assert (=> d!862114 (= c!521885 ((_ is EmptyExpr!9609) lt!1058172))))

(assert (=> d!862114 (= lt!1058231 e!1945950)))

(declare-fun c!521887 () Bool)

(assert (=> d!862114 (= c!521887 (isEmpty!19693 s!11993))))

(assert (=> d!862114 (validRegex!4342 lt!1058172)))

(assert (=> d!862114 (= (matchR!4491 lt!1058172 s!11993) lt!1058231)))

(declare-fun b!3115761 () Bool)

(declare-fun e!1945951 () Bool)

(assert (=> b!3115761 (= e!1945951 (not lt!1058231))))

(declare-fun b!3115762 () Bool)

(declare-fun res!1275301 () Bool)

(assert (=> b!3115762 (=> (not res!1275301) (not e!1945948))))

(assert (=> b!3115762 (= res!1275301 (isEmpty!19693 (tail!5127 s!11993)))))

(declare-fun b!3115763 () Bool)

(assert (=> b!3115763 (= e!1945948 (= (head!6901 s!11993) (c!521753 lt!1058172)))))

(declare-fun b!3115764 () Bool)

(declare-fun res!1275297 () Bool)

(assert (=> b!3115764 (=> res!1275297 e!1945949)))

(assert (=> b!3115764 (= res!1275297 (not ((_ is ElementMatch!9609) lt!1058172)))))

(assert (=> b!3115764 (= e!1945951 e!1945949)))

(declare-fun b!3115765 () Bool)

(assert (=> b!3115765 (= e!1945952 (= lt!1058231 call!221067))))

(declare-fun b!3115766 () Bool)

(assert (=> b!3115766 (= e!1945949 e!1945946)))

(declare-fun res!1275298 () Bool)

(assert (=> b!3115766 (=> (not res!1275298) (not e!1945946))))

(assert (=> b!3115766 (= res!1275298 (not lt!1058231))))

(declare-fun b!3115767 () Bool)

(assert (=> b!3115767 (= e!1945952 e!1945951)))

(declare-fun c!521886 () Bool)

(assert (=> b!3115767 (= c!521886 ((_ is EmptyLang!9609) lt!1058172))))

(declare-fun bm!221062 () Bool)

(assert (=> bm!221062 (= call!221067 (isEmpty!19693 s!11993))))

(assert (= (and d!862114 c!521887) b!3115760))

(assert (= (and d!862114 (not c!521887)) b!3115759))

(assert (= (and d!862114 c!521885) b!3115765))

(assert (= (and d!862114 (not c!521885)) b!3115767))

(assert (= (and b!3115767 c!521886) b!3115761))

(assert (= (and b!3115767 (not c!521886)) b!3115764))

(assert (= (and b!3115764 (not res!1275297)) b!3115754))

(assert (= (and b!3115754 res!1275295) b!3115758))

(assert (= (and b!3115758 res!1275300) b!3115762))

(assert (= (and b!3115762 res!1275301) b!3115763))

(assert (= (and b!3115754 (not res!1275296)) b!3115766))

(assert (= (and b!3115766 res!1275298) b!3115755))

(assert (= (and b!3115755 (not res!1275299)) b!3115757))

(assert (= (and b!3115757 (not res!1275294)) b!3115756))

(assert (= (or b!3115765 b!3115755 b!3115758) bm!221062))

(assert (=> b!3115762 m!3406367))

(assert (=> b!3115762 m!3406367))

(assert (=> b!3115762 m!3406369))

(assert (=> b!3115759 m!3406371))

(assert (=> b!3115759 m!3406371))

(declare-fun m!3406381 () Bool)

(assert (=> b!3115759 m!3406381))

(assert (=> b!3115759 m!3406367))

(assert (=> b!3115759 m!3406381))

(assert (=> b!3115759 m!3406367))

(declare-fun m!3406383 () Bool)

(assert (=> b!3115759 m!3406383))

(assert (=> b!3115757 m!3406367))

(assert (=> b!3115757 m!3406367))

(assert (=> b!3115757 m!3406369))

(assert (=> bm!221062 m!3406361))

(declare-fun m!3406385 () Bool)

(assert (=> b!3115760 m!3406385))

(assert (=> b!3115756 m!3406371))

(assert (=> d!862114 m!3406361))

(declare-fun m!3406387 () Bool)

(assert (=> d!862114 m!3406387))

(assert (=> b!3115763 m!3406371))

(assert (=> b!3115278 d!862114))

(declare-fun b!3115768 () Bool)

(declare-fun res!1275304 () Bool)

(declare-fun e!1945956 () Bool)

(assert (=> b!3115768 (=> res!1275304 e!1945956)))

(declare-fun e!1945955 () Bool)

(assert (=> b!3115768 (= res!1275304 e!1945955)))

(declare-fun res!1275303 () Bool)

(assert (=> b!3115768 (=> (not res!1275303) (not e!1945955))))

(declare-fun lt!1058232 () Bool)

(assert (=> b!3115768 (= res!1275303 lt!1058232)))

(declare-fun b!3115769 () Bool)

(declare-fun e!1945953 () Bool)

(declare-fun e!1945954 () Bool)

(assert (=> b!3115769 (= e!1945953 e!1945954)))

(declare-fun res!1275307 () Bool)

(assert (=> b!3115769 (=> res!1275307 e!1945954)))

(declare-fun call!221068 () Bool)

(assert (=> b!3115769 (= res!1275307 call!221068)))

(declare-fun b!3115770 () Bool)

(assert (=> b!3115770 (= e!1945954 (not (= (head!6901 s!11993) (c!521753 (reg!9938 r!17423)))))))

(declare-fun b!3115771 () Bool)

(declare-fun res!1275302 () Bool)

(assert (=> b!3115771 (=> res!1275302 e!1945954)))

(assert (=> b!3115771 (= res!1275302 (not (isEmpty!19693 (tail!5127 s!11993))))))

(declare-fun b!3115772 () Bool)

(declare-fun res!1275308 () Bool)

(assert (=> b!3115772 (=> (not res!1275308) (not e!1945955))))

(assert (=> b!3115772 (= res!1275308 (not call!221068))))

(declare-fun b!3115773 () Bool)

(declare-fun e!1945957 () Bool)

(assert (=> b!3115773 (= e!1945957 (matchR!4491 (derivativeStep!2842 (reg!9938 r!17423) (head!6901 s!11993)) (tail!5127 s!11993)))))

(declare-fun b!3115774 () Bool)

(assert (=> b!3115774 (= e!1945957 (nullable!3247 (reg!9938 r!17423)))))

(declare-fun d!862116 () Bool)

(declare-fun e!1945959 () Bool)

(assert (=> d!862116 e!1945959))

(declare-fun c!521888 () Bool)

(assert (=> d!862116 (= c!521888 ((_ is EmptyExpr!9609) (reg!9938 r!17423)))))

(assert (=> d!862116 (= lt!1058232 e!1945957)))

(declare-fun c!521890 () Bool)

(assert (=> d!862116 (= c!521890 (isEmpty!19693 s!11993))))

(assert (=> d!862116 (validRegex!4342 (reg!9938 r!17423))))

(assert (=> d!862116 (= (matchR!4491 (reg!9938 r!17423) s!11993) lt!1058232)))

(declare-fun b!3115775 () Bool)

(declare-fun e!1945958 () Bool)

(assert (=> b!3115775 (= e!1945958 (not lt!1058232))))

(declare-fun b!3115776 () Bool)

(declare-fun res!1275309 () Bool)

(assert (=> b!3115776 (=> (not res!1275309) (not e!1945955))))

(assert (=> b!3115776 (= res!1275309 (isEmpty!19693 (tail!5127 s!11993)))))

(declare-fun b!3115777 () Bool)

(assert (=> b!3115777 (= e!1945955 (= (head!6901 s!11993) (c!521753 (reg!9938 r!17423))))))

(declare-fun b!3115778 () Bool)

(declare-fun res!1275305 () Bool)

(assert (=> b!3115778 (=> res!1275305 e!1945956)))

(assert (=> b!3115778 (= res!1275305 (not ((_ is ElementMatch!9609) (reg!9938 r!17423))))))

(assert (=> b!3115778 (= e!1945958 e!1945956)))

(declare-fun b!3115779 () Bool)

(assert (=> b!3115779 (= e!1945959 (= lt!1058232 call!221068))))

(declare-fun b!3115780 () Bool)

(assert (=> b!3115780 (= e!1945956 e!1945953)))

(declare-fun res!1275306 () Bool)

(assert (=> b!3115780 (=> (not res!1275306) (not e!1945953))))

(assert (=> b!3115780 (= res!1275306 (not lt!1058232))))

(declare-fun b!3115781 () Bool)

(assert (=> b!3115781 (= e!1945959 e!1945958)))

(declare-fun c!521889 () Bool)

(assert (=> b!3115781 (= c!521889 ((_ is EmptyLang!9609) (reg!9938 r!17423)))))

(declare-fun bm!221063 () Bool)

(assert (=> bm!221063 (= call!221068 (isEmpty!19693 s!11993))))

(assert (= (and d!862116 c!521890) b!3115774))

(assert (= (and d!862116 (not c!521890)) b!3115773))

(assert (= (and d!862116 c!521888) b!3115779))

(assert (= (and d!862116 (not c!521888)) b!3115781))

(assert (= (and b!3115781 c!521889) b!3115775))

(assert (= (and b!3115781 (not c!521889)) b!3115778))

(assert (= (and b!3115778 (not res!1275305)) b!3115768))

(assert (= (and b!3115768 res!1275303) b!3115772))

(assert (= (and b!3115772 res!1275308) b!3115776))

(assert (= (and b!3115776 res!1275309) b!3115777))

(assert (= (and b!3115768 (not res!1275304)) b!3115780))

(assert (= (and b!3115780 res!1275306) b!3115769))

(assert (= (and b!3115769 (not res!1275307)) b!3115771))

(assert (= (and b!3115771 (not res!1275302)) b!3115770))

(assert (= (or b!3115779 b!3115769 b!3115772) bm!221063))

(assert (=> b!3115776 m!3406367))

(assert (=> b!3115776 m!3406367))

(assert (=> b!3115776 m!3406369))

(assert (=> b!3115773 m!3406371))

(assert (=> b!3115773 m!3406371))

(declare-fun m!3406389 () Bool)

(assert (=> b!3115773 m!3406389))

(assert (=> b!3115773 m!3406367))

(assert (=> b!3115773 m!3406389))

(assert (=> b!3115773 m!3406367))

(declare-fun m!3406391 () Bool)

(assert (=> b!3115773 m!3406391))

(assert (=> b!3115771 m!3406367))

(assert (=> b!3115771 m!3406367))

(assert (=> b!3115771 m!3406369))

(assert (=> bm!221063 m!3406361))

(assert (=> b!3115774 m!3406309))

(assert (=> b!3115770 m!3406371))

(assert (=> d!862116 m!3406361))

(assert (=> d!862116 m!3406317))

(assert (=> b!3115777 m!3406371))

(assert (=> b!3115278 d!862116))

(declare-fun d!862118 () Bool)

(assert (=> d!862118 (= (matchR!4491 (reg!9938 r!17423) s!11993) (matchR!4491 (simplify!564 (reg!9938 r!17423)) s!11993))))

(declare-fun lt!1058235 () Unit!49657)

(declare-fun choose!18426 (Regex!9609 List!35474) Unit!49657)

(assert (=> d!862118 (= lt!1058235 (choose!18426 (reg!9938 r!17423) s!11993))))

(assert (=> d!862118 (validRegex!4342 (reg!9938 r!17423))))

(assert (=> d!862118 (= (lemmaSimplifySound!352 (reg!9938 r!17423) s!11993) lt!1058235)))

(declare-fun bs!535839 () Bool)

(assert (= bs!535839 d!862118))

(assert (=> bs!535839 m!3406233))

(declare-fun m!3406393 () Bool)

(assert (=> bs!535839 m!3406393))

(declare-fun m!3406395 () Bool)

(assert (=> bs!535839 m!3406395))

(assert (=> bs!535839 m!3406233))

(assert (=> bs!535839 m!3406317))

(assert (=> bs!535839 m!3406237))

(assert (=> b!3115278 d!862118))

(declare-fun b!3115782 () Bool)

(declare-fun res!1275312 () Bool)

(declare-fun e!1945963 () Bool)

(assert (=> b!3115782 (=> res!1275312 e!1945963)))

(declare-fun e!1945962 () Bool)

(assert (=> b!3115782 (= res!1275312 e!1945962)))

(declare-fun res!1275311 () Bool)

(assert (=> b!3115782 (=> (not res!1275311) (not e!1945962))))

(declare-fun lt!1058236 () Bool)

(assert (=> b!3115782 (= res!1275311 lt!1058236)))

(declare-fun b!3115783 () Bool)

(declare-fun e!1945960 () Bool)

(declare-fun e!1945961 () Bool)

(assert (=> b!3115783 (= e!1945960 e!1945961)))

(declare-fun res!1275315 () Bool)

(assert (=> b!3115783 (=> res!1275315 e!1945961)))

(declare-fun call!221069 () Bool)

(assert (=> b!3115783 (= res!1275315 call!221069)))

(declare-fun b!3115784 () Bool)

(assert (=> b!3115784 (= e!1945961 (not (= (head!6901 Nil!35350) (c!521753 (reg!9938 r!17423)))))))

(declare-fun b!3115785 () Bool)

(declare-fun res!1275310 () Bool)

(assert (=> b!3115785 (=> res!1275310 e!1945961)))

(assert (=> b!3115785 (= res!1275310 (not (isEmpty!19693 (tail!5127 Nil!35350))))))

(declare-fun b!3115786 () Bool)

(declare-fun res!1275316 () Bool)

(assert (=> b!3115786 (=> (not res!1275316) (not e!1945962))))

(assert (=> b!3115786 (= res!1275316 (not call!221069))))

(declare-fun b!3115787 () Bool)

(declare-fun e!1945964 () Bool)

(assert (=> b!3115787 (= e!1945964 (matchR!4491 (derivativeStep!2842 (reg!9938 r!17423) (head!6901 Nil!35350)) (tail!5127 Nil!35350)))))

(declare-fun b!3115788 () Bool)

(assert (=> b!3115788 (= e!1945964 (nullable!3247 (reg!9938 r!17423)))))

(declare-fun d!862120 () Bool)

(declare-fun e!1945966 () Bool)

(assert (=> d!862120 e!1945966))

(declare-fun c!521891 () Bool)

(assert (=> d!862120 (= c!521891 ((_ is EmptyExpr!9609) (reg!9938 r!17423)))))

(assert (=> d!862120 (= lt!1058236 e!1945964)))

(declare-fun c!521893 () Bool)

(assert (=> d!862120 (= c!521893 (isEmpty!19693 Nil!35350))))

(assert (=> d!862120 (validRegex!4342 (reg!9938 r!17423))))

(assert (=> d!862120 (= (matchR!4491 (reg!9938 r!17423) Nil!35350) lt!1058236)))

(declare-fun b!3115789 () Bool)

(declare-fun e!1945965 () Bool)

(assert (=> b!3115789 (= e!1945965 (not lt!1058236))))

(declare-fun b!3115790 () Bool)

(declare-fun res!1275317 () Bool)

(assert (=> b!3115790 (=> (not res!1275317) (not e!1945962))))

(assert (=> b!3115790 (= res!1275317 (isEmpty!19693 (tail!5127 Nil!35350)))))

(declare-fun b!3115791 () Bool)

(assert (=> b!3115791 (= e!1945962 (= (head!6901 Nil!35350) (c!521753 (reg!9938 r!17423))))))

(declare-fun b!3115792 () Bool)

(declare-fun res!1275313 () Bool)

(assert (=> b!3115792 (=> res!1275313 e!1945963)))

(assert (=> b!3115792 (= res!1275313 (not ((_ is ElementMatch!9609) (reg!9938 r!17423))))))

(assert (=> b!3115792 (= e!1945965 e!1945963)))

(declare-fun b!3115793 () Bool)

(assert (=> b!3115793 (= e!1945966 (= lt!1058236 call!221069))))

(declare-fun b!3115794 () Bool)

(assert (=> b!3115794 (= e!1945963 e!1945960)))

(declare-fun res!1275314 () Bool)

(assert (=> b!3115794 (=> (not res!1275314) (not e!1945960))))

(assert (=> b!3115794 (= res!1275314 (not lt!1058236))))

(declare-fun b!3115795 () Bool)

(assert (=> b!3115795 (= e!1945966 e!1945965)))

(declare-fun c!521892 () Bool)

(assert (=> b!3115795 (= c!521892 ((_ is EmptyLang!9609) (reg!9938 r!17423)))))

(declare-fun bm!221064 () Bool)

(assert (=> bm!221064 (= call!221069 (isEmpty!19693 Nil!35350))))

(assert (= (and d!862120 c!521893) b!3115788))

(assert (= (and d!862120 (not c!521893)) b!3115787))

(assert (= (and d!862120 c!521891) b!3115793))

(assert (= (and d!862120 (not c!521891)) b!3115795))

(assert (= (and b!3115795 c!521892) b!3115789))

(assert (= (and b!3115795 (not c!521892)) b!3115792))

(assert (= (and b!3115792 (not res!1275313)) b!3115782))

(assert (= (and b!3115782 res!1275311) b!3115786))

(assert (= (and b!3115786 res!1275316) b!3115790))

(assert (= (and b!3115790 res!1275317) b!3115791))

(assert (= (and b!3115782 (not res!1275312)) b!3115794))

(assert (= (and b!3115794 res!1275314) b!3115783))

(assert (= (and b!3115783 (not res!1275315)) b!3115785))

(assert (= (and b!3115785 (not res!1275310)) b!3115784))

(assert (= (or b!3115793 b!3115783 b!3115786) bm!221064))

(declare-fun m!3406397 () Bool)

(assert (=> b!3115790 m!3406397))

(assert (=> b!3115790 m!3406397))

(declare-fun m!3406399 () Bool)

(assert (=> b!3115790 m!3406399))

(declare-fun m!3406401 () Bool)

(assert (=> b!3115787 m!3406401))

(assert (=> b!3115787 m!3406401))

(declare-fun m!3406403 () Bool)

(assert (=> b!3115787 m!3406403))

(assert (=> b!3115787 m!3406397))

(assert (=> b!3115787 m!3406403))

(assert (=> b!3115787 m!3406397))

(declare-fun m!3406405 () Bool)

(assert (=> b!3115787 m!3406405))

(assert (=> b!3115785 m!3406397))

(assert (=> b!3115785 m!3406397))

(assert (=> b!3115785 m!3406399))

(declare-fun m!3406407 () Bool)

(assert (=> bm!221064 m!3406407))

(assert (=> b!3115788 m!3406309))

(assert (=> b!3115784 m!3406401))

(assert (=> d!862120 m!3406407))

(assert (=> d!862120 m!3406317))

(assert (=> b!3115791 m!3406401))

(assert (=> b!3115283 d!862120))

(declare-fun call!221072 () Bool)

(declare-fun c!521894 () Bool)

(declare-fun c!521895 () Bool)

(declare-fun bm!221065 () Bool)

(assert (=> bm!221065 (= call!221072 (validRegex!4342 (ite c!521895 (reg!9938 r!17423) (ite c!521894 (regTwo!19731 r!17423) (regOne!19730 r!17423)))))))

(declare-fun d!862122 () Bool)

(declare-fun res!1275319 () Bool)

(declare-fun e!1945967 () Bool)

(assert (=> d!862122 (=> res!1275319 e!1945967)))

(assert (=> d!862122 (= res!1275319 ((_ is ElementMatch!9609) r!17423))))

(assert (=> d!862122 (= (validRegex!4342 r!17423) e!1945967)))

(declare-fun b!3115796 () Bool)

(declare-fun res!1275318 () Bool)

(declare-fun e!1945969 () Bool)

(assert (=> b!3115796 (=> res!1275318 e!1945969)))

(assert (=> b!3115796 (= res!1275318 (not ((_ is Concat!14930) r!17423)))))

(declare-fun e!1945971 () Bool)

(assert (=> b!3115796 (= e!1945971 e!1945969)))

(declare-fun b!3115797 () Bool)

(declare-fun res!1275320 () Bool)

(declare-fun e!1945973 () Bool)

(assert (=> b!3115797 (=> (not res!1275320) (not e!1945973))))

(declare-fun call!221070 () Bool)

(assert (=> b!3115797 (= res!1275320 call!221070)))

(assert (=> b!3115797 (= e!1945971 e!1945973)))

(declare-fun bm!221066 () Bool)

(assert (=> bm!221066 (= call!221070 (validRegex!4342 (ite c!521894 (regOne!19731 r!17423) (regTwo!19730 r!17423))))))

(declare-fun bm!221067 () Bool)

(declare-fun call!221071 () Bool)

(assert (=> bm!221067 (= call!221071 call!221072)))

(declare-fun b!3115798 () Bool)

(declare-fun e!1945970 () Bool)

(assert (=> b!3115798 (= e!1945970 call!221072)))

(declare-fun b!3115799 () Bool)

(declare-fun e!1945968 () Bool)

(assert (=> b!3115799 (= e!1945967 e!1945968)))

(assert (=> b!3115799 (= c!521895 ((_ is Star!9609) r!17423))))

(declare-fun b!3115800 () Bool)

(declare-fun e!1945972 () Bool)

(assert (=> b!3115800 (= e!1945969 e!1945972)))

(declare-fun res!1275321 () Bool)

(assert (=> b!3115800 (=> (not res!1275321) (not e!1945972))))

(assert (=> b!3115800 (= res!1275321 call!221071)))

(declare-fun b!3115801 () Bool)

(assert (=> b!3115801 (= e!1945972 call!221070)))

(declare-fun b!3115802 () Bool)

(assert (=> b!3115802 (= e!1945968 e!1945970)))

(declare-fun res!1275322 () Bool)

(assert (=> b!3115802 (= res!1275322 (not (nullable!3247 (reg!9938 r!17423))))))

(assert (=> b!3115802 (=> (not res!1275322) (not e!1945970))))

(declare-fun b!3115803 () Bool)

(assert (=> b!3115803 (= e!1945973 call!221071)))

(declare-fun b!3115804 () Bool)

(assert (=> b!3115804 (= e!1945968 e!1945971)))

(assert (=> b!3115804 (= c!521894 ((_ is Union!9609) r!17423))))

(assert (= (and d!862122 (not res!1275319)) b!3115799))

(assert (= (and b!3115799 c!521895) b!3115802))

(assert (= (and b!3115799 (not c!521895)) b!3115804))

(assert (= (and b!3115802 res!1275322) b!3115798))

(assert (= (and b!3115804 c!521894) b!3115797))

(assert (= (and b!3115804 (not c!521894)) b!3115796))

(assert (= (and b!3115797 res!1275320) b!3115803))

(assert (= (and b!3115796 (not res!1275318)) b!3115800))

(assert (= (and b!3115800 res!1275321) b!3115801))

(assert (= (or b!3115797 b!3115801) bm!221066))

(assert (= (or b!3115803 b!3115800) bm!221067))

(assert (= (or b!3115798 bm!221067) bm!221065))

(declare-fun m!3406409 () Bool)

(assert (=> bm!221065 m!3406409))

(declare-fun m!3406411 () Bool)

(assert (=> bm!221066 m!3406411))

(assert (=> b!3115802 m!3406309))

(assert (=> start!294936 d!862122))

(declare-fun b!3115809 () Bool)

(declare-fun e!1945976 () Bool)

(declare-fun tp!977158 () Bool)

(assert (=> b!3115809 (= e!1945976 (and tp_is_empty!16781 tp!977158))))

(assert (=> b!3115285 (= tp!977115 e!1945976)))

(assert (= (and b!3115285 ((_ is Cons!35350) (t!234539 s!11993))) b!3115809))

(declare-fun b!3115822 () Bool)

(declare-fun e!1945979 () Bool)

(declare-fun tp!977169 () Bool)

(assert (=> b!3115822 (= e!1945979 tp!977169)))

(declare-fun b!3115821 () Bool)

(declare-fun tp!977170 () Bool)

(declare-fun tp!977171 () Bool)

(assert (=> b!3115821 (= e!1945979 (and tp!977170 tp!977171))))

(declare-fun b!3115823 () Bool)

(declare-fun tp!977173 () Bool)

(declare-fun tp!977172 () Bool)

(assert (=> b!3115823 (= e!1945979 (and tp!977173 tp!977172))))

(assert (=> b!3115281 (= tp!977116 e!1945979)))

(declare-fun b!3115820 () Bool)

(assert (=> b!3115820 (= e!1945979 tp_is_empty!16781)))

(assert (= (and b!3115281 ((_ is ElementMatch!9609) (regOne!19731 r!17423))) b!3115820))

(assert (= (and b!3115281 ((_ is Concat!14930) (regOne!19731 r!17423))) b!3115821))

(assert (= (and b!3115281 ((_ is Star!9609) (regOne!19731 r!17423))) b!3115822))

(assert (= (and b!3115281 ((_ is Union!9609) (regOne!19731 r!17423))) b!3115823))

(declare-fun b!3115826 () Bool)

(declare-fun e!1945980 () Bool)

(declare-fun tp!977174 () Bool)

(assert (=> b!3115826 (= e!1945980 tp!977174)))

(declare-fun b!3115825 () Bool)

(declare-fun tp!977175 () Bool)

(declare-fun tp!977176 () Bool)

(assert (=> b!3115825 (= e!1945980 (and tp!977175 tp!977176))))

(declare-fun b!3115827 () Bool)

(declare-fun tp!977178 () Bool)

(declare-fun tp!977177 () Bool)

(assert (=> b!3115827 (= e!1945980 (and tp!977178 tp!977177))))

(assert (=> b!3115281 (= tp!977112 e!1945980)))

(declare-fun b!3115824 () Bool)

(assert (=> b!3115824 (= e!1945980 tp_is_empty!16781)))

(assert (= (and b!3115281 ((_ is ElementMatch!9609) (regTwo!19731 r!17423))) b!3115824))

(assert (= (and b!3115281 ((_ is Concat!14930) (regTwo!19731 r!17423))) b!3115825))

(assert (= (and b!3115281 ((_ is Star!9609) (regTwo!19731 r!17423))) b!3115826))

(assert (= (and b!3115281 ((_ is Union!9609) (regTwo!19731 r!17423))) b!3115827))

(declare-fun b!3115830 () Bool)

(declare-fun e!1945981 () Bool)

(declare-fun tp!977179 () Bool)

(assert (=> b!3115830 (= e!1945981 tp!977179)))

(declare-fun b!3115829 () Bool)

(declare-fun tp!977180 () Bool)

(declare-fun tp!977181 () Bool)

(assert (=> b!3115829 (= e!1945981 (and tp!977180 tp!977181))))

(declare-fun b!3115831 () Bool)

(declare-fun tp!977183 () Bool)

(declare-fun tp!977182 () Bool)

(assert (=> b!3115831 (= e!1945981 (and tp!977183 tp!977182))))

(assert (=> b!3115277 (= tp!977114 e!1945981)))

(declare-fun b!3115828 () Bool)

(assert (=> b!3115828 (= e!1945981 tp_is_empty!16781)))

(assert (= (and b!3115277 ((_ is ElementMatch!9609) (reg!9938 r!17423))) b!3115828))

(assert (= (and b!3115277 ((_ is Concat!14930) (reg!9938 r!17423))) b!3115829))

(assert (= (and b!3115277 ((_ is Star!9609) (reg!9938 r!17423))) b!3115830))

(assert (= (and b!3115277 ((_ is Union!9609) (reg!9938 r!17423))) b!3115831))

(declare-fun b!3115834 () Bool)

(declare-fun e!1945982 () Bool)

(declare-fun tp!977184 () Bool)

(assert (=> b!3115834 (= e!1945982 tp!977184)))

(declare-fun b!3115833 () Bool)

(declare-fun tp!977185 () Bool)

(declare-fun tp!977186 () Bool)

(assert (=> b!3115833 (= e!1945982 (and tp!977185 tp!977186))))

(declare-fun b!3115835 () Bool)

(declare-fun tp!977188 () Bool)

(declare-fun tp!977187 () Bool)

(assert (=> b!3115835 (= e!1945982 (and tp!977188 tp!977187))))

(assert (=> b!3115282 (= tp!977113 e!1945982)))

(declare-fun b!3115832 () Bool)

(assert (=> b!3115832 (= e!1945982 tp_is_empty!16781)))

(assert (= (and b!3115282 ((_ is ElementMatch!9609) (regOne!19730 r!17423))) b!3115832))

(assert (= (and b!3115282 ((_ is Concat!14930) (regOne!19730 r!17423))) b!3115833))

(assert (= (and b!3115282 ((_ is Star!9609) (regOne!19730 r!17423))) b!3115834))

(assert (= (and b!3115282 ((_ is Union!9609) (regOne!19730 r!17423))) b!3115835))

(declare-fun b!3115838 () Bool)

(declare-fun e!1945983 () Bool)

(declare-fun tp!977189 () Bool)

(assert (=> b!3115838 (= e!1945983 tp!977189)))

(declare-fun b!3115837 () Bool)

(declare-fun tp!977190 () Bool)

(declare-fun tp!977191 () Bool)

(assert (=> b!3115837 (= e!1945983 (and tp!977190 tp!977191))))

(declare-fun b!3115839 () Bool)

(declare-fun tp!977193 () Bool)

(declare-fun tp!977192 () Bool)

(assert (=> b!3115839 (= e!1945983 (and tp!977193 tp!977192))))

(assert (=> b!3115282 (= tp!977117 e!1945983)))

(declare-fun b!3115836 () Bool)

(assert (=> b!3115836 (= e!1945983 tp_is_empty!16781)))

(assert (= (and b!3115282 ((_ is ElementMatch!9609) (regTwo!19730 r!17423))) b!3115836))

(assert (= (and b!3115282 ((_ is Concat!14930) (regTwo!19730 r!17423))) b!3115837))

(assert (= (and b!3115282 ((_ is Star!9609) (regTwo!19730 r!17423))) b!3115838))

(assert (= (and b!3115282 ((_ is Union!9609) (regTwo!19730 r!17423))) b!3115839))

(check-sat (not b!3115748) (not d!862116) (not bm!220984) (not b!3115762) (not b!3115823) (not b!3115745) (not bm!221015) (not bm!221011) (not b!3115831) (not b!3115826) (not bm!221064) (not bm!221061) (not bm!221066) (not b!3115839) (not b!3115833) (not b!3115829) (not b!3115757) (not b!3115827) (not b!3115760) (not b!3115791) (not bm!221063) (not bm!221010) (not b!3115825) (not bm!221057) (not b!3115790) (not b!3115802) tp_is_empty!16781 (not b!3115774) (not b!3115742) (not b!3115771) (not b!3115698) (not bm!220985) (not b!3115785) (not d!862110) (not b!3115821) (not d!862086) (not bm!221058) (not b!3115496) (not b!3115483) (not b!3115749) (not b!3115830) (not d!862120) (not b!3115756) (not b!3115838) (not d!862118) (not b!3115777) (not bm!221014) (not b!3115763) (not b!3115788) (not b!3115834) (not bm!221062) (not d!862112) (not bm!221012) (not b!3115837) (not b!3115746) (not b!3115705) (not b!3115835) (not b!3115787) (not bm!221065) (not b!3115318) (not b!3115776) (not b!3115770) (not b!3115809) (not b!3115743) (not d!862114) (not b!3115784) (not b!3115822) (not b!3115773) (not b!3115759))
(check-sat)
