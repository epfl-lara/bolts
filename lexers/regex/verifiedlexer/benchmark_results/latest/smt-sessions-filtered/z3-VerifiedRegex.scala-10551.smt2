; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543270 () Bool)

(assert start!543270)

(declare-fun res!2186921 () Bool)

(declare-fun e!3202339 () Bool)

(assert (=> start!543270 (=> (not res!2186921) (not e!3202339))))

(declare-datatypes ((C!29052 0))(
  ( (C!29053 (val!24178 Int)) )
))
(declare-datatypes ((Regex!14393 0))(
  ( (ElementMatch!14393 (c!883646 C!29052)) (Concat!23238 (regOne!29298 Regex!14393) (regTwo!29298 Regex!14393)) (EmptyExpr!14393) (Star!14393 (reg!14722 Regex!14393)) (EmptyLang!14393) (Union!14393 (regOne!29299 Regex!14393) (regTwo!29299 Regex!14393)) )
))
(declare-datatypes ((List!59718 0))(
  ( (Nil!59594) (Cons!59594 (h!66042 Regex!14393) (t!372745 List!59718)) )
))
(declare-datatypes ((Context!7554 0))(
  ( (Context!7555 (exprs!4277 List!59718)) )
))
(declare-fun ctx!74 () Context!7554)

(declare-fun lostCause!1346 (Context!7554) Bool)

(assert (=> start!543270 (= res!2186921 (lostCause!1346 ctx!74))))

(assert (=> start!543270 e!3202339))

(declare-fun e!3202340 () Bool)

(declare-fun inv!79163 (Context!7554) Bool)

(assert (=> start!543270 (and (inv!79163 ctx!74) e!3202340)))

(declare-fun b!5134202 () Bool)

(assert (=> b!5134202 (= e!3202339 (not (lostCause!1346 (Context!7555 (t!372745 (exprs!4277 ctx!74))))))))

(declare-fun lostCause!1347 (Regex!14393) Bool)

(assert (=> b!5134202 (not (lostCause!1347 (h!66042 (exprs!4277 ctx!74))))))

(declare-datatypes ((Unit!150929 0))(
  ( (Unit!150930) )
))
(declare-fun lt!2118755 () Unit!150929)

(declare-fun lemmaNullableThenNotLostCause!44 (Regex!14393) Unit!150929)

