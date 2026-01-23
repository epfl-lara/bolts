; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664532 () Bool)

(assert start!664532)

(declare-fun b!6896208 () Bool)

(assert (=> b!6896208 true))

(assert (=> b!6896208 true))

(assert (=> b!6896208 true))

(declare-fun lambda!391024 () Int)

(declare-fun lambda!391023 () Int)

(assert (=> b!6896208 (not (= lambda!391024 lambda!391023))))

(assert (=> b!6896208 true))

(assert (=> b!6896208 true))

(assert (=> b!6896208 true))

(declare-fun bs!1840928 () Bool)

(declare-fun b!6896217 () Bool)

(assert (= bs!1840928 (and b!6896217 b!6896208)))

(declare-datatypes ((C!33942 0))(
  ( (C!33943 (val!26673 Int)) )
))
(declare-datatypes ((List!66593 0))(
  ( (Nil!66469) (Cons!66469 (h!72917 C!33942) (t!380336 List!66593)) )
))
(declare-datatypes ((tuple2!67406 0))(
  ( (tuple2!67407 (_1!37006 List!66593) (_2!37006 List!66593)) )
))
(declare-fun lt!2464006 () tuple2!67406)

(declare-fun lambda!391025 () Int)

(declare-datatypes ((Regex!16836 0))(
  ( (ElementMatch!16836 (c!1281792 C!33942)) (Concat!25681 (regOne!34184 Regex!16836) (regTwo!34184 Regex!16836)) (EmptyExpr!16836) (Star!16836 (reg!17165 Regex!16836)) (EmptyLang!16836) (Union!16836 (regOne!34185 Regex!16836) (regTwo!34185 Regex!16836)) )
))
(declare-fun r1!6342 () Regex!16836)

(declare-fun r3!135 () Regex!16836)

(declare-fun s!14361 () List!66593)

(declare-fun lt!2464000 () Regex!16836)

(declare-fun r2!6280 () Regex!16836)

(assert (=> bs!1840928 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391025 lambda!391023))))

(assert (=> bs!1840928 (not (= lambda!391025 lambda!391024))))

(assert (=> b!6896217 true))

(assert (=> b!6896217 true))

(assert (=> b!6896217 true))

(declare-fun lambda!391026 () Int)

(assert (=> bs!1840928 (not (= lambda!391026 lambda!391023))))

(assert (=> bs!1840928 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391026 lambda!391024))))

(assert (=> b!6896217 (not (= lambda!391026 lambda!391025))))

(assert (=> b!6896217 true))

(assert (=> b!6896217 true))

(assert (=> b!6896217 true))

(declare-fun b!6896204 () Bool)

(declare-fun res!2811647 () Bool)

(declare-fun e!4153738 () Bool)

(assert (=> b!6896204 (=> (not res!2811647) (not e!4153738))))

(declare-fun validRegex!8544 (Regex!16836) Bool)

(assert (=> b!6896204 (= res!2811647 (validRegex!8544 r3!135))))

(declare-fun b!6896205 () Bool)

(declare-fun res!2811645 () Bool)

(assert (=> b!6896205 (=> (not res!2811645) (not e!4153738))))

(assert (=> b!6896205 (= res!2811645 (validRegex!8544 r2!6280))))

(declare-fun b!6896206 () Bool)

(declare-fun e!4153740 () Bool)

(declare-fun tp_is_empty!42897 () Bool)

(declare-fun tp!1898290 () Bool)

(assert (=> b!6896206 (= e!4153740 (and tp_is_empty!42897 tp!1898290))))

(declare-fun b!6896207 () Bool)

(declare-fun e!4153733 () Bool)

(assert (=> b!6896207 (= e!4153733 tp_is_empty!42897)))

(declare-fun res!2811646 () Bool)

(assert (=> start!664532 (=> (not res!2811646) (not e!4153738))))

(assert (=> start!664532 (= res!2811646 (validRegex!8544 r1!6342))))

(assert (=> start!664532 e!4153738))

(assert (=> start!664532 e!4153733))

(declare-fun e!4153736 () Bool)

(assert (=> start!664532 e!4153736))

(declare-fun e!4153737 () Bool)

(assert (=> start!664532 e!4153737))

(assert (=> start!664532 e!4153740))

(declare-fun e!4153734 () Bool)

(declare-fun e!4153735 () Bool)

(assert (=> b!6896208 (= e!4153734 e!4153735)))

(declare-fun res!2811644 () Bool)

(assert (=> b!6896208 (=> res!2811644 e!4153735)))

(declare-fun lt!2464004 () Bool)

(assert (=> b!6896208 (= res!2811644 (not lt!2464004))))

(declare-fun matchRSpec!3899 (Regex!16836 List!66593) Bool)

(assert (=> b!6896208 (= lt!2464004 (matchRSpec!3899 r1!6342 (_1!37006 lt!2464006)))))

(declare-fun matchR!8981 (Regex!16836 List!66593) Bool)

(assert (=> b!6896208 (= lt!2464004 (matchR!8981 r1!6342 (_1!37006 lt!2464006)))))

(declare-datatypes ((Unit!160392 0))(
  ( (Unit!160393) )
))
(declare-fun lt!2463998 () Unit!160392)

(declare-fun mainMatchTheorem!3899 (Regex!16836 List!66593) Unit!160392)

(assert (=> b!6896208 (= lt!2463998 (mainMatchTheorem!3899 r1!6342 (_1!37006 lt!2464006)))))

(declare-datatypes ((Option!16615 0))(
  ( (None!16614) (Some!16614 (v!52886 tuple2!67406)) )
))
(declare-fun lt!2464011 () Option!16615)

(declare-fun get!23205 (Option!16615) tuple2!67406)

(assert (=> b!6896208 (= lt!2464006 (get!23205 lt!2464011))))

(declare-fun Exists!3844 (Int) Bool)

(assert (=> b!6896208 (= (Exists!3844 lambda!391023) (Exists!3844 lambda!391024))))

(declare-fun lt!2464013 () Unit!160392)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2317 (Regex!16836 Regex!16836 List!66593) Unit!160392)

(assert (=> b!6896208 (= lt!2464013 (lemmaExistCutMatchRandMatchRSpecEquivalent!2317 r1!6342 lt!2464000 s!14361))))

(assert (=> b!6896208 (Exists!3844 lambda!391023)))

(declare-fun lt!2464002 () Unit!160392)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2791 (Regex!16836 Regex!16836 List!66593) Unit!160392)

(assert (=> b!6896208 (= lt!2464002 (lemmaFindConcatSeparationEquivalentToExists!2791 r1!6342 lt!2464000 s!14361))))

(declare-fun b!6896209 () Bool)

(declare-fun tp!1898288 () Bool)

(declare-fun tp!1898293 () Bool)

(assert (=> b!6896209 (= e!4153737 (and tp!1898288 tp!1898293))))

(declare-fun b!6896210 () Bool)

(assert (=> b!6896210 (= e!4153737 tp_is_empty!42897)))

(declare-fun b!6896211 () Bool)

(assert (=> b!6896211 (= e!4153736 tp_is_empty!42897)))

(declare-fun b!6896212 () Bool)

(declare-fun tp!1898282 () Bool)

(declare-fun tp!1898295 () Bool)

(assert (=> b!6896212 (= e!4153737 (and tp!1898282 tp!1898295))))

(declare-fun b!6896213 () Bool)

(declare-fun tp!1898289 () Bool)

(assert (=> b!6896213 (= e!4153737 tp!1898289)))

(declare-fun b!6896214 () Bool)

(declare-fun tp!1898285 () Bool)

(declare-fun tp!1898283 () Bool)

(assert (=> b!6896214 (= e!4153736 (and tp!1898285 tp!1898283))))

(declare-fun b!6896215 () Bool)

(declare-fun tp!1898280 () Bool)

(declare-fun tp!1898287 () Bool)

(assert (=> b!6896215 (= e!4153733 (and tp!1898280 tp!1898287))))

(declare-fun b!6896216 () Bool)

(declare-fun tp!1898292 () Bool)

(assert (=> b!6896216 (= e!4153736 tp!1898292)))

(declare-fun lt!2464008 () Bool)

(assert (=> b!6896217 (= e!4153735 lt!2464008)))

(assert (=> b!6896217 (= (Exists!3844 lambda!391025) (Exists!3844 lambda!391026))))

(declare-fun lt!2464009 () Unit!160392)

(assert (=> b!6896217 (= lt!2464009 (lemmaExistCutMatchRandMatchRSpecEquivalent!2317 r2!6280 r3!135 (_2!37006 lt!2464006)))))

(assert (=> b!6896217 (= lt!2464008 (Exists!3844 lambda!391025))))

(declare-fun isDefined!13318 (Option!16615) Bool)

(declare-fun findConcatSeparation!3029 (Regex!16836 Regex!16836 List!66593 List!66593 List!66593) Option!16615)

(assert (=> b!6896217 (= lt!2464008 (isDefined!13318 (findConcatSeparation!3029 r2!6280 r3!135 Nil!66469 (_2!37006 lt!2464006) (_2!37006 lt!2464006))))))

(declare-fun lt!2464012 () Unit!160392)

(assert (=> b!6896217 (= lt!2464012 (lemmaFindConcatSeparationEquivalentToExists!2791 r2!6280 r3!135 (_2!37006 lt!2464006)))))

(assert (=> b!6896217 (matchRSpec!3899 lt!2464000 (_2!37006 lt!2464006))))

(declare-fun lt!2464001 () Unit!160392)

(assert (=> b!6896217 (= lt!2464001 (mainMatchTheorem!3899 lt!2464000 (_2!37006 lt!2464006)))))

(declare-fun b!6896218 () Bool)

(declare-fun e!4153739 () Bool)

(assert (=> b!6896218 (= e!4153738 (not e!4153739))))

(declare-fun res!2811649 () Bool)

(assert (=> b!6896218 (=> res!2811649 e!4153739)))

(declare-fun lt!2463999 () Bool)

(assert (=> b!6896218 (= res!2811649 lt!2463999)))

(declare-fun lt!2464003 () Regex!16836)

(assert (=> b!6896218 (= (matchR!8981 lt!2464003 s!14361) (matchRSpec!3899 lt!2464003 s!14361))))

(declare-fun lt!2464005 () Unit!160392)

(assert (=> b!6896218 (= lt!2464005 (mainMatchTheorem!3899 lt!2464003 s!14361))))

(declare-fun lt!2464010 () Regex!16836)

(assert (=> b!6896218 (= lt!2463999 (matchRSpec!3899 lt!2464010 s!14361))))

(assert (=> b!6896218 (= lt!2463999 (matchR!8981 lt!2464010 s!14361))))

(declare-fun lt!2464007 () Unit!160392)

(assert (=> b!6896218 (= lt!2464007 (mainMatchTheorem!3899 lt!2464010 s!14361))))

(assert (=> b!6896218 (= lt!2464003 (Concat!25681 r1!6342 lt!2464000))))

(assert (=> b!6896218 (= lt!2464000 (Concat!25681 r2!6280 r3!135))))

(assert (=> b!6896218 (= lt!2464010 (Concat!25681 (Concat!25681 r1!6342 r2!6280) r3!135))))

(declare-fun b!6896219 () Bool)

(declare-fun tp!1898284 () Bool)

(declare-fun tp!1898294 () Bool)

(assert (=> b!6896219 (= e!4153733 (and tp!1898284 tp!1898294))))

(declare-fun b!6896220 () Bool)

(declare-fun res!2811648 () Bool)

(assert (=> b!6896220 (=> res!2811648 e!4153735)))

(assert (=> b!6896220 (= res!2811648 (not (matchR!8981 lt!2464000 (_2!37006 lt!2464006))))))

(declare-fun b!6896221 () Bool)

(assert (=> b!6896221 (= e!4153739 e!4153734)))

(declare-fun res!2811643 () Bool)

(assert (=> b!6896221 (=> res!2811643 e!4153734)))

(assert (=> b!6896221 (= res!2811643 (not (isDefined!13318 lt!2464011)))))

(assert (=> b!6896221 (= lt!2464011 (findConcatSeparation!3029 r1!6342 lt!2464000 Nil!66469 s!14361 s!14361))))

(declare-fun b!6896222 () Bool)

(declare-fun tp!1898281 () Bool)

(assert (=> b!6896222 (= e!4153733 tp!1898281)))

(declare-fun b!6896223 () Bool)

(declare-fun tp!1898291 () Bool)

(declare-fun tp!1898286 () Bool)

(assert (=> b!6896223 (= e!4153736 (and tp!1898291 tp!1898286))))

(assert (= (and start!664532 res!2811646) b!6896205))

(assert (= (and b!6896205 res!2811645) b!6896204))

(assert (= (and b!6896204 res!2811647) b!6896218))

(assert (= (and b!6896218 (not res!2811649)) b!6896221))

(assert (= (and b!6896221 (not res!2811643)) b!6896208))

(assert (= (and b!6896208 (not res!2811644)) b!6896220))

(assert (= (and b!6896220 (not res!2811648)) b!6896217))

(assert (= (and start!664532 (is-ElementMatch!16836 r1!6342)) b!6896207))

(assert (= (and start!664532 (is-Concat!25681 r1!6342)) b!6896215))

(assert (= (and start!664532 (is-Star!16836 r1!6342)) b!6896222))

(assert (= (and start!664532 (is-Union!16836 r1!6342)) b!6896219))

(assert (= (and start!664532 (is-ElementMatch!16836 r2!6280)) b!6896211))

(assert (= (and start!664532 (is-Concat!25681 r2!6280)) b!6896223))

(assert (= (and start!664532 (is-Star!16836 r2!6280)) b!6896216))

(assert (= (and start!664532 (is-Union!16836 r2!6280)) b!6896214))

(assert (= (and start!664532 (is-ElementMatch!16836 r3!135)) b!6896210))

(assert (= (and start!664532 (is-Concat!25681 r3!135)) b!6896209))

(assert (= (and start!664532 (is-Star!16836 r3!135)) b!6896213))

(assert (= (and start!664532 (is-Union!16836 r3!135)) b!6896212))

(assert (= (and start!664532 (is-Cons!66469 s!14361)) b!6896206))

(declare-fun m!7615276 () Bool)

(assert (=> b!6896217 m!7615276))

(declare-fun m!7615278 () Bool)

(assert (=> b!6896217 m!7615278))

(declare-fun m!7615280 () Bool)

(assert (=> b!6896217 m!7615280))

(declare-fun m!7615282 () Bool)

(assert (=> b!6896217 m!7615282))

(declare-fun m!7615284 () Bool)

(assert (=> b!6896217 m!7615284))

(assert (=> b!6896217 m!7615282))

(declare-fun m!7615286 () Bool)

(assert (=> b!6896217 m!7615286))

(declare-fun m!7615288 () Bool)

(assert (=> b!6896217 m!7615288))

(assert (=> b!6896217 m!7615278))

(declare-fun m!7615290 () Bool)

(assert (=> b!6896217 m!7615290))

(declare-fun m!7615292 () Bool)

(assert (=> b!6896220 m!7615292))

(declare-fun m!7615294 () Bool)

(assert (=> b!6896221 m!7615294))

(declare-fun m!7615296 () Bool)

(assert (=> b!6896221 m!7615296))

(declare-fun m!7615298 () Bool)

(assert (=> start!664532 m!7615298))

(declare-fun m!7615300 () Bool)

(assert (=> b!6896205 m!7615300))

(declare-fun m!7615302 () Bool)

(assert (=> b!6896218 m!7615302))

(declare-fun m!7615304 () Bool)

(assert (=> b!6896218 m!7615304))

(declare-fun m!7615306 () Bool)

(assert (=> b!6896218 m!7615306))

(declare-fun m!7615308 () Bool)

(assert (=> b!6896218 m!7615308))

(declare-fun m!7615310 () Bool)

(assert (=> b!6896218 m!7615310))

(declare-fun m!7615312 () Bool)

(assert (=> b!6896218 m!7615312))

(declare-fun m!7615314 () Bool)

(assert (=> b!6896208 m!7615314))

(declare-fun m!7615316 () Bool)

(assert (=> b!6896208 m!7615316))

(declare-fun m!7615318 () Bool)

(assert (=> b!6896208 m!7615318))

(declare-fun m!7615320 () Bool)

(assert (=> b!6896208 m!7615320))

(assert (=> b!6896208 m!7615318))

(declare-fun m!7615322 () Bool)

(assert (=> b!6896208 m!7615322))

(declare-fun m!7615324 () Bool)

(assert (=> b!6896208 m!7615324))

(declare-fun m!7615326 () Bool)

(assert (=> b!6896208 m!7615326))

(declare-fun m!7615328 () Bool)

(assert (=> b!6896208 m!7615328))

(declare-fun m!7615330 () Bool)

(assert (=> b!6896204 m!7615330))

(push 1)

(assert (not b!6896220))

(assert (not b!6896208))

(assert (not b!6896221))

(assert (not b!6896217))

(assert (not b!6896222))

(assert (not b!6896206))

(assert (not b!6896216))

(assert (not b!6896223))

(assert (not b!6896204))

(assert (not b!6896213))

(assert (not b!6896215))

(assert (not b!6896214))

(assert (not b!6896212))

(assert (not start!664532))

(assert tp_is_empty!42897)

(assert (not b!6896218))

(assert (not b!6896205))

(assert (not b!6896209))

