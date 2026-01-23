; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82646 () Bool)

(assert start!82646)

(declare-fun b!920161 () Bool)

(assert (=> b!920161 true))

(assert (=> b!920161 true))

(declare-fun lambda!29912 () Int)

(declare-fun lambda!29911 () Int)

(assert (=> b!920161 (not (= lambda!29912 lambda!29911))))

(assert (=> b!920161 true))

(assert (=> b!920161 true))

(declare-fun bs!236605 () Bool)

(declare-fun b!920163 () Bool)

(assert (= bs!236605 (and b!920163 b!920161)))

(declare-fun lambda!29913 () Int)

(declare-datatypes ((C!5520 0))(
  ( (C!5521 (val!3008 Int)) )
))
(declare-datatypes ((Regex!2475 0))(
  ( (ElementMatch!2475 (c!149242 C!5520)) (Concat!4308 (regOne!5462 Regex!2475) (regTwo!5462 Regex!2475)) (EmptyExpr!2475) (Star!2475 (reg!2804 Regex!2475)) (EmptyLang!2475) (Union!2475 (regOne!5463 Regex!2475) (regTwo!5463 Regex!2475)) )
))
(declare-fun lt!338300 () Regex!2475)

(declare-fun lt!338298 () Regex!2475)

(declare-fun r!15766 () Regex!2475)

(assert (=> bs!236605 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29913 lambda!29911))))

(assert (=> bs!236605 (not (= lambda!29913 lambda!29912))))

(assert (=> b!920163 true))

(assert (=> b!920163 true))

(assert (=> b!920163 true))

(declare-fun lambda!29914 () Int)

(assert (=> bs!236605 (not (= lambda!29914 lambda!29911))))

(assert (=> bs!236605 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29914 lambda!29912))))

(assert (=> b!920163 (not (= lambda!29914 lambda!29913))))

(assert (=> b!920163 true))

(assert (=> b!920163 true))

(assert (=> b!920163 true))

(declare-fun b!920157 () Bool)

(declare-fun e!599196 () Bool)

(declare-fun e!599199 () Bool)

(assert (=> b!920157 (= e!599196 (not e!599199))))

(declare-fun res!418327 () Bool)

(assert (=> b!920157 (=> res!418327 e!599199)))

(declare-fun lt!338305 () Bool)

(get-info :version)

(assert (=> b!920157 (= res!418327 (or lt!338305 (and ((_ is Concat!4308) r!15766) ((_ is EmptyExpr!2475) (regOne!5462 r!15766))) (and ((_ is Concat!4308) r!15766) ((_ is EmptyExpr!2475) (regTwo!5462 r!15766))) (not ((_ is Concat!4308) r!15766))))))

(declare-datatypes ((List!9705 0))(
  ( (Nil!9689) (Cons!9689 (h!15090 C!5520) (t!100751 List!9705)) )
))
(declare-fun s!10566 () List!9705)

(declare-fun matchRSpec!276 (Regex!2475 List!9705) Bool)

(assert (=> b!920157 (= lt!338305 (matchRSpec!276 r!15766 s!10566))))

(declare-fun matchR!1013 (Regex!2475 List!9705) Bool)

(assert (=> b!920157 (= lt!338305 (matchR!1013 r!15766 s!10566))))

(declare-datatypes ((Unit!14569 0))(
  ( (Unit!14570) )
))
(declare-fun lt!338303 () Unit!14569)

(declare-fun mainMatchTheorem!276 (Regex!2475 List!9705) Unit!14569)

(assert (=> b!920157 (= lt!338303 (mainMatchTheorem!276 r!15766 s!10566))))

(declare-fun b!920158 () Bool)

(declare-fun e!599198 () Bool)

(declare-fun tp!286785 () Bool)

(assert (=> b!920158 (= e!599198 tp!286785)))

(declare-fun res!418329 () Bool)

(assert (=> start!82646 (=> (not res!418329) (not e!599196))))

(declare-fun validRegex!944 (Regex!2475) Bool)

(assert (=> start!82646 (= res!418329 (validRegex!944 r!15766))))

(assert (=> start!82646 e!599196))

(assert (=> start!82646 e!599198))

(declare-fun e!599200 () Bool)

(assert (=> start!82646 e!599200))

(declare-fun b!920159 () Bool)

(declare-fun tp_is_empty!4593 () Bool)

(declare-fun tp!286784 () Bool)

(assert (=> b!920159 (= e!599200 (and tp_is_empty!4593 tp!286784))))

(declare-fun b!920160 () Bool)

(declare-fun tp!286788 () Bool)

(declare-fun tp!286787 () Bool)

(assert (=> b!920160 (= e!599198 (and tp!286788 tp!286787))))

(declare-fun e!599201 () Bool)

(assert (=> b!920161 (= e!599199 e!599201)))

(declare-fun res!418330 () Bool)

(assert (=> b!920161 (=> res!418330 e!599201)))

(declare-fun isEmpty!5930 (List!9705) Bool)

(assert (=> b!920161 (= res!418330 (isEmpty!5930 s!10566))))

(declare-fun Exists!246 (Int) Bool)

(assert (=> b!920161 (= (Exists!246 lambda!29911) (Exists!246 lambda!29912))))

(declare-fun lt!338302 () Unit!14569)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!158 (Regex!2475 Regex!2475 List!9705) Unit!14569)

(assert (=> b!920161 (= lt!338302 (lemmaExistCutMatchRandMatchRSpecEquivalent!158 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566))))

(declare-datatypes ((tuple2!10936 0))(
  ( (tuple2!10937 (_1!6294 List!9705) (_2!6294 List!9705)) )
))
(declare-datatypes ((Option!2110 0))(
  ( (None!2109) (Some!2109 (v!19526 tuple2!10936)) )
))
(declare-fun isDefined!1752 (Option!2110) Bool)

(declare-fun findConcatSeparation!216 (Regex!2475 Regex!2475 List!9705 List!9705 List!9705) Option!2110)

(assert (=> b!920161 (= (isDefined!1752 (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) Nil!9689 s!10566 s!10566)) (Exists!246 lambda!29911))))

(declare-fun lt!338299 () Unit!14569)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!216 (Regex!2475 Regex!2475 List!9705) Unit!14569)

(assert (=> b!920161 (= lt!338299 (lemmaFindConcatSeparationEquivalentToExists!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566))))

(declare-fun b!920162 () Bool)

(declare-fun tp!286783 () Bool)

(declare-fun tp!286786 () Bool)

(assert (=> b!920162 (= e!599198 (and tp!286783 tp!286786))))

(declare-fun e!599197 () Bool)

(assert (=> b!920163 (= e!599197 (validRegex!944 lt!338298))))

(assert (=> b!920163 (= (Exists!246 lambda!29913) (Exists!246 lambda!29914))))

(declare-fun lt!338304 () Unit!14569)

(assert (=> b!920163 (= lt!338304 (lemmaExistCutMatchRandMatchRSpecEquivalent!158 lt!338298 lt!338300 s!10566))))

(assert (=> b!920163 (= (isDefined!1752 (findConcatSeparation!216 lt!338298 lt!338300 Nil!9689 s!10566 s!10566)) (Exists!246 lambda!29913))))

(declare-fun lt!338306 () Unit!14569)

(assert (=> b!920163 (= lt!338306 (lemmaFindConcatSeparationEquivalentToExists!216 lt!338298 lt!338300 s!10566))))

(declare-fun lt!338301 () Regex!2475)

(assert (=> b!920163 (matchRSpec!276 lt!338301 s!10566)))

(declare-fun lt!338307 () Unit!14569)

(assert (=> b!920163 (= lt!338307 (mainMatchTheorem!276 lt!338301 s!10566))))

(declare-fun b!920164 () Bool)

(assert (=> b!920164 (= e!599198 tp_is_empty!4593)))

(declare-fun b!920165 () Bool)

(assert (=> b!920165 (= e!599201 e!599197)))

(declare-fun res!418328 () Bool)

(assert (=> b!920165 (=> res!418328 e!599197)))

(assert (=> b!920165 (= res!418328 (not (matchR!1013 lt!338301 s!10566)))))

(assert (=> b!920165 (= lt!338301 (Concat!4308 lt!338298 lt!338300))))

(declare-fun removeUselessConcat!152 (Regex!2475) Regex!2475)

(assert (=> b!920165 (= lt!338300 (removeUselessConcat!152 (regTwo!5462 r!15766)))))

(assert (=> b!920165 (= lt!338298 (removeUselessConcat!152 (regOne!5462 r!15766)))))

(assert (= (and start!82646 res!418329) b!920157))

(assert (= (and b!920157 (not res!418327)) b!920161))

(assert (= (and b!920161 (not res!418330)) b!920165))

(assert (= (and b!920165 (not res!418328)) b!920163))

(assert (= (and start!82646 ((_ is ElementMatch!2475) r!15766)) b!920164))

(assert (= (and start!82646 ((_ is Concat!4308) r!15766)) b!920160))

(assert (= (and start!82646 ((_ is Star!2475) r!15766)) b!920158))

(assert (= (and start!82646 ((_ is Union!2475) r!15766)) b!920162))

(assert (= (and start!82646 ((_ is Cons!9689) s!10566)) b!920159))

(declare-fun m!1147751 () Bool)

(assert (=> b!920165 m!1147751))

(declare-fun m!1147753 () Bool)

(assert (=> b!920165 m!1147753))

(declare-fun m!1147755 () Bool)

(assert (=> b!920165 m!1147755))

(declare-fun m!1147757 () Bool)

(assert (=> b!920163 m!1147757))

(declare-fun m!1147759 () Bool)

(assert (=> b!920163 m!1147759))

(declare-fun m!1147761 () Bool)

(assert (=> b!920163 m!1147761))

(declare-fun m!1147763 () Bool)

(assert (=> b!920163 m!1147763))

(declare-fun m!1147765 () Bool)

(assert (=> b!920163 m!1147765))

(declare-fun m!1147767 () Bool)

(assert (=> b!920163 m!1147767))

(declare-fun m!1147769 () Bool)

(assert (=> b!920163 m!1147769))

(declare-fun m!1147771 () Bool)

(assert (=> b!920163 m!1147771))

(assert (=> b!920163 m!1147763))

(assert (=> b!920163 m!1147761))

(declare-fun m!1147773 () Bool)

(assert (=> b!920163 m!1147773))

(declare-fun m!1147775 () Bool)

(assert (=> b!920161 m!1147775))

(declare-fun m!1147777 () Bool)

(assert (=> b!920161 m!1147777))

(declare-fun m!1147779 () Bool)

(assert (=> b!920161 m!1147779))

(assert (=> b!920161 m!1147775))

(declare-fun m!1147781 () Bool)

(assert (=> b!920161 m!1147781))

(declare-fun m!1147783 () Bool)

(assert (=> b!920161 m!1147783))

(assert (=> b!920161 m!1147777))

(declare-fun m!1147785 () Bool)

(assert (=> b!920161 m!1147785))

(declare-fun m!1147787 () Bool)

(assert (=> b!920161 m!1147787))

(declare-fun m!1147789 () Bool)

(assert (=> b!920157 m!1147789))

(declare-fun m!1147791 () Bool)

(assert (=> b!920157 m!1147791))

(declare-fun m!1147793 () Bool)

(assert (=> b!920157 m!1147793))

(declare-fun m!1147795 () Bool)

(assert (=> start!82646 m!1147795))

(check-sat (not b!920158) (not b!920159) (not b!920162) (not b!920161) (not b!920157) (not b!920165) (not b!920160) (not b!920163) tp_is_empty!4593 (not start!82646))
(check-sat)
(get-model)

(declare-fun d!280305 () Bool)

(declare-fun res!418394 () Bool)

(declare-fun e!599279 () Bool)

(assert (=> d!280305 (=> res!418394 e!599279)))

(assert (=> d!280305 (= res!418394 ((_ is ElementMatch!2475) r!15766))))

(assert (=> d!280305 (= (validRegex!944 r!15766) e!599279)))

(declare-fun b!920285 () Bool)

