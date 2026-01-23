; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286848 () Bool)

(assert start!286848)

(declare-fun b!2960193 () Bool)

(declare-fun e!1863431 () Bool)

(declare-fun tp!944752 () Bool)

(assert (=> b!2960193 (= e!1863431 tp!944752)))

(declare-fun b!2960194 () Bool)

(declare-fun tp!944750 () Bool)

(declare-fun tp!944748 () Bool)

(assert (=> b!2960194 (= e!1863431 (and tp!944750 tp!944748))))

(declare-fun b!2960195 () Bool)

(declare-fun e!1863432 () Bool)

(declare-fun tp_is_empty!15941 () Bool)

(declare-fun tp!944753 () Bool)

(assert (=> b!2960195 (= e!1863432 (and tp_is_empty!15941 tp!944753))))

(declare-fun res!1221408 () Bool)

(declare-fun e!1863430 () Bool)

(assert (=> start!286848 (=> (not res!1221408) (not e!1863430))))

(declare-datatypes ((C!18564 0))(
  ( (C!18565 (val!11318 Int)) )
))
(declare-datatypes ((Regex!9189 0))(
  ( (ElementMatch!9189 (c!485087 C!18564)) (Concat!14510 (regOne!18890 Regex!9189) (regTwo!18890 Regex!9189)) (EmptyExpr!9189) (Star!9189 (reg!9518 Regex!9189)) (EmptyLang!9189) (Union!9189 (regOne!18891 Regex!9189) (regTwo!18891 Regex!9189)) )
))
(declare-fun r!17423 () Regex!9189)

(declare-fun validRegex!3922 (Regex!9189) Bool)

(assert (=> start!286848 (= res!1221408 (validRegex!3922 r!17423))))

(assert (=> start!286848 e!1863430))

(assert (=> start!286848 e!1863431))

(assert (=> start!286848 e!1863432))

(declare-fun b!2960196 () Bool)

(declare-fun tp!944751 () Bool)

(declare-fun tp!944749 () Bool)

(assert (=> b!2960196 (= e!1863431 (and tp!944751 tp!944749))))

(declare-fun b!2960197 () Bool)

(declare-fun e!1863433 () Bool)

(assert (=> b!2960197 (= e!1863430 (not e!1863433))))

(declare-fun res!1221407 () Bool)

(assert (=> b!2960197 (=> res!1221407 e!1863433)))

(declare-fun lt!1034005 () Bool)

(get-info :version)

(assert (=> b!2960197 (= res!1221407 (or lt!1034005 ((_ is Concat!14510) r!17423) (not ((_ is Union!9189) r!17423))))))

(declare-datatypes ((List!35054 0))(
  ( (Nil!34930) (Cons!34930 (h!40350 C!18564) (t!234119 List!35054)) )
))
(declare-fun s!11993 () List!35054)

(declare-fun matchRSpec!1326 (Regex!9189 List!35054) Bool)

(assert (=> b!2960197 (= lt!1034005 (matchRSpec!1326 r!17423 s!11993))))

(declare-fun matchR!4071 (Regex!9189 List!35054) Bool)

(assert (=> b!2960197 (= lt!1034005 (matchR!4071 r!17423 s!11993))))

(declare-datatypes ((Unit!48757 0))(
  ( (Unit!48758) )
))
(declare-fun lt!1034004 () Unit!48757)

(declare-fun mainMatchTheorem!1326 (Regex!9189 List!35054) Unit!48757)

(assert (=> b!2960197 (= lt!1034004 (mainMatchTheorem!1326 r!17423 s!11993))))

(declare-fun b!2960198 () Bool)

(assert (=> b!2960198 (= e!1863433 (validRegex!3922 (regOne!18891 r!17423)))))

(declare-fun b!2960199 () Bool)

(assert (=> b!2960199 (= e!1863431 tp_is_empty!15941)))

(assert (= (and start!286848 res!1221408) b!2960197))

(assert (= (and b!2960197 (not res!1221407)) b!2960198))

(assert (= (and start!286848 ((_ is ElementMatch!9189) r!17423)) b!2960199))

(assert (= (and start!286848 ((_ is Concat!14510) r!17423)) b!2960196))

(assert (= (and start!286848 ((_ is Star!9189) r!17423)) b!2960193))

(assert (= (and start!286848 ((_ is Union!9189) r!17423)) b!2960194))

(assert (= (and start!286848 ((_ is Cons!34930) s!11993)) b!2960195))

(declare-fun m!3334063 () Bool)

