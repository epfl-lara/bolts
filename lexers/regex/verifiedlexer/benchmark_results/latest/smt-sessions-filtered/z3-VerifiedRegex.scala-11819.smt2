; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665118 () Bool)

(assert start!665118)

(declare-fun b!6909196 () Bool)

(assert (=> b!6909196 true))

(assert (=> b!6909196 true))

(assert (=> b!6909196 true))

(declare-fun lambda!392570 () Int)

(declare-fun lambda!392569 () Int)

(assert (=> b!6909196 (not (= lambda!392570 lambda!392569))))

(assert (=> b!6909196 true))

(assert (=> b!6909196 true))

(assert (=> b!6909196 true))

(declare-fun b!6909191 () Bool)

(declare-fun e!4159982 () Bool)

(declare-fun tp!1902579 () Bool)

(assert (=> b!6909191 (= e!4159982 tp!1902579)))

(declare-fun b!6909192 () Bool)

(declare-fun res!2817638 () Bool)

(declare-fun e!4159975 () Bool)

(assert (=> b!6909192 (=> (not res!2817638) (not e!4159975))))

(declare-datatypes ((C!34040 0))(
  ( (C!34041 (val!26722 Int)) )
))
(declare-datatypes ((Regex!16885 0))(
  ( (ElementMatch!16885 (c!1283417 C!34040)) (Concat!25730 (regOne!34282 Regex!16885) (regTwo!34282 Regex!16885)) (EmptyExpr!16885) (Star!16885 (reg!17214 Regex!16885)) (EmptyLang!16885) (Union!16885 (regOne!34283 Regex!16885) (regTwo!34283 Regex!16885)) )
))
(declare-fun r3!135 () Regex!16885)

(declare-fun validRegex!8593 (Regex!16885) Bool)

(assert (=> b!6909192 (= res!2817638 (validRegex!8593 r3!135))))

(declare-fun b!6909193 () Bool)

(declare-fun e!4159980 () Bool)

(declare-fun lt!2468248 () Regex!16885)

(declare-datatypes ((List!66642 0))(
  ( (Nil!66518) (Cons!66518 (h!72966 C!34040) (t!380385 List!66642)) )
))
(declare-datatypes ((tuple2!67504 0))(
  ( (tuple2!67505 (_1!37055 List!66642) (_2!37055 List!66642)) )
))
(declare-fun lt!2468245 () tuple2!67504)

(declare-fun matchR!9030 (Regex!16885 List!66642) Bool)

(assert (=> b!6909193 (= e!4159980 (matchR!9030 lt!2468248 (_2!37055 lt!2468245)))))

(declare-fun b!6909194 () Bool)

(declare-fun e!4159976 () Bool)

(declare-fun tp!1902580 () Bool)

(declare-fun tp!1902575 () Bool)

(assert (=> b!6909194 (= e!4159976 (and tp!1902580 tp!1902575))))

(declare-fun b!6909195 () Bool)

(declare-fun tp_is_empty!42995 () Bool)

(assert (=> b!6909195 (= e!4159976 tp_is_empty!42995)))

(declare-fun e!4159978 () Bool)

(assert (=> b!6909196 (= e!4159978 e!4159980)))

(declare-fun res!2817639 () Bool)

(assert (=> b!6909196 (=> res!2817639 e!4159980)))

(declare-fun lt!2468244 () Bool)

(assert (=> b!6909196 (= res!2817639 (not lt!2468244))))

(declare-fun r1!6342 () Regex!16885)

(declare-fun matchRSpec!3948 (Regex!16885 List!66642) Bool)

(assert (=> b!6909196 (= lt!2468244 (matchRSpec!3948 r1!6342 (_1!37055 lt!2468245)))))

(assert (=> b!6909196 (= lt!2468244 (matchR!9030 r1!6342 (_1!37055 lt!2468245)))))

(declare-datatypes ((Unit!160506 0))(
  ( (Unit!160507) )
))
(declare-fun lt!2468249 () Unit!160506)

(declare-fun mainMatchTheorem!3948 (Regex!16885 List!66642) Unit!160506)

(assert (=> b!6909196 (= lt!2468249 (mainMatchTheorem!3948 r1!6342 (_1!37055 lt!2468245)))))

(declare-datatypes ((Option!16664 0))(
  ( (None!16663) (Some!16663 (v!52935 tuple2!67504)) )
))
(declare-fun lt!2468247 () Option!16664)

(declare-fun get!23278 (Option!16664) tuple2!67504)

(assert (=> b!6909196 (= lt!2468245 (get!23278 lt!2468247))))

(declare-fun Exists!3893 (Int) Bool)

(assert (=> b!6909196 (= (Exists!3893 lambda!392569) (Exists!3893 lambda!392570))))

(declare-fun lt!2468242 () Unit!160506)

(declare-fun s!14361 () List!66642)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2366 (Regex!16885 Regex!16885 List!66642) Unit!160506)

(assert (=> b!6909196 (= lt!2468242 (lemmaExistCutMatchRandMatchRSpecEquivalent!2366 r1!6342 lt!2468248 s!14361))))

(assert (=> b!6909196 (Exists!3893 lambda!392569)))

(declare-fun lt!2468243 () Unit!160506)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2840 (Regex!16885 Regex!16885 List!66642) Unit!160506)

(assert (=> b!6909196 (= lt!2468243 (lemmaFindConcatSeparationEquivalentToExists!2840 r1!6342 lt!2468248 s!14361))))

(declare-fun b!6909198 () Bool)

(assert (=> b!6909198 (= e!4159982 tp_is_empty!42995)))

(declare-fun b!6909199 () Bool)

(declare-fun e!4159981 () Bool)

(assert (=> b!6909199 (= e!4159981 e!4159978)))

(declare-fun res!2817637 () Bool)

(assert (=> b!6909199 (=> res!2817637 e!4159978)))

(declare-fun isDefined!13367 (Option!16664) Bool)

(assert (=> b!6909199 (= res!2817637 (not (isDefined!13367 lt!2468247)))))

(declare-fun findConcatSeparation!3078 (Regex!16885 Regex!16885 List!66642 List!66642 List!66642) Option!16664)

(assert (=> b!6909199 (= lt!2468247 (findConcatSeparation!3078 r1!6342 lt!2468248 Nil!66518 s!14361 s!14361))))

(declare-fun b!6909200 () Bool)

(declare-fun e!4159977 () Bool)

(assert (=> b!6909200 (= e!4159977 tp_is_empty!42995)))

(declare-fun b!6909201 () Bool)

(declare-fun tp!1902574 () Bool)

(declare-fun tp!1902581 () Bool)

(assert (=> b!6909201 (= e!4159977 (and tp!1902574 tp!1902581))))

(declare-fun b!6909202 () Bool)

(declare-fun e!4159979 () Bool)

(declare-fun tp!1902578 () Bool)

(assert (=> b!6909202 (= e!4159979 (and tp_is_empty!42995 tp!1902578))))

(declare-fun b!6909203 () Bool)

(declare-fun tp!1902582 () Bool)

(assert (=> b!6909203 (= e!4159976 tp!1902582)))

(declare-fun b!6909204 () Bool)

(declare-fun tp!1902576 () Bool)

(declare-fun tp!1902568 () Bool)

(assert (=> b!6909204 (= e!4159976 (and tp!1902576 tp!1902568))))

(declare-fun b!6909205 () Bool)

(declare-fun res!2817640 () Bool)

(assert (=> b!6909205 (=> (not res!2817640) (not e!4159975))))

(declare-fun r2!6280 () Regex!16885)

(assert (=> b!6909205 (= res!2817640 (validRegex!8593 r2!6280))))

(declare-fun res!2817641 () Bool)

(assert (=> start!665118 (=> (not res!2817641) (not e!4159975))))

(assert (=> start!665118 (= res!2817641 (validRegex!8593 r1!6342))))

(assert (=> start!665118 e!4159975))

(assert (=> start!665118 e!4159977))

(assert (=> start!665118 e!4159976))

(assert (=> start!665118 e!4159982))

(assert (=> start!665118 e!4159979))

(declare-fun b!6909197 () Bool)

(declare-fun tp!1902573 () Bool)

(declare-fun tp!1902572 () Bool)

(assert (=> b!6909197 (= e!4159982 (and tp!1902573 tp!1902572))))

(declare-fun b!6909206 () Bool)

(declare-fun tp!1902577 () Bool)

(declare-fun tp!1902569 () Bool)

(assert (=> b!6909206 (= e!4159982 (and tp!1902577 tp!1902569))))

(declare-fun b!6909207 () Bool)

(declare-fun tp!1902583 () Bool)

(assert (=> b!6909207 (= e!4159977 tp!1902583)))

(declare-fun b!6909208 () Bool)

(assert (=> b!6909208 (= e!4159975 (not e!4159981))))

(declare-fun res!2817642 () Bool)

(assert (=> b!6909208 (=> res!2817642 e!4159981)))

(declare-fun lt!2468250 () Bool)

(assert (=> b!6909208 (= res!2817642 lt!2468250)))

(declare-fun lt!2468240 () Regex!16885)

(assert (=> b!6909208 (= (matchR!9030 lt!2468240 s!14361) (matchRSpec!3948 lt!2468240 s!14361))))

(declare-fun lt!2468246 () Unit!160506)

(assert (=> b!6909208 (= lt!2468246 (mainMatchTheorem!3948 lt!2468240 s!14361))))

(declare-fun lt!2468241 () Regex!16885)

(assert (=> b!6909208 (= lt!2468250 (matchRSpec!3948 lt!2468241 s!14361))))

(assert (=> b!6909208 (= lt!2468250 (matchR!9030 lt!2468241 s!14361))))

(declare-fun lt!2468251 () Unit!160506)

(assert (=> b!6909208 (= lt!2468251 (mainMatchTheorem!3948 lt!2468241 s!14361))))

(assert (=> b!6909208 (= lt!2468240 (Concat!25730 r1!6342 lt!2468248))))

(assert (=> b!6909208 (= lt!2468248 (Concat!25730 r2!6280 r3!135))))

(assert (=> b!6909208 (= lt!2468241 (Concat!25730 (Concat!25730 r1!6342 r2!6280) r3!135))))

(declare-fun b!6909209 () Bool)

(declare-fun tp!1902571 () Bool)

(declare-fun tp!1902570 () Bool)

(assert (=> b!6909209 (= e!4159977 (and tp!1902571 tp!1902570))))

(assert (= (and start!665118 res!2817641) b!6909205))

(assert (= (and b!6909205 res!2817640) b!6909192))

(assert (= (and b!6909192 res!2817638) b!6909208))

(assert (= (and b!6909208 (not res!2817642)) b!6909199))

(assert (= (and b!6909199 (not res!2817637)) b!6909196))

(assert (= (and b!6909196 (not res!2817639)) b!6909193))

(get-info :version)

(assert (= (and start!665118 ((_ is ElementMatch!16885) r1!6342)) b!6909200))

(assert (= (and start!665118 ((_ is Concat!25730) r1!6342)) b!6909201))

(assert (= (and start!665118 ((_ is Star!16885) r1!6342)) b!6909207))

(assert (= (and start!665118 ((_ is Union!16885) r1!6342)) b!6909209))

(assert (= (and start!665118 ((_ is ElementMatch!16885) r2!6280)) b!6909195))

(assert (= (and start!665118 ((_ is Concat!25730) r2!6280)) b!6909194))

(assert (= (and start!665118 ((_ is Star!16885) r2!6280)) b!6909203))

(assert (= (and start!665118 ((_ is Union!16885) r2!6280)) b!6909204))

(assert (= (and start!665118 ((_ is ElementMatch!16885) r3!135)) b!6909198))

(assert (= (and start!665118 ((_ is Concat!25730) r3!135)) b!6909197))

(assert (= (and start!665118 ((_ is Star!16885) r3!135)) b!6909191))

(assert (= (and start!665118 ((_ is Union!16885) r3!135)) b!6909206))

(assert (= (and start!665118 ((_ is Cons!66518) s!14361)) b!6909202))

(declare-fun m!7624536 () Bool)

(assert (=> b!6909193 m!7624536))

(declare-fun m!7624538 () Bool)

(assert (=> b!6909196 m!7624538))

(declare-fun m!7624540 () Bool)

(assert (=> b!6909196 m!7624540))

(declare-fun m!7624542 () Bool)

(assert (=> b!6909196 m!7624542))

(declare-fun m!7624544 () Bool)

(assert (=> b!6909196 m!7624544))

(declare-fun m!7624546 () Bool)

(assert (=> b!6909196 m!7624546))

(assert (=> b!6909196 m!7624546))

(declare-fun m!7624548 () Bool)

(assert (=> b!6909196 m!7624548))

(declare-fun m!7624550 () Bool)

(assert (=> b!6909196 m!7624550))

(declare-fun m!7624552 () Bool)

(assert (=> b!6909196 m!7624552))

(declare-fun m!7624554 () Bool)

(assert (=> b!6909208 m!7624554))

(declare-fun m!7624556 () Bool)

(assert (=> b!6909208 m!7624556))

(declare-fun m!7624558 () Bool)

(assert (=> b!6909208 m!7624558))

(declare-fun m!7624560 () Bool)

(assert (=> b!6909208 m!7624560))

(declare-fun m!7624562 () Bool)

(assert (=> b!6909208 m!7624562))

(declare-fun m!7624564 () Bool)

(assert (=> b!6909208 m!7624564))

(declare-fun m!7624566 () Bool)

(assert (=> b!6909192 m!7624566))

(declare-fun m!7624568 () Bool)

(assert (=> b!6909205 m!7624568))

(declare-fun m!7624570 () Bool)

(assert (=> start!665118 m!7624570))

(declare-fun m!7624572 () Bool)

(assert (=> b!6909199 m!7624572))

(declare-fun m!7624574 () Bool)

(assert (=> b!6909199 m!7624574))

(check-sat (not b!6909207) (not b!6909201) (not b!6909194) (not b!6909196) (not start!665118) (not b!6909202) (not b!6909193) (not b!6909199) (not b!6909192) (not b!6909203) (not b!6909208) (not b!6909209) tp_is_empty!42995 (not b!6909197) (not b!6909206) (not b!6909191) (not b!6909204) (not b!6909205))
(check-sat)
(get-model)

(declare-fun b!6909236 () Bool)

(declare-fun e!4160005 () Bool)

(declare-fun e!4160003 () Bool)

(assert (=> b!6909236 (= e!4160005 e!4160003)))

(declare-fun c!1283422 () Bool)

(assert (=> b!6909236 (= c!1283422 ((_ is Union!16885) r2!6280))))

(declare-fun b!6909237 () Bool)

(declare-fun e!4159999 () Bool)