(assert (not b!6896219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2161530 () Bool)

(declare-fun choose!51352 (Int) Bool)

(assert (=> d!2161530 (= (Exists!3844 lambda!391023) (choose!51352 lambda!391023))))

(declare-fun bs!1840930 () Bool)

(assert (= bs!1840930 d!2161530))

(declare-fun m!7615388 () Bool)

(assert (=> bs!1840930 m!7615388))

(assert (=> b!6896208 d!2161530))

(declare-fun bs!1840932 () Bool)

(declare-fun b!6896381 () Bool)

(assert (= bs!1840932 (and b!6896381 b!6896208)))

(declare-fun lambda!391047 () Int)

(assert (=> bs!1840932 (not (= lambda!391047 lambda!391023))))

(assert (=> bs!1840932 (not (= lambda!391047 lambda!391024))))

(declare-fun bs!1840933 () Bool)

(assert (= bs!1840933 (and b!6896381 b!6896217)))

(assert (=> bs!1840933 (not (= lambda!391047 lambda!391025))))

(assert (=> bs!1840933 (not (= lambda!391047 lambda!391026))))

(assert (=> b!6896381 true))

(assert (=> b!6896381 true))

(declare-fun bs!1840934 () Bool)

(declare-fun b!6896387 () Bool)

(assert (= bs!1840934 (and b!6896387 b!6896208)))

(declare-fun lambda!391048 () Int)

(assert (=> bs!1840934 (not (= lambda!391048 lambda!391023))))

(assert (=> bs!1840934 (= (and (= (_1!37006 lt!2464006) s!14361) (= (regOne!34184 r1!6342) r1!6342) (= (regTwo!34184 r1!6342) lt!2464000)) (= lambda!391048 lambda!391024))))

(declare-fun bs!1840935 () Bool)

(assert (= bs!1840935 (and b!6896387 b!6896217)))

(assert (=> bs!1840935 (= (and (= (_1!37006 lt!2464006) (_2!37006 lt!2464006)) (= (regOne!34184 r1!6342) r2!6280) (= (regTwo!34184 r1!6342) r3!135)) (= lambda!391048 lambda!391026))))

(declare-fun bs!1840936 () Bool)

(assert (= bs!1840936 (and b!6896387 b!6896381)))

(assert (=> bs!1840936 (not (= lambda!391048 lambda!391047))))

(assert (=> bs!1840935 (not (= lambda!391048 lambda!391025))))

(assert (=> b!6896387 true))

(assert (=> b!6896387 true))

(declare-fun d!2161532 () Bool)

(declare-fun c!1281811 () Bool)

(assert (=> d!2161532 (= c!1281811 (is-EmptyExpr!16836 r1!6342))))

(declare-fun e!4153818 () Bool)

(assert (=> d!2161532 (= (matchRSpec!3899 r1!6342 (_1!37006 lt!2464006)) e!4153818)))

(declare-fun b!6896379 () Bool)

(declare-fun e!4153817 () Bool)

(assert (=> b!6896379 (= e!4153817 (matchRSpec!3899 (regTwo!34185 r1!6342) (_1!37006 lt!2464006)))))

(declare-fun bm!627382 () Bool)

(declare-fun call!627388 () Bool)

(declare-fun isEmpty!38716 (List!66593) Bool)

(assert (=> bm!627382 (= call!627388 (isEmpty!38716 (_1!37006 lt!2464006)))))

(declare-fun b!6896380 () Bool)

(assert (=> b!6896380 (= e!4153818 call!627388)))

(declare-fun e!4153820 () Bool)

(declare-fun call!627387 () Bool)

(assert (=> b!6896381 (= e!4153820 call!627387)))

(declare-fun b!6896382 () Bool)

(declare-fun e!4153819 () Bool)

(assert (=> b!6896382 (= e!4153819 e!4153817)))

(declare-fun res!2811726 () Bool)

(assert (=> b!6896382 (= res!2811726 (matchRSpec!3899 (regOne!34185 r1!6342) (_1!37006 lt!2464006)))))

(assert (=> b!6896382 (=> res!2811726 e!4153817)))

(declare-fun b!6896383 () Bool)

(declare-fun res!2811727 () Bool)

(assert (=> b!6896383 (=> res!2811727 e!4153820)))

(assert (=> b!6896383 (= res!2811727 call!627388)))

(declare-fun e!4153816 () Bool)

(assert (=> b!6896383 (= e!4153816 e!4153820)))

(declare-fun b!6896384 () Bool)

(declare-fun c!1281809 () Bool)

(assert (=> b!6896384 (= c!1281809 (is-ElementMatch!16836 r1!6342))))

(declare-fun e!4153822 () Bool)

(declare-fun e!4153821 () Bool)

(assert (=> b!6896384 (= e!4153822 e!4153821)))

(declare-fun b!6896385 () Bool)

(assert (=> b!6896385 (= e!4153819 e!4153816)))

(declare-fun c!1281810 () Bool)

(assert (=> b!6896385 (= c!1281810 (is-Star!16836 r1!6342))))

(declare-fun b!6896386 () Bool)

(assert (=> b!6896386 (= e!4153821 (= (_1!37006 lt!2464006) (Cons!66469 (c!1281792 r1!6342) Nil!66469)))))

(assert (=> b!6896387 (= e!4153816 call!627387)))

(declare-fun bm!627383 () Bool)

(assert (=> bm!627383 (= call!627387 (Exists!3844 (ite c!1281810 lambda!391047 lambda!391048)))))

(declare-fun b!6896388 () Bool)

(declare-fun c!1281808 () Bool)

(assert (=> b!6896388 (= c!1281808 (is-Union!16836 r1!6342))))

(assert (=> b!6896388 (= e!4153821 e!4153819)))

(declare-fun b!6896389 () Bool)

(assert (=> b!6896389 (= e!4153818 e!4153822)))

(declare-fun res!2811728 () Bool)

(assert (=> b!6896389 (= res!2811728 (not (is-EmptyLang!16836 r1!6342)))))

(assert (=> b!6896389 (=> (not res!2811728) (not e!4153822))))

(assert (= (and d!2161532 c!1281811) b!6896380))

(assert (= (and d!2161532 (not c!1281811)) b!6896389))

(assert (= (and b!6896389 res!2811728) b!6896384))

(assert (= (and b!6896384 c!1281809) b!6896386))

(assert (= (and b!6896384 (not c!1281809)) b!6896388))

(assert (= (and b!6896388 c!1281808) b!6896382))

(assert (= (and b!6896388 (not c!1281808)) b!6896385))

(assert (= (and b!6896382 (not res!2811726)) b!6896379))

(assert (= (and b!6896385 c!1281810) b!6896383))

(assert (= (and b!6896385 (not c!1281810)) b!6896387))

(assert (= (and b!6896383 (not res!2811727)) b!6896381))

(assert (= (or b!6896381 b!6896387) bm!627383))

(assert (= (or b!6896380 b!6896383) bm!627382))

(declare-fun m!7615398 () Bool)

(assert (=> b!6896379 m!7615398))

(declare-fun m!7615400 () Bool)

(assert (=> bm!627382 m!7615400))

(declare-fun m!7615402 () Bool)

(assert (=> b!6896382 m!7615402))

(declare-fun m!7615404 () Bool)

(assert (=> bm!627383 m!7615404))

(assert (=> b!6896208 d!2161532))

(declare-fun b!6896450 () Bool)

(declare-fun e!4153861 () Bool)

(declare-fun head!13833 (List!66593) C!33942)

(assert (=> b!6896450 (= e!4153861 (= (head!13833 (_1!37006 lt!2464006)) (c!1281792 r1!6342)))))

(declare-fun b!6896451 () Bool)

(declare-fun res!2811768 () Bool)

(assert (=> b!6896451 (=> (not res!2811768) (not e!4153861))))

(declare-fun tail!12885 (List!66593) List!66593)

(assert (=> b!6896451 (= res!2811768 (isEmpty!38716 (tail!12885 (_1!37006 lt!2464006))))))

(declare-fun b!6896452 () Bool)

(declare-fun e!4153856 () Bool)

(declare-fun derivativeStep!5380 (Regex!16836 C!33942) Regex!16836)

(assert (=> b!6896452 (= e!4153856 (matchR!8981 (derivativeStep!5380 r1!6342 (head!13833 (_1!37006 lt!2464006))) (tail!12885 (_1!37006 lt!2464006))))))

(declare-fun b!6896453 () Bool)

(declare-fun nullable!6702 (Regex!16836) Bool)

(assert (=> b!6896453 (= e!4153856 (nullable!6702 r1!6342))))

(declare-fun b!6896454 () Bool)

(declare-fun e!4153858 () Bool)

(assert (=> b!6896454 (= e!4153858 (not (= (head!13833 (_1!37006 lt!2464006)) (c!1281792 r1!6342))))))

(declare-fun b!6896455 () Bool)

(declare-fun e!4153855 () Bool)

(declare-fun lt!2464067 () Bool)

(assert (=> b!6896455 (= e!4153855 (not lt!2464067))))

(declare-fun d!2161540 () Bool)

(declare-fun e!4153857 () Bool)

(assert (=> d!2161540 e!4153857))

(declare-fun c!1281828 () Bool)

(assert (=> d!2161540 (= c!1281828 (is-EmptyExpr!16836 r1!6342))))

(assert (=> d!2161540 (= lt!2464067 e!4153856)))

(declare-fun c!1281827 () Bool)

(assert (=> d!2161540 (= c!1281827 (isEmpty!38716 (_1!37006 lt!2464006)))))

(assert (=> d!2161540 (validRegex!8544 r1!6342)))

(assert (=> d!2161540 (= (matchR!8981 r1!6342 (_1!37006 lt!2464006)) lt!2464067)))

(declare-fun b!6896456 () Bool)

(declare-fun e!4153860 () Bool)

(assert (=> b!6896456 (= e!4153860 e!4153858)))

(declare-fun res!2811763 () Bool)

(assert (=> b!6896456 (=> res!2811763 e!4153858)))

(declare-fun call!627395 () Bool)

(assert (=> b!6896456 (= res!2811763 call!627395)))

(declare-fun b!6896457 () Bool)

(declare-fun res!2811765 () Bool)

(declare-fun e!4153859 () Bool)

(assert (=> b!6896457 (=> res!2811765 e!4153859)))

(assert (=> b!6896457 (= res!2811765 (not (is-ElementMatch!16836 r1!6342)))))

(assert (=> b!6896457 (= e!4153855 e!4153859)))

(declare-fun b!6896458 () Bool)

(assert (=> b!6896458 (= e!4153857 e!4153855)))

(declare-fun c!1281826 () Bool)

(assert (=> b!6896458 (= c!1281826 (is-EmptyLang!16836 r1!6342))))

(declare-fun b!6896459 () Bool)

(declare-fun res!2811761 () Bool)

(assert (=> b!6896459 (=> (not res!2811761) (not e!4153861))))

(assert (=> b!6896459 (= res!2811761 (not call!627395))))

(declare-fun bm!627390 () Bool)

(assert (=> bm!627390 (= call!627395 (isEmpty!38716 (_1!37006 lt!2464006)))))

(declare-fun b!6896460 () Bool)

(assert (=> b!6896460 (= e!4153859 e!4153860)))

(declare-fun res!2811762 () Bool)

(assert (=> b!6896460 (=> (not res!2811762) (not e!4153860))))

(assert (=> b!6896460 (= res!2811762 (not lt!2464067))))

(declare-fun b!6896461 () Bool)

(declare-fun res!2811767 () Bool)

(assert (=> b!6896461 (=> res!2811767 e!4153858)))

(assert (=> b!6896461 (= res!2811767 (not (isEmpty!38716 (tail!12885 (_1!37006 lt!2464006)))))))

(declare-fun b!6896462 () Bool)

(declare-fun res!2811766 () Bool)

(assert (=> b!6896462 (=> res!2811766 e!4153859)))

(assert (=> b!6896462 (= res!2811766 e!4153861)))

(declare-fun res!2811764 () Bool)

(assert (=> b!6896462 (=> (not res!2811764) (not e!4153861))))

(assert (=> b!6896462 (= res!2811764 lt!2464067)))

(declare-fun b!6896463 () Bool)

(assert (=> b!6896463 (= e!4153857 (= lt!2464067 call!627395))))

(assert (= (and d!2161540 c!1281827) b!6896453))

(assert (= (and d!2161540 (not c!1281827)) b!6896452))

(assert (= (and d!2161540 c!1281828) b!6896463))

(assert (= (and d!2161540 (not c!1281828)) b!6896458))

(assert (= (and b!6896458 c!1281826) b!6896455))

(assert (= (and b!6896458 (not c!1281826)) b!6896457))

(assert (= (and b!6896457 (not res!2811765)) b!6896462))

(assert (= (and b!6896462 res!2811764) b!6896459))

(assert (= (and b!6896459 res!2811761) b!6896451))

(assert (= (and b!6896451 res!2811768) b!6896450))

(assert (= (and b!6896462 (not res!2811766)) b!6896460))

(assert (= (and b!6896460 res!2811762) b!6896456))

(assert (= (and b!6896456 (not res!2811763)) b!6896461))

(assert (= (and b!6896461 (not res!2811767)) b!6896454))

(assert (= (or b!6896463 b!6896459 b!6896456) bm!627390))

(declare-fun m!7615406 () Bool)

(assert (=> b!6896451 m!7615406))

(assert (=> b!6896451 m!7615406))

(declare-fun m!7615408 () Bool)

(assert (=> b!6896451 m!7615408))

(assert (=> bm!627390 m!7615400))

(assert (=> d!2161540 m!7615400))

(assert (=> d!2161540 m!7615298))

(declare-fun m!7615410 () Bool)

(assert (=> b!6896453 m!7615410))

(declare-fun m!7615412 () Bool)

(assert (=> b!6896452 m!7615412))

(assert (=> b!6896452 m!7615412))

(declare-fun m!7615414 () Bool)

(assert (=> b!6896452 m!7615414))

(assert (=> b!6896452 m!7615406))

(assert (=> b!6896452 m!7615414))

(assert (=> b!6896452 m!7615406))

(declare-fun m!7615416 () Bool)

(assert (=> b!6896452 m!7615416))

(assert (=> b!6896461 m!7615406))

(assert (=> b!6896461 m!7615406))

(assert (=> b!6896461 m!7615408))

(assert (=> b!6896450 m!7615412))

(assert (=> b!6896454 m!7615412))

(assert (=> b!6896208 d!2161540))

(declare-fun d!2161542 () Bool)

(assert (=> d!2161542 (= (matchR!8981 r1!6342 (_1!37006 lt!2464006)) (matchRSpec!3899 r1!6342 (_1!37006 lt!2464006)))))

(declare-fun lt!2464070 () Unit!160392)

(declare-fun choose!51354 (Regex!16836 List!66593) Unit!160392)

(assert (=> d!2161542 (= lt!2464070 (choose!51354 r1!6342 (_1!37006 lt!2464006)))))

(assert (=> d!2161542 (validRegex!8544 r1!6342)))

(assert (=> d!2161542 (= (mainMatchTheorem!3899 r1!6342 (_1!37006 lt!2464006)) lt!2464070)))

(declare-fun bs!1840942 () Bool)

(assert (= bs!1840942 d!2161542))

(assert (=> bs!1840942 m!7615320))

(assert (=> bs!1840942 m!7615322))

(declare-fun m!7615422 () Bool)

(assert (=> bs!1840942 m!7615422))

(assert (=> bs!1840942 m!7615298))

(assert (=> b!6896208 d!2161542))

(declare-fun d!2161544 () Bool)

(assert (=> d!2161544 (= (Exists!3844 lambda!391024) (choose!51352 lambda!391024))))

(declare-fun bs!1840943 () Bool)

(assert (= bs!1840943 d!2161544))

(declare-fun m!7615428 () Bool)

(assert (=> bs!1840943 m!7615428))

(assert (=> b!6896208 d!2161544))

(declare-fun bs!1840945 () Bool)

(declare-fun d!2161548 () Bool)

(assert (= bs!1840945 (and d!2161548 b!6896208)))

(declare-fun lambda!391057 () Int)

(assert (=> bs!1840945 (= lambda!391057 lambda!391023)))

(assert (=> bs!1840945 (not (= lambda!391057 lambda!391024))))

(declare-fun bs!1840946 () Bool)

(assert (= bs!1840946 (and d!2161548 b!6896387)))

(assert (=> bs!1840946 (not (= lambda!391057 lambda!391048))))

(declare-fun bs!1840947 () Bool)

(assert (= bs!1840947 (and d!2161548 b!6896217)))

(assert (=> bs!1840947 (not (= lambda!391057 lambda!391026))))

(declare-fun bs!1840948 () Bool)

(assert (= bs!1840948 (and d!2161548 b!6896381)))

(assert (=> bs!1840948 (not (= lambda!391057 lambda!391047))))

(assert (=> bs!1840947 (= (and (= s!14361 (_2!37006 lt!2464006)) (= r1!6342 r2!6280) (= lt!2464000 r3!135)) (= lambda!391057 lambda!391025))))

(assert (=> d!2161548 true))

(assert (=> d!2161548 true))

(assert (=> d!2161548 true))

(assert (=> d!2161548 (= (isDefined!13318 (findConcatSeparation!3029 r1!6342 lt!2464000 Nil!66469 s!14361 s!14361)) (Exists!3844 lambda!391057))))

(declare-fun lt!2464075 () Unit!160392)

(declare-fun choose!51355 (Regex!16836 Regex!16836 List!66593) Unit!160392)

(assert (=> d!2161548 (= lt!2464075 (choose!51355 r1!6342 lt!2464000 s!14361))))

(assert (=> d!2161548 (validRegex!8544 r1!6342)))

(assert (=> d!2161548 (= (lemmaFindConcatSeparationEquivalentToExists!2791 r1!6342 lt!2464000 s!14361) lt!2464075)))

(declare-fun bs!1840949 () Bool)

(assert (= bs!1840949 d!2161548))

(assert (=> bs!1840949 m!7615296))

(declare-fun m!7615432 () Bool)

(assert (=> bs!1840949 m!7615432))

(declare-fun m!7615434 () Bool)

(assert (=> bs!1840949 m!7615434))

(assert (=> bs!1840949 m!7615296))

(declare-fun m!7615436 () Bool)

(assert (=> bs!1840949 m!7615436))

(assert (=> bs!1840949 m!7615298))

(assert (=> b!6896208 d!2161548))

(declare-fun bs!1840950 () Bool)

(declare-fun d!2161552 () Bool)

(assert (= bs!1840950 (and d!2161552 b!6896208)))

(declare-fun lambda!391064 () Int)

(assert (=> bs!1840950 (= lambda!391064 lambda!391023)))

(assert (=> bs!1840950 (not (= lambda!391064 lambda!391024))))

(declare-fun bs!1840951 () Bool)

(assert (= bs!1840951 (and d!2161552 b!6896387)))

(assert (=> bs!1840951 (not (= lambda!391064 lambda!391048))))

(declare-fun bs!1840952 () Bool)

(assert (= bs!1840952 (and d!2161552 b!6896217)))

(assert (=> bs!1840952 (not (= lambda!391064 lambda!391026))))

(declare-fun bs!1840953 () Bool)

(assert (= bs!1840953 (and d!2161552 d!2161548)))

(assert (=> bs!1840953 (= lambda!391064 lambda!391057)))

(declare-fun bs!1840954 () Bool)

(assert (= bs!1840954 (and d!2161552 b!6896381)))

(assert (=> bs!1840954 (not (= lambda!391064 lambda!391047))))

(assert (=> bs!1840952 (= (and (= s!14361 (_2!37006 lt!2464006)) (= r1!6342 r2!6280) (= lt!2464000 r3!135)) (= lambda!391064 lambda!391025))))

(assert (=> d!2161552 true))

(assert (=> d!2161552 true))

(assert (=> d!2161552 true))

(declare-fun lambda!391065 () Int)

(assert (=> bs!1840950 (= lambda!391065 lambda!391024)))

(assert (=> bs!1840951 (= (and (= s!14361 (_1!37006 lt!2464006)) (= r1!6342 (regOne!34184 r1!6342)) (= lt!2464000 (regTwo!34184 r1!6342))) (= lambda!391065 lambda!391048))))

(assert (=> bs!1840952 (= (and (= s!14361 (_2!37006 lt!2464006)) (= r1!6342 r2!6280) (= lt!2464000 r3!135)) (= lambda!391065 lambda!391026))))

(assert (=> bs!1840953 (not (= lambda!391065 lambda!391057))))

(assert (=> bs!1840954 (not (= lambda!391065 lambda!391047))))

(assert (=> bs!1840952 (not (= lambda!391065 lambda!391025))))

(declare-fun bs!1840955 () Bool)

(assert (= bs!1840955 d!2161552))

(assert (=> bs!1840955 (not (= lambda!391065 lambda!391064))))

(assert (=> bs!1840950 (not (= lambda!391065 lambda!391023))))

(assert (=> d!2161552 true))

(assert (=> d!2161552 true))

(assert (=> d!2161552 true))

(assert (=> d!2161552 (= (Exists!3844 lambda!391064) (Exists!3844 lambda!391065))))

(declare-fun lt!2464081 () Unit!160392)

(declare-fun choose!51356 (Regex!16836 Regex!16836 List!66593) Unit!160392)

(assert (=> d!2161552 (= lt!2464081 (choose!51356 r1!6342 lt!2464000 s!14361))))

(assert (=> d!2161552 (validRegex!8544 r1!6342)))

(assert (=> d!2161552 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2317 r1!6342 lt!2464000 s!14361) lt!2464081)))