(assert (=> start!286848 m!3334063))

(declare-fun m!3334065 () Bool)

(assert (=> b!2960197 m!3334065))

(declare-fun m!3334067 () Bool)

(assert (=> b!2960197 m!3334067))

(declare-fun m!3334069 () Bool)

(assert (=> b!2960197 m!3334069))

(declare-fun m!3334071 () Bool)

(assert (=> b!2960198 m!3334071))

(check-sat (not b!2960194) (not start!286848) (not b!2960193) (not b!2960196) tp_is_empty!15941 (not b!2960195) (not b!2960197) (not b!2960198))
(check-sat)
(get-model)

(declare-fun b!2960218 () Bool)

(declare-fun e!1863453 () Bool)

(declare-fun e!1863450 () Bool)

(assert (=> b!2960218 (= e!1863453 e!1863450)))

(declare-fun res!1221419 () Bool)

(declare-fun nullable!2932 (Regex!9189) Bool)

(assert (=> b!2960218 (= res!1221419 (not (nullable!2932 (reg!9518 (regOne!18891 r!17423)))))))

(assert (=> b!2960218 (=> (not res!1221419) (not e!1863450))))

(declare-fun b!2960219 () Bool)

(declare-fun res!1221423 () Bool)

(declare-fun e!1863448 () Bool)

(assert (=> b!2960219 (=> res!1221423 e!1863448)))

(assert (=> b!2960219 (= res!1221423 (not ((_ is Concat!14510) (regOne!18891 r!17423))))))

(declare-fun e!1863454 () Bool)

(assert (=> b!2960219 (= e!1863454 e!1863448)))

(declare-fun b!2960220 () Bool)

(declare-fun res!1221422 () Bool)

(declare-fun e!1863449 () Bool)

(assert (=> b!2960220 (=> (not res!1221422) (not e!1863449))))

(declare-fun call!196271 () Bool)

(assert (=> b!2960220 (= res!1221422 call!196271)))

(assert (=> b!2960220 (= e!1863454 e!1863449)))

(declare-fun d!841976 () Bool)

(declare-fun res!1221420 () Bool)

(declare-fun e!1863452 () Bool)

(assert (=> d!841976 (=> res!1221420 e!1863452)))

(assert (=> d!841976 (= res!1221420 ((_ is ElementMatch!9189) (regOne!18891 r!17423)))))

(assert (=> d!841976 (= (validRegex!3922 (regOne!18891 r!17423)) e!1863452)))

(declare-fun b!2960221 () Bool)

(declare-fun call!196269 () Bool)

(assert (=> b!2960221 (= e!1863450 call!196269)))

(declare-fun b!2960222 () Bool)

(assert (=> b!2960222 (= e!1863452 e!1863453)))

(declare-fun c!485093 () Bool)

(assert (=> b!2960222 (= c!485093 ((_ is Star!9189) (regOne!18891 r!17423)))))

(declare-fun b!2960223 () Bool)

(assert (=> b!2960223 (= e!1863453 e!1863454)))

(declare-fun c!485092 () Bool)

(assert (=> b!2960223 (= c!485092 ((_ is Union!9189) (regOne!18891 r!17423)))))

(declare-fun b!2960224 () Bool)

(declare-fun e!1863451 () Bool)

(assert (=> b!2960224 (= e!1863448 e!1863451)))

(declare-fun res!1221421 () Bool)

(assert (=> b!2960224 (=> (not res!1221421) (not e!1863451))))

(declare-fun call!196270 () Bool)

(assert (=> b!2960224 (= res!1221421 call!196270)))

(declare-fun b!2960225 () Bool)

(assert (=> b!2960225 (= e!1863451 call!196271)))

(declare-fun bm!196264 () Bool)

(assert (=> bm!196264 (= call!196269 (validRegex!3922 (ite c!485093 (reg!9518 (regOne!18891 r!17423)) (ite c!485092 (regOne!18891 (regOne!18891 r!17423)) (regTwo!18890 (regOne!18891 r!17423))))))))

(declare-fun b!2960226 () Bool)

(assert (=> b!2960226 (= e!1863449 call!196270)))

(declare-fun bm!196265 () Bool)

(assert (=> bm!196265 (= call!196271 call!196269)))

(declare-fun bm!196266 () Bool)

(assert (=> bm!196266 (= call!196270 (validRegex!3922 (ite c!485092 (regTwo!18891 (regOne!18891 r!17423)) (regOne!18890 (regOne!18891 r!17423)))))))

