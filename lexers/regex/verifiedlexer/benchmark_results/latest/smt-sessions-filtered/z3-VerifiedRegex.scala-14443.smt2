; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752632 () Bool)

(assert start!752632)

(declare-fun b!7997246 () Bool)

(declare-fun e!4711627 () Bool)

(declare-fun tp_is_empty!53677 () Bool)

(assert (=> b!7997246 (= e!4711627 tp_is_empty!53677)))

(declare-fun b!7997247 () Bool)

(declare-fun tp!2391195 () Bool)

(declare-fun tp!2391194 () Bool)

(assert (=> b!7997247 (= e!4711627 (and tp!2391195 tp!2391194))))

(declare-fun b!7997248 () Bool)

(declare-fun e!4711626 () Bool)

(declare-fun tp!2391201 () Bool)

(assert (=> b!7997248 (= e!4711626 tp!2391201)))

(declare-fun b!7997249 () Bool)

(declare-fun res!3163326 () Bool)

(declare-fun e!4711624 () Bool)

(assert (=> b!7997249 (=> (not res!3163326) (not e!4711624))))

(declare-datatypes ((C!43472 0))(
  ( (C!43473 (val!32284 Int)) )
))
(declare-datatypes ((Regex!21567 0))(
  ( (ElementMatch!21567 (c!1468360 C!43472)) (Concat!30566 (regOne!43646 Regex!21567) (regTwo!43646 Regex!21567)) (EmptyExpr!21567) (Star!21567 (reg!21896 Regex!21567)) (EmptyLang!21567) (Union!21567 (regOne!43647 Regex!21567) (regTwo!43647 Regex!21567)) )
))
(declare-fun r!24786 () Regex!21567)

(declare-datatypes ((List!74796 0))(
  ( (Nil!74672) (Cons!74672 (h!81120 C!43472) (t!390539 List!74796)) )
))
(declare-fun input!8036 () List!74796)

(declare-fun baseR!141 () Regex!21567)

(declare-fun derivative!753 (Regex!21567 List!74796) Regex!21567)

(assert (=> b!7997249 (= res!3163326 (= (derivative!753 baseR!141 input!8036) r!24786))))

(declare-fun b!7997250 () Bool)

(declare-fun tp!2391197 () Bool)

(assert (=> b!7997250 (= e!4711627 tp!2391197)))

(declare-fun res!3163325 () Bool)

(assert (=> start!752632 (=> (not res!3163325) (not e!4711624))))

(declare-fun validRegex!11871 (Regex!21567) Bool)

(assert (=> start!752632 (= res!3163325 (validRegex!11871 baseR!141))))

(assert (=> start!752632 e!4711624))

(assert (=> start!752632 e!4711626))

(declare-fun e!4711625 () Bool)

(assert (=> start!752632 e!4711625))

(assert (=> start!752632 e!4711627))

(declare-fun b!7997251 () Bool)

(declare-fun tp!2391192 () Bool)

(assert (=> b!7997251 (= e!4711625 (and tp_is_empty!53677 tp!2391192))))

(declare-fun b!7997252 () Bool)

(assert (=> b!7997252 (= e!4711626 tp_is_empty!53677)))

(declare-fun b!7997253 () Bool)

(declare-fun size!43493 (List!74796) Int)

(assert (=> b!7997253 (= e!4711624 (< (size!43493 input!8036) 0))))

(declare-fun b!7997254 () Bool)

(declare-fun tp!2391199 () Bool)

(declare-fun tp!2391202 () Bool)

(assert (=> b!7997254 (= e!4711626 (and tp!2391199 tp!2391202))))

(declare-fun b!7997255 () Bool)

(declare-fun tp!2391198 () Bool)

(declare-fun tp!2391196 () Bool)

(assert (=> b!7997255 (= e!4711626 (and tp!2391198 tp!2391196))))

(declare-fun b!7997256 () Bool)

(declare-fun tp!2391200 () Bool)

(declare-fun tp!2391193 () Bool)