(declare-fun m!7615450 () Bool)

(assert (=> bs!1840955 m!7615450))

(declare-fun m!7615452 () Bool)

(assert (=> bs!1840955 m!7615452))

(declare-fun m!7615454 () Bool)

(assert (=> bs!1840955 m!7615454))

(assert (=> bs!1840955 m!7615298))

(assert (=> b!6896208 d!2161552))

(declare-fun d!2161556 () Bool)

(assert (=> d!2161556 (= (get!23205 lt!2464011) (v!52886 lt!2464011))))

(assert (=> b!6896208 d!2161556))

(declare-fun b!6896537 () Bool)

(declare-fun e!4153906 () Bool)

(assert (=> b!6896537 (= e!4153906 (= (head!13833 s!14361) (c!1281792 lt!2464003)))))

(declare-fun b!6896538 () Bool)

(declare-fun res!2811823 () Bool)

(assert (=> b!6896538 (=> (not res!2811823) (not e!4153906))))

(assert (=> b!6896538 (= res!2811823 (isEmpty!38716 (tail!12885 s!14361)))))

(declare-fun b!6896539 () Bool)

(declare-fun e!4153901 () Bool)

(assert (=> b!6896539 (= e!4153901 (matchR!8981 (derivativeStep!5380 lt!2464003 (head!13833 s!14361)) (tail!12885 s!14361)))))

(declare-fun b!6896540 () Bool)

(assert (=> b!6896540 (= e!4153901 (nullable!6702 lt!2464003))))

(declare-fun b!6896541 () Bool)

(declare-fun e!4153903 () Bool)

(assert (=> b!6896541 (= e!4153903 (not (= (head!13833 s!14361) (c!1281792 lt!2464003))))))

(declare-fun b!6896542 () Bool)

(declare-fun e!4153900 () Bool)

(declare-fun lt!2464083 () Bool)

(assert (=> b!6896542 (= e!4153900 (not lt!2464083))))

(declare-fun d!2161558 () Bool)

(declare-fun e!4153902 () Bool)

(assert (=> d!2161558 e!4153902))

(declare-fun c!1281844 () Bool)

(assert (=> d!2161558 (= c!1281844 (is-EmptyExpr!16836 lt!2464003))))

(assert (=> d!2161558 (= lt!2464083 e!4153901)))

(declare-fun c!1281843 () Bool)

(assert (=> d!2161558 (= c!1281843 (isEmpty!38716 s!14361))))

(assert (=> d!2161558 (validRegex!8544 lt!2464003)))

(assert (=> d!2161558 (= (matchR!8981 lt!2464003 s!14361) lt!2464083)))

(declare-fun b!6896543 () Bool)

(declare-fun e!4153905 () Bool)

(assert (=> b!6896543 (= e!4153905 e!4153903)))

(declare-fun res!2811818 () Bool)

(assert (=> b!6896543 (=> res!2811818 e!4153903)))

(declare-fun call!627401 () Bool)

(assert (=> b!6896543 (= res!2811818 call!627401)))

(declare-fun b!6896544 () Bool)

(declare-fun res!2811820 () Bool)

(declare-fun e!4153904 () Bool)

(assert (=> b!6896544 (=> res!2811820 e!4153904)))

(assert (=> b!6896544 (= res!2811820 (not (is-ElementMatch!16836 lt!2464003)))))

(assert (=> b!6896544 (= e!4153900 e!4153904)))

(declare-fun b!6896545 () Bool)

(assert (=> b!6896545 (= e!4153902 e!4153900)))

(declare-fun c!1281842 () Bool)

(assert (=> b!6896545 (= c!1281842 (is-EmptyLang!16836 lt!2464003))))

(declare-fun b!6896546 () Bool)

(declare-fun res!2811816 () Bool)

(assert (=> b!6896546 (=> (not res!2811816) (not e!4153906))))

(assert (=> b!6896546 (= res!2811816 (not call!627401))))

(declare-fun bm!627396 () Bool)

(assert (=> bm!627396 (= call!627401 (isEmpty!38716 s!14361))))

(declare-fun b!6896547 () Bool)

(assert (=> b!6896547 (= e!4153904 e!4153905)))

(declare-fun res!2811817 () Bool)

(assert (=> b!6896547 (=> (not res!2811817) (not e!4153905))))

(assert (=> b!6896547 (= res!2811817 (not lt!2464083))))

(declare-fun b!6896548 () Bool)

(declare-fun res!2811822 () Bool)

(assert (=> b!6896548 (=> res!2811822 e!4153903)))

(assert (=> b!6896548 (= res!2811822 (not (isEmpty!38716 (tail!12885 s!14361))))))

(declare-fun b!6896549 () Bool)

(declare-fun res!2811821 () Bool)

(assert (=> b!6896549 (=> res!2811821 e!4153904)))

(assert (=> b!6896549 (= res!2811821 e!4153906)))

(declare-fun res!2811819 () Bool)

(assert (=> b!6896549 (=> (not res!2811819) (not e!4153906))))

(assert (=> b!6896549 (= res!2811819 lt!2464083)))

(declare-fun b!6896550 () Bool)

(assert (=> b!6896550 (= e!4153902 (= lt!2464083 call!627401))))

(assert (= (and d!2161558 c!1281843) b!6896540))

(assert (= (and d!2161558 (not c!1281843)) b!6896539))

(assert (= (and d!2161558 c!1281844) b!6896550))

(assert (= (and d!2161558 (not c!1281844)) b!6896545))

(assert (= (and b!6896545 c!1281842) b!6896542))

(assert (= (and b!6896545 (not c!1281842)) b!6896544))

(assert (= (and b!6896544 (not res!2811820)) b!6896549))

(assert (= (and b!6896549 res!2811819) b!6896546))

(assert (= (and b!6896546 res!2811816) b!6896538))

(assert (= (and b!6896538 res!2811823) b!6896537))

(assert (= (and b!6896549 (not res!2811821)) b!6896547))

(assert (= (and b!6896547 res!2811817) b!6896543))

(assert (= (and b!6896543 (not res!2811818)) b!6896548))

(assert (= (and b!6896548 (not res!2811822)) b!6896541))

(assert (= (or b!6896550 b!6896546 b!6896543) bm!627396))

(declare-fun m!7615456 () Bool)

(assert (=> b!6896538 m!7615456))

(assert (=> b!6896538 m!7615456))

(declare-fun m!7615458 () Bool)

(assert (=> b!6896538 m!7615458))

(declare-fun m!7615460 () Bool)

(assert (=> bm!627396 m!7615460))

(assert (=> d!2161558 m!7615460))

(declare-fun m!7615462 () Bool)

(assert (=> d!2161558 m!7615462))

(declare-fun m!7615464 () Bool)

(assert (=> b!6896540 m!7615464))

(declare-fun m!7615466 () Bool)

(assert (=> b!6896539 m!7615466))

(assert (=> b!6896539 m!7615466))

(declare-fun m!7615468 () Bool)

(assert (=> b!6896539 m!7615468))

(assert (=> b!6896539 m!7615456))

(assert (=> b!6896539 m!7615468))

(assert (=> b!6896539 m!7615456))

(declare-fun m!7615470 () Bool)

(assert (=> b!6896539 m!7615470))

(assert (=> b!6896548 m!7615456))

(assert (=> b!6896548 m!7615456))

(assert (=> b!6896548 m!7615458))

(assert (=> b!6896537 m!7615466))

(assert (=> b!6896541 m!7615466))

(assert (=> b!6896218 d!2161558))

(declare-fun d!2161560 () Bool)

(assert (=> d!2161560 (= (matchR!8981 lt!2464003 s!14361) (matchRSpec!3899 lt!2464003 s!14361))))

(declare-fun lt!2464084 () Unit!160392)

(assert (=> d!2161560 (= lt!2464084 (choose!51354 lt!2464003 s!14361))))

(assert (=> d!2161560 (validRegex!8544 lt!2464003)))

(assert (=> d!2161560 (= (mainMatchTheorem!3899 lt!2464003 s!14361) lt!2464084)))

(declare-fun bs!1840960 () Bool)

(assert (= bs!1840960 d!2161560))

(assert (=> bs!1840960 m!7615308))

(assert (=> bs!1840960 m!7615306))

(declare-fun m!7615472 () Bool)

(assert (=> bs!1840960 m!7615472))

(assert (=> bs!1840960 m!7615462))

(assert (=> b!6896218 d!2161560))

(declare-fun d!2161562 () Bool)

(assert (=> d!2161562 (= (matchR!8981 lt!2464010 s!14361) (matchRSpec!3899 lt!2464010 s!14361))))

(declare-fun lt!2464085 () Unit!160392)

(assert (=> d!2161562 (= lt!2464085 (choose!51354 lt!2464010 s!14361))))

(assert (=> d!2161562 (validRegex!8544 lt!2464010)))

(assert (=> d!2161562 (= (mainMatchTheorem!3899 lt!2464010 s!14361) lt!2464085)))

(declare-fun bs!1840961 () Bool)

(assert (= bs!1840961 d!2161562))

(assert (=> bs!1840961 m!7615304))

(assert (=> bs!1840961 m!7615310))

(declare-fun m!7615474 () Bool)

(assert (=> bs!1840961 m!7615474))

(declare-fun m!7615476 () Bool)

(assert (=> bs!1840961 m!7615476))

(assert (=> b!6896218 d!2161562))

(declare-fun b!6896551 () Bool)

(declare-fun e!4153913 () Bool)

(assert (=> b!6896551 (= e!4153913 (= (head!13833 s!14361) (c!1281792 lt!2464010)))))

(declare-fun b!6896552 () Bool)

(declare-fun res!2811831 () Bool)

(assert (=> b!6896552 (=> (not res!2811831) (not e!4153913))))

(assert (=> b!6896552 (= res!2811831 (isEmpty!38716 (tail!12885 s!14361)))))

(declare-fun b!6896553 () Bool)

(declare-fun e!4153908 () Bool)

(assert (=> b!6896553 (= e!4153908 (matchR!8981 (derivativeStep!5380 lt!2464010 (head!13833 s!14361)) (tail!12885 s!14361)))))

(declare-fun b!6896554 () Bool)

(assert (=> b!6896554 (= e!4153908 (nullable!6702 lt!2464010))))

(declare-fun b!6896555 () Bool)

(declare-fun e!4153910 () Bool)

(assert (=> b!6896555 (= e!4153910 (not (= (head!13833 s!14361) (c!1281792 lt!2464010))))))

(declare-fun b!6896556 () Bool)

(declare-fun e!4153907 () Bool)

(declare-fun lt!2464086 () Bool)

(assert (=> b!6896556 (= e!4153907 (not lt!2464086))))

(declare-fun d!2161564 () Bool)

(declare-fun e!4153909 () Bool)

(assert (=> d!2161564 e!4153909))

(declare-fun c!1281847 () Bool)

(assert (=> d!2161564 (= c!1281847 (is-EmptyExpr!16836 lt!2464010))))

(assert (=> d!2161564 (= lt!2464086 e!4153908)))

(declare-fun c!1281846 () Bool)

(assert (=> d!2161564 (= c!1281846 (isEmpty!38716 s!14361))))

(assert (=> d!2161564 (validRegex!8544 lt!2464010)))

(assert (=> d!2161564 (= (matchR!8981 lt!2464010 s!14361) lt!2464086)))

(declare-fun b!6896557 () Bool)

(declare-fun e!4153912 () Bool)

(assert (=> b!6896557 (= e!4153912 e!4153910)))

(declare-fun res!2811826 () Bool)

(assert (=> b!6896557 (=> res!2811826 e!4153910)))

(declare-fun call!627402 () Bool)

(assert (=> b!6896557 (= res!2811826 call!627402)))

(declare-fun b!6896558 () Bool)

(declare-fun res!2811828 () Bool)

(declare-fun e!4153911 () Bool)

(assert (=> b!6896558 (=> res!2811828 e!4153911)))

(assert (=> b!6896558 (= res!2811828 (not (is-ElementMatch!16836 lt!2464010)))))

(assert (=> b!6896558 (= e!4153907 e!4153911)))

(declare-fun b!6896559 () Bool)

(assert (=> b!6896559 (= e!4153909 e!4153907)))

(declare-fun c!1281845 () Bool)

(assert (=> b!6896559 (= c!1281845 (is-EmptyLang!16836 lt!2464010))))

(declare-fun b!6896560 () Bool)

(declare-fun res!2811824 () Bool)

(assert (=> b!6896560 (=> (not res!2811824) (not e!4153913))))

(assert (=> b!6896560 (= res!2811824 (not call!627402))))

(declare-fun bm!627397 () Bool)

(assert (=> bm!627397 (= call!627402 (isEmpty!38716 s!14361))))

(declare-fun b!6896561 () Bool)

(assert (=> b!6896561 (= e!4153911 e!4153912)))

(declare-fun res!2811825 () Bool)

(assert (=> b!6896561 (=> (not res!2811825) (not e!4153912))))

(assert (=> b!6896561 (= res!2811825 (not lt!2464086))))

(declare-fun b!6896562 () Bool)

(declare-fun res!2811830 () Bool)

(assert (=> b!6896562 (=> res!2811830 e!4153910)))

(assert (=> b!6896562 (= res!2811830 (not (isEmpty!38716 (tail!12885 s!14361))))))

(declare-fun b!6896563 () Bool)

(declare-fun res!2811829 () Bool)

(assert (=> b!6896563 (=> res!2811829 e!4153911)))

(assert (=> b!6896563 (= res!2811829 e!4153913)))

(declare-fun res!2811827 () Bool)

(assert (=> b!6896563 (=> (not res!2811827) (not e!4153913))))

(assert (=> b!6896563 (= res!2811827 lt!2464086)))

(declare-fun b!6896564 () Bool)

(assert (=> b!6896564 (= e!4153909 (= lt!2464086 call!627402))))

(assert (= (and d!2161564 c!1281846) b!6896554))

(assert (= (and d!2161564 (not c!1281846)) b!6896553))

(assert (= (and d!2161564 c!1281847) b!6896564))

(assert (= (and d!2161564 (not c!1281847)) b!6896559))

(assert (= (and b!6896559 c!1281845) b!6896556))

(assert (= (and b!6896559 (not c!1281845)) b!6896558))

(assert (= (and b!6896558 (not res!2811828)) b!6896563))

(assert (= (and b!6896563 res!2811827) b!6896560))

(assert (= (and b!6896560 res!2811824) b!6896552))

(assert (= (and b!6896552 res!2811831) b!6896551))

(assert (= (and b!6896563 (not res!2811829)) b!6896561))

(assert (= (and b!6896561 res!2811825) b!6896557))

(assert (= (and b!6896557 (not res!2811826)) b!6896562))

(assert (= (and b!6896562 (not res!2811830)) b!6896555))

(assert (= (or b!6896564 b!6896560 b!6896557) bm!627397))

(assert (=> b!6896552 m!7615456))

(assert (=> b!6896552 m!7615456))

(assert (=> b!6896552 m!7615458))

(assert (=> bm!627397 m!7615460))

(assert (=> d!2161564 m!7615460))

(assert (=> d!2161564 m!7615476))

(declare-fun m!7615478 () Bool)

(assert (=> b!6896554 m!7615478))

(assert (=> b!6896553 m!7615466))

(assert (=> b!6896553 m!7615466))

(declare-fun m!7615480 () Bool)

(assert (=> b!6896553 m!7615480))

(assert (=> b!6896553 m!7615456))

(assert (=> b!6896553 m!7615480))

(assert (=> b!6896553 m!7615456))

(declare-fun m!7615482 () Bool)

(assert (=> b!6896553 m!7615482))

(assert (=> b!6896562 m!7615456))

(assert (=> b!6896562 m!7615456))

(assert (=> b!6896562 m!7615458))

(assert (=> b!6896551 m!7615466))

(assert (=> b!6896555 m!7615466))

(assert (=> b!6896218 d!2161564))

(declare-fun bs!1840963 () Bool)

(declare-fun b!6896567 () Bool)

(assert (= bs!1840963 (and b!6896567 b!6896208)))

(declare-fun lambda!391070 () Int)

(assert (=> bs!1840963 (not (= lambda!391070 lambda!391024))))

(declare-fun bs!1840965 () Bool)

(assert (= bs!1840965 (and b!6896567 b!6896387)))

(assert (=> bs!1840965 (not (= lambda!391070 lambda!391048))))

(declare-fun bs!1840966 () Bool)

(assert (= bs!1840966 (and b!6896567 d!2161548)))

(assert (=> bs!1840966 (not (= lambda!391070 lambda!391057))))

(declare-fun bs!1840967 () Bool)

(assert (= bs!1840967 (and b!6896567 b!6896381)))

(assert (=> bs!1840967 (= (and (= s!14361 (_1!37006 lt!2464006)) (= (reg!17165 lt!2464010) (reg!17165 r1!6342)) (= lt!2464010 r1!6342)) (= lambda!391070 lambda!391047))))

(declare-fun bs!1840968 () Bool)

(assert (= bs!1840968 (and b!6896567 b!6896217)))

(assert (=> bs!1840968 (not (= lambda!391070 lambda!391025))))

(declare-fun bs!1840969 () Bool)

(assert (= bs!1840969 (and b!6896567 d!2161552)))

(assert (=> bs!1840969 (not (= lambda!391070 lambda!391064))))

(assert (=> bs!1840963 (not (= lambda!391070 lambda!391023))))

(assert (=> bs!1840968 (not (= lambda!391070 lambda!391026))))

(assert (=> bs!1840969 (not (= lambda!391070 lambda!391065))))

(assert (=> b!6896567 true))

(assert (=> b!6896567 true))

(declare-fun bs!1840970 () Bool)

(declare-fun b!6896573 () Bool)

(assert (= bs!1840970 (and b!6896573 b!6896208)))

(declare-fun lambda!391071 () Int)

(assert (=> bs!1840970 (= (and (= (regOne!34184 lt!2464010) r1!6342) (= (regTwo!34184 lt!2464010) lt!2464000)) (= lambda!391071 lambda!391024))))

(declare-fun bs!1840971 () Bool)

(assert (= bs!1840971 (and b!6896573 b!6896387)))

(assert (=> bs!1840971 (= (and (= s!14361 (_1!37006 lt!2464006)) (= (regOne!34184 lt!2464010) (regOne!34184 r1!6342)) (= (regTwo!34184 lt!2464010) (regTwo!34184 r1!6342))) (= lambda!391071 lambda!391048))))

(declare-fun bs!1840972 () Bool)

(assert (= bs!1840972 (and b!6896573 b!6896567)))

(assert (=> bs!1840972 (not (= lambda!391071 lambda!391070))))

(declare-fun bs!1840973 () Bool)

(assert (= bs!1840973 (and b!6896573 d!2161548)))

(assert (=> bs!1840973 (not (= lambda!391071 lambda!391057))))

(declare-fun bs!1840974 () Bool)

(assert (= bs!1840974 (and b!6896573 b!6896381)))