(assert (= (and d!841976 (not res!1221420)) b!2960222))

(assert (= (and b!2960222 c!485093) b!2960218))

(assert (= (and b!2960222 (not c!485093)) b!2960223))

(assert (= (and b!2960218 res!1221419) b!2960221))

(assert (= (and b!2960223 c!485092) b!2960220))

(assert (= (and b!2960223 (not c!485092)) b!2960219))

(assert (= (and b!2960220 res!1221422) b!2960226))

(assert (= (and b!2960219 (not res!1221423)) b!2960224))

(assert (= (and b!2960224 res!1221421) b!2960225))

(assert (= (or b!2960220 b!2960225) bm!196265))

(assert (= (or b!2960226 b!2960224) bm!196266))

(assert (= (or b!2960221 bm!196265) bm!196264))

(declare-fun m!3334073 () Bool)

(assert (=> b!2960218 m!3334073))

(declare-fun m!3334075 () Bool)

(assert (=> bm!196264 m!3334075))

(declare-fun m!3334077 () Bool)

(assert (=> bm!196266 m!3334077))

(assert (=> b!2960198 d!841976))

(declare-fun b!2960227 () Bool)

(declare-fun e!1863460 () Bool)

(declare-fun e!1863457 () Bool)

(assert (=> b!2960227 (= e!1863460 e!1863457)))

(declare-fun res!1221424 () Bool)

(assert (=> b!2960227 (= res!1221424 (not (nullable!2932 (reg!9518 r!17423))))))

(assert (=> b!2960227 (=> (not res!1221424) (not e!1863457))))

(declare-fun b!2960228 () Bool)

(declare-fun res!1221428 () Bool)

(declare-fun e!1863455 () Bool)

(assert (=> b!2960228 (=> res!1221428 e!1863455)))

(assert (=> b!2960228 (= res!1221428 (not ((_ is Concat!14510) r!17423)))))

(declare-fun e!1863461 () Bool)

(assert (=> b!2960228 (= e!1863461 e!1863455)))

(declare-fun b!2960229 () Bool)

(declare-fun res!1221427 () Bool)

(declare-fun e!1863456 () Bool)

(assert (=> b!2960229 (=> (not res!1221427) (not e!1863456))))

(declare-fun call!196274 () Bool)

(assert (=> b!2960229 (= res!1221427 call!196274)))

(assert (=> b!2960229 (= e!1863461 e!1863456)))

(declare-fun d!841980 () Bool)

(declare-fun res!1221425 () Bool)

(declare-fun e!1863459 () Bool)

(assert (=> d!841980 (=> res!1221425 e!1863459)))

(assert (=> d!841980 (= res!1221425 ((_ is ElementMatch!9189) r!17423))))

(assert (=> d!841980 (= (validRegex!3922 r!17423) e!1863459)))

(declare-fun b!2960230 () Bool)

(declare-fun call!196272 () Bool)

(assert (=> b!2960230 (= e!1863457 call!196272)))

(declare-fun b!2960231 () Bool)

(assert (=> b!2960231 (= e!1863459 e!1863460)))

(declare-fun c!485095 () Bool)

(assert (=> b!2960231 (= c!485095 ((_ is Star!9189) r!17423))))

(declare-fun b!2960232 () Bool)

(assert (=> b!2960232 (= e!1863460 e!1863461)))

(declare-fun c!485094 () Bool)

(assert (=> b!2960232 (= c!485094 ((_ is Union!9189) r!17423))))

(declare-fun b!2960233 () Bool)

(declare-fun e!1863458 () Bool)

(assert (=> b!2960233 (= e!1863455 e!1863458)))

(declare-fun res!1221426 () Bool)

(assert (=> b!2960233 (=> (not res!1221426) (not e!1863458))))

(declare-fun call!196273 () Bool)

(assert (=> b!2960233 (= res!1221426 call!196273)))

(declare-fun b!2960234 () Bool)

(assert (=> b!2960234 (= e!1863458 call!196274)))

(declare-fun bm!196267 () Bool)

(assert (=> bm!196267 (= call!196272 (validRegex!3922 (ite c!485095 (reg!9518 r!17423) (ite c!485094 (regOne!18891 r!17423) (regTwo!18890 r!17423)))))))

(declare-fun b!2960235 () Bool)

(assert (=> b!2960235 (= e!1863456 call!196273)))

(declare-fun bm!196268 () Bool)

(assert (=> bm!196268 (= call!196274 call!196272)))

(declare-fun bm!196269 () Bool)

