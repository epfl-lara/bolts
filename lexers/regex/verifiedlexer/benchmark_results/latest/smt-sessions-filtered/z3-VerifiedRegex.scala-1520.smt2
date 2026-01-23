; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80254 () Bool)

(assert start!80254)

(declare-fun res!404362 () Bool)

(declare-fun e!582725 () Bool)

(assert (=> start!80254 (=> (not res!404362) (not e!582725))))

(declare-datatypes ((C!5168 0))(
  ( (C!5169 (val!2832 Int)) )
))
(declare-datatypes ((Regex!2299 0))(
  ( (ElementMatch!2299 (c!143828 C!5168)) (Concat!4132 (regOne!5110 Regex!2299) (regTwo!5110 Regex!2299)) (EmptyExpr!2299) (Star!2299 (reg!2628 Regex!2299)) (EmptyLang!2299) (Union!2299 (regOne!5111 Regex!2299) (regTwo!5111 Regex!2299)) )
))
(declare-fun r!15766 () Regex!2299)

(declare-fun validRegex!768 (Regex!2299) Bool)

(assert (=> start!80254 (= res!404362 (validRegex!768 r!15766))))

(assert (=> start!80254 e!582725))

(declare-fun e!582728 () Bool)

(assert (=> start!80254 e!582728))

(declare-fun e!582729 () Bool)

(assert (=> start!80254 e!582729))

(declare-fun b!889157 () Bool)

(declare-fun tp!280046 () Bool)

(declare-fun tp!280048 () Bool)

(assert (=> b!889157 (= e!582728 (and tp!280046 tp!280048))))

(declare-fun b!889158 () Bool)

(declare-fun tp!280047 () Bool)

(assert (=> b!889158 (= e!582728 tp!280047)))

(declare-fun b!889159 () Bool)

(declare-fun e!582724 () Bool)

(assert (=> b!889159 (= e!582725 (not e!582724))))

(declare-fun res!404363 () Bool)

(assert (=> b!889159 (=> res!404363 e!582724)))

(declare-fun lt!332093 () Bool)

(get-info :version)

(assert (=> b!889159 (= res!404363 (or (not lt!332093) (and ((_ is Concat!4132) r!15766) ((_ is EmptyExpr!2299) (regOne!5110 r!15766))) (and ((_ is Concat!4132) r!15766) ((_ is EmptyExpr!2299) (regTwo!5110 r!15766))) ((_ is Concat!4132) r!15766) (not ((_ is Union!2299) r!15766))))))

(declare-datatypes ((List!9529 0))(
  ( (Nil!9513) (Cons!9513 (h!14914 C!5168) (t!100575 List!9529)) )
))
(declare-fun s!10566 () List!9529)

(declare-fun matchRSpec!100 (Regex!2299 List!9529) Bool)

(assert (=> b!889159 (= lt!332093 (matchRSpec!100 r!15766 s!10566))))

(declare-fun matchR!837 (Regex!2299 List!9529) Bool)

(assert (=> b!889159 (= lt!332093 (matchR!837 r!15766 s!10566))))

(declare-datatypes ((Unit!14177 0))(
  ( (Unit!14178) )
))
(declare-fun lt!332089 () Unit!14177)

(declare-fun mainMatchTheorem!100 (Regex!2299 List!9529) Unit!14177)

(assert (=> b!889159 (= lt!332089 (mainMatchTheorem!100 r!15766 s!10566))))

(declare-fun b!889160 () Bool)

(declare-fun tp_is_empty!4241 () Bool)

(declare-fun tp!280044 () Bool)

(assert (=> b!889160 (= e!582729 (and tp_is_empty!4241 tp!280044))))

(declare-fun b!889161 () Bool)

(declare-fun e!582727 () Bool)

(assert (=> b!889161 (= e!582727 (validRegex!768 (regTwo!5111 r!15766)))))

(declare-fun removeUselessConcat!36 (Regex!2299) Regex!2299)

(assert (=> b!889161 (matchR!837 (removeUselessConcat!36 (regOne!5111 r!15766)) s!10566)))

(declare-fun lt!332092 () Unit!14177)

(declare-fun lemmaRemoveUselessConcatSound!30 (Regex!2299 List!9529) Unit!14177)

(assert (=> b!889161 (= lt!332092 (lemmaRemoveUselessConcatSound!30 (regOne!5111 r!15766) s!10566))))

(declare-fun b!889162 () Bool)

(assert (=> b!889162 (= e!582724 e!582727)))

(declare-fun res!404364 () Bool)

(assert (=> b!889162 (=> res!404364 e!582727)))

(declare-fun lt!332091 () Bool)

(assert (=> b!889162 (= res!404364 (not lt!332091))))

(declare-fun e!582726 () Bool)

(assert (=> b!889162 e!582726))

(declare-fun res!404361 () Bool)

(assert (=> b!889162 (=> res!404361 e!582726)))

(assert (=> b!889162 (= res!404361 lt!332091)))

(assert (=> b!889162 (= lt!332091 (matchR!837 (regOne!5111 r!15766) s!10566))))

(declare-fun lt!332090 () Unit!14177)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!10 (Regex!2299 Regex!2299 List!9529) Unit!14177)

(assert (=> b!889162 (= lt!332090 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!10 (regOne!5111 r!15766) (regTwo!5111 r!15766) s!10566))))

(declare-fun b!889163 () Bool)

(declare-fun tp!280045 () Bool)

(declare-fun tp!280043 () Bool)

(assert (=> b!889163 (= e!582728 (and tp!280045 tp!280043))))

(declare-fun b!889164 () Bool)

(assert (=> b!889164 (= e!582728 tp_is_empty!4241)))

(declare-fun b!889165 () Bool)

(assert (=> b!889165 (= e!582726 (matchR!837 (regTwo!5111 r!15766) s!10566))))

(assert (= (and start!80254 res!404362) b!889159))

(assert (= (and b!889159 (not res!404363)) b!889162))

(assert (= (and b!889162 (not res!404361)) b!889165))

(assert (= (and b!889162 (not res!404364)) b!889161))

(assert (= (and start!80254 ((_ is ElementMatch!2299) r!15766)) b!889164))

(assert (= (and start!80254 ((_ is Concat!4132) r!15766)) b!889157))

(assert (= (and start!80254 ((_ is Star!2299) r!15766)) b!889158))

(assert (= (and start!80254 ((_ is Union!2299) r!15766)) b!889163))

(assert (= (and start!80254 ((_ is Cons!9513) s!10566)) b!889160))

(declare-fun m!1133239 () Bool)

(assert (=> b!889159 m!1133239))

(declare-fun m!1133241 () Bool)

(assert (=> b!889159 m!1133241))

(declare-fun m!1133243 () Bool)

(assert (=> b!889159 m!1133243))

(declare-fun m!1133245 () Bool)

(assert (=> b!889161 m!1133245))

(declare-fun m!1133247 () Bool)

(assert (=> b!889161 m!1133247))

(assert (=> b!889161 m!1133247))

(declare-fun m!1133249 () Bool)

(assert (=> b!889161 m!1133249))

(declare-fun m!1133251 () Bool)

(assert (=> b!889161 m!1133251))

(declare-fun m!1133253 () Bool)

(assert (=> start!80254 m!1133253))

(declare-fun m!1133255 () Bool)

(assert (=> b!889165 m!1133255))

(declare-fun m!1133257 () Bool)

(assert (=> b!889162 m!1133257))

(declare-fun m!1133259 () Bool)

(assert (=> b!889162 m!1133259))

(check-sat (not b!889163) (not b!889165) (not b!889158) (not b!889161) (not b!889160) tp_is_empty!4241 (not b!889162) (not start!80254) (not b!889157) (not b!889159))
(check-sat)
(get-model)

(declare-fun b!889324 () Bool)

(assert (=> b!889324 true))

(assert (=> b!889324 true))

(declare-fun bs!234806 () Bool)

(declare-fun b!889331 () Bool)

(assert (= bs!234806 (and b!889331 b!889324)))

(declare-fun lambda!27520 () Int)

(declare-fun lambda!27519 () Int)

(assert (=> bs!234806 (not (= lambda!27520 lambda!27519))))

(assert (=> b!889331 true))

(assert (=> b!889331 true))