(assert (=> bs!1840974 (not (= lambda!391071 lambda!391047))))

(declare-fun bs!1840975 () Bool)

(assert (= bs!1840975 (and b!6896573 b!6896217)))

(assert (=> bs!1840975 (not (= lambda!391071 lambda!391025))))

(declare-fun bs!1840976 () Bool)

(assert (= bs!1840976 (and b!6896573 d!2161552)))

(assert (=> bs!1840976 (not (= lambda!391071 lambda!391064))))

(assert (=> bs!1840970 (not (= lambda!391071 lambda!391023))))

(assert (=> bs!1840975 (= (and (= s!14361 (_2!37006 lt!2464006)) (= (regOne!34184 lt!2464010) r2!6280) (= (regTwo!34184 lt!2464010) r3!135)) (= lambda!391071 lambda!391026))))

(assert (=> bs!1840976 (= (and (= (regOne!34184 lt!2464010) r1!6342) (= (regTwo!34184 lt!2464010) lt!2464000)) (= lambda!391071 lambda!391065))))

(assert (=> b!6896573 true))

(assert (=> b!6896573 true))

(declare-fun d!2161566 () Bool)

(declare-fun c!1281851 () Bool)

(assert (=> d!2161566 (= c!1281851 (is-EmptyExpr!16836 lt!2464010))))

(declare-fun e!4153916 () Bool)

(assert (=> d!2161566 (= (matchRSpec!3899 lt!2464010 s!14361) e!4153916)))

(declare-fun b!6896565 () Bool)

(declare-fun e!4153915 () Bool)

(assert (=> b!6896565 (= e!4153915 (matchRSpec!3899 (regTwo!34185 lt!2464010) s!14361))))

(declare-fun bm!627398 () Bool)

(declare-fun call!627404 () Bool)

(assert (=> bm!627398 (= call!627404 (isEmpty!38716 s!14361))))

(declare-fun b!6896566 () Bool)

(assert (=> b!6896566 (= e!4153916 call!627404)))

(declare-fun e!4153918 () Bool)

(declare-fun call!627403 () Bool)

(assert (=> b!6896567 (= e!4153918 call!627403)))

(declare-fun b!6896568 () Bool)

(declare-fun e!4153917 () Bool)

(assert (=> b!6896568 (= e!4153917 e!4153915)))

(declare-fun res!2811832 () Bool)

(assert (=> b!6896568 (= res!2811832 (matchRSpec!3899 (regOne!34185 lt!2464010) s!14361))))

(assert (=> b!6896568 (=> res!2811832 e!4153915)))

(declare-fun b!6896569 () Bool)

(declare-fun res!2811833 () Bool)

(assert (=> b!6896569 (=> res!2811833 e!4153918)))

(assert (=> b!6896569 (= res!2811833 call!627404)))

(declare-fun e!4153914 () Bool)

(assert (=> b!6896569 (= e!4153914 e!4153918)))

(declare-fun b!6896570 () Bool)

(declare-fun c!1281849 () Bool)

(assert (=> b!6896570 (= c!1281849 (is-ElementMatch!16836 lt!2464010))))

(declare-fun e!4153920 () Bool)

(declare-fun e!4153919 () Bool)

(assert (=> b!6896570 (= e!4153920 e!4153919)))

(declare-fun b!6896571 () Bool)

(assert (=> b!6896571 (= e!4153917 e!4153914)))

(declare-fun c!1281850 () Bool)

(assert (=> b!6896571 (= c!1281850 (is-Star!16836 lt!2464010))))

(declare-fun b!6896572 () Bool)

(assert (=> b!6896572 (= e!4153919 (= s!14361 (Cons!66469 (c!1281792 lt!2464010) Nil!66469)))))

(assert (=> b!6896573 (= e!4153914 call!627403)))

(declare-fun bm!627399 () Bool)

(assert (=> bm!627399 (= call!627403 (Exists!3844 (ite c!1281850 lambda!391070 lambda!391071)))))

(declare-fun b!6896574 () Bool)

(declare-fun c!1281848 () Bool)

(assert (=> b!6896574 (= c!1281848 (is-Union!16836 lt!2464010))))

(assert (=> b!6896574 (= e!4153919 e!4153917)))

(declare-fun b!6896575 () Bool)

(assert (=> b!6896575 (= e!4153916 e!4153920)))

(declare-fun res!2811834 () Bool)

(assert (=> b!6896575 (= res!2811834 (not (is-EmptyLang!16836 lt!2464010)))))

(assert (=> b!6896575 (=> (not res!2811834) (not e!4153920))))

(assert (= (and d!2161566 c!1281851) b!6896566))

(assert (= (and d!2161566 (not c!1281851)) b!6896575))

(assert (= (and b!6896575 res!2811834) b!6896570))

(assert (= (and b!6896570 c!1281849) b!6896572))

(assert (= (and b!6896570 (not c!1281849)) b!6896574))

(assert (= (and b!6896574 c!1281848) b!6896568))

(assert (= (and b!6896574 (not c!1281848)) b!6896571))

(assert (= (and b!6896568 (not res!2811832)) b!6896565))

(assert (= (and b!6896571 c!1281850) b!6896569))

(assert (= (and b!6896571 (not c!1281850)) b!6896573))

(assert (= (and b!6896569 (not res!2811833)) b!6896567))

(assert (= (or b!6896567 b!6896573) bm!627399))

(assert (= (or b!6896566 b!6896569) bm!627398))

(declare-fun m!7615492 () Bool)

(assert (=> b!6896565 m!7615492))

(assert (=> bm!627398 m!7615460))

(declare-fun m!7615494 () Bool)

(assert (=> b!6896568 m!7615494))

(declare-fun m!7615496 () Bool)

(assert (=> bm!627399 m!7615496))

(assert (=> b!6896218 d!2161566))

(declare-fun bs!1840977 () Bool)

(declare-fun b!6896578 () Bool)

(assert (= bs!1840977 (and b!6896578 b!6896573)))

(declare-fun lambda!391072 () Int)

(assert (=> bs!1840977 (not (= lambda!391072 lambda!391071))))

(declare-fun bs!1840978 () Bool)

(assert (= bs!1840978 (and b!6896578 b!6896208)))

(assert (=> bs!1840978 (not (= lambda!391072 lambda!391024))))

(declare-fun bs!1840979 () Bool)

(assert (= bs!1840979 (and b!6896578 b!6896387)))

(assert (=> bs!1840979 (not (= lambda!391072 lambda!391048))))

(declare-fun bs!1840980 () Bool)

(assert (= bs!1840980 (and b!6896578 b!6896567)))

(assert (=> bs!1840980 (= (and (= (reg!17165 lt!2464003) (reg!17165 lt!2464010)) (= lt!2464003 lt!2464010)) (= lambda!391072 lambda!391070))))

(declare-fun bs!1840981 () Bool)

(assert (= bs!1840981 (and b!6896578 d!2161548)))

(assert (=> bs!1840981 (not (= lambda!391072 lambda!391057))))

(declare-fun bs!1840982 () Bool)

(assert (= bs!1840982 (and b!6896578 b!6896381)))

(assert (=> bs!1840982 (= (and (= s!14361 (_1!37006 lt!2464006)) (= (reg!17165 lt!2464003) (reg!17165 r1!6342)) (= lt!2464003 r1!6342)) (= lambda!391072 lambda!391047))))

(declare-fun bs!1840983 () Bool)

(assert (= bs!1840983 (and b!6896578 b!6896217)))

(assert (=> bs!1840983 (not (= lambda!391072 lambda!391025))))

(declare-fun bs!1840984 () Bool)

(assert (= bs!1840984 (and b!6896578 d!2161552)))

(assert (=> bs!1840984 (not (= lambda!391072 lambda!391064))))

(assert (=> bs!1840978 (not (= lambda!391072 lambda!391023))))

(assert (=> bs!1840983 (not (= lambda!391072 lambda!391026))))

(assert (=> bs!1840984 (not (= lambda!391072 lambda!391065))))

(assert (=> b!6896578 true))

(assert (=> b!6896578 true))

(declare-fun bs!1840985 () Bool)

(declare-fun b!6896584 () Bool)

(assert (= bs!1840985 (and b!6896584 b!6896573)))

(declare-fun lambda!391075 () Int)

(assert (=> bs!1840985 (= (and (= (regOne!34184 lt!2464003) (regOne!34184 lt!2464010)) (= (regTwo!34184 lt!2464003) (regTwo!34184 lt!2464010))) (= lambda!391075 lambda!391071))))

(declare-fun bs!1840986 () Bool)

(assert (= bs!1840986 (and b!6896584 b!6896208)))

(assert (=> bs!1840986 (= (and (= (regOne!34184 lt!2464003) r1!6342) (= (regTwo!34184 lt!2464003) lt!2464000)) (= lambda!391075 lambda!391024))))

(declare-fun bs!1840987 () Bool)

(assert (= bs!1840987 (and b!6896584 b!6896387)))

(assert (=> bs!1840987 (= (and (= s!14361 (_1!37006 lt!2464006)) (= (regOne!34184 lt!2464003) (regOne!34184 r1!6342)) (= (regTwo!34184 lt!2464003) (regTwo!34184 r1!6342))) (= lambda!391075 lambda!391048))))

(declare-fun bs!1840988 () Bool)

(assert (= bs!1840988 (and b!6896584 b!6896567)))

(assert (=> bs!1840988 (not (= lambda!391075 lambda!391070))))

(declare-fun bs!1840989 () Bool)

(assert (= bs!1840989 (and b!6896584 d!2161548)))

(assert (=> bs!1840989 (not (= lambda!391075 lambda!391057))))

(declare-fun bs!1840990 () Bool)

(assert (= bs!1840990 (and b!6896584 b!6896381)))

(assert (=> bs!1840990 (not (= lambda!391075 lambda!391047))))

(declare-fun bs!1840991 () Bool)

(assert (= bs!1840991 (and b!6896584 b!6896578)))

(assert (=> bs!1840991 (not (= lambda!391075 lambda!391072))))

(declare-fun bs!1840992 () Bool)

(assert (= bs!1840992 (and b!6896584 b!6896217)))

(assert (=> bs!1840992 (not (= lambda!391075 lambda!391025))))

(declare-fun bs!1840993 () Bool)

(assert (= bs!1840993 (and b!6896584 d!2161552)))

(assert (=> bs!1840993 (not (= lambda!391075 lambda!391064))))

(assert (=> bs!1840986 (not (= lambda!391075 lambda!391023))))

(assert (=> bs!1840992 (= (and (= s!14361 (_2!37006 lt!2464006)) (= (regOne!34184 lt!2464003) r2!6280) (= (regTwo!34184 lt!2464003) r3!135)) (= lambda!391075 lambda!391026))))

(assert (=> bs!1840993 (= (and (= (regOne!34184 lt!2464003) r1!6342) (= (regTwo!34184 lt!2464003) lt!2464000)) (= lambda!391075 lambda!391065))))

(assert (=> b!6896584 true))

(assert (=> b!6896584 true))

(declare-fun d!2161574 () Bool)

(declare-fun c!1281855 () Bool)

(assert (=> d!2161574 (= c!1281855 (is-EmptyExpr!16836 lt!2464003))))

(declare-fun e!4153923 () Bool)

(assert (=> d!2161574 (= (matchRSpec!3899 lt!2464003 s!14361) e!4153923)))

(declare-fun b!6896576 () Bool)

(declare-fun e!4153922 () Bool)

(assert (=> b!6896576 (= e!4153922 (matchRSpec!3899 (regTwo!34185 lt!2464003) s!14361))))

(declare-fun bm!627400 () Bool)

(declare-fun call!627406 () Bool)

(assert (=> bm!627400 (= call!627406 (isEmpty!38716 s!14361))))

(declare-fun b!6896577 () Bool)

(assert (=> b!6896577 (= e!4153923 call!627406)))

(declare-fun e!4153925 () Bool)

(declare-fun call!627405 () Bool)

(assert (=> b!6896578 (= e!4153925 call!627405)))

(declare-fun b!6896579 () Bool)

(declare-fun e!4153924 () Bool)

(assert (=> b!6896579 (= e!4153924 e!4153922)))

(declare-fun res!2811835 () Bool)

(assert (=> b!6896579 (= res!2811835 (matchRSpec!3899 (regOne!34185 lt!2464003) s!14361))))

(assert (=> b!6896579 (=> res!2811835 e!4153922)))

(declare-fun b!6896580 () Bool)

(declare-fun res!2811836 () Bool)

(assert (=> b!6896580 (=> res!2811836 e!4153925)))

(assert (=> b!6896580 (= res!2811836 call!627406)))

(declare-fun e!4153921 () Bool)

(assert (=> b!6896580 (= e!4153921 e!4153925)))

(declare-fun b!6896581 () Bool)

(declare-fun c!1281853 () Bool)

(assert (=> b!6896581 (= c!1281853 (is-ElementMatch!16836 lt!2464003))))

(declare-fun e!4153927 () Bool)

(declare-fun e!4153926 () Bool)

(assert (=> b!6896581 (= e!4153927 e!4153926)))

(declare-fun b!6896582 () Bool)

(assert (=> b!6896582 (= e!4153924 e!4153921)))

(declare-fun c!1281854 () Bool)

(assert (=> b!6896582 (= c!1281854 (is-Star!16836 lt!2464003))))

(declare-fun b!6896583 () Bool)

(assert (=> b!6896583 (= e!4153926 (= s!14361 (Cons!66469 (c!1281792 lt!2464003) Nil!66469)))))

(assert (=> b!6896584 (= e!4153921 call!627405)))

(declare-fun bm!627401 () Bool)

(assert (=> bm!627401 (= call!627405 (Exists!3844 (ite c!1281854 lambda!391072 lambda!391075)))))

(declare-fun b!6896585 () Bool)

(declare-fun c!1281852 () Bool)

(assert (=> b!6896585 (= c!1281852 (is-Union!16836 lt!2464003))))

(assert (=> b!6896585 (= e!4153926 e!4153924)))

(declare-fun b!6896586 () Bool)

(assert (=> b!6896586 (= e!4153923 e!4153927)))

(declare-fun res!2811837 () Bool)

(assert (=> b!6896586 (= res!2811837 (not (is-EmptyLang!16836 lt!2464003)))))

(assert (=> b!6896586 (=> (not res!2811837) (not e!4153927))))

(assert (= (and d!2161574 c!1281855) b!6896577))

(assert (= (and d!2161574 (not c!1281855)) b!6896586))

(assert (= (and b!6896586 res!2811837) b!6896581))

(assert (= (and b!6896581 c!1281853) b!6896583))

(assert (= (and b!6896581 (not c!1281853)) b!6896585))

(assert (= (and b!6896585 c!1281852) b!6896579))

(assert (= (and b!6896585 (not c!1281852)) b!6896582))

(assert (= (and b!6896579 (not res!2811835)) b!6896576))

(assert (= (and b!6896582 c!1281854) b!6896580))

(assert (= (and b!6896582 (not c!1281854)) b!6896584))

(assert (= (and b!6896580 (not res!2811836)) b!6896578))

(assert (= (or b!6896578 b!6896584) bm!627401))

(assert (= (or b!6896577 b!6896580) bm!627400))

(declare-fun m!7615498 () Bool)

(assert (=> b!6896576 m!7615498))

(assert (=> bm!627400 m!7615460))

(declare-fun m!7615500 () Bool)

(assert (=> b!6896579 m!7615500))

(declare-fun m!7615502 () Bool)

(assert (=> bm!627401 m!7615502))

(assert (=> b!6896218 d!2161574))

(declare-fun b!6896623 () Bool)

(declare-fun res!2811860 () Bool)

(declare-fun e!4153953 () Bool)

(assert (=> b!6896623 (=> res!2811860 e!4153953)))

(assert (=> b!6896623 (= res!2811860 (not (is-Concat!25681 r1!6342)))))

(declare-fun e!4153954 () Bool)

(assert (=> b!6896623 (= e!4153954 e!4153953)))

(declare-fun b!6896624 () Bool)

(declare-fun e!4153952 () Bool)

(declare-fun call!627416 () Bool)

(assert (=> b!6896624 (= e!4153952 call!627416)))

(declare-fun b!6896625 () Bool)

(declare-fun e!4153955 () Bool)

(declare-fun call!627414 () Bool)

(assert (=> b!6896625 (= e!4153955 call!627414)))

(declare-fun b!6896626 () Bool)

(declare-fun e!4153957 () Bool)

(assert (=> b!6896626 (= e!4153957 e!4153954)))

(declare-fun c!1281863 () Bool)

(assert (=> b!6896626 (= c!1281863 (is-Union!16836 r1!6342))))

(declare-fun b!6896627 () Bool)

(declare-fun e!4153956 () Bool)

(declare-fun call!627415 () Bool)

(assert (=> b!6896627 (= e!4153956 call!627415)))

(declare-fun b!6896628 () Bool)

(assert (=> b!6896628 (= e!4153957 e!4153952)))

(declare-fun res!2811862 () Bool)

(assert (=> b!6896628 (= res!2811862 (not (nullable!6702 (reg!17165 r1!6342))))))

(assert (=> b!6896628 (=> (not res!2811862) (not e!4153952))))

(declare-fun b!6896629 () Bool)

(assert (=> b!6896629 (= e!4153953 e!4153956)))

(declare-fun res!2811864 () Bool)

(assert (=> b!6896629 (=> (not res!2811864) (not e!4153956))))

(assert (=> b!6896629 (= res!2811864 call!627414)))

(declare-fun bm!627409 () Bool)

(assert (=> bm!627409 (= call!627415 (validRegex!8544 (ite c!1281863 (regOne!34185 r1!6342) (regTwo!34184 r1!6342))))))

(declare-fun c!1281864 () Bool)

(declare-fun bm!627411 () Bool)

(assert (=> bm!627411 (= call!627416 (validRegex!8544 (ite c!1281864 (reg!17165 r1!6342) (ite c!1281863 (regTwo!34185 r1!6342) (regOne!34184 r1!6342)))))))

(declare-fun b!6896630 () Bool)

(declare-fun e!4153951 () Bool)

(assert (=> b!6896630 (= e!4153951 e!4153957)))

(assert (=> b!6896630 (= c!1281864 (is-Star!16836 r1!6342))))

(declare-fun b!6896631 () Bool)

(declare-fun res!2811863 () Bool)

(assert (=> b!6896631 (=> (not res!2811863) (not e!4153955))))

(assert (=> b!6896631 (= res!2811863 call!627415)))

(assert (=> b!6896631 (= e!4153954 e!4153955)))

(declare-fun bm!627410 () Bool)

(assert (=> bm!627410 (= call!627414 call!627416)))

(declare-fun d!2161576 () Bool)

(declare-fun res!2811861 () Bool)

(assert (=> d!2161576 (=> res!2811861 e!4153951)))

(assert (=> d!2161576 (= res!2811861 (is-ElementMatch!16836 r1!6342))))

(assert (=> d!2161576 (= (validRegex!8544 r1!6342) e!4153951)))

(assert (= (and d!2161576 (not res!2811861)) b!6896630))

(assert (= (and b!6896630 c!1281864) b!6896628))

(assert (= (and b!6896630 (not c!1281864)) b!6896626))

(assert (= (and b!6896628 res!2811862) b!6896624))

(assert (= (and b!6896626 c!1281863) b!6896631))