(assert (=> bm!196269 (= call!196273 (validRegex!3922 (ite c!485094 (regTwo!18891 r!17423) (regOne!18890 r!17423))))))

(assert (= (and d!841980 (not res!1221425)) b!2960231))

(assert (= (and b!2960231 c!485095) b!2960227))

(assert (= (and b!2960231 (not c!485095)) b!2960232))

(assert (= (and b!2960227 res!1221424) b!2960230))

(assert (= (and b!2960232 c!485094) b!2960229))

(assert (= (and b!2960232 (not c!485094)) b!2960228))

(assert (= (and b!2960229 res!1221427) b!2960235))

(assert (= (and b!2960228 (not res!1221428)) b!2960233))

(assert (= (and b!2960233 res!1221426) b!2960234))

(assert (= (or b!2960229 b!2960234) bm!196268))

(assert (= (or b!2960235 b!2960233) bm!196269))

(assert (= (or b!2960230 bm!196268) bm!196267))

(declare-fun m!3334079 () Bool)

(assert (=> b!2960227 m!3334079))

(declare-fun m!3334081 () Bool)

(assert (=> bm!196267 m!3334081))

(declare-fun m!3334083 () Bool)

(assert (=> bm!196269 m!3334083))

(assert (=> start!286848 d!841980))

(declare-fun b!2960298 () Bool)

(assert (=> b!2960298 true))

(assert (=> b!2960298 true))

(declare-fun bs!526327 () Bool)

(declare-fun b!2960296 () Bool)

(assert (= bs!526327 (and b!2960296 b!2960298)))

(declare-fun lambda!110356 () Int)

(declare-fun lambda!110355 () Int)

(assert (=> bs!526327 (not (= lambda!110356 lambda!110355))))

(assert (=> b!2960296 true))

(assert (=> b!2960296 true))

(declare-fun b!2960290 () Bool)

(declare-fun e!1863499 () Bool)

(assert (=> b!2960290 (= e!1863499 (= s!11993 (Cons!34930 (c!485087 r!17423) Nil!34930)))))

(declare-fun b!2960291 () Bool)

(declare-fun c!485112 () Bool)

(assert (=> b!2960291 (= c!485112 ((_ is ElementMatch!9189) r!17423))))

(declare-fun e!1863496 () Bool)

(assert (=> b!2960291 (= e!1863496 e!1863499)))

(declare-fun bm!196274 () Bool)

(declare-fun call!196279 () Bool)

(declare-fun isEmpty!19213 (List!35054) Bool)

(assert (=> bm!196274 (= call!196279 (isEmpty!19213 s!11993))))

(declare-fun b!2960292 () Bool)

(declare-fun e!1863497 () Bool)

(declare-fun e!1863494 () Bool)

(assert (=> b!2960292 (= e!1863497 e!1863494)))

(declare-fun c!485114 () Bool)

(assert (=> b!2960292 (= c!485114 ((_ is Star!9189) r!17423))))

(declare-fun b!2960293 () Bool)

(declare-fun e!1863498 () Bool)

(assert (=> b!2960293 (= e!1863498 e!1863496)))

(declare-fun res!1221453 () Bool)

(assert (=> b!2960293 (= res!1221453 (not ((_ is EmptyLang!9189) r!17423)))))

(assert (=> b!2960293 (=> (not res!1221453) (not e!1863496))))

(declare-fun b!2960294 () Bool)

(declare-fun e!1863500 () Bool)

(assert (=> b!2960294 (= e!1863500 (matchRSpec!1326 (regTwo!18891 r!17423) s!11993))))

(declare-fun call!196280 () Bool)

(declare-fun bm!196275 () Bool)

(declare-fun Exists!1518 (Int) Bool)

(assert (=> bm!196275 (= call!196280 (Exists!1518 (ite c!485114 lambda!110355 lambda!110356)))))

(declare-fun b!2960295 () Bool)

(assert (=> b!2960295 (= e!1863498 call!196279)))

(assert (=> b!2960296 (= e!1863494 call!196280)))

(declare-fun e!1863495 () Bool)

(assert (=> b!2960298 (= e!1863495 call!196280)))

(declare-fun d!841982 () Bool)

(declare-fun c!485113 () Bool)

(assert (=> d!841982 (= c!485113 ((_ is EmptyExpr!9189) r!17423))))

(assert (=> d!841982 (= (matchRSpec!1326 r!17423 s!11993) e!1863498)))

(declare-fun b!2960297 () Bool)