(declare-fun d!277201 () Bool)

(declare-fun c!143875 () Bool)

(assert (=> d!277201 (= c!143875 ((_ is EmptyExpr!2299) r!15766))))

(declare-fun e!582822 () Bool)

(assert (=> d!277201 (= (matchRSpec!100 r!15766 s!10566) e!582822)))

(declare-fun b!889322 () Bool)

(declare-fun e!582827 () Bool)

(declare-fun e!582824 () Bool)

(assert (=> b!889322 (= e!582827 e!582824)))

(declare-fun c!143876 () Bool)

(assert (=> b!889322 (= c!143876 ((_ is Star!2299) r!15766))))

(declare-fun b!889323 () Bool)

(declare-fun e!582828 () Bool)

(assert (=> b!889323 (= e!582827 e!582828)))

(declare-fun res!404429 () Bool)

(assert (=> b!889323 (= res!404429 (matchRSpec!100 (regOne!5111 r!15766) s!10566))))

(assert (=> b!889323 (=> res!404429 e!582828)))

(declare-fun e!582823 () Bool)

(declare-fun call!52367 () Bool)

(assert (=> b!889324 (= e!582823 call!52367)))

(declare-fun b!889325 () Bool)

(declare-fun e!582825 () Bool)

(assert (=> b!889325 (= e!582825 (= s!10566 (Cons!9513 (c!143828 r!15766) Nil!9513)))))

(declare-fun bm!52362 () Bool)

(declare-fun call!52368 () Bool)

(declare-fun isEmpty!5718 (List!9529) Bool)

(assert (=> bm!52362 (= call!52368 (isEmpty!5718 s!10566))))

(declare-fun b!889326 () Bool)

(declare-fun e!582826 () Bool)

(assert (=> b!889326 (= e!582822 e!582826)))

(declare-fun res!404430 () Bool)

(assert (=> b!889326 (= res!404430 (not ((_ is EmptyLang!2299) r!15766)))))

(assert (=> b!889326 (=> (not res!404430) (not e!582826))))

(declare-fun b!889327 () Bool)

(declare-fun c!143877 () Bool)

(assert (=> b!889327 (= c!143877 ((_ is ElementMatch!2299) r!15766))))

(assert (=> b!889327 (= e!582826 e!582825)))

(declare-fun b!889328 () Bool)

(assert (=> b!889328 (= e!582822 call!52368)))

(declare-fun b!889329 () Bool)

(assert (=> b!889329 (= e!582828 (matchRSpec!100 (regTwo!5111 r!15766) s!10566))))

(declare-fun bm!52363 () Bool)

(declare-fun Exists!89 (Int) Bool)

(assert (=> bm!52363 (= call!52367 (Exists!89 (ite c!143876 lambda!27519 lambda!27520)))))

(declare-fun b!889330 () Bool)

(declare-fun c!143878 () Bool)

(assert (=> b!889330 (= c!143878 ((_ is Union!2299) r!15766))))

(assert (=> b!889330 (= e!582825 e!582827)))

(assert (=> b!889331 (= e!582824 call!52367)))

(declare-fun b!889332 () Bool)

(declare-fun res!404431 () Bool)

(assert (=> b!889332 (=> res!404431 e!582823)))

(assert (=> b!889332 (= res!404431 call!52368)))

(assert (=> b!889332 (= e!582824 e!582823)))

(assert (= (and d!277201 c!143875) b!889328))

(assert (= (and d!277201 (not c!143875)) b!889326))

(assert (= (and b!889326 res!404430) b!889327))

(assert (= (and b!889327 c!143877) b!889325))

(assert (= (and b!889327 (not c!143877)) b!889330))

(assert (= (and b!889330 c!143878) b!889323))

(assert (= (and b!889330 (not c!143878)) b!889322))

(assert (= (and b!889323 (not res!404429)) b!889329))

(assert (= (and b!889322 c!143876) b!889332))

(assert (= (and b!889322 (not c!143876)) b!889331))

(assert (= (and b!889332 (not res!404431)) b!889324))

(assert (= (or b!889324 b!889331) bm!52363))

(assert (= (or b!889328 b!889332) bm!52362))

(declare-fun m!1133297 () Bool)

(assert (=> b!889323 m!1133297))

(declare-fun m!1133299 () Bool)

(assert (=> bm!52362 m!1133299))

(declare-fun m!1133301 () Bool)

(assert (=> b!889329 m!1133301))

(declare-fun m!1133303 () Bool)

(assert (=> bm!52363 m!1133303))

(assert (=> b!889159 d!277201))

(declare-fun b!889365 () Bool)

(declare-fun res!404455 () Bool)

(declare-fun e!582846 () Bool)

(assert (=> b!889365 (=> res!404455 e!582846)))

(declare-fun e!582843 () Bool)

(assert (=> b!889365 (= res!404455 e!582843)))

(declare-fun res!404453 () Bool)

(assert (=> b!889365 (=> (not res!404453) (not e!582843))))

(declare-fun lt!332105 () Bool)

(assert (=> b!889365 (= res!404453 lt!332105)))

(declare-fun b!889366 () Bool)

(declare-fun res!404452 () Bool)

(assert (=> b!889366 (=> (not res!404452) (not e!582843))))

(declare-fun tail!1123 (List!9529) List!9529)

(assert (=> b!889366 (= res!404452 (isEmpty!5718 (tail!1123 s!10566)))))

(declare-fun b!889367 () Bool)

(declare-fun res!404454 () Bool)

(declare-fun e!582844 () Bool)

(assert (=> b!889367 (=> res!404454 e!582844)))

(assert (=> b!889367 (= res!404454 (not (isEmpty!5718 (tail!1123 s!10566))))))

(declare-fun b!889368 () Bool)

(declare-fun e!582845 () Bool)

(assert (=> b!889368 (= e!582846 e!582845)))

(declare-fun res!404448 () Bool)

(assert (=> b!889368 (=> (not res!404448) (not e!582845))))

(assert (=> b!889368 (= res!404448 (not lt!332105))))

(declare-fun b!889369 () Bool)

(declare-fun res!404450 () Bool)

(assert (=> b!889369 (=> (not res!404450) (not e!582843))))

(declare-fun call!52371 () Bool)

(assert (=> b!889369 (= res!404450 (not call!52371))))

(declare-fun b!889370 () Bool)

(declare-fun head!1561 (List!9529) C!5168)

(assert (=> b!889370 (= e!582844 (not (= (head!1561 s!10566) (c!143828 r!15766))))))

(declare-fun d!277213 () Bool)

(declare-fun e!582849 () Bool)

(assert (=> d!277213 e!582849))

(declare-fun c!143885 () Bool)

(assert (=> d!277213 (= c!143885 ((_ is EmptyExpr!2299) r!15766))))

(declare-fun e!582848 () Bool)

(assert (=> d!277213 (= lt!332105 e!582848)))

(declare-fun c!143886 () Bool)

(assert (=> d!277213 (= c!143886 (isEmpty!5718 s!10566))))

(assert (=> d!277213 (validRegex!768 r!15766)))

(assert (=> d!277213 (= (matchR!837 r!15766 s!10566) lt!332105)))

(declare-fun b!889371 () Bool)

(assert (=> b!889371 (= e!582845 e!582844)))

(declare-fun res!404449 () Bool)

(assert (=> b!889371 (=> res!404449 e!582844)))

(assert (=> b!889371 (= res!404449 call!52371)))

(declare-fun b!889372 () Bool)

(assert (=> b!889372 (= e!582843 (= (head!1561 s!10566) (c!143828 r!15766)))))

(declare-fun b!889373 () Bool)

(declare-fun derivativeStep!408 (Regex!2299 C!5168) Regex!2299)

(assert (=> b!889373 (= e!582848 (matchR!837 (derivativeStep!408 r!15766 (head!1561 s!10566)) (tail!1123 s!10566)))))

(declare-fun b!889374 () Bool)

(declare-fun e!582847 () Bool)

(assert (=> b!889374 (= e!582847 (not lt!332105))))

(declare-fun b!889375 () Bool)

(declare-fun res!404451 () Bool)

(assert (=> b!889375 (=> res!404451 e!582846)))