(declare-fun call!628195 () Bool)

(assert (=> b!6909237 (= e!4159999 call!628195)))

(declare-fun b!6909238 () Bool)

(declare-fun e!4160004 () Bool)

(declare-fun call!628194 () Bool)

(assert (=> b!6909238 (= e!4160004 call!628194)))

(declare-fun bm!628189 () Bool)

(declare-fun call!628196 () Bool)

(assert (=> bm!628189 (= call!628195 call!628196)))

(declare-fun bm!628190 () Bool)

(assert (=> bm!628190 (= call!628194 (validRegex!8593 (ite c!1283422 (regOne!34283 r2!6280) (regTwo!34282 r2!6280))))))

(declare-fun b!6909239 () Bool)

(declare-fun res!2817660 () Bool)

(assert (=> b!6909239 (=> (not res!2817660) (not e!4159999))))

(assert (=> b!6909239 (= res!2817660 call!628194)))

(assert (=> b!6909239 (= e!4160003 e!4159999)))

(declare-fun b!6909240 () Bool)

(declare-fun e!4160000 () Bool)

(assert (=> b!6909240 (= e!4160000 e!4160004)))

(declare-fun res!2817658 () Bool)

(assert (=> b!6909240 (=> (not res!2817658) (not e!4160004))))

(assert (=> b!6909240 (= res!2817658 call!628195)))

(declare-fun b!6909241 () Bool)

(declare-fun res!2817661 () Bool)

(assert (=> b!6909241 (=> res!2817661 e!4160000)))

(assert (=> b!6909241 (= res!2817661 (not ((_ is Concat!25730) r2!6280)))))

(assert (=> b!6909241 (= e!4160003 e!4160000)))

(declare-fun b!6909242 () Bool)

(declare-fun e!4160001 () Bool)

(assert (=> b!6909242 (= e!4160005 e!4160001)))

(declare-fun res!2817657 () Bool)

(declare-fun nullable!6723 (Regex!16885) Bool)

(assert (=> b!6909242 (= res!2817657 (not (nullable!6723 (reg!17214 r2!6280))))))

(assert (=> b!6909242 (=> (not res!2817657) (not e!4160001))))

(declare-fun b!6909243 () Bool)

(declare-fun e!4160002 () Bool)

(assert (=> b!6909243 (= e!4160002 e!4160005)))

(declare-fun c!1283423 () Bool)

(assert (=> b!6909243 (= c!1283423 ((_ is Star!16885) r2!6280))))

(declare-fun b!6909244 () Bool)

(assert (=> b!6909244 (= e!4160001 call!628196)))

(declare-fun d!2163136 () Bool)

(declare-fun res!2817659 () Bool)

(assert (=> d!2163136 (=> res!2817659 e!4160002)))

(assert (=> d!2163136 (= res!2817659 ((_ is ElementMatch!16885) r2!6280))))

(assert (=> d!2163136 (= (validRegex!8593 r2!6280) e!4160002)))

(declare-fun bm!628191 () Bool)

(assert (=> bm!628191 (= call!628196 (validRegex!8593 (ite c!1283423 (reg!17214 r2!6280) (ite c!1283422 (regTwo!34283 r2!6280) (regOne!34282 r2!6280)))))))

(assert (= (and d!2163136 (not res!2817659)) b!6909243))

(assert (= (and b!6909243 c!1283423) b!6909242))

(assert (= (and b!6909243 (not c!1283423)) b!6909236))

(assert (= (and b!6909242 res!2817657) b!6909244))

(assert (= (and b!6909236 c!1283422) b!6909239))

(assert (= (and b!6909236 (not c!1283422)) b!6909241))

(assert (= (and b!6909239 res!2817660) b!6909237))

(assert (= (and b!6909241 (not res!2817661)) b!6909240))

(assert (= (and b!6909240 res!2817658) b!6909238))

(assert (= (or b!6909239 b!6909238) bm!628190))

(assert (= (or b!6909237 b!6909240) bm!628189))

(assert (= (or b!6909244 bm!628189) bm!628191))

(declare-fun m!7624582 () Bool)

(assert (=> bm!628190 m!7624582))

(declare-fun m!7624584 () Bool)

(assert (=> b!6909242 m!7624584))

(declare-fun m!7624586 () Bool)

(assert (=> bm!628191 m!7624586))

(assert (=> b!6909205 d!2163136))

(declare-fun bs!1844436 () Bool)

(declare-fun b!6909314 () Bool)

(assert (= bs!1844436 (and b!6909314 b!6909196)))

(declare-fun lambda!392583 () Int)

(assert (=> bs!1844436 (not (= lambda!392583 lambda!392569))))

(assert (=> bs!1844436 (not (= lambda!392583 lambda!392570))))

(assert (=> b!6909314 true))

(assert (=> b!6909314 true))

(declare-fun bs!1844439 () Bool)

(declare-fun b!6909315 () Bool)

(assert (= bs!1844439 (and b!6909315 b!6909196)))

(declare-fun lambda!392584 () Int)

(assert (=> bs!1844439 (not (= lambda!392584 lambda!392569))))

(assert (=> bs!1844439 (= (and (= (_1!37055 lt!2468245) s!14361) (= (regOne!34282 r1!6342) r1!6342) (= (regTwo!34282 r1!6342) lt!2468248)) (= lambda!392584 lambda!392570))))

(declare-fun bs!1844441 () Bool)

(assert (= bs!1844441 (and b!6909315 b!6909314)))

(assert (=> bs!1844441 (not (= lambda!392584 lambda!392583))))

(assert (=> b!6909315 true))

(assert (=> b!6909315 true))

(declare-fun b!6909309 () Bool)

(declare-fun e!4160045 () Bool)

(assert (=> b!6909309 (= e!4160045 (= (_1!37055 lt!2468245) (Cons!66518 (c!1283417 r1!6342) Nil!66518)))))

(declare-fun b!6909310 () Bool)

(declare-fun e!4160042 () Bool)

(declare-fun call!628206 () Bool)

(assert (=> b!6909310 (= e!4160042 call!628206)))

(declare-fun b!6909311 () Bool)

(declare-fun c!1283440 () Bool)

(assert (=> b!6909311 (= c!1283440 ((_ is ElementMatch!16885) r1!6342))))

(declare-fun e!4160044 () Bool)

(assert (=> b!6909311 (= e!4160044 e!4160045)))

(declare-fun b!6909312 () Bool)

(declare-fun c!1283443 () Bool)

(assert (=> b!6909312 (= c!1283443 ((_ is Union!16885) r1!6342))))

(declare-fun e!4160046 () Bool)

(assert (=> b!6909312 (= e!4160045 e!4160046)))

(declare-fun b!6909313 () Bool)

(declare-fun e!4160043 () Bool)

(assert (=> b!6909313 (= e!4160046 e!4160043)))

(declare-fun res!2817695 () Bool)

(assert (=> b!6909313 (= res!2817695 (matchRSpec!3948 (regOne!34283 r1!6342) (_1!37055 lt!2468245)))))

(assert (=> b!6909313 (=> res!2817695 e!4160043)))

(declare-fun e!4160048 () Bool)

(declare-fun call!628205 () Bool)

(assert (=> b!6909314 (= e!4160048 call!628205)))

(declare-fun e!4160047 () Bool)

(assert (=> b!6909315 (= e!4160047 call!628205)))

(declare-fun b!6909316 () Bool)

(assert (=> b!6909316 (= e!4160042 e!4160044)))

(declare-fun res!2817696 () Bool)

(assert (=> b!6909316 (= res!2817696 (not ((_ is EmptyLang!16885) r1!6342)))))

(assert (=> b!6909316 (=> (not res!2817696) (not e!4160044))))

(declare-fun bm!628200 () Bool)

(declare-fun c!1283442 () Bool)

(assert (=> bm!628200 (= call!628205 (Exists!3893 (ite c!1283442 lambda!392583 lambda!392584)))))

(declare-fun b!6909317 () Bool)

(assert (=> b!6909317 (= e!4160043 (matchRSpec!3948 (regTwo!34283 r1!6342) (_1!37055 lt!2468245)))))

(declare-fun b!6909318 () Bool)

(declare-fun res!2817694 () Bool)

(assert (=> b!6909318 (=> res!2817694 e!4160048)))

(assert (=> b!6909318 (= res!2817694 call!628206)))

(assert (=> b!6909318 (= e!4160047 e!4160048)))

(declare-fun d!2163140 () Bool)

(declare-fun c!1283441 () Bool)

(assert (=> d!2163140 (= c!1283441 ((_ is EmptyExpr!16885) r1!6342))))

(assert (=> d!2163140 (= (matchRSpec!3948 r1!6342 (_1!37055 lt!2468245)) e!4160042)))

(declare-fun bm!628201 () Bool)

(declare-fun isEmpty!38761 (List!66642) Bool)

(assert (=> bm!628201 (= call!628206 (isEmpty!38761 (_1!37055 lt!2468245)))))

(declare-fun b!6909319 () Bool)

(assert (=> b!6909319 (= e!4160046 e!4160047)))

(assert (=> b!6909319 (= c!1283442 ((_ is Star!16885) r1!6342))))

(assert (= (and d!2163140 c!1283441) b!6909310))

(assert (= (and d!2163140 (not c!1283441)) b!6909316))

(assert (= (and b!6909316 res!2817696) b!6909311))

(assert (= (and b!6909311 c!1283440) b!6909309))

(assert (= (and b!6909311 (not c!1283440)) b!6909312))

(assert (= (and b!6909312 c!1283443) b!6909313))

(assert (= (and b!6909312 (not c!1283443)) b!6909319))

(assert (= (and b!6909313 (not res!2817695)) b!6909317))

(assert (= (and b!6909319 c!1283442) b!6909318))

(assert (= (and b!6909319 (not c!1283442)) b!6909315))

(assert (= (and b!6909318 (not res!2817694)) b!6909314))

(assert (= (or b!6909314 b!6909315) bm!628200))

(assert (= (or b!6909310 b!6909318) bm!628201))

(declare-fun m!7624592 () Bool)

(assert (=> b!6909313 m!7624592))

(declare-fun m!7624594 () Bool)

(assert (=> bm!628200 m!7624594))

(declare-fun m!7624596 () Bool)

(assert (=> b!6909317 m!7624596))

(declare-fun m!7624598 () Bool)

(assert (=> bm!628201 m!7624598))

(assert (=> b!6909196 d!2163140))

(declare-fun b!6909363 () Bool)

(declare-fun e!4160073 () Bool)

(declare-fun head!13855 (List!66642) C!34040)

(assert (=> b!6909363 (= e!4160073 (not (= (head!13855 (_1!37055 lt!2468245)) (c!1283417 r1!6342))))))

(declare-fun b!6909364 () Bool)

(declare-fun res!2817725 () Bool)

(assert (=> b!6909364 (=> res!2817725 e!4160073)))

(declare-fun tail!12907 (List!66642) List!66642)

(assert (=> b!6909364 (= res!2817725 (not (isEmpty!38761 (tail!12907 (_1!37055 lt!2468245)))))))

(declare-fun b!6909365 () Bool)

(declare-fun e!4160076 () Bool)

(assert (=> b!6909365 (= e!4160076 e!4160073)))

(declare-fun res!2817724 () Bool)

(assert (=> b!6909365 (=> res!2817724 e!4160073)))

(declare-fun call!628211 () Bool)

(assert (=> b!6909365 (= res!2817724 call!628211)))

(declare-fun bm!628206 () Bool)

(assert (=> bm!628206 (= call!628211 (isEmpty!38761 (_1!37055 lt!2468245)))))

(declare-fun b!6909366 () Bool)

(declare-fun res!2817722 () Bool)

(declare-fun e!4160077 () Bool)

(assert (=> b!6909366 (=> (not res!2817722) (not e!4160077))))

(assert (=> b!6909366 (= res!2817722 (not call!628211))))

(declare-fun b!6909367 () Bool)

(declare-fun e!4160074 () Bool)

(assert (=> b!6909367 (= e!4160074 e!4160076)))

(declare-fun res!2817723 () Bool)

(assert (=> b!6909367 (=> (not res!2817723) (not e!4160076))))

(declare-fun lt!2468262 () Bool)

(assert (=> b!6909367 (= res!2817723 (not lt!2468262))))

(declare-fun b!6909368 () Bool)

(declare-fun e!4160075 () Bool)

(assert (=> b!6909368 (= e!4160075 (nullable!6723 r1!6342))))

(declare-fun b!6909369 () Bool)

(declare-fun derivativeStep!5402 (Regex!16885 C!34040) Regex!16885)

(assert (=> b!6909369 (= e!4160075 (matchR!9030 (derivativeStep!5402 r1!6342 (head!13855 (_1!37055 lt!2468245))) (tail!12907 (_1!37055 lt!2468245))))))

(declare-fun b!6909370 () Bool)

(assert (=> b!6909370 (= e!4160077 (= (head!13855 (_1!37055 lt!2468245)) (c!1283417 r1!6342)))))

(declare-fun b!6909371 () Bool)

(declare-fun res!2817726 () Bool)

(assert (=> b!6909371 (=> res!2817726 e!4160074)))

(assert (=> b!6909371 (= res!2817726 e!4160077)))

(declare-fun res!2817727 () Bool)

(assert (=> b!6909371 (=> (not res!2817727) (not e!4160077))))

(assert (=> b!6909371 (= res!2817727 lt!2468262)))

(declare-fun b!6909373 () Bool)

(declare-fun e!4160072 () Bool)

(declare-fun e!4160078 () Bool)

(assert (=> b!6909373 (= e!4160072 e!4160078)))

(declare-fun c!1283454 () Bool)

(assert (=> b!6909373 (= c!1283454 ((_ is EmptyLang!16885) r1!6342))))

(declare-fun b!6909374 () Bool)

(assert (=> b!6909374 (= e!4160078 (not lt!2468262))))

(declare-fun b!6909375 () Bool)

(declare-fun res!2817720 () Bool)

(assert (=> b!6909375 (=> res!2817720 e!4160074)))

(assert (=> b!6909375 (= res!2817720 (not ((_ is ElementMatch!16885) r1!6342)))))

(assert (=> b!6909375 (= e!4160078 e!4160074)))

(declare-fun b!6909376 () Bool)

(assert (=> b!6909376 (= e!4160072 (= lt!2468262 call!628211))))

(declare-fun b!6909372 () Bool)

(declare-fun res!2817721 () Bool)

(assert (=> b!6909372 (=> (not res!2817721) (not e!4160077))))

(assert (=> b!6909372 (= res!2817721 (isEmpty!38761 (tail!12907 (_1!37055 lt!2468245))))))

(declare-fun d!2163146 () Bool)