(assert (=> b!7997256 (= e!4711627 (and tp!2391200 tp!2391193))))

(assert (= (and start!752632 res!3163325) b!7997249))

(assert (= (and b!7997249 res!3163326) b!7997253))

(get-info :version)

(assert (= (and start!752632 ((_ is ElementMatch!21567) baseR!141)) b!7997252))

(assert (= (and start!752632 ((_ is Concat!30566) baseR!141)) b!7997255))

(assert (= (and start!752632 ((_ is Star!21567) baseR!141)) b!7997248))

(assert (= (and start!752632 ((_ is Union!21567) baseR!141)) b!7997254))

(assert (= (and start!752632 ((_ is Cons!74672) input!8036)) b!7997251))

(assert (= (and start!752632 ((_ is ElementMatch!21567) r!24786)) b!7997246))

(assert (= (and start!752632 ((_ is Concat!30566) r!24786)) b!7997247))

(assert (= (and start!752632 ((_ is Star!21567) r!24786)) b!7997250))

(assert (= (and start!752632 ((_ is Union!21567) r!24786)) b!7997256))

(declare-fun m!8367328 () Bool)

(assert (=> b!7997249 m!8367328))

(declare-fun m!8367330 () Bool)

(assert (=> start!752632 m!8367330))

(declare-fun m!8367332 () Bool)

(assert (=> b!7997253 m!8367332))

(check-sat (not b!7997249) (not b!7997247) tp_is_empty!53677 (not b!7997250) (not b!7997248) (not b!7997255) (not b!7997256) (not b!7997253) (not b!7997254) (not start!752632) (not b!7997251))
(check-sat)
(get-model)

(declare-fun d!2386372 () Bool)

(declare-fun lt!2713452 () Regex!21567)

(assert (=> d!2386372 (validRegex!11871 lt!2713452)))

(declare-fun e!4711630 () Regex!21567)

(assert (=> d!2386372 (= lt!2713452 e!4711630)))

(declare-fun c!1468363 () Bool)

(assert (=> d!2386372 (= c!1468363 ((_ is Cons!74672) input!8036))))

(assert (=> d!2386372 (validRegex!11871 baseR!141)))

(assert (=> d!2386372 (= (derivative!753 baseR!141 input!8036) lt!2713452)))

(declare-fun b!7997261 () Bool)

(declare-fun derivativeStep!6581 (Regex!21567 C!43472) Regex!21567)

(assert (=> b!7997261 (= e!4711630 (derivative!753 (derivativeStep!6581 baseR!141 (h!81120 input!8036)) (t!390539 input!8036)))))

(declare-fun b!7997262 () Bool)

(assert (=> b!7997262 (= e!4711630 baseR!141)))

(assert (= (and d!2386372 c!1468363) b!7997261))

(assert (= (and d!2386372 (not c!1468363)) b!7997262))

(declare-fun m!8367334 () Bool)

(assert (=> d!2386372 m!8367334))

(assert (=> d!2386372 m!8367330))

(declare-fun m!8367336 () Bool)

(assert (=> b!7997261 m!8367336))

(assert (=> b!7997261 m!8367336))

(declare-fun m!8367338 () Bool)

(assert (=> b!7997261 m!8367338))

(assert (=> b!7997249 d!2386372))

(declare-fun d!2386376 () Bool)

(declare-fun lt!2713458 () Int)

(assert (=> d!2386376 (>= lt!2713458 0)))

(declare-fun e!4711636 () Int)

(assert (=> d!2386376 (= lt!2713458 e!4711636)))

(declare-fun c!1468369 () Bool)

(assert (=> d!2386376 (= c!1468369 ((_ is Nil!74672) input!8036))))

(assert (=> d!2386376 (= (size!43493 input!8036) lt!2713458)))

(declare-fun b!7997273 () Bool)

(assert (=> b!7997273 (= e!4711636 0)))

(declare-fun b!7997274 () Bool)

(assert (=> b!7997274 (= e!4711636 (+ 1 (size!43493 (t!390539 input!8036))))))