(assert (=> b!889375 (= res!404451 (not ((_ is ElementMatch!2299) r!15766)))))

(assert (=> b!889375 (= e!582847 e!582846)))

(declare-fun bm!52366 () Bool)

(assert (=> bm!52366 (= call!52371 (isEmpty!5718 s!10566))))

(declare-fun b!889376 () Bool)

(declare-fun nullable!596 (Regex!2299) Bool)

(assert (=> b!889376 (= e!582848 (nullable!596 r!15766))))

(declare-fun b!889377 () Bool)

(assert (=> b!889377 (= e!582849 (= lt!332105 call!52371))))

(declare-fun b!889378 () Bool)

(assert (=> b!889378 (= e!582849 e!582847)))

(declare-fun c!143887 () Bool)

(assert (=> b!889378 (= c!143887 ((_ is EmptyLang!2299) r!15766))))

(assert (= (and d!277213 c!143886) b!889376))

(assert (= (and d!277213 (not c!143886)) b!889373))

(assert (= (and d!277213 c!143885) b!889377))

(assert (= (and d!277213 (not c!143885)) b!889378))

(assert (= (and b!889378 c!143887) b!889374))

(assert (= (and b!889378 (not c!143887)) b!889375))

(assert (= (and b!889375 (not res!404451)) b!889365))

(assert (= (and b!889365 res!404453) b!889369))

(assert (= (and b!889369 res!404450) b!889366))

(assert (= (and b!889366 res!404452) b!889372))

(assert (= (and b!889365 (not res!404455)) b!889368))

(assert (= (and b!889368 res!404448) b!889371))

(assert (= (and b!889371 (not res!404449)) b!889367))

(assert (= (and b!889367 (not res!404454)) b!889370))

(assert (= (or b!889377 b!889369 b!889371) bm!52366))

(assert (=> bm!52366 m!1133299))

(declare-fun m!1133305 () Bool)

(assert (=> b!889372 m!1133305))

(assert (=> d!277213 m!1133299))

(assert (=> d!277213 m!1133253))

(assert (=> b!889373 m!1133305))

(assert (=> b!889373 m!1133305))

(declare-fun m!1133307 () Bool)

(assert (=> b!889373 m!1133307))

(declare-fun m!1133309 () Bool)

(assert (=> b!889373 m!1133309))

(assert (=> b!889373 m!1133307))

(assert (=> b!889373 m!1133309))

(declare-fun m!1133311 () Bool)

(assert (=> b!889373 m!1133311))

(declare-fun m!1133313 () Bool)

(assert (=> b!889376 m!1133313))

(assert (=> b!889366 m!1133309))

(assert (=> b!889366 m!1133309))

(declare-fun m!1133315 () Bool)

(assert (=> b!889366 m!1133315))

(assert (=> b!889370 m!1133305))

(assert (=> b!889367 m!1133309))

(assert (=> b!889367 m!1133309))

(assert (=> b!889367 m!1133315))

(assert (=> b!889159 d!277213))

(declare-fun d!277215 () Bool)

(assert (=> d!277215 (= (matchR!837 r!15766 s!10566) (matchRSpec!100 r!15766 s!10566))))

(declare-fun lt!332108 () Unit!14177)

(declare-fun choose!5307 (Regex!2299 List!9529) Unit!14177)

(assert (=> d!277215 (= lt!332108 (choose!5307 r!15766 s!10566))))

(assert (=> d!277215 (validRegex!768 r!15766)))

(assert (=> d!277215 (= (mainMatchTheorem!100 r!15766 s!10566) lt!332108)))

(declare-fun bs!234807 () Bool)

(assert (= bs!234807 d!277215))

(assert (=> bs!234807 m!1133241))

(assert (=> bs!234807 m!1133239))

(declare-fun m!1133317 () Bool)

(assert (=> bs!234807 m!1133317))

(assert (=> bs!234807 m!1133253))

(assert (=> b!889159 d!277215))

(declare-fun b!889397 () Bool)

(declare-fun e!582864 () Bool)

(declare-fun e!582865 () Bool)

(assert (=> b!889397 (= e!582864 e!582865)))

(declare-fun c!143892 () Bool)

(assert (=> b!889397 (= c!143892 ((_ is Union!2299) r!15766))))

(declare-fun b!889398 () Bool)

(declare-fun res!404466 () Bool)

(declare-fun e!582866 () Bool)

(assert (=> b!889398 (=> (not res!404466) (not e!582866))))

(declare-fun call!52378 () Bool)

(assert (=> b!889398 (= res!404466 call!52378)))

(assert (=> b!889398 (= e!582865 e!582866)))

(declare-fun b!889399 () Bool)

(declare-fun e!582867 () Bool)

(declare-fun call!52379 () Bool)

(assert (=> b!889399 (= e!582867 call!52379)))

(declare-fun bm!52373 () Bool)

(declare-fun c!143893 () Bool)

(assert (=> bm!52373 (= call!52379 (validRegex!768 (ite c!143893 (reg!2628 r!15766) (ite c!143892 (regOne!5111 r!15766) (regOne!5110 r!15766)))))))

(declare-fun b!889400 () Bool)

(declare-fun res!404470 () Bool)

(declare-fun e!582870 () Bool)

(assert (=> b!889400 (=> res!404470 e!582870)))

(assert (=> b!889400 (= res!404470 (not ((_ is Concat!4132) r!15766)))))

(assert (=> b!889400 (= e!582865 e!582870)))

(declare-fun b!889401 () Bool)

(declare-fun e!582869 () Bool)

(declare-fun call!52380 () Bool)

(assert (=> b!889401 (= e!582869 call!52380)))

(declare-fun b!889402 () Bool)

(assert (=> b!889402 (= e!582864 e!582867)))

(declare-fun res!404468 () Bool)

(assert (=> b!889402 (= res!404468 (not (nullable!596 (reg!2628 r!15766))))))

(assert (=> b!889402 (=> (not res!404468) (not e!582867))))

(declare-fun b!889403 () Bool)

(assert (=> b!889403 (= e!582866 call!52380)))

(declare-fun b!889404 () Bool)

(assert (=> b!889404 (= e!582870 e!582869)))

(declare-fun res!404469 () Bool)

(assert (=> b!889404 (=> (not res!404469) (not e!582869))))

(assert (=> b!889404 (= res!404469 call!52378)))

(declare-fun d!277217 () Bool)

(declare-fun res!404467 () Bool)

(declare-fun e!582868 () Bool)

(assert (=> d!277217 (=> res!404467 e!582868)))

(assert (=> d!277217 (= res!404467 ((_ is ElementMatch!2299) r!15766))))

(assert (=> d!277217 (= (validRegex!768 r!15766) e!582868)))

(declare-fun bm!52374 () Bool)

(assert (=> bm!52374 (= call!52380 (validRegex!768 (ite c!143892 (regTwo!5111 r!15766) (regTwo!5110 r!15766))))))

(declare-fun bm!52375 () Bool)

(assert (=> bm!52375 (= call!52378 call!52379)))

(declare-fun b!889405 () Bool)

(assert (=> b!889405 (= e!582868 e!582864)))

(assert (=> b!889405 (= c!143893 ((_ is Star!2299) r!15766))))

(assert (= (and d!277217 (not res!404467)) b!889405))

(assert (= (and b!889405 c!143893) b!889402))

(assert (= (and b!889405 (not c!143893)) b!889397))

(assert (= (and b!889402 res!404468) b!889399))

(assert (= (and b!889397 c!143892) b!889398))

(assert (= (and b!889397 (not c!143892)) b!889400))

(assert (= (and b!889398 res!404466) b!889403))

(assert (= (and b!889400 (not res!404470)) b!889404))

(assert (= (and b!889404 res!404469) b!889401))

(assert (= (or b!889403 b!889401) bm!52374))

(assert (= (or b!889398 b!889404) bm!52375))

(assert (= (or b!889399 bm!52375) bm!52373))

(declare-fun m!1133319 () Bool)

(assert (=> bm!52373 m!1133319))

(declare-fun m!1133321 () Bool)

(assert (=> b!889402 m!1133321))

(declare-fun m!1133323 () Bool)

(assert (=> bm!52374 m!1133323))

(assert (=> start!80254 d!277217))

(declare-fun b!889406 () Bool)