(declare-fun res!418392 () Bool)

(declare-fun e!599278 () Bool)

(assert (=> b!920285 (=> (not res!418392) (not e!599278))))

(declare-fun call!55912 () Bool)

(assert (=> b!920285 (= res!418392 call!55912)))

(declare-fun e!599281 () Bool)

(assert (=> b!920285 (= e!599281 e!599278)))

(declare-fun b!920286 () Bool)

(declare-fun e!599283 () Bool)

(declare-fun e!599277 () Bool)

(assert (=> b!920286 (= e!599283 e!599277)))

(declare-fun res!418393 () Bool)

(declare-fun nullable!687 (Regex!2475) Bool)

(assert (=> b!920286 (= res!418393 (not (nullable!687 (reg!2804 r!15766))))))

(assert (=> b!920286 (=> (not res!418393) (not e!599277))))

(declare-fun bm!55906 () Bool)

(declare-fun call!55911 () Bool)

(declare-fun c!149272 () Bool)

(assert (=> bm!55906 (= call!55911 (validRegex!944 (ite c!149272 (regTwo!5463 r!15766) (regTwo!5462 r!15766))))))

(declare-fun b!920287 () Bool)

(assert (=> b!920287 (= e!599279 e!599283)))

(declare-fun c!149271 () Bool)

(assert (=> b!920287 (= c!149271 ((_ is Star!2475) r!15766))))

(declare-fun b!920288 () Bool)

(assert (=> b!920288 (= e!599278 call!55911)))

(declare-fun b!920289 () Bool)

(declare-fun call!55913 () Bool)

(assert (=> b!920289 (= e!599277 call!55913)))

(declare-fun b!920290 () Bool)

(assert (=> b!920290 (= e!599283 e!599281)))

(assert (=> b!920290 (= c!149272 ((_ is Union!2475) r!15766))))

(declare-fun b!920291 () Bool)

(declare-fun e!599280 () Bool)

(declare-fun e!599282 () Bool)

(assert (=> b!920291 (= e!599280 e!599282)))

(declare-fun res!418391 () Bool)

(assert (=> b!920291 (=> (not res!418391) (not e!599282))))

(assert (=> b!920291 (= res!418391 call!55912)))

(declare-fun b!920292 () Bool)

(declare-fun res!418390 () Bool)

(assert (=> b!920292 (=> res!418390 e!599280)))

(assert (=> b!920292 (= res!418390 (not ((_ is Concat!4308) r!15766)))))

(assert (=> b!920292 (= e!599281 e!599280)))

(declare-fun bm!55907 () Bool)

(assert (=> bm!55907 (= call!55912 call!55913)))

(declare-fun bm!55908 () Bool)

(assert (=> bm!55908 (= call!55913 (validRegex!944 (ite c!149271 (reg!2804 r!15766) (ite c!149272 (regOne!5463 r!15766) (regOne!5462 r!15766)))))))

(declare-fun b!920293 () Bool)

(assert (=> b!920293 (= e!599282 call!55911)))

(assert (= (and d!280305 (not res!418394)) b!920287))

(assert (= (and b!920287 c!149271) b!920286))

(assert (= (and b!920287 (not c!149271)) b!920290))

(assert (= (and b!920286 res!418393) b!920289))

(assert (= (and b!920290 c!149272) b!920285))

(assert (= (and b!920290 (not c!149272)) b!920292))

(assert (= (and b!920285 res!418392) b!920288))

(assert (= (and b!920292 (not res!418390)) b!920291))

(assert (= (and b!920291 res!418391) b!920293))

(assert (= (or b!920288 b!920293) bm!55906))

(assert (= (or b!920285 b!920291) bm!55907))

(assert (= (or b!920289 bm!55907) bm!55908))

(declare-fun m!1147839 () Bool)

(assert (=> b!920286 m!1147839))

(declare-fun m!1147841 () Bool)

(assert (=> bm!55906 m!1147841))

(declare-fun m!1147843 () Bool)

(assert (=> bm!55908 m!1147843))

(assert (=> start!82646 d!280305))

(declare-fun bm!55911 () Bool)

(declare-fun call!55916 () Bool)

(assert (=> bm!55911 (= call!55916 (isEmpty!5930 s!10566))))

(declare-fun b!920343 () Bool)

(declare-fun e!599315 () Bool)

(declare-fun lt!338333 () Bool)

(assert (=> b!920343 (= e!599315 (not lt!338333))))

(declare-fun b!920344 () Bool)

(declare-fun e!599311 () Bool)

(declare-fun e!599312 () Bool)

(assert (=> b!920344 (= e!599311 e!599312)))

(declare-fun res!418434 () Bool)

(assert (=> b!920344 (=> res!418434 e!599312)))

(assert (=> b!920344 (= res!418434 call!55916)))

(declare-fun b!920345 () Bool)

(declare-fun res!418431 () Bool)

(declare-fun e!599310 () Bool)

(assert (=> b!920345 (=> res!418431 e!599310)))

(declare-fun e!599309 () Bool)

(assert (=> b!920345 (= res!418431 e!599309)))

(declare-fun res!418430 () Bool)

(assert (=> b!920345 (=> (not res!418430) (not e!599309))))

(assert (=> b!920345 (= res!418430 lt!338333)))

(declare-fun b!920346 () Bool)

(declare-fun res!418433 () Bool)

(assert (=> b!920346 (=> (not res!418433) (not e!599309))))

(assert (=> b!920346 (= res!418433 (not call!55916))))

(declare-fun b!920347 () Bool)

(declare-fun e!599314 () Bool)

(assert (=> b!920347 (= e!599314 e!599315)))

(declare-fun c!149281 () Bool)

(assert (=> b!920347 (= c!149281 ((_ is EmptyLang!2475) lt!338301))))

(declare-fun b!920348 () Bool)

(declare-fun head!1650 (List!9705) C!5520)

(assert (=> b!920348 (= e!599312 (not (= (head!1650 s!10566) (c!149242 lt!338301))))))

(declare-fun b!920349 () Bool)

(declare-fun res!418429 () Bool)

(assert (=> b!920349 (=> res!418429 e!599312)))

(declare-fun tail!1212 (List!9705) List!9705)

(assert (=> b!920349 (= res!418429 (not (isEmpty!5930 (tail!1212 s!10566))))))

(declare-fun d!280313 () Bool)

(assert (=> d!280313 e!599314))

(declare-fun c!149282 () Bool)

(assert (=> d!280313 (= c!149282 ((_ is EmptyExpr!2475) lt!338301))))

(declare-fun e!599313 () Bool)

(assert (=> d!280313 (= lt!338333 e!599313)))

(declare-fun c!149283 () Bool)

(assert (=> d!280313 (= c!149283 (isEmpty!5930 s!10566))))

(assert (=> d!280313 (validRegex!944 lt!338301)))

(assert (=> d!280313 (= (matchR!1013 lt!338301 s!10566) lt!338333)))

(declare-fun b!920350 () Bool)

(assert (=> b!920350 (= e!599310 e!599311)))

(declare-fun res!418432 () Bool)

(assert (=> b!920350 (=> (not res!418432) (not e!599311))))

(assert (=> b!920350 (= res!418432 (not lt!338333))))

(declare-fun b!920351 () Bool)

(declare-fun res!418435 () Bool)

(assert (=> b!920351 (=> (not res!418435) (not e!599309))))

(assert (=> b!920351 (= res!418435 (isEmpty!5930 (tail!1212 s!10566)))))

(declare-fun b!920352 () Bool)

(assert (=> b!920352 (= e!599314 (= lt!338333 call!55916))))

(declare-fun b!920353 () Bool)

(declare-fun derivativeStep!497 (Regex!2475 C!5520) Regex!2475)

(assert (=> b!920353 (= e!599313 (matchR!1013 (derivativeStep!497 lt!338301 (head!1650 s!10566)) (tail!1212 s!10566)))))

(declare-fun b!920354 () Bool)

(assert (=> b!920354 (= e!599313 (nullable!687 lt!338301))))

(declare-fun b!920355 () Bool)

(assert (=> b!920355 (= e!599309 (= (head!1650 s!10566) (c!149242 lt!338301)))))

(declare-fun b!920356 () Bool)

(declare-fun res!418428 () Bool)

(assert (=> b!920356 (=> res!418428 e!599310)))

(assert (=> b!920356 (= res!418428 (not ((_ is ElementMatch!2475) lt!338301)))))

(assert (=> b!920356 (= e!599315 e!599310)))

(assert (= (and d!280313 c!149283) b!920354))

(assert (= (and d!280313 (not c!149283)) b!920353))

(assert (= (and d!280313 c!149282) b!920352))

(assert (= (and d!280313 (not c!149282)) b!920347))

(assert (= (and b!920347 c!149281) b!920343))

(assert (= (and b!920347 (not c!149281)) b!920356))

(assert (= (and b!920356 (not res!418428)) b!920345))

(assert (= (and b!920345 res!418430) b!920346))

(assert (= (and b!920346 res!418433) b!920351))

(assert (= (and b!920351 res!418435) b!920355))

(assert (= (and b!920345 (not res!418431)) b!920350))

(assert (= (and b!920350 res!418432) b!920344))

(assert (= (and b!920344 (not res!418434)) b!920349))

(assert (= (and b!920349 (not res!418429)) b!920348))

(assert (= (or b!920352 b!920344 b!920346) bm!55911))

(declare-fun m!1147891 () Bool)

(assert (=> b!920351 m!1147891))

(assert (=> b!920351 m!1147891))

(declare-fun m!1147893 () Bool)

(assert (=> b!920351 m!1147893))

(declare-fun m!1147895 () Bool)

(assert (=> b!920353 m!1147895))

(assert (=> b!920353 m!1147895))

(declare-fun m!1147897 () Bool)

(assert (=> b!920353 m!1147897))

(assert (=> b!920353 m!1147891))

(assert (=> b!920353 m!1147897))

(assert (=> b!920353 m!1147891))

(declare-fun m!1147905 () Bool)

(assert (=> b!920353 m!1147905))

(assert (=> b!920355 m!1147895))

(assert (=> d!280313 m!1147785))

(declare-fun m!1147907 () Bool)

(assert (=> d!280313 m!1147907))

(assert (=> b!920348 m!1147895))

(declare-fun m!1147909 () Bool)

(assert (=> b!920354 m!1147909))

(assert (=> b!920349 m!1147891))

(assert (=> b!920349 m!1147891))

(assert (=> b!920349 m!1147893))

(assert (=> bm!55911 m!1147785))

(assert (=> b!920165 d!280313))

(declare-fun b!920485 () Bool)

(declare-fun e!599389 () Regex!2475)

(declare-fun call!55956 () Regex!2475)

(assert (=> b!920485 (= e!599389 call!55956)))

(declare-fun b!920486 () Bool)

(declare-fun e!599390 () Regex!2475)

(assert (=> b!920486 (= e!599390 (regTwo!5462 r!15766))))

(declare-fun b!920487 () Bool)

(declare-fun e!599391 () Regex!2475)

(assert (=> b!920487 (= e!599391 e!599389)))

(declare-fun c!149332 () Bool)

(assert (=> b!920487 (= c!149332 (and ((_ is Concat!4308) (regTwo!5462 r!15766)) ((_ is EmptyExpr!2475) (regTwo!5462 (regTwo!5462 r!15766)))))))

(declare-fun bm!55950 () Bool)

(declare-fun c!149330 () Bool)

(declare-fun c!149333 () Bool)

(declare-fun call!55959 () Regex!2475)

(assert (=> bm!55950 (= call!55959 (removeUselessConcat!152 (ite c!149333 (regTwo!5462 (regTwo!5462 r!15766)) (ite c!149330 (regOne!5462 (regTwo!5462 r!15766)) (regOne!5463 (regTwo!5462 r!15766))))))))

(declare-fun b!920488 () Bool)

(assert (=> b!920488 (= e!599391 call!55959)))

(declare-fun b!920489 () Bool)

(declare-fun e!599392 () Regex!2475)

(declare-fun call!55958 () Regex!2475)