(assert (= (and d!2386376 c!1468369) b!7997273))

(assert (= (and d!2386376 (not c!1468369)) b!7997274))

(declare-fun m!8367342 () Bool)

(assert (=> b!7997274 m!8367342))

(assert (=> b!7997253 d!2386376))

(declare-fun c!1468381 () Bool)

(declare-fun c!1468380 () Bool)

(declare-fun call!742836 () Bool)

(declare-fun bm!742831 () Bool)

(assert (=> bm!742831 (= call!742836 (validRegex!11871 (ite c!1468381 (reg!21896 baseR!141) (ite c!1468380 (regTwo!43647 baseR!141) (regOne!43646 baseR!141)))))))

(declare-fun b!7997320 () Bool)

(declare-fun e!4711672 () Bool)

(declare-fun call!742837 () Bool)

(assert (=> b!7997320 (= e!4711672 call!742837)))

(declare-fun b!7997321 () Bool)

(declare-fun e!4711674 () Bool)

(declare-fun e!4711676 () Bool)

(assert (=> b!7997321 (= e!4711674 e!4711676)))

(assert (=> b!7997321 (= c!1468381 ((_ is Star!21567) baseR!141))))

(declare-fun d!2386380 () Bool)

(declare-fun res!3163355 () Bool)

(assert (=> d!2386380 (=> res!3163355 e!4711674)))

(assert (=> d!2386380 (= res!3163355 ((_ is ElementMatch!21567) baseR!141))))

(assert (=> d!2386380 (= (validRegex!11871 baseR!141) e!4711674)))

(declare-fun b!7997322 () Bool)

(declare-fun res!3163356 () Bool)

(declare-fun e!4711675 () Bool)

(assert (=> b!7997322 (=> res!3163356 e!4711675)))

(assert (=> b!7997322 (= res!3163356 (not ((_ is Concat!30566) baseR!141)))))

(declare-fun e!4711673 () Bool)

(assert (=> b!7997322 (= e!4711673 e!4711675)))

(declare-fun b!7997323 () Bool)

(declare-fun e!4711677 () Bool)

(assert (=> b!7997323 (= e!4711675 e!4711677)))

(declare-fun res!3163353 () Bool)

(assert (=> b!7997323 (=> (not res!3163353) (not e!4711677))))

(assert (=> b!7997323 (= res!3163353 call!742837)))

(declare-fun bm!742832 () Bool)

(assert (=> bm!742832 (= call!742837 call!742836)))

(declare-fun bm!742833 () Bool)

(declare-fun call!742838 () Bool)

(assert (=> bm!742833 (= call!742838 (validRegex!11871 (ite c!1468380 (regOne!43647 baseR!141) (regTwo!43646 baseR!141))))))

(declare-fun b!7997324 () Bool)

(declare-fun e!4711678 () Bool)

(assert (=> b!7997324 (= e!4711678 call!742836)))

(declare-fun b!7997325 () Bool)

(assert (=> b!7997325 (= e!4711677 call!742838)))

(declare-fun b!7997326 () Bool)

(assert (=> b!7997326 (= e!4711676 e!4711673)))

(assert (=> b!7997326 (= c!1468380 ((_ is Union!21567) baseR!141))))

(declare-fun b!7997327 () Bool)

(declare-fun res!3163352 () Bool)

(assert (=> b!7997327 (=> (not res!3163352) (not e!4711672))))

(assert (=> b!7997327 (= res!3163352 call!742838)))

(assert (=> b!7997327 (= e!4711673 e!4711672)))

(declare-fun b!7997328 () Bool)

(assert (=> b!7997328 (= e!4711676 e!4711678)))

(declare-fun res!3163354 () Bool)

(declare-fun nullable!9651 (Regex!21567) Bool)

(assert (=> b!7997328 (= res!3163354 (not (nullable!9651 (reg!21896 baseR!141))))))

(assert (=> b!7997328 (=> (not res!3163354) (not e!4711678))))