(declare-fun res!404478 () Bool)

(declare-fun e!582874 () Bool)

(assert (=> b!889406 (=> res!404478 e!582874)))

(declare-fun e!582871 () Bool)

(assert (=> b!889406 (= res!404478 e!582871)))

(declare-fun res!404476 () Bool)

(assert (=> b!889406 (=> (not res!404476) (not e!582871))))

(declare-fun lt!332109 () Bool)

(assert (=> b!889406 (= res!404476 lt!332109)))

(declare-fun b!889407 () Bool)

(declare-fun res!404475 () Bool)

(assert (=> b!889407 (=> (not res!404475) (not e!582871))))

(assert (=> b!889407 (= res!404475 (isEmpty!5718 (tail!1123 s!10566)))))

(declare-fun b!889408 () Bool)

(declare-fun res!404477 () Bool)

(declare-fun e!582872 () Bool)

(assert (=> b!889408 (=> res!404477 e!582872)))

(assert (=> b!889408 (= res!404477 (not (isEmpty!5718 (tail!1123 s!10566))))))

(declare-fun b!889409 () Bool)

(declare-fun e!582873 () Bool)

(assert (=> b!889409 (= e!582874 e!582873)))

(declare-fun res!404471 () Bool)

(assert (=> b!889409 (=> (not res!404471) (not e!582873))))

(assert (=> b!889409 (= res!404471 (not lt!332109))))

(declare-fun b!889410 () Bool)

(declare-fun res!404473 () Bool)

(assert (=> b!889410 (=> (not res!404473) (not e!582871))))

(declare-fun call!52381 () Bool)

(assert (=> b!889410 (= res!404473 (not call!52381))))

(declare-fun b!889411 () Bool)

(assert (=> b!889411 (= e!582872 (not (= (head!1561 s!10566) (c!143828 (regTwo!5111 r!15766)))))))

(declare-fun d!277219 () Bool)

(declare-fun e!582877 () Bool)

(assert (=> d!277219 e!582877))

(declare-fun c!143894 () Bool)

(assert (=> d!277219 (= c!143894 ((_ is EmptyExpr!2299) (regTwo!5111 r!15766)))))

(declare-fun e!582876 () Bool)

(assert (=> d!277219 (= lt!332109 e!582876)))

(declare-fun c!143895 () Bool)

(assert (=> d!277219 (= c!143895 (isEmpty!5718 s!10566))))

(assert (=> d!277219 (validRegex!768 (regTwo!5111 r!15766))))

(assert (=> d!277219 (= (matchR!837 (regTwo!5111 r!15766) s!10566) lt!332109)))

(declare-fun b!889412 () Bool)

(assert (=> b!889412 (= e!582873 e!582872)))

(declare-fun res!404472 () Bool)

(assert (=> b!889412 (=> res!404472 e!582872)))

(assert (=> b!889412 (= res!404472 call!52381)))

(declare-fun b!889413 () Bool)

(assert (=> b!889413 (= e!582871 (= (head!1561 s!10566) (c!143828 (regTwo!5111 r!15766))))))

(declare-fun b!889414 () Bool)

(assert (=> b!889414 (= e!582876 (matchR!837 (derivativeStep!408 (regTwo!5111 r!15766) (head!1561 s!10566)) (tail!1123 s!10566)))))

(declare-fun b!889415 () Bool)

(declare-fun e!582875 () Bool)

(assert (=> b!889415 (= e!582875 (not lt!332109))))

(declare-fun b!889416 () Bool)

(declare-fun res!404474 () Bool)

(assert (=> b!889416 (=> res!404474 e!582874)))

(assert (=> b!889416 (= res!404474 (not ((_ is ElementMatch!2299) (regTwo!5111 r!15766))))))

(assert (=> b!889416 (= e!582875 e!582874)))

(declare-fun bm!52376 () Bool)

(assert (=> bm!52376 (= call!52381 (isEmpty!5718 s!10566))))

(declare-fun b!889417 () Bool)

(assert (=> b!889417 (= e!582876 (nullable!596 (regTwo!5111 r!15766)))))

(declare-fun b!889418 () Bool)

(assert (=> b!889418 (= e!582877 (= lt!332109 call!52381))))

(declare-fun b!889419 () Bool)

(assert (=> b!889419 (= e!582877 e!582875)))

(declare-fun c!143896 () Bool)

(assert (=> b!889419 (= c!143896 ((_ is EmptyLang!2299) (regTwo!5111 r!15766)))))

(assert (= (and d!277219 c!143895) b!889417))

(assert (= (and d!277219 (not c!143895)) b!889414))

(assert (= (and d!277219 c!143894) b!889418))

(assert (= (and d!277219 (not c!143894)) b!889419))

(assert (= (and b!889419 c!143896) b!889415))

(assert (= (and b!889419 (not c!143896)) b!889416))

(assert (= (and b!889416 (not res!404474)) b!889406))

(assert (= (and b!889406 res!404476) b!889410))

(assert (= (and b!889410 res!404473) b!889407))

(assert (= (and b!889407 res!404475) b!889413))

(assert (= (and b!889406 (not res!404478)) b!889409))

(assert (= (and b!889409 res!404471) b!889412))

(assert (= (and b!889412 (not res!404472)) b!889408))

(assert (= (and b!889408 (not res!404477)) b!889411))

(assert (= (or b!889418 b!889410 b!889412) bm!52376))

(assert (=> bm!52376 m!1133299))

(assert (=> b!889413 m!1133305))

(assert (=> d!277219 m!1133299))

(assert (=> d!277219 m!1133245))

(assert (=> b!889414 m!1133305))

(assert (=> b!889414 m!1133305))

(declare-fun m!1133325 () Bool)

(assert (=> b!889414 m!1133325))

(assert (=> b!889414 m!1133309))

(assert (=> b!889414 m!1133325))

(assert (=> b!889414 m!1133309))

(declare-fun m!1133327 () Bool)

(assert (=> b!889414 m!1133327))

(declare-fun m!1133329 () Bool)

(assert (=> b!889417 m!1133329))

(assert (=> b!889407 m!1133309))

(assert (=> b!889407 m!1133309))

(assert (=> b!889407 m!1133315))

(assert (=> b!889411 m!1133305))

(assert (=> b!889408 m!1133309))

(assert (=> b!889408 m!1133309))

(assert (=> b!889408 m!1133315))

(assert (=> b!889165 d!277219))

(declare-fun b!889420 () Bool)

(declare-fun res!404486 () Bool)

(declare-fun e!582881 () Bool)

(assert (=> b!889420 (=> res!404486 e!582881)))

(declare-fun e!582878 () Bool)

(assert (=> b!889420 (= res!404486 e!582878)))

(declare-fun res!404484 () Bool)

(assert (=> b!889420 (=> (not res!404484) (not e!582878))))

(declare-fun lt!332110 () Bool)

(assert (=> b!889420 (= res!404484 lt!332110)))

(declare-fun b!889421 () Bool)

(declare-fun res!404483 () Bool)

(assert (=> b!889421 (=> (not res!404483) (not e!582878))))

(assert (=> b!889421 (= res!404483 (isEmpty!5718 (tail!1123 s!10566)))))

(declare-fun b!889422 () Bool)

(declare-fun res!404485 () Bool)

(declare-fun e!582879 () Bool)

(assert (=> b!889422 (=> res!404485 e!582879)))

(assert (=> b!889422 (= res!404485 (not (isEmpty!5718 (tail!1123 s!10566))))))

(declare-fun b!889423 () Bool)

(declare-fun e!582880 () Bool)

(assert (=> b!889423 (= e!582881 e!582880)))

(declare-fun res!404479 () Bool)

(assert (=> b!889423 (=> (not res!404479) (not e!582880))))

(assert (=> b!889423 (= res!404479 (not lt!332110))))

(declare-fun b!889424 () Bool)

(declare-fun res!404481 () Bool)

(assert (=> b!889424 (=> (not res!404481) (not e!582878))))

(declare-fun call!52382 () Bool)

(assert (=> b!889424 (= res!404481 (not call!52382))))

(declare-fun b!889425 () Bool)

(assert (=> b!889425 (= e!582879 (not (= (head!1561 s!10566) (c!143828 (regOne!5111 r!15766)))))))