(declare-fun res!1221451 () Bool)

(assert (=> b!2960297 (=> res!1221451 e!1863495)))

(assert (=> b!2960297 (= res!1221451 call!196279)))

(assert (=> b!2960297 (= e!1863494 e!1863495)))

(declare-fun b!2960299 () Bool)

(declare-fun c!485115 () Bool)

(assert (=> b!2960299 (= c!485115 ((_ is Union!9189) r!17423))))

(assert (=> b!2960299 (= e!1863499 e!1863497)))

(declare-fun b!2960300 () Bool)

(assert (=> b!2960300 (= e!1863497 e!1863500)))

(declare-fun res!1221452 () Bool)

(assert (=> b!2960300 (= res!1221452 (matchRSpec!1326 (regOne!18891 r!17423) s!11993))))

(assert (=> b!2960300 (=> res!1221452 e!1863500)))

(assert (= (and d!841982 c!485113) b!2960295))

(assert (= (and d!841982 (not c!485113)) b!2960293))

(assert (= (and b!2960293 res!1221453) b!2960291))

(assert (= (and b!2960291 c!485112) b!2960290))

(assert (= (and b!2960291 (not c!485112)) b!2960299))

(assert (= (and b!2960299 c!485115) b!2960300))

(assert (= (and b!2960299 (not c!485115)) b!2960292))

(assert (= (and b!2960300 (not res!1221452)) b!2960294))

(assert (= (and b!2960292 c!485114) b!2960297))

(assert (= (and b!2960292 (not c!485114)) b!2960296))

(assert (= (and b!2960297 (not res!1221451)) b!2960298))

(assert (= (or b!2960298 b!2960296) bm!196275))

(assert (= (or b!2960295 b!2960297) bm!196274))

(declare-fun m!3334085 () Bool)

(assert (=> bm!196274 m!3334085))

(declare-fun m!3334087 () Bool)

(assert (=> b!2960294 m!3334087))

(declare-fun m!3334089 () Bool)

(assert (=> bm!196275 m!3334089))

(declare-fun m!3334091 () Bool)

(assert (=> b!2960300 m!3334091))

(assert (=> b!2960197 d!841982))

(declare-fun b!2960333 () Bool)

(declare-fun e!1863518 () Bool)

(declare-fun lt!1034008 () Bool)

(assert (=> b!2960333 (= e!1863518 (not lt!1034008))))

(declare-fun b!2960334 () Bool)

(declare-fun e!1863519 () Bool)

(declare-fun derivativeStep!2534 (Regex!9189 C!18564) Regex!9189)

(declare-fun head!6593 (List!35054) C!18564)

(declare-fun tail!4819 (List!35054) List!35054)

(assert (=> b!2960334 (= e!1863519 (matchR!4071 (derivativeStep!2534 r!17423 (head!6593 s!11993)) (tail!4819 s!11993)))))

(declare-fun b!2960335 () Bool)

(declare-fun e!1863521 () Bool)

(declare-fun e!1863517 () Bool)

(assert (=> b!2960335 (= e!1863521 e!1863517)))

(declare-fun res!1221472 () Bool)

(assert (=> b!2960335 (=> (not res!1221472) (not e!1863517))))

(assert (=> b!2960335 (= res!1221472 (not lt!1034008))))

(declare-fun b!2960336 () Bool)

(declare-fun res!1221471 () Bool)

(assert (=> b!2960336 (=> res!1221471 e!1863521)))

(assert (=> b!2960336 (= res!1221471 (not ((_ is ElementMatch!9189) r!17423)))))

(assert (=> b!2960336 (= e!1863518 e!1863521)))

(declare-fun b!2960337 () Bool)

(declare-fun e!1863520 () Bool)

(assert (=> b!2960337 (= e!1863520 (= (head!6593 s!11993) (c!485087 r!17423)))))

(declare-fun bm!196278 () Bool)

(declare-fun call!196283 () Bool)

(assert (=> bm!196278 (= call!196283 (isEmpty!19213 s!11993))))

(declare-fun b!2960338 () Bool)

(declare-fun res!1221474 () Bool)

(declare-fun e!1863515 () Bool)

(assert (=> b!2960338 (=> res!1221474 e!1863515)))

(assert (=> b!2960338 (= res!1221474 (not (isEmpty!19213 (tail!4819 s!11993))))))

(declare-fun b!2960340 () Bool)

(assert (=> b!2960340 (= e!1863519 (nullable!2932 r!17423))))

(declare-fun b!2960341 () Bool)