(assert (= (and d!2386380 (not res!3163355)) b!7997321))

(assert (= (and b!7997321 c!1468381) b!7997328))

(assert (= (and b!7997321 (not c!1468381)) b!7997326))

(assert (= (and b!7997328 res!3163354) b!7997324))

(assert (= (and b!7997326 c!1468380) b!7997327))

(assert (= (and b!7997326 (not c!1468380)) b!7997322))

(assert (= (and b!7997327 res!3163352) b!7997320))

(assert (= (and b!7997322 (not res!3163356)) b!7997323))

(assert (= (and b!7997323 res!3163353) b!7997325))

(assert (= (or b!7997327 b!7997325) bm!742833))

(assert (= (or b!7997320 b!7997323) bm!742832))

(assert (= (or b!7997324 bm!742832) bm!742831))

(declare-fun m!8367350 () Bool)

(assert (=> bm!742831 m!8367350))

(declare-fun m!8367352 () Bool)

(assert (=> bm!742833 m!8367352))

(declare-fun m!8367354 () Bool)

(assert (=> b!7997328 m!8367354))

(assert (=> start!752632 d!2386380))

(declare-fun b!7997344 () Bool)

(declare-fun e!4711683 () Bool)

(declare-fun tp!2391216 () Bool)

(declare-fun tp!2391214 () Bool)

(assert (=> b!7997344 (= e!4711683 (and tp!2391216 tp!2391214))))

(assert (=> b!7997254 (= tp!2391199 e!4711683)))

(declare-fun b!7997346 () Bool)

(declare-fun tp!2391215 () Bool)

(declare-fun tp!2391217 () Bool)

(assert (=> b!7997346 (= e!4711683 (and tp!2391215 tp!2391217))))

(declare-fun b!7997343 () Bool)

(assert (=> b!7997343 (= e!4711683 tp_is_empty!53677)))

(declare-fun b!7997345 () Bool)

(declare-fun tp!2391213 () Bool)

(assert (=> b!7997345 (= e!4711683 tp!2391213)))

(assert (= (and b!7997254 ((_ is ElementMatch!21567) (regOne!43647 baseR!141))) b!7997343))

(assert (= (and b!7997254 ((_ is Concat!30566) (regOne!43647 baseR!141))) b!7997344))

(assert (= (and b!7997254 ((_ is Star!21567) (regOne!43647 baseR!141))) b!7997345))

(assert (= (and b!7997254 ((_ is Union!21567) (regOne!43647 baseR!141))) b!7997346))

(declare-fun b!7997348 () Bool)

(declare-fun e!4711684 () Bool)

(declare-fun tp!2391221 () Bool)

(declare-fun tp!2391219 () Bool)

(assert (=> b!7997348 (= e!4711684 (and tp!2391221 tp!2391219))))

(assert (=> b!7997254 (= tp!2391202 e!4711684)))

(declare-fun b!7997350 () Bool)

(declare-fun tp!2391220 () Bool)

(declare-fun tp!2391222 () Bool)

(assert (=> b!7997350 (= e!4711684 (and tp!2391220 tp!2391222))))

(declare-fun b!7997347 () Bool)

(assert (=> b!7997347 (= e!4711684 tp_is_empty!53677)))

(declare-fun b!7997349 () Bool)

(declare-fun tp!2391218 () Bool)

(assert (=> b!7997349 (= e!4711684 tp!2391218)))

(assert (= (and b!7997254 ((_ is ElementMatch!21567) (regTwo!43647 baseR!141))) b!7997347))

(assert (= (and b!7997254 ((_ is Concat!30566) (regTwo!43647 baseR!141))) b!7997348))

(assert (= (and b!7997254 ((_ is Star!21567) (regTwo!43647 baseR!141))) b!7997349))

(assert (= (and b!7997254 ((_ is Union!21567) (regTwo!43647 baseR!141))) b!7997350))

(declare-fun b!7997352 () Bool)

(declare-fun e!4711685 () Bool)

(declare-fun tp!2391226 () Bool)

