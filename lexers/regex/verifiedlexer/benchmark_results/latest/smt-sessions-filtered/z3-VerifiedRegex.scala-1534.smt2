; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80546 () Bool)

(assert start!80546)

(declare-fun b!894082 () Bool)

(declare-fun e!585498 () Bool)

(declare-fun e!585499 () Bool)

(assert (=> b!894082 (= e!585498 e!585499)))

(declare-fun res!406419 () Bool)

(assert (=> b!894082 (=> res!406419 e!585499)))

(declare-fun lt!333091 () Bool)

(assert (=> b!894082 (= res!406419 lt!333091)))

(declare-fun e!585495 () Bool)

(assert (=> b!894082 e!585495))

(declare-fun res!406416 () Bool)

(assert (=> b!894082 (=> res!406416 e!585495)))

(assert (=> b!894082 (= res!406416 lt!333091)))

(declare-datatypes ((C!5224 0))(
  ( (C!5225 (val!2860 Int)) )
))
(declare-datatypes ((Regex!2327 0))(
  ( (ElementMatch!2327 (c!144770 C!5224)) (Concat!4160 (regOne!5166 Regex!2327) (regTwo!5166 Regex!2327)) (EmptyExpr!2327) (Star!2327 (reg!2656 Regex!2327)) (EmptyLang!2327) (Union!2327 (regOne!5167 Regex!2327) (regTwo!5167 Regex!2327)) )
))
(declare-fun r!15766 () Regex!2327)

(declare-datatypes ((List!9557 0))(
  ( (Nil!9541) (Cons!9541 (h!14942 C!5224) (t!100603 List!9557)) )
))
(declare-fun s!10566 () List!9557)

(declare-fun matchR!865 (Regex!2327 List!9557) Bool)

(assert (=> b!894082 (= lt!333091 (matchR!865 (regOne!5167 r!15766) s!10566))))

(declare-datatypes ((Unit!14233 0))(
  ( (Unit!14234) )
))
(declare-fun lt!333084 () Unit!14233)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!38 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> b!894082 (= lt!333084 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!38 (regOne!5167 r!15766) (regTwo!5167 r!15766) s!10566))))

(declare-fun b!894083 () Bool)

(declare-fun e!585493 () Bool)

(declare-fun tp!281155 () Bool)

(declare-fun tp!281156 () Bool)

(assert (=> b!894083 (= e!585493 (and tp!281155 tp!281156))))

(declare-fun b!894084 () Bool)

(declare-fun tp!281157 () Bool)

(declare-fun tp!281158 () Bool)

(assert (=> b!894084 (= e!585493 (and tp!281157 tp!281158))))

(declare-fun res!406414 () Bool)

(declare-fun e!585496 () Bool)

(assert (=> start!80546 (=> (not res!406414) (not e!585496))))

(declare-fun validRegex!796 (Regex!2327) Bool)

(assert (=> start!80546 (= res!406414 (validRegex!796 r!15766))))

(assert (=> start!80546 e!585496))

(assert (=> start!80546 e!585493))

(declare-fun e!585497 () Bool)

(assert (=> start!80546 e!585497))

(declare-fun b!894085 () Bool)

(assert (=> b!894085 (= e!585496 (not e!585498))))

(declare-fun res!406418 () Bool)

(assert (=> b!894085 (=> res!406418 e!585498)))

(declare-fun lt!333089 () Bool)

(get-info :version)

(assert (=> b!894085 (= res!406418 (or (not lt!333089) (and ((_ is Concat!4160) r!15766) ((_ is EmptyExpr!2327) (regOne!5166 r!15766))) (and ((_ is Concat!4160) r!15766) ((_ is EmptyExpr!2327) (regTwo!5166 r!15766))) ((_ is Concat!4160) r!15766) (not ((_ is Union!2327) r!15766))))))

(declare-fun matchRSpec!128 (Regex!2327 List!9557) Bool)

(assert (=> b!894085 (= lt!333089 (matchRSpec!128 r!15766 s!10566))))

(assert (=> b!894085 (= lt!333089 (matchR!865 r!15766 s!10566))))

(declare-fun lt!333082 () Unit!14233)

(declare-fun mainMatchTheorem!128 (Regex!2327 List!9557) Unit!14233)

(assert (=> b!894085 (= lt!333082 (mainMatchTheorem!128 r!15766 s!10566))))

(declare-fun b!894086 () Bool)

(declare-fun e!585494 () Bool)

(declare-fun e!585492 () Bool)

(assert (=> b!894086 (= e!585494 e!585492)))

(declare-fun res!406417 () Bool)

(assert (=> b!894086 (=> res!406417 e!585492)))

(declare-fun lt!333081 () Regex!2327)

(assert (=> b!894086 (= res!406417 (not (validRegex!796 lt!333081)))))

(declare-fun lt!333085 () Regex!2327)

(assert (=> b!894086 (matchR!865 (Union!2327 lt!333081 lt!333085) s!10566)))

(declare-fun lt!333090 () Unit!14233)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!14 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> b!894086 (= lt!333090 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!14 lt!333081 lt!333085 s!10566))))

(declare-fun removeUselessConcat!62 (Regex!2327) Regex!2327)

(assert (=> b!894086 (= lt!333085 (removeUselessConcat!62 (regOne!5167 r!15766)))))

(declare-fun b!894087 () Bool)

(declare-fun res!406420 () Bool)

(assert (=> b!894087 (=> res!406420 e!585492)))

(assert (=> b!894087 (= res!406420 (not (validRegex!796 lt!333085)))))

(declare-fun b!894088 () Bool)

(declare-fun tp_is_empty!4297 () Bool)

(declare-fun tp!281160 () Bool)

(assert (=> b!894088 (= e!585497 (and tp_is_empty!4297 tp!281160))))

(declare-fun b!894089 () Bool)

(assert (=> b!894089 (= e!585492 (validRegex!796 (removeUselessConcat!62 r!15766)))))

(assert (=> b!894089 (matchR!865 (Union!2327 lt!333085 lt!333081) s!10566)))

(declare-fun lt!333088 () Unit!14233)

(declare-fun lemmaReversedUnionAcceptsSameString!4 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> b!894089 (= lt!333088 (lemmaReversedUnionAcceptsSameString!4 lt!333081 lt!333085 s!10566))))

(declare-fun b!894090 () Bool)

(assert (=> b!894090 (= e!585499 e!585494)))

(declare-fun res!406415 () Bool)

(assert (=> b!894090 (=> res!406415 e!585494)))

(declare-fun lt!333083 () Bool)

(assert (=> b!894090 (= res!406415 (not lt!333083))))

(declare-fun lt!333086 () Bool)

(assert (=> b!894090 (= lt!333086 lt!333083)))

(assert (=> b!894090 (= lt!333083 (matchR!865 lt!333081 s!10566))))

(assert (=> b!894090 (= lt!333086 (matchR!865 (regTwo!5167 r!15766) s!10566))))

(assert (=> b!894090 (= lt!333081 (removeUselessConcat!62 (regTwo!5167 r!15766)))))

(declare-fun lt!333087 () Unit!14233)

(declare-fun lemmaRemoveUselessConcatSound!56 (Regex!2327 List!9557) Unit!14233)

(assert (=> b!894090 (= lt!333087 (lemmaRemoveUselessConcatSound!56 (regTwo!5167 r!15766) s!10566))))

(declare-fun b!894091 () Bool)

(assert (=> b!894091 (= e!585495 (matchR!865 (regTwo!5167 r!15766) s!10566))))

(declare-fun b!894092 () Bool)

(declare-fun tp!281159 () Bool)

(assert (=> b!894092 (= e!585493 tp!281159)))

(declare-fun b!894093 () Bool)

(assert (=> b!894093 (= e!585493 tp_is_empty!4297)))

(assert (= (and start!80546 res!406414) b!894085))

(assert (= (and b!894085 (not res!406418)) b!894082))

(assert (= (and b!894082 (not res!406416)) b!894091))

(assert (= (and b!894082 (not res!406419)) b!894090))

(assert (= (and b!894090 (not res!406415)) b!894086))

(assert (= (and b!894086 (not res!406417)) b!894087))

(assert (= (and b!894087 (not res!406420)) b!894089))

(assert (= (and start!80546 ((_ is ElementMatch!2327) r!15766)) b!894093))

(assert (= (and start!80546 ((_ is Concat!4160) r!15766)) b!894084))

(assert (= (and start!80546 ((_ is Star!2327) r!15766)) b!894092))

(assert (= (and start!80546 ((_ is Union!2327) r!15766)) b!894083))

(assert (= (and start!80546 ((_ is Cons!9541) s!10566)) b!894088))

(declare-fun m!1135219 () Bool)

(assert (=> b!894086 m!1135219))

(declare-fun m!1135221 () Bool)

(assert (=> b!894086 m!1135221))

(declare-fun m!1135223 () Bool)

(assert (=> b!894086 m!1135223))

(declare-fun m!1135225 () Bool)

(assert (=> b!894086 m!1135225))

(declare-fun m!1135227 () Bool)

(assert (=> b!894090 m!1135227))

(declare-fun m!1135229 () Bool)

(assert (=> b!894090 m!1135229))

(declare-fun m!1135231 () Bool)

(assert (=> b!894090 m!1135231))

(declare-fun m!1135233 () Bool)

(assert (=> b!894090 m!1135233))

(declare-fun m!1135235 () Bool)

(assert (=> b!894087 m!1135235))

(declare-fun m!1135237 () Bool)

(assert (=> b!894089 m!1135237))

(assert (=> b!894089 m!1135237))

(declare-fun m!1135239 () Bool)

(assert (=> b!894089 m!1135239))

(declare-fun m!1135241 () Bool)

(assert (=> b!894089 m!1135241))

(declare-fun m!1135243 () Bool)

(assert (=> b!894089 m!1135243))

(declare-fun m!1135245 () Bool)

(assert (=> b!894085 m!1135245))

(declare-fun m!1135247 () Bool)

(assert (=> b!894085 m!1135247))

(declare-fun m!1135249 () Bool)

(assert (=> b!894085 m!1135249))

(assert (=> b!894091 m!1135229))

(declare-fun m!1135251 () Bool)

(assert (=> b!894082 m!1135251))

(declare-fun m!1135253 () Bool)

(assert (=> b!894082 m!1135253))

(declare-fun m!1135255 () Bool)

(assert (=> start!80546 m!1135255))

(check-sat tp_is_empty!4297 (not b!894084) (not start!80546) (not b!894091) (not b!894090) (not b!894087) (not b!894085) (not b!894086) (not b!894089) (not b!894092) (not b!894082) (not b!894083) (not b!894088))
(check-sat)
(get-model)

(declare-fun b!894140 () Bool)

(declare-fun res!406448 () Bool)

(declare-fun e!585539 () Bool)

(assert (=> b!894140 (=> res!406448 e!585539)))

(assert (=> b!894140 (= res!406448 (not ((_ is Concat!4160) lt!333081)))))

(declare-fun e!585541 () Bool)

(assert (=> b!894140 (= e!585541 e!585539)))

(declare-fun bm!53028 () Bool)

(declare-fun call!53033 () Bool)

(declare-fun call!53034 () Bool)

(assert (=> bm!53028 (= call!53033 call!53034)))

(declare-fun b!894141 () Bool)

(declare-fun e!585540 () Bool)

(assert (=> b!894141 (= e!585540 call!53033)))

(declare-fun b!894142 () Bool)

(declare-fun e!585535 () Bool)

(assert (=> b!894142 (= e!585535 e!585541)))

(declare-fun c!144781 () Bool)

(assert (=> b!894142 (= c!144781 ((_ is Union!2327) lt!333081))))

(declare-fun b!894143 () Bool)

(declare-fun e!585538 () Bool)

(assert (=> b!894143 (= e!585538 call!53033)))

(declare-fun b!894144 () Bool)

(assert (=> b!894144 (= e!585539 e!585540)))

(declare-fun res!406447 () Bool)

(assert (=> b!894144 (=> (not res!406447) (not e!585540))))

(declare-fun call!53035 () Bool)

(assert (=> b!894144 (= res!406447 call!53035)))

(declare-fun bm!53029 () Bool)

(declare-fun c!144782 () Bool)

(assert (=> bm!53029 (= call!53034 (validRegex!796 (ite c!144782 (reg!2656 lt!333081) (ite c!144781 (regTwo!5167 lt!333081) (regTwo!5166 lt!333081)))))))

(declare-fun b!894145 () Bool)

(declare-fun res!406450 () Bool)

(assert (=> b!894145 (=> (not res!406450) (not e!585538))))

(assert (=> b!894145 (= res!406450 call!53035)))

(assert (=> b!894145 (= e!585541 e!585538)))

(declare-fun b!894139 () Bool)

(declare-fun e!585537 () Bool)

(assert (=> b!894139 (= e!585537 e!585535)))