(declare-fun res!1221470 () Bool)

(assert (=> b!2960341 (=> res!1221470 e!1863521)))

(assert (=> b!2960341 (= res!1221470 e!1863520)))

(declare-fun res!1221475 () Bool)

(assert (=> b!2960341 (=> (not res!1221475) (not e!1863520))))

(assert (=> b!2960341 (= res!1221475 lt!1034008)))

(declare-fun b!2960342 () Bool)

(declare-fun res!1221476 () Bool)

(assert (=> b!2960342 (=> (not res!1221476) (not e!1863520))))

(assert (=> b!2960342 (= res!1221476 (isEmpty!19213 (tail!4819 s!11993)))))

(declare-fun d!841984 () Bool)

(declare-fun e!1863516 () Bool)

(assert (=> d!841984 e!1863516))

(declare-fun c!485122 () Bool)

(assert (=> d!841984 (= c!485122 ((_ is EmptyExpr!9189) r!17423))))

(assert (=> d!841984 (= lt!1034008 e!1863519)))

(declare-fun c!485123 () Bool)

(assert (=> d!841984 (= c!485123 (isEmpty!19213 s!11993))))

(assert (=> d!841984 (validRegex!3922 r!17423)))

(assert (=> d!841984 (= (matchR!4071 r!17423 s!11993) lt!1034008)))

(declare-fun b!2960339 () Bool)

(assert (=> b!2960339 (= e!1863517 e!1863515)))

(declare-fun res!1221473 () Bool)

(assert (=> b!2960339 (=> res!1221473 e!1863515)))

(assert (=> b!2960339 (= res!1221473 call!196283)))

(declare-fun b!2960343 () Bool)

(assert (=> b!2960343 (= e!1863515 (not (= (head!6593 s!11993) (c!485087 r!17423))))))

(declare-fun b!2960344 () Bool)

(declare-fun res!1221477 () Bool)

(assert (=> b!2960344 (=> (not res!1221477) (not e!1863520))))

(assert (=> b!2960344 (= res!1221477 (not call!196283))))

(declare-fun b!2960345 () Bool)

(assert (=> b!2960345 (= e!1863516 e!1863518)))

(declare-fun c!485124 () Bool)

(assert (=> b!2960345 (= c!485124 ((_ is EmptyLang!9189) r!17423))))

(declare-fun b!2960346 () Bool)

(assert (=> b!2960346 (= e!1863516 (= lt!1034008 call!196283))))

(assert (= (and d!841984 c!485123) b!2960340))

(assert (= (and d!841984 (not c!485123)) b!2960334))

(assert (= (and d!841984 c!485122) b!2960346))

(assert (= (and d!841984 (not c!485122)) b!2960345))

(assert (= (and b!2960345 c!485124) b!2960333))

(assert (= (and b!2960345 (not c!485124)) b!2960336))

(assert (= (and b!2960336 (not res!1221471)) b!2960341))

(assert (= (and b!2960341 res!1221475) b!2960344))

(assert (= (and b!2960344 res!1221477) b!2960342))

(assert (= (and b!2960342 res!1221476) b!2960337))

(assert (= (and b!2960341 (not res!1221470)) b!2960335))

(assert (= (and b!2960335 res!1221472) b!2960339))

(assert (= (and b!2960339 (not res!1221473)) b!2960338))

(assert (= (and b!2960338 (not res!1221474)) b!2960343))

(assert (= (or b!2960346 b!2960339 b!2960344) bm!196278))

(declare-fun m!3334093 () Bool)

(assert (=> b!2960334 m!3334093))

(assert (=> b!2960334 m!3334093))

(declare-fun m!3334095 () Bool)

(assert (=> b!2960334 m!3334095))

(declare-fun m!3334097 () Bool)

(assert (=> b!2960334 m!3334097))

(assert (=> b!2960334 m!3334095))

(assert (=> b!2960334 m!3334097))

(declare-fun m!3334099 () Bool)

(assert (=> b!2960334 m!3334099))

(assert (=> b!2960338 m!3334097))

(assert (=> b!2960338 m!3334097))

(declare-fun m!3334101 () Bool)

(assert (=> b!2960338 m!3334101))

(assert (=> b!2960342 m!3334097))

(assert (=> b!2960342 m!3334097))

(assert (=> b!2960342 m!3334101))

(assert (=> bm!196278 m!3334085))

(assert (=> d!841984 m!3334085))

(assert (=> d!841984 m!3334063))

(assert (=> b!2960337 m!3334093))