(declare-fun tp!2391224 () Bool)

(assert (=> b!7997352 (= e!4711685 (and tp!2391226 tp!2391224))))

(assert (=> b!7997255 (= tp!2391198 e!4711685)))

(declare-fun b!7997354 () Bool)

(declare-fun tp!2391225 () Bool)

(declare-fun tp!2391227 () Bool)

(assert (=> b!7997354 (= e!4711685 (and tp!2391225 tp!2391227))))

(declare-fun b!7997351 () Bool)

(assert (=> b!7997351 (= e!4711685 tp_is_empty!53677)))

(declare-fun b!7997353 () Bool)

(declare-fun tp!2391223 () Bool)

(assert (=> b!7997353 (= e!4711685 tp!2391223)))

(assert (= (and b!7997255 ((_ is ElementMatch!21567) (regOne!43646 baseR!141))) b!7997351))

(assert (= (and b!7997255 ((_ is Concat!30566) (regOne!43646 baseR!141))) b!7997352))

(assert (= (and b!7997255 ((_ is Star!21567) (regOne!43646 baseR!141))) b!7997353))

(assert (= (and b!7997255 ((_ is Union!21567) (regOne!43646 baseR!141))) b!7997354))

(declare-fun b!7997356 () Bool)

(declare-fun e!4711686 () Bool)

(declare-fun tp!2391231 () Bool)

(declare-fun tp!2391229 () Bool)

(assert (=> b!7997356 (= e!4711686 (and tp!2391231 tp!2391229))))

(assert (=> b!7997255 (= tp!2391196 e!4711686)))

(declare-fun b!7997358 () Bool)

(declare-fun tp!2391230 () Bool)

(declare-fun tp!2391232 () Bool)

(assert (=> b!7997358 (= e!4711686 (and tp!2391230 tp!2391232))))

(declare-fun b!7997355 () Bool)

(assert (=> b!7997355 (= e!4711686 tp_is_empty!53677)))

(declare-fun b!7997357 () Bool)

(declare-fun tp!2391228 () Bool)

(assert (=> b!7997357 (= e!4711686 tp!2391228)))

(assert (= (and b!7997255 ((_ is ElementMatch!21567) (regTwo!43646 baseR!141))) b!7997355))

(assert (= (and b!7997255 ((_ is Concat!30566) (regTwo!43646 baseR!141))) b!7997356))

(assert (= (and b!7997255 ((_ is Star!21567) (regTwo!43646 baseR!141))) b!7997357))

(assert (= (and b!7997255 ((_ is Union!21567) (regTwo!43646 baseR!141))) b!7997358))

(declare-fun b!7997360 () Bool)

(declare-fun e!4711687 () Bool)

(declare-fun tp!2391236 () Bool)

(declare-fun tp!2391234 () Bool)

(assert (=> b!7997360 (= e!4711687 (and tp!2391236 tp!2391234))))

(assert (=> b!7997248 (= tp!2391201 e!4711687)))

(declare-fun b!7997362 () Bool)

(declare-fun tp!2391235 () Bool)

(declare-fun tp!2391237 () Bool)

(assert (=> b!7997362 (= e!4711687 (and tp!2391235 tp!2391237))))

(declare-fun b!7997359 () Bool)

(assert (=> b!7997359 (= e!4711687 tp_is_empty!53677)))

(declare-fun b!7997361 () Bool)

(declare-fun tp!2391233 () Bool)

(assert (=> b!7997361 (= e!4711687 tp!2391233)))

(assert (= (and b!7997248 ((_ is ElementMatch!21567) (reg!21896 baseR!141))) b!7997359))

(assert (= (and b!7997248 ((_ is Concat!30566) (reg!21896 baseR!141))) b!7997360))

(assert (= (and b!7997248 ((_ is Star!21567) (reg!21896 baseR!141))) b!7997361))

(assert (= (and b!7997248 ((_ is Union!21567) (reg!21896 baseR!141))) b!7997362))

(declare-fun b!7997364 () Bool)