(declare-fun call!55957 () Regex!2475)

(assert (=> b!920489 (= e!599392 (Concat!4308 call!55958 call!55957))))

(declare-fun b!920490 () Bool)

(declare-fun e!599387 () Bool)

(declare-fun lt!338343 () Regex!2475)

(assert (=> b!920490 (= e!599387 (= (nullable!687 lt!338343) (nullable!687 (regTwo!5462 r!15766))))))

(declare-fun d!280337 () Bool)

(assert (=> d!280337 e!599387))

(declare-fun res!418474 () Bool)

(assert (=> d!280337 (=> (not res!418474) (not e!599387))))

(assert (=> d!280337 (= res!418474 (validRegex!944 lt!338343))))

(assert (=> d!280337 (= lt!338343 e!599391)))

(assert (=> d!280337 (= c!149333 (and ((_ is Concat!4308) (regTwo!5462 r!15766)) ((_ is EmptyExpr!2475) (regOne!5462 (regTwo!5462 r!15766)))))))

(assert (=> d!280337 (validRegex!944 (regTwo!5462 r!15766))))

(assert (=> d!280337 (= (removeUselessConcat!152 (regTwo!5462 r!15766)) lt!338343)))

(declare-fun bm!55951 () Bool)

(assert (=> bm!55951 (= call!55958 call!55959)))

(declare-fun b!920491 () Bool)

(declare-fun e!599388 () Regex!2475)

(declare-fun call!55955 () Regex!2475)

(assert (=> b!920491 (= e!599388 (Union!2475 call!55958 call!55955))))

(declare-fun bm!55952 () Bool)

(assert (=> bm!55952 (= call!55955 call!55957)))

(declare-fun b!920492 () Bool)

(assert (=> b!920492 (= c!149330 ((_ is Concat!4308) (regTwo!5462 r!15766)))))

(assert (=> b!920492 (= e!599389 e!599392)))

(declare-fun b!920493 () Bool)

(declare-fun c!149331 () Bool)

(assert (=> b!920493 (= c!149331 ((_ is Star!2475) (regTwo!5462 r!15766)))))

(assert (=> b!920493 (= e!599388 e!599390)))

(declare-fun b!920494 () Bool)

(assert (=> b!920494 (= e!599392 e!599388)))

(declare-fun c!149329 () Bool)

(assert (=> b!920494 (= c!149329 ((_ is Union!2475) (regTwo!5462 r!15766)))))

(declare-fun bm!55953 () Bool)

(assert (=> bm!55953 (= call!55956 (removeUselessConcat!152 (ite c!149332 (regOne!5462 (regTwo!5462 r!15766)) (ite c!149330 (regTwo!5462 (regTwo!5462 r!15766)) (ite c!149329 (regTwo!5463 (regTwo!5462 r!15766)) (reg!2804 (regTwo!5462 r!15766)))))))))

(declare-fun bm!55954 () Bool)

(assert (=> bm!55954 (= call!55957 call!55956)))

(declare-fun b!920495 () Bool)

(assert (=> b!920495 (= e!599390 (Star!2475 call!55955))))

(assert (= (and d!280337 c!149333) b!920488))

(assert (= (and d!280337 (not c!149333)) b!920487))

(assert (= (and b!920487 c!149332) b!920485))

(assert (= (and b!920487 (not c!149332)) b!920492))

(assert (= (and b!920492 c!149330) b!920489))

(assert (= (and b!920492 (not c!149330)) b!920494))

(assert (= (and b!920494 c!149329) b!920491))

(assert (= (and b!920494 (not c!149329)) b!920493))

(assert (= (and b!920493 c!149331) b!920495))

(assert (= (and b!920493 (not c!149331)) b!920486))

(assert (= (or b!920491 b!920495) bm!55952))

(assert (= (or b!920489 bm!55952) bm!55954))

(assert (= (or b!920489 b!920491) bm!55951))

(assert (= (or b!920485 bm!55954) bm!55953))

(assert (= (or b!920488 bm!55951) bm!55950))

(assert (= (and d!280337 res!418474) b!920490))

(declare-fun m!1147945 () Bool)

(assert (=> bm!55950 m!1147945))

(declare-fun m!1147947 () Bool)

(assert (=> b!920490 m!1147947))

(declare-fun m!1147949 () Bool)

(assert (=> b!920490 m!1147949))

(declare-fun m!1147951 () Bool)

(assert (=> d!280337 m!1147951))

(declare-fun m!1147953 () Bool)

(assert (=> d!280337 m!1147953))

(declare-fun m!1147955 () Bool)

(assert (=> bm!55953 m!1147955))

(assert (=> b!920165 d!280337))

(declare-fun b!920496 () Bool)

(declare-fun e!599395 () Regex!2475)

(declare-fun call!55961 () Regex!2475)

(assert (=> b!920496 (= e!599395 call!55961)))

(declare-fun b!920497 () Bool)

(declare-fun e!599396 () Regex!2475)

(assert (=> b!920497 (= e!599396 (regOne!5462 r!15766))))

(declare-fun b!920498 () Bool)

(declare-fun e!599397 () Regex!2475)

(assert (=> b!920498 (= e!599397 e!599395)))

(declare-fun c!149337 () Bool)

(assert (=> b!920498 (= c!149337 (and ((_ is Concat!4308) (regOne!5462 r!15766)) ((_ is EmptyExpr!2475) (regTwo!5462 (regOne!5462 r!15766)))))))

(declare-fun c!149338 () Bool)

(declare-fun c!149335 () Bool)

(declare-fun call!55964 () Regex!2475)

(declare-fun bm!55955 () Bool)

(assert (=> bm!55955 (= call!55964 (removeUselessConcat!152 (ite c!149338 (regTwo!5462 (regOne!5462 r!15766)) (ite c!149335 (regOne!5462 (regOne!5462 r!15766)) (regOne!5463 (regOne!5462 r!15766))))))))

(declare-fun b!920499 () Bool)

(assert (=> b!920499 (= e!599397 call!55964)))

(declare-fun b!920500 () Bool)

(declare-fun e!599398 () Regex!2475)

(declare-fun call!55963 () Regex!2475)

(declare-fun call!55962 () Regex!2475)

(assert (=> b!920500 (= e!599398 (Concat!4308 call!55963 call!55962))))

(declare-fun b!920501 () Bool)

(declare-fun e!599393 () Bool)

(declare-fun lt!338344 () Regex!2475)

(assert (=> b!920501 (= e!599393 (= (nullable!687 lt!338344) (nullable!687 (regOne!5462 r!15766))))))

(declare-fun d!280345 () Bool)

(assert (=> d!280345 e!599393))

(declare-fun res!418475 () Bool)

(assert (=> d!280345 (=> (not res!418475) (not e!599393))))

(assert (=> d!280345 (= res!418475 (validRegex!944 lt!338344))))

(assert (=> d!280345 (= lt!338344 e!599397)))

(assert (=> d!280345 (= c!149338 (and ((_ is Concat!4308) (regOne!5462 r!15766)) ((_ is EmptyExpr!2475) (regOne!5462 (regOne!5462 r!15766)))))))

(assert (=> d!280345 (validRegex!944 (regOne!5462 r!15766))))

(assert (=> d!280345 (= (removeUselessConcat!152 (regOne!5462 r!15766)) lt!338344)))

(declare-fun bm!55956 () Bool)

(assert (=> bm!55956 (= call!55963 call!55964)))

(declare-fun b!920502 () Bool)

(declare-fun e!599394 () Regex!2475)

(declare-fun call!55960 () Regex!2475)

(assert (=> b!920502 (= e!599394 (Union!2475 call!55963 call!55960))))

(declare-fun bm!55957 () Bool)

(assert (=> bm!55957 (= call!55960 call!55962)))

(declare-fun b!920503 () Bool)

(assert (=> b!920503 (= c!149335 ((_ is Concat!4308) (regOne!5462 r!15766)))))

(assert (=> b!920503 (= e!599395 e!599398)))

(declare-fun b!920504 () Bool)

(declare-fun c!149336 () Bool)

(assert (=> b!920504 (= c!149336 ((_ is Star!2475) (regOne!5462 r!15766)))))

(assert (=> b!920504 (= e!599394 e!599396)))

(declare-fun b!920505 () Bool)

(assert (=> b!920505 (= e!599398 e!599394)))

(declare-fun c!149334 () Bool)

(assert (=> b!920505 (= c!149334 ((_ is Union!2475) (regOne!5462 r!15766)))))

(declare-fun bm!55958 () Bool)

(assert (=> bm!55958 (= call!55961 (removeUselessConcat!152 (ite c!149337 (regOne!5462 (regOne!5462 r!15766)) (ite c!149335 (regTwo!5462 (regOne!5462 r!15766)) (ite c!149334 (regTwo!5463 (regOne!5462 r!15766)) (reg!2804 (regOne!5462 r!15766)))))))))

(declare-fun bm!55959 () Bool)

(assert (=> bm!55959 (= call!55962 call!55961)))

(declare-fun b!920506 () Bool)

(assert (=> b!920506 (= e!599396 (Star!2475 call!55960))))

(assert (= (and d!280345 c!149338) b!920499))

(assert (= (and d!280345 (not c!149338)) b!920498))

(assert (= (and b!920498 c!149337) b!920496))

(assert (= (and b!920498 (not c!149337)) b!920503))

(assert (= (and b!920503 c!149335) b!920500))

(assert (= (and b!920503 (not c!149335)) b!920505))

(assert (= (and b!920505 c!149334) b!920502))

(assert (= (and b!920505 (not c!149334)) b!920504))

(assert (= (and b!920504 c!149336) b!920506))

(assert (= (and b!920504 (not c!149336)) b!920497))

(assert (= (or b!920502 b!920506) bm!55957))

(assert (= (or b!920500 bm!55957) bm!55959))

(assert (= (or b!920500 b!920502) bm!55956))

(assert (= (or b!920496 bm!55959) bm!55958))

(assert (= (or b!920499 bm!55956) bm!55955))

(assert (= (and d!280345 res!418475) b!920501))

(declare-fun m!1147961 () Bool)

(assert (=> bm!55955 m!1147961))

(declare-fun m!1147965 () Bool)

(assert (=> b!920501 m!1147965))

(declare-fun m!1147967 () Bool)

(assert (=> b!920501 m!1147967))

(declare-fun m!1147969 () Bool)

(assert (=> d!280345 m!1147969))

(declare-fun m!1147971 () Bool)

(assert (=> d!280345 m!1147971))

(declare-fun m!1147973 () Bool)

(assert (=> bm!55958 m!1147973))

(assert (=> b!920165 d!280345))

(declare-fun d!280349 () Bool)

(declare-fun choose!5636 (Int) Bool)

(assert (=> d!280349 (= (Exists!246 lambda!29911) (choose!5636 lambda!29911))))

(declare-fun bs!236662 () Bool)

(assert (= bs!236662 d!280349))

(declare-fun m!1147983 () Bool)

(assert (=> bs!236662 m!1147983))

(assert (=> b!920161 d!280349))

(declare-fun d!280353 () Bool)

(assert (=> d!280353 (= (isEmpty!5930 s!10566) ((_ is Nil!9689) s!10566))))

(assert (=> b!920161 d!280353))

(declare-fun d!280355 () Bool)

(declare-fun isEmpty!5932 (Option!2110) Bool)

(assert (=> d!280355 (= (isDefined!1752 (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) Nil!9689 s!10566 s!10566)) (not (isEmpty!5932 (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) Nil!9689 s!10566 s!10566))))))

(declare-fun bs!236663 () Bool)

(assert (= bs!236663 d!280355))

(assert (=> bs!236663 m!1147777))

(declare-fun m!1147985 () Bool)

(assert (=> bs!236663 m!1147985))

(assert (=> b!920161 d!280355))

(declare-fun bs!236664 () Bool)

(declare-fun d!280357 () Bool)

(assert (= bs!236664 (and d!280357 b!920161)))

(declare-fun lambda!29937 () Int)

(assert (=> bs!236664 (= lambda!29937 lambda!29911)))