(assert (=> b!5134202 (= lt!2118755 (lemmaNullableThenNotLostCause!44 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134200 () Bool)

(declare-fun res!2186922 () Bool)

(assert (=> b!5134200 (=> (not res!2186922) (not e!3202339))))

(get-info :version)

(assert (=> b!5134200 (= res!2186922 ((_ is Cons!59594) (exprs!4277 ctx!74)))))

(declare-fun b!5134203 () Bool)

(declare-fun tp!1432133 () Bool)

(assert (=> b!5134203 (= e!3202340 tp!1432133)))

(declare-fun b!5134201 () Bool)

(declare-fun res!2186920 () Bool)

(assert (=> b!5134201 (=> (not res!2186920) (not e!3202339))))

(declare-fun nullable!4766 (Regex!14393) Bool)

(assert (=> b!5134201 (= res!2186920 (nullable!4766 (h!66042 (exprs!4277 ctx!74))))))

(assert (= (and start!543270 res!2186921) b!5134200))

(assert (= (and b!5134200 res!2186922) b!5134201))

(assert (= (and b!5134201 res!2186920) b!5134202))

(assert (= start!543270 b!5134203))

(declare-fun m!6200106 () Bool)

(assert (=> start!543270 m!6200106))

(declare-fun m!6200108 () Bool)

(assert (=> start!543270 m!6200108))

(declare-fun m!6200110 () Bool)

(assert (=> b!5134202 m!6200110))

(declare-fun m!6200112 () Bool)

(assert (=> b!5134202 m!6200112))

(declare-fun m!6200114 () Bool)

(assert (=> b!5134202 m!6200114))

(declare-fun m!6200116 () Bool)

(assert (=> b!5134201 m!6200116))

(check-sat (not b!5134201) (not start!543270) (not b!5134202) (not b!5134203))
(check-sat)
(get-model)

(declare-fun d!1661282 () Bool)

(declare-fun nullableFct!1290 (Regex!14393) Bool)

(assert (=> d!1661282 (= (nullable!4766 (h!66042 (exprs!4277 ctx!74))) (nullableFct!1290 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun bs!1199451 () Bool)

(assert (= bs!1199451 d!1661282))

(declare-fun m!6200118 () Bool)

(assert (=> bs!1199451 m!6200118))

(assert (=> b!5134201 d!1661282))

(declare-fun d!1661284 () Bool)

(declare-fun lambda!255537 () Int)

(declare-fun exists!1718 (List!59718 Int) Bool)

(assert (=> d!1661284 (= (lostCause!1346 ctx!74) (exists!1718 (exprs!4277 ctx!74) lambda!255537))))

(declare-fun bs!1199461 () Bool)

(assert (= bs!1199461 d!1661284))

(declare-fun m!6200134 () Bool)

(assert (=> bs!1199461 m!6200134))

(assert (=> start!543270 d!1661284))

(declare-fun bs!1199462 () Bool)

(declare-fun d!1661296 () Bool)

(assert (= bs!1199462 (and d!1661296 d!1661284)))

(declare-fun lambda!255540 () Int)

(assert (=> bs!1199462 (not (= lambda!255540 lambda!255537))))

(declare-fun forall!13842 (List!59718 Int) Bool)

(assert (=> d!1661296 (= (inv!79163 ctx!74) (forall!13842 (exprs!4277 ctx!74) lambda!255540))))

(declare-fun bs!1199463 () Bool)

(assert (= bs!1199463 d!1661296))

(declare-fun m!6200136 () Bool)

(assert (=> bs!1199463 m!6200136))

(assert (=> start!543270 d!1661296))

(declare-fun bs!1199464 () Bool)

(declare-fun d!1661298 () Bool)

(assert (= bs!1199464 (and d!1661298 d!1661284)))

(declare-fun lambda!255541 () Int)

(assert (=> bs!1199464 (= lambda!255541 lambda!255537)))

(declare-fun bs!1199465 () Bool)

(assert (= bs!1199465 (and d!1661298 d!1661296)))

(assert (=> bs!1199465 (not (= lambda!255541 lambda!255540))))

(assert (=> d!1661298 (= (lostCause!1346 (Context!7555 (t!372745 (exprs!4277 ctx!74)))) (exists!1718 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))) lambda!255541))))

(declare-fun bs!1199466 () Bool)

(assert (= bs!1199466 d!1661298))

(declare-fun m!6200138 () Bool)

(assert (=> bs!1199466 m!6200138))

(assert (=> b!5134202 d!1661298))

(declare-fun d!1661300 () Bool)

(declare-fun lostCauseFct!321 (Regex!14393) Bool)

(assert (=> d!1661300 (= (lostCause!1347 (h!66042 (exprs!4277 ctx!74))) (lostCauseFct!321 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun bs!1199467 () Bool)

(assert (= bs!1199467 d!1661300))

(declare-fun m!6200140 () Bool)

(assert (=> bs!1199467 m!6200140))

(assert (=> b!5134202 d!1661300))

(declare-fun d!1661302 () Bool)

(assert (=> d!1661302 (not (lostCause!1347 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun lt!2118761 () Unit!150929)

(declare-fun choose!37963 (Regex!14393) Unit!150929)

(assert (=> d!1661302 (= lt!2118761 (choose!37963 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun validRegex!6253 (Regex!14393) Bool)

(assert (=> d!1661302 (validRegex!6253 (h!66042 (exprs!4277 ctx!74)))))

(assert (=> d!1661302 (= (lemmaNullableThenNotLostCause!44 (h!66042 (exprs!4277 ctx!74))) lt!2118761)))

(declare-fun bs!1199468 () Bool)

(assert (= bs!1199468 d!1661302))

(assert (=> bs!1199468 m!6200112))

(declare-fun m!6200142 () Bool)

(assert (=> bs!1199468 m!6200142))

(declare-fun m!6200144 () Bool)

(assert (=> bs!1199468 m!6200144))

(assert (=> b!5134202 d!1661302))

(declare-fun b!5134213 () Bool)

(declare-fun e!3202346 () Bool)

(declare-fun tp!1432144 () Bool)

(declare-fun tp!1432145 () Bool)

(assert (=> b!5134213 (= e!3202346 (and tp!1432144 tp!1432145))))

(assert (=> b!5134203 (= tp!1432133 e!3202346)))

(assert (= (and b!5134203 ((_ is Cons!59594) (exprs!4277 ctx!74))) b!5134213))

(check-sat (not b!5134213) (not d!1661296) (not d!1661300) (not d!1661282) (not d!1661284) (not d!1661302) (not d!1661298))
(check-sat)
(get-model)

(declare-fun bs!1199469 () Bool)

(declare-fun d!1661306 () Bool)

(assert (= bs!1199469 (and d!1661306 d!1661284)))

(declare-fun lambda!255544 () Int)

(assert (=> bs!1199469 (not (= lambda!255544 lambda!255537))))

(declare-fun bs!1199470 () Bool)

(assert (= bs!1199470 (and d!1661306 d!1661296)))

(assert (=> bs!1199470 (not (= lambda!255544 lambda!255540))))

(declare-fun bs!1199471 () Bool)

(assert (= bs!1199471 (and d!1661306 d!1661298)))

(assert (=> bs!1199471 (not (= lambda!255544 lambda!255541))))

(assert (=> d!1661306 true))

(declare-fun order!26907 () Int)

(declare-fun dynLambda!23728 (Int Int) Int)

(assert (=> d!1661306 (< (dynLambda!23728 order!26907 lambda!255537) (dynLambda!23728 order!26907 lambda!255544))))

(assert (=> d!1661306 (= (exists!1718 (exprs!4277 ctx!74) lambda!255537) (not (forall!13842 (exprs!4277 ctx!74) lambda!255544)))))

(declare-fun bs!1199472 () Bool)

(assert (= bs!1199472 d!1661306))

(declare-fun m!6200146 () Bool)

(assert (=> bs!1199472 m!6200146))

(assert (=> d!1661284 d!1661306))

(declare-fun d!1661308 () Bool)

(declare-fun res!2186942 () Bool)

(declare-fun e!3202369 () Bool)

(assert (=> d!1661308 (=> res!2186942 e!3202369)))

(assert (=> d!1661308 (= res!2186942 ((_ is Nil!59594) (exprs!4277 ctx!74)))))

(assert (=> d!1661308 (= (forall!13842 (exprs!4277 ctx!74) lambda!255540) e!3202369)))

(declare-fun b!5134241 () Bool)

(declare-fun e!3202370 () Bool)

(assert (=> b!5134241 (= e!3202369 e!3202370)))

(declare-fun res!2186943 () Bool)

(assert (=> b!5134241 (=> (not res!2186943) (not e!3202370))))

(declare-fun dynLambda!23729 (Int Regex!14393) Bool)

(assert (=> b!5134241 (= res!2186943 (dynLambda!23729 lambda!255540 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134242 () Bool)

(assert (=> b!5134242 (= e!3202370 (forall!13842 (t!372745 (exprs!4277 ctx!74)) lambda!255540))))

(assert (= (and d!1661308 (not res!2186942)) b!5134241))

(assert (= (and b!5134241 res!2186943) b!5134242))

(declare-fun b_lambda!200013 () Bool)

(assert (=> (not b_lambda!200013) (not b!5134241)))

(declare-fun m!6200156 () Bool)

(assert (=> b!5134241 m!6200156))

(declare-fun m!6200158 () Bool)

(assert (=> b!5134242 m!6200158))

(assert (=> d!1661296 d!1661308))

(declare-fun bs!1199473 () Bool)

(declare-fun d!1661312 () Bool)

(assert (= bs!1199473 (and d!1661312 d!1661284)))

(declare-fun lambda!255545 () Int)

(assert (=> bs!1199473 (not (= lambda!255545 lambda!255537))))

(declare-fun bs!1199474 () Bool)

(assert (= bs!1199474 (and d!1661312 d!1661296)))

(assert (=> bs!1199474 (not (= lambda!255545 lambda!255540))))

(declare-fun bs!1199475 () Bool)

(assert (= bs!1199475 (and d!1661312 d!1661298)))

(assert (=> bs!1199475 (not (= lambda!255545 lambda!255541))))

(declare-fun bs!1199476 () Bool)

(assert (= bs!1199476 (and d!1661312 d!1661306)))

(assert (=> bs!1199476 (= (= lambda!255541 lambda!255537) (= lambda!255545 lambda!255544))))

(assert (=> d!1661312 true))

(assert (=> d!1661312 (< (dynLambda!23728 order!26907 lambda!255541) (dynLambda!23728 order!26907 lambda!255545))))

(assert (=> d!1661312 (= (exists!1718 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))) lambda!255541) (not (forall!13842 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))) lambda!255545)))))

(declare-fun bs!1199477 () Bool)

(assert (= bs!1199477 d!1661312))

(declare-fun m!6200160 () Bool)

(assert (=> bs!1199477 m!6200160))

(assert (=> d!1661298 d!1661312))

(assert (=> d!1661302 d!1661300))

(declare-fun d!1661314 () Bool)

(assert (=> d!1661314 (not (lostCause!1347 (h!66042 (exprs!4277 ctx!74))))))

(assert (=> d!1661314 true))

(declare-fun _$98!234 () Unit!150929)

(assert (=> d!1661314 (= (choose!37963 (h!66042 (exprs!4277 ctx!74))) _$98!234)))

(declare-fun bs!1199478 () Bool)

(assert (= bs!1199478 d!1661314))

(assert (=> bs!1199478 m!6200112))

(assert (=> d!1661302 d!1661314))

(declare-fun b!5134283 () Bool)

(declare-fun e!3202403 () Bool)

(declare-fun call!357503 () Bool)

(assert (=> b!5134283 (= e!3202403 call!357503)))

(declare-fun b!5134284 () Bool)

(declare-fun e!3202409 () Bool)

(declare-fun e!3202407 () Bool)

(assert (=> b!5134284 (= e!3202409 e!3202407)))

(declare-fun c!883656 () Bool)

(assert (=> b!5134284 (= c!883656 ((_ is Union!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134285 () Bool)

(declare-fun res!2186971 () Bool)

(assert (=> b!5134285 (=> (not res!2186971) (not e!3202403))))

(declare-fun call!357502 () Bool)

(assert (=> b!5134285 (= res!2186971 call!357502)))

(assert (=> b!5134285 (= e!3202407 e!3202403)))

(declare-fun b!5134286 () Bool)

(declare-fun e!3202404 () Bool)

(declare-fun e!3202408 () Bool)

(assert (=> b!5134286 (= e!3202404 e!3202408)))

(declare-fun res!2186973 () Bool)

(assert (=> b!5134286 (=> (not res!2186973) (not e!3202408))))

(assert (=> b!5134286 (= res!2186973 call!357503)))

(declare-fun bm!357497 () Bool)

(declare-fun c!883657 () Bool)

(declare-fun call!357504 () Bool)

(assert (=> bm!357497 (= call!357504 (validRegex!6253 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))

(declare-fun bm!357498 () Bool)

(assert (=> bm!357498 (= call!357503 call!357504)))

(declare-fun b!5134287 () Bool)

(declare-fun e!3202405 () Bool)

(assert (=> b!5134287 (= e!3202405 call!357504)))

(declare-fun b!5134288 () Bool)

(declare-fun res!2186972 () Bool)

(assert (=> b!5134288 (=> res!2186972 e!3202404)))

(assert (=> b!5134288 (= res!2186972 (not ((_ is Concat!23238) (h!66042 (exprs!4277 ctx!74)))))))

(assert (=> b!5134288 (= e!3202407 e!3202404)))

(declare-fun b!5134289 () Bool)

(declare-fun e!3202406 () Bool)

(assert (=> b!5134289 (= e!3202406 e!3202409)))

(assert (=> b!5134289 (= c!883657 ((_ is Star!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134290 () Bool)

(assert (=> b!5134290 (= e!3202409 e!3202405)))

(declare-fun res!2186970 () Bool)

(assert (=> b!5134290 (= res!2186970 (not (nullable!4766 (reg!14722 (h!66042 (exprs!4277 ctx!74))))))))

(assert (=> b!5134290 (=> (not res!2186970) (not e!3202405))))

(declare-fun b!5134291 () Bool)

(assert (=> b!5134291 (= e!3202408 call!357502)))

(declare-fun bm!357499 () Bool)

(assert (=> bm!357499 (= call!357502 (validRegex!6253 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun d!1661318 () Bool)

(declare-fun res!2186974 () Bool)

(assert (=> d!1661318 (=> res!2186974 e!3202406)))

(assert (=> d!1661318 (= res!2186974 ((_ is ElementMatch!14393) (h!66042 (exprs!4277 ctx!74))))))

(assert (=> d!1661318 (= (validRegex!6253 (h!66042 (exprs!4277 ctx!74))) e!3202406)))

(assert (= (and d!1661318 (not res!2186974)) b!5134289))

(assert (= (and b!5134289 c!883657) b!5134290))

(assert (= (and b!5134289 (not c!883657)) b!5134284))

(assert (= (and b!5134290 res!2186970) b!5134287))

(assert (= (and b!5134284 c!883656) b!5134285))

(assert (= (and b!5134284 (not c!883656)) b!5134288))

(assert (= (and b!5134285 res!2186971) b!5134283))

(assert (= (and b!5134288 (not res!2186972)) b!5134286))

(assert (= (and b!5134286 res!2186973) b!5134291))

(assert (= (or b!5134285 b!5134291) bm!357499))

(assert (= (or b!5134283 b!5134286) bm!357498))

(assert (= (or b!5134287 bm!357498) bm!357497))

(declare-fun m!6200168 () Bool)

(assert (=> bm!357497 m!6200168))

(declare-fun m!6200170 () Bool)

(assert (=> b!5134290 m!6200170))

(declare-fun m!6200172 () Bool)

(assert (=> bm!357499 m!6200172))

(assert (=> d!1661302 d!1661318))

(declare-fun bm!357506 () Bool)

(declare-fun call!357511 () Bool)

(declare-fun c!883661 () Bool)

(assert (=> bm!357506 (= call!357511 (nullable!4766 (ite c!883661 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun d!1661322 () Bool)

(declare-fun res!2186993 () Bool)

(declare-fun e!3202434 () Bool)

(assert (=> d!1661322 (=> res!2186993 e!3202434)))

(assert (=> d!1661322 (= res!2186993 ((_ is EmptyExpr!14393) (h!66042 (exprs!4277 ctx!74))))))

(assert (=> d!1661322 (= (nullableFct!1290 (h!66042 (exprs!4277 ctx!74))) e!3202434)))

(declare-fun b!5134317 () Bool)

(declare-fun e!3202432 () Bool)

(declare-fun e!3202433 () Bool)

(assert (=> b!5134317 (= e!3202432 e!3202433)))

(declare-fun res!2186995 () Bool)

(declare-fun call!357512 () Bool)

(assert (=> b!5134317 (= res!2186995 call!357512)))

(assert (=> b!5134317 (=> (not res!2186995) (not e!3202433))))

(declare-fun b!5134318 () Bool)

(declare-fun e!3202430 () Bool)

(declare-fun e!3202431 () Bool)

(assert (=> b!5134318 (= e!3202430 e!3202431)))

(declare-fun res!2186996 () Bool)

(assert (=> b!5134318 (=> res!2186996 e!3202431)))

(assert (=> b!5134318 (= res!2186996 ((_ is Star!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134319 () Bool)

(assert (=> b!5134319 (= e!3202431 e!3202432)))

(assert (=> b!5134319 (= c!883661 ((_ is Union!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun bm!357507 () Bool)

(assert (=> bm!357507 (= call!357512 (nullable!4766 (ite c!883661 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134320 () Bool)

(declare-fun e!3202435 () Bool)

(assert (=> b!5134320 (= e!3202435 call!357511)))

(declare-fun b!5134321 () Bool)

(assert (=> b!5134321 (= e!3202432 e!3202435)))

(declare-fun res!2186992 () Bool)

(assert (=> b!5134321 (= res!2186992 call!357512)))

(assert (=> b!5134321 (=> res!2186992 e!3202435)))

(declare-fun b!5134322 () Bool)

(assert (=> b!5134322 (= e!3202434 e!3202430)))

(declare-fun res!2186994 () Bool)

(assert (=> b!5134322 (=> (not res!2186994) (not e!3202430))))

(assert (=> b!5134322 (= res!2186994 (and (not ((_ is EmptyLang!14393) (h!66042 (exprs!4277 ctx!74)))) (not ((_ is ElementMatch!14393) (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134323 () Bool)

(assert (=> b!5134323 (= e!3202433 call!357511)))

(assert (= (and d!1661322 (not res!2186993)) b!5134322))

(assert (= (and b!5134322 res!2186994) b!5134318))

(assert (= (and b!5134318 (not res!2186996)) b!5134319))

(assert (= (and b!5134319 c!883661) b!5134321))

(assert (= (and b!5134319 (not c!883661)) b!5134317))

(assert (= (and b!5134321 (not res!2186992)) b!5134320))

(assert (= (and b!5134317 res!2186995) b!5134323))

(assert (= (or b!5134320 b!5134323) bm!357506))

(assert (= (or b!5134321 b!5134317) bm!357507))

(declare-fun m!6200180 () Bool)

(assert (=> bm!357506 m!6200180))

(declare-fun m!6200182 () Bool)

(assert (=> bm!357507 m!6200182))

(assert (=> d!1661282 d!1661322))

(declare-fun bm!357521 () Bool)

(declare-fun call!357526 () Bool)

(declare-fun c!883670 () Bool)

(assert (=> bm!357521 (= call!357526 (lostCause!1347 (ite c!883670 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134376 () Bool)

(declare-fun e!3202476 () Bool)

(assert (=> b!5134376 (= e!3202476 call!357526)))

(declare-fun b!5134377 () Bool)

(declare-fun e!3202475 () Bool)

(declare-fun e!3202473 () Bool)

(assert (=> b!5134377 (= e!3202475 e!3202473)))

(assert (=> b!5134377 (= c!883670 ((_ is Union!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134378 () Bool)

(declare-fun e!3202471 () Bool)

(declare-fun call!357527 () Bool)

(assert (=> b!5134378 (= e!3202471 call!357527)))

(declare-fun d!1661330 () Bool)

(declare-fun lt!2118767 () Bool)

(declare-datatypes ((List!59720 0))(
  ( (Nil!59596) (Cons!59596 (h!66044 C!29052) (t!372747 List!59720)) )
))
(declare-datatypes ((Option!14755 0))(
  ( (None!14754) (Some!14754 (v!50783 List!59720)) )
))
(declare-fun isEmpty!32016 (Option!14755) Bool)

(declare-fun getLanguageWitness!892 (Regex!14393) Option!14755)

(assert (=> d!1661330 (= lt!2118767 (isEmpty!32016 (getLanguageWitness!892 (h!66042 (exprs!4277 ctx!74)))))))

(declare-fun e!3202474 () Bool)

(assert (=> d!1661330 (= lt!2118767 e!3202474)))

(declare-fun res!2187021 () Bool)

(assert (=> d!1661330 (=> (not res!2187021) (not e!3202474))))

(assert (=> d!1661330 (= res!2187021 (not ((_ is EmptyExpr!14393) (h!66042 (exprs!4277 ctx!74)))))))

(assert (=> d!1661330 (= (lostCauseFct!321 (h!66042 (exprs!4277 ctx!74))) lt!2118767)))

(declare-fun b!5134379 () Bool)

(declare-fun e!3202472 () Bool)

(assert (=> b!5134379 (= e!3202474 e!3202472)))

(declare-fun res!2187023 () Bool)

(assert (=> b!5134379 (=> res!2187023 e!3202472)))

(assert (=> b!5134379 (= res!2187023 ((_ is EmptyLang!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun bm!357522 () Bool)

(assert (=> bm!357522 (= call!357527 (lostCause!1347 (ite c!883670 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134380 () Bool)

(assert (=> b!5134380 (= e!3202472 e!3202475)))

(declare-fun res!2187024 () Bool)

(assert (=> b!5134380 (=> (not res!2187024) (not e!3202475))))

(assert (=> b!5134380 (= res!2187024 (and (not ((_ is ElementMatch!14393) (h!66042 (exprs!4277 ctx!74)))) (not ((_ is Star!14393) (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134381 () Bool)

(assert (=> b!5134381 (= e!3202473 e!3202471)))

(declare-fun res!2187020 () Bool)

(assert (=> b!5134381 (= res!2187020 call!357526)))

(assert (=> b!5134381 (=> (not res!2187020) (not e!3202471))))

(declare-fun b!5134382 () Bool)

(assert (=> b!5134382 (= e!3202473 e!3202476)))

(declare-fun res!2187022 () Bool)

(assert (=> b!5134382 (= res!2187022 call!357527)))

(assert (=> b!5134382 (=> res!2187022 e!3202476)))

(assert (= (and d!1661330 res!2187021) b!5134379))

(assert (= (and b!5134379 (not res!2187023)) b!5134380))

(assert (= (and b!5134380 res!2187024) b!5134377))

(assert (= (and b!5134377 c!883670) b!5134381))

(assert (= (and b!5134377 (not c!883670)) b!5134382))

(assert (= (and b!5134381 res!2187020) b!5134378))

(assert (= (and b!5134382 (not res!2187022)) b!5134376))

(assert (= (or b!5134381 b!5134376) bm!357521))

(assert (= (or b!5134378 b!5134382) bm!357522))

(declare-fun m!6200190 () Bool)

(assert (=> bm!357521 m!6200190))

(declare-fun m!6200192 () Bool)

(assert (=> d!1661330 m!6200192))

(assert (=> d!1661330 m!6200192))

(declare-fun m!6200194 () Bool)

(assert (=> d!1661330 m!6200194))

(declare-fun m!6200196 () Bool)

(assert (=> bm!357522 m!6200196))

(assert (=> d!1661300 d!1661330))

(declare-fun b!5134396 () Bool)

(declare-fun e!3202479 () Bool)

(declare-fun tp!1432176 () Bool)

(declare-fun tp!1432175 () Bool)

(assert (=> b!5134396 (= e!3202479 (and tp!1432176 tp!1432175))))

(assert (=> b!5134213 (= tp!1432144 e!3202479)))

(declare-fun b!5134393 () Bool)

(declare-fun tp_is_empty!37943 () Bool)

(assert (=> b!5134393 (= e!3202479 tp_is_empty!37943)))

(declare-fun b!5134395 () Bool)

(declare-fun tp!1432177 () Bool)

(assert (=> b!5134395 (= e!3202479 tp!1432177)))

(declare-fun b!5134394 () Bool)

(declare-fun tp!1432174 () Bool)

(declare-fun tp!1432173 () Bool)

(assert (=> b!5134394 (= e!3202479 (and tp!1432174 tp!1432173))))

(assert (= (and b!5134213 ((_ is ElementMatch!14393) (h!66042 (exprs!4277 ctx!74)))) b!5134393))

(assert (= (and b!5134213 ((_ is Concat!23238) (h!66042 (exprs!4277 ctx!74)))) b!5134394))

(assert (= (and b!5134213 ((_ is Star!14393) (h!66042 (exprs!4277 ctx!74)))) b!5134395))

(assert (= (and b!5134213 ((_ is Union!14393) (h!66042 (exprs!4277 ctx!74)))) b!5134396))

(declare-fun b!5134397 () Bool)

(declare-fun e!3202480 () Bool)

(declare-fun tp!1432178 () Bool)

(declare-fun tp!1432179 () Bool)

(assert (=> b!5134397 (= e!3202480 (and tp!1432178 tp!1432179))))

(assert (=> b!5134213 (= tp!1432145 e!3202480)))

(assert (= (and b!5134213 ((_ is Cons!59594) (t!372745 (exprs!4277 ctx!74)))) b!5134397))

(declare-fun b_lambda!200019 () Bool)

(assert (= b_lambda!200013 (or d!1661296 b_lambda!200019)))

(declare-fun bs!1199490 () Bool)

(declare-fun d!1661334 () Bool)

(assert (= bs!1199490 (and d!1661334 d!1661296)))

(assert (=> bs!1199490 (= (dynLambda!23729 lambda!255540 (h!66042 (exprs!4277 ctx!74))) (validRegex!6253 (h!66042 (exprs!4277 ctx!74))))))

(assert (=> bs!1199490 m!6200144))

(assert (=> b!5134241 d!1661334))

(check-sat (not b!5134242) (not bs!1199490) (not b!5134397) (not d!1661330) (not bm!357506) (not bm!357499) (not bm!357521) (not d!1661306) (not d!1661314) (not b!5134396) (not d!1661312) (not b!5134395) (not bm!357507) tp_is_empty!37943 (not bm!357522) (not bm!357497) (not b_lambda!200019) (not b!5134290) (not b!5134394))
(check-sat)
(get-model)

(declare-fun d!1661336 () Bool)

(declare-fun res!2187025 () Bool)

(declare-fun e!3202481 () Bool)

(assert (=> d!1661336 (=> res!2187025 e!3202481)))

(assert (=> d!1661336 (= res!2187025 ((_ is Nil!59594) (t!372745 (exprs!4277 ctx!74))))))

(assert (=> d!1661336 (= (forall!13842 (t!372745 (exprs!4277 ctx!74)) lambda!255540) e!3202481)))

(declare-fun b!5134398 () Bool)

(declare-fun e!3202482 () Bool)

(assert (=> b!5134398 (= e!3202481 e!3202482)))

(declare-fun res!2187026 () Bool)

(assert (=> b!5134398 (=> (not res!2187026) (not e!3202482))))

(assert (=> b!5134398 (= res!2187026 (dynLambda!23729 lambda!255540 (h!66042 (t!372745 (exprs!4277 ctx!74)))))))

(declare-fun b!5134399 () Bool)

(assert (=> b!5134399 (= e!3202482 (forall!13842 (t!372745 (t!372745 (exprs!4277 ctx!74))) lambda!255540))))

(assert (= (and d!1661336 (not res!2187025)) b!5134398))

(assert (= (and b!5134398 res!2187026) b!5134399))

(declare-fun b_lambda!200021 () Bool)

(assert (=> (not b_lambda!200021) (not b!5134398)))

(declare-fun m!6200198 () Bool)

(assert (=> b!5134398 m!6200198))

(declare-fun m!6200200 () Bool)

(assert (=> b!5134399 m!6200200))

(assert (=> b!5134242 d!1661336))

(declare-fun d!1661338 () Bool)

(assert (=> d!1661338 (= (lostCause!1347 (ite c!883670 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) (lostCauseFct!321 (ite c!883670 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun bs!1199491 () Bool)

(assert (= bs!1199491 d!1661338))

(declare-fun m!6200202 () Bool)

(assert (=> bs!1199491 m!6200202))

(assert (=> bm!357522 d!1661338))

(declare-fun b!5134400 () Bool)

(declare-fun e!3202483 () Bool)

(declare-fun call!357529 () Bool)

(assert (=> b!5134400 (= e!3202483 call!357529)))

(declare-fun b!5134401 () Bool)

(declare-fun e!3202489 () Bool)

(declare-fun e!3202487 () Bool)

(assert (=> b!5134401 (= e!3202489 e!3202487)))

(declare-fun c!883671 () Bool)

(assert (=> b!5134401 (= c!883671 ((_ is Union!14393) (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134402 () Bool)

(declare-fun res!2187028 () Bool)

(assert (=> b!5134402 (=> (not res!2187028) (not e!3202483))))

(declare-fun call!357528 () Bool)

(assert (=> b!5134402 (= res!2187028 call!357528)))

(assert (=> b!5134402 (= e!3202487 e!3202483)))

(declare-fun b!5134403 () Bool)

(declare-fun e!3202484 () Bool)

(declare-fun e!3202488 () Bool)

(assert (=> b!5134403 (= e!3202484 e!3202488)))

(declare-fun res!2187030 () Bool)

(assert (=> b!5134403 (=> (not res!2187030) (not e!3202488))))

(assert (=> b!5134403 (= res!2187030 call!357529)))

(declare-fun call!357530 () Bool)

(declare-fun bm!357523 () Bool)

(declare-fun c!883672 () Bool)

(assert (=> bm!357523 (= call!357530 (validRegex!6253 (ite c!883672 (reg!14722 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) (ite c!883671 (regTwo!29299 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) (regOne!29298 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74)))))))))))

(declare-fun bm!357524 () Bool)

(assert (=> bm!357524 (= call!357529 call!357530)))

(declare-fun b!5134404 () Bool)

(declare-fun e!3202485 () Bool)

(assert (=> b!5134404 (= e!3202485 call!357530)))

(declare-fun b!5134405 () Bool)

(declare-fun res!2187029 () Bool)

(assert (=> b!5134405 (=> res!2187029 e!3202484)))

(assert (=> b!5134405 (= res!2187029 (not ((_ is Concat!23238) (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74)))))))))

(assert (=> b!5134405 (= e!3202487 e!3202484)))

(declare-fun b!5134406 () Bool)

(declare-fun e!3202486 () Bool)

(assert (=> b!5134406 (= e!3202486 e!3202489)))

(assert (=> b!5134406 (= c!883672 ((_ is Star!14393) (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134407 () Bool)

(assert (=> b!5134407 (= e!3202489 e!3202485)))

(declare-fun res!2187027 () Bool)

(assert (=> b!5134407 (= res!2187027 (not (nullable!4766 (reg!14722 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))))

(assert (=> b!5134407 (=> (not res!2187027) (not e!3202485))))

(declare-fun b!5134408 () Bool)

(assert (=> b!5134408 (= e!3202488 call!357528)))

(declare-fun bm!357525 () Bool)

(assert (=> bm!357525 (= call!357528 (validRegex!6253 (ite c!883671 (regOne!29299 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) (regTwo!29298 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))))

(declare-fun d!1661340 () Bool)

(declare-fun res!2187031 () Bool)

(assert (=> d!1661340 (=> res!2187031 e!3202486)))

(assert (=> d!1661340 (= res!2187031 ((_ is ElementMatch!14393) (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(assert (=> d!1661340 (= (validRegex!6253 (ite c!883656 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) e!3202486)))

(assert (= (and d!1661340 (not res!2187031)) b!5134406))

(assert (= (and b!5134406 c!883672) b!5134407))

(assert (= (and b!5134406 (not c!883672)) b!5134401))

(assert (= (and b!5134407 res!2187027) b!5134404))

(assert (= (and b!5134401 c!883671) b!5134402))

(assert (= (and b!5134401 (not c!883671)) b!5134405))

(assert (= (and b!5134402 res!2187028) b!5134400))

(assert (= (and b!5134405 (not res!2187029)) b!5134403))

(assert (= (and b!5134403 res!2187030) b!5134408))

(assert (= (or b!5134402 b!5134408) bm!357525))

(assert (= (or b!5134400 b!5134403) bm!357524))

(assert (= (or b!5134404 bm!357524) bm!357523))

(declare-fun m!6200204 () Bool)

(assert (=> bm!357523 m!6200204))

(declare-fun m!6200206 () Bool)

(assert (=> b!5134407 m!6200206))

(declare-fun m!6200208 () Bool)

(assert (=> bm!357525 m!6200208))

(assert (=> bm!357499 d!1661340))

(declare-fun d!1661342 () Bool)

(assert (=> d!1661342 (= (nullable!4766 (ite c!883661 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) (nullableFct!1290 (ite c!883661 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun bs!1199492 () Bool)

(assert (= bs!1199492 d!1661342))

(declare-fun m!6200210 () Bool)

(assert (=> bs!1199492 m!6200210))

(assert (=> bm!357507 d!1661342))

(assert (=> d!1661314 d!1661300))

(declare-fun d!1661344 () Bool)

(assert (=> d!1661344 (= (nullable!4766 (reg!14722 (h!66042 (exprs!4277 ctx!74)))) (nullableFct!1290 (reg!14722 (h!66042 (exprs!4277 ctx!74)))))))

(declare-fun bs!1199493 () Bool)

(assert (= bs!1199493 d!1661344))

(declare-fun m!6200212 () Bool)

(assert (=> bs!1199493 m!6200212))

(assert (=> b!5134290 d!1661344))

(assert (=> bs!1199490 d!1661318))

(declare-fun d!1661346 () Bool)

(assert (=> d!1661346 (= (lostCause!1347 (ite c!883670 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) (lostCauseFct!321 (ite c!883670 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun bs!1199494 () Bool)

(assert (= bs!1199494 d!1661346))

(declare-fun m!6200214 () Bool)

(assert (=> bs!1199494 m!6200214))

(assert (=> bm!357521 d!1661346))

(declare-fun d!1661348 () Bool)

(assert (=> d!1661348 (= (isEmpty!32016 (getLanguageWitness!892 (h!66042 (exprs!4277 ctx!74)))) (not ((_ is Some!14754) (getLanguageWitness!892 (h!66042 (exprs!4277 ctx!74))))))))

(assert (=> d!1661330 d!1661348))

(declare-fun b!5134441 () Bool)

(declare-fun e!3202508 () Option!14755)

(declare-fun e!3202512 () Option!14755)

(assert (=> b!5134441 (= e!3202508 e!3202512)))

(declare-fun lt!2118775 () Option!14755)

(declare-fun call!357535 () Option!14755)

(assert (=> b!5134441 (= lt!2118775 call!357535)))

(declare-fun c!883692 () Bool)

(assert (=> b!5134441 (= c!883692 ((_ is Some!14754) lt!2118775))))

(declare-fun b!5134442 () Bool)

(declare-fun e!3202509 () Option!14755)

(declare-fun lt!2118776 () Option!14755)

(declare-fun lt!2118774 () Option!14755)

(declare-fun ++!13061 (List!59720 List!59720) List!59720)

(assert (=> b!5134442 (= e!3202509 (Some!14754 (++!13061 (v!50783 lt!2118776) (v!50783 lt!2118774))))))

(declare-fun b!5134443 () Bool)

(declare-fun c!883694 () Bool)

(assert (=> b!5134443 (= c!883694 ((_ is Some!14754) lt!2118774))))

(assert (=> b!5134443 (= lt!2118774 call!357535)))

(declare-fun e!3202506 () Option!14755)

(assert (=> b!5134443 (= e!3202506 e!3202509)))

(declare-fun b!5134444 () Bool)

(declare-fun c!883690 () Bool)

(assert (=> b!5134444 (= c!883690 ((_ is Union!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun e!3202510 () Option!14755)

(assert (=> b!5134444 (= e!3202510 e!3202508)))

(declare-fun b!5134445 () Bool)

(assert (=> b!5134445 (= e!3202509 None!14754)))

(declare-fun d!1661350 () Bool)

(declare-fun c!883693 () Bool)

(assert (=> d!1661350 (= c!883693 ((_ is EmptyExpr!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun e!3202511 () Option!14755)

(assert (=> d!1661350 (= (getLanguageWitness!892 (h!66042 (exprs!4277 ctx!74))) e!3202511)))

(declare-fun b!5134446 () Bool)

(declare-fun e!3202507 () Option!14755)

(assert (=> b!5134446 (= e!3202511 e!3202507)))

(declare-fun c!883696 () Bool)

(assert (=> b!5134446 (= c!883696 ((_ is EmptyLang!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134447 () Bool)

(declare-fun call!357536 () Option!14755)

(assert (=> b!5134447 (= e!3202512 call!357536)))

(declare-fun bm!357530 () Bool)

(assert (=> bm!357530 (= call!357536 (getLanguageWitness!892 (ite c!883690 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134448 () Bool)

(assert (=> b!5134448 (= e!3202511 (Some!14754 Nil!59596))))

(declare-fun b!5134449 () Bool)

(declare-fun e!3202513 () Option!14755)

(assert (=> b!5134449 (= e!3202513 e!3202510)))

(declare-fun c!883691 () Bool)

(assert (=> b!5134449 (= c!883691 ((_ is Star!14393) (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134450 () Bool)

(declare-fun c!883689 () Bool)

(assert (=> b!5134450 (= c!883689 ((_ is ElementMatch!14393) (h!66042 (exprs!4277 ctx!74))))))

(assert (=> b!5134450 (= e!3202507 e!3202513)))

(declare-fun b!5134451 () Bool)

(assert (=> b!5134451 (= e!3202512 lt!2118775)))

(declare-fun b!5134452 () Bool)

(assert (=> b!5134452 (= e!3202507 None!14754)))

(declare-fun b!5134453 () Bool)

(assert (=> b!5134453 (= e!3202513 (Some!14754 (Cons!59596 (c!883646 (h!66042 (exprs!4277 ctx!74))) Nil!59596)))))

(declare-fun b!5134454 () Bool)

(assert (=> b!5134454 (= e!3202508 e!3202506)))

(assert (=> b!5134454 (= lt!2118776 call!357536)))

(declare-fun c!883695 () Bool)

(assert (=> b!5134454 (= c!883695 ((_ is Some!14754) lt!2118776))))

(declare-fun b!5134455 () Bool)

(assert (=> b!5134455 (= e!3202510 (Some!14754 Nil!59596))))

(declare-fun bm!357531 () Bool)

(assert (=> bm!357531 (= call!357535 (getLanguageWitness!892 (ite c!883690 (regOne!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun b!5134456 () Bool)

(assert (=> b!5134456 (= e!3202506 None!14754)))

(assert (= (and d!1661350 c!883693) b!5134448))

(assert (= (and d!1661350 (not c!883693)) b!5134446))

(assert (= (and b!5134446 c!883696) b!5134452))

(assert (= (and b!5134446 (not c!883696)) b!5134450))

(assert (= (and b!5134450 c!883689) b!5134453))

(assert (= (and b!5134450 (not c!883689)) b!5134449))

(assert (= (and b!5134449 c!883691) b!5134455))

(assert (= (and b!5134449 (not c!883691)) b!5134444))

(assert (= (and b!5134444 c!883690) b!5134441))

(assert (= (and b!5134444 (not c!883690)) b!5134454))

(assert (= (and b!5134441 c!883692) b!5134451))

(assert (= (and b!5134441 (not c!883692)) b!5134447))

(assert (= (and b!5134454 c!883695) b!5134443))

(assert (= (and b!5134454 (not c!883695)) b!5134456))

(assert (= (and b!5134443 c!883694) b!5134442))

(assert (= (and b!5134443 (not c!883694)) b!5134445))

(assert (= (or b!5134441 b!5134443) bm!357531))

(assert (= (or b!5134447 b!5134454) bm!357530))

(declare-fun m!6200216 () Bool)

(assert (=> b!5134442 m!6200216))

(declare-fun m!6200218 () Bool)

(assert (=> bm!357530 m!6200218))

(declare-fun m!6200220 () Bool)

(assert (=> bm!357531 m!6200220))

(assert (=> d!1661330 d!1661350))

(declare-fun d!1661352 () Bool)

(declare-fun res!2187032 () Bool)

(declare-fun e!3202514 () Bool)

(assert (=> d!1661352 (=> res!2187032 e!3202514)))

(assert (=> d!1661352 (= res!2187032 ((_ is Nil!59594) (exprs!4277 ctx!74)))))

(assert (=> d!1661352 (= (forall!13842 (exprs!4277 ctx!74) lambda!255544) e!3202514)))

(declare-fun b!5134457 () Bool)

(declare-fun e!3202515 () Bool)

(assert (=> b!5134457 (= e!3202514 e!3202515)))

(declare-fun res!2187033 () Bool)

(assert (=> b!5134457 (=> (not res!2187033) (not e!3202515))))

(assert (=> b!5134457 (= res!2187033 (dynLambda!23729 lambda!255544 (h!66042 (exprs!4277 ctx!74))))))

(declare-fun b!5134458 () Bool)

(assert (=> b!5134458 (= e!3202515 (forall!13842 (t!372745 (exprs!4277 ctx!74)) lambda!255544))))

(assert (= (and d!1661352 (not res!2187032)) b!5134457))

(assert (= (and b!5134457 res!2187033) b!5134458))

(declare-fun b_lambda!200023 () Bool)

(assert (=> (not b_lambda!200023) (not b!5134457)))

(declare-fun m!6200222 () Bool)

(assert (=> b!5134457 m!6200222))

(declare-fun m!6200224 () Bool)

(assert (=> b!5134458 m!6200224))

(assert (=> d!1661306 d!1661352))

(declare-fun b!5134459 () Bool)

(declare-fun e!3202516 () Bool)

(declare-fun call!357538 () Bool)

(assert (=> b!5134459 (= e!3202516 call!357538)))

(declare-fun b!5134460 () Bool)

(declare-fun e!3202522 () Bool)

(declare-fun e!3202520 () Bool)

(assert (=> b!5134460 (= e!3202522 e!3202520)))

(declare-fun c!883697 () Bool)

(assert (=> b!5134460 (= c!883697 ((_ is Union!14393) (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))

(declare-fun b!5134461 () Bool)

(declare-fun res!2187035 () Bool)

(assert (=> b!5134461 (=> (not res!2187035) (not e!3202516))))

(declare-fun call!357537 () Bool)

(assert (=> b!5134461 (= res!2187035 call!357537)))

(assert (=> b!5134461 (= e!3202520 e!3202516)))

(declare-fun b!5134462 () Bool)

(declare-fun e!3202517 () Bool)

(declare-fun e!3202521 () Bool)

(assert (=> b!5134462 (= e!3202517 e!3202521)))

(declare-fun res!2187037 () Bool)

(assert (=> b!5134462 (=> (not res!2187037) (not e!3202521))))

(assert (=> b!5134462 (= res!2187037 call!357538)))

(declare-fun c!883698 () Bool)

(declare-fun call!357539 () Bool)

(declare-fun bm!357532 () Bool)

(assert (=> bm!357532 (= call!357539 (validRegex!6253 (ite c!883698 (reg!14722 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))) (ite c!883697 (regTwo!29299 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))) (regOne!29298 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))))))

(declare-fun bm!357533 () Bool)

(assert (=> bm!357533 (= call!357538 call!357539)))

(declare-fun b!5134463 () Bool)

(declare-fun e!3202518 () Bool)

(assert (=> b!5134463 (= e!3202518 call!357539)))

(declare-fun b!5134464 () Bool)

(declare-fun res!2187036 () Bool)

(assert (=> b!5134464 (=> res!2187036 e!3202517)))

(assert (=> b!5134464 (= res!2187036 (not ((_ is Concat!23238) (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))))))))

(assert (=> b!5134464 (= e!3202520 e!3202517)))

(declare-fun b!5134465 () Bool)

(declare-fun e!3202519 () Bool)

(assert (=> b!5134465 (= e!3202519 e!3202522)))

(assert (=> b!5134465 (= c!883698 ((_ is Star!14393) (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))

(declare-fun b!5134466 () Bool)

(assert (=> b!5134466 (= e!3202522 e!3202518)))

(declare-fun res!2187034 () Bool)

(assert (=> b!5134466 (= res!2187034 (not (nullable!4766 (reg!14722 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))))

(assert (=> b!5134466 (=> (not res!2187034) (not e!3202518))))

(declare-fun b!5134467 () Bool)

(assert (=> b!5134467 (= e!3202521 call!357537)))

(declare-fun bm!357534 () Bool)

(assert (=> bm!357534 (= call!357537 (validRegex!6253 (ite c!883697 (regOne!29299 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))) (regTwo!29298 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))))

(declare-fun d!1661354 () Bool)

(declare-fun res!2187038 () Bool)

(assert (=> d!1661354 (=> res!2187038 e!3202519)))

(assert (=> d!1661354 (= res!2187038 ((_ is ElementMatch!14393) (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))))))

(assert (=> d!1661354 (= (validRegex!6253 (ite c!883657 (reg!14722 (h!66042 (exprs!4277 ctx!74))) (ite c!883656 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regOne!29298 (h!66042 (exprs!4277 ctx!74)))))) e!3202519)))

(assert (= (and d!1661354 (not res!2187038)) b!5134465))

(assert (= (and b!5134465 c!883698) b!5134466))

(assert (= (and b!5134465 (not c!883698)) b!5134460))

(assert (= (and b!5134466 res!2187034) b!5134463))

(assert (= (and b!5134460 c!883697) b!5134461))

(assert (= (and b!5134460 (not c!883697)) b!5134464))

(assert (= (and b!5134461 res!2187035) b!5134459))

(assert (= (and b!5134464 (not res!2187036)) b!5134462))

(assert (= (and b!5134462 res!2187037) b!5134467))

(assert (= (or b!5134461 b!5134467) bm!357534))

(assert (= (or b!5134459 b!5134462) bm!357533))

(assert (= (or b!5134463 bm!357533) bm!357532))

(declare-fun m!6200226 () Bool)

(assert (=> bm!357532 m!6200226))

(declare-fun m!6200228 () Bool)

(assert (=> b!5134466 m!6200228))

(declare-fun m!6200230 () Bool)

(assert (=> bm!357534 m!6200230))

(assert (=> bm!357497 d!1661354))

(declare-fun d!1661356 () Bool)

(declare-fun res!2187039 () Bool)

(declare-fun e!3202523 () Bool)

(assert (=> d!1661356 (=> res!2187039 e!3202523)))

(assert (=> d!1661356 (= res!2187039 ((_ is Nil!59594) (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74))))))))

(assert (=> d!1661356 (= (forall!13842 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))) lambda!255545) e!3202523)))

(declare-fun b!5134468 () Bool)

(declare-fun e!3202524 () Bool)

(assert (=> b!5134468 (= e!3202523 e!3202524)))

(declare-fun res!2187040 () Bool)

(assert (=> b!5134468 (=> (not res!2187040) (not e!3202524))))

(assert (=> b!5134468 (= res!2187040 (dynLambda!23729 lambda!255545 (h!66042 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))))))))

(declare-fun b!5134469 () Bool)

(assert (=> b!5134469 (= e!3202524 (forall!13842 (t!372745 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74))))) lambda!255545))))

(assert (= (and d!1661356 (not res!2187039)) b!5134468))

(assert (= (and b!5134468 res!2187040) b!5134469))

(declare-fun b_lambda!200025 () Bool)

(assert (=> (not b_lambda!200025) (not b!5134468)))

(declare-fun m!6200232 () Bool)

(assert (=> b!5134468 m!6200232))

(declare-fun m!6200234 () Bool)

(assert (=> b!5134469 m!6200234))

(assert (=> d!1661312 d!1661356))

(declare-fun d!1661358 () Bool)

(assert (=> d!1661358 (= (nullable!4766 (ite c!883661 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) (nullableFct!1290 (ite c!883661 (regTwo!29299 (h!66042 (exprs!4277 ctx!74))) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))))))

(declare-fun bs!1199495 () Bool)

(assert (= bs!1199495 d!1661358))

(declare-fun m!6200236 () Bool)

(assert (=> bs!1199495 m!6200236))

(assert (=> bm!357506 d!1661358))

(declare-fun b!5134473 () Bool)

(declare-fun e!3202525 () Bool)

(declare-fun tp!1432183 () Bool)

(declare-fun tp!1432182 () Bool)

(assert (=> b!5134473 (= e!3202525 (and tp!1432183 tp!1432182))))

(assert (=> b!5134394 (= tp!1432174 e!3202525)))

(declare-fun b!5134470 () Bool)

(assert (=> b!5134470 (= e!3202525 tp_is_empty!37943)))

(declare-fun b!5134472 () Bool)

(declare-fun tp!1432184 () Bool)

(assert (=> b!5134472 (= e!3202525 tp!1432184)))

(declare-fun b!5134471 () Bool)

(declare-fun tp!1432181 () Bool)

(declare-fun tp!1432180 () Bool)

(assert (=> b!5134471 (= e!3202525 (and tp!1432181 tp!1432180))))

(assert (= (and b!5134394 ((_ is ElementMatch!14393) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134470))

(assert (= (and b!5134394 ((_ is Concat!23238) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134471))

(assert (= (and b!5134394 ((_ is Star!14393) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134472))

(assert (= (and b!5134394 ((_ is Union!14393) (regOne!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134473))

(declare-fun b!5134477 () Bool)

(declare-fun e!3202526 () Bool)

(declare-fun tp!1432188 () Bool)

(declare-fun tp!1432187 () Bool)

(assert (=> b!5134477 (= e!3202526 (and tp!1432188 tp!1432187))))

(assert (=> b!5134394 (= tp!1432173 e!3202526)))

(declare-fun b!5134474 () Bool)

(assert (=> b!5134474 (= e!3202526 tp_is_empty!37943)))

(declare-fun b!5134476 () Bool)

(declare-fun tp!1432189 () Bool)

(assert (=> b!5134476 (= e!3202526 tp!1432189)))

(declare-fun b!5134475 () Bool)

(declare-fun tp!1432186 () Bool)

(declare-fun tp!1432185 () Bool)

(assert (=> b!5134475 (= e!3202526 (and tp!1432186 tp!1432185))))

(assert (= (and b!5134394 ((_ is ElementMatch!14393) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134474))

(assert (= (and b!5134394 ((_ is Concat!23238) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134475))

(assert (= (and b!5134394 ((_ is Star!14393) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134476))

(assert (= (and b!5134394 ((_ is Union!14393) (regTwo!29298 (h!66042 (exprs!4277 ctx!74))))) b!5134477))

(declare-fun b!5134481 () Bool)

(declare-fun e!3202527 () Bool)

(declare-fun tp!1432193 () Bool)

(declare-fun tp!1432192 () Bool)

(assert (=> b!5134481 (= e!3202527 (and tp!1432193 tp!1432192))))

(assert (=> b!5134397 (= tp!1432178 e!3202527)))

(declare-fun b!5134478 () Bool)

(assert (=> b!5134478 (= e!3202527 tp_is_empty!37943)))

(declare-fun b!5134480 () Bool)

(declare-fun tp!1432194 () Bool)

(assert (=> b!5134480 (= e!3202527 tp!1432194)))

(declare-fun b!5134479 () Bool)

(declare-fun tp!1432191 () Bool)

(declare-fun tp!1432190 () Bool)

(assert (=> b!5134479 (= e!3202527 (and tp!1432191 tp!1432190))))

(assert (= (and b!5134397 ((_ is ElementMatch!14393) (h!66042 (t!372745 (exprs!4277 ctx!74))))) b!5134478))

(assert (= (and b!5134397 ((_ is Concat!23238) (h!66042 (t!372745 (exprs!4277 ctx!74))))) b!5134479))

(assert (= (and b!5134397 ((_ is Star!14393) (h!66042 (t!372745 (exprs!4277 ctx!74))))) b!5134480))

(assert (= (and b!5134397 ((_ is Union!14393) (h!66042 (t!372745 (exprs!4277 ctx!74))))) b!5134481))

(declare-fun b!5134482 () Bool)

(declare-fun e!3202528 () Bool)

(declare-fun tp!1432195 () Bool)

(declare-fun tp!1432196 () Bool)

(assert (=> b!5134482 (= e!3202528 (and tp!1432195 tp!1432196))))

(assert (=> b!5134397 (= tp!1432179 e!3202528)))

(assert (= (and b!5134397 ((_ is Cons!59594) (t!372745 (t!372745 (exprs!4277 ctx!74))))) b!5134482))

(declare-fun b!5134486 () Bool)

(declare-fun e!3202529 () Bool)

(declare-fun tp!1432200 () Bool)

(declare-fun tp!1432199 () Bool)

(assert (=> b!5134486 (= e!3202529 (and tp!1432200 tp!1432199))))

(assert (=> b!5134395 (= tp!1432177 e!3202529)))

(declare-fun b!5134483 () Bool)

(assert (=> b!5134483 (= e!3202529 tp_is_empty!37943)))

(declare-fun b!5134485 () Bool)

(declare-fun tp!1432201 () Bool)

(assert (=> b!5134485 (= e!3202529 tp!1432201)))

(declare-fun b!5134484 () Bool)

(declare-fun tp!1432198 () Bool)

(declare-fun tp!1432197 () Bool)

(assert (=> b!5134484 (= e!3202529 (and tp!1432198 tp!1432197))))

(assert (= (and b!5134395 ((_ is ElementMatch!14393) (reg!14722 (h!66042 (exprs!4277 ctx!74))))) b!5134483))

(assert (= (and b!5134395 ((_ is Concat!23238) (reg!14722 (h!66042 (exprs!4277 ctx!74))))) b!5134484))

(assert (= (and b!5134395 ((_ is Star!14393) (reg!14722 (h!66042 (exprs!4277 ctx!74))))) b!5134485))

(assert (= (and b!5134395 ((_ is Union!14393) (reg!14722 (h!66042 (exprs!4277 ctx!74))))) b!5134486))

(declare-fun b!5134490 () Bool)

(declare-fun e!3202530 () Bool)

(declare-fun tp!1432205 () Bool)

(declare-fun tp!1432204 () Bool)

(assert (=> b!5134490 (= e!3202530 (and tp!1432205 tp!1432204))))

(assert (=> b!5134396 (= tp!1432176 e!3202530)))

(declare-fun b!5134487 () Bool)

(assert (=> b!5134487 (= e!3202530 tp_is_empty!37943)))

(declare-fun b!5134489 () Bool)

(declare-fun tp!1432206 () Bool)

(assert (=> b!5134489 (= e!3202530 tp!1432206)))

(declare-fun b!5134488 () Bool)

(declare-fun tp!1432203 () Bool)

(declare-fun tp!1432202 () Bool)

(assert (=> b!5134488 (= e!3202530 (and tp!1432203 tp!1432202))))

(assert (= (and b!5134396 ((_ is ElementMatch!14393) (regOne!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134487))

(assert (= (and b!5134396 ((_ is Concat!23238) (regOne!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134488))

(assert (= (and b!5134396 ((_ is Star!14393) (regOne!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134489))

(assert (= (and b!5134396 ((_ is Union!14393) (regOne!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134490))

(declare-fun b!5134494 () Bool)

(declare-fun e!3202531 () Bool)

(declare-fun tp!1432210 () Bool)

(declare-fun tp!1432209 () Bool)

(assert (=> b!5134494 (= e!3202531 (and tp!1432210 tp!1432209))))

(assert (=> b!5134396 (= tp!1432175 e!3202531)))

(declare-fun b!5134491 () Bool)

(assert (=> b!5134491 (= e!3202531 tp_is_empty!37943)))

(declare-fun b!5134493 () Bool)

(declare-fun tp!1432211 () Bool)

(assert (=> b!5134493 (= e!3202531 tp!1432211)))

(declare-fun b!5134492 () Bool)

(declare-fun tp!1432208 () Bool)

(declare-fun tp!1432207 () Bool)

(assert (=> b!5134492 (= e!3202531 (and tp!1432208 tp!1432207))))

(assert (= (and b!5134396 ((_ is ElementMatch!14393) (regTwo!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134491))

(assert (= (and b!5134396 ((_ is Concat!23238) (regTwo!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134492))

(assert (= (and b!5134396 ((_ is Star!14393) (regTwo!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134493))

(assert (= (and b!5134396 ((_ is Union!14393) (regTwo!29299 (h!66042 (exprs!4277 ctx!74))))) b!5134494))

(declare-fun b_lambda!200027 () Bool)

(assert (= b_lambda!200023 (or d!1661306 b_lambda!200027)))

(declare-fun bs!1199496 () Bool)

(declare-fun d!1661360 () Bool)

(assert (= bs!1199496 (and d!1661360 d!1661306)))

(assert (=> bs!1199496 (= (dynLambda!23729 lambda!255544 (h!66042 (exprs!4277 ctx!74))) (not (dynLambda!23729 lambda!255537 (h!66042 (exprs!4277 ctx!74)))))))

(declare-fun b_lambda!200033 () Bool)

(assert (=> (not b_lambda!200033) (not bs!1199496)))

(declare-fun m!6200238 () Bool)

(assert (=> bs!1199496 m!6200238))

(assert (=> b!5134457 d!1661360))

(declare-fun b_lambda!200029 () Bool)

(assert (= b_lambda!200025 (or d!1661312 b_lambda!200029)))

(declare-fun bs!1199497 () Bool)

(declare-fun d!1661362 () Bool)

(assert (= bs!1199497 (and d!1661362 d!1661312)))

(assert (=> bs!1199497 (= (dynLambda!23729 lambda!255545 (h!66042 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))))) (not (dynLambda!23729 lambda!255541 (h!66042 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74))))))))))

(declare-fun b_lambda!200035 () Bool)

(assert (=> (not b_lambda!200035) (not bs!1199497)))

(declare-fun m!6200240 () Bool)

(assert (=> bs!1199497 m!6200240))

(assert (=> b!5134468 d!1661362))

(declare-fun b_lambda!200031 () Bool)

(assert (= b_lambda!200021 (or d!1661296 b_lambda!200031)))

(declare-fun bs!1199498 () Bool)

(declare-fun d!1661364 () Bool)

(assert (= bs!1199498 (and d!1661364 d!1661296)))

(assert (=> bs!1199498 (= (dynLambda!23729 lambda!255540 (h!66042 (t!372745 (exprs!4277 ctx!74)))) (validRegex!6253 (h!66042 (t!372745 (exprs!4277 ctx!74)))))))

(declare-fun m!6200242 () Bool)

(assert (=> bs!1199498 m!6200242))

(assert (=> b!5134398 d!1661364))

(check-sat (not b!5134481) (not b!5134493) (not b!5134486) (not bm!357531) (not d!1661346) (not b!5134484) (not b!5134482) (not b!5134479) (not b!5134471) (not bm!357534) (not b!5134458) (not b!5134490) (not b!5134466) (not b_lambda!200027) (not bm!357532) (not b!5134480) (not b!5134485) (not b!5134442) (not b_lambda!200029) (not bm!357525) (not bm!357530) (not bs!1199498) (not d!1661358) (not b_lambda!200035) (not d!1661342) (not b!5134407) (not b!5134472) (not b!5134477) tp_is_empty!37943 (not b!5134399) (not b!5134488) (not b!5134494) (not b!5134473) (not b!5134492) (not b!5134475) (not b_lambda!200019) (not b!5134476) (not bm!357523) (not b!5134469) (not b_lambda!200033) (not b_lambda!200031) (not d!1661344) (not d!1661338) (not b!5134489))
(check-sat)
(get-model)

(declare-fun b_lambda!200053 () Bool)

(assert (= b_lambda!200033 (or d!1661284 b_lambda!200053)))

(declare-fun bs!1199507 () Bool)

(declare-fun d!1661396 () Bool)

(assert (= bs!1199507 (and d!1661396 d!1661284)))

(assert (=> bs!1199507 (= (dynLambda!23729 lambda!255537 (h!66042 (exprs!4277 ctx!74))) (lostCause!1347 (h!66042 (exprs!4277 ctx!74))))))

(assert (=> bs!1199507 m!6200112))

(assert (=> bs!1199496 d!1661396))

(declare-fun b_lambda!200055 () Bool)

(assert (= b_lambda!200035 (or d!1661298 b_lambda!200055)))

(declare-fun bs!1199508 () Bool)

(declare-fun d!1661398 () Bool)

(assert (= bs!1199508 (and d!1661398 d!1661298)))

(assert (=> bs!1199508 (= (dynLambda!23729 lambda!255541 (h!66042 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))))) (lostCause!1347 (h!66042 (exprs!4277 (Context!7555 (t!372745 (exprs!4277 ctx!74)))))))))

(declare-fun m!6200290 () Bool)

(assert (=> bs!1199508 m!6200290))

(assert (=> bs!1199497 d!1661398))

(check-sat (not b!5134481) (not b!5134493) (not b!5134486) (not bm!357531) (not d!1661346) (not b_lambda!200053) (not b!5134484) (not b!5134482) (not b!5134479) (not b!5134471) (not bm!357534) (not b!5134458) (not b!5134490) (not b!5134466) (not b_lambda!200027) (not bm!357532) (not b_lambda!200055) (not bs!1199508) (not b!5134480) (not bs!1199507) (not b!5134485) (not b!5134442) (not b_lambda!200029) (not bm!357525) (not bm!357530) (not bs!1199498) (not d!1661358) (not d!1661342) (not b!5134407) (not b!5134472) (not b!5134477) tp_is_empty!37943 (not b!5134399) (not b!5134488) (not b!5134494) (not b!5134473) (not b!5134492) (not b!5134475) (not b_lambda!200019) (not b!5134476) (not bm!357523) (not b!5134469) (not b_lambda!200031) (not d!1661344) (not d!1661338) (not b!5134489))
(check-sat)