(declare-fun e!4711688 () Bool)

(declare-fun tp!2391241 () Bool)

(declare-fun tp!2391239 () Bool)

(assert (=> b!7997364 (= e!4711688 (and tp!2391241 tp!2391239))))

(assert (=> b!7997247 (= tp!2391195 e!4711688)))

(declare-fun b!7997366 () Bool)

(declare-fun tp!2391240 () Bool)

(declare-fun tp!2391242 () Bool)

(assert (=> b!7997366 (= e!4711688 (and tp!2391240 tp!2391242))))

(declare-fun b!7997363 () Bool)

(assert (=> b!7997363 (= e!4711688 tp_is_empty!53677)))

(declare-fun b!7997365 () Bool)

(declare-fun tp!2391238 () Bool)

(assert (=> b!7997365 (= e!4711688 tp!2391238)))

(assert (= (and b!7997247 ((_ is ElementMatch!21567) (regOne!43646 r!24786))) b!7997363))

(assert (= (and b!7997247 ((_ is Concat!30566) (regOne!43646 r!24786))) b!7997364))

(assert (= (and b!7997247 ((_ is Star!21567) (regOne!43646 r!24786))) b!7997365))

(assert (= (and b!7997247 ((_ is Union!21567) (regOne!43646 r!24786))) b!7997366))

(declare-fun b!7997370 () Bool)

(declare-fun e!4711690 () Bool)

(declare-fun tp!2391246 () Bool)

(declare-fun tp!2391244 () Bool)

(assert (=> b!7997370 (= e!4711690 (and tp!2391246 tp!2391244))))

(assert (=> b!7997247 (= tp!2391194 e!4711690)))

(declare-fun b!7997372 () Bool)

(declare-fun tp!2391245 () Bool)

(declare-fun tp!2391247 () Bool)

(assert (=> b!7997372 (= e!4711690 (and tp!2391245 tp!2391247))))

(declare-fun b!7997369 () Bool)

(assert (=> b!7997369 (= e!4711690 tp_is_empty!53677)))

(declare-fun b!7997371 () Bool)

(declare-fun tp!2391243 () Bool)

(assert (=> b!7997371 (= e!4711690 tp!2391243)))

(assert (= (and b!7997247 ((_ is ElementMatch!21567) (regTwo!43646 r!24786))) b!7997369))

(assert (= (and b!7997247 ((_ is Concat!30566) (regTwo!43646 r!24786))) b!7997370))

(assert (= (and b!7997247 ((_ is Star!21567) (regTwo!43646 r!24786))) b!7997371))

(assert (= (and b!7997247 ((_ is Union!21567) (regTwo!43646 r!24786))) b!7997372))

(declare-fun b!7997374 () Bool)

(declare-fun e!4711691 () Bool)

(declare-fun tp!2391251 () Bool)

(declare-fun tp!2391249 () Bool)

(assert (=> b!7997374 (= e!4711691 (and tp!2391251 tp!2391249))))

(assert (=> b!7997250 (= tp!2391197 e!4711691)))

(declare-fun b!7997376 () Bool)

(declare-fun tp!2391250 () Bool)

(declare-fun tp!2391252 () Bool)

(assert (=> b!7997376 (= e!4711691 (and tp!2391250 tp!2391252))))

(declare-fun b!7997373 () Bool)

(assert (=> b!7997373 (= e!4711691 tp_is_empty!53677)))

(declare-fun b!7997375 () Bool)

(declare-fun tp!2391248 () Bool)

(assert (=> b!7997375 (= e!4711691 tp!2391248)))

(assert (= (and b!7997250 ((_ is ElementMatch!21567) (reg!21896 r!24786))) b!7997373))

(assert (= (and b!7997250 ((_ is Concat!30566) (reg!21896 r!24786))) b!7997374))

(assert (= (and b!7997250 ((_ is Star!21567) (reg!21896 r!24786))) b!7997375))

(assert (= (and b!7997250 ((_ is Union!21567) (reg!21896 r!24786))) b!7997376))