(declare-fun d!277221 () Bool)

(declare-fun e!582884 () Bool)

(assert (=> d!277221 e!582884))

(declare-fun c!143897 () Bool)

(assert (=> d!277221 (= c!143897 ((_ is EmptyExpr!2299) (regOne!5111 r!15766)))))

(declare-fun e!582883 () Bool)

(assert (=> d!277221 (= lt!332110 e!582883)))

(declare-fun c!143898 () Bool)

(assert (=> d!277221 (= c!143898 (isEmpty!5718 s!10566))))

(assert (=> d!277221 (validRegex!768 (regOne!5111 r!15766))))

(assert (=> d!277221 (= (matchR!837 (regOne!5111 r!15766) s!10566) lt!332110)))

(declare-fun b!889426 () Bool)

(assert (=> b!889426 (= e!582880 e!582879)))

(declare-fun res!404480 () Bool)

(assert (=> b!889426 (=> res!404480 e!582879)))

(assert (=> b!889426 (= res!404480 call!52382)))

(declare-fun b!889427 () Bool)

(assert (=> b!889427 (= e!582878 (= (head!1561 s!10566) (c!143828 (regOne!5111 r!15766))))))

(declare-fun b!889428 () Bool)

(assert (=> b!889428 (= e!582883 (matchR!837 (derivativeStep!408 (regOne!5111 r!15766) (head!1561 s!10566)) (tail!1123 s!10566)))))

(declare-fun b!889429 () Bool)

(declare-fun e!582882 () Bool)

(assert (=> b!889429 (= e!582882 (not lt!332110))))

(declare-fun b!889430 () Bool)

(declare-fun res!404482 () Bool)

(assert (=> b!889430 (=> res!404482 e!582881)))

(assert (=> b!889430 (= res!404482 (not ((_ is ElementMatch!2299) (regOne!5111 r!15766))))))

(assert (=> b!889430 (= e!582882 e!582881)))

(declare-fun bm!52377 () Bool)

(assert (=> bm!52377 (= call!52382 (isEmpty!5718 s!10566))))

(declare-fun b!889431 () Bool)

(assert (=> b!889431 (= e!582883 (nullable!596 (regOne!5111 r!15766)))))

(declare-fun b!889432 () Bool)

(assert (=> b!889432 (= e!582884 (= lt!332110 call!52382))))

(declare-fun b!889433 () Bool)

(assert (=> b!889433 (= e!582884 e!582882)))

(declare-fun c!143899 () Bool)

(assert (=> b!889433 (= c!143899 ((_ is EmptyLang!2299) (regOne!5111 r!15766)))))

(assert (= (and d!277221 c!143898) b!889431))

(assert (= (and d!277221 (not c!143898)) b!889428))

(assert (= (and d!277221 c!143897) b!889432))

(assert (= (and d!277221 (not c!143897)) b!889433))

(assert (= (and b!889433 c!143899) b!889429))

(assert (= (and b!889433 (not c!143899)) b!889430))

(assert (= (and b!889430 (not res!404482)) b!889420))

(assert (= (and b!889420 res!404484) b!889424))

(assert (= (and b!889424 res!404481) b!889421))

(assert (= (and b!889421 res!404483) b!889427))

(assert (= (and b!889420 (not res!404486)) b!889423))

(assert (= (and b!889423 res!404479) b!889426))

(assert (= (and b!889426 (not res!404480)) b!889422))

(assert (= (and b!889422 (not res!404485)) b!889425))

(assert (= (or b!889432 b!889424 b!889426) bm!52377))

(assert (=> bm!52377 m!1133299))

(assert (=> b!889427 m!1133305))

(assert (=> d!277221 m!1133299))

(declare-fun m!1133331 () Bool)

(assert (=> d!277221 m!1133331))

(assert (=> b!889428 m!1133305))

(assert (=> b!889428 m!1133305))

(declare-fun m!1133333 () Bool)

(assert (=> b!889428 m!1133333))

(assert (=> b!889428 m!1133309))

(assert (=> b!889428 m!1133333))

(assert (=> b!889428 m!1133309))

(declare-fun m!1133335 () Bool)

(assert (=> b!889428 m!1133335))

(declare-fun m!1133337 () Bool)

(assert (=> b!889431 m!1133337))

(assert (=> b!889421 m!1133309))

(assert (=> b!889421 m!1133309))

(assert (=> b!889421 m!1133315))

(assert (=> b!889425 m!1133305))

(assert (=> b!889422 m!1133309))

(assert (=> b!889422 m!1133309))

(assert (=> b!889422 m!1133315))

(assert (=> b!889162 d!277221))

(declare-fun d!277223 () Bool)

(declare-fun e!582889 () Bool)

(assert (=> d!277223 e!582889))

(declare-fun res!404491 () Bool)

(assert (=> d!277223 (=> res!404491 e!582889)))

(assert (=> d!277223 (= res!404491 (matchR!837 (regOne!5111 r!15766) s!10566))))

(declare-fun lt!332113 () Unit!14177)

(declare-fun choose!5308 (Regex!2299 Regex!2299 List!9529) Unit!14177)

(assert (=> d!277223 (= lt!332113 (choose!5308 (regOne!5111 r!15766) (regTwo!5111 r!15766) s!10566))))

(declare-fun e!582890 () Bool)

(assert (=> d!277223 e!582890))

(declare-fun res!404492 () Bool)

(assert (=> d!277223 (=> (not res!404492) (not e!582890))))

(assert (=> d!277223 (= res!404492 (validRegex!768 (regOne!5111 r!15766)))))

(assert (=> d!277223 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!10 (regOne!5111 r!15766) (regTwo!5111 r!15766) s!10566) lt!332113)))

(declare-fun b!889438 () Bool)

(assert (=> b!889438 (= e!582890 (validRegex!768 (regTwo!5111 r!15766)))))

(declare-fun b!889439 () Bool)

(assert (=> b!889439 (= e!582889 (matchR!837 (regTwo!5111 r!15766) s!10566))))

(assert (= (and d!277223 res!404492) b!889438))

(assert (= (and d!277223 (not res!404491)) b!889439))

(assert (=> d!277223 m!1133257))

(declare-fun m!1133339 () Bool)

(assert (=> d!277223 m!1133339))

(assert (=> d!277223 m!1133331))

(assert (=> b!889438 m!1133245))

(assert (=> b!889439 m!1133255))

(assert (=> b!889162 d!277223))

(declare-fun b!889440 () Bool)

(declare-fun e!582891 () Bool)

(declare-fun e!582892 () Bool)

(assert (=> b!889440 (= e!582891 e!582892)))

(declare-fun c!143900 () Bool)

(assert (=> b!889440 (= c!143900 ((_ is Union!2299) (regTwo!5111 r!15766)))))

(declare-fun b!889441 () Bool)

(declare-fun res!404493 () Bool)

(declare-fun e!582893 () Bool)

(assert (=> b!889441 (=> (not res!404493) (not e!582893))))

(declare-fun call!52383 () Bool)

(assert (=> b!889441 (= res!404493 call!52383)))

(assert (=> b!889441 (= e!582892 e!582893)))

(declare-fun b!889442 () Bool)

(declare-fun e!582894 () Bool)

(declare-fun call!52384 () Bool)

(assert (=> b!889442 (= e!582894 call!52384)))

(declare-fun bm!52378 () Bool)

(declare-fun c!143901 () Bool)

(assert (=> bm!52378 (= call!52384 (validRegex!768 (ite c!143901 (reg!2628 (regTwo!5111 r!15766)) (ite c!143900 (regOne!5111 (regTwo!5111 r!15766)) (regOne!5110 (regTwo!5111 r!15766))))))))

(declare-fun b!889443 () Bool)

(declare-fun res!404497 () Bool)

(declare-fun e!582897 () Bool)

(assert (=> b!889443 (=> res!404497 e!582897)))

(assert (=> b!889443 (= res!404497 (not ((_ is Concat!4132) (regTwo!5111 r!15766))))))

(assert (=> b!889443 (= e!582892 e!582897)))

(declare-fun b!889444 () Bool)

(declare-fun e!582896 () Bool)

(declare-fun call!52385 () Bool)

(assert (=> b!889444 (= e!582896 call!52385)))