(declare-fun m!3334103 () Bool)

(assert (=> b!2960340 m!3334103))

(assert (=> b!2960343 m!3334093))

(assert (=> b!2960197 d!841984))

(declare-fun d!841986 () Bool)

(assert (=> d!841986 (= (matchR!4071 r!17423 s!11993) (matchRSpec!1326 r!17423 s!11993))))

(declare-fun lt!1034011 () Unit!48757)

(declare-fun choose!17515 (Regex!9189 List!35054) Unit!48757)

(assert (=> d!841986 (= lt!1034011 (choose!17515 r!17423 s!11993))))

(assert (=> d!841986 (validRegex!3922 r!17423)))

(assert (=> d!841986 (= (mainMatchTheorem!1326 r!17423 s!11993) lt!1034011)))

(declare-fun bs!526328 () Bool)

(assert (= bs!526328 d!841986))

(assert (=> bs!526328 m!3334067))

(assert (=> bs!526328 m!3334065))

(declare-fun m!3334105 () Bool)

(assert (=> bs!526328 m!3334105))

(assert (=> bs!526328 m!3334063))

(assert (=> b!2960197 d!841986))

(declare-fun b!2960358 () Bool)

(declare-fun e!1863524 () Bool)

(declare-fun tp!944764 () Bool)

(declare-fun tp!944768 () Bool)

(assert (=> b!2960358 (= e!1863524 (and tp!944764 tp!944768))))

(declare-fun b!2960360 () Bool)

(declare-fun tp!944767 () Bool)

(declare-fun tp!944765 () Bool)

(assert (=> b!2960360 (= e!1863524 (and tp!944767 tp!944765))))

(declare-fun b!2960357 () Bool)

(assert (=> b!2960357 (= e!1863524 tp_is_empty!15941)))

(assert (=> b!2960193 (= tp!944752 e!1863524)))

(declare-fun b!2960359 () Bool)

(declare-fun tp!944766 () Bool)

(assert (=> b!2960359 (= e!1863524 tp!944766)))

(assert (= (and b!2960193 ((_ is ElementMatch!9189) (reg!9518 r!17423))) b!2960357))

(assert (= (and b!2960193 ((_ is Concat!14510) (reg!9518 r!17423))) b!2960358))

(assert (= (and b!2960193 ((_ is Star!9189) (reg!9518 r!17423))) b!2960359))

(assert (= (and b!2960193 ((_ is Union!9189) (reg!9518 r!17423))) b!2960360))

(declare-fun b!2960362 () Bool)

(declare-fun e!1863525 () Bool)

(declare-fun tp!944769 () Bool)

(declare-fun tp!944773 () Bool)

(assert (=> b!2960362 (= e!1863525 (and tp!944769 tp!944773))))

(declare-fun b!2960364 () Bool)

(declare-fun tp!944772 () Bool)

(declare-fun tp!944770 () Bool)

(assert (=> b!2960364 (= e!1863525 (and tp!944772 tp!944770))))

(declare-fun b!2960361 () Bool)

(assert (=> b!2960361 (= e!1863525 tp_is_empty!15941)))

(assert (=> b!2960194 (= tp!944750 e!1863525)))

(declare-fun b!2960363 () Bool)

(declare-fun tp!944771 () Bool)

(assert (=> b!2960363 (= e!1863525 tp!944771)))

(assert (= (and b!2960194 ((_ is ElementMatch!9189) (regOne!18891 r!17423))) b!2960361))

(assert (= (and b!2960194 ((_ is Concat!14510) (regOne!18891 r!17423))) b!2960362))

(assert (= (and b!2960194 ((_ is Star!9189) (regOne!18891 r!17423))) b!2960363))

(assert (= (and b!2960194 ((_ is Union!9189) (regOne!18891 r!17423))) b!2960364))

(declare-fun b!2960366 () Bool)

(declare-fun e!1863526 () Bool)

(declare-fun tp!944774 () Bool)

(declare-fun tp!944778 () Bool)

(assert (=> b!2960366 (= e!1863526 (and tp!944774 tp!944778))))

(declare-fun b!2960368 () Bool)

(declare-fun tp!944777 () Bool)

(declare-fun tp!944775 () Bool)

(assert (=> b!2960368 (= e!1863526 (and tp!944777 tp!944775))))

(declare-fun b!2960365 () Bool)

(assert (=> b!2960365 (= e!1863526 tp_is_empty!15941)))

(assert (=> b!2960194 (= tp!944748 e!1863526)))