(assert (=> bs!236664 (not (= lambda!29937 lambda!29912))))

(declare-fun bs!236665 () Bool)

(assert (= bs!236665 (and d!280357 b!920163)))

(assert (=> bs!236665 (= (and (= (regOne!5462 r!15766) lt!338298) (= (regTwo!5462 r!15766) lt!338300)) (= lambda!29937 lambda!29913))))

(assert (=> bs!236665 (not (= lambda!29937 lambda!29914))))

(assert (=> d!280357 true))

(assert (=> d!280357 true))

(assert (=> d!280357 true))

(assert (=> d!280357 (= (isDefined!1752 (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) Nil!9689 s!10566 s!10566)) (Exists!246 lambda!29937))))

(declare-fun lt!338349 () Unit!14569)

(declare-fun choose!5637 (Regex!2475 Regex!2475 List!9705) Unit!14569)

(assert (=> d!280357 (= lt!338349 (choose!5637 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566))))

(assert (=> d!280357 (validRegex!944 (regOne!5462 r!15766))))

(assert (=> d!280357 (= (lemmaFindConcatSeparationEquivalentToExists!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566) lt!338349)))

(declare-fun bs!236666 () Bool)

(assert (= bs!236666 d!280357))

(assert (=> bs!236666 m!1147777))

(declare-fun m!1147987 () Bool)

(assert (=> bs!236666 m!1147987))

(declare-fun m!1147989 () Bool)

(assert (=> bs!236666 m!1147989))

(assert (=> bs!236666 m!1147777))

(assert (=> bs!236666 m!1147779))

(assert (=> bs!236666 m!1147971))

(assert (=> b!920161 d!280357))

(declare-fun b!920578 () Bool)

(declare-fun e!599428 () Option!2110)

(declare-fun e!599429 () Option!2110)

(assert (=> b!920578 (= e!599428 e!599429)))

(declare-fun c!149347 () Bool)

(assert (=> b!920578 (= c!149347 ((_ is Nil!9689) s!10566))))

(declare-fun b!920579 () Bool)

(declare-fun e!599431 () Bool)

(declare-fun lt!338358 () Option!2110)

(declare-fun ++!2563 (List!9705 List!9705) List!9705)

(declare-fun get!3156 (Option!2110) tuple2!10936)

(assert (=> b!920579 (= e!599431 (= (++!2563 (_1!6294 (get!3156 lt!338358)) (_2!6294 (get!3156 lt!338358))) s!10566))))

(declare-fun b!920580 () Bool)

(declare-fun e!599430 () Bool)

(assert (=> b!920580 (= e!599430 (not (isDefined!1752 lt!338358)))))

(declare-fun b!920581 () Bool)

(declare-fun e!599432 () Bool)

(assert (=> b!920581 (= e!599432 (matchR!1013 (regTwo!5462 r!15766) s!10566))))

(declare-fun b!920582 () Bool)

(declare-fun lt!338356 () Unit!14569)

(declare-fun lt!338357 () Unit!14569)

(assert (=> b!920582 (= lt!338356 lt!338357)))