(declare-fun b!889445 () Bool)

(assert (=> b!889445 (= e!582891 e!582894)))

(declare-fun res!404495 () Bool)

(assert (=> b!889445 (= res!404495 (not (nullable!596 (reg!2628 (regTwo!5111 r!15766)))))))

(assert (=> b!889445 (=> (not res!404495) (not e!582894))))

(declare-fun b!889446 () Bool)

(assert (=> b!889446 (= e!582893 call!52385)))

(declare-fun b!889447 () Bool)

(assert (=> b!889447 (= e!582897 e!582896)))

(declare-fun res!404496 () Bool)

(assert (=> b!889447 (=> (not res!404496) (not e!582896))))

(assert (=> b!889447 (= res!404496 call!52383)))

(declare-fun d!277225 () Bool)

(declare-fun res!404494 () Bool)

(declare-fun e!582895 () Bool)

(assert (=> d!277225 (=> res!404494 e!582895)))

(assert (=> d!277225 (= res!404494 ((_ is ElementMatch!2299) (regTwo!5111 r!15766)))))

(assert (=> d!277225 (= (validRegex!768 (regTwo!5111 r!15766)) e!582895)))

(declare-fun bm!52379 () Bool)

(assert (=> bm!52379 (= call!52385 (validRegex!768 (ite c!143900 (regTwo!5111 (regTwo!5111 r!15766)) (regTwo!5110 (regTwo!5111 r!15766)))))))

(declare-fun bm!52380 () Bool)

(assert (=> bm!52380 (= call!52383 call!52384)))

(declare-fun b!889448 () Bool)

(assert (=> b!889448 (= e!582895 e!582891)))

(assert (=> b!889448 (= c!143901 ((_ is Star!2299) (regTwo!5111 r!15766)))))

(assert (= (and d!277225 (not res!404494)) b!889448))

(assert (= (and b!889448 c!143901) b!889445))

(assert (= (and b!889448 (not c!143901)) b!889440))

(assert (= (and b!889445 res!404495) b!889442))

(assert (= (and b!889440 c!143900) b!889441))

(assert (= (and b!889440 (not c!143900)) b!889443))

(assert (= (and b!889441 res!404493) b!889446))

(assert (= (and b!889443 (not res!404497)) b!889447))

(assert (= (and b!889447 res!404496) b!889444))

(assert (= (or b!889446 b!889444) bm!52379))

(assert (= (or b!889441 b!889447) bm!52380))

(assert (= (or b!889442 bm!52380) bm!52378))

(declare-fun m!1133341 () Bool)

(assert (=> bm!52378 m!1133341))

(declare-fun m!1133343 () Bool)

(assert (=> b!889445 m!1133343))

(declare-fun m!1133345 () Bool)

(assert (=> bm!52379 m!1133345))

(assert (=> b!889161 d!277225))

(declare-fun b!889449 () Bool)

(declare-fun res!404505 () Bool)

(declare-fun e!582901 () Bool)

(assert (=> b!889449 (=> res!404505 e!582901)))

(declare-fun e!582898 () Bool)

(assert (=> b!889449 (= res!404505 e!582898)))

(declare-fun res!404503 () Bool)

(assert (=> b!889449 (=> (not res!404503) (not e!582898))))

(declare-fun lt!332114 () Bool)

(assert (=> b!889449 (= res!404503 lt!332114)))

(declare-fun b!889450 () Bool)

(declare-fun res!404502 () Bool)

(assert (=> b!889450 (=> (not res!404502) (not e!582898))))

(assert (=> b!889450 (= res!404502 (isEmpty!5718 (tail!1123 s!10566)))))

(declare-fun b!889451 () Bool)

(declare-fun res!404504 () Bool)

(declare-fun e!582899 () Bool)

(assert (=> b!889451 (=> res!404504 e!582899)))

(assert (=> b!889451 (= res!404504 (not (isEmpty!5718 (tail!1123 s!10566))))))

(declare-fun b!889452 () Bool)

(declare-fun e!582900 () Bool)

(assert (=> b!889452 (= e!582901 e!582900)))

(declare-fun res!404498 () Bool)

(assert (=> b!889452 (=> (not res!404498) (not e!582900))))

(assert (=> b!889452 (= res!404498 (not lt!332114))))

(declare-fun b!889453 () Bool)

(declare-fun res!404500 () Bool)

(assert (=> b!889453 (=> (not res!404500) (not e!582898))))

(declare-fun call!52386 () Bool)

(assert (=> b!889453 (= res!404500 (not call!52386))))

(declare-fun b!889454 () Bool)

(assert (=> b!889454 (= e!582899 (not (= (head!1561 s!10566) (c!143828 (removeUselessConcat!36 (regOne!5111 r!15766))))))))

(declare-fun d!277227 () Bool)

(declare-fun e!582904 () Bool)

(assert (=> d!277227 e!582904))

(declare-fun c!143902 () Bool)

(assert (=> d!277227 (= c!143902 ((_ is EmptyExpr!2299) (removeUselessConcat!36 (regOne!5111 r!15766))))))

(declare-fun e!582903 () Bool)

(assert (=> d!277227 (= lt!332114 e!582903)))

(declare-fun c!143903 () Bool)

(assert (=> d!277227 (= c!143903 (isEmpty!5718 s!10566))))

(assert (=> d!277227 (validRegex!768 (removeUselessConcat!36 (regOne!5111 r!15766)))))

(assert (=> d!277227 (= (matchR!837 (removeUselessConcat!36 (regOne!5111 r!15766)) s!10566) lt!332114)))

(declare-fun b!889455 () Bool)

(assert (=> b!889455 (= e!582900 e!582899)))

(declare-fun res!404499 () Bool)

(assert (=> b!889455 (=> res!404499 e!582899)))

(assert (=> b!889455 (= res!404499 call!52386)))

(declare-fun b!889456 () Bool)

(assert (=> b!889456 (= e!582898 (= (head!1561 s!10566) (c!143828 (removeUselessConcat!36 (regOne!5111 r!15766)))))))

(declare-fun b!889457 () Bool)

(assert (=> b!889457 (= e!582903 (matchR!837 (derivativeStep!408 (removeUselessConcat!36 (regOne!5111 r!15766)) (head!1561 s!10566)) (tail!1123 s!10566)))))

(declare-fun b!889458 () Bool)

(declare-fun e!582902 () Bool)

(assert (=> b!889458 (= e!582902 (not lt!332114))))

(declare-fun b!889459 () Bool)

(declare-fun res!404501 () Bool)

(assert (=> b!889459 (=> res!404501 e!582901)))

(assert (=> b!889459 (= res!404501 (not ((_ is ElementMatch!2299) (removeUselessConcat!36 (regOne!5111 r!15766)))))))

(assert (=> b!889459 (= e!582902 e!582901)))

(declare-fun bm!52381 () Bool)

(assert (=> bm!52381 (= call!52386 (isEmpty!5718 s!10566))))

(declare-fun b!889460 () Bool)

(assert (=> b!889460 (= e!582903 (nullable!596 (removeUselessConcat!36 (regOne!5111 r!15766))))))

(declare-fun b!889461 () Bool)

(assert (=> b!889461 (= e!582904 (= lt!332114 call!52386))))

(declare-fun b!889462 () Bool)

(assert (=> b!889462 (= e!582904 e!582902)))

(declare-fun c!143904 () Bool)

(assert (=> b!889462 (= c!143904 ((_ is EmptyLang!2299) (removeUselessConcat!36 (regOne!5111 r!15766))))))

(assert (= (and d!277227 c!143903) b!889460))

(assert (= (and d!277227 (not c!143903)) b!889457))

(assert (= (and d!277227 c!143902) b!889461))

(assert (= (and d!277227 (not c!143902)) b!889462))

(assert (= (and b!889462 c!143904) b!889458))

(assert (= (and b!889462 (not c!143904)) b!889459))

(assert (= (and b!889459 (not res!404501)) b!889449))

(assert (= (and b!889449 res!404503) b!889453))

(assert (= (and b!889453 res!404500) b!889450))

(assert (= (and b!889450 res!404502) b!889456))

(assert (= (and b!889449 (not res!404505)) b!889452))