(assert (= (and b!6896626 (not c!1281863)) b!6896623))

(assert (= (and b!6896631 res!2811863) b!6896625))

(assert (= (and b!6896623 (not res!2811860)) b!6896629))

(assert (= (and b!6896629 res!2811864) b!6896627))

(assert (= (or b!6896631 b!6896627) bm!627409))

(assert (= (or b!6896625 b!6896629) bm!627410))

(assert (= (or b!6896624 bm!627410) bm!627411))

(declare-fun m!7615528 () Bool)

(assert (=> b!6896628 m!7615528))

(declare-fun m!7615530 () Bool)

(assert (=> bm!627409 m!7615530))

(declare-fun m!7615532 () Bool)

(assert (=> bm!627411 m!7615532))

(assert (=> start!664532 d!2161576))

(declare-fun d!2161584 () Bool)

(assert (=> d!2161584 (= (matchR!8981 lt!2464000 (_2!37006 lt!2464006)) (matchRSpec!3899 lt!2464000 (_2!37006 lt!2464006)))))

(declare-fun lt!2464091 () Unit!160392)

(assert (=> d!2161584 (= lt!2464091 (choose!51354 lt!2464000 (_2!37006 lt!2464006)))))

(assert (=> d!2161584 (validRegex!8544 lt!2464000)))

(assert (=> d!2161584 (= (mainMatchTheorem!3899 lt!2464000 (_2!37006 lt!2464006)) lt!2464091)))

(declare-fun bs!1841001 () Bool)

(assert (= bs!1841001 d!2161584))

(assert (=> bs!1841001 m!7615292))

(assert (=> bs!1841001 m!7615276))

(declare-fun m!7615534 () Bool)

(assert (=> bs!1841001 m!7615534))

(declare-fun m!7615536 () Bool)

(assert (=> bs!1841001 m!7615536))

(assert (=> b!6896217 d!2161584))

(declare-fun b!6896677 () Bool)

(declare-fun e!4153983 () Option!16615)

(assert (=> b!6896677 (= e!4153983 None!16614)))

(declare-fun b!6896678 () Bool)

(declare-fun lt!2464110 () Unit!160392)

(declare-fun lt!2464109 () Unit!160392)

(assert (=> b!6896678 (= lt!2464110 lt!2464109)))

(declare-fun ++!14896 (List!66593 List!66593) List!66593)

(assert (=> b!6896678 (= (++!14896 (++!14896 Nil!66469 (Cons!66469 (h!72917 (_2!37006 lt!2464006)) Nil!66469)) (t!380336 (_2!37006 lt!2464006))) (_2!37006 lt!2464006))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2789 (List!66593 C!33942 List!66593 List!66593) Unit!160392)

(assert (=> b!6896678 (= lt!2464109 (lemmaMoveElementToOtherListKeepsConcatEq!2789 Nil!66469 (h!72917 (_2!37006 lt!2464006)) (t!380336 (_2!37006 lt!2464006)) (_2!37006 lt!2464006)))))

(assert (=> b!6896678 (= e!4153983 (findConcatSeparation!3029 r2!6280 r3!135 (++!14896 Nil!66469 (Cons!66469 (h!72917 (_2!37006 lt!2464006)) Nil!66469)) (t!380336 (_2!37006 lt!2464006)) (_2!37006 lt!2464006)))))

(declare-fun b!6896679 () Bool)

(declare-fun e!4153985 () Bool)

(declare-fun lt!2464108 () Option!16615)

(assert (=> b!6896679 (= e!4153985 (= (++!14896 (_1!37006 (get!23205 lt!2464108)) (_2!37006 (get!23205 lt!2464108))) (_2!37006 lt!2464006)))))

(declare-fun d!2161586 () Bool)

(declare-fun e!4153984 () Bool)

(assert (=> d!2161586 e!4153984))

(declare-fun res!2811891 () Bool)

(assert (=> d!2161586 (=> res!2811891 e!4153984)))

(assert (=> d!2161586 (= res!2811891 e!4153985)))

(declare-fun res!2811893 () Bool)

(assert (=> d!2161586 (=> (not res!2811893) (not e!4153985))))

(assert (=> d!2161586 (= res!2811893 (isDefined!13318 lt!2464108))))

(declare-fun e!4153986 () Option!16615)

(assert (=> d!2161586 (= lt!2464108 e!4153986)))

(declare-fun c!1281876 () Bool)

(declare-fun e!4153987 () Bool)

(assert (=> d!2161586 (= c!1281876 e!4153987)))

(declare-fun res!2811892 () Bool)

(assert (=> d!2161586 (=> (not res!2811892) (not e!4153987))))

(assert (=> d!2161586 (= res!2811892 (matchR!8981 r2!6280 Nil!66469))))

(assert (=> d!2161586 (validRegex!8544 r2!6280)))

(assert (=> d!2161586 (= (findConcatSeparation!3029 r2!6280 r3!135 Nil!66469 (_2!37006 lt!2464006) (_2!37006 lt!2464006)) lt!2464108)))

(declare-fun b!6896680 () Bool)

(assert (=> b!6896680 (= e!4153986 e!4153983)))

(declare-fun c!1281875 () Bool)

(assert (=> b!6896680 (= c!1281875 (is-Nil!66469 (_2!37006 lt!2464006)))))

(declare-fun b!6896681 () Bool)

(assert (=> b!6896681 (= e!4153986 (Some!16614 (tuple2!67407 Nil!66469 (_2!37006 lt!2464006))))))

(declare-fun b!6896682 () Bool)

(declare-fun res!2811894 () Bool)

(assert (=> b!6896682 (=> (not res!2811894) (not e!4153985))))

(assert (=> b!6896682 (= res!2811894 (matchR!8981 r2!6280 (_1!37006 (get!23205 lt!2464108))))))

(declare-fun b!6896683 () Bool)

(assert (=> b!6896683 (= e!4153987 (matchR!8981 r3!135 (_2!37006 lt!2464006)))))

(declare-fun b!6896684 () Bool)

(declare-fun res!2811890 () Bool)

(assert (=> b!6896684 (=> (not res!2811890) (not e!4153985))))

(assert (=> b!6896684 (= res!2811890 (matchR!8981 r3!135 (_2!37006 (get!23205 lt!2464108))))))

(declare-fun b!6896685 () Bool)

(assert (=> b!6896685 (= e!4153984 (not (isDefined!13318 lt!2464108)))))

(assert (= (and d!2161586 res!2811892) b!6896683))

(assert (= (and d!2161586 c!1281876) b!6896681))

(assert (= (and d!2161586 (not c!1281876)) b!6896680))

(assert (= (and b!6896680 c!1281875) b!6896677))

(assert (= (and b!6896680 (not c!1281875)) b!6896678))

(assert (= (and d!2161586 res!2811893) b!6896682))

(assert (= (and b!6896682 res!2811894) b!6896684))

(assert (= (and b!6896684 res!2811890) b!6896679))

(assert (= (and d!2161586 (not res!2811891)) b!6896685))

(declare-fun m!7615564 () Bool)

(assert (=> b!6896683 m!7615564))

(declare-fun m!7615566 () Bool)

(assert (=> b!6896679 m!7615566))

(declare-fun m!7615568 () Bool)

(assert (=> b!6896679 m!7615568))

(declare-fun m!7615570 () Bool)

(assert (=> b!6896678 m!7615570))

(assert (=> b!6896678 m!7615570))

(declare-fun m!7615572 () Bool)

(assert (=> b!6896678 m!7615572))

(declare-fun m!7615574 () Bool)

(assert (=> b!6896678 m!7615574))

(assert (=> b!6896678 m!7615570))

(declare-fun m!7615576 () Bool)

(assert (=> b!6896678 m!7615576))

(declare-fun m!7615578 () Bool)

(assert (=> d!2161586 m!7615578))

(declare-fun m!7615580 () Bool)

(assert (=> d!2161586 m!7615580))

(assert (=> d!2161586 m!7615300))

(assert (=> b!6896684 m!7615566))

(declare-fun m!7615582 () Bool)

(assert (=> b!6896684 m!7615582))

(assert (=> b!6896682 m!7615566))

(declare-fun m!7615584 () Bool)

(assert (=> b!6896682 m!7615584))

(assert (=> b!6896685 m!7615578))

(assert (=> b!6896217 d!2161586))

(declare-fun d!2161592 () Bool)

(assert (=> d!2161592 (= (Exists!3844 lambda!391025) (choose!51352 lambda!391025))))

(declare-fun bs!1841013 () Bool)

(assert (= bs!1841013 d!2161592))

(declare-fun m!7615586 () Bool)

(assert (=> bs!1841013 m!7615586))

(assert (=> b!6896217 d!2161592))

(declare-fun d!2161594 () Bool)

(assert (=> d!2161594 (= (Exists!3844 lambda!391026) (choose!51352 lambda!391026))))

(declare-fun bs!1841014 () Bool)

(assert (= bs!1841014 d!2161594))

(declare-fun m!7615588 () Bool)

(assert (=> bs!1841014 m!7615588))

(assert (=> b!6896217 d!2161594))

(declare-fun bs!1841018 () Bool)

(declare-fun d!2161596 () Bool)

(assert (= bs!1841018 (and d!2161596 b!6896573)))

(declare-fun lambda!391079 () Int)

(assert (=> bs!1841018 (not (= lambda!391079 lambda!391071))))

(declare-fun bs!1841019 () Bool)

(assert (= bs!1841019 (and d!2161596 b!6896584)))

(assert (=> bs!1841019 (not (= lambda!391079 lambda!391075))))

(declare-fun bs!1841020 () Bool)

(assert (= bs!1841020 (and d!2161596 b!6896208)))

(assert (=> bs!1841020 (not (= lambda!391079 lambda!391024))))

(declare-fun bs!1841021 () Bool)

(assert (= bs!1841021 (and d!2161596 b!6896387)))

(assert (=> bs!1841021 (not (= lambda!391079 lambda!391048))))

(declare-fun bs!1841022 () Bool)

(assert (= bs!1841022 (and d!2161596 b!6896567)))

(assert (=> bs!1841022 (not (= lambda!391079 lambda!391070))))

(declare-fun bs!1841023 () Bool)

(assert (= bs!1841023 (and d!2161596 d!2161548)))

(assert (=> bs!1841023 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391079 lambda!391057))))

(declare-fun bs!1841024 () Bool)

(assert (= bs!1841024 (and d!2161596 b!6896381)))

(assert (=> bs!1841024 (not (= lambda!391079 lambda!391047))))

(declare-fun bs!1841025 () Bool)

(assert (= bs!1841025 (and d!2161596 b!6896578)))

(assert (=> bs!1841025 (not (= lambda!391079 lambda!391072))))

(declare-fun bs!1841026 () Bool)

(assert (= bs!1841026 (and d!2161596 b!6896217)))

(assert (=> bs!1841026 (= lambda!391079 lambda!391025)))

(declare-fun bs!1841027 () Bool)

(assert (= bs!1841027 (and d!2161596 d!2161552)))

(assert (=> bs!1841027 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391079 lambda!391064))))

(assert (=> bs!1841020 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391079 lambda!391023))))

(assert (=> bs!1841026 (not (= lambda!391079 lambda!391026))))

(assert (=> bs!1841027 (not (= lambda!391079 lambda!391065))))

(assert (=> d!2161596 true))

(assert (=> d!2161596 true))

(assert (=> d!2161596 true))

(assert (=> d!2161596 (= (isDefined!13318 (findConcatSeparation!3029 r2!6280 r3!135 Nil!66469 (_2!37006 lt!2464006) (_2!37006 lt!2464006))) (Exists!3844 lambda!391079))))

(declare-fun lt!2464112 () Unit!160392)

(assert (=> d!2161596 (= lt!2464112 (choose!51355 r2!6280 r3!135 (_2!37006 lt!2464006)))))

(assert (=> d!2161596 (validRegex!8544 r2!6280)))

(assert (=> d!2161596 (= (lemmaFindConcatSeparationEquivalentToExists!2791 r2!6280 r3!135 (_2!37006 lt!2464006)) lt!2464112)))

(declare-fun bs!1841029 () Bool)

(assert (= bs!1841029 d!2161596))

(assert (=> bs!1841029 m!7615282))

(assert (=> bs!1841029 m!7615286))

(declare-fun m!7615590 () Bool)

(assert (=> bs!1841029 m!7615590))

(assert (=> bs!1841029 m!7615282))

(declare-fun m!7615592 () Bool)

(assert (=> bs!1841029 m!7615592))

(assert (=> bs!1841029 m!7615300))

(assert (=> b!6896217 d!2161596))

(declare-fun bs!1841030 () Bool)

(declare-fun b!6896688 () Bool)

(assert (= bs!1841030 (and b!6896688 d!2161596)))

(declare-fun lambda!391081 () Int)

(assert (=> bs!1841030 (not (= lambda!391081 lambda!391079))))

(declare-fun bs!1841032 () Bool)

(assert (= bs!1841032 (and b!6896688 b!6896573)))

(assert (=> bs!1841032 (not (= lambda!391081 lambda!391071))))

(declare-fun bs!1841034 () Bool)

(assert (= bs!1841034 (and b!6896688 b!6896584)))

(assert (=> bs!1841034 (not (= lambda!391081 lambda!391075))))

(declare-fun bs!1841036 () Bool)

(assert (= bs!1841036 (and b!6896688 b!6896208)))

(assert (=> bs!1841036 (not (= lambda!391081 lambda!391024))))

(declare-fun bs!1841037 () Bool)

(assert (= bs!1841037 (and b!6896688 b!6896387)))

(assert (=> bs!1841037 (not (= lambda!391081 lambda!391048))))

(declare-fun bs!1841039 () Bool)

(assert (= bs!1841039 (and b!6896688 b!6896567)))

(assert (=> bs!1841039 (= (and (= (_2!37006 lt!2464006) s!14361) (= (reg!17165 lt!2464000) (reg!17165 lt!2464010)) (= lt!2464000 lt!2464010)) (= lambda!391081 lambda!391070))))

(declare-fun bs!1841041 () Bool)

(assert (= bs!1841041 (and b!6896688 d!2161548)))

(assert (=> bs!1841041 (not (= lambda!391081 lambda!391057))))

(declare-fun bs!1841042 () Bool)

(assert (= bs!1841042 (and b!6896688 b!6896381)))

(assert (=> bs!1841042 (= (and (= (_2!37006 lt!2464006) (_1!37006 lt!2464006)) (= (reg!17165 lt!2464000) (reg!17165 r1!6342)) (= lt!2464000 r1!6342)) (= lambda!391081 lambda!391047))))

(declare-fun bs!1841044 () Bool)

(assert (= bs!1841044 (and b!6896688 b!6896578)))

(assert (=> bs!1841044 (= (and (= (_2!37006 lt!2464006) s!14361) (= (reg!17165 lt!2464000) (reg!17165 lt!2464003)) (= lt!2464000 lt!2464003)) (= lambda!391081 lambda!391072))))

(declare-fun bs!1841046 () Bool)

(assert (= bs!1841046 (and b!6896688 b!6896217)))

(assert (=> bs!1841046 (not (= lambda!391081 lambda!391025))))

(declare-fun bs!1841048 () Bool)

(assert (= bs!1841048 (and b!6896688 d!2161552)))

(assert (=> bs!1841048 (not (= lambda!391081 lambda!391064))))

(assert (=> bs!1841036 (not (= lambda!391081 lambda!391023))))

(assert (=> bs!1841046 (not (= lambda!391081 lambda!391026))))

(assert (=> bs!1841048 (not (= lambda!391081 lambda!391065))))

(assert (=> b!6896688 true))

(assert (=> b!6896688 true))

(declare-fun bs!1841050 () Bool)

(declare-fun b!6896694 () Bool)

(assert (= bs!1841050 (and b!6896694 d!2161596)))

(declare-fun lambda!391084 () Int)

(assert (=> bs!1841050 (not (= lambda!391084 lambda!391079))))

(declare-fun bs!1841053 () Bool)

(assert (= bs!1841053 (and b!6896694 b!6896573)))

(assert (=> bs!1841053 (= (and (= (_2!37006 lt!2464006) s!14361) (= (regOne!34184 lt!2464000) (regOne!34184 lt!2464010)) (= (regTwo!34184 lt!2464000) (regTwo!34184 lt!2464010))) (= lambda!391084 lambda!391071))))

(declare-fun bs!1841054 () Bool)

(assert (= bs!1841054 (and b!6896694 b!6896584)))

(assert (=> bs!1841054 (= (and (= (_2!37006 lt!2464006) s!14361) (= (regOne!34184 lt!2464000) (regOne!34184 lt!2464003)) (= (regTwo!34184 lt!2464000) (regTwo!34184 lt!2464003))) (= lambda!391084 lambda!391075))))

(declare-fun bs!1841056 () Bool)

(assert (= bs!1841056 (and b!6896694 b!6896688)))

(assert (=> bs!1841056 (not (= lambda!391084 lambda!391081))))

(declare-fun bs!1841057 () Bool)

(assert (= bs!1841057 (and b!6896694 b!6896208)))

(assert (=> bs!1841057 (= (and (= (_2!37006 lt!2464006) s!14361) (= (regOne!34184 lt!2464000) r1!6342) (= (regTwo!34184 lt!2464000) lt!2464000)) (= lambda!391084 lambda!391024))))

(declare-fun bs!1841059 () Bool)

(assert (= bs!1841059 (and b!6896694 b!6896387)))

(assert (=> bs!1841059 (= (and (= (_2!37006 lt!2464006) (_1!37006 lt!2464006)) (= (regOne!34184 lt!2464000) (regOne!34184 r1!6342)) (= (regTwo!34184 lt!2464000) (regTwo!34184 r1!6342))) (= lambda!391084 lambda!391048))))

(declare-fun bs!1841061 () Bool)

(assert (= bs!1841061 (and b!6896694 b!6896567)))

(assert (=> bs!1841061 (not (= lambda!391084 lambda!391070))))

(declare-fun bs!1841063 () Bool)

(assert (= bs!1841063 (and b!6896694 d!2161548)))

(assert (=> bs!1841063 (not (= lambda!391084 lambda!391057))))

(declare-fun bs!1841065 () Bool)

(assert (= bs!1841065 (and b!6896694 b!6896381)))

(assert (=> bs!1841065 (not (= lambda!391084 lambda!391047))))

(declare-fun bs!1841067 () Bool)

(assert (= bs!1841067 (and b!6896694 b!6896578)))

(assert (=> bs!1841067 (not (= lambda!391084 lambda!391072))))

(declare-fun bs!1841068 () Bool)

(assert (= bs!1841068 (and b!6896694 b!6896217)))

(assert (=> bs!1841068 (not (= lambda!391084 lambda!391025))))

(declare-fun bs!1841069 () Bool)

(assert (= bs!1841069 (and b!6896694 d!2161552)))

(assert (=> bs!1841069 (not (= lambda!391084 lambda!391064))))

(assert (=> bs!1841057 (not (= lambda!391084 lambda!391023))))

(assert (=> bs!1841068 (= (and (= (regOne!34184 lt!2464000) r2!6280) (= (regTwo!34184 lt!2464000) r3!135)) (= lambda!391084 lambda!391026))))