(declare-fun b!7997386 () Bool)

(declare-fun e!4711697 () Bool)

(declare-fun tp!2391258 () Bool)

(assert (=> b!7997386 (= e!4711697 (and tp_is_empty!53677 tp!2391258))))

(assert (=> b!7997251 (= tp!2391192 e!4711697)))

(assert (= (and b!7997251 ((_ is Cons!74672) (t!390539 input!8036))) b!7997386))

(declare-fun b!7997394 () Bool)

(declare-fun e!4711700 () Bool)

(declare-fun tp!2391262 () Bool)

(declare-fun tp!2391260 () Bool)

(assert (=> b!7997394 (= e!4711700 (and tp!2391262 tp!2391260))))

(assert (=> b!7997256 (= tp!2391200 e!4711700)))

(declare-fun b!7997396 () Bool)

(declare-fun tp!2391261 () Bool)

(declare-fun tp!2391263 () Bool)

(assert (=> b!7997396 (= e!4711700 (and tp!2391261 tp!2391263))))

(declare-fun b!7997393 () Bool)

(assert (=> b!7997393 (= e!4711700 tp_is_empty!53677)))

(declare-fun b!7997395 () Bool)

(declare-fun tp!2391259 () Bool)

(assert (=> b!7997395 (= e!4711700 tp!2391259)))

(assert (= (and b!7997256 ((_ is ElementMatch!21567) (regOne!43647 r!24786))) b!7997393))

(assert (= (and b!7997256 ((_ is Concat!30566) (regOne!43647 r!24786))) b!7997394))

(assert (= (and b!7997256 ((_ is Star!21567) (regOne!43647 r!24786))) b!7997395))

(assert (= (and b!7997256 ((_ is Union!21567) (regOne!43647 r!24786))) b!7997396))

(declare-fun b!7997402 () Bool)

(declare-fun e!4711701 () Bool)

(declare-fun tp!2391273 () Bool)

(declare-fun tp!2391271 () Bool)

(assert (=> b!7997402 (= e!4711701 (and tp!2391273 tp!2391271))))

(assert (=> b!7997256 (= tp!2391193 e!4711701)))

(declare-fun b!7997404 () Bool)

(declare-fun tp!2391272 () Bool)

(declare-fun tp!2391274 () Bool)

(assert (=> b!7997404 (= e!4711701 (and tp!2391272 tp!2391274))))

(declare-fun b!7997401 () Bool)

(assert (=> b!7997401 (= e!4711701 tp_is_empty!53677)))

(declare-fun b!7997403 () Bool)

(declare-fun tp!2391270 () Bool)

(assert (=> b!7997403 (= e!4711701 tp!2391270)))

(assert (= (and b!7997256 ((_ is ElementMatch!21567) (regTwo!43647 r!24786))) b!7997401))

(assert (= (and b!7997256 ((_ is Concat!30566) (regTwo!43647 r!24786))) b!7997402))

(assert (= (and b!7997256 ((_ is Star!21567) (regTwo!43647 r!24786))) b!7997403))

(assert (= (and b!7997256 ((_ is Union!21567) (regTwo!43647 r!24786))) b!7997404))

(check-sat (not b!7997365) (not b!7997356) (not b!7997395) (not b!7997357) (not b!7997372) (not b!7997360) (not b!7997375) (not b!7997394) (not b!7997364) (not b!7997362) (not b!7997386) (not b!7997366) (not b!7997345) (not b!7997346) (not b!7997344) (not b!7997261) (not b!7997403) (not b!7997349) (not b!7997353) (not b!7997370) (not b!7997376) (not b!7997374) (not b!7997396) (not b!7997274) (not b!7997328) tp_is_empty!53677 (not b!7997402) (not b!7997348) (not bm!742831) (not d!2386372) (not bm!742833) (not b!7997361) (not b!7997350) (not b!7997404) (not b!7997354) (not b!7997352) (not b!7997358) (not b!7997371))
(check-sat)