(assert (= (and b!889452 res!404498) b!889455))

(assert (= (and b!889455 (not res!404499)) b!889451))

(assert (= (and b!889451 (not res!404504)) b!889454))

(assert (= (or b!889461 b!889453 b!889455) bm!52381))

(assert (=> bm!52381 m!1133299))

(assert (=> b!889456 m!1133305))

(assert (=> d!277227 m!1133299))

(assert (=> d!277227 m!1133247))

(declare-fun m!1133347 () Bool)

(assert (=> d!277227 m!1133347))

(assert (=> b!889457 m!1133305))

(assert (=> b!889457 m!1133247))

(assert (=> b!889457 m!1133305))

(declare-fun m!1133349 () Bool)

(assert (=> b!889457 m!1133349))

(assert (=> b!889457 m!1133309))

(assert (=> b!889457 m!1133349))

(assert (=> b!889457 m!1133309))

(declare-fun m!1133351 () Bool)

(assert (=> b!889457 m!1133351))

(assert (=> b!889460 m!1133247))

(declare-fun m!1133353 () Bool)

(assert (=> b!889460 m!1133353))

(assert (=> b!889450 m!1133309))

(assert (=> b!889450 m!1133309))

(assert (=> b!889450 m!1133315))

(assert (=> b!889454 m!1133305))

(assert (=> b!889451 m!1133309))

(assert (=> b!889451 m!1133309))

(assert (=> b!889451 m!1133315))

(assert (=> b!889161 d!277227))

(declare-fun bm!52392 () Bool)

(declare-fun call!52398 () Regex!2299)

(declare-fun call!52399 () Regex!2299)

(assert (=> bm!52392 (= call!52398 call!52399)))

(declare-fun b!889485 () Bool)

(declare-fun e!582917 () Regex!2299)

(assert (=> b!889485 (= e!582917 (regOne!5111 r!15766))))

(declare-fun b!889486 () Bool)

(declare-fun e!582920 () Regex!2299)

(assert (=> b!889486 (= e!582920 call!52399)))

(declare-fun b!889487 () Bool)

(declare-fun c!143915 () Bool)

(assert (=> b!889487 (= c!143915 ((_ is Star!2299) (regOne!5111 r!15766)))))

(declare-fun e!582921 () Regex!2299)

(assert (=> b!889487 (= e!582921 e!582917)))

(declare-fun b!889488 () Bool)

(declare-fun call!52401 () Regex!2299)

(declare-fun call!52397 () Regex!2299)

(assert (=> b!889488 (= e!582921 (Union!2299 call!52401 call!52397))))

(declare-fun bm!52393 () Bool)

(declare-fun c!143916 () Bool)

(declare-fun c!143917 () Bool)

(declare-fun c!143918 () Bool)

(assert (=> bm!52393 (= call!52399 (removeUselessConcat!36 (ite c!143917 (regTwo!5110 (regOne!5111 r!15766)) (ite (or c!143918 c!143916) (regOne!5110 (regOne!5111 r!15766)) (regOne!5111 (regOne!5111 r!15766))))))))

(declare-fun b!889489 () Bool)

(declare-fun e!582918 () Regex!2299)

(declare-fun call!52400 () Regex!2299)

(assert (=> b!889489 (= e!582918 (Concat!4132 call!52401 call!52400))))

(declare-fun d!277229 () Bool)

(declare-fun e!582922 () Bool)

(assert (=> d!277229 e!582922))

(declare-fun res!404508 () Bool)

(assert (=> d!277229 (=> (not res!404508) (not e!582922))))

(declare-fun lt!332117 () Regex!2299)

(assert (=> d!277229 (= res!404508 (validRegex!768 lt!332117))))

(assert (=> d!277229 (= lt!332117 e!582920)))

(assert (=> d!277229 (= c!143917 (and ((_ is Concat!4132) (regOne!5111 r!15766)) ((_ is EmptyExpr!2299) (regOne!5110 (regOne!5111 r!15766)))))))

(assert (=> d!277229 (validRegex!768 (regOne!5111 r!15766))))

(assert (=> d!277229 (= (removeUselessConcat!36 (regOne!5111 r!15766)) lt!332117)))

(declare-fun b!889490 () Bool)

(declare-fun e!582919 () Regex!2299)

(assert (=> b!889490 (= e!582919 call!52398)))

(declare-fun bm!52394 () Bool)

(assert (=> bm!52394 (= call!52401 call!52398)))

(declare-fun b!889491 () Bool)

(assert (=> b!889491 (= e!582920 e!582919)))

(assert (=> b!889491 (= c!143918 (and ((_ is Concat!4132) (regOne!5111 r!15766)) ((_ is EmptyExpr!2299) (regTwo!5110 (regOne!5111 r!15766)))))))

(declare-fun bm!52395 () Bool)

(declare-fun c!143919 () Bool)

(assert (=> bm!52395 (= call!52400 (removeUselessConcat!36 (ite c!143916 (regTwo!5110 (regOne!5111 r!15766)) (ite c!143919 (regTwo!5111 (regOne!5111 r!15766)) (reg!2628 (regOne!5111 r!15766))))))))

(declare-fun bm!52396 () Bool)

(assert (=> bm!52396 (= call!52397 call!52400)))

(declare-fun b!889492 () Bool)

(assert (=> b!889492 (= e!582917 (Star!2299 call!52397))))

(declare-fun b!889493 () Bool)

(assert (=> b!889493 (= e!582918 e!582921)))

(assert (=> b!889493 (= c!143919 ((_ is Union!2299) (regOne!5111 r!15766)))))

(declare-fun b!889494 () Bool)

(assert (=> b!889494 (= c!143916 ((_ is Concat!4132) (regOne!5111 r!15766)))))

(assert (=> b!889494 (= e!582919 e!582918)))

(declare-fun b!889495 () Bool)

(assert (=> b!889495 (= e!582922 (= (nullable!596 lt!332117) (nullable!596 (regOne!5111 r!15766))))))

(assert (= (and d!277229 c!143917) b!889486))

(assert (= (and d!277229 (not c!143917)) b!889491))

(assert (= (and b!889491 c!143918) b!889490))

(assert (= (and b!889491 (not c!143918)) b!889494))

(assert (= (and b!889494 c!143916) b!889489))

(assert (= (and b!889494 (not c!143916)) b!889493))

(assert (= (and b!889493 c!143919) b!889488))

(assert (= (and b!889493 (not c!143919)) b!889487))

(assert (= (and b!889487 c!143915) b!889492))

(assert (= (and b!889487 (not c!143915)) b!889485))

(assert (= (or b!889488 b!889492) bm!52396))

(assert (= (or b!889489 bm!52396) bm!52395))

(assert (= (or b!889489 b!889488) bm!52394))

(assert (= (or b!889490 bm!52394) bm!52392))

(assert (= (or b!889486 bm!52392) bm!52393))

(assert (= (and d!277229 res!404508) b!889495))

(declare-fun m!1133355 () Bool)

(assert (=> bm!52393 m!1133355))

(declare-fun m!1133357 () Bool)

(assert (=> d!277229 m!1133357))

(assert (=> d!277229 m!1133331))

(declare-fun m!1133359 () Bool)

(assert (=> bm!52395 m!1133359))

(declare-fun m!1133361 () Bool)

(assert (=> b!889495 m!1133361))

(assert (=> b!889495 m!1133337))

(assert (=> b!889161 d!277229))

(declare-fun d!277231 () Bool)

(assert (=> d!277231 (= (matchR!837 (regOne!5111 r!15766) s!10566) (matchR!837 (removeUselessConcat!36 (regOne!5111 r!15766)) s!10566))))

(declare-fun lt!332120 () Unit!14177)

(declare-fun choose!5309 (Regex!2299 List!9529) Unit!14177)

(assert (=> d!277231 (= lt!332120 (choose!5309 (regOne!5111 r!15766) s!10566))))

(assert (=> d!277231 (validRegex!768 (regOne!5111 r!15766))))

(assert (=> d!277231 (= (lemmaRemoveUselessConcatSound!30 (regOne!5111 r!15766) s!10566) lt!332120)))

(declare-fun bs!234808 () Bool)

(assert (= bs!234808 d!277231))

(assert (=> bs!234808 m!1133257))