(assert (=> bs!1841069 (= (and (= (_2!37006 lt!2464006) s!14361) (= (regOne!34184 lt!2464000) r1!6342) (= (regTwo!34184 lt!2464000) lt!2464000)) (= lambda!391084 lambda!391065))))

(assert (=> b!6896694 true))

(assert (=> b!6896694 true))

(declare-fun d!2161598 () Bool)

(declare-fun c!1281880 () Bool)

(assert (=> d!2161598 (= c!1281880 (is-EmptyExpr!16836 lt!2464000))))

(declare-fun e!4153990 () Bool)

(assert (=> d!2161598 (= (matchRSpec!3899 lt!2464000 (_2!37006 lt!2464006)) e!4153990)))

(declare-fun b!6896686 () Bool)

(declare-fun e!4153989 () Bool)

(assert (=> b!6896686 (= e!4153989 (matchRSpec!3899 (regTwo!34185 lt!2464000) (_2!37006 lt!2464006)))))

(declare-fun bm!627412 () Bool)

(declare-fun call!627418 () Bool)

(assert (=> bm!627412 (= call!627418 (isEmpty!38716 (_2!37006 lt!2464006)))))

(declare-fun b!6896687 () Bool)

(assert (=> b!6896687 (= e!4153990 call!627418)))

(declare-fun e!4153992 () Bool)

(declare-fun call!627417 () Bool)

(assert (=> b!6896688 (= e!4153992 call!627417)))

(declare-fun b!6896689 () Bool)

(declare-fun e!4153991 () Bool)

(assert (=> b!6896689 (= e!4153991 e!4153989)))

(declare-fun res!2811895 () Bool)

(assert (=> b!6896689 (= res!2811895 (matchRSpec!3899 (regOne!34185 lt!2464000) (_2!37006 lt!2464006)))))

(assert (=> b!6896689 (=> res!2811895 e!4153989)))

(declare-fun b!6896690 () Bool)

(declare-fun res!2811896 () Bool)

(assert (=> b!6896690 (=> res!2811896 e!4153992)))

(assert (=> b!6896690 (= res!2811896 call!627418)))

(declare-fun e!4153988 () Bool)

(assert (=> b!6896690 (= e!4153988 e!4153992)))

(declare-fun b!6896691 () Bool)

(declare-fun c!1281878 () Bool)

(assert (=> b!6896691 (= c!1281878 (is-ElementMatch!16836 lt!2464000))))

(declare-fun e!4153994 () Bool)

(declare-fun e!4153993 () Bool)

(assert (=> b!6896691 (= e!4153994 e!4153993)))

(declare-fun b!6896692 () Bool)

(assert (=> b!6896692 (= e!4153991 e!4153988)))

(declare-fun c!1281879 () Bool)

(assert (=> b!6896692 (= c!1281879 (is-Star!16836 lt!2464000))))

(declare-fun b!6896693 () Bool)

(assert (=> b!6896693 (= e!4153993 (= (_2!37006 lt!2464006) (Cons!66469 (c!1281792 lt!2464000) Nil!66469)))))

(assert (=> b!6896694 (= e!4153988 call!627417)))

(declare-fun bm!627413 () Bool)

(assert (=> bm!627413 (= call!627417 (Exists!3844 (ite c!1281879 lambda!391081 lambda!391084)))))

(declare-fun b!6896695 () Bool)

(declare-fun c!1281877 () Bool)

(assert (=> b!6896695 (= c!1281877 (is-Union!16836 lt!2464000))))

(assert (=> b!6896695 (= e!4153993 e!4153991)))

(declare-fun b!6896696 () Bool)

(assert (=> b!6896696 (= e!4153990 e!4153994)))

(declare-fun res!2811897 () Bool)

(assert (=> b!6896696 (= res!2811897 (not (is-EmptyLang!16836 lt!2464000)))))

(assert (=> b!6896696 (=> (not res!2811897) (not e!4153994))))

(assert (= (and d!2161598 c!1281880) b!6896687))

(assert (= (and d!2161598 (not c!1281880)) b!6896696))

(assert (= (and b!6896696 res!2811897) b!6896691))

(assert (= (and b!6896691 c!1281878) b!6896693))

(assert (= (and b!6896691 (not c!1281878)) b!6896695))

(assert (= (and b!6896695 c!1281877) b!6896689))

(assert (= (and b!6896695 (not c!1281877)) b!6896692))

(assert (= (and b!6896689 (not res!2811895)) b!6896686))

(assert (= (and b!6896692 c!1281879) b!6896690))

(assert (= (and b!6896692 (not c!1281879)) b!6896694))

(assert (= (and b!6896690 (not res!2811896)) b!6896688))

(assert (= (or b!6896688 b!6896694) bm!627413))

(assert (= (or b!6896687 b!6896690) bm!627412))

(declare-fun m!7615606 () Bool)

(assert (=> b!6896686 m!7615606))

(declare-fun m!7615608 () Bool)

(assert (=> bm!627412 m!7615608))

(declare-fun m!7615610 () Bool)

(assert (=> b!6896689 m!7615610))

(declare-fun m!7615612 () Bool)

(assert (=> bm!627413 m!7615612))

(assert (=> b!6896217 d!2161598))

(declare-fun d!2161604 () Bool)

(declare-fun isEmpty!38718 (Option!16615) Bool)

(assert (=> d!2161604 (= (isDefined!13318 (findConcatSeparation!3029 r2!6280 r3!135 Nil!66469 (_2!37006 lt!2464006) (_2!37006 lt!2464006))) (not (isEmpty!38718 (findConcatSeparation!3029 r2!6280 r3!135 Nil!66469 (_2!37006 lt!2464006) (_2!37006 lt!2464006)))))))

(declare-fun bs!1841071 () Bool)

(assert (= bs!1841071 d!2161604))

(assert (=> bs!1841071 m!7615282))

(declare-fun m!7615616 () Bool)

(assert (=> bs!1841071 m!7615616))

(assert (=> b!6896217 d!2161604))

(declare-fun bs!1841075 () Bool)

(declare-fun d!2161608 () Bool)

(assert (= bs!1841075 (and d!2161608 d!2161596)))

(declare-fun lambda!391085 () Int)

(assert (=> bs!1841075 (= lambda!391085 lambda!391079)))

(declare-fun bs!1841076 () Bool)

(assert (= bs!1841076 (and d!2161608 b!6896573)))

(assert (=> bs!1841076 (not (= lambda!391085 lambda!391071))))

(declare-fun bs!1841077 () Bool)

(assert (= bs!1841077 (and d!2161608 b!6896694)))

(assert (=> bs!1841077 (not (= lambda!391085 lambda!391084))))

(declare-fun bs!1841078 () Bool)

(assert (= bs!1841078 (and d!2161608 b!6896584)))

(assert (=> bs!1841078 (not (= lambda!391085 lambda!391075))))

(declare-fun bs!1841079 () Bool)

(assert (= bs!1841079 (and d!2161608 b!6896688)))

(assert (=> bs!1841079 (not (= lambda!391085 lambda!391081))))

(declare-fun bs!1841080 () Bool)

(assert (= bs!1841080 (and d!2161608 b!6896208)))

(assert (=> bs!1841080 (not (= lambda!391085 lambda!391024))))

(declare-fun bs!1841081 () Bool)

(assert (= bs!1841081 (and d!2161608 b!6896387)))

(assert (=> bs!1841081 (not (= lambda!391085 lambda!391048))))

(declare-fun bs!1841082 () Bool)

(assert (= bs!1841082 (and d!2161608 b!6896567)))

(assert (=> bs!1841082 (not (= lambda!391085 lambda!391070))))

(declare-fun bs!1841083 () Bool)

(assert (= bs!1841083 (and d!2161608 d!2161548)))

(assert (=> bs!1841083 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391085 lambda!391057))))

(declare-fun bs!1841084 () Bool)

(assert (= bs!1841084 (and d!2161608 b!6896381)))

(assert (=> bs!1841084 (not (= lambda!391085 lambda!391047))))

(declare-fun bs!1841085 () Bool)

(assert (= bs!1841085 (and d!2161608 b!6896578)))

(assert (=> bs!1841085 (not (= lambda!391085 lambda!391072))))

(declare-fun bs!1841086 () Bool)

(assert (= bs!1841086 (and d!2161608 b!6896217)))

(assert (=> bs!1841086 (= lambda!391085 lambda!391025)))

(declare-fun bs!1841087 () Bool)

(assert (= bs!1841087 (and d!2161608 d!2161552)))

(assert (=> bs!1841087 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391085 lambda!391064))))

(assert (=> bs!1841080 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391085 lambda!391023))))

(assert (=> bs!1841086 (not (= lambda!391085 lambda!391026))))

(assert (=> bs!1841087 (not (= lambda!391085 lambda!391065))))

(assert (=> d!2161608 true))

(assert (=> d!2161608 true))

(assert (=> d!2161608 true))

(declare-fun lambda!391086 () Int)

(assert (=> bs!1841075 (not (= lambda!391086 lambda!391079))))

(assert (=> bs!1841076 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 (regOne!34184 lt!2464010)) (= r3!135 (regTwo!34184 lt!2464010))) (= lambda!391086 lambda!391071))))

(assert (=> bs!1841077 (= (and (= r2!6280 (regOne!34184 lt!2464000)) (= r3!135 (regTwo!34184 lt!2464000))) (= lambda!391086 lambda!391084))))

(assert (=> bs!1841078 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 (regOne!34184 lt!2464003)) (= r3!135 (regTwo!34184 lt!2464003))) (= lambda!391086 lambda!391075))))

(assert (=> bs!1841079 (not (= lambda!391086 lambda!391081))))

(assert (=> bs!1841080 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391086 lambda!391024))))

(assert (=> bs!1841081 (= (and (= (_2!37006 lt!2464006) (_1!37006 lt!2464006)) (= r2!6280 (regOne!34184 r1!6342)) (= r3!135 (regTwo!34184 r1!6342))) (= lambda!391086 lambda!391048))))

(assert (=> bs!1841082 (not (= lambda!391086 lambda!391070))))

(assert (=> bs!1841083 (not (= lambda!391086 lambda!391057))))

(assert (=> bs!1841084 (not (= lambda!391086 lambda!391047))))

(assert (=> bs!1841085 (not (= lambda!391086 lambda!391072))))

(declare-fun bs!1841089 () Bool)

(assert (= bs!1841089 d!2161608))

(assert (=> bs!1841089 (not (= lambda!391086 lambda!391085))))

(assert (=> bs!1841086 (not (= lambda!391086 lambda!391025))))

(assert (=> bs!1841087 (not (= lambda!391086 lambda!391064))))

(assert (=> bs!1841080 (not (= lambda!391086 lambda!391023))))

(assert (=> bs!1841086 (= lambda!391086 lambda!391026)))

(assert (=> bs!1841087 (= (and (= (_2!37006 lt!2464006) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464000)) (= lambda!391086 lambda!391065))))

(assert (=> d!2161608 true))

(assert (=> d!2161608 true))

(assert (=> d!2161608 true))

(assert (=> d!2161608 (= (Exists!3844 lambda!391085) (Exists!3844 lambda!391086))))

(declare-fun lt!2464114 () Unit!160392)

(assert (=> d!2161608 (= lt!2464114 (choose!51356 r2!6280 r3!135 (_2!37006 lt!2464006)))))

(assert (=> d!2161608 (validRegex!8544 r2!6280)))

(assert (=> d!2161608 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2317 r2!6280 r3!135 (_2!37006 lt!2464006)) lt!2464114)))

(declare-fun m!7615662 () Bool)

(assert (=> bs!1841089 m!7615662))

(declare-fun m!7615664 () Bool)

(assert (=> bs!1841089 m!7615664))

(declare-fun m!7615666 () Bool)

(assert (=> bs!1841089 m!7615666))

(assert (=> bs!1841089 m!7615300))

(assert (=> b!6896217 d!2161608))

(declare-fun d!2161624 () Bool)

(assert (=> d!2161624 (= (isDefined!13318 lt!2464011) (not (isEmpty!38718 lt!2464011)))))

(declare-fun bs!1841095 () Bool)

(assert (= bs!1841095 d!2161624))

(declare-fun m!7615668 () Bool)

(assert (=> bs!1841095 m!7615668))

(assert (=> b!6896221 d!2161624))

(declare-fun b!6896746 () Bool)

(declare-fun e!4154028 () Option!16615)

(assert (=> b!6896746 (= e!4154028 None!16614)))

(declare-fun b!6896747 () Bool)

(declare-fun lt!2464121 () Unit!160392)

(declare-fun lt!2464120 () Unit!160392)

(assert (=> b!6896747 (= lt!2464121 lt!2464120)))

(assert (=> b!6896747 (= (++!14896 (++!14896 Nil!66469 (Cons!66469 (h!72917 s!14361) Nil!66469)) (t!380336 s!14361)) s!14361)))

(assert (=> b!6896747 (= lt!2464120 (lemmaMoveElementToOtherListKeepsConcatEq!2789 Nil!66469 (h!72917 s!14361) (t!380336 s!14361) s!14361))))

(assert (=> b!6896747 (= e!4154028 (findConcatSeparation!3029 r1!6342 lt!2464000 (++!14896 Nil!66469 (Cons!66469 (h!72917 s!14361) Nil!66469)) (t!380336 s!14361) s!14361))))

(declare-fun b!6896748 () Bool)

(declare-fun e!4154030 () Bool)

(declare-fun lt!2464119 () Option!16615)

(assert (=> b!6896748 (= e!4154030 (= (++!14896 (_1!37006 (get!23205 lt!2464119)) (_2!37006 (get!23205 lt!2464119))) s!14361))))

(declare-fun d!2161626 () Bool)

(declare-fun e!4154029 () Bool)

(assert (=> d!2161626 e!4154029))

(declare-fun res!2811920 () Bool)

(assert (=> d!2161626 (=> res!2811920 e!4154029)))

(assert (=> d!2161626 (= res!2811920 e!4154030)))

(declare-fun res!2811922 () Bool)

(assert (=> d!2161626 (=> (not res!2811922) (not e!4154030))))

(assert (=> d!2161626 (= res!2811922 (isDefined!13318 lt!2464119))))

(declare-fun e!4154031 () Option!16615)

(assert (=> d!2161626 (= lt!2464119 e!4154031)))

(declare-fun c!1281896 () Bool)

(declare-fun e!4154032 () Bool)

(assert (=> d!2161626 (= c!1281896 e!4154032)))

(declare-fun res!2811921 () Bool)

(assert (=> d!2161626 (=> (not res!2811921) (not e!4154032))))

(assert (=> d!2161626 (= res!2811921 (matchR!8981 r1!6342 Nil!66469))))

(assert (=> d!2161626 (validRegex!8544 r1!6342)))

(assert (=> d!2161626 (= (findConcatSeparation!3029 r1!6342 lt!2464000 Nil!66469 s!14361 s!14361) lt!2464119)))

(declare-fun b!6896749 () Bool)

(assert (=> b!6896749 (= e!4154031 e!4154028)))

(declare-fun c!1281895 () Bool)

(assert (=> b!6896749 (= c!1281895 (is-Nil!66469 s!14361))))

(declare-fun b!6896750 () Bool)

(assert (=> b!6896750 (= e!4154031 (Some!16614 (tuple2!67407 Nil!66469 s!14361)))))

(declare-fun b!6896751 () Bool)

(declare-fun res!2811923 () Bool)

(assert (=> b!6896751 (=> (not res!2811923) (not e!4154030))))

(assert (=> b!6896751 (= res!2811923 (matchR!8981 r1!6342 (_1!37006 (get!23205 lt!2464119))))))

(declare-fun b!6896752 () Bool)

(assert (=> b!6896752 (= e!4154032 (matchR!8981 lt!2464000 s!14361))))

(declare-fun b!6896753 () Bool)

(declare-fun res!2811919 () Bool)

(assert (=> b!6896753 (=> (not res!2811919) (not e!4154030))))

(assert (=> b!6896753 (= res!2811919 (matchR!8981 lt!2464000 (_2!37006 (get!23205 lt!2464119))))))

(declare-fun b!6896754 () Bool)

(assert (=> b!6896754 (= e!4154029 (not (isDefined!13318 lt!2464119)))))

(assert (= (and d!2161626 res!2811921) b!6896752))

(assert (= (and d!2161626 c!1281896) b!6896750))

(assert (= (and d!2161626 (not c!1281896)) b!6896749))

(assert (= (and b!6896749 c!1281895) b!6896746))

(assert (= (and b!6896749 (not c!1281895)) b!6896747))

(assert (= (and d!2161626 res!2811922) b!6896751))

(assert (= (and b!6896751 res!2811923) b!6896753))

(assert (= (and b!6896753 res!2811919) b!6896748))

(assert (= (and d!2161626 (not res!2811920)) b!6896754))

(declare-fun m!7615670 () Bool)

(assert (=> b!6896752 m!7615670))

(declare-fun m!7615672 () Bool)

(assert (=> b!6896748 m!7615672))

(declare-fun m!7615674 () Bool)

(assert (=> b!6896748 m!7615674))

(declare-fun m!7615676 () Bool)

(assert (=> b!6896747 m!7615676))

(assert (=> b!6896747 m!7615676))

(declare-fun m!7615678 () Bool)

(assert (=> b!6896747 m!7615678))

(declare-fun m!7615680 () Bool)

(assert (=> b!6896747 m!7615680))

(assert (=> b!6896747 m!7615676))

(declare-fun m!7615682 () Bool)

(assert (=> b!6896747 m!7615682))

(declare-fun m!7615684 () Bool)

(assert (=> d!2161626 m!7615684))

(declare-fun m!7615686 () Bool)

(assert (=> d!2161626 m!7615686))

(assert (=> d!2161626 m!7615298))

(assert (=> b!6896753 m!7615672))

(declare-fun m!7615688 () Bool)

(assert (=> b!6896753 m!7615688))

(assert (=> b!6896751 m!7615672))

(declare-fun m!7615690 () Bool)

(assert (=> b!6896751 m!7615690))

(assert (=> b!6896754 m!7615684))

(assert (=> b!6896221 d!2161626))

(declare-fun b!6896755 () Bool)

(declare-fun res!2811924 () Bool)

(declare-fun e!4154035 () Bool)

(assert (=> b!6896755 (=> res!2811924 e!4154035)))

(assert (=> b!6896755 (= res!2811924 (not (is-Concat!25681 r2!6280)))))

(declare-fun e!4154036 () Bool)

(assert (=> b!6896755 (= e!4154036 e!4154035)))

(declare-fun b!6896756 () Bool)

(declare-fun e!4154034 () Bool)

(declare-fun call!627431 () Bool)

(assert (=> b!6896756 (= e!4154034 call!627431)))

(declare-fun b!6896757 () Bool)

(declare-fun e!4154037 () Bool)

(declare-fun call!627429 () Bool)

(assert (=> b!6896757 (= e!4154037 call!627429)))

(declare-fun b!6896758 () Bool)

(declare-fun e!4154039 () Bool)

(assert (=> b!6896758 (= e!4154039 e!4154036)))

(declare-fun c!1281897 () Bool)

(assert (=> b!6896758 (= c!1281897 (is-Union!16836 r2!6280))))

(declare-fun b!6896759 () Bool)

(declare-fun e!4154038 () Bool)

(declare-fun call!627430 () Bool)

(assert (=> b!6896759 (= e!4154038 call!627430)))