(assert (=> b!894139 (= c!144782 ((_ is Star!2327) lt!333081))))

(declare-fun d!277615 () Bool)

(declare-fun res!406446 () Bool)

(assert (=> d!277615 (=> res!406446 e!585537)))

(assert (=> d!277615 (= res!406446 ((_ is ElementMatch!2327) lt!333081))))

(assert (=> d!277615 (= (validRegex!796 lt!333081) e!585537)))

(declare-fun bm!53030 () Bool)

(assert (=> bm!53030 (= call!53035 (validRegex!796 (ite c!144781 (regOne!5167 lt!333081) (regOne!5166 lt!333081))))))

(declare-fun b!894146 () Bool)

(declare-fun e!585536 () Bool)

(assert (=> b!894146 (= e!585535 e!585536)))

(declare-fun res!406449 () Bool)

(declare-fun nullable!613 (Regex!2327) Bool)

(assert (=> b!894146 (= res!406449 (not (nullable!613 (reg!2656 lt!333081))))))

(assert (=> b!894146 (=> (not res!406449) (not e!585536))))

(declare-fun b!894147 () Bool)

(assert (=> b!894147 (= e!585536 call!53034)))

(assert (= (and d!277615 (not res!406446)) b!894139))

(assert (= (and b!894139 c!144782) b!894146))

(assert (= (and b!894139 (not c!144782)) b!894142))

(assert (= (and b!894146 res!406449) b!894147))

(assert (= (and b!894142 c!144781) b!894145))

(assert (= (and b!894142 (not c!144781)) b!894140))

(assert (= (and b!894145 res!406450) b!894143))

(assert (= (and b!894140 (not res!406448)) b!894144))

(assert (= (and b!894144 res!406447) b!894141))

(assert (= (or b!894143 b!894141) bm!53028))

(assert (= (or b!894145 b!894144) bm!53030))

(assert (= (or b!894147 bm!53028) bm!53029))

(declare-fun m!1135263 () Bool)

(assert (=> bm!53029 m!1135263))

(declare-fun m!1135265 () Bool)

(assert (=> bm!53030 m!1135265))

(declare-fun m!1135267 () Bool)

(assert (=> b!894146 m!1135267))

(assert (=> b!894086 d!277615))

(declare-fun b!894209 () Bool)

(declare-fun res!406476 () Bool)

(declare-fun e!585574 () Bool)

(assert (=> b!894209 (=> res!406476 e!585574)))

(assert (=> b!894209 (= res!406476 (not ((_ is ElementMatch!2327) (Union!2327 lt!333081 lt!333085))))))

(declare-fun e!585578 () Bool)

(assert (=> b!894209 (= e!585578 e!585574)))

(declare-fun b!894210 () Bool)

(declare-fun res!406477 () Bool)

(declare-fun e!585575 () Bool)

(assert (=> b!894210 (=> (not res!406477) (not e!585575))))

(declare-fun isEmpty!5735 (List!9557) Bool)

(declare-fun tail!1140 (List!9557) List!9557)