(assert (=> d!2163146 e!4160072))

(declare-fun c!1283455 () Bool)

(assert (=> d!2163146 (= c!1283455 ((_ is EmptyExpr!16885) r1!6342))))

(assert (=> d!2163146 (= lt!2468262 e!4160075)))

(declare-fun c!1283456 () Bool)

(assert (=> d!2163146 (= c!1283456 (isEmpty!38761 (_1!37055 lt!2468245)))))

(assert (=> d!2163146 (validRegex!8593 r1!6342)))

(assert (=> d!2163146 (= (matchR!9030 r1!6342 (_1!37055 lt!2468245)) lt!2468262)))

(assert (= (and d!2163146 c!1283456) b!6909368))

(assert (= (and d!2163146 (not c!1283456)) b!6909369))

(assert (= (and d!2163146 c!1283455) b!6909376))

(assert (= (and d!2163146 (not c!1283455)) b!6909373))

(assert (= (and b!6909373 c!1283454) b!6909374))

(assert (= (and b!6909373 (not c!1283454)) b!6909375))

(assert (= (and b!6909375 (not res!2817720)) b!6909371))

(assert (= (and b!6909371 res!2817727) b!6909366))

(assert (= (and b!6909366 res!2817722) b!6909372))

(assert (= (and b!6909372 res!2817721) b!6909370))

(assert (= (and b!6909371 (not res!2817726)) b!6909367))

(assert (= (and b!6909367 res!2817723) b!6909365))

(assert (= (and b!6909365 (not res!2817724)) b!6909364))

(assert (= (and b!6909364 (not res!2817725)) b!6909363))

(assert (= (or b!6909376 b!6909365 b!6909366) bm!628206))

(declare-fun m!7624610 () Bool)

(assert (=> b!6909370 m!7624610))

(assert (=> d!2163146 m!7624598))

(assert (=> d!2163146 m!7624570))

(assert (=> b!6909369 m!7624610))

(assert (=> b!6909369 m!7624610))

(declare-fun m!7624612 () Bool)

(assert (=> b!6909369 m!7624612))

(declare-fun m!7624614 () Bool)

(assert (=> b!6909369 m!7624614))

(assert (=> b!6909369 m!7624612))

(assert (=> b!6909369 m!7624614))

(declare-fun m!7624616 () Bool)

(assert (=> b!6909369 m!7624616))

(assert (=> b!6909363 m!7624610))

(assert (=> b!6909364 m!7624614))

(assert (=> b!6909364 m!7624614))

(declare-fun m!7624618 () Bool)

(assert (=> b!6909364 m!7624618))

(assert (=> bm!628206 m!7624598))

(declare-fun m!7624620 () Bool)

(assert (=> b!6909368 m!7624620))

(assert (=> b!6909372 m!7624614))

(assert (=> b!6909372 m!7624614))

(assert (=> b!6909372 m!7624618))

(assert (=> b!6909196 d!2163146))

(declare-fun d!2163154 () Bool)

(declare-fun choose!51458 (Int) Bool)

(assert (=> d!2163154 (= (Exists!3893 lambda!392570) (choose!51458 lambda!392570))))

(declare-fun bs!1844445 () Bool)

(assert (= bs!1844445 d!2163154))

(declare-fun m!7624622 () Bool)

(assert (=> bs!1844445 m!7624622))

(assert (=> b!6909196 d!2163154))

(declare-fun d!2163156 () Bool)

(assert (=> d!2163156 (= (matchR!9030 r1!6342 (_1!37055 lt!2468245)) (matchRSpec!3948 r1!6342 (_1!37055 lt!2468245)))))

(declare-fun lt!2468266 () Unit!160506)

(declare-fun choose!51459 (Regex!16885 List!66642) Unit!160506)

(assert (=> d!2163156 (= lt!2468266 (choose!51459 r1!6342 (_1!37055 lt!2468245)))))

(assert (=> d!2163156 (validRegex!8593 r1!6342)))

(assert (=> d!2163156 (= (mainMatchTheorem!3948 r1!6342 (_1!37055 lt!2468245)) lt!2468266)))

(declare-fun bs!1844451 () Bool)

(assert (= bs!1844451 d!2163156))

(assert (=> bs!1844451 m!7624548))

(assert (=> bs!1844451 m!7624542))

(declare-fun m!7624624 () Bool)

(assert (=> bs!1844451 m!7624624))

(assert (=> bs!1844451 m!7624570))

(assert (=> b!6909196 d!2163156))

(declare-fun d!2163158 () Bool)

(assert (=> d!2163158 (= (Exists!3893 lambda!392569) (choose!51458 lambda!392569))))

(declare-fun bs!1844452 () Bool)

(assert (= bs!1844452 d!2163158))

(declare-fun m!7624626 () Bool)

(assert (=> bs!1844452 m!7624626))

(assert (=> b!6909196 d!2163158))

(declare-fun bs!1844453 () Bool)

(declare-fun d!2163160 () Bool)

(assert (= bs!1844453 (and d!2163160 b!6909196)))

(declare-fun lambda!392594 () Int)

(assert (=> bs!1844453 (= lambda!392594 lambda!392569)))

(assert (=> bs!1844453 (not (= lambda!392594 lambda!392570))))

(declare-fun bs!1844454 () Bool)

(assert (= bs!1844454 (and d!2163160 b!6909314)))

(assert (=> bs!1844454 (not (= lambda!392594 lambda!392583))))

(declare-fun bs!1844455 () Bool)

(assert (= bs!1844455 (and d!2163160 b!6909315)))

(assert (=> bs!1844455 (not (= lambda!392594 lambda!392584))))

(assert (=> d!2163160 true))

(assert (=> d!2163160 true))

(assert (=> d!2163160 true))

(assert (=> d!2163160 (= (isDefined!13367 (findConcatSeparation!3078 r1!6342 lt!2468248 Nil!66518 s!14361 s!14361)) (Exists!3893 lambda!392594))))

(declare-fun lt!2468271 () Unit!160506)

(declare-fun choose!51460 (Regex!16885 Regex!16885 List!66642) Unit!160506)

(assert (=> d!2163160 (= lt!2468271 (choose!51460 r1!6342 lt!2468248 s!14361))))

(assert (=> d!2163160 (validRegex!8593 r1!6342)))

(assert (=> d!2163160 (= (lemmaFindConcatSeparationEquivalentToExists!2840 r1!6342 lt!2468248 s!14361) lt!2468271)))

(declare-fun bs!1844456 () Bool)

(assert (= bs!1844456 d!2163160))

(assert (=> bs!1844456 m!7624570))

(declare-fun m!7624634 () Bool)

(assert (=> bs!1844456 m!7624634))

(assert (=> bs!1844456 m!7624574))

(assert (=> bs!1844456 m!7624574))

(declare-fun m!7624636 () Bool)

(assert (=> bs!1844456 m!7624636))

(declare-fun m!7624638 () Bool)

(assert (=> bs!1844456 m!7624638))

(assert (=> b!6909196 d!2163160))

(declare-fun d!2163164 () Bool)

(assert (=> d!2163164 (= (get!23278 lt!2468247) (v!52935 lt!2468247))))

(assert (=> b!6909196 d!2163164))

(declare-fun bs!1844457 () Bool)

(declare-fun d!2163166 () Bool)

(assert (= bs!1844457 (and d!2163166 b!6909315)))

(declare-fun lambda!392599 () Int)

(assert (=> bs!1844457 (not (= lambda!392599 lambda!392584))))

(declare-fun bs!1844458 () Bool)

(assert (= bs!1844458 (and d!2163166 b!6909196)))

(assert (=> bs!1844458 (not (= lambda!392599 lambda!392570))))

(assert (=> bs!1844458 (= lambda!392599 lambda!392569)))

(declare-fun bs!1844459 () Bool)

(assert (= bs!1844459 (and d!2163166 b!6909314)))

(assert (=> bs!1844459 (not (= lambda!392599 lambda!392583))))

(declare-fun bs!1844461 () Bool)

(assert (= bs!1844461 (and d!2163166 d!2163160)))

(assert (=> bs!1844461 (= lambda!392599 lambda!392594)))

(assert (=> d!2163166 true))

(assert (=> d!2163166 true))

(assert (=> d!2163166 true))

(declare-fun lambda!392600 () Int)

(assert (=> bs!1844457 (= (and (= s!14361 (_1!37055 lt!2468245)) (= r1!6342 (regOne!34282 r1!6342)) (= lt!2468248 (regTwo!34282 r1!6342))) (= lambda!392600 lambda!392584))))

(assert (=> bs!1844458 (= lambda!392600 lambda!392570)))

(declare-fun bs!1844463 () Bool)

(assert (= bs!1844463 d!2163166))

(assert (=> bs!1844463 (not (= lambda!392600 lambda!392599))))

(assert (=> bs!1844458 (not (= lambda!392600 lambda!392569))))

(assert (=> bs!1844459 (not (= lambda!392600 lambda!392583))))

(assert (=> bs!1844461 (not (= lambda!392600 lambda!392594))))

(assert (=> d!2163166 true))

(assert (=> d!2163166 true))

(assert (=> d!2163166 true))

(assert (=> d!2163166 (= (Exists!3893 lambda!392599) (Exists!3893 lambda!392600))))

(declare-fun lt!2468276 () Unit!160506)

(declare-fun choose!51461 (Regex!16885 Regex!16885 List!66642) Unit!160506)

(assert (=> d!2163166 (= lt!2468276 (choose!51461 r1!6342 lt!2468248 s!14361))))

(assert (=> d!2163166 (validRegex!8593 r1!6342)))

(assert (=> d!2163166 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2366 r1!6342 lt!2468248 s!14361) lt!2468276)))

(declare-fun m!7624678 () Bool)

(assert (=> bs!1844463 m!7624678))

(declare-fun m!7624680 () Bool)

(assert (=> bs!1844463 m!7624680))

(declare-fun m!7624682 () Bool)

(assert (=> bs!1844463 m!7624682))

(assert (=> bs!1844463 m!7624570))

(assert (=> b!6909196 d!2163166))

(declare-fun b!6909487 () Bool)

(declare-fun e!4160149 () Bool)

(declare-fun e!4160147 () Bool)

(assert (=> b!6909487 (= e!4160149 e!4160147)))

(declare-fun c!1283479 () Bool)

(assert (=> b!6909487 (= c!1283479 ((_ is Union!16885) r1!6342))))

(declare-fun b!6909488 () Bool)

(declare-fun e!4160143 () Bool)

(declare-fun call!628228 () Bool)

(assert (=> b!6909488 (= e!4160143 call!628228)))

(declare-fun b!6909489 () Bool)

(declare-fun e!4160148 () Bool)

(declare-fun call!628227 () Bool)

(assert (=> b!6909489 (= e!4160148 call!628227)))

(declare-fun bm!628222 () Bool)

(declare-fun call!628229 () Bool)

(assert (=> bm!628222 (= call!628228 call!628229)))

(declare-fun bm!628223 () Bool)

(assert (=> bm!628223 (= call!628227 (validRegex!8593 (ite c!1283479 (regOne!34283 r1!6342) (regTwo!34282 r1!6342))))))

(declare-fun b!6909490 () Bool)

(declare-fun res!2817797 () Bool)

(assert (=> b!6909490 (=> (not res!2817797) (not e!4160143))))

(assert (=> b!6909490 (= res!2817797 call!628227)))

(assert (=> b!6909490 (= e!4160147 e!4160143)))

(declare-fun b!6909491 () Bool)

(declare-fun e!4160144 () Bool)

(assert (=> b!6909491 (= e!4160144 e!4160148)))

(declare-fun res!2817795 () Bool)

(assert (=> b!6909491 (=> (not res!2817795) (not e!4160148))))

(assert (=> b!6909491 (= res!2817795 call!628228)))

(declare-fun b!6909492 () Bool)

(declare-fun res!2817798 () Bool)

(assert (=> b!6909492 (=> res!2817798 e!4160144)))

(assert (=> b!6909492 (= res!2817798 (not ((_ is Concat!25730) r1!6342)))))

(assert (=> b!6909492 (= e!4160147 e!4160144)))

(declare-fun b!6909493 () Bool)

(declare-fun e!4160145 () Bool)

(assert (=> b!6909493 (= e!4160149 e!4160145)))

(declare-fun res!2817794 () Bool)

(assert (=> b!6909493 (= res!2817794 (not (nullable!6723 (reg!17214 r1!6342))))))

(assert (=> b!6909493 (=> (not res!2817794) (not e!4160145))))

(declare-fun b!6909494 () Bool)

(declare-fun e!4160146 () Bool)

(assert (=> b!6909494 (= e!4160146 e!4160149)))

(declare-fun c!1283480 () Bool)

(assert (=> b!6909494 (= c!1283480 ((_ is Star!16885) r1!6342))))

(declare-fun b!6909495 () Bool)

(assert (=> b!6909495 (= e!4160145 call!628229)))

(declare-fun d!2163176 () Bool)

(declare-fun res!2817796 () Bool)

(assert (=> d!2163176 (=> res!2817796 e!4160146)))

(assert (=> d!2163176 (= res!2817796 ((_ is ElementMatch!16885) r1!6342))))

(assert (=> d!2163176 (= (validRegex!8593 r1!6342) e!4160146)))

(declare-fun bm!628224 () Bool)

(assert (=> bm!628224 (= call!628229 (validRegex!8593 (ite c!1283480 (reg!17214 r1!6342) (ite c!1283479 (regTwo!34283 r1!6342) (regOne!34282 r1!6342)))))))

(assert (= (and d!2163176 (not res!2817796)) b!6909494))

(assert (= (and b!6909494 c!1283480) b!6909493))

(assert (= (and b!6909494 (not c!1283480)) b!6909487))

(assert (= (and b!6909493 res!2817794) b!6909495))

(assert (= (and b!6909487 c!1283479) b!6909490))

(assert (= (and b!6909487 (not c!1283479)) b!6909492))

(assert (= (and b!6909490 res!2817797) b!6909488))

(assert (= (and b!6909492 (not res!2817798)) b!6909491))

(assert (= (and b!6909491 res!2817795) b!6909489))

(assert (= (or b!6909490 b!6909489) bm!628223))

(assert (= (or b!6909488 b!6909491) bm!628222))

(assert (= (or b!6909495 bm!628222) bm!628224))

(declare-fun m!7624684 () Bool)

(assert (=> bm!628223 m!7624684))

(declare-fun m!7624686 () Bool)

(assert (=> b!6909493 m!7624686))

(declare-fun m!7624688 () Bool)

(assert (=> bm!628224 m!7624688))

(assert (=> start!665118 d!2163176))

(declare-fun d!2163178 () Bool)