(declare-fun b!6896760 () Bool)

(assert (=> b!6896760 (= e!4154039 e!4154034)))

(declare-fun res!2811926 () Bool)

(assert (=> b!6896760 (= res!2811926 (not (nullable!6702 (reg!17165 r2!6280))))))

(assert (=> b!6896760 (=> (not res!2811926) (not e!4154034))))

(declare-fun b!6896761 () Bool)

(assert (=> b!6896761 (= e!4154035 e!4154038)))

(declare-fun res!2811928 () Bool)

(assert (=> b!6896761 (=> (not res!2811928) (not e!4154038))))

(assert (=> b!6896761 (= res!2811928 call!627429)))

(declare-fun bm!627424 () Bool)

(assert (=> bm!627424 (= call!627430 (validRegex!8544 (ite c!1281897 (regOne!34185 r2!6280) (regTwo!34184 r2!6280))))))

(declare-fun bm!627426 () Bool)

(declare-fun c!1281898 () Bool)

(assert (=> bm!627426 (= call!627431 (validRegex!8544 (ite c!1281898 (reg!17165 r2!6280) (ite c!1281897 (regTwo!34185 r2!6280) (regOne!34184 r2!6280)))))))

(declare-fun b!6896762 () Bool)

(declare-fun e!4154033 () Bool)

(assert (=> b!6896762 (= e!4154033 e!4154039)))

(assert (=> b!6896762 (= c!1281898 (is-Star!16836 r2!6280))))

(declare-fun b!6896763 () Bool)

(declare-fun res!2811927 () Bool)

(assert (=> b!6896763 (=> (not res!2811927) (not e!4154037))))

(assert (=> b!6896763 (= res!2811927 call!627430)))

(assert (=> b!6896763 (= e!4154036 e!4154037)))

(declare-fun bm!627425 () Bool)

(assert (=> bm!627425 (= call!627429 call!627431)))

(declare-fun d!2161628 () Bool)

(declare-fun res!2811925 () Bool)

(assert (=> d!2161628 (=> res!2811925 e!4154033)))

(assert (=> d!2161628 (= res!2811925 (is-ElementMatch!16836 r2!6280))))

(assert (=> d!2161628 (= (validRegex!8544 r2!6280) e!4154033)))

(assert (= (and d!2161628 (not res!2811925)) b!6896762))

(assert (= (and b!6896762 c!1281898) b!6896760))

(assert (= (and b!6896762 (not c!1281898)) b!6896758))

(assert (= (and b!6896760 res!2811926) b!6896756))

(assert (= (and b!6896758 c!1281897) b!6896763))

(assert (= (and b!6896758 (not c!1281897)) b!6896755))

(assert (= (and b!6896763 res!2811927) b!6896757))

(assert (= (and b!6896755 (not res!2811924)) b!6896761))

(assert (= (and b!6896761 res!2811928) b!6896759))

(assert (= (or b!6896763 b!6896759) bm!627424))

(assert (= (or b!6896757 b!6896761) bm!627425))

(assert (= (or b!6896756 bm!627425) bm!627426))

(declare-fun m!7615692 () Bool)

(assert (=> b!6896760 m!7615692))

(declare-fun m!7615694 () Bool)

(assert (=> bm!627424 m!7615694))

(declare-fun m!7615696 () Bool)

(assert (=> bm!627426 m!7615696))

(assert (=> b!6896205 d!2161628))

(declare-fun b!6896764 () Bool)

(declare-fun e!4154046 () Bool)

(assert (=> b!6896764 (= e!4154046 (= (head!13833 (_2!37006 lt!2464006)) (c!1281792 lt!2464000)))))

(declare-fun b!6896765 () Bool)

(declare-fun res!2811936 () Bool)

(assert (=> b!6896765 (=> (not res!2811936) (not e!4154046))))

(assert (=> b!6896765 (= res!2811936 (isEmpty!38716 (tail!12885 (_2!37006 lt!2464006))))))

(declare-fun b!6896766 () Bool)

(declare-fun e!4154041 () Bool)

(assert (=> b!6896766 (= e!4154041 (matchR!8981 (derivativeStep!5380 lt!2464000 (head!13833 (_2!37006 lt!2464006))) (tail!12885 (_2!37006 lt!2464006))))))

(declare-fun b!6896767 () Bool)

(assert (=> b!6896767 (= e!4154041 (nullable!6702 lt!2464000))))

(declare-fun b!6896768 () Bool)

(declare-fun e!4154043 () Bool)

(assert (=> b!6896768 (= e!4154043 (not (= (head!13833 (_2!37006 lt!2464006)) (c!1281792 lt!2464000))))))

(declare-fun b!6896769 () Bool)

(declare-fun e!4154040 () Bool)

(declare-fun lt!2464122 () Bool)

(assert (=> b!6896769 (= e!4154040 (not lt!2464122))))

(declare-fun d!2161630 () Bool)

(declare-fun e!4154042 () Bool)

(assert (=> d!2161630 e!4154042))

(declare-fun c!1281901 () Bool)

(assert (=> d!2161630 (= c!1281901 (is-EmptyExpr!16836 lt!2464000))))

(assert (=> d!2161630 (= lt!2464122 e!4154041)))

(declare-fun c!1281900 () Bool)

(assert (=> d!2161630 (= c!1281900 (isEmpty!38716 (_2!37006 lt!2464006)))))

(assert (=> d!2161630 (validRegex!8544 lt!2464000)))

(assert (=> d!2161630 (= (matchR!8981 lt!2464000 (_2!37006 lt!2464006)) lt!2464122)))

(declare-fun b!6896770 () Bool)

(declare-fun e!4154045 () Bool)

(assert (=> b!6896770 (= e!4154045 e!4154043)))

(declare-fun res!2811931 () Bool)

(assert (=> b!6896770 (=> res!2811931 e!4154043)))

(declare-fun call!627432 () Bool)

(assert (=> b!6896770 (= res!2811931 call!627432)))

(declare-fun b!6896771 () Bool)

(declare-fun res!2811933 () Bool)

(declare-fun e!4154044 () Bool)

(assert (=> b!6896771 (=> res!2811933 e!4154044)))

(assert (=> b!6896771 (= res!2811933 (not (is-ElementMatch!16836 lt!2464000)))))

(assert (=> b!6896771 (= e!4154040 e!4154044)))

(declare-fun b!6896772 () Bool)

(assert (=> b!6896772 (= e!4154042 e!4154040)))

(declare-fun c!1281899 () Bool)

(assert (=> b!6896772 (= c!1281899 (is-EmptyLang!16836 lt!2464000))))

(declare-fun b!6896773 () Bool)

(declare-fun res!2811929 () Bool)

(assert (=> b!6896773 (=> (not res!2811929) (not e!4154046))))

(assert (=> b!6896773 (= res!2811929 (not call!627432))))

(declare-fun bm!627427 () Bool)

(assert (=> bm!627427 (= call!627432 (isEmpty!38716 (_2!37006 lt!2464006)))))

(declare-fun b!6896774 () Bool)

(assert (=> b!6896774 (= e!4154044 e!4154045)))

(declare-fun res!2811930 () Bool)

(assert (=> b!6896774 (=> (not res!2811930) (not e!4154045))))

(assert (=> b!6896774 (= res!2811930 (not lt!2464122))))

(declare-fun b!6896775 () Bool)

(declare-fun res!2811935 () Bool)

(assert (=> b!6896775 (=> res!2811935 e!4154043)))

(assert (=> b!6896775 (= res!2811935 (not (isEmpty!38716 (tail!12885 (_2!37006 lt!2464006)))))))

(declare-fun b!6896776 () Bool)

(declare-fun res!2811934 () Bool)

(assert (=> b!6896776 (=> res!2811934 e!4154044)))

(assert (=> b!6896776 (= res!2811934 e!4154046)))

(declare-fun res!2811932 () Bool)

(assert (=> b!6896776 (=> (not res!2811932) (not e!4154046))))

(assert (=> b!6896776 (= res!2811932 lt!2464122)))

(declare-fun b!6896777 () Bool)

(assert (=> b!6896777 (= e!4154042 (= lt!2464122 call!627432))))

(assert (= (and d!2161630 c!1281900) b!6896767))

(assert (= (and d!2161630 (not c!1281900)) b!6896766))

(assert (= (and d!2161630 c!1281901) b!6896777))

(assert (= (and d!2161630 (not c!1281901)) b!6896772))

(assert (= (and b!6896772 c!1281899) b!6896769))

(assert (= (and b!6896772 (not c!1281899)) b!6896771))

(assert (= (and b!6896771 (not res!2811933)) b!6896776))

(assert (= (and b!6896776 res!2811932) b!6896773))

(assert (= (and b!6896773 res!2811929) b!6896765))

(assert (= (and b!6896765 res!2811936) b!6896764))

(assert (= (and b!6896776 (not res!2811934)) b!6896774))

(assert (= (and b!6896774 res!2811930) b!6896770))

(assert (= (and b!6896770 (not res!2811931)) b!6896775))

(assert (= (and b!6896775 (not res!2811935)) b!6896768))

(assert (= (or b!6896777 b!6896773 b!6896770) bm!627427))

(declare-fun m!7615698 () Bool)

(assert (=> b!6896765 m!7615698))

(assert (=> b!6896765 m!7615698))

(declare-fun m!7615700 () Bool)

(assert (=> b!6896765 m!7615700))

(assert (=> bm!627427 m!7615608))

(assert (=> d!2161630 m!7615608))

(assert (=> d!2161630 m!7615536))

(declare-fun m!7615702 () Bool)

(assert (=> b!6896767 m!7615702))

(declare-fun m!7615704 () Bool)

(assert (=> b!6896766 m!7615704))

(assert (=> b!6896766 m!7615704))

(declare-fun m!7615706 () Bool)

(assert (=> b!6896766 m!7615706))

(assert (=> b!6896766 m!7615698))

(assert (=> b!6896766 m!7615706))

(assert (=> b!6896766 m!7615698))

(declare-fun m!7615708 () Bool)

(assert (=> b!6896766 m!7615708))

(assert (=> b!6896775 m!7615698))

(assert (=> b!6896775 m!7615698))

(assert (=> b!6896775 m!7615700))

(assert (=> b!6896764 m!7615704))

(assert (=> b!6896768 m!7615704))

(assert (=> b!6896220 d!2161630))

(declare-fun b!6896778 () Bool)

(declare-fun res!2811937 () Bool)

(declare-fun e!4154049 () Bool)

(assert (=> b!6896778 (=> res!2811937 e!4154049)))

(assert (=> b!6896778 (= res!2811937 (not (is-Concat!25681 r3!135)))))

(declare-fun e!4154050 () Bool)

(assert (=> b!6896778 (= e!4154050 e!4154049)))

(declare-fun b!6896779 () Bool)

(declare-fun e!4154048 () Bool)

(declare-fun call!627435 () Bool)

(assert (=> b!6896779 (= e!4154048 call!627435)))

(declare-fun b!6896780 () Bool)

(declare-fun e!4154051 () Bool)

(declare-fun call!627433 () Bool)

(assert (=> b!6896780 (= e!4154051 call!627433)))

(declare-fun b!6896781 () Bool)

(declare-fun e!4154053 () Bool)

(assert (=> b!6896781 (= e!4154053 e!4154050)))

(declare-fun c!1281902 () Bool)

(assert (=> b!6896781 (= c!1281902 (is-Union!16836 r3!135))))

(declare-fun b!6896782 () Bool)

(declare-fun e!4154052 () Bool)

(declare-fun call!627434 () Bool)

(assert (=> b!6896782 (= e!4154052 call!627434)))

(declare-fun b!6896783 () Bool)

(assert (=> b!6896783 (= e!4154053 e!4154048)))

(declare-fun res!2811939 () Bool)

(assert (=> b!6896783 (= res!2811939 (not (nullable!6702 (reg!17165 r3!135))))))

(assert (=> b!6896783 (=> (not res!2811939) (not e!4154048))))

(declare-fun b!6896784 () Bool)

(assert (=> b!6896784 (= e!4154049 e!4154052)))

(declare-fun res!2811941 () Bool)

(assert (=> b!6896784 (=> (not res!2811941) (not e!4154052))))

(assert (=> b!6896784 (= res!2811941 call!627433)))

(declare-fun bm!627428 () Bool)

(assert (=> bm!627428 (= call!627434 (validRegex!8544 (ite c!1281902 (regOne!34185 r3!135) (regTwo!34184 r3!135))))))

(declare-fun c!1281903 () Bool)

(declare-fun bm!627430 () Bool)

(assert (=> bm!627430 (= call!627435 (validRegex!8544 (ite c!1281903 (reg!17165 r3!135) (ite c!1281902 (regTwo!34185 r3!135) (regOne!34184 r3!135)))))))

(declare-fun b!6896785 () Bool)

(declare-fun e!4154047 () Bool)

(assert (=> b!6896785 (= e!4154047 e!4154053)))

(assert (=> b!6896785 (= c!1281903 (is-Star!16836 r3!135))))

(declare-fun b!6896786 () Bool)

(declare-fun res!2811940 () Bool)

(assert (=> b!6896786 (=> (not res!2811940) (not e!4154051))))

(assert (=> b!6896786 (= res!2811940 call!627434)))

(assert (=> b!6896786 (= e!4154050 e!4154051)))

(declare-fun bm!627429 () Bool)

(assert (=> bm!627429 (= call!627433 call!627435)))

(declare-fun d!2161632 () Bool)

(declare-fun res!2811938 () Bool)

(assert (=> d!2161632 (=> res!2811938 e!4154047)))

(assert (=> d!2161632 (= res!2811938 (is-ElementMatch!16836 r3!135))))

(assert (=> d!2161632 (= (validRegex!8544 r3!135) e!4154047)))

(assert (= (and d!2161632 (not res!2811938)) b!6896785))

(assert (= (and b!6896785 c!1281903) b!6896783))

(assert (= (and b!6896785 (not c!1281903)) b!6896781))

(assert (= (and b!6896783 res!2811939) b!6896779))

(assert (= (and b!6896781 c!1281902) b!6896786))

(assert (= (and b!6896781 (not c!1281902)) b!6896778))

(assert (= (and b!6896786 res!2811940) b!6896780))

(assert (= (and b!6896778 (not res!2811937)) b!6896784))

(assert (= (and b!6896784 res!2811941) b!6896782))

(assert (= (or b!6896786 b!6896782) bm!627428))

(assert (= (or b!6896780 b!6896784) bm!627429))

(assert (= (or b!6896779 bm!627429) bm!627430))

(declare-fun m!7615718 () Bool)

(assert (=> b!6896783 m!7615718))

(declare-fun m!7615720 () Bool)

(assert (=> bm!627428 m!7615720))

(declare-fun m!7615726 () Bool)

(assert (=> bm!627430 m!7615726))

(assert (=> b!6896204 d!2161632))

(declare-fun b!6896808 () Bool)

(declare-fun e!4154063 () Bool)

(assert (=> b!6896808 (= e!4154063 tp_is_empty!42897)))

(declare-fun b!6896809 () Bool)

(declare-fun tp!1898357 () Bool)

(declare-fun tp!1898354 () Bool)

(assert (=> b!6896809 (= e!4154063 (and tp!1898357 tp!1898354))))

(declare-fun b!6896811 () Bool)

(declare-fun tp!1898356 () Bool)

(declare-fun tp!1898355 () Bool)

(assert (=> b!6896811 (= e!4154063 (and tp!1898356 tp!1898355))))

(assert (=> b!6896219 (= tp!1898284 e!4154063)))

(declare-fun b!6896810 () Bool)

(declare-fun tp!1898358 () Bool)

(assert (=> b!6896810 (= e!4154063 tp!1898358)))

(assert (= (and b!6896219 (is-ElementMatch!16836 (regOne!34185 r1!6342))) b!6896808))

(assert (= (and b!6896219 (is-Concat!25681 (regOne!34185 r1!6342))) b!6896809))

(assert (= (and b!6896219 (is-Star!16836 (regOne!34185 r1!6342))) b!6896810))

(assert (= (and b!6896219 (is-Union!16836 (regOne!34185 r1!6342))) b!6896811))

(declare-fun b!6896812 () Bool)

(declare-fun e!4154064 () Bool)

(assert (=> b!6896812 (= e!4154064 tp_is_empty!42897)))

(declare-fun b!6896813 () Bool)

(declare-fun tp!1898362 () Bool)

(declare-fun tp!1898359 () Bool)

(assert (=> b!6896813 (= e!4154064 (and tp!1898362 tp!1898359))))

(declare-fun b!6896815 () Bool)

(declare-fun tp!1898361 () Bool)

(declare-fun tp!1898360 () Bool)

(assert (=> b!6896815 (= e!4154064 (and tp!1898361 tp!1898360))))

(assert (=> b!6896219 (= tp!1898294 e!4154064)))

(declare-fun b!6896814 () Bool)

(declare-fun tp!1898363 () Bool)

(assert (=> b!6896814 (= e!4154064 tp!1898363)))

(assert (= (and b!6896219 (is-ElementMatch!16836 (regTwo!34185 r1!6342))) b!6896812))

(assert (= (and b!6896219 (is-Concat!25681 (regTwo!34185 r1!6342))) b!6896813))

(assert (= (and b!6896219 (is-Star!16836 (regTwo!34185 r1!6342))) b!6896814))

(assert (= (and b!6896219 (is-Union!16836 (regTwo!34185 r1!6342))) b!6896815))

(declare-fun b!6896816 () Bool)

(declare-fun e!4154065 () Bool)

(assert (=> b!6896816 (= e!4154065 tp_is_empty!42897)))

(declare-fun b!6896817 () Bool)

(declare-fun tp!1898367 () Bool)

(declare-fun tp!1898364 () Bool)

(assert (=> b!6896817 (= e!4154065 (and tp!1898367 tp!1898364))))

(declare-fun b!6896819 () Bool)

(declare-fun tp!1898366 () Bool)

(declare-fun tp!1898365 () Bool)

(assert (=> b!6896819 (= e!4154065 (and tp!1898366 tp!1898365))))

(assert (=> b!6896213 (= tp!1898289 e!4154065)))

(declare-fun b!6896818 () Bool)

(declare-fun tp!1898368 () Bool)

(assert (=> b!6896818 (= e!4154065 tp!1898368)))

(assert (= (and b!6896213 (is-ElementMatch!16836 (reg!17165 r3!135))) b!6896816))

(assert (= (and b!6896213 (is-Concat!25681 (reg!17165 r3!135))) b!6896817))

(assert (= (and b!6896213 (is-Star!16836 (reg!17165 r3!135))) b!6896818))

(assert (= (and b!6896213 (is-Union!16836 (reg!17165 r3!135))) b!6896819))

(declare-fun b!6896820 () Bool)

(declare-fun e!4154066 () Bool)

(assert (=> b!6896820 (= e!4154066 tp_is_empty!42897)))

(declare-fun b!6896821 () Bool)

(declare-fun tp!1898372 () Bool)

(declare-fun tp!1898369 () Bool)

(assert (=> b!6896821 (= e!4154066 (and tp!1898372 tp!1898369))))

(declare-fun b!6896823 () Bool)

(declare-fun tp!1898371 () Bool)

(declare-fun tp!1898370 () Bool)

(assert (=> b!6896823 (= e!4154066 (and tp!1898371 tp!1898370))))