(assert (=> b!920582 (= (++!2563 (++!2563 Nil!9689 (Cons!9689 (h!15090 s!10566) Nil!9689)) (t!100751 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!178 (List!9705 C!5520 List!9705 List!9705) Unit!14569)

(assert (=> b!920582 (= lt!338357 (lemmaMoveElementToOtherListKeepsConcatEq!178 Nil!9689 (h!15090 s!10566) (t!100751 s!10566) s!10566))))

(assert (=> b!920582 (= e!599429 (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) (++!2563 Nil!9689 (Cons!9689 (h!15090 s!10566) Nil!9689)) (t!100751 s!10566) s!10566))))

(declare-fun b!920583 () Bool)

(declare-fun res!418501 () Bool)

(assert (=> b!920583 (=> (not res!418501) (not e!599431))))

(assert (=> b!920583 (= res!418501 (matchR!1013 (regOne!5462 r!15766) (_1!6294 (get!3156 lt!338358))))))

(declare-fun d!280359 () Bool)

(assert (=> d!280359 e!599430))

(declare-fun res!418499 () Bool)

(assert (=> d!280359 (=> res!418499 e!599430)))

(assert (=> d!280359 (= res!418499 e!599431)))

(declare-fun res!418500 () Bool)

(assert (=> d!280359 (=> (not res!418500) (not e!599431))))

(assert (=> d!280359 (= res!418500 (isDefined!1752 lt!338358))))

(assert (=> d!280359 (= lt!338358 e!599428)))

(declare-fun c!149346 () Bool)

(assert (=> d!280359 (= c!149346 e!599432)))

(declare-fun res!418498 () Bool)

(assert (=> d!280359 (=> (not res!418498) (not e!599432))))

(assert (=> d!280359 (= res!418498 (matchR!1013 (regOne!5462 r!15766) Nil!9689))))

(assert (=> d!280359 (validRegex!944 (regOne!5462 r!15766))))

(assert (=> d!280359 (= (findConcatSeparation!216 (regOne!5462 r!15766) (regTwo!5462 r!15766) Nil!9689 s!10566 s!10566) lt!338358)))

(declare-fun b!920584 () Bool)

(assert (=> b!920584 (= e!599428 (Some!2109 (tuple2!10937 Nil!9689 s!10566)))))

(declare-fun b!920585 () Bool)

(assert (=> b!920585 (= e!599429 None!2109)))

(declare-fun b!920586 () Bool)

(declare-fun res!418502 () Bool)

(assert (=> b!920586 (=> (not res!418502) (not e!599431))))

(assert (=> b!920586 (= res!418502 (matchR!1013 (regTwo!5462 r!15766) (_2!6294 (get!3156 lt!338358))))))

(assert (= (and d!280359 res!418498) b!920581))

(assert (= (and d!280359 c!149346) b!920584))

(assert (= (and d!280359 (not c!149346)) b!920578))

(assert (= (and b!920578 c!149347) b!920585))

(assert (= (and b!920578 (not c!149347)) b!920582))

(assert (= (and d!280359 res!418500) b!920583))

(assert (= (and b!920583 res!418501) b!920586))

(assert (= (and b!920586 res!418502) b!920579))

(assert (= (and d!280359 (not res!418499)) b!920580))

(declare-fun m!1147991 () Bool)

(assert (=> b!920579 m!1147991))

(declare-fun m!1147993 () Bool)

(assert (=> b!920579 m!1147993))

(declare-fun m!1147995 () Bool)

(assert (=> b!920580 m!1147995))

(declare-fun m!1147997 () Bool)

(assert (=> b!920582 m!1147997))

(assert (=> b!920582 m!1147997))

(declare-fun m!1147999 () Bool)

(assert (=> b!920582 m!1147999))

(declare-fun m!1148001 () Bool)

(assert (=> b!920582 m!1148001))

(assert (=> b!920582 m!1147997))

(declare-fun m!1148003 () Bool)

(assert (=> b!920582 m!1148003))

(declare-fun m!1148005 () Bool)

(assert (=> b!920581 m!1148005))

(assert (=> b!920583 m!1147991))

(declare-fun m!1148007 () Bool)

(assert (=> b!920583 m!1148007))

(assert (=> d!280359 m!1147995))

(declare-fun m!1148009 () Bool)

(assert (=> d!280359 m!1148009))

(assert (=> d!280359 m!1147971))

(assert (=> b!920586 m!1147991))

(declare-fun m!1148011 () Bool)

(assert (=> b!920586 m!1148011))

(assert (=> b!920161 d!280359))

(declare-fun bs!236667 () Bool)

(declare-fun d!280361 () Bool)

(assert (= bs!236667 (and d!280361 b!920163)))

(declare-fun lambda!29942 () Int)

(assert (=> bs!236667 (= (and (= (regOne!5462 r!15766) lt!338298) (= (regTwo!5462 r!15766) lt!338300)) (= lambda!29942 lambda!29913))))

(declare-fun bs!236668 () Bool)

(assert (= bs!236668 (and d!280361 b!920161)))

(assert (=> bs!236668 (not (= lambda!29942 lambda!29912))))

(assert (=> bs!236668 (= lambda!29942 lambda!29911)))

(assert (=> bs!236667 (not (= lambda!29942 lambda!29914))))

(declare-fun bs!236669 () Bool)

(assert (= bs!236669 (and d!280361 d!280357)))

(assert (=> bs!236669 (= lambda!29942 lambda!29937)))

(assert (=> d!280361 true))

(assert (=> d!280361 true))

(assert (=> d!280361 true))

(declare-fun lambda!29943 () Int)

(assert (=> bs!236667 (not (= lambda!29943 lambda!29913))))

(assert (=> bs!236668 (= lambda!29943 lambda!29912)))

(declare-fun bs!236670 () Bool)

(assert (= bs!236670 d!280361))

(assert (=> bs!236670 (not (= lambda!29943 lambda!29942))))

(assert (=> bs!236668 (not (= lambda!29943 lambda!29911))))

(assert (=> bs!236667 (= (and (= (regOne!5462 r!15766) lt!338298) (= (regTwo!5462 r!15766) lt!338300)) (= lambda!29943 lambda!29914))))

(assert (=> bs!236669 (not (= lambda!29943 lambda!29937))))

(assert (=> d!280361 true))

(assert (=> d!280361 true))

(assert (=> d!280361 true))

(assert (=> d!280361 (= (Exists!246 lambda!29942) (Exists!246 lambda!29943))))

(declare-fun lt!338361 () Unit!14569)

(declare-fun choose!5638 (Regex!2475 Regex!2475 List!9705) Unit!14569)

(assert (=> d!280361 (= lt!338361 (choose!5638 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566))))

(assert (=> d!280361 (validRegex!944 (regOne!5462 r!15766))))

(assert (=> d!280361 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!158 (regOne!5462 r!15766) (regTwo!5462 r!15766) s!10566) lt!338361)))

(declare-fun m!1148013 () Bool)

(assert (=> bs!236670 m!1148013))

(declare-fun m!1148015 () Bool)

(assert (=> bs!236670 m!1148015))

(declare-fun m!1148017 () Bool)

(assert (=> bs!236670 m!1148017))

(assert (=> bs!236670 m!1147971))

(assert (=> b!920161 d!280361))

(declare-fun d!280363 () Bool)

(assert (=> d!280363 (= (Exists!246 lambda!29912) (choose!5636 lambda!29912))))

(declare-fun bs!236671 () Bool)

(assert (= bs!236671 d!280363))

(declare-fun m!1148019 () Bool)

(assert (=> bs!236671 m!1148019))

(assert (=> b!920161 d!280363))

(declare-fun d!280365 () Bool)

(declare-fun res!418515 () Bool)

(declare-fun e!599439 () Bool)

(assert (=> d!280365 (=> res!418515 e!599439)))

(assert (=> d!280365 (= res!418515 ((_ is ElementMatch!2475) lt!338298))))

(assert (=> d!280365 (= (validRegex!944 lt!338298) e!599439)))

(declare-fun b!920595 () Bool)

(declare-fun res!418513 () Bool)

(declare-fun e!599438 () Bool)

(assert (=> b!920595 (=> (not res!418513) (not e!599438))))

(declare-fun call!55967 () Bool)

(assert (=> b!920595 (= res!418513 call!55967)))

(declare-fun e!599441 () Bool)

(assert (=> b!920595 (= e!599441 e!599438)))

(declare-fun b!920596 () Bool)

(declare-fun e!599443 () Bool)

(declare-fun e!599437 () Bool)

(assert (=> b!920596 (= e!599443 e!599437)))

(declare-fun res!418514 () Bool)

(assert (=> b!920596 (= res!418514 (not (nullable!687 (reg!2804 lt!338298))))))

(assert (=> b!920596 (=> (not res!418514) (not e!599437))))

(declare-fun bm!55961 () Bool)

(declare-fun call!55966 () Bool)

(declare-fun c!149349 () Bool)

(assert (=> bm!55961 (= call!55966 (validRegex!944 (ite c!149349 (regTwo!5463 lt!338298) (regTwo!5462 lt!338298))))))

(declare-fun b!920597 () Bool)

(assert (=> b!920597 (= e!599439 e!599443)))

(declare-fun c!149348 () Bool)

(assert (=> b!920597 (= c!149348 ((_ is Star!2475) lt!338298))))

(declare-fun b!920598 () Bool)

(assert (=> b!920598 (= e!599438 call!55966)))

(declare-fun b!920599 () Bool)

(declare-fun call!55968 () Bool)

(assert (=> b!920599 (= e!599437 call!55968)))

(declare-fun b!920600 () Bool)

(assert (=> b!920600 (= e!599443 e!599441)))

(assert (=> b!920600 (= c!149349 ((_ is Union!2475) lt!338298))))

(declare-fun b!920601 () Bool)

(declare-fun e!599440 () Bool)

(declare-fun e!599442 () Bool)

(assert (=> b!920601 (= e!599440 e!599442)))

(declare-fun res!418512 () Bool)

(assert (=> b!920601 (=> (not res!418512) (not e!599442))))

(assert (=> b!920601 (= res!418512 call!55967)))

(declare-fun b!920602 () Bool)

(declare-fun res!418511 () Bool)

(assert (=> b!920602 (=> res!418511 e!599440)))

(assert (=> b!920602 (= res!418511 (not ((_ is Concat!4308) lt!338298)))))

(assert (=> b!920602 (= e!599441 e!599440)))

(declare-fun bm!55962 () Bool)

(assert (=> bm!55962 (= call!55967 call!55968)))

(declare-fun bm!55963 () Bool)

(assert (=> bm!55963 (= call!55968 (validRegex!944 (ite c!149348 (reg!2804 lt!338298) (ite c!149349 (regOne!5463 lt!338298) (regOne!5462 lt!338298)))))))

(declare-fun b!920603 () Bool)

(assert (=> b!920603 (= e!599442 call!55966)))

(assert (= (and d!280365 (not res!418515)) b!920597))

(assert (= (and b!920597 c!149348) b!920596))

(assert (= (and b!920597 (not c!149348)) b!920600))

(assert (= (and b!920596 res!418514) b!920599))

(assert (= (and b!920600 c!149349) b!920595))

(assert (= (and b!920600 (not c!149349)) b!920602))

(assert (= (and b!920595 res!418513) b!920598))

(assert (= (and b!920602 (not res!418511)) b!920601))

(assert (= (and b!920601 res!418512) b!920603))

(assert (= (or b!920598 b!920603) bm!55961))

(assert (= (or b!920595 b!920601) bm!55962))

(assert (= (or b!920599 bm!55962) bm!55963))

(declare-fun m!1148021 () Bool)

(assert (=> b!920596 m!1148021))

(declare-fun m!1148023 () Bool)

(assert (=> bm!55961 m!1148023))

(declare-fun m!1148025 () Bool)

(assert (=> bm!55963 m!1148025))

(assert (=> b!920163 d!280365))

(declare-fun b!920604 () Bool)

(declare-fun e!599444 () Option!2110)

(declare-fun e!599445 () Option!2110)

(assert (=> b!920604 (= e!599444 e!599445)))

(declare-fun c!149351 () Bool)

(assert (=> b!920604 (= c!149351 ((_ is Nil!9689) s!10566))))

(declare-fun b!920605 () Bool)

(declare-fun e!599447 () Bool)

(declare-fun lt!338364 () Option!2110)

(assert (=> b!920605 (= e!599447 (= (++!2563 (_1!6294 (get!3156 lt!338364)) (_2!6294 (get!3156 lt!338364))) s!10566))))

(declare-fun b!920606 () Bool)

(declare-fun e!599446 () Bool)

(assert (=> b!920606 (= e!599446 (not (isDefined!1752 lt!338364)))))

(declare-fun b!920607 () Bool)

(declare-fun e!599448 () Bool)

(assert (=> b!920607 (= e!599448 (matchR!1013 lt!338300 s!10566))))

(declare-fun b!920608 () Bool)

(declare-fun lt!338362 () Unit!14569)

(declare-fun lt!338363 () Unit!14569)

(assert (=> b!920608 (= lt!338362 lt!338363)))

(assert (=> b!920608 (= (++!2563 (++!2563 Nil!9689 (Cons!9689 (h!15090 s!10566) Nil!9689)) (t!100751 s!10566)) s!10566)))

(assert (=> b!920608 (= lt!338363 (lemmaMoveElementToOtherListKeepsConcatEq!178 Nil!9689 (h!15090 s!10566) (t!100751 s!10566) s!10566))))

(assert (=> b!920608 (= e!599445 (findConcatSeparation!216 lt!338298 lt!338300 (++!2563 Nil!9689 (Cons!9689 (h!15090 s!10566) Nil!9689)) (t!100751 s!10566) s!10566))))

(declare-fun b!920609 () Bool)

(declare-fun res!418519 () Bool)

(assert (=> b!920609 (=> (not res!418519) (not e!599447))))

(assert (=> b!920609 (= res!418519 (matchR!1013 lt!338298 (_1!6294 (get!3156 lt!338364))))))

(declare-fun d!280367 () Bool)

(assert (=> d!280367 e!599446))

(declare-fun res!418517 () Bool)

(assert (=> d!280367 (=> res!418517 e!599446)))

(assert (=> d!280367 (= res!418517 e!599447)))

(declare-fun res!418518 () Bool)

(assert (=> d!280367 (=> (not res!418518) (not e!599447))))

(assert (=> d!280367 (= res!418518 (isDefined!1752 lt!338364))))

(assert (=> d!280367 (= lt!338364 e!599444)))

(declare-fun c!149350 () Bool)

(assert (=> d!280367 (= c!149350 e!599448)))

(declare-fun res!418516 () Bool)

(assert (=> d!280367 (=> (not res!418516) (not e!599448))))

(assert (=> d!280367 (= res!418516 (matchR!1013 lt!338298 Nil!9689))))

(assert (=> d!280367 (validRegex!944 lt!338298)))

(assert (=> d!280367 (= (findConcatSeparation!216 lt!338298 lt!338300 Nil!9689 s!10566 s!10566) lt!338364)))

(declare-fun b!920610 () Bool)

(assert (=> b!920610 (= e!599444 (Some!2109 (tuple2!10937 Nil!9689 s!10566)))))

(declare-fun b!920611 () Bool)

(assert (=> b!920611 (= e!599445 None!2109)))

(declare-fun b!920612 () Bool)

(declare-fun res!418520 () Bool)

(assert (=> b!920612 (=> (not res!418520) (not e!599447))))

(assert (=> b!920612 (= res!418520 (matchR!1013 lt!338300 (_2!6294 (get!3156 lt!338364))))))

(assert (= (and d!280367 res!418516) b!920607))

(assert (= (and d!280367 c!149350) b!920610))

(assert (= (and d!280367 (not c!149350)) b!920604))

(assert (= (and b!920604 c!149351) b!920611))

(assert (= (and b!920604 (not c!149351)) b!920608))

(assert (= (and d!280367 res!418518) b!920609))

(assert (= (and b!920609 res!418519) b!920612))

(assert (= (and b!920612 res!418520) b!920605))

(assert (= (and d!280367 (not res!418517)) b!920606))

(declare-fun m!1148027 () Bool)

(assert (=> b!920605 m!1148027))

(declare-fun m!1148029 () Bool)

(assert (=> b!920605 m!1148029))

(declare-fun m!1148031 () Bool)

(assert (=> b!920606 m!1148031))

(assert (=> b!920608 m!1147997))

(assert (=> b!920608 m!1147997))

(assert (=> b!920608 m!1147999))

(assert (=> b!920608 m!1148001))

(assert (=> b!920608 m!1147997))

(declare-fun m!1148033 () Bool)

(assert (=> b!920608 m!1148033))

(declare-fun m!1148035 () Bool)

(assert (=> b!920607 m!1148035))

(assert (=> b!920609 m!1148027))

(declare-fun m!1148037 () Bool)

(assert (=> b!920609 m!1148037))

(assert (=> d!280367 m!1148031))

(declare-fun m!1148039 () Bool)

(assert (=> d!280367 m!1148039))

(assert (=> d!280367 m!1147773))

(assert (=> b!920612 m!1148027))

(declare-fun m!1148041 () Bool)

(assert (=> b!920612 m!1148041))

(assert (=> b!920163 d!280367))

(declare-fun d!280369 () Bool)

(assert (=> d!280369 (= (matchR!1013 lt!338301 s!10566) (matchRSpec!276 lt!338301 s!10566))))

(declare-fun lt!338367 () Unit!14569)

(declare-fun choose!5639 (Regex!2475 List!9705) Unit!14569)

(assert (=> d!280369 (= lt!338367 (choose!5639 lt!338301 s!10566))))

(assert (=> d!280369 (validRegex!944 lt!338301)))

(assert (=> d!280369 (= (mainMatchTheorem!276 lt!338301 s!10566) lt!338367)))

(declare-fun bs!236672 () Bool)

(assert (= bs!236672 d!280369))

(assert (=> bs!236672 m!1147751))

(assert (=> bs!236672 m!1147767))

(declare-fun m!1148043 () Bool)

(assert (=> bs!236672 m!1148043))

(assert (=> bs!236672 m!1147907))

(assert (=> b!920163 d!280369))

(declare-fun bs!236673 () Bool)

(declare-fun d!280371 () Bool)

(assert (= bs!236673 (and d!280371 b!920163)))

(declare-fun lambda!29944 () Int)

(assert (=> bs!236673 (= lambda!29944 lambda!29913)))

(declare-fun bs!236674 () Bool)

(assert (= bs!236674 (and d!280371 d!280361)))

(assert (=> bs!236674 (not (= lambda!29944 lambda!29943))))

(declare-fun bs!236675 () Bool)

(assert (= bs!236675 (and d!280371 b!920161)))

(assert (=> bs!236675 (not (= lambda!29944 lambda!29912))))

(assert (=> bs!236674 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29944 lambda!29942))))

(assert (=> bs!236675 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29944 lambda!29911))))

(assert (=> bs!236673 (not (= lambda!29944 lambda!29914))))

(declare-fun bs!236676 () Bool)

(assert (= bs!236676 (and d!280371 d!280357)))

(assert (=> bs!236676 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29944 lambda!29937))))

(assert (=> d!280371 true))

(assert (=> d!280371 true))

(assert (=> d!280371 true))

(declare-fun lambda!29945 () Int)

(assert (=> bs!236673 (not (= lambda!29945 lambda!29913))))

(assert (=> bs!236675 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29945 lambda!29912))))

(assert (=> bs!236674 (not (= lambda!29945 lambda!29942))))

(assert (=> bs!236675 (not (= lambda!29945 lambda!29911))))

(assert (=> bs!236673 (= lambda!29945 lambda!29914)))

(assert (=> bs!236676 (not (= lambda!29945 lambda!29937))))

(declare-fun bs!236677 () Bool)

(assert (= bs!236677 d!280371))

(assert (=> bs!236677 (not (= lambda!29945 lambda!29944))))

(assert (=> bs!236674 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29945 lambda!29943))))

(assert (=> d!280371 true))

(assert (=> d!280371 true))

(assert (=> d!280371 true))

(assert (=> d!280371 (= (Exists!246 lambda!29944) (Exists!246 lambda!29945))))

(declare-fun lt!338368 () Unit!14569)

(assert (=> d!280371 (= lt!338368 (choose!5638 lt!338298 lt!338300 s!10566))))

(assert (=> d!280371 (validRegex!944 lt!338298)))

(assert (=> d!280371 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!158 lt!338298 lt!338300 s!10566) lt!338368)))

(declare-fun m!1148045 () Bool)

(assert (=> bs!236677 m!1148045))

(declare-fun m!1148047 () Bool)

(assert (=> bs!236677 m!1148047))

(declare-fun m!1148049 () Bool)

(assert (=> bs!236677 m!1148049))

(assert (=> bs!236677 m!1147773))

(assert (=> b!920163 d!280371))