(assert (=> bs!234808 m!1133247))

(assert (=> bs!234808 m!1133249))

(declare-fun m!1133363 () Bool)

(assert (=> bs!234808 m!1133363))

(assert (=> bs!234808 m!1133247))

(assert (=> bs!234808 m!1133331))

(assert (=> b!889161 d!277231))

(declare-fun b!889509 () Bool)

(declare-fun e!582925 () Bool)

(declare-fun tp!280060 () Bool)

(declare-fun tp!280061 () Bool)

(assert (=> b!889509 (= e!582925 (and tp!280060 tp!280061))))

(declare-fun b!889508 () Bool)

(declare-fun tp!280063 () Bool)

(assert (=> b!889508 (= e!582925 tp!280063)))

(declare-fun b!889506 () Bool)

(assert (=> b!889506 (= e!582925 tp_is_empty!4241)))

(assert (=> b!889163 (= tp!280045 e!582925)))

(declare-fun b!889507 () Bool)

(declare-fun tp!280059 () Bool)

(declare-fun tp!280062 () Bool)

(assert (=> b!889507 (= e!582925 (and tp!280059 tp!280062))))

(assert (= (and b!889163 ((_ is ElementMatch!2299) (regOne!5111 r!15766))) b!889506))

(assert (= (and b!889163 ((_ is Concat!4132) (regOne!5111 r!15766))) b!889507))

(assert (= (and b!889163 ((_ is Star!2299) (regOne!5111 r!15766))) b!889508))

(assert (= (and b!889163 ((_ is Union!2299) (regOne!5111 r!15766))) b!889509))

(declare-fun b!889513 () Bool)

(declare-fun e!582926 () Bool)

(declare-fun tp!280065 () Bool)

(declare-fun tp!280066 () Bool)

(assert (=> b!889513 (= e!582926 (and tp!280065 tp!280066))))

(declare-fun b!889512 () Bool)

(declare-fun tp!280068 () Bool)

(assert (=> b!889512 (= e!582926 tp!280068)))

(declare-fun b!889510 () Bool)

(assert (=> b!889510 (= e!582926 tp_is_empty!4241)))

(assert (=> b!889163 (= tp!280043 e!582926)))

(declare-fun b!889511 () Bool)

(declare-fun tp!280064 () Bool)

(declare-fun tp!280067 () Bool)

(assert (=> b!889511 (= e!582926 (and tp!280064 tp!280067))))

(assert (= (and b!889163 ((_ is ElementMatch!2299) (regTwo!5111 r!15766))) b!889510))

(assert (= (and b!889163 ((_ is Concat!4132) (regTwo!5111 r!15766))) b!889511))

(assert (= (and b!889163 ((_ is Star!2299) (regTwo!5111 r!15766))) b!889512))

(assert (= (and b!889163 ((_ is Union!2299) (regTwo!5111 r!15766))) b!889513))

(declare-fun b!889517 () Bool)

(declare-fun e!582927 () Bool)

(declare-fun tp!280070 () Bool)

(declare-fun tp!280071 () Bool)

(assert (=> b!889517 (= e!582927 (and tp!280070 tp!280071))))

(declare-fun b!889516 () Bool)

(declare-fun tp!280073 () Bool)

(assert (=> b!889516 (= e!582927 tp!280073)))

(declare-fun b!889514 () Bool)

(assert (=> b!889514 (= e!582927 tp_is_empty!4241)))

(assert (=> b!889158 (= tp!280047 e!582927)))

(declare-fun b!889515 () Bool)

(declare-fun tp!280069 () Bool)

(declare-fun tp!280072 () Bool)

(assert (=> b!889515 (= e!582927 (and tp!280069 tp!280072))))

(assert (= (and b!889158 ((_ is ElementMatch!2299) (reg!2628 r!15766))) b!889514))

(assert (= (and b!889158 ((_ is Concat!4132) (reg!2628 r!15766))) b!889515))

(assert (= (and b!889158 ((_ is Star!2299) (reg!2628 r!15766))) b!889516))

(assert (= (and b!889158 ((_ is Union!2299) (reg!2628 r!15766))) b!889517))

(declare-fun b!889521 () Bool)

(declare-fun e!582928 () Bool)

(declare-fun tp!280075 () Bool)

(declare-fun tp!280076 () Bool)

(assert (=> b!889521 (= e!582928 (and tp!280075 tp!280076))))

(declare-fun b!889520 () Bool)

(declare-fun tp!280078 () Bool)

(assert (=> b!889520 (= e!582928 tp!280078)))

(declare-fun b!889518 () Bool)

(assert (=> b!889518 (= e!582928 tp_is_empty!4241)))

(assert (=> b!889157 (= tp!280046 e!582928)))

(declare-fun b!889519 () Bool)

(declare-fun tp!280074 () Bool)

(declare-fun tp!280077 () Bool)

(assert (=> b!889519 (= e!582928 (and tp!280074 tp!280077))))

(assert (= (and b!889157 ((_ is ElementMatch!2299) (regOne!5110 r!15766))) b!889518))

(assert (= (and b!889157 ((_ is Concat!4132) (regOne!5110 r!15766))) b!889519))

(assert (= (and b!889157 ((_ is Star!2299) (regOne!5110 r!15766))) b!889520))

(assert (= (and b!889157 ((_ is Union!2299) (regOne!5110 r!15766))) b!889521))

(declare-fun b!889525 () Bool)

(declare-fun e!582929 () Bool)

(declare-fun tp!280080 () Bool)

(declare-fun tp!280081 () Bool)

(assert (=> b!889525 (= e!582929 (and tp!280080 tp!280081))))

(declare-fun b!889524 () Bool)

(declare-fun tp!280083 () Bool)

(assert (=> b!889524 (= e!582929 tp!280083)))

(declare-fun b!889522 () Bool)

(assert (=> b!889522 (= e!582929 tp_is_empty!4241)))

(assert (=> b!889157 (= tp!280048 e!582929)))

(declare-fun b!889523 () Bool)

(declare-fun tp!280079 () Bool)

(declare-fun tp!280082 () Bool)

(assert (=> b!889523 (= e!582929 (and tp!280079 tp!280082))))

(assert (= (and b!889157 ((_ is ElementMatch!2299) (regTwo!5110 r!15766))) b!889522))

(assert (= (and b!889157 ((_ is Concat!4132) (regTwo!5110 r!15766))) b!889523))

(assert (= (and b!889157 ((_ is Star!2299) (regTwo!5110 r!15766))) b!889524))

(assert (= (and b!889157 ((_ is Union!2299) (regTwo!5110 r!15766))) b!889525))

(declare-fun b!889530 () Bool)

(declare-fun e!582932 () Bool)

(declare-fun tp!280086 () Bool)

(assert (=> b!889530 (= e!582932 (and tp_is_empty!4241 tp!280086))))

(assert (=> b!889160 (= tp!280044 e!582932)))

(assert (= (and b!889160 ((_ is Cons!9513) (t!100575 s!10566))) b!889530))

(check-sat (not d!277221) (not d!277219) (not b!889329) (not bm!52395) (not b!889509) (not b!889508) (not bm!52362) (not b!889456) (not b!889512) (not b!889425) (not bm!52366) (not bm!52377) (not bm!52363) (not b!889402) (not b!889411) (not b!889495) (not b!889414) (not b!889520) (not b!889524) (not b!889422) (not bm!52373) (not b!889521) (not b!889372) (not b!889323) (not b!889408) (not d!277231) (not d!277227) (not b!889417) (not b!889427) (not b!889530) (not b!889370) (not b!889507) tp_is_empty!4241 (not b!889431) (not bm!52376) (not b!889525) (not b!889428) (not b!889439) (not d!277215) (not b!889516) (not b!889454) (not b!889366) (not b!889451) (not b!889457) (not b!889367) (not b!889421) (not b!889513) (not bm!52393) (not b!889438) (not b!889515) (not d!277229) (not bm!52381) (not b!889523) (not b!889511) (not b!889519) (not b!889373) (not b!889445) (not b!889413) (not b!889407) (not bm!52378) (not bm!52374) (not b!889460) (not d!277213) (not b!889517) (not b!889450) (not d!277223) (not b!889376) (not bm!52379))
(check-sat)