(assert (=> b!6896212 (= tp!1898282 e!4154066)))

(declare-fun b!6896822 () Bool)

(declare-fun tp!1898373 () Bool)

(assert (=> b!6896822 (= e!4154066 tp!1898373)))

(assert (= (and b!6896212 (is-ElementMatch!16836 (regOne!34185 r3!135))) b!6896820))

(assert (= (and b!6896212 (is-Concat!25681 (regOne!34185 r3!135))) b!6896821))

(assert (= (and b!6896212 (is-Star!16836 (regOne!34185 r3!135))) b!6896822))

(assert (= (and b!6896212 (is-Union!16836 (regOne!34185 r3!135))) b!6896823))

(declare-fun b!6896824 () Bool)

(declare-fun e!4154067 () Bool)

(assert (=> b!6896824 (= e!4154067 tp_is_empty!42897)))

(declare-fun b!6896825 () Bool)

(declare-fun tp!1898377 () Bool)

(declare-fun tp!1898374 () Bool)

(assert (=> b!6896825 (= e!4154067 (and tp!1898377 tp!1898374))))

(declare-fun b!6896827 () Bool)

(declare-fun tp!1898376 () Bool)

(declare-fun tp!1898375 () Bool)

(assert (=> b!6896827 (= e!4154067 (and tp!1898376 tp!1898375))))

(assert (=> b!6896212 (= tp!1898295 e!4154067)))

(declare-fun b!6896826 () Bool)

(declare-fun tp!1898378 () Bool)

(assert (=> b!6896826 (= e!4154067 tp!1898378)))

(assert (= (and b!6896212 (is-ElementMatch!16836 (regTwo!34185 r3!135))) b!6896824))

(assert (= (and b!6896212 (is-Concat!25681 (regTwo!34185 r3!135))) b!6896825))

(assert (= (and b!6896212 (is-Star!16836 (regTwo!34185 r3!135))) b!6896826))

(assert (= (and b!6896212 (is-Union!16836 (regTwo!34185 r3!135))) b!6896827))

(declare-fun b!6896828 () Bool)

(declare-fun e!4154068 () Bool)

(assert (=> b!6896828 (= e!4154068 tp_is_empty!42897)))

(declare-fun b!6896829 () Bool)

(declare-fun tp!1898382 () Bool)

(declare-fun tp!1898379 () Bool)

(assert (=> b!6896829 (= e!4154068 (and tp!1898382 tp!1898379))))

(declare-fun b!6896831 () Bool)

(declare-fun tp!1898381 () Bool)

(declare-fun tp!1898380 () Bool)

(assert (=> b!6896831 (= e!4154068 (and tp!1898381 tp!1898380))))

(assert (=> b!6896223 (= tp!1898291 e!4154068)))

(declare-fun b!6896830 () Bool)

(declare-fun tp!1898383 () Bool)

(assert (=> b!6896830 (= e!4154068 tp!1898383)))

(assert (= (and b!6896223 (is-ElementMatch!16836 (regOne!34184 r2!6280))) b!6896828))

(assert (= (and b!6896223 (is-Concat!25681 (regOne!34184 r2!6280))) b!6896829))

(assert (= (and b!6896223 (is-Star!16836 (regOne!34184 r2!6280))) b!6896830))

(assert (= (and b!6896223 (is-Union!16836 (regOne!34184 r2!6280))) b!6896831))

(declare-fun b!6896832 () Bool)

(declare-fun e!4154069 () Bool)

(assert (=> b!6896832 (= e!4154069 tp_is_empty!42897)))

(declare-fun b!6896833 () Bool)

(declare-fun tp!1898387 () Bool)

(declare-fun tp!1898384 () Bool)

(assert (=> b!6896833 (= e!4154069 (and tp!1898387 tp!1898384))))

(declare-fun b!6896835 () Bool)

(declare-fun tp!1898386 () Bool)

(declare-fun tp!1898385 () Bool)

(assert (=> b!6896835 (= e!4154069 (and tp!1898386 tp!1898385))))

(assert (=> b!6896223 (= tp!1898286 e!4154069)))

(declare-fun b!6896834 () Bool)

(declare-fun tp!1898388 () Bool)

(assert (=> b!6896834 (= e!4154069 tp!1898388)))

(assert (= (and b!6896223 (is-ElementMatch!16836 (regTwo!34184 r2!6280))) b!6896832))

(assert (= (and b!6896223 (is-Concat!25681 (regTwo!34184 r2!6280))) b!6896833))

(assert (= (and b!6896223 (is-Star!16836 (regTwo!34184 r2!6280))) b!6896834))

(assert (= (and b!6896223 (is-Union!16836 (regTwo!34184 r2!6280))) b!6896835))

(declare-fun b!6896836 () Bool)

(declare-fun e!4154070 () Bool)

(assert (=> b!6896836 (= e!4154070 tp_is_empty!42897)))

(declare-fun b!6896837 () Bool)

(declare-fun tp!1898392 () Bool)

(declare-fun tp!1898389 () Bool)

(assert (=> b!6896837 (= e!4154070 (and tp!1898392 tp!1898389))))

(declare-fun b!6896839 () Bool)

(declare-fun tp!1898391 () Bool)

(declare-fun tp!1898390 () Bool)

(assert (=> b!6896839 (= e!4154070 (and tp!1898391 tp!1898390))))

(assert (=> b!6896222 (= tp!1898281 e!4154070)))

(declare-fun b!6896838 () Bool)

(declare-fun tp!1898393 () Bool)

(assert (=> b!6896838 (= e!4154070 tp!1898393)))

(assert (= (and b!6896222 (is-ElementMatch!16836 (reg!17165 r1!6342))) b!6896836))

(assert (= (and b!6896222 (is-Concat!25681 (reg!17165 r1!6342))) b!6896837))

(assert (= (and b!6896222 (is-Star!16836 (reg!17165 r1!6342))) b!6896838))

(assert (= (and b!6896222 (is-Union!16836 (reg!17165 r1!6342))) b!6896839))

(declare-fun b!6896844 () Bool)

(declare-fun e!4154073 () Bool)

(declare-fun tp!1898396 () Bool)

(assert (=> b!6896844 (= e!4154073 (and tp_is_empty!42897 tp!1898396))))

(assert (=> b!6896206 (= tp!1898290 e!4154073)))

(assert (= (and b!6896206 (is-Cons!66469 (t!380336 s!14361))) b!6896844))

(declare-fun b!6896845 () Bool)

(declare-fun e!4154074 () Bool)

(assert (=> b!6896845 (= e!4154074 tp_is_empty!42897)))

(declare-fun b!6896846 () Bool)

(declare-fun tp!1898400 () Bool)

(declare-fun tp!1898397 () Bool)

(assert (=> b!6896846 (= e!4154074 (and tp!1898400 tp!1898397))))

(declare-fun b!6896848 () Bool)

(declare-fun tp!1898399 () Bool)

(declare-fun tp!1898398 () Bool)

(assert (=> b!6896848 (= e!4154074 (and tp!1898399 tp!1898398))))

(assert (=> b!6896216 (= tp!1898292 e!4154074)))

(declare-fun b!6896847 () Bool)

(declare-fun tp!1898401 () Bool)

(assert (=> b!6896847 (= e!4154074 tp!1898401)))

(assert (= (and b!6896216 (is-ElementMatch!16836 (reg!17165 r2!6280))) b!6896845))

(assert (= (and b!6896216 (is-Concat!25681 (reg!17165 r2!6280))) b!6896846))

(assert (= (and b!6896216 (is-Star!16836 (reg!17165 r2!6280))) b!6896847))

(assert (= (and b!6896216 (is-Union!16836 (reg!17165 r2!6280))) b!6896848))

(declare-fun b!6896849 () Bool)

(declare-fun e!4154075 () Bool)

(assert (=> b!6896849 (= e!4154075 tp_is_empty!42897)))

(declare-fun b!6896850 () Bool)

(declare-fun tp!1898405 () Bool)

(declare-fun tp!1898402 () Bool)

(assert (=> b!6896850 (= e!4154075 (and tp!1898405 tp!1898402))))

(declare-fun b!6896852 () Bool)

(declare-fun tp!1898404 () Bool)

(declare-fun tp!1898403 () Bool)

(assert (=> b!6896852 (= e!4154075 (and tp!1898404 tp!1898403))))

(assert (=> b!6896215 (= tp!1898280 e!4154075)))

(declare-fun b!6896851 () Bool)

(declare-fun tp!1898406 () Bool)

(assert (=> b!6896851 (= e!4154075 tp!1898406)))

(assert (= (and b!6896215 (is-ElementMatch!16836 (regOne!34184 r1!6342))) b!6896849))

(assert (= (and b!6896215 (is-Concat!25681 (regOne!34184 r1!6342))) b!6896850))

(assert (= (and b!6896215 (is-Star!16836 (regOne!34184 r1!6342))) b!6896851))

(assert (= (and b!6896215 (is-Union!16836 (regOne!34184 r1!6342))) b!6896852))

(declare-fun b!6896853 () Bool)

(declare-fun e!4154076 () Bool)

(assert (=> b!6896853 (= e!4154076 tp_is_empty!42897)))

(declare-fun b!6896854 () Bool)

(declare-fun tp!1898410 () Bool)

(declare-fun tp!1898407 () Bool)

(assert (=> b!6896854 (= e!4154076 (and tp!1898410 tp!1898407))))

(declare-fun b!6896856 () Bool)

(declare-fun tp!1898409 () Bool)

(declare-fun tp!1898408 () Bool)

(assert (=> b!6896856 (= e!4154076 (and tp!1898409 tp!1898408))))

(assert (=> b!6896215 (= tp!1898287 e!4154076)))

(declare-fun b!6896855 () Bool)

(declare-fun tp!1898411 () Bool)

(assert (=> b!6896855 (= e!4154076 tp!1898411)))

(assert (= (and b!6896215 (is-ElementMatch!16836 (regTwo!34184 r1!6342))) b!6896853))

(assert (= (and b!6896215 (is-Concat!25681 (regTwo!34184 r1!6342))) b!6896854))

(assert (= (and b!6896215 (is-Star!16836 (regTwo!34184 r1!6342))) b!6896855))

(assert (= (and b!6896215 (is-Union!16836 (regTwo!34184 r1!6342))) b!6896856))

(declare-fun b!6896857 () Bool)

(declare-fun e!4154077 () Bool)

(assert (=> b!6896857 (= e!4154077 tp_is_empty!42897)))

(declare-fun b!6896858 () Bool)

(declare-fun tp!1898415 () Bool)

(declare-fun tp!1898412 () Bool)

(assert (=> b!6896858 (= e!4154077 (and tp!1898415 tp!1898412))))

(declare-fun b!6896860 () Bool)

(declare-fun tp!1898414 () Bool)

(declare-fun tp!1898413 () Bool)

(assert (=> b!6896860 (= e!4154077 (and tp!1898414 tp!1898413))))

(assert (=> b!6896214 (= tp!1898285 e!4154077)))

(declare-fun b!6896859 () Bool)

(declare-fun tp!1898416 () Bool)

(assert (=> b!6896859 (= e!4154077 tp!1898416)))

(assert (= (and b!6896214 (is-ElementMatch!16836 (regOne!34185 r2!6280))) b!6896857))

(assert (= (and b!6896214 (is-Concat!25681 (regOne!34185 r2!6280))) b!6896858))

(assert (= (and b!6896214 (is-Star!16836 (regOne!34185 r2!6280))) b!6896859))

(assert (= (and b!6896214 (is-Union!16836 (regOne!34185 r2!6280))) b!6896860))

(declare-fun b!6896861 () Bool)

(declare-fun e!4154078 () Bool)

(assert (=> b!6896861 (= e!4154078 tp_is_empty!42897)))

(declare-fun b!6896862 () Bool)

(declare-fun tp!1898420 () Bool)

(declare-fun tp!1898417 () Bool)

(assert (=> b!6896862 (= e!4154078 (and tp!1898420 tp!1898417))))

(declare-fun b!6896864 () Bool)

(declare-fun tp!1898419 () Bool)

(declare-fun tp!1898418 () Bool)

(assert (=> b!6896864 (= e!4154078 (and tp!1898419 tp!1898418))))

(assert (=> b!6896214 (= tp!1898283 e!4154078)))

(declare-fun b!6896863 () Bool)

(declare-fun tp!1898421 () Bool)

(assert (=> b!6896863 (= e!4154078 tp!1898421)))

(assert (= (and b!6896214 (is-ElementMatch!16836 (regTwo!34185 r2!6280))) b!6896861))

(assert (= (and b!6896214 (is-Concat!25681 (regTwo!34185 r2!6280))) b!6896862))

(assert (= (and b!6896214 (is-Star!16836 (regTwo!34185 r2!6280))) b!6896863))

(assert (= (and b!6896214 (is-Union!16836 (regTwo!34185 r2!6280))) b!6896864))

(declare-fun b!6896865 () Bool)

(declare-fun e!4154079 () Bool)

(assert (=> b!6896865 (= e!4154079 tp_is_empty!42897)))

(declare-fun b!6896866 () Bool)

(declare-fun tp!1898425 () Bool)

(declare-fun tp!1898422 () Bool)

(assert (=> b!6896866 (= e!4154079 (and tp!1898425 tp!1898422))))

(declare-fun b!6896868 () Bool)

(declare-fun tp!1898424 () Bool)

(declare-fun tp!1898423 () Bool)

(assert (=> b!6896868 (= e!4154079 (and tp!1898424 tp!1898423))))

(assert (=> b!6896209 (= tp!1898288 e!4154079)))

(declare-fun b!6896867 () Bool)

(declare-fun tp!1898426 () Bool)

(assert (=> b!6896867 (= e!4154079 tp!1898426)))

(assert (= (and b!6896209 (is-ElementMatch!16836 (regOne!34184 r3!135))) b!6896865))

(assert (= (and b!6896209 (is-Concat!25681 (regOne!34184 r3!135))) b!6896866))

(assert (= (and b!6896209 (is-Star!16836 (regOne!34184 r3!135))) b!6896867))

(assert (= (and b!6896209 (is-Union!16836 (regOne!34184 r3!135))) b!6896868))

(declare-fun b!6896869 () Bool)

(declare-fun e!4154080 () Bool)

(assert (=> b!6896869 (= e!4154080 tp_is_empty!42897)))

(declare-fun b!6896870 () Bool)

(declare-fun tp!1898430 () Bool)

(declare-fun tp!1898427 () Bool)

(assert (=> b!6896870 (= e!4154080 (and tp!1898430 tp!1898427))))

(declare-fun b!6896872 () Bool)

(declare-fun tp!1898429 () Bool)

(declare-fun tp!1898428 () Bool)

(assert (=> b!6896872 (= e!4154080 (and tp!1898429 tp!1898428))))

(assert (=> b!6896209 (= tp!1898293 e!4154080)))

(declare-fun b!6896871 () Bool)

(declare-fun tp!1898431 () Bool)

(assert (=> b!6896871 (= e!4154080 tp!1898431)))

(assert (= (and b!6896209 (is-ElementMatch!16836 (regTwo!34184 r3!135))) b!6896869))

(assert (= (and b!6896209 (is-Concat!25681 (regTwo!34184 r3!135))) b!6896870))

(assert (= (and b!6896209 (is-Star!16836 (regTwo!34184 r3!135))) b!6896871))

(assert (= (and b!6896209 (is-Union!16836 (regTwo!34184 r3!135))) b!6896872))

(push 1)

(assert (not b!6896453))

(assert (not b!6896819))

(assert (not b!6896754))

(assert (not b!6896768))

(assert (not bm!627390))

(assert (not b!6896579))

(assert (not b!6896751))

(assert (not b!6896834))

(assert (not d!2161584))

(assert (not bm!627396))

(assert (not d!2161592))

(assert (not b!6896539))

(assert (not d!2161560))

(assert (not b!6896450))

(assert (not d!2161626))

(assert (not b!6896810))

(assert (not b!6896813))

(assert (not b!6896868))

(assert (not b!6896765))

(assert (not b!6896451))

(assert (not b!6896537))

(assert (not b!6896870))

(assert (not b!6896764))

(assert (not b!6896538))

(assert (not d!2161544))

(assert (not bm!627409))

(assert (not b!6896830))

(assert (not b!6896846))

(assert (not bm!627400))

(assert (not b!6896554))

(assert (not b!6896678))

(assert (not d!2161530))

(assert (not b!6896825))

(assert (not b!6896783))

(assert (not bm!627413))

(assert (not b!6896855))

(assert (not b!6896860))

(assert (not b!6896461))

(assert (not b!6896851))

(assert (not bm!627428))

(assert (not b!6896863))

(assert (not b!6896811))

(assert (not d!2161608))

(assert (not b!6896679))

(assert (not bm!627427))

(assert (not b!6896685))

(assert (not b!6896748))

(assert (not b!6896844))

(assert (not b!6896852))

(assert (not bm!627383))

(assert (not b!6896565))

(assert (not d!2161596))

(assert (not b!6896576))

(assert (not b!6896628))

(assert (not b!6896551))

(assert (not b!6896866))

(assert (not b!6896553))

(assert (not b!6896862))

(assert tp_is_empty!42897)

(assert (not bm!627398))

(assert (not bm!627382))

(assert (not b!6896850))

(assert (not b!6896548))

(assert (not b!6896382))

(assert (not d!2161624))

(assert (not b!6896684))

(assert (not b!6896827))

(assert (not d!2161540))

(assert (not b!6896821))

(assert (not b!6896872))

(assert (not b!6896767))

(assert (not b!6896682))

(assert (not b!6896689))

(assert (not bm!627399))

(assert (not b!6896859))

(assert (not d!2161594))

(assert (not d!2161562))

(assert (not b!6896683))

(assert (not b!6896838))

(assert (not b!6896541))

(assert (not b!6896848))

(assert (not b!6896858))

(assert (not b!6896379))

(assert (not b!6896454))

(assert (not b!6896818))

(assert (not bm!627412))

(assert (not b!6896826))

(assert (not b!6896760))

(assert (not d!2161564))

(assert (not b!6896833))

(assert (not b!6896752))

(assert (not b!6896835))

(assert (not b!6896817))

(assert (not b!6896562))

(assert (not bm!627426))

(assert (not d!2161548))

(assert (not bm!627411))

(assert (not b!6896822))

(assert (not b!6896864))

(assert (not d!2161586))

(assert (not b!6896775))

(assert (not b!6896766))

(assert (not b!6896829))

(assert (not b!6896871))

(assert (not b!6896867))

(assert (not bm!627401))

(assert (not d!2161630))

(assert (not b!6896809))

(assert (not b!6896452))

(assert (not b!6896753))

(assert (not b!6896555))

(assert (not b!6896847))

(assert (not b!6896823))

(assert (not b!6896856))

(assert (not b!6896854))

(assert (not b!6896686))

(assert (not bm!627430))

(assert (not b!6896552))

(assert (not bm!627397))

(assert (not d!2161542))

(assert (not bm!627424))

(assert (not b!6896837))

(assert (not d!2161558))

(assert (not d!2161552))

(assert (not b!6896540))

(assert (not b!6896747))

(assert (not b!6896814))

(assert (not b!6896568))

(assert (not b!6896831))

(assert (not d!2161604))

(assert (not b!6896839))

(assert (not b!6896815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