(declare-fun d!280373 () Bool)

(assert (=> d!280373 (= (Exists!246 lambda!29914) (choose!5636 lambda!29914))))

(declare-fun bs!236678 () Bool)

(assert (= bs!236678 d!280373))

(declare-fun m!1148051 () Bool)

(assert (=> bs!236678 m!1148051))

(assert (=> b!920163 d!280373))

(declare-fun bs!236679 () Bool)

(declare-fun d!280375 () Bool)

(assert (= bs!236679 (and d!280375 b!920163)))

(declare-fun lambda!29946 () Int)

(assert (=> bs!236679 (= lambda!29946 lambda!29913)))

(declare-fun bs!236680 () Bool)

(assert (= bs!236680 (and d!280375 b!920161)))

(assert (=> bs!236680 (not (= lambda!29946 lambda!29912))))

(declare-fun bs!236681 () Bool)

(assert (= bs!236681 (and d!280375 d!280361)))

(assert (=> bs!236681 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29946 lambda!29942))))

(assert (=> bs!236680 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29946 lambda!29911))))

(declare-fun bs!236682 () Bool)

(assert (= bs!236682 (and d!280375 d!280371)))

(assert (=> bs!236682 (not (= lambda!29946 lambda!29945))))

(assert (=> bs!236679 (not (= lambda!29946 lambda!29914))))

(declare-fun bs!236683 () Bool)

(assert (= bs!236683 (and d!280375 d!280357)))

(assert (=> bs!236683 (= (and (= lt!338298 (regOne!5462 r!15766)) (= lt!338300 (regTwo!5462 r!15766))) (= lambda!29946 lambda!29937))))

(assert (=> bs!236682 (= lambda!29946 lambda!29944)))

(assert (=> bs!236681 (not (= lambda!29946 lambda!29943))))

(assert (=> d!280375 true))

(assert (=> d!280375 true))

(assert (=> d!280375 true))

(assert (=> d!280375 (= (isDefined!1752 (findConcatSeparation!216 lt!338298 lt!338300 Nil!9689 s!10566 s!10566)) (Exists!246 lambda!29946))))

(declare-fun lt!338369 () Unit!14569)

(assert (=> d!280375 (= lt!338369 (choose!5637 lt!338298 lt!338300 s!10566))))

(assert (=> d!280375 (validRegex!944 lt!338298)))

(assert (=> d!280375 (= (lemmaFindConcatSeparationEquivalentToExists!216 lt!338298 lt!338300 s!10566) lt!338369)))

(declare-fun bs!236684 () Bool)

(assert (= bs!236684 d!280375))

(assert (=> bs!236684 m!1147763))

(declare-fun m!1148053 () Bool)

(assert (=> bs!236684 m!1148053))

(declare-fun m!1148055 () Bool)

(assert (=> bs!236684 m!1148055))

(assert (=> bs!236684 m!1147763))

(assert (=> bs!236684 m!1147765))

(assert (=> bs!236684 m!1147773))

(assert (=> b!920163 d!280375))

(declare-fun d!280377 () Bool)

(assert (=> d!280377 (= (isDefined!1752 (findConcatSeparation!216 lt!338298 lt!338300 Nil!9689 s!10566 s!10566)) (not (isEmpty!5932 (findConcatSeparation!216 lt!338298 lt!338300 Nil!9689 s!10566 s!10566))))))

(declare-fun bs!236685 () Bool)

(assert (= bs!236685 d!280377))

(assert (=> bs!236685 m!1147763))

(declare-fun m!1148057 () Bool)

(assert (=> bs!236685 m!1148057))

(assert (=> b!920163 d!280377))

(declare-fun d!280379 () Bool)

(assert (=> d!280379 (= (Exists!246 lambda!29913) (choose!5636 lambda!29913))))

(declare-fun bs!236686 () Bool)

(assert (= bs!236686 d!280379))

(declare-fun m!1148059 () Bool)

(assert (=> bs!236686 m!1148059))

(assert (=> b!920163 d!280379))

(declare-fun bs!236687 () Bool)

(declare-fun b!920652 () Bool)

(assert (= bs!236687 (and b!920652 d!280375)))

(declare-fun lambda!29951 () Int)

(assert (=> bs!236687 (not (= lambda!29951 lambda!29946))))

(declare-fun bs!236688 () Bool)

(assert (= bs!236688 (and b!920652 b!920163)))

(assert (=> bs!236688 (not (= lambda!29951 lambda!29913))))

(declare-fun bs!236689 () Bool)

(assert (= bs!236689 (and b!920652 b!920161)))

(assert (=> bs!236689 (not (= lambda!29951 lambda!29912))))

(declare-fun bs!236690 () Bool)

(assert (= bs!236690 (and b!920652 d!280361)))

(assert (=> bs!236690 (not (= lambda!29951 lambda!29942))))

(assert (=> bs!236689 (not (= lambda!29951 lambda!29911))))

(declare-fun bs!236691 () Bool)

(assert (= bs!236691 (and b!920652 d!280371)))

(assert (=> bs!236691 (not (= lambda!29951 lambda!29945))))

(assert (=> bs!236688 (not (= lambda!29951 lambda!29914))))

(declare-fun bs!236692 () Bool)

(assert (= bs!236692 (and b!920652 d!280357)))

(assert (=> bs!236692 (not (= lambda!29951 lambda!29937))))

(assert (=> bs!236691 (not (= lambda!29951 lambda!29944))))

(assert (=> bs!236690 (not (= lambda!29951 lambda!29943))))

(assert (=> b!920652 true))

(assert (=> b!920652 true))

(declare-fun bs!236693 () Bool)

(declare-fun b!920653 () Bool)

(assert (= bs!236693 (and b!920653 d!280375)))

(declare-fun lambda!29952 () Int)

(assert (=> bs!236693 (not (= lambda!29952 lambda!29946))))

(declare-fun bs!236694 () Bool)

(assert (= bs!236694 (and b!920653 b!920163)))

(assert (=> bs!236694 (not (= lambda!29952 lambda!29913))))

(declare-fun bs!236695 () Bool)

(assert (= bs!236695 (and b!920653 b!920652)))

(assert (=> bs!236695 (not (= lambda!29952 lambda!29951))))

(declare-fun bs!236696 () Bool)

(assert (= bs!236696 (and b!920653 b!920161)))

(assert (=> bs!236696 (= (and (= (regOne!5462 lt!338301) (regOne!5462 r!15766)) (= (regTwo!5462 lt!338301) (regTwo!5462 r!15766))) (= lambda!29952 lambda!29912))))

(declare-fun bs!236697 () Bool)

(assert (= bs!236697 (and b!920653 d!280361)))

(assert (=> bs!236697 (not (= lambda!29952 lambda!29942))))

(assert (=> bs!236696 (not (= lambda!29952 lambda!29911))))

(declare-fun bs!236698 () Bool)

(assert (= bs!236698 (and b!920653 d!280371)))

(assert (=> bs!236698 (= (and (= (regOne!5462 lt!338301) lt!338298) (= (regTwo!5462 lt!338301) lt!338300)) (= lambda!29952 lambda!29945))))

(assert (=> bs!236694 (= (and (= (regOne!5462 lt!338301) lt!338298) (= (regTwo!5462 lt!338301) lt!338300)) (= lambda!29952 lambda!29914))))

(declare-fun bs!236699 () Bool)

(assert (= bs!236699 (and b!920653 d!280357)))

(assert (=> bs!236699 (not (= lambda!29952 lambda!29937))))

(assert (=> bs!236698 (not (= lambda!29952 lambda!29944))))

(assert (=> bs!236697 (= (and (= (regOne!5462 lt!338301) (regOne!5462 r!15766)) (= (regTwo!5462 lt!338301) (regTwo!5462 r!15766))) (= lambda!29952 lambda!29943))))

(assert (=> b!920653 true))

(assert (=> b!920653 true))

(declare-fun b!920645 () Bool)

(declare-fun e!599469 () Bool)

(assert (=> b!920645 (= e!599469 (= s!10566 (Cons!9689 (c!149242 lt!338301) Nil!9689)))))

(declare-fun b!920646 () Bool)

(declare-fun c!149362 () Bool)

(assert (=> b!920646 (= c!149362 ((_ is ElementMatch!2475) lt!338301))))

(declare-fun e!599468 () Bool)

(assert (=> b!920646 (= e!599468 e!599469)))

(declare-fun b!920647 () Bool)

(declare-fun e!599472 () Bool)

(assert (=> b!920647 (= e!599472 (matchRSpec!276 (regTwo!5463 lt!338301) s!10566))))

(declare-fun b!920648 () Bool)

(declare-fun res!418537 () Bool)

(declare-fun e!599467 () Bool)

(assert (=> b!920648 (=> res!418537 e!599467)))

(declare-fun call!55973 () Bool)

(assert (=> b!920648 (= res!418537 call!55973)))

(declare-fun e!599471 () Bool)

(assert (=> b!920648 (= e!599471 e!599467)))

(declare-fun b!920649 () Bool)

(declare-fun e!599473 () Bool)

(assert (=> b!920649 (= e!599473 e!599472)))

(declare-fun res!418538 () Bool)

(assert (=> b!920649 (= res!418538 (matchRSpec!276 (regOne!5463 lt!338301) s!10566))))

(assert (=> b!920649 (=> res!418538 e!599472)))

(declare-fun b!920650 () Bool)

(declare-fun e!599470 () Bool)

(assert (=> b!920650 (= e!599470 call!55973)))

(declare-fun bm!55968 () Bool)

(assert (=> bm!55968 (= call!55973 (isEmpty!5930 s!10566))))

(declare-fun b!920651 () Bool)

(assert (=> b!920651 (= e!599470 e!599468)))

(declare-fun res!418539 () Bool)

(assert (=> b!920651 (= res!418539 (not ((_ is EmptyLang!2475) lt!338301)))))

(assert (=> b!920651 (=> (not res!418539) (not e!599468))))

(declare-fun d!280381 () Bool)

(declare-fun c!149360 () Bool)

(assert (=> d!280381 (= c!149360 ((_ is EmptyExpr!2475) lt!338301))))

(assert (=> d!280381 (= (matchRSpec!276 lt!338301 s!10566) e!599470)))

(declare-fun call!55974 () Bool)

(assert (=> b!920652 (= e!599467 call!55974)))

(assert (=> b!920653 (= e!599471 call!55974)))

(declare-fun b!920654 () Bool)

(assert (=> b!920654 (= e!599473 e!599471)))

(declare-fun c!149361 () Bool)

(assert (=> b!920654 (= c!149361 ((_ is Star!2475) lt!338301))))

(declare-fun bm!55969 () Bool)

(assert (=> bm!55969 (= call!55974 (Exists!246 (ite c!149361 lambda!29951 lambda!29952)))))

(declare-fun b!920655 () Bool)

(declare-fun c!149363 () Bool)

(assert (=> b!920655 (= c!149363 ((_ is Union!2475) lt!338301))))

(assert (=> b!920655 (= e!599469 e!599473)))

(assert (= (and d!280381 c!149360) b!920650))

(assert (= (and d!280381 (not c!149360)) b!920651))

(assert (= (and b!920651 res!418539) b!920646))

(assert (= (and b!920646 c!149362) b!920645))

(assert (= (and b!920646 (not c!149362)) b!920655))

(assert (= (and b!920655 c!149363) b!920649))

(assert (= (and b!920655 (not c!149363)) b!920654))

(assert (= (and b!920649 (not res!418538)) b!920647))

(assert (= (and b!920654 c!149361) b!920648))

(assert (= (and b!920654 (not c!149361)) b!920653))

(assert (= (and b!920648 (not res!418537)) b!920652))

(assert (= (or b!920652 b!920653) bm!55969))

(assert (= (or b!920650 b!920648) bm!55968))

(declare-fun m!1148061 () Bool)

(assert (=> b!920647 m!1148061))

(declare-fun m!1148063 () Bool)

(assert (=> b!920649 m!1148063))

(assert (=> bm!55968 m!1147785))

(declare-fun m!1148065 () Bool)