(declare-fun b!2960367 () Bool)

(declare-fun tp!944776 () Bool)

(assert (=> b!2960367 (= e!1863526 tp!944776)))

(assert (= (and b!2960194 ((_ is ElementMatch!9189) (regTwo!18891 r!17423))) b!2960365))

(assert (= (and b!2960194 ((_ is Concat!14510) (regTwo!18891 r!17423))) b!2960366))

(assert (= (and b!2960194 ((_ is Star!9189) (regTwo!18891 r!17423))) b!2960367))

(assert (= (and b!2960194 ((_ is Union!9189) (regTwo!18891 r!17423))) b!2960368))

(declare-fun b!2960370 () Bool)

(declare-fun e!1863527 () Bool)

(declare-fun tp!944779 () Bool)

(declare-fun tp!944783 () Bool)

(assert (=> b!2960370 (= e!1863527 (and tp!944779 tp!944783))))

(declare-fun b!2960372 () Bool)

(declare-fun tp!944782 () Bool)

(declare-fun tp!944780 () Bool)

(assert (=> b!2960372 (= e!1863527 (and tp!944782 tp!944780))))

(declare-fun b!2960369 () Bool)

(assert (=> b!2960369 (= e!1863527 tp_is_empty!15941)))

(assert (=> b!2960196 (= tp!944751 e!1863527)))

(declare-fun b!2960371 () Bool)

(declare-fun tp!944781 () Bool)

(assert (=> b!2960371 (= e!1863527 tp!944781)))

(assert (= (and b!2960196 ((_ is ElementMatch!9189) (regOne!18890 r!17423))) b!2960369))

(assert (= (and b!2960196 ((_ is Concat!14510) (regOne!18890 r!17423))) b!2960370))

(assert (= (and b!2960196 ((_ is Star!9189) (regOne!18890 r!17423))) b!2960371))

(assert (= (and b!2960196 ((_ is Union!9189) (regOne!18890 r!17423))) b!2960372))

(declare-fun b!2960374 () Bool)

(declare-fun e!1863528 () Bool)

(declare-fun tp!944784 () Bool)

(declare-fun tp!944788 () Bool)

(assert (=> b!2960374 (= e!1863528 (and tp!944784 tp!944788))))

(declare-fun b!2960376 () Bool)

(declare-fun tp!944787 () Bool)

(declare-fun tp!944785 () Bool)

(assert (=> b!2960376 (= e!1863528 (and tp!944787 tp!944785))))

(declare-fun b!2960373 () Bool)

(assert (=> b!2960373 (= e!1863528 tp_is_empty!15941)))

(assert (=> b!2960196 (= tp!944749 e!1863528)))

(declare-fun b!2960375 () Bool)

(declare-fun tp!944786 () Bool)

(assert (=> b!2960375 (= e!1863528 tp!944786)))

(assert (= (and b!2960196 ((_ is ElementMatch!9189) (regTwo!18890 r!17423))) b!2960373))

(assert (= (and b!2960196 ((_ is Concat!14510) (regTwo!18890 r!17423))) b!2960374))

(assert (= (and b!2960196 ((_ is Star!9189) (regTwo!18890 r!17423))) b!2960375))

(assert (= (and b!2960196 ((_ is Union!9189) (regTwo!18890 r!17423))) b!2960376))

(declare-fun b!2960381 () Bool)

(declare-fun e!1863531 () Bool)

(declare-fun tp!944791 () Bool)

(assert (=> b!2960381 (= e!1863531 (and tp_is_empty!15941 tp!944791))))

(assert (=> b!2960195 (= tp!944753 e!1863531)))

(assert (= (and b!2960195 ((_ is Cons!34930) (t!234119 s!11993))) b!2960381))

(check-sat (not b!2960367) (not b!2960294) (not b!2960358) (not b!2960359) (not d!841986) (not b!2960300) (not b!2960370) (not bm!196264) (not bm!196267) (not bm!196266) (not b!2960218) (not b!2960368) (not b!2960376) (not b!2960343) (not b!2960334) (not b!2960227) (not b!2960360) (not b!2960337) (not b!2960374) (not b!2960375) (not b!2960340) tp_is_empty!15941 (not bm!196278) (not bm!196269) (not bm!196275) (not b!2960364) (not b!2960338) (not b!2960363) (not b!2960362) (not b!2960371) (not d!841984) (not b!2960372) (not b!2960342) (not bm!196274) (not b!2960366) (not b!2960381))
(check-sat)
