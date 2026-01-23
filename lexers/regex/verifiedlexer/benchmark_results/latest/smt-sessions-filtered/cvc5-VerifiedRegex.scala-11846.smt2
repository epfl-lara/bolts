; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666008 () Bool)

(assert start!666008)

(declare-fun b!6929230 () Bool)

(declare-fun e!4169638 () Bool)

(declare-fun tp!1909946 () Bool)

(declare-fun tp!1909953 () Bool)

(assert (=> b!6929230 (= e!4169638 (and tp!1909946 tp!1909953))))

(declare-fun b!6929231 () Bool)

(declare-fun e!4169640 () Bool)

(declare-datatypes ((C!34146 0))(
  ( (C!34147 (val!26775 Int)) )
))
(declare-datatypes ((Regex!16938 0))(
  ( (ElementMatch!16938 (c!1286128 C!34146)) (Concat!25783 (regOne!34388 Regex!16938) (regTwo!34388 Regex!16938)) (EmptyExpr!16938) (Star!16938 (reg!17267 Regex!16938)) (EmptyLang!16938) (Union!16938 (regOne!34389 Regex!16938) (regTwo!34389 Regex!16938)) )
))
(declare-fun lt!2472816 () Regex!16938)

(declare-fun validRegex!8644 (Regex!16938) Bool)

(assert (=> b!6929231 (= e!4169640 (validRegex!8644 lt!2472816))))

(declare-fun b!6929232 () Bool)

(declare-fun e!4169635 () Bool)

(declare-fun tp!1909949 () Bool)

(declare-fun tp!1909940 () Bool)

(assert (=> b!6929232 (= e!4169635 (and tp!1909949 tp!1909940))))

(declare-fun b!6929233 () Bool)

(declare-fun tp!1909944 () Bool)

(assert (=> b!6929233 (= e!4169635 tp!1909944)))

(declare-fun b!6929234 () Bool)

(declare-fun tp!1909941 () Bool)

(assert (=> b!6929234 (= e!4169638 tp!1909941)))

(declare-fun b!6929235 () Bool)

(declare-fun e!4169637 () Bool)

(declare-fun tp!1909948 () Bool)

(declare-fun tp!1909955 () Bool)

(assert (=> b!6929235 (= e!4169637 (and tp!1909948 tp!1909955))))

(declare-fun b!6929236 () Bool)

(declare-fun e!4169636 () Bool)

(assert (=> b!6929236 (= e!4169636 (not e!4169640))))

(declare-fun res!2826008 () Bool)

(assert (=> b!6929236 (=> res!2826008 e!4169640)))

(declare-fun lt!2472818 () Bool)

(assert (=> b!6929236 (= res!2826008 lt!2472818)))

(declare-fun lt!2472820 () Regex!16938)

(declare-datatypes ((List!66691 0))(
  ( (Nil!66567) (Cons!66567 (h!73015 C!34146) (t!380434 List!66691)) )
))
(declare-fun s!14361 () List!66691)

(declare-fun matchR!9077 (Regex!16938 List!66691) Bool)

(declare-fun matchRSpec!3995 (Regex!16938 List!66691) Bool)

(assert (=> b!6929236 (= (matchR!9077 lt!2472820 s!14361) (matchRSpec!3995 lt!2472820 s!14361))))

(declare-datatypes ((Unit!160600 0))(
  ( (Unit!160601) )
))
(declare-fun lt!2472821 () Unit!160600)

(declare-fun mainMatchTheorem!3995 (Regex!16938 List!66691) Unit!160600)

(assert (=> b!6929236 (= lt!2472821 (mainMatchTheorem!3995 lt!2472820 s!14361))))

(declare-fun lt!2472819 () Regex!16938)

(assert (=> b!6929236 (= lt!2472818 (matchRSpec!3995 lt!2472819 s!14361))))

(assert (=> b!6929236 (= lt!2472818 (matchR!9077 lt!2472819 s!14361))))

(declare-fun lt!2472817 () Unit!160600)

(assert (=> b!6929236 (= lt!2472817 (mainMatchTheorem!3995 lt!2472819 s!14361))))

(declare-fun r1!6342 () Regex!16938)

(assert (=> b!6929236 (= lt!2472820 (Concat!25783 r1!6342 lt!2472816))))

(declare-fun r2!6280 () Regex!16938)

(declare-fun r3!135 () Regex!16938)

(assert (=> b!6929236 (= lt!2472816 (Concat!25783 r2!6280 r3!135))))

(assert (=> b!6929236 (= lt!2472819 (Concat!25783 (Concat!25783 r1!6342 r2!6280) r3!135))))

(declare-fun b!6929237 () Bool)

(declare-fun tp!1909954 () Bool)

(declare-fun tp!1909945 () Bool)

(assert (=> b!6929237 (= e!4169638 (and tp!1909954 tp!1909945))))

(declare-fun b!6929238 () Bool)

(declare-fun tp_is_empty!43101 () Bool)

(assert (=> b!6929238 (= e!4169638 tp_is_empty!43101)))

(declare-fun b!6929239 () Bool)

(declare-fun res!2826007 () Bool)

(assert (=> b!6929239 (=> res!2826007 e!4169640)))

(declare-datatypes ((tuple2!67590 0))(
  ( (tuple2!67591 (_1!37098 List!66691) (_2!37098 List!66691)) )
))
(declare-datatypes ((Option!16707 0))(
  ( (None!16706) (Some!16706 (v!52978 tuple2!67590)) )
))
(declare-fun isDefined!13408 (Option!16707) Bool)

(declare-fun findConcatSeparation!3121 (Regex!16938 Regex!16938 List!66691 List!66691 List!66691) Option!16707)

(assert (=> b!6929239 (= res!2826007 (not (isDefined!13408 (findConcatSeparation!3121 r1!6342 lt!2472816 Nil!66567 s!14361 s!14361))))))

(declare-fun b!6929240 () Bool)

(assert (=> b!6929240 (= e!4169635 tp_is_empty!43101)))

(declare-fun b!6929241 () Bool)

(assert (=> b!6929241 (= e!4169637 tp_is_empty!43101)))

(declare-fun b!6929242 () Bool)

(declare-fun tp!1909943 () Bool)

(declare-fun tp!1909952 () Bool)

(assert (=> b!6929242 (= e!4169637 (and tp!1909943 tp!1909952))))

(declare-fun b!6929243 () Bool)

(declare-fun res!2826011 () Bool)

(assert (=> b!6929243 (=> (not res!2826011) (not e!4169636))))

(assert (=> b!6929243 (= res!2826011 (validRegex!8644 r2!6280))))

(declare-fun b!6929244 () Bool)

(declare-fun e!4169639 () Bool)

(declare-fun tp!1909951 () Bool)

(assert (=> b!6929244 (= e!4169639 (and tp_is_empty!43101 tp!1909951))))

(declare-fun b!6929245 () Bool)

(declare-fun res!2826010 () Bool)

(assert (=> b!6929245 (=> (not res!2826010) (not e!4169636))))

(assert (=> b!6929245 (= res!2826010 (validRegex!8644 r3!135))))

(declare-fun b!6929246 () Bool)

(declare-fun tp!1909942 () Bool)

(declare-fun tp!1909947 () Bool)

(assert (=> b!6929246 (= e!4169635 (and tp!1909942 tp!1909947))))

(declare-fun b!6929247 () Bool)

(declare-fun tp!1909950 () Bool)

(assert (=> b!6929247 (= e!4169637 tp!1909950)))

(declare-fun res!2826009 () Bool)

(assert (=> start!666008 (=> (not res!2826009) (not e!4169636))))

(assert (=> start!666008 (= res!2826009 (validRegex!8644 r1!6342))))

(assert (=> start!666008 e!4169636))

(assert (=> start!666008 e!4169637))

(assert (=> start!666008 e!4169638))

(assert (=> start!666008 e!4169635))

(assert (=> start!666008 e!4169639))

(assert (= (and start!666008 res!2826009) b!6929243))

(assert (= (and b!6929243 res!2826011) b!6929245))

(assert (= (and b!6929245 res!2826010) b!6929236))

(assert (= (and b!6929236 (not res!2826008)) b!6929239))

(assert (= (and b!6929239 (not res!2826007)) b!6929231))

(assert (= (and start!666008 (is-ElementMatch!16938 r1!6342)) b!6929241))

(assert (= (and start!666008 (is-Concat!25783 r1!6342)) b!6929242))

(assert (= (and start!666008 (is-Star!16938 r1!6342)) b!6929247))

(assert (= (and start!666008 (is-Union!16938 r1!6342)) b!6929235))

(assert (= (and start!666008 (is-ElementMatch!16938 r2!6280)) b!6929238))

(assert (= (and start!666008 (is-Concat!25783 r2!6280)) b!6929237))

(assert (= (and start!666008 (is-Star!16938 r2!6280)) b!6929234))

(assert (= (and start!666008 (is-Union!16938 r2!6280)) b!6929230))

(assert (= (and start!666008 (is-ElementMatch!16938 r3!135)) b!6929240))

(assert (= (and start!666008 (is-Concat!25783 r3!135)) b!6929232))

(assert (= (and start!666008 (is-Star!16938 r3!135)) b!6929233))

(assert (= (and start!666008 (is-Union!16938 r3!135)) b!6929246))

(assert (= (and start!666008 (is-Cons!66567 s!14361)) b!6929244))

(declare-fun m!7637480 () Bool)

(assert (=> b!6929243 m!7637480))

(declare-fun m!7637482 () Bool)

(assert (=> start!666008 m!7637482))

(declare-fun m!7637484 () Bool)

(assert (=> b!6929236 m!7637484))

(declare-fun m!7637486 () Bool)

(assert (=> b!6929236 m!7637486))

(declare-fun m!7637488 () Bool)

(assert (=> b!6929236 m!7637488))

(declare-fun m!7637490 () Bool)

(assert (=> b!6929236 m!7637490))

(declare-fun m!7637492 () Bool)

(assert (=> b!6929236 m!7637492))

(declare-fun m!7637494 () Bool)

(assert (=> b!6929236 m!7637494))

(declare-fun m!7637496 () Bool)

(assert (=> b!6929239 m!7637496))

(assert (=> b!6929239 m!7637496))

(declare-fun m!7637498 () Bool)

(assert (=> b!6929239 m!7637498))

(declare-fun m!7637500 () Bool)

(assert (=> b!6929245 m!7637500))

(declare-fun m!7637502 () Bool)

(assert (=> b!6929231 m!7637502))

(push 1)

(assert (not b!6929234))

(assert (not b!6929230))

(assert (not b!6929245))

(assert tp_is_empty!43101)

(assert (not b!6929231))

(assert (not b!6929236))

(assert (not b!6929247))

(assert (not b!6929239))

(assert (not b!6929232))

(assert (not b!6929233))

(assert (not b!6929244))