(assert (=> d!2163178 (= (matchR!9030 lt!2468241 s!14361) (matchRSpec!3948 lt!2468241 s!14361))))

(declare-fun lt!2468278 () Unit!160506)

(assert (=> d!2163178 (= lt!2468278 (choose!51459 lt!2468241 s!14361))))

(assert (=> d!2163178 (validRegex!8593 lt!2468241)))

(assert (=> d!2163178 (= (mainMatchTheorem!3948 lt!2468241 s!14361) lt!2468278)))

(declare-fun bs!1844471 () Bool)

(assert (= bs!1844471 d!2163178))

(assert (=> bs!1844471 m!7624556))

(assert (=> bs!1844471 m!7624564))

(declare-fun m!7624690 () Bool)

(assert (=> bs!1844471 m!7624690))

(declare-fun m!7624692 () Bool)

(assert (=> bs!1844471 m!7624692))

(assert (=> b!6909208 d!2163178))

(declare-fun bs!1844475 () Bool)

(declare-fun b!6909501 () Bool)

(assert (= bs!1844475 (and b!6909501 b!6909315)))

(declare-fun lambda!392603 () Int)

(assert (=> bs!1844475 (not (= lambda!392603 lambda!392584))))

(declare-fun bs!1844476 () Bool)

(assert (= bs!1844476 (and b!6909501 b!6909196)))

(assert (=> bs!1844476 (not (= lambda!392603 lambda!392570))))

(declare-fun bs!1844477 () Bool)

(assert (= bs!1844477 (and b!6909501 d!2163166)))

(assert (=> bs!1844477 (not (= lambda!392603 lambda!392599))))

(assert (=> bs!1844477 (not (= lambda!392603 lambda!392600))))

(assert (=> bs!1844476 (not (= lambda!392603 lambda!392569))))

(declare-fun bs!1844478 () Bool)

(assert (= bs!1844478 (and b!6909501 b!6909314)))

(assert (=> bs!1844478 (= (and (= s!14361 (_1!37055 lt!2468245)) (= (reg!17214 lt!2468240) (reg!17214 r1!6342)) (= lt!2468240 r1!6342)) (= lambda!392603 lambda!392583))))

(declare-fun bs!1844479 () Bool)

(assert (= bs!1844479 (and b!6909501 d!2163160)))

(assert (=> bs!1844479 (not (= lambda!392603 lambda!392594))))

(assert (=> b!6909501 true))

(assert (=> b!6909501 true))

(declare-fun bs!1844480 () Bool)

(declare-fun b!6909502 () Bool)

(assert (= bs!1844480 (and b!6909502 b!6909315)))

(declare-fun lambda!392604 () Int)

(assert (=> bs!1844480 (= (and (= s!14361 (_1!37055 lt!2468245)) (= (regOne!34282 lt!2468240) (regOne!34282 r1!6342)) (= (regTwo!34282 lt!2468240) (regTwo!34282 r1!6342))) (= lambda!392604 lambda!392584))))

(declare-fun bs!1844481 () Bool)

(assert (= bs!1844481 (and b!6909502 b!6909196)))

(assert (=> bs!1844481 (= (and (= (regOne!34282 lt!2468240) r1!6342) (= (regTwo!34282 lt!2468240) lt!2468248)) (= lambda!392604 lambda!392570))))

(declare-fun bs!1844482 () Bool)

(assert (= bs!1844482 (and b!6909502 b!6909501)))

(assert (=> bs!1844482 (not (= lambda!392604 lambda!392603))))

(declare-fun bs!1844483 () Bool)

(assert (= bs!1844483 (and b!6909502 d!2163166)))

(assert (=> bs!1844483 (not (= lambda!392604 lambda!392599))))

(assert (=> bs!1844483 (= (and (= (regOne!34282 lt!2468240) r1!6342) (= (regTwo!34282 lt!2468240) lt!2468248)) (= lambda!392604 lambda!392600))))

(assert (=> bs!1844481 (not (= lambda!392604 lambda!392569))))

(declare-fun bs!1844485 () Bool)

(assert (= bs!1844485 (and b!6909502 b!6909314)))

(assert (=> bs!1844485 (not (= lambda!392604 lambda!392583))))

(declare-fun bs!1844486 () Bool)

(assert (= bs!1844486 (and b!6909502 d!2163160)))

(assert (=> bs!1844486 (not (= lambda!392604 lambda!392594))))

(assert (=> b!6909502 true))

(assert (=> b!6909502 true))

(declare-fun b!6909496 () Bool)

(declare-fun e!4160153 () Bool)

(assert (=> b!6909496 (= e!4160153 (= s!14361 (Cons!66518 (c!1283417 lt!2468240) Nil!66518)))))

(declare-fun b!6909497 () Bool)

(declare-fun e!4160150 () Bool)

(declare-fun call!628231 () Bool)

(assert (=> b!6909497 (= e!4160150 call!628231)))

(declare-fun b!6909498 () Bool)

(declare-fun c!1283481 () Bool)

(assert (=> b!6909498 (= c!1283481 ((_ is ElementMatch!16885) lt!2468240))))

(declare-fun e!4160152 () Bool)

(assert (=> b!6909498 (= e!4160152 e!4160153)))

(declare-fun b!6909499 () Bool)

(declare-fun c!1283484 () Bool)

(assert (=> b!6909499 (= c!1283484 ((_ is Union!16885) lt!2468240))))

(declare-fun e!4160154 () Bool)

(assert (=> b!6909499 (= e!4160153 e!4160154)))

(declare-fun b!6909500 () Bool)

(declare-fun e!4160151 () Bool)

(assert (=> b!6909500 (= e!4160154 e!4160151)))

(declare-fun res!2817800 () Bool)

(assert (=> b!6909500 (= res!2817800 (matchRSpec!3948 (regOne!34283 lt!2468240) s!14361))))

(assert (=> b!6909500 (=> res!2817800 e!4160151)))

(declare-fun e!4160156 () Bool)

(declare-fun call!628230 () Bool)

(assert (=> b!6909501 (= e!4160156 call!628230)))

(declare-fun e!4160155 () Bool)

(assert (=> b!6909502 (= e!4160155 call!628230)))

(declare-fun b!6909503 () Bool)

(assert (=> b!6909503 (= e!4160150 e!4160152)))

(declare-fun res!2817801 () Bool)

(assert (=> b!6909503 (= res!2817801 (not ((_ is EmptyLang!16885) lt!2468240)))))

(assert (=> b!6909503 (=> (not res!2817801) (not e!4160152))))

(declare-fun c!1283483 () Bool)

(declare-fun bm!628225 () Bool)

(assert (=> bm!628225 (= call!628230 (Exists!3893 (ite c!1283483 lambda!392603 lambda!392604)))))

(declare-fun b!6909504 () Bool)

(assert (=> b!6909504 (= e!4160151 (matchRSpec!3948 (regTwo!34283 lt!2468240) s!14361))))

(declare-fun b!6909505 () Bool)

(declare-fun res!2817799 () Bool)

(assert (=> b!6909505 (=> res!2817799 e!4160156)))

(assert (=> b!6909505 (= res!2817799 call!628231)))

(assert (=> b!6909505 (= e!4160155 e!4160156)))

(declare-fun d!2163180 () Bool)

(declare-fun c!1283482 () Bool)

(assert (=> d!2163180 (= c!1283482 ((_ is EmptyExpr!16885) lt!2468240))))

(assert (=> d!2163180 (= (matchRSpec!3948 lt!2468240 s!14361) e!4160150)))

(declare-fun bm!628226 () Bool)

(assert (=> bm!628226 (= call!628231 (isEmpty!38761 s!14361))))

(declare-fun b!6909506 () Bool)

(assert (=> b!6909506 (= e!4160154 e!4160155)))

(assert (=> b!6909506 (= c!1283483 ((_ is Star!16885) lt!2468240))))

(assert (= (and d!2163180 c!1283482) b!6909497))

(assert (= (and d!2163180 (not c!1283482)) b!6909503))

(assert (= (and b!6909503 res!2817801) b!6909498))

(assert (= (and b!6909498 c!1283481) b!6909496))

(assert (= (and b!6909498 (not c!1283481)) b!6909499))

(assert (= (and b!6909499 c!1283484) b!6909500))

(assert (= (and b!6909499 (not c!1283484)) b!6909506))

(assert (= (and b!6909500 (not res!2817800)) b!6909504))

(assert (= (and b!6909506 c!1283483) b!6909505))

(assert (= (and b!6909506 (not c!1283483)) b!6909502))

(assert (= (and b!6909505 (not res!2817799)) b!6909501))

(assert (= (or b!6909501 b!6909502) bm!628225))

(assert (= (or b!6909497 b!6909505) bm!628226))

(declare-fun m!7624716 () Bool)

(assert (=> b!6909500 m!7624716))

(declare-fun m!7624718 () Bool)

(assert (=> bm!628225 m!7624718))

(declare-fun m!7624720 () Bool)

(assert (=> b!6909504 m!7624720))

(declare-fun m!7624722 () Bool)

(assert (=> bm!628226 m!7624722))

(assert (=> b!6909208 d!2163180))

(declare-fun d!2163186 () Bool)

(assert (=> d!2163186 (= (matchR!9030 lt!2468240 s!14361) (matchRSpec!3948 lt!2468240 s!14361))))

(declare-fun lt!2468280 () Unit!160506)

(assert (=> d!2163186 (= lt!2468280 (choose!51459 lt!2468240 s!14361))))

(assert (=> d!2163186 (validRegex!8593 lt!2468240)))

(assert (=> d!2163186 (= (mainMatchTheorem!3948 lt!2468240 s!14361) lt!2468280)))

(declare-fun bs!1844493 () Bool)

(assert (= bs!1844493 d!2163186))

(assert (=> bs!1844493 m!7624554))

(assert (=> bs!1844493 m!7624562))

(declare-fun m!7624724 () Bool)

(assert (=> bs!1844493 m!7624724))

(declare-fun m!7624726 () Bool)

(assert (=> bs!1844493 m!7624726))

(assert (=> b!6909208 d!2163186))

(declare-fun b!6909532 () Bool)

(declare-fun e!4160172 () Bool)

(assert (=> b!6909532 (= e!4160172 (not (= (head!13855 s!14361) (c!1283417 lt!2468241))))))

(declare-fun b!6909533 () Bool)

(declare-fun res!2817818 () Bool)

(assert (=> b!6909533 (=> res!2817818 e!4160172)))

(assert (=> b!6909533 (= res!2817818 (not (isEmpty!38761 (tail!12907 s!14361))))))

(declare-fun b!6909534 () Bool)

(declare-fun e!4160175 () Bool)

(assert (=> b!6909534 (= e!4160175 e!4160172)))

(declare-fun res!2817817 () Bool)

(assert (=> b!6909534 (=> res!2817817 e!4160172)))

(declare-fun call!628235 () Bool)

(assert (=> b!6909534 (= res!2817817 call!628235)))

(declare-fun bm!628230 () Bool)

(assert (=> bm!628230 (= call!628235 (isEmpty!38761 s!14361))))

(declare-fun b!6909535 () Bool)

(declare-fun res!2817815 () Bool)

(declare-fun e!4160176 () Bool)

(assert (=> b!6909535 (=> (not res!2817815) (not e!4160176))))

(assert (=> b!6909535 (= res!2817815 (not call!628235))))

(declare-fun b!6909536 () Bool)

(declare-fun e!4160173 () Bool)

(assert (=> b!6909536 (= e!4160173 e!4160175)))

(declare-fun res!2817816 () Bool)

(assert (=> b!6909536 (=> (not res!2817816) (not e!4160175))))

(declare-fun lt!2468281 () Bool)

(assert (=> b!6909536 (= res!2817816 (not lt!2468281))))

(declare-fun b!6909537 () Bool)

(declare-fun e!4160174 () Bool)

(assert (=> b!6909537 (= e!4160174 (nullable!6723 lt!2468241))))

(declare-fun b!6909538 () Bool)

(assert (=> b!6909538 (= e!4160174 (matchR!9030 (derivativeStep!5402 lt!2468241 (head!13855 s!14361)) (tail!12907 s!14361)))))

(declare-fun b!6909539 () Bool)

(assert (=> b!6909539 (= e!4160176 (= (head!13855 s!14361) (c!1283417 lt!2468241)))))

(declare-fun b!6909540 () Bool)

(declare-fun res!2817819 () Bool)

(assert (=> b!6909540 (=> res!2817819 e!4160173)))

(assert (=> b!6909540 (= res!2817819 e!4160176)))

(declare-fun res!2817820 () Bool)

(assert (=> b!6909540 (=> (not res!2817820) (not e!4160176))))

(assert (=> b!6909540 (= res!2817820 lt!2468281)))

(declare-fun b!6909542 () Bool)

(declare-fun e!4160171 () Bool)

(declare-fun e!4160177 () Bool)

(assert (=> b!6909542 (= e!4160171 e!4160177)))

(declare-fun c!1283492 () Bool)

(assert (=> b!6909542 (= c!1283492 ((_ is EmptyLang!16885) lt!2468241))))

(declare-fun b!6909543 () Bool)

(assert (=> b!6909543 (= e!4160177 (not lt!2468281))))

(declare-fun b!6909544 () Bool)

(declare-fun res!2817813 () Bool)

(assert (=> b!6909544 (=> res!2817813 e!4160173)))

(assert (=> b!6909544 (= res!2817813 (not ((_ is ElementMatch!16885) lt!2468241)))))

(assert (=> b!6909544 (= e!4160177 e!4160173)))

(declare-fun b!6909545 () Bool)

(assert (=> b!6909545 (= e!4160171 (= lt!2468281 call!628235))))

(declare-fun b!6909541 () Bool)

(declare-fun res!2817814 () Bool)

(assert (=> b!6909541 (=> (not res!2817814) (not e!4160176))))

(assert (=> b!6909541 (= res!2817814 (isEmpty!38761 (tail!12907 s!14361)))))

(declare-fun d!2163188 () Bool)

(assert (=> d!2163188 e!4160171))

(declare-fun c!1283493 () Bool)

(assert (=> d!2163188 (= c!1283493 ((_ is EmptyExpr!16885) lt!2468241))))

(assert (=> d!2163188 (= lt!2468281 e!4160174)))

(declare-fun c!1283494 () Bool)

(assert (=> d!2163188 (= c!1283494 (isEmpty!38761 s!14361))))

(assert (=> d!2163188 (validRegex!8593 lt!2468241)))

(assert (=> d!2163188 (= (matchR!9030 lt!2468241 s!14361) lt!2468281)))

(assert (= (and d!2163188 c!1283494) b!6909537))

(assert (= (and d!2163188 (not c!1283494)) b!6909538))