(assert (=> b!894210 (= res!406477 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894211 () Bool)

(declare-fun e!585577 () Bool)

(assert (=> b!894211 (= e!585574 e!585577)))

(declare-fun res!406472 () Bool)

(assert (=> b!894211 (=> (not res!406472) (not e!585577))))

(declare-fun lt!333097 () Bool)

(assert (=> b!894211 (= res!406472 (not lt!333097))))

(declare-fun b!894212 () Bool)

(assert (=> b!894212 (= e!585578 (not lt!333097))))

(declare-fun b!894213 () Bool)

(declare-fun head!1578 (List!9557) C!5224)

(assert (=> b!894213 (= e!585575 (= (head!1578 s!10566) (c!144770 (Union!2327 lt!333081 lt!333085))))))

(declare-fun b!894214 () Bool)

(declare-fun res!406471 () Bool)

(declare-fun e!585579 () Bool)

(assert (=> b!894214 (=> res!406471 e!585579)))

(assert (=> b!894214 (= res!406471 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277621 () Bool)

(declare-fun e!585580 () Bool)

(assert (=> d!277621 e!585580))

(declare-fun c!144805 () Bool)

(assert (=> d!277621 (= c!144805 ((_ is EmptyExpr!2327) (Union!2327 lt!333081 lt!333085)))))

(declare-fun e!585576 () Bool)

(assert (=> d!277621 (= lt!333097 e!585576)))

(declare-fun c!144804 () Bool)

(assert (=> d!277621 (= c!144804 (isEmpty!5735 s!10566))))

(assert (=> d!277621 (validRegex!796 (Union!2327 lt!333081 lt!333085))))

(assert (=> d!277621 (= (matchR!865 (Union!2327 lt!333081 lt!333085) s!10566) lt!333097)))

(declare-fun b!894215 () Bool)

(declare-fun derivativeStep!425 (Regex!2327 C!5224) Regex!2327)

(assert (=> b!894215 (= e!585576 (matchR!865 (derivativeStep!425 (Union!2327 lt!333081 lt!333085) (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894216 () Bool)

(assert (=> b!894216 (= e!585579 (not (= (head!1578 s!10566) (c!144770 (Union!2327 lt!333081 lt!333085)))))))

(declare-fun b!894217 () Bool)

(assert (=> b!894217 (= e!585577 e!585579)))

(declare-fun res!406473 () Bool)

(assert (=> b!894217 (=> res!406473 e!585579)))

(declare-fun call!53053 () Bool)

(assert (=> b!894217 (= res!406473 call!53053)))

(declare-fun b!894218 () Bool)

(declare-fun res!406474 () Bool)

(assert (=> b!894218 (=> (not res!406474) (not e!585575))))

(assert (=> b!894218 (= res!406474 (not call!53053))))

(declare-fun b!894219 () Bool)

(assert (=> b!894219 (= e!585580 (= lt!333097 call!53053))))

(declare-fun b!894220 () Bool)

(assert (=> b!894220 (= e!585576 (nullable!613 (Union!2327 lt!333081 lt!333085)))))

(declare-fun b!894221 () Bool)

(assert (=> b!894221 (= e!585580 e!585578)))

(declare-fun c!144806 () Bool)

(assert (=> b!894221 (= c!144806 ((_ is EmptyLang!2327) (Union!2327 lt!333081 lt!333085)))))

(declare-fun b!894222 () Bool)

(declare-fun res!406475 () Bool)

(assert (=> b!894222 (=> res!406475 e!585574)))

(assert (=> b!894222 (= res!406475 e!585575)))

(declare-fun res!406470 () Bool)

(assert (=> b!894222 (=> (not res!406470) (not e!585575))))

(assert (=> b!894222 (= res!406470 lt!333097)))

(declare-fun bm!53048 () Bool)

(assert (=> bm!53048 (= call!53053 (isEmpty!5735 s!10566))))

(assert (= (and d!277621 c!144804) b!894220))

(assert (= (and d!277621 (not c!144804)) b!894215))

(assert (= (and d!277621 c!144805) b!894219))

(assert (= (and d!277621 (not c!144805)) b!894221))

(assert (= (and b!894221 c!144806) b!894212))

(assert (= (and b!894221 (not c!144806)) b!894209))

(assert (= (and b!894209 (not res!406476)) b!894222))

(assert (= (and b!894222 res!406470) b!894218))

(assert (= (and b!894218 res!406474) b!894210))

(assert (= (and b!894210 res!406477) b!894213))

(assert (= (and b!894222 (not res!406475)) b!894211))

(assert (= (and b!894211 res!406472) b!894217))

(assert (= (and b!894217 (not res!406473)) b!894214))

(assert (= (and b!894214 (not res!406471)) b!894216))

(assert (= (or b!894219 b!894218 b!894217) bm!53048))

(declare-fun m!1135279 () Bool)

(assert (=> b!894220 m!1135279))

(declare-fun m!1135281 () Bool)

(assert (=> b!894213 m!1135281))

(declare-fun m!1135283 () Bool)

(assert (=> d!277621 m!1135283))

(declare-fun m!1135285 () Bool)

(assert (=> d!277621 m!1135285))

(declare-fun m!1135287 () Bool)

(assert (=> b!894214 m!1135287))

(assert (=> b!894214 m!1135287))

(declare-fun m!1135289 () Bool)

(assert (=> b!894214 m!1135289))

(assert (=> b!894215 m!1135281))

(assert (=> b!894215 m!1135281))

(declare-fun m!1135291 () Bool)

(assert (=> b!894215 m!1135291))

(assert (=> b!894215 m!1135287))

(assert (=> b!894215 m!1135291))

(assert (=> b!894215 m!1135287))

(declare-fun m!1135293 () Bool)

(assert (=> b!894215 m!1135293))

(assert (=> b!894216 m!1135281))

(assert (=> bm!53048 m!1135283))

(assert (=> b!894210 m!1135287))

(assert (=> b!894210 m!1135287))

(assert (=> b!894210 m!1135289))

(assert (=> b!894086 d!277621))

(declare-fun d!277625 () Bool)

(assert (=> d!277625 (matchR!865 (Union!2327 lt!333081 lt!333085) s!10566)))

(declare-fun lt!333102 () Unit!14233)

(declare-fun choose!5358 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> d!277625 (= lt!333102 (choose!5358 lt!333081 lt!333085 s!10566))))

(declare-fun e!585597 () Bool)

(assert (=> d!277625 e!585597))

(declare-fun res!406496 () Bool)

(assert (=> d!277625 (=> (not res!406496) (not e!585597))))

(assert (=> d!277625 (= res!406496 (validRegex!796 lt!333081))))

(assert (=> d!277625 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!14 lt!333081 lt!333085 s!10566) lt!333102)))

(declare-fun b!894253 () Bool)

(assert (=> b!894253 (= e!585597 (validRegex!796 lt!333085))))

(assert (= (and d!277625 res!406496) b!894253))

(assert (=> d!277625 m!1135221))

(declare-fun m!1135295 () Bool)

(assert (=> d!277625 m!1135295))

(assert (=> d!277625 m!1135219))

(assert (=> b!894253 m!1135235))

(assert (=> b!894086 d!277625))

(declare-fun b!894332 () Bool)

(declare-fun c!144839 () Bool)

(assert (=> b!894332 (= c!144839 ((_ is Star!2327) (regOne!5167 r!15766)))))

(declare-fun e!585641 () Regex!2327)

(declare-fun e!585642 () Regex!2327)

(assert (=> b!894332 (= e!585641 e!585642)))

(declare-fun b!894333 () Bool)

(declare-fun e!585640 () Regex!2327)

(declare-fun call!53077 () Regex!2327)

(declare-fun call!53076 () Regex!2327)

(assert (=> b!894333 (= e!585640 (Concat!4160 call!53077 call!53076))))

(declare-fun b!894334 () Bool)

(assert (=> b!894334 (= e!585642 (regOne!5167 r!15766))))

(declare-fun bm!53069 () Bool)

(declare-fun call!53074 () Regex!2327)

(declare-fun call!53075 () Regex!2327)

(assert (=> bm!53069 (= call!53074 call!53075)))

(declare-fun b!894335 () Bool)

(declare-fun call!53078 () Regex!2327)

(assert (=> b!894335 (= e!585641 (Union!2327 call!53077 call!53078))))

(declare-fun b!894336 () Bool)

(assert (=> b!894336 (= e!585642 (Star!2327 call!53078))))

(declare-fun b!894337 () Bool)

(declare-fun e!585645 () Regex!2327)

(assert (=> b!894337 (= e!585645 call!53075)))

(declare-fun bm!53070 () Bool)

(assert (=> bm!53070 (= call!53077 call!53074)))

(declare-fun d!277627 () Bool)

(declare-fun e!585644 () Bool)

(assert (=> d!277627 e!585644))

(declare-fun res!406527 () Bool)

(assert (=> d!277627 (=> (not res!406527) (not e!585644))))

(declare-fun lt!333112 () Regex!2327)

(assert (=> d!277627 (= res!406527 (validRegex!796 lt!333112))))

(assert (=> d!277627 (= lt!333112 e!585645)))

(declare-fun c!144837 () Bool)

(assert (=> d!277627 (= c!144837 (and ((_ is Concat!4160) (regOne!5167 r!15766)) ((_ is EmptyExpr!2327) (regOne!5166 (regOne!5167 r!15766)))))))

(assert (=> d!277627 (validRegex!796 (regOne!5167 r!15766))))

(assert (=> d!277627 (= (removeUselessConcat!62 (regOne!5167 r!15766)) lt!333112)))

(declare-fun b!894338 () Bool)

(declare-fun e!585643 () Regex!2327)

(assert (=> b!894338 (= e!585643 call!53074)))

(declare-fun bm!53071 () Bool)

(declare-fun c!144838 () Bool)

(declare-fun c!144840 () Bool)

(assert (=> bm!53071 (= call!53076 (removeUselessConcat!62 (ite c!144840 (regTwo!5166 (regOne!5167 r!15766)) (ite c!144838 (regTwo!5167 (regOne!5167 r!15766)) (reg!2656 (regOne!5167 r!15766))))))))

(declare-fun bm!53072 () Bool)

(declare-fun c!144841 () Bool)

(assert (=> bm!53072 (= call!53075 (removeUselessConcat!62 (ite c!144837 (regTwo!5166 (regOne!5167 r!15766)) (ite (or c!144841 c!144840) (regOne!5166 (regOne!5167 r!15766)) (regOne!5167 (regOne!5167 r!15766))))))))

(declare-fun b!894339 () Bool)

(assert (=> b!894339 (= c!144840 ((_ is Concat!4160) (regOne!5167 r!15766)))))

(assert (=> b!894339 (= e!585643 e!585640)))

(declare-fun b!894340 () Bool)

(assert (=> b!894340 (= e!585644 (= (nullable!613 lt!333112) (nullable!613 (regOne!5167 r!15766))))))

(declare-fun b!894341 () Bool)

(assert (=> b!894341 (= e!585645 e!585643)))

(assert (=> b!894341 (= c!144841 (and ((_ is Concat!4160) (regOne!5167 r!15766)) ((_ is EmptyExpr!2327) (regTwo!5166 (regOne!5167 r!15766)))))))

(declare-fun b!894342 () Bool)

(assert (=> b!894342 (= e!585640 e!585641)))

(assert (=> b!894342 (= c!144838 ((_ is Union!2327) (regOne!5167 r!15766)))))

(declare-fun bm!53073 () Bool)

(assert (=> bm!53073 (= call!53078 call!53076)))

(assert (= (and d!277627 c!144837) b!894337))

(assert (= (and d!277627 (not c!144837)) b!894341))

(assert (= (and b!894341 c!144841) b!894338))

(assert (= (and b!894341 (not c!144841)) b!894339))

(assert (= (and b!894339 c!144840) b!894333))

(assert (= (and b!894339 (not c!144840)) b!894342))

(assert (= (and b!894342 c!144838) b!894335))

(assert (= (and b!894342 (not c!144838)) b!894332))

(assert (= (and b!894332 c!144839) b!894336))

(assert (= (and b!894332 (not c!144839)) b!894334))

(assert (= (or b!894335 b!894336) bm!53073))

(assert (= (or b!894333 bm!53073) bm!53071))

(assert (= (or b!894333 b!894335) bm!53070))

(assert (= (or b!894338 bm!53070) bm!53069))

(assert (= (or b!894337 bm!53069) bm!53072))

(assert (= (and d!277627 res!406527) b!894340))

(declare-fun m!1135337 () Bool)

(assert (=> d!277627 m!1135337))

(declare-fun m!1135339 () Bool)

(assert (=> d!277627 m!1135339))

(declare-fun m!1135341 () Bool)

(assert (=> bm!53071 m!1135341))

(declare-fun m!1135343 () Bool)

(assert (=> bm!53072 m!1135343))

(declare-fun m!1135345 () Bool)

(assert (=> b!894340 m!1135345))

(declare-fun m!1135347 () Bool)

(assert (=> b!894340 m!1135347))

(assert (=> b!894086 d!277627))

(declare-fun b!894343 () Bool)

(declare-fun res!406534 () Bool)

(declare-fun e!585646 () Bool)

(assert (=> b!894343 (=> res!406534 e!585646)))

(assert (=> b!894343 (= res!406534 (not ((_ is ElementMatch!2327) (regTwo!5167 r!15766))))))

(declare-fun e!585650 () Bool)

(assert (=> b!894343 (= e!585650 e!585646)))

(declare-fun b!894344 () Bool)

(declare-fun res!406535 () Bool)

(declare-fun e!585647 () Bool)

(assert (=> b!894344 (=> (not res!406535) (not e!585647))))

(assert (=> b!894344 (= res!406535 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894345 () Bool)

(declare-fun e!585649 () Bool)

(assert (=> b!894345 (= e!585646 e!585649)))

(declare-fun res!406530 () Bool)

(assert (=> b!894345 (=> (not res!406530) (not e!585649))))

(declare-fun lt!333115 () Bool)

(assert (=> b!894345 (= res!406530 (not lt!333115))))

(declare-fun b!894346 () Bool)

(assert (=> b!894346 (= e!585650 (not lt!333115))))

(declare-fun b!894347 () Bool)

(assert (=> b!894347 (= e!585647 (= (head!1578 s!10566) (c!144770 (regTwo!5167 r!15766))))))

(declare-fun b!894348 () Bool)

(declare-fun res!406529 () Bool)

(declare-fun e!585651 () Bool)

(assert (=> b!894348 (=> res!406529 e!585651)))

(assert (=> b!894348 (= res!406529 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277639 () Bool)

(declare-fun e!585652 () Bool)

(assert (=> d!277639 e!585652))

(declare-fun c!144843 () Bool)

(assert (=> d!277639 (= c!144843 ((_ is EmptyExpr!2327) (regTwo!5167 r!15766)))))

(declare-fun e!585648 () Bool)

(assert (=> d!277639 (= lt!333115 e!585648)))

(declare-fun c!144842 () Bool)

(assert (=> d!277639 (= c!144842 (isEmpty!5735 s!10566))))

(assert (=> d!277639 (validRegex!796 (regTwo!5167 r!15766))))

(assert (=> d!277639 (= (matchR!865 (regTwo!5167 r!15766) s!10566) lt!333115)))

(declare-fun b!894349 () Bool)

(assert (=> b!894349 (= e!585648 (matchR!865 (derivativeStep!425 (regTwo!5167 r!15766) (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894350 () Bool)

(assert (=> b!894350 (= e!585651 (not (= (head!1578 s!10566) (c!144770 (regTwo!5167 r!15766)))))))

(declare-fun b!894351 () Bool)

(assert (=> b!894351 (= e!585649 e!585651)))

(declare-fun res!406531 () Bool)

(assert (=> b!894351 (=> res!406531 e!585651)))

(declare-fun call!53079 () Bool)

(assert (=> b!894351 (= res!406531 call!53079)))

(declare-fun b!894352 () Bool)

(declare-fun res!406532 () Bool)

(assert (=> b!894352 (=> (not res!406532) (not e!585647))))

(assert (=> b!894352 (= res!406532 (not call!53079))))

(declare-fun b!894353 () Bool)

(assert (=> b!894353 (= e!585652 (= lt!333115 call!53079))))

(declare-fun b!894354 () Bool)

(assert (=> b!894354 (= e!585648 (nullable!613 (regTwo!5167 r!15766)))))

(declare-fun b!894355 () Bool)

(assert (=> b!894355 (= e!585652 e!585650)))

(declare-fun c!144844 () Bool)

(assert (=> b!894355 (= c!144844 ((_ is EmptyLang!2327) (regTwo!5167 r!15766)))))

(declare-fun b!894356 () Bool)

(declare-fun res!406533 () Bool)

(assert (=> b!894356 (=> res!406533 e!585646)))

(assert (=> b!894356 (= res!406533 e!585647)))

(declare-fun res!406528 () Bool)

(assert (=> b!894356 (=> (not res!406528) (not e!585647))))

(assert (=> b!894356 (= res!406528 lt!333115)))

(declare-fun bm!53074 () Bool)

(assert (=> bm!53074 (= call!53079 (isEmpty!5735 s!10566))))

(assert (= (and d!277639 c!144842) b!894354))

(assert (= (and d!277639 (not c!144842)) b!894349))

(assert (= (and d!277639 c!144843) b!894353))

(assert (= (and d!277639 (not c!144843)) b!894355))

(assert (= (and b!894355 c!144844) b!894346))

(assert (= (and b!894355 (not c!144844)) b!894343))

(assert (= (and b!894343 (not res!406534)) b!894356))

(assert (= (and b!894356 res!406528) b!894352))

(assert (= (and b!894352 res!406532) b!894344))

(assert (= (and b!894344 res!406535) b!894347))

(assert (= (and b!894356 (not res!406533)) b!894345))

(assert (= (and b!894345 res!406530) b!894351))

(assert (= (and b!894351 (not res!406531)) b!894348))

(assert (= (and b!894348 (not res!406529)) b!894350))

(assert (= (or b!894353 b!894352 b!894351) bm!53074))

(declare-fun m!1135353 () Bool)

(assert (=> b!894354 m!1135353))

(assert (=> b!894347 m!1135281))

(assert (=> d!277639 m!1135283))

(declare-fun m!1135355 () Bool)

(assert (=> d!277639 m!1135355))

(assert (=> b!894348 m!1135287))

(assert (=> b!894348 m!1135287))

(assert (=> b!894348 m!1135289))

(assert (=> b!894349 m!1135281))

(assert (=> b!894349 m!1135281))

(declare-fun m!1135357 () Bool)

(assert (=> b!894349 m!1135357))

(assert (=> b!894349 m!1135287))

(assert (=> b!894349 m!1135357))

(assert (=> b!894349 m!1135287))

(declare-fun m!1135359 () Bool)

(assert (=> b!894349 m!1135359))

(assert (=> b!894350 m!1135281))

(assert (=> bm!53074 m!1135283))

(assert (=> b!894344 m!1135287))

(assert (=> b!894344 m!1135287))

(assert (=> b!894344 m!1135289))

(assert (=> b!894091 d!277639))

(declare-fun b!894570 () Bool)

(assert (=> b!894570 true))

(assert (=> b!894570 true))

(declare-fun bs!234884 () Bool)

(declare-fun b!894567 () Bool)

(assert (= bs!234884 (and b!894567 b!894570)))

(declare-fun lambda!27622 () Int)

(declare-fun lambda!27621 () Int)

(assert (=> bs!234884 (not (= lambda!27622 lambda!27621))))

(assert (=> b!894567 true))

(assert (=> b!894567 true))

(declare-fun b!894560 () Bool)

(declare-fun e!585767 () Bool)

(declare-fun e!585768 () Bool)

(assert (=> b!894560 (= e!585767 e!585768)))

(declare-fun res!406621 () Bool)

(assert (=> b!894560 (= res!406621 (matchRSpec!128 (regOne!5167 r!15766) s!10566))))

(assert (=> b!894560 (=> res!406621 e!585768)))

(declare-fun b!894561 () Bool)

(declare-fun c!144887 () Bool)

(assert (=> b!894561 (= c!144887 ((_ is Union!2327) r!15766))))

(declare-fun e!585763 () Bool)

(assert (=> b!894561 (= e!585763 e!585767)))

(declare-fun b!894562 () Bool)

(declare-fun e!585769 () Bool)

(declare-fun e!585765 () Bool)

(assert (=> b!894562 (= e!585769 e!585765)))

(declare-fun res!406620 () Bool)

(assert (=> b!894562 (= res!406620 (not ((_ is EmptyLang!2327) r!15766)))))

(assert (=> b!894562 (=> (not res!406620) (not e!585765))))

(declare-fun b!894563 () Bool)

(declare-fun call!53108 () Bool)

(assert (=> b!894563 (= e!585769 call!53108)))

(declare-fun b!894564 () Bool)

(assert (=> b!894564 (= e!585768 (matchRSpec!128 (regTwo!5167 r!15766) s!10566))))

(declare-fun d!277643 () Bool)

(declare-fun c!144885 () Bool)

(assert (=> d!277643 (= c!144885 ((_ is EmptyExpr!2327) r!15766))))

(assert (=> d!277643 (= (matchRSpec!128 r!15766 s!10566) e!585769)))

(declare-fun b!894565 () Bool)

(declare-fun res!406622 () Bool)

(declare-fun e!585766 () Bool)

(assert (=> b!894565 (=> res!406622 e!585766)))

(assert (=> b!894565 (= res!406622 call!53108)))

(declare-fun e!585764 () Bool)

(assert (=> b!894565 (= e!585764 e!585766)))

(declare-fun b!894566 () Bool)

(assert (=> b!894566 (= e!585767 e!585764)))

(declare-fun c!144886 () Bool)

(assert (=> b!894566 (= c!144886 ((_ is Star!2327) r!15766))))

(declare-fun call!53107 () Bool)

(assert (=> b!894567 (= e!585764 call!53107)))

(declare-fun b!894568 () Bool)

(assert (=> b!894568 (= e!585763 (= s!10566 (Cons!9541 (c!144770 r!15766) Nil!9541)))))

(declare-fun bm!53102 () Bool)

(assert (=> bm!53102 (= call!53108 (isEmpty!5735 s!10566))))

(declare-fun b!894569 () Bool)

(declare-fun c!144888 () Bool)

(assert (=> b!894569 (= c!144888 ((_ is ElementMatch!2327) r!15766))))

(assert (=> b!894569 (= e!585765 e!585763)))

(declare-fun bm!53103 () Bool)

(declare-fun Exists!106 (Int) Bool)

(assert (=> bm!53103 (= call!53107 (Exists!106 (ite c!144886 lambda!27621 lambda!27622)))))

(assert (=> b!894570 (= e!585766 call!53107)))

(assert (= (and d!277643 c!144885) b!894563))

(assert (= (and d!277643 (not c!144885)) b!894562))

(assert (= (and b!894562 res!406620) b!894569))

(assert (= (and b!894569 c!144888) b!894568))

(assert (= (and b!894569 (not c!144888)) b!894561))

(assert (= (and b!894561 c!144887) b!894560))

(assert (= (and b!894561 (not c!144887)) b!894566))

(assert (= (and b!894560 (not res!406621)) b!894564))

(assert (= (and b!894566 c!144886) b!894565))

(assert (= (and b!894566 (not c!144886)) b!894567))

(assert (= (and b!894565 (not res!406622)) b!894570))

(assert (= (or b!894570 b!894567) bm!53103))

(assert (= (or b!894563 b!894565) bm!53102))

(declare-fun m!1135419 () Bool)

(assert (=> b!894560 m!1135419))

(declare-fun m!1135421 () Bool)

(assert (=> b!894564 m!1135421))

(assert (=> bm!53102 m!1135283))

(declare-fun m!1135423 () Bool)

(assert (=> bm!53103 m!1135423))

(assert (=> b!894085 d!277643))

(declare-fun b!894575 () Bool)

(declare-fun res!406629 () Bool)

(declare-fun e!585770 () Bool)

(assert (=> b!894575 (=> res!406629 e!585770)))

(assert (=> b!894575 (= res!406629 (not ((_ is ElementMatch!2327) r!15766)))))

(declare-fun e!585774 () Bool)

(assert (=> b!894575 (= e!585774 e!585770)))

(declare-fun b!894576 () Bool)

(declare-fun res!406630 () Bool)

(declare-fun e!585771 () Bool)

(assert (=> b!894576 (=> (not res!406630) (not e!585771))))

(assert (=> b!894576 (= res!406630 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894577 () Bool)

(declare-fun e!585773 () Bool)

(assert (=> b!894577 (= e!585770 e!585773)))

(declare-fun res!406625 () Bool)

(assert (=> b!894577 (=> (not res!406625) (not e!585773))))

(declare-fun lt!333130 () Bool)

(assert (=> b!894577 (= res!406625 (not lt!333130))))

(declare-fun b!894578 () Bool)

(assert (=> b!894578 (= e!585774 (not lt!333130))))

(declare-fun b!894579 () Bool)

(assert (=> b!894579 (= e!585771 (= (head!1578 s!10566) (c!144770 r!15766)))))

(declare-fun b!894580 () Bool)

(declare-fun res!406624 () Bool)

(declare-fun e!585775 () Bool)

(assert (=> b!894580 (=> res!406624 e!585775)))

(assert (=> b!894580 (= res!406624 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277665 () Bool)

(declare-fun e!585776 () Bool)

(assert (=> d!277665 e!585776))

(declare-fun c!144890 () Bool)

(assert (=> d!277665 (= c!144890 ((_ is EmptyExpr!2327) r!15766))))

(declare-fun e!585772 () Bool)

(assert (=> d!277665 (= lt!333130 e!585772)))

(declare-fun c!144889 () Bool)

(assert (=> d!277665 (= c!144889 (isEmpty!5735 s!10566))))

(assert (=> d!277665 (validRegex!796 r!15766)))

(assert (=> d!277665 (= (matchR!865 r!15766 s!10566) lt!333130)))

(declare-fun b!894581 () Bool)

(assert (=> b!894581 (= e!585772 (matchR!865 (derivativeStep!425 r!15766 (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894582 () Bool)

(assert (=> b!894582 (= e!585775 (not (= (head!1578 s!10566) (c!144770 r!15766))))))

(declare-fun b!894583 () Bool)

(assert (=> b!894583 (= e!585773 e!585775)))

(declare-fun res!406626 () Bool)

(assert (=> b!894583 (=> res!406626 e!585775)))

(declare-fun call!53109 () Bool)

(assert (=> b!894583 (= res!406626 call!53109)))

(declare-fun b!894584 () Bool)

(declare-fun res!406627 () Bool)

(assert (=> b!894584 (=> (not res!406627) (not e!585771))))

(assert (=> b!894584 (= res!406627 (not call!53109))))

(declare-fun b!894585 () Bool)

(assert (=> b!894585 (= e!585776 (= lt!333130 call!53109))))

(declare-fun b!894586 () Bool)

(assert (=> b!894586 (= e!585772 (nullable!613 r!15766))))

(declare-fun b!894587 () Bool)

(assert (=> b!894587 (= e!585776 e!585774)))

(declare-fun c!144891 () Bool)

(assert (=> b!894587 (= c!144891 ((_ is EmptyLang!2327) r!15766))))

(declare-fun b!894588 () Bool)

(declare-fun res!406628 () Bool)

(assert (=> b!894588 (=> res!406628 e!585770)))

(assert (=> b!894588 (= res!406628 e!585771)))

(declare-fun res!406623 () Bool)

(assert (=> b!894588 (=> (not res!406623) (not e!585771))))

(assert (=> b!894588 (= res!406623 lt!333130)))

(declare-fun bm!53104 () Bool)

(assert (=> bm!53104 (= call!53109 (isEmpty!5735 s!10566))))

(assert (= (and d!277665 c!144889) b!894586))

(assert (= (and d!277665 (not c!144889)) b!894581))

(assert (= (and d!277665 c!144890) b!894585))

(assert (= (and d!277665 (not c!144890)) b!894587))

(assert (= (and b!894587 c!144891) b!894578))

(assert (= (and b!894587 (not c!144891)) b!894575))

(assert (= (and b!894575 (not res!406629)) b!894588))

(assert (= (and b!894588 res!406623) b!894584))

(assert (= (and b!894584 res!406627) b!894576))

(assert (= (and b!894576 res!406630) b!894579))

(assert (= (and b!894588 (not res!406628)) b!894577))

(assert (= (and b!894577 res!406625) b!894583))

(assert (= (and b!894583 (not res!406626)) b!894580))

(assert (= (and b!894580 (not res!406624)) b!894582))

(assert (= (or b!894585 b!894584 b!894583) bm!53104))

(declare-fun m!1135425 () Bool)

(assert (=> b!894586 m!1135425))

(assert (=> b!894579 m!1135281))

(assert (=> d!277665 m!1135283))

(assert (=> d!277665 m!1135255))

(assert (=> b!894580 m!1135287))

(assert (=> b!894580 m!1135287))

(assert (=> b!894580 m!1135289))

(assert (=> b!894581 m!1135281))

(assert (=> b!894581 m!1135281))

(declare-fun m!1135427 () Bool)

(assert (=> b!894581 m!1135427))

(assert (=> b!894581 m!1135287))

(assert (=> b!894581 m!1135427))

(assert (=> b!894581 m!1135287))

(declare-fun m!1135429 () Bool)

(assert (=> b!894581 m!1135429))

(assert (=> b!894582 m!1135281))

(assert (=> bm!53104 m!1135283))

(assert (=> b!894576 m!1135287))

(assert (=> b!894576 m!1135287))

(assert (=> b!894576 m!1135289))

(assert (=> b!894085 d!277665))

(declare-fun d!277667 () Bool)

(assert (=> d!277667 (= (matchR!865 r!15766 s!10566) (matchRSpec!128 r!15766 s!10566))))

(declare-fun lt!333133 () Unit!14233)

(declare-fun choose!5360 (Regex!2327 List!9557) Unit!14233)

(assert (=> d!277667 (= lt!333133 (choose!5360 r!15766 s!10566))))

(assert (=> d!277667 (validRegex!796 r!15766)))

(assert (=> d!277667 (= (mainMatchTheorem!128 r!15766 s!10566) lt!333133)))

(declare-fun bs!234885 () Bool)

(assert (= bs!234885 d!277667))

(assert (=> bs!234885 m!1135247))

(assert (=> bs!234885 m!1135245))

(declare-fun m!1135431 () Bool)

(assert (=> bs!234885 m!1135431))

(assert (=> bs!234885 m!1135255))

(assert (=> b!894085 d!277667))

(declare-fun b!894589 () Bool)

(declare-fun res!406637 () Bool)

(declare-fun e!585777 () Bool)

(assert (=> b!894589 (=> res!406637 e!585777)))

(assert (=> b!894589 (= res!406637 (not ((_ is ElementMatch!2327) lt!333081)))))

(declare-fun e!585781 () Bool)

(assert (=> b!894589 (= e!585781 e!585777)))

(declare-fun b!894590 () Bool)

(declare-fun res!406638 () Bool)

(declare-fun e!585778 () Bool)

(assert (=> b!894590 (=> (not res!406638) (not e!585778))))

(assert (=> b!894590 (= res!406638 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894591 () Bool)

(declare-fun e!585780 () Bool)

(assert (=> b!894591 (= e!585777 e!585780)))

(declare-fun res!406633 () Bool)

(assert (=> b!894591 (=> (not res!406633) (not e!585780))))

(declare-fun lt!333134 () Bool)

(assert (=> b!894591 (= res!406633 (not lt!333134))))

(declare-fun b!894592 () Bool)

(assert (=> b!894592 (= e!585781 (not lt!333134))))

(declare-fun b!894593 () Bool)

(assert (=> b!894593 (= e!585778 (= (head!1578 s!10566) (c!144770 lt!333081)))))

(declare-fun b!894594 () Bool)

(declare-fun res!406632 () Bool)

(declare-fun e!585782 () Bool)

(assert (=> b!894594 (=> res!406632 e!585782)))

(assert (=> b!894594 (= res!406632 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277669 () Bool)

(declare-fun e!585783 () Bool)

(assert (=> d!277669 e!585783))

(declare-fun c!144893 () Bool)

(assert (=> d!277669 (= c!144893 ((_ is EmptyExpr!2327) lt!333081))))

(declare-fun e!585779 () Bool)

(assert (=> d!277669 (= lt!333134 e!585779)))

(declare-fun c!144892 () Bool)

(assert (=> d!277669 (= c!144892 (isEmpty!5735 s!10566))))

(assert (=> d!277669 (validRegex!796 lt!333081)))

(assert (=> d!277669 (= (matchR!865 lt!333081 s!10566) lt!333134)))

(declare-fun b!894595 () Bool)

(assert (=> b!894595 (= e!585779 (matchR!865 (derivativeStep!425 lt!333081 (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894596 () Bool)

(assert (=> b!894596 (= e!585782 (not (= (head!1578 s!10566) (c!144770 lt!333081))))))

(declare-fun b!894597 () Bool)

(assert (=> b!894597 (= e!585780 e!585782)))

(declare-fun res!406634 () Bool)

(assert (=> b!894597 (=> res!406634 e!585782)))

(declare-fun call!53110 () Bool)

(assert (=> b!894597 (= res!406634 call!53110)))

(declare-fun b!894598 () Bool)

(declare-fun res!406635 () Bool)

(assert (=> b!894598 (=> (not res!406635) (not e!585778))))

(assert (=> b!894598 (= res!406635 (not call!53110))))

(declare-fun b!894599 () Bool)

(assert (=> b!894599 (= e!585783 (= lt!333134 call!53110))))

(declare-fun b!894600 () Bool)

(assert (=> b!894600 (= e!585779 (nullable!613 lt!333081))))

(declare-fun b!894601 () Bool)

(assert (=> b!894601 (= e!585783 e!585781)))

(declare-fun c!144894 () Bool)

(assert (=> b!894601 (= c!144894 ((_ is EmptyLang!2327) lt!333081))))

(declare-fun b!894602 () Bool)

(declare-fun res!406636 () Bool)

(assert (=> b!894602 (=> res!406636 e!585777)))

(assert (=> b!894602 (= res!406636 e!585778)))

(declare-fun res!406631 () Bool)

(assert (=> b!894602 (=> (not res!406631) (not e!585778))))

(assert (=> b!894602 (= res!406631 lt!333134)))

(declare-fun bm!53105 () Bool)

(assert (=> bm!53105 (= call!53110 (isEmpty!5735 s!10566))))

(assert (= (and d!277669 c!144892) b!894600))

(assert (= (and d!277669 (not c!144892)) b!894595))

(assert (= (and d!277669 c!144893) b!894599))

(assert (= (and d!277669 (not c!144893)) b!894601))

(assert (= (and b!894601 c!144894) b!894592))

(assert (= (and b!894601 (not c!144894)) b!894589))

(assert (= (and b!894589 (not res!406637)) b!894602))

(assert (= (and b!894602 res!406631) b!894598))

(assert (= (and b!894598 res!406635) b!894590))

(assert (= (and b!894590 res!406638) b!894593))

(assert (= (and b!894602 (not res!406636)) b!894591))

(assert (= (and b!894591 res!406633) b!894597))

(assert (= (and b!894597 (not res!406634)) b!894594))

(assert (= (and b!894594 (not res!406632)) b!894596))

(assert (= (or b!894599 b!894598 b!894597) bm!53105))

(declare-fun m!1135433 () Bool)

(assert (=> b!894600 m!1135433))

(assert (=> b!894593 m!1135281))

(assert (=> d!277669 m!1135283))

(assert (=> d!277669 m!1135219))

(assert (=> b!894594 m!1135287))

(assert (=> b!894594 m!1135287))

(assert (=> b!894594 m!1135289))

(assert (=> b!894595 m!1135281))

(assert (=> b!894595 m!1135281))

(declare-fun m!1135435 () Bool)

(assert (=> b!894595 m!1135435))

(assert (=> b!894595 m!1135287))

(assert (=> b!894595 m!1135435))

(assert (=> b!894595 m!1135287))

(declare-fun m!1135437 () Bool)

(assert (=> b!894595 m!1135437))

(assert (=> b!894596 m!1135281))

(assert (=> bm!53105 m!1135283))

(assert (=> b!894590 m!1135287))

(assert (=> b!894590 m!1135287))

(assert (=> b!894590 m!1135289))

(assert (=> b!894090 d!277669))

(assert (=> b!894090 d!277639))

(declare-fun b!894603 () Bool)

(declare-fun c!144897 () Bool)

(assert (=> b!894603 (= c!144897 ((_ is Star!2327) (regTwo!5167 r!15766)))))

(declare-fun e!585785 () Regex!2327)

(declare-fun e!585786 () Regex!2327)

(assert (=> b!894603 (= e!585785 e!585786)))

(declare-fun b!894604 () Bool)

(declare-fun e!585784 () Regex!2327)

(declare-fun call!53114 () Regex!2327)

(declare-fun call!53113 () Regex!2327)

(assert (=> b!894604 (= e!585784 (Concat!4160 call!53114 call!53113))))

(declare-fun b!894605 () Bool)

(assert (=> b!894605 (= e!585786 (regTwo!5167 r!15766))))

(declare-fun bm!53106 () Bool)

(declare-fun call!53111 () Regex!2327)

(declare-fun call!53112 () Regex!2327)

(assert (=> bm!53106 (= call!53111 call!53112)))

(declare-fun b!894606 () Bool)

(declare-fun call!53115 () Regex!2327)

(assert (=> b!894606 (= e!585785 (Union!2327 call!53114 call!53115))))

(declare-fun b!894607 () Bool)

(assert (=> b!894607 (= e!585786 (Star!2327 call!53115))))

(declare-fun b!894608 () Bool)

(declare-fun e!585789 () Regex!2327)

(assert (=> b!894608 (= e!585789 call!53112)))

(declare-fun bm!53107 () Bool)

(assert (=> bm!53107 (= call!53114 call!53111)))

(declare-fun d!277671 () Bool)

(declare-fun e!585788 () Bool)

(assert (=> d!277671 e!585788))

(declare-fun res!406639 () Bool)

(assert (=> d!277671 (=> (not res!406639) (not e!585788))))

(declare-fun lt!333135 () Regex!2327)

(assert (=> d!277671 (= res!406639 (validRegex!796 lt!333135))))

(assert (=> d!277671 (= lt!333135 e!585789)))

(declare-fun c!144895 () Bool)

(assert (=> d!277671 (= c!144895 (and ((_ is Concat!4160) (regTwo!5167 r!15766)) ((_ is EmptyExpr!2327) (regOne!5166 (regTwo!5167 r!15766)))))))

(assert (=> d!277671 (validRegex!796 (regTwo!5167 r!15766))))

(assert (=> d!277671 (= (removeUselessConcat!62 (regTwo!5167 r!15766)) lt!333135)))

(declare-fun b!894609 () Bool)

(declare-fun e!585787 () Regex!2327)

(assert (=> b!894609 (= e!585787 call!53111)))

(declare-fun bm!53108 () Bool)

(declare-fun c!144896 () Bool)

(declare-fun c!144898 () Bool)

(assert (=> bm!53108 (= call!53113 (removeUselessConcat!62 (ite c!144898 (regTwo!5166 (regTwo!5167 r!15766)) (ite c!144896 (regTwo!5167 (regTwo!5167 r!15766)) (reg!2656 (regTwo!5167 r!15766))))))))

(declare-fun c!144899 () Bool)

(declare-fun bm!53109 () Bool)

(assert (=> bm!53109 (= call!53112 (removeUselessConcat!62 (ite c!144895 (regTwo!5166 (regTwo!5167 r!15766)) (ite (or c!144899 c!144898) (regOne!5166 (regTwo!5167 r!15766)) (regOne!5167 (regTwo!5167 r!15766))))))))

(declare-fun b!894610 () Bool)

(assert (=> b!894610 (= c!144898 ((_ is Concat!4160) (regTwo!5167 r!15766)))))

(assert (=> b!894610 (= e!585787 e!585784)))

(declare-fun b!894611 () Bool)

(assert (=> b!894611 (= e!585788 (= (nullable!613 lt!333135) (nullable!613 (regTwo!5167 r!15766))))))

(declare-fun b!894612 () Bool)

(assert (=> b!894612 (= e!585789 e!585787)))

(assert (=> b!894612 (= c!144899 (and ((_ is Concat!4160) (regTwo!5167 r!15766)) ((_ is EmptyExpr!2327) (regTwo!5166 (regTwo!5167 r!15766)))))))

(declare-fun b!894613 () Bool)

(assert (=> b!894613 (= e!585784 e!585785)))

(assert (=> b!894613 (= c!144896 ((_ is Union!2327) (regTwo!5167 r!15766)))))

(declare-fun bm!53110 () Bool)

(assert (=> bm!53110 (= call!53115 call!53113)))

(assert (= (and d!277671 c!144895) b!894608))

(assert (= (and d!277671 (not c!144895)) b!894612))

(assert (= (and b!894612 c!144899) b!894609))

(assert (= (and b!894612 (not c!144899)) b!894610))

(assert (= (and b!894610 c!144898) b!894604))

(assert (= (and b!894610 (not c!144898)) b!894613))

(assert (= (and b!894613 c!144896) b!894606))

(assert (= (and b!894613 (not c!144896)) b!894603))

(assert (= (and b!894603 c!144897) b!894607))

(assert (= (and b!894603 (not c!144897)) b!894605))

(assert (= (or b!894606 b!894607) bm!53110))

(assert (= (or b!894604 bm!53110) bm!53108))

(assert (= (or b!894604 b!894606) bm!53107))

(assert (= (or b!894609 bm!53107) bm!53106))

(assert (= (or b!894608 bm!53106) bm!53109))

(assert (= (and d!277671 res!406639) b!894611))

(declare-fun m!1135439 () Bool)

(assert (=> d!277671 m!1135439))

(assert (=> d!277671 m!1135355))

(declare-fun m!1135441 () Bool)

(assert (=> bm!53108 m!1135441))

(declare-fun m!1135443 () Bool)

(assert (=> bm!53109 m!1135443))

(declare-fun m!1135445 () Bool)

(assert (=> b!894611 m!1135445))

(assert (=> b!894611 m!1135353))

(assert (=> b!894090 d!277671))

(declare-fun d!277673 () Bool)

(assert (=> d!277673 (= (matchR!865 (regTwo!5167 r!15766) s!10566) (matchR!865 (removeUselessConcat!62 (regTwo!5167 r!15766)) s!10566))))

(declare-fun lt!333138 () Unit!14233)

(declare-fun choose!5362 (Regex!2327 List!9557) Unit!14233)

(assert (=> d!277673 (= lt!333138 (choose!5362 (regTwo!5167 r!15766) s!10566))))

(assert (=> d!277673 (validRegex!796 (regTwo!5167 r!15766))))

(assert (=> d!277673 (= (lemmaRemoveUselessConcatSound!56 (regTwo!5167 r!15766) s!10566) lt!333138)))

(declare-fun bs!234886 () Bool)

(assert (= bs!234886 d!277673))

(assert (=> bs!234886 m!1135231))

(declare-fun m!1135447 () Bool)

(assert (=> bs!234886 m!1135447))

(assert (=> bs!234886 m!1135231))

(assert (=> bs!234886 m!1135229))

(assert (=> bs!234886 m!1135355))

(declare-fun m!1135449 () Bool)

(assert (=> bs!234886 m!1135449))

(assert (=> b!894090 d!277673))

(declare-fun b!894615 () Bool)

(declare-fun res!406642 () Bool)

(declare-fun e!585794 () Bool)

(assert (=> b!894615 (=> res!406642 e!585794)))

(assert (=> b!894615 (= res!406642 (not ((_ is Concat!4160) (removeUselessConcat!62 r!15766))))))

(declare-fun e!585796 () Bool)

(assert (=> b!894615 (= e!585796 e!585794)))

(declare-fun bm!53111 () Bool)

(declare-fun call!53116 () Bool)

(declare-fun call!53117 () Bool)

(assert (=> bm!53111 (= call!53116 call!53117)))

(declare-fun b!894616 () Bool)

(declare-fun e!585795 () Bool)

(assert (=> b!894616 (= e!585795 call!53116)))

(declare-fun b!894617 () Bool)

(declare-fun e!585790 () Bool)

(assert (=> b!894617 (= e!585790 e!585796)))

(declare-fun c!144900 () Bool)

(assert (=> b!894617 (= c!144900 ((_ is Union!2327) (removeUselessConcat!62 r!15766)))))

(declare-fun b!894618 () Bool)

(declare-fun e!585793 () Bool)

(assert (=> b!894618 (= e!585793 call!53116)))

(declare-fun b!894619 () Bool)

(assert (=> b!894619 (= e!585794 e!585795)))

(declare-fun res!406641 () Bool)

(assert (=> b!894619 (=> (not res!406641) (not e!585795))))

(declare-fun call!53118 () Bool)

(assert (=> b!894619 (= res!406641 call!53118)))

(declare-fun c!144901 () Bool)

(declare-fun bm!53112 () Bool)

(assert (=> bm!53112 (= call!53117 (validRegex!796 (ite c!144901 (reg!2656 (removeUselessConcat!62 r!15766)) (ite c!144900 (regTwo!5167 (removeUselessConcat!62 r!15766)) (regTwo!5166 (removeUselessConcat!62 r!15766))))))))

(declare-fun b!894620 () Bool)

(declare-fun res!406644 () Bool)

(assert (=> b!894620 (=> (not res!406644) (not e!585793))))

(assert (=> b!894620 (= res!406644 call!53118)))

(assert (=> b!894620 (= e!585796 e!585793)))

(declare-fun b!894614 () Bool)

(declare-fun e!585792 () Bool)

(assert (=> b!894614 (= e!585792 e!585790)))

(assert (=> b!894614 (= c!144901 ((_ is Star!2327) (removeUselessConcat!62 r!15766)))))

(declare-fun d!277675 () Bool)

(declare-fun res!406640 () Bool)

(assert (=> d!277675 (=> res!406640 e!585792)))

(assert (=> d!277675 (= res!406640 ((_ is ElementMatch!2327) (removeUselessConcat!62 r!15766)))))

(assert (=> d!277675 (= (validRegex!796 (removeUselessConcat!62 r!15766)) e!585792)))

(declare-fun bm!53113 () Bool)

(assert (=> bm!53113 (= call!53118 (validRegex!796 (ite c!144900 (regOne!5167 (removeUselessConcat!62 r!15766)) (regOne!5166 (removeUselessConcat!62 r!15766)))))))

(declare-fun b!894621 () Bool)

(declare-fun e!585791 () Bool)

(assert (=> b!894621 (= e!585790 e!585791)))

(declare-fun res!406643 () Bool)

(assert (=> b!894621 (= res!406643 (not (nullable!613 (reg!2656 (removeUselessConcat!62 r!15766)))))))

(assert (=> b!894621 (=> (not res!406643) (not e!585791))))

(declare-fun b!894622 () Bool)

(assert (=> b!894622 (= e!585791 call!53117)))

(assert (= (and d!277675 (not res!406640)) b!894614))

(assert (= (and b!894614 c!144901) b!894621))

(assert (= (and b!894614 (not c!144901)) b!894617))

(assert (= (and b!894621 res!406643) b!894622))

(assert (= (and b!894617 c!144900) b!894620))

(assert (= (and b!894617 (not c!144900)) b!894615))

(assert (= (and b!894620 res!406644) b!894618))

(assert (= (and b!894615 (not res!406642)) b!894619))

(assert (= (and b!894619 res!406641) b!894616))

(assert (= (or b!894618 b!894616) bm!53111))

(assert (= (or b!894620 b!894619) bm!53113))

(assert (= (or b!894622 bm!53111) bm!53112))

(declare-fun m!1135451 () Bool)

(assert (=> bm!53112 m!1135451))

(declare-fun m!1135453 () Bool)

(assert (=> bm!53113 m!1135453))

(declare-fun m!1135455 () Bool)

(assert (=> b!894621 m!1135455))

(assert (=> b!894089 d!277675))

(declare-fun b!894623 () Bool)

(declare-fun c!144904 () Bool)

(assert (=> b!894623 (= c!144904 ((_ is Star!2327) r!15766))))

(declare-fun e!585798 () Regex!2327)

(declare-fun e!585799 () Regex!2327)

(assert (=> b!894623 (= e!585798 e!585799)))

(declare-fun b!894624 () Bool)

(declare-fun e!585797 () Regex!2327)

(declare-fun call!53122 () Regex!2327)

(declare-fun call!53121 () Regex!2327)

(assert (=> b!894624 (= e!585797 (Concat!4160 call!53122 call!53121))))

(declare-fun b!894625 () Bool)

(assert (=> b!894625 (= e!585799 r!15766)))

(declare-fun bm!53114 () Bool)

(declare-fun call!53119 () Regex!2327)

(declare-fun call!53120 () Regex!2327)

(assert (=> bm!53114 (= call!53119 call!53120)))

(declare-fun b!894626 () Bool)

(declare-fun call!53123 () Regex!2327)

(assert (=> b!894626 (= e!585798 (Union!2327 call!53122 call!53123))))

(declare-fun b!894627 () Bool)

(assert (=> b!894627 (= e!585799 (Star!2327 call!53123))))

(declare-fun b!894628 () Bool)

(declare-fun e!585802 () Regex!2327)

(assert (=> b!894628 (= e!585802 call!53120)))

(declare-fun bm!53115 () Bool)

(assert (=> bm!53115 (= call!53122 call!53119)))

(declare-fun d!277677 () Bool)

(declare-fun e!585801 () Bool)

(assert (=> d!277677 e!585801))

(declare-fun res!406645 () Bool)

(assert (=> d!277677 (=> (not res!406645) (not e!585801))))

(declare-fun lt!333139 () Regex!2327)

(assert (=> d!277677 (= res!406645 (validRegex!796 lt!333139))))

(assert (=> d!277677 (= lt!333139 e!585802)))

(declare-fun c!144902 () Bool)

(assert (=> d!277677 (= c!144902 (and ((_ is Concat!4160) r!15766) ((_ is EmptyExpr!2327) (regOne!5166 r!15766))))))

(assert (=> d!277677 (validRegex!796 r!15766)))

(assert (=> d!277677 (= (removeUselessConcat!62 r!15766) lt!333139)))

(declare-fun b!894629 () Bool)

(declare-fun e!585800 () Regex!2327)

(assert (=> b!894629 (= e!585800 call!53119)))

(declare-fun c!144905 () Bool)

(declare-fun c!144903 () Bool)

(declare-fun bm!53116 () Bool)

(assert (=> bm!53116 (= call!53121 (removeUselessConcat!62 (ite c!144905 (regTwo!5166 r!15766) (ite c!144903 (regTwo!5167 r!15766) (reg!2656 r!15766)))))))

(declare-fun bm!53117 () Bool)

(declare-fun c!144906 () Bool)

(assert (=> bm!53117 (= call!53120 (removeUselessConcat!62 (ite c!144902 (regTwo!5166 r!15766) (ite (or c!144906 c!144905) (regOne!5166 r!15766) (regOne!5167 r!15766)))))))

(declare-fun b!894630 () Bool)

(assert (=> b!894630 (= c!144905 ((_ is Concat!4160) r!15766))))

(assert (=> b!894630 (= e!585800 e!585797)))

(declare-fun b!894631 () Bool)

(assert (=> b!894631 (= e!585801 (= (nullable!613 lt!333139) (nullable!613 r!15766)))))

(declare-fun b!894632 () Bool)

(assert (=> b!894632 (= e!585802 e!585800)))

(assert (=> b!894632 (= c!144906 (and ((_ is Concat!4160) r!15766) ((_ is EmptyExpr!2327) (regTwo!5166 r!15766))))))

(declare-fun b!894633 () Bool)

(assert (=> b!894633 (= e!585797 e!585798)))

(assert (=> b!894633 (= c!144903 ((_ is Union!2327) r!15766))))

(declare-fun bm!53118 () Bool)

(assert (=> bm!53118 (= call!53123 call!53121)))

(assert (= (and d!277677 c!144902) b!894628))

(assert (= (and d!277677 (not c!144902)) b!894632))

(assert (= (and b!894632 c!144906) b!894629))

(assert (= (and b!894632 (not c!144906)) b!894630))

(assert (= (and b!894630 c!144905) b!894624))

(assert (= (and b!894630 (not c!144905)) b!894633))

(assert (= (and b!894633 c!144903) b!894626))

(assert (= (and b!894633 (not c!144903)) b!894623))

(assert (= (and b!894623 c!144904) b!894627))

(assert (= (and b!894623 (not c!144904)) b!894625))

(assert (= (or b!894626 b!894627) bm!53118))

(assert (= (or b!894624 bm!53118) bm!53116))

(assert (= (or b!894624 b!894626) bm!53115))

(assert (= (or b!894629 bm!53115) bm!53114))

(assert (= (or b!894628 bm!53114) bm!53117))

(assert (= (and d!277677 res!406645) b!894631))

(declare-fun m!1135457 () Bool)

(assert (=> d!277677 m!1135457))

(assert (=> d!277677 m!1135255))

(declare-fun m!1135459 () Bool)

(assert (=> bm!53116 m!1135459))

(declare-fun m!1135461 () Bool)

(assert (=> bm!53117 m!1135461))

(declare-fun m!1135463 () Bool)

(assert (=> b!894631 m!1135463))

(assert (=> b!894631 m!1135425))

(assert (=> b!894089 d!277677))

(declare-fun b!894634 () Bool)

(declare-fun res!406652 () Bool)

(declare-fun e!585803 () Bool)

(assert (=> b!894634 (=> res!406652 e!585803)))

(assert (=> b!894634 (= res!406652 (not ((_ is ElementMatch!2327) (Union!2327 lt!333085 lt!333081))))))

(declare-fun e!585807 () Bool)

(assert (=> b!894634 (= e!585807 e!585803)))

(declare-fun b!894635 () Bool)

(declare-fun res!406653 () Bool)

(declare-fun e!585804 () Bool)

(assert (=> b!894635 (=> (not res!406653) (not e!585804))))

(assert (=> b!894635 (= res!406653 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894636 () Bool)

(declare-fun e!585806 () Bool)

(assert (=> b!894636 (= e!585803 e!585806)))

(declare-fun res!406648 () Bool)

(assert (=> b!894636 (=> (not res!406648) (not e!585806))))

(declare-fun lt!333140 () Bool)

(assert (=> b!894636 (= res!406648 (not lt!333140))))

(declare-fun b!894637 () Bool)

(assert (=> b!894637 (= e!585807 (not lt!333140))))

(declare-fun b!894638 () Bool)

(assert (=> b!894638 (= e!585804 (= (head!1578 s!10566) (c!144770 (Union!2327 lt!333085 lt!333081))))))

(declare-fun b!894639 () Bool)

(declare-fun res!406647 () Bool)

(declare-fun e!585808 () Bool)

(assert (=> b!894639 (=> res!406647 e!585808)))

(assert (=> b!894639 (= res!406647 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277679 () Bool)

(declare-fun e!585809 () Bool)

(assert (=> d!277679 e!585809))

(declare-fun c!144908 () Bool)

(assert (=> d!277679 (= c!144908 ((_ is EmptyExpr!2327) (Union!2327 lt!333085 lt!333081)))))

(declare-fun e!585805 () Bool)

(assert (=> d!277679 (= lt!333140 e!585805)))

(declare-fun c!144907 () Bool)

(assert (=> d!277679 (= c!144907 (isEmpty!5735 s!10566))))

(assert (=> d!277679 (validRegex!796 (Union!2327 lt!333085 lt!333081))))

(assert (=> d!277679 (= (matchR!865 (Union!2327 lt!333085 lt!333081) s!10566) lt!333140)))

(declare-fun b!894640 () Bool)

(assert (=> b!894640 (= e!585805 (matchR!865 (derivativeStep!425 (Union!2327 lt!333085 lt!333081) (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894641 () Bool)

(assert (=> b!894641 (= e!585808 (not (= (head!1578 s!10566) (c!144770 (Union!2327 lt!333085 lt!333081)))))))

(declare-fun b!894642 () Bool)

(assert (=> b!894642 (= e!585806 e!585808)))

(declare-fun res!406649 () Bool)

(assert (=> b!894642 (=> res!406649 e!585808)))

(declare-fun call!53124 () Bool)

(assert (=> b!894642 (= res!406649 call!53124)))

(declare-fun b!894643 () Bool)

(declare-fun res!406650 () Bool)

(assert (=> b!894643 (=> (not res!406650) (not e!585804))))

(assert (=> b!894643 (= res!406650 (not call!53124))))

(declare-fun b!894644 () Bool)

(assert (=> b!894644 (= e!585809 (= lt!333140 call!53124))))

(declare-fun b!894645 () Bool)

(assert (=> b!894645 (= e!585805 (nullable!613 (Union!2327 lt!333085 lt!333081)))))

(declare-fun b!894646 () Bool)

(assert (=> b!894646 (= e!585809 e!585807)))

(declare-fun c!144909 () Bool)

(assert (=> b!894646 (= c!144909 ((_ is EmptyLang!2327) (Union!2327 lt!333085 lt!333081)))))

(declare-fun b!894647 () Bool)

(declare-fun res!406651 () Bool)

(assert (=> b!894647 (=> res!406651 e!585803)))

(assert (=> b!894647 (= res!406651 e!585804)))

(declare-fun res!406646 () Bool)

(assert (=> b!894647 (=> (not res!406646) (not e!585804))))

(assert (=> b!894647 (= res!406646 lt!333140)))

(declare-fun bm!53119 () Bool)

(assert (=> bm!53119 (= call!53124 (isEmpty!5735 s!10566))))

(assert (= (and d!277679 c!144907) b!894645))

(assert (= (and d!277679 (not c!144907)) b!894640))

(assert (= (and d!277679 c!144908) b!894644))

(assert (= (and d!277679 (not c!144908)) b!894646))

(assert (= (and b!894646 c!144909) b!894637))

(assert (= (and b!894646 (not c!144909)) b!894634))

(assert (= (and b!894634 (not res!406652)) b!894647))

(assert (= (and b!894647 res!406646) b!894643))

(assert (= (and b!894643 res!406650) b!894635))

(assert (= (and b!894635 res!406653) b!894638))

(assert (= (and b!894647 (not res!406651)) b!894636))

(assert (= (and b!894636 res!406648) b!894642))

(assert (= (and b!894642 (not res!406649)) b!894639))

(assert (= (and b!894639 (not res!406647)) b!894641))

(assert (= (or b!894644 b!894643 b!894642) bm!53119))

(declare-fun m!1135465 () Bool)

(assert (=> b!894645 m!1135465))

(assert (=> b!894638 m!1135281))

(assert (=> d!277679 m!1135283))

(declare-fun m!1135467 () Bool)

(assert (=> d!277679 m!1135467))

(assert (=> b!894639 m!1135287))

(assert (=> b!894639 m!1135287))

(assert (=> b!894639 m!1135289))

(assert (=> b!894640 m!1135281))

(assert (=> b!894640 m!1135281))

(declare-fun m!1135469 () Bool)

(assert (=> b!894640 m!1135469))

(assert (=> b!894640 m!1135287))

(assert (=> b!894640 m!1135469))

(assert (=> b!894640 m!1135287))

(declare-fun m!1135471 () Bool)

(assert (=> b!894640 m!1135471))

(assert (=> b!894641 m!1135281))

(assert (=> bm!53119 m!1135283))

(assert (=> b!894635 m!1135287))

(assert (=> b!894635 m!1135287))

(assert (=> b!894635 m!1135289))

(assert (=> b!894089 d!277679))

(declare-fun d!277681 () Bool)

(assert (=> d!277681 (matchR!865 (Union!2327 lt!333085 lt!333081) s!10566)))

(declare-fun lt!333143 () Unit!14233)

(declare-fun choose!5364 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> d!277681 (= lt!333143 (choose!5364 lt!333081 lt!333085 s!10566))))

(declare-fun e!585812 () Bool)

(assert (=> d!277681 e!585812))

(declare-fun res!406656 () Bool)

(assert (=> d!277681 (=> (not res!406656) (not e!585812))))

(assert (=> d!277681 (= res!406656 (validRegex!796 lt!333081))))

(assert (=> d!277681 (= (lemmaReversedUnionAcceptsSameString!4 lt!333081 lt!333085 s!10566) lt!333143)))

(declare-fun b!894650 () Bool)

(assert (=> b!894650 (= e!585812 (validRegex!796 lt!333085))))

(assert (= (and d!277681 res!406656) b!894650))

(assert (=> d!277681 m!1135241))

(declare-fun m!1135473 () Bool)

(assert (=> d!277681 m!1135473))

(assert (=> d!277681 m!1135219))

(assert (=> b!894650 m!1135235))

(assert (=> b!894089 d!277681))

(declare-fun b!894651 () Bool)

(declare-fun res!406663 () Bool)

(declare-fun e!585813 () Bool)

(assert (=> b!894651 (=> res!406663 e!585813)))

(assert (=> b!894651 (= res!406663 (not ((_ is ElementMatch!2327) (regOne!5167 r!15766))))))

(declare-fun e!585817 () Bool)

(assert (=> b!894651 (= e!585817 e!585813)))

(declare-fun b!894652 () Bool)

(declare-fun res!406664 () Bool)

(declare-fun e!585814 () Bool)

(assert (=> b!894652 (=> (not res!406664) (not e!585814))))

(assert (=> b!894652 (= res!406664 (isEmpty!5735 (tail!1140 s!10566)))))

(declare-fun b!894653 () Bool)

(declare-fun e!585816 () Bool)

(assert (=> b!894653 (= e!585813 e!585816)))

(declare-fun res!406659 () Bool)

(assert (=> b!894653 (=> (not res!406659) (not e!585816))))

(declare-fun lt!333144 () Bool)

(assert (=> b!894653 (= res!406659 (not lt!333144))))

(declare-fun b!894654 () Bool)

(assert (=> b!894654 (= e!585817 (not lt!333144))))

(declare-fun b!894655 () Bool)

(assert (=> b!894655 (= e!585814 (= (head!1578 s!10566) (c!144770 (regOne!5167 r!15766))))))

(declare-fun b!894656 () Bool)

(declare-fun res!406658 () Bool)

(declare-fun e!585818 () Bool)

(assert (=> b!894656 (=> res!406658 e!585818)))

(assert (=> b!894656 (= res!406658 (not (isEmpty!5735 (tail!1140 s!10566))))))

(declare-fun d!277683 () Bool)

(declare-fun e!585819 () Bool)

(assert (=> d!277683 e!585819))

(declare-fun c!144911 () Bool)

(assert (=> d!277683 (= c!144911 ((_ is EmptyExpr!2327) (regOne!5167 r!15766)))))

(declare-fun e!585815 () Bool)

(assert (=> d!277683 (= lt!333144 e!585815)))

(declare-fun c!144910 () Bool)

(assert (=> d!277683 (= c!144910 (isEmpty!5735 s!10566))))

(assert (=> d!277683 (validRegex!796 (regOne!5167 r!15766))))

(assert (=> d!277683 (= (matchR!865 (regOne!5167 r!15766) s!10566) lt!333144)))

(declare-fun b!894657 () Bool)

(assert (=> b!894657 (= e!585815 (matchR!865 (derivativeStep!425 (regOne!5167 r!15766) (head!1578 s!10566)) (tail!1140 s!10566)))))

(declare-fun b!894658 () Bool)

(assert (=> b!894658 (= e!585818 (not (= (head!1578 s!10566) (c!144770 (regOne!5167 r!15766)))))))

(declare-fun b!894659 () Bool)

(assert (=> b!894659 (= e!585816 e!585818)))

(declare-fun res!406660 () Bool)

(assert (=> b!894659 (=> res!406660 e!585818)))

(declare-fun call!53125 () Bool)

(assert (=> b!894659 (= res!406660 call!53125)))

(declare-fun b!894660 () Bool)

(declare-fun res!406661 () Bool)

(assert (=> b!894660 (=> (not res!406661) (not e!585814))))

(assert (=> b!894660 (= res!406661 (not call!53125))))

(declare-fun b!894661 () Bool)

(assert (=> b!894661 (= e!585819 (= lt!333144 call!53125))))

(declare-fun b!894662 () Bool)

(assert (=> b!894662 (= e!585815 (nullable!613 (regOne!5167 r!15766)))))

(declare-fun b!894663 () Bool)

(assert (=> b!894663 (= e!585819 e!585817)))

(declare-fun c!144912 () Bool)

(assert (=> b!894663 (= c!144912 ((_ is EmptyLang!2327) (regOne!5167 r!15766)))))

(declare-fun b!894664 () Bool)

(declare-fun res!406662 () Bool)

(assert (=> b!894664 (=> res!406662 e!585813)))

(assert (=> b!894664 (= res!406662 e!585814)))

(declare-fun res!406657 () Bool)

(assert (=> b!894664 (=> (not res!406657) (not e!585814))))

(assert (=> b!894664 (= res!406657 lt!333144)))

(declare-fun bm!53120 () Bool)

(assert (=> bm!53120 (= call!53125 (isEmpty!5735 s!10566))))

(assert (= (and d!277683 c!144910) b!894662))

(assert (= (and d!277683 (not c!144910)) b!894657))

(assert (= (and d!277683 c!144911) b!894661))

(assert (= (and d!277683 (not c!144911)) b!894663))

(assert (= (and b!894663 c!144912) b!894654))

(assert (= (and b!894663 (not c!144912)) b!894651))

(assert (= (and b!894651 (not res!406663)) b!894664))

(assert (= (and b!894664 res!406657) b!894660))

(assert (= (and b!894660 res!406661) b!894652))

(assert (= (and b!894652 res!406664) b!894655))

(assert (= (and b!894664 (not res!406662)) b!894653))

(assert (= (and b!894653 res!406659) b!894659))

(assert (= (and b!894659 (not res!406660)) b!894656))

(assert (= (and b!894656 (not res!406658)) b!894658))

(assert (= (or b!894661 b!894660 b!894659) bm!53120))

(assert (=> b!894662 m!1135347))

(assert (=> b!894655 m!1135281))

(assert (=> d!277683 m!1135283))

(assert (=> d!277683 m!1135339))

(assert (=> b!894656 m!1135287))

(assert (=> b!894656 m!1135287))

(assert (=> b!894656 m!1135289))

(assert (=> b!894657 m!1135281))

(assert (=> b!894657 m!1135281))

(declare-fun m!1135475 () Bool)

(assert (=> b!894657 m!1135475))

(assert (=> b!894657 m!1135287))

(assert (=> b!894657 m!1135475))

(assert (=> b!894657 m!1135287))

(declare-fun m!1135477 () Bool)

(assert (=> b!894657 m!1135477))

(assert (=> b!894658 m!1135281))

(assert (=> bm!53120 m!1135283))

(assert (=> b!894652 m!1135287))

(assert (=> b!894652 m!1135287))

(assert (=> b!894652 m!1135289))

(assert (=> b!894082 d!277683))

(declare-fun d!277685 () Bool)

(declare-fun e!585824 () Bool)

(assert (=> d!277685 e!585824))

(declare-fun res!406669 () Bool)

(assert (=> d!277685 (=> res!406669 e!585824)))

(assert (=> d!277685 (= res!406669 (matchR!865 (regOne!5167 r!15766) s!10566))))

(declare-fun lt!333147 () Unit!14233)

(declare-fun choose!5365 (Regex!2327 Regex!2327 List!9557) Unit!14233)

(assert (=> d!277685 (= lt!333147 (choose!5365 (regOne!5167 r!15766) (regTwo!5167 r!15766) s!10566))))

(declare-fun e!585825 () Bool)

(assert (=> d!277685 e!585825))

(declare-fun res!406670 () Bool)

(assert (=> d!277685 (=> (not res!406670) (not e!585825))))

(assert (=> d!277685 (= res!406670 (validRegex!796 (regOne!5167 r!15766)))))

(assert (=> d!277685 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!38 (regOne!5167 r!15766) (regTwo!5167 r!15766) s!10566) lt!333147)))

(declare-fun b!894669 () Bool)

(assert (=> b!894669 (= e!585825 (validRegex!796 (regTwo!5167 r!15766)))))

(declare-fun b!894670 () Bool)

(assert (=> b!894670 (= e!585824 (matchR!865 (regTwo!5167 r!15766) s!10566))))

(assert (= (and d!277685 res!406670) b!894669))

(assert (= (and d!277685 (not res!406669)) b!894670))

(assert (=> d!277685 m!1135251))

(declare-fun m!1135479 () Bool)

(assert (=> d!277685 m!1135479))

(assert (=> d!277685 m!1135339))

(assert (=> b!894669 m!1135355))

(assert (=> b!894670 m!1135229))

(assert (=> b!894082 d!277685))

(declare-fun b!894672 () Bool)

(declare-fun res!406673 () Bool)

(declare-fun e!585830 () Bool)

(assert (=> b!894672 (=> res!406673 e!585830)))

(assert (=> b!894672 (= res!406673 (not ((_ is Concat!4160) r!15766)))))

(declare-fun e!585832 () Bool)

(assert (=> b!894672 (= e!585832 e!585830)))

(declare-fun bm!53121 () Bool)

(declare-fun call!53126 () Bool)

(declare-fun call!53127 () Bool)

(assert (=> bm!53121 (= call!53126 call!53127)))

(declare-fun b!894673 () Bool)

(declare-fun e!585831 () Bool)

(assert (=> b!894673 (= e!585831 call!53126)))

(declare-fun b!894674 () Bool)

(declare-fun e!585826 () Bool)

(assert (=> b!894674 (= e!585826 e!585832)))

(declare-fun c!144913 () Bool)

(assert (=> b!894674 (= c!144913 ((_ is Union!2327) r!15766))))

(declare-fun b!894675 () Bool)

(declare-fun e!585829 () Bool)

(assert (=> b!894675 (= e!585829 call!53126)))

(declare-fun b!894676 () Bool)

(assert (=> b!894676 (= e!585830 e!585831)))

(declare-fun res!406672 () Bool)

(assert (=> b!894676 (=> (not res!406672) (not e!585831))))

(declare-fun call!53128 () Bool)

(assert (=> b!894676 (= res!406672 call!53128)))

(declare-fun c!144914 () Bool)

(declare-fun bm!53122 () Bool)

(assert (=> bm!53122 (= call!53127 (validRegex!796 (ite c!144914 (reg!2656 r!15766) (ite c!144913 (regTwo!5167 r!15766) (regTwo!5166 r!15766)))))))

(declare-fun b!894677 () Bool)

(declare-fun res!406675 () Bool)

(assert (=> b!894677 (=> (not res!406675) (not e!585829))))

(assert (=> b!894677 (= res!406675 call!53128)))

(assert (=> b!894677 (= e!585832 e!585829)))

(declare-fun b!894671 () Bool)

(declare-fun e!585828 () Bool)

(assert (=> b!894671 (= e!585828 e!585826)))

(assert (=> b!894671 (= c!144914 ((_ is Star!2327) r!15766))))

(declare-fun d!277687 () Bool)

(declare-fun res!406671 () Bool)

(assert (=> d!277687 (=> res!406671 e!585828)))

(assert (=> d!277687 (= res!406671 ((_ is ElementMatch!2327) r!15766))))

(assert (=> d!277687 (= (validRegex!796 r!15766) e!585828)))

(declare-fun bm!53123 () Bool)

(assert (=> bm!53123 (= call!53128 (validRegex!796 (ite c!144913 (regOne!5167 r!15766) (regOne!5166 r!15766))))))

(declare-fun b!894678 () Bool)

(declare-fun e!585827 () Bool)

(assert (=> b!894678 (= e!585826 e!585827)))

(declare-fun res!406674 () Bool)

(assert (=> b!894678 (= res!406674 (not (nullable!613 (reg!2656 r!15766))))))

(assert (=> b!894678 (=> (not res!406674) (not e!585827))))

(declare-fun b!894679 () Bool)

(assert (=> b!894679 (= e!585827 call!53127)))

(assert (= (and d!277687 (not res!406671)) b!894671))

(assert (= (and b!894671 c!144914) b!894678))

(assert (= (and b!894671 (not c!144914)) b!894674))

(assert (= (and b!894678 res!406674) b!894679))

(assert (= (and b!894674 c!144913) b!894677))

(assert (= (and b!894674 (not c!144913)) b!894672))

(assert (= (and b!894677 res!406675) b!894675))

(assert (= (and b!894672 (not res!406673)) b!894676))

(assert (= (and b!894676 res!406672) b!894673))

(assert (= (or b!894675 b!894673) bm!53121))

(assert (= (or b!894677 b!894676) bm!53123))

(assert (= (or b!894679 bm!53121) bm!53122))

(declare-fun m!1135481 () Bool)

(assert (=> bm!53122 m!1135481))

(declare-fun m!1135483 () Bool)

(assert (=> bm!53123 m!1135483))

(declare-fun m!1135485 () Bool)

(assert (=> b!894678 m!1135485))

(assert (=> start!80546 d!277687))

(declare-fun b!894681 () Bool)

(declare-fun res!406678 () Bool)

(declare-fun e!585837 () Bool)

(assert (=> b!894681 (=> res!406678 e!585837)))

(assert (=> b!894681 (= res!406678 (not ((_ is Concat!4160) lt!333085)))))

(declare-fun e!585839 () Bool)

(assert (=> b!894681 (= e!585839 e!585837)))

(declare-fun bm!53124 () Bool)

(declare-fun call!53129 () Bool)

(declare-fun call!53130 () Bool)

(assert (=> bm!53124 (= call!53129 call!53130)))

(declare-fun b!894682 () Bool)

(declare-fun e!585838 () Bool)

(assert (=> b!894682 (= e!585838 call!53129)))

(declare-fun b!894683 () Bool)

(declare-fun e!585833 () Bool)

(assert (=> b!894683 (= e!585833 e!585839)))

(declare-fun c!144915 () Bool)

(assert (=> b!894683 (= c!144915 ((_ is Union!2327) lt!333085))))

(declare-fun b!894684 () Bool)

(declare-fun e!585836 () Bool)

(assert (=> b!894684 (= e!585836 call!53129)))

(declare-fun b!894685 () Bool)

(assert (=> b!894685 (= e!585837 e!585838)))

(declare-fun res!406677 () Bool)

(assert (=> b!894685 (=> (not res!406677) (not e!585838))))

(declare-fun call!53131 () Bool)

(assert (=> b!894685 (= res!406677 call!53131)))

(declare-fun bm!53125 () Bool)

(declare-fun c!144916 () Bool)

(assert (=> bm!53125 (= call!53130 (validRegex!796 (ite c!144916 (reg!2656 lt!333085) (ite c!144915 (regTwo!5167 lt!333085) (regTwo!5166 lt!333085)))))))

(declare-fun b!894686 () Bool)

(declare-fun res!406680 () Bool)

(assert (=> b!894686 (=> (not res!406680) (not e!585836))))

(assert (=> b!894686 (= res!406680 call!53131)))

(assert (=> b!894686 (= e!585839 e!585836)))

(declare-fun b!894680 () Bool)

(declare-fun e!585835 () Bool)

(assert (=> b!894680 (= e!585835 e!585833)))

(assert (=> b!894680 (= c!144916 ((_ is Star!2327) lt!333085))))

(declare-fun d!277689 () Bool)

(declare-fun res!406676 () Bool)

(assert (=> d!277689 (=> res!406676 e!585835)))

(assert (=> d!277689 (= res!406676 ((_ is ElementMatch!2327) lt!333085))))

(assert (=> d!277689 (= (validRegex!796 lt!333085) e!585835)))

(declare-fun bm!53126 () Bool)

(assert (=> bm!53126 (= call!53131 (validRegex!796 (ite c!144915 (regOne!5167 lt!333085) (regOne!5166 lt!333085))))))

(declare-fun b!894687 () Bool)

(declare-fun e!585834 () Bool)

(assert (=> b!894687 (= e!585833 e!585834)))

(declare-fun res!406679 () Bool)

(assert (=> b!894687 (= res!406679 (not (nullable!613 (reg!2656 lt!333085))))))

(assert (=> b!894687 (=> (not res!406679) (not e!585834))))

(declare-fun b!894688 () Bool)

(assert (=> b!894688 (= e!585834 call!53130)))

(assert (= (and d!277689 (not res!406676)) b!894680))

(assert (= (and b!894680 c!144916) b!894687))

(assert (= (and b!894680 (not c!144916)) b!894683))

(assert (= (and b!894687 res!406679) b!894688))

(assert (= (and b!894683 c!144915) b!894686))

(assert (= (and b!894683 (not c!144915)) b!894681))

(assert (= (and b!894686 res!406680) b!894684))

(assert (= (and b!894681 (not res!406678)) b!894685))

(assert (= (and b!894685 res!406677) b!894682))

(assert (= (or b!894684 b!894682) bm!53124))

(assert (= (or b!894686 b!894685) bm!53126))

(assert (= (or b!894688 bm!53124) bm!53125))

(declare-fun m!1135487 () Bool)

(assert (=> bm!53125 m!1135487))

(declare-fun m!1135489 () Bool)

(assert (=> bm!53126 m!1135489))

(declare-fun m!1135491 () Bool)

(assert (=> b!894687 m!1135491))

(assert (=> b!894087 d!277689))

(declare-fun e!585842 () Bool)

(assert (=> b!894084 (= tp!281157 e!585842)))

(declare-fun b!894702 () Bool)

(declare-fun tp!281212 () Bool)

(declare-fun tp!281209 () Bool)

(assert (=> b!894702 (= e!585842 (and tp!281212 tp!281209))))

(declare-fun b!894701 () Bool)

(declare-fun tp!281211 () Bool)

(assert (=> b!894701 (= e!585842 tp!281211)))

(declare-fun b!894700 () Bool)

(declare-fun tp!281213 () Bool)

(declare-fun tp!281210 () Bool)

(assert (=> b!894700 (= e!585842 (and tp!281213 tp!281210))))

(declare-fun b!894699 () Bool)

(assert (=> b!894699 (= e!585842 tp_is_empty!4297)))

(assert (= (and b!894084 ((_ is ElementMatch!2327) (regOne!5166 r!15766))) b!894699))

(assert (= (and b!894084 ((_ is Concat!4160) (regOne!5166 r!15766))) b!894700))

(assert (= (and b!894084 ((_ is Star!2327) (regOne!5166 r!15766))) b!894701))

(assert (= (and b!894084 ((_ is Union!2327) (regOne!5166 r!15766))) b!894702))

(declare-fun e!585843 () Bool)

(assert (=> b!894084 (= tp!281158 e!585843)))

(declare-fun b!894706 () Bool)

(declare-fun tp!281217 () Bool)

(declare-fun tp!281214 () Bool)

(assert (=> b!894706 (= e!585843 (and tp!281217 tp!281214))))

(declare-fun b!894705 () Bool)

(declare-fun tp!281216 () Bool)

(assert (=> b!894705 (= e!585843 tp!281216)))

(declare-fun b!894704 () Bool)

(declare-fun tp!281218 () Bool)

(declare-fun tp!281215 () Bool)

(assert (=> b!894704 (= e!585843 (and tp!281218 tp!281215))))

(declare-fun b!894703 () Bool)

(assert (=> b!894703 (= e!585843 tp_is_empty!4297)))

(assert (= (and b!894084 ((_ is ElementMatch!2327) (regTwo!5166 r!15766))) b!894703))

(assert (= (and b!894084 ((_ is Concat!4160) (regTwo!5166 r!15766))) b!894704))

(assert (= (and b!894084 ((_ is Star!2327) (regTwo!5166 r!15766))) b!894705))

(assert (= (and b!894084 ((_ is Union!2327) (regTwo!5166 r!15766))) b!894706))

(declare-fun e!585844 () Bool)

(assert (=> b!894083 (= tp!281155 e!585844)))

(declare-fun b!894710 () Bool)

(declare-fun tp!281222 () Bool)

(declare-fun tp!281219 () Bool)

(assert (=> b!894710 (= e!585844 (and tp!281222 tp!281219))))

(declare-fun b!894709 () Bool)

(declare-fun tp!281221 () Bool)

(assert (=> b!894709 (= e!585844 tp!281221)))

(declare-fun b!894708 () Bool)

(declare-fun tp!281223 () Bool)

(declare-fun tp!281220 () Bool)

(assert (=> b!894708 (= e!585844 (and tp!281223 tp!281220))))

(declare-fun b!894707 () Bool)

(assert (=> b!894707 (= e!585844 tp_is_empty!4297)))

(assert (= (and b!894083 ((_ is ElementMatch!2327) (regOne!5167 r!15766))) b!894707))

(assert (= (and b!894083 ((_ is Concat!4160) (regOne!5167 r!15766))) b!894708))

(assert (= (and b!894083 ((_ is Star!2327) (regOne!5167 r!15766))) b!894709))

(assert (= (and b!894083 ((_ is Union!2327) (regOne!5167 r!15766))) b!894710))

(declare-fun e!585845 () Bool)

(assert (=> b!894083 (= tp!281156 e!585845)))

(declare-fun b!894714 () Bool)

(declare-fun tp!281227 () Bool)

(declare-fun tp!281224 () Bool)

(assert (=> b!894714 (= e!585845 (and tp!281227 tp!281224))))

(declare-fun b!894713 () Bool)

(declare-fun tp!281226 () Bool)

(assert (=> b!894713 (= e!585845 tp!281226)))

(declare-fun b!894712 () Bool)

(declare-fun tp!281228 () Bool)

(declare-fun tp!281225 () Bool)

(assert (=> b!894712 (= e!585845 (and tp!281228 tp!281225))))

(declare-fun b!894711 () Bool)

(assert (=> b!894711 (= e!585845 tp_is_empty!4297)))

(assert (= (and b!894083 ((_ is ElementMatch!2327) (regTwo!5167 r!15766))) b!894711))

(assert (= (and b!894083 ((_ is Concat!4160) (regTwo!5167 r!15766))) b!894712))

(assert (= (and b!894083 ((_ is Star!2327) (regTwo!5167 r!15766))) b!894713))

(assert (= (and b!894083 ((_ is Union!2327) (regTwo!5167 r!15766))) b!894714))

(declare-fun b!894719 () Bool)

(declare-fun e!585848 () Bool)

(declare-fun tp!281231 () Bool)

(assert (=> b!894719 (= e!585848 (and tp_is_empty!4297 tp!281231))))

(assert (=> b!894088 (= tp!281160 e!585848)))

(assert (= (and b!894088 ((_ is Cons!9541) (t!100603 s!10566))) b!894719))

(declare-fun e!585849 () Bool)

(assert (=> b!894092 (= tp!281159 e!585849)))

(declare-fun b!894723 () Bool)

(declare-fun tp!281235 () Bool)

(declare-fun tp!281232 () Bool)

(assert (=> b!894723 (= e!585849 (and tp!281235 tp!281232))))

(declare-fun b!894722 () Bool)

(declare-fun tp!281234 () Bool)

(assert (=> b!894722 (= e!585849 tp!281234)))

(declare-fun b!894721 () Bool)

(declare-fun tp!281236 () Bool)

(declare-fun tp!281233 () Bool)

(assert (=> b!894721 (= e!585849 (and tp!281236 tp!281233))))

(declare-fun b!894720 () Bool)

(assert (=> b!894720 (= e!585849 tp_is_empty!4297)))

(assert (= (and b!894092 ((_ is ElementMatch!2327) (reg!2656 r!15766))) b!894720))

(assert (= (and b!894092 ((_ is Concat!4160) (reg!2656 r!15766))) b!894721))

(assert (= (and b!894092 ((_ is Star!2327) (reg!2656 r!15766))) b!894722))

(assert (= (and b!894092 ((_ is Union!2327) (reg!2656 r!15766))) b!894723))

(check-sat (not b!894253) (not b!894595) (not bm!53116) (not b!894560) (not b!894344) (not b!894220) (not b!894340) (not b!894590) (not d!277671) (not b!894350) tp_is_empty!4297 (not b!894213) (not b!894705) (not b!894600) (not bm!53103) (not b!894348) (not bm!53122) (not b!894576) (not b!894215) (not b!894652) (not bm!53117) (not bm!53123) (not b!894656) (not b!894621) (not d!277685) (not b!894670) (not b!894580) (not b!894658) (not b!894564) (not b!894655) (not bm!53048) (not d!277679) (not b!894216) (not b!894709) (not bm!53112) (not b!894641) (not bm!53102) (not d!277639) (not b!894662) (not b!894702) (not b!894710) (not bm!53126) (not b!894210) (not b!894650) (not b!894214) (not bm!53105) (not b!894640) (not b!894638) (not b!894714) (not b!894594) (not b!894354) (not b!894657) (not d!277665) (not bm!53074) (not b!894347) (not b!894581) (not b!894631) (not b!894611) (not d!277621) (not b!894687) (not d!277677) (not b!894579) (not d!277669) (not b!894721) (not b!894708) (not bm!53104) (not b!894146) (not b!894712) (not b!894722) (not b!894593) (not bm!53108) (not d!277625) (not bm!53125) (not d!277673) (not b!894645) (not b!894349) (not d!277683) (not b!894704) (not b!894700) (not bm!53119) (not bm!53120) (not b!894596) (not b!894719) (not bm!53029) (not bm!53071) (not b!894586) (not d!277667) (not b!894678) (not bm!53030) (not d!277681) (not b!894701) (not b!894639) (not b!894713) (not bm!53072) (not b!894723) (not d!277627) (not bm!53109) (not b!894582) (not b!894635) (not b!894706) (not bm!53113) (not b!894669))
(check-sat)