(assert (not b!6929242))

(assert (not b!6929246))

(assert (not b!6929235))

(assert (not b!6929243))

(assert (not start!666008))

(assert (not b!6929237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6929342 () Bool)

(declare-fun e!4169693 () Bool)

(declare-fun e!4169688 () Bool)

(assert (=> b!6929342 (= e!4169693 e!4169688)))

(declare-fun res!2826046 () Bool)

(declare-fun nullable!6761 (Regex!16938) Bool)

(assert (=> b!6929342 (= res!2826046 (not (nullable!6761 (reg!17267 r2!6280))))))

(assert (=> b!6929342 (=> (not res!2826046) (not e!4169688))))

(declare-fun d!2165903 () Bool)

(declare-fun res!2826047 () Bool)

(declare-fun e!4169687 () Bool)

(assert (=> d!2165903 (=> res!2826047 e!4169687)))

(assert (=> d!2165903 (= res!2826047 (is-ElementMatch!16938 r2!6280))))

(assert (=> d!2165903 (= (validRegex!8644 r2!6280) e!4169687)))

(declare-fun b!6929343 () Bool)

(assert (=> b!6929343 (= e!4169687 e!4169693)))

(declare-fun c!1286143 () Bool)

(assert (=> b!6929343 (= c!1286143 (is-Star!16938 r2!6280))))

(declare-fun b!6929344 () Bool)

(declare-fun res!2826043 () Bool)

(declare-fun e!4169691 () Bool)

(assert (=> b!6929344 (=> res!2826043 e!4169691)))

(assert (=> b!6929344 (= res!2826043 (not (is-Concat!25783 r2!6280)))))

(declare-fun e!4169690 () Bool)

(assert (=> b!6929344 (= e!4169690 e!4169691)))

(declare-fun b!6929345 () Bool)

(declare-fun call!629688 () Bool)

(assert (=> b!6929345 (= e!4169688 call!629688)))

(declare-fun bm!629683 () Bool)

(declare-fun call!629690 () Bool)

(declare-fun c!1286142 () Bool)

(assert (=> bm!629683 (= call!629690 (validRegex!8644 (ite c!1286142 (regTwo!34389 r2!6280) (regOne!34388 r2!6280))))))

(declare-fun b!6929346 () Bool)

(declare-fun e!4169689 () Bool)

(assert (=> b!6929346 (= e!4169689 call!629690)))

(declare-fun b!6929347 () Bool)

(declare-fun e!4169692 () Bool)

(assert (=> b!6929347 (= e!4169691 e!4169692)))

(declare-fun res!2826045 () Bool)

(assert (=> b!6929347 (=> (not res!2826045) (not e!4169692))))

(assert (=> b!6929347 (= res!2826045 call!629690)))

(declare-fun b!6929348 () Bool)

(assert (=> b!6929348 (= e!4169693 e!4169690)))

(assert (=> b!6929348 (= c!1286142 (is-Union!16938 r2!6280))))

(declare-fun bm!629684 () Bool)

(assert (=> bm!629684 (= call!629688 (validRegex!8644 (ite c!1286143 (reg!17267 r2!6280) (ite c!1286142 (regOne!34389 r2!6280) (regTwo!34388 r2!6280)))))))

(declare-fun b!6929349 () Bool)

(declare-fun res!2826044 () Bool)

(assert (=> b!6929349 (=> (not res!2826044) (not e!4169689))))

(declare-fun call!629689 () Bool)

(assert (=> b!6929349 (= res!2826044 call!629689)))

(assert (=> b!6929349 (= e!4169690 e!4169689)))

(declare-fun b!6929350 () Bool)

(assert (=> b!6929350 (= e!4169692 call!629689)))

(declare-fun bm!629685 () Bool)

(assert (=> bm!629685 (= call!629689 call!629688)))

(assert (= (and d!2165903 (not res!2826047)) b!6929343))

(assert (= (and b!6929343 c!1286143) b!6929342))

(assert (= (and b!6929343 (not c!1286143)) b!6929348))

(assert (= (and b!6929342 res!2826046) b!6929345))

(assert (= (and b!6929348 c!1286142) b!6929349))

(assert (= (and b!6929348 (not c!1286142)) b!6929344))

(assert (= (and b!6929349 res!2826044) b!6929346))

(assert (= (and b!6929344 (not res!2826043)) b!6929347))

(assert (= (and b!6929347 res!2826045) b!6929350))

(assert (= (or b!6929349 b!6929350) bm!629685))

(assert (= (or b!6929346 b!6929347) bm!629683))

(assert (= (or b!6929345 bm!629685) bm!629684))

(declare-fun m!7637528 () Bool)

(assert (=> b!6929342 m!7637528))

(declare-fun m!7637530 () Bool)

(assert (=> bm!629683 m!7637530))

(declare-fun m!7637532 () Bool)

(assert (=> bm!629684 m!7637532))

(assert (=> b!6929243 d!2165903))

(declare-fun b!6929351 () Bool)

(declare-fun e!4169700 () Bool)

(declare-fun e!4169695 () Bool)

(assert (=> b!6929351 (= e!4169700 e!4169695)))

(declare-fun res!2826051 () Bool)

(assert (=> b!6929351 (= res!2826051 (not (nullable!6761 (reg!17267 lt!2472816))))))

(assert (=> b!6929351 (=> (not res!2826051) (not e!4169695))))

(declare-fun d!2165905 () Bool)

(declare-fun res!2826052 () Bool)

(declare-fun e!4169694 () Bool)

(assert (=> d!2165905 (=> res!2826052 e!4169694)))

(assert (=> d!2165905 (= res!2826052 (is-ElementMatch!16938 lt!2472816))))

(assert (=> d!2165905 (= (validRegex!8644 lt!2472816) e!4169694)))

(declare-fun b!6929352 () Bool)

(assert (=> b!6929352 (= e!4169694 e!4169700)))

(declare-fun c!1286145 () Bool)

(assert (=> b!6929352 (= c!1286145 (is-Star!16938 lt!2472816))))

(declare-fun b!6929353 () Bool)

(declare-fun res!2826048 () Bool)

(declare-fun e!4169698 () Bool)

(assert (=> b!6929353 (=> res!2826048 e!4169698)))

(assert (=> b!6929353 (= res!2826048 (not (is-Concat!25783 lt!2472816)))))

(declare-fun e!4169697 () Bool)

(assert (=> b!6929353 (= e!4169697 e!4169698)))

(declare-fun b!6929354 () Bool)

(declare-fun call!629691 () Bool)

(assert (=> b!6929354 (= e!4169695 call!629691)))

(declare-fun bm!629686 () Bool)

(declare-fun call!629693 () Bool)

(declare-fun c!1286144 () Bool)

(assert (=> bm!629686 (= call!629693 (validRegex!8644 (ite c!1286144 (regTwo!34389 lt!2472816) (regOne!34388 lt!2472816))))))

(declare-fun b!6929355 () Bool)

(declare-fun e!4169696 () Bool)

(assert (=> b!6929355 (= e!4169696 call!629693)))

(declare-fun b!6929356 () Bool)

(declare-fun e!4169699 () Bool)

(assert (=> b!6929356 (= e!4169698 e!4169699)))

(declare-fun res!2826050 () Bool)

(assert (=> b!6929356 (=> (not res!2826050) (not e!4169699))))

(assert (=> b!6929356 (= res!2826050 call!629693)))

(declare-fun b!6929357 () Bool)

(assert (=> b!6929357 (= e!4169700 e!4169697)))

(assert (=> b!6929357 (= c!1286144 (is-Union!16938 lt!2472816))))

(declare-fun bm!629687 () Bool)

(assert (=> bm!629687 (= call!629691 (validRegex!8644 (ite c!1286145 (reg!17267 lt!2472816) (ite c!1286144 (regOne!34389 lt!2472816) (regTwo!34388 lt!2472816)))))))

(declare-fun b!6929358 () Bool)

(declare-fun res!2826049 () Bool)

(assert (=> b!6929358 (=> (not res!2826049) (not e!4169696))))

(declare-fun call!629692 () Bool)

(assert (=> b!6929358 (= res!2826049 call!629692)))

(assert (=> b!6929358 (= e!4169697 e!4169696)))

(declare-fun b!6929359 () Bool)

(assert (=> b!6929359 (= e!4169699 call!629692)))

(declare-fun bm!629688 () Bool)

(assert (=> bm!629688 (= call!629692 call!629691)))

(assert (= (and d!2165905 (not res!2826052)) b!6929352))

(assert (= (and b!6929352 c!1286145) b!6929351))

(assert (= (and b!6929352 (not c!1286145)) b!6929357))

(assert (= (and b!6929351 res!2826051) b!6929354))

(assert (= (and b!6929357 c!1286144) b!6929358))

(assert (= (and b!6929357 (not c!1286144)) b!6929353))

(assert (= (and b!6929358 res!2826049) b!6929355))

(assert (= (and b!6929353 (not res!2826048)) b!6929356))

(assert (= (and b!6929356 res!2826050) b!6929359))

(assert (= (or b!6929358 b!6929359) bm!629688))

(assert (= (or b!6929355 b!6929356) bm!629686))

(assert (= (or b!6929354 bm!629688) bm!629687))

(declare-fun m!7637534 () Bool)

(assert (=> b!6929351 m!7637534))

(declare-fun m!7637536 () Bool)

(assert (=> bm!629686 m!7637536))

(declare-fun m!7637538 () Bool)

(assert (=> bm!629687 m!7637538))

(assert (=> b!6929231 d!2165905))

(declare-fun b!6929360 () Bool)

(declare-fun e!4169707 () Bool)

(declare-fun e!4169702 () Bool)

(assert (=> b!6929360 (= e!4169707 e!4169702)))

(declare-fun res!2826056 () Bool)

(assert (=> b!6929360 (= res!2826056 (not (nullable!6761 (reg!17267 r1!6342))))))

(assert (=> b!6929360 (=> (not res!2826056) (not e!4169702))))

(declare-fun d!2165907 () Bool)

(declare-fun res!2826057 () Bool)

(declare-fun e!4169701 () Bool)

(assert (=> d!2165907 (=> res!2826057 e!4169701)))

(assert (=> d!2165907 (= res!2826057 (is-ElementMatch!16938 r1!6342))))

(assert (=> d!2165907 (= (validRegex!8644 r1!6342) e!4169701)))

(declare-fun b!6929361 () Bool)

(assert (=> b!6929361 (= e!4169701 e!4169707)))

(declare-fun c!1286147 () Bool)

(assert (=> b!6929361 (= c!1286147 (is-Star!16938 r1!6342))))

(declare-fun b!6929362 () Bool)

(declare-fun res!2826053 () Bool)

(declare-fun e!4169705 () Bool)

(assert (=> b!6929362 (=> res!2826053 e!4169705)))

(assert (=> b!6929362 (= res!2826053 (not (is-Concat!25783 r1!6342)))))

(declare-fun e!4169704 () Bool)

(assert (=> b!6929362 (= e!4169704 e!4169705)))

(declare-fun b!6929363 () Bool)

(declare-fun call!629694 () Bool)

(assert (=> b!6929363 (= e!4169702 call!629694)))

(declare-fun bm!629689 () Bool)

(declare-fun call!629696 () Bool)

(declare-fun c!1286146 () Bool)

(assert (=> bm!629689 (= call!629696 (validRegex!8644 (ite c!1286146 (regTwo!34389 r1!6342) (regOne!34388 r1!6342))))))

(declare-fun b!6929364 () Bool)

(declare-fun e!4169703 () Bool)

(assert (=> b!6929364 (= e!4169703 call!629696)))

(declare-fun b!6929365 () Bool)

(declare-fun e!4169706 () Bool)

(assert (=> b!6929365 (= e!4169705 e!4169706)))

(declare-fun res!2826055 () Bool)

(assert (=> b!6929365 (=> (not res!2826055) (not e!4169706))))

(assert (=> b!6929365 (= res!2826055 call!629696)))

(declare-fun b!6929366 () Bool)

(assert (=> b!6929366 (= e!4169707 e!4169704)))

(assert (=> b!6929366 (= c!1286146 (is-Union!16938 r1!6342))))

(declare-fun bm!629690 () Bool)

(assert (=> bm!629690 (= call!629694 (validRegex!8644 (ite c!1286147 (reg!17267 r1!6342) (ite c!1286146 (regOne!34389 r1!6342) (regTwo!34388 r1!6342)))))))

(declare-fun b!6929367 () Bool)

(declare-fun res!2826054 () Bool)

(assert (=> b!6929367 (=> (not res!2826054) (not e!4169703))))

(declare-fun call!629695 () Bool)

(assert (=> b!6929367 (= res!2826054 call!629695)))

(assert (=> b!6929367 (= e!4169704 e!4169703)))

(declare-fun b!6929368 () Bool)

(assert (=> b!6929368 (= e!4169706 call!629695)))

(declare-fun bm!629691 () Bool)

(assert (=> bm!629691 (= call!629695 call!629694)))

(assert (= (and d!2165907 (not res!2826057)) b!6929361))

(assert (= (and b!6929361 c!1286147) b!6929360))

(assert (= (and b!6929361 (not c!1286147)) b!6929366))

(assert (= (and b!6929360 res!2826056) b!6929363))

(assert (= (and b!6929366 c!1286146) b!6929367))

(assert (= (and b!6929366 (not c!1286146)) b!6929362))

(assert (= (and b!6929367 res!2826054) b!6929364))

(assert (= (and b!6929362 (not res!2826053)) b!6929365))

(assert (= (and b!6929365 res!2826055) b!6929368))

(assert (= (or b!6929367 b!6929368) bm!629691))

(assert (= (or b!6929364 b!6929365) bm!629689))

(assert (= (or b!6929363 bm!629691) bm!629690))

(declare-fun m!7637540 () Bool)

(assert (=> b!6929360 m!7637540))

(declare-fun m!7637542 () Bool)

(assert (=> bm!629689 m!7637542))

(declare-fun m!7637544 () Bool)

(assert (=> bm!629690 m!7637544))

(assert (=> start!666008 d!2165907))

(declare-fun b!6929406 () Bool)

(assert (=> b!6929406 true))

(assert (=> b!6929406 true))

(declare-fun bs!1850318 () Bool)

(declare-fun b!6929405 () Bool)

(assert (= bs!1850318 (and b!6929405 b!6929406)))

(declare-fun lambda!394328 () Int)

(declare-fun lambda!394327 () Int)

(assert (=> bs!1850318 (not (= lambda!394328 lambda!394327))))

(assert (=> b!6929405 true))

(assert (=> b!6929405 true))

(declare-fun b!6929401 () Bool)

(declare-fun e!4169732 () Bool)

(declare-fun e!4169731 () Bool)

(assert (=> b!6929401 (= e!4169732 e!4169731)))

(declare-fun res!2826075 () Bool)

(assert (=> b!6929401 (= res!2826075 (matchRSpec!3995 (regOne!34389 lt!2472819) s!14361))))

(assert (=> b!6929401 (=> res!2826075 e!4169731)))

(declare-fun d!2165909 () Bool)

(declare-fun c!1286156 () Bool)

(assert (=> d!2165909 (= c!1286156 (is-EmptyExpr!16938 lt!2472819))))

(declare-fun e!4169729 () Bool)

(assert (=> d!2165909 (= (matchRSpec!3995 lt!2472819 s!14361) e!4169729)))

(declare-fun b!6929402 () Bool)

(declare-fun c!1286157 () Bool)

(assert (=> b!6929402 (= c!1286157 (is-Union!16938 lt!2472819))))

(declare-fun e!4169728 () Bool)

(assert (=> b!6929402 (= e!4169728 e!4169732)))

(declare-fun b!6929403 () Bool)

(assert (=> b!6929403 (= e!4169731 (matchRSpec!3995 (regTwo!34389 lt!2472819) s!14361))))

(declare-fun b!6929404 () Bool)

(declare-fun c!1286159 () Bool)

(assert (=> b!6929404 (= c!1286159 (is-ElementMatch!16938 lt!2472819))))

(declare-fun e!4169727 () Bool)

(assert (=> b!6929404 (= e!4169727 e!4169728)))

(declare-fun e!4169726 () Bool)

(declare-fun call!629701 () Bool)

(assert (=> b!6929405 (= e!4169726 call!629701)))

(declare-fun bm!629696 () Bool)

(declare-fun c!1286158 () Bool)

(declare-fun Exists!3938 (Int) Bool)

(assert (=> bm!629696 (= call!629701 (Exists!3938 (ite c!1286158 lambda!394327 lambda!394328)))))

(declare-fun e!4169730 () Bool)

(assert (=> b!6929406 (= e!4169730 call!629701)))

(declare-fun b!6929407 () Bool)

(assert (=> b!6929407 (= e!4169732 e!4169726)))

(assert (=> b!6929407 (= c!1286158 (is-Star!16938 lt!2472819))))

(declare-fun bm!629697 () Bool)

(declare-fun call!629702 () Bool)

(declare-fun isEmpty!38824 (List!66691) Bool)

(assert (=> bm!629697 (= call!629702 (isEmpty!38824 s!14361))))

(declare-fun b!6929408 () Bool)

(declare-fun res!2826074 () Bool)

(assert (=> b!6929408 (=> res!2826074 e!4169730)))

(assert (=> b!6929408 (= res!2826074 call!629702)))

(assert (=> b!6929408 (= e!4169726 e!4169730)))

(declare-fun b!6929409 () Bool)

(assert (=> b!6929409 (= e!4169729 call!629702)))

(declare-fun b!6929410 () Bool)

(assert (=> b!6929410 (= e!4169728 (= s!14361 (Cons!66567 (c!1286128 lt!2472819) Nil!66567)))))

(declare-fun b!6929411 () Bool)

(assert (=> b!6929411 (= e!4169729 e!4169727)))

(declare-fun res!2826076 () Bool)

(assert (=> b!6929411 (= res!2826076 (not (is-EmptyLang!16938 lt!2472819)))))

(assert (=> b!6929411 (=> (not res!2826076) (not e!4169727))))

(assert (= (and d!2165909 c!1286156) b!6929409))

(assert (= (and d!2165909 (not c!1286156)) b!6929411))

(assert (= (and b!6929411 res!2826076) b!6929404))

(assert (= (and b!6929404 c!1286159) b!6929410))

(assert (= (and b!6929404 (not c!1286159)) b!6929402))

(assert (= (and b!6929402 c!1286157) b!6929401))

(assert (= (and b!6929402 (not c!1286157)) b!6929407))

(assert (= (and b!6929401 (not res!2826075)) b!6929403))

(assert (= (and b!6929407 c!1286158) b!6929408))

(assert (= (and b!6929407 (not c!1286158)) b!6929405))

(assert (= (and b!6929408 (not res!2826074)) b!6929406))

(assert (= (or b!6929406 b!6929405) bm!629696))

(assert (= (or b!6929409 b!6929408) bm!629697))

(declare-fun m!7637546 () Bool)

(assert (=> b!6929401 m!7637546))

(declare-fun m!7637548 () Bool)

(assert (=> b!6929403 m!7637548))

(declare-fun m!7637550 () Bool)

(assert (=> bm!629696 m!7637550))

(declare-fun m!7637552 () Bool)

(assert (=> bm!629697 m!7637552))

(assert (=> b!6929236 d!2165909))

(declare-fun d!2165911 () Bool)

(assert (=> d!2165911 (= (matchR!9077 lt!2472819 s!14361) (matchRSpec!3995 lt!2472819 s!14361))))

(declare-fun lt!2472842 () Unit!160600)

(declare-fun choose!51606 (Regex!16938 List!66691) Unit!160600)

(assert (=> d!2165911 (= lt!2472842 (choose!51606 lt!2472819 s!14361))))

(assert (=> d!2165911 (validRegex!8644 lt!2472819)))

(assert (=> d!2165911 (= (mainMatchTheorem!3995 lt!2472819 s!14361) lt!2472842)))

(declare-fun bs!1850319 () Bool)

(assert (= bs!1850319 d!2165911))

(assert (=> bs!1850319 m!7637486))

(assert (=> bs!1850319 m!7637494))

(declare-fun m!7637554 () Bool)

(assert (=> bs!1850319 m!7637554))

(declare-fun m!7637556 () Bool)

(assert (=> bs!1850319 m!7637556))

(assert (=> b!6929236 d!2165911))

(declare-fun b!6929444 () Bool)

(declare-fun e!4169747 () Bool)

(declare-fun e!4169751 () Bool)

(assert (=> b!6929444 (= e!4169747 e!4169751)))

(declare-fun res!2826100 () Bool)

(assert (=> b!6929444 (=> res!2826100 e!4169751)))

(declare-fun call!629705 () Bool)

(assert (=> b!6929444 (= res!2826100 call!629705)))

(declare-fun b!6929445 () Bool)

(declare-fun e!4169753 () Bool)

(declare-fun lt!2472845 () Bool)

(assert (=> b!6929445 (= e!4169753 (= lt!2472845 call!629705))))

(declare-fun b!6929446 () Bool)

(declare-fun e!4169748 () Bool)

(assert (=> b!6929446 (= e!4169748 (not lt!2472845))))

(declare-fun b!6929447 () Bool)

(declare-fun e!4169752 () Bool)

(declare-fun derivativeStep!5436 (Regex!16938 C!34146) Regex!16938)

(declare-fun head!13889 (List!66691) C!34146)

(declare-fun tail!12941 (List!66691) List!66691)

(assert (=> b!6929447 (= e!4169752 (matchR!9077 (derivativeStep!5436 lt!2472819 (head!13889 s!14361)) (tail!12941 s!14361)))))

(declare-fun bm!629700 () Bool)

(assert (=> bm!629700 (= call!629705 (isEmpty!38824 s!14361))))

(declare-fun b!6929448 () Bool)

(declare-fun res!2826098 () Bool)

(assert (=> b!6929448 (=> res!2826098 e!4169751)))

(assert (=> b!6929448 (= res!2826098 (not (isEmpty!38824 (tail!12941 s!14361))))))

(declare-fun b!6929449 () Bool)

(declare-fun res!2826094 () Bool)

(declare-fun e!4169749 () Bool)

(assert (=> b!6929449 (=> (not res!2826094) (not e!4169749))))

(assert (=> b!6929449 (= res!2826094 (not call!629705))))

(declare-fun b!6929450 () Bool)

(declare-fun res!2826096 () Bool)

(declare-fun e!4169750 () Bool)

(assert (=> b!6929450 (=> res!2826096 e!4169750)))

(assert (=> b!6929450 (= res!2826096 (not (is-ElementMatch!16938 lt!2472819)))))

(assert (=> b!6929450 (= e!4169748 e!4169750)))

(declare-fun b!6929452 () Bool)

(assert (=> b!6929452 (= e!4169751 (not (= (head!13889 s!14361) (c!1286128 lt!2472819))))))

(declare-fun b!6929453 () Bool)

(assert (=> b!6929453 (= e!4169752 (nullable!6761 lt!2472819))))

(declare-fun b!6929454 () Bool)

(assert (=> b!6929454 (= e!4169753 e!4169748)))

(declare-fun c!1286167 () Bool)

(assert (=> b!6929454 (= c!1286167 (is-EmptyLang!16938 lt!2472819))))

(declare-fun b!6929455 () Bool)

(declare-fun res!2826095 () Bool)

(assert (=> b!6929455 (=> (not res!2826095) (not e!4169749))))

(assert (=> b!6929455 (= res!2826095 (isEmpty!38824 (tail!12941 s!14361)))))

(declare-fun b!6929456 () Bool)

(assert (=> b!6929456 (= e!4169749 (= (head!13889 s!14361) (c!1286128 lt!2472819)))))

(declare-fun b!6929457 () Bool)

(assert (=> b!6929457 (= e!4169750 e!4169747)))

(declare-fun res!2826093 () Bool)

(assert (=> b!6929457 (=> (not res!2826093) (not e!4169747))))

(assert (=> b!6929457 (= res!2826093 (not lt!2472845))))

(declare-fun b!6929451 () Bool)

(declare-fun res!2826097 () Bool)

(assert (=> b!6929451 (=> res!2826097 e!4169750)))

(assert (=> b!6929451 (= res!2826097 e!4169749)))

(declare-fun res!2826099 () Bool)

(assert (=> b!6929451 (=> (not res!2826099) (not e!4169749))))

(assert (=> b!6929451 (= res!2826099 lt!2472845)))

(declare-fun d!2165913 () Bool)

(assert (=> d!2165913 e!4169753))

(declare-fun c!1286166 () Bool)

(assert (=> d!2165913 (= c!1286166 (is-EmptyExpr!16938 lt!2472819))))

(assert (=> d!2165913 (= lt!2472845 e!4169752)))

(declare-fun c!1286168 () Bool)

(assert (=> d!2165913 (= c!1286168 (isEmpty!38824 s!14361))))

(assert (=> d!2165913 (validRegex!8644 lt!2472819)))

(assert (=> d!2165913 (= (matchR!9077 lt!2472819 s!14361) lt!2472845)))

(assert (= (and d!2165913 c!1286168) b!6929453))

(assert (= (and d!2165913 (not c!1286168)) b!6929447))

(assert (= (and d!2165913 c!1286166) b!6929445))

(assert (= (and d!2165913 (not c!1286166)) b!6929454))

(assert (= (and b!6929454 c!1286167) b!6929446))

(assert (= (and b!6929454 (not c!1286167)) b!6929450))

(assert (= (and b!6929450 (not res!2826096)) b!6929451))

(assert (= (and b!6929451 res!2826099) b!6929449))

(assert (= (and b!6929449 res!2826094) b!6929455))

(assert (= (and b!6929455 res!2826095) b!6929456))

(assert (= (and b!6929451 (not res!2826097)) b!6929457))

(assert (= (and b!6929457 res!2826093) b!6929444))

(assert (= (and b!6929444 (not res!2826100)) b!6929448))

(assert (= (and b!6929448 (not res!2826098)) b!6929452))

(assert (= (or b!6929445 b!6929444 b!6929449) bm!629700))

(declare-fun m!7637558 () Bool)

(assert (=> b!6929455 m!7637558))

(assert (=> b!6929455 m!7637558))

(declare-fun m!7637560 () Bool)

(assert (=> b!6929455 m!7637560))

(assert (=> d!2165913 m!7637552))

(assert (=> d!2165913 m!7637556))

(declare-fun m!7637562 () Bool)

(assert (=> b!6929452 m!7637562))

(assert (=> b!6929448 m!7637558))

(assert (=> b!6929448 m!7637558))

(assert (=> b!6929448 m!7637560))

(assert (=> b!6929447 m!7637562))

(assert (=> b!6929447 m!7637562))

(declare-fun m!7637564 () Bool)

(assert (=> b!6929447 m!7637564))

(assert (=> b!6929447 m!7637558))

(assert (=> b!6929447 m!7637564))

(assert (=> b!6929447 m!7637558))

(declare-fun m!7637566 () Bool)

(assert (=> b!6929447 m!7637566))

(declare-fun m!7637568 () Bool)

(assert (=> b!6929453 m!7637568))

(assert (=> bm!629700 m!7637552))

(assert (=> b!6929456 m!7637562))

(assert (=> b!6929236 d!2165913))

(declare-fun bs!1850320 () Bool)

(declare-fun b!6929463 () Bool)

(assert (= bs!1850320 (and b!6929463 b!6929406)))

(declare-fun lambda!394329 () Int)

(assert (=> bs!1850320 (= (and (= (reg!17267 lt!2472820) (reg!17267 lt!2472819)) (= lt!2472820 lt!2472819)) (= lambda!394329 lambda!394327))))

(declare-fun bs!1850321 () Bool)

(assert (= bs!1850321 (and b!6929463 b!6929405)))

(assert (=> bs!1850321 (not (= lambda!394329 lambda!394328))))

(assert (=> b!6929463 true))

(assert (=> b!6929463 true))

(declare-fun bs!1850322 () Bool)

(declare-fun b!6929462 () Bool)

(assert (= bs!1850322 (and b!6929462 b!6929406)))

(declare-fun lambda!394330 () Int)

(assert (=> bs!1850322 (not (= lambda!394330 lambda!394327))))

(declare-fun bs!1850323 () Bool)

(assert (= bs!1850323 (and b!6929462 b!6929405)))

(assert (=> bs!1850323 (= (and (= (regOne!34388 lt!2472820) (regOne!34388 lt!2472819)) (= (regTwo!34388 lt!2472820) (regTwo!34388 lt!2472819))) (= lambda!394330 lambda!394328))))

(declare-fun bs!1850324 () Bool)

(assert (= bs!1850324 (and b!6929462 b!6929463)))

(assert (=> bs!1850324 (not (= lambda!394330 lambda!394329))))

(assert (=> b!6929462 true))

(assert (=> b!6929462 true))

(declare-fun b!6929458 () Bool)

(declare-fun e!4169760 () Bool)

(declare-fun e!4169759 () Bool)

(assert (=> b!6929458 (= e!4169760 e!4169759)))

(declare-fun res!2826102 () Bool)

(assert (=> b!6929458 (= res!2826102 (matchRSpec!3995 (regOne!34389 lt!2472820) s!14361))))

(assert (=> b!6929458 (=> res!2826102 e!4169759)))

(declare-fun d!2165915 () Bool)

(declare-fun c!1286169 () Bool)

(assert (=> d!2165915 (= c!1286169 (is-EmptyExpr!16938 lt!2472820))))

(declare-fun e!4169757 () Bool)

(assert (=> d!2165915 (= (matchRSpec!3995 lt!2472820 s!14361) e!4169757)))

(declare-fun b!6929459 () Bool)

(declare-fun c!1286170 () Bool)

(assert (=> b!6929459 (= c!1286170 (is-Union!16938 lt!2472820))))

(declare-fun e!4169756 () Bool)

(assert (=> b!6929459 (= e!4169756 e!4169760)))

(declare-fun b!6929460 () Bool)

(assert (=> b!6929460 (= e!4169759 (matchRSpec!3995 (regTwo!34389 lt!2472820) s!14361))))

(declare-fun b!6929461 () Bool)

(declare-fun c!1286172 () Bool)

(assert (=> b!6929461 (= c!1286172 (is-ElementMatch!16938 lt!2472820))))

(declare-fun e!4169755 () Bool)

(assert (=> b!6929461 (= e!4169755 e!4169756)))

(declare-fun e!4169754 () Bool)

(declare-fun call!629706 () Bool)

(assert (=> b!6929462 (= e!4169754 call!629706)))

(declare-fun bm!629701 () Bool)

(declare-fun c!1286171 () Bool)

(assert (=> bm!629701 (= call!629706 (Exists!3938 (ite c!1286171 lambda!394329 lambda!394330)))))

(declare-fun e!4169758 () Bool)

(assert (=> b!6929463 (= e!4169758 call!629706)))

(declare-fun b!6929464 () Bool)

(assert (=> b!6929464 (= e!4169760 e!4169754)))

(assert (=> b!6929464 (= c!1286171 (is-Star!16938 lt!2472820))))

(declare-fun bm!629702 () Bool)

(declare-fun call!629707 () Bool)

(assert (=> bm!629702 (= call!629707 (isEmpty!38824 s!14361))))

(declare-fun b!6929465 () Bool)

(declare-fun res!2826101 () Bool)

(assert (=> b!6929465 (=> res!2826101 e!4169758)))

(assert (=> b!6929465 (= res!2826101 call!629707)))

(assert (=> b!6929465 (= e!4169754 e!4169758)))

(declare-fun b!6929466 () Bool)

(assert (=> b!6929466 (= e!4169757 call!629707)))

(declare-fun b!6929467 () Bool)

(assert (=> b!6929467 (= e!4169756 (= s!14361 (Cons!66567 (c!1286128 lt!2472820) Nil!66567)))))

(declare-fun b!6929468 () Bool)

(assert (=> b!6929468 (= e!4169757 e!4169755)))

(declare-fun res!2826103 () Bool)

(assert (=> b!6929468 (= res!2826103 (not (is-EmptyLang!16938 lt!2472820)))))

(assert (=> b!6929468 (=> (not res!2826103) (not e!4169755))))

(assert (= (and d!2165915 c!1286169) b!6929466))

(assert (= (and d!2165915 (not c!1286169)) b!6929468))

(assert (= (and b!6929468 res!2826103) b!6929461))

(assert (= (and b!6929461 c!1286172) b!6929467))

(assert (= (and b!6929461 (not c!1286172)) b!6929459))

(assert (= (and b!6929459 c!1286170) b!6929458))

(assert (= (and b!6929459 (not c!1286170)) b!6929464))

(assert (= (and b!6929458 (not res!2826102)) b!6929460))

(assert (= (and b!6929464 c!1286171) b!6929465))

(assert (= (and b!6929464 (not c!1286171)) b!6929462))

(assert (= (and b!6929465 (not res!2826101)) b!6929463))

(assert (= (or b!6929463 b!6929462) bm!629701))

(assert (= (or b!6929466 b!6929465) bm!629702))

(declare-fun m!7637570 () Bool)

(assert (=> b!6929458 m!7637570))

(declare-fun m!7637572 () Bool)

(assert (=> b!6929460 m!7637572))

(declare-fun m!7637574 () Bool)

(assert (=> bm!629701 m!7637574))

(assert (=> bm!629702 m!7637552))

(assert (=> b!6929236 d!2165915))

(declare-fun d!2165917 () Bool)

(assert (=> d!2165917 (= (matchR!9077 lt!2472820 s!14361) (matchRSpec!3995 lt!2472820 s!14361))))

(declare-fun lt!2472846 () Unit!160600)

(assert (=> d!2165917 (= lt!2472846 (choose!51606 lt!2472820 s!14361))))

(assert (=> d!2165917 (validRegex!8644 lt!2472820)))

(assert (=> d!2165917 (= (mainMatchTheorem!3995 lt!2472820 s!14361) lt!2472846)))

(declare-fun bs!1850325 () Bool)

(assert (= bs!1850325 d!2165917))

(assert (=> bs!1850325 m!7637484))

(assert (=> bs!1850325 m!7637492))

(declare-fun m!7637576 () Bool)

(assert (=> bs!1850325 m!7637576))

(declare-fun m!7637578 () Bool)

(assert (=> bs!1850325 m!7637578))

(assert (=> b!6929236 d!2165917))

(declare-fun b!6929469 () Bool)

(declare-fun e!4169761 () Bool)

(declare-fun e!4169765 () Bool)

(assert (=> b!6929469 (= e!4169761 e!4169765)))

(declare-fun res!2826111 () Bool)

(assert (=> b!6929469 (=> res!2826111 e!4169765)))

(declare-fun call!629708 () Bool)

(assert (=> b!6929469 (= res!2826111 call!629708)))

(declare-fun b!6929470 () Bool)

(declare-fun e!4169767 () Bool)

(declare-fun lt!2472847 () Bool)

(assert (=> b!6929470 (= e!4169767 (= lt!2472847 call!629708))))

(declare-fun b!6929471 () Bool)

(declare-fun e!4169762 () Bool)

(assert (=> b!6929471 (= e!4169762 (not lt!2472847))))

(declare-fun b!6929472 () Bool)

(declare-fun e!4169766 () Bool)

(assert (=> b!6929472 (= e!4169766 (matchR!9077 (derivativeStep!5436 lt!2472820 (head!13889 s!14361)) (tail!12941 s!14361)))))

(declare-fun bm!629703 () Bool)

(assert (=> bm!629703 (= call!629708 (isEmpty!38824 s!14361))))

(declare-fun b!6929473 () Bool)

(declare-fun res!2826109 () Bool)

(assert (=> b!6929473 (=> res!2826109 e!4169765)))

(assert (=> b!6929473 (= res!2826109 (not (isEmpty!38824 (tail!12941 s!14361))))))

(declare-fun b!6929474 () Bool)

(declare-fun res!2826105 () Bool)

(declare-fun e!4169763 () Bool)

(assert (=> b!6929474 (=> (not res!2826105) (not e!4169763))))

(assert (=> b!6929474 (= res!2826105 (not call!629708))))

(declare-fun b!6929475 () Bool)

(declare-fun res!2826107 () Bool)

(declare-fun e!4169764 () Bool)

(assert (=> b!6929475 (=> res!2826107 e!4169764)))

(assert (=> b!6929475 (= res!2826107 (not (is-ElementMatch!16938 lt!2472820)))))

(assert (=> b!6929475 (= e!4169762 e!4169764)))

(declare-fun b!6929477 () Bool)

(assert (=> b!6929477 (= e!4169765 (not (= (head!13889 s!14361) (c!1286128 lt!2472820))))))

(declare-fun b!6929478 () Bool)

(assert (=> b!6929478 (= e!4169766 (nullable!6761 lt!2472820))))

(declare-fun b!6929479 () Bool)

(assert (=> b!6929479 (= e!4169767 e!4169762)))

(declare-fun c!1286174 () Bool)

(assert (=> b!6929479 (= c!1286174 (is-EmptyLang!16938 lt!2472820))))

(declare-fun b!6929480 () Bool)

(declare-fun res!2826106 () Bool)

(assert (=> b!6929480 (=> (not res!2826106) (not e!4169763))))

(assert (=> b!6929480 (= res!2826106 (isEmpty!38824 (tail!12941 s!14361)))))

(declare-fun b!6929481 () Bool)

(assert (=> b!6929481 (= e!4169763 (= (head!13889 s!14361) (c!1286128 lt!2472820)))))

(declare-fun b!6929482 () Bool)

(assert (=> b!6929482 (= e!4169764 e!4169761)))

(declare-fun res!2826104 () Bool)

(assert (=> b!6929482 (=> (not res!2826104) (not e!4169761))))

(assert (=> b!6929482 (= res!2826104 (not lt!2472847))))

(declare-fun b!6929476 () Bool)

(declare-fun res!2826108 () Bool)

(assert (=> b!6929476 (=> res!2826108 e!4169764)))

(assert (=> b!6929476 (= res!2826108 e!4169763)))

(declare-fun res!2826110 () Bool)

(assert (=> b!6929476 (=> (not res!2826110) (not e!4169763))))

(assert (=> b!6929476 (= res!2826110 lt!2472847)))

(declare-fun d!2165919 () Bool)

(assert (=> d!2165919 e!4169767))

(declare-fun c!1286173 () Bool)

(assert (=> d!2165919 (= c!1286173 (is-EmptyExpr!16938 lt!2472820))))

(assert (=> d!2165919 (= lt!2472847 e!4169766)))

(declare-fun c!1286175 () Bool)

(assert (=> d!2165919 (= c!1286175 (isEmpty!38824 s!14361))))

(assert (=> d!2165919 (validRegex!8644 lt!2472820)))

(assert (=> d!2165919 (= (matchR!9077 lt!2472820 s!14361) lt!2472847)))

(assert (= (and d!2165919 c!1286175) b!6929478))

(assert (= (and d!2165919 (not c!1286175)) b!6929472))

(assert (= (and d!2165919 c!1286173) b!6929470))

(assert (= (and d!2165919 (not c!1286173)) b!6929479))

(assert (= (and b!6929479 c!1286174) b!6929471))

(assert (= (and b!6929479 (not c!1286174)) b!6929475))

(assert (= (and b!6929475 (not res!2826107)) b!6929476))

(assert (= (and b!6929476 res!2826110) b!6929474))

(assert (= (and b!6929474 res!2826105) b!6929480))

(assert (= (and b!6929480 res!2826106) b!6929481))

(assert (= (and b!6929476 (not res!2826108)) b!6929482))

(assert (= (and b!6929482 res!2826104) b!6929469))

(assert (= (and b!6929469 (not res!2826111)) b!6929473))

(assert (= (and b!6929473 (not res!2826109)) b!6929477))

(assert (= (or b!6929470 b!6929469 b!6929474) bm!629703))

(assert (=> b!6929480 m!7637558))

(assert (=> b!6929480 m!7637558))

(assert (=> b!6929480 m!7637560))

(assert (=> d!2165919 m!7637552))

(assert (=> d!2165919 m!7637578))

(assert (=> b!6929477 m!7637562))

(assert (=> b!6929473 m!7637558))

(assert (=> b!6929473 m!7637558))

(assert (=> b!6929473 m!7637560))

(assert (=> b!6929472 m!7637562))

(assert (=> b!6929472 m!7637562))

(declare-fun m!7637580 () Bool)

(assert (=> b!6929472 m!7637580))

(assert (=> b!6929472 m!7637558))

(assert (=> b!6929472 m!7637580))

(assert (=> b!6929472 m!7637558))

(declare-fun m!7637582 () Bool)

(assert (=> b!6929472 m!7637582))

(declare-fun m!7637584 () Bool)

(assert (=> b!6929478 m!7637584))

(assert (=> bm!629703 m!7637552))

(assert (=> b!6929481 m!7637562))

(assert (=> b!6929236 d!2165919))

(declare-fun b!6929483 () Bool)

(declare-fun e!4169774 () Bool)

(declare-fun e!4169769 () Bool)

(assert (=> b!6929483 (= e!4169774 e!4169769)))

(declare-fun res!2826115 () Bool)

(assert (=> b!6929483 (= res!2826115 (not (nullable!6761 (reg!17267 r3!135))))))

(assert (=> b!6929483 (=> (not res!2826115) (not e!4169769))))

(declare-fun d!2165921 () Bool)

(declare-fun res!2826116 () Bool)

(declare-fun e!4169768 () Bool)

(assert (=> d!2165921 (=> res!2826116 e!4169768)))

(assert (=> d!2165921 (= res!2826116 (is-ElementMatch!16938 r3!135))))

(assert (=> d!2165921 (= (validRegex!8644 r3!135) e!4169768)))

(declare-fun b!6929484 () Bool)

(assert (=> b!6929484 (= e!4169768 e!4169774)))

(declare-fun c!1286177 () Bool)

(assert (=> b!6929484 (= c!1286177 (is-Star!16938 r3!135))))

(declare-fun b!6929485 () Bool)

(declare-fun res!2826112 () Bool)

(declare-fun e!4169772 () Bool)

(assert (=> b!6929485 (=> res!2826112 e!4169772)))

(assert (=> b!6929485 (= res!2826112 (not (is-Concat!25783 r3!135)))))

(declare-fun e!4169771 () Bool)

(assert (=> b!6929485 (= e!4169771 e!4169772)))

(declare-fun b!6929486 () Bool)

(declare-fun call!629709 () Bool)

(assert (=> b!6929486 (= e!4169769 call!629709)))

(declare-fun bm!629704 () Bool)

(declare-fun call!629711 () Bool)

(declare-fun c!1286176 () Bool)

(assert (=> bm!629704 (= call!629711 (validRegex!8644 (ite c!1286176 (regTwo!34389 r3!135) (regOne!34388 r3!135))))))

(declare-fun b!6929487 () Bool)

(declare-fun e!4169770 () Bool)

(assert (=> b!6929487 (= e!4169770 call!629711)))

(declare-fun b!6929488 () Bool)

(declare-fun e!4169773 () Bool)

(assert (=> b!6929488 (= e!4169772 e!4169773)))

(declare-fun res!2826114 () Bool)

(assert (=> b!6929488 (=> (not res!2826114) (not e!4169773))))

(assert (=> b!6929488 (= res!2826114 call!629711)))

(declare-fun b!6929489 () Bool)

(assert (=> b!6929489 (= e!4169774 e!4169771)))

(assert (=> b!6929489 (= c!1286176 (is-Union!16938 r3!135))))

(declare-fun bm!629705 () Bool)

(assert (=> bm!629705 (= call!629709 (validRegex!8644 (ite c!1286177 (reg!17267 r3!135) (ite c!1286176 (regOne!34389 r3!135) (regTwo!34388 r3!135)))))))

(declare-fun b!6929490 () Bool)

(declare-fun res!2826113 () Bool)

(assert (=> b!6929490 (=> (not res!2826113) (not e!4169770))))

(declare-fun call!629710 () Bool)

(assert (=> b!6929490 (= res!2826113 call!629710)))

(assert (=> b!6929490 (= e!4169771 e!4169770)))

(declare-fun b!6929491 () Bool)

(assert (=> b!6929491 (= e!4169773 call!629710)))

(declare-fun bm!629706 () Bool)

(assert (=> bm!629706 (= call!629710 call!629709)))

(assert (= (and d!2165921 (not res!2826116)) b!6929484))

(assert (= (and b!6929484 c!1286177) b!6929483))

(assert (= (and b!6929484 (not c!1286177)) b!6929489))

(assert (= (and b!6929483 res!2826115) b!6929486))

(assert (= (and b!6929489 c!1286176) b!6929490))

(assert (= (and b!6929489 (not c!1286176)) b!6929485))

(assert (= (and b!6929490 res!2826113) b!6929487))

(assert (= (and b!6929485 (not res!2826112)) b!6929488))

(assert (= (and b!6929488 res!2826114) b!6929491))

(assert (= (or b!6929490 b!6929491) bm!629706))

(assert (= (or b!6929487 b!6929488) bm!629704))

(assert (= (or b!6929486 bm!629706) bm!629705))

(declare-fun m!7637586 () Bool)

(assert (=> b!6929483 m!7637586))

(declare-fun m!7637588 () Bool)

(assert (=> bm!629704 m!7637588))

(declare-fun m!7637590 () Bool)

(assert (=> bm!629705 m!7637590))

(assert (=> b!6929245 d!2165921))

(declare-fun d!2165923 () Bool)

(declare-fun isEmpty!38826 (Option!16707) Bool)

(assert (=> d!2165923 (= (isDefined!13408 (findConcatSeparation!3121 r1!6342 lt!2472816 Nil!66567 s!14361 s!14361)) (not (isEmpty!38826 (findConcatSeparation!3121 r1!6342 lt!2472816 Nil!66567 s!14361 s!14361))))))

(declare-fun bs!1850326 () Bool)

(assert (= bs!1850326 d!2165923))

(assert (=> bs!1850326 m!7637496))

(declare-fun m!7637592 () Bool)

(assert (=> bs!1850326 m!7637592))

(assert (=> b!6929239 d!2165923))

(declare-fun b!6929520 () Bool)

(declare-fun e!4169792 () Bool)

(assert (=> b!6929520 (= e!4169792 (matchR!9077 lt!2472816 s!14361))))

(declare-fun b!6929521 () Bool)

(declare-fun e!4169789 () Bool)

(declare-fun lt!2472855 () Option!16707)

(assert (=> b!6929521 (= e!4169789 (not (isDefined!13408 lt!2472855)))))

(declare-fun b!6929522 () Bool)

(declare-fun e!4169790 () Bool)

(declare-fun ++!14979 (List!66691 List!66691) List!66691)

(declare-fun get!23346 (Option!16707) tuple2!67590)

(assert (=> b!6929522 (= e!4169790 (= (++!14979 (_1!37098 (get!23346 lt!2472855)) (_2!37098 (get!23346 lt!2472855))) s!14361))))

(declare-fun b!6929523 () Bool)

(declare-fun lt!2472856 () Unit!160600)

(declare-fun lt!2472854 () Unit!160600)

(assert (=> b!6929523 (= lt!2472856 lt!2472854)))

(assert (=> b!6929523 (= (++!14979 (++!14979 Nil!66567 (Cons!66567 (h!73015 s!14361) Nil!66567)) (t!380434 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2840 (List!66691 C!34146 List!66691 List!66691) Unit!160600)

(assert (=> b!6929523 (= lt!2472854 (lemmaMoveElementToOtherListKeepsConcatEq!2840 Nil!66567 (h!73015 s!14361) (t!380434 s!14361) s!14361))))

(declare-fun e!4169793 () Option!16707)

(assert (=> b!6929523 (= e!4169793 (findConcatSeparation!3121 r1!6342 lt!2472816 (++!14979 Nil!66567 (Cons!66567 (h!73015 s!14361) Nil!66567)) (t!380434 s!14361) s!14361))))

(declare-fun b!6929524 () Bool)

(assert (=> b!6929524 (= e!4169793 None!16706)))

(declare-fun b!6929525 () Bool)

(declare-fun e!4169791 () Option!16707)

(assert (=> b!6929525 (= e!4169791 (Some!16706 (tuple2!67591 Nil!66567 s!14361)))))

(declare-fun b!6929526 () Bool)

(declare-fun res!2826138 () Bool)

(assert (=> b!6929526 (=> (not res!2826138) (not e!4169790))))

(assert (=> b!6929526 (= res!2826138 (matchR!9077 lt!2472816 (_2!37098 (get!23346 lt!2472855))))))

(declare-fun b!6929527 () Bool)

(assert (=> b!6929527 (= e!4169791 e!4169793)))

(declare-fun c!1286183 () Bool)

(assert (=> b!6929527 (= c!1286183 (is-Nil!66567 s!14361))))

(declare-fun d!2165925 () Bool)

(assert (=> d!2165925 e!4169789))

(declare-fun res!2826140 () Bool)

(assert (=> d!2165925 (=> res!2826140 e!4169789)))

(assert (=> d!2165925 (= res!2826140 e!4169790)))

(declare-fun res!2826139 () Bool)

(assert (=> d!2165925 (=> (not res!2826139) (not e!4169790))))

(assert (=> d!2165925 (= res!2826139 (isDefined!13408 lt!2472855))))

(assert (=> d!2165925 (= lt!2472855 e!4169791)))

(declare-fun c!1286182 () Bool)

(assert (=> d!2165925 (= c!1286182 e!4169792)))

(declare-fun res!2826141 () Bool)

(assert (=> d!2165925 (=> (not res!2826141) (not e!4169792))))

(assert (=> d!2165925 (= res!2826141 (matchR!9077 r1!6342 Nil!66567))))

(assert (=> d!2165925 (validRegex!8644 r1!6342)))

(assert (=> d!2165925 (= (findConcatSeparation!3121 r1!6342 lt!2472816 Nil!66567 s!14361 s!14361) lt!2472855)))

(declare-fun b!6929528 () Bool)

(declare-fun res!2826137 () Bool)

(assert (=> b!6929528 (=> (not res!2826137) (not e!4169790))))

(assert (=> b!6929528 (= res!2826137 (matchR!9077 r1!6342 (_1!37098 (get!23346 lt!2472855))))))

(assert (= (and d!2165925 res!2826141) b!6929520))

(assert (= (and d!2165925 c!1286182) b!6929525))

(assert (= (and d!2165925 (not c!1286182)) b!6929527))

(assert (= (and b!6929527 c!1286183) b!6929524))

(assert (= (and b!6929527 (not c!1286183)) b!6929523))

(assert (= (and d!2165925 res!2826139) b!6929528))

(assert (= (and b!6929528 res!2826137) b!6929526))

(assert (= (and b!6929526 res!2826138) b!6929522))

(assert (= (and d!2165925 (not res!2826140)) b!6929521))

(declare-fun m!7637594 () Bool)

(assert (=> b!6929528 m!7637594))

(declare-fun m!7637596 () Bool)

(assert (=> b!6929528 m!7637596))

(declare-fun m!7637598 () Bool)

(assert (=> b!6929521 m!7637598))

(assert (=> b!6929526 m!7637594))

(declare-fun m!7637600 () Bool)

(assert (=> b!6929526 m!7637600))

(declare-fun m!7637602 () Bool)

(assert (=> b!6929523 m!7637602))

(assert (=> b!6929523 m!7637602))

(declare-fun m!7637604 () Bool)

(assert (=> b!6929523 m!7637604))

(declare-fun m!7637606 () Bool)

(assert (=> b!6929523 m!7637606))

(assert (=> b!6929523 m!7637602))

(declare-fun m!7637608 () Bool)

(assert (=> b!6929523 m!7637608))

(assert (=> b!6929522 m!7637594))

(declare-fun m!7637610 () Bool)

(assert (=> b!6929522 m!7637610))

(declare-fun m!7637612 () Bool)

(assert (=> b!6929520 m!7637612))

(assert (=> d!2165925 m!7637598))

(declare-fun m!7637614 () Bool)

(assert (=> d!2165925 m!7637614))

(assert (=> d!2165925 m!7637482))

(assert (=> b!6929239 d!2165925))

(declare-fun b!6929555 () Bool)

(declare-fun e!4169803 () Bool)

(declare-fun tp!1910018 () Bool)

(declare-fun tp!1910017 () Bool)

(assert (=> b!6929555 (= e!4169803 (and tp!1910018 tp!1910017))))

(assert (=> b!6929233 (= tp!1909944 e!4169803)))

(declare-fun b!6929554 () Bool)

(assert (=> b!6929554 (= e!4169803 tp_is_empty!43101)))

(declare-fun b!6929556 () Bool)

(declare-fun tp!1910015 () Bool)

(assert (=> b!6929556 (= e!4169803 tp!1910015)))

(declare-fun b!6929557 () Bool)

(declare-fun tp!1910016 () Bool)

(declare-fun tp!1910014 () Bool)

(assert (=> b!6929557 (= e!4169803 (and tp!1910016 tp!1910014))))

(assert (= (and b!6929233 (is-ElementMatch!16938 (reg!17267 r3!135))) b!6929554))

(assert (= (and b!6929233 (is-Concat!25783 (reg!17267 r3!135))) b!6929555))

(assert (= (and b!6929233 (is-Star!16938 (reg!17267 r3!135))) b!6929556))

(assert (= (and b!6929233 (is-Union!16938 (reg!17267 r3!135))) b!6929557))

(declare-fun b!6929559 () Bool)

(declare-fun e!4169804 () Bool)

(declare-fun tp!1910023 () Bool)

(declare-fun tp!1910022 () Bool)

(assert (=> b!6929559 (= e!4169804 (and tp!1910023 tp!1910022))))

(assert (=> b!6929232 (= tp!1909949 e!4169804)))

(declare-fun b!6929558 () Bool)

(assert (=> b!6929558 (= e!4169804 tp_is_empty!43101)))

(declare-fun b!6929560 () Bool)

(declare-fun tp!1910020 () Bool)

(assert (=> b!6929560 (= e!4169804 tp!1910020)))

(declare-fun b!6929561 () Bool)

(declare-fun tp!1910021 () Bool)

(declare-fun tp!1910019 () Bool)

(assert (=> b!6929561 (= e!4169804 (and tp!1910021 tp!1910019))))

(assert (= (and b!6929232 (is-ElementMatch!16938 (regOne!34388 r3!135))) b!6929558))

(assert (= (and b!6929232 (is-Concat!25783 (regOne!34388 r3!135))) b!6929559))

(assert (= (and b!6929232 (is-Star!16938 (regOne!34388 r3!135))) b!6929560))

(assert (= (and b!6929232 (is-Union!16938 (regOne!34388 r3!135))) b!6929561))

(declare-fun b!6929563 () Bool)

(declare-fun e!4169805 () Bool)

(declare-fun tp!1910028 () Bool)

(declare-fun tp!1910027 () Bool)

(assert (=> b!6929563 (= e!4169805 (and tp!1910028 tp!1910027))))

(assert (=> b!6929232 (= tp!1909940 e!4169805)))

(declare-fun b!6929562 () Bool)

(assert (=> b!6929562 (= e!4169805 tp_is_empty!43101)))

(declare-fun b!6929564 () Bool)

(declare-fun tp!1910025 () Bool)

(assert (=> b!6929564 (= e!4169805 tp!1910025)))

(declare-fun b!6929565 () Bool)

(declare-fun tp!1910026 () Bool)

(declare-fun tp!1910024 () Bool)

(assert (=> b!6929565 (= e!4169805 (and tp!1910026 tp!1910024))))

(assert (= (and b!6929232 (is-ElementMatch!16938 (regTwo!34388 r3!135))) b!6929562))

(assert (= (and b!6929232 (is-Concat!25783 (regTwo!34388 r3!135))) b!6929563))

(assert (= (and b!6929232 (is-Star!16938 (regTwo!34388 r3!135))) b!6929564))

(assert (= (and b!6929232 (is-Union!16938 (regTwo!34388 r3!135))) b!6929565))

(declare-fun b!6929567 () Bool)

(declare-fun e!4169806 () Bool)

(declare-fun tp!1910033 () Bool)

(declare-fun tp!1910032 () Bool)

(assert (=> b!6929567 (= e!4169806 (and tp!1910033 tp!1910032))))

(assert (=> b!6929237 (= tp!1909954 e!4169806)))

(declare-fun b!6929566 () Bool)

(assert (=> b!6929566 (= e!4169806 tp_is_empty!43101)))

(declare-fun b!6929568 () Bool)

(declare-fun tp!1910030 () Bool)

(assert (=> b!6929568 (= e!4169806 tp!1910030)))

(declare-fun b!6929569 () Bool)

(declare-fun tp!1910031 () Bool)

(declare-fun tp!1910029 () Bool)

(assert (=> b!6929569 (= e!4169806 (and tp!1910031 tp!1910029))))

(assert (= (and b!6929237 (is-ElementMatch!16938 (regOne!34388 r2!6280))) b!6929566))

(assert (= (and b!6929237 (is-Concat!25783 (regOne!34388 r2!6280))) b!6929567))

(assert (= (and b!6929237 (is-Star!16938 (regOne!34388 r2!6280))) b!6929568))

(assert (= (and b!6929237 (is-Union!16938 (regOne!34388 r2!6280))) b!6929569))

(declare-fun b!6929571 () Bool)

(declare-fun e!4169807 () Bool)

(declare-fun tp!1910038 () Bool)

(declare-fun tp!1910037 () Bool)

(assert (=> b!6929571 (= e!4169807 (and tp!1910038 tp!1910037))))

(assert (=> b!6929237 (= tp!1909945 e!4169807)))

(declare-fun b!6929570 () Bool)

(assert (=> b!6929570 (= e!4169807 tp_is_empty!43101)))

(declare-fun b!6929572 () Bool)

(declare-fun tp!1910035 () Bool)

(assert (=> b!6929572 (= e!4169807 tp!1910035)))

(declare-fun b!6929573 () Bool)

(declare-fun tp!1910036 () Bool)

(declare-fun tp!1910034 () Bool)

(assert (=> b!6929573 (= e!4169807 (and tp!1910036 tp!1910034))))

(assert (= (and b!6929237 (is-ElementMatch!16938 (regTwo!34388 r2!6280))) b!6929570))

(assert (= (and b!6929237 (is-Concat!25783 (regTwo!34388 r2!6280))) b!6929571))

(assert (= (and b!6929237 (is-Star!16938 (regTwo!34388 r2!6280))) b!6929572))

(assert (= (and b!6929237 (is-Union!16938 (regTwo!34388 r2!6280))) b!6929573))

(declare-fun b!6929575 () Bool)

(declare-fun e!4169808 () Bool)

(declare-fun tp!1910043 () Bool)

(declare-fun tp!1910042 () Bool)

(assert (=> b!6929575 (= e!4169808 (and tp!1910043 tp!1910042))))

(assert (=> b!6929242 (= tp!1909943 e!4169808)))

(declare-fun b!6929574 () Bool)

(assert (=> b!6929574 (= e!4169808 tp_is_empty!43101)))

(declare-fun b!6929576 () Bool)

(declare-fun tp!1910040 () Bool)

(assert (=> b!6929576 (= e!4169808 tp!1910040)))

(declare-fun b!6929577 () Bool)

(declare-fun tp!1910041 () Bool)

(declare-fun tp!1910039 () Bool)

(assert (=> b!6929577 (= e!4169808 (and tp!1910041 tp!1910039))))

(assert (= (and b!6929242 (is-ElementMatch!16938 (regOne!34388 r1!6342))) b!6929574))

(assert (= (and b!6929242 (is-Concat!25783 (regOne!34388 r1!6342))) b!6929575))

(assert (= (and b!6929242 (is-Star!16938 (regOne!34388 r1!6342))) b!6929576))

(assert (= (and b!6929242 (is-Union!16938 (regOne!34388 r1!6342))) b!6929577))

(declare-fun b!6929579 () Bool)

(declare-fun e!4169809 () Bool)

(declare-fun tp!1910048 () Bool)

(declare-fun tp!1910047 () Bool)

(assert (=> b!6929579 (= e!4169809 (and tp!1910048 tp!1910047))))

(assert (=> b!6929242 (= tp!1909952 e!4169809)))

(declare-fun b!6929578 () Bool)

(assert (=> b!6929578 (= e!4169809 tp_is_empty!43101)))

(declare-fun b!6929580 () Bool)

(declare-fun tp!1910045 () Bool)

(assert (=> b!6929580 (= e!4169809 tp!1910045)))

(declare-fun b!6929581 () Bool)

(declare-fun tp!1910046 () Bool)

(declare-fun tp!1910044 () Bool)

(assert (=> b!6929581 (= e!4169809 (and tp!1910046 tp!1910044))))

(assert (= (and b!6929242 (is-ElementMatch!16938 (regTwo!34388 r1!6342))) b!6929578))

(assert (= (and b!6929242 (is-Concat!25783 (regTwo!34388 r1!6342))) b!6929579))

(assert (= (and b!6929242 (is-Star!16938 (regTwo!34388 r1!6342))) b!6929580))

(assert (= (and b!6929242 (is-Union!16938 (regTwo!34388 r1!6342))) b!6929581))

(declare-fun b!6929583 () Bool)

(declare-fun e!4169810 () Bool)

(declare-fun tp!1910053 () Bool)

(declare-fun tp!1910052 () Bool)

(assert (=> b!6929583 (= e!4169810 (and tp!1910053 tp!1910052))))

(assert (=> b!6929247 (= tp!1909950 e!4169810)))

(declare-fun b!6929582 () Bool)

(assert (=> b!6929582 (= e!4169810 tp_is_empty!43101)))

(declare-fun b!6929584 () Bool)

(declare-fun tp!1910050 () Bool)

(assert (=> b!6929584 (= e!4169810 tp!1910050)))

(declare-fun b!6929585 () Bool)

(declare-fun tp!1910051 () Bool)

(declare-fun tp!1910049 () Bool)

(assert (=> b!6929585 (= e!4169810 (and tp!1910051 tp!1910049))))

(assert (= (and b!6929247 (is-ElementMatch!16938 (reg!17267 r1!6342))) b!6929582))

(assert (= (and b!6929247 (is-Concat!25783 (reg!17267 r1!6342))) b!6929583))

(assert (= (and b!6929247 (is-Star!16938 (reg!17267 r1!6342))) b!6929584))

(assert (= (and b!6929247 (is-Union!16938 (reg!17267 r1!6342))) b!6929585))

(declare-fun b!6929587 () Bool)

(declare-fun e!4169811 () Bool)

(declare-fun tp!1910058 () Bool)

(declare-fun tp!1910057 () Bool)

(assert (=> b!6929587 (= e!4169811 (and tp!1910058 tp!1910057))))

(assert (=> b!6929246 (= tp!1909942 e!4169811)))

(declare-fun b!6929586 () Bool)

(assert (=> b!6929586 (= e!4169811 tp_is_empty!43101)))

(declare-fun b!6929588 () Bool)

(declare-fun tp!1910055 () Bool)

(assert (=> b!6929588 (= e!4169811 tp!1910055)))

(declare-fun b!6929589 () Bool)

(declare-fun tp!1910056 () Bool)

(declare-fun tp!1910054 () Bool)

(assert (=> b!6929589 (= e!4169811 (and tp!1910056 tp!1910054))))

(assert (= (and b!6929246 (is-ElementMatch!16938 (regOne!34389 r3!135))) b!6929586))

(assert (= (and b!6929246 (is-Concat!25783 (regOne!34389 r3!135))) b!6929587))

(assert (= (and b!6929246 (is-Star!16938 (regOne!34389 r3!135))) b!6929588))

(assert (= (and b!6929246 (is-Union!16938 (regOne!34389 r3!135))) b!6929589))

(declare-fun b!6929591 () Bool)

(declare-fun e!4169812 () Bool)

(declare-fun tp!1910063 () Bool)

(declare-fun tp!1910062 () Bool)

(assert (=> b!6929591 (= e!4169812 (and tp!1910063 tp!1910062))))

(assert (=> b!6929246 (= tp!1909947 e!4169812)))

(declare-fun b!6929590 () Bool)

(assert (=> b!6929590 (= e!4169812 tp_is_empty!43101)))

(declare-fun b!6929592 () Bool)

(declare-fun tp!1910060 () Bool)

(assert (=> b!6929592 (= e!4169812 tp!1910060)))

(declare-fun b!6929593 () Bool)

(declare-fun tp!1910061 () Bool)

(declare-fun tp!1910059 () Bool)

(assert (=> b!6929593 (= e!4169812 (and tp!1910061 tp!1910059))))

(assert (= (and b!6929246 (is-ElementMatch!16938 (regTwo!34389 r3!135))) b!6929590))

(assert (= (and b!6929246 (is-Concat!25783 (regTwo!34389 r3!135))) b!6929591))

(assert (= (and b!6929246 (is-Star!16938 (regTwo!34389 r3!135))) b!6929592))

(assert (= (and b!6929246 (is-Union!16938 (regTwo!34389 r3!135))) b!6929593))

(declare-fun b!6929595 () Bool)

(declare-fun e!4169813 () Bool)

(declare-fun tp!1910068 () Bool)

(declare-fun tp!1910067 () Bool)

(assert (=> b!6929595 (= e!4169813 (and tp!1910068 tp!1910067))))

(assert (=> b!6929230 (= tp!1909946 e!4169813)))

(declare-fun b!6929594 () Bool)

(assert (=> b!6929594 (= e!4169813 tp_is_empty!43101)))

(declare-fun b!6929596 () Bool)

(declare-fun tp!1910065 () Bool)

(assert (=> b!6929596 (= e!4169813 tp!1910065)))

(declare-fun b!6929597 () Bool)

(declare-fun tp!1910066 () Bool)

(declare-fun tp!1910064 () Bool)

(assert (=> b!6929597 (= e!4169813 (and tp!1910066 tp!1910064))))

(assert (= (and b!6929230 (is-ElementMatch!16938 (regOne!34389 r2!6280))) b!6929594))

(assert (= (and b!6929230 (is-Concat!25783 (regOne!34389 r2!6280))) b!6929595))

(assert (= (and b!6929230 (is-Star!16938 (regOne!34389 r2!6280))) b!6929596))

(assert (= (and b!6929230 (is-Union!16938 (regOne!34389 r2!6280))) b!6929597))

(declare-fun b!6929599 () Bool)

(declare-fun e!4169814 () Bool)

(declare-fun tp!1910073 () Bool)

(declare-fun tp!1910072 () Bool)

(assert (=> b!6929599 (= e!4169814 (and tp!1910073 tp!1910072))))

(assert (=> b!6929230 (= tp!1909953 e!4169814)))

(declare-fun b!6929598 () Bool)

(assert (=> b!6929598 (= e!4169814 tp_is_empty!43101)))

(declare-fun b!6929600 () Bool)

(declare-fun tp!1910070 () Bool)

(assert (=> b!6929600 (= e!4169814 tp!1910070)))

(declare-fun b!6929601 () Bool)

(declare-fun tp!1910071 () Bool)

(declare-fun tp!1910069 () Bool)

(assert (=> b!6929601 (= e!4169814 (and tp!1910071 tp!1910069))))

(assert (= (and b!6929230 (is-ElementMatch!16938 (regTwo!34389 r2!6280))) b!6929598))

(assert (= (and b!6929230 (is-Concat!25783 (regTwo!34389 r2!6280))) b!6929599))

(assert (= (and b!6929230 (is-Star!16938 (regTwo!34389 r2!6280))) b!6929600))

(assert (= (and b!6929230 (is-Union!16938 (regTwo!34389 r2!6280))) b!6929601))

(declare-fun b!6929603 () Bool)

(declare-fun e!4169815 () Bool)

(declare-fun tp!1910078 () Bool)

(declare-fun tp!1910077 () Bool)

(assert (=> b!6929603 (= e!4169815 (and tp!1910078 tp!1910077))))

(assert (=> b!6929235 (= tp!1909948 e!4169815)))

(declare-fun b!6929602 () Bool)

(assert (=> b!6929602 (= e!4169815 tp_is_empty!43101)))

(declare-fun b!6929604 () Bool)

(declare-fun tp!1910075 () Bool)

(assert (=> b!6929604 (= e!4169815 tp!1910075)))

(declare-fun b!6929605 () Bool)

(declare-fun tp!1910076 () Bool)

(declare-fun tp!1910074 () Bool)

(assert (=> b!6929605 (= e!4169815 (and tp!1910076 tp!1910074))))

(assert (= (and b!6929235 (is-ElementMatch!16938 (regOne!34389 r1!6342))) b!6929602))

(assert (= (and b!6929235 (is-Concat!25783 (regOne!34389 r1!6342))) b!6929603))

(assert (= (and b!6929235 (is-Star!16938 (regOne!34389 r1!6342))) b!6929604))

(assert (= (and b!6929235 (is-Union!16938 (regOne!34389 r1!6342))) b!6929605))

(declare-fun b!6929607 () Bool)

(declare-fun e!4169816 () Bool)

(declare-fun tp!1910083 () Bool)

(declare-fun tp!1910082 () Bool)

(assert (=> b!6929607 (= e!4169816 (and tp!1910083 tp!1910082))))

(assert (=> b!6929235 (= tp!1909955 e!4169816)))

(declare-fun b!6929606 () Bool)

(assert (=> b!6929606 (= e!4169816 tp_is_empty!43101)))

(declare-fun b!6929608 () Bool)

(declare-fun tp!1910080 () Bool)

(assert (=> b!6929608 (= e!4169816 tp!1910080)))

(declare-fun b!6929609 () Bool)

(declare-fun tp!1910081 () Bool)

(declare-fun tp!1910079 () Bool)

(assert (=> b!6929609 (= e!4169816 (and tp!1910081 tp!1910079))))

(assert (= (and b!6929235 (is-ElementMatch!16938 (regTwo!34389 r1!6342))) b!6929606))

(assert (= (and b!6929235 (is-Concat!25783 (regTwo!34389 r1!6342))) b!6929607))

(assert (= (and b!6929235 (is-Star!16938 (regTwo!34389 r1!6342))) b!6929608))

(assert (= (and b!6929235 (is-Union!16938 (regTwo!34389 r1!6342))) b!6929609))

(declare-fun b!6929611 () Bool)

(declare-fun e!4169817 () Bool)

(declare-fun tp!1910088 () Bool)

(declare-fun tp!1910087 () Bool)

(assert (=> b!6929611 (= e!4169817 (and tp!1910088 tp!1910087))))

(assert (=> b!6929234 (= tp!1909941 e!4169817)))

(declare-fun b!6929610 () Bool)

(assert (=> b!6929610 (= e!4169817 tp_is_empty!43101)))

(declare-fun b!6929612 () Bool)

(declare-fun tp!1910085 () Bool)

(assert (=> b!6929612 (= e!4169817 tp!1910085)))

(declare-fun b!6929613 () Bool)

(declare-fun tp!1910086 () Bool)

(declare-fun tp!1910084 () Bool)

(assert (=> b!6929613 (= e!4169817 (and tp!1910086 tp!1910084))))

(assert (= (and b!6929234 (is-ElementMatch!16938 (reg!17267 r2!6280))) b!6929610))

(assert (= (and b!6929234 (is-Concat!25783 (reg!17267 r2!6280))) b!6929611))

(assert (= (and b!6929234 (is-Star!16938 (reg!17267 r2!6280))) b!6929612))

(assert (= (and b!6929234 (is-Union!16938 (reg!17267 r2!6280))) b!6929613))

(declare-fun b!6929618 () Bool)

(declare-fun e!4169820 () Bool)

(declare-fun tp!1910091 () Bool)

(assert (=> b!6929618 (= e!4169820 (and tp_is_empty!43101 tp!1910091))))

(assert (=> b!6929244 (= tp!1909951 e!4169820)))

(assert (= (and b!6929244 (is-Cons!66567 (t!380434 s!14361))) b!6929618))

(push 1)

(assert (not b!6929607))

(assert (not b!6929597))

(assert (not bm!629703))

(assert (not b!6929576))

(assert (not d!2165919))

(assert (not bm!629696))

(assert (not b!6929593))

(assert (not b!6929458))

(assert (not bm!629683))

(assert (not b!6929568))

(assert (not b!6929453))

(assert (not b!6929522))

(assert (not b!6929557))

(assert (not bm!629697))

(assert (not bm!629686))

(assert (not b!6929403))

(assert (not bm!629704))

(assert (not b!6929605))

(assert (not b!6929604))

(assert (not b!6929613))

(assert (not b!6929584))

(assert (not b!6929577))

(assert (not b!6929478))

(assert (not b!6929455))

(assert (not b!6929591))

(assert (not b!6929521))

(assert (not d!2165923))

(assert (not bm!629689))

(assert (not b!6929472))

(assert (not b!6929526))

(assert (not d!2165925))

(assert (not b!6929520))

(assert (not b!6929481))

(assert tp_is_empty!43101)

(assert (not b!6929595))

(assert (not b!6929618))

(assert (not b!6929572))

(assert (not b!6929611))

(assert (not b!6929575))

(assert (not b!6929583))

(assert (not b!6929523))

(assert (not b!6929483))

(assert (not b!6929564))

(assert (not b!6929585))

(assert (not b!6929581))

(assert (not b!6929579))

(assert (not b!6929567))

(assert (not b!6929608))

(assert (not bm!629684))

(assert (not d!2165913))

(assert (not b!6929600))

(assert (not b!6929477))

(assert (not b!6929480))

(assert (not bm!629700))

(assert (not b!6929559))

(assert (not b!6929599))

(assert (not b!6929580))

(assert (not b!6929560))

(assert (not b!6929612))

(assert (not b!6929447))

(assert (not bm!629702))

(assert (not b!6929473))

(assert (not b!6929563))

(assert (not b!6929603))

(assert (not bm!629701))

(assert (not b!6929556))

(assert (not b!6929588))

(assert (not b!6929601))

(assert (not b!6929592))

(assert (not b!6929360))

(assert (not b!6929456))

(assert (not b!6929401))

(assert (not bm!629705))

(assert (not b!6929571))

(assert (not b!6929569))

(assert (not b!6929573))

(assert (not b!6929589))

(assert (not bm!629690))

(assert (not bm!629687))

(assert (not b!6929596))

(assert (not b!6929342))

(assert (not b!6929460))

(assert (not b!6929528))

(assert (not b!6929587))

(assert (not b!6929565))

(assert (not b!6929555))

(assert (not b!6929452))

(assert (not b!6929351))

(assert (not b!6929561))

(assert (not b!6929609))

(assert (not d!2165911))

(assert (not b!6929448))

(assert (not d!2165917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