(assert (= (and d!2163188 c!1283493) b!6909545))

(assert (= (and d!2163188 (not c!1283493)) b!6909542))

(assert (= (and b!6909542 c!1283492) b!6909543))

(assert (= (and b!6909542 (not c!1283492)) b!6909544))

(assert (= (and b!6909544 (not res!2817813)) b!6909540))

(assert (= (and b!6909540 res!2817820) b!6909535))

(assert (= (and b!6909535 res!2817815) b!6909541))

(assert (= (and b!6909541 res!2817814) b!6909539))

(assert (= (and b!6909540 (not res!2817819)) b!6909536))

(assert (= (and b!6909536 res!2817816) b!6909534))

(assert (= (and b!6909534 (not res!2817817)) b!6909533))

(assert (= (and b!6909533 (not res!2817818)) b!6909532))

(assert (= (or b!6909545 b!6909534 b!6909535) bm!628230))

(declare-fun m!7624728 () Bool)

(assert (=> b!6909539 m!7624728))

(assert (=> d!2163188 m!7624722))

(assert (=> d!2163188 m!7624692))

(assert (=> b!6909538 m!7624728))

(assert (=> b!6909538 m!7624728))

(declare-fun m!7624730 () Bool)

(assert (=> b!6909538 m!7624730))

(declare-fun m!7624732 () Bool)

(assert (=> b!6909538 m!7624732))

(assert (=> b!6909538 m!7624730))

(assert (=> b!6909538 m!7624732))

(declare-fun m!7624734 () Bool)

(assert (=> b!6909538 m!7624734))

(assert (=> b!6909532 m!7624728))

(assert (=> b!6909533 m!7624732))

(assert (=> b!6909533 m!7624732))

(declare-fun m!7624736 () Bool)

(assert (=> b!6909533 m!7624736))

(assert (=> bm!628230 m!7624722))

(declare-fun m!7624738 () Bool)

(assert (=> b!6909537 m!7624738))

(assert (=> b!6909541 m!7624732))

(assert (=> b!6909541 m!7624732))

(assert (=> b!6909541 m!7624736))

(assert (=> b!6909208 d!2163188))

(declare-fun b!6909546 () Bool)

(declare-fun e!4160179 () Bool)

(assert (=> b!6909546 (= e!4160179 (not (= (head!13855 s!14361) (c!1283417 lt!2468240))))))

(declare-fun b!6909547 () Bool)

(declare-fun res!2817826 () Bool)

(assert (=> b!6909547 (=> res!2817826 e!4160179)))

(assert (=> b!6909547 (= res!2817826 (not (isEmpty!38761 (tail!12907 s!14361))))))

(declare-fun b!6909548 () Bool)

(declare-fun e!4160182 () Bool)

(assert (=> b!6909548 (= e!4160182 e!4160179)))

(declare-fun res!2817825 () Bool)

(assert (=> b!6909548 (=> res!2817825 e!4160179)))

(declare-fun call!628236 () Bool)

(assert (=> b!6909548 (= res!2817825 call!628236)))

(declare-fun bm!628231 () Bool)

(assert (=> bm!628231 (= call!628236 (isEmpty!38761 s!14361))))

(declare-fun b!6909549 () Bool)

(declare-fun res!2817823 () Bool)

(declare-fun e!4160183 () Bool)

(assert (=> b!6909549 (=> (not res!2817823) (not e!4160183))))

(assert (=> b!6909549 (= res!2817823 (not call!628236))))

(declare-fun b!6909550 () Bool)

(declare-fun e!4160180 () Bool)

(assert (=> b!6909550 (= e!4160180 e!4160182)))

(declare-fun res!2817824 () Bool)

(assert (=> b!6909550 (=> (not res!2817824) (not e!4160182))))

(declare-fun lt!2468282 () Bool)

(assert (=> b!6909550 (= res!2817824 (not lt!2468282))))

(declare-fun b!6909551 () Bool)

(declare-fun e!4160181 () Bool)

(assert (=> b!6909551 (= e!4160181 (nullable!6723 lt!2468240))))

(declare-fun b!6909552 () Bool)

(assert (=> b!6909552 (= e!4160181 (matchR!9030 (derivativeStep!5402 lt!2468240 (head!13855 s!14361)) (tail!12907 s!14361)))))

(declare-fun b!6909553 () Bool)

(assert (=> b!6909553 (= e!4160183 (= (head!13855 s!14361) (c!1283417 lt!2468240)))))

(declare-fun b!6909554 () Bool)

(declare-fun res!2817827 () Bool)

(assert (=> b!6909554 (=> res!2817827 e!4160180)))

(assert (=> b!6909554 (= res!2817827 e!4160183)))

(declare-fun res!2817828 () Bool)

(assert (=> b!6909554 (=> (not res!2817828) (not e!4160183))))

(assert (=> b!6909554 (= res!2817828 lt!2468282)))

(declare-fun b!6909556 () Bool)

(declare-fun e!4160178 () Bool)

(declare-fun e!4160184 () Bool)

(assert (=> b!6909556 (= e!4160178 e!4160184)))

(declare-fun c!1283495 () Bool)

(assert (=> b!6909556 (= c!1283495 ((_ is EmptyLang!16885) lt!2468240))))

(declare-fun b!6909557 () Bool)

(assert (=> b!6909557 (= e!4160184 (not lt!2468282))))

(declare-fun b!6909558 () Bool)

(declare-fun res!2817821 () Bool)

(assert (=> b!6909558 (=> res!2817821 e!4160180)))

(assert (=> b!6909558 (= res!2817821 (not ((_ is ElementMatch!16885) lt!2468240)))))

(assert (=> b!6909558 (= e!4160184 e!4160180)))

(declare-fun b!6909559 () Bool)

(assert (=> b!6909559 (= e!4160178 (= lt!2468282 call!628236))))

(declare-fun b!6909555 () Bool)

(declare-fun res!2817822 () Bool)

(assert (=> b!6909555 (=> (not res!2817822) (not e!4160183))))

(assert (=> b!6909555 (= res!2817822 (isEmpty!38761 (tail!12907 s!14361)))))

(declare-fun d!2163190 () Bool)

(assert (=> d!2163190 e!4160178))

(declare-fun c!1283496 () Bool)

(assert (=> d!2163190 (= c!1283496 ((_ is EmptyExpr!16885) lt!2468240))))

(assert (=> d!2163190 (= lt!2468282 e!4160181)))

(declare-fun c!1283497 () Bool)

(assert (=> d!2163190 (= c!1283497 (isEmpty!38761 s!14361))))

(assert (=> d!2163190 (validRegex!8593 lt!2468240)))

(assert (=> d!2163190 (= (matchR!9030 lt!2468240 s!14361) lt!2468282)))

(assert (= (and d!2163190 c!1283497) b!6909551))

(assert (= (and d!2163190 (not c!1283497)) b!6909552))

(assert (= (and d!2163190 c!1283496) b!6909559))

(assert (= (and d!2163190 (not c!1283496)) b!6909556))

(assert (= (and b!6909556 c!1283495) b!6909557))

(assert (= (and b!6909556 (not c!1283495)) b!6909558))

(assert (= (and b!6909558 (not res!2817821)) b!6909554))

(assert (= (and b!6909554 res!2817828) b!6909549))

(assert (= (and b!6909549 res!2817823) b!6909555))

(assert (= (and b!6909555 res!2817822) b!6909553))

(assert (= (and b!6909554 (not res!2817827)) b!6909550))

(assert (= (and b!6909550 res!2817824) b!6909548))

(assert (= (and b!6909548 (not res!2817825)) b!6909547))

(assert (= (and b!6909547 (not res!2817826)) b!6909546))

(assert (= (or b!6909559 b!6909548 b!6909549) bm!628231))

(assert (=> b!6909553 m!7624728))

(assert (=> d!2163190 m!7624722))

(assert (=> d!2163190 m!7624726))

(assert (=> b!6909552 m!7624728))

(assert (=> b!6909552 m!7624728))

(declare-fun m!7624740 () Bool)

(assert (=> b!6909552 m!7624740))

(assert (=> b!6909552 m!7624732))

(assert (=> b!6909552 m!7624740))

(assert (=> b!6909552 m!7624732))

(declare-fun m!7624742 () Bool)

(assert (=> b!6909552 m!7624742))

(assert (=> b!6909546 m!7624728))

(assert (=> b!6909547 m!7624732))

(assert (=> b!6909547 m!7624732))

(assert (=> b!6909547 m!7624736))

(assert (=> bm!628231 m!7624722))

(declare-fun m!7624744 () Bool)

(assert (=> b!6909551 m!7624744))

(assert (=> b!6909555 m!7624732))

(assert (=> b!6909555 m!7624732))

(assert (=> b!6909555 m!7624736))

(assert (=> b!6909208 d!2163190))

(declare-fun bs!1844502 () Bool)

(declare-fun b!6909565 () Bool)

(assert (= bs!1844502 (and b!6909565 b!6909315)))

(declare-fun lambda!392607 () Int)

(assert (=> bs!1844502 (not (= lambda!392607 lambda!392584))))

(declare-fun bs!1844503 () Bool)

(assert (= bs!1844503 (and b!6909565 b!6909196)))

(assert (=> bs!1844503 (not (= lambda!392607 lambda!392570))))

(declare-fun bs!1844504 () Bool)

(assert (= bs!1844504 (and b!6909565 b!6909501)))

(assert (=> bs!1844504 (= (and (= (reg!17214 lt!2468241) (reg!17214 lt!2468240)) (= lt!2468241 lt!2468240)) (= lambda!392607 lambda!392603))))

(declare-fun bs!1844505 () Bool)

(assert (= bs!1844505 (and b!6909565 d!2163166)))

(assert (=> bs!1844505 (not (= lambda!392607 lambda!392599))))

(assert (=> bs!1844505 (not (= lambda!392607 lambda!392600))))

(assert (=> bs!1844503 (not (= lambda!392607 lambda!392569))))

(declare-fun bs!1844507 () Bool)

(assert (= bs!1844507 (and b!6909565 d!2163160)))

(assert (=> bs!1844507 (not (= lambda!392607 lambda!392594))))

(declare-fun bs!1844508 () Bool)

(assert (= bs!1844508 (and b!6909565 b!6909502)))

(assert (=> bs!1844508 (not (= lambda!392607 lambda!392604))))

(declare-fun bs!1844509 () Bool)

(assert (= bs!1844509 (and b!6909565 b!6909314)))

(assert (=> bs!1844509 (= (and (= s!14361 (_1!37055 lt!2468245)) (= (reg!17214 lt!2468241) (reg!17214 r1!6342)) (= lt!2468241 r1!6342)) (= lambda!392607 lambda!392583))))

(assert (=> b!6909565 true))

(assert (=> b!6909565 true))

(declare-fun bs!1844510 () Bool)

(declare-fun b!6909566 () Bool)

(assert (= bs!1844510 (and b!6909566 b!6909315)))

(declare-fun lambda!392608 () Int)

(assert (=> bs!1844510 (= (and (= s!14361 (_1!37055 lt!2468245)) (= (regOne!34282 lt!2468241) (regOne!34282 r1!6342)) (= (regTwo!34282 lt!2468241) (regTwo!34282 r1!6342))) (= lambda!392608 lambda!392584))))

(declare-fun bs!1844511 () Bool)

(assert (= bs!1844511 (and b!6909566 b!6909196)))

(assert (=> bs!1844511 (= (and (= (regOne!34282 lt!2468241) r1!6342) (= (regTwo!34282 lt!2468241) lt!2468248)) (= lambda!392608 lambda!392570))))

(declare-fun bs!1844512 () Bool)

(assert (= bs!1844512 (and b!6909566 b!6909501)))

(assert (=> bs!1844512 (not (= lambda!392608 lambda!392603))))

(declare-fun bs!1844514 () Bool)

(assert (= bs!1844514 (and b!6909566 d!2163166)))

(assert (=> bs!1844514 (not (= lambda!392608 lambda!392599))))

(assert (=> bs!1844514 (= (and (= (regOne!34282 lt!2468241) r1!6342) (= (regTwo!34282 lt!2468241) lt!2468248)) (= lambda!392608 lambda!392600))))

(assert (=> bs!1844511 (not (= lambda!392608 lambda!392569))))

(declare-fun bs!1844515 () Bool)

(assert (= bs!1844515 (and b!6909566 b!6909565)))

(assert (=> bs!1844515 (not (= lambda!392608 lambda!392607))))

(declare-fun bs!1844516 () Bool)

(assert (= bs!1844516 (and b!6909566 d!2163160)))

(assert (=> bs!1844516 (not (= lambda!392608 lambda!392594))))

(declare-fun bs!1844517 () Bool)

(assert (= bs!1844517 (and b!6909566 b!6909502)))

(assert (=> bs!1844517 (= (and (= (regOne!34282 lt!2468241) (regOne!34282 lt!2468240)) (= (regTwo!34282 lt!2468241) (regTwo!34282 lt!2468240))) (= lambda!392608 lambda!392604))))

(declare-fun bs!1844518 () Bool)

(assert (= bs!1844518 (and b!6909566 b!6909314)))

(assert (=> bs!1844518 (not (= lambda!392608 lambda!392583))))

(assert (=> b!6909566 true))

(assert (=> b!6909566 true))

(declare-fun b!6909560 () Bool)

(declare-fun e!4160188 () Bool)

(assert (=> b!6909560 (= e!4160188 (= s!14361 (Cons!66518 (c!1283417 lt!2468241) Nil!66518)))))

(declare-fun b!6909561 () Bool)

(declare-fun e!4160185 () Bool)

(declare-fun call!628238 () Bool)

(assert (=> b!6909561 (= e!4160185 call!628238)))

(declare-fun b!6909562 () Bool)

(declare-fun c!1283498 () Bool)

(assert (=> b!6909562 (= c!1283498 ((_ is ElementMatch!16885) lt!2468241))))

(declare-fun e!4160187 () Bool)

(assert (=> b!6909562 (= e!4160187 e!4160188)))

(declare-fun b!6909563 () Bool)

(declare-fun c!1283501 () Bool)

(assert (=> b!6909563 (= c!1283501 ((_ is Union!16885) lt!2468241))))

(declare-fun e!4160189 () Bool)

(assert (=> b!6909563 (= e!4160188 e!4160189)))

(declare-fun b!6909564 () Bool)

(declare-fun e!4160186 () Bool)

(assert (=> b!6909564 (= e!4160189 e!4160186)))

(declare-fun res!2817830 () Bool)

(assert (=> b!6909564 (= res!2817830 (matchRSpec!3948 (regOne!34283 lt!2468241) s!14361))))