(assert (=> bm!55969 m!1148065))

(assert (=> b!920163 d!280381))

(declare-fun bs!236700 () Bool)

(declare-fun b!920663 () Bool)

(assert (= bs!236700 (and b!920663 d!280375)))

(declare-fun lambda!29953 () Int)

(assert (=> bs!236700 (not (= lambda!29953 lambda!29946))))

(declare-fun bs!236701 () Bool)

(assert (= bs!236701 (and b!920663 b!920163)))

(assert (=> bs!236701 (not (= lambda!29953 lambda!29913))))

(declare-fun bs!236702 () Bool)

(assert (= bs!236702 (and b!920663 b!920652)))

(assert (=> bs!236702 (= (and (= (reg!2804 r!15766) (reg!2804 lt!338301)) (= r!15766 lt!338301)) (= lambda!29953 lambda!29951))))

(declare-fun bs!236703 () Bool)

(assert (= bs!236703 (and b!920663 b!920161)))

(assert (=> bs!236703 (not (= lambda!29953 lambda!29912))))

(declare-fun bs!236704 () Bool)

(assert (= bs!236704 (and b!920663 d!280361)))

(assert (=> bs!236704 (not (= lambda!29953 lambda!29942))))

(assert (=> bs!236703 (not (= lambda!29953 lambda!29911))))

(declare-fun bs!236705 () Bool)

(assert (= bs!236705 (and b!920663 d!280371)))

(assert (=> bs!236705 (not (= lambda!29953 lambda!29945))))

(assert (=> bs!236701 (not (= lambda!29953 lambda!29914))))

(declare-fun bs!236706 () Bool)

(assert (= bs!236706 (and b!920663 d!280357)))

(assert (=> bs!236706 (not (= lambda!29953 lambda!29937))))

(declare-fun bs!236707 () Bool)

(assert (= bs!236707 (and b!920663 b!920653)))

(assert (=> bs!236707 (not (= lambda!29953 lambda!29952))))

(assert (=> bs!236705 (not (= lambda!29953 lambda!29944))))

(assert (=> bs!236704 (not (= lambda!29953 lambda!29943))))

(assert (=> b!920663 true))

(assert (=> b!920663 true))

(declare-fun bs!236708 () Bool)

(declare-fun b!920664 () Bool)

(assert (= bs!236708 (and b!920664 d!280375)))

(declare-fun lambda!29954 () Int)

(assert (=> bs!236708 (not (= lambda!29954 lambda!29946))))

(declare-fun bs!236709 () Bool)

(assert (= bs!236709 (and b!920664 b!920163)))

(assert (=> bs!236709 (not (= lambda!29954 lambda!29913))))

(declare-fun bs!236710 () Bool)

(assert (= bs!236710 (and b!920664 b!920652)))

(assert (=> bs!236710 (not (= lambda!29954 lambda!29951))))

(declare-fun bs!236711 () Bool)

(assert (= bs!236711 (and b!920664 b!920161)))

(assert (=> bs!236711 (= lambda!29954 lambda!29912)))

(declare-fun bs!236712 () Bool)

(assert (= bs!236712 (and b!920664 d!280361)))

(assert (=> bs!236712 (not (= lambda!29954 lambda!29942))))

(assert (=> bs!236711 (not (= lambda!29954 lambda!29911))))

(declare-fun bs!236713 () Bool)

(assert (= bs!236713 (and b!920664 d!280371)))

(assert (=> bs!236713 (= (and (= (regOne!5462 r!15766) lt!338298) (= (regTwo!5462 r!15766) lt!338300)) (= lambda!29954 lambda!29945))))

(assert (=> bs!236709 (= (and (= (regOne!5462 r!15766) lt!338298) (= (regTwo!5462 r!15766) lt!338300)) (= lambda!29954 lambda!29914))))

(declare-fun bs!236714 () Bool)

(assert (= bs!236714 (and b!920664 b!920653)))

(assert (=> bs!236714 (= (and (= (regOne!5462 r!15766) (regOne!5462 lt!338301)) (= (regTwo!5462 r!15766) (regTwo!5462 lt!338301))) (= lambda!29954 lambda!29952))))

(assert (=> bs!236713 (not (= lambda!29954 lambda!29944))))

(assert (=> bs!236712 (= lambda!29954 lambda!29943)))

(declare-fun bs!236715 () Bool)

(assert (= bs!236715 (and b!920664 b!920663)))

(assert (=> bs!236715 (not (= lambda!29954 lambda!29953))))

(declare-fun bs!236716 () Bool)

(assert (= bs!236716 (and b!920664 d!280357)))

(assert (=> bs!236716 (not (= lambda!29954 lambda!29937))))

(assert (=> b!920664 true))

(assert (=> b!920664 true))

(declare-fun b!920656 () Bool)

(declare-fun e!599476 () Bool)

(assert (=> b!920656 (= e!599476 (= s!10566 (Cons!9689 (c!149242 r!15766) Nil!9689)))))

(declare-fun b!920657 () Bool)

(declare-fun c!149366 () Bool)

(assert (=> b!920657 (= c!149366 ((_ is ElementMatch!2475) r!15766))))

(declare-fun e!599475 () Bool)

(assert (=> b!920657 (= e!599475 e!599476)))

(declare-fun b!920658 () Bool)

(declare-fun e!599479 () Bool)

(assert (=> b!920658 (= e!599479 (matchRSpec!276 (regTwo!5463 r!15766) s!10566))))

(declare-fun b!920659 () Bool)

(declare-fun res!418540 () Bool)

(declare-fun e!599474 () Bool)

(assert (=> b!920659 (=> res!418540 e!599474)))

(declare-fun call!55975 () Bool)

(assert (=> b!920659 (= res!418540 call!55975)))

(declare-fun e!599478 () Bool)

(assert (=> b!920659 (= e!599478 e!599474)))

(declare-fun b!920660 () Bool)

(declare-fun e!599480 () Bool)

(assert (=> b!920660 (= e!599480 e!599479)))

(declare-fun res!418541 () Bool)

(assert (=> b!920660 (= res!418541 (matchRSpec!276 (regOne!5463 r!15766) s!10566))))

(assert (=> b!920660 (=> res!418541 e!599479)))

(declare-fun b!920661 () Bool)

(declare-fun e!599477 () Bool)

(assert (=> b!920661 (= e!599477 call!55975)))

(declare-fun bm!55970 () Bool)

(assert (=> bm!55970 (= call!55975 (isEmpty!5930 s!10566))))

(declare-fun b!920662 () Bool)

(assert (=> b!920662 (= e!599477 e!599475)))

(declare-fun res!418542 () Bool)

(assert (=> b!920662 (= res!418542 (not ((_ is EmptyLang!2475) r!15766)))))

(assert (=> b!920662 (=> (not res!418542) (not e!599475))))

(declare-fun d!280383 () Bool)

(declare-fun c!149364 () Bool)

(assert (=> d!280383 (= c!149364 ((_ is EmptyExpr!2475) r!15766))))

(assert (=> d!280383 (= (matchRSpec!276 r!15766 s!10566) e!599477)))

(declare-fun call!55976 () Bool)

(assert (=> b!920663 (= e!599474 call!55976)))

(assert (=> b!920664 (= e!599478 call!55976)))

(declare-fun b!920665 () Bool)

(assert (=> b!920665 (= e!599480 e!599478)))

(declare-fun c!149365 () Bool)

(assert (=> b!920665 (= c!149365 ((_ is Star!2475) r!15766))))

(declare-fun bm!55971 () Bool)

(assert (=> bm!55971 (= call!55976 (Exists!246 (ite c!149365 lambda!29953 lambda!29954)))))

(declare-fun b!920666 () Bool)

(declare-fun c!149367 () Bool)

(assert (=> b!920666 (= c!149367 ((_ is Union!2475) r!15766))))

(assert (=> b!920666 (= e!599476 e!599480)))

(assert (= (and d!280383 c!149364) b!920661))

(assert (= (and d!280383 (not c!149364)) b!920662))

(assert (= (and b!920662 res!418542) b!920657))

(assert (= (and b!920657 c!149366) b!920656))

(assert (= (and b!920657 (not c!149366)) b!920666))

(assert (= (and b!920666 c!149367) b!920660))

(assert (= (and b!920666 (not c!149367)) b!920665))

(assert (= (and b!920660 (not res!418541)) b!920658))

(assert (= (and b!920665 c!149365) b!920659))

(assert (= (and b!920665 (not c!149365)) b!920664))

(assert (= (and b!920659 (not res!418540)) b!920663))

(assert (= (or b!920663 b!920664) bm!55971))

(assert (= (or b!920661 b!920659) bm!55970))

(declare-fun m!1148067 () Bool)

(assert (=> b!920658 m!1148067))

(declare-fun m!1148069 () Bool)

(assert (=> b!920660 m!1148069))

(assert (=> bm!55970 m!1147785))

(declare-fun m!1148071 () Bool)

(assert (=> bm!55971 m!1148071))

(assert (=> b!920157 d!280383))

(declare-fun bm!55972 () Bool)

(declare-fun call!55977 () Bool)

(assert (=> bm!55972 (= call!55977 (isEmpty!5930 s!10566))))

(declare-fun b!920667 () Bool)

(declare-fun e!599487 () Bool)

(declare-fun lt!338370 () Bool)

(assert (=> b!920667 (= e!599487 (not lt!338370))))

(declare-fun b!920668 () Bool)

(declare-fun e!599483 () Bool)

(declare-fun e!599484 () Bool)

(assert (=> b!920668 (= e!599483 e!599484)))

(declare-fun res!418549 () Bool)

(assert (=> b!920668 (=> res!418549 e!599484)))

(assert (=> b!920668 (= res!418549 call!55977)))

(declare-fun b!920669 () Bool)

(declare-fun res!418546 () Bool)

(declare-fun e!599482 () Bool)

(assert (=> b!920669 (=> res!418546 e!599482)))

(declare-fun e!599481 () Bool)

(assert (=> b!920669 (= res!418546 e!599481)))

(declare-fun res!418545 () Bool)

(assert (=> b!920669 (=> (not res!418545) (not e!599481))))

(assert (=> b!920669 (= res!418545 lt!338370)))

(declare-fun b!920670 () Bool)

(declare-fun res!418548 () Bool)

(assert (=> b!920670 (=> (not res!418548) (not e!599481))))

(assert (=> b!920670 (= res!418548 (not call!55977))))

(declare-fun b!920671 () Bool)

(declare-fun e!599486 () Bool)

(assert (=> b!920671 (= e!599486 e!599487)))

(declare-fun c!149368 () Bool)

(assert (=> b!920671 (= c!149368 ((_ is EmptyLang!2475) r!15766))))

(declare-fun b!920672 () Bool)

(assert (=> b!920672 (= e!599484 (not (= (head!1650 s!10566) (c!149242 r!15766))))))

(declare-fun b!920673 () Bool)

(declare-fun res!418544 () Bool)

(assert (=> b!920673 (=> res!418544 e!599484)))

(assert (=> b!920673 (= res!418544 (not (isEmpty!5930 (tail!1212 s!10566))))))

(declare-fun d!280385 () Bool)

(assert (=> d!280385 e!599486))

(declare-fun c!149369 () Bool)

(assert (=> d!280385 (= c!149369 ((_ is EmptyExpr!2475) r!15766))))

(declare-fun e!599485 () Bool)

(assert (=> d!280385 (= lt!338370 e!599485)))

(declare-fun c!149370 () Bool)

(assert (=> d!280385 (= c!149370 (isEmpty!5930 s!10566))))

(assert (=> d!280385 (validRegex!944 r!15766)))

(assert (=> d!280385 (= (matchR!1013 r!15766 s!10566) lt!338370)))

(declare-fun b!920674 () Bool)

(assert (=> b!920674 (= e!599482 e!599483)))

(declare-fun res!418547 () Bool)

(assert (=> b!920674 (=> (not res!418547) (not e!599483))))

(assert (=> b!920674 (= res!418547 (not lt!338370))))