(assert (=> b!6909564 (=> res!2817830 e!4160186)))

(declare-fun e!4160191 () Bool)

(declare-fun call!628237 () Bool)

(assert (=> b!6909565 (= e!4160191 call!628237)))

(declare-fun e!4160190 () Bool)

(assert (=> b!6909566 (= e!4160190 call!628237)))

(declare-fun b!6909567 () Bool)

(assert (=> b!6909567 (= e!4160185 e!4160187)))

(declare-fun res!2817831 () Bool)

(assert (=> b!6909567 (= res!2817831 (not ((_ is EmptyLang!16885) lt!2468241)))))

(assert (=> b!6909567 (=> (not res!2817831) (not e!4160187))))

(declare-fun bm!628232 () Bool)

(declare-fun c!1283500 () Bool)

(assert (=> bm!628232 (= call!628237 (Exists!3893 (ite c!1283500 lambda!392607 lambda!392608)))))

(declare-fun b!6909568 () Bool)

(assert (=> b!6909568 (= e!4160186 (matchRSpec!3948 (regTwo!34283 lt!2468241) s!14361))))

(declare-fun b!6909569 () Bool)

(declare-fun res!2817829 () Bool)

(assert (=> b!6909569 (=> res!2817829 e!4160191)))

(assert (=> b!6909569 (= res!2817829 call!628238)))

(assert (=> b!6909569 (= e!4160190 e!4160191)))

(declare-fun d!2163192 () Bool)

(declare-fun c!1283499 () Bool)

(assert (=> d!2163192 (= c!1283499 ((_ is EmptyExpr!16885) lt!2468241))))

(assert (=> d!2163192 (= (matchRSpec!3948 lt!2468241 s!14361) e!4160185)))

(declare-fun bm!628233 () Bool)

(assert (=> bm!628233 (= call!628238 (isEmpty!38761 s!14361))))

(declare-fun b!6909570 () Bool)

(assert (=> b!6909570 (= e!4160189 e!4160190)))

(assert (=> b!6909570 (= c!1283500 ((_ is Star!16885) lt!2468241))))

(assert (= (and d!2163192 c!1283499) b!6909561))

(assert (= (and d!2163192 (not c!1283499)) b!6909567))

(assert (= (and b!6909567 res!2817831) b!6909562))

(assert (= (and b!6909562 c!1283498) b!6909560))

(assert (= (and b!6909562 (not c!1283498)) b!6909563))

(assert (= (and b!6909563 c!1283501) b!6909564))

(assert (= (and b!6909563 (not c!1283501)) b!6909570))

(assert (= (and b!6909564 (not res!2817830)) b!6909568))

(assert (= (and b!6909570 c!1283500) b!6909569))

(assert (= (and b!6909570 (not c!1283500)) b!6909566))

(assert (= (and b!6909569 (not res!2817829)) b!6909565))

(assert (= (or b!6909565 b!6909566) bm!628232))

(assert (= (or b!6909561 b!6909569) bm!628233))

(declare-fun m!7624768 () Bool)

(assert (=> b!6909564 m!7624768))

(declare-fun m!7624770 () Bool)

(assert (=> bm!628232 m!7624770))

(declare-fun m!7624772 () Bool)

(assert (=> b!6909568 m!7624772))

(assert (=> bm!628233 m!7624722))

(assert (=> b!6909208 d!2163192))

(declare-fun b!6909594 () Bool)

(declare-fun e!4160212 () Bool)

(declare-fun e!4160210 () Bool)

(assert (=> b!6909594 (= e!4160212 e!4160210)))

(declare-fun c!1283507 () Bool)

(assert (=> b!6909594 (= c!1283507 ((_ is Union!16885) r3!135))))

(declare-fun b!6909595 () Bool)

(declare-fun e!4160206 () Bool)

(declare-fun call!628244 () Bool)

(assert (=> b!6909595 (= e!4160206 call!628244)))

(declare-fun b!6909596 () Bool)

(declare-fun e!4160211 () Bool)

(declare-fun call!628243 () Bool)

(assert (=> b!6909596 (= e!4160211 call!628243)))

(declare-fun bm!628238 () Bool)

(declare-fun call!628245 () Bool)

(assert (=> bm!628238 (= call!628244 call!628245)))

(declare-fun bm!628239 () Bool)

(assert (=> bm!628239 (= call!628243 (validRegex!8593 (ite c!1283507 (regOne!34283 r3!135) (regTwo!34282 r3!135))))))

(declare-fun b!6909597 () Bool)

(declare-fun res!2817848 () Bool)

(assert (=> b!6909597 (=> (not res!2817848) (not e!4160206))))

(assert (=> b!6909597 (= res!2817848 call!628243)))

(assert (=> b!6909597 (= e!4160210 e!4160206)))

(declare-fun b!6909598 () Bool)

(declare-fun e!4160207 () Bool)

(assert (=> b!6909598 (= e!4160207 e!4160211)))

(declare-fun res!2817846 () Bool)

(assert (=> b!6909598 (=> (not res!2817846) (not e!4160211))))

(assert (=> b!6909598 (= res!2817846 call!628244)))

(declare-fun b!6909599 () Bool)

(declare-fun res!2817849 () Bool)

(assert (=> b!6909599 (=> res!2817849 e!4160207)))

(assert (=> b!6909599 (= res!2817849 (not ((_ is Concat!25730) r3!135)))))

(assert (=> b!6909599 (= e!4160210 e!4160207)))

(declare-fun b!6909600 () Bool)

(declare-fun e!4160208 () Bool)

(assert (=> b!6909600 (= e!4160212 e!4160208)))

(declare-fun res!2817845 () Bool)

(assert (=> b!6909600 (= res!2817845 (not (nullable!6723 (reg!17214 r3!135))))))

(assert (=> b!6909600 (=> (not res!2817845) (not e!4160208))))

(declare-fun b!6909601 () Bool)

(declare-fun e!4160209 () Bool)

(assert (=> b!6909601 (= e!4160209 e!4160212)))

(declare-fun c!1283508 () Bool)

(assert (=> b!6909601 (= c!1283508 ((_ is Star!16885) r3!135))))

(declare-fun b!6909602 () Bool)

(assert (=> b!6909602 (= e!4160208 call!628245)))

(declare-fun d!2163204 () Bool)

(declare-fun res!2817847 () Bool)

(assert (=> d!2163204 (=> res!2817847 e!4160209)))

(assert (=> d!2163204 (= res!2817847 ((_ is ElementMatch!16885) r3!135))))

(assert (=> d!2163204 (= (validRegex!8593 r3!135) e!4160209)))

(declare-fun bm!628240 () Bool)

(assert (=> bm!628240 (= call!628245 (validRegex!8593 (ite c!1283508 (reg!17214 r3!135) (ite c!1283507 (regTwo!34283 r3!135) (regOne!34282 r3!135)))))))

(assert (= (and d!2163204 (not res!2817847)) b!6909601))

(assert (= (and b!6909601 c!1283508) b!6909600))

(assert (= (and b!6909601 (not c!1283508)) b!6909594))

(assert (= (and b!6909600 res!2817845) b!6909602))

(assert (= (and b!6909594 c!1283507) b!6909597))

(assert (= (and b!6909594 (not c!1283507)) b!6909599))

(assert (= (and b!6909597 res!2817848) b!6909595))

(assert (= (and b!6909599 (not res!2817849)) b!6909598))

(assert (= (and b!6909598 res!2817846) b!6909596))

(assert (= (or b!6909597 b!6909596) bm!628239))

(assert (= (or b!6909595 b!6909598) bm!628238))

(assert (= (or b!6909602 bm!628238) bm!628240))

(declare-fun m!7624774 () Bool)

(assert (=> bm!628239 m!7624774))

(declare-fun m!7624776 () Bool)

(assert (=> b!6909600 m!7624776))

(declare-fun m!7624778 () Bool)

(assert (=> bm!628240 m!7624778))

(assert (=> b!6909192 d!2163204))

(declare-fun d!2163206 () Bool)

(declare-fun isEmpty!38762 (Option!16664) Bool)

(assert (=> d!2163206 (= (isDefined!13367 lt!2468247) (not (isEmpty!38762 lt!2468247)))))

(declare-fun bs!1844519 () Bool)

(assert (= bs!1844519 d!2163206))

(declare-fun m!7624780 () Bool)

(assert (=> bs!1844519 m!7624780))

(assert (=> b!6909199 d!2163206))

(declare-fun b!6909657 () Bool)

(declare-fun res!2817884 () Bool)

(declare-fun e!4160249 () Bool)

(assert (=> b!6909657 (=> (not res!2817884) (not e!4160249))))

(declare-fun lt!2468301 () Option!16664)

(assert (=> b!6909657 (= res!2817884 (matchR!9030 lt!2468248 (_2!37055 (get!23278 lt!2468301))))))

(declare-fun b!6909658 () Bool)

(declare-fun e!4160245 () Option!16664)

(assert (=> b!6909658 (= e!4160245 (Some!16663 (tuple2!67505 Nil!66518 s!14361)))))

(declare-fun b!6909659 () Bool)

(declare-fun e!4160248 () Option!16664)

(assert (=> b!6909659 (= e!4160245 e!4160248)))

(declare-fun c!1283522 () Bool)

(assert (=> b!6909659 (= c!1283522 ((_ is Nil!66518) s!14361))))

(declare-fun b!6909660 () Bool)

(assert (=> b!6909660 (= e!4160248 None!16663)))

(declare-fun d!2163208 () Bool)

(declare-fun e!4160247 () Bool)

(assert (=> d!2163208 e!4160247))

(declare-fun res!2817882 () Bool)

(assert (=> d!2163208 (=> res!2817882 e!4160247)))

(assert (=> d!2163208 (= res!2817882 e!4160249)))

(declare-fun res!2817883 () Bool)

(assert (=> d!2163208 (=> (not res!2817883) (not e!4160249))))

(assert (=> d!2163208 (= res!2817883 (isDefined!13367 lt!2468301))))

(assert (=> d!2163208 (= lt!2468301 e!4160245)))

(declare-fun c!1283521 () Bool)

(declare-fun e!4160246 () Bool)

(assert (=> d!2163208 (= c!1283521 e!4160246)))

(declare-fun res!2817880 () Bool)

(assert (=> d!2163208 (=> (not res!2817880) (not e!4160246))))

(assert (=> d!2163208 (= res!2817880 (matchR!9030 r1!6342 Nil!66518))))

(assert (=> d!2163208 (validRegex!8593 r1!6342)))

(assert (=> d!2163208 (= (findConcatSeparation!3078 r1!6342 lt!2468248 Nil!66518 s!14361 s!14361) lt!2468301)))

(declare-fun b!6909661 () Bool)

(declare-fun ++!14937 (List!66642 List!66642) List!66642)

(assert (=> b!6909661 (= e!4160249 (= (++!14937 (_1!37055 (get!23278 lt!2468301)) (_2!37055 (get!23278 lt!2468301))) s!14361))))

(declare-fun b!6909662 () Bool)

(assert (=> b!6909662 (= e!4160246 (matchR!9030 lt!2468248 s!14361))))

(declare-fun b!6909663 () Bool)

(assert (=> b!6909663 (= e!4160247 (not (isDefined!13367 lt!2468301)))))

(declare-fun b!6909664 () Bool)

(declare-fun res!2817881 () Bool)

(assert (=> b!6909664 (=> (not res!2817881) (not e!4160249))))

(assert (=> b!6909664 (= res!2817881 (matchR!9030 r1!6342 (_1!37055 (get!23278 lt!2468301))))))

(declare-fun b!6909665 () Bool)

(declare-fun lt!2468300 () Unit!160506)

(declare-fun lt!2468302 () Unit!160506)

(assert (=> b!6909665 (= lt!2468300 lt!2468302)))

(assert (=> b!6909665 (= (++!14937 (++!14937 Nil!66518 (Cons!66518 (h!72966 s!14361) Nil!66518)) (t!380385 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2810 (List!66642 C!34040 List!66642 List!66642) Unit!160506)

(assert (=> b!6909665 (= lt!2468302 (lemmaMoveElementToOtherListKeepsConcatEq!2810 Nil!66518 (h!72966 s!14361) (t!380385 s!14361) s!14361))))

(assert (=> b!6909665 (= e!4160248 (findConcatSeparation!3078 r1!6342 lt!2468248 (++!14937 Nil!66518 (Cons!66518 (h!72966 s!14361) Nil!66518)) (t!380385 s!14361) s!14361))))

(assert (= (and d!2163208 res!2817880) b!6909662))

(assert (= (and d!2163208 c!1283521) b!6909658))

(assert (= (and d!2163208 (not c!1283521)) b!6909659))

(assert (= (and b!6909659 c!1283522) b!6909660))

(assert (= (and b!6909659 (not c!1283522)) b!6909665))

(assert (= (and d!2163208 res!2817883) b!6909664))

(assert (= (and b!6909664 res!2817881) b!6909657))

(assert (= (and b!6909657 res!2817884) b!6909661))

(assert (= (and d!2163208 (not res!2817882)) b!6909663))

(declare-fun m!7624810 () Bool)

(assert (=> b!6909657 m!7624810))

(declare-fun m!7624812 () Bool)

(assert (=> b!6909657 m!7624812))

(declare-fun m!7624814 () Bool)

(assert (=> b!6909665 m!7624814))

(assert (=> b!6909665 m!7624814))

(declare-fun m!7624816 () Bool)

(assert (=> b!6909665 m!7624816))

(declare-fun m!7624818 () Bool)

(assert (=> b!6909665 m!7624818))

(assert (=> b!6909665 m!7624814))

(declare-fun m!7624820 () Bool)

(assert (=> b!6909665 m!7624820))

(declare-fun m!7624822 () Bool)

(assert (=> b!6909662 m!7624822))

(declare-fun m!7624824 () Bool)

(assert (=> d!2163208 m!7624824))

(declare-fun m!7624826 () Bool)

(assert (=> d!2163208 m!7624826))

(assert (=> d!2163208 m!7624570))

(assert (=> b!6909664 m!7624810))

(declare-fun m!7624828 () Bool)

(assert (=> b!6909664 m!7624828))

(assert (=> b!6909663 m!7624824))

(assert (=> b!6909661 m!7624810))

(declare-fun m!7624830 () Bool)

(assert (=> b!6909661 m!7624830))

(assert (=> b!6909199 d!2163208))

(declare-fun b!6909684 () Bool)

(declare-fun e!4160255 () Bool)

(assert (=> b!6909684 (= e!4160255 (not (= (head!13855 (_2!37055 lt!2468245)) (c!1283417 lt!2468248))))))

(declare-fun b!6909685 () Bool)

(declare-fun res!2817890 () Bool)

(assert (=> b!6909685 (=> res!2817890 e!4160255)))

(assert (=> b!6909685 (= res!2817890 (not (isEmpty!38761 (tail!12907 (_2!37055 lt!2468245)))))))

(declare-fun b!6909686 () Bool)

(declare-fun e!4160258 () Bool)

(assert (=> b!6909686 (= e!4160258 e!4160255)))

(declare-fun res!2817889 () Bool)

(assert (=> b!6909686 (=> res!2817889 e!4160255)))

(declare-fun call!628249 () Bool)

(assert (=> b!6909686 (= res!2817889 call!628249)))

(declare-fun bm!628244 () Bool)

(assert (=> bm!628244 (= call!628249 (isEmpty!38761 (_2!37055 lt!2468245)))))

(declare-fun b!6909687 () Bool)

(declare-fun res!2817887 () Bool)

(declare-fun e!4160259 () Bool)

(assert (=> b!6909687 (=> (not res!2817887) (not e!4160259))))

(assert (=> b!6909687 (= res!2817887 (not call!628249))))

(declare-fun b!6909688 () Bool)

(declare-fun e!4160256 () Bool)

(assert (=> b!6909688 (= e!4160256 e!4160258)))

(declare-fun res!2817888 () Bool)

(assert (=> b!6909688 (=> (not res!2817888) (not e!4160258))))

(declare-fun lt!2468303 () Bool)

(assert (=> b!6909688 (= res!2817888 (not lt!2468303))))

(declare-fun b!6909689 () Bool)

(declare-fun e!4160257 () Bool)

(assert (=> b!6909689 (= e!4160257 (nullable!6723 lt!2468248))))

(declare-fun b!6909690 () Bool)

(assert (=> b!6909690 (= e!4160257 (matchR!9030 (derivativeStep!5402 lt!2468248 (head!13855 (_2!37055 lt!2468245))) (tail!12907 (_2!37055 lt!2468245))))))

(declare-fun b!6909691 () Bool)

(assert (=> b!6909691 (= e!4160259 (= (head!13855 (_2!37055 lt!2468245)) (c!1283417 lt!2468248)))))

(declare-fun b!6909692 () Bool)

(declare-fun res!2817891 () Bool)

(assert (=> b!6909692 (=> res!2817891 e!4160256)))

(assert (=> b!6909692 (= res!2817891 e!4160259)))

(declare-fun res!2817892 () Bool)

(assert (=> b!6909692 (=> (not res!2817892) (not e!4160259))))

(assert (=> b!6909692 (= res!2817892 lt!2468303)))

(declare-fun b!6909694 () Bool)

(declare-fun e!4160254 () Bool)

(declare-fun e!4160260 () Bool)

(assert (=> b!6909694 (= e!4160254 e!4160260)))

(declare-fun c!1283523 () Bool)

(assert (=> b!6909694 (= c!1283523 ((_ is EmptyLang!16885) lt!2468248))))

(declare-fun b!6909695 () Bool)

(assert (=> b!6909695 (= e!4160260 (not lt!2468303))))

(declare-fun b!6909696 () Bool)

(declare-fun res!2817885 () Bool)

(assert (=> b!6909696 (=> res!2817885 e!4160256)))

(assert (=> b!6909696 (= res!2817885 (not ((_ is ElementMatch!16885) lt!2468248)))))

(assert (=> b!6909696 (= e!4160260 e!4160256)))

(declare-fun b!6909697 () Bool)

(assert (=> b!6909697 (= e!4160254 (= lt!2468303 call!628249))))

(declare-fun b!6909693 () Bool)

(declare-fun res!2817886 () Bool)

(assert (=> b!6909693 (=> (not res!2817886) (not e!4160259))))

(assert (=> b!6909693 (= res!2817886 (isEmpty!38761 (tail!12907 (_2!37055 lt!2468245))))))

(declare-fun d!2163212 () Bool)

(assert (=> d!2163212 e!4160254))

(declare-fun c!1283524 () Bool)

(assert (=> d!2163212 (= c!1283524 ((_ is EmptyExpr!16885) lt!2468248))))

(assert (=> d!2163212 (= lt!2468303 e!4160257)))

(declare-fun c!1283525 () Bool)

(assert (=> d!2163212 (= c!1283525 (isEmpty!38761 (_2!37055 lt!2468245)))))

(assert (=> d!2163212 (validRegex!8593 lt!2468248)))

(assert (=> d!2163212 (= (matchR!9030 lt!2468248 (_2!37055 lt!2468245)) lt!2468303)))

(assert (= (and d!2163212 c!1283525) b!6909689))

(assert (= (and d!2163212 (not c!1283525)) b!6909690))

(assert (= (and d!2163212 c!1283524) b!6909697))

(assert (= (and d!2163212 (not c!1283524)) b!6909694))

(assert (= (and b!6909694 c!1283523) b!6909695))

(assert (= (and b!6909694 (not c!1283523)) b!6909696))

(assert (= (and b!6909696 (not res!2817885)) b!6909692))

(assert (= (and b!6909692 res!2817892) b!6909687))

(assert (= (and b!6909687 res!2817887) b!6909693))

(assert (= (and b!6909693 res!2817886) b!6909691))

(assert (= (and b!6909692 (not res!2817891)) b!6909688))

(assert (= (and b!6909688 res!2817888) b!6909686))

(assert (= (and b!6909686 (not res!2817889)) b!6909685))

(assert (= (and b!6909685 (not res!2817890)) b!6909684))

(assert (= (or b!6909697 b!6909686 b!6909687) bm!628244))

(declare-fun m!7624832 () Bool)

(assert (=> b!6909691 m!7624832))

(declare-fun m!7624834 () Bool)

(assert (=> d!2163212 m!7624834))

(declare-fun m!7624836 () Bool)

(assert (=> d!2163212 m!7624836))

(assert (=> b!6909690 m!7624832))

(assert (=> b!6909690 m!7624832))

(declare-fun m!7624838 () Bool)

(assert (=> b!6909690 m!7624838))

(declare-fun m!7624840 () Bool)

(assert (=> b!6909690 m!7624840))

(assert (=> b!6909690 m!7624838))

(assert (=> b!6909690 m!7624840))

(declare-fun m!7624842 () Bool)

(assert (=> b!6909690 m!7624842))

(assert (=> b!6909684 m!7624832))

(assert (=> b!6909685 m!7624840))

(assert (=> b!6909685 m!7624840))

(declare-fun m!7624844 () Bool)

(assert (=> b!6909685 m!7624844))

(assert (=> bm!628244 m!7624834))

(declare-fun m!7624846 () Bool)

(assert (=> b!6909689 m!7624846))

(assert (=> b!6909693 m!7624840))

(assert (=> b!6909693 m!7624840))

(assert (=> b!6909693 m!7624844))

(assert (=> b!6909193 d!2163212))

(declare-fun b!6909756 () Bool)

(declare-fun e!4160275 () Bool)

(assert (=> b!6909756 (= e!4160275 tp_is_empty!42995)))

(declare-fun b!6909759 () Bool)

(declare-fun tp!1902677 () Bool)

(declare-fun tp!1902678 () Bool)

(assert (=> b!6909759 (= e!4160275 (and tp!1902677 tp!1902678))))

(declare-fun b!6909758 () Bool)

(declare-fun tp!1902674 () Bool)

(assert (=> b!6909758 (= e!4160275 tp!1902674)))

(declare-fun b!6909757 () Bool)

(declare-fun tp!1902676 () Bool)

(declare-fun tp!1902675 () Bool)

(assert (=> b!6909757 (= e!4160275 (and tp!1902676 tp!1902675))))

(assert (=> b!6909206 (= tp!1902577 e!4160275)))

(assert (= (and b!6909206 ((_ is ElementMatch!16885) (regOne!34283 r3!135))) b!6909756))

(assert (= (and b!6909206 ((_ is Concat!25730) (regOne!34283 r3!135))) b!6909757))

(assert (= (and b!6909206 ((_ is Star!16885) (regOne!34283 r3!135))) b!6909758))

(assert (= (and b!6909206 ((_ is Union!16885) (regOne!34283 r3!135))) b!6909759))

(declare-fun b!6909764 () Bool)

(declare-fun e!4160277 () Bool)

(assert (=> b!6909764 (= e!4160277 tp_is_empty!42995)))

(declare-fun b!6909767 () Bool)

(declare-fun tp!1902687 () Bool)

(declare-fun tp!1902688 () Bool)

(assert (=> b!6909767 (= e!4160277 (and tp!1902687 tp!1902688))))

(declare-fun b!6909766 () Bool)

(declare-fun tp!1902684 () Bool)

(assert (=> b!6909766 (= e!4160277 tp!1902684)))

(declare-fun b!6909765 () Bool)

(declare-fun tp!1902686 () Bool)

(declare-fun tp!1902685 () Bool)

(assert (=> b!6909765 (= e!4160277 (and tp!1902686 tp!1902685))))

(assert (=> b!6909206 (= tp!1902569 e!4160277)))

(assert (= (and b!6909206 ((_ is ElementMatch!16885) (regTwo!34283 r3!135))) b!6909764))

(assert (= (and b!6909206 ((_ is Concat!25730) (regTwo!34283 r3!135))) b!6909765))

(assert (= (and b!6909206 ((_ is Star!16885) (regTwo!34283 r3!135))) b!6909766))

(assert (= (and b!6909206 ((_ is Union!16885) (regTwo!34283 r3!135))) b!6909767))

(declare-fun b!6909777 () Bool)

(declare-fun e!4160283 () Bool)

(declare-fun tp!1902694 () Bool)

(assert (=> b!6909777 (= e!4160283 (and tp_is_empty!42995 tp!1902694))))

(assert (=> b!6909202 (= tp!1902578 e!4160283)))

(assert (= (and b!6909202 ((_ is Cons!66518) (t!380385 s!14361))) b!6909777))

(declare-fun b!6909778 () Bool)

(declare-fun e!4160284 () Bool)

(assert (=> b!6909778 (= e!4160284 tp_is_empty!42995)))

(declare-fun b!6909781 () Bool)

(declare-fun tp!1902698 () Bool)

(declare-fun tp!1902699 () Bool)

(assert (=> b!6909781 (= e!4160284 (and tp!1902698 tp!1902699))))

(declare-fun b!6909780 () Bool)

(declare-fun tp!1902695 () Bool)

(assert (=> b!6909780 (= e!4160284 tp!1902695)))

(declare-fun b!6909779 () Bool)

(declare-fun tp!1902697 () Bool)

(declare-fun tp!1902696 () Bool)

(assert (=> b!6909779 (= e!4160284 (and tp!1902697 tp!1902696))))

(assert (=> b!6909207 (= tp!1902583 e!4160284)))

(assert (= (and b!6909207 ((_ is ElementMatch!16885) (reg!17214 r1!6342))) b!6909778))

(assert (= (and b!6909207 ((_ is Concat!25730) (reg!17214 r1!6342))) b!6909779))

(assert (= (and b!6909207 ((_ is Star!16885) (reg!17214 r1!6342))) b!6909780))

(assert (= (and b!6909207 ((_ is Union!16885) (reg!17214 r1!6342))) b!6909781))

(declare-fun b!6909782 () Bool)

(declare-fun e!4160285 () Bool)

(assert (=> b!6909782 (= e!4160285 tp_is_empty!42995)))

(declare-fun b!6909785 () Bool)

(declare-fun tp!1902703 () Bool)

(declare-fun tp!1902704 () Bool)

(assert (=> b!6909785 (= e!4160285 (and tp!1902703 tp!1902704))))

(declare-fun b!6909784 () Bool)

(declare-fun tp!1902700 () Bool)

(assert (=> b!6909784 (= e!4160285 tp!1902700)))

(declare-fun b!6909783 () Bool)

(declare-fun tp!1902702 () Bool)

(declare-fun tp!1902701 () Bool)

(assert (=> b!6909783 (= e!4160285 (and tp!1902702 tp!1902701))))

(assert (=> b!6909191 (= tp!1902579 e!4160285)))

(assert (= (and b!6909191 ((_ is ElementMatch!16885) (reg!17214 r3!135))) b!6909782))

(assert (= (and b!6909191 ((_ is Concat!25730) (reg!17214 r3!135))) b!6909783))

(assert (= (and b!6909191 ((_ is Star!16885) (reg!17214 r3!135))) b!6909784))

(assert (= (and b!6909191 ((_ is Union!16885) (reg!17214 r3!135))) b!6909785))

(declare-fun b!6909786 () Bool)

(declare-fun e!4160286 () Bool)

(assert (=> b!6909786 (= e!4160286 tp_is_empty!42995)))

(declare-fun b!6909789 () Bool)

(declare-fun tp!1902708 () Bool)

(declare-fun tp!1902709 () Bool)

(assert (=> b!6909789 (= e!4160286 (and tp!1902708 tp!1902709))))

(declare-fun b!6909788 () Bool)

(declare-fun tp!1902705 () Bool)

(assert (=> b!6909788 (= e!4160286 tp!1902705)))

(declare-fun b!6909787 () Bool)

(declare-fun tp!1902707 () Bool)

(declare-fun tp!1902706 () Bool)

(assert (=> b!6909787 (= e!4160286 (and tp!1902707 tp!1902706))))

(assert (=> b!6909201 (= tp!1902574 e!4160286)))

(assert (= (and b!6909201 ((_ is ElementMatch!16885) (regOne!34282 r1!6342))) b!6909786))

(assert (= (and b!6909201 ((_ is Concat!25730) (regOne!34282 r1!6342))) b!6909787))

(assert (= (and b!6909201 ((_ is Star!16885) (regOne!34282 r1!6342))) b!6909788))

(assert (= (and b!6909201 ((_ is Union!16885) (regOne!34282 r1!6342))) b!6909789))

(declare-fun b!6909790 () Bool)

(declare-fun e!4160287 () Bool)

(assert (=> b!6909790 (= e!4160287 tp_is_empty!42995)))

(declare-fun b!6909793 () Bool)

(declare-fun tp!1902713 () Bool)

(declare-fun tp!1902714 () Bool)

(assert (=> b!6909793 (= e!4160287 (and tp!1902713 tp!1902714))))

(declare-fun b!6909792 () Bool)

(declare-fun tp!1902710 () Bool)

(assert (=> b!6909792 (= e!4160287 tp!1902710)))

(declare-fun b!6909791 () Bool)

(declare-fun tp!1902712 () Bool)

(declare-fun tp!1902711 () Bool)

(assert (=> b!6909791 (= e!4160287 (and tp!1902712 tp!1902711))))

(assert (=> b!6909201 (= tp!1902581 e!4160287)))

(assert (= (and b!6909201 ((_ is ElementMatch!16885) (regTwo!34282 r1!6342))) b!6909790))

(assert (= (and b!6909201 ((_ is Concat!25730) (regTwo!34282 r1!6342))) b!6909791))

(assert (= (and b!6909201 ((_ is Star!16885) (regTwo!34282 r1!6342))) b!6909792))

(assert (= (and b!6909201 ((_ is Union!16885) (regTwo!34282 r1!6342))) b!6909793))

(declare-fun b!6909794 () Bool)

(declare-fun e!4160288 () Bool)

(assert (=> b!6909794 (= e!4160288 tp_is_empty!42995)))

(declare-fun b!6909797 () Bool)

(declare-fun tp!1902718 () Bool)

(declare-fun tp!1902719 () Bool)

(assert (=> b!6909797 (= e!4160288 (and tp!1902718 tp!1902719))))

(declare-fun b!6909796 () Bool)

(declare-fun tp!1902715 () Bool)

(assert (=> b!6909796 (= e!4160288 tp!1902715)))

(declare-fun b!6909795 () Bool)

(declare-fun tp!1902717 () Bool)

(declare-fun tp!1902716 () Bool)

(assert (=> b!6909795 (= e!4160288 (and tp!1902717 tp!1902716))))

(assert (=> b!6909203 (= tp!1902582 e!4160288)))

(assert (= (and b!6909203 ((_ is ElementMatch!16885) (reg!17214 r2!6280))) b!6909794))

(assert (= (and b!6909203 ((_ is Concat!25730) (reg!17214 r2!6280))) b!6909795))

(assert (= (and b!6909203 ((_ is Star!16885) (reg!17214 r2!6280))) b!6909796))

(assert (= (and b!6909203 ((_ is Union!16885) (reg!17214 r2!6280))) b!6909797))

(declare-fun b!6909798 () Bool)

(declare-fun e!4160289 () Bool)

(assert (=> b!6909798 (= e!4160289 tp_is_empty!42995)))

(declare-fun b!6909801 () Bool)

(declare-fun tp!1902723 () Bool)

(declare-fun tp!1902724 () Bool)

(assert (=> b!6909801 (= e!4160289 (and tp!1902723 tp!1902724))))

(declare-fun b!6909800 () Bool)

(declare-fun tp!1902720 () Bool)

(assert (=> b!6909800 (= e!4160289 tp!1902720)))

(declare-fun b!6909799 () Bool)

(declare-fun tp!1902722 () Bool)

(declare-fun tp!1902721 () Bool)

(assert (=> b!6909799 (= e!4160289 (and tp!1902722 tp!1902721))))

(assert (=> b!6909197 (= tp!1902573 e!4160289)))

(assert (= (and b!6909197 ((_ is ElementMatch!16885) (regOne!34282 r3!135))) b!6909798))

(assert (= (and b!6909197 ((_ is Concat!25730) (regOne!34282 r3!135))) b!6909799))

(assert (= (and b!6909197 ((_ is Star!16885) (regOne!34282 r3!135))) b!6909800))

(assert (= (and b!6909197 ((_ is Union!16885) (regOne!34282 r3!135))) b!6909801))

(declare-fun b!6909802 () Bool)

(declare-fun e!4160290 () Bool)

(assert (=> b!6909802 (= e!4160290 tp_is_empty!42995)))

(declare-fun b!6909805 () Bool)

(declare-fun tp!1902728 () Bool)

(declare-fun tp!1902729 () Bool)

(assert (=> b!6909805 (= e!4160290 (and tp!1902728 tp!1902729))))

(declare-fun b!6909804 () Bool)

(declare-fun tp!1902725 () Bool)

(assert (=> b!6909804 (= e!4160290 tp!1902725)))

(declare-fun b!6909803 () Bool)

(declare-fun tp!1902727 () Bool)

(declare-fun tp!1902726 () Bool)

(assert (=> b!6909803 (= e!4160290 (and tp!1902727 tp!1902726))))

(assert (=> b!6909197 (= tp!1902572 e!4160290)))

(assert (= (and b!6909197 ((_ is ElementMatch!16885) (regTwo!34282 r3!135))) b!6909802))

(assert (= (and b!6909197 ((_ is Concat!25730) (regTwo!34282 r3!135))) b!6909803))

(assert (= (and b!6909197 ((_ is Star!16885) (regTwo!34282 r3!135))) b!6909804))

(assert (= (and b!6909197 ((_ is Union!16885) (regTwo!34282 r3!135))) b!6909805))

(declare-fun b!6909806 () Bool)

(declare-fun e!4160291 () Bool)

(assert (=> b!6909806 (= e!4160291 tp_is_empty!42995)))

(declare-fun b!6909809 () Bool)

(declare-fun tp!1902733 () Bool)

(declare-fun tp!1902734 () Bool)

(assert (=> b!6909809 (= e!4160291 (and tp!1902733 tp!1902734))))

(declare-fun b!6909808 () Bool)

(declare-fun tp!1902730 () Bool)

(assert (=> b!6909808 (= e!4160291 tp!1902730)))

(declare-fun b!6909807 () Bool)

(declare-fun tp!1902732 () Bool)

(declare-fun tp!1902731 () Bool)

(assert (=> b!6909807 (= e!4160291 (and tp!1902732 tp!1902731))))

(assert (=> b!6909194 (= tp!1902580 e!4160291)))

(assert (= (and b!6909194 ((_ is ElementMatch!16885) (regOne!34282 r2!6280))) b!6909806))

(assert (= (and b!6909194 ((_ is Concat!25730) (regOne!34282 r2!6280))) b!6909807))

(assert (= (and b!6909194 ((_ is Star!16885) (regOne!34282 r2!6280))) b!6909808))

(assert (= (and b!6909194 ((_ is Union!16885) (regOne!34282 r2!6280))) b!6909809))

(declare-fun b!6909810 () Bool)

(declare-fun e!4160292 () Bool)

(assert (=> b!6909810 (= e!4160292 tp_is_empty!42995)))

(declare-fun b!6909813 () Bool)

(declare-fun tp!1902738 () Bool)

(declare-fun tp!1902739 () Bool)

(assert (=> b!6909813 (= e!4160292 (and tp!1902738 tp!1902739))))

(declare-fun b!6909812 () Bool)

(declare-fun tp!1902735 () Bool)

(assert (=> b!6909812 (= e!4160292 tp!1902735)))

(declare-fun b!6909811 () Bool)

(declare-fun tp!1902737 () Bool)

(declare-fun tp!1902736 () Bool)

(assert (=> b!6909811 (= e!4160292 (and tp!1902737 tp!1902736))))

(assert (=> b!6909194 (= tp!1902575 e!4160292)))

(assert (= (and b!6909194 ((_ is ElementMatch!16885) (regTwo!34282 r2!6280))) b!6909810))

(assert (= (and b!6909194 ((_ is Concat!25730) (regTwo!34282 r2!6280))) b!6909811))

(assert (= (and b!6909194 ((_ is Star!16885) (regTwo!34282 r2!6280))) b!6909812))

(assert (= (and b!6909194 ((_ is Union!16885) (regTwo!34282 r2!6280))) b!6909813))

(declare-fun b!6909814 () Bool)

(declare-fun e!4160293 () Bool)

(assert (=> b!6909814 (= e!4160293 tp_is_empty!42995)))

(declare-fun b!6909817 () Bool)

(declare-fun tp!1902743 () Bool)

(declare-fun tp!1902744 () Bool)

(assert (=> b!6909817 (= e!4160293 (and tp!1902743 tp!1902744))))

(declare-fun b!6909816 () Bool)

(declare-fun tp!1902740 () Bool)

(assert (=> b!6909816 (= e!4160293 tp!1902740)))

(declare-fun b!6909815 () Bool)

(declare-fun tp!1902742 () Bool)

(declare-fun tp!1902741 () Bool)

(assert (=> b!6909815 (= e!4160293 (and tp!1902742 tp!1902741))))

(assert (=> b!6909204 (= tp!1902576 e!4160293)))

(assert (= (and b!6909204 ((_ is ElementMatch!16885) (regOne!34283 r2!6280))) b!6909814))

(assert (= (and b!6909204 ((_ is Concat!25730) (regOne!34283 r2!6280))) b!6909815))

(assert (= (and b!6909204 ((_ is Star!16885) (regOne!34283 r2!6280))) b!6909816))

(assert (= (and b!6909204 ((_ is Union!16885) (regOne!34283 r2!6280))) b!6909817))

(declare-fun b!6909818 () Bool)

(declare-fun e!4160294 () Bool)

(assert (=> b!6909818 (= e!4160294 tp_is_empty!42995)))

(declare-fun b!6909821 () Bool)

(declare-fun tp!1902748 () Bool)

(declare-fun tp!1902749 () Bool)

(assert (=> b!6909821 (= e!4160294 (and tp!1902748 tp!1902749))))

(declare-fun b!6909820 () Bool)

(declare-fun tp!1902745 () Bool)

(assert (=> b!6909820 (= e!4160294 tp!1902745)))

(declare-fun b!6909819 () Bool)

(declare-fun tp!1902747 () Bool)

(declare-fun tp!1902746 () Bool)

(assert (=> b!6909819 (= e!4160294 (and tp!1902747 tp!1902746))))

(assert (=> b!6909204 (= tp!1902568 e!4160294)))

(assert (= (and b!6909204 ((_ is ElementMatch!16885) (regTwo!34283 r2!6280))) b!6909818))

(assert (= (and b!6909204 ((_ is Concat!25730) (regTwo!34283 r2!6280))) b!6909819))

(assert (= (and b!6909204 ((_ is Star!16885) (regTwo!34283 r2!6280))) b!6909820))

(assert (= (and b!6909204 ((_ is Union!16885) (regTwo!34283 r2!6280))) b!6909821))

(declare-fun b!6909822 () Bool)

(declare-fun e!4160295 () Bool)

(assert (=> b!6909822 (= e!4160295 tp_is_empty!42995)))

(declare-fun b!6909825 () Bool)

(declare-fun tp!1902753 () Bool)

(declare-fun tp!1902754 () Bool)

(assert (=> b!6909825 (= e!4160295 (and tp!1902753 tp!1902754))))

(declare-fun b!6909824 () Bool)

(declare-fun tp!1902750 () Bool)

(assert (=> b!6909824 (= e!4160295 tp!1902750)))

(declare-fun b!6909823 () Bool)

(declare-fun tp!1902752 () Bool)

(declare-fun tp!1902751 () Bool)

(assert (=> b!6909823 (= e!4160295 (and tp!1902752 tp!1902751))))

(assert (=> b!6909209 (= tp!1902571 e!4160295)))

(assert (= (and b!6909209 ((_ is ElementMatch!16885) (regOne!34283 r1!6342))) b!6909822))

(assert (= (and b!6909209 ((_ is Concat!25730) (regOne!34283 r1!6342))) b!6909823))

(assert (= (and b!6909209 ((_ is Star!16885) (regOne!34283 r1!6342))) b!6909824))

(assert (= (and b!6909209 ((_ is Union!16885) (regOne!34283 r1!6342))) b!6909825))

(declare-fun b!6909826 () Bool)

(declare-fun e!4160296 () Bool)

(assert (=> b!6909826 (= e!4160296 tp_is_empty!42995)))

(declare-fun b!6909829 () Bool)

(declare-fun tp!1902758 () Bool)

(declare-fun tp!1902759 () Bool)

(assert (=> b!6909829 (= e!4160296 (and tp!1902758 tp!1902759))))

(declare-fun b!6909828 () Bool)

(declare-fun tp!1902755 () Bool)

(assert (=> b!6909828 (= e!4160296 tp!1902755)))

(declare-fun b!6909827 () Bool)

(declare-fun tp!1902757 () Bool)

(declare-fun tp!1902756 () Bool)

(assert (=> b!6909827 (= e!4160296 (and tp!1902757 tp!1902756))))

(assert (=> b!6909209 (= tp!1902570 e!4160296)))

(assert (= (and b!6909209 ((_ is ElementMatch!16885) (regTwo!34283 r1!6342))) b!6909826))

(assert (= (and b!6909209 ((_ is Concat!25730) (regTwo!34283 r1!6342))) b!6909827))

(assert (= (and b!6909209 ((_ is Star!16885) (regTwo!34283 r1!6342))) b!6909828))

(assert (= (and b!6909209 ((_ is Union!16885) (regTwo!34283 r1!6342))) b!6909829))

(check-sat tp_is_empty!42995 (not b!6909805) (not b!6909662) (not b!6909663) (not d!2163154) (not b!6909793) (not b!6909759) (not bm!628239) (not b!6909317) (not bm!628240) (not b!6909539) (not b!6909555) (not b!6909791) (not d!2163186) (not b!6909825) (not b!6909600) (not b!6909804) (not b!6909809) (not b!6909553) (not d!2163166) (not b!6909657) (not b!6909807) (not b!6909784) (not bm!628223) (not bm!628191) (not d!2163208) (not bm!628201) (not b!6909693) (not b!6909689) (not b!6909781) (not b!6909795) (not b!6909546) (not d!2163156) (not b!6909817) (not d!2163146) (not b!6909665) (not b!6909364) (not b!6909812) (not b!6909829) (not b!6909801) (not b!6909685) (not b!6909799) (not b!6909792) (not b!6909493) (not b!6909819) (not b!6909758) (not b!6909538) (not bm!628231) (not b!6909370) (not d!2163160) (not b!6909691) (not b!6909828) (not b!6909537) (not b!6909661) (not b!6909796) (not b!6909369) (not d!2163206) (not d!2163190) (not b!6909664) (not bm!628232) (not b!6909372) (not bm!628230) (not b!6909533) (not b!6909568) (not b!6909811) (not b!6909803) (not b!6909313) (not b!6909363) (not b!6909766) (not d!2163158) (not b!6909821) (not b!6909757) (not b!6909787) (not b!6909779) (not bm!628233) (not bm!628244) (not bm!628225) (not b!6909547) (not b!6909788) (not b!6909690) (not b!6909368) (not b!6909777) (not bm!628206) (not b!6909816) (not b!6909827) (not bm!628226) (not b!6909783) (not b!6909789) (not b!6909808) (not b!6909504) (not b!6909552) (not bm!628200) (not b!6909797) (not b!6909532) (not b!6909815) (not b!6909813) (not b!6909684) (not b!6909765) (not b!6909242) (not b!6909500) (not b!6909785) (not d!2163178) (not b!6909564) (not b!6909767) (not b!6909541) (not b!6909800) (not bm!628190) (not b!6909823) (not bm!628224) (not b!6909551) (not d!2163212) (not b!6909780) (not d!2163188) (not b!6909820) (not b!6909824))
(check-sat)