(declare-fun b!920675 () Bool)

(declare-fun res!418550 () Bool)

(assert (=> b!920675 (=> (not res!418550) (not e!599481))))

(assert (=> b!920675 (= res!418550 (isEmpty!5930 (tail!1212 s!10566)))))

(declare-fun b!920676 () Bool)

(assert (=> b!920676 (= e!599486 (= lt!338370 call!55977))))

(declare-fun b!920677 () Bool)

(assert (=> b!920677 (= e!599485 (matchR!1013 (derivativeStep!497 r!15766 (head!1650 s!10566)) (tail!1212 s!10566)))))

(declare-fun b!920678 () Bool)

(assert (=> b!920678 (= e!599485 (nullable!687 r!15766))))

(declare-fun b!920679 () Bool)

(assert (=> b!920679 (= e!599481 (= (head!1650 s!10566) (c!149242 r!15766)))))

(declare-fun b!920680 () Bool)

(declare-fun res!418543 () Bool)

(assert (=> b!920680 (=> res!418543 e!599482)))

(assert (=> b!920680 (= res!418543 (not ((_ is ElementMatch!2475) r!15766)))))

(assert (=> b!920680 (= e!599487 e!599482)))

(assert (= (and d!280385 c!149370) b!920678))

(assert (= (and d!280385 (not c!149370)) b!920677))

(assert (= (and d!280385 c!149369) b!920676))

(assert (= (and d!280385 (not c!149369)) b!920671))

(assert (= (and b!920671 c!149368) b!920667))

(assert (= (and b!920671 (not c!149368)) b!920680))

(assert (= (and b!920680 (not res!418543)) b!920669))

(assert (= (and b!920669 res!418545) b!920670))

(assert (= (and b!920670 res!418548) b!920675))

(assert (= (and b!920675 res!418550) b!920679))

(assert (= (and b!920669 (not res!418546)) b!920674))

(assert (= (and b!920674 res!418547) b!920668))

(assert (= (and b!920668 (not res!418549)) b!920673))

(assert (= (and b!920673 (not res!418544)) b!920672))

(assert (= (or b!920676 b!920668 b!920670) bm!55972))

(assert (=> b!920675 m!1147891))

(assert (=> b!920675 m!1147891))

(assert (=> b!920675 m!1147893))

(assert (=> b!920677 m!1147895))

(assert (=> b!920677 m!1147895))

(declare-fun m!1148073 () Bool)

(assert (=> b!920677 m!1148073))

(assert (=> b!920677 m!1147891))

(assert (=> b!920677 m!1148073))

(assert (=> b!920677 m!1147891))

(declare-fun m!1148075 () Bool)

(assert (=> b!920677 m!1148075))

(assert (=> b!920679 m!1147895))

(assert (=> d!280385 m!1147785))

(assert (=> d!280385 m!1147795))

(assert (=> b!920672 m!1147895))

(declare-fun m!1148077 () Bool)

(assert (=> b!920678 m!1148077))

(assert (=> b!920673 m!1147891))

(assert (=> b!920673 m!1147891))

(assert (=> b!920673 m!1147893))

(assert (=> bm!55972 m!1147785))

(assert (=> b!920157 d!280385))

(declare-fun d!280387 () Bool)

(assert (=> d!280387 (= (matchR!1013 r!15766 s!10566) (matchRSpec!276 r!15766 s!10566))))

(declare-fun lt!338371 () Unit!14569)

(assert (=> d!280387 (= lt!338371 (choose!5639 r!15766 s!10566))))

(assert (=> d!280387 (validRegex!944 r!15766)))

(assert (=> d!280387 (= (mainMatchTheorem!276 r!15766 s!10566) lt!338371)))

(declare-fun bs!236717 () Bool)

(assert (= bs!236717 d!280387))

(assert (=> bs!236717 m!1147791))

(assert (=> bs!236717 m!1147789))

(declare-fun m!1148079 () Bool)

(assert (=> bs!236717 m!1148079))

(assert (=> bs!236717 m!1147795))

(assert (=> b!920157 d!280387))

(declare-fun b!920685 () Bool)

(declare-fun e!599490 () Bool)

(declare-fun tp!286829 () Bool)

(assert (=> b!920685 (= e!599490 (and tp_is_empty!4593 tp!286829))))

(assert (=> b!920159 (= tp!286784 e!599490)))

(assert (= (and b!920159 ((_ is Cons!9689) (t!100751 s!10566))) b!920685))

(declare-fun e!599493 () Bool)

(assert (=> b!920160 (= tp!286788 e!599493)))

(declare-fun b!920697 () Bool)

(declare-fun tp!286842 () Bool)

(declare-fun tp!286844 () Bool)

(assert (=> b!920697 (= e!599493 (and tp!286842 tp!286844))))

(declare-fun b!920696 () Bool)

(assert (=> b!920696 (= e!599493 tp_is_empty!4593)))

(declare-fun b!920698 () Bool)

(declare-fun tp!286843 () Bool)

(assert (=> b!920698 (= e!599493 tp!286843)))

(declare-fun b!920699 () Bool)

(declare-fun tp!286840 () Bool)

(declare-fun tp!286841 () Bool)

(assert (=> b!920699 (= e!599493 (and tp!286840 tp!286841))))

(assert (= (and b!920160 ((_ is ElementMatch!2475) (regOne!5462 r!15766))) b!920696))

(assert (= (and b!920160 ((_ is Concat!4308) (regOne!5462 r!15766))) b!920697))

(assert (= (and b!920160 ((_ is Star!2475) (regOne!5462 r!15766))) b!920698))

(assert (= (and b!920160 ((_ is Union!2475) (regOne!5462 r!15766))) b!920699))

(declare-fun e!599494 () Bool)

(assert (=> b!920160 (= tp!286787 e!599494)))

(declare-fun b!920701 () Bool)

(declare-fun tp!286847 () Bool)

(declare-fun tp!286849 () Bool)

(assert (=> b!920701 (= e!599494 (and tp!286847 tp!286849))))

(declare-fun b!920700 () Bool)

(assert (=> b!920700 (= e!599494 tp_is_empty!4593)))

(declare-fun b!920702 () Bool)

(declare-fun tp!286848 () Bool)

(assert (=> b!920702 (= e!599494 tp!286848)))

(declare-fun b!920703 () Bool)

(declare-fun tp!286845 () Bool)

(declare-fun tp!286846 () Bool)

(assert (=> b!920703 (= e!599494 (and tp!286845 tp!286846))))

(assert (= (and b!920160 ((_ is ElementMatch!2475) (regTwo!5462 r!15766))) b!920700))

(assert (= (and b!920160 ((_ is Concat!4308) (regTwo!5462 r!15766))) b!920701))

(assert (= (and b!920160 ((_ is Star!2475) (regTwo!5462 r!15766))) b!920702))

(assert (= (and b!920160 ((_ is Union!2475) (regTwo!5462 r!15766))) b!920703))

(declare-fun e!599495 () Bool)

(assert (=> b!920162 (= tp!286783 e!599495)))

(declare-fun b!920705 () Bool)

(declare-fun tp!286852 () Bool)

(declare-fun tp!286854 () Bool)

(assert (=> b!920705 (= e!599495 (and tp!286852 tp!286854))))

(declare-fun b!920704 () Bool)

(assert (=> b!920704 (= e!599495 tp_is_empty!4593)))

(declare-fun b!920706 () Bool)

(declare-fun tp!286853 () Bool)

(assert (=> b!920706 (= e!599495 tp!286853)))

(declare-fun b!920707 () Bool)

(declare-fun tp!286850 () Bool)

(declare-fun tp!286851 () Bool)

(assert (=> b!920707 (= e!599495 (and tp!286850 tp!286851))))

(assert (= (and b!920162 ((_ is ElementMatch!2475) (regOne!5463 r!15766))) b!920704))

(assert (= (and b!920162 ((_ is Concat!4308) (regOne!5463 r!15766))) b!920705))

(assert (= (and b!920162 ((_ is Star!2475) (regOne!5463 r!15766))) b!920706))

(assert (= (and b!920162 ((_ is Union!2475) (regOne!5463 r!15766))) b!920707))

(declare-fun e!599496 () Bool)

(assert (=> b!920162 (= tp!286786 e!599496)))

(declare-fun b!920709 () Bool)

(declare-fun tp!286857 () Bool)

(declare-fun tp!286859 () Bool)

(assert (=> b!920709 (= e!599496 (and tp!286857 tp!286859))))

(declare-fun b!920708 () Bool)

(assert (=> b!920708 (= e!599496 tp_is_empty!4593)))

(declare-fun b!920710 () Bool)

(declare-fun tp!286858 () Bool)

(assert (=> b!920710 (= e!599496 tp!286858)))

(declare-fun b!920711 () Bool)

(declare-fun tp!286855 () Bool)

(declare-fun tp!286856 () Bool)

(assert (=> b!920711 (= e!599496 (and tp!286855 tp!286856))))

(assert (= (and b!920162 ((_ is ElementMatch!2475) (regTwo!5463 r!15766))) b!920708))

(assert (= (and b!920162 ((_ is Concat!4308) (regTwo!5463 r!15766))) b!920709))

(assert (= (and b!920162 ((_ is Star!2475) (regTwo!5463 r!15766))) b!920710))

(assert (= (and b!920162 ((_ is Union!2475) (regTwo!5463 r!15766))) b!920711))

(declare-fun e!599497 () Bool)

(assert (=> b!920158 (= tp!286785 e!599497)))

(declare-fun b!920713 () Bool)

(declare-fun tp!286862 () Bool)

(declare-fun tp!286864 () Bool)

(assert (=> b!920713 (= e!599497 (and tp!286862 tp!286864))))

(declare-fun b!920712 () Bool)

(assert (=> b!920712 (= e!599497 tp_is_empty!4593)))

(declare-fun b!920714 () Bool)

(declare-fun tp!286863 () Bool)

(assert (=> b!920714 (= e!599497 tp!286863)))

(declare-fun b!920715 () Bool)

(declare-fun tp!286860 () Bool)

(declare-fun tp!286861 () Bool)

(assert (=> b!920715 (= e!599497 (and tp!286860 tp!286861))))

(assert (= (and b!920158 ((_ is ElementMatch!2475) (reg!2804 r!15766))) b!920712))

(assert (= (and b!920158 ((_ is Concat!4308) (reg!2804 r!15766))) b!920713))

(assert (= (and b!920158 ((_ is Star!2475) (reg!2804 r!15766))) b!920714))

(assert (= (and b!920158 ((_ is Union!2475) (reg!2804 r!15766))) b!920715))

(check-sat (not d!280377) (not b!920355) (not d!280371) (not d!280313) (not b!920705) (not b!920581) (not b!920711) (not b!920580) (not b!920660) (not bm!55968) (not b!920698) (not bm!55906) (not b!920579) (not b!920348) (not b!920672) (not b!920697) (not b!920713) (not bm!55971) (not b!920649) (not b!920685) (not b!920596) (not b!920286) (not b!920351) (not b!920699) (not b!920702) (not bm!55911) (not bm!55969) (not b!920675) (not bm!55955) (not d!280361) (not bm!55950) (not b!920715) (not b!920701) (not b!920353) (not b!920490) (not b!920678) (not d!280357) (not d!280375) (not bm!55972) (not b!920501) (not b!920608) (not b!920583) (not b!920706) (not b!920607) (not b!920647) (not bm!55963) (not b!920710) (not b!920703) (not d!280363) (not bm!55908) (not b!920349) (not d!280359) (not b!920658) (not b!920609) (not b!920606) (not b!920605) (not b!920354) tp_is_empty!4593 (not b!920582) (not d!280355) (not d!280345) (not bm!55958) (not d!280349) (not d!280367) (not bm!55953) (not b!920612) (not b!920714) (not b!920709) (not b!920673) (not b!920707) (not d!280373) (not d!280337) (not b!920677) (not bm!55970) (not b!920586) (not bm!55961) (not d!280379) (not d!280387) (not d!280385) (not d!280369) (not b!920679))
(check-sat)
