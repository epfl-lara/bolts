; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571786 () Bool)

(assert start!571786)

(declare-fun b!5459292 () Bool)

(assert (=> b!5459292 true))

(assert (=> b!5459292 true))

(declare-fun lambda!289258 () Int)

(declare-fun lambda!289257 () Int)

(assert (=> b!5459292 (not (= lambda!289258 lambda!289257))))

(assert (=> b!5459292 true))

(assert (=> b!5459292 true))

(declare-fun b!5459338 () Bool)

(assert (=> b!5459338 true))

(declare-fun bs!1263430 () Bool)

(declare-fun b!5459286 () Bool)

(assert (= bs!1263430 (and b!5459286 b!5459292)))

(declare-datatypes ((C!30844 0))(
  ( (C!30845 (val!25124 Int)) )
))
(declare-datatypes ((Regex!15287 0))(
  ( (ElementMatch!15287 (c!953823 C!30844)) (Concat!24132 (regOne!31086 Regex!15287) (regTwo!31086 Regex!15287)) (EmptyExpr!15287) (Star!15287 (reg!15616 Regex!15287)) (EmptyLang!15287) (Union!15287 (regOne!31087 Regex!15287) (regTwo!31087 Regex!15287)) )
))
(declare-fun r!7292 () Regex!15287)

(declare-fun lt!2229727 () Regex!15287)

(declare-fun lambda!289260 () Int)

(assert (=> bs!1263430 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229727 (regTwo!31086 r!7292))) (= lambda!289260 lambda!289257))))

(assert (=> bs!1263430 (not (= lambda!289260 lambda!289258))))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(declare-fun lambda!289261 () Int)

(assert (=> bs!1263430 (not (= lambda!289261 lambda!289257))))

(assert (=> bs!1263430 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229727 (regTwo!31086 r!7292))) (= lambda!289261 lambda!289258))))

(assert (=> b!5459286 (not (= lambda!289261 lambda!289260))))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(declare-fun lt!2229912 () Regex!15287)

(declare-fun lambda!289262 () Int)

(assert (=> bs!1263430 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229912 (regTwo!31086 r!7292))) (= lambda!289262 lambda!289257))))

(assert (=> bs!1263430 (not (= lambda!289262 lambda!289258))))

(assert (=> b!5459286 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229912 lt!2229727)) (= lambda!289262 lambda!289260))))

(assert (=> b!5459286 (not (= lambda!289262 lambda!289261))))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(declare-fun lambda!289263 () Int)

(assert (=> b!5459286 (not (= lambda!289263 lambda!289260))))

(assert (=> bs!1263430 (not (= lambda!289263 lambda!289257))))

(assert (=> b!5459286 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229912 lt!2229727)) (= lambda!289263 lambda!289261))))

(assert (=> b!5459286 (not (= lambda!289263 lambda!289262))))

(assert (=> bs!1263430 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229912 (regTwo!31086 r!7292))) (= lambda!289263 lambda!289258))))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(assert (=> b!5459286 true))

(declare-fun bs!1263431 () Bool)

(declare-fun b!5459320 () Bool)

(assert (= bs!1263431 (and b!5459320 b!5459286)))

(declare-fun lambda!289264 () Int)

(assert (=> bs!1263431 (not (= lambda!289264 lambda!289263))))

(declare-fun lt!2229767 () Regex!15287)

(assert (=> bs!1263431 (= (= lt!2229767 lt!2229727) (= lambda!289264 lambda!289260))))

(declare-fun bs!1263432 () Bool)

(assert (= bs!1263432 (and b!5459320 b!5459292)))

(assert (=> bs!1263432 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229767 (regTwo!31086 r!7292))) (= lambda!289264 lambda!289257))))

(assert (=> bs!1263431 (not (= lambda!289264 lambda!289261))))

(assert (=> bs!1263431 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229767 lt!2229912)) (= lambda!289264 lambda!289262))))

(assert (=> bs!1263432 (not (= lambda!289264 lambda!289258))))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(declare-fun lambda!289265 () Int)

(assert (=> b!5459320 (not (= lambda!289265 lambda!289264))))

(assert (=> bs!1263431 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229767 lt!2229912)) (= lambda!289265 lambda!289263))))

(assert (=> bs!1263431 (not (= lambda!289265 lambda!289260))))

(assert (=> bs!1263432 (not (= lambda!289265 lambda!289257))))

(assert (=> bs!1263431 (= (= lt!2229767 lt!2229727) (= lambda!289265 lambda!289261))))

(assert (=> bs!1263431 (not (= lambda!289265 lambda!289262))))

(assert (=> bs!1263432 (= (and (= (regOne!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229767 (regTwo!31086 r!7292))) (= lambda!289265 lambda!289258))))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(declare-fun lambda!289266 () Int)

(declare-fun lt!2229863 () Regex!15287)

(assert (=> b!5459320 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229863 lt!2229767)) (= lambda!289266 lambda!289264))))

(assert (=> bs!1263431 (not (= lambda!289266 lambda!289263))))

(assert (=> bs!1263431 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229863 lt!2229727)) (= lambda!289266 lambda!289260))))

(assert (=> bs!1263432 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229863 (regTwo!31086 r!7292))) (= lambda!289266 lambda!289257))))

(assert (=> bs!1263431 (not (= lambda!289266 lambda!289261))))

(assert (=> b!5459320 (not (= lambda!289266 lambda!289265))))

(assert (=> bs!1263431 (= (= lt!2229863 lt!2229912) (= lambda!289266 lambda!289262))))

(assert (=> bs!1263432 (not (= lambda!289266 lambda!289258))))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(declare-fun lambda!289267 () Int)

(assert (=> b!5459320 (not (= lambda!289267 lambda!289264))))

(assert (=> bs!1263431 (= (= lt!2229863 lt!2229912) (= lambda!289267 lambda!289263))))

(assert (=> bs!1263431 (not (= lambda!289267 lambda!289260))))

(assert (=> bs!1263432 (not (= lambda!289267 lambda!289257))))

(assert (=> bs!1263431 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229863 lt!2229727)) (= lambda!289267 lambda!289261))))

(assert (=> b!5459320 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229863 lt!2229767)) (= lambda!289267 lambda!289265))))

(assert (=> bs!1263431 (not (= lambda!289267 lambda!289262))))

(assert (=> b!5459320 (not (= lambda!289267 lambda!289266))))

(assert (=> bs!1263432 (= (and (= (regTwo!31086 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229863 (regTwo!31086 r!7292))) (= lambda!289267 lambda!289258))))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(assert (=> b!5459320 true))

(declare-fun bs!1263433 () Bool)

(declare-fun b!5459333 () Bool)

(assert (= bs!1263433 (and b!5459333 b!5459320)))

(declare-fun lt!2229794 () Regex!15287)

(declare-fun lambda!289268 () Int)

(assert (=> bs!1263433 (= (and (= lt!2229794 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289268 lambda!289264))))

(declare-fun bs!1263434 () Bool)

(assert (= bs!1263434 (and b!5459333 b!5459286)))

(assert (=> bs!1263434 (not (= lambda!289268 lambda!289263))))

(assert (=> bs!1263434 (= (and (= lt!2229794 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289268 lambda!289260))))

(declare-fun bs!1263435 () Bool)

(assert (= bs!1263435 (and b!5459333 b!5459292)))

(assert (=> bs!1263435 (= (= lt!2229794 (regOne!31086 r!7292)) (= lambda!289268 lambda!289257))))

(assert (=> bs!1263434 (not (= lambda!289268 lambda!289261))))

(assert (=> bs!1263433 (not (= lambda!289268 lambda!289265))))

(assert (=> bs!1263434 (= (and (= lt!2229794 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289268 lambda!289262))))

(assert (=> bs!1263433 (= (and (= lt!2229794 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289268 lambda!289266))))

(assert (=> bs!1263433 (not (= lambda!289268 lambda!289267))))

(assert (=> bs!1263435 (not (= lambda!289268 lambda!289258))))

(assert (=> b!5459333 true))

(assert (=> b!5459333 true))

(assert (=> b!5459333 true))

(declare-fun lambda!289269 () Int)

(assert (=> bs!1263433 (not (= lambda!289269 lambda!289264))))

(assert (=> bs!1263434 (= (and (= lt!2229794 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289269 lambda!289263))))

(assert (=> bs!1263434 (not (= lambda!289269 lambda!289260))))

(assert (=> bs!1263435 (not (= lambda!289269 lambda!289257))))

(assert (=> bs!1263434 (= (and (= lt!2229794 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289269 lambda!289261))))

(assert (=> bs!1263433 (= (and (= lt!2229794 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289269 lambda!289265))))

(assert (=> bs!1263434 (not (= lambda!289269 lambda!289262))))

(assert (=> bs!1263433 (not (= lambda!289269 lambda!289266))))

(assert (=> b!5459333 (not (= lambda!289269 lambda!289268))))

(assert (=> bs!1263433 (= (and (= lt!2229794 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289269 lambda!289267))))

(assert (=> bs!1263435 (= (= lt!2229794 (regOne!31086 r!7292)) (= lambda!289269 lambda!289258))))

(assert (=> b!5459333 true))

(assert (=> b!5459333 true))

(assert (=> b!5459333 true))

(declare-fun bs!1263436 () Bool)

(declare-fun b!5459299 () Bool)

(assert (= bs!1263436 (and b!5459299 b!5459320)))

(declare-datatypes ((List!62160 0))(
  ( (Nil!62036) (Cons!62036 (h!68484 C!30844) (t!375389 List!62160)) )
))
(declare-fun s!2326 () List!62160)

(declare-datatypes ((tuple2!64972 0))(
  ( (tuple2!64973 (_1!35789 List!62160) (_2!35789 List!62160)) )
))
(declare-fun lt!2229844 () tuple2!64972)

(declare-fun lambda!289270 () Int)

(assert (=> bs!1263436 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289270 lambda!289264))))

(declare-fun bs!1263437 () Bool)

(assert (= bs!1263437 (and b!5459299 b!5459286)))

(assert (=> bs!1263437 (not (= lambda!289270 lambda!289263))))

(declare-fun bs!1263438 () Bool)

(assert (= bs!1263438 (and b!5459299 b!5459292)))

(assert (=> bs!1263438 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289270 lambda!289257))))

(assert (=> bs!1263437 (not (= lambda!289270 lambda!289261))))

(assert (=> bs!1263436 (not (= lambda!289270 lambda!289265))))

(assert (=> bs!1263437 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289270 lambda!289262))))

(assert (=> bs!1263436 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289270 lambda!289266))))

(declare-fun bs!1263439 () Bool)

(assert (= bs!1263439 (and b!5459299 b!5459333)))

(assert (=> bs!1263439 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289270 lambda!289268))))

(assert (=> bs!1263439 (not (= lambda!289270 lambda!289269))))

(assert (=> bs!1263437 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289270 lambda!289260))))

(assert (=> bs!1263436 (not (= lambda!289270 lambda!289267))))

(assert (=> bs!1263438 (not (= lambda!289270 lambda!289258))))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(declare-fun lambda!289271 () Int)

(assert (=> bs!1263436 (not (= lambda!289271 lambda!289264))))

(assert (=> bs!1263437 (not (= lambda!289271 lambda!289263))))

(assert (=> bs!1263438 (not (= lambda!289271 lambda!289257))))

(assert (=> b!5459299 (not (= lambda!289271 lambda!289270))))

(assert (=> bs!1263437 (not (= lambda!289271 lambda!289261))))

(assert (=> bs!1263436 (not (= lambda!289271 lambda!289265))))

(assert (=> bs!1263437 (not (= lambda!289271 lambda!289262))))

(assert (=> bs!1263436 (not (= lambda!289271 lambda!289266))))

(assert (=> bs!1263439 (not (= lambda!289271 lambda!289268))))

(assert (=> bs!1263439 (not (= lambda!289271 lambda!289269))))

(assert (=> bs!1263437 (not (= lambda!289271 lambda!289260))))

(assert (=> bs!1263436 (not (= lambda!289271 lambda!289267))))

(assert (=> bs!1263438 (not (= lambda!289271 lambda!289258))))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(declare-fun lambda!289272 () Int)

(assert (=> bs!1263436 (not (= lambda!289272 lambda!289264))))

(assert (=> bs!1263437 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289272 lambda!289263))))

(assert (=> bs!1263438 (not (= lambda!289272 lambda!289257))))

(assert (=> b!5459299 (not (= lambda!289272 lambda!289270))))

(assert (=> bs!1263437 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289272 lambda!289261))))

(assert (=> b!5459299 (not (= lambda!289272 lambda!289271))))

(assert (=> bs!1263436 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289272 lambda!289265))))

(assert (=> bs!1263437 (not (= lambda!289272 lambda!289262))))

(assert (=> bs!1263436 (not (= lambda!289272 lambda!289266))))

(assert (=> bs!1263439 (not (= lambda!289272 lambda!289268))))

(assert (=> bs!1263439 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289272 lambda!289269))))

(assert (=> bs!1263437 (not (= lambda!289272 lambda!289260))))

(assert (=> bs!1263436 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289272 lambda!289267))))

(assert (=> bs!1263438 (= (and (= (_1!35789 lt!2229844) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289272 lambda!289258))))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(assert (=> b!5459299 true))

(declare-fun b!5459307 () Bool)

(assert (=> b!5459307 true))

(declare-fun bs!1263440 () Bool)

(assert (= bs!1263440 (and b!5459307 b!5459299)))

(declare-fun lambda!289275 () Int)

(declare-fun lambda!289273 () Int)

(assert (=> bs!1263440 (= lambda!289275 lambda!289273)))

(declare-fun bs!1263441 () Bool)

(assert (= bs!1263441 (and b!5459307 b!5459320)))

(declare-fun lt!2229788 () Regex!15287)

(declare-fun lambda!289276 () Int)

(assert (=> bs!1263441 (= (and (= lt!2229788 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289276 lambda!289264))))

(declare-fun bs!1263442 () Bool)

(assert (= bs!1263442 (and b!5459307 b!5459286)))

(assert (=> bs!1263442 (not (= lambda!289276 lambda!289263))))

(declare-fun bs!1263443 () Bool)

(assert (= bs!1263443 (and b!5459307 b!5459292)))

(assert (=> bs!1263443 (= (= lt!2229788 (regOne!31086 r!7292)) (= lambda!289276 lambda!289257))))

(assert (=> bs!1263440 (= (and (= s!2326 (_1!35789 lt!2229844)) (= lt!2229788 (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289276 lambda!289270))))

(assert (=> bs!1263442 (not (= lambda!289276 lambda!289261))))

(assert (=> bs!1263440 (not (= lambda!289276 lambda!289271))))

(assert (=> bs!1263441 (not (= lambda!289276 lambda!289265))))

(assert (=> bs!1263442 (= (and (= lt!2229788 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289276 lambda!289262))))

(assert (=> bs!1263441 (= (and (= lt!2229788 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289276 lambda!289266))))

(declare-fun bs!1263444 () Bool)

(assert (= bs!1263444 (and b!5459307 b!5459333)))

(assert (=> bs!1263444 (= (= lt!2229788 lt!2229794) (= lambda!289276 lambda!289268))))

(assert (=> bs!1263440 (not (= lambda!289276 lambda!289272))))

(assert (=> bs!1263444 (not (= lambda!289276 lambda!289269))))

(assert (=> bs!1263442 (= (and (= lt!2229788 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289276 lambda!289260))))

(assert (=> bs!1263441 (not (= lambda!289276 lambda!289267))))

(assert (=> bs!1263443 (not (= lambda!289276 lambda!289258))))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(declare-fun lambda!289277 () Int)

(assert (=> bs!1263441 (not (= lambda!289277 lambda!289264))))

(assert (=> bs!1263442 (= (and (= lt!2229788 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289277 lambda!289263))))

(assert (=> bs!1263443 (not (= lambda!289277 lambda!289257))))

(assert (=> bs!1263440 (not (= lambda!289277 lambda!289270))))

(assert (=> bs!1263442 (= (and (= lt!2229788 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289277 lambda!289261))))

(assert (=> bs!1263440 (not (= lambda!289277 lambda!289271))))

(assert (=> bs!1263441 (= (and (= lt!2229788 (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289277 lambda!289265))))

(assert (=> bs!1263442 (not (= lambda!289277 lambda!289262))))

(assert (=> bs!1263441 (not (= lambda!289277 lambda!289266))))

(assert (=> bs!1263444 (not (= lambda!289277 lambda!289268))))

(assert (=> bs!1263440 (= (and (= s!2326 (_1!35789 lt!2229844)) (= lt!2229788 (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289277 lambda!289272))))

(assert (=> bs!1263444 (= (= lt!2229788 lt!2229794) (= lambda!289277 lambda!289269))))

(assert (=> bs!1263442 (not (= lambda!289277 lambda!289260))))

(assert (=> b!5459307 (not (= lambda!289277 lambda!289276))))

(assert (=> bs!1263441 (= (and (= lt!2229788 (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289277 lambda!289267))))

(assert (=> bs!1263443 (= (= lt!2229788 (regOne!31086 r!7292)) (= lambda!289277 lambda!289258))))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(declare-fun lambda!289278 () Int)

(assert (=> bs!1263442 (not (= lambda!289278 lambda!289263))))

(declare-fun lt!2229728 () tuple2!64972)

(assert (=> bs!1263443 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289278 lambda!289257))))

(assert (=> bs!1263440 (= (= (_1!35789 lt!2229728) (_1!35789 lt!2229844)) (= lambda!289278 lambda!289270))))

(assert (=> bs!1263442 (not (= lambda!289278 lambda!289261))))

(assert (=> bs!1263440 (not (= lambda!289278 lambda!289271))))

(assert (=> bs!1263441 (not (= lambda!289278 lambda!289265))))

(assert (=> bs!1263442 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289278 lambda!289262))))

(assert (=> bs!1263441 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289278 lambda!289266))))

(assert (=> bs!1263444 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289278 lambda!289268))))

(assert (=> bs!1263440 (not (= lambda!289278 lambda!289272))))

(assert (=> b!5459307 (not (= lambda!289278 lambda!289277))))

(assert (=> bs!1263441 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289278 lambda!289264))))

(assert (=> bs!1263444 (not (= lambda!289278 lambda!289269))))

(assert (=> bs!1263442 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289278 lambda!289260))))

(assert (=> b!5459307 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229788) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289278 lambda!289276))))

(assert (=> bs!1263441 (not (= lambda!289278 lambda!289267))))

(assert (=> bs!1263443 (not (= lambda!289278 lambda!289258))))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(declare-fun lambda!289279 () Int)

(assert (=> bs!1263442 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289279 lambda!289263))))

(assert (=> bs!1263440 (not (= lambda!289279 lambda!289270))))

(assert (=> bs!1263442 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289279 lambda!289261))))

(assert (=> bs!1263440 (not (= lambda!289279 lambda!289271))))

(assert (=> bs!1263441 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289279 lambda!289265))))

(assert (=> bs!1263442 (not (= lambda!289279 lambda!289262))))

(assert (=> bs!1263441 (not (= lambda!289279 lambda!289266))))

(assert (=> bs!1263444 (not (= lambda!289279 lambda!289268))))

(assert (=> bs!1263440 (= (= (_1!35789 lt!2229728) (_1!35789 lt!2229844)) (= lambda!289279 lambda!289272))))

(assert (=> b!5459307 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229788) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289279 lambda!289277))))

(assert (=> bs!1263441 (not (= lambda!289279 lambda!289264))))

(assert (=> bs!1263444 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289279 lambda!289269))))

(assert (=> bs!1263442 (not (= lambda!289279 lambda!289260))))

(assert (=> b!5459307 (not (= lambda!289279 lambda!289276))))

(assert (=> bs!1263443 (not (= lambda!289279 lambda!289257))))

(assert (=> b!5459307 (not (= lambda!289279 lambda!289278))))

(assert (=> bs!1263441 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289279 lambda!289267))))

(assert (=> bs!1263443 (= (and (= (_1!35789 lt!2229728) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289279 lambda!289258))))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(declare-fun lambda!289280 () Int)

(assert (=> bs!1263442 (not (= lambda!289280 lambda!289263))))

(assert (=> bs!1263440 (not (= lambda!289280 lambda!289270))))

(assert (=> bs!1263442 (not (= lambda!289280 lambda!289261))))

(assert (=> bs!1263440 (= (= (_1!35789 lt!2229728) (_1!35789 lt!2229844)) (= lambda!289280 lambda!289271))))

(assert (=> b!5459307 (not (= lambda!289280 lambda!289279))))

(assert (=> bs!1263441 (not (= lambda!289280 lambda!289265))))

(assert (=> bs!1263442 (not (= lambda!289280 lambda!289262))))

(assert (=> bs!1263441 (not (= lambda!289280 lambda!289266))))

(assert (=> bs!1263444 (not (= lambda!289280 lambda!289268))))

(assert (=> bs!1263440 (not (= lambda!289280 lambda!289272))))

(assert (=> b!5459307 (not (= lambda!289280 lambda!289277))))

(assert (=> bs!1263441 (not (= lambda!289280 lambda!289264))))

(assert (=> bs!1263444 (not (= lambda!289280 lambda!289269))))

(assert (=> bs!1263442 (not (= lambda!289280 lambda!289260))))

(assert (=> b!5459307 (not (= lambda!289280 lambda!289276))))

(assert (=> bs!1263443 (not (= lambda!289280 lambda!289257))))

(assert (=> b!5459307 (not (= lambda!289280 lambda!289278))))

(assert (=> bs!1263441 (not (= lambda!289280 lambda!289267))))

(assert (=> bs!1263443 (not (= lambda!289280 lambda!289258))))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(assert (=> b!5459307 true))

(declare-fun bs!1263445 () Bool)

(declare-fun b!5459302 () Bool)

(assert (= bs!1263445 (and b!5459302 b!5459286)))

(declare-fun lambda!289281 () Int)

(assert (=> bs!1263445 (not (= lambda!289281 lambda!289263))))

(declare-fun bs!1263446 () Bool)

(assert (= bs!1263446 (and b!5459302 b!5459299)))

(assert (=> bs!1263446 (= (= Nil!62036 (_1!35789 lt!2229844)) (= lambda!289281 lambda!289270))))

(assert (=> bs!1263445 (not (= lambda!289281 lambda!289261))))

(assert (=> bs!1263446 (not (= lambda!289281 lambda!289271))))

(declare-fun bs!1263447 () Bool)

(assert (= bs!1263447 (and b!5459302 b!5459307)))

(assert (=> bs!1263447 (not (= lambda!289281 lambda!289279))))

(declare-fun bs!1263448 () Bool)

(assert (= bs!1263448 (and b!5459302 b!5459320)))

(assert (=> bs!1263448 (not (= lambda!289281 lambda!289265))))

(assert (=> bs!1263445 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289281 lambda!289262))))

(assert (=> bs!1263448 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289281 lambda!289266))))

(declare-fun bs!1263449 () Bool)

(assert (= bs!1263449 (and b!5459302 b!5459333)))

(assert (=> bs!1263449 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289281 lambda!289268))))

(assert (=> bs!1263446 (not (= lambda!289281 lambda!289272))))

(assert (=> bs!1263447 (not (= lambda!289281 lambda!289280))))

(assert (=> bs!1263447 (not (= lambda!289281 lambda!289277))))

(assert (=> bs!1263448 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289281 lambda!289264))))

(assert (=> bs!1263449 (not (= lambda!289281 lambda!289269))))

(assert (=> bs!1263445 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289281 lambda!289260))))

(assert (=> bs!1263447 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229788) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289281 lambda!289276))))

(declare-fun bs!1263450 () Bool)

(assert (= bs!1263450 (and b!5459302 b!5459292)))

(assert (=> bs!1263450 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289281 lambda!289257))))

(assert (=> bs!1263447 (= (= Nil!62036 (_1!35789 lt!2229728)) (= lambda!289281 lambda!289278))))

(assert (=> bs!1263448 (not (= lambda!289281 lambda!289267))))

(assert (=> bs!1263450 (not (= lambda!289281 lambda!289258))))

(assert (=> b!5459302 true))

(assert (=> b!5459302 true))

(declare-fun lambda!289282 () Int)

(assert (=> bs!1263445 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229912)) (= lambda!289282 lambda!289263))))

(assert (=> bs!1263446 (not (= lambda!289282 lambda!289270))))

(assert (=> bs!1263445 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229727)) (= lambda!289282 lambda!289261))))

(assert (=> bs!1263446 (not (= lambda!289282 lambda!289271))))

(assert (=> bs!1263447 (= (= Nil!62036 (_1!35789 lt!2229728)) (= lambda!289282 lambda!289279))))

(assert (=> bs!1263448 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229767)) (= lambda!289282 lambda!289265))))

(assert (=> bs!1263445 (not (= lambda!289282 lambda!289262))))

(assert (=> bs!1263448 (not (= lambda!289282 lambda!289266))))

(assert (=> bs!1263449 (not (= lambda!289282 lambda!289268))))

(assert (=> bs!1263446 (= (= Nil!62036 (_1!35789 lt!2229844)) (= lambda!289282 lambda!289272))))

(assert (=> bs!1263447 (not (= lambda!289282 lambda!289280))))

(assert (=> bs!1263447 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229788) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289282 lambda!289277))))

(assert (=> bs!1263448 (not (= lambda!289282 lambda!289264))))

(assert (=> bs!1263449 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289282 lambda!289269))))

(assert (=> bs!1263445 (not (= lambda!289282 lambda!289260))))

(assert (=> b!5459302 (not (= lambda!289282 lambda!289281))))

(assert (=> bs!1263447 (not (= lambda!289282 lambda!289276))))

(assert (=> bs!1263450 (not (= lambda!289282 lambda!289257))))

(assert (=> bs!1263447 (not (= lambda!289282 lambda!289278))))

(assert (=> bs!1263448 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= lt!2229794 lt!2229863)) (= lambda!289282 lambda!289267))))

(assert (=> bs!1263450 (= (and (= Nil!62036 s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= lt!2229794 (regTwo!31086 r!7292))) (= lambda!289282 lambda!289258))))

(assert (=> b!5459302 true))

(assert (=> b!5459302 true))

(declare-fun lambda!289283 () Int)

(assert (=> bs!1263445 (not (= lambda!289283 lambda!289263))))

(assert (=> b!5459302 (not (= lambda!289283 lambda!289282))))

(assert (=> bs!1263446 (not (= lambda!289283 lambda!289270))))

(assert (=> bs!1263445 (not (= lambda!289283 lambda!289261))))

(assert (=> bs!1263446 (= (= Nil!62036 (_1!35789 lt!2229844)) (= lambda!289283 lambda!289271))))

(assert (=> bs!1263447 (not (= lambda!289283 lambda!289279))))

(assert (=> bs!1263448 (not (= lambda!289283 lambda!289265))))

(assert (=> bs!1263445 (not (= lambda!289283 lambda!289262))))

(assert (=> bs!1263448 (not (= lambda!289283 lambda!289266))))

(assert (=> bs!1263449 (not (= lambda!289283 lambda!289268))))

(assert (=> bs!1263446 (not (= lambda!289283 lambda!289272))))

(assert (=> bs!1263447 (= (= Nil!62036 (_1!35789 lt!2229728)) (= lambda!289283 lambda!289280))))

(assert (=> bs!1263447 (not (= lambda!289283 lambda!289277))))

(assert (=> bs!1263448 (not (= lambda!289283 lambda!289264))))

(assert (=> bs!1263449 (not (= lambda!289283 lambda!289269))))

(assert (=> bs!1263445 (not (= lambda!289283 lambda!289260))))

(assert (=> b!5459302 (not (= lambda!289283 lambda!289281))))

(assert (=> bs!1263447 (not (= lambda!289283 lambda!289276))))

(assert (=> bs!1263450 (not (= lambda!289283 lambda!289257))))

(assert (=> bs!1263447 (not (= lambda!289283 lambda!289278))))

(assert (=> bs!1263448 (not (= lambda!289283 lambda!289267))))

(assert (=> bs!1263450 (not (= lambda!289283 lambda!289258))))

(assert (=> b!5459302 true))

(assert (=> b!5459302 true))

(declare-fun bm!400285 () Bool)

(declare-fun c!953819 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62161 0))(
  ( (Nil!62037) (Cons!62037 (h!68485 Regex!15287) (t!375390 List!62161)) )
))
(declare-datatypes ((Context!9342 0))(
  ( (Context!9343 (exprs!5171 List!62161)) )
))
(declare-fun call!400376 () (InoxSet Context!9342))

(declare-fun lt!2229804 () Context!9342)

(declare-fun lt!2229904 () Context!9342)

(declare-fun c!953814 () Bool)

(declare-fun lt!2229856 () Context!9342)

(declare-fun derivationStepZipperUp!659 (Context!9342 C!30844) (InoxSet Context!9342))

(assert (=> bm!400285 (= call!400376 (derivationStepZipperUp!659 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804)) (h!68484 s!2326)))))

(declare-fun bm!400286 () Bool)

(declare-fun call!400451 () Bool)

(declare-fun call!400348 () Bool)

(assert (=> bm!400286 (= call!400451 call!400348)))

(declare-fun bm!400287 () Bool)

(declare-datatypes ((Unit!154924 0))(
  ( (Unit!154925) )
))
(declare-fun call!400380 () Unit!154924)

(declare-fun call!400328 () Unit!154924)

(assert (=> bm!400287 (= call!400380 call!400328)))

(declare-fun b!5459281 () Bool)

(declare-fun e!3380685 () Bool)

(declare-fun tp!1502112 () Bool)

(declare-fun tp!1502117 () Bool)

(assert (=> b!5459281 (= e!3380685 (and tp!1502112 tp!1502117))))

(declare-fun bm!400288 () Bool)

(declare-fun call!400424 () Bool)

(declare-fun call!400465 () Bool)

(assert (=> bm!400288 (= call!400424 call!400465)))

(declare-fun bm!400289 () Bool)

(declare-fun call!400394 () Bool)

(assert (=> bm!400289 (= call!400394 call!400424)))

(declare-fun b!5459282 () Bool)

(declare-fun e!3380691 () Unit!154924)

(declare-fun Unit!154926 () Unit!154924)

(assert (=> b!5459282 (= e!3380691 Unit!154926)))

(assert (=> b!5459282 (= lt!2229794 (regOne!31086 r!7292))))

(declare-fun lt!2229899 () List!62161)

(declare-datatypes ((List!62162 0))(
  ( (Nil!62038) (Cons!62038 (h!68486 Context!9342) (t!375391 List!62162)) )
))
(declare-fun zl!343 () List!62162)

(assert (=> b!5459282 (= lt!2229899 (Cons!62037 lt!2229794 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun lt!2229817 () Context!9342)

(assert (=> b!5459282 (= lt!2229817 (Context!9343 (Cons!62037 (reg!15616 (regOne!31086 r!7292)) lt!2229899)))))

(declare-fun lt!2229883 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229883 (store ((as const (Array Context!9342 Bool)) false) lt!2229817 true))))

(declare-fun lt!2229888 () (InoxSet Context!9342))

(declare-fun call!400401 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229888 call!400401)))

(declare-fun lt!2229885 () Unit!154924)

(declare-fun call!400496 () Unit!154924)

(assert (=> b!5459282 (= lt!2229885 call!400496)))

(declare-fun call!400340 () (InoxSet Context!9342))

(assert (=> b!5459282 (= call!400340 call!400401)))

(declare-fun lt!2229848 () Context!9342)

(assert (=> b!5459282 (= lt!2229848 (Context!9343 lt!2229899))))

(declare-fun lt!2229793 () (InoxSet Context!9342))

(declare-fun call!400453 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229793 call!400453)))

(declare-fun lt!2229799 () Regex!15287)

(assert (=> b!5459282 (= lt!2229799 (Concat!24132 lt!2229794 (regTwo!31086 r!7292)))))

(declare-fun lt!2229792 () Regex!15287)

(assert (=> b!5459282 (= lt!2229792 (Concat!24132 (reg!15616 (regOne!31086 r!7292)) lt!2229799))))

(declare-fun lt!2229729 () List!62161)

(assert (=> b!5459282 (= lt!2229729 (Cons!62037 (reg!15616 (regOne!31086 r!7292)) Nil!62037))))

(declare-fun lt!2229837 () Context!9342)

(assert (=> b!5459282 (= lt!2229837 (Context!9343 lt!2229729))))

(declare-fun lt!2229892 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229892 (store ((as const (Array Context!9342 Bool)) false) lt!2229837 true))))

(declare-fun lt!2229886 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229886 (store ((as const (Array Context!9342 Bool)) false) lt!2229848 true))))

(declare-fun lt!2229779 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229779 (derivationStepZipperUp!659 lt!2229837 (h!68484 s!2326)))))

(declare-fun lt!2229743 () (InoxSet Context!9342))

(declare-fun call!400410 () (InoxSet Context!9342))

(assert (=> b!5459282 (= lt!2229743 call!400410)))

(declare-fun lt!2229825 () Unit!154924)

(declare-fun call!400304 () Unit!154924)

(assert (=> b!5459282 (= lt!2229825 call!400304)))

(declare-fun lambda!289259 () Int)

(declare-fun flatMap!1014 ((InoxSet Context!9342) Int) (InoxSet Context!9342))

(assert (=> b!5459282 (= (flatMap!1014 lt!2229892 lambda!289259) (derivationStepZipperUp!659 lt!2229837 (h!68484 s!2326)))))

(declare-fun lt!2229884 () Unit!154924)

(declare-fun call!400495 () Unit!154924)

(assert (=> b!5459282 (= lt!2229884 call!400495)))

(declare-fun call!400442 () (InoxSet Context!9342))

(assert (=> b!5459282 (= call!400442 call!400410)))

(declare-fun lt!2229879 () Unit!154924)

(declare-fun call!400471 () Unit!154924)

(assert (=> b!5459282 (= lt!2229879 call!400471)))

(declare-fun lt!2229819 () Bool)

(declare-fun call!400337 () Bool)

(assert (=> b!5459282 (= lt!2229819 call!400337)))

(declare-fun res!2325287 () Bool)

(declare-fun call!400313 () Bool)

(assert (=> b!5459282 (= res!2325287 (= lt!2229819 call!400313))))

(declare-fun e!3380681 () Bool)

(assert (=> b!5459282 (=> (not res!2325287) (not e!3380681))))

(assert (=> b!5459282 e!3380681))

(declare-fun c!953817 () Bool)

(declare-fun lt!2229873 () Bool)

(assert (=> b!5459282 (= c!953817 lt!2229873)))

(declare-fun lt!2229724 () Unit!154924)

(declare-fun e!3380714 () Unit!154924)

(assert (=> b!5459282 (= lt!2229724 e!3380714)))

(declare-fun call!400430 () Bool)

(assert (=> b!5459282 (= lt!2229873 call!400430)))

(declare-fun lt!2229853 () (InoxSet Context!9342))

(declare-fun lt!2229907 () (InoxSet Context!9342))

(declare-fun lt!2229826 () (InoxSet Context!9342))

(declare-fun bm!400290 () Bool)

(declare-fun lt!2229898 () (InoxSet Context!9342))

(declare-fun call!400307 () Unit!154924)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!524 ((InoxSet Context!9342) (InoxSet Context!9342) List!62160) Unit!154924)

(assert (=> bm!400290 (= call!400307 (lemmaZipperConcatMatchesSameAsBothZippers!524 (ite c!953819 lt!2229853 lt!2229826) (ite c!953819 lt!2229907 lt!2229898) (t!375389 s!2326)))))

(declare-fun lt!2229838 () (InoxSet Context!9342))

(declare-fun call!400291 () Bool)

(declare-fun lt!2229896 () (InoxSet Context!9342))

(declare-fun bm!400291 () Bool)

(declare-fun matchZipper!1531 ((InoxSet Context!9342) List!62160) Bool)

(assert (=> bm!400291 (= call!400291 (matchZipper!1531 (ite c!953819 ((_ map or) lt!2229853 lt!2229838) lt!2229896) (t!375389 s!2326)))))

(declare-fun c!953812 () Bool)

(declare-fun lt!2229839 () (InoxSet Context!9342))

(declare-fun call!400441 () Bool)

(declare-fun z!1189 () (InoxSet Context!9342))

(declare-fun lt!2229833 () (InoxSet Context!9342))

(declare-fun bm!400292 () Bool)

(declare-fun c!953816 () Bool)

(declare-fun lt!2229716 () (InoxSet Context!9342))

(assert (=> bm!400292 (= call!400441 (matchZipper!1531 (ite c!953819 lt!2229716 (ite c!953812 lt!2229826 (ite c!953814 lt!2229833 (ite c!953816 z!1189 lt!2229839)))) (ite c!953819 s!2326 (ite c!953812 (t!375389 s!2326) s!2326))))))

(declare-fun c!953815 () Bool)

(declare-fun lt!2229897 () List!62160)

(declare-fun lt!2229816 () (InoxSet Context!9342))

(declare-fun bm!400293 () Bool)

(assert (=> bm!400293 (= call!400465 (matchZipper!1531 (ite (or c!953819 c!953812) z!1189 (ite (and c!953816 c!953817) (ite c!953815 lt!2229816 lt!2229886) z!1189)) (ite (or c!953819 c!953812) s!2326 (ite (and c!953816 c!953817) (ite c!953815 s!2326 lt!2229897) s!2326))))))

(declare-fun b!5459283 () Bool)

(declare-fun e!3380698 () Unit!154924)

(declare-fun Unit!154927 () Unit!154924)

(assert (=> b!5459283 (= e!3380698 Unit!154927)))

(declare-fun bm!400294 () Bool)

(declare-fun call!400459 () Unit!154924)

(declare-fun call!400421 () Unit!154924)

(assert (=> bm!400294 (= call!400459 call!400421)))

(declare-fun b!5459284 () Bool)

(declare-fun e!3380700 () Bool)

(declare-fun call!400371 () Bool)

(assert (=> b!5459284 (= e!3380700 call!400371)))

(declare-fun bm!400295 () Bool)

(declare-fun call!400368 () Unit!154924)

(declare-fun call!400293 () Unit!154924)

(assert (=> bm!400295 (= call!400368 call!400293)))

(declare-fun bm!400296 () Bool)

(declare-fun call!400342 () Bool)

(declare-fun call!400438 () Bool)

(assert (=> bm!400296 (= call!400342 call!400438)))

(declare-fun b!5459285 () Bool)

(declare-fun e!3380699 () Unit!154924)

(declare-fun Unit!154928 () Unit!154924)

(assert (=> b!5459285 (= e!3380699 Unit!154928)))

(declare-fun lt!2229919 () tuple2!64972)

(declare-fun bm!400297 () Bool)

(declare-fun lt!2229821 () List!62160)

(declare-fun call!400324 () Unit!154924)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!254 (Regex!15287 Regex!15287 List!62160 List!62160) Unit!154924)

(assert (=> bm!400297 (= call!400324 (lemmaTwoRegexMatchThenConcatMatchesConcatString!254 lt!2229794 (regTwo!31086 r!7292) (ite c!953817 (_2!35789 lt!2229919) lt!2229821) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))))))

(declare-fun call!400466 () Unit!154924)

(declare-fun bm!400298 () Bool)

(declare-fun lemmaConcatPreservesForall!254 (List!62161 List!62161 Int) Unit!154924)

(assert (=> bm!400298 (= call!400466 (lemmaConcatPreservesForall!254 lt!2229729 lt!2229899 (ite c!953817 lambda!289273 lambda!289275)))))

(declare-fun bm!400299 () Bool)

(declare-fun call!400407 () Bool)

(declare-fun call!400312 () Bool)

(assert (=> bm!400299 (= call!400407 call!400312)))

(declare-fun e!3380702 () Unit!154924)

(declare-fun Unit!154929 () Unit!154924)

(assert (=> b!5459286 (= e!3380702 Unit!154929)))

(declare-fun lt!2229758 () List!62161)

(assert (=> b!5459286 (= lt!2229758 (Cons!62037 (regTwo!31086 (regOne!31086 r!7292)) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun lt!2229850 () Context!9342)

(assert (=> b!5459286 (= lt!2229850 (Context!9343 lt!2229758))))

(declare-fun call!400298 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229826 call!400298)))

(declare-fun call!400436 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229896 call!400436)))

(declare-fun lt!2229786 () Unit!154924)

(declare-fun call!400486 () Unit!154924)

(assert (=> b!5459286 (= lt!2229786 call!400486)))

(declare-fun lt!2229834 () Bool)

(declare-fun call!400483 () Bool)

(assert (=> b!5459286 (= lt!2229834 call!400483)))

(declare-fun res!2325272 () Bool)

(assert (=> b!5459286 (= res!2325272 lt!2229834)))

(declare-fun e!3380680 () Bool)

(assert (=> b!5459286 (=> res!2325272 e!3380680)))

(declare-fun call!400432 () Bool)

(assert (=> b!5459286 (= call!400432 e!3380680)))

(declare-fun lt!2229811 () List!62161)

(assert (=> b!5459286 (= lt!2229811 (Cons!62037 (regOne!31086 (regOne!31086 r!7292)) lt!2229758))))

(declare-fun lt!2229858 () Context!9342)

(assert (=> b!5459286 (= lt!2229858 (Context!9343 lt!2229811))))

(declare-fun lt!2229852 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229852 (store ((as const (Array Context!9342 Bool)) false) lt!2229858 true))))

(declare-fun lt!2229910 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229910 (store ((as const (Array Context!9342 Bool)) false) lt!2229850 true))))

(declare-fun lt!2229810 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229810 call!400410)))

(declare-fun lt!2229880 () Unit!154924)

(assert (=> b!5459286 (= lt!2229880 call!400421)))

(assert (=> b!5459286 (= call!400340 call!400410)))

(declare-fun call!400420 () (InoxSet Context!9342))

(assert (=> b!5459286 (= lt!2229898 call!400420)))

(declare-fun lt!2229855 () Unit!154924)

(declare-fun call!400474 () Unit!154924)

(assert (=> b!5459286 (= lt!2229855 call!400474)))

(declare-fun call!400330 () (InoxSet Context!9342))

(assert (=> b!5459286 (= call!400330 call!400420)))

(declare-fun lt!2229800 () Unit!154924)

(assert (=> b!5459286 (= lt!2229800 call!400307)))

(declare-fun res!2325284 () Bool)

(assert (=> b!5459286 (= res!2325284 lt!2229834)))

(declare-fun e!3380678 () Bool)

(assert (=> b!5459286 (=> res!2325284 e!3380678)))

(declare-fun call!400309 () Bool)

(assert (=> b!5459286 (= call!400309 e!3380678)))

(declare-fun lt!2229835 () Regex!15287)

(declare-fun call!400455 () Regex!15287)

(assert (=> b!5459286 (= lt!2229835 call!400455)))

(declare-fun lt!2229761 () Unit!154924)

(declare-fun call!400428 () Unit!154924)

(assert (=> b!5459286 (= lt!2229761 call!400428)))

(declare-fun lt!2229809 () Bool)

(declare-fun call!400386 () Bool)

(assert (=> b!5459286 (= lt!2229809 call!400386)))

(assert (=> b!5459286 (= lt!2229809 call!400407)))

(declare-fun call!400374 () Regex!15287)

(assert (=> b!5459286 (= lt!2229727 call!400374)))

(declare-fun lt!2229803 () Unit!154924)

(declare-fun call!400477 () Unit!154924)

(assert (=> b!5459286 (= lt!2229803 call!400477)))

(declare-fun lt!2229790 () Bool)

(declare-fun call!400439 () Bool)

(assert (=> b!5459286 (= lt!2229790 call!400439)))

(declare-fun call!400412 () Bool)

(assert (=> b!5459286 (= lt!2229790 call!400412)))

(declare-fun lt!2229791 () Unit!154924)

(declare-fun call!400431 () Unit!154924)

(assert (=> b!5459286 (= lt!2229791 call!400431)))

(declare-fun call!400372 () Bool)

(assert (=> b!5459286 (= lt!2229809 call!400372)))

(declare-fun lt!2229815 () Unit!154924)

(declare-fun call!400378 () Unit!154924)

(assert (=> b!5459286 (= lt!2229815 call!400378)))

(declare-fun call!400494 () Bool)

(declare-fun call!400464 () Bool)

(assert (=> b!5459286 (= call!400494 call!400464)))

(declare-fun lt!2229782 () Unit!154924)

(declare-fun call!400294 () Unit!154924)

(assert (=> b!5459286 (= lt!2229782 call!400294)))

(declare-fun call!400375 () Bool)

(declare-fun call!400475 () Bool)

(assert (=> b!5459286 (= call!400375 call!400475)))

(declare-fun lt!2229824 () Unit!154924)

(declare-fun call!400449 () Unit!154924)

(assert (=> b!5459286 (= lt!2229824 call!400449)))

(assert (=> b!5459286 (= lt!2229790 call!400451)))

(declare-fun call!400492 () Regex!15287)

(assert (=> b!5459286 (= lt!2229912 call!400492)))

(declare-fun lt!2229735 () Unit!154924)

(declare-fun call!400351 () Unit!154924)

(assert (=> b!5459286 (= lt!2229735 call!400351)))

(declare-fun call!400396 () Bool)

(declare-fun call!400489 () Bool)

(assert (=> b!5459286 (= call!400396 call!400489)))

(declare-fun lt!2229860 () Unit!154924)

(declare-fun call!400479 () Unit!154924)

(assert (=> b!5459286 (= lt!2229860 call!400479)))

(declare-fun call!400320 () Bool)

(declare-fun call!400478 () Bool)

(assert (=> b!5459286 (= call!400320 call!400478)))

(declare-fun lt!2229903 () Unit!154924)

(declare-fun call!400480 () Unit!154924)

(assert (=> b!5459286 (= lt!2229903 call!400480)))

(declare-fun res!2325290 () Bool)

(declare-fun call!400398 () Bool)

(declare-fun call!400470 () Bool)

(assert (=> b!5459286 (= res!2325290 (= call!400398 call!400470))))

(declare-fun e!3380686 () Bool)

(assert (=> b!5459286 (=> (not res!2325290) (not e!3380686))))

(assert (=> b!5459286 e!3380686))

(declare-fun bm!400300 () Bool)

(declare-fun call!400416 () Bool)

(declare-fun call!400462 () Bool)

(assert (=> bm!400300 (= call!400416 call!400462)))

(declare-fun b!5459287 () Bool)

(declare-fun tp!1502114 () Bool)

(assert (=> b!5459287 (= e!3380685 tp!1502114)))

(declare-fun lt!2229738 () tuple2!64972)

(declare-fun call!400317 () Unit!154924)

(declare-fun bm!400301 () Bool)

(declare-fun lt!2229774 () Regex!15287)

(declare-fun lt!2229842 () (InoxSet Context!9342))

(declare-fun c!953810 () Bool)

(declare-fun lt!2229832 () Regex!15287)

(declare-fun lt!2229836 () (InoxSet Context!9342))

(declare-fun lt!2229759 () Regex!15287)

(declare-fun theoremZipperRegexEquiv!567 ((InoxSet Context!9342) List!62162 Regex!15287 List!62160) Unit!154924)

(assert (=> bm!400301 (= call!400317 (theoremZipperRegexEquiv!567 (ite c!953810 lt!2229836 (ite c!953819 lt!2229842 (ite c!953812 lt!2229910 (ite (and c!953817 c!953815) lt!2229816 lt!2229886)))) (ite c!953810 (Cons!62038 lt!2229804 Nil!62038) (ite c!953819 (Cons!62038 lt!2229904 Nil!62038) (ite c!953812 (Cons!62038 lt!2229850 Nil!62038) (ite (and c!953817 c!953815) (Cons!62038 lt!2229804 Nil!62038) (Cons!62038 lt!2229848 Nil!62038))))) (ite c!953810 lt!2229832 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite (and c!953817 c!953815) lt!2229774 lt!2229799)))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812) s!2326 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (_2!35789 lt!2229738))))))))

(declare-fun bm!400302 () Bool)

(declare-fun call!400292 () (InoxSet Context!9342))

(assert (=> bm!400302 (= call!400436 call!400292)))

(declare-fun bm!400303 () Bool)

(declare-fun call!400359 () Bool)

(declare-fun call!400322 () Bool)

(assert (=> bm!400303 (= call!400359 call!400322)))

(declare-fun bm!400304 () Bool)

(assert (=> bm!400304 (= call!400453 call!400436)))

(declare-fun bm!400305 () Bool)

(declare-fun call!400349 () (InoxSet Context!9342))

(assert (=> bm!400305 (= call!400420 call!400349)))

(declare-fun e!3380712 () Bool)

(declare-fun tp!1502116 () Bool)

(declare-fun e!3380687 () Bool)

(declare-fun b!5459288 () Bool)

(declare-fun inv!81464 (Context!9342) Bool)

(assert (=> b!5459288 (= e!3380712 (and (inv!81464 (h!68486 zl!343)) e!3380687 tp!1502116))))

(declare-fun bm!400306 () Bool)

(declare-fun call!400404 () Bool)

(declare-fun call!400388 () Bool)

(assert (=> bm!400306 (= call!400404 call!400388)))

(declare-fun lt!2229719 () Regex!15287)

(declare-fun lt!2229756 () Regex!15287)

(declare-fun lt!2229757 () Regex!15287)

(declare-fun bm!400307 () Bool)

(declare-fun lt!2229784 () Context!9342)

(declare-fun call!400415 () Unit!154924)

(declare-fun c!953822 () Bool)

(declare-fun lt!2229771 () (InoxSet Context!9342))

(declare-fun lt!2229818 () Regex!15287)

(assert (=> bm!400307 (= call!400415 (theoremZipperRegexEquiv!567 (ite c!953819 lt!2229716 (ite c!953812 lt!2229852 (ite c!953814 lt!2229833 (ite c!953816 (ite (or c!953817 c!953822) lt!2229892 lt!2229771) lt!2229839)))) (ite c!953819 (Cons!62038 lt!2229784 Nil!62038) (ite c!953812 (Cons!62038 lt!2229858 Nil!62038) (ite c!953814 (Cons!62038 lt!2229856 Nil!62038) (ite (and c!953816 (or c!953817 c!953822)) (Cons!62038 lt!2229837 Nil!62038) (Cons!62038 lt!2229804 Nil!62038))))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229756 (ite c!953816 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229818) lt!2229757)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) s!2326)) s!2326))))))

(declare-fun bm!400308 () Bool)

(declare-fun call!400326 () Unit!154924)

(assert (=> bm!400308 (= call!400326 call!400449)))

(declare-fun bm!400309 () Bool)

(declare-fun call!400305 () Bool)

(declare-fun call!400468 () Bool)

(assert (=> bm!400309 (= call!400305 call!400468)))

(declare-fun res!2325268 () Bool)

(declare-fun e!3380683 () Bool)

(assert (=> start!571786 (=> (not res!2325268) (not e!3380683))))

(declare-fun validRegex!7023 (Regex!15287) Bool)

(assert (=> start!571786 (= res!2325268 (validRegex!7023 r!7292))))

(assert (=> start!571786 e!3380683))

(assert (=> start!571786 e!3380685))

(declare-fun condSetEmpty!35719 () Bool)

(assert (=> start!571786 (= condSetEmpty!35719 (= z!1189 ((as const (Array Context!9342 Bool)) false)))))

(declare-fun setRes!35719 () Bool)

(assert (=> start!571786 setRes!35719))

(assert (=> start!571786 e!3380712))

(declare-fun e!3380715 () Bool)

(assert (=> start!571786 e!3380715))

(declare-fun bm!400310 () Bool)

(declare-fun call!400400 () Unit!154924)

(declare-fun call!400487 () Unit!154924)

(assert (=> bm!400310 (= call!400400 call!400487)))

(declare-fun b!5459289 () Bool)

(assert (=> b!5459289 (= e!3380680 call!400291)))

(declare-fun bm!400311 () Bool)

(declare-fun call!400414 () Bool)

(declare-fun Exists!2468 (Int) Bool)

(assert (=> bm!400311 (= call!400414 (Exists!2468 (ite c!953817 lambda!289268 lambda!289278)))))

(declare-fun b!5459290 () Bool)

(declare-fun res!2325294 () Bool)

(assert (=> b!5459290 (=> (not res!2325294) (not e!3380683))))

(declare-fun toList!9071 ((InoxSet Context!9342)) List!62162)

(assert (=> b!5459290 (= res!2325294 (= (toList!9071 z!1189) zl!343))))

(declare-fun bm!400312 () Bool)

(declare-fun call!400429 () Bool)

(declare-fun call!400488 () Bool)

(assert (=> bm!400312 (= call!400429 call!400488)))

(declare-fun b!5459291 () Bool)

(declare-fun res!2325291 () Bool)

(declare-fun e!3380694 () Bool)

(assert (=> b!5459291 (=> res!2325291 e!3380694)))

(declare-fun generalisedUnion!1216 (List!62161) Regex!15287)

(declare-fun unfocusZipperList!729 (List!62162) List!62161)

(assert (=> b!5459291 (= res!2325291 (not (= r!7292 (generalisedUnion!1216 (unfocusZipperList!729 zl!343)))))))

(declare-fun bm!400313 () Bool)

(assert (=> bm!400313 (= call!400483 call!400441)))

(declare-fun bm!400314 () Bool)

(declare-fun lemmaFlatMapOnSingletonSet!546 ((InoxSet Context!9342) Context!9342 Int) Unit!154924)

(assert (=> bm!400314 (= call!400495 (lemmaFlatMapOnSingletonSet!546 (ite c!953816 lt!2229886 lt!2229839) (ite c!953816 lt!2229848 lt!2229804) (ite c!953816 lambda!289259 lambda!289259)))))

(declare-fun bm!400315 () Bool)

(declare-fun call!400427 () Regex!15287)

(assert (=> bm!400315 (= call!400492 call!400427)))

(declare-fun call!400446 () List!62160)

(declare-fun bm!400316 () Bool)

(declare-fun lt!2229813 () List!62160)

(declare-fun ++!13653 (List!62160 List!62160) List!62160)

(assert (=> bm!400316 (= call!400446 (++!13653 (ite c!953817 lt!2229813 (_1!35789 lt!2229738)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738))))))

(declare-fun bm!400317 () Bool)

(declare-fun call!400417 () Bool)

(assert (=> bm!400317 (= call!400438 call!400417)))

(declare-fun bm!400318 () Bool)

(declare-fun call!400444 () Unit!154924)

(declare-fun call!400358 () Unit!154924)

(assert (=> bm!400318 (= call!400444 call!400358)))

(declare-fun bm!400319 () Bool)

(assert (=> bm!400319 (= call!400410 (derivationStepZipperUp!659 (ite c!953812 lt!2229858 lt!2229848) (h!68484 s!2326)))))

(declare-fun e!3380697 () Bool)

(assert (=> b!5459292 (= e!3380694 e!3380697)))

(declare-fun res!2325274 () Bool)

(assert (=> b!5459292 (=> res!2325274 e!3380697)))

(declare-fun lt!2229869 () Bool)

(get-info :version)

(assert (=> b!5459292 (= res!2325274 (or (not (= lt!2229873 lt!2229869)) ((_ is Nil!62036) s!2326)))))

(assert (=> b!5459292 (= (Exists!2468 lambda!289257) (Exists!2468 lambda!289258))))

(declare-fun lt!2229762 () Unit!154924)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> b!5459292 (= lt!2229762 (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326))))

(assert (=> b!5459292 (= lt!2229869 (Exists!2468 lambda!289257))))

(declare-datatypes ((Option!15398 0))(
  ( (None!15397) (Some!15397 (v!51426 tuple2!64972)) )
))
(declare-fun isDefined!12101 (Option!15398) Bool)

(declare-fun findConcatSeparation!1812 (Regex!15287 Regex!15287 List!62160 List!62160 List!62160) Option!15398)

(assert (=> b!5459292 (= lt!2229869 (isDefined!12101 (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) Nil!62036 s!2326 s!2326)))))

(declare-fun lt!2229854 () Unit!154924)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1576 (Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> b!5459292 (= lt!2229854 (lemmaFindConcatSeparationEquivalentToExists!1576 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326))))

(declare-fun bm!400320 () Bool)

(declare-fun call!400361 () Option!15398)

(assert (=> bm!400320 (= call!400361 (findConcatSeparation!1812 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) Nil!62036 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(declare-fun call!400382 () Unit!154924)

(declare-fun lt!2229902 () tuple2!64972)

(declare-fun bm!400321 () Bool)

(declare-fun lemmaStarApp!82 (Regex!15287 List!62160 List!62160) Unit!154924)

(assert (=> bm!400321 (= call!400382 (lemmaStarApp!82 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902))))))

(declare-fun bm!400322 () Bool)

(declare-fun matchR!7472 (Regex!15287 List!62160) Bool)

(assert (=> bm!400322 (= call!400337 (matchR!7472 (ite c!953819 lt!2229719 lt!2229792) s!2326))))

(declare-fun call!400363 () Bool)

(declare-fun lt!2229870 () Regex!15287)

(declare-fun bm!400323 () Bool)

(declare-fun matchRSpec!2390 (Regex!15287 List!62160) Bool)

(assert (=> bm!400323 (= call!400363 (matchRSpec!2390 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))))))

(declare-fun bm!400324 () Bool)

(assert (=> bm!400324 (= call!400479 (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) s!2326))))

(declare-fun bm!400325 () Bool)

(declare-fun call!400301 () Bool)

(assert (=> bm!400325 (= call!400372 call!400301)))

(declare-fun lt!2229822 () Option!15398)

(declare-fun bm!400326 () Bool)

(declare-fun lt!2229808 () Option!15398)

(declare-fun call!400493 () Option!15398)

(declare-fun call!400426 () Option!15398)

(assert (=> bm!400326 (= call!400494 (isDefined!12101 (ite c!953812 call!400361 (ite c!953814 call!400493 (ite c!953817 lt!2229822 (ite c!953822 lt!2229808 call!400426))))))))

(declare-fun bm!400327 () Bool)

(declare-fun call!400457 () Bool)

(assert (=> bm!400327 (= call!400388 call!400457)))

(declare-fun call!400303 () List!62161)

(declare-fun bm!400328 () Bool)

(declare-fun c!953818 () Bool)

(declare-fun lt!2229921 () (InoxSet Context!9342))

(declare-fun lt!2229876 () List!62160)

(assert (=> bm!400328 (= call!400312 (matchZipper!1531 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953816 (ite c!953817 (store ((as const (Array Context!9342 Bool)) false) (Context!9343 call!400303) true) lt!2229886) (ite c!953818 ((_ map or) lt!2229921 lt!2229838) z!1189)))) (ite (or c!953819 c!953812) s!2326 (ite c!953816 (ite c!953817 lt!2229876 (_2!35789 lt!2229738)) (ite c!953818 (t!375389 s!2326) s!2326)))))))

(declare-fun b!5459293 () Bool)

(declare-fun e!3380704 () Bool)

(declare-fun call!400362 () Bool)

(assert (=> b!5459293 (= e!3380704 (= lt!2229873 call!400362))))

(declare-fun bm!400329 () Bool)

(declare-fun call!400327 () Unit!154924)

(assert (=> bm!400329 (= call!400327 call!400444)))

(declare-fun bm!400330 () Bool)

(declare-fun call!400338 () Unit!154924)

(assert (=> bm!400330 (= call!400338 (lemmaZipperConcatMatchesSameAsBothZippers!524 (ite c!953819 lt!2229907 (ite c!953812 lt!2229826 lt!2229921)) (ite c!953819 lt!2229838 (ite c!953812 lt!2229896 lt!2229838)) (t!375389 s!2326)))))

(declare-fun bm!400331 () Bool)

(assert (=> bm!400331 (= call!400478 (Exists!2468 (ite c!953812 lambda!289263 (ite c!953817 lambda!289270 (ite c!953822 lambda!289278 lambda!289282)))))))

(declare-fun b!5459294 () Bool)

(assert (=> b!5459294 (= e!3380683 (not e!3380694))))

(declare-fun res!2325271 () Bool)

(assert (=> b!5459294 (=> res!2325271 e!3380694)))

(assert (=> b!5459294 (= res!2325271 (not ((_ is Cons!62038) zl!343)))))

(declare-fun lt!2229865 () Bool)

(assert (=> b!5459294 (= lt!2229873 lt!2229865)))

(assert (=> b!5459294 (= lt!2229865 (matchRSpec!2390 r!7292 s!2326))))

(assert (=> b!5459294 (= lt!2229873 (matchR!7472 r!7292 s!2326))))

(declare-fun lt!2229877 () Unit!154924)

(declare-fun mainMatchTheorem!2390 (Regex!15287 List!62160) Unit!154924)

(assert (=> b!5459294 (= lt!2229877 (mainMatchTheorem!2390 r!7292 s!2326))))

(declare-fun bm!400332 () Bool)

(declare-fun call!400418 () Unit!154924)

(assert (=> bm!400332 (= call!400418 (mainMatchTheorem!2390 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))) s!2326))))

(declare-fun bm!400333 () Bool)

(declare-fun call!400302 () Bool)

(declare-fun call!400397 () Bool)

(assert (=> bm!400333 (= call!400302 call!400397)))

(declare-fun bm!400334 () Bool)

(declare-fun call!400300 () Bool)

(assert (=> bm!400334 (= call!400300 call!400439)))

(declare-fun bm!400335 () Bool)

(declare-fun call!400450 () Bool)

(declare-fun call!400476 () Bool)

(assert (=> bm!400335 (= call!400450 call!400476)))

(declare-fun bm!400336 () Bool)

(declare-fun call!400452 () (InoxSet Context!9342))

(assert (=> bm!400336 (= call!400452 call!400330)))

(declare-fun bm!400337 () Bool)

(declare-fun call!400308 () Unit!154924)

(declare-fun call!400353 () Unit!154924)

(assert (=> bm!400337 (= call!400308 call!400353)))

(declare-fun bm!400338 () Bool)

(declare-fun call!400395 () Regex!15287)

(declare-fun call!400365 () Regex!15287)

(assert (=> bm!400338 (= call!400395 call!400365)))

(declare-fun b!5459295 () Bool)

(declare-fun e!3380706 () Bool)

(assert (=> b!5459295 (= e!3380706 false)))

(declare-fun bm!400339 () Bool)

(assert (=> bm!400339 (= call!400375 (Exists!2468 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289269 (ite c!953822 lambda!289279 lambda!289283))))))))

(declare-fun bm!400340 () Bool)

(declare-fun call!400434 () Bool)

(declare-fun call!400325 () Bool)

(assert (=> bm!400340 (= call!400434 call!400325)))

(declare-fun b!5459296 () Bool)

(declare-fun Unit!154930 () Unit!154924)

(assert (=> b!5459296 (= e!3380699 Unit!154930)))

(declare-fun lt!2229753 () Unit!154924)

(assert (=> b!5459296 (= lt!2229753 call!400338)))

(declare-fun res!2325289 () Bool)

(assert (=> b!5459296 (= res!2325289 call!400432)))

(declare-fun e!3380676 () Bool)

(assert (=> b!5459296 (=> res!2325289 e!3380676)))

(declare-fun call!400447 () Bool)

(assert (=> b!5459296 (= call!400447 e!3380676)))

(declare-fun b!5459297 () Bool)

(declare-fun e!3380690 () Unit!154924)

(declare-fun Unit!154931 () Unit!154924)

(assert (=> b!5459297 (= e!3380690 Unit!154931)))

(assert (=> b!5459297 (= lt!2229836 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(declare-fun call!400392 () Regex!15287)

(assert (=> b!5459297 (= lt!2229832 call!400392)))

(declare-fun lt!2229812 () Unit!154924)

(assert (=> b!5459297 (= lt!2229812 call!400317)))

(declare-fun call!400389 () Bool)

(declare-fun call!400383 () Bool)

(assert (=> b!5459297 (= call!400389 call!400383)))

(declare-fun bm!400341 () Bool)

(declare-fun call!400460 () (InoxSet Context!9342))

(assert (=> bm!400341 (= call!400442 call!400460)))

(declare-fun bm!400342 () Bool)

(assert (=> bm!400342 (= call!400489 (Exists!2468 (ite c!953812 lambda!289262 (ite c!953814 lambda!289265 (ite c!953817 lambda!289268 (ite c!953822 lambda!289277 lambda!289281))))))))

(declare-fun bm!400343 () Bool)

(declare-fun call!400315 () Bool)

(assert (=> bm!400343 (= call!400397 call!400315)))

(declare-fun bm!400344 () Bool)

(assert (=> bm!400344 (= call!400401 call!400420)))

(declare-fun bm!400345 () Bool)

(declare-fun call!400329 () Bool)

(assert (=> bm!400345 (= call!400329 call!400315)))

(declare-fun b!5459298 () Bool)

(declare-fun tp_is_empty!39827 () Bool)

(declare-fun tp!1502109 () Bool)

(assert (=> b!5459298 (= e!3380715 (and tp_is_empty!39827 tp!1502109))))

(declare-fun lt!2229841 () List!62160)

(declare-fun lt!2229861 () List!62161)

(declare-fun call!400467 () Bool)

(declare-fun bm!400346 () Bool)

(assert (=> bm!400346 (= call!400467 (matchZipper!1531 (ite c!953819 lt!2229838 (ite c!953812 lt!2229898 (ite c!953814 z!1189 (ite c!953816 (ite c!953817 (ite c!953815 z!1189 lt!2229892) (store ((as const (Array Context!9342 Bool)) false) (Context!9343 lt!2229861) true)) lt!2229838)))) (ite (or c!953819 c!953812) (t!375389 s!2326) (ite c!953814 s!2326 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 (_1!35789 lt!2229919)) lt!2229841) (t!375389 s!2326))))))))

(declare-fun bm!400347 () Bool)

(assert (=> bm!400347 (= call!400470 (matchR!7472 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))))))

(declare-fun bm!400348 () Bool)

(declare-fun call!400339 () Bool)

(assert (=> bm!400348 (= call!400339 call!400475)))

(declare-fun bm!400349 () Bool)

(declare-fun call!400352 () Unit!154924)

(declare-fun call!400306 () Unit!154924)

(assert (=> bm!400349 (= call!400352 call!400306)))

(declare-fun setElem!35719 () Context!9342)

(declare-fun setNonEmpty!35719 () Bool)

(declare-fun e!3380705 () Bool)

(declare-fun tp!1502110 () Bool)

(assert (=> setNonEmpty!35719 (= setRes!35719 (and tp!1502110 (inv!81464 setElem!35719) e!3380705))))

(declare-fun setRest!35719 () (InoxSet Context!9342))

(assert (=> setNonEmpty!35719 (= z!1189 ((_ map or) (store ((as const (Array Context!9342 Bool)) false) setElem!35719 true) setRest!35719))))

(declare-fun call!400323 () Bool)

(declare-fun bm!400350 () Bool)

(assert (=> bm!400350 (= call!400323 (matchR!7472 (ite c!953816 lt!2229788 (regOne!31086 r!7292)) (ite c!953816 (_1!35789 lt!2229728) s!2326)))))

(declare-fun bm!400351 () Bool)

(declare-fun call!400437 () Bool)

(declare-fun call!400319 () Bool)

(assert (=> bm!400351 (= call!400437 call!400319)))

(declare-fun e!3380708 () Unit!154924)

(declare-fun Unit!154932 () Unit!154924)

(assert (=> b!5459299 (= e!3380708 Unit!154932)))

(declare-fun lt!2229776 () Unit!154924)

(assert (=> b!5459299 (= lt!2229776 call!400327)))

(declare-fun call!400321 () Bool)

(declare-fun call!400481 () Bool)

(assert (=> b!5459299 (= call!400321 call!400481)))

(declare-fun lt!2229801 () Unit!154924)

(assert (=> b!5459299 (= lt!2229801 call!400368)))

(declare-fun lt!2229891 () Option!15398)

(declare-fun call!400345 () Option!15398)

(assert (=> b!5459299 (= lt!2229891 call!400345)))

(declare-fun call!400344 () Bool)

(declare-fun call!400491 () Bool)

(assert (=> b!5459299 (= call!400344 call!400491)))

(declare-fun lt!2229795 () Unit!154924)

(declare-fun call!400405 () Unit!154924)

(assert (=> b!5459299 (= lt!2229795 call!400405)))

(declare-fun call!400456 () Bool)

(assert (=> b!5459299 (= call!400456 call!400437)))

(declare-fun lt!2229900 () Unit!154924)

(assert (=> b!5459299 (= lt!2229900 call!400400)))

(declare-fun call!400384 () Bool)

(declare-fun call!400296 () Bool)

(assert (=> b!5459299 (= call!400384 call!400296)))

(declare-fun call!400385 () tuple2!64972)

(assert (=> b!5459299 (= lt!2229919 call!400385)))

(declare-fun lt!2229718 () Unit!154924)

(declare-fun call!400290 () Unit!154924)

(assert (=> b!5459299 (= lt!2229718 call!400290)))

(declare-fun call!400295 () List!62160)

(assert (=> b!5459299 (= lt!2229813 call!400295)))

(declare-fun call!400490 () List!62160)

(assert (=> b!5459299 (= lt!2229897 call!400490)))

(declare-fun lt!2229763 () List!62160)

(assert (=> b!5459299 (= lt!2229763 call!400446)))

(declare-fun call!400391 () List!62160)

(assert (=> b!5459299 (= lt!2229876 call!400391)))

(assert (=> b!5459299 (= lt!2229763 lt!2229876)))

(declare-fun lt!2229881 () Unit!154924)

(assert (=> b!5459299 (= lt!2229881 call!400382)))

(assert (=> b!5459299 call!400322))

(declare-fun lt!2229740 () Unit!154924)

(assert (=> b!5459299 (= lt!2229740 call!400324)))

(declare-fun call!400343 () Bool)

(assert (=> b!5459299 call!400343))

(declare-fun lt!2229797 () Unit!154924)

(assert (=> b!5459299 (= lt!2229797 call!400353)))

(declare-fun call!400381 () Bool)

(assert (=> b!5459299 (= call!400381 call!400371)))

(declare-fun lt!2229882 () Unit!154924)

(assert (=> b!5459299 (= lt!2229882 call!400352)))

(declare-fun call!400448 () Bool)

(assert (=> b!5459299 call!400448))

(declare-fun lt!2229913 () Unit!154924)

(declare-fun call!400347 () Unit!154924)

(assert (=> b!5459299 (= lt!2229913 call!400347)))

(declare-fun lt!2229717 () Unit!154924)

(declare-fun call!400297 () Unit!154924)

(assert (=> b!5459299 (= lt!2229717 call!400297)))

(assert (=> b!5459299 call!400429))

(declare-fun lt!2229796 () Unit!154924)

(declare-fun call!400318 () Unit!154924)

(assert (=> b!5459299 (= lt!2229796 call!400318)))

(declare-fun res!2325286 () Bool)

(declare-fun call!400367 () Bool)

(assert (=> b!5459299 (= res!2325286 call!400367)))

(declare-fun e!3380692 () Bool)

(assert (=> b!5459299 (=> (not res!2325286) (not e!3380692))))

(assert (=> b!5459299 e!3380692))

(declare-fun lt!2229840 () Unit!154924)

(assert (=> b!5459299 (= lt!2229840 call!400466)))

(assert (=> b!5459299 call!400397))

(declare-fun b!5459300 () Bool)

(declare-fun e!3380693 () Unit!154924)

(declare-fun e!3380682 () Unit!154924)

(assert (=> b!5459300 (= e!3380693 e!3380682)))

(assert (=> b!5459300 (= c!953822 call!400309)))

(declare-fun b!5459301 () Bool)

(declare-fun res!2325278 () Bool)

(assert (=> b!5459301 (=> res!2325278 e!3380694)))

(declare-fun generalisedConcat!956 (List!62161) Regex!15287)

(assert (=> b!5459301 (= res!2325278 (not (= r!7292 (generalisedConcat!956 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun bm!400352 () Bool)

(declare-fun call!400445 () Unit!154924)

(declare-fun lemmaEmptyZipperMatchesNothing!42 ((InoxSet Context!9342) List!62160) Unit!154924)

(assert (=> bm!400352 (= call!400445 (lemmaEmptyZipperMatchesNothing!42 lt!2229921 (t!375389 s!2326)))))

(declare-fun bm!400353 () Bool)

(declare-fun call!400370 () Bool)

(assert (=> bm!400353 (= call!400325 call!400370)))

(declare-fun call!400458 () Unit!154924)

(declare-fun bm!400354 () Bool)

(assert (=> bm!400354 (= call!400458 (mainMatchTheorem!2390 (ite c!953819 lt!2229759 lt!2229788) (ite c!953819 s!2326 (_1!35789 lt!2229728))))))

(declare-fun bm!400355 () Bool)

(declare-fun lt!2229731 () Option!15398)

(declare-fun call!400422 () Option!15398)

(declare-fun call!400484 () Option!15398)

(assert (=> bm!400355 (= call!400396 (isDefined!12101 (ite c!953812 call!400422 (ite c!953814 call!400484 lt!2229731))))))

(declare-fun e!3380713 () Bool)

(assert (=> b!5459302 e!3380713))

(declare-fun res!2325270 () Bool)

(assert (=> b!5459302 (=> (not res!2325270) (not e!3380713))))

(assert (=> b!5459302 (= res!2325270 call!400416)))

(declare-fun lt!2229901 () Unit!154924)

(declare-fun call!400408 () Unit!154924)

(assert (=> b!5459302 (= lt!2229901 call!400408)))

(declare-fun call!400379 () Bool)

(assert (=> b!5459302 (= call!400305 call!400379)))

(declare-fun lt!2229868 () Unit!154924)

(declare-fun call!400316 () Unit!154924)

(assert (=> b!5459302 (= lt!2229868 call!400316)))

(declare-fun call!400364 () Bool)

(declare-fun call!400387 () Bool)

(assert (=> b!5459302 (= call!400364 call!400387)))

(declare-fun lt!2229875 () Unit!154924)

(declare-fun call!400373 () Unit!154924)

(assert (=> b!5459302 (= lt!2229875 call!400373)))

(declare-fun call!400310 () Bool)

(declare-fun call!400331 () Bool)

(assert (=> b!5459302 (= call!400310 call!400331)))

(declare-fun lt!2229820 () Unit!154924)

(declare-fun call!400403 () Unit!154924)

(assert (=> b!5459302 (= lt!2229820 call!400403)))

(declare-fun call!400399 () Bool)

(declare-fun call!400425 () Bool)

(assert (=> b!5459302 (= call!400399 call!400425)))

(declare-fun lt!2229772 () Unit!154924)

(declare-fun call!400435 () Unit!154924)

(assert (=> b!5459302 (= lt!2229772 call!400435)))

(assert (=> b!5459302 (= call!400359 call!400302)))

(declare-fun lt!2229770 () Unit!154924)

(assert (=> b!5459302 (= lt!2229770 call!400308)))

(declare-fun call!400377 () Regex!15287)

(assert (=> b!5459302 (= lt!2229818 call!400377)))

(declare-fun call!400463 () (InoxSet Context!9342))

(assert (=> b!5459302 (= call!400452 call!400463)))

(declare-fun lt!2229773 () Unit!154924)

(assert (=> b!5459302 (= lt!2229773 call!400459)))

(assert (=> b!5459302 (= lt!2229771 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(declare-fun Unit!154933 () Unit!154924)

(assert (=> b!5459302 (= e!3380682 Unit!154933)))

(declare-fun bm!400356 () Bool)

(declare-fun call!400299 () (InoxSet Context!9342))

(assert (=> bm!400356 (= call!400299 call!400376)))

(declare-fun bm!400357 () Bool)

(declare-fun lt!2229781 () Regex!15287)

(assert (=> bm!400357 (= call!400301 (matchRSpec!2390 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))) s!2326))))

(declare-fun bm!400358 () Bool)

(assert (=> bm!400358 (= call!400351 (lemmaFindConcatSeparationEquivalentToExists!1576 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326))))

(declare-fun bm!400359 () Bool)

(assert (=> bm!400359 (= call!400348 (matchRSpec!2390 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) s!2326))))

(declare-fun bm!400360 () Bool)

(assert (=> bm!400360 (= call!400316 call!400405)))

(declare-fun b!5459303 () Bool)

(declare-fun e!3380701 () Bool)

(assert (=> b!5459303 (= e!3380701 lt!2229819)))

(declare-fun bm!400361 () Bool)

(assert (=> bm!400361 (= call!400331 call!400296)))

(declare-fun bm!400362 () Bool)

(declare-fun call!400461 () Bool)

(assert (=> bm!400362 (= call!400462 call!400461)))

(declare-fun bm!400363 () Bool)

(declare-fun call!400472 () Unit!154924)

(assert (=> bm!400363 (= call!400472 call!400444)))

(declare-fun bm!400364 () Bool)

(assert (=> bm!400364 (= call!400417 call!400372)))

(declare-fun bm!400365 () Bool)

(declare-fun call!400482 () Bool)

(assert (=> bm!400365 (= call!400482 call!400363)))

(declare-fun bm!400366 () Bool)

(declare-fun call!400354 () (InoxSet Context!9342))

(assert (=> bm!400366 (= call!400330 call!400354)))

(declare-fun bm!400367 () Bool)

(declare-fun call!400473 () Bool)

(assert (=> bm!400367 (= call!400473 call!400489)))

(declare-fun bm!400368 () Bool)

(assert (=> bm!400368 (= call!400428 call!400415)))

(declare-fun bm!400369 () Bool)

(assert (=> bm!400369 (= call!400343 call!400462)))

(declare-fun b!5459304 () Bool)

(declare-fun res!2325273 () Bool)

(assert (=> b!5459304 (=> res!2325273 e!3380694)))

(declare-fun isEmpty!34023 (List!62162) Bool)

(assert (=> b!5459304 (= res!2325273 (not (isEmpty!34023 (t!375391 zl!343))))))

(declare-fun bm!400370 () Bool)

(declare-fun call!400355 () Unit!154924)

(assert (=> bm!400370 (= call!400477 call!400355)))

(declare-fun bm!400371 () Bool)

(declare-fun call!400357 () Option!15398)

(assert (=> bm!400371 (= call!400357 call!400484)))

(declare-fun bm!400372 () Bool)

(assert (=> bm!400372 (= call!400294 (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))))))

(declare-fun bm!400373 () Bool)

(assert (=> bm!400373 (= call!400457 call!400467)))

(declare-fun bm!400374 () Bool)

(declare-fun call!400393 () Unit!154924)

(declare-fun call!400360 () Unit!154924)

(assert (=> bm!400374 (= call!400393 call!400360)))

(declare-fun b!5459305 () Bool)

(declare-fun lt!2229878 () Bool)

(assert (=> b!5459305 (not lt!2229878)))

(declare-fun lt!2229830 () Unit!154924)

(assert (=> b!5459305 (= lt!2229830 e!3380693)))

(declare-fun c!953820 () Bool)

(assert (=> b!5459305 (= c!953820 lt!2229878)))

(declare-fun call!400356 () Bool)

(assert (=> b!5459305 (= lt!2229878 call!400356)))

(declare-fun Unit!154934 () Unit!154924)

(assert (=> b!5459305 (= e!3380714 Unit!154934)))

(declare-fun b!5459306 () Bool)

(assert (=> b!5459306 (= c!953816 ((_ is Star!15287) (regOne!31086 r!7292)))))

(declare-fun e!3380716 () Unit!154924)

(assert (=> b!5459306 (= e!3380716 e!3380691)))

(assert (=> b!5459307 e!3380706))

(declare-fun res!2325265 () Bool)

(assert (=> b!5459307 (=> (not res!2325265) (not e!3380706))))

(assert (=> b!5459307 (= res!2325265 call!400359)))

(declare-fun lt!2229827 () Unit!154924)

(assert (=> b!5459307 (= lt!2229827 call!400324)))

(assert (=> b!5459307 call!400321))

(declare-fun lt!2229802 () Unit!154924)

(assert (=> b!5459307 (= lt!2229802 call!400382)))

(declare-fun lt!2229736 () List!62160)

(declare-fun call!400411 () List!62160)

(assert (=> b!5459307 (= lt!2229736 call!400411)))

(assert (=> b!5459307 (= lt!2229736 (++!13653 lt!2229821 (_2!35789 lt!2229728)))))

(declare-fun lt!2229783 () List!62160)

(assert (=> b!5459307 (= lt!2229783 call!400295)))

(assert (=> b!5459307 (= lt!2229821 call!400490)))

(declare-fun lt!2229752 () Unit!154924)

(assert (=> b!5459307 (= lt!2229752 call!400290)))

(declare-fun call!400390 () tuple2!64972)

(assert (=> b!5459307 (= lt!2229902 call!400390)))

(assert (=> b!5459307 (= call!400414 call!400384)))

(declare-fun lt!2229739 () Unit!154924)

(assert (=> b!5459307 (= lt!2229739 call!400316)))

(assert (=> b!5459307 (= call!400331 call!400379)))

(declare-fun lt!2229906 () Unit!154924)

(assert (=> b!5459307 (= lt!2229906 call!400373)))

(assert (=> b!5459307 (= call!400310 call!400387)))

(assert (=> b!5459307 (= lt!2229808 call!400345)))

(declare-fun lt!2229748 () Unit!154924)

(assert (=> b!5459307 (= lt!2229748 call!400403)))

(assert (=> b!5459307 (= call!400323 call!400425)))

(declare-fun lt!2229918 () Unit!154924)

(assert (=> b!5459307 (= lt!2229918 call!400458)))

(declare-fun lt!2229751 () Option!15398)

(declare-fun get!21395 (Option!15398) tuple2!64972)

(assert (=> b!5459307 (= lt!2229728 (get!21395 lt!2229751))))

(assert (=> b!5459307 (= call!400456 call!400305)))

(declare-fun lt!2229920 () Unit!154924)

(assert (=> b!5459307 (= lt!2229920 call!400380)))

(assert (=> b!5459307 (= call!400344 call!400364)))

(assert (=> b!5459307 (= lt!2229751 call!400426)))

(declare-fun lt!2229732 () Unit!154924)

(declare-fun call!400335 () Unit!154924)

(assert (=> b!5459307 (= lt!2229732 call!400335)))

(assert (=> b!5459307 call!400438))

(declare-fun lt!2229908 () Unit!154924)

(assert (=> b!5459307 (= lt!2229908 call!400435)))

(assert (=> b!5459307 call!400416))

(assert (=> b!5459307 (= lt!2229781 (Concat!24132 lt!2229788 (regTwo!31086 r!7292)))))

(assert (=> b!5459307 (= lt!2229788 (Concat!24132 (reg!15616 (regOne!31086 r!7292)) lt!2229794))))

(declare-fun lt!2229742 () Unit!154924)

(declare-fun call!400419 () Unit!154924)

(assert (=> b!5459307 (= lt!2229742 call!400419)))

(assert (=> b!5459307 e!3380701))

(declare-fun res!2325282 () Bool)

(assert (=> b!5459307 (=> (not res!2325282) (not e!3380701))))

(assert (=> b!5459307 (= res!2325282 call!400399)))

(declare-fun lt!2229887 () Unit!154924)

(assert (=> b!5459307 (= lt!2229887 call!400408)))

(assert (=> b!5459307 (= call!400325 call!400429)))

(declare-fun lt!2229914 () Unit!154924)

(assert (=> b!5459307 (= lt!2229914 call!400306)))

(assert (=> b!5459307 (= call!400381 call!400302)))

(declare-fun lt!2229872 () Unit!154924)

(assert (=> b!5459307 (= lt!2229872 call!400308)))

(declare-fun call!400341 () Bool)

(assert (=> b!5459307 call!400341))

(assert (=> b!5459307 (= lt!2229841 call!400446)))

(assert (=> b!5459307 (= lt!2229861 call!400303)))

(declare-fun lt!2229814 () Unit!154924)

(assert (=> b!5459307 (= lt!2229814 call!400466)))

(declare-fun lt!2229769 () Unit!154924)

(assert (=> b!5459307 (= lt!2229769 call!400347)))

(assert (=> b!5459307 (= lt!2229738 call!400385)))

(declare-fun call!400440 () Bool)

(assert (=> b!5459307 call!400440))

(declare-fun findConcatSeparationZippers!86 ((InoxSet Context!9342) (InoxSet Context!9342) List!62160 List!62160 List!62160) Option!15398)

(assert (=> b!5459307 (= lt!2229731 (findConcatSeparationZippers!86 lt!2229892 lt!2229886 Nil!62036 s!2326 s!2326))))

(declare-fun lt!2229730 () Unit!154924)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!86 ((InoxSet Context!9342) Context!9342 List!62160) Unit!154924)

(assert (=> b!5459307 (= lt!2229730 (lemmaConcatZipperMatchesStringThenFindConcatDefined!86 lt!2229892 lt!2229848 s!2326))))

(declare-fun lambda!289274 () Int)

(declare-fun map!14257 ((InoxSet Context!9342) Int) (InoxSet Context!9342))

(assert (=> b!5459307 (= (map!14257 lt!2229892 lambda!289274) (store ((as const (Array Context!9342 Bool)) false) (Context!9343 call!400303) true))))

(declare-fun lt!2229862 () Unit!154924)

(assert (=> b!5459307 (= lt!2229862 call!400297)))

(declare-fun lt!2229722 () Unit!154924)

(declare-fun lemmaMapOnSingletonSet!88 ((InoxSet Context!9342) Context!9342 Int) Unit!154924)

(assert (=> b!5459307 (= lt!2229722 (lemmaMapOnSingletonSet!88 lt!2229892 lt!2229837 lambda!289274))))

(declare-fun Unit!154935 () Unit!154924)

(assert (=> b!5459307 (= e!3380682 Unit!154935)))

(declare-fun b!5459308 () Bool)

(declare-fun tp!1502111 () Bool)

(assert (=> b!5459308 (= e!3380705 tp!1502111)))

(declare-fun bm!400375 () Bool)

(assert (=> bm!400375 (= call!400381 (matchR!7472 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))))))

(declare-fun bm!400376 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!102 (Context!9342 Context!9342 List!62160 List!62160) Unit!154924)

(assert (=> bm!400376 (= call!400347 (lemmaConcatenateContextMatchesConcatOfStrings!102 lt!2229837 lt!2229848 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)) (ite c!953817 lt!2229897 (_2!35789 lt!2229738))))))

(declare-fun bm!400377 () Bool)

(assert (=> bm!400377 (= call!400328 call!400479)))

(declare-fun bm!400378 () Bool)

(declare-fun call!400454 () Bool)

(assert (=> bm!400378 (= call!400454 call!400470)))

(declare-fun b!5459309 () Bool)

(declare-fun e!3380689 () Unit!154924)

(assert (=> b!5459309 (= e!3380691 e!3380689)))

(assert (=> b!5459309 (= c!953818 ((_ is EmptyExpr!15287) (regOne!31086 r!7292)))))

(declare-fun bm!400379 () Bool)

(assert (=> bm!400379 (= call!400387 call!400491)))

(declare-fun b!5459310 () Bool)

(declare-fun res!2325293 () Bool)

(assert (=> b!5459310 (=> res!2325293 e!3380694)))

(assert (=> b!5459310 (= res!2325293 (not ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343)))))))

(declare-fun bm!400380 () Bool)

(declare-fun ++!13654 (List!62161 List!62161) List!62161)

(assert (=> bm!400380 (= call!400303 (++!13654 lt!2229729 lt!2229899))))

(declare-fun bm!400381 () Bool)

(declare-fun call!400346 () Unit!154924)

(assert (=> bm!400381 (= call!400421 call!400346)))

(declare-fun bm!400382 () Bool)

(assert (=> bm!400382 (= call!400490 (++!13653 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902))))))

(declare-fun b!5459311 () Bool)

(declare-fun res!2325269 () Bool)

(assert (=> b!5459311 (=> (not res!2325269) (not e!3380683))))

(declare-fun unfocusZipper!1029 (List!62162) Regex!15287)

(assert (=> b!5459311 (= res!2325269 (= r!7292 (unfocusZipper!1029 zl!343)))))

(declare-fun bm!400383 () Bool)

(assert (=> bm!400383 (= call!400448 call!400356)))

(declare-fun bm!400384 () Bool)

(declare-fun call!400311 () Bool)

(assert (=> bm!400384 (= call!400310 call!400311)))

(declare-fun b!5459312 () Bool)

(declare-fun e!3380711 () Bool)

(declare-fun lt!2229859 () Regex!15287)

(assert (=> b!5459312 (= e!3380711 (validRegex!7023 lt!2229859))))

(declare-fun lt!2229915 () (InoxSet Context!9342))

(assert (=> b!5459312 (= (matchR!7472 lt!2229859 s!2326) (matchZipper!1531 lt!2229915 s!2326))))

(declare-fun lt!2229894 () Unit!154924)

(declare-fun lt!2229845 () List!62162)

(assert (=> b!5459312 (= lt!2229894 (theoremZipperRegexEquiv!567 lt!2229915 lt!2229845 lt!2229859 s!2326))))

(declare-fun b!5459313 () Bool)

(declare-fun res!2325283 () Bool)

(assert (=> b!5459313 (=> res!2325283 e!3380697)))

(declare-fun isEmpty!34024 (List!62161) Bool)

(assert (=> b!5459313 (= res!2325283 (isEmpty!34024 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun bm!400385 () Bool)

(assert (=> bm!400385 (= call!400476 call!400375)))

(declare-fun bm!400386 () Bool)

(assert (=> bm!400386 (= call!400435 call!400327)))

(declare-fun b!5459314 () Bool)

(declare-fun e!3380679 () Bool)

(assert (=> b!5459314 (= e!3380679 call!400467)))

(declare-fun b!5459315 () Bool)

(declare-fun tp!1502108 () Bool)

(declare-fun tp!1502115 () Bool)

(assert (=> b!5459315 (= e!3380685 (and tp!1502108 tp!1502115))))

(declare-fun bm!400387 () Bool)

(assert (=> bm!400387 (= call!400426 call!400357)))

(declare-fun b!5459316 () Bool)

(declare-fun e!3380688 () Bool)

(assert (=> b!5459316 (= e!3380688 call!400432)))

(declare-fun bm!400388 () Bool)

(declare-fun lt!2229734 () List!62161)

(assert (=> bm!400388 (= call!400427 (generalisedConcat!956 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5459317 () Bool)

(declare-fun e!3380684 () Bool)

(declare-fun call!400369 () Bool)

(assert (=> b!5459317 (= e!3380684 call!400369)))

(declare-fun lt!2229720 () Regex!15287)

(declare-fun bm!400389 () Bool)

(assert (=> bm!400389 (= call!400389 (matchR!7472 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))))))

(declare-fun bm!400390 () Bool)

(assert (=> bm!400390 (= call!400354 (flatMap!1014 (ite c!953819 lt!2229716 (ite c!953812 lt!2229910 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))))))

(declare-fun bm!400391 () Bool)

(declare-fun lemmaConcatAssociativity!2864 (List!62160 List!62160 List!62160) Unit!154924)

(assert (=> bm!400391 (= call!400290 (lemmaConcatAssociativity!2864 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))))))

(declare-fun bm!400392 () Bool)

(assert (=> bm!400392 (= call!400468 call!400473)))

(declare-fun bm!400393 () Bool)

(assert (=> bm!400393 (= call!400319 call!400464)))

(declare-fun bm!400394 () Bool)

(assert (=> bm!400394 (= call!400419 call!400480)))

(declare-fun bm!400395 () Bool)

(declare-fun call!400413 () Bool)

(assert (=> bm!400395 (= call!400413 call!400320)))

(declare-fun bm!400396 () Bool)

(assert (=> bm!400396 (= call!400488 call!400407)))

(declare-fun bm!400397 () Bool)

(declare-fun lt!2229764 () List!62161)

(declare-fun lt!2229806 () List!62161)

(assert (=> bm!400397 (= call!400392 (generalisedConcat!956 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(declare-fun bm!400398 () Bool)

(assert (=> bm!400398 (= call!400341 call!400404)))

(declare-fun bm!400399 () Bool)

(assert (=> bm!400399 (= call!400315 call!400412)))

(declare-fun bm!400400 () Bool)

(declare-fun call!400433 () Bool)

(assert (=> bm!400400 (= call!400433 call!400482)))

(declare-fun bm!400401 () Bool)

(assert (=> bm!400401 (= call!400487 call!400294)))

(declare-fun bm!400402 () Bool)

(assert (=> bm!400402 (= call!400383 (matchZipper!1531 (ite c!953810 lt!2229836 (ite c!953819 lt!2229907 ((_ map or) lt!2229826 lt!2229896))) (t!375389 s!2326)))))

(declare-fun bm!400403 () Bool)

(assert (=> bm!400403 (= call!400360 call!400428)))

(declare-fun b!5459318 () Bool)

(assert (=> b!5459318 e!3380704))

(declare-fun res!2325276 () Bool)

(assert (=> b!5459318 (=> (not res!2325276) (not e!3380704))))

(assert (=> b!5459318 (= res!2325276 (= call!400434 call!400433))))

(declare-fun lt!2229733 () Unit!154924)

(assert (=> b!5459318 (= lt!2229733 call!400472)))

(declare-fun call!400314 () Bool)

(assert (=> b!5459318 (= call!400314 call!400342)))

(declare-fun lt!2229866 () Unit!154924)

(declare-fun call!400443 () Unit!154924)

(assert (=> b!5459318 (= lt!2229866 call!400443)))

(assert (=> b!5459318 (not call!400329)))

(declare-fun lt!2229807 () Unit!154924)

(assert (=> b!5459318 (= lt!2229807 call!400445)))

(declare-fun Unit!154936 () Unit!154924)

(assert (=> b!5459318 (= e!3380689 Unit!154936)))

(declare-fun bm!400404 () Bool)

(assert (=> bm!400404 (= call!400322 call!400300)))

(declare-fun b!5459319 () Bool)

(assert (=> b!5459319 (= e!3380702 e!3380716)))

(assert (=> b!5459319 (= c!953814 ((_ is Concat!24132) (regOne!31086 r!7292)))))

(declare-fun e!3380703 () Bool)

(assert (=> b!5459320 e!3380703))

(declare-fun res!2325288 () Bool)

(assert (=> b!5459320 (=> (not res!2325288) (not e!3380703))))

(assert (=> b!5459320 (= res!2325288 (= call!400454 call!400300))))

(declare-fun lt!2229851 () Unit!154924)

(assert (=> b!5459320 (= lt!2229851 call!400419)))

(declare-fun call!400406 () Bool)

(assert (=> b!5459320 (= call!400413 call!400406)))

(declare-fun lt!2229831 () Unit!154924)

(assert (=> b!5459320 (= lt!2229831 call!400487)))

(declare-fun call!400402 () Bool)

(assert (=> b!5459320 (= call!400402 call!400339)))

(declare-fun lt!2229746 () Unit!154924)

(declare-fun call!400409 () Unit!154924)

(assert (=> b!5459320 (= lt!2229746 call!400409)))

(assert (=> b!5459320 (= lt!2229863 call!400492)))

(assert (=> b!5459320 (= call!400370 call!400417)))

(declare-fun lt!2229890 () Unit!154924)

(assert (=> b!5459320 (= lt!2229890 call!400358)))

(assert (=> b!5459320 (= call!400319 call!400473)))

(declare-fun lt!2229723 () Unit!154924)

(assert (=> b!5459320 (= lt!2229723 call!400328)))

(assert (=> b!5459320 (= call!400440 call!400476)))

(declare-fun lt!2229864 () Unit!154924)

(assert (=> b!5459320 (= lt!2229864 call!400293)))

(assert (=> b!5459320 (= lt!2229767 call!400374)))

(declare-fun lt!2229765 () Bool)

(assert (=> b!5459320 (= lt!2229765 call!400313)))

(declare-fun lt!2229911 () Unit!154924)

(assert (=> b!5459320 (= lt!2229911 call!400326)))

(declare-fun call!400485 () Bool)

(assert (=> b!5459320 (= lt!2229765 call!400485)))

(declare-fun call!400334 () Bool)

(assert (=> b!5459320 (= lt!2229765 call!400334)))

(declare-fun lt!2229798 () Unit!154924)

(assert (=> b!5459320 (= lt!2229798 call!400360)))

(assert (=> b!5459320 (= lt!2229756 call!400365)))

(assert (=> b!5459320 (= call!400460 call!400299)))

(declare-fun lt!2229805 () Unit!154924)

(assert (=> b!5459320 (= lt!2229805 call!400496)))

(declare-fun lt!2229778 () (InoxSet Context!9342))

(assert (=> b!5459320 (= lt!2229778 call!400299)))

(assert (=> b!5459320 (= lt!2229833 (store ((as const (Array Context!9342 Bool)) false) lt!2229856 true))))

(assert (=> b!5459320 (= lt!2229856 (Context!9343 lt!2229764))))

(declare-fun lt!2229747 () List!62161)

(assert (=> b!5459320 (= lt!2229764 (Cons!62037 (regOne!31086 (regOne!31086 r!7292)) lt!2229747))))

(declare-fun lt!2229843 () (InoxSet Context!9342))

(assert (=> b!5459320 (= lt!2229843 call!400453)))

(assert (=> b!5459320 (= lt!2229747 (Cons!62037 (regTwo!31086 (regOne!31086 r!7292)) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun Unit!154937 () Unit!154924)

(assert (=> b!5459320 (= e!3380716 Unit!154937)))

(declare-fun bm!400405 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!444 (Regex!15287 List!62160) Unit!154924)

(assert (=> bm!400405 (= call!400405 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!444 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))))))

(declare-fun bm!400406 () Bool)

(assert (=> bm!400406 (= call!400412 call!400447)))

(declare-fun b!5459321 () Bool)

(declare-fun e!3380710 () Bool)

(assert (=> b!5459321 (= e!3380710 (matchZipper!1531 lt!2229838 (t!375389 s!2326)))))

(declare-fun bm!400407 () Bool)

(assert (=> bm!400407 (= call!400399 call!400367)))

(declare-fun bm!400408 () Bool)

(declare-fun call!400469 () Bool)

(assert (=> bm!400408 (= call!400469 (matchR!7472 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))))))

(declare-fun bm!400409 () Bool)

(assert (=> bm!400409 (= call!400463 call!400299)))

(declare-fun bm!400410 () Bool)

(assert (=> bm!400410 (= call!400344 (isDefined!12101 (ite c!953817 lt!2229891 lt!2229751)))))

(declare-fun bm!400411 () Bool)

(assert (=> bm!400411 (= call!400464 (Exists!2468 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289271 (ite c!953822 lambda!289276 lambda!289281))))))))

(declare-fun bm!400412 () Bool)

(assert (=> bm!400412 (= call!400493 call!400361)))

(declare-fun b!5459322 () Bool)

(assert (=> b!5459322 (= c!953812 e!3380684)))

(declare-fun res!2325277 () Bool)

(assert (=> b!5459322 (=> (not res!2325277) (not e!3380684))))

(assert (=> b!5459322 (= res!2325277 ((_ is Concat!24132) (regOne!31086 r!7292)))))

(declare-fun e!3380707 () Unit!154924)

(assert (=> b!5459322 (= e!3380707 e!3380702)))

(declare-fun bm!400413 () Bool)

(declare-fun call!400423 () (InoxSet Context!9342))

(assert (=> bm!400413 (= call!400460 call!400423)))

(declare-fun bm!400414 () Bool)

(assert (=> bm!400414 (= call!400293 call!400378)))

(declare-fun bm!400415 () Bool)

(assert (=> bm!400415 (= call!400345 call!400493)))

(declare-fun bm!400416 () Bool)

(declare-fun nullable!5456 (Regex!15287) Bool)

(assert (=> bm!400416 (= call!400369 (nullable!5456 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(declare-fun b!5459323 () Bool)

(assert (=> b!5459323 (= e!3380703 (= lt!2229873 call!400388))))

(declare-fun bm!400417 () Bool)

(assert (=> bm!400417 (= call!400335 call!400409)))

(declare-fun bm!400418 () Bool)

(assert (=> bm!400418 (= call!400365 call!400455)))

(declare-fun bm!400419 () Bool)

(assert (=> bm!400419 (= call!400432 call!400383)))

(declare-fun b!5459324 () Bool)

(declare-fun Unit!154938 () Unit!154924)

(assert (=> b!5459324 (= e!3380693 Unit!154938)))

(declare-fun bm!400420 () Bool)

(assert (=> bm!400420 (= call!400391 (++!13653 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326))))))

(declare-fun bm!400421 () Bool)

(assert (=> bm!400421 (= call!400430 call!400485)))

(declare-fun bm!400422 () Bool)

(assert (=> bm!400422 (= call!400355 call!400317)))

(declare-fun bm!400423 () Bool)

(assert (=> bm!400423 (= call!400403 call!400368)))

(declare-fun bm!400424 () Bool)

(assert (=> bm!400424 (= call!400411 call!400391)))

(declare-fun bm!400425 () Bool)

(assert (=> bm!400425 (= call!400496 call!400474)))

(declare-fun b!5459325 () Bool)

(declare-fun e!3380677 () Bool)

(assert (=> b!5459325 (= e!3380677 e!3380711)))

(declare-fun res!2325267 () Bool)

(assert (=> b!5459325 (=> res!2325267 e!3380711)))

(declare-fun zipperDepth!188 (List!62162) Int)

(assert (=> b!5459325 (= res!2325267 (< (zipperDepth!188 zl!343) (zipperDepth!188 lt!2229845)))))

(assert (=> b!5459325 (= lt!2229845 (Cons!62038 lt!2229804 Nil!62038))))

(declare-fun b!5459326 () Bool)

(declare-fun e!3380709 () Unit!154924)

(declare-fun Unit!154939 () Unit!154924)

(assert (=> b!5459326 (= e!3380709 Unit!154939)))

(declare-fun bm!400426 () Bool)

(assert (=> bm!400426 (= call!400370 call!400386)))

(declare-fun bm!400427 () Bool)

(declare-fun call!400350 () Regex!15287)

(assert (=> bm!400427 (= call!400455 call!400350)))

(declare-fun bm!400428 () Bool)

(assert (=> bm!400428 (= call!400297 (lemmaConcatPreservesForall!254 lt!2229729 lt!2229899 (ite c!953817 lambda!289273 lambda!289275)))))

(declare-fun bm!400429 () Bool)

(assert (=> bm!400429 (= call!400320 (Exists!2468 (ite c!953812 lambda!289262 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289280)))))))

(declare-fun bm!400430 () Bool)

(assert (=> bm!400430 (= call!400304 (lemmaFlatMapOnSingletonSet!546 (ite c!953819 lt!2229716 lt!2229892) (ite c!953819 lt!2229784 lt!2229837) (ite c!953819 lambda!289259 lambda!289259)))))

(declare-fun bm!400431 () Bool)

(assert (=> bm!400431 (= call!400486 call!400338)))

(declare-fun bm!400432 () Bool)

(assert (=> bm!400432 (= call!400485 call!400483)))

(declare-fun b!5459327 () Bool)

(declare-fun res!2325264 () Bool)

(assert (=> b!5459327 (=> res!2325264 e!3380694)))

(assert (=> b!5459327 (= res!2325264 (or ((_ is EmptyExpr!15287) r!7292) ((_ is EmptyLang!15287) r!7292) ((_ is ElementMatch!15287) r!7292) ((_ is Union!15287) r!7292) (not ((_ is Concat!24132) r!7292))))))

(declare-fun bm!400433 () Bool)

(assert (=> bm!400433 (= call!400334 call!400398)))

(declare-fun bm!400434 () Bool)

(assert (=> bm!400434 (= call!400423 (flatMap!1014 (ite c!953819 lt!2229842 (ite c!953814 lt!2229833 (ite c!953816 lt!2229886 lt!2229839))) (ite c!953819 lambda!289259 (ite c!953814 lambda!289259 (ite c!953816 lambda!289259 lambda!289259)))))))

(declare-fun bm!400435 () Bool)

(assert (=> bm!400435 (= call!400356 call!400394)))

(declare-fun bm!400436 () Bool)

(declare-fun derivationStepZipperDown!735 (Regex!15287 Context!9342 C!30844) (InoxSet Context!9342))

(assert (=> bm!400436 (= call!400292 (derivationStepZipperDown!735 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848)) (h!68484 s!2326)))))

(declare-fun b!5459328 () Bool)

(assert (=> b!5459328 (= e!3380692 lt!2229819)))

(declare-fun b!5459329 () Bool)

(declare-fun e!3380695 () Bool)

(assert (=> b!5459329 (= e!3380695 (= lt!2229873 call!400394))))

(declare-fun bm!400437 () Bool)

(declare-fun call!400366 () Bool)

(assert (=> bm!400437 (= call!400386 call!400366)))

(declare-fun bm!400438 () Bool)

(assert (=> bm!400438 (= call!400475 (Exists!2468 (ite c!953812 lambda!289261 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289276)))))))

(declare-fun bm!400439 () Bool)

(assert (=> bm!400439 (= call!400443 call!400471)))

(declare-fun bm!400440 () Bool)

(assert (=> bm!400440 (= call!400358 call!400431)))

(declare-fun bm!400441 () Bool)

(assert (=> bm!400441 (= call!400425 call!400481)))

(declare-fun bm!400442 () Bool)

(assert (=> bm!400442 (= call!400374 (generalisedConcat!956 (ite c!953812 lt!2229758 lt!2229747)))))

(declare-fun bm!400443 () Bool)

(assert (=> bm!400443 (= call!400377 call!400395)))

(declare-fun bm!400444 () Bool)

(declare-fun lemmaConcatAssociative!82 (Regex!15287 Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> bm!400444 (= call!400480 (lemmaConcatAssociative!82 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326))))

(declare-fun bm!400445 () Bool)

(assert (=> bm!400445 (= call!400321 call!400454)))

(declare-fun b!5459330 () Bool)

(assert (=> b!5459330 e!3380695))

(declare-fun res!2325280 () Bool)

(assert (=> b!5459330 (=> (not res!2325280) (not e!3380695))))

(assert (=> b!5459330 (= res!2325280 (= call!400434 call!400430))))

(declare-fun lt!2229785 () Unit!154924)

(assert (=> b!5459330 (= lt!2229785 call!400393)))

(assert (=> b!5459330 (= lt!2229757 call!400395)))

(assert (=> b!5459330 (= call!400362 call!400404)))

(declare-fun lt!2229721 () Unit!154924)

(assert (=> b!5459330 (= lt!2229721 call!400486)))

(assert (=> b!5459330 (= call!400442 call!400401)))

(declare-fun lt!2229726 () Unit!154924)

(assert (=> b!5459330 (= lt!2229726 call!400495)))

(assert (=> b!5459330 (= lt!2229839 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(assert (=> b!5459330 (= call!400461 call!400433)))

(declare-fun lt!2229889 () Unit!154924)

(assert (=> b!5459330 (= lt!2229889 call!400472)))

(assert (=> b!5459330 (= call!400314 call!400342)))

(declare-fun lt!2229847 () Unit!154924)

(assert (=> b!5459330 (= lt!2229847 call!400443)))

(assert (=> b!5459330 (not call!400329)))

(declare-fun lt!2229744 () Unit!154924)

(assert (=> b!5459330 (= lt!2229744 call!400445)))

(declare-fun Unit!154940 () Unit!154924)

(assert (=> b!5459330 (= e!3380689 Unit!154940)))

(declare-fun b!5459331 () Bool)

(declare-fun e!3380675 () Bool)

(assert (=> b!5459331 (= e!3380675 e!3380677)))

(declare-fun res!2325263 () Bool)

(assert (=> b!5459331 (=> res!2325263 e!3380677)))

(declare-fun regexDepth!203 (Regex!15287) Int)

(assert (=> b!5459331 (= res!2325263 (< (regexDepth!203 r!7292) (regexDepth!203 lt!2229859)))))

(assert (=> b!5459331 (= lt!2229859 (generalisedConcat!956 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5459332 () Bool)

(assert (=> b!5459332 (= e!3380676 call!400467)))

(declare-fun bm!400446 () Bool)

(assert (=> bm!400446 (= call!400447 (matchZipper!1531 (ite c!953819 ((_ map or) lt!2229907 lt!2229838) (ite c!953812 lt!2229910 (ite c!953816 (ite c!953817 z!1189 (ite c!953822 lt!2229892 lt!2229771)) lt!2229921))) (ite c!953819 (t!375389 s!2326) (ite c!953812 s!2326 (ite c!953816 (ite c!953817 s!2326 (ite c!953822 (_1!35789 lt!2229738) s!2326)) (t!375389 s!2326))))))))

(declare-fun bm!400447 () Bool)

(assert (=> bm!400447 (= call!400295 (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728))))))

(declare-fun bm!400448 () Bool)

(assert (=> bm!400448 (= call!400346 (lemmaFlatMapOnSingletonSet!546 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lt!2229904 (ite c!953812 lt!2229858 lt!2229804)) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))))))

(declare-fun bm!400449 () Bool)

(assert (=> bm!400449 (= call!400318 (lemmaTwoRegexMatchThenConcatMatchesConcatString!254 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229794) (ite (or c!953817 c!953822) lt!2229799 (regTwo!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 (_2!35789 lt!2229738) s!2326))))))

(declare-fun call!400333 () Bool)

(declare-fun bm!400450 () Bool)

(assert (=> bm!400450 (= call!400333 (matchZipper!1531 (ite c!953819 lt!2229853 (ite c!953812 ((_ map or) lt!2229826 lt!2229898) lt!2229921)) (t!375389 s!2326)))))

(declare-fun bm!400451 () Bool)

(assert (=> bm!400451 (= call!400366 (matchR!7472 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))))))

(declare-fun bm!400452 () Bool)

(assert (=> bm!400452 (= call!400306 call!400477)))

(declare-fun bm!400453 () Bool)

(assert (=> bm!400453 (= call!400298 (derivationStepZipperDown!735 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (ite c!953819 lt!2229804 lt!2229850) (h!68484 s!2326)))))

(declare-fun bm!400454 () Bool)

(assert (=> bm!400454 (= call!400491 call!400478)))

(declare-fun bm!400455 () Bool)

(assert (=> bm!400455 (= call!400379 call!400450)))

(declare-fun bm!400456 () Bool)

(declare-fun call!400332 () Bool)

(assert (=> bm!400456 (= call!400439 call!400332)))

(assert (=> b!5459333 call!400397))

(declare-fun lt!2229917 () Unit!154924)

(assert (=> b!5459333 (= lt!2229917 e!3380708)))

(declare-fun isEmpty!34025 (List!62160) Bool)

(assert (=> b!5459333 (= c!953815 (isEmpty!34025 (_1!35789 lt!2229844)))))

(assert (=> b!5459333 (= lt!2229844 call!400390)))

(assert (=> b!5459333 (= call!400468 call!400450)))

(declare-fun lt!2229893 () Unit!154924)

(assert (=> b!5459333 (= lt!2229893 call!400380)))

(assert (=> b!5459333 (= call!400311 call!400414)))

(assert (=> b!5459333 (= lt!2229822 call!400357)))

(declare-fun lt!2229787 () Unit!154924)

(assert (=> b!5459333 (= lt!2229787 call!400335)))

(declare-fun Unit!154941 () Unit!154924)

(assert (=> b!5459333 (= e!3380714 Unit!154941)))

(declare-fun bm!400457 () Bool)

(assert (=> bm!400457 (= call!400422 (findConcatSeparation!1812 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (ite (or c!953817 c!953822) (regTwo!31086 r!7292) lt!2229794))) Nil!62036 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(declare-fun bm!400458 () Bool)

(assert (=> bm!400458 (= call!400471 call!400326)))

(declare-fun bm!400459 () Bool)

(declare-fun call!400336 () Unit!154924)

(assert (=> bm!400459 (= call!400431 call!400336)))

(declare-fun setIsEmpty!35719 () Bool)

(assert (=> setIsEmpty!35719 setRes!35719))

(declare-fun bm!400460 () Bool)

(assert (=> bm!400460 (= call!400309 call!400333)))

(declare-fun b!5459334 () Bool)

(assert (=> b!5459334 (= e!3380678 call!400457)))

(declare-fun bm!400461 () Bool)

(assert (=> bm!400461 (= call!400456 call!400339)))

(declare-fun b!5459335 () Bool)

(declare-fun tp!1502113 () Bool)

(assert (=> b!5459335 (= e!3380687 tp!1502113)))

(declare-fun bm!400462 () Bool)

(assert (=> bm!400462 (= call!400336 (mainMatchTheorem!2390 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 s!2326 Nil!62036)) s!2326))))))

(declare-fun bm!400463 () Bool)

(assert (=> bm!400463 (= call!400390 (get!21395 (ite c!953817 lt!2229822 lt!2229808)))))

(declare-fun bm!400464 () Bool)

(assert (=> bm!400464 (= call!400398 call!400469)))

(declare-fun bm!400465 () Bool)

(assert (=> bm!400465 (= call!400408 call!400318)))

(declare-fun b!5459336 () Bool)

(declare-fun e!3380696 () Bool)

(assert (=> b!5459336 (= e!3380696 (= lt!2229873 call!400465))))

(declare-fun bm!400466 () Bool)

(assert (=> bm!400466 (= call!400481 call!400482)))

(declare-fun bm!400467 () Bool)

(assert (=> bm!400467 (= call!400484 call!400422)))

(declare-fun bm!400468 () Bool)

(assert (=> bm!400468 (= call!400378 (lemmaFindConcatSeparationEquivalentToExists!1576 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))))))

(declare-fun bm!400469 () Bool)

(assert (=> bm!400469 (= call!400353 call!400393)))

(declare-fun bm!400470 () Bool)

(assert (=> bm!400470 (= call!400350 call!400392)))

(declare-fun b!5459337 () Bool)

(assert (=> b!5459337 (= e!3380681 (or (not lt!2229873) lt!2229865))))

(assert (=> b!5459338 (= e!3380697 e!3380675)))

(declare-fun res!2325281 () Bool)

(assert (=> b!5459338 (=> res!2325281 e!3380675)))

(declare-fun derivationStepZipper!1506 ((InoxSet Context!9342) C!30844) (InoxSet Context!9342))

(assert (=> b!5459338 (= res!2325281 (not (= lt!2229838 (derivationStepZipper!1506 lt!2229915 (h!68484 s!2326)))))))

(assert (=> b!5459338 (= (flatMap!1014 lt!2229915 lambda!289259) (derivationStepZipperUp!659 lt!2229804 (h!68484 s!2326)))))

(declare-fun lt!2229909 () Unit!154924)

(assert (=> b!5459338 (= lt!2229909 (lemmaFlatMapOnSingletonSet!546 lt!2229915 lt!2229804 lambda!289259))))

(assert (=> b!5459338 (= lt!2229915 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(declare-fun lt!2229737 () Unit!154924)

(assert (=> b!5459338 (= lt!2229737 e!3380690)))

(assert (=> b!5459338 (= c!953810 (and ((_ is ElementMatch!15287) (regOne!31086 r!7292)) (= (c!953823 (regOne!31086 r!7292)) (h!68484 s!2326))))))

(declare-fun lt!2229849 () Unit!154924)

(assert (=> b!5459338 (= lt!2229849 e!3380709)))

(declare-fun c!953811 () Bool)

(assert (=> b!5459338 (= c!953811 (nullable!5456 (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> b!5459338 (= (flatMap!1014 z!1189 lambda!289259) (derivationStepZipperUp!659 (h!68486 zl!343) (h!68484 s!2326)))))

(declare-fun lt!2229766 () Unit!154924)

(assert (=> b!5459338 (= lt!2229766 (lemmaFlatMapOnSingletonSet!546 z!1189 (h!68486 zl!343) lambda!289259))))

(assert (=> b!5459338 (= lt!2229838 (derivationStepZipperUp!659 lt!2229804 (h!68484 s!2326)))))

(assert (=> b!5459338 (= lt!2229921 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (h!68486 zl!343))) lt!2229804 (h!68484 s!2326)))))

(assert (=> b!5459338 (= lt!2229804 (Context!9343 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun lt!2229867 () (InoxSet Context!9342))

(assert (=> b!5459338 (= lt!2229867 (derivationStepZipperUp!659 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343))))) (h!68484 s!2326)))))

(declare-fun bm!400471 () Bool)

(assert (=> bm!400471 (= call!400384 call!400413)))

(declare-fun bm!400472 () Bool)

(assert (=> bm!400472 (= call!400332 call!400389)))

(declare-fun bm!400473 () Bool)

(assert (=> bm!400473 (= call!400474 (lemmaFlatMapOnSingletonSet!546 (ite c!953812 lt!2229910 (ite c!953814 lt!2229833 lt!2229883)) (ite c!953812 lt!2229850 (ite c!953814 lt!2229856 lt!2229817)) (ite c!953812 lambda!289259 (ite c!953814 lambda!289259 lambda!289259))))))

(declare-fun b!5459339 () Bool)

(declare-fun Unit!154942 () Unit!154924)

(assert (=> b!5459339 (= e!3380698 Unit!154942)))

(declare-fun lt!2229749 () Unit!154924)

(assert (=> b!5459339 (= lt!2229749 (lemmaZipperConcatMatchesSameAsBothZippers!524 lt!2229853 lt!2229838 (t!375389 s!2326)))))

(declare-fun res!2325266 () Bool)

(declare-fun lt!2229895 () Bool)

(assert (=> b!5459339 (= res!2325266 lt!2229895)))

(assert (=> b!5459339 (=> res!2325266 e!3380679)))

(assert (=> b!5459339 (= call!400291 e!3380679)))

(declare-fun b!5459340 () Bool)

(declare-fun Unit!154943 () Unit!154924)

(assert (=> b!5459340 (= e!3380708 Unit!154943)))

(assert (=> b!5459340 (= lt!2229816 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(declare-fun lt!2229775 () Unit!154924)

(assert (=> b!5459340 (= lt!2229775 call!400459)))

(assert (=> b!5459340 (= call!400452 call!400463)))

(assert (=> b!5459340 (= lt!2229774 call!400377)))

(declare-fun lt!2229857 () Unit!154924)

(assert (=> b!5459340 (= lt!2229857 call!400352)))

(declare-fun res!2325279 () Bool)

(assert (=> b!5459340 (= res!2325279 (= call!400343 call!400448))))

(assert (=> b!5459340 (=> (not res!2325279) (not e!3380700))))

(assert (=> b!5459340 e!3380700))

(declare-fun bm!400474 () Bool)

(assert (=> bm!400474 (= call!400449 call!400418)))

(declare-fun bm!400475 () Bool)

(assert (=> bm!400475 (= call!400409 call!400351)))

(declare-fun bm!400476 () Bool)

(assert (=> bm!400476 (= call!400385 (get!21395 (ite c!953817 lt!2229891 lt!2229731)))))

(declare-fun b!5459341 () Bool)

(assert (=> b!5459341 (= e!3380685 tp_is_empty!39827)))

(declare-fun b!5459342 () Bool)

(assert (=> b!5459342 (= e!3380690 e!3380707)))

(assert (=> b!5459342 (= c!953819 ((_ is Union!15287) (regOne!31086 r!7292)))))

(declare-fun b!5459343 () Bool)

(assert (=> b!5459343 (= e!3380686 (= lt!2229873 call!400424))))

(declare-fun bm!400477 () Bool)

(assert (=> bm!400477 (= call!400314 call!400323)))

(declare-fun bm!400478 () Bool)

(assert (=> bm!400478 (= call!400364 call!400437)))

(declare-fun b!5459344 () Bool)

(declare-fun Unit!154944 () Unit!154924)

(assert (=> b!5459344 (= e!3380709 Unit!154944)))

(declare-fun lt!2229829 () Unit!154924)

(assert (=> b!5459344 (= lt!2229829 (lemmaZipperConcatMatchesSameAsBothZippers!524 lt!2229921 lt!2229838 (t!375389 s!2326)))))

(declare-fun res!2325292 () Bool)

(assert (=> b!5459344 (= res!2325292 (matchZipper!1531 lt!2229921 (t!375389 s!2326)))))

(assert (=> b!5459344 (=> res!2325292 e!3380710)))

(assert (=> b!5459344 (= (matchZipper!1531 ((_ map or) lt!2229921 lt!2229838) (t!375389 s!2326)) e!3380710)))

(declare-fun bm!400479 () Bool)

(assert (=> bm!400479 (= call!400402 call!400494)))

(declare-fun bm!400480 () Bool)

(assert (=> bm!400480 (= call!400367 call!400334)))

(declare-fun bm!400481 () Bool)

(assert (=> bm!400481 (= call!400362 call!400488)))

(declare-fun bm!400482 () Bool)

(assert (=> bm!400482 (= call!400461 (matchR!7472 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)) (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)))))

(declare-fun bm!400483 () Bool)

(assert (=> bm!400483 (= call!400313 call!400451)))

(declare-fun bm!400484 () Bool)

(assert (=> bm!400484 (= call!400311 call!400402)))

(declare-fun bm!400485 () Bool)

(assert (=> bm!400485 (= call!400296 call!400406)))

(declare-fun bm!400486 () Bool)

(assert (=> bm!400486 (= call!400349 (derivationStepZipperUp!659 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804))) (h!68484 s!2326)))))

(declare-fun bm!400487 () Bool)

(assert (=> bm!400487 (= call!400406 (Exists!2468 (ite c!953814 lambda!289267 (ite c!953817 lambda!289272 (ite c!953822 lambda!289278 lambda!289281)))))))

(declare-fun b!5459345 () Bool)

(assert (=> b!5459345 e!3380696))

(declare-fun res!2325275 () Bool)

(assert (=> b!5459345 (=> (not res!2325275) (not e!3380696))))

(declare-fun lt!2229874 () Bool)

(assert (=> b!5459345 (= res!2325275 (= lt!2229874 call!400363))))

(declare-fun lt!2229823 () Unit!154924)

(assert (=> b!5459345 (= lt!2229823 (mainMatchTheorem!2390 lt!2229870 s!2326))))

(declare-fun lt!2229777 () Bool)

(assert (=> b!5459345 (= lt!2229777 (matchRSpec!2390 lt!2229720 s!2326))))

(declare-fun lt!2229745 () Unit!154924)

(assert (=> b!5459345 (= lt!2229745 call!400336)))

(assert (=> b!5459345 (= lt!2229874 lt!2229777)))

(assert (=> b!5459345 (= lt!2229777 call!400332)))

(assert (=> b!5459345 (= lt!2229874 call!400366)))

(assert (=> b!5459345 (= lt!2229720 (Union!15287 (Concat!24132 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292)) (Concat!24132 (regTwo!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292))))))

(assert (=> b!5459345 (= lt!2229870 (Concat!24132 (regOne!31086 r!7292) (regTwo!31086 r!7292)))))

(declare-fun lt!2229828 () Unit!154924)

(declare-fun lemmaConcatDistributesInUnion!34 (Regex!15287 Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> b!5459345 (= lt!2229828 (lemmaConcatDistributesInUnion!34 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292) s!2326))))

(declare-fun lt!2229750 () Bool)

(assert (=> b!5459345 (= lt!2229750 call!400301)))

(declare-fun lt!2229905 () Unit!154924)

(assert (=> b!5459345 (= lt!2229905 call!400418)))

(declare-fun lt!2229725 () Bool)

(assert (=> b!5459345 (= lt!2229725 call!400348)))

(declare-fun lt!2229755 () Unit!154924)

(assert (=> b!5459345 (= lt!2229755 call!400458)))

(assert (=> b!5459345 (= lt!2229750 call!400441)))

(assert (=> b!5459345 (= lt!2229750 call!400337)))

(declare-fun lt!2229916 () Unit!154924)

(assert (=> b!5459345 (= lt!2229916 call!400415)))

(assert (=> b!5459345 (= lt!2229719 call!400350)))

(assert (=> b!5459345 (= lt!2229725 call!400312)))

(assert (=> b!5459345 (= lt!2229725 call!400469)))

(declare-fun lt!2229754 () Unit!154924)

(assert (=> b!5459345 (= lt!2229754 call!400355)))

(assert (=> b!5459345 (= lt!2229759 call!400427)))

(declare-fun lt!2229789 () Unit!154924)

(assert (=> b!5459345 (= lt!2229789 e!3380699)))

(declare-fun c!953821 () Bool)

(assert (=> b!5459345 (= c!953821 (nullable!5456 (regTwo!31087 (regOne!31086 r!7292))))))

(assert (=> b!5459345 (= call!400354 call!400349)))

(declare-fun lt!2229741 () Unit!154924)

(assert (=> b!5459345 (= lt!2229741 call!400304)))

(declare-fun lt!2229780 () (InoxSet Context!9342))

(assert (=> b!5459345 (= lt!2229780 call!400349)))

(declare-fun lt!2229871 () Unit!154924)

(assert (=> b!5459345 (= lt!2229871 e!3380698)))

(declare-fun c!953813 () Bool)

(assert (=> b!5459345 (= c!953813 call!400369)))

(assert (=> b!5459345 (= call!400423 call!400376)))

(declare-fun lt!2229846 () Unit!154924)

(assert (=> b!5459345 (= lt!2229846 call!400346)))

(declare-fun lt!2229768 () (InoxSet Context!9342))

(assert (=> b!5459345 (= lt!2229768 call!400376)))

(assert (=> b!5459345 (= lt!2229716 (store ((as const (Array Context!9342 Bool)) false) lt!2229784 true))))

(assert (=> b!5459345 (= lt!2229784 (Context!9343 lt!2229806))))

(assert (=> b!5459345 (= lt!2229806 (Cons!62037 (regTwo!31087 (regOne!31086 r!7292)) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> b!5459345 (= lt!2229842 (store ((as const (Array Context!9342 Bool)) false) lt!2229904 true))))

(assert (=> b!5459345 (= lt!2229904 (Context!9343 lt!2229734))))

(assert (=> b!5459345 (= lt!2229734 (Cons!62037 (regOne!31087 (regOne!31086 r!7292)) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> b!5459345 (= (matchZipper!1531 ((_ map or) lt!2229853 lt!2229907) (t!375389 s!2326)) e!3380688)))

(declare-fun res!2325285 () Bool)

(assert (=> b!5459345 (=> res!2325285 e!3380688)))

(assert (=> b!5459345 (= res!2325285 lt!2229895)))

(assert (=> b!5459345 (= lt!2229895 call!400333)))

(declare-fun lt!2229760 () Unit!154924)

(assert (=> b!5459345 (= lt!2229760 call!400307)))

(assert (=> b!5459345 (= lt!2229907 call!400298)))

(assert (=> b!5459345 (= lt!2229853 call!400292)))

(declare-fun Unit!154945 () Unit!154924)

(assert (=> b!5459345 (= e!3380707 Unit!154945)))

(declare-fun bm!400488 () Bool)

(assert (=> bm!400488 (= call!400373 call!400400)))

(declare-fun bm!400489 () Bool)

(assert (=> bm!400489 (= call!400340 (flatMap!1014 (ite c!953812 lt!2229852 lt!2229883) (ite c!953812 lambda!289259 lambda!289259)))))

(declare-fun bm!400490 () Bool)

(assert (=> bm!400490 (= call!400440 call!400396)))

(declare-fun bm!400491 () Bool)

(assert (=> bm!400491 (= call!400371 call!400341)))

(declare-fun b!5459346 () Bool)

(assert (=> b!5459346 (= e!3380713 false)))

(assert (= (and start!571786 res!2325268) b!5459290))

(assert (= (and b!5459290 res!2325294) b!5459311))

(assert (= (and b!5459311 res!2325269) b!5459294))

(assert (= (and b!5459294 (not res!2325271)) b!5459304))

(assert (= (and b!5459304 (not res!2325273)) b!5459301))

(assert (= (and b!5459301 (not res!2325278)) b!5459310))

(assert (= (and b!5459310 (not res!2325293)) b!5459291))

(assert (= (and b!5459291 (not res!2325291)) b!5459327))

(assert (= (and b!5459327 (not res!2325264)) b!5459292))

(assert (= (and b!5459292 (not res!2325274)) b!5459313))

(assert (= (and b!5459313 (not res!2325283)) b!5459338))

(assert (= (and b!5459338 c!953811) b!5459344))

(assert (= (and b!5459338 (not c!953811)) b!5459326))

(assert (= (and b!5459344 (not res!2325292)) b!5459321))

(assert (= (and b!5459338 c!953810) b!5459297))

(assert (= (and b!5459338 (not c!953810)) b!5459342))

(assert (= (and b!5459342 c!953819) b!5459345))

(assert (= (and b!5459342 (not c!953819)) b!5459322))

(assert (= (and b!5459345 (not res!2325285)) b!5459316))

(assert (= (and b!5459345 c!953813) b!5459339))

(assert (= (and b!5459345 (not c!953813)) b!5459283))

(assert (= (and b!5459339 (not res!2325266)) b!5459314))

(assert (= (and b!5459345 c!953821) b!5459296))

(assert (= (and b!5459345 (not c!953821)) b!5459285))

(assert (= (and b!5459296 (not res!2325289)) b!5459332))

(assert (= (and b!5459345 res!2325275) b!5459336))

(assert (= (and b!5459322 res!2325277) b!5459317))

(assert (= (and b!5459322 c!953812) b!5459286))

(assert (= (and b!5459322 (not c!953812)) b!5459319))

(assert (= (and b!5459286 (not res!2325272)) b!5459289))

(assert (= (and b!5459286 (not res!2325284)) b!5459334))

(assert (= (and b!5459286 res!2325290) b!5459343))

(assert (= (and b!5459319 c!953814) b!5459320))

(assert (= (and b!5459319 (not c!953814)) b!5459306))

(assert (= (and b!5459320 res!2325288) b!5459323))

(assert (= (and b!5459306 c!953816) b!5459282))

(assert (= (and b!5459306 (not c!953816)) b!5459309))

(assert (= (and b!5459282 res!2325287) b!5459337))

(assert (= (and b!5459282 c!953817) b!5459333))

(assert (= (and b!5459282 (not c!953817)) b!5459305))

(assert (= (and b!5459333 c!953815) b!5459340))

(assert (= (and b!5459333 (not c!953815)) b!5459299))

(assert (= (and b!5459340 res!2325279) b!5459284))

(assert (= (and b!5459299 res!2325286) b!5459328))

(assert (= (or b!5459340 b!5459299) bm!400369))

(assert (= (or b!5459340 b!5459299) bm!400349))

(assert (= (or b!5459284 b!5459299) bm!400491))

(assert (= (or b!5459340 b!5459299) bm!400383))

(assert (= (and b!5459305 c!953820) b!5459300))

(assert (= (and b!5459305 (not c!953820)) b!5459324))

(assert (= (and b!5459300 c!953822) b!5459307))

(assert (= (and b!5459300 (not c!953822)) b!5459302))

(assert (= (and b!5459307 res!2325282) b!5459303))

(assert (= (and b!5459307 res!2325265) b!5459295))

(assert (= (and b!5459302 res!2325270) b!5459346))

(assert (= (or b!5459307 b!5459302) bm!400379))

(assert (= (or b!5459307 b!5459302) bm!400465))

(assert (= (or b!5459307 b!5459302) bm!400407))

(assert (= (or b!5459307 b!5459302) bm!400333))

(assert (= (or b!5459307 b!5459302) bm!400441))

(assert (= (or b!5459307 b!5459302) bm!400361))

(assert (= (or b!5459307 b!5459302) bm!400337))

(assert (= (or b!5459307 b!5459302) bm!400455))

(assert (= (or b!5459307 b!5459302) bm!400424))

(assert (= (or b!5459307 b!5459302) bm!400387))

(assert (= (or b!5459307 b!5459302) bm!400303))

(assert (= (or b!5459307 b!5459302) bm!400309))

(assert (= (or b!5459307 b!5459302) bm!400386))

(assert (= (or b!5459307 b!5459302) bm!400423))

(assert (= (or b!5459307 b!5459302) bm!400360))

(assert (= (or b!5459307 b!5459302) bm!400478))

(assert (= (or b!5459307 b!5459302) bm!400488))

(assert (= (or b!5459307 b!5459302) bm!400384))

(assert (= (or b!5459307 b!5459302) bm!400300))

(assert (= (or b!5459299 bm!400337) bm!400469))

(assert (= (or b!5459299 b!5459307) bm!400428))

(assert (= (or b!5459299 bm!400424) bm!400420))

(assert (= (or b!5459299 b!5459307) bm!400321))

(assert (= (or b!5459299 b!5459307) bm!400415))

(assert (= (or b!5459340 b!5459302) bm!400294))

(assert (= (or b!5459299 bm!400361) bm!400485))

(assert (= (or b!5459333 b!5459299 bm!400333) bm!400343))

(assert (= (or b!5459299 bm!400488) bm!400310))

(assert (= (or bm!400383 b!5459305) bm!400435))

(assert (= (or b!5459299 bm!400465) bm!400449))

(assert (= (or b!5459299 b!5459307) bm!400297))

(assert (= (or b!5459299 b!5459307) bm!400447))

(assert (= (or b!5459333 bm!400384) bm!400484))

(assert (= (or b!5459299 b!5459307) bm!400380))

(assert (= (or b!5459299 b!5459307) bm!400471))

(assert (= (or b!5459299 b!5459307) bm!400410))

(assert (= (or bm!400491 b!5459307) bm!400398))

(assert (= (or b!5459299 bm!400303) bm!400404))

(assert (= (or b!5459299 bm!400386) bm!400329))

(assert (= (or b!5459299 bm!400379) bm!400454))

(assert (= (or b!5459299 bm!400441) bm!400466))

(assert (= (or bm!400369 bm!400300) bm!400362))

(assert (= (or b!5459340 b!5459302) bm!400443))

(assert (= (or b!5459299 b!5459307) bm!400445))

(assert (= (or b!5459333 bm!400387) bm!400371))

(assert (= (or b!5459340 b!5459302) bm!400409))

(assert (= (or b!5459299 b!5459307) bm!400375))

(assert (= (or b!5459333 bm!400309) bm!400392))

(assert (= (or b!5459299 b!5459307) bm!400461))

(assert (= (or b!5459340 b!5459302) bm!400336))

(assert (= (or b!5459299 b!5459307) bm!400376))

(assert (= (or b!5459299 b!5459307) bm!400382))

(assert (= (or b!5459299 b!5459307) bm!400476))

(assert (= (or b!5459333 b!5459307) bm!400311))

(assert (= (or bm!400349 b!5459307) bm!400452))

(assert (= (or b!5459299 bm!400360) bm!400405))

(assert (= (or b!5459333 b!5459307) bm!400287))

(assert (= (or b!5459333 b!5459307) bm!400417))

(assert (= (or b!5459333 bm!400455) bm!400335))

(assert (= (or b!5459299 b!5459307) bm!400298))

(assert (= (or b!5459333 b!5459307) bm!400463))

(assert (= (or b!5459299 b!5459307) bm!400391))

(assert (= (or b!5459299 bm!400407) bm!400480))

(assert (= (or b!5459299 bm!400478) bm!400351))

(assert (= (or b!5459299 bm!400423) bm!400295))

(assert (= (or b!5459299 b!5459307) bm!400316))

(assert (= (or b!5459299 b!5459307) bm!400312))

(assert (= (and b!5459309 c!953818) b!5459330))

(assert (= (and b!5459309 (not c!953818)) b!5459318))

(assert (= (and b!5459330 res!2325280) b!5459329))

(assert (= (and b!5459318 res!2325276) b!5459293))

(assert (= (or b!5459330 b!5459318) bm!400400))

(assert (= (or b!5459330 b!5459318) bm!400352))

(assert (= (or b!5459330 b!5459293) bm!400481))

(assert (= (or b!5459330 b!5459318) bm!400296))

(assert (= (or b!5459330 b!5459318) bm!400439))

(assert (= (or b!5459330 b!5459318) bm!400477))

(assert (= (or b!5459330 b!5459318) bm!400345))

(assert (= (or b!5459330 b!5459318) bm!400363))

(assert (= (or b!5459330 b!5459318) bm!400340))

(assert (= (or bm!400329 bm!400363) bm!400318))

(assert (= (or bm!400469 b!5459330) bm!400374))

(assert (= (or bm!400435 b!5459329) bm!400289))

(assert (= (or bm!400312 bm!400481) bm!400396))

(assert (= (or b!5459282 b!5459330) bm!400421))

(assert (= (or b!5459307 bm!400340) bm!400353))

(assert (= (or b!5459282 b!5459330) bm!400341))

(assert (= (or b!5459307 bm!400296) bm!400317))

(assert (= (or bm!400398 b!5459330) bm!400306))

(assert (= (or bm!400362 b!5459330) bm!400482))

(assert (= (or b!5459282 b!5459330) bm!400314))

(assert (= (or bm!400466 bm!400400) bm!400365))

(assert (= (or bm!400443 b!5459330) bm!400338))

(assert (= (or b!5459282 bm!400439) bm!400458))

(assert (= (or b!5459307 bm!400477) bm!400350))

(assert (= (or b!5459282 b!5459330) bm!400344))

(assert (= (or bm!400343 bm!400345) bm!400399))

(assert (= (or b!5459320 bm!400335) bm!400385))

(assert (= (or b!5459320 bm!400417) bm!400475))

(assert (= (or b!5459320 bm!400445) bm!400378))

(assert (= (or b!5459320 bm!400353) bm!400426))

(assert (= (or b!5459320 bm!400480) bm!400433))

(assert (= (or b!5459320 bm!400310) bm!400401))

(assert (= (or b!5459320 bm!400317) bm!400364))

(assert (= (or b!5459320 b!5459282) bm!400483))

(assert (= (or b!5459320 bm!400421) bm!400432))

(assert (= (or b!5459320 bm!400392) bm!400367))

(assert (= (or b!5459320 bm!400458) bm!400308))

(assert (= (or b!5459320 bm!400415) bm!400412))

(assert (= (or b!5459320 bm!400295) bm!400414))

(assert (= (or b!5459320 bm!400471) bm!400395))

(assert (= (or b!5459320 b!5459282) bm!400304))

(assert (= (or b!5459320 bm!400318) bm!400440))

(assert (= (or b!5459320 bm!400404) bm!400334))

(assert (= (or b!5459320 bm!400461) bm!400348))

(assert (= (or b!5459320 bm!400371) bm!400467))

(assert (= (or b!5459320 bm!400338) bm!400418))

(assert (= (or b!5459320 bm!400409) bm!400356))

(assert (= (or b!5459320 bm!400341) bm!400413))

(assert (= (or b!5459323 bm!400306) bm!400327))

(assert (= (or b!5459320 bm!400485) bm!400487))

(assert (= (or b!5459320 b!5459307) bm!400394))

(assert (= (or b!5459320 bm!400287) bm!400377))

(assert (= (or b!5459320 b!5459282) bm!400425))

(assert (= (or b!5459320 bm!400351) bm!400393))

(assert (= (or b!5459320 bm!400374) bm!400403))

(assert (= (or b!5459320 b!5459307) bm!400490))

(assert (= (or b!5459320 bm!400484) bm!400479))

(assert (= (or b!5459286 bm!400399) bm!400406))

(assert (= (or b!5459286 bm!400377) bm!400324))

(assert (= (or b!5459286 bm!400432) bm!400313))

(assert (= (or b!5459286 bm!400395) bm!400429))

(assert (= (or b!5459286 bm!400336) bm!400366))

(assert (= (or b!5459286 bm!400401) bm!400372))

(assert (= (or b!5459286 bm!400475) bm!400358))

(assert (= (or b!5459286 bm!400425) bm!400473))

(assert (= (or b!5459343 bm!400289) bm!400288))

(assert (= (or b!5459286 bm!400412) bm!400320))

(assert (= (or b!5459286 bm!400414) bm!400468))

(assert (= (or b!5459286 bm!400334) bm!400456))

(assert (= (or b!5459286 b!5459330) bm!400431))

(assert (= (or b!5459286 b!5459300) bm!400460))

(assert (= (or b!5459286 bm!400433) bm!400464))

(assert (= (or b!5459286 bm!400294) bm!400381))

(assert (= (or b!5459286 bm!400454) bm!400331))

(assert (= (or b!5459286 bm!400393) bm!400411))

(assert (= (or b!5459286 bm!400440) bm!400459))

(assert (= (or b!5459286 bm!400483) bm!400286))

(assert (= (or b!5459286 bm!400367) bm!400342))

(assert (= (or b!5459334 bm!400327) bm!400373))

(assert (= (or b!5459286 b!5459282) bm!400489))

(assert (= (or b!5459286 bm!400394) bm!400444))

(assert (= (or b!5459286 bm!400308) bm!400474))

(assert (= (or b!5459286 b!5459320) bm!400442))

(assert (= (or b!5459286 bm!400396) bm!400299))

(assert (= (or b!5459286 bm!400452) bm!400370))

(assert (= (or b!5459286 bm!400467) bm!400457))

(assert (= (or b!5459286 bm!400348) bm!400438))

(assert (= (or b!5459286 bm!400426) bm!400437))

(assert (= (or b!5459286 b!5459320) bm!400315))

(assert (= (or b!5459286 bm!400418) bm!400427))

(assert (= (or b!5459286 bm!400385) bm!400339))

(assert (= (or b!5459286 bm!400344) bm!400305))

(assert (= (or b!5459286 bm!400403) bm!400368))

(assert (= (or b!5459286 bm!400378) bm!400347))

(assert (= (or b!5459286 b!5459282) bm!400319))

(assert (= (or b!5459286 bm!400364) bm!400325))

(assert (= (or b!5459286 bm!400304) bm!400302))

(assert (= (or b!5459286 bm!400479) bm!400326))

(assert (= (or b!5459286 bm!400490) bm!400355))

(assert (= (or b!5459345 bm!400286) bm!400359))

(assert (= (or b!5459345 b!5459282) bm!400430))

(assert (= (or b!5459345 bm!400366) bm!400390))

(assert (= (or b!5459339 b!5459289) bm!400291))

(assert (= (or b!5459345 bm!400356) bm!400285))

(assert (= (or b!5459345 bm!400302) bm!400436))

(assert (= (or b!5459336 bm!400288) bm!400293))

(assert (= (or b!5459345 bm!400368) bm!400307))

(assert (= (or b!5459345 bm!400381) bm!400448))

(assert (= (or b!5459296 bm!400431) bm!400330))

(assert (= (or b!5459345 bm!400413) bm!400434))

(assert (= (or b!5459345 b!5459307) bm!400354))

(assert (= (or b!5459345 bm!400313) bm!400292))

(assert (= (or b!5459345 bm!400437) bm!400451))

(assert (= (or b!5459345 bm!400464) bm!400408))

(assert (= (or b!5459296 b!5459316 b!5459286) bm!400419))

(assert (= (or b!5459345 bm!400305) bm!400486))

(assert (= (or b!5459345 bm!400315) bm!400388))

(assert (= (or b!5459345 bm!400456) bm!400472))

(assert (= (or b!5459345 bm!400459) bm!400462))

(assert (= (or b!5459345 bm!400299) bm!400328))

(assert (= (or b!5459345 b!5459282) bm!400322))

(assert (= (or b!5459345 bm!400370) bm!400422))

(assert (= (or b!5459345 bm!400474) bm!400332))

(assert (= (or b!5459296 bm!400406) bm!400446))

(assert (= (or b!5459345 b!5459317) bm!400416))

(assert (= (or b!5459345 b!5459286) bm!400290))

(assert (= (or b!5459345 bm!400365) bm!400323))

(assert (= (or b!5459345 bm!400325) bm!400357))

(assert (= (or b!5459345 b!5459286) bm!400453))

(assert (= (or b!5459345 bm!400427) bm!400470))

(assert (= (or b!5459345 bm!400460) bm!400450))

(assert (= (or b!5459332 b!5459314 bm!400373) bm!400346))

(assert (= (or b!5459297 bm!400472) bm!400389))

(assert (= (or b!5459297 bm!400470) bm!400397))

(assert (= (or b!5459297 bm!400422) bm!400301))

(assert (= (or b!5459297 bm!400419) bm!400402))

(assert (= (and b!5459338 (not res!2325281)) b!5459331))

(assert (= (and b!5459331 (not res!2325263)) b!5459325))

(assert (= (and b!5459325 (not res!2325267)) b!5459312))

(assert (= (and start!571786 ((_ is ElementMatch!15287) r!7292)) b!5459341))

(assert (= (and start!571786 ((_ is Concat!24132) r!7292)) b!5459315))

(assert (= (and start!571786 ((_ is Star!15287) r!7292)) b!5459287))

(assert (= (and start!571786 ((_ is Union!15287) r!7292)) b!5459281))

(assert (= (and start!571786 condSetEmpty!35719) setIsEmpty!35719))

(assert (= (and start!571786 (not condSetEmpty!35719)) setNonEmpty!35719))

(assert (= setNonEmpty!35719 b!5459308))

(assert (= b!5459288 b!5459335))

(assert (= (and start!571786 ((_ is Cons!62038) zl!343)) b!5459288))

(assert (= (and start!571786 ((_ is Cons!62036) s!2326)) b!5459298))

(declare-fun m!6480290 () Bool)

(assert (=> b!5459344 m!6480290))

(declare-fun m!6480292 () Bool)

(assert (=> b!5459344 m!6480292))

(declare-fun m!6480294 () Bool)

(assert (=> b!5459344 m!6480294))

(declare-fun m!6480296 () Bool)

(assert (=> bm!400397 m!6480296))

(declare-fun m!6480298 () Bool)

(assert (=> bm!400463 m!6480298))

(declare-fun m!6480300 () Bool)

(assert (=> bm!400332 m!6480300))

(declare-fun m!6480302 () Bool)

(assert (=> bm!400323 m!6480302))

(declare-fun m!6480304 () Bool)

(assert (=> bm!400442 m!6480304))

(declare-fun m!6480306 () Bool)

(assert (=> bm!400359 m!6480306))

(declare-fun m!6480308 () Bool)

(assert (=> bm!400307 m!6480308))

(declare-fun m!6480310 () Bool)

(assert (=> bm!400314 m!6480310))

(declare-fun m!6480312 () Bool)

(assert (=> setNonEmpty!35719 m!6480312))

(declare-fun m!6480314 () Bool)

(assert (=> b!5459297 m!6480314))

(declare-fun m!6480316 () Bool)

(assert (=> bm!400402 m!6480316))

(declare-fun m!6480318 () Bool)

(assert (=> bm!400375 m!6480318))

(declare-fun m!6480320 () Bool)

(assert (=> b!5459311 m!6480320))

(declare-fun m!6480322 () Bool)

(assert (=> bm!400428 m!6480322))

(assert (=> b!5459330 m!6480314))

(declare-fun m!6480324 () Bool)

(assert (=> b!5459282 m!6480324))

(declare-fun m!6480326 () Bool)

(assert (=> b!5459282 m!6480326))

(declare-fun m!6480328 () Bool)

(assert (=> b!5459282 m!6480328))

(declare-fun m!6480330 () Bool)

(assert (=> b!5459282 m!6480330))

(declare-fun m!6480332 () Bool)

(assert (=> b!5459282 m!6480332))

(declare-fun m!6480334 () Bool)

(assert (=> b!5459312 m!6480334))

(declare-fun m!6480336 () Bool)

(assert (=> b!5459312 m!6480336))

(declare-fun m!6480338 () Bool)

(assert (=> b!5459312 m!6480338))

(declare-fun m!6480340 () Bool)

(assert (=> b!5459312 m!6480340))

(declare-fun m!6480342 () Bool)

(assert (=> bm!400319 m!6480342))

(declare-fun m!6480344 () Bool)

(assert (=> bm!400316 m!6480344))

(declare-fun m!6480346 () Bool)

(assert (=> bm!400347 m!6480346))

(declare-fun m!6480348 () Bool)

(assert (=> bm!400444 m!6480348))

(assert (=> b!5459302 m!6480314))

(declare-fun m!6480350 () Bool)

(assert (=> bm!400322 m!6480350))

(declare-fun m!6480352 () Bool)

(assert (=> bm!400436 m!6480352))

(declare-fun m!6480354 () Bool)

(assert (=> bm!400376 m!6480354))

(declare-fun m!6480356 () Bool)

(assert (=> bm!400389 m!6480356))

(declare-fun m!6480358 () Bool)

(assert (=> bm!400326 m!6480358))

(declare-fun m!6480360 () Bool)

(assert (=> bm!400453 m!6480360))

(declare-fun m!6480362 () Bool)

(assert (=> bm!400324 m!6480362))

(declare-fun m!6480364 () Bool)

(assert (=> bm!400473 m!6480364))

(declare-fun m!6480366 () Bool)

(assert (=> bm!400388 m!6480366))

(assert (=> b!5459340 m!6480314))

(declare-fun m!6480368 () Bool)

(assert (=> start!571786 m!6480368))

(declare-fun m!6480370 () Bool)

(assert (=> bm!400292 m!6480370))

(declare-fun m!6480372 () Bool)

(assert (=> bm!400468 m!6480372))

(declare-fun m!6480374 () Bool)

(assert (=> bm!400416 m!6480374))

(declare-fun m!6480376 () Bool)

(assert (=> bm!400486 m!6480376))

(declare-fun m!6480378 () Bool)

(assert (=> b!5459331 m!6480378))

(declare-fun m!6480380 () Bool)

(assert (=> b!5459331 m!6480380))

(declare-fun m!6480382 () Bool)

(assert (=> b!5459331 m!6480382))

(declare-fun m!6480384 () Bool)

(assert (=> bm!400446 m!6480384))

(declare-fun m!6480386 () Bool)

(assert (=> b!5459288 m!6480386))

(declare-fun m!6480388 () Bool)

(assert (=> bm!400339 m!6480388))

(declare-fun m!6480390 () Bool)

(assert (=> bm!400293 m!6480390))

(declare-fun m!6480392 () Bool)

(assert (=> bm!400358 m!6480392))

(declare-fun m!6480394 () Bool)

(assert (=> bm!400391 m!6480394))

(declare-fun m!6480396 () Bool)

(assert (=> bm!400457 m!6480396))

(declare-fun m!6480398 () Bool)

(assert (=> b!5459291 m!6480398))

(assert (=> b!5459291 m!6480398))

(declare-fun m!6480400 () Bool)

(assert (=> b!5459291 m!6480400))

(declare-fun m!6480402 () Bool)

(assert (=> bm!400390 m!6480402))

(declare-fun m!6480404 () Bool)

(assert (=> b!5459320 m!6480404))

(declare-fun m!6480406 () Bool)

(assert (=> b!5459338 m!6480406))

(declare-fun m!6480408 () Bool)

(assert (=> b!5459338 m!6480408))

(declare-fun m!6480410 () Bool)

(assert (=> b!5459338 m!6480410))

(declare-fun m!6480412 () Bool)

(assert (=> b!5459338 m!6480412))

(declare-fun m!6480414 () Bool)

(assert (=> b!5459338 m!6480414))

(declare-fun m!6480416 () Bool)

(assert (=> b!5459338 m!6480416))

(declare-fun m!6480418 () Bool)

(assert (=> b!5459338 m!6480418))

(assert (=> b!5459338 m!6480314))

(declare-fun m!6480420 () Bool)

(assert (=> b!5459338 m!6480420))

(declare-fun m!6480422 () Bool)

(assert (=> b!5459338 m!6480422))

(declare-fun m!6480424 () Bool)

(assert (=> b!5459338 m!6480424))

(declare-fun m!6480426 () Bool)

(assert (=> bm!400487 m!6480426))

(declare-fun m!6480428 () Bool)

(assert (=> bm!400291 m!6480428))

(declare-fun m!6480430 () Bool)

(assert (=> b!5459304 m!6480430))

(declare-fun m!6480432 () Bool)

(assert (=> bm!400489 m!6480432))

(declare-fun m!6480434 () Bool)

(assert (=> bm!400462 m!6480434))

(declare-fun m!6480436 () Bool)

(assert (=> bm!400285 m!6480436))

(declare-fun m!6480438 () Bool)

(assert (=> bm!400382 m!6480438))

(declare-fun m!6480440 () Bool)

(assert (=> bm!400290 m!6480440))

(declare-fun m!6480442 () Bool)

(assert (=> bm!400297 m!6480442))

(declare-fun m!6480444 () Bool)

(assert (=> bm!400342 m!6480444))

(declare-fun m!6480446 () Bool)

(assert (=> bm!400372 m!6480446))

(declare-fun m!6480448 () Bool)

(assert (=> bm!400450 m!6480448))

(declare-fun m!6480450 () Bool)

(assert (=> bm!400355 m!6480450))

(declare-fun m!6480452 () Bool)

(assert (=> bm!400411 m!6480452))

(declare-fun m!6480454 () Bool)

(assert (=> bm!400482 m!6480454))

(declare-fun m!6480456 () Bool)

(assert (=> bm!400410 m!6480456))

(declare-fun m!6480458 () Bool)

(assert (=> bm!400420 m!6480458))

(declare-fun m!6480460 () Bool)

(assert (=> bm!400448 m!6480460))

(declare-fun m!6480462 () Bool)

(assert (=> bm!400476 m!6480462))

(declare-fun m!6480464 () Bool)

(assert (=> bm!400352 m!6480464))

(declare-fun m!6480466 () Bool)

(assert (=> b!5459286 m!6480466))

(declare-fun m!6480468 () Bool)

(assert (=> b!5459286 m!6480468))

(declare-fun m!6480470 () Bool)

(assert (=> b!5459325 m!6480470))

(declare-fun m!6480472 () Bool)

(assert (=> b!5459325 m!6480472))

(declare-fun m!6480474 () Bool)

(assert (=> b!5459321 m!6480474))

(declare-fun m!6480476 () Bool)

(assert (=> bm!400357 m!6480476))

(declare-fun m!6480478 () Bool)

(assert (=> bm!400380 m!6480478))

(declare-fun m!6480480 () Bool)

(assert (=> b!5459345 m!6480480))

(declare-fun m!6480482 () Bool)

(assert (=> b!5459345 m!6480482))

(declare-fun m!6480484 () Bool)

(assert (=> b!5459345 m!6480484))

(declare-fun m!6480486 () Bool)

(assert (=> b!5459345 m!6480486))

(declare-fun m!6480488 () Bool)

(assert (=> b!5459345 m!6480488))

(declare-fun m!6480490 () Bool)

(assert (=> b!5459345 m!6480490))

(declare-fun m!6480492 () Bool)

(assert (=> b!5459345 m!6480492))

(declare-fun m!6480494 () Bool)

(assert (=> bm!400434 m!6480494))

(declare-fun m!6480496 () Bool)

(assert (=> bm!400408 m!6480496))

(declare-fun m!6480498 () Bool)

(assert (=> bm!400320 m!6480498))

(assert (=> bm!400298 m!6480322))

(declare-fun m!6480500 () Bool)

(assert (=> b!5459333 m!6480500))

(declare-fun m!6480502 () Bool)

(assert (=> bm!400328 m!6480502))

(declare-fun m!6480504 () Bool)

(assert (=> bm!400328 m!6480504))

(declare-fun m!6480506 () Bool)

(assert (=> bm!400405 m!6480506))

(declare-fun m!6480508 () Bool)

(assert (=> bm!400447 m!6480508))

(declare-fun m!6480510 () Bool)

(assert (=> b!5459307 m!6480510))

(declare-fun m!6480512 () Bool)

(assert (=> b!5459307 m!6480512))

(declare-fun m!6480514 () Bool)

(assert (=> b!5459307 m!6480514))

(declare-fun m!6480516 () Bool)

(assert (=> b!5459307 m!6480516))

(declare-fun m!6480518 () Bool)

(assert (=> b!5459307 m!6480518))

(declare-fun m!6480520 () Bool)

(assert (=> b!5459307 m!6480520))

(assert (=> b!5459307 m!6480502))

(declare-fun m!6480522 () Bool)

(assert (=> bm!400354 m!6480522))

(declare-fun m!6480524 () Bool)

(assert (=> b!5459292 m!6480524))

(declare-fun m!6480526 () Bool)

(assert (=> b!5459292 m!6480526))

(declare-fun m!6480528 () Bool)

(assert (=> b!5459292 m!6480528))

(declare-fun m!6480530 () Bool)

(assert (=> b!5459292 m!6480530))

(assert (=> b!5459292 m!6480530))

(declare-fun m!6480532 () Bool)

(assert (=> b!5459292 m!6480532))

(assert (=> b!5459292 m!6480526))

(declare-fun m!6480534 () Bool)

(assert (=> b!5459292 m!6480534))

(declare-fun m!6480536 () Bool)

(assert (=> bm!400301 m!6480536))

(declare-fun m!6480538 () Bool)

(assert (=> bm!400330 m!6480538))

(declare-fun m!6480540 () Bool)

(assert (=> b!5459294 m!6480540))

(declare-fun m!6480542 () Bool)

(assert (=> b!5459294 m!6480542))

(declare-fun m!6480544 () Bool)

(assert (=> b!5459294 m!6480544))

(declare-fun m!6480546 () Bool)

(assert (=> bm!400449 m!6480546))

(declare-fun m!6480548 () Bool)

(assert (=> bm!400331 m!6480548))

(declare-fun m!6480550 () Bool)

(assert (=> bm!400429 m!6480550))

(declare-fun m!6480552 () Bool)

(assert (=> b!5459301 m!6480552))

(declare-fun m!6480554 () Bool)

(assert (=> b!5459313 m!6480554))

(declare-fun m!6480556 () Bool)

(assert (=> bm!400438 m!6480556))

(declare-fun m!6480558 () Bool)

(assert (=> bm!400346 m!6480558))

(declare-fun m!6480560 () Bool)

(assert (=> bm!400346 m!6480560))

(declare-fun m!6480562 () Bool)

(assert (=> bm!400311 m!6480562))

(declare-fun m!6480564 () Bool)

(assert (=> bm!400451 m!6480564))

(declare-fun m!6480566 () Bool)

(assert (=> bm!400430 m!6480566))

(declare-fun m!6480568 () Bool)

(assert (=> b!5459339 m!6480568))

(declare-fun m!6480570 () Bool)

(assert (=> bm!400321 m!6480570))

(declare-fun m!6480572 () Bool)

(assert (=> bm!400350 m!6480572))

(declare-fun m!6480574 () Bool)

(assert (=> b!5459290 m!6480574))

(check-sat (not b!5459344) (not bm!400322) (not bm!400408) (not bm!400376) (not bm!400451) (not bm!400314) (not setNonEmpty!35719) (not bm!400320) (not b!5459335) (not bm!400311) (not bm!400397) (not bm!400316) (not bm!400428) (not bm!400307) (not b!5459311) (not b!5459288) (not bm!400436) (not b!5459338) (not b!5459304) (not b!5459292) (not bm!400390) (not bm!400354) (not bm!400326) (not bm!400330) (not bm!400463) (not bm!400285) (not bm!400442) (not bm!400453) (not bm!400391) (not b!5459333) (not bm!400487) (not bm!400449) (not b!5459282) (not bm!400429) (not bm!400468) (not bm!400298) (not bm!400410) (not b!5459307) (not bm!400462) (not bm!400297) (not bm!400476) (not bm!400332) (not b!5459312) (not bm!400482) (not b!5459315) (not bm!400450) (not b!5459339) (not bm!400416) (not bm!400319) (not bm!400430) (not bm!400342) (not b!5459298) (not bm!400359) (not bm!400328) (not bm!400293) (not bm!400358) (not bm!400331) (not bm!400291) (not b!5459325) (not bm!400382) (not bm!400324) (not bm!400372) (not bm!400357) (not b!5459345) (not bm!400352) (not bm!400446) (not bm!400321) (not bm!400375) (not bm!400350) (not bm!400347) (not bm!400346) (not bm!400434) (not b!5459331) (not bm!400438) (not bm!400323) (not bm!400380) (not b!5459290) (not b!5459308) (not b!5459313) tp_is_empty!39827 (not bm!400355) (not b!5459287) (not bm!400420) (not b!5459294) (not bm!400389) (not bm!400489) (not bm!400290) (not bm!400447) (not b!5459291) (not bm!400457) (not bm!400301) (not bm!400444) (not bm!400473) (not b!5459321) (not bm!400292) (not bm!400411) (not b!5459301) (not bm!400402) (not bm!400339) (not bm!400448) (not bm!400405) (not b!5459281) (not bm!400486) (not start!571786) (not bm!400388))
(check-sat)
(get-model)

(declare-fun bs!1263451 () Bool)

(declare-fun d!1737787 () Bool)

(assert (= bs!1263451 (and d!1737787 b!5459299)))

(declare-fun lambda!289286 () Int)

(assert (=> bs!1263451 (= lambda!289286 lambda!289273)))

(declare-fun bs!1263452 () Bool)

(assert (= bs!1263452 (and d!1737787 b!5459307)))

(assert (=> bs!1263452 (= lambda!289286 lambda!289275)))

(declare-fun forall!14591 (List!62161 Int) Bool)

(assert (=> d!1737787 (= (inv!81464 setElem!35719) (forall!14591 (exprs!5171 setElem!35719) lambda!289286))))

(declare-fun bs!1263453 () Bool)

(assert (= bs!1263453 d!1737787))

(declare-fun m!6480576 () Bool)

(assert (=> bs!1263453 m!6480576))

(assert (=> setNonEmpty!35719 d!1737787))

(declare-fun d!1737789 () Bool)

(assert (=> d!1737789 (= (matchR!7472 (Concat!24132 (Concat!24132 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292)))) s!2326) (matchR!7472 (Concat!24132 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (Concat!24132 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) s!2326))))

(declare-fun lt!2229924 () Unit!154924)

(declare-fun choose!41481 (Regex!15287 Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> d!1737789 (= lt!2229924 (choose!41481 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326))))

(declare-fun e!3380719 () Bool)

(assert (=> d!1737789 e!3380719))

(declare-fun res!2325301 () Bool)

(assert (=> d!1737789 (=> (not res!2325301) (not e!3380719))))

(assert (=> d!1737789 (= res!2325301 (validRegex!7023 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))

(assert (=> d!1737789 (= (lemmaConcatAssociative!82 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326) lt!2229924)))

(declare-fun b!5459361 () Bool)

(declare-fun res!2325302 () Bool)

(assert (=> b!5459361 (=> (not res!2325302) (not e!3380719))))

(assert (=> b!5459361 (= res!2325302 (validRegex!7023 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) lt!2229794)))))

(declare-fun b!5459362 () Bool)

(assert (=> b!5459362 (= e!3380719 (validRegex!7023 (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292)))))))

(assert (= (and d!1737789 res!2325301) b!5459361))

(assert (= (and b!5459361 res!2325302) b!5459362))

(declare-fun m!6480578 () Bool)

(assert (=> d!1737789 m!6480578))

(declare-fun m!6480580 () Bool)

(assert (=> d!1737789 m!6480580))

(declare-fun m!6480582 () Bool)

(assert (=> d!1737789 m!6480582))

(declare-fun m!6480584 () Bool)

(assert (=> d!1737789 m!6480584))

(declare-fun m!6480586 () Bool)

(assert (=> b!5459361 m!6480586))

(declare-fun m!6480588 () Bool)

(assert (=> b!5459362 m!6480588))

(assert (=> bm!400444 d!1737789))

(declare-fun d!1737793 () Bool)

(declare-fun isEmpty!34026 (Option!15398) Bool)

(assert (=> d!1737793 (= (isDefined!12101 (ite c!953817 lt!2229891 lt!2229751)) (not (isEmpty!34026 (ite c!953817 lt!2229891 lt!2229751))))))

(declare-fun bs!1263454 () Bool)

(assert (= bs!1263454 d!1737793))

(declare-fun m!6480590 () Bool)

(assert (=> bs!1263454 m!6480590))

(assert (=> bm!400410 d!1737793))

(declare-fun d!1737795 () Bool)

(declare-fun e!3380725 () Bool)

(assert (=> d!1737795 (= (matchZipper!1531 ((_ map or) (ite c!953819 lt!2229907 (ite c!953812 lt!2229826 lt!2229921)) (ite c!953819 lt!2229838 (ite c!953812 lt!2229896 lt!2229838))) (t!375389 s!2326)) e!3380725)))

(declare-fun res!2325305 () Bool)

(assert (=> d!1737795 (=> res!2325305 e!3380725)))

(assert (=> d!1737795 (= res!2325305 (matchZipper!1531 (ite c!953819 lt!2229907 (ite c!953812 lt!2229826 lt!2229921)) (t!375389 s!2326)))))

(declare-fun lt!2229927 () Unit!154924)

(declare-fun choose!41482 ((InoxSet Context!9342) (InoxSet Context!9342) List!62160) Unit!154924)

(assert (=> d!1737795 (= lt!2229927 (choose!41482 (ite c!953819 lt!2229907 (ite c!953812 lt!2229826 lt!2229921)) (ite c!953819 lt!2229838 (ite c!953812 lt!2229896 lt!2229838)) (t!375389 s!2326)))))

(assert (=> d!1737795 (= (lemmaZipperConcatMatchesSameAsBothZippers!524 (ite c!953819 lt!2229907 (ite c!953812 lt!2229826 lt!2229921)) (ite c!953819 lt!2229838 (ite c!953812 lt!2229896 lt!2229838)) (t!375389 s!2326)) lt!2229927)))

(declare-fun b!5459371 () Bool)

(assert (=> b!5459371 (= e!3380725 (matchZipper!1531 (ite c!953819 lt!2229838 (ite c!953812 lt!2229896 lt!2229838)) (t!375389 s!2326)))))

(assert (= (and d!1737795 (not res!2325305)) b!5459371))

(declare-fun m!6480604 () Bool)

(assert (=> d!1737795 m!6480604))

(declare-fun m!6480608 () Bool)

(assert (=> d!1737795 m!6480608))

(declare-fun m!6480610 () Bool)

(assert (=> d!1737795 m!6480610))

(declare-fun m!6480612 () Bool)

(assert (=> b!5459371 m!6480612))

(assert (=> bm!400330 d!1737795))

(declare-fun b!5459421 () Bool)

(declare-fun res!2325336 () Bool)

(declare-fun e!3380760 () Bool)

(assert (=> b!5459421 (=> res!2325336 e!3380760)))

(assert (=> b!5459421 (= res!2325336 (not ((_ is ElementMatch!15287) (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))))))))

(declare-fun e!3380757 () Bool)

(assert (=> b!5459421 (= e!3380757 e!3380760)))

(declare-fun b!5459422 () Bool)

(declare-fun e!3380763 () Bool)

(declare-fun head!11691 (List!62160) C!30844)

(assert (=> b!5459422 (= e!3380763 (= (head!11691 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))) (c!953823 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))))))))

(declare-fun b!5459423 () Bool)

(declare-fun e!3380758 () Bool)

(assert (=> b!5459423 (= e!3380758 (nullable!5456 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818))))))))))

(declare-fun b!5459424 () Bool)

(declare-fun e!3380761 () Bool)

(declare-fun e!3380762 () Bool)

(assert (=> b!5459424 (= e!3380761 e!3380762)))

(declare-fun res!2325335 () Bool)

(assert (=> b!5459424 (=> res!2325335 e!3380762)))

(declare-fun call!400505 () Bool)

(assert (=> b!5459424 (= res!2325335 call!400505)))

(declare-fun b!5459425 () Bool)

(declare-fun res!2325341 () Bool)

(assert (=> b!5459425 (=> res!2325341 e!3380762)))

(declare-fun tail!10788 (List!62160) List!62160)

(assert (=> b!5459425 (= res!2325341 (not (isEmpty!34025 (tail!10788 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))))))))

(declare-fun d!1737801 () Bool)

(declare-fun e!3380759 () Bool)

(assert (=> d!1737801 e!3380759))

(declare-fun c!953839 () Bool)

(assert (=> d!1737801 (= c!953839 ((_ is EmptyExpr!15287) (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818))))))))))

(declare-fun lt!2229933 () Bool)

(assert (=> d!1737801 (= lt!2229933 e!3380758)))

(declare-fun c!953838 () Bool)

(assert (=> d!1737801 (= c!953838 (isEmpty!34025 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))))))

(assert (=> d!1737801 (validRegex!7023 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))))))

(assert (=> d!1737801 (= (matchR!7472 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))) lt!2229933)))

(declare-fun b!5459426 () Bool)

(declare-fun res!2325337 () Bool)

(assert (=> b!5459426 (=> (not res!2325337) (not e!3380763))))

(assert (=> b!5459426 (= res!2325337 (isEmpty!34025 (tail!10788 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326)))))))))

(declare-fun b!5459427 () Bool)

(declare-fun derivativeStep!4308 (Regex!15287 C!30844) Regex!15287)

(assert (=> b!5459427 (= e!3380758 (matchR!7472 (derivativeStep!4308 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818)))))) (head!11691 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326)))))) (tail!10788 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326)))))))))

(declare-fun b!5459428 () Bool)

(assert (=> b!5459428 (= e!3380757 (not lt!2229933))))

(declare-fun b!5459429 () Bool)

(declare-fun res!2325339 () Bool)

(assert (=> b!5459429 (=> res!2325339 e!3380760)))

(assert (=> b!5459429 (= res!2325339 e!3380763)))

(declare-fun res!2325342 () Bool)

(assert (=> b!5459429 (=> (not res!2325342) (not e!3380763))))

(assert (=> b!5459429 (= res!2325342 lt!2229933)))

(declare-fun b!5459430 () Bool)

(declare-fun res!2325340 () Bool)

(assert (=> b!5459430 (=> (not res!2325340) (not e!3380763))))

(assert (=> b!5459430 (= res!2325340 (not call!400505))))

(declare-fun b!5459431 () Bool)

(assert (=> b!5459431 (= e!3380762 (not (= (head!11691 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))) (c!953823 (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818))))))))))))

(declare-fun b!5459432 () Bool)

(assert (=> b!5459432 (= e!3380759 e!3380757)))

(declare-fun c!953837 () Bool)

(assert (=> b!5459432 (= c!953837 ((_ is EmptyLang!15287) (ite c!953810 lt!2229832 (ite c!953819 lt!2229720 (ite c!953812 lt!2229727 (ite c!953814 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229863)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229799 lt!2229818))))))))))

(declare-fun bm!400500 () Bool)

(assert (=> bm!400500 (= call!400505 (isEmpty!34025 (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229813 (ite c!953822 lt!2229736 s!2326))))))))

(declare-fun b!5459433 () Bool)

(assert (=> b!5459433 (= e!3380759 (= lt!2229933 call!400505))))

(declare-fun b!5459434 () Bool)

(assert (=> b!5459434 (= e!3380760 e!3380761)))

(declare-fun res!2325338 () Bool)

(assert (=> b!5459434 (=> (not res!2325338) (not e!3380761))))

(assert (=> b!5459434 (= res!2325338 (not lt!2229933))))

(assert (= (and d!1737801 c!953838) b!5459423))

(assert (= (and d!1737801 (not c!953838)) b!5459427))

(assert (= (and d!1737801 c!953839) b!5459433))

(assert (= (and d!1737801 (not c!953839)) b!5459432))

(assert (= (and b!5459432 c!953837) b!5459428))

(assert (= (and b!5459432 (not c!953837)) b!5459421))

(assert (= (and b!5459421 (not res!2325336)) b!5459429))

(assert (= (and b!5459429 res!2325342) b!5459430))

(assert (= (and b!5459430 res!2325340) b!5459426))

(assert (= (and b!5459426 res!2325337) b!5459422))

(assert (= (and b!5459429 (not res!2325339)) b!5459434))

(assert (= (and b!5459434 res!2325338) b!5459424))

(assert (= (and b!5459424 (not res!2325335)) b!5459425))

(assert (= (and b!5459425 (not res!2325341)) b!5459431))

(assert (= (or b!5459433 b!5459424 b!5459430) bm!400500))

(declare-fun m!6480626 () Bool)

(assert (=> b!5459426 m!6480626))

(assert (=> b!5459426 m!6480626))

(declare-fun m!6480628 () Bool)

(assert (=> b!5459426 m!6480628))

(declare-fun m!6480630 () Bool)

(assert (=> b!5459423 m!6480630))

(declare-fun m!6480632 () Bool)

(assert (=> d!1737801 m!6480632))

(declare-fun m!6480634 () Bool)

(assert (=> d!1737801 m!6480634))

(assert (=> b!5459425 m!6480626))

(assert (=> b!5459425 m!6480626))

(assert (=> b!5459425 m!6480628))

(assert (=> bm!400500 m!6480632))

(declare-fun m!6480636 () Bool)

(assert (=> b!5459422 m!6480636))

(assert (=> b!5459431 m!6480636))

(assert (=> b!5459427 m!6480636))

(assert (=> b!5459427 m!6480636))

(declare-fun m!6480638 () Bool)

(assert (=> b!5459427 m!6480638))

(assert (=> b!5459427 m!6480626))

(assert (=> b!5459427 m!6480638))

(assert (=> b!5459427 m!6480626))

(declare-fun m!6480640 () Bool)

(assert (=> b!5459427 m!6480640))

(assert (=> bm!400389 d!1737801))

(declare-fun c!953844 () Bool)

(declare-fun d!1737807 () Bool)

(assert (=> d!1737807 (= c!953844 (isEmpty!34025 (ite (or c!953819 c!953812) (t!375389 s!2326) (ite c!953814 s!2326 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 (_1!35789 lt!2229919)) lt!2229841) (t!375389 s!2326))))))))

(declare-fun e!3380773 () Bool)

(assert (=> d!1737807 (= (matchZipper!1531 (ite c!953819 lt!2229838 (ite c!953812 lt!2229898 (ite c!953814 z!1189 (ite c!953816 (ite c!953817 (ite c!953815 z!1189 lt!2229892) (store ((as const (Array Context!9342 Bool)) false) (Context!9343 lt!2229861) true)) lt!2229838)))) (ite (or c!953819 c!953812) (t!375389 s!2326) (ite c!953814 s!2326 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 (_1!35789 lt!2229919)) lt!2229841) (t!375389 s!2326))))) e!3380773)))

(declare-fun b!5459448 () Bool)

(declare-fun nullableZipper!1487 ((InoxSet Context!9342)) Bool)

(assert (=> b!5459448 (= e!3380773 (nullableZipper!1487 (ite c!953819 lt!2229838 (ite c!953812 lt!2229898 (ite c!953814 z!1189 (ite c!953816 (ite c!953817 (ite c!953815 z!1189 lt!2229892) (store ((as const (Array Context!9342 Bool)) false) (Context!9343 lt!2229861) true)) lt!2229838))))))))

(declare-fun b!5459449 () Bool)

(assert (=> b!5459449 (= e!3380773 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 lt!2229838 (ite c!953812 lt!2229898 (ite c!953814 z!1189 (ite c!953816 (ite c!953817 (ite c!953815 z!1189 lt!2229892) (store ((as const (Array Context!9342 Bool)) false) (Context!9343 lt!2229861) true)) lt!2229838)))) (head!11691 (ite (or c!953819 c!953812) (t!375389 s!2326) (ite c!953814 s!2326 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 (_1!35789 lt!2229919)) lt!2229841) (t!375389 s!2326)))))) (tail!10788 (ite (or c!953819 c!953812) (t!375389 s!2326) (ite c!953814 s!2326 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 (_1!35789 lt!2229919)) lt!2229841) (t!375389 s!2326)))))))))

(assert (= (and d!1737807 c!953844) b!5459448))

(assert (= (and d!1737807 (not c!953844)) b!5459449))

(declare-fun m!6480648 () Bool)

(assert (=> d!1737807 m!6480648))

(declare-fun m!6480650 () Bool)

(assert (=> b!5459448 m!6480650))

(declare-fun m!6480652 () Bool)

(assert (=> b!5459449 m!6480652))

(assert (=> b!5459449 m!6480652))

(declare-fun m!6480654 () Bool)

(assert (=> b!5459449 m!6480654))

(declare-fun m!6480656 () Bool)

(assert (=> b!5459449 m!6480656))

(assert (=> b!5459449 m!6480654))

(assert (=> b!5459449 m!6480656))

(declare-fun m!6480658 () Bool)

(assert (=> b!5459449 m!6480658))

(assert (=> bm!400346 d!1737807))

(declare-fun b!5459512 () Bool)

(declare-fun e!3380809 () Bool)

(declare-fun lt!2229943 () Option!15398)

(assert (=> b!5459512 (= e!3380809 (not (isDefined!12101 lt!2229943)))))

(declare-fun b!5459513 () Bool)

(declare-fun e!3380806 () Option!15398)

(declare-fun e!3380808 () Option!15398)

(assert (=> b!5459513 (= e!3380806 e!3380808)))

(declare-fun c!953860 () Bool)

(assert (=> b!5459513 (= c!953860 ((_ is Nil!62036) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(declare-fun b!5459514 () Bool)

(declare-fun lt!2229945 () Unit!154924)

(declare-fun lt!2229944 () Unit!154924)

(assert (=> b!5459514 (= lt!2229945 lt!2229944)))

(assert (=> b!5459514 (= (++!13653 (++!13653 Nil!62036 (Cons!62036 (h!68484 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) Nil!62036)) (t!375389 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036))) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1882 (List!62160 C!30844 List!62160 List!62160) Unit!154924)

(assert (=> b!5459514 (= lt!2229944 (lemmaMoveElementToOtherListKeepsConcatEq!1882 Nil!62036 (h!68484 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) (t!375389 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(assert (=> b!5459514 (= e!3380808 (findConcatSeparation!1812 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (ite (or c!953817 c!953822) (regTwo!31086 r!7292) lt!2229794))) (++!13653 Nil!62036 (Cons!62036 (h!68484 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) Nil!62036)) (t!375389 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(declare-fun d!1737811 () Bool)

(assert (=> d!1737811 e!3380809))

(declare-fun res!2325382 () Bool)

(assert (=> d!1737811 (=> res!2325382 e!3380809)))

(declare-fun e!3380807 () Bool)

(assert (=> d!1737811 (= res!2325382 e!3380807)))

(declare-fun res!2325383 () Bool)

(assert (=> d!1737811 (=> (not res!2325383) (not e!3380807))))

(assert (=> d!1737811 (= res!2325383 (isDefined!12101 lt!2229943))))

(assert (=> d!1737811 (= lt!2229943 e!3380806)))

(declare-fun c!953859 () Bool)

(declare-fun e!3380810 () Bool)

(assert (=> d!1737811 (= c!953859 e!3380810)))

(declare-fun res!2325384 () Bool)

(assert (=> d!1737811 (=> (not res!2325384) (not e!3380810))))

(assert (=> d!1737811 (= res!2325384 (matchR!7472 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))) Nil!62036))))

(assert (=> d!1737811 (validRegex!7023 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))))))

(assert (=> d!1737811 (= (findConcatSeparation!1812 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (ite (or c!953817 c!953822) (regTwo!31086 r!7292) lt!2229794))) Nil!62036 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)) lt!2229943)))

(declare-fun b!5459515 () Bool)

(assert (=> b!5459515 (= e!3380808 None!15397)))

(declare-fun b!5459516 () Bool)

(declare-fun res!2325385 () Bool)

(assert (=> b!5459516 (=> (not res!2325385) (not e!3380807))))

(assert (=> b!5459516 (= res!2325385 (matchR!7472 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 (reg!15616 (regOne!31086 r!7292)))))) (_1!35789 (get!21395 lt!2229943))))))

(declare-fun b!5459517 () Bool)

(assert (=> b!5459517 (= e!3380810 (matchR!7472 (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (ite (or c!953817 c!953822) (regTwo!31086 r!7292) lt!2229794))) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(declare-fun b!5459518 () Bool)

(assert (=> b!5459518 (= e!3380806 (Some!15397 (tuple2!64973 Nil!62036 (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036))))))

(declare-fun b!5459519 () Bool)

(declare-fun res!2325386 () Bool)

(assert (=> b!5459519 (=> (not res!2325386) (not e!3380807))))

(assert (=> b!5459519 (= res!2325386 (matchR!7472 (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (ite (or c!953817 c!953822) (regTwo!31086 r!7292) lt!2229794))) (_2!35789 (get!21395 lt!2229943))))))

(declare-fun b!5459520 () Bool)

(assert (=> b!5459520 (= e!3380807 (= (++!13653 (_1!35789 (get!21395 lt!2229943)) (_2!35789 (get!21395 lt!2229943))) (ite (or c!953812 c!953814 c!953817 c!953822) s!2326 Nil!62036)))))

(assert (= (and d!1737811 res!2325384) b!5459517))

(assert (= (and d!1737811 c!953859) b!5459518))

(assert (= (and d!1737811 (not c!953859)) b!5459513))

(assert (= (and b!5459513 c!953860) b!5459515))

(assert (= (and b!5459513 (not c!953860)) b!5459514))

(assert (= (and d!1737811 res!2325383) b!5459516))

(assert (= (and b!5459516 res!2325385) b!5459519))

(assert (= (and b!5459519 res!2325386) b!5459520))

(assert (= (and d!1737811 (not res!2325382)) b!5459512))

(declare-fun m!6480680 () Bool)

(assert (=> b!5459514 m!6480680))

(assert (=> b!5459514 m!6480680))

(declare-fun m!6480682 () Bool)

(assert (=> b!5459514 m!6480682))

(declare-fun m!6480684 () Bool)

(assert (=> b!5459514 m!6480684))

(assert (=> b!5459514 m!6480680))

(declare-fun m!6480686 () Bool)

(assert (=> b!5459514 m!6480686))

(declare-fun m!6480688 () Bool)

(assert (=> d!1737811 m!6480688))

(declare-fun m!6480690 () Bool)

(assert (=> d!1737811 m!6480690))

(declare-fun m!6480692 () Bool)

(assert (=> d!1737811 m!6480692))

(declare-fun m!6480694 () Bool)

(assert (=> b!5459517 m!6480694))

(declare-fun m!6480696 () Bool)

(assert (=> b!5459516 m!6480696))

(declare-fun m!6480698 () Bool)

(assert (=> b!5459516 m!6480698))

(assert (=> b!5459519 m!6480696))

(declare-fun m!6480700 () Bool)

(assert (=> b!5459519 m!6480700))

(assert (=> b!5459520 m!6480696))

(declare-fun m!6480702 () Bool)

(assert (=> b!5459520 m!6480702))

(assert (=> b!5459512 m!6480688))

(assert (=> bm!400457 d!1737811))

(declare-fun d!1737817 () Bool)

(declare-fun c!953861 () Bool)

(assert (=> d!1737817 (= c!953861 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3380811 () Bool)

(assert (=> d!1737817 (= (matchZipper!1531 lt!2229838 (t!375389 s!2326)) e!3380811)))

(declare-fun b!5459521 () Bool)

(assert (=> b!5459521 (= e!3380811 (nullableZipper!1487 lt!2229838))))

(declare-fun b!5459522 () Bool)

(assert (=> b!5459522 (= e!3380811 (matchZipper!1531 (derivationStepZipper!1506 lt!2229838 (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1737817 c!953861) b!5459521))

(assert (= (and d!1737817 (not c!953861)) b!5459522))

(declare-fun m!6480704 () Bool)

(assert (=> d!1737817 m!6480704))

(declare-fun m!6480706 () Bool)

(assert (=> b!5459521 m!6480706))

(declare-fun m!6480708 () Bool)

(assert (=> b!5459522 m!6480708))

(assert (=> b!5459522 m!6480708))

(declare-fun m!6480710 () Bool)

(assert (=> b!5459522 m!6480710))

(declare-fun m!6480712 () Bool)

(assert (=> b!5459522 m!6480712))

(assert (=> b!5459522 m!6480710))

(assert (=> b!5459522 m!6480712))

(declare-fun m!6480714 () Bool)

(assert (=> b!5459522 m!6480714))

(assert (=> b!5459321 d!1737817))

(declare-fun d!1737819 () Bool)

(declare-fun choose!41483 (Int) Bool)

(assert (=> d!1737819 (= (Exists!2468 (ite c!953814 lambda!289267 (ite c!953817 lambda!289272 (ite c!953822 lambda!289278 lambda!289281)))) (choose!41483 (ite c!953814 lambda!289267 (ite c!953817 lambda!289272 (ite c!953822 lambda!289278 lambda!289281)))))))

(declare-fun bs!1263459 () Bool)

(assert (= bs!1263459 d!1737819))

(declare-fun m!6480716 () Bool)

(assert (=> bs!1263459 m!6480716))

(assert (=> bm!400487 d!1737819))

(declare-fun d!1737821 () Bool)

(assert (=> d!1737821 (isDefined!12101 (findConcatSeparationZippers!86 lt!2229892 (store ((as const (Array Context!9342 Bool)) false) lt!2229848 true) Nil!62036 s!2326 s!2326))))

(declare-fun lt!2229951 () Unit!154924)

(declare-fun choose!41484 ((InoxSet Context!9342) Context!9342 List!62160) Unit!154924)

(assert (=> d!1737821 (= lt!2229951 (choose!41484 lt!2229892 lt!2229848 s!2326))))

(declare-fun appendTo!79 ((InoxSet Context!9342) Context!9342) (InoxSet Context!9342))

(assert (=> d!1737821 (matchZipper!1531 (appendTo!79 lt!2229892 lt!2229848) s!2326)))

(assert (=> d!1737821 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!86 lt!2229892 lt!2229848 s!2326) lt!2229951)))

(declare-fun bs!1263461 () Bool)

(assert (= bs!1263461 d!1737821))

(declare-fun m!6480720 () Bool)

(assert (=> bs!1263461 m!6480720))

(declare-fun m!6480722 () Bool)

(assert (=> bs!1263461 m!6480722))

(assert (=> bs!1263461 m!6480328))

(declare-fun m!6480724 () Bool)

(assert (=> bs!1263461 m!6480724))

(assert (=> bs!1263461 m!6480724))

(declare-fun m!6480726 () Bool)

(assert (=> bs!1263461 m!6480726))

(assert (=> bs!1263461 m!6480328))

(assert (=> bs!1263461 m!6480722))

(declare-fun m!6480728 () Bool)

(assert (=> bs!1263461 m!6480728))

(assert (=> b!5459307 d!1737821))

(declare-fun d!1737827 () Bool)

(assert (=> d!1737827 (= (get!21395 lt!2229751) (v!51426 lt!2229751))))

(assert (=> b!5459307 d!1737827))

(declare-fun b!5459576 () Bool)

(declare-fun res!2325414 () Bool)

(declare-fun e!3380841 () Bool)

(assert (=> b!5459576 (=> (not res!2325414) (not e!3380841))))

(declare-fun lt!2229964 () Option!15398)

(assert (=> b!5459576 (= res!2325414 (matchZipper!1531 lt!2229886 (_2!35789 (get!21395 lt!2229964))))))

(declare-fun b!5459577 () Bool)

(declare-fun e!3380842 () Bool)

(assert (=> b!5459577 (= e!3380842 (matchZipper!1531 lt!2229886 s!2326))))

(declare-fun b!5459578 () Bool)

(declare-fun lt!2229963 () Unit!154924)

(declare-fun lt!2229965 () Unit!154924)

(assert (=> b!5459578 (= lt!2229963 lt!2229965)))

(assert (=> b!5459578 (= (++!13653 (++!13653 Nil!62036 (Cons!62036 (h!68484 s!2326) Nil!62036)) (t!375389 s!2326)) s!2326)))

(assert (=> b!5459578 (= lt!2229965 (lemmaMoveElementToOtherListKeepsConcatEq!1882 Nil!62036 (h!68484 s!2326) (t!375389 s!2326) s!2326))))

(declare-fun e!3380843 () Option!15398)

(assert (=> b!5459578 (= e!3380843 (findConcatSeparationZippers!86 lt!2229892 lt!2229886 (++!13653 Nil!62036 (Cons!62036 (h!68484 s!2326) Nil!62036)) (t!375389 s!2326) s!2326))))

(declare-fun b!5459579 () Bool)

(assert (=> b!5459579 (= e!3380843 None!15397)))

(declare-fun b!5459580 () Bool)

(declare-fun e!3380840 () Bool)

(assert (=> b!5459580 (= e!3380840 (not (isDefined!12101 lt!2229964)))))

(declare-fun b!5459581 () Bool)

(assert (=> b!5459581 (= e!3380841 (= (++!13653 (_1!35789 (get!21395 lt!2229964)) (_2!35789 (get!21395 lt!2229964))) s!2326))))

(declare-fun b!5459575 () Bool)

(declare-fun e!3380839 () Option!15398)

(assert (=> b!5459575 (= e!3380839 (Some!15397 (tuple2!64973 Nil!62036 s!2326)))))

(declare-fun d!1737829 () Bool)

(assert (=> d!1737829 e!3380840))

(declare-fun res!2325413 () Bool)

(assert (=> d!1737829 (=> res!2325413 e!3380840)))

(assert (=> d!1737829 (= res!2325413 e!3380841)))

(declare-fun res!2325415 () Bool)

(assert (=> d!1737829 (=> (not res!2325415) (not e!3380841))))

(assert (=> d!1737829 (= res!2325415 (isDefined!12101 lt!2229964))))

(assert (=> d!1737829 (= lt!2229964 e!3380839)))

(declare-fun c!953876 () Bool)

(assert (=> d!1737829 (= c!953876 e!3380842)))

(declare-fun res!2325416 () Bool)

(assert (=> d!1737829 (=> (not res!2325416) (not e!3380842))))

(assert (=> d!1737829 (= res!2325416 (matchZipper!1531 lt!2229892 Nil!62036))))

(assert (=> d!1737829 (= (++!13653 Nil!62036 s!2326) s!2326)))

(assert (=> d!1737829 (= (findConcatSeparationZippers!86 lt!2229892 lt!2229886 Nil!62036 s!2326 s!2326) lt!2229964)))

(declare-fun b!5459582 () Bool)

(declare-fun res!2325417 () Bool)

(assert (=> b!5459582 (=> (not res!2325417) (not e!3380841))))

(assert (=> b!5459582 (= res!2325417 (matchZipper!1531 lt!2229892 (_1!35789 (get!21395 lt!2229964))))))

(declare-fun b!5459583 () Bool)

(assert (=> b!5459583 (= e!3380839 e!3380843)))

(declare-fun c!953875 () Bool)

(assert (=> b!5459583 (= c!953875 ((_ is Nil!62036) s!2326))))

(assert (= (and d!1737829 res!2325416) b!5459577))

(assert (= (and d!1737829 c!953876) b!5459575))

(assert (= (and d!1737829 (not c!953876)) b!5459583))

(assert (= (and b!5459583 c!953875) b!5459579))

(assert (= (and b!5459583 (not c!953875)) b!5459578))

(assert (= (and d!1737829 res!2325415) b!5459582))

(assert (= (and b!5459582 res!2325417) b!5459576))

(assert (= (and b!5459576 res!2325414) b!5459581))

(assert (= (and d!1737829 (not res!2325413)) b!5459580))

(declare-fun m!6480810 () Bool)

(assert (=> b!5459576 m!6480810))

(declare-fun m!6480812 () Bool)

(assert (=> b!5459576 m!6480812))

(declare-fun m!6480814 () Bool)

(assert (=> b!5459580 m!6480814))

(assert (=> b!5459582 m!6480810))

(declare-fun m!6480816 () Bool)

(assert (=> b!5459582 m!6480816))

(declare-fun m!6480818 () Bool)

(assert (=> b!5459578 m!6480818))

(assert (=> b!5459578 m!6480818))

(declare-fun m!6480820 () Bool)

(assert (=> b!5459578 m!6480820))

(declare-fun m!6480822 () Bool)

(assert (=> b!5459578 m!6480822))

(assert (=> b!5459578 m!6480818))

(declare-fun m!6480824 () Bool)

(assert (=> b!5459578 m!6480824))

(assert (=> d!1737829 m!6480814))

(declare-fun m!6480826 () Bool)

(assert (=> d!1737829 m!6480826))

(declare-fun m!6480828 () Bool)

(assert (=> d!1737829 m!6480828))

(declare-fun m!6480830 () Bool)

(assert (=> b!5459577 m!6480830))

(assert (=> b!5459581 m!6480810))

(declare-fun m!6480832 () Bool)

(assert (=> b!5459581 m!6480832))

(assert (=> b!5459307 d!1737829))

(declare-fun b!5459594 () Bool)

(declare-fun res!2325422 () Bool)

(declare-fun e!3380849 () Bool)

(assert (=> b!5459594 (=> (not res!2325422) (not e!3380849))))

(declare-fun lt!2229968 () List!62160)

(declare-fun size!39905 (List!62160) Int)

(assert (=> b!5459594 (= res!2325422 (= (size!39905 lt!2229968) (+ (size!39905 lt!2229821) (size!39905 (_2!35789 lt!2229728)))))))

(declare-fun b!5459595 () Bool)

(assert (=> b!5459595 (= e!3380849 (or (not (= (_2!35789 lt!2229728) Nil!62036)) (= lt!2229968 lt!2229821)))))

(declare-fun b!5459593 () Bool)

(declare-fun e!3380848 () List!62160)

(assert (=> b!5459593 (= e!3380848 (Cons!62036 (h!68484 lt!2229821) (++!13653 (t!375389 lt!2229821) (_2!35789 lt!2229728))))))

(declare-fun b!5459592 () Bool)

(assert (=> b!5459592 (= e!3380848 (_2!35789 lt!2229728))))

(declare-fun d!1737849 () Bool)

(assert (=> d!1737849 e!3380849))

(declare-fun res!2325423 () Bool)

(assert (=> d!1737849 (=> (not res!2325423) (not e!3380849))))

(declare-fun content!11172 (List!62160) (InoxSet C!30844))

(assert (=> d!1737849 (= res!2325423 (= (content!11172 lt!2229968) ((_ map or) (content!11172 lt!2229821) (content!11172 (_2!35789 lt!2229728)))))))

(assert (=> d!1737849 (= lt!2229968 e!3380848)))

(declare-fun c!953879 () Bool)

(assert (=> d!1737849 (= c!953879 ((_ is Nil!62036) lt!2229821))))

(assert (=> d!1737849 (= (++!13653 lt!2229821 (_2!35789 lt!2229728)) lt!2229968)))

(assert (= (and d!1737849 c!953879) b!5459592))

(assert (= (and d!1737849 (not c!953879)) b!5459593))

(assert (= (and d!1737849 res!2325423) b!5459594))

(assert (= (and b!5459594 res!2325422) b!5459595))

(declare-fun m!6480834 () Bool)

(assert (=> b!5459594 m!6480834))

(declare-fun m!6480836 () Bool)

(assert (=> b!5459594 m!6480836))

(declare-fun m!6480838 () Bool)

(assert (=> b!5459594 m!6480838))

(declare-fun m!6480840 () Bool)

(assert (=> b!5459593 m!6480840))

(declare-fun m!6480842 () Bool)

(assert (=> d!1737849 m!6480842))

(declare-fun m!6480844 () Bool)

(assert (=> d!1737849 m!6480844))

(declare-fun m!6480846 () Bool)

(assert (=> d!1737849 m!6480846))

(assert (=> b!5459307 d!1737849))

(declare-fun d!1737851 () Bool)

(declare-fun choose!41486 ((InoxSet Context!9342) Int) (InoxSet Context!9342))

(assert (=> d!1737851 (= (map!14257 lt!2229892 lambda!289274) (choose!41486 lt!2229892 lambda!289274))))

(declare-fun bs!1263469 () Bool)

(assert (= bs!1263469 d!1737851))

(declare-fun m!6480848 () Bool)

(assert (=> bs!1263469 m!6480848))

(assert (=> b!5459307 d!1737851))

(declare-fun d!1737853 () Bool)

(declare-fun dynLambda!24412 (Int Context!9342) Context!9342)

(assert (=> d!1737853 (= (map!14257 lt!2229892 lambda!289274) (store ((as const (Array Context!9342 Bool)) false) (dynLambda!24412 lambda!289274 lt!2229837) true))))

(declare-fun lt!2229971 () Unit!154924)

(declare-fun choose!41487 ((InoxSet Context!9342) Context!9342 Int) Unit!154924)

(assert (=> d!1737853 (= lt!2229971 (choose!41487 lt!2229892 lt!2229837 lambda!289274))))

(assert (=> d!1737853 (= lt!2229892 (store ((as const (Array Context!9342 Bool)) false) lt!2229837 true))))

(assert (=> d!1737853 (= (lemmaMapOnSingletonSet!88 lt!2229892 lt!2229837 lambda!289274) lt!2229971)))

(declare-fun b_lambda!207829 () Bool)

(assert (=> (not b_lambda!207829) (not d!1737853)))

(declare-fun bs!1263470 () Bool)

(assert (= bs!1263470 d!1737853))

(assert (=> bs!1263470 m!6480326))

(declare-fun m!6480850 () Bool)

(assert (=> bs!1263470 m!6480850))

(declare-fun m!6480852 () Bool)

(assert (=> bs!1263470 m!6480852))

(declare-fun m!6480854 () Bool)

(assert (=> bs!1263470 m!6480854))

(assert (=> bs!1263470 m!6480512))

(assert (=> bs!1263470 m!6480852))

(assert (=> b!5459307 d!1737853))

(declare-fun bs!1263471 () Bool)

(declare-fun d!1737855 () Bool)

(assert (= bs!1263471 (and d!1737855 b!5459286)))

(declare-fun lambda!289293 () Int)

(assert (=> bs!1263471 (not (= lambda!289293 lambda!289263))))

(declare-fun bs!1263472 () Bool)

(assert (= bs!1263472 (and d!1737855 b!5459302)))

(assert (=> bs!1263472 (not (= lambda!289293 lambda!289282))))

(declare-fun bs!1263473 () Bool)

(assert (= bs!1263473 (and d!1737855 b!5459299)))

(assert (=> bs!1263473 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289293 lambda!289270))))

(assert (=> bs!1263471 (not (= lambda!289293 lambda!289261))))

(assert (=> bs!1263473 (not (= lambda!289293 lambda!289271))))

(declare-fun bs!1263474 () Bool)

(assert (= bs!1263474 (and d!1737855 b!5459307)))

(assert (=> bs!1263474 (not (= lambda!289293 lambda!289279))))

(declare-fun bs!1263475 () Bool)

(assert (= bs!1263475 (and d!1737855 b!5459320)))

(assert (=> bs!1263475 (not (= lambda!289293 lambda!289265))))

(assert (=> bs!1263472 (not (= lambda!289293 lambda!289283))))

(assert (=> bs!1263471 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229912)) (= lambda!289293 lambda!289262))))

(assert (=> bs!1263475 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229863)) (= lambda!289293 lambda!289266))))

(declare-fun bs!1263476 () Bool)

(assert (= bs!1263476 (and d!1737855 b!5459333)))

(assert (=> bs!1263476 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) lt!2229794) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289293 lambda!289268))))

(assert (=> bs!1263473 (not (= lambda!289293 lambda!289272))))

(assert (=> bs!1263474 (not (= lambda!289293 lambda!289280))))

(assert (=> bs!1263474 (not (= lambda!289293 lambda!289277))))

(assert (=> bs!1263475 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229767)) (= lambda!289293 lambda!289264))))

(assert (=> bs!1263476 (not (= lambda!289293 lambda!289269))))

(assert (=> bs!1263471 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229727)) (= lambda!289293 lambda!289260))))

(assert (=> bs!1263472 (= (and (= s!2326 Nil!62036) (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289293 lambda!289281))))

(assert (=> bs!1263474 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) lt!2229788) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289293 lambda!289276))))

(declare-fun bs!1263477 () Bool)

(assert (= bs!1263477 (and d!1737855 b!5459292)))

(assert (=> bs!1263477 (= (and (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289293 lambda!289257))))

(assert (=> bs!1263474 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289293 lambda!289278))))

(assert (=> bs!1263475 (not (= lambda!289293 lambda!289267))))

(assert (=> bs!1263477 (not (= lambda!289293 lambda!289258))))

(assert (=> d!1737855 true))

(assert (=> d!1737855 true))

(assert (=> d!1737855 true))

(assert (=> d!1737855 (= (isDefined!12101 (findConcatSeparation!1812 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) Nil!62036 s!2326 s!2326)) (Exists!2468 lambda!289293))))

(declare-fun lt!2229980 () Unit!154924)

(declare-fun choose!41489 (Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> d!1737855 (= lt!2229980 (choose!41489 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326))))

(assert (=> d!1737855 (validRegex!7023 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))))

(assert (=> d!1737855 (= (lemmaFindConcatSeparationEquivalentToExists!1576 (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))) s!2326) lt!2229980)))

(declare-fun bs!1263478 () Bool)

(assert (= bs!1263478 d!1737855))

(declare-fun m!6480856 () Bool)

(assert (=> bs!1263478 m!6480856))

(declare-fun m!6480858 () Bool)

(assert (=> bs!1263478 m!6480858))

(assert (=> bs!1263478 m!6480856))

(declare-fun m!6480860 () Bool)

(assert (=> bs!1263478 m!6480860))

(declare-fun m!6480862 () Bool)

(assert (=> bs!1263478 m!6480862))

(declare-fun m!6480864 () Bool)

(assert (=> bs!1263478 m!6480864))

(assert (=> bm!400358 d!1737855))

(declare-fun bs!1263480 () Bool)

(declare-fun b!5459661 () Bool)

(assert (= bs!1263480 (and b!5459661 b!5459286)))

(declare-fun lambda!289298 () Int)

(assert (=> bs!1263480 (not (= lambda!289298 lambda!289263))))

(declare-fun bs!1263481 () Bool)

(assert (= bs!1263481 (and b!5459661 b!5459302)))

(assert (=> bs!1263481 (not (= lambda!289298 lambda!289282))))

(declare-fun bs!1263482 () Bool)

(assert (= bs!1263482 (and b!5459661 d!1737855)))

(assert (=> bs!1263482 (not (= lambda!289298 lambda!289293))))

(declare-fun bs!1263483 () Bool)

(assert (= bs!1263483 (and b!5459661 b!5459299)))

(assert (=> bs!1263483 (not (= lambda!289298 lambda!289270))))

(assert (=> bs!1263480 (not (= lambda!289298 lambda!289261))))

(assert (=> bs!1263483 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))) lt!2229794)) (= lambda!289298 lambda!289271))))

(declare-fun bs!1263484 () Bool)

(assert (= bs!1263484 (and b!5459661 b!5459307)))

(assert (=> bs!1263484 (not (= lambda!289298 lambda!289279))))

(declare-fun bs!1263485 () Bool)

(assert (= bs!1263485 (and b!5459661 b!5459320)))

(assert (=> bs!1263485 (not (= lambda!289298 lambda!289265))))

(assert (=> bs!1263481 (= (and (= s!2326 Nil!62036) (= (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))) lt!2229794)) (= lambda!289298 lambda!289283))))

(assert (=> bs!1263480 (not (= lambda!289298 lambda!289262))))

(assert (=> bs!1263485 (not (= lambda!289298 lambda!289266))))

(declare-fun bs!1263486 () Bool)

(assert (= bs!1263486 (and b!5459661 b!5459333)))

(assert (=> bs!1263486 (not (= lambda!289298 lambda!289268))))

(assert (=> bs!1263483 (not (= lambda!289298 lambda!289272))))

(assert (=> bs!1263484 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))) lt!2229794)) (= lambda!289298 lambda!289280))))

(assert (=> bs!1263484 (not (= lambda!289298 lambda!289277))))

(assert (=> bs!1263485 (not (= lambda!289298 lambda!289264))))

(assert (=> bs!1263486 (not (= lambda!289298 lambda!289269))))

(assert (=> bs!1263480 (not (= lambda!289298 lambda!289260))))

(assert (=> bs!1263481 (not (= lambda!289298 lambda!289281))))

(assert (=> bs!1263484 (not (= lambda!289298 lambda!289276))))

(declare-fun bs!1263487 () Bool)

(assert (= bs!1263487 (and b!5459661 b!5459292)))

(assert (=> bs!1263487 (not (= lambda!289298 lambda!289257))))

(assert (=> bs!1263484 (not (= lambda!289298 lambda!289278))))

(assert (=> bs!1263485 (not (= lambda!289298 lambda!289267))))

(assert (=> bs!1263487 (not (= lambda!289298 lambda!289258))))

(assert (=> b!5459661 true))

(assert (=> b!5459661 true))

(declare-fun bs!1263488 () Bool)

(declare-fun b!5459662 () Bool)

(assert (= bs!1263488 (and b!5459662 b!5459286)))

(declare-fun lambda!289301 () Int)

(assert (=> bs!1263488 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229912)) (= lambda!289301 lambda!289263))))

(declare-fun bs!1263489 () Bool)

(assert (= bs!1263489 (and b!5459662 b!5459302)))

(assert (=> bs!1263489 (= (and (= s!2326 Nil!62036) (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229794)) (= lambda!289301 lambda!289282))))

(declare-fun bs!1263490 () Bool)

(assert (= bs!1263490 (and b!5459662 d!1737855)))

(assert (=> bs!1263490 (not (= lambda!289301 lambda!289293))))

(declare-fun bs!1263491 () Bool)

(assert (= bs!1263491 (and b!5459662 b!5459299)))

(assert (=> bs!1263491 (not (= lambda!289301 lambda!289270))))

(assert (=> bs!1263488 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229727)) (= lambda!289301 lambda!289261))))

(assert (=> bs!1263491 (not (= lambda!289301 lambda!289271))))

(declare-fun bs!1263492 () Bool)

(assert (= bs!1263492 (and b!5459662 b!5459307)))

(assert (=> bs!1263492 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229794)) (= lambda!289301 lambda!289279))))

(declare-fun bs!1263493 () Bool)

(assert (= bs!1263493 (and b!5459662 b!5459320)))

(assert (=> bs!1263493 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229767)) (= lambda!289301 lambda!289265))))

(assert (=> bs!1263489 (not (= lambda!289301 lambda!289283))))

(assert (=> bs!1263488 (not (= lambda!289301 lambda!289262))))

(assert (=> bs!1263493 (not (= lambda!289301 lambda!289266))))

(declare-fun bs!1263494 () Bool)

(assert (= bs!1263494 (and b!5459662 b!5459333)))

(assert (=> bs!1263494 (not (= lambda!289301 lambda!289268))))

(assert (=> bs!1263491 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229794)) (= lambda!289301 lambda!289272))))

(assert (=> bs!1263492 (not (= lambda!289301 lambda!289280))))

(assert (=> bs!1263492 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229788) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regTwo!31086 r!7292))) (= lambda!289301 lambda!289277))))

(assert (=> bs!1263493 (not (= lambda!289301 lambda!289264))))

(assert (=> bs!1263494 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229794) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regTwo!31086 r!7292))) (= lambda!289301 lambda!289269))))

(assert (=> bs!1263488 (not (= lambda!289301 lambda!289260))))

(assert (=> bs!1263489 (not (= lambda!289301 lambda!289281))))

(assert (=> bs!1263492 (not (= lambda!289301 lambda!289276))))

(declare-fun bs!1263495 () Bool)

(assert (= bs!1263495 (and b!5459662 b!5459661)))

(assert (=> bs!1263495 (not (= lambda!289301 lambda!289298))))

(declare-fun bs!1263496 () Bool)

(assert (= bs!1263496 (and b!5459662 b!5459292)))

(assert (=> bs!1263496 (not (= lambda!289301 lambda!289257))))

(assert (=> bs!1263492 (not (= lambda!289301 lambda!289278))))

(assert (=> bs!1263493 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) lt!2229863)) (= lambda!289301 lambda!289267))))

(assert (=> bs!1263496 (= (and (= (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regOne!31086 r!7292)) (= (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) (regTwo!31086 r!7292))) (= lambda!289301 lambda!289258))))

(assert (=> b!5459662 true))

(assert (=> b!5459662 true))

(declare-fun b!5459659 () Bool)

(declare-fun e!3380889 () Bool)

(declare-fun e!3380890 () Bool)

(assert (=> b!5459659 (= e!3380889 e!3380890)))

(declare-fun res!2325460 () Bool)

(assert (=> b!5459659 (= res!2325460 (matchRSpec!2390 (regOne!31087 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) s!2326))))

(assert (=> b!5459659 (=> res!2325460 e!3380890)))

(declare-fun b!5459660 () Bool)

(declare-fun e!3380885 () Bool)

(declare-fun call!400518 () Bool)

(assert (=> b!5459660 (= e!3380885 call!400518)))

(declare-fun e!3380888 () Bool)

(declare-fun call!400519 () Bool)

(assert (=> b!5459661 (= e!3380888 call!400519)))

(declare-fun e!3380886 () Bool)

(assert (=> b!5459662 (= e!3380886 call!400519)))

(declare-fun b!5459663 () Bool)

(declare-fun c!953896 () Bool)

(assert (=> b!5459663 (= c!953896 ((_ is ElementMatch!15287) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))))

(declare-fun e!3380891 () Bool)

(declare-fun e!3380887 () Bool)

(assert (=> b!5459663 (= e!3380891 e!3380887)))

(declare-fun b!5459664 () Bool)

(assert (=> b!5459664 (= e!3380887 (= s!2326 (Cons!62036 (c!953823 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) Nil!62036)))))

(declare-fun b!5459665 () Bool)

(declare-fun c!953897 () Bool)

(assert (=> b!5459665 (= c!953897 ((_ is Union!15287) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))))

(assert (=> b!5459665 (= e!3380887 e!3380889)))

(declare-fun bm!400514 () Bool)

(assert (=> bm!400514 (= call!400518 (isEmpty!34025 s!2326))))

(declare-fun b!5459666 () Bool)

(assert (=> b!5459666 (= e!3380890 (matchRSpec!2390 (regTwo!31087 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))) s!2326))))

(declare-fun b!5459667 () Bool)

(assert (=> b!5459667 (= e!3380885 e!3380891)))

(declare-fun res!2325459 () Bool)

(assert (=> b!5459667 (= res!2325459 (not ((_ is EmptyLang!15287) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))))))

(assert (=> b!5459667 (=> (not res!2325459) (not e!3380891))))

(declare-fun d!1737857 () Bool)

(declare-fun c!953895 () Bool)

(assert (=> d!1737857 (= c!953895 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))))

(assert (=> d!1737857 (= (matchRSpec!2390 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))) s!2326) e!3380885)))

(declare-fun c!953894 () Bool)

(declare-fun bm!400513 () Bool)

(assert (=> bm!400513 (= call!400519 (Exists!2468 (ite c!953894 lambda!289298 lambda!289301)))))

(declare-fun b!5459668 () Bool)

(declare-fun res!2325461 () Bool)

(assert (=> b!5459668 (=> res!2325461 e!3380888)))

(assert (=> b!5459668 (= res!2325461 call!400518)))

(assert (=> b!5459668 (= e!3380886 e!3380888)))

(declare-fun b!5459669 () Bool)

(assert (=> b!5459669 (= e!3380889 e!3380886)))

(assert (=> b!5459669 (= c!953894 ((_ is Star!15287) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))))

(assert (= (and d!1737857 c!953895) b!5459660))

(assert (= (and d!1737857 (not c!953895)) b!5459667))

(assert (= (and b!5459667 res!2325459) b!5459663))

(assert (= (and b!5459663 c!953896) b!5459664))

(assert (= (and b!5459663 (not c!953896)) b!5459665))

(assert (= (and b!5459665 c!953897) b!5459659))

(assert (= (and b!5459665 (not c!953897)) b!5459669))

(assert (= (and b!5459659 (not res!2325460)) b!5459666))

(assert (= (and b!5459669 c!953894) b!5459668))

(assert (= (and b!5459669 (not c!953894)) b!5459662))

(assert (= (and b!5459668 (not res!2325461)) b!5459661))

(assert (= (or b!5459661 b!5459662) bm!400513))

(assert (= (or b!5459660 b!5459668) bm!400514))

(declare-fun m!6480892 () Bool)

(assert (=> b!5459659 m!6480892))

(declare-fun m!6480894 () Bool)

(assert (=> bm!400514 m!6480894))

(declare-fun m!6480896 () Bool)

(assert (=> b!5459666 m!6480896))

(declare-fun m!6480898 () Bool)

(assert (=> bm!400513 m!6480898))

(assert (=> bm!400357 d!1737857))

(declare-fun b!5459704 () Bool)

(declare-fun e!3380914 () (InoxSet Context!9342))

(assert (=> b!5459704 (= e!3380914 (store ((as const (Array Context!9342 Bool)) false) (ite c!953819 lt!2229804 lt!2229850) true))))

(declare-fun b!5459705 () Bool)

(declare-fun c!953911 () Bool)

(assert (=> b!5459705 (= c!953911 ((_ is Star!15287) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(declare-fun e!3380913 () (InoxSet Context!9342))

(declare-fun e!3380910 () (InoxSet Context!9342))

(assert (=> b!5459705 (= e!3380913 e!3380910)))

(declare-fun b!5459706 () Bool)

(declare-fun call!400537 () (InoxSet Context!9342))

(assert (=> b!5459706 (= e!3380910 call!400537)))

(declare-fun bm!400527 () Bool)

(declare-fun call!400536 () (InoxSet Context!9342))

(assert (=> bm!400527 (= call!400537 call!400536)))

(declare-fun c!953910 () Bool)

(declare-fun d!1737863 () Bool)

(assert (=> d!1737863 (= c!953910 (and ((_ is ElementMatch!15287) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (= (c!953823 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (h!68484 s!2326))))))

(assert (=> d!1737863 (= (derivationStepZipperDown!735 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (ite c!953819 lt!2229804 lt!2229850) (h!68484 s!2326)) e!3380914)))

(declare-fun b!5459707 () Bool)

(declare-fun e!3380912 () (InoxSet Context!9342))

(assert (=> b!5459707 (= e!3380914 e!3380912)))

(declare-fun c!953909 () Bool)

(assert (=> b!5459707 (= c!953909 ((_ is Union!15287) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(declare-fun b!5459708 () Bool)

(assert (=> b!5459708 (= e!3380910 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5459709 () Bool)

(declare-fun e!3380911 () (InoxSet Context!9342))

(assert (=> b!5459709 (= e!3380911 e!3380913)))

(declare-fun c!953912 () Bool)

(assert (=> b!5459709 (= c!953912 ((_ is Concat!24132) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(declare-fun b!5459710 () Bool)

(declare-fun call!400534 () (InoxSet Context!9342))

(declare-fun call!400532 () (InoxSet Context!9342))

(assert (=> b!5459710 (= e!3380912 ((_ map or) call!400534 call!400532))))

(declare-fun bm!400528 () Bool)

(assert (=> bm!400528 (= call!400536 call!400532)))

(declare-fun b!5459711 () Bool)

(declare-fun e!3380915 () Bool)

(assert (=> b!5459711 (= e!3380915 (nullable!5456 (regOne!31086 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))))))))

(declare-fun call!400533 () List!62161)

(declare-fun bm!400529 () Bool)

(declare-fun c!953908 () Bool)

(declare-fun $colon$colon!1537 (List!62161 Regex!15287) List!62161)

(assert (=> bm!400529 (= call!400533 ($colon$colon!1537 (exprs!5171 (ite c!953819 lt!2229804 lt!2229850)) (ite (or c!953908 c!953912) (regTwo!31086 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))))))))

(declare-fun bm!400530 () Bool)

(declare-fun call!400535 () List!62161)

(assert (=> bm!400530 (= call!400535 call!400533)))

(declare-fun b!5459712 () Bool)

(assert (=> b!5459712 (= c!953908 e!3380915)))

(declare-fun res!2325476 () Bool)

(assert (=> b!5459712 (=> (not res!2325476) (not e!3380915))))

(assert (=> b!5459712 (= res!2325476 ((_ is Concat!24132) (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(assert (=> b!5459712 (= e!3380912 e!3380911)))

(declare-fun b!5459713 () Bool)

(assert (=> b!5459713 (= e!3380911 ((_ map or) call!400534 call!400536))))

(declare-fun bm!400531 () Bool)

(assert (=> bm!400531 (= call!400534 (derivationStepZipperDown!735 (ite c!953909 (regOne!31087 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (regOne!31086 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))))) (ite c!953909 (ite c!953819 lt!2229804 lt!2229850) (Context!9343 call!400533)) (h!68484 s!2326)))))

(declare-fun b!5459714 () Bool)

(assert (=> b!5459714 (= e!3380913 call!400537)))

(declare-fun bm!400532 () Bool)

(assert (=> bm!400532 (= call!400532 (derivationStepZipperDown!735 (ite c!953909 (regTwo!31087 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (ite c!953908 (regTwo!31086 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (ite c!953912 (regOne!31086 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (reg!15616 (ite c!953819 (regTwo!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))))))) (ite (or c!953909 c!953908) (ite c!953819 lt!2229804 lt!2229850) (Context!9343 call!400535)) (h!68484 s!2326)))))

(assert (= (and d!1737863 c!953910) b!5459704))

(assert (= (and d!1737863 (not c!953910)) b!5459707))

(assert (= (and b!5459707 c!953909) b!5459710))

(assert (= (and b!5459707 (not c!953909)) b!5459712))

(assert (= (and b!5459712 res!2325476) b!5459711))

(assert (= (and b!5459712 c!953908) b!5459713))

(assert (= (and b!5459712 (not c!953908)) b!5459709))

(assert (= (and b!5459709 c!953912) b!5459714))

(assert (= (and b!5459709 (not c!953912)) b!5459705))

(assert (= (and b!5459705 c!953911) b!5459706))

(assert (= (and b!5459705 (not c!953911)) b!5459708))

(assert (= (or b!5459714 b!5459706) bm!400530))

(assert (= (or b!5459714 b!5459706) bm!400527))

(assert (= (or b!5459713 bm!400530) bm!400529))

(assert (= (or b!5459713 bm!400527) bm!400528))

(assert (= (or b!5459710 bm!400528) bm!400532))

(assert (= (or b!5459710 b!5459713) bm!400531))

(declare-fun m!6480904 () Bool)

(assert (=> b!5459704 m!6480904))

(declare-fun m!6480906 () Bool)

(assert (=> bm!400532 m!6480906))

(declare-fun m!6480908 () Bool)

(assert (=> bm!400529 m!6480908))

(declare-fun m!6480910 () Bool)

(assert (=> b!5459711 m!6480910))

(declare-fun m!6480912 () Bool)

(assert (=> bm!400531 m!6480912))

(assert (=> bm!400453 d!1737863))

(declare-fun b!5459715 () Bool)

(declare-fun res!2325478 () Bool)

(declare-fun e!3380919 () Bool)

(assert (=> b!5459715 (=> res!2325478 e!3380919)))

(assert (=> b!5459715 (= res!2325478 (not ((_ is ElementMatch!15287) (ite c!953819 lt!2229719 lt!2229792))))))

(declare-fun e!3380916 () Bool)

(assert (=> b!5459715 (= e!3380916 e!3380919)))

(declare-fun b!5459716 () Bool)

(declare-fun e!3380922 () Bool)

(assert (=> b!5459716 (= e!3380922 (= (head!11691 s!2326) (c!953823 (ite c!953819 lt!2229719 lt!2229792))))))

(declare-fun e!3380917 () Bool)

(declare-fun b!5459717 () Bool)

(assert (=> b!5459717 (= e!3380917 (nullable!5456 (ite c!953819 lt!2229719 lt!2229792)))))

(declare-fun b!5459718 () Bool)

(declare-fun e!3380920 () Bool)

(declare-fun e!3380921 () Bool)

(assert (=> b!5459718 (= e!3380920 e!3380921)))

(declare-fun res!2325477 () Bool)

(assert (=> b!5459718 (=> res!2325477 e!3380921)))

(declare-fun call!400538 () Bool)

(assert (=> b!5459718 (= res!2325477 call!400538)))

(declare-fun b!5459719 () Bool)

(declare-fun res!2325483 () Bool)

(assert (=> b!5459719 (=> res!2325483 e!3380921)))

(assert (=> b!5459719 (= res!2325483 (not (isEmpty!34025 (tail!10788 s!2326))))))

(declare-fun d!1737867 () Bool)

(declare-fun e!3380918 () Bool)

(assert (=> d!1737867 e!3380918))

(declare-fun c!953915 () Bool)

(assert (=> d!1737867 (= c!953915 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229719 lt!2229792)))))

(declare-fun lt!2229990 () Bool)

(assert (=> d!1737867 (= lt!2229990 e!3380917)))

(declare-fun c!953914 () Bool)

(assert (=> d!1737867 (= c!953914 (isEmpty!34025 s!2326))))

(assert (=> d!1737867 (validRegex!7023 (ite c!953819 lt!2229719 lt!2229792))))

(assert (=> d!1737867 (= (matchR!7472 (ite c!953819 lt!2229719 lt!2229792) s!2326) lt!2229990)))

(declare-fun b!5459720 () Bool)

(declare-fun res!2325479 () Bool)

(assert (=> b!5459720 (=> (not res!2325479) (not e!3380922))))

(assert (=> b!5459720 (= res!2325479 (isEmpty!34025 (tail!10788 s!2326)))))

(declare-fun b!5459721 () Bool)

(assert (=> b!5459721 (= e!3380917 (matchR!7472 (derivativeStep!4308 (ite c!953819 lt!2229719 lt!2229792) (head!11691 s!2326)) (tail!10788 s!2326)))))

(declare-fun b!5459722 () Bool)

(assert (=> b!5459722 (= e!3380916 (not lt!2229990))))

(declare-fun b!5459723 () Bool)

(declare-fun res!2325481 () Bool)

(assert (=> b!5459723 (=> res!2325481 e!3380919)))

(assert (=> b!5459723 (= res!2325481 e!3380922)))

(declare-fun res!2325484 () Bool)

(assert (=> b!5459723 (=> (not res!2325484) (not e!3380922))))

(assert (=> b!5459723 (= res!2325484 lt!2229990)))

(declare-fun b!5459724 () Bool)

(declare-fun res!2325482 () Bool)

(assert (=> b!5459724 (=> (not res!2325482) (not e!3380922))))

(assert (=> b!5459724 (= res!2325482 (not call!400538))))

(declare-fun b!5459725 () Bool)

(assert (=> b!5459725 (= e!3380921 (not (= (head!11691 s!2326) (c!953823 (ite c!953819 lt!2229719 lt!2229792)))))))

(declare-fun b!5459726 () Bool)

(assert (=> b!5459726 (= e!3380918 e!3380916)))

(declare-fun c!953913 () Bool)

(assert (=> b!5459726 (= c!953913 ((_ is EmptyLang!15287) (ite c!953819 lt!2229719 lt!2229792)))))

(declare-fun bm!400533 () Bool)

(assert (=> bm!400533 (= call!400538 (isEmpty!34025 s!2326))))

(declare-fun b!5459727 () Bool)

(assert (=> b!5459727 (= e!3380918 (= lt!2229990 call!400538))))

(declare-fun b!5459728 () Bool)

(assert (=> b!5459728 (= e!3380919 e!3380920)))

(declare-fun res!2325480 () Bool)

(assert (=> b!5459728 (=> (not res!2325480) (not e!3380920))))

(assert (=> b!5459728 (= res!2325480 (not lt!2229990))))

(assert (= (and d!1737867 c!953914) b!5459717))

(assert (= (and d!1737867 (not c!953914)) b!5459721))

(assert (= (and d!1737867 c!953915) b!5459727))

(assert (= (and d!1737867 (not c!953915)) b!5459726))

(assert (= (and b!5459726 c!953913) b!5459722))

(assert (= (and b!5459726 (not c!953913)) b!5459715))

(assert (= (and b!5459715 (not res!2325478)) b!5459723))

(assert (= (and b!5459723 res!2325484) b!5459724))

(assert (= (and b!5459724 res!2325482) b!5459720))

(assert (= (and b!5459720 res!2325479) b!5459716))

(assert (= (and b!5459723 (not res!2325481)) b!5459728))

(assert (= (and b!5459728 res!2325480) b!5459718))

(assert (= (and b!5459718 (not res!2325477)) b!5459719))

(assert (= (and b!5459719 (not res!2325483)) b!5459725))

(assert (= (or b!5459727 b!5459718 b!5459724) bm!400533))

(declare-fun m!6480914 () Bool)

(assert (=> b!5459720 m!6480914))

(assert (=> b!5459720 m!6480914))

(declare-fun m!6480916 () Bool)

(assert (=> b!5459720 m!6480916))

(declare-fun m!6480918 () Bool)

(assert (=> b!5459717 m!6480918))

(assert (=> d!1737867 m!6480894))

(declare-fun m!6480920 () Bool)

(assert (=> d!1737867 m!6480920))

(assert (=> b!5459719 m!6480914))

(assert (=> b!5459719 m!6480914))

(assert (=> b!5459719 m!6480916))

(assert (=> bm!400533 m!6480894))

(declare-fun m!6480922 () Bool)

(assert (=> b!5459716 m!6480922))

(assert (=> b!5459725 m!6480922))

(assert (=> b!5459721 m!6480922))

(assert (=> b!5459721 m!6480922))

(declare-fun m!6480924 () Bool)

(assert (=> b!5459721 m!6480924))

(assert (=> b!5459721 m!6480914))

(assert (=> b!5459721 m!6480924))

(assert (=> b!5459721 m!6480914))

(declare-fun m!6480926 () Bool)

(assert (=> b!5459721 m!6480926))

(assert (=> bm!400322 d!1737867))

(declare-fun bs!1263510 () Bool)

(declare-fun d!1737869 () Bool)

(assert (= bs!1263510 (and d!1737869 b!5459299)))

(declare-fun lambda!289308 () Int)

(assert (=> bs!1263510 (= lambda!289308 lambda!289273)))

(declare-fun bs!1263512 () Bool)

(assert (= bs!1263512 (and d!1737869 b!5459307)))

(assert (=> bs!1263512 (= lambda!289308 lambda!289275)))

(declare-fun bs!1263513 () Bool)

(assert (= bs!1263513 (and d!1737869 d!1737787)))

(assert (=> bs!1263513 (= lambda!289308 lambda!289286)))

(assert (=> d!1737869 (= (inv!81464 (h!68486 zl!343)) (forall!14591 (exprs!5171 (h!68486 zl!343)) lambda!289308))))

(declare-fun bs!1263515 () Bool)

(assert (= bs!1263515 d!1737869))

(declare-fun m!6480928 () Bool)

(assert (=> bs!1263515 m!6480928))

(assert (=> b!5459288 d!1737869))

(declare-fun d!1737871 () Bool)

(declare-fun e!3380923 () Bool)

(assert (=> d!1737871 (= (matchZipper!1531 ((_ map or) (ite c!953819 lt!2229853 lt!2229826) (ite c!953819 lt!2229907 lt!2229898)) (t!375389 s!2326)) e!3380923)))

(declare-fun res!2325485 () Bool)

(assert (=> d!1737871 (=> res!2325485 e!3380923)))

(assert (=> d!1737871 (= res!2325485 (matchZipper!1531 (ite c!953819 lt!2229853 lt!2229826) (t!375389 s!2326)))))

(declare-fun lt!2229991 () Unit!154924)

(assert (=> d!1737871 (= lt!2229991 (choose!41482 (ite c!953819 lt!2229853 lt!2229826) (ite c!953819 lt!2229907 lt!2229898) (t!375389 s!2326)))))

(assert (=> d!1737871 (= (lemmaZipperConcatMatchesSameAsBothZippers!524 (ite c!953819 lt!2229853 lt!2229826) (ite c!953819 lt!2229907 lt!2229898) (t!375389 s!2326)) lt!2229991)))

(declare-fun b!5459729 () Bool)

(assert (=> b!5459729 (= e!3380923 (matchZipper!1531 (ite c!953819 lt!2229907 lt!2229898) (t!375389 s!2326)))))

(assert (= (and d!1737871 (not res!2325485)) b!5459729))

(declare-fun m!6480930 () Bool)

(assert (=> d!1737871 m!6480930))

(declare-fun m!6480932 () Bool)

(assert (=> d!1737871 m!6480932))

(declare-fun m!6480934 () Bool)

(assert (=> d!1737871 m!6480934))

(declare-fun m!6480936 () Bool)

(assert (=> b!5459729 m!6480936))

(assert (=> bm!400290 d!1737871))

(declare-fun b!5459730 () Bool)

(declare-fun res!2325487 () Bool)

(declare-fun e!3380927 () Bool)

(assert (=> b!5459730 (=> res!2325487 e!3380927)))

(assert (=> b!5459730 (= res!2325487 (not ((_ is ElementMatch!15287) (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)))))))

(declare-fun e!3380924 () Bool)

(assert (=> b!5459730 (= e!3380924 e!3380927)))

(declare-fun e!3380930 () Bool)

(declare-fun b!5459731 () Bool)

(assert (=> b!5459731 (= e!3380930 (= (head!11691 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)) (c!953823 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)))))))

(declare-fun e!3380925 () Bool)

(declare-fun b!5459732 () Bool)

(assert (=> b!5459732 (= e!3380925 (nullable!5456 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292))))))

(declare-fun b!5459733 () Bool)

(declare-fun e!3380928 () Bool)

(declare-fun e!3380929 () Bool)

(assert (=> b!5459733 (= e!3380928 e!3380929)))

(declare-fun res!2325486 () Bool)

(assert (=> b!5459733 (=> res!2325486 e!3380929)))

(declare-fun call!400539 () Bool)

(assert (=> b!5459733 (= res!2325486 call!400539)))

(declare-fun b!5459734 () Bool)

(declare-fun res!2325492 () Bool)

(assert (=> b!5459734 (=> res!2325492 e!3380929)))

(assert (=> b!5459734 (= res!2325492 (not (isEmpty!34025 (tail!10788 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)))))))

(declare-fun d!1737873 () Bool)

(declare-fun e!3380926 () Bool)

(assert (=> d!1737873 e!3380926))

(declare-fun c!953918 () Bool)

(assert (=> d!1737873 (= c!953918 ((_ is EmptyExpr!15287) (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292))))))

(declare-fun lt!2229992 () Bool)

(assert (=> d!1737873 (= lt!2229992 e!3380925)))

(declare-fun c!953917 () Bool)

(assert (=> d!1737873 (= c!953917 (isEmpty!34025 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)))))

(assert (=> d!1737873 (validRegex!7023 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)))))

(assert (=> d!1737873 (= (matchR!7472 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)) (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)) lt!2229992)))

(declare-fun b!5459735 () Bool)

(declare-fun res!2325488 () Bool)

(assert (=> b!5459735 (=> (not res!2325488) (not e!3380930))))

(assert (=> b!5459735 (= res!2325488 (isEmpty!34025 (tail!10788 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326))))))

(declare-fun b!5459736 () Bool)

(assert (=> b!5459736 (= e!3380925 (matchR!7472 (derivativeStep!4308 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292)) (head!11691 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326))) (tail!10788 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326))))))

(declare-fun b!5459737 () Bool)

(assert (=> b!5459737 (= e!3380924 (not lt!2229992))))

(declare-fun b!5459738 () Bool)

(declare-fun res!2325490 () Bool)

(assert (=> b!5459738 (=> res!2325490 e!3380927)))

(assert (=> b!5459738 (= res!2325490 e!3380930)))

(declare-fun res!2325493 () Bool)

(assert (=> b!5459738 (=> (not res!2325493) (not e!3380930))))

(assert (=> b!5459738 (= res!2325493 lt!2229992)))

(declare-fun b!5459739 () Bool)

(declare-fun res!2325491 () Bool)

(assert (=> b!5459739 (=> (not res!2325491) (not e!3380930))))

(assert (=> b!5459739 (= res!2325491 (not call!400539))))

(declare-fun b!5459740 () Bool)

(assert (=> b!5459740 (= e!3380929 (not (= (head!11691 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)) (c!953823 (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292))))))))

(declare-fun b!5459741 () Bool)

(assert (=> b!5459741 (= e!3380926 e!3380924)))

(declare-fun c!953916 () Bool)

(assert (=> b!5459741 (= c!953916 ((_ is EmptyLang!15287) (ite c!953816 (ite c!953817 (ite c!953815 lt!2229774 lt!2229799) (ite c!953822 lt!2229781 lt!2229799)) (regTwo!31086 r!7292))))))

(declare-fun bm!400534 () Bool)

(assert (=> bm!400534 (= call!400539 (isEmpty!34025 (ite c!953816 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (ite c!953822 s!2326 call!400411)) s!2326)))))

(declare-fun b!5459742 () Bool)

(assert (=> b!5459742 (= e!3380926 (= lt!2229992 call!400539))))

(declare-fun b!5459743 () Bool)

(assert (=> b!5459743 (= e!3380927 e!3380928)))

(declare-fun res!2325489 () Bool)

(assert (=> b!5459743 (=> (not res!2325489) (not e!3380928))))

(assert (=> b!5459743 (= res!2325489 (not lt!2229992))))

(assert (= (and d!1737873 c!953917) b!5459732))

(assert (= (and d!1737873 (not c!953917)) b!5459736))

(assert (= (and d!1737873 c!953918) b!5459742))

(assert (= (and d!1737873 (not c!953918)) b!5459741))

(assert (= (and b!5459741 c!953916) b!5459737))

(assert (= (and b!5459741 (not c!953916)) b!5459730))

(assert (= (and b!5459730 (not res!2325487)) b!5459738))

(assert (= (and b!5459738 res!2325493) b!5459739))

(assert (= (and b!5459739 res!2325491) b!5459735))

(assert (= (and b!5459735 res!2325488) b!5459731))

(assert (= (and b!5459738 (not res!2325490)) b!5459743))

(assert (= (and b!5459743 res!2325489) b!5459733))

(assert (= (and b!5459733 (not res!2325486)) b!5459734))

(assert (= (and b!5459734 (not res!2325492)) b!5459740))

(assert (= (or b!5459742 b!5459733 b!5459739) bm!400534))

(declare-fun m!6480938 () Bool)

(assert (=> b!5459735 m!6480938))

(assert (=> b!5459735 m!6480938))

(declare-fun m!6480940 () Bool)

(assert (=> b!5459735 m!6480940))

(declare-fun m!6480942 () Bool)

(assert (=> b!5459732 m!6480942))

(declare-fun m!6480944 () Bool)

(assert (=> d!1737873 m!6480944))

(declare-fun m!6480946 () Bool)

(assert (=> d!1737873 m!6480946))

(assert (=> b!5459734 m!6480938))

(assert (=> b!5459734 m!6480938))

(assert (=> b!5459734 m!6480940))

(assert (=> bm!400534 m!6480944))

(declare-fun m!6480948 () Bool)

(assert (=> b!5459731 m!6480948))

(assert (=> b!5459740 m!6480948))

(assert (=> b!5459736 m!6480948))

(assert (=> b!5459736 m!6480948))

(declare-fun m!6480950 () Bool)

(assert (=> b!5459736 m!6480950))

(assert (=> b!5459736 m!6480938))

(assert (=> b!5459736 m!6480950))

(assert (=> b!5459736 m!6480938))

(declare-fun m!6480952 () Bool)

(assert (=> b!5459736 m!6480952))

(assert (=> bm!400482 d!1737873))

(declare-fun d!1737875 () Bool)

(assert (=> d!1737875 (= (isEmpty!34024 (t!375390 (exprs!5171 (h!68486 zl!343)))) ((_ is Nil!62037) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> b!5459313 d!1737875))

(declare-fun bs!1263522 () Bool)

(declare-fun d!1737877 () Bool)

(assert (= bs!1263522 (and d!1737877 b!5459302)))

(declare-fun lambda!289314 () Int)

(assert (=> bs!1263522 (not (= lambda!289314 lambda!289282))))

(declare-fun bs!1263523 () Bool)

(assert (= bs!1263523 (and d!1737877 d!1737855)))

(assert (=> bs!1263523 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289314 lambda!289293))))

(declare-fun bs!1263524 () Bool)

(assert (= bs!1263524 (and d!1737877 b!5459299)))

(assert (=> bs!1263524 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229844)) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289314 lambda!289270))))

(declare-fun bs!1263525 () Bool)

(assert (= bs!1263525 (and d!1737877 b!5459286)))

(assert (=> bs!1263525 (not (= lambda!289314 lambda!289261))))

(assert (=> bs!1263524 (not (= lambda!289314 lambda!289271))))

(declare-fun bs!1263526 () Bool)

(assert (= bs!1263526 (and d!1737877 b!5459307)))

(assert (=> bs!1263526 (not (= lambda!289314 lambda!289279))))

(declare-fun bs!1263528 () Bool)

(assert (= bs!1263528 (and d!1737877 b!5459320)))

(assert (=> bs!1263528 (not (= lambda!289314 lambda!289265))))

(assert (=> bs!1263522 (not (= lambda!289314 lambda!289283))))

(assert (=> bs!1263525 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229912)) (= lambda!289314 lambda!289262))))

(assert (=> bs!1263528 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229863)) (= lambda!289314 lambda!289266))))

(declare-fun bs!1263530 () Bool)

(assert (= bs!1263530 (and d!1737877 b!5459333)))

(assert (=> bs!1263530 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) lt!2229794) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289314 lambda!289268))))

(assert (=> bs!1263524 (not (= lambda!289314 lambda!289272))))

(assert (=> bs!1263526 (not (= lambda!289314 lambda!289280))))

(assert (=> bs!1263526 (not (= lambda!289314 lambda!289277))))

(assert (=> bs!1263528 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229767)) (= lambda!289314 lambda!289264))))

(assert (=> bs!1263525 (not (= lambda!289314 lambda!289263))))

(declare-fun bs!1263531 () Bool)

(assert (= bs!1263531 (and d!1737877 b!5459662)))

(assert (=> bs!1263531 (not (= lambda!289314 lambda!289301))))

(assert (=> bs!1263530 (not (= lambda!289314 lambda!289269))))

(assert (=> bs!1263525 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229727)) (= lambda!289314 lambda!289260))))

(assert (=> bs!1263522 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) Nil!62036) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289314 lambda!289281))))

(assert (=> bs!1263526 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) lt!2229788) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289314 lambda!289276))))

(declare-fun bs!1263532 () Bool)

(assert (= bs!1263532 (and d!1737877 b!5459661)))

(assert (=> bs!1263532 (not (= lambda!289314 lambda!289298))))

(declare-fun bs!1263533 () Bool)

(assert (= bs!1263533 (and d!1737877 b!5459292)))

(assert (=> bs!1263533 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289314 lambda!289257))))

(assert (=> bs!1263526 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229728)) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289314 lambda!289278))))

(assert (=> bs!1263528 (not (= lambda!289314 lambda!289267))))

(assert (=> bs!1263533 (not (= lambda!289314 lambda!289258))))

(assert (=> d!1737877 true))

(assert (=> d!1737877 true))

(assert (=> d!1737877 true))

(declare-fun lambda!289315 () Int)

(assert (=> bs!1263522 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) Nil!62036) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289315 lambda!289282))))

(assert (=> bs!1263523 (not (= lambda!289315 lambda!289293))))

(assert (=> bs!1263524 (not (= lambda!289315 lambda!289270))))

(assert (=> bs!1263525 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229727)) (= lambda!289315 lambda!289261))))

(assert (=> bs!1263524 (not (= lambda!289315 lambda!289271))))

(assert (=> bs!1263526 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229728)) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289315 lambda!289279))))

(assert (=> bs!1263528 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229767)) (= lambda!289315 lambda!289265))))

(assert (=> bs!1263522 (not (= lambda!289315 lambda!289283))))

(assert (=> bs!1263525 (not (= lambda!289315 lambda!289262))))

(assert (=> bs!1263528 (not (= lambda!289315 lambda!289266))))

(assert (=> bs!1263524 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229844)) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229794)) (= lambda!289315 lambda!289272))))

(assert (=> bs!1263526 (not (= lambda!289315 lambda!289280))))

(assert (=> bs!1263526 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) lt!2229788) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289315 lambda!289277))))

(assert (=> bs!1263528 (not (= lambda!289315 lambda!289264))))

(assert (=> bs!1263525 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229912)) (= lambda!289315 lambda!289263))))

(assert (=> bs!1263531 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289315 lambda!289301))))

(assert (=> bs!1263530 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) lt!2229794) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289315 lambda!289269))))

(assert (=> bs!1263525 (not (= lambda!289315 lambda!289260))))

(assert (=> bs!1263522 (not (= lambda!289315 lambda!289281))))

(assert (=> bs!1263526 (not (= lambda!289315 lambda!289276))))

(assert (=> bs!1263532 (not (= lambda!289315 lambda!289298))))

(assert (=> bs!1263533 (not (= lambda!289315 lambda!289257))))

(assert (=> bs!1263526 (not (= lambda!289315 lambda!289278))))

(assert (=> bs!1263528 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) lt!2229863)) (= lambda!289315 lambda!289267))))

(assert (=> bs!1263533 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289315 lambda!289258))))

(assert (=> bs!1263530 (not (= lambda!289315 lambda!289268))))

(declare-fun bs!1263534 () Bool)

(assert (= bs!1263534 d!1737877))

(assert (=> bs!1263534 (not (= lambda!289315 lambda!289314))))

(assert (=> d!1737877 true))

(assert (=> d!1737877 true))

(assert (=> d!1737877 true))

(assert (=> d!1737877 (= (Exists!2468 lambda!289314) (Exists!2468 lambda!289315))))

(declare-fun lt!2229996 () Unit!154924)

(declare-fun choose!41494 (Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> d!1737877 (= lt!2229996 (choose!41494 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))))))

(assert (=> d!1737877 (validRegex!7023 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))

(assert (=> d!1737877 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) lt!2229996)))

(declare-fun m!6480996 () Bool)

(assert (=> bs!1263534 m!6480996))

(declare-fun m!6480998 () Bool)

(assert (=> bs!1263534 m!6480998))

(declare-fun m!6481000 () Bool)

(assert (=> bs!1263534 m!6481000))

(declare-fun m!6481002 () Bool)

(assert (=> bs!1263534 m!6481002))

(assert (=> bm!400372 d!1737877))

(declare-fun d!1737897 () Bool)

(assert (=> d!1737897 (= (matchR!7472 (ite c!953819 lt!2229759 lt!2229788) (ite c!953819 s!2326 (_1!35789 lt!2229728))) (matchRSpec!2390 (ite c!953819 lt!2229759 lt!2229788) (ite c!953819 s!2326 (_1!35789 lt!2229728))))))

(declare-fun lt!2230000 () Unit!154924)

(declare-fun choose!41495 (Regex!15287 List!62160) Unit!154924)

(assert (=> d!1737897 (= lt!2230000 (choose!41495 (ite c!953819 lt!2229759 lt!2229788) (ite c!953819 s!2326 (_1!35789 lt!2229728))))))

(assert (=> d!1737897 (validRegex!7023 (ite c!953819 lt!2229759 lt!2229788))))

(assert (=> d!1737897 (= (mainMatchTheorem!2390 (ite c!953819 lt!2229759 lt!2229788) (ite c!953819 s!2326 (_1!35789 lt!2229728))) lt!2230000)))

(declare-fun bs!1263535 () Bool)

(assert (= bs!1263535 d!1737897))

(declare-fun m!6481004 () Bool)

(assert (=> bs!1263535 m!6481004))

(declare-fun m!6481006 () Bool)

(assert (=> bs!1263535 m!6481006))

(declare-fun m!6481008 () Bool)

(assert (=> bs!1263535 m!6481008))

(declare-fun m!6481010 () Bool)

(assert (=> bs!1263535 m!6481010))

(assert (=> bm!400354 d!1737897))

(declare-fun d!1737899 () Bool)

(assert (=> d!1737899 (matchR!7472 (Concat!24132 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229794) (ite (or c!953817 c!953822) lt!2229799 (regTwo!31086 r!7292))) (++!13653 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 (_2!35789 lt!2229738) s!2326))))))

(declare-fun lt!2230003 () Unit!154924)

(declare-fun choose!41496 (Regex!15287 Regex!15287 List!62160 List!62160) Unit!154924)

(assert (=> d!1737899 (= lt!2230003 (choose!41496 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229794) (ite (or c!953817 c!953822) lt!2229799 (regTwo!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 (_2!35789 lt!2229738) s!2326))))))

(declare-fun e!3380971 () Bool)

(assert (=> d!1737899 e!3380971))

(declare-fun res!2325512 () Bool)

(assert (=> d!1737899 (=> (not res!2325512) (not e!3380971))))

(assert (=> d!1737899 (= res!2325512 (validRegex!7023 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229794)))))

(assert (=> d!1737899 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!254 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229794) (ite (or c!953817 c!953822) lt!2229799 (regTwo!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 (_2!35789 lt!2229738) s!2326))) lt!2230003)))

(declare-fun b!5459814 () Bool)

(assert (=> b!5459814 (= e!3380971 (validRegex!7023 (ite (or c!953817 c!953822) lt!2229799 (regTwo!31086 r!7292))))))

(assert (= (and d!1737899 res!2325512) b!5459814))

(declare-fun m!6481032 () Bool)

(assert (=> d!1737899 m!6481032))

(assert (=> d!1737899 m!6481032))

(declare-fun m!6481034 () Bool)

(assert (=> d!1737899 m!6481034))

(declare-fun m!6481036 () Bool)

(assert (=> d!1737899 m!6481036))

(declare-fun m!6481038 () Bool)

(assert (=> d!1737899 m!6481038))

(declare-fun m!6481040 () Bool)

(assert (=> b!5459814 m!6481040))

(assert (=> bm!400449 d!1737899))

(declare-fun d!1737909 () Bool)

(declare-fun c!953956 () Bool)

(declare-fun e!3380988 () Bool)

(assert (=> d!1737909 (= c!953956 e!3380988)))

(declare-fun res!2325521 () Bool)

(assert (=> d!1737909 (=> (not res!2325521) (not e!3380988))))

(assert (=> d!1737909 (= res!2325521 ((_ is Cons!62037) (exprs!5171 (ite c!953812 lt!2229858 lt!2229848))))))

(declare-fun e!3380987 () (InoxSet Context!9342))

(assert (=> d!1737909 (= (derivationStepZipperUp!659 (ite c!953812 lt!2229858 lt!2229848) (h!68484 s!2326)) e!3380987)))

(declare-fun b!5459841 () Bool)

(declare-fun e!3380986 () (InoxSet Context!9342))

(declare-fun call!400566 () (InoxSet Context!9342))

(assert (=> b!5459841 (= e!3380986 call!400566)))

(declare-fun b!5459842 () Bool)

(assert (=> b!5459842 (= e!3380987 ((_ map or) call!400566 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 (ite c!953812 lt!2229858 lt!2229848)))) (h!68484 s!2326))))))

(declare-fun b!5459843 () Bool)

(assert (=> b!5459843 (= e!3380986 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5459844 () Bool)

(assert (=> b!5459844 (= e!3380987 e!3380986)))

(declare-fun c!953955 () Bool)

(assert (=> b!5459844 (= c!953955 ((_ is Cons!62037) (exprs!5171 (ite c!953812 lt!2229858 lt!2229848))))))

(declare-fun b!5459845 () Bool)

(assert (=> b!5459845 (= e!3380988 (nullable!5456 (h!68485 (exprs!5171 (ite c!953812 lt!2229858 lt!2229848)))))))

(declare-fun bm!400561 () Bool)

(assert (=> bm!400561 (= call!400566 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (ite c!953812 lt!2229858 lt!2229848))) (Context!9343 (t!375390 (exprs!5171 (ite c!953812 lt!2229858 lt!2229848)))) (h!68484 s!2326)))))

(assert (= (and d!1737909 res!2325521) b!5459845))

(assert (= (and d!1737909 c!953956) b!5459842))

(assert (= (and d!1737909 (not c!953956)) b!5459844))

(assert (= (and b!5459844 c!953955) b!5459841))

(assert (= (and b!5459844 (not c!953955)) b!5459843))

(assert (= (or b!5459842 b!5459841) bm!400561))

(declare-fun m!6481074 () Bool)

(assert (=> b!5459842 m!6481074))

(declare-fun m!6481076 () Bool)

(assert (=> b!5459845 m!6481076))

(declare-fun m!6481078 () Bool)

(assert (=> bm!400561 m!6481078))

(assert (=> bm!400319 d!1737909))

(declare-fun e!3380989 () Bool)

(declare-fun d!1737917 () Bool)

(assert (=> d!1737917 (= (matchZipper!1531 ((_ map or) lt!2229921 lt!2229838) (t!375389 s!2326)) e!3380989)))

(declare-fun res!2325522 () Bool)

(assert (=> d!1737917 (=> res!2325522 e!3380989)))

(assert (=> d!1737917 (= res!2325522 (matchZipper!1531 lt!2229921 (t!375389 s!2326)))))

(declare-fun lt!2230007 () Unit!154924)

(assert (=> d!1737917 (= lt!2230007 (choose!41482 lt!2229921 lt!2229838 (t!375389 s!2326)))))

(assert (=> d!1737917 (= (lemmaZipperConcatMatchesSameAsBothZippers!524 lt!2229921 lt!2229838 (t!375389 s!2326)) lt!2230007)))

(declare-fun b!5459846 () Bool)

(assert (=> b!5459846 (= e!3380989 (matchZipper!1531 lt!2229838 (t!375389 s!2326)))))

(assert (= (and d!1737917 (not res!2325522)) b!5459846))

(assert (=> d!1737917 m!6480294))

(assert (=> d!1737917 m!6480292))

(declare-fun m!6481080 () Bool)

(assert (=> d!1737917 m!6481080))

(assert (=> b!5459846 m!6480474))

(assert (=> b!5459344 d!1737917))

(declare-fun d!1737919 () Bool)

(declare-fun c!953957 () Bool)

(assert (=> d!1737919 (= c!953957 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3380990 () Bool)

(assert (=> d!1737919 (= (matchZipper!1531 lt!2229921 (t!375389 s!2326)) e!3380990)))

(declare-fun b!5459847 () Bool)

(assert (=> b!5459847 (= e!3380990 (nullableZipper!1487 lt!2229921))))

(declare-fun b!5459848 () Bool)

(assert (=> b!5459848 (= e!3380990 (matchZipper!1531 (derivationStepZipper!1506 lt!2229921 (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1737919 c!953957) b!5459847))

(assert (= (and d!1737919 (not c!953957)) b!5459848))

(assert (=> d!1737919 m!6480704))

(declare-fun m!6481082 () Bool)

(assert (=> b!5459847 m!6481082))

(assert (=> b!5459848 m!6480708))

(assert (=> b!5459848 m!6480708))

(declare-fun m!6481084 () Bool)

(assert (=> b!5459848 m!6481084))

(assert (=> b!5459848 m!6480712))

(assert (=> b!5459848 m!6481084))

(assert (=> b!5459848 m!6480712))

(declare-fun m!6481086 () Bool)

(assert (=> b!5459848 m!6481086))

(assert (=> b!5459344 d!1737919))

(declare-fun d!1737921 () Bool)

(declare-fun c!953958 () Bool)

(assert (=> d!1737921 (= c!953958 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3380991 () Bool)

(assert (=> d!1737921 (= (matchZipper!1531 ((_ map or) lt!2229921 lt!2229838) (t!375389 s!2326)) e!3380991)))

(declare-fun b!5459849 () Bool)

(assert (=> b!5459849 (= e!3380991 (nullableZipper!1487 ((_ map or) lt!2229921 lt!2229838)))))

(declare-fun b!5459850 () Bool)

(assert (=> b!5459850 (= e!3380991 (matchZipper!1531 (derivationStepZipper!1506 ((_ map or) lt!2229921 lt!2229838) (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1737921 c!953958) b!5459849))

(assert (= (and d!1737921 (not c!953958)) b!5459850))

(assert (=> d!1737921 m!6480704))

(declare-fun m!6481088 () Bool)

(assert (=> b!5459849 m!6481088))

(assert (=> b!5459850 m!6480708))

(assert (=> b!5459850 m!6480708))

(declare-fun m!6481090 () Bool)

(assert (=> b!5459850 m!6481090))

(assert (=> b!5459850 m!6480712))

(assert (=> b!5459850 m!6481090))

(assert (=> b!5459850 m!6480712))

(declare-fun m!6481092 () Bool)

(assert (=> b!5459850 m!6481092))

(assert (=> b!5459344 d!1737921))

(declare-fun bs!1263540 () Bool)

(declare-fun d!1737923 () Bool)

(assert (= bs!1263540 (and d!1737923 b!5459299)))

(declare-fun lambda!289323 () Int)

(assert (=> bs!1263540 (= lambda!289323 lambda!289273)))

(declare-fun bs!1263541 () Bool)

(assert (= bs!1263541 (and d!1737923 b!5459307)))

(assert (=> bs!1263541 (= lambda!289323 lambda!289275)))

(declare-fun bs!1263542 () Bool)

(assert (= bs!1263542 (and d!1737923 d!1737787)))

(assert (=> bs!1263542 (= lambda!289323 lambda!289286)))

(declare-fun bs!1263543 () Bool)

(assert (= bs!1263543 (and d!1737923 d!1737869)))

(assert (=> bs!1263543 (= lambda!289323 lambda!289308)))

(declare-fun b!5459875 () Bool)

(declare-fun e!3381009 () Regex!15287)

(declare-fun e!3381007 () Regex!15287)

(assert (=> b!5459875 (= e!3381009 e!3381007)))

(declare-fun c!953973 () Bool)

(assert (=> b!5459875 (= c!953973 ((_ is Cons!62037) (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(declare-fun b!5459876 () Bool)

(declare-fun e!3381006 () Bool)

(declare-fun e!3381010 () Bool)

(assert (=> b!5459876 (= e!3381006 e!3381010)))

(declare-fun c!953972 () Bool)

(declare-fun tail!10790 (List!62161) List!62161)

(assert (=> b!5459876 (= c!953972 (isEmpty!34024 (tail!10790 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343))))))))))))

(declare-fun b!5459877 () Bool)

(assert (=> b!5459877 (= e!3381009 (h!68485 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(declare-fun b!5459878 () Bool)

(declare-fun lt!2230021 () Regex!15287)

(declare-fun isEmptyExpr!1019 (Regex!15287) Bool)

(assert (=> b!5459878 (= e!3381006 (isEmptyExpr!1019 lt!2230021))))

(declare-fun b!5459879 () Bool)

(declare-fun head!11693 (List!62161) Regex!15287)

(assert (=> b!5459879 (= e!3381010 (= lt!2230021 (head!11693 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343))))))))))))

(declare-fun b!5459880 () Bool)

(declare-fun e!3381008 () Bool)

(assert (=> b!5459880 (= e!3381008 (isEmpty!34024 (t!375390 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343))))))))))))

(declare-fun e!3381011 () Bool)

(assert (=> d!1737923 e!3381011))

(declare-fun res!2325527 () Bool)

(assert (=> d!1737923 (=> (not res!2325527) (not e!3381011))))

(assert (=> d!1737923 (= res!2325527 (validRegex!7023 lt!2230021))))

(assert (=> d!1737923 (= lt!2230021 e!3381009)))

(declare-fun c!953971 () Bool)

(assert (=> d!1737923 (= c!953971 e!3381008)))

(declare-fun res!2325528 () Bool)

(assert (=> d!1737923 (=> (not res!2325528) (not e!3381008))))

(assert (=> d!1737923 (= res!2325528 ((_ is Cons!62037) (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(assert (=> d!1737923 (forall!14591 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343))))))) lambda!289323)))

(assert (=> d!1737923 (= (generalisedConcat!956 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))) lt!2230021)))

(declare-fun b!5459881 () Bool)

(assert (=> b!5459881 (= e!3381007 EmptyExpr!15287)))

(declare-fun b!5459882 () Bool)

(declare-fun isConcat!542 (Regex!15287) Bool)

(assert (=> b!5459882 (= e!3381010 (isConcat!542 lt!2230021))))

(declare-fun b!5459883 () Bool)

(assert (=> b!5459883 (= e!3381007 (Concat!24132 (h!68485 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))) (generalisedConcat!956 (t!375390 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))))

(declare-fun b!5459884 () Bool)

(assert (=> b!5459884 (= e!3381011 e!3381006)))

(declare-fun c!953974 () Bool)

(assert (=> b!5459884 (= c!953974 (isEmpty!34024 (ite c!953810 (t!375390 (exprs!5171 (h!68486 zl!343))) (ite c!953819 lt!2229806 (ite c!953812 lt!2229811 (ite c!953814 lt!2229764 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(assert (= (and d!1737923 res!2325528) b!5459880))

(assert (= (and d!1737923 c!953971) b!5459877))

(assert (= (and d!1737923 (not c!953971)) b!5459875))

(assert (= (and b!5459875 c!953973) b!5459883))

(assert (= (and b!5459875 (not c!953973)) b!5459881))

(assert (= (and d!1737923 res!2325527) b!5459884))

(assert (= (and b!5459884 c!953974) b!5459878))

(assert (= (and b!5459884 (not c!953974)) b!5459876))

(assert (= (and b!5459876 c!953972) b!5459879))

(assert (= (and b!5459876 (not c!953972)) b!5459882))

(declare-fun m!6481102 () Bool)

(assert (=> b!5459878 m!6481102))

(declare-fun m!6481104 () Bool)

(assert (=> b!5459879 m!6481104))

(declare-fun m!6481106 () Bool)

(assert (=> b!5459883 m!6481106))

(declare-fun m!6481108 () Bool)

(assert (=> b!5459880 m!6481108))

(declare-fun m!6481110 () Bool)

(assert (=> b!5459882 m!6481110))

(declare-fun m!6481112 () Bool)

(assert (=> b!5459876 m!6481112))

(assert (=> b!5459876 m!6481112))

(declare-fun m!6481114 () Bool)

(assert (=> b!5459876 m!6481114))

(declare-fun m!6481116 () Bool)

(assert (=> d!1737923 m!6481116))

(declare-fun m!6481118 () Bool)

(assert (=> d!1737923 m!6481118))

(declare-fun m!6481120 () Bool)

(assert (=> b!5459884 m!6481120))

(assert (=> bm!400397 d!1737923))

(declare-fun d!1737927 () Bool)

(declare-fun lt!2230028 () Regex!15287)

(assert (=> d!1737927 (validRegex!7023 lt!2230028)))

(assert (=> d!1737927 (= lt!2230028 (generalisedUnion!1216 (unfocusZipperList!729 zl!343)))))

(assert (=> d!1737927 (= (unfocusZipper!1029 zl!343) lt!2230028)))

(declare-fun bs!1263544 () Bool)

(assert (= bs!1263544 d!1737927))

(declare-fun m!6481122 () Bool)

(assert (=> bs!1263544 m!6481122))

(assert (=> bs!1263544 m!6480398))

(assert (=> bs!1263544 m!6480398))

(assert (=> bs!1263544 m!6480400))

(assert (=> b!5459311 d!1737927))

(declare-fun d!1737929 () Bool)

(assert (=> d!1737929 (= (matchR!7472 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 s!2326 Nil!62036)) s!2326))) (matchRSpec!2390 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 s!2326 Nil!62036)) s!2326))))))

(declare-fun lt!2230029 () Unit!154924)

(assert (=> d!1737929 (= lt!2230029 (choose!41495 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 s!2326 Nil!62036)) s!2326))))))

(assert (=> d!1737929 (validRegex!7023 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))))))

(assert (=> d!1737929 (= (mainMatchTheorem!2390 (ite c!953819 lt!2229720 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229781 lt!2229794)) (regTwo!31086 r!7292))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 s!2326 Nil!62036)) s!2326))) lt!2230029)))

(declare-fun bs!1263546 () Bool)

(assert (= bs!1263546 d!1737929))

(declare-fun m!6481124 () Bool)

(assert (=> bs!1263546 m!6481124))

(declare-fun m!6481126 () Bool)

(assert (=> bs!1263546 m!6481126))

(declare-fun m!6481128 () Bool)

(assert (=> bs!1263546 m!6481128))

(declare-fun m!6481130 () Bool)

(assert (=> bs!1263546 m!6481130))

(assert (=> bm!400462 d!1737929))

(declare-fun d!1737931 () Bool)

(declare-fun dynLambda!24414 (Int Context!9342) (InoxSet Context!9342))

(assert (=> d!1737931 (= (flatMap!1014 (ite c!953819 lt!2229716 lt!2229892) (ite c!953819 lambda!289259 lambda!289259)) (dynLambda!24414 (ite c!953819 lambda!289259 lambda!289259) (ite c!953819 lt!2229784 lt!2229837)))))

(declare-fun lt!2230036 () Unit!154924)

(declare-fun choose!41498 ((InoxSet Context!9342) Context!9342 Int) Unit!154924)

(assert (=> d!1737931 (= lt!2230036 (choose!41498 (ite c!953819 lt!2229716 lt!2229892) (ite c!953819 lt!2229784 lt!2229837) (ite c!953819 lambda!289259 lambda!289259)))))

(assert (=> d!1737931 (= (ite c!953819 lt!2229716 lt!2229892) (store ((as const (Array Context!9342 Bool)) false) (ite c!953819 lt!2229784 lt!2229837) true))))

(assert (=> d!1737931 (= (lemmaFlatMapOnSingletonSet!546 (ite c!953819 lt!2229716 lt!2229892) (ite c!953819 lt!2229784 lt!2229837) (ite c!953819 lambda!289259 lambda!289259)) lt!2230036)))

(declare-fun b_lambda!207835 () Bool)

(assert (=> (not b_lambda!207835) (not d!1737931)))

(declare-fun bs!1263552 () Bool)

(assert (= bs!1263552 d!1737931))

(declare-fun m!6481156 () Bool)

(assert (=> bs!1263552 m!6481156))

(declare-fun m!6481158 () Bool)

(assert (=> bs!1263552 m!6481158))

(declare-fun m!6481160 () Bool)

(assert (=> bs!1263552 m!6481160))

(declare-fun m!6481162 () Bool)

(assert (=> bs!1263552 m!6481162))

(assert (=> bm!400430 d!1737931))

(declare-fun bm!400577 () Bool)

(declare-fun c!953999 () Bool)

(declare-fun call!400588 () Int)

(declare-fun c!953998 () Bool)

(assert (=> bm!400577 (= call!400588 (regexDepth!203 (ite c!953999 (regTwo!31087 r!7292) (ite c!953998 (regOne!31086 r!7292) (reg!15616 r!7292)))))))

(declare-fun b!5459937 () Bool)

(declare-fun e!3381049 () Int)

(declare-fun e!3381044 () Int)

(assert (=> b!5459937 (= e!3381049 e!3381044)))

(declare-fun c!954002 () Bool)

(assert (=> b!5459937 (= c!954002 ((_ is Star!15287) r!7292))))

(declare-fun bm!400578 () Bool)

(declare-fun call!400583 () Int)

(assert (=> bm!400578 (= call!400583 (regexDepth!203 (ite c!953999 (regOne!31087 r!7292) (regTwo!31086 r!7292))))))

(declare-fun b!5459938 () Bool)

(declare-fun e!3381046 () Int)

(declare-fun call!400584 () Int)

(assert (=> b!5459938 (= e!3381046 (+ 1 call!400584))))

(declare-fun d!1737937 () Bool)

(declare-fun e!3381051 () Bool)

(assert (=> d!1737937 e!3381051))

(declare-fun res!2325543 () Bool)

(assert (=> d!1737937 (=> (not res!2325543) (not e!3381051))))

(declare-fun lt!2230043 () Int)

(assert (=> d!1737937 (= res!2325543 (> lt!2230043 0))))

(assert (=> d!1737937 (= lt!2230043 e!3381049)))

(declare-fun c!953997 () Bool)

(assert (=> d!1737937 (= c!953997 ((_ is ElementMatch!15287) r!7292))))

(assert (=> d!1737937 (= (regexDepth!203 r!7292) lt!2230043)))

(declare-fun b!5459939 () Bool)

(assert (=> b!5459939 (= e!3381046 1)))

(declare-fun b!5459940 () Bool)

(declare-fun call!400587 () Int)

(assert (=> b!5459940 (= e!3381044 (+ 1 call!400587))))

(declare-fun b!5459941 () Bool)

(declare-fun e!3381052 () Bool)

(assert (=> b!5459941 (= e!3381052 (= lt!2230043 1))))

(declare-fun bm!400579 () Bool)

(declare-fun call!400585 () Int)

(assert (=> bm!400579 (= call!400585 call!400587)))

(declare-fun b!5459942 () Bool)

(declare-fun e!3381047 () Bool)

(assert (=> b!5459942 (= e!3381047 (> lt!2230043 call!400583))))

(declare-fun b!5459943 () Bool)

(declare-fun e!3381050 () Bool)

(declare-fun e!3381048 () Bool)

(assert (=> b!5459943 (= e!3381050 e!3381048)))

(assert (=> b!5459943 (= c!953998 ((_ is Concat!24132) r!7292))))

(declare-fun c!954001 () Bool)

(declare-fun bm!400580 () Bool)

(declare-fun call!400582 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!400580 (= call!400584 (maxBigInt!0 (ite c!954001 call!400585 call!400582) (ite c!954001 call!400582 call!400585)))))

(declare-fun b!5459944 () Bool)

(declare-fun e!3381053 () Int)

(assert (=> b!5459944 (= e!3381053 e!3381046)))

(declare-fun c!954003 () Bool)

(assert (=> b!5459944 (= c!954003 ((_ is Concat!24132) r!7292))))

(declare-fun b!5459945 () Bool)

(assert (=> b!5459945 (= e!3381051 e!3381050)))

(assert (=> b!5459945 (= c!953999 ((_ is Union!15287) r!7292))))

(declare-fun b!5459946 () Bool)

(assert (=> b!5459946 (= e!3381049 1)))

(declare-fun b!5459947 () Bool)

(declare-fun call!400586 () Int)

(assert (=> b!5459947 (= e!3381052 (> lt!2230043 call!400586))))

(declare-fun b!5459948 () Bool)

(declare-fun c!954000 () Bool)

(assert (=> b!5459948 (= c!954000 ((_ is Star!15287) r!7292))))

(assert (=> b!5459948 (= e!3381048 e!3381052)))

(declare-fun bm!400581 () Bool)

(assert (=> bm!400581 (= call!400586 call!400588)))

(declare-fun b!5459949 () Bool)

(assert (=> b!5459949 (= e!3381053 (+ 1 call!400584))))

(declare-fun b!5459950 () Bool)

(declare-fun e!3381045 () Bool)

(assert (=> b!5459950 (= e!3381050 e!3381045)))

(declare-fun res!2325544 () Bool)

(assert (=> b!5459950 (= res!2325544 (> lt!2230043 call!400583))))

(assert (=> b!5459950 (=> (not res!2325544) (not e!3381045))))

(declare-fun bm!400582 () Bool)

(assert (=> bm!400582 (= call!400582 (regexDepth!203 (ite c!954001 (regTwo!31087 r!7292) (regOne!31086 r!7292))))))

(declare-fun b!5459951 () Bool)

(assert (=> b!5459951 (= c!954001 ((_ is Union!15287) r!7292))))

(assert (=> b!5459951 (= e!3381044 e!3381053)))

(declare-fun b!5459952 () Bool)

(declare-fun res!2325545 () Bool)

(assert (=> b!5459952 (=> (not res!2325545) (not e!3381047))))

(assert (=> b!5459952 (= res!2325545 (> lt!2230043 call!400586))))

(assert (=> b!5459952 (= e!3381048 e!3381047)))

(declare-fun b!5459953 () Bool)

(assert (=> b!5459953 (= e!3381045 (> lt!2230043 call!400588))))

(declare-fun bm!400583 () Bool)

(assert (=> bm!400583 (= call!400587 (regexDepth!203 (ite c!954002 (reg!15616 r!7292) (ite c!954001 (regOne!31087 r!7292) (regTwo!31086 r!7292)))))))

(assert (= (and d!1737937 c!953997) b!5459946))

(assert (= (and d!1737937 (not c!953997)) b!5459937))

(assert (= (and b!5459937 c!954002) b!5459940))

(assert (= (and b!5459937 (not c!954002)) b!5459951))

(assert (= (and b!5459951 c!954001) b!5459949))

(assert (= (and b!5459951 (not c!954001)) b!5459944))

(assert (= (and b!5459944 c!954003) b!5459938))

(assert (= (and b!5459944 (not c!954003)) b!5459939))

(assert (= (or b!5459949 b!5459938) bm!400582))

(assert (= (or b!5459949 b!5459938) bm!400579))

(assert (= (or b!5459949 b!5459938) bm!400580))

(assert (= (or b!5459940 bm!400579) bm!400583))

(assert (= (and d!1737937 res!2325543) b!5459945))

(assert (= (and b!5459945 c!953999) b!5459950))

(assert (= (and b!5459945 (not c!953999)) b!5459943))

(assert (= (and b!5459950 res!2325544) b!5459953))

(assert (= (and b!5459943 c!953998) b!5459952))

(assert (= (and b!5459943 (not c!953998)) b!5459948))

(assert (= (and b!5459952 res!2325545) b!5459942))

(assert (= (and b!5459948 c!954000) b!5459947))

(assert (= (and b!5459948 (not c!954000)) b!5459941))

(assert (= (or b!5459952 b!5459947) bm!400581))

(assert (= (or b!5459953 bm!400581) bm!400577))

(assert (= (or b!5459950 b!5459942) bm!400578))

(declare-fun m!6481186 () Bool)

(assert (=> bm!400578 m!6481186))

(declare-fun m!6481188 () Bool)

(assert (=> bm!400580 m!6481188))

(declare-fun m!6481190 () Bool)

(assert (=> bm!400583 m!6481190))

(declare-fun m!6481192 () Bool)

(assert (=> bm!400582 m!6481192))

(declare-fun m!6481194 () Bool)

(assert (=> bm!400577 m!6481194))

(assert (=> b!5459331 d!1737937))

(declare-fun bm!400584 () Bool)

(declare-fun c!954006 () Bool)

(declare-fun call!400595 () Int)

(declare-fun c!954005 () Bool)

(assert (=> bm!400584 (= call!400595 (regexDepth!203 (ite c!954006 (regTwo!31087 lt!2229859) (ite c!954005 (regOne!31086 lt!2229859) (reg!15616 lt!2229859)))))))

(declare-fun b!5459954 () Bool)

(declare-fun e!3381059 () Int)

(declare-fun e!3381054 () Int)

(assert (=> b!5459954 (= e!3381059 e!3381054)))

(declare-fun c!954009 () Bool)

(assert (=> b!5459954 (= c!954009 ((_ is Star!15287) lt!2229859))))

(declare-fun bm!400585 () Bool)

(declare-fun call!400590 () Int)

(assert (=> bm!400585 (= call!400590 (regexDepth!203 (ite c!954006 (regOne!31087 lt!2229859) (regTwo!31086 lt!2229859))))))

(declare-fun b!5459955 () Bool)

(declare-fun e!3381056 () Int)

(declare-fun call!400591 () Int)

(assert (=> b!5459955 (= e!3381056 (+ 1 call!400591))))

(declare-fun d!1737947 () Bool)

(declare-fun e!3381061 () Bool)

(assert (=> d!1737947 e!3381061))

(declare-fun res!2325546 () Bool)

(assert (=> d!1737947 (=> (not res!2325546) (not e!3381061))))

(declare-fun lt!2230044 () Int)

(assert (=> d!1737947 (= res!2325546 (> lt!2230044 0))))

(assert (=> d!1737947 (= lt!2230044 e!3381059)))

(declare-fun c!954004 () Bool)

(assert (=> d!1737947 (= c!954004 ((_ is ElementMatch!15287) lt!2229859))))

(assert (=> d!1737947 (= (regexDepth!203 lt!2229859) lt!2230044)))

(declare-fun b!5459956 () Bool)

(assert (=> b!5459956 (= e!3381056 1)))

(declare-fun b!5459957 () Bool)

(declare-fun call!400594 () Int)

(assert (=> b!5459957 (= e!3381054 (+ 1 call!400594))))

(declare-fun b!5459958 () Bool)

(declare-fun e!3381062 () Bool)

(assert (=> b!5459958 (= e!3381062 (= lt!2230044 1))))

(declare-fun bm!400586 () Bool)

(declare-fun call!400592 () Int)

(assert (=> bm!400586 (= call!400592 call!400594)))

(declare-fun b!5459959 () Bool)

(declare-fun e!3381057 () Bool)

(assert (=> b!5459959 (= e!3381057 (> lt!2230044 call!400590))))

(declare-fun b!5459960 () Bool)

(declare-fun e!3381060 () Bool)

(declare-fun e!3381058 () Bool)

(assert (=> b!5459960 (= e!3381060 e!3381058)))

(assert (=> b!5459960 (= c!954005 ((_ is Concat!24132) lt!2229859))))

(declare-fun call!400589 () Int)

(declare-fun c!954008 () Bool)

(declare-fun bm!400587 () Bool)

(assert (=> bm!400587 (= call!400591 (maxBigInt!0 (ite c!954008 call!400592 call!400589) (ite c!954008 call!400589 call!400592)))))

(declare-fun b!5459961 () Bool)

(declare-fun e!3381063 () Int)

(assert (=> b!5459961 (= e!3381063 e!3381056)))

(declare-fun c!954010 () Bool)

(assert (=> b!5459961 (= c!954010 ((_ is Concat!24132) lt!2229859))))

(declare-fun b!5459962 () Bool)

(assert (=> b!5459962 (= e!3381061 e!3381060)))

(assert (=> b!5459962 (= c!954006 ((_ is Union!15287) lt!2229859))))

(declare-fun b!5459963 () Bool)

(assert (=> b!5459963 (= e!3381059 1)))

(declare-fun b!5459964 () Bool)

(declare-fun call!400593 () Int)

(assert (=> b!5459964 (= e!3381062 (> lt!2230044 call!400593))))

(declare-fun b!5459965 () Bool)

(declare-fun c!954007 () Bool)

(assert (=> b!5459965 (= c!954007 ((_ is Star!15287) lt!2229859))))

(assert (=> b!5459965 (= e!3381058 e!3381062)))

(declare-fun bm!400588 () Bool)

(assert (=> bm!400588 (= call!400593 call!400595)))

(declare-fun b!5459966 () Bool)

(assert (=> b!5459966 (= e!3381063 (+ 1 call!400591))))

(declare-fun b!5459967 () Bool)

(declare-fun e!3381055 () Bool)

(assert (=> b!5459967 (= e!3381060 e!3381055)))

(declare-fun res!2325547 () Bool)

(assert (=> b!5459967 (= res!2325547 (> lt!2230044 call!400590))))

(assert (=> b!5459967 (=> (not res!2325547) (not e!3381055))))

(declare-fun bm!400589 () Bool)

(assert (=> bm!400589 (= call!400589 (regexDepth!203 (ite c!954008 (regTwo!31087 lt!2229859) (regOne!31086 lt!2229859))))))

(declare-fun b!5459968 () Bool)

(assert (=> b!5459968 (= c!954008 ((_ is Union!15287) lt!2229859))))

(assert (=> b!5459968 (= e!3381054 e!3381063)))

(declare-fun b!5459969 () Bool)

(declare-fun res!2325548 () Bool)

(assert (=> b!5459969 (=> (not res!2325548) (not e!3381057))))

(assert (=> b!5459969 (= res!2325548 (> lt!2230044 call!400593))))

(assert (=> b!5459969 (= e!3381058 e!3381057)))

(declare-fun b!5459970 () Bool)

(assert (=> b!5459970 (= e!3381055 (> lt!2230044 call!400595))))

(declare-fun bm!400590 () Bool)

(assert (=> bm!400590 (= call!400594 (regexDepth!203 (ite c!954009 (reg!15616 lt!2229859) (ite c!954008 (regOne!31087 lt!2229859) (regTwo!31086 lt!2229859)))))))

(assert (= (and d!1737947 c!954004) b!5459963))

(assert (= (and d!1737947 (not c!954004)) b!5459954))

(assert (= (and b!5459954 c!954009) b!5459957))

(assert (= (and b!5459954 (not c!954009)) b!5459968))

(assert (= (and b!5459968 c!954008) b!5459966))

(assert (= (and b!5459968 (not c!954008)) b!5459961))

(assert (= (and b!5459961 c!954010) b!5459955))

(assert (= (and b!5459961 (not c!954010)) b!5459956))

(assert (= (or b!5459966 b!5459955) bm!400589))

(assert (= (or b!5459966 b!5459955) bm!400586))

(assert (= (or b!5459966 b!5459955) bm!400587))

(assert (= (or b!5459957 bm!400586) bm!400590))

(assert (= (and d!1737947 res!2325546) b!5459962))

(assert (= (and b!5459962 c!954006) b!5459967))

(assert (= (and b!5459962 (not c!954006)) b!5459960))

(assert (= (and b!5459967 res!2325547) b!5459970))

(assert (= (and b!5459960 c!954005) b!5459969))

(assert (= (and b!5459960 (not c!954005)) b!5459965))

(assert (= (and b!5459969 res!2325548) b!5459959))

(assert (= (and b!5459965 c!954007) b!5459964))

(assert (= (and b!5459965 (not c!954007)) b!5459958))

(assert (= (or b!5459969 b!5459964) bm!400588))

(assert (= (or b!5459970 bm!400588) bm!400584))

(assert (= (or b!5459967 b!5459959) bm!400585))

(declare-fun m!6481196 () Bool)

(assert (=> bm!400585 m!6481196))

(declare-fun m!6481198 () Bool)

(assert (=> bm!400587 m!6481198))

(declare-fun m!6481200 () Bool)

(assert (=> bm!400590 m!6481200))

(declare-fun m!6481202 () Bool)

(assert (=> bm!400589 m!6481202))

(declare-fun m!6481204 () Bool)

(assert (=> bm!400584 m!6481204))

(assert (=> b!5459331 d!1737947))

(declare-fun bs!1263564 () Bool)

(declare-fun d!1737949 () Bool)

(assert (= bs!1263564 (and d!1737949 d!1737787)))

(declare-fun lambda!289336 () Int)

(assert (=> bs!1263564 (= lambda!289336 lambda!289286)))

(declare-fun bs!1263565 () Bool)

(assert (= bs!1263565 (and d!1737949 d!1737923)))

(assert (=> bs!1263565 (= lambda!289336 lambda!289323)))

(declare-fun bs!1263566 () Bool)

(assert (= bs!1263566 (and d!1737949 b!5459307)))

(assert (=> bs!1263566 (= lambda!289336 lambda!289275)))

(declare-fun bs!1263567 () Bool)

(assert (= bs!1263567 (and d!1737949 b!5459299)))

(assert (=> bs!1263567 (= lambda!289336 lambda!289273)))

(declare-fun bs!1263568 () Bool)

(assert (= bs!1263568 (and d!1737949 d!1737869)))

(assert (=> bs!1263568 (= lambda!289336 lambda!289308)))

(declare-fun b!5459971 () Bool)

(declare-fun e!3381067 () Regex!15287)

(declare-fun e!3381065 () Regex!15287)

(assert (=> b!5459971 (= e!3381067 e!3381065)))

(declare-fun c!954013 () Bool)

(assert (=> b!5459971 (= c!954013 ((_ is Cons!62037) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5459972 () Bool)

(declare-fun e!3381064 () Bool)

(declare-fun e!3381068 () Bool)

(assert (=> b!5459972 (= e!3381064 e!3381068)))

(declare-fun c!954012 () Bool)

(assert (=> b!5459972 (= c!954012 (isEmpty!34024 (tail!10790 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5459973 () Bool)

(assert (=> b!5459973 (= e!3381067 (h!68485 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5459974 () Bool)

(declare-fun lt!2230045 () Regex!15287)

(assert (=> b!5459974 (= e!3381064 (isEmptyExpr!1019 lt!2230045))))

(declare-fun b!5459975 () Bool)

(assert (=> b!5459975 (= e!3381068 (= lt!2230045 (head!11693 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5459976 () Bool)

(declare-fun e!3381066 () Bool)

(assert (=> b!5459976 (= e!3381066 (isEmpty!34024 (t!375390 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun e!3381069 () Bool)

(assert (=> d!1737949 e!3381069))

(declare-fun res!2325549 () Bool)

(assert (=> d!1737949 (=> (not res!2325549) (not e!3381069))))

(assert (=> d!1737949 (= res!2325549 (validRegex!7023 lt!2230045))))

(assert (=> d!1737949 (= lt!2230045 e!3381067)))

(declare-fun c!954011 () Bool)

(assert (=> d!1737949 (= c!954011 e!3381066)))

(declare-fun res!2325550 () Bool)

(assert (=> d!1737949 (=> (not res!2325550) (not e!3381066))))

(assert (=> d!1737949 (= res!2325550 ((_ is Cons!62037) (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> d!1737949 (forall!14591 (t!375390 (exprs!5171 (h!68486 zl!343))) lambda!289336)))

(assert (=> d!1737949 (= (generalisedConcat!956 (t!375390 (exprs!5171 (h!68486 zl!343)))) lt!2230045)))

(declare-fun b!5459977 () Bool)

(assert (=> b!5459977 (= e!3381065 EmptyExpr!15287)))

(declare-fun b!5459978 () Bool)

(assert (=> b!5459978 (= e!3381068 (isConcat!542 lt!2230045))))

(declare-fun b!5459979 () Bool)

(assert (=> b!5459979 (= e!3381065 (Concat!24132 (h!68485 (t!375390 (exprs!5171 (h!68486 zl!343)))) (generalisedConcat!956 (t!375390 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))

(declare-fun b!5459980 () Bool)

(assert (=> b!5459980 (= e!3381069 e!3381064)))

(declare-fun c!954014 () Bool)

(assert (=> b!5459980 (= c!954014 (isEmpty!34024 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(assert (= (and d!1737949 res!2325550) b!5459976))

(assert (= (and d!1737949 c!954011) b!5459973))

(assert (= (and d!1737949 (not c!954011)) b!5459971))

(assert (= (and b!5459971 c!954013) b!5459979))

(assert (= (and b!5459971 (not c!954013)) b!5459977))

(assert (= (and d!1737949 res!2325549) b!5459980))

(assert (= (and b!5459980 c!954014) b!5459974))

(assert (= (and b!5459980 (not c!954014)) b!5459972))

(assert (= (and b!5459972 c!954012) b!5459975))

(assert (= (and b!5459972 (not c!954012)) b!5459978))

(declare-fun m!6481206 () Bool)

(assert (=> b!5459974 m!6481206))

(declare-fun m!6481208 () Bool)

(assert (=> b!5459975 m!6481208))

(declare-fun m!6481210 () Bool)

(assert (=> b!5459979 m!6481210))

(declare-fun m!6481212 () Bool)

(assert (=> b!5459976 m!6481212))

(declare-fun m!6481214 () Bool)

(assert (=> b!5459978 m!6481214))

(declare-fun m!6481216 () Bool)

(assert (=> b!5459972 m!6481216))

(assert (=> b!5459972 m!6481216))

(declare-fun m!6481218 () Bool)

(assert (=> b!5459972 m!6481218))

(declare-fun m!6481220 () Bool)

(assert (=> d!1737949 m!6481220))

(declare-fun m!6481222 () Bool)

(assert (=> d!1737949 m!6481222))

(assert (=> b!5459980 m!6480554))

(assert (=> b!5459331 d!1737949))

(declare-fun d!1737951 () Bool)

(assert (=> d!1737951 (= (Exists!2468 (ite c!953812 lambda!289262 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289280)))) (choose!41483 (ite c!953812 lambda!289262 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289280)))))))

(declare-fun bs!1263569 () Bool)

(assert (= bs!1263569 d!1737951))

(declare-fun m!6481224 () Bool)

(assert (=> bs!1263569 m!6481224))

(assert (=> bm!400429 d!1737951))

(declare-fun d!1737953 () Bool)

(assert (=> d!1737953 (= (matchR!7472 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))) s!2326) (matchRSpec!2390 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))) s!2326))))

(declare-fun lt!2230050 () Unit!154924)

(assert (=> d!1737953 (= lt!2230050 (choose!41495 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))) s!2326))))

(assert (=> d!1737953 (validRegex!7023 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))))))

(assert (=> d!1737953 (= (mainMatchTheorem!2390 (ite c!953819 lt!2229719 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 (ite c!953816 lt!2229792 (regOne!31086 r!7292))))) s!2326) lt!2230050)))

(declare-fun bs!1263570 () Bool)

(assert (= bs!1263570 d!1737953))

(declare-fun m!6481226 () Bool)

(assert (=> bs!1263570 m!6481226))

(declare-fun m!6481228 () Bool)

(assert (=> bs!1263570 m!6481228))

(declare-fun m!6481230 () Bool)

(assert (=> bs!1263570 m!6481230))

(declare-fun m!6481232 () Bool)

(assert (=> bs!1263570 m!6481232))

(assert (=> bm!400332 d!1737953))

(declare-fun d!1737955 () Bool)

(assert (=> d!1737955 (= (flatMap!1014 (ite c!953816 lt!2229886 lt!2229839) (ite c!953816 lambda!289259 lambda!289259)) (dynLambda!24414 (ite c!953816 lambda!289259 lambda!289259) (ite c!953816 lt!2229848 lt!2229804)))))

(declare-fun lt!2230051 () Unit!154924)

(assert (=> d!1737955 (= lt!2230051 (choose!41498 (ite c!953816 lt!2229886 lt!2229839) (ite c!953816 lt!2229848 lt!2229804) (ite c!953816 lambda!289259 lambda!289259)))))

(assert (=> d!1737955 (= (ite c!953816 lt!2229886 lt!2229839) (store ((as const (Array Context!9342 Bool)) false) (ite c!953816 lt!2229848 lt!2229804) true))))

(assert (=> d!1737955 (= (lemmaFlatMapOnSingletonSet!546 (ite c!953816 lt!2229886 lt!2229839) (ite c!953816 lt!2229848 lt!2229804) (ite c!953816 lambda!289259 lambda!289259)) lt!2230051)))

(declare-fun b_lambda!207837 () Bool)

(assert (=> (not b_lambda!207837) (not d!1737955)))

(declare-fun bs!1263571 () Bool)

(assert (= bs!1263571 d!1737955))

(declare-fun m!6481234 () Bool)

(assert (=> bs!1263571 m!6481234))

(declare-fun m!6481236 () Bool)

(assert (=> bs!1263571 m!6481236))

(declare-fun m!6481238 () Bool)

(assert (=> bs!1263571 m!6481238))

(declare-fun m!6481240 () Bool)

(assert (=> bs!1263571 m!6481240))

(assert (=> bm!400314 d!1737955))

(declare-fun d!1737957 () Bool)

(declare-fun e!3381072 () Bool)

(assert (=> d!1737957 e!3381072))

(declare-fun res!2325553 () Bool)

(assert (=> d!1737957 (=> (not res!2325553) (not e!3381072))))

(declare-fun lt!2230056 () List!62162)

(declare-fun noDuplicate!1437 (List!62162) Bool)

(assert (=> d!1737957 (= res!2325553 (noDuplicate!1437 lt!2230056))))

(declare-fun choose!41500 ((InoxSet Context!9342)) List!62162)

(assert (=> d!1737957 (= lt!2230056 (choose!41500 z!1189))))

(assert (=> d!1737957 (= (toList!9071 z!1189) lt!2230056)))

(declare-fun b!5459983 () Bool)

(declare-fun content!11173 (List!62162) (InoxSet Context!9342))

(assert (=> b!5459983 (= e!3381072 (= (content!11173 lt!2230056) z!1189))))

(assert (= (and d!1737957 res!2325553) b!5459983))

(declare-fun m!6481248 () Bool)

(assert (=> d!1737957 m!6481248))

(declare-fun m!6481250 () Bool)

(assert (=> d!1737957 m!6481250))

(declare-fun m!6481254 () Bool)

(assert (=> b!5459983 m!6481254))

(assert (=> b!5459290 d!1737957))

(declare-fun d!1737959 () Bool)

(declare-fun choose!41501 ((InoxSet Context!9342) Int) (InoxSet Context!9342))

(assert (=> d!1737959 (= (flatMap!1014 (ite c!953812 lt!2229852 lt!2229883) (ite c!953812 lambda!289259 lambda!289259)) (choose!41501 (ite c!953812 lt!2229852 lt!2229883) (ite c!953812 lambda!289259 lambda!289259)))))

(declare-fun bs!1263577 () Bool)

(assert (= bs!1263577 d!1737959))

(declare-fun m!6481272 () Bool)

(assert (=> bs!1263577 m!6481272))

(assert (=> bm!400489 d!1737959))

(declare-fun bs!1263578 () Bool)

(declare-fun d!1737965 () Bool)

(assert (= bs!1263578 (and d!1737965 d!1737787)))

(declare-fun lambda!289344 () Int)

(assert (=> bs!1263578 (= lambda!289344 lambda!289286)))

(declare-fun bs!1263579 () Bool)

(assert (= bs!1263579 (and d!1737965 d!1737923)))

(assert (=> bs!1263579 (= lambda!289344 lambda!289323)))

(declare-fun bs!1263580 () Bool)

(assert (= bs!1263580 (and d!1737965 b!5459307)))

(assert (=> bs!1263580 (= lambda!289344 lambda!289275)))

(declare-fun bs!1263581 () Bool)

(assert (= bs!1263581 (and d!1737965 b!5459299)))

(assert (=> bs!1263581 (= lambda!289344 lambda!289273)))

(declare-fun bs!1263582 () Bool)

(assert (= bs!1263582 (and d!1737965 d!1737949)))

(assert (=> bs!1263582 (= lambda!289344 lambda!289336)))

(declare-fun bs!1263583 () Bool)

(assert (= bs!1263583 (and d!1737965 d!1737869)))

(assert (=> bs!1263583 (= lambda!289344 lambda!289308)))

(assert (=> d!1737965 (matchZipper!1531 (store ((as const (Array Context!9342 Bool)) false) (Context!9343 (++!13654 (exprs!5171 lt!2229837) (exprs!5171 lt!2229848))) true) (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)) (ite c!953817 lt!2229897 (_2!35789 lt!2229738))))))

(declare-fun lt!2230064 () Unit!154924)

(assert (=> d!1737965 (= lt!2230064 (lemmaConcatPreservesForall!254 (exprs!5171 lt!2229837) (exprs!5171 lt!2229848) lambda!289344))))

(declare-fun lt!2230063 () Unit!154924)

(declare-fun choose!41503 (Context!9342 Context!9342 List!62160 List!62160) Unit!154924)

(assert (=> d!1737965 (= lt!2230063 (choose!41503 lt!2229837 lt!2229848 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)) (ite c!953817 lt!2229897 (_2!35789 lt!2229738))))))

(assert (=> d!1737965 (matchZipper!1531 (store ((as const (Array Context!9342 Bool)) false) lt!2229837 true) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)))))

(assert (=> d!1737965 (= (lemmaConcatenateContextMatchesConcatOfStrings!102 lt!2229837 lt!2229848 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)) (ite c!953817 lt!2229897 (_2!35789 lt!2229738))) lt!2230063)))

(declare-fun bs!1263584 () Bool)

(assert (= bs!1263584 d!1737965))

(declare-fun m!6481284 () Bool)

(assert (=> bs!1263584 m!6481284))

(declare-fun m!6481286 () Bool)

(assert (=> bs!1263584 m!6481286))

(declare-fun m!6481288 () Bool)

(assert (=> bs!1263584 m!6481288))

(assert (=> bs!1263584 m!6481284))

(assert (=> bs!1263584 m!6481288))

(declare-fun m!6481290 () Bool)

(assert (=> bs!1263584 m!6481290))

(declare-fun m!6481292 () Bool)

(assert (=> bs!1263584 m!6481292))

(declare-fun m!6481294 () Bool)

(assert (=> bs!1263584 m!6481294))

(assert (=> bs!1263584 m!6480326))

(assert (=> bs!1263584 m!6480326))

(declare-fun m!6481296 () Bool)

(assert (=> bs!1263584 m!6481296))

(assert (=> bm!400376 d!1737965))

(declare-fun d!1737969 () Bool)

(assert (=> d!1737969 (= (isEmpty!34025 (_1!35789 lt!2229844)) ((_ is Nil!62036) (_1!35789 lt!2229844)))))

(assert (=> b!5459333 d!1737969))

(declare-fun d!1737971 () Bool)

(assert (=> d!1737971 (= (Exists!2468 (ite c!953812 lambda!289262 (ite c!953814 lambda!289265 (ite c!953817 lambda!289268 (ite c!953822 lambda!289277 lambda!289281))))) (choose!41483 (ite c!953812 lambda!289262 (ite c!953814 lambda!289265 (ite c!953817 lambda!289268 (ite c!953822 lambda!289277 lambda!289281))))))))

(declare-fun bs!1263585 () Bool)

(assert (= bs!1263585 d!1737971))

(declare-fun m!6481298 () Bool)

(assert (=> bs!1263585 m!6481298))

(assert (=> bm!400342 d!1737971))

(declare-fun d!1737973 () Bool)

(assert (=> d!1737973 (= (isDefined!12101 (ite c!953812 call!400361 (ite c!953814 call!400493 (ite c!953817 lt!2229822 (ite c!953822 lt!2229808 call!400426))))) (not (isEmpty!34026 (ite c!953812 call!400361 (ite c!953814 call!400493 (ite c!953817 lt!2229822 (ite c!953822 lt!2229808 call!400426)))))))))

(declare-fun bs!1263586 () Bool)

(assert (= bs!1263586 d!1737973))

(declare-fun m!6481300 () Bool)

(assert (=> bs!1263586 m!6481300))

(assert (=> bm!400326 d!1737973))

(declare-fun d!1737975 () Bool)

(declare-fun c!954034 () Bool)

(declare-fun e!3381100 () Bool)

(assert (=> d!1737975 (= c!954034 e!3381100)))

(declare-fun res!2325561 () Bool)

(assert (=> d!1737975 (=> (not res!2325561) (not e!3381100))))

(assert (=> d!1737975 (= res!2325561 ((_ is Cons!62037) (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804))))))))

(declare-fun e!3381099 () (InoxSet Context!9342))

(assert (=> d!1737975 (= (derivationStepZipperUp!659 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804))) (h!68484 s!2326)) e!3381099)))

(declare-fun b!5460027 () Bool)

(declare-fun e!3381098 () (InoxSet Context!9342))

(declare-fun call!400602 () (InoxSet Context!9342))

(assert (=> b!5460027 (= e!3381098 call!400602)))

(declare-fun b!5460028 () Bool)

(assert (=> b!5460028 (= e!3381099 ((_ map or) call!400602 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804)))))) (h!68484 s!2326))))))

(declare-fun b!5460029 () Bool)

(assert (=> b!5460029 (= e!3381098 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460030 () Bool)

(assert (=> b!5460030 (= e!3381099 e!3381098)))

(declare-fun c!954033 () Bool)

(assert (=> b!5460030 (= c!954033 ((_ is Cons!62037) (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804))))))))

(declare-fun b!5460031 () Bool)

(assert (=> b!5460031 (= e!3381100 (nullable!5456 (h!68485 (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804)))))))))

(declare-fun bm!400597 () Bool)

(assert (=> bm!400597 (= call!400602 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804))))) (Context!9343 (t!375390 (exprs!5171 (ite c!953819 lt!2229784 (ite c!953812 lt!2229850 (ite c!953816 lt!2229817 lt!2229804)))))) (h!68484 s!2326)))))

(assert (= (and d!1737975 res!2325561) b!5460031))

(assert (= (and d!1737975 c!954034) b!5460028))

(assert (= (and d!1737975 (not c!954034)) b!5460030))

(assert (= (and b!5460030 c!954033) b!5460027))

(assert (= (and b!5460030 (not c!954033)) b!5460029))

(assert (= (or b!5460028 b!5460027) bm!400597))

(declare-fun m!6481302 () Bool)

(assert (=> b!5460028 m!6481302))

(declare-fun m!6481304 () Bool)

(assert (=> b!5460031 m!6481304))

(declare-fun m!6481306 () Bool)

(assert (=> bm!400597 m!6481306))

(assert (=> bm!400486 d!1737975))

(declare-fun d!1737977 () Bool)

(declare-fun c!954036 () Bool)

(declare-fun e!3381103 () Bool)

(assert (=> d!1737977 (= c!954036 e!3381103)))

(declare-fun res!2325562 () Bool)

(assert (=> d!1737977 (=> (not res!2325562) (not e!3381103))))

(assert (=> d!1737977 (= res!2325562 ((_ is Cons!62037) (exprs!5171 lt!2229837)))))

(declare-fun e!3381102 () (InoxSet Context!9342))

(assert (=> d!1737977 (= (derivationStepZipperUp!659 lt!2229837 (h!68484 s!2326)) e!3381102)))

(declare-fun b!5460032 () Bool)

(declare-fun e!3381101 () (InoxSet Context!9342))

(declare-fun call!400603 () (InoxSet Context!9342))

(assert (=> b!5460032 (= e!3381101 call!400603)))

(declare-fun b!5460033 () Bool)

(assert (=> b!5460033 (= e!3381102 ((_ map or) call!400603 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 lt!2229837))) (h!68484 s!2326))))))

(declare-fun b!5460034 () Bool)

(assert (=> b!5460034 (= e!3381101 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460035 () Bool)

(assert (=> b!5460035 (= e!3381102 e!3381101)))

(declare-fun c!954035 () Bool)

(assert (=> b!5460035 (= c!954035 ((_ is Cons!62037) (exprs!5171 lt!2229837)))))

(declare-fun b!5460036 () Bool)

(assert (=> b!5460036 (= e!3381103 (nullable!5456 (h!68485 (exprs!5171 lt!2229837))))))

(declare-fun bm!400598 () Bool)

(assert (=> bm!400598 (= call!400603 (derivationStepZipperDown!735 (h!68485 (exprs!5171 lt!2229837)) (Context!9343 (t!375390 (exprs!5171 lt!2229837))) (h!68484 s!2326)))))

(assert (= (and d!1737977 res!2325562) b!5460036))

(assert (= (and d!1737977 c!954036) b!5460033))

(assert (= (and d!1737977 (not c!954036)) b!5460035))

(assert (= (and b!5460035 c!954035) b!5460032))

(assert (= (and b!5460035 (not c!954035)) b!5460034))

(assert (= (or b!5460033 b!5460032) bm!400598))

(declare-fun m!6481308 () Bool)

(assert (=> b!5460033 m!6481308))

(declare-fun m!6481314 () Bool)

(assert (=> b!5460036 m!6481314))

(declare-fun m!6481320 () Bool)

(assert (=> bm!400598 m!6481320))

(assert (=> b!5459282 d!1737977))

(declare-fun d!1737979 () Bool)

(assert (=> d!1737979 (= (flatMap!1014 lt!2229892 lambda!289259) (choose!41501 lt!2229892 lambda!289259))))

(declare-fun bs!1263592 () Bool)

(assert (= bs!1263592 d!1737979))

(declare-fun m!6481332 () Bool)

(assert (=> bs!1263592 m!6481332))

(assert (=> b!5459282 d!1737979))

(declare-fun bs!1263593 () Bool)

(declare-fun d!1737983 () Bool)

(assert (= bs!1263593 (and d!1737983 b!5459302)))

(declare-fun lambda!289346 () Int)

(assert (=> bs!1263593 (not (= lambda!289346 lambda!289282))))

(declare-fun bs!1263594 () Bool)

(assert (= bs!1263594 (and d!1737983 d!1737855)))

(assert (=> bs!1263594 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289346 lambda!289293))))

(declare-fun bs!1263595 () Bool)

(assert (= bs!1263595 (and d!1737983 b!5459299)))

(assert (=> bs!1263595 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229844)) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229794)) (= lambda!289346 lambda!289270))))

(declare-fun bs!1263596 () Bool)

(assert (= bs!1263596 (and d!1737983 b!5459286)))

(assert (=> bs!1263596 (not (= lambda!289346 lambda!289261))))

(assert (=> bs!1263595 (not (= lambda!289346 lambda!289271))))

(declare-fun bs!1263597 () Bool)

(assert (= bs!1263597 (and d!1737983 b!5459307)))

(assert (=> bs!1263597 (not (= lambda!289346 lambda!289279))))

(declare-fun bs!1263598 () Bool)

(assert (= bs!1263598 (and d!1737983 b!5459320)))

(assert (=> bs!1263598 (not (= lambda!289346 lambda!289265))))

(assert (=> bs!1263593 (not (= lambda!289346 lambda!289283))))

(assert (=> bs!1263596 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229912)) (= lambda!289346 lambda!289262))))

(assert (=> bs!1263595 (not (= lambda!289346 lambda!289272))))

(assert (=> bs!1263597 (not (= lambda!289346 lambda!289280))))

(assert (=> bs!1263597 (not (= lambda!289346 lambda!289277))))

(assert (=> bs!1263598 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229767)) (= lambda!289346 lambda!289264))))

(assert (=> bs!1263596 (not (= lambda!289346 lambda!289263))))

(declare-fun bs!1263599 () Bool)

(assert (= bs!1263599 (and d!1737983 b!5459662)))

(assert (=> bs!1263599 (not (= lambda!289346 lambda!289301))))

(declare-fun bs!1263600 () Bool)

(assert (= bs!1263600 (and d!1737983 b!5459333)))

(assert (=> bs!1263600 (not (= lambda!289346 lambda!289269))))

(assert (=> bs!1263596 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229727)) (= lambda!289346 lambda!289260))))

(assert (=> bs!1263593 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) Nil!62036) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229794)) (= lambda!289346 lambda!289281))))

(assert (=> bs!1263597 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) lt!2229788) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289346 lambda!289276))))

(declare-fun bs!1263601 () Bool)

(assert (= bs!1263601 (and d!1737983 b!5459661)))

(assert (=> bs!1263601 (not (= lambda!289346 lambda!289298))))

(declare-fun bs!1263602 () Bool)

(assert (= bs!1263602 (and d!1737983 b!5459292)))

(assert (=> bs!1263602 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289346 lambda!289257))))

(assert (=> bs!1263597 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (_1!35789 lt!2229728)) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229794)) (= lambda!289346 lambda!289278))))

(assert (=> bs!1263598 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) lt!2229863)) (= lambda!289346 lambda!289266))))

(declare-fun bs!1263604 () Bool)

(assert (= bs!1263604 (and d!1737983 d!1737877)))

(assert (=> bs!1263604 (not (= lambda!289346 lambda!289315))))

(assert (=> bs!1263598 (not (= lambda!289346 lambda!289267))))

(assert (=> bs!1263602 (not (= lambda!289346 lambda!289258))))

(assert (=> bs!1263600 (= (and (= (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) s!2326) (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) lt!2229794) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (regTwo!31086 r!7292))) (= lambda!289346 lambda!289268))))

(assert (=> bs!1263604 (= (and (= (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289346 lambda!289314))))

(assert (=> d!1737983 true))

(assert (=> d!1737983 true))

(assert (=> d!1737983 true))

(assert (=> d!1737983 (= (isDefined!12101 (findConcatSeparation!1812 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) Nil!62036 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))))) (Exists!2468 lambda!289346))))

(declare-fun lt!2230066 () Unit!154924)

(assert (=> d!1737983 (= lt!2230066 (choose!41489 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))))))

(assert (=> d!1737983 (validRegex!7023 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))))

(assert (=> d!1737983 (= (lemmaFindConcatSeparationEquivalentToExists!1576 (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) lt!2230066)))

(declare-fun bs!1263610 () Bool)

(assert (= bs!1263610 d!1737983))

(declare-fun m!6481340 () Bool)

(assert (=> bs!1263610 m!6481340))

(declare-fun m!6481342 () Bool)

(assert (=> bs!1263610 m!6481342))

(assert (=> bs!1263610 m!6481340))

(assert (=> bs!1263610 m!6480584))

(declare-fun m!6481344 () Bool)

(assert (=> bs!1263610 m!6481344))

(declare-fun m!6481346 () Bool)

(assert (=> bs!1263610 m!6481346))

(assert (=> bm!400468 d!1737983))

(declare-fun b!5460073 () Bool)

(declare-fun e!3381128 () Bool)

(declare-fun e!3381129 () Bool)

(assert (=> b!5460073 (= e!3381128 e!3381129)))

(declare-fun res!2325583 () Bool)

(assert (=> b!5460073 (= res!2325583 (not (nullable!5456 (reg!15616 r!7292))))))

(assert (=> b!5460073 (=> (not res!2325583) (not e!3381129))))

(declare-fun b!5460074 () Bool)

(declare-fun e!3381127 () Bool)

(declare-fun e!3381131 () Bool)

(assert (=> b!5460074 (= e!3381127 e!3381131)))

(declare-fun res!2325580 () Bool)

(assert (=> b!5460074 (=> (not res!2325580) (not e!3381131))))

(declare-fun call!400612 () Bool)

(assert (=> b!5460074 (= res!2325580 call!400612)))

(declare-fun b!5460075 () Bool)

(declare-fun e!3381130 () Bool)

(assert (=> b!5460075 (= e!3381128 e!3381130)))

(declare-fun c!954047 () Bool)

(assert (=> b!5460075 (= c!954047 ((_ is Union!15287) r!7292))))

(declare-fun b!5460076 () Bool)

(declare-fun e!3381133 () Bool)

(assert (=> b!5460076 (= e!3381133 e!3381128)))

(declare-fun c!954048 () Bool)

(assert (=> b!5460076 (= c!954048 ((_ is Star!15287) r!7292))))

(declare-fun b!5460077 () Bool)

(declare-fun res!2325579 () Bool)

(assert (=> b!5460077 (=> res!2325579 e!3381127)))

(assert (=> b!5460077 (= res!2325579 (not ((_ is Concat!24132) r!7292)))))

(assert (=> b!5460077 (= e!3381130 e!3381127)))

(declare-fun d!1737987 () Bool)

(declare-fun res!2325581 () Bool)

(assert (=> d!1737987 (=> res!2325581 e!3381133)))

(assert (=> d!1737987 (= res!2325581 ((_ is ElementMatch!15287) r!7292))))

(assert (=> d!1737987 (= (validRegex!7023 r!7292) e!3381133)))

(declare-fun b!5460078 () Bool)

(declare-fun e!3381132 () Bool)

(declare-fun call!400610 () Bool)

(assert (=> b!5460078 (= e!3381132 call!400610)))

(declare-fun bm!400605 () Bool)

(assert (=> bm!400605 (= call!400612 (validRegex!7023 (ite c!954047 (regOne!31087 r!7292) (regOne!31086 r!7292))))))

(declare-fun call!400611 () Bool)

(declare-fun bm!400606 () Bool)

(assert (=> bm!400606 (= call!400611 (validRegex!7023 (ite c!954048 (reg!15616 r!7292) (ite c!954047 (regTwo!31087 r!7292) (regTwo!31086 r!7292)))))))

(declare-fun b!5460079 () Bool)

(assert (=> b!5460079 (= e!3381131 call!400610)))

(declare-fun b!5460080 () Bool)

(assert (=> b!5460080 (= e!3381129 call!400611)))

(declare-fun b!5460081 () Bool)

(declare-fun res!2325582 () Bool)

(assert (=> b!5460081 (=> (not res!2325582) (not e!3381132))))

(assert (=> b!5460081 (= res!2325582 call!400612)))

(assert (=> b!5460081 (= e!3381130 e!3381132)))

(declare-fun bm!400607 () Bool)

(assert (=> bm!400607 (= call!400610 call!400611)))

(assert (= (and d!1737987 (not res!2325581)) b!5460076))

(assert (= (and b!5460076 c!954048) b!5460073))

(assert (= (and b!5460076 (not c!954048)) b!5460075))

(assert (= (and b!5460073 res!2325583) b!5460080))

(assert (= (and b!5460075 c!954047) b!5460081))

(assert (= (and b!5460075 (not c!954047)) b!5460077))

(assert (= (and b!5460081 res!2325582) b!5460078))

(assert (= (and b!5460077 (not res!2325579)) b!5460074))

(assert (= (and b!5460074 res!2325580) b!5460079))

(assert (= (or b!5460078 b!5460079) bm!400607))

(assert (= (or b!5460081 b!5460074) bm!400605))

(assert (= (or b!5460080 bm!400607) bm!400606))

(declare-fun m!6481364 () Bool)

(assert (=> b!5460073 m!6481364))

(declare-fun m!6481366 () Bool)

(assert (=> bm!400605 m!6481366))

(declare-fun m!6481368 () Bool)

(assert (=> bm!400606 m!6481368))

(assert (=> start!571786 d!1737987))

(declare-fun e!3381138 () (InoxSet Context!9342))

(declare-fun b!5460082 () Bool)

(assert (=> b!5460082 (= e!3381138 (store ((as const (Array Context!9342 Bool)) false) (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848)) true))))

(declare-fun c!954052 () Bool)

(declare-fun b!5460083 () Bool)

(assert (=> b!5460083 (= c!954052 ((_ is Star!15287) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))))

(declare-fun e!3381137 () (InoxSet Context!9342))

(declare-fun e!3381134 () (InoxSet Context!9342))

(assert (=> b!5460083 (= e!3381137 e!3381134)))

(declare-fun b!5460084 () Bool)

(declare-fun call!400618 () (InoxSet Context!9342))

(assert (=> b!5460084 (= e!3381134 call!400618)))

(declare-fun bm!400608 () Bool)

(declare-fun call!400617 () (InoxSet Context!9342))

(assert (=> bm!400608 (= call!400618 call!400617)))

(declare-fun c!954051 () Bool)

(declare-fun d!1737995 () Bool)

(assert (=> d!1737995 (= c!954051 (and ((_ is ElementMatch!15287) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (= (c!953823 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (h!68484 s!2326))))))

(assert (=> d!1737995 (= (derivationStepZipperDown!735 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848)) (h!68484 s!2326)) e!3381138)))

(declare-fun b!5460085 () Bool)

(declare-fun e!3381136 () (InoxSet Context!9342))

(assert (=> b!5460085 (= e!3381138 e!3381136)))

(declare-fun c!954050 () Bool)

(assert (=> b!5460085 (= c!954050 ((_ is Union!15287) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))))

(declare-fun b!5460086 () Bool)

(assert (=> b!5460086 (= e!3381134 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460087 () Bool)

(declare-fun e!3381135 () (InoxSet Context!9342))

(assert (=> b!5460087 (= e!3381135 e!3381137)))

(declare-fun c!954053 () Bool)

(assert (=> b!5460087 (= c!954053 ((_ is Concat!24132) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))))

(declare-fun b!5460088 () Bool)

(declare-fun call!400615 () (InoxSet Context!9342))

(declare-fun call!400613 () (InoxSet Context!9342))

(assert (=> b!5460088 (= e!3381136 ((_ map or) call!400615 call!400613))))

(declare-fun bm!400609 () Bool)

(assert (=> bm!400609 (= call!400617 call!400613)))

(declare-fun e!3381139 () Bool)

(declare-fun b!5460089 () Bool)

(assert (=> b!5460089 (= e!3381139 (nullable!5456 (regOne!31086 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))))))))

(declare-fun call!400614 () List!62161)

(declare-fun c!954049 () Bool)

(declare-fun bm!400610 () Bool)

(assert (=> bm!400610 (= call!400614 ($colon$colon!1537 (exprs!5171 (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848))) (ite (or c!954049 c!954053) (regTwo!31086 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))))))))

(declare-fun bm!400611 () Bool)

(declare-fun call!400616 () List!62161)

(assert (=> bm!400611 (= call!400616 call!400614)))

(declare-fun b!5460090 () Bool)

(assert (=> b!5460090 (= c!954049 e!3381139)))

(declare-fun res!2325584 () Bool)

(assert (=> b!5460090 (=> (not res!2325584) (not e!3381139))))

(assert (=> b!5460090 (= res!2325584 ((_ is Concat!24132) (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))))

(assert (=> b!5460090 (= e!3381136 e!3381135)))

(declare-fun b!5460091 () Bool)

(assert (=> b!5460091 (= e!3381135 ((_ map or) call!400615 call!400617))))

(declare-fun bm!400612 () Bool)

(assert (=> bm!400612 (= call!400615 (derivationStepZipperDown!735 (ite c!954050 (regOne!31087 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (regOne!31086 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))))) (ite c!954050 (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848)) (Context!9343 call!400614)) (h!68484 s!2326)))))

(declare-fun b!5460092 () Bool)

(assert (=> b!5460092 (= e!3381137 call!400618)))

(declare-fun bm!400613 () Bool)

(assert (=> bm!400613 (= call!400613 (derivationStepZipperDown!735 (ite c!954050 (regTwo!31087 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (ite c!954049 (regTwo!31086 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (ite c!954053 (regOne!31086 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))) (reg!15616 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))))))) (ite (or c!954050 c!954049) (ite (or c!953819 c!953812) lt!2229804 (ite c!953814 (Context!9343 lt!2229747) lt!2229848)) (Context!9343 call!400616)) (h!68484 s!2326)))))

(assert (= (and d!1737995 c!954051) b!5460082))

(assert (= (and d!1737995 (not c!954051)) b!5460085))

(assert (= (and b!5460085 c!954050) b!5460088))

(assert (= (and b!5460085 (not c!954050)) b!5460090))

(assert (= (and b!5460090 res!2325584) b!5460089))

(assert (= (and b!5460090 c!954049) b!5460091))

(assert (= (and b!5460090 (not c!954049)) b!5460087))

(assert (= (and b!5460087 c!954053) b!5460092))

(assert (= (and b!5460087 (not c!954053)) b!5460083))

(assert (= (and b!5460083 c!954052) b!5460084))

(assert (= (and b!5460083 (not c!954052)) b!5460086))

(assert (= (or b!5460092 b!5460084) bm!400611))

(assert (= (or b!5460092 b!5460084) bm!400608))

(assert (= (or b!5460091 bm!400611) bm!400610))

(assert (= (or b!5460091 bm!400608) bm!400609))

(assert (= (or b!5460088 bm!400609) bm!400613))

(assert (= (or b!5460088 b!5460091) bm!400612))

(declare-fun m!6481370 () Bool)

(assert (=> b!5460082 m!6481370))

(declare-fun m!6481372 () Bool)

(assert (=> bm!400613 m!6481372))

(declare-fun m!6481374 () Bool)

(assert (=> bm!400610 m!6481374))

(declare-fun m!6481376 () Bool)

(assert (=> b!5460089 m!6481376))

(declare-fun m!6481378 () Bool)

(assert (=> bm!400612 m!6481378))

(assert (=> bm!400436 d!1737995))

(declare-fun d!1737997 () Bool)

(assert (=> d!1737997 (= (Exists!2468 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289269 (ite c!953822 lambda!289279 lambda!289283))))) (choose!41483 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289269 (ite c!953822 lambda!289279 lambda!289283))))))))

(declare-fun bs!1263612 () Bool)

(assert (= bs!1263612 d!1737997))

(declare-fun m!6481380 () Bool)

(assert (=> bs!1263612 m!6481380))

(assert (=> bm!400339 d!1737997))

(declare-fun d!1737999 () Bool)

(assert (=> d!1737999 (matchR!7472 (Star!15287 (reg!15616 (regOne!31086 r!7292))) (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902))))))

(declare-fun lt!2230077 () Unit!154924)

(declare-fun choose!41505 (Regex!15287 List!62160 List!62160) Unit!154924)

(assert (=> d!1737999 (= lt!2230077 (choose!41505 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902))))))

(assert (=> d!1737999 (validRegex!7023 (Star!15287 (reg!15616 (regOne!31086 r!7292))))))

(assert (=> d!1737999 (= (lemmaStarApp!82 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902))) lt!2230077)))

(declare-fun bs!1263613 () Bool)

(assert (= bs!1263613 d!1737999))

(declare-fun m!6481382 () Bool)

(assert (=> bs!1263613 m!6481382))

(assert (=> bs!1263613 m!6481382))

(declare-fun m!6481384 () Bool)

(assert (=> bs!1263613 m!6481384))

(declare-fun m!6481386 () Bool)

(assert (=> bs!1263613 m!6481386))

(declare-fun m!6481388 () Bool)

(assert (=> bs!1263613 m!6481388))

(assert (=> bm!400321 d!1737999))

(declare-fun d!1738001 () Bool)

(declare-fun nullableFct!1639 (Regex!15287) Bool)

(assert (=> d!1738001 (= (nullable!5456 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))) (nullableFct!1639 (ite c!953819 (regOne!31087 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292)))))))

(declare-fun bs!1263615 () Bool)

(assert (= bs!1263615 d!1738001))

(declare-fun m!6481400 () Bool)

(assert (=> bs!1263615 m!6481400))

(assert (=> bm!400416 d!1738001))

(declare-fun b!5460093 () Bool)

(declare-fun e!3381141 () Bool)

(declare-fun e!3381142 () Bool)

(assert (=> b!5460093 (= e!3381141 e!3381142)))

(declare-fun res!2325589 () Bool)

(assert (=> b!5460093 (= res!2325589 (not (nullable!5456 (reg!15616 lt!2229859))))))

(assert (=> b!5460093 (=> (not res!2325589) (not e!3381142))))

(declare-fun b!5460094 () Bool)

(declare-fun e!3381140 () Bool)

(declare-fun e!3381144 () Bool)

(assert (=> b!5460094 (= e!3381140 e!3381144)))

(declare-fun res!2325586 () Bool)

(assert (=> b!5460094 (=> (not res!2325586) (not e!3381144))))

(declare-fun call!400621 () Bool)

(assert (=> b!5460094 (= res!2325586 call!400621)))

(declare-fun b!5460095 () Bool)

(declare-fun e!3381143 () Bool)

(assert (=> b!5460095 (= e!3381141 e!3381143)))

(declare-fun c!954054 () Bool)

(assert (=> b!5460095 (= c!954054 ((_ is Union!15287) lt!2229859))))

(declare-fun b!5460096 () Bool)

(declare-fun e!3381146 () Bool)

(assert (=> b!5460096 (= e!3381146 e!3381141)))

(declare-fun c!954055 () Bool)

(assert (=> b!5460096 (= c!954055 ((_ is Star!15287) lt!2229859))))

(declare-fun b!5460097 () Bool)

(declare-fun res!2325585 () Bool)

(assert (=> b!5460097 (=> res!2325585 e!3381140)))

(assert (=> b!5460097 (= res!2325585 (not ((_ is Concat!24132) lt!2229859)))))

(assert (=> b!5460097 (= e!3381143 e!3381140)))

(declare-fun d!1738005 () Bool)

(declare-fun res!2325587 () Bool)

(assert (=> d!1738005 (=> res!2325587 e!3381146)))

(assert (=> d!1738005 (= res!2325587 ((_ is ElementMatch!15287) lt!2229859))))

(assert (=> d!1738005 (= (validRegex!7023 lt!2229859) e!3381146)))

(declare-fun b!5460098 () Bool)

(declare-fun e!3381145 () Bool)

(declare-fun call!400619 () Bool)

(assert (=> b!5460098 (= e!3381145 call!400619)))

(declare-fun bm!400614 () Bool)

(assert (=> bm!400614 (= call!400621 (validRegex!7023 (ite c!954054 (regOne!31087 lt!2229859) (regOne!31086 lt!2229859))))))

(declare-fun bm!400615 () Bool)

(declare-fun call!400620 () Bool)

(assert (=> bm!400615 (= call!400620 (validRegex!7023 (ite c!954055 (reg!15616 lt!2229859) (ite c!954054 (regTwo!31087 lt!2229859) (regTwo!31086 lt!2229859)))))))

(declare-fun b!5460099 () Bool)

(assert (=> b!5460099 (= e!3381144 call!400619)))

(declare-fun b!5460100 () Bool)

(assert (=> b!5460100 (= e!3381142 call!400620)))

(declare-fun b!5460101 () Bool)

(declare-fun res!2325588 () Bool)

(assert (=> b!5460101 (=> (not res!2325588) (not e!3381145))))

(assert (=> b!5460101 (= res!2325588 call!400621)))

(assert (=> b!5460101 (= e!3381143 e!3381145)))

(declare-fun bm!400616 () Bool)

(assert (=> bm!400616 (= call!400619 call!400620)))

(assert (= (and d!1738005 (not res!2325587)) b!5460096))

(assert (= (and b!5460096 c!954055) b!5460093))

(assert (= (and b!5460096 (not c!954055)) b!5460095))

(assert (= (and b!5460093 res!2325589) b!5460100))

(assert (= (and b!5460095 c!954054) b!5460101))

(assert (= (and b!5460095 (not c!954054)) b!5460097))

(assert (= (and b!5460101 res!2325588) b!5460098))

(assert (= (and b!5460097 (not res!2325585)) b!5460094))

(assert (= (and b!5460094 res!2325586) b!5460099))

(assert (= (or b!5460098 b!5460099) bm!400616))

(assert (= (or b!5460101 b!5460094) bm!400614))

(assert (= (or b!5460100 bm!400616) bm!400615))

(declare-fun m!6481402 () Bool)

(assert (=> b!5460093 m!6481402))

(declare-fun m!6481404 () Bool)

(assert (=> bm!400614 m!6481404))

(declare-fun m!6481406 () Bool)

(assert (=> bm!400615 m!6481406))

(assert (=> b!5459312 d!1738005))

(declare-fun b!5460102 () Bool)

(declare-fun res!2325591 () Bool)

(declare-fun e!3381150 () Bool)

(assert (=> b!5460102 (=> res!2325591 e!3381150)))

(assert (=> b!5460102 (= res!2325591 (not ((_ is ElementMatch!15287) lt!2229859)))))

(declare-fun e!3381147 () Bool)

(assert (=> b!5460102 (= e!3381147 e!3381150)))

(declare-fun b!5460103 () Bool)

(declare-fun e!3381153 () Bool)

(assert (=> b!5460103 (= e!3381153 (= (head!11691 s!2326) (c!953823 lt!2229859)))))

(declare-fun b!5460104 () Bool)

(declare-fun e!3381148 () Bool)

(assert (=> b!5460104 (= e!3381148 (nullable!5456 lt!2229859))))

(declare-fun b!5460105 () Bool)

(declare-fun e!3381151 () Bool)

(declare-fun e!3381152 () Bool)

(assert (=> b!5460105 (= e!3381151 e!3381152)))

(declare-fun res!2325590 () Bool)

(assert (=> b!5460105 (=> res!2325590 e!3381152)))

(declare-fun call!400622 () Bool)

(assert (=> b!5460105 (= res!2325590 call!400622)))

(declare-fun b!5460106 () Bool)

(declare-fun res!2325596 () Bool)

(assert (=> b!5460106 (=> res!2325596 e!3381152)))

(assert (=> b!5460106 (= res!2325596 (not (isEmpty!34025 (tail!10788 s!2326))))))

(declare-fun d!1738007 () Bool)

(declare-fun e!3381149 () Bool)

(assert (=> d!1738007 e!3381149))

(declare-fun c!954058 () Bool)

(assert (=> d!1738007 (= c!954058 ((_ is EmptyExpr!15287) lt!2229859))))

(declare-fun lt!2230079 () Bool)

(assert (=> d!1738007 (= lt!2230079 e!3381148)))

(declare-fun c!954057 () Bool)

(assert (=> d!1738007 (= c!954057 (isEmpty!34025 s!2326))))

(assert (=> d!1738007 (validRegex!7023 lt!2229859)))

(assert (=> d!1738007 (= (matchR!7472 lt!2229859 s!2326) lt!2230079)))

(declare-fun b!5460107 () Bool)

(declare-fun res!2325592 () Bool)

(assert (=> b!5460107 (=> (not res!2325592) (not e!3381153))))

(assert (=> b!5460107 (= res!2325592 (isEmpty!34025 (tail!10788 s!2326)))))

(declare-fun b!5460108 () Bool)

(assert (=> b!5460108 (= e!3381148 (matchR!7472 (derivativeStep!4308 lt!2229859 (head!11691 s!2326)) (tail!10788 s!2326)))))

(declare-fun b!5460109 () Bool)

(assert (=> b!5460109 (= e!3381147 (not lt!2230079))))

(declare-fun b!5460110 () Bool)

(declare-fun res!2325594 () Bool)

(assert (=> b!5460110 (=> res!2325594 e!3381150)))

(assert (=> b!5460110 (= res!2325594 e!3381153)))

(declare-fun res!2325597 () Bool)

(assert (=> b!5460110 (=> (not res!2325597) (not e!3381153))))

(assert (=> b!5460110 (= res!2325597 lt!2230079)))

(declare-fun b!5460111 () Bool)

(declare-fun res!2325595 () Bool)

(assert (=> b!5460111 (=> (not res!2325595) (not e!3381153))))

(assert (=> b!5460111 (= res!2325595 (not call!400622))))

(declare-fun b!5460112 () Bool)

(assert (=> b!5460112 (= e!3381152 (not (= (head!11691 s!2326) (c!953823 lt!2229859))))))

(declare-fun b!5460113 () Bool)

(assert (=> b!5460113 (= e!3381149 e!3381147)))

(declare-fun c!954056 () Bool)

(assert (=> b!5460113 (= c!954056 ((_ is EmptyLang!15287) lt!2229859))))

(declare-fun bm!400617 () Bool)

(assert (=> bm!400617 (= call!400622 (isEmpty!34025 s!2326))))

(declare-fun b!5460114 () Bool)

(assert (=> b!5460114 (= e!3381149 (= lt!2230079 call!400622))))

(declare-fun b!5460115 () Bool)

(assert (=> b!5460115 (= e!3381150 e!3381151)))

(declare-fun res!2325593 () Bool)

(assert (=> b!5460115 (=> (not res!2325593) (not e!3381151))))

(assert (=> b!5460115 (= res!2325593 (not lt!2230079))))

(assert (= (and d!1738007 c!954057) b!5460104))

(assert (= (and d!1738007 (not c!954057)) b!5460108))

(assert (= (and d!1738007 c!954058) b!5460114))

(assert (= (and d!1738007 (not c!954058)) b!5460113))

(assert (= (and b!5460113 c!954056) b!5460109))

(assert (= (and b!5460113 (not c!954056)) b!5460102))

(assert (= (and b!5460102 (not res!2325591)) b!5460110))

(assert (= (and b!5460110 res!2325597) b!5460111))

(assert (= (and b!5460111 res!2325595) b!5460107))

(assert (= (and b!5460107 res!2325592) b!5460103))

(assert (= (and b!5460110 (not res!2325594)) b!5460115))

(assert (= (and b!5460115 res!2325593) b!5460105))

(assert (= (and b!5460105 (not res!2325590)) b!5460106))

(assert (= (and b!5460106 (not res!2325596)) b!5460112))

(assert (= (or b!5460114 b!5460105 b!5460111) bm!400617))

(assert (=> b!5460107 m!6480914))

(assert (=> b!5460107 m!6480914))

(assert (=> b!5460107 m!6480916))

(declare-fun m!6481408 () Bool)

(assert (=> b!5460104 m!6481408))

(assert (=> d!1738007 m!6480894))

(assert (=> d!1738007 m!6480334))

(assert (=> b!5460106 m!6480914))

(assert (=> b!5460106 m!6480914))

(assert (=> b!5460106 m!6480916))

(assert (=> bm!400617 m!6480894))

(assert (=> b!5460103 m!6480922))

(assert (=> b!5460112 m!6480922))

(assert (=> b!5460108 m!6480922))

(assert (=> b!5460108 m!6480922))

(declare-fun m!6481410 () Bool)

(assert (=> b!5460108 m!6481410))

(assert (=> b!5460108 m!6480914))

(assert (=> b!5460108 m!6481410))

(assert (=> b!5460108 m!6480914))

(declare-fun m!6481412 () Bool)

(assert (=> b!5460108 m!6481412))

(assert (=> b!5459312 d!1738007))

(declare-fun d!1738009 () Bool)

(declare-fun c!954059 () Bool)

(assert (=> d!1738009 (= c!954059 (isEmpty!34025 s!2326))))

(declare-fun e!3381154 () Bool)

(assert (=> d!1738009 (= (matchZipper!1531 lt!2229915 s!2326) e!3381154)))

(declare-fun b!5460116 () Bool)

(assert (=> b!5460116 (= e!3381154 (nullableZipper!1487 lt!2229915))))

(declare-fun b!5460117 () Bool)

(assert (=> b!5460117 (= e!3381154 (matchZipper!1531 (derivationStepZipper!1506 lt!2229915 (head!11691 s!2326)) (tail!10788 s!2326)))))

(assert (= (and d!1738009 c!954059) b!5460116))

(assert (= (and d!1738009 (not c!954059)) b!5460117))

(assert (=> d!1738009 m!6480894))

(declare-fun m!6481414 () Bool)

(assert (=> b!5460116 m!6481414))

(assert (=> b!5460117 m!6480922))

(assert (=> b!5460117 m!6480922))

(declare-fun m!6481416 () Bool)

(assert (=> b!5460117 m!6481416))

(assert (=> b!5460117 m!6480914))

(assert (=> b!5460117 m!6481416))

(assert (=> b!5460117 m!6480914))

(declare-fun m!6481418 () Bool)

(assert (=> b!5460117 m!6481418))

(assert (=> b!5459312 d!1738009))

(declare-fun d!1738011 () Bool)

(assert (=> d!1738011 (= (matchR!7472 lt!2229859 s!2326) (matchZipper!1531 lt!2229915 s!2326))))

(declare-fun lt!2230082 () Unit!154924)

(declare-fun choose!41508 ((InoxSet Context!9342) List!62162 Regex!15287 List!62160) Unit!154924)

(assert (=> d!1738011 (= lt!2230082 (choose!41508 lt!2229915 lt!2229845 lt!2229859 s!2326))))

(assert (=> d!1738011 (validRegex!7023 lt!2229859)))

(assert (=> d!1738011 (= (theoremZipperRegexEquiv!567 lt!2229915 lt!2229845 lt!2229859 s!2326) lt!2230082)))

(declare-fun bs!1263616 () Bool)

(assert (= bs!1263616 d!1738011))

(assert (=> bs!1263616 m!6480336))

(assert (=> bs!1263616 m!6480338))

(declare-fun m!6481420 () Bool)

(assert (=> bs!1263616 m!6481420))

(assert (=> bs!1263616 m!6480334))

(assert (=> b!5459312 d!1738011))

(declare-fun d!1738013 () Bool)

(assert (=> d!1738013 (= (flatMap!1014 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))) (dynLambda!24414 (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259))) (ite c!953819 lt!2229904 (ite c!953812 lt!2229858 lt!2229804))))))

(declare-fun lt!2230083 () Unit!154924)

(assert (=> d!1738013 (= lt!2230083 (choose!41498 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lt!2229904 (ite c!953812 lt!2229858 lt!2229804)) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))))))

(assert (=> d!1738013 (= (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953817 lt!2229816 lt!2229771))) (store ((as const (Array Context!9342 Bool)) false) (ite c!953819 lt!2229904 (ite c!953812 lt!2229858 lt!2229804)) true))))

(assert (=> d!1738013 (= (lemmaFlatMapOnSingletonSet!546 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lt!2229904 (ite c!953812 lt!2229858 lt!2229804)) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))) lt!2230083)))

(declare-fun b_lambda!207839 () Bool)

(assert (=> (not b_lambda!207839) (not d!1738013)))

(declare-fun bs!1263617 () Bool)

(assert (= bs!1263617 d!1738013))

(declare-fun m!6481422 () Bool)

(assert (=> bs!1263617 m!6481422))

(declare-fun m!6481424 () Bool)

(assert (=> bs!1263617 m!6481424))

(declare-fun m!6481426 () Bool)

(assert (=> bs!1263617 m!6481426))

(declare-fun m!6481428 () Bool)

(assert (=> bs!1263617 m!6481428))

(assert (=> bm!400448 d!1738013))

(declare-fun d!1738015 () Bool)

(assert (=> d!1738015 (= (matchR!7472 (ite c!953810 lt!2229832 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite (and c!953817 c!953815) lt!2229774 lt!2229799)))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812) s!2326 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (_2!35789 lt!2229738))))) (matchZipper!1531 (ite c!953810 lt!2229836 (ite c!953819 lt!2229842 (ite c!953812 lt!2229910 (ite (and c!953817 c!953815) lt!2229816 lt!2229886)))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812) s!2326 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (_2!35789 lt!2229738))))))))

(declare-fun lt!2230084 () Unit!154924)

(assert (=> d!1738015 (= lt!2230084 (choose!41508 (ite c!953810 lt!2229836 (ite c!953819 lt!2229842 (ite c!953812 lt!2229910 (ite (and c!953817 c!953815) lt!2229816 lt!2229886)))) (ite c!953810 (Cons!62038 lt!2229804 Nil!62038) (ite c!953819 (Cons!62038 lt!2229904 Nil!62038) (ite c!953812 (Cons!62038 lt!2229850 Nil!62038) (ite (and c!953817 c!953815) (Cons!62038 lt!2229804 Nil!62038) (Cons!62038 lt!2229848 Nil!62038))))) (ite c!953810 lt!2229832 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite (and c!953817 c!953815) lt!2229774 lt!2229799)))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812) s!2326 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (_2!35789 lt!2229738))))))))

(assert (=> d!1738015 (validRegex!7023 (ite c!953810 lt!2229832 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite (and c!953817 c!953815) lt!2229774 lt!2229799)))))))

(assert (=> d!1738015 (= (theoremZipperRegexEquiv!567 (ite c!953810 lt!2229836 (ite c!953819 lt!2229842 (ite c!953812 lt!2229910 (ite (and c!953817 c!953815) lt!2229816 lt!2229886)))) (ite c!953810 (Cons!62038 lt!2229804 Nil!62038) (ite c!953819 (Cons!62038 lt!2229904 Nil!62038) (ite c!953812 (Cons!62038 lt!2229850 Nil!62038) (ite (and c!953817 c!953815) (Cons!62038 lt!2229804 Nil!62038) (Cons!62038 lt!2229848 Nil!62038))))) (ite c!953810 lt!2229832 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite (and c!953817 c!953815) lt!2229774 lt!2229799)))) (ite c!953810 (t!375389 s!2326) (ite (or c!953819 c!953812) s!2326 (ite c!953817 (ite c!953815 s!2326 lt!2229897) (_2!35789 lt!2229738))))) lt!2230084)))

(declare-fun bs!1263618 () Bool)

(assert (= bs!1263618 d!1738015))

(declare-fun m!6481430 () Bool)

(assert (=> bs!1263618 m!6481430))

(declare-fun m!6481432 () Bool)

(assert (=> bs!1263618 m!6481432))

(declare-fun m!6481434 () Bool)

(assert (=> bs!1263618 m!6481434))

(declare-fun m!6481436 () Bool)

(assert (=> bs!1263618 m!6481436))

(assert (=> bm!400301 d!1738015))

(declare-fun b!5460120 () Bool)

(declare-fun res!2325598 () Bool)

(declare-fun e!3381156 () Bool)

(assert (=> b!5460120 (=> (not res!2325598) (not e!3381156))))

(declare-fun lt!2230085 () List!62160)

(assert (=> b!5460120 (= res!2325598 (= (size!39905 lt!2230085) (+ (size!39905 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902))) (size!39905 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902))))))))

(declare-fun b!5460121 () Bool)

(assert (=> b!5460121 (= e!3381156 (or (not (= (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902)) Nil!62036)) (= lt!2230085 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902)))))))

(declare-fun b!5460119 () Bool)

(declare-fun e!3381155 () List!62160)

(assert (=> b!5460119 (= e!3381155 (Cons!62036 (h!68484 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902))) (++!13653 (t!375389 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902))) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902)))))))

(declare-fun b!5460118 () Bool)

(assert (=> b!5460118 (= e!3381155 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902)))))

(declare-fun d!1738017 () Bool)

(assert (=> d!1738017 e!3381156))

(declare-fun res!2325599 () Bool)

(assert (=> d!1738017 (=> (not res!2325599) (not e!3381156))))

(assert (=> d!1738017 (= res!2325599 (= (content!11172 lt!2230085) ((_ map or) (content!11172 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902))) (content!11172 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902))))))))

(assert (=> d!1738017 (= lt!2230085 e!3381155)))

(declare-fun c!954060 () Bool)

(assert (=> d!1738017 (= c!954060 ((_ is Nil!62036) (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902))))))

(assert (=> d!1738017 (= (++!13653 (ite c!953817 (_2!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229902))) lt!2230085)))

(assert (= (and d!1738017 c!954060) b!5460118))

(assert (= (and d!1738017 (not c!954060)) b!5460119))

(assert (= (and d!1738017 res!2325599) b!5460120))

(assert (= (and b!5460120 res!2325598) b!5460121))

(declare-fun m!6481438 () Bool)

(assert (=> b!5460120 m!6481438))

(declare-fun m!6481440 () Bool)

(assert (=> b!5460120 m!6481440))

(declare-fun m!6481442 () Bool)

(assert (=> b!5460120 m!6481442))

(declare-fun m!6481444 () Bool)

(assert (=> b!5460119 m!6481444))

(declare-fun m!6481446 () Bool)

(assert (=> d!1738017 m!6481446))

(declare-fun m!6481448 () Bool)

(assert (=> d!1738017 m!6481448))

(declare-fun m!6481450 () Bool)

(assert (=> d!1738017 m!6481450))

(assert (=> bm!400382 d!1738017))

(declare-fun d!1738019 () Bool)

(assert (=> d!1738019 (forall!14591 (++!13654 lt!2229729 lt!2229899) (ite c!953817 lambda!289273 lambda!289275))))

(declare-fun lt!2230094 () Unit!154924)

(declare-fun choose!41510 (List!62161 List!62161 Int) Unit!154924)

(assert (=> d!1738019 (= lt!2230094 (choose!41510 lt!2229729 lt!2229899 (ite c!953817 lambda!289273 lambda!289275)))))

(assert (=> d!1738019 (forall!14591 lt!2229729 (ite c!953817 lambda!289273 lambda!289275))))

(assert (=> d!1738019 (= (lemmaConcatPreservesForall!254 lt!2229729 lt!2229899 (ite c!953817 lambda!289273 lambda!289275)) lt!2230094)))

(declare-fun bs!1263619 () Bool)

(assert (= bs!1263619 d!1738019))

(assert (=> bs!1263619 m!6480478))

(assert (=> bs!1263619 m!6480478))

(declare-fun m!6481452 () Bool)

(assert (=> bs!1263619 m!6481452))

(declare-fun m!6481454 () Bool)

(assert (=> bs!1263619 m!6481454))

(declare-fun m!6481456 () Bool)

(assert (=> bs!1263619 m!6481456))

(assert (=> bm!400428 d!1738019))

(assert (=> bm!400298 d!1738019))

(declare-fun d!1738021 () Bool)

(assert (=> d!1738021 (= (get!21395 (ite c!953817 lt!2229891 lt!2229731)) (v!51426 (ite c!953817 lt!2229891 lt!2229731)))))

(assert (=> bm!400476 d!1738021))

(declare-fun bs!1263620 () Bool)

(declare-fun b!5460142 () Bool)

(assert (= bs!1263620 (and b!5460142 b!5459302)))

(declare-fun lambda!289350 () Int)

(assert (=> bs!1263620 (not (= lambda!289350 lambda!289282))))

(declare-fun bs!1263621 () Bool)

(assert (= bs!1263621 (and b!5460142 d!1737855)))

(assert (=> bs!1263621 (not (= lambda!289350 lambda!289293))))

(declare-fun bs!1263622 () Bool)

(assert (= bs!1263622 (and b!5460142 b!5459299)))

(assert (=> bs!1263622 (not (= lambda!289350 lambda!289270))))

(declare-fun bs!1263623 () Bool)

(assert (= bs!1263623 (and b!5460142 b!5459286)))

(assert (=> bs!1263623 (not (= lambda!289350 lambda!289261))))

(declare-fun bs!1263624 () Bool)

(assert (= bs!1263624 (and b!5460142 b!5459307)))

(assert (=> bs!1263624 (not (= lambda!289350 lambda!289279))))

(declare-fun bs!1263625 () Bool)

(assert (= bs!1263625 (and b!5460142 b!5459320)))

(assert (=> bs!1263625 (not (= lambda!289350 lambda!289265))))

(assert (=> bs!1263620 (= (and (= s!2326 Nil!62036) (= (reg!15616 r!7292) (reg!15616 (regOne!31086 r!7292))) (= r!7292 lt!2229794)) (= lambda!289350 lambda!289283))))

(assert (=> bs!1263623 (not (= lambda!289350 lambda!289262))))

(assert (=> bs!1263622 (not (= lambda!289350 lambda!289272))))

(assert (=> bs!1263624 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (reg!15616 r!7292) (reg!15616 (regOne!31086 r!7292))) (= r!7292 lt!2229794)) (= lambda!289350 lambda!289280))))

(assert (=> bs!1263624 (not (= lambda!289350 lambda!289277))))

(assert (=> bs!1263625 (not (= lambda!289350 lambda!289264))))

(assert (=> bs!1263623 (not (= lambda!289350 lambda!289263))))

(declare-fun bs!1263626 () Bool)

(assert (= bs!1263626 (and b!5460142 b!5459662)))

(assert (=> bs!1263626 (not (= lambda!289350 lambda!289301))))

(declare-fun bs!1263627 () Bool)

(assert (= bs!1263627 (and b!5460142 b!5459333)))

(assert (=> bs!1263627 (not (= lambda!289350 lambda!289269))))

(assert (=> bs!1263623 (not (= lambda!289350 lambda!289260))))

(assert (=> bs!1263620 (not (= lambda!289350 lambda!289281))))

(assert (=> bs!1263624 (not (= lambda!289350 lambda!289276))))

(declare-fun bs!1263628 () Bool)

(assert (= bs!1263628 (and b!5460142 b!5459661)))

(assert (=> bs!1263628 (= (and (= (reg!15616 r!7292) (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= r!7292 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lambda!289350 lambda!289298))))

(declare-fun bs!1263629 () Bool)

(assert (= bs!1263629 (and b!5460142 b!5459292)))

(assert (=> bs!1263629 (not (= lambda!289350 lambda!289257))))

(assert (=> bs!1263624 (not (= lambda!289350 lambda!289278))))

(assert (=> bs!1263622 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (reg!15616 r!7292) (reg!15616 (regOne!31086 r!7292))) (= r!7292 lt!2229794)) (= lambda!289350 lambda!289271))))

(declare-fun bs!1263630 () Bool)

(assert (= bs!1263630 (and b!5460142 d!1737983)))

(assert (=> bs!1263630 (not (= lambda!289350 lambda!289346))))

(assert (=> bs!1263625 (not (= lambda!289350 lambda!289266))))

(declare-fun bs!1263631 () Bool)

(assert (= bs!1263631 (and b!5460142 d!1737877)))

(assert (=> bs!1263631 (not (= lambda!289350 lambda!289315))))

(assert (=> bs!1263625 (not (= lambda!289350 lambda!289267))))

(assert (=> bs!1263629 (not (= lambda!289350 lambda!289258))))

(assert (=> bs!1263627 (not (= lambda!289350 lambda!289268))))

(assert (=> bs!1263631 (not (= lambda!289350 lambda!289314))))

(assert (=> b!5460142 true))

(assert (=> b!5460142 true))

(declare-fun bs!1263632 () Bool)

(declare-fun b!5460143 () Bool)

(assert (= bs!1263632 (and b!5460143 b!5459302)))

(declare-fun lambda!289351 () Int)

(assert (=> bs!1263632 (= (and (= s!2326 Nil!62036) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289351 lambda!289282))))

(declare-fun bs!1263633 () Bool)

(assert (= bs!1263633 (and b!5460143 d!1737855)))

(assert (=> bs!1263633 (not (= lambda!289351 lambda!289293))))

(declare-fun bs!1263634 () Bool)

(assert (= bs!1263634 (and b!5460143 b!5459299)))

(assert (=> bs!1263634 (not (= lambda!289351 lambda!289270))))

(declare-fun bs!1263635 () Bool)

(assert (= bs!1263635 (and b!5460143 b!5459286)))

(assert (=> bs!1263635 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289351 lambda!289261))))

(declare-fun bs!1263636 () Bool)

(assert (= bs!1263636 (and b!5460143 b!5459307)))

(assert (=> bs!1263636 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289351 lambda!289279))))

(declare-fun bs!1263637 () Bool)

(assert (= bs!1263637 (and b!5460143 b!5459320)))

(assert (=> bs!1263637 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289351 lambda!289265))))

(assert (=> bs!1263632 (not (= lambda!289351 lambda!289283))))

(assert (=> bs!1263635 (not (= lambda!289351 lambda!289262))))

(assert (=> bs!1263634 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289351 lambda!289272))))

(assert (=> bs!1263636 (not (= lambda!289351 lambda!289280))))

(assert (=> bs!1263636 (= (= (regOne!31086 r!7292) lt!2229788) (= lambda!289351 lambda!289277))))

(assert (=> bs!1263637 (not (= lambda!289351 lambda!289264))))

(declare-fun bs!1263638 () Bool)

(assert (= bs!1263638 (and b!5460143 b!5460142)))

(assert (=> bs!1263638 (not (= lambda!289351 lambda!289350))))

(assert (=> bs!1263635 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289351 lambda!289263))))

(declare-fun bs!1263639 () Bool)

(assert (= bs!1263639 (and b!5460143 b!5459662)))

(assert (=> bs!1263639 (= (and (= (regOne!31086 r!7292) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (regTwo!31086 r!7292) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289351 lambda!289301))))

(declare-fun bs!1263640 () Bool)

(assert (= bs!1263640 (and b!5460143 b!5459333)))

(assert (=> bs!1263640 (= (= (regOne!31086 r!7292) lt!2229794) (= lambda!289351 lambda!289269))))

(assert (=> bs!1263635 (not (= lambda!289351 lambda!289260))))

(assert (=> bs!1263632 (not (= lambda!289351 lambda!289281))))

(assert (=> bs!1263636 (not (= lambda!289351 lambda!289276))))

(declare-fun bs!1263642 () Bool)

(assert (= bs!1263642 (and b!5460143 b!5459661)))

(assert (=> bs!1263642 (not (= lambda!289351 lambda!289298))))

(declare-fun bs!1263643 () Bool)

(assert (= bs!1263643 (and b!5460143 b!5459292)))

(assert (=> bs!1263643 (not (= lambda!289351 lambda!289257))))

(assert (=> bs!1263636 (not (= lambda!289351 lambda!289278))))

(assert (=> bs!1263634 (not (= lambda!289351 lambda!289271))))

(declare-fun bs!1263644 () Bool)

(assert (= bs!1263644 (and b!5460143 d!1737983)))

(assert (=> bs!1263644 (not (= lambda!289351 lambda!289346))))

(assert (=> bs!1263637 (not (= lambda!289351 lambda!289266))))

(declare-fun bs!1263645 () Bool)

(assert (= bs!1263645 (and b!5460143 d!1737877)))

(assert (=> bs!1263645 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289351 lambda!289315))))

(assert (=> bs!1263637 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289351 lambda!289267))))

(assert (=> bs!1263643 (= lambda!289351 lambda!289258)))

(assert (=> bs!1263640 (not (= lambda!289351 lambda!289268))))

(assert (=> bs!1263645 (not (= lambda!289351 lambda!289314))))

(assert (=> b!5460143 true))

(assert (=> b!5460143 true))

(declare-fun b!5460140 () Bool)

(declare-fun e!3381171 () Bool)

(declare-fun e!3381172 () Bool)

(assert (=> b!5460140 (= e!3381171 e!3381172)))

(declare-fun res!2325611 () Bool)

(assert (=> b!5460140 (= res!2325611 (matchRSpec!2390 (regOne!31087 r!7292) s!2326))))

(assert (=> b!5460140 (=> res!2325611 e!3381172)))

(declare-fun b!5460141 () Bool)

(declare-fun e!3381167 () Bool)

(declare-fun call!400623 () Bool)

(assert (=> b!5460141 (= e!3381167 call!400623)))

(declare-fun e!3381170 () Bool)

(declare-fun call!400624 () Bool)

(assert (=> b!5460142 (= e!3381170 call!400624)))

(declare-fun e!3381168 () Bool)

(assert (=> b!5460143 (= e!3381168 call!400624)))

(declare-fun b!5460144 () Bool)

(declare-fun c!954067 () Bool)

(assert (=> b!5460144 (= c!954067 ((_ is ElementMatch!15287) r!7292))))

(declare-fun e!3381173 () Bool)

(declare-fun e!3381169 () Bool)

(assert (=> b!5460144 (= e!3381173 e!3381169)))

(declare-fun b!5460145 () Bool)

(assert (=> b!5460145 (= e!3381169 (= s!2326 (Cons!62036 (c!953823 r!7292) Nil!62036)))))

(declare-fun b!5460146 () Bool)

(declare-fun c!954068 () Bool)

(assert (=> b!5460146 (= c!954068 ((_ is Union!15287) r!7292))))

(assert (=> b!5460146 (= e!3381169 e!3381171)))

(declare-fun bm!400619 () Bool)

(assert (=> bm!400619 (= call!400623 (isEmpty!34025 s!2326))))

(declare-fun b!5460147 () Bool)

(assert (=> b!5460147 (= e!3381172 (matchRSpec!2390 (regTwo!31087 r!7292) s!2326))))

(declare-fun b!5460148 () Bool)

(assert (=> b!5460148 (= e!3381167 e!3381173)))

(declare-fun res!2325610 () Bool)

(assert (=> b!5460148 (= res!2325610 (not ((_ is EmptyLang!15287) r!7292)))))

(assert (=> b!5460148 (=> (not res!2325610) (not e!3381173))))

(declare-fun d!1738023 () Bool)

(declare-fun c!954066 () Bool)

(assert (=> d!1738023 (= c!954066 ((_ is EmptyExpr!15287) r!7292))))

(assert (=> d!1738023 (= (matchRSpec!2390 r!7292 s!2326) e!3381167)))

(declare-fun c!954065 () Bool)

(declare-fun bm!400618 () Bool)

(assert (=> bm!400618 (= call!400624 (Exists!2468 (ite c!954065 lambda!289350 lambda!289351)))))

(declare-fun b!5460149 () Bool)

(declare-fun res!2325612 () Bool)

(assert (=> b!5460149 (=> res!2325612 e!3381170)))

(assert (=> b!5460149 (= res!2325612 call!400623)))

(assert (=> b!5460149 (= e!3381168 e!3381170)))

(declare-fun b!5460150 () Bool)

(assert (=> b!5460150 (= e!3381171 e!3381168)))

(assert (=> b!5460150 (= c!954065 ((_ is Star!15287) r!7292))))

(assert (= (and d!1738023 c!954066) b!5460141))

(assert (= (and d!1738023 (not c!954066)) b!5460148))

(assert (= (and b!5460148 res!2325610) b!5460144))

(assert (= (and b!5460144 c!954067) b!5460145))

(assert (= (and b!5460144 (not c!954067)) b!5460146))

(assert (= (and b!5460146 c!954068) b!5460140))

(assert (= (and b!5460146 (not c!954068)) b!5460150))

(assert (= (and b!5460140 (not res!2325611)) b!5460147))

(assert (= (and b!5460150 c!954065) b!5460149))

(assert (= (and b!5460150 (not c!954065)) b!5460143))

(assert (= (and b!5460149 (not res!2325612)) b!5460142))

(assert (= (or b!5460142 b!5460143) bm!400618))

(assert (= (or b!5460141 b!5460149) bm!400619))

(declare-fun m!6481498 () Bool)

(assert (=> b!5460140 m!6481498))

(assert (=> bm!400619 m!6480894))

(declare-fun m!6481506 () Bool)

(assert (=> b!5460147 m!6481506))

(declare-fun m!6481512 () Bool)

(assert (=> bm!400618 m!6481512))

(assert (=> b!5459294 d!1738023))

(declare-fun b!5460175 () Bool)

(declare-fun res!2325626 () Bool)

(declare-fun e!3381192 () Bool)

(assert (=> b!5460175 (=> res!2325626 e!3381192)))

(assert (=> b!5460175 (= res!2325626 (not ((_ is ElementMatch!15287) r!7292)))))

(declare-fun e!3381189 () Bool)

(assert (=> b!5460175 (= e!3381189 e!3381192)))

(declare-fun b!5460176 () Bool)

(declare-fun e!3381195 () Bool)

(assert (=> b!5460176 (= e!3381195 (= (head!11691 s!2326) (c!953823 r!7292)))))

(declare-fun b!5460177 () Bool)

(declare-fun e!3381190 () Bool)

(assert (=> b!5460177 (= e!3381190 (nullable!5456 r!7292))))

(declare-fun b!5460178 () Bool)

(declare-fun e!3381193 () Bool)

(declare-fun e!3381194 () Bool)

(assert (=> b!5460178 (= e!3381193 e!3381194)))

(declare-fun res!2325625 () Bool)

(assert (=> b!5460178 (=> res!2325625 e!3381194)))

(declare-fun call!400628 () Bool)

(assert (=> b!5460178 (= res!2325625 call!400628)))

(declare-fun b!5460179 () Bool)

(declare-fun res!2325631 () Bool)

(assert (=> b!5460179 (=> res!2325631 e!3381194)))

(assert (=> b!5460179 (= res!2325631 (not (isEmpty!34025 (tail!10788 s!2326))))))

(declare-fun d!1738035 () Bool)

(declare-fun e!3381191 () Bool)

(assert (=> d!1738035 e!3381191))

(declare-fun c!954077 () Bool)

(assert (=> d!1738035 (= c!954077 ((_ is EmptyExpr!15287) r!7292))))

(declare-fun lt!2230103 () Bool)

(assert (=> d!1738035 (= lt!2230103 e!3381190)))

(declare-fun c!954076 () Bool)

(assert (=> d!1738035 (= c!954076 (isEmpty!34025 s!2326))))

(assert (=> d!1738035 (validRegex!7023 r!7292)))

(assert (=> d!1738035 (= (matchR!7472 r!7292 s!2326) lt!2230103)))

(declare-fun b!5460180 () Bool)

(declare-fun res!2325627 () Bool)

(assert (=> b!5460180 (=> (not res!2325627) (not e!3381195))))

(assert (=> b!5460180 (= res!2325627 (isEmpty!34025 (tail!10788 s!2326)))))

(declare-fun b!5460181 () Bool)

(assert (=> b!5460181 (= e!3381190 (matchR!7472 (derivativeStep!4308 r!7292 (head!11691 s!2326)) (tail!10788 s!2326)))))

(declare-fun b!5460182 () Bool)

(assert (=> b!5460182 (= e!3381189 (not lt!2230103))))

(declare-fun b!5460183 () Bool)

(declare-fun res!2325629 () Bool)

(assert (=> b!5460183 (=> res!2325629 e!3381192)))

(assert (=> b!5460183 (= res!2325629 e!3381195)))

(declare-fun res!2325632 () Bool)

(assert (=> b!5460183 (=> (not res!2325632) (not e!3381195))))

(assert (=> b!5460183 (= res!2325632 lt!2230103)))

(declare-fun b!5460184 () Bool)

(declare-fun res!2325630 () Bool)

(assert (=> b!5460184 (=> (not res!2325630) (not e!3381195))))

(assert (=> b!5460184 (= res!2325630 (not call!400628))))

(declare-fun b!5460185 () Bool)

(assert (=> b!5460185 (= e!3381194 (not (= (head!11691 s!2326) (c!953823 r!7292))))))

(declare-fun b!5460186 () Bool)

(assert (=> b!5460186 (= e!3381191 e!3381189)))

(declare-fun c!954075 () Bool)

(assert (=> b!5460186 (= c!954075 ((_ is EmptyLang!15287) r!7292))))

(declare-fun bm!400623 () Bool)

(assert (=> bm!400623 (= call!400628 (isEmpty!34025 s!2326))))

(declare-fun b!5460187 () Bool)

(assert (=> b!5460187 (= e!3381191 (= lt!2230103 call!400628))))

(declare-fun b!5460188 () Bool)

(assert (=> b!5460188 (= e!3381192 e!3381193)))

(declare-fun res!2325628 () Bool)

(assert (=> b!5460188 (=> (not res!2325628) (not e!3381193))))

(assert (=> b!5460188 (= res!2325628 (not lt!2230103))))

(assert (= (and d!1738035 c!954076) b!5460177))

(assert (= (and d!1738035 (not c!954076)) b!5460181))

(assert (= (and d!1738035 c!954077) b!5460187))

(assert (= (and d!1738035 (not c!954077)) b!5460186))

(assert (= (and b!5460186 c!954075) b!5460182))

(assert (= (and b!5460186 (not c!954075)) b!5460175))

(assert (= (and b!5460175 (not res!2325626)) b!5460183))

(assert (= (and b!5460183 res!2325632) b!5460184))

(assert (= (and b!5460184 res!2325630) b!5460180))

(assert (= (and b!5460180 res!2325627) b!5460176))

(assert (= (and b!5460183 (not res!2325629)) b!5460188))

(assert (= (and b!5460188 res!2325628) b!5460178))

(assert (= (and b!5460178 (not res!2325625)) b!5460179))

(assert (= (and b!5460179 (not res!2325631)) b!5460185))

(assert (= (or b!5460187 b!5460178 b!5460184) bm!400623))

(assert (=> b!5460180 m!6480914))

(assert (=> b!5460180 m!6480914))

(assert (=> b!5460180 m!6480916))

(declare-fun m!6481522 () Bool)

(assert (=> b!5460177 m!6481522))

(assert (=> d!1738035 m!6480894))

(assert (=> d!1738035 m!6480368))

(assert (=> b!5460179 m!6480914))

(assert (=> b!5460179 m!6480914))

(assert (=> b!5460179 m!6480916))

(assert (=> bm!400623 m!6480894))

(assert (=> b!5460176 m!6480922))

(assert (=> b!5460185 m!6480922))

(assert (=> b!5460181 m!6480922))

(assert (=> b!5460181 m!6480922))

(declare-fun m!6481524 () Bool)

(assert (=> b!5460181 m!6481524))

(assert (=> b!5460181 m!6480914))

(assert (=> b!5460181 m!6481524))

(assert (=> b!5460181 m!6480914))

(declare-fun m!6481526 () Bool)

(assert (=> b!5460181 m!6481526))

(assert (=> b!5459294 d!1738035))

(declare-fun d!1738041 () Bool)

(assert (=> d!1738041 (= (matchR!7472 r!7292 s!2326) (matchRSpec!2390 r!7292 s!2326))))

(declare-fun lt!2230104 () Unit!154924)

(assert (=> d!1738041 (= lt!2230104 (choose!41495 r!7292 s!2326))))

(assert (=> d!1738041 (validRegex!7023 r!7292)))

(assert (=> d!1738041 (= (mainMatchTheorem!2390 r!7292 s!2326) lt!2230104)))

(declare-fun bs!1263647 () Bool)

(assert (= bs!1263647 d!1738041))

(assert (=> bs!1263647 m!6480542))

(assert (=> bs!1263647 m!6480540))

(declare-fun m!6481528 () Bool)

(assert (=> bs!1263647 m!6481528))

(assert (=> bs!1263647 m!6480368))

(assert (=> b!5459294 d!1738041))

(declare-fun b!5460199 () Bool)

(assert (=> b!5460199 true))

(declare-fun bs!1263664 () Bool)

(declare-fun b!5460201 () Bool)

(assert (= bs!1263664 (and b!5460201 b!5460199)))

(declare-fun lambda!289360 () Int)

(declare-fun lambda!289361 () Int)

(declare-fun lt!2230121 () Int)

(declare-fun lt!2230124 () Int)

(assert (=> bs!1263664 (= (= lt!2230121 lt!2230124) (= lambda!289361 lambda!289360))))

(assert (=> b!5460201 true))

(declare-fun d!1738043 () Bool)

(declare-fun e!3381203 () Bool)

(assert (=> d!1738043 e!3381203))

(declare-fun res!2325635 () Bool)

(assert (=> d!1738043 (=> (not res!2325635) (not e!3381203))))

(assert (=> d!1738043 (= res!2325635 (>= lt!2230121 0))))

(declare-fun e!3381202 () Int)

(assert (=> d!1738043 (= lt!2230121 e!3381202)))

(declare-fun c!954088 () Bool)

(assert (=> d!1738043 (= c!954088 ((_ is Cons!62038) zl!343))))

(assert (=> d!1738043 (= (zipperDepth!188 zl!343) lt!2230121)))

(assert (=> b!5460199 (= e!3381202 lt!2230124)))

(declare-fun contextDepth!103 (Context!9342) Int)

(assert (=> b!5460199 (= lt!2230124 (maxBigInt!0 (contextDepth!103 (h!68486 zl!343)) (zipperDepth!188 (t!375391 zl!343))))))

(declare-fun lt!2230122 () Unit!154924)

(declare-fun lambda!289359 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!97 (List!62162 Int Int Int) Unit!154924)

(assert (=> b!5460199 (= lt!2230122 (lemmaForallContextDepthBiggerThanTransitive!97 (t!375391 zl!343) lt!2230124 (zipperDepth!188 (t!375391 zl!343)) lambda!289359))))

(declare-fun forall!14594 (List!62162 Int) Bool)

(assert (=> b!5460199 (forall!14594 (t!375391 zl!343) lambda!289360)))

(declare-fun lt!2230123 () Unit!154924)

(assert (=> b!5460199 (= lt!2230123 lt!2230122)))

(declare-fun b!5460200 () Bool)

(assert (=> b!5460200 (= e!3381202 0)))

(assert (=> b!5460201 (= e!3381203 (forall!14594 zl!343 lambda!289361))))

(assert (= (and d!1738043 c!954088) b!5460199))

(assert (= (and d!1738043 (not c!954088)) b!5460200))

(assert (= (and d!1738043 res!2325635) b!5460201))

(declare-fun m!6481588 () Bool)

(assert (=> b!5460199 m!6481588))

(declare-fun m!6481590 () Bool)

(assert (=> b!5460199 m!6481590))

(declare-fun m!6481592 () Bool)

(assert (=> b!5460199 m!6481592))

(assert (=> b!5460199 m!6481588))

(declare-fun m!6481594 () Bool)

(assert (=> b!5460199 m!6481594))

(assert (=> b!5460199 m!6481588))

(declare-fun m!6481596 () Bool)

(assert (=> b!5460199 m!6481596))

(assert (=> b!5460199 m!6481592))

(declare-fun m!6481598 () Bool)

(assert (=> b!5460201 m!6481598))

(assert (=> b!5459325 d!1738043))

(declare-fun bs!1263666 () Bool)

(declare-fun b!5460204 () Bool)

(assert (= bs!1263666 (and b!5460204 b!5460199)))

(declare-fun lambda!289362 () Int)

(assert (=> bs!1263666 (= lambda!289362 lambda!289359)))

(declare-fun lambda!289363 () Int)

(declare-fun lt!2230128 () Int)

(assert (=> bs!1263666 (= (= lt!2230128 lt!2230124) (= lambda!289363 lambda!289360))))

(declare-fun bs!1263668 () Bool)

(assert (= bs!1263668 (and b!5460204 b!5460201)))

(assert (=> bs!1263668 (= (= lt!2230128 lt!2230121) (= lambda!289363 lambda!289361))))

(assert (=> b!5460204 true))

(declare-fun bs!1263669 () Bool)

(declare-fun b!5460206 () Bool)

(assert (= bs!1263669 (and b!5460206 b!5460199)))

(declare-fun lt!2230125 () Int)

(declare-fun lambda!289364 () Int)

(assert (=> bs!1263669 (= (= lt!2230125 lt!2230124) (= lambda!289364 lambda!289360))))

(declare-fun bs!1263670 () Bool)

(assert (= bs!1263670 (and b!5460206 b!5460201)))

(assert (=> bs!1263670 (= (= lt!2230125 lt!2230121) (= lambda!289364 lambda!289361))))

(declare-fun bs!1263671 () Bool)

(assert (= bs!1263671 (and b!5460206 b!5460204)))

(assert (=> bs!1263671 (= (= lt!2230125 lt!2230128) (= lambda!289364 lambda!289363))))

(assert (=> b!5460206 true))

(declare-fun d!1738061 () Bool)

(declare-fun e!3381205 () Bool)

(assert (=> d!1738061 e!3381205))

(declare-fun res!2325636 () Bool)

(assert (=> d!1738061 (=> (not res!2325636) (not e!3381205))))

(assert (=> d!1738061 (= res!2325636 (>= lt!2230125 0))))

(declare-fun e!3381204 () Int)

(assert (=> d!1738061 (= lt!2230125 e!3381204)))

(declare-fun c!954089 () Bool)

(assert (=> d!1738061 (= c!954089 ((_ is Cons!62038) lt!2229845))))

(assert (=> d!1738061 (= (zipperDepth!188 lt!2229845) lt!2230125)))

(assert (=> b!5460204 (= e!3381204 lt!2230128)))

(assert (=> b!5460204 (= lt!2230128 (maxBigInt!0 (contextDepth!103 (h!68486 lt!2229845)) (zipperDepth!188 (t!375391 lt!2229845))))))

(declare-fun lt!2230126 () Unit!154924)

(assert (=> b!5460204 (= lt!2230126 (lemmaForallContextDepthBiggerThanTransitive!97 (t!375391 lt!2229845) lt!2230128 (zipperDepth!188 (t!375391 lt!2229845)) lambda!289362))))

(assert (=> b!5460204 (forall!14594 (t!375391 lt!2229845) lambda!289363)))

(declare-fun lt!2230127 () Unit!154924)

(assert (=> b!5460204 (= lt!2230127 lt!2230126)))

(declare-fun b!5460205 () Bool)

(assert (=> b!5460205 (= e!3381204 0)))

(assert (=> b!5460206 (= e!3381205 (forall!14594 lt!2229845 lambda!289364))))

(assert (= (and d!1738061 c!954089) b!5460204))

(assert (= (and d!1738061 (not c!954089)) b!5460205))

(assert (= (and d!1738061 res!2325636) b!5460206))

(declare-fun m!6481610 () Bool)

(assert (=> b!5460204 m!6481610))

(declare-fun m!6481612 () Bool)

(assert (=> b!5460204 m!6481612))

(declare-fun m!6481614 () Bool)

(assert (=> b!5460204 m!6481614))

(assert (=> b!5460204 m!6481610))

(declare-fun m!6481616 () Bool)

(assert (=> b!5460204 m!6481616))

(assert (=> b!5460204 m!6481610))

(declare-fun m!6481618 () Bool)

(assert (=> b!5460204 m!6481618))

(assert (=> b!5460204 m!6481614))

(declare-fun m!6481620 () Bool)

(assert (=> b!5460206 m!6481620))

(assert (=> b!5459325 d!1738061))

(declare-fun b!5460207 () Bool)

(declare-fun res!2325638 () Bool)

(declare-fun e!3381209 () Bool)

(assert (=> b!5460207 (=> res!2325638 e!3381209)))

(assert (=> b!5460207 (= res!2325638 (not ((_ is ElementMatch!15287) (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))))))))

(declare-fun e!3381206 () Bool)

(assert (=> b!5460207 (= e!3381206 e!3381209)))

(declare-fun b!5460208 () Bool)

(declare-fun e!3381212 () Bool)

(assert (=> b!5460208 (= e!3381212 (= (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))) (c!953823 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))))))))

(declare-fun b!5460209 () Bool)

(declare-fun e!3381207 () Bool)

(assert (=> b!5460209 (= e!3381207 (nullable!5456 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794))))))))

(declare-fun b!5460210 () Bool)

(declare-fun e!3381210 () Bool)

(declare-fun e!3381211 () Bool)

(assert (=> b!5460210 (= e!3381210 e!3381211)))

(declare-fun res!2325637 () Bool)

(assert (=> b!5460210 (=> res!2325637 e!3381211)))

(declare-fun call!400629 () Bool)

(assert (=> b!5460210 (= res!2325637 call!400629)))

(declare-fun b!5460211 () Bool)

(declare-fun res!2325643 () Bool)

(assert (=> b!5460211 (=> res!2325643 e!3381211)))

(assert (=> b!5460211 (= res!2325643 (not (isEmpty!34025 (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))))))))

(declare-fun d!1738067 () Bool)

(declare-fun e!3381208 () Bool)

(assert (=> d!1738067 e!3381208))

(declare-fun c!954092 () Bool)

(assert (=> d!1738067 (= c!954092 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794))))))))

(declare-fun lt!2230129 () Bool)

(assert (=> d!1738067 (= lt!2230129 e!3381207)))

(declare-fun c!954091 () Bool)

(assert (=> d!1738067 (= c!954091 (isEmpty!34025 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))))))

(assert (=> d!1738067 (validRegex!7023 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))))))

(assert (=> d!1738067 (= (matchR!7472 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))) lt!2230129)))

(declare-fun b!5460212 () Bool)

(declare-fun res!2325639 () Bool)

(assert (=> b!5460212 (=> (not res!2325639) (not e!3381212))))

(assert (=> b!5460212 (= res!2325639 (isEmpty!34025 (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036))))))))

(declare-fun b!5460213 () Bool)

(assert (=> b!5460213 (= e!3381207 (matchR!7472 (derivativeStep!4308 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794)))) (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036))))) (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036))))))))

(declare-fun b!5460214 () Bool)

(assert (=> b!5460214 (= e!3381206 (not lt!2230129))))

(declare-fun b!5460215 () Bool)

(declare-fun res!2325641 () Bool)

(assert (=> b!5460215 (=> res!2325641 e!3381209)))

(assert (=> b!5460215 (= res!2325641 e!3381212)))

(declare-fun res!2325644 () Bool)

(assert (=> b!5460215 (=> (not res!2325644) (not e!3381212))))

(assert (=> b!5460215 (= res!2325644 lt!2230129)))

(declare-fun b!5460216 () Bool)

(declare-fun res!2325642 () Bool)

(assert (=> b!5460216 (=> (not res!2325642) (not e!3381212))))

(assert (=> b!5460216 (= res!2325642 (not call!400629))))

(declare-fun b!5460217 () Bool)

(assert (=> b!5460217 (= e!3381211 (not (= (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))) (c!953823 (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794))))))))))

(declare-fun b!5460218 () Bool)

(assert (=> b!5460218 (= e!3381208 e!3381206)))

(declare-fun c!954090 () Bool)

(assert (=> b!5460218 (= c!954090 ((_ is EmptyLang!15287) (ite c!953819 lt!2229759 (ite c!953812 (Concat!24132 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) lt!2229912) (ite c!953814 lt!2229756 (ite (or c!953817 c!953822) lt!2229792 lt!2229794))))))))

(declare-fun bm!400624 () Bool)

(assert (=> bm!400624 (= call!400629 (isEmpty!34025 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953817 lt!2229876 (ite c!953822 lt!2229841 Nil!62036)))))))

(declare-fun b!5460219 () Bool)

(assert (=> b!5460219 (= e!3381208 (= lt!2230129 call!400629))))

(declare-fun b!5460220 () Bool)

(assert (=> b!5460220 (= e!3381209 e!3381210)))

(declare-fun res!2325640 () Bool)

(assert (=> b!5460220 (=> (not res!2325640) (not e!3381210))))

(assert (=> b!5460220 (= res!2325640 (not lt!2230129))))

(assert (= (and d!1738067 c!954091) b!5460209))

(assert (= (and d!1738067 (not c!954091)) b!5460213))

(assert (= (and d!1738067 c!954092) b!5460219))

(assert (= (and d!1738067 (not c!954092)) b!5460218))

(assert (= (and b!5460218 c!954090) b!5460214))

(assert (= (and b!5460218 (not c!954090)) b!5460207))

(assert (= (and b!5460207 (not res!2325638)) b!5460215))

(assert (= (and b!5460215 res!2325644) b!5460216))

(assert (= (and b!5460216 res!2325642) b!5460212))

(assert (= (and b!5460212 res!2325639) b!5460208))

(assert (= (and b!5460215 (not res!2325641)) b!5460220))

(assert (= (and b!5460220 res!2325640) b!5460210))

(assert (= (and b!5460210 (not res!2325637)) b!5460211))

(assert (= (and b!5460211 (not res!2325643)) b!5460217))

(assert (= (or b!5460219 b!5460210 b!5460216) bm!400624))

(declare-fun m!6481622 () Bool)

(assert (=> b!5460212 m!6481622))

(assert (=> b!5460212 m!6481622))

(declare-fun m!6481624 () Bool)

(assert (=> b!5460212 m!6481624))

(declare-fun m!6481626 () Bool)

(assert (=> b!5460209 m!6481626))

(declare-fun m!6481628 () Bool)

(assert (=> d!1738067 m!6481628))

(declare-fun m!6481630 () Bool)

(assert (=> d!1738067 m!6481630))

(assert (=> b!5460211 m!6481622))

(assert (=> b!5460211 m!6481622))

(assert (=> b!5460211 m!6481624))

(assert (=> bm!400624 m!6481628))

(declare-fun m!6481632 () Bool)

(assert (=> b!5460208 m!6481632))

(assert (=> b!5460217 m!6481632))

(assert (=> b!5460213 m!6481632))

(assert (=> b!5460213 m!6481632))

(declare-fun m!6481634 () Bool)

(assert (=> b!5460213 m!6481634))

(assert (=> b!5460213 m!6481622))

(assert (=> b!5460213 m!6481634))

(assert (=> b!5460213 m!6481622))

(declare-fun m!6481636 () Bool)

(assert (=> b!5460213 m!6481636))

(assert (=> bm!400408 d!1738067))

(declare-fun d!1738069 () Bool)

(assert (=> d!1738069 (= (++!13653 (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902))) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))) (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (++!13653 (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728)))))))

(declare-fun lt!2230132 () Unit!154924)

(declare-fun choose!41512 (List!62160 List!62160 List!62160) Unit!154924)

(assert (=> d!1738069 (= lt!2230132 (choose!41512 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))))))

(assert (=> d!1738069 (= (lemmaConcatAssociativity!2864 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))) lt!2230132)))

(declare-fun bs!1263672 () Bool)

(assert (= bs!1263672 d!1738069))

(assert (=> bs!1263672 m!6481382))

(assert (=> bs!1263672 m!6481382))

(declare-fun m!6481638 () Bool)

(assert (=> bs!1263672 m!6481638))

(declare-fun m!6481640 () Bool)

(assert (=> bs!1263672 m!6481640))

(assert (=> bs!1263672 m!6481640))

(declare-fun m!6481642 () Bool)

(assert (=> bs!1263672 m!6481642))

(declare-fun m!6481644 () Bool)

(assert (=> bs!1263672 m!6481644))

(assert (=> bm!400391 d!1738069))

(declare-fun e!3381227 () Bool)

(declare-fun d!1738071 () Bool)

(assert (=> d!1738071 (= (matchZipper!1531 ((_ map or) lt!2229853 lt!2229838) (t!375389 s!2326)) e!3381227)))

(declare-fun res!2325651 () Bool)

(assert (=> d!1738071 (=> res!2325651 e!3381227)))

(assert (=> d!1738071 (= res!2325651 (matchZipper!1531 lt!2229853 (t!375389 s!2326)))))

(declare-fun lt!2230133 () Unit!154924)

(assert (=> d!1738071 (= lt!2230133 (choose!41482 lt!2229853 lt!2229838 (t!375389 s!2326)))))

(assert (=> d!1738071 (= (lemmaZipperConcatMatchesSameAsBothZippers!524 lt!2229853 lt!2229838 (t!375389 s!2326)) lt!2230133)))

(declare-fun b!5460243 () Bool)

(assert (=> b!5460243 (= e!3381227 (matchZipper!1531 lt!2229838 (t!375389 s!2326)))))

(assert (= (and d!1738071 (not res!2325651)) b!5460243))

(declare-fun m!6481646 () Bool)

(assert (=> d!1738071 m!6481646))

(declare-fun m!6481648 () Bool)

(assert (=> d!1738071 m!6481648))

(declare-fun m!6481650 () Bool)

(assert (=> d!1738071 m!6481650))

(assert (=> b!5460243 m!6480474))

(assert (=> b!5459339 d!1738071))

(declare-fun bs!1263673 () Bool)

(declare-fun d!1738073 () Bool)

(assert (= bs!1263673 (and d!1738073 d!1737787)))

(declare-fun lambda!289365 () Int)

(assert (=> bs!1263673 (= lambda!289365 lambda!289286)))

(declare-fun bs!1263674 () Bool)

(assert (= bs!1263674 (and d!1738073 d!1737923)))

(assert (=> bs!1263674 (= lambda!289365 lambda!289323)))

(declare-fun bs!1263675 () Bool)

(assert (= bs!1263675 (and d!1738073 b!5459307)))

(assert (=> bs!1263675 (= lambda!289365 lambda!289275)))

(declare-fun bs!1263676 () Bool)

(assert (= bs!1263676 (and d!1738073 b!5459299)))

(assert (=> bs!1263676 (= lambda!289365 lambda!289273)))

(declare-fun bs!1263677 () Bool)

(assert (= bs!1263677 (and d!1738073 d!1737965)))

(assert (=> bs!1263677 (= lambda!289365 lambda!289344)))

(declare-fun bs!1263678 () Bool)

(assert (= bs!1263678 (and d!1738073 d!1737949)))

(assert (=> bs!1263678 (= lambda!289365 lambda!289336)))

(declare-fun bs!1263679 () Bool)

(assert (= bs!1263679 (and d!1738073 d!1737869)))

(assert (=> bs!1263679 (= lambda!289365 lambda!289308)))

(declare-fun b!5460244 () Bool)

(declare-fun e!3381231 () Regex!15287)

(declare-fun e!3381229 () Regex!15287)

(assert (=> b!5460244 (= e!3381231 e!3381229)))

(declare-fun c!954103 () Bool)

(assert (=> b!5460244 (= c!954103 ((_ is Cons!62037) (ite c!953812 lt!2229758 lt!2229747)))))

(declare-fun b!5460245 () Bool)

(declare-fun e!3381228 () Bool)

(declare-fun e!3381232 () Bool)

(assert (=> b!5460245 (= e!3381228 e!3381232)))

(declare-fun c!954102 () Bool)

(assert (=> b!5460245 (= c!954102 (isEmpty!34024 (tail!10790 (ite c!953812 lt!2229758 lt!2229747))))))

(declare-fun b!5460246 () Bool)

(assert (=> b!5460246 (= e!3381231 (h!68485 (ite c!953812 lt!2229758 lt!2229747)))))

(declare-fun b!5460247 () Bool)

(declare-fun lt!2230134 () Regex!15287)

(assert (=> b!5460247 (= e!3381228 (isEmptyExpr!1019 lt!2230134))))

(declare-fun b!5460248 () Bool)

(assert (=> b!5460248 (= e!3381232 (= lt!2230134 (head!11693 (ite c!953812 lt!2229758 lt!2229747))))))

(declare-fun b!5460249 () Bool)

(declare-fun e!3381230 () Bool)

(assert (=> b!5460249 (= e!3381230 (isEmpty!34024 (t!375390 (ite c!953812 lt!2229758 lt!2229747))))))

(declare-fun e!3381233 () Bool)

(assert (=> d!1738073 e!3381233))

(declare-fun res!2325652 () Bool)

(assert (=> d!1738073 (=> (not res!2325652) (not e!3381233))))

(assert (=> d!1738073 (= res!2325652 (validRegex!7023 lt!2230134))))

(assert (=> d!1738073 (= lt!2230134 e!3381231)))

(declare-fun c!954101 () Bool)

(assert (=> d!1738073 (= c!954101 e!3381230)))

(declare-fun res!2325653 () Bool)

(assert (=> d!1738073 (=> (not res!2325653) (not e!3381230))))

(assert (=> d!1738073 (= res!2325653 ((_ is Cons!62037) (ite c!953812 lt!2229758 lt!2229747)))))

(assert (=> d!1738073 (forall!14591 (ite c!953812 lt!2229758 lt!2229747) lambda!289365)))

(assert (=> d!1738073 (= (generalisedConcat!956 (ite c!953812 lt!2229758 lt!2229747)) lt!2230134)))

(declare-fun b!5460250 () Bool)

(assert (=> b!5460250 (= e!3381229 EmptyExpr!15287)))

(declare-fun b!5460251 () Bool)

(assert (=> b!5460251 (= e!3381232 (isConcat!542 lt!2230134))))

(declare-fun b!5460252 () Bool)

(assert (=> b!5460252 (= e!3381229 (Concat!24132 (h!68485 (ite c!953812 lt!2229758 lt!2229747)) (generalisedConcat!956 (t!375390 (ite c!953812 lt!2229758 lt!2229747)))))))

(declare-fun b!5460253 () Bool)

(assert (=> b!5460253 (= e!3381233 e!3381228)))

(declare-fun c!954104 () Bool)

(assert (=> b!5460253 (= c!954104 (isEmpty!34024 (ite c!953812 lt!2229758 lt!2229747)))))

(assert (= (and d!1738073 res!2325653) b!5460249))

(assert (= (and d!1738073 c!954101) b!5460246))

(assert (= (and d!1738073 (not c!954101)) b!5460244))

(assert (= (and b!5460244 c!954103) b!5460252))

(assert (= (and b!5460244 (not c!954103)) b!5460250))

(assert (= (and d!1738073 res!2325652) b!5460253))

(assert (= (and b!5460253 c!954104) b!5460247))

(assert (= (and b!5460253 (not c!954104)) b!5460245))

(assert (= (and b!5460245 c!954102) b!5460248))

(assert (= (and b!5460245 (not c!954102)) b!5460251))

(declare-fun m!6481652 () Bool)

(assert (=> b!5460247 m!6481652))

(declare-fun m!6481654 () Bool)

(assert (=> b!5460248 m!6481654))

(declare-fun m!6481656 () Bool)

(assert (=> b!5460252 m!6481656))

(declare-fun m!6481658 () Bool)

(assert (=> b!5460249 m!6481658))

(declare-fun m!6481660 () Bool)

(assert (=> b!5460251 m!6481660))

(declare-fun m!6481662 () Bool)

(assert (=> b!5460245 m!6481662))

(assert (=> b!5460245 m!6481662))

(declare-fun m!6481664 () Bool)

(assert (=> b!5460245 m!6481664))

(declare-fun m!6481666 () Bool)

(assert (=> d!1738073 m!6481666))

(declare-fun m!6481668 () Bool)

(assert (=> d!1738073 m!6481668))

(declare-fun m!6481670 () Bool)

(assert (=> b!5460253 m!6481670))

(assert (=> bm!400442 d!1738073))

(declare-fun d!1738075 () Bool)

(assert (=> d!1738075 (= (Exists!2468 (ite c!953817 lambda!289268 lambda!289278)) (choose!41483 (ite c!953817 lambda!289268 lambda!289278)))))

(declare-fun bs!1263680 () Bool)

(assert (= bs!1263680 d!1738075))

(declare-fun m!6481672 () Bool)

(assert (=> bs!1263680 m!6481672))

(assert (=> bm!400311 d!1738075))

(declare-fun bs!1263692 () Bool)

(declare-fun d!1738077 () Bool)

(assert (= bs!1263692 (and d!1738077 b!5459302)))

(declare-fun lambda!289375 () Int)

(assert (=> bs!1263692 (not (= lambda!289375 lambda!289282))))

(declare-fun bs!1263694 () Bool)

(assert (= bs!1263694 (and d!1738077 d!1737855)))

(assert (=> bs!1263694 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289375 lambda!289293))))

(declare-fun bs!1263696 () Bool)

(assert (= bs!1263696 (and d!1738077 b!5459299)))

(assert (=> bs!1263696 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (_1!35789 lt!2229844)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289375 lambda!289270))))

(declare-fun bs!1263697 () Bool)

(assert (= bs!1263697 (and d!1738077 b!5459286)))

(assert (=> bs!1263697 (not (= lambda!289375 lambda!289261))))

(declare-fun bs!1263698 () Bool)

(assert (= bs!1263698 (and d!1738077 b!5459307)))

(assert (=> bs!1263698 (not (= lambda!289375 lambda!289279))))

(declare-fun bs!1263700 () Bool)

(assert (= bs!1263700 (and d!1738077 b!5459320)))

(assert (=> bs!1263700 (not (= lambda!289375 lambda!289265))))

(assert (=> bs!1263692 (not (= lambda!289375 lambda!289283))))

(assert (=> bs!1263697 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229912)) (= lambda!289375 lambda!289262))))

(declare-fun bs!1263704 () Bool)

(assert (= bs!1263704 (and d!1738077 b!5460143)))

(assert (=> bs!1263704 (not (= lambda!289375 lambda!289351))))

(assert (=> bs!1263696 (not (= lambda!289375 lambda!289272))))

(assert (=> bs!1263698 (not (= lambda!289375 lambda!289280))))

(assert (=> bs!1263698 (not (= lambda!289375 lambda!289277))))

(assert (=> bs!1263700 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229767)) (= lambda!289375 lambda!289264))))

(declare-fun bs!1263708 () Bool)

(assert (= bs!1263708 (and d!1738077 b!5460142)))

(assert (=> bs!1263708 (not (= lambda!289375 lambda!289350))))

(assert (=> bs!1263697 (not (= lambda!289375 lambda!289263))))

(declare-fun bs!1263711 () Bool)

(assert (= bs!1263711 (and d!1738077 b!5459662)))

(assert (=> bs!1263711 (not (= lambda!289375 lambda!289301))))

(declare-fun bs!1263712 () Bool)

(assert (= bs!1263712 (and d!1738077 b!5459333)))

(assert (=> bs!1263712 (not (= lambda!289375 lambda!289269))))

(assert (=> bs!1263697 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 (regOne!31086 r!7292))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229727)) (= lambda!289375 lambda!289260))))

(assert (=> bs!1263692 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) Nil!62036) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289375 lambda!289281))))

(assert (=> bs!1263698 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229788) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289375 lambda!289276))))

(declare-fun bs!1263714 () Bool)

(assert (= bs!1263714 (and d!1738077 b!5459661)))

(assert (=> bs!1263714 (not (= lambda!289375 lambda!289298))))

(declare-fun bs!1263715 () Bool)

(assert (= bs!1263715 (and d!1738077 b!5459292)))

(assert (=> bs!1263715 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regOne!31086 r!7292)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289375 lambda!289257))))

(assert (=> bs!1263698 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (_1!35789 lt!2229728)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289375 lambda!289278))))

(assert (=> bs!1263696 (not (= lambda!289375 lambda!289271))))

(declare-fun bs!1263716 () Bool)

(assert (= bs!1263716 (and d!1738077 d!1737983)))

(assert (=> bs!1263716 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (reg!15616 (regOne!31086 r!7292)) (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)))) (= lambda!289375 lambda!289346))))

(assert (=> bs!1263700 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (regTwo!31086 (regOne!31086 r!7292))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229863)) (= lambda!289375 lambda!289266))))

(declare-fun bs!1263717 () Bool)

(assert (= bs!1263717 (and d!1738077 d!1737877)))

(assert (=> bs!1263717 (not (= lambda!289375 lambda!289315))))

(assert (=> bs!1263700 (not (= lambda!289375 lambda!289267))))

(assert (=> bs!1263715 (not (= lambda!289375 lambda!289258))))

(assert (=> bs!1263712 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) lt!2229794) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289375 lambda!289268))))

(assert (=> bs!1263717 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (reg!15616 (regOne!31086 r!7292)) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289375 lambda!289314))))

(assert (=> d!1738077 true))

(assert (=> d!1738077 true))

(declare-fun lambda!289377 () Int)

(assert (=> bs!1263692 (not (= lambda!289377 lambda!289282))))

(assert (=> bs!1263694 (not (= lambda!289377 lambda!289293))))

(assert (=> bs!1263696 (not (= lambda!289377 lambda!289270))))

(assert (=> bs!1263697 (not (= lambda!289377 lambda!289261))))

(assert (=> bs!1263698 (not (= lambda!289377 lambda!289279))))

(declare-fun bs!1263718 () Bool)

(assert (= bs!1263718 d!1738077))

(assert (=> bs!1263718 (not (= lambda!289377 lambda!289375))))

(assert (=> bs!1263700 (not (= lambda!289377 lambda!289265))))

(assert (=> bs!1263692 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) Nil!62036) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289377 lambda!289283))))

(assert (=> bs!1263697 (not (= lambda!289377 lambda!289262))))

(assert (=> bs!1263704 (not (= lambda!289377 lambda!289351))))

(assert (=> bs!1263696 (not (= lambda!289377 lambda!289272))))

(assert (=> bs!1263698 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (_1!35789 lt!2229728)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289377 lambda!289280))))

(assert (=> bs!1263698 (not (= lambda!289377 lambda!289277))))

(assert (=> bs!1263700 (not (= lambda!289377 lambda!289264))))

(assert (=> bs!1263708 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (reg!15616 r!7292)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) r!7292)) (= lambda!289377 lambda!289350))))

(assert (=> bs!1263697 (not (= lambda!289377 lambda!289263))))

(assert (=> bs!1263711 (not (= lambda!289377 lambda!289301))))

(assert (=> bs!1263712 (not (= lambda!289377 lambda!289269))))

(assert (=> bs!1263697 (not (= lambda!289377 lambda!289260))))

(assert (=> bs!1263692 (not (= lambda!289377 lambda!289281))))

(assert (=> bs!1263698 (not (= lambda!289377 lambda!289276))))

(assert (=> bs!1263714 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326) (= (reg!15616 (regOne!31086 r!7292)) (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lambda!289377 lambda!289298))))

(assert (=> bs!1263715 (not (= lambda!289377 lambda!289257))))

(assert (=> bs!1263698 (not (= lambda!289377 lambda!289278))))

(assert (=> bs!1263696 (= (and (= (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) (_1!35789 lt!2229844)) (= (Star!15287 (reg!15616 (regOne!31086 r!7292))) lt!2229794)) (= lambda!289377 lambda!289271))))

(assert (=> bs!1263716 (not (= lambda!289377 lambda!289346))))

(assert (=> bs!1263700 (not (= lambda!289377 lambda!289266))))

(assert (=> bs!1263717 (not (= lambda!289377 lambda!289315))))

(assert (=> bs!1263700 (not (= lambda!289377 lambda!289267))))

(assert (=> bs!1263715 (not (= lambda!289377 lambda!289258))))

(assert (=> bs!1263712 (not (= lambda!289377 lambda!289268))))

(assert (=> bs!1263717 (not (= lambda!289377 lambda!289314))))

(assert (=> d!1738077 true))

(assert (=> d!1738077 true))

(assert (=> d!1738077 (= (Exists!2468 lambda!289375) (Exists!2468 lambda!289377))))

(declare-fun lt!2230137 () Unit!154924)

(declare-fun choose!41513 (Regex!15287 List!62160) Unit!154924)

(assert (=> d!1738077 (= lt!2230137 (choose!41513 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))))))

(assert (=> d!1738077 (validRegex!7023 (reg!15616 (regOne!31086 r!7292)))))

(assert (=> d!1738077 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!444 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) lt!2230137)))

(declare-fun m!6481680 () Bool)

(assert (=> bs!1263718 m!6481680))

(declare-fun m!6481682 () Bool)

(assert (=> bs!1263718 m!6481682))

(declare-fun m!6481684 () Bool)

(assert (=> bs!1263718 m!6481684))

(declare-fun m!6481686 () Bool)

(assert (=> bs!1263718 m!6481686))

(assert (=> bm!400405 d!1738077))

(declare-fun bs!1263719 () Bool)

(declare-fun d!1738081 () Bool)

(assert (= bs!1263719 (and d!1738081 d!1737787)))

(declare-fun lambda!289380 () Int)

(assert (=> bs!1263719 (= lambda!289380 lambda!289286)))

(declare-fun bs!1263720 () Bool)

(assert (= bs!1263720 (and d!1738081 d!1738073)))

(assert (=> bs!1263720 (= lambda!289380 lambda!289365)))

(declare-fun bs!1263721 () Bool)

(assert (= bs!1263721 (and d!1738081 d!1737923)))

(assert (=> bs!1263721 (= lambda!289380 lambda!289323)))

(declare-fun bs!1263722 () Bool)

(assert (= bs!1263722 (and d!1738081 b!5459307)))

(assert (=> bs!1263722 (= lambda!289380 lambda!289275)))

(declare-fun bs!1263723 () Bool)

(assert (= bs!1263723 (and d!1738081 b!5459299)))

(assert (=> bs!1263723 (= lambda!289380 lambda!289273)))

(declare-fun bs!1263724 () Bool)

(assert (= bs!1263724 (and d!1738081 d!1737965)))

(assert (=> bs!1263724 (= lambda!289380 lambda!289344)))

(declare-fun bs!1263725 () Bool)

(assert (= bs!1263725 (and d!1738081 d!1737949)))

(assert (=> bs!1263725 (= lambda!289380 lambda!289336)))

(declare-fun bs!1263726 () Bool)

(assert (= bs!1263726 (and d!1738081 d!1737869)))

(assert (=> bs!1263726 (= lambda!289380 lambda!289308)))

(declare-fun b!5460285 () Bool)

(declare-fun e!3381252 () Regex!15287)

(declare-fun e!3381250 () Regex!15287)

(assert (=> b!5460285 (= e!3381252 e!3381250)))

(declare-fun c!954111 () Bool)

(assert (=> b!5460285 (= c!954111 ((_ is Cons!62037) (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5460286 () Bool)

(declare-fun e!3381249 () Bool)

(declare-fun e!3381253 () Bool)

(assert (=> b!5460286 (= e!3381249 e!3381253)))

(declare-fun c!954110 () Bool)

(assert (=> b!5460286 (= c!954110 (isEmpty!34024 (tail!10790 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))

(declare-fun b!5460287 () Bool)

(assert (=> b!5460287 (= e!3381252 (h!68485 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5460288 () Bool)

(declare-fun lt!2230138 () Regex!15287)

(assert (=> b!5460288 (= e!3381249 (isEmptyExpr!1019 lt!2230138))))

(declare-fun b!5460289 () Bool)

(assert (=> b!5460289 (= e!3381253 (= lt!2230138 (head!11693 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))

(declare-fun e!3381251 () Bool)

(declare-fun b!5460290 () Bool)

(assert (=> b!5460290 (= e!3381251 (isEmpty!34024 (t!375390 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343)))))))))

(declare-fun e!3381254 () Bool)

(assert (=> d!1738081 e!3381254))

(declare-fun res!2325677 () Bool)

(assert (=> d!1738081 (=> (not res!2325677) (not e!3381254))))

(assert (=> d!1738081 (= res!2325677 (validRegex!7023 lt!2230138))))

(assert (=> d!1738081 (= lt!2230138 e!3381252)))

(declare-fun c!954109 () Bool)

(assert (=> d!1738081 (= c!954109 e!3381251)))

(declare-fun res!2325678 () Bool)

(assert (=> d!1738081 (=> (not res!2325678) (not e!3381251))))

(assert (=> d!1738081 (= res!2325678 ((_ is Cons!62037) (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(assert (=> d!1738081 (forall!14591 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343)))) lambda!289380)))

(assert (=> d!1738081 (= (generalisedConcat!956 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))) lt!2230138)))

(declare-fun b!5460291 () Bool)

(assert (=> b!5460291 (= e!3381250 EmptyExpr!15287)))

(declare-fun b!5460292 () Bool)

(assert (=> b!5460292 (= e!3381253 (isConcat!542 lt!2230138))))

(declare-fun b!5460293 () Bool)

(assert (=> b!5460293 (= e!3381250 (Concat!24132 (h!68485 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))) (generalisedConcat!956 (t!375390 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))))

(declare-fun b!5460294 () Bool)

(assert (=> b!5460294 (= e!3381254 e!3381249)))

(declare-fun c!954112 () Bool)

(assert (=> b!5460294 (= c!954112 (isEmpty!34024 (ite c!953819 lt!2229734 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(assert (= (and d!1738081 res!2325678) b!5460290))

(assert (= (and d!1738081 c!954109) b!5460287))

(assert (= (and d!1738081 (not c!954109)) b!5460285))

(assert (= (and b!5460285 c!954111) b!5460293))

(assert (= (and b!5460285 (not c!954111)) b!5460291))

(assert (= (and d!1738081 res!2325677) b!5460294))

(assert (= (and b!5460294 c!954112) b!5460288))

(assert (= (and b!5460294 (not c!954112)) b!5460286))

(assert (= (and b!5460286 c!954110) b!5460289))

(assert (= (and b!5460286 (not c!954110)) b!5460292))

(declare-fun m!6481688 () Bool)

(assert (=> b!5460288 m!6481688))

(declare-fun m!6481690 () Bool)

(assert (=> b!5460289 m!6481690))

(declare-fun m!6481692 () Bool)

(assert (=> b!5460293 m!6481692))

(declare-fun m!6481694 () Bool)

(assert (=> b!5460290 m!6481694))

(declare-fun m!6481696 () Bool)

(assert (=> b!5460292 m!6481696))

(declare-fun m!6481698 () Bool)

(assert (=> b!5460286 m!6481698))

(assert (=> b!5460286 m!6481698))

(declare-fun m!6481700 () Bool)

(assert (=> b!5460286 m!6481700))

(declare-fun m!6481702 () Bool)

(assert (=> d!1738081 m!6481702))

(declare-fun m!6481704 () Bool)

(assert (=> d!1738081 m!6481704))

(declare-fun m!6481706 () Bool)

(assert (=> b!5460294 m!6481706))

(assert (=> bm!400388 d!1738081))

(declare-fun b!5460315 () Bool)

(declare-fun res!2325684 () Bool)

(declare-fun e!3381270 () Bool)

(assert (=> b!5460315 (=> res!2325684 e!3381270)))

(assert (=> b!5460315 (= res!2325684 (not ((_ is ElementMatch!15287) (reg!15616 (regOne!31086 r!7292)))))))

(declare-fun e!3381267 () Bool)

(assert (=> b!5460315 (= e!3381267 e!3381270)))

(declare-fun e!3381273 () Bool)

(declare-fun b!5460316 () Bool)

(assert (=> b!5460316 (= e!3381273 (= (head!11691 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))) (c!953823 (reg!15616 (regOne!31086 r!7292)))))))

(declare-fun b!5460317 () Bool)

(declare-fun e!3381268 () Bool)

(assert (=> b!5460317 (= e!3381268 (nullable!5456 (reg!15616 (regOne!31086 r!7292))))))

(declare-fun b!5460318 () Bool)

(declare-fun e!3381271 () Bool)

(declare-fun e!3381272 () Bool)

(assert (=> b!5460318 (= e!3381271 e!3381272)))

(declare-fun res!2325683 () Bool)

(assert (=> b!5460318 (=> res!2325683 e!3381272)))

(declare-fun call!400636 () Bool)

(assert (=> b!5460318 (= res!2325683 call!400636)))

(declare-fun b!5460319 () Bool)

(declare-fun res!2325689 () Bool)

(assert (=> b!5460319 (=> res!2325689 e!3381272)))

(assert (=> b!5460319 (= res!2325689 (not (isEmpty!34025 (tail!10788 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))))))))

(declare-fun d!1738083 () Bool)

(declare-fun e!3381269 () Bool)

(assert (=> d!1738083 e!3381269))

(declare-fun c!954123 () Bool)

(assert (=> d!1738083 (= c!954123 ((_ is EmptyExpr!15287) (reg!15616 (regOne!31086 r!7292))))))

(declare-fun lt!2230141 () Bool)

(assert (=> d!1738083 (= lt!2230141 e!3381268)))

(declare-fun c!954122 () Bool)

(assert (=> d!1738083 (= c!954122 (isEmpty!34025 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))))))

(assert (=> d!1738083 (validRegex!7023 (reg!15616 (regOne!31086 r!7292)))))

(assert (=> d!1738083 (= (matchR!7472 (reg!15616 (regOne!31086 r!7292)) (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))) lt!2230141)))

(declare-fun b!5460320 () Bool)

(declare-fun res!2325685 () Bool)

(assert (=> b!5460320 (=> (not res!2325685) (not e!3381273))))

(assert (=> b!5460320 (= res!2325685 (isEmpty!34025 (tail!10788 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)))))))

(declare-fun b!5460321 () Bool)

(assert (=> b!5460321 (= e!3381268 (matchR!7472 (derivativeStep!4308 (reg!15616 (regOne!31086 r!7292)) (head!11691 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)))) (tail!10788 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738)))))))

(declare-fun b!5460322 () Bool)

(assert (=> b!5460322 (= e!3381267 (not lt!2230141))))

(declare-fun b!5460323 () Bool)

(declare-fun res!2325687 () Bool)

(assert (=> b!5460323 (=> res!2325687 e!3381270)))

(assert (=> b!5460323 (= res!2325687 e!3381273)))

(declare-fun res!2325690 () Bool)

(assert (=> b!5460323 (=> (not res!2325690) (not e!3381273))))

(assert (=> b!5460323 (= res!2325690 lt!2230141)))

(declare-fun b!5460324 () Bool)

(declare-fun res!2325688 () Bool)

(assert (=> b!5460324 (=> (not res!2325688) (not e!3381273))))

(assert (=> b!5460324 (= res!2325688 (not call!400636))))

(declare-fun b!5460325 () Bool)

(assert (=> b!5460325 (= e!3381272 (not (= (head!11691 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))) (c!953823 (reg!15616 (regOne!31086 r!7292))))))))

(declare-fun b!5460326 () Bool)

(assert (=> b!5460326 (= e!3381269 e!3381267)))

(declare-fun c!954121 () Bool)

(assert (=> b!5460326 (= c!954121 ((_ is EmptyLang!15287) (reg!15616 (regOne!31086 r!7292))))))

(declare-fun bm!400631 () Bool)

(assert (=> bm!400631 (= call!400636 (isEmpty!34025 (ite c!953817 (_1!35789 lt!2229919) (_1!35789 lt!2229738))))))

(declare-fun b!5460327 () Bool)

(assert (=> b!5460327 (= e!3381269 (= lt!2230141 call!400636))))

(declare-fun b!5460328 () Bool)

(assert (=> b!5460328 (= e!3381270 e!3381271)))

(declare-fun res!2325686 () Bool)

(assert (=> b!5460328 (=> (not res!2325686) (not e!3381271))))

(assert (=> b!5460328 (= res!2325686 (not lt!2230141))))

(assert (= (and d!1738083 c!954122) b!5460317))

(assert (= (and d!1738083 (not c!954122)) b!5460321))

(assert (= (and d!1738083 c!954123) b!5460327))

(assert (= (and d!1738083 (not c!954123)) b!5460326))

(assert (= (and b!5460326 c!954121) b!5460322))

(assert (= (and b!5460326 (not c!954121)) b!5460315))

(assert (= (and b!5460315 (not res!2325684)) b!5460323))

(assert (= (and b!5460323 res!2325690) b!5460324))

(assert (= (and b!5460324 res!2325688) b!5460320))

(assert (= (and b!5460320 res!2325685) b!5460316))

(assert (= (and b!5460323 (not res!2325687)) b!5460328))

(assert (= (and b!5460328 res!2325686) b!5460318))

(assert (= (and b!5460318 (not res!2325683)) b!5460319))

(assert (= (and b!5460319 (not res!2325689)) b!5460325))

(assert (= (or b!5460327 b!5460318 b!5460324) bm!400631))

(declare-fun m!6481708 () Bool)

(assert (=> b!5460320 m!6481708))

(assert (=> b!5460320 m!6481708))

(declare-fun m!6481710 () Bool)

(assert (=> b!5460320 m!6481710))

(declare-fun m!6481712 () Bool)

(assert (=> b!5460317 m!6481712))

(declare-fun m!6481714 () Bool)

(assert (=> d!1738083 m!6481714))

(assert (=> d!1738083 m!6481686))

(assert (=> b!5460319 m!6481708))

(assert (=> b!5460319 m!6481708))

(assert (=> b!5460319 m!6481710))

(assert (=> bm!400631 m!6481714))

(declare-fun m!6481716 () Bool)

(assert (=> b!5460316 m!6481716))

(assert (=> b!5460325 m!6481716))

(assert (=> b!5460321 m!6481716))

(assert (=> b!5460321 m!6481716))

(declare-fun m!6481718 () Bool)

(assert (=> b!5460321 m!6481718))

(assert (=> b!5460321 m!6481708))

(assert (=> b!5460321 m!6481718))

(assert (=> b!5460321 m!6481708))

(declare-fun m!6481720 () Bool)

(assert (=> b!5460321 m!6481720))

(assert (=> bm!400375 d!1738083))

(declare-fun d!1738085 () Bool)

(declare-fun c!954124 () Bool)

(assert (=> d!1738085 (= c!954124 (isEmpty!34025 (ite (or c!953819 c!953812) s!2326 (ite (and c!953816 c!953817) (ite c!953815 s!2326 lt!2229897) s!2326))))))

(declare-fun e!3381274 () Bool)

(assert (=> d!1738085 (= (matchZipper!1531 (ite (or c!953819 c!953812) z!1189 (ite (and c!953816 c!953817) (ite c!953815 lt!2229816 lt!2229886) z!1189)) (ite (or c!953819 c!953812) s!2326 (ite (and c!953816 c!953817) (ite c!953815 s!2326 lt!2229897) s!2326))) e!3381274)))

(declare-fun b!5460329 () Bool)

(assert (=> b!5460329 (= e!3381274 (nullableZipper!1487 (ite (or c!953819 c!953812) z!1189 (ite (and c!953816 c!953817) (ite c!953815 lt!2229816 lt!2229886) z!1189))))))

(declare-fun b!5460330 () Bool)

(assert (=> b!5460330 (= e!3381274 (matchZipper!1531 (derivationStepZipper!1506 (ite (or c!953819 c!953812) z!1189 (ite (and c!953816 c!953817) (ite c!953815 lt!2229816 lt!2229886) z!1189)) (head!11691 (ite (or c!953819 c!953812) s!2326 (ite (and c!953816 c!953817) (ite c!953815 s!2326 lt!2229897) s!2326)))) (tail!10788 (ite (or c!953819 c!953812) s!2326 (ite (and c!953816 c!953817) (ite c!953815 s!2326 lt!2229897) s!2326)))))))

(assert (= (and d!1738085 c!954124) b!5460329))

(assert (= (and d!1738085 (not c!954124)) b!5460330))

(declare-fun m!6481722 () Bool)

(assert (=> d!1738085 m!6481722))

(declare-fun m!6481724 () Bool)

(assert (=> b!5460329 m!6481724))

(declare-fun m!6481726 () Bool)

(assert (=> b!5460330 m!6481726))

(assert (=> b!5460330 m!6481726))

(declare-fun m!6481728 () Bool)

(assert (=> b!5460330 m!6481728))

(declare-fun m!6481730 () Bool)

(assert (=> b!5460330 m!6481730))

(assert (=> b!5460330 m!6481728))

(assert (=> b!5460330 m!6481730))

(declare-fun m!6481732 () Bool)

(assert (=> b!5460330 m!6481732))

(assert (=> bm!400293 d!1738085))

(declare-fun d!1738087 () Bool)

(declare-fun c!954128 () Bool)

(declare-fun e!3381281 () Bool)

(assert (=> d!1738087 (= c!954128 e!3381281)))

(declare-fun res!2325693 () Bool)

(assert (=> d!1738087 (=> (not res!2325693) (not e!3381281))))

(assert (=> d!1738087 (= res!2325693 ((_ is Cons!62037) (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343))))))))))

(declare-fun e!3381280 () (InoxSet Context!9342))

(assert (=> d!1738087 (= (derivationStepZipperUp!659 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343))))) (h!68484 s!2326)) e!3381280)))

(declare-fun b!5460331 () Bool)

(declare-fun e!3381278 () (InoxSet Context!9342))

(declare-fun call!400637 () (InoxSet Context!9342))

(assert (=> b!5460331 (= e!3381278 call!400637)))

(declare-fun b!5460332 () Bool)

(assert (=> b!5460332 (= e!3381280 ((_ map or) call!400637 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343)))))))) (h!68484 s!2326))))))

(declare-fun b!5460333 () Bool)

(assert (=> b!5460333 (= e!3381278 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460334 () Bool)

(assert (=> b!5460334 (= e!3381280 e!3381278)))

(declare-fun c!954126 () Bool)

(assert (=> b!5460334 (= c!954126 ((_ is Cons!62037) (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343))))))))))

(declare-fun b!5460336 () Bool)

(assert (=> b!5460336 (= e!3381281 (nullable!5456 (h!68485 (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343)))))))))))

(declare-fun bm!400632 () Bool)

(assert (=> bm!400632 (= call!400637 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343))))))) (Context!9343 (t!375390 (exprs!5171 (Context!9343 (Cons!62037 (h!68485 (exprs!5171 (h!68486 zl!343))) (t!375390 (exprs!5171 (h!68486 zl!343)))))))) (h!68484 s!2326)))))

(assert (= (and d!1738087 res!2325693) b!5460336))

(assert (= (and d!1738087 c!954128) b!5460332))

(assert (= (and d!1738087 (not c!954128)) b!5460334))

(assert (= (and b!5460334 c!954126) b!5460331))

(assert (= (and b!5460334 (not c!954126)) b!5460333))

(assert (= (or b!5460332 b!5460331) bm!400632))

(declare-fun m!6481734 () Bool)

(assert (=> b!5460332 m!6481734))

(declare-fun m!6481736 () Bool)

(assert (=> b!5460336 m!6481736))

(declare-fun m!6481738 () Bool)

(assert (=> bm!400632 m!6481738))

(assert (=> b!5459338 d!1738087))

(declare-fun b!5460346 () Bool)

(declare-fun e!3381288 () (InoxSet Context!9342))

(assert (=> b!5460346 (= e!3381288 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(declare-fun b!5460347 () Bool)

(declare-fun c!954134 () Bool)

(assert (=> b!5460347 (= c!954134 ((_ is Star!15287) (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun e!3381287 () (InoxSet Context!9342))

(declare-fun e!3381284 () (InoxSet Context!9342))

(assert (=> b!5460347 (= e!3381287 e!3381284)))

(declare-fun b!5460348 () Bool)

(declare-fun call!400643 () (InoxSet Context!9342))

(assert (=> b!5460348 (= e!3381284 call!400643)))

(declare-fun bm!400633 () Bool)

(declare-fun call!400642 () (InoxSet Context!9342))

(assert (=> bm!400633 (= call!400643 call!400642)))

(declare-fun d!1738089 () Bool)

(declare-fun c!954133 () Bool)

(assert (=> d!1738089 (= c!954133 (and ((_ is ElementMatch!15287) (h!68485 (exprs!5171 (h!68486 zl!343)))) (= (c!953823 (h!68485 (exprs!5171 (h!68486 zl!343)))) (h!68484 s!2326))))))

(assert (=> d!1738089 (= (derivationStepZipperDown!735 (h!68485 (exprs!5171 (h!68486 zl!343))) lt!2229804 (h!68484 s!2326)) e!3381288)))

(declare-fun b!5460349 () Bool)

(declare-fun e!3381286 () (InoxSet Context!9342))

(assert (=> b!5460349 (= e!3381288 e!3381286)))

(declare-fun c!954132 () Bool)

(assert (=> b!5460349 (= c!954132 ((_ is Union!15287) (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5460350 () Bool)

(assert (=> b!5460350 (= e!3381284 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460351 () Bool)

(declare-fun e!3381285 () (InoxSet Context!9342))

(assert (=> b!5460351 (= e!3381285 e!3381287)))

(declare-fun c!954135 () Bool)

(assert (=> b!5460351 (= c!954135 ((_ is Concat!24132) (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5460352 () Bool)

(declare-fun call!400640 () (InoxSet Context!9342))

(declare-fun call!400638 () (InoxSet Context!9342))

(assert (=> b!5460352 (= e!3381286 ((_ map or) call!400640 call!400638))))

(declare-fun bm!400634 () Bool)

(assert (=> bm!400634 (= call!400642 call!400638)))

(declare-fun b!5460353 () Bool)

(declare-fun e!3381289 () Bool)

(assert (=> b!5460353 (= e!3381289 (nullable!5456 (regOne!31086 (h!68485 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun bm!400635 () Bool)

(declare-fun c!954131 () Bool)

(declare-fun call!400639 () List!62161)

(assert (=> bm!400635 (= call!400639 ($colon$colon!1537 (exprs!5171 lt!2229804) (ite (or c!954131 c!954135) (regTwo!31086 (h!68485 (exprs!5171 (h!68486 zl!343)))) (h!68485 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun bm!400636 () Bool)

(declare-fun call!400641 () List!62161)

(assert (=> bm!400636 (= call!400641 call!400639)))

(declare-fun b!5460354 () Bool)

(assert (=> b!5460354 (= c!954131 e!3381289)))

(declare-fun res!2325694 () Bool)

(assert (=> b!5460354 (=> (not res!2325694) (not e!3381289))))

(assert (=> b!5460354 (= res!2325694 ((_ is Concat!24132) (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(assert (=> b!5460354 (= e!3381286 e!3381285)))

(declare-fun b!5460355 () Bool)

(assert (=> b!5460355 (= e!3381285 ((_ map or) call!400640 call!400642))))

(declare-fun bm!400637 () Bool)

(assert (=> bm!400637 (= call!400640 (derivationStepZipperDown!735 (ite c!954132 (regOne!31087 (h!68485 (exprs!5171 (h!68486 zl!343)))) (regOne!31086 (h!68485 (exprs!5171 (h!68486 zl!343))))) (ite c!954132 lt!2229804 (Context!9343 call!400639)) (h!68484 s!2326)))))

(declare-fun b!5460356 () Bool)

(assert (=> b!5460356 (= e!3381287 call!400643)))

(declare-fun bm!400638 () Bool)

(assert (=> bm!400638 (= call!400638 (derivationStepZipperDown!735 (ite c!954132 (regTwo!31087 (h!68485 (exprs!5171 (h!68486 zl!343)))) (ite c!954131 (regTwo!31086 (h!68485 (exprs!5171 (h!68486 zl!343)))) (ite c!954135 (regOne!31086 (h!68485 (exprs!5171 (h!68486 zl!343)))) (reg!15616 (h!68485 (exprs!5171 (h!68486 zl!343))))))) (ite (or c!954132 c!954131) lt!2229804 (Context!9343 call!400641)) (h!68484 s!2326)))))

(assert (= (and d!1738089 c!954133) b!5460346))

(assert (= (and d!1738089 (not c!954133)) b!5460349))

(assert (= (and b!5460349 c!954132) b!5460352))

(assert (= (and b!5460349 (not c!954132)) b!5460354))

(assert (= (and b!5460354 res!2325694) b!5460353))

(assert (= (and b!5460354 c!954131) b!5460355))

(assert (= (and b!5460354 (not c!954131)) b!5460351))

(assert (= (and b!5460351 c!954135) b!5460356))

(assert (= (and b!5460351 (not c!954135)) b!5460347))

(assert (= (and b!5460347 c!954134) b!5460348))

(assert (= (and b!5460347 (not c!954134)) b!5460350))

(assert (= (or b!5460356 b!5460348) bm!400636))

(assert (= (or b!5460356 b!5460348) bm!400633))

(assert (= (or b!5460355 bm!400636) bm!400635))

(assert (= (or b!5460355 bm!400633) bm!400634))

(assert (= (or b!5460352 bm!400634) bm!400638))

(assert (= (or b!5460352 b!5460355) bm!400637))

(assert (=> b!5460346 m!6480314))

(declare-fun m!6481756 () Bool)

(assert (=> bm!400638 m!6481756))

(declare-fun m!6481758 () Bool)

(assert (=> bm!400635 m!6481758))

(declare-fun m!6481760 () Bool)

(assert (=> b!5460353 m!6481760))

(declare-fun m!6481762 () Bool)

(assert (=> bm!400637 m!6481762))

(assert (=> b!5459338 d!1738089))

(declare-fun d!1738093 () Bool)

(assert (=> d!1738093 (= (flatMap!1014 lt!2229915 lambda!289259) (dynLambda!24414 lambda!289259 lt!2229804))))

(declare-fun lt!2230143 () Unit!154924)

(assert (=> d!1738093 (= lt!2230143 (choose!41498 lt!2229915 lt!2229804 lambda!289259))))

(assert (=> d!1738093 (= lt!2229915 (store ((as const (Array Context!9342 Bool)) false) lt!2229804 true))))

(assert (=> d!1738093 (= (lemmaFlatMapOnSingletonSet!546 lt!2229915 lt!2229804 lambda!289259) lt!2230143)))

(declare-fun b_lambda!207847 () Bool)

(assert (=> (not b_lambda!207847) (not d!1738093)))

(declare-fun bs!1263734 () Bool)

(assert (= bs!1263734 d!1738093))

(assert (=> bs!1263734 m!6480408))

(declare-fun m!6481764 () Bool)

(assert (=> bs!1263734 m!6481764))

(declare-fun m!6481766 () Bool)

(assert (=> bs!1263734 m!6481766))

(assert (=> bs!1263734 m!6480314))

(assert (=> b!5459338 d!1738093))

(declare-fun d!1738095 () Bool)

(declare-fun c!954137 () Bool)

(declare-fun e!3381292 () Bool)

(assert (=> d!1738095 (= c!954137 e!3381292)))

(declare-fun res!2325695 () Bool)

(assert (=> d!1738095 (=> (not res!2325695) (not e!3381292))))

(assert (=> d!1738095 (= res!2325695 ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343))))))

(declare-fun e!3381291 () (InoxSet Context!9342))

(assert (=> d!1738095 (= (derivationStepZipperUp!659 (h!68486 zl!343) (h!68484 s!2326)) e!3381291)))

(declare-fun b!5460357 () Bool)

(declare-fun e!3381290 () (InoxSet Context!9342))

(declare-fun call!400644 () (InoxSet Context!9342))

(assert (=> b!5460357 (= e!3381290 call!400644)))

(declare-fun b!5460358 () Bool)

(assert (=> b!5460358 (= e!3381291 ((_ map or) call!400644 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 (h!68486 zl!343)))) (h!68484 s!2326))))))

(declare-fun b!5460359 () Bool)

(assert (=> b!5460359 (= e!3381290 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460360 () Bool)

(assert (=> b!5460360 (= e!3381291 e!3381290)))

(declare-fun c!954136 () Bool)

(assert (=> b!5460360 (= c!954136 ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343))))))

(declare-fun b!5460361 () Bool)

(assert (=> b!5460361 (= e!3381292 (nullable!5456 (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun bm!400639 () Bool)

(assert (=> bm!400639 (= call!400644 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (h!68486 zl!343))) (Context!9343 (t!375390 (exprs!5171 (h!68486 zl!343)))) (h!68484 s!2326)))))

(assert (= (and d!1738095 res!2325695) b!5460361))

(assert (= (and d!1738095 c!954137) b!5460358))

(assert (= (and d!1738095 (not c!954137)) b!5460360))

(assert (= (and b!5460360 c!954136) b!5460357))

(assert (= (and b!5460360 (not c!954136)) b!5460359))

(assert (= (or b!5460358 b!5460357) bm!400639))

(declare-fun m!6481768 () Bool)

(assert (=> b!5460358 m!6481768))

(assert (=> b!5460361 m!6480418))

(declare-fun m!6481770 () Bool)

(assert (=> bm!400639 m!6481770))

(assert (=> b!5459338 d!1738095))

(declare-fun d!1738097 () Bool)

(declare-fun c!954139 () Bool)

(declare-fun e!3381295 () Bool)

(assert (=> d!1738097 (= c!954139 e!3381295)))

(declare-fun res!2325696 () Bool)

(assert (=> d!1738097 (=> (not res!2325696) (not e!3381295))))

(assert (=> d!1738097 (= res!2325696 ((_ is Cons!62037) (exprs!5171 lt!2229804)))))

(declare-fun e!3381294 () (InoxSet Context!9342))

(assert (=> d!1738097 (= (derivationStepZipperUp!659 lt!2229804 (h!68484 s!2326)) e!3381294)))

(declare-fun b!5460362 () Bool)

(declare-fun e!3381293 () (InoxSet Context!9342))

(declare-fun call!400645 () (InoxSet Context!9342))

(assert (=> b!5460362 (= e!3381293 call!400645)))

(declare-fun b!5460363 () Bool)

(assert (=> b!5460363 (= e!3381294 ((_ map or) call!400645 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 lt!2229804))) (h!68484 s!2326))))))

(declare-fun b!5460364 () Bool)

(assert (=> b!5460364 (= e!3381293 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460365 () Bool)

(assert (=> b!5460365 (= e!3381294 e!3381293)))

(declare-fun c!954138 () Bool)

(assert (=> b!5460365 (= c!954138 ((_ is Cons!62037) (exprs!5171 lt!2229804)))))

(declare-fun b!5460366 () Bool)

(assert (=> b!5460366 (= e!3381295 (nullable!5456 (h!68485 (exprs!5171 lt!2229804))))))

(declare-fun bm!400640 () Bool)

(assert (=> bm!400640 (= call!400645 (derivationStepZipperDown!735 (h!68485 (exprs!5171 lt!2229804)) (Context!9343 (t!375390 (exprs!5171 lt!2229804))) (h!68484 s!2326)))))

(assert (= (and d!1738097 res!2325696) b!5460366))

(assert (= (and d!1738097 c!954139) b!5460363))

(assert (= (and d!1738097 (not c!954139)) b!5460365))

(assert (= (and b!5460365 c!954138) b!5460362))

(assert (= (and b!5460365 (not c!954138)) b!5460364))

(assert (= (or b!5460363 b!5460362) bm!400640))

(declare-fun m!6481772 () Bool)

(assert (=> b!5460363 m!6481772))

(declare-fun m!6481774 () Bool)

(assert (=> b!5460366 m!6481774))

(declare-fun m!6481776 () Bool)

(assert (=> bm!400640 m!6481776))

(assert (=> b!5459338 d!1738097))

(declare-fun d!1738099 () Bool)

(assert (=> d!1738099 (= (flatMap!1014 z!1189 lambda!289259) (dynLambda!24414 lambda!289259 (h!68486 zl!343)))))

(declare-fun lt!2230144 () Unit!154924)

(assert (=> d!1738099 (= lt!2230144 (choose!41498 z!1189 (h!68486 zl!343) lambda!289259))))

(assert (=> d!1738099 (= z!1189 (store ((as const (Array Context!9342 Bool)) false) (h!68486 zl!343) true))))

(assert (=> d!1738099 (= (lemmaFlatMapOnSingletonSet!546 z!1189 (h!68486 zl!343) lambda!289259) lt!2230144)))

(declare-fun b_lambda!207849 () Bool)

(assert (=> (not b_lambda!207849) (not d!1738099)))

(declare-fun bs!1263735 () Bool)

(assert (= bs!1263735 d!1738099))

(assert (=> bs!1263735 m!6480422))

(declare-fun m!6481778 () Bool)

(assert (=> bs!1263735 m!6481778))

(declare-fun m!6481780 () Bool)

(assert (=> bs!1263735 m!6481780))

(declare-fun m!6481782 () Bool)

(assert (=> bs!1263735 m!6481782))

(assert (=> b!5459338 d!1738099))

(declare-fun d!1738101 () Bool)

(assert (=> d!1738101 (= (nullable!5456 (h!68485 (exprs!5171 (h!68486 zl!343)))) (nullableFct!1639 (h!68485 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun bs!1263736 () Bool)

(assert (= bs!1263736 d!1738101))

(declare-fun m!6481784 () Bool)

(assert (=> bs!1263736 m!6481784))

(assert (=> b!5459338 d!1738101))

(declare-fun bs!1263737 () Bool)

(declare-fun d!1738103 () Bool)

(assert (= bs!1263737 (and d!1738103 b!5459338)))

(declare-fun lambda!289384 () Int)

(assert (=> bs!1263737 (= lambda!289384 lambda!289259)))

(assert (=> d!1738103 true))

(assert (=> d!1738103 (= (derivationStepZipper!1506 lt!2229915 (h!68484 s!2326)) (flatMap!1014 lt!2229915 lambda!289384))))

(declare-fun bs!1263738 () Bool)

(assert (= bs!1263738 d!1738103))

(declare-fun m!6481786 () Bool)

(assert (=> bs!1263738 m!6481786))

(assert (=> b!5459338 d!1738103))

(declare-fun d!1738105 () Bool)

(assert (=> d!1738105 (= (flatMap!1014 z!1189 lambda!289259) (choose!41501 z!1189 lambda!289259))))

(declare-fun bs!1263739 () Bool)

(assert (= bs!1263739 d!1738105))

(declare-fun m!6481794 () Bool)

(assert (=> bs!1263739 m!6481794))

(assert (=> b!5459338 d!1738105))

(declare-fun d!1738109 () Bool)

(assert (=> d!1738109 (= (flatMap!1014 lt!2229915 lambda!289259) (choose!41501 lt!2229915 lambda!289259))))

(declare-fun bs!1263740 () Bool)

(assert (= bs!1263740 d!1738109))

(declare-fun m!6481796 () Bool)

(assert (=> bs!1263740 m!6481796))

(assert (=> b!5459338 d!1738109))

(declare-fun d!1738111 () Bool)

(assert (=> d!1738111 (= (Exists!2468 (ite c!953812 lambda!289261 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289276)))) (choose!41483 (ite c!953812 lambda!289261 (ite c!953814 lambda!289266 (ite c!953817 lambda!289270 lambda!289276)))))))

(declare-fun bs!1263741 () Bool)

(assert (= bs!1263741 d!1738111))

(declare-fun m!6481798 () Bool)

(assert (=> bs!1263741 m!6481798))

(assert (=> bm!400438 d!1738111))

(declare-fun d!1738113 () Bool)

(assert (=> d!1738113 (= (matchR!7472 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229756 (ite c!953816 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229818) lt!2229757)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) s!2326)) s!2326))) (matchZipper!1531 (ite c!953819 lt!2229716 (ite c!953812 lt!2229852 (ite c!953814 lt!2229833 (ite c!953816 (ite (or c!953817 c!953822) lt!2229892 lt!2229771) lt!2229839)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) s!2326)) s!2326))))))

(declare-fun lt!2230149 () Unit!154924)

(assert (=> d!1738113 (= lt!2230149 (choose!41508 (ite c!953819 lt!2229716 (ite c!953812 lt!2229852 (ite c!953814 lt!2229833 (ite c!953816 (ite (or c!953817 c!953822) lt!2229892 lt!2229771) lt!2229839)))) (ite c!953819 (Cons!62038 lt!2229784 Nil!62038) (ite c!953812 (Cons!62038 lt!2229858 Nil!62038) (ite c!953814 (Cons!62038 lt!2229856 Nil!62038) (ite (and c!953816 (or c!953817 c!953822)) (Cons!62038 lt!2229837 Nil!62038) (Cons!62038 lt!2229804 Nil!62038))))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229756 (ite c!953816 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229818) lt!2229757)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) s!2326)) s!2326))))))

(assert (=> d!1738113 (validRegex!7023 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229756 (ite c!953816 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229818) lt!2229757)))))))

(assert (=> d!1738113 (= (theoremZipperRegexEquiv!567 (ite c!953819 lt!2229716 (ite c!953812 lt!2229852 (ite c!953814 lt!2229833 (ite c!953816 (ite (or c!953817 c!953822) lt!2229892 lt!2229771) lt!2229839)))) (ite c!953819 (Cons!62038 lt!2229784 Nil!62038) (ite c!953812 (Cons!62038 lt!2229858 Nil!62038) (ite c!953814 (Cons!62038 lt!2229856 Nil!62038) (ite (and c!953816 (or c!953817 c!953822)) (Cons!62038 lt!2229837 Nil!62038) (Cons!62038 lt!2229804 Nil!62038))))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229756 (ite c!953816 (ite (or c!953817 c!953822) (reg!15616 (regOne!31086 r!7292)) lt!2229818) lt!2229757)))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229738) s!2326)) s!2326))) lt!2230149)))

(declare-fun bs!1263742 () Bool)

(assert (= bs!1263742 d!1738113))

(declare-fun m!6481818 () Bool)

(assert (=> bs!1263742 m!6481818))

(declare-fun m!6481822 () Bool)

(assert (=> bs!1263742 m!6481822))

(declare-fun m!6481824 () Bool)

(assert (=> bs!1263742 m!6481824))

(declare-fun m!6481826 () Bool)

(assert (=> bs!1263742 m!6481826))

(assert (=> bm!400307 d!1738113))

(declare-fun c!954150 () Bool)

(declare-fun d!1738119 () Bool)

(assert (=> d!1738119 (= c!954150 (isEmpty!34025 (ite c!953819 s!2326 (ite c!953812 (t!375389 s!2326) s!2326))))))

(declare-fun e!3381310 () Bool)

(assert (=> d!1738119 (= (matchZipper!1531 (ite c!953819 lt!2229716 (ite c!953812 lt!2229826 (ite c!953814 lt!2229833 (ite c!953816 z!1189 lt!2229839)))) (ite c!953819 s!2326 (ite c!953812 (t!375389 s!2326) s!2326))) e!3381310)))

(declare-fun b!5460392 () Bool)

(assert (=> b!5460392 (= e!3381310 (nullableZipper!1487 (ite c!953819 lt!2229716 (ite c!953812 lt!2229826 (ite c!953814 lt!2229833 (ite c!953816 z!1189 lt!2229839))))))))

(declare-fun b!5460393 () Bool)

(assert (=> b!5460393 (= e!3381310 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 lt!2229716 (ite c!953812 lt!2229826 (ite c!953814 lt!2229833 (ite c!953816 z!1189 lt!2229839)))) (head!11691 (ite c!953819 s!2326 (ite c!953812 (t!375389 s!2326) s!2326)))) (tail!10788 (ite c!953819 s!2326 (ite c!953812 (t!375389 s!2326) s!2326)))))))

(assert (= (and d!1738119 c!954150) b!5460392))

(assert (= (and d!1738119 (not c!954150)) b!5460393))

(declare-fun m!6481828 () Bool)

(assert (=> d!1738119 m!6481828))

(declare-fun m!6481830 () Bool)

(assert (=> b!5460392 m!6481830))

(declare-fun m!6481832 () Bool)

(assert (=> b!5460393 m!6481832))

(assert (=> b!5460393 m!6481832))

(declare-fun m!6481834 () Bool)

(assert (=> b!5460393 m!6481834))

(declare-fun m!6481836 () Bool)

(assert (=> b!5460393 m!6481836))

(assert (=> b!5460393 m!6481834))

(assert (=> b!5460393 m!6481836))

(declare-fun m!6481838 () Bool)

(assert (=> b!5460393 m!6481838))

(assert (=> bm!400292 d!1738119))

(declare-fun bs!1263743 () Bool)

(declare-fun d!1738121 () Bool)

(assert (= bs!1263743 (and d!1738121 b!5459302)))

(declare-fun lambda!289385 () Int)

(assert (=> bs!1263743 (not (= lambda!289385 lambda!289282))))

(declare-fun bs!1263744 () Bool)

(assert (= bs!1263744 (and d!1738121 d!1737855)))

(assert (=> bs!1263744 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289385 lambda!289293))))

(declare-fun bs!1263746 () Bool)

(assert (= bs!1263746 (and d!1738121 b!5459299)))

(assert (=> bs!1263746 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289385 lambda!289270))))

(declare-fun bs!1263747 () Bool)

(assert (= bs!1263747 (and d!1738121 b!5459286)))

(assert (=> bs!1263747 (not (= lambda!289385 lambda!289261))))

(declare-fun bs!1263748 () Bool)

(assert (= bs!1263748 (and d!1738121 b!5459307)))

(assert (=> bs!1263748 (not (= lambda!289385 lambda!289279))))

(declare-fun bs!1263750 () Bool)

(assert (= bs!1263750 (and d!1738121 d!1738077)))

(assert (=> bs!1263750 (= (and (= s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289385 lambda!289375))))

(declare-fun bs!1263751 () Bool)

(assert (= bs!1263751 (and d!1738121 b!5459320)))

(assert (=> bs!1263751 (not (= lambda!289385 lambda!289265))))

(assert (=> bs!1263743 (not (= lambda!289385 lambda!289283))))

(assert (=> bs!1263750 (not (= lambda!289385 lambda!289377))))

(assert (=> bs!1263747 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229912)) (= lambda!289385 lambda!289262))))

(declare-fun bs!1263752 () Bool)

(assert (= bs!1263752 (and d!1738121 b!5460143)))

(assert (=> bs!1263752 (not (= lambda!289385 lambda!289351))))

(assert (=> bs!1263746 (not (= lambda!289385 lambda!289272))))

(assert (=> bs!1263748 (not (= lambda!289385 lambda!289280))))

(assert (=> bs!1263748 (not (= lambda!289385 lambda!289277))))

(assert (=> bs!1263751 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229767)) (= lambda!289385 lambda!289264))))

(declare-fun bs!1263755 () Bool)

(assert (= bs!1263755 (and d!1738121 b!5460142)))

(assert (=> bs!1263755 (not (= lambda!289385 lambda!289350))))

(assert (=> bs!1263747 (not (= lambda!289385 lambda!289263))))

(declare-fun bs!1263756 () Bool)

(assert (= bs!1263756 (and d!1738121 b!5459662)))

(assert (=> bs!1263756 (not (= lambda!289385 lambda!289301))))

(declare-fun bs!1263758 () Bool)

(assert (= bs!1263758 (and d!1738121 b!5459333)))

(assert (=> bs!1263758 (not (= lambda!289385 lambda!289269))))

(assert (=> bs!1263747 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229727)) (= lambda!289385 lambda!289260))))

(assert (=> bs!1263743 (= (and (= s!2326 Nil!62036) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289385 lambda!289281))))

(assert (=> bs!1263748 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) lt!2229788) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289385 lambda!289276))))

(declare-fun bs!1263763 () Bool)

(assert (= bs!1263763 (and d!1738121 b!5459661)))

(assert (=> bs!1263763 (not (= lambda!289385 lambda!289298))))

(declare-fun bs!1263765 () Bool)

(assert (= bs!1263765 (and d!1738121 b!5459292)))

(assert (=> bs!1263765 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289385 lambda!289257))))

(assert (=> bs!1263748 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289385 lambda!289278))))

(assert (=> bs!1263746 (not (= lambda!289385 lambda!289271))))

(declare-fun bs!1263767 () Bool)

(assert (= bs!1263767 (and d!1738121 d!1737983)))

(assert (=> bs!1263767 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)))) (= lambda!289385 lambda!289346))))

(assert (=> bs!1263751 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229863)) (= lambda!289385 lambda!289266))))

(declare-fun bs!1263770 () Bool)

(assert (= bs!1263770 (and d!1738121 d!1737877)))

(assert (=> bs!1263770 (not (= lambda!289385 lambda!289315))))

(assert (=> bs!1263751 (not (= lambda!289385 lambda!289267))))

(assert (=> bs!1263765 (not (= lambda!289385 lambda!289258))))

(assert (=> bs!1263758 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) lt!2229794) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289385 lambda!289268))))

(assert (=> bs!1263770 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289385 lambda!289314))))

(assert (=> d!1738121 true))

(assert (=> d!1738121 true))

(assert (=> d!1738121 true))

(declare-fun lambda!289387 () Int)

(assert (=> bs!1263743 (= (and (= s!2326 Nil!62036) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289387 lambda!289282))))

(assert (=> bs!1263744 (not (= lambda!289387 lambda!289293))))

(assert (=> bs!1263746 (not (= lambda!289387 lambda!289270))))

(assert (=> bs!1263747 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229727)) (= lambda!289387 lambda!289261))))

(assert (=> bs!1263748 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289387 lambda!289279))))

(assert (=> bs!1263750 (not (= lambda!289387 lambda!289375))))

(assert (=> bs!1263751 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229767)) (= lambda!289387 lambda!289265))))

(assert (=> bs!1263743 (not (= lambda!289387 lambda!289283))))

(assert (=> bs!1263750 (not (= lambda!289387 lambda!289377))))

(assert (=> bs!1263747 (not (= lambda!289387 lambda!289262))))

(assert (=> bs!1263752 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289387 lambda!289351))))

(assert (=> bs!1263746 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289387 lambda!289272))))

(assert (=> bs!1263748 (not (= lambda!289387 lambda!289280))))

(assert (=> bs!1263748 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) lt!2229788) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289387 lambda!289277))))

(assert (=> bs!1263751 (not (= lambda!289387 lambda!289264))))

(assert (=> bs!1263755 (not (= lambda!289387 lambda!289350))))

(assert (=> bs!1263747 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229912)) (= lambda!289387 lambda!289263))))

(assert (=> bs!1263756 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289387 lambda!289301))))

(declare-fun bs!1263774 () Bool)

(assert (= bs!1263774 d!1738121))

(assert (=> bs!1263774 (not (= lambda!289387 lambda!289385))))

(assert (=> bs!1263758 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) lt!2229794) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289387 lambda!289269))))

(assert (=> bs!1263747 (not (= lambda!289387 lambda!289260))))

(assert (=> bs!1263743 (not (= lambda!289387 lambda!289281))))

(assert (=> bs!1263748 (not (= lambda!289387 lambda!289276))))

(assert (=> bs!1263763 (not (= lambda!289387 lambda!289298))))

(assert (=> bs!1263765 (not (= lambda!289387 lambda!289257))))

(assert (=> bs!1263748 (not (= lambda!289387 lambda!289278))))

(assert (=> bs!1263746 (not (= lambda!289387 lambda!289271))))

(assert (=> bs!1263767 (not (= lambda!289387 lambda!289346))))

(assert (=> bs!1263751 (not (= lambda!289387 lambda!289266))))

(assert (=> bs!1263770 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289387 lambda!289315))))

(assert (=> bs!1263751 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regTwo!31086 (regOne!31086 r!7292))) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) lt!2229863)) (= lambda!289387 lambda!289267))))

(assert (=> bs!1263765 (= (and (= (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (regOne!31086 r!7292)) (= (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) (regTwo!31086 r!7292))) (= lambda!289387 lambda!289258))))

(assert (=> bs!1263758 (not (= lambda!289387 lambda!289268))))

(assert (=> bs!1263770 (not (= lambda!289387 lambda!289314))))

(assert (=> d!1738121 true))

(assert (=> d!1738121 true))

(assert (=> d!1738121 true))

(assert (=> d!1738121 (= (Exists!2468 lambda!289385) (Exists!2468 lambda!289387))))

(declare-fun lt!2230150 () Unit!154924)

(assert (=> d!1738121 (= lt!2230150 (choose!41494 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) s!2326))))

(assert (=> d!1738121 (validRegex!7023 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))))))

(assert (=> d!1738121 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))) s!2326) lt!2230150)))

(declare-fun m!6481888 () Bool)

(assert (=> bs!1263774 m!6481888))

(declare-fun m!6481890 () Bool)

(assert (=> bs!1263774 m!6481890))

(declare-fun m!6481892 () Bool)

(assert (=> bs!1263774 m!6481892))

(declare-fun m!6481894 () Bool)

(assert (=> bs!1263774 m!6481894))

(assert (=> bm!400324 d!1738121))

(declare-fun b!5460413 () Bool)

(declare-fun res!2325712 () Bool)

(declare-fun e!3381325 () Bool)

(assert (=> b!5460413 (=> res!2325712 e!3381325)))

(assert (=> b!5460413 (= res!2325712 (not ((_ is ElementMatch!15287) (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))))))))

(declare-fun e!3381322 () Bool)

(assert (=> b!5460413 (= e!3381322 e!3381325)))

(declare-fun b!5460414 () Bool)

(declare-fun e!3381328 () Bool)

(assert (=> b!5460414 (= e!3381328 (= (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))) (c!953823 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))))))))

(declare-fun b!5460415 () Bool)

(declare-fun e!3381323 () Bool)

(assert (=> b!5460415 (= e!3381323 (nullable!5456 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292))))))))))

(declare-fun b!5460416 () Bool)

(declare-fun e!3381326 () Bool)

(declare-fun e!3381327 () Bool)

(assert (=> b!5460416 (= e!3381326 e!3381327)))

(declare-fun res!2325711 () Bool)

(assert (=> b!5460416 (=> res!2325711 e!3381327)))

(declare-fun call!400653 () Bool)

(assert (=> b!5460416 (= res!2325711 call!400653)))

(declare-fun b!5460417 () Bool)

(declare-fun res!2325717 () Bool)

(assert (=> b!5460417 (=> res!2325717 e!3381327)))

(assert (=> b!5460417 (= res!2325717 (not (isEmpty!34025 (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))))))))

(declare-fun d!1738135 () Bool)

(declare-fun e!3381324 () Bool)

(assert (=> d!1738135 e!3381324))

(declare-fun c!954159 () Bool)

(assert (=> d!1738135 (= c!954159 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292))))))))))

(declare-fun lt!2230157 () Bool)

(assert (=> d!1738135 (= lt!2230157 e!3381323)))

(declare-fun c!954158 () Bool)

(assert (=> d!1738135 (= c!954158 (isEmpty!34025 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))))))

(assert (=> d!1738135 (validRegex!7023 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))))))

(assert (=> d!1738135 (= (matchR!7472 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))) (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))) lt!2230157)))

(declare-fun b!5460418 () Bool)

(declare-fun res!2325713 () Bool)

(assert (=> b!5460418 (=> (not res!2325713) (not e!3381328))))

(assert (=> b!5460418 (= res!2325713 (isEmpty!34025 (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326)))))))

(declare-fun b!5460419 () Bool)

(assert (=> b!5460419 (= e!3381323 (matchR!7472 (derivativeStep!4308 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292)))))) (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326)))) (tail!10788 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326)))))))

(declare-fun b!5460420 () Bool)

(assert (=> b!5460420 (= e!3381322 (not lt!2230157))))

(declare-fun b!5460421 () Bool)

(declare-fun res!2325715 () Bool)

(assert (=> b!5460421 (=> res!2325715 e!3381325)))

(assert (=> b!5460421 (= res!2325715 e!3381328)))

(declare-fun res!2325718 () Bool)

(assert (=> b!5460421 (=> (not res!2325718) (not e!3381328))))

(assert (=> b!5460421 (= res!2325718 lt!2230157)))

(declare-fun b!5460422 () Bool)

(declare-fun res!2325716 () Bool)

(assert (=> b!5460422 (=> (not res!2325716) (not e!3381328))))

(assert (=> b!5460422 (= res!2325716 (not call!400653))))

(declare-fun b!5460423 () Bool)

(assert (=> b!5460423 (= e!3381327 (not (= (head!11691 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))) (c!953823 (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292))))))))))))

(declare-fun b!5460424 () Bool)

(assert (=> b!5460424 (= e!3381324 e!3381322)))

(declare-fun c!954157 () Bool)

(assert (=> b!5460424 (= c!954157 ((_ is EmptyLang!15287) (ite c!953819 lt!2229870 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229799 (ite c!953818 lt!2229757 (regTwo!31086 r!7292))))))))))

(declare-fun bm!400648 () Bool)

(assert (=> bm!400648 (= call!400653 (isEmpty!34025 (ite (or c!953819 c!953812 c!953814) s!2326 (ite c!953816 (_2!35789 lt!2229738) s!2326))))))

(declare-fun b!5460425 () Bool)

(assert (=> b!5460425 (= e!3381324 (= lt!2230157 call!400653))))

(declare-fun b!5460426 () Bool)

(assert (=> b!5460426 (= e!3381325 e!3381326)))

(declare-fun res!2325714 () Bool)

(assert (=> b!5460426 (=> (not res!2325714) (not e!3381326))))

(assert (=> b!5460426 (= res!2325714 (not lt!2230157))))

(assert (= (and d!1738135 c!954158) b!5460415))

(assert (= (and d!1738135 (not c!954158)) b!5460419))

(assert (= (and d!1738135 c!954159) b!5460425))

(assert (= (and d!1738135 (not c!954159)) b!5460424))

(assert (= (and b!5460424 c!954157) b!5460420))

(assert (= (and b!5460424 (not c!954157)) b!5460413))

(assert (= (and b!5460413 (not res!2325712)) b!5460421))

(assert (= (and b!5460421 res!2325718) b!5460422))

(assert (= (and b!5460422 res!2325716) b!5460418))

(assert (= (and b!5460418 res!2325713) b!5460414))

(assert (= (and b!5460421 (not res!2325715)) b!5460426))

(assert (= (and b!5460426 res!2325714) b!5460416))

(assert (= (and b!5460416 (not res!2325711)) b!5460417))

(assert (= (and b!5460417 (not res!2325717)) b!5460423))

(assert (= (or b!5460425 b!5460416 b!5460422) bm!400648))

(declare-fun m!6481910 () Bool)

(assert (=> b!5460418 m!6481910))

(assert (=> b!5460418 m!6481910))

(declare-fun m!6481912 () Bool)

(assert (=> b!5460418 m!6481912))

(declare-fun m!6481914 () Bool)

(assert (=> b!5460415 m!6481914))

(declare-fun m!6481916 () Bool)

(assert (=> d!1738135 m!6481916))

(declare-fun m!6481918 () Bool)

(assert (=> d!1738135 m!6481918))

(assert (=> b!5460417 m!6481910))

(assert (=> b!5460417 m!6481910))

(assert (=> b!5460417 m!6481912))

(assert (=> bm!400648 m!6481916))

(declare-fun m!6481922 () Bool)

(assert (=> b!5460414 m!6481922))

(assert (=> b!5460423 m!6481922))

(assert (=> b!5460419 m!6481922))

(assert (=> b!5460419 m!6481922))

(declare-fun m!6481926 () Bool)

(assert (=> b!5460419 m!6481926))

(assert (=> b!5460419 m!6481910))

(assert (=> b!5460419 m!6481926))

(assert (=> b!5460419 m!6481910))

(declare-fun m!6481928 () Bool)

(assert (=> b!5460419 m!6481928))

(assert (=> bm!400451 d!1738135))

(declare-fun d!1738139 () Bool)

(assert (=> d!1738139 (not (matchZipper!1531 lt!2229921 (t!375389 s!2326)))))

(declare-fun lt!2230161 () Unit!154924)

(declare-fun choose!41515 ((InoxSet Context!9342) List!62160) Unit!154924)

(assert (=> d!1738139 (= lt!2230161 (choose!41515 lt!2229921 (t!375389 s!2326)))))

(assert (=> d!1738139 (= lt!2229921 ((as const (Array Context!9342 Bool)) false))))

(assert (=> d!1738139 (= (lemmaEmptyZipperMatchesNothing!42 lt!2229921 (t!375389 s!2326)) lt!2230161)))

(declare-fun bs!1263787 () Bool)

(assert (= bs!1263787 d!1738139))

(assert (=> bs!1263787 m!6480292))

(declare-fun m!6481950 () Bool)

(assert (=> bs!1263787 m!6481950))

(assert (=> bm!400352 d!1738139))

(declare-fun b!5460452 () Bool)

(declare-fun e!3381346 () Bool)

(declare-fun lt!2230162 () Option!15398)

(assert (=> b!5460452 (= e!3381346 (not (isDefined!12101 lt!2230162)))))

(declare-fun b!5460453 () Bool)

(declare-fun e!3381343 () Option!15398)

(declare-fun e!3381345 () Option!15398)

(assert (=> b!5460453 (= e!3381343 e!3381345)))

(declare-fun c!954168 () Bool)

(assert (=> b!5460453 (= c!954168 ((_ is Nil!62036) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(declare-fun b!5460454 () Bool)

(declare-fun lt!2230164 () Unit!154924)

(declare-fun lt!2230163 () Unit!154924)

(assert (=> b!5460454 (= lt!2230164 lt!2230163)))

(assert (=> b!5460454 (= (++!13653 (++!13653 Nil!62036 (Cons!62036 (h!68484 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) Nil!62036)) (t!375389 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728))))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728))))))

(assert (=> b!5460454 (= lt!2230163 (lemmaMoveElementToOtherListKeepsConcatEq!1882 Nil!62036 (h!68484 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) (t!375389 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(assert (=> b!5460454 (= e!3381345 (findConcatSeparation!1812 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (++!13653 Nil!62036 (Cons!62036 (h!68484 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) Nil!62036)) (t!375389 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(declare-fun d!1738147 () Bool)

(assert (=> d!1738147 e!3381346))

(declare-fun res!2325730 () Bool)

(assert (=> d!1738147 (=> res!2325730 e!3381346)))

(declare-fun e!3381344 () Bool)

(assert (=> d!1738147 (= res!2325730 e!3381344)))

(declare-fun res!2325731 () Bool)

(assert (=> d!1738147 (=> (not res!2325731) (not e!3381344))))

(assert (=> d!1738147 (= res!2325731 (isDefined!12101 lt!2230162))))

(assert (=> d!1738147 (= lt!2230162 e!3381343)))

(declare-fun c!954167 () Bool)

(declare-fun e!3381347 () Bool)

(assert (=> d!1738147 (= c!954167 e!3381347)))

(declare-fun res!2325732 () Bool)

(assert (=> d!1738147 (=> (not res!2325732) (not e!3381347))))

(assert (=> d!1738147 (= res!2325732 (matchR!7472 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) Nil!62036))))

(assert (=> d!1738147 (validRegex!7023 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))))))

(assert (=> d!1738147 (= (findConcatSeparation!1812 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) Nil!62036 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))) lt!2230162)))

(declare-fun b!5460455 () Bool)

(assert (=> b!5460455 (= e!3381345 None!15397)))

(declare-fun b!5460456 () Bool)

(declare-fun res!2325733 () Bool)

(assert (=> b!5460456 (=> (not res!2325733) (not e!3381344))))

(assert (=> b!5460456 (= res!2325733 (matchR!7472 (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (_1!35789 (get!21395 lt!2230162))))))

(declare-fun b!5460457 () Bool)

(assert (=> b!5460457 (= e!3381347 (matchR!7472 (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(declare-fun b!5460458 () Bool)

(assert (=> b!5460458 (= e!3381343 (Some!15397 (tuple2!64973 Nil!62036 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728))))))))

(declare-fun b!5460459 () Bool)

(declare-fun res!2325734 () Bool)

(assert (=> b!5460459 (=> (not res!2325734) (not e!3381344))))

(assert (=> b!5460459 (= res!2325734 (matchR!7472 (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)) (_2!35789 (get!21395 lt!2230162))))))

(declare-fun b!5460460 () Bool)

(assert (=> b!5460460 (= e!3381344 (= (++!13653 (_1!35789 (get!21395 lt!2230162)) (_2!35789 (get!21395 lt!2230162))) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (_1!35789 lt!2229728)))))))

(assert (= (and d!1738147 res!2325732) b!5460457))

(assert (= (and d!1738147 c!954167) b!5460458))

(assert (= (and d!1738147 (not c!954167)) b!5460453))

(assert (= (and b!5460453 c!954168) b!5460455))

(assert (= (and b!5460453 (not c!954168)) b!5460454))

(assert (= (and d!1738147 res!2325731) b!5460456))

(assert (= (and b!5460456 res!2325733) b!5460459))

(assert (= (and b!5460459 res!2325734) b!5460460))

(assert (= (and d!1738147 (not res!2325730)) b!5460452))

(declare-fun m!6481952 () Bool)

(assert (=> b!5460454 m!6481952))

(assert (=> b!5460454 m!6481952))

(declare-fun m!6481954 () Bool)

(assert (=> b!5460454 m!6481954))

(declare-fun m!6481956 () Bool)

(assert (=> b!5460454 m!6481956))

(assert (=> b!5460454 m!6481952))

(declare-fun m!6481958 () Bool)

(assert (=> b!5460454 m!6481958))

(declare-fun m!6481960 () Bool)

(assert (=> d!1738147 m!6481960))

(declare-fun m!6481962 () Bool)

(assert (=> d!1738147 m!6481962))

(assert (=> d!1738147 m!6481002))

(declare-fun m!6481964 () Bool)

(assert (=> b!5460457 m!6481964))

(declare-fun m!6481966 () Bool)

(assert (=> b!5460456 m!6481966))

(declare-fun m!6481968 () Bool)

(assert (=> b!5460456 m!6481968))

(assert (=> b!5460459 m!6481966))

(declare-fun m!6481970 () Bool)

(assert (=> b!5460459 m!6481970))

(assert (=> b!5460460 m!6481966))

(declare-fun m!6481972 () Bool)

(assert (=> b!5460460 m!6481972))

(assert (=> b!5460452 m!6481960))

(assert (=> bm!400320 d!1738147))

(declare-fun b!5460463 () Bool)

(declare-fun res!2325735 () Bool)

(declare-fun e!3381349 () Bool)

(assert (=> b!5460463 (=> (not res!2325735) (not e!3381349))))

(declare-fun lt!2230165 () List!62160)

(assert (=> b!5460463 (= res!2325735 (= (size!39905 lt!2230165) (+ (size!39905 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902))) (size!39905 (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728))))))))

(declare-fun b!5460464 () Bool)

(assert (=> b!5460464 (= e!3381349 (or (not (= (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728)) Nil!62036)) (= lt!2230165 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902)))))))

(declare-fun b!5460462 () Bool)

(declare-fun e!3381348 () List!62160)

(assert (=> b!5460462 (= e!3381348 (Cons!62036 (h!68484 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902))) (++!13653 (t!375389 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902))) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728)))))))

(declare-fun b!5460461 () Bool)

(assert (=> b!5460461 (= e!3381348 (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728)))))

(declare-fun d!1738149 () Bool)

(assert (=> d!1738149 e!3381349))

(declare-fun res!2325736 () Bool)

(assert (=> d!1738149 (=> (not res!2325736) (not e!3381349))))

(assert (=> d!1738149 (= res!2325736 (= (content!11172 lt!2230165) ((_ map or) (content!11172 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902))) (content!11172 (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728))))))))

(assert (=> d!1738149 (= lt!2230165 e!3381348)))

(declare-fun c!954169 () Bool)

(assert (=> d!1738149 (= c!954169 ((_ is Nil!62036) (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902))))))

(assert (=> d!1738149 (= (++!13653 (ite c!953817 (_1!35789 lt!2229919) (_2!35789 lt!2229902)) (ite c!953817 (_2!35789 lt!2229919) (_2!35789 lt!2229728))) lt!2230165)))

(assert (= (and d!1738149 c!954169) b!5460461))

(assert (= (and d!1738149 (not c!954169)) b!5460462))

(assert (= (and d!1738149 res!2325736) b!5460463))

(assert (= (and b!5460463 res!2325735) b!5460464))

(declare-fun m!6481974 () Bool)

(assert (=> b!5460463 m!6481974))

(declare-fun m!6481976 () Bool)

(assert (=> b!5460463 m!6481976))

(declare-fun m!6481978 () Bool)

(assert (=> b!5460463 m!6481978))

(declare-fun m!6481980 () Bool)

(assert (=> b!5460462 m!6481980))

(declare-fun m!6481982 () Bool)

(assert (=> d!1738149 m!6481982))

(declare-fun m!6481984 () Bool)

(assert (=> d!1738149 m!6481984))

(declare-fun m!6481986 () Bool)

(assert (=> d!1738149 m!6481986))

(assert (=> bm!400447 d!1738149))

(declare-fun b!5460473 () Bool)

(declare-fun e!3381355 () List!62161)

(assert (=> b!5460473 (= e!3381355 lt!2229899)))

(declare-fun b!5460474 () Bool)

(assert (=> b!5460474 (= e!3381355 (Cons!62037 (h!68485 lt!2229729) (++!13654 (t!375390 lt!2229729) lt!2229899)))))

(declare-fun b!5460476 () Bool)

(declare-fun lt!2230168 () List!62161)

(declare-fun e!3381354 () Bool)

(assert (=> b!5460476 (= e!3381354 (or (not (= lt!2229899 Nil!62037)) (= lt!2230168 lt!2229729)))))

(declare-fun d!1738151 () Bool)

(assert (=> d!1738151 e!3381354))

(declare-fun res!2325741 () Bool)

(assert (=> d!1738151 (=> (not res!2325741) (not e!3381354))))

(declare-fun content!11176 (List!62161) (InoxSet Regex!15287))

(assert (=> d!1738151 (= res!2325741 (= (content!11176 lt!2230168) ((_ map or) (content!11176 lt!2229729) (content!11176 lt!2229899))))))

(assert (=> d!1738151 (= lt!2230168 e!3381355)))

(declare-fun c!954172 () Bool)

(assert (=> d!1738151 (= c!954172 ((_ is Nil!62037) lt!2229729))))

(assert (=> d!1738151 (= (++!13654 lt!2229729 lt!2229899) lt!2230168)))

(declare-fun b!5460475 () Bool)

(declare-fun res!2325742 () Bool)

(assert (=> b!5460475 (=> (not res!2325742) (not e!3381354))))

(declare-fun size!39907 (List!62161) Int)

(assert (=> b!5460475 (= res!2325742 (= (size!39907 lt!2230168) (+ (size!39907 lt!2229729) (size!39907 lt!2229899))))))

(assert (= (and d!1738151 c!954172) b!5460473))

(assert (= (and d!1738151 (not c!954172)) b!5460474))

(assert (= (and d!1738151 res!2325741) b!5460475))

(assert (= (and b!5460475 res!2325742) b!5460476))

(declare-fun m!6481988 () Bool)

(assert (=> b!5460474 m!6481988))

(declare-fun m!6481990 () Bool)

(assert (=> d!1738151 m!6481990))

(declare-fun m!6481992 () Bool)

(assert (=> d!1738151 m!6481992))

(declare-fun m!6481994 () Bool)

(assert (=> d!1738151 m!6481994))

(declare-fun m!6481996 () Bool)

(assert (=> b!5460475 m!6481996))

(declare-fun m!6481998 () Bool)

(assert (=> b!5460475 m!6481998))

(declare-fun m!6482000 () Bool)

(assert (=> b!5460475 m!6482000))

(assert (=> bm!400380 d!1738151))

(declare-fun b!5460477 () Bool)

(declare-fun res!2325744 () Bool)

(declare-fun e!3381359 () Bool)

(assert (=> b!5460477 (=> res!2325744 e!3381359)))

(assert (=> b!5460477 (= res!2325744 (not ((_ is ElementMatch!15287) (ite c!953816 lt!2229788 (regOne!31086 r!7292)))))))

(declare-fun e!3381356 () Bool)

(assert (=> b!5460477 (= e!3381356 e!3381359)))

(declare-fun e!3381362 () Bool)

(declare-fun b!5460478 () Bool)

(assert (=> b!5460478 (= e!3381362 (= (head!11691 (ite c!953816 (_1!35789 lt!2229728) s!2326)) (c!953823 (ite c!953816 lt!2229788 (regOne!31086 r!7292)))))))

(declare-fun e!3381357 () Bool)

(declare-fun b!5460479 () Bool)

(assert (=> b!5460479 (= e!3381357 (nullable!5456 (ite c!953816 lt!2229788 (regOne!31086 r!7292))))))

(declare-fun b!5460480 () Bool)

(declare-fun e!3381360 () Bool)

(declare-fun e!3381361 () Bool)

(assert (=> b!5460480 (= e!3381360 e!3381361)))

(declare-fun res!2325743 () Bool)

(assert (=> b!5460480 (=> res!2325743 e!3381361)))

(declare-fun call!400657 () Bool)

(assert (=> b!5460480 (= res!2325743 call!400657)))

(declare-fun b!5460481 () Bool)

(declare-fun res!2325749 () Bool)

(assert (=> b!5460481 (=> res!2325749 e!3381361)))

(assert (=> b!5460481 (= res!2325749 (not (isEmpty!34025 (tail!10788 (ite c!953816 (_1!35789 lt!2229728) s!2326)))))))

(declare-fun d!1738153 () Bool)

(declare-fun e!3381358 () Bool)

(assert (=> d!1738153 e!3381358))

(declare-fun c!954175 () Bool)

(assert (=> d!1738153 (= c!954175 ((_ is EmptyExpr!15287) (ite c!953816 lt!2229788 (regOne!31086 r!7292))))))

(declare-fun lt!2230169 () Bool)

(assert (=> d!1738153 (= lt!2230169 e!3381357)))

(declare-fun c!954174 () Bool)

(assert (=> d!1738153 (= c!954174 (isEmpty!34025 (ite c!953816 (_1!35789 lt!2229728) s!2326)))))

(assert (=> d!1738153 (validRegex!7023 (ite c!953816 lt!2229788 (regOne!31086 r!7292)))))

(assert (=> d!1738153 (= (matchR!7472 (ite c!953816 lt!2229788 (regOne!31086 r!7292)) (ite c!953816 (_1!35789 lt!2229728) s!2326)) lt!2230169)))

(declare-fun b!5460482 () Bool)

(declare-fun res!2325745 () Bool)

(assert (=> b!5460482 (=> (not res!2325745) (not e!3381362))))

(assert (=> b!5460482 (= res!2325745 (isEmpty!34025 (tail!10788 (ite c!953816 (_1!35789 lt!2229728) s!2326))))))

(declare-fun b!5460483 () Bool)

(assert (=> b!5460483 (= e!3381357 (matchR!7472 (derivativeStep!4308 (ite c!953816 lt!2229788 (regOne!31086 r!7292)) (head!11691 (ite c!953816 (_1!35789 lt!2229728) s!2326))) (tail!10788 (ite c!953816 (_1!35789 lt!2229728) s!2326))))))

(declare-fun b!5460484 () Bool)

(assert (=> b!5460484 (= e!3381356 (not lt!2230169))))

(declare-fun b!5460485 () Bool)

(declare-fun res!2325747 () Bool)

(assert (=> b!5460485 (=> res!2325747 e!3381359)))

(assert (=> b!5460485 (= res!2325747 e!3381362)))

(declare-fun res!2325750 () Bool)

(assert (=> b!5460485 (=> (not res!2325750) (not e!3381362))))

(assert (=> b!5460485 (= res!2325750 lt!2230169)))

(declare-fun b!5460486 () Bool)

(declare-fun res!2325748 () Bool)

(assert (=> b!5460486 (=> (not res!2325748) (not e!3381362))))

(assert (=> b!5460486 (= res!2325748 (not call!400657))))

(declare-fun b!5460487 () Bool)

(assert (=> b!5460487 (= e!3381361 (not (= (head!11691 (ite c!953816 (_1!35789 lt!2229728) s!2326)) (c!953823 (ite c!953816 lt!2229788 (regOne!31086 r!7292))))))))

(declare-fun b!5460488 () Bool)

(assert (=> b!5460488 (= e!3381358 e!3381356)))

(declare-fun c!954173 () Bool)

(assert (=> b!5460488 (= c!954173 ((_ is EmptyLang!15287) (ite c!953816 lt!2229788 (regOne!31086 r!7292))))))

(declare-fun bm!400652 () Bool)

(assert (=> bm!400652 (= call!400657 (isEmpty!34025 (ite c!953816 (_1!35789 lt!2229728) s!2326)))))

(declare-fun b!5460489 () Bool)

(assert (=> b!5460489 (= e!3381358 (= lt!2230169 call!400657))))

(declare-fun b!5460490 () Bool)

(assert (=> b!5460490 (= e!3381359 e!3381360)))

(declare-fun res!2325746 () Bool)

(assert (=> b!5460490 (=> (not res!2325746) (not e!3381360))))

(assert (=> b!5460490 (= res!2325746 (not lt!2230169))))

(assert (= (and d!1738153 c!954174) b!5460479))

(assert (= (and d!1738153 (not c!954174)) b!5460483))

(assert (= (and d!1738153 c!954175) b!5460489))

(assert (= (and d!1738153 (not c!954175)) b!5460488))

(assert (= (and b!5460488 c!954173) b!5460484))

(assert (= (and b!5460488 (not c!954173)) b!5460477))

(assert (= (and b!5460477 (not res!2325744)) b!5460485))

(assert (= (and b!5460485 res!2325750) b!5460486))

(assert (= (and b!5460486 res!2325748) b!5460482))

(assert (= (and b!5460482 res!2325745) b!5460478))

(assert (= (and b!5460485 (not res!2325747)) b!5460490))

(assert (= (and b!5460490 res!2325746) b!5460480))

(assert (= (and b!5460480 (not res!2325743)) b!5460481))

(assert (= (and b!5460481 (not res!2325749)) b!5460487))

(assert (= (or b!5460489 b!5460480 b!5460486) bm!400652))

(declare-fun m!6482008 () Bool)

(assert (=> b!5460482 m!6482008))

(assert (=> b!5460482 m!6482008))

(declare-fun m!6482012 () Bool)

(assert (=> b!5460482 m!6482012))

(declare-fun m!6482014 () Bool)

(assert (=> b!5460479 m!6482014))

(declare-fun m!6482016 () Bool)

(assert (=> d!1738153 m!6482016))

(declare-fun m!6482018 () Bool)

(assert (=> d!1738153 m!6482018))

(assert (=> b!5460481 m!6482008))

(assert (=> b!5460481 m!6482008))

(assert (=> b!5460481 m!6482012))

(assert (=> bm!400652 m!6482016))

(declare-fun m!6482020 () Bool)

(assert (=> b!5460478 m!6482020))

(assert (=> b!5460487 m!6482020))

(assert (=> b!5460483 m!6482020))

(assert (=> b!5460483 m!6482020))

(declare-fun m!6482022 () Bool)

(assert (=> b!5460483 m!6482022))

(assert (=> b!5460483 m!6482008))

(assert (=> b!5460483 m!6482022))

(assert (=> b!5460483 m!6482008))

(declare-fun m!6482024 () Bool)

(assert (=> b!5460483 m!6482024))

(assert (=> bm!400350 d!1738153))

(declare-fun d!1738157 () Bool)

(assert (=> d!1738157 (= (Exists!2468 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289271 (ite c!953822 lambda!289276 lambda!289281))))) (choose!41483 (ite c!953812 lambda!289260 (ite c!953814 lambda!289264 (ite c!953817 lambda!289271 (ite c!953822 lambda!289276 lambda!289281))))))))

(declare-fun bs!1263815 () Bool)

(assert (= bs!1263815 d!1738157))

(declare-fun m!6482026 () Bool)

(assert (=> bs!1263815 m!6482026))

(assert (=> bm!400411 d!1738157))

(declare-fun bs!1263818 () Bool)

(declare-fun d!1738159 () Bool)

(assert (= bs!1263818 (and d!1738159 d!1738073)))

(declare-fun lambda!289393 () Int)

(assert (=> bs!1263818 (= lambda!289393 lambda!289365)))

(declare-fun bs!1263819 () Bool)

(assert (= bs!1263819 (and d!1738159 d!1737923)))

(assert (=> bs!1263819 (= lambda!289393 lambda!289323)))

(declare-fun bs!1263820 () Bool)

(assert (= bs!1263820 (and d!1738159 b!5459307)))

(assert (=> bs!1263820 (= lambda!289393 lambda!289275)))

(declare-fun bs!1263821 () Bool)

(assert (= bs!1263821 (and d!1738159 b!5459299)))

(assert (=> bs!1263821 (= lambda!289393 lambda!289273)))

(declare-fun bs!1263822 () Bool)

(assert (= bs!1263822 (and d!1738159 d!1737965)))

(assert (=> bs!1263822 (= lambda!289393 lambda!289344)))

(declare-fun bs!1263823 () Bool)

(assert (= bs!1263823 (and d!1738159 d!1737949)))

(assert (=> bs!1263823 (= lambda!289393 lambda!289336)))

(declare-fun bs!1263824 () Bool)

(assert (= bs!1263824 (and d!1738159 d!1737869)))

(assert (=> bs!1263824 (= lambda!289393 lambda!289308)))

(declare-fun bs!1263825 () Bool)

(assert (= bs!1263825 (and d!1738159 d!1737787)))

(assert (=> bs!1263825 (= lambda!289393 lambda!289286)))

(declare-fun bs!1263826 () Bool)

(assert (= bs!1263826 (and d!1738159 d!1738081)))

(assert (=> bs!1263826 (= lambda!289393 lambda!289380)))

(declare-fun b!5460553 () Bool)

(declare-fun e!3381397 () Bool)

(declare-fun lt!2230178 () Regex!15287)

(declare-fun isEmptyLang!1029 (Regex!15287) Bool)

(assert (=> b!5460553 (= e!3381397 (isEmptyLang!1029 lt!2230178))))

(declare-fun b!5460554 () Bool)

(declare-fun e!3381400 () Regex!15287)

(assert (=> b!5460554 (= e!3381400 (Union!15287 (h!68485 (unfocusZipperList!729 zl!343)) (generalisedUnion!1216 (t!375390 (unfocusZipperList!729 zl!343)))))))

(declare-fun b!5460555 () Bool)

(declare-fun e!3381401 () Bool)

(assert (=> b!5460555 (= e!3381401 (isEmpty!34024 (t!375390 (unfocusZipperList!729 zl!343))))))

(declare-fun b!5460556 () Bool)

(declare-fun e!3381398 () Regex!15287)

(assert (=> b!5460556 (= e!3381398 (h!68485 (unfocusZipperList!729 zl!343)))))

(declare-fun e!3381399 () Bool)

(assert (=> d!1738159 e!3381399))

(declare-fun res!2325777 () Bool)

(assert (=> d!1738159 (=> (not res!2325777) (not e!3381399))))

(assert (=> d!1738159 (= res!2325777 (validRegex!7023 lt!2230178))))

(assert (=> d!1738159 (= lt!2230178 e!3381398)))

(declare-fun c!954196 () Bool)

(assert (=> d!1738159 (= c!954196 e!3381401)))

(declare-fun res!2325778 () Bool)

(assert (=> d!1738159 (=> (not res!2325778) (not e!3381401))))

(assert (=> d!1738159 (= res!2325778 ((_ is Cons!62037) (unfocusZipperList!729 zl!343)))))

(assert (=> d!1738159 (forall!14591 (unfocusZipperList!729 zl!343) lambda!289393)))

(assert (=> d!1738159 (= (generalisedUnion!1216 (unfocusZipperList!729 zl!343)) lt!2230178)))

(declare-fun b!5460557 () Bool)

(declare-fun e!3381402 () Bool)

(declare-fun isUnion!461 (Regex!15287) Bool)

(assert (=> b!5460557 (= e!3381402 (isUnion!461 lt!2230178))))

(declare-fun b!5460558 () Bool)

(assert (=> b!5460558 (= e!3381400 EmptyLang!15287)))

(declare-fun b!5460559 () Bool)

(assert (=> b!5460559 (= e!3381398 e!3381400)))

(declare-fun c!954197 () Bool)

(assert (=> b!5460559 (= c!954197 ((_ is Cons!62037) (unfocusZipperList!729 zl!343)))))

(declare-fun b!5460560 () Bool)

(assert (=> b!5460560 (= e!3381402 (= lt!2230178 (head!11693 (unfocusZipperList!729 zl!343))))))

(declare-fun b!5460561 () Bool)

(assert (=> b!5460561 (= e!3381399 e!3381397)))

(declare-fun c!954195 () Bool)

(assert (=> b!5460561 (= c!954195 (isEmpty!34024 (unfocusZipperList!729 zl!343)))))

(declare-fun b!5460562 () Bool)

(assert (=> b!5460562 (= e!3381397 e!3381402)))

(declare-fun c!954194 () Bool)

(assert (=> b!5460562 (= c!954194 (isEmpty!34024 (tail!10790 (unfocusZipperList!729 zl!343))))))

(assert (= (and d!1738159 res!2325778) b!5460555))

(assert (= (and d!1738159 c!954196) b!5460556))

(assert (= (and d!1738159 (not c!954196)) b!5460559))

(assert (= (and b!5460559 c!954197) b!5460554))

(assert (= (and b!5460559 (not c!954197)) b!5460558))

(assert (= (and d!1738159 res!2325777) b!5460561))

(assert (= (and b!5460561 c!954195) b!5460553))

(assert (= (and b!5460561 (not c!954195)) b!5460562))

(assert (= (and b!5460562 c!954194) b!5460560))

(assert (= (and b!5460562 (not c!954194)) b!5460557))

(declare-fun m!6482094 () Bool)

(assert (=> b!5460553 m!6482094))

(declare-fun m!6482096 () Bool)

(assert (=> b!5460557 m!6482096))

(declare-fun m!6482098 () Bool)

(assert (=> b!5460555 m!6482098))

(assert (=> b!5460560 m!6480398))

(declare-fun m!6482100 () Bool)

(assert (=> b!5460560 m!6482100))

(declare-fun m!6482102 () Bool)

(assert (=> d!1738159 m!6482102))

(assert (=> d!1738159 m!6480398))

(declare-fun m!6482104 () Bool)

(assert (=> d!1738159 m!6482104))

(declare-fun m!6482106 () Bool)

(assert (=> b!5460554 m!6482106))

(assert (=> b!5460561 m!6480398))

(declare-fun m!6482108 () Bool)

(assert (=> b!5460561 m!6482108))

(assert (=> b!5460562 m!6480398))

(declare-fun m!6482110 () Bool)

(assert (=> b!5460562 m!6482110))

(assert (=> b!5460562 m!6482110))

(declare-fun m!6482112 () Bool)

(assert (=> b!5460562 m!6482112))

(assert (=> b!5459291 d!1738159))

(declare-fun bs!1263827 () Bool)

(declare-fun d!1738179 () Bool)

(assert (= bs!1263827 (and d!1738179 d!1738073)))

(declare-fun lambda!289396 () Int)

(assert (=> bs!1263827 (= lambda!289396 lambda!289365)))

(declare-fun bs!1263828 () Bool)

(assert (= bs!1263828 (and d!1738179 d!1738159)))

(assert (=> bs!1263828 (= lambda!289396 lambda!289393)))

(declare-fun bs!1263829 () Bool)

(assert (= bs!1263829 (and d!1738179 d!1737923)))

(assert (=> bs!1263829 (= lambda!289396 lambda!289323)))

(declare-fun bs!1263830 () Bool)

(assert (= bs!1263830 (and d!1738179 b!5459307)))

(assert (=> bs!1263830 (= lambda!289396 lambda!289275)))

(declare-fun bs!1263831 () Bool)

(assert (= bs!1263831 (and d!1738179 b!5459299)))

(assert (=> bs!1263831 (= lambda!289396 lambda!289273)))

(declare-fun bs!1263832 () Bool)

(assert (= bs!1263832 (and d!1738179 d!1737965)))

(assert (=> bs!1263832 (= lambda!289396 lambda!289344)))

(declare-fun bs!1263833 () Bool)

(assert (= bs!1263833 (and d!1738179 d!1737949)))

(assert (=> bs!1263833 (= lambda!289396 lambda!289336)))

(declare-fun bs!1263834 () Bool)

(assert (= bs!1263834 (and d!1738179 d!1737869)))

(assert (=> bs!1263834 (= lambda!289396 lambda!289308)))

(declare-fun bs!1263835 () Bool)

(assert (= bs!1263835 (and d!1738179 d!1737787)))

(assert (=> bs!1263835 (= lambda!289396 lambda!289286)))

(declare-fun bs!1263836 () Bool)

(assert (= bs!1263836 (and d!1738179 d!1738081)))

(assert (=> bs!1263836 (= lambda!289396 lambda!289380)))

(declare-fun lt!2230183 () List!62161)

(assert (=> d!1738179 (forall!14591 lt!2230183 lambda!289396)))

(declare-fun e!3381414 () List!62161)

(assert (=> d!1738179 (= lt!2230183 e!3381414)))

(declare-fun c!954204 () Bool)

(assert (=> d!1738179 (= c!954204 ((_ is Cons!62038) zl!343))))

(assert (=> d!1738179 (= (unfocusZipperList!729 zl!343) lt!2230183)))

(declare-fun b!5460585 () Bool)

(assert (=> b!5460585 (= e!3381414 (Cons!62037 (generalisedConcat!956 (exprs!5171 (h!68486 zl!343))) (unfocusZipperList!729 (t!375391 zl!343))))))

(declare-fun b!5460586 () Bool)

(assert (=> b!5460586 (= e!3381414 Nil!62037)))

(assert (= (and d!1738179 c!954204) b!5460585))

(assert (= (and d!1738179 (not c!954204)) b!5460586))

(declare-fun m!6482132 () Bool)

(assert (=> d!1738179 m!6482132))

(assert (=> b!5460585 m!6480552))

(declare-fun m!6482136 () Bool)

(assert (=> b!5460585 m!6482136))

(assert (=> b!5459291 d!1738179))

(declare-fun d!1738183 () Bool)

(assert (=> d!1738183 (matchR!7472 (Concat!24132 lt!2229794 (regTwo!31086 r!7292)) (++!13653 (ite c!953817 (_2!35789 lt!2229919) lt!2229821) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))))))

(declare-fun lt!2230187 () Unit!154924)

(assert (=> d!1738183 (= lt!2230187 (choose!41496 lt!2229794 (regTwo!31086 r!7292) (ite c!953817 (_2!35789 lt!2229919) lt!2229821) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))))))

(declare-fun e!3381415 () Bool)

(assert (=> d!1738183 e!3381415))

(declare-fun res!2325789 () Bool)

(assert (=> d!1738183 (=> (not res!2325789) (not e!3381415))))

(assert (=> d!1738183 (= res!2325789 (validRegex!7023 lt!2229794))))

(assert (=> d!1738183 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!254 lt!2229794 (regTwo!31086 r!7292) (ite c!953817 (_2!35789 lt!2229919) lt!2229821) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229728))) lt!2230187)))

(declare-fun b!5460587 () Bool)

(assert (=> b!5460587 (= e!3381415 (validRegex!7023 (regTwo!31086 r!7292)))))

(assert (= (and d!1738183 res!2325789) b!5460587))

(declare-fun m!6482144 () Bool)

(assert (=> d!1738183 m!6482144))

(assert (=> d!1738183 m!6482144))

(declare-fun m!6482146 () Bool)

(assert (=> d!1738183 m!6482146))

(declare-fun m!6482148 () Bool)

(assert (=> d!1738183 m!6482148))

(declare-fun m!6482150 () Bool)

(assert (=> d!1738183 m!6482150))

(declare-fun m!6482152 () Bool)

(assert (=> b!5460587 m!6482152))

(assert (=> bm!400297 d!1738183))

(declare-fun b!5460588 () Bool)

(declare-fun res!2325791 () Bool)

(declare-fun e!3381419 () Bool)

(assert (=> b!5460588 (=> res!2325791 e!3381419)))

(assert (=> b!5460588 (= res!2325791 (not ((_ is ElementMatch!15287) (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)))))))

(declare-fun e!3381416 () Bool)

(assert (=> b!5460588 (= e!3381416 e!3381419)))

(declare-fun b!5460589 () Bool)

(declare-fun e!3381422 () Bool)

(assert (=> b!5460589 (= e!3381422 (= (head!11691 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))) (c!953823 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)))))))

(declare-fun e!3381417 () Bool)

(declare-fun b!5460590 () Bool)

(assert (=> b!5460590 (= e!3381417 (nullable!5456 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794))))))

(declare-fun b!5460591 () Bool)

(declare-fun e!3381420 () Bool)

(declare-fun e!3381421 () Bool)

(assert (=> b!5460591 (= e!3381420 e!3381421)))

(declare-fun res!2325790 () Bool)

(assert (=> b!5460591 (=> res!2325790 e!3381421)))

(declare-fun call!400661 () Bool)

(assert (=> b!5460591 (= res!2325790 call!400661)))

(declare-fun b!5460592 () Bool)

(declare-fun res!2325796 () Bool)

(assert (=> b!5460592 (=> res!2325796 e!3381421)))

(assert (=> b!5460592 (= res!2325796 (not (isEmpty!34025 (tail!10788 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))))))))

(declare-fun d!1738189 () Bool)

(declare-fun e!3381418 () Bool)

(assert (=> d!1738189 e!3381418))

(declare-fun c!954207 () Bool)

(assert (=> d!1738189 (= c!954207 ((_ is EmptyExpr!15287) (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794))))))

(declare-fun lt!2230188 () Bool)

(assert (=> d!1738189 (= lt!2230188 e!3381417)))

(declare-fun c!954206 () Bool)

(assert (=> d!1738189 (= c!954206 (isEmpty!34025 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))))))

(assert (=> d!1738189 (validRegex!7023 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)))))

(assert (=> d!1738189 (= (matchR!7472 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))) lt!2230188)))

(declare-fun b!5460593 () Bool)

(declare-fun res!2325792 () Bool)

(assert (=> b!5460593 (=> (not res!2325792) (not e!3381422))))

(assert (=> b!5460593 (= res!2325792 (isEmpty!34025 (tail!10788 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821)))))))

(declare-fun b!5460594 () Bool)

(assert (=> b!5460594 (= e!3381417 (matchR!7472 (derivativeStep!4308 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794)) (head!11691 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821)))) (tail!10788 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821)))))))

(declare-fun b!5460595 () Bool)

(assert (=> b!5460595 (= e!3381416 (not lt!2230188))))

(declare-fun b!5460596 () Bool)

(declare-fun res!2325794 () Bool)

(assert (=> b!5460596 (=> res!2325794 e!3381419)))

(assert (=> b!5460596 (= res!2325794 e!3381422)))

(declare-fun res!2325797 () Bool)

(assert (=> b!5460596 (=> (not res!2325797) (not e!3381422))))

(assert (=> b!5460596 (= res!2325797 lt!2230188)))

(declare-fun b!5460597 () Bool)

(declare-fun res!2325795 () Bool)

(assert (=> b!5460597 (=> (not res!2325795) (not e!3381422))))

(assert (=> b!5460597 (= res!2325795 (not call!400661))))

(declare-fun b!5460598 () Bool)

(assert (=> b!5460598 (= e!3381421 (not (= (head!11691 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))) (c!953823 (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794))))))))

(declare-fun b!5460599 () Bool)

(assert (=> b!5460599 (= e!3381418 e!3381416)))

(declare-fun c!954205 () Bool)

(assert (=> b!5460599 (= c!954205 ((_ is EmptyLang!15287) (ite c!953812 (Concat!24132 (regOne!31086 (regOne!31086 r!7292)) (Concat!24132 (regTwo!31086 (regOne!31086 r!7292)) lt!2229912)) (ite c!953814 (Concat!24132 (regOne!31086 r!7292) lt!2229863) lt!2229794))))))

(declare-fun bm!400656 () Bool)

(assert (=> bm!400656 (= call!400661 (isEmpty!34025 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) lt!2229821))))))

(declare-fun b!5460600 () Bool)

(assert (=> b!5460600 (= e!3381418 (= lt!2230188 call!400661))))

(declare-fun b!5460601 () Bool)

(assert (=> b!5460601 (= e!3381419 e!3381420)))

(declare-fun res!2325793 () Bool)

(assert (=> b!5460601 (=> (not res!2325793) (not e!3381420))))

(assert (=> b!5460601 (= res!2325793 (not lt!2230188))))

(assert (= (and d!1738189 c!954206) b!5460590))

(assert (= (and d!1738189 (not c!954206)) b!5460594))

(assert (= (and d!1738189 c!954207) b!5460600))

(assert (= (and d!1738189 (not c!954207)) b!5460599))

(assert (= (and b!5460599 c!954205) b!5460595))

(assert (= (and b!5460599 (not c!954205)) b!5460588))

(assert (= (and b!5460588 (not res!2325791)) b!5460596))

(assert (= (and b!5460596 res!2325797) b!5460597))

(assert (= (and b!5460597 res!2325795) b!5460593))

(assert (= (and b!5460593 res!2325792) b!5460589))

(assert (= (and b!5460596 (not res!2325794)) b!5460601))

(assert (= (and b!5460601 res!2325793) b!5460591))

(assert (= (and b!5460591 (not res!2325790)) b!5460592))

(assert (= (and b!5460592 (not res!2325796)) b!5460598))

(assert (= (or b!5460600 b!5460591 b!5460597) bm!400656))

(declare-fun m!6482154 () Bool)

(assert (=> b!5460593 m!6482154))

(assert (=> b!5460593 m!6482154))

(declare-fun m!6482156 () Bool)

(assert (=> b!5460593 m!6482156))

(declare-fun m!6482158 () Bool)

(assert (=> b!5460590 m!6482158))

(declare-fun m!6482160 () Bool)

(assert (=> d!1738189 m!6482160))

(declare-fun m!6482162 () Bool)

(assert (=> d!1738189 m!6482162))

(assert (=> b!5460592 m!6482154))

(assert (=> b!5460592 m!6482154))

(assert (=> b!5460592 m!6482156))

(assert (=> bm!400656 m!6482160))

(declare-fun m!6482164 () Bool)

(assert (=> b!5460589 m!6482164))

(assert (=> b!5460598 m!6482164))

(assert (=> b!5460594 m!6482164))

(assert (=> b!5460594 m!6482164))

(declare-fun m!6482166 () Bool)

(assert (=> b!5460594 m!6482166))

(assert (=> b!5460594 m!6482154))

(assert (=> b!5460594 m!6482166))

(assert (=> b!5460594 m!6482154))

(declare-fun m!6482168 () Bool)

(assert (=> b!5460594 m!6482168))

(assert (=> bm!400347 d!1738189))

(declare-fun d!1738191 () Bool)

(assert (=> d!1738191 (= (Exists!2468 (ite c!953812 lambda!289263 (ite c!953817 lambda!289270 (ite c!953822 lambda!289278 lambda!289282)))) (choose!41483 (ite c!953812 lambda!289263 (ite c!953817 lambda!289270 (ite c!953822 lambda!289278 lambda!289282)))))))

(declare-fun bs!1263840 () Bool)

(assert (= bs!1263840 d!1738191))

(declare-fun m!6482172 () Bool)

(assert (=> bs!1263840 m!6482172))

(assert (=> bm!400331 d!1738191))

(declare-fun d!1738195 () Bool)

(assert (=> d!1738195 (= (flatMap!1014 (ite c!953819 lt!2229716 (ite c!953812 lt!2229910 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))) (choose!41501 (ite c!953819 lt!2229716 (ite c!953812 lt!2229910 (ite c!953817 lt!2229816 lt!2229771))) (ite c!953819 lambda!289259 (ite c!953812 lambda!289259 (ite c!953817 lambda!289259 lambda!289259)))))))

(declare-fun bs!1263841 () Bool)

(assert (= bs!1263841 d!1738195))

(declare-fun m!6482174 () Bool)

(assert (=> bs!1263841 m!6482174))

(assert (=> bm!400390 d!1738195))

(declare-fun bs!1263842 () Bool)

(declare-fun b!5460618 () Bool)

(assert (= bs!1263842 (and b!5460618 b!5459302)))

(declare-fun lambda!289397 () Int)

(assert (=> bs!1263842 (not (= lambda!289397 lambda!289282))))

(declare-fun bs!1263843 () Bool)

(assert (= bs!1263843 (and b!5460618 d!1737855)))

(assert (=> bs!1263843 (not (= lambda!289397 lambda!289293))))

(declare-fun bs!1263844 () Bool)

(assert (= bs!1263844 (and b!5460618 b!5459299)))

(assert (=> bs!1263844 (not (= lambda!289397 lambda!289270))))

(declare-fun bs!1263845 () Bool)

(assert (= bs!1263845 (and b!5460618 b!5459286)))

(assert (=> bs!1263845 (not (= lambda!289397 lambda!289261))))

(declare-fun bs!1263846 () Bool)

(assert (= bs!1263846 (and b!5460618 b!5459307)))

(assert (=> bs!1263846 (not (= lambda!289397 lambda!289279))))

(declare-fun bs!1263847 () Bool)

(assert (= bs!1263847 (and b!5460618 d!1738077)))

(assert (=> bs!1263847 (not (= lambda!289397 lambda!289375))))

(declare-fun bs!1263849 () Bool)

(assert (= bs!1263849 (and b!5460618 b!5459320)))

(assert (=> bs!1263849 (not (= lambda!289397 lambda!289265))))

(assert (=> bs!1263842 (= (and (= s!2326 Nil!62036) (= (reg!15616 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= lt!2229720 lt!2229794)) (= lambda!289397 lambda!289283))))

(assert (=> bs!1263847 (= (and (= s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (reg!15616 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= lt!2229720 (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289397 lambda!289377))))

(assert (=> bs!1263845 (not (= lambda!289397 lambda!289262))))

(declare-fun bs!1263850 () Bool)

(assert (= bs!1263850 (and b!5460618 b!5460143)))

(assert (=> bs!1263850 (not (= lambda!289397 lambda!289351))))

(assert (=> bs!1263844 (not (= lambda!289397 lambda!289272))))

(assert (=> bs!1263846 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (reg!15616 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= lt!2229720 lt!2229794)) (= lambda!289397 lambda!289280))))

(assert (=> bs!1263846 (not (= lambda!289397 lambda!289277))))

(assert (=> bs!1263849 (not (= lambda!289397 lambda!289264))))

(declare-fun bs!1263852 () Bool)

(assert (= bs!1263852 (and b!5460618 b!5460142)))

(assert (=> bs!1263852 (= (and (= (reg!15616 lt!2229720) (reg!15616 r!7292)) (= lt!2229720 r!7292)) (= lambda!289397 lambda!289350))))

(assert (=> bs!1263845 (not (= lambda!289397 lambda!289263))))

(declare-fun bs!1263853 () Bool)

(assert (= bs!1263853 (and b!5460618 b!5459662)))

(assert (=> bs!1263853 (not (= lambda!289397 lambda!289301))))

(declare-fun bs!1263854 () Bool)

(assert (= bs!1263854 (and b!5460618 d!1738121)))

(assert (=> bs!1263854 (not (= lambda!289397 lambda!289385))))

(declare-fun bs!1263855 () Bool)

(assert (= bs!1263855 (and b!5460618 b!5459333)))

(assert (=> bs!1263855 (not (= lambda!289397 lambda!289269))))

(assert (=> bs!1263845 (not (= lambda!289397 lambda!289260))))

(assert (=> bs!1263842 (not (= lambda!289397 lambda!289281))))

(assert (=> bs!1263846 (not (= lambda!289397 lambda!289276))))

(declare-fun bs!1263863 () Bool)

(assert (= bs!1263863 (and b!5460618 b!5459661)))

(assert (=> bs!1263863 (= (and (= (reg!15616 lt!2229720) (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lt!2229720 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lambda!289397 lambda!289298))))

(assert (=> bs!1263854 (not (= lambda!289397 lambda!289387))))

(declare-fun bs!1263866 () Bool)

(assert (= bs!1263866 (and b!5460618 b!5459292)))

(assert (=> bs!1263866 (not (= lambda!289397 lambda!289257))))

(assert (=> bs!1263846 (not (= lambda!289397 lambda!289278))))

(assert (=> bs!1263844 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (reg!15616 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= lt!2229720 lt!2229794)) (= lambda!289397 lambda!289271))))

(declare-fun bs!1263867 () Bool)

(assert (= bs!1263867 (and b!5460618 d!1737983)))

(assert (=> bs!1263867 (not (= lambda!289397 lambda!289346))))

(assert (=> bs!1263849 (not (= lambda!289397 lambda!289266))))

(declare-fun bs!1263868 () Bool)

(assert (= bs!1263868 (and b!5460618 d!1737877)))

(assert (=> bs!1263868 (not (= lambda!289397 lambda!289315))))

(assert (=> bs!1263849 (not (= lambda!289397 lambda!289267))))

(assert (=> bs!1263866 (not (= lambda!289397 lambda!289258))))

(assert (=> bs!1263855 (not (= lambda!289397 lambda!289268))))

(assert (=> bs!1263868 (not (= lambda!289397 lambda!289314))))

(assert (=> b!5460618 true))

(assert (=> b!5460618 true))

(declare-fun bs!1263869 () Bool)

(declare-fun b!5460619 () Bool)

(assert (= bs!1263869 (and b!5460619 b!5459302)))

(declare-fun lambda!289399 () Int)

(assert (=> bs!1263869 (= (and (= s!2326 Nil!62036) (= (regOne!31086 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229794)) (= lambda!289399 lambda!289282))))

(declare-fun bs!1263870 () Bool)

(assert (= bs!1263870 (and b!5460619 d!1737855)))

(assert (=> bs!1263870 (not (= lambda!289399 lambda!289293))))

(declare-fun bs!1263871 () Bool)

(assert (= bs!1263871 (and b!5460619 b!5459299)))

(assert (=> bs!1263871 (not (= lambda!289399 lambda!289270))))

(declare-fun bs!1263873 () Bool)

(assert (= bs!1263873 (and b!5460619 b!5459286)))

(assert (=> bs!1263873 (= (and (= (regOne!31086 lt!2229720) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229727)) (= lambda!289399 lambda!289261))))

(declare-fun bs!1263875 () Bool)

(assert (= bs!1263875 (and b!5460619 b!5459307)))

(assert (=> bs!1263875 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229794)) (= lambda!289399 lambda!289279))))

(declare-fun bs!1263877 () Bool)

(assert (= bs!1263877 (and b!5460619 d!1738077)))

(assert (=> bs!1263877 (not (= lambda!289399 lambda!289375))))

(declare-fun bs!1263878 () Bool)

(assert (= bs!1263878 (and b!5460619 b!5459320)))

(assert (=> bs!1263878 (= (and (= (regOne!31086 lt!2229720) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229767)) (= lambda!289399 lambda!289265))))

(assert (=> bs!1263869 (not (= lambda!289399 lambda!289283))))

(assert (=> bs!1263877 (not (= lambda!289399 lambda!289377))))

(assert (=> bs!1263873 (not (= lambda!289399 lambda!289262))))

(declare-fun bs!1263881 () Bool)

(assert (= bs!1263881 (and b!5460619 b!5460143)))

(assert (=> bs!1263881 (= (and (= (regOne!31086 lt!2229720) (regOne!31086 r!7292)) (= (regTwo!31086 lt!2229720) (regTwo!31086 r!7292))) (= lambda!289399 lambda!289351))))

(assert (=> bs!1263871 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 lt!2229720) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229794)) (= lambda!289399 lambda!289272))))

(assert (=> bs!1263875 (not (= lambda!289399 lambda!289280))))

(assert (=> bs!1263875 (= (and (= (regOne!31086 lt!2229720) lt!2229788) (= (regTwo!31086 lt!2229720) (regTwo!31086 r!7292))) (= lambda!289399 lambda!289277))))

(assert (=> bs!1263878 (not (= lambda!289399 lambda!289264))))

(declare-fun bs!1263887 () Bool)

(assert (= bs!1263887 (and b!5460619 b!5460618)))

(assert (=> bs!1263887 (not (= lambda!289399 lambda!289397))))

(declare-fun bs!1263889 () Bool)

(assert (= bs!1263889 (and b!5460619 b!5460142)))

(assert (=> bs!1263889 (not (= lambda!289399 lambda!289350))))

(assert (=> bs!1263873 (= (and (= (regOne!31086 lt!2229720) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229912)) (= lambda!289399 lambda!289263))))

(declare-fun bs!1263891 () Bool)

(assert (= bs!1263891 (and b!5460619 b!5459662)))

(assert (=> bs!1263891 (= (and (= (regOne!31086 lt!2229720) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (regTwo!31086 lt!2229720) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289399 lambda!289301))))

(declare-fun bs!1263893 () Bool)

(assert (= bs!1263893 (and b!5460619 d!1738121)))

(assert (=> bs!1263893 (not (= lambda!289399 lambda!289385))))

(declare-fun bs!1263895 () Bool)

(assert (= bs!1263895 (and b!5460619 b!5459333)))

(assert (=> bs!1263895 (= (and (= (regOne!31086 lt!2229720) lt!2229794) (= (regTwo!31086 lt!2229720) (regTwo!31086 r!7292))) (= lambda!289399 lambda!289269))))

(assert (=> bs!1263873 (not (= lambda!289399 lambda!289260))))

(assert (=> bs!1263869 (not (= lambda!289399 lambda!289281))))

(assert (=> bs!1263875 (not (= lambda!289399 lambda!289276))))

(declare-fun bs!1263897 () Bool)

(assert (= bs!1263897 (and b!5460619 b!5459661)))

(assert (=> bs!1263897 (not (= lambda!289399 lambda!289298))))

(assert (=> bs!1263893 (= (and (= (regOne!31086 lt!2229720) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 lt!2229720) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289399 lambda!289387))))

(declare-fun bs!1263898 () Bool)

(assert (= bs!1263898 (and b!5460619 b!5459292)))

(assert (=> bs!1263898 (not (= lambda!289399 lambda!289257))))

(assert (=> bs!1263875 (not (= lambda!289399 lambda!289278))))

(assert (=> bs!1263871 (not (= lambda!289399 lambda!289271))))

(declare-fun bs!1263899 () Bool)

(assert (= bs!1263899 (and b!5460619 d!1737983)))

(assert (=> bs!1263899 (not (= lambda!289399 lambda!289346))))

(assert (=> bs!1263878 (not (= lambda!289399 lambda!289266))))

(declare-fun bs!1263900 () Bool)

(assert (= bs!1263900 (and b!5460619 d!1737877)))

(assert (=> bs!1263900 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 lt!2229720) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 lt!2229720) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289399 lambda!289315))))

(assert (=> bs!1263878 (= (and (= (regOne!31086 lt!2229720) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 lt!2229720) lt!2229863)) (= lambda!289399 lambda!289267))))

(assert (=> bs!1263898 (= (and (= (regOne!31086 lt!2229720) (regOne!31086 r!7292)) (= (regTwo!31086 lt!2229720) (regTwo!31086 r!7292))) (= lambda!289399 lambda!289258))))

(assert (=> bs!1263895 (not (= lambda!289399 lambda!289268))))

(assert (=> bs!1263900 (not (= lambda!289399 lambda!289314))))

(assert (=> b!5460619 true))

(assert (=> b!5460619 true))

(declare-fun b!5460616 () Bool)

(declare-fun e!3381434 () Bool)

(declare-fun e!3381435 () Bool)

(assert (=> b!5460616 (= e!3381434 e!3381435)))

(declare-fun res!2325807 () Bool)

(assert (=> b!5460616 (= res!2325807 (matchRSpec!2390 (regOne!31087 lt!2229720) s!2326))))

(assert (=> b!5460616 (=> res!2325807 e!3381435)))

(declare-fun b!5460617 () Bool)

(declare-fun e!3381430 () Bool)

(declare-fun call!400663 () Bool)

(assert (=> b!5460617 (= e!3381430 call!400663)))

(declare-fun e!3381433 () Bool)

(declare-fun call!400664 () Bool)

(assert (=> b!5460618 (= e!3381433 call!400664)))

(declare-fun e!3381431 () Bool)

(assert (=> b!5460619 (= e!3381431 call!400664)))

(declare-fun b!5460620 () Bool)

(declare-fun c!954213 () Bool)

(assert (=> b!5460620 (= c!954213 ((_ is ElementMatch!15287) lt!2229720))))

(declare-fun e!3381436 () Bool)

(declare-fun e!3381432 () Bool)

(assert (=> b!5460620 (= e!3381436 e!3381432)))

(declare-fun b!5460621 () Bool)

(assert (=> b!5460621 (= e!3381432 (= s!2326 (Cons!62036 (c!953823 lt!2229720) Nil!62036)))))

(declare-fun b!5460622 () Bool)

(declare-fun c!954214 () Bool)

(assert (=> b!5460622 (= c!954214 ((_ is Union!15287) lt!2229720))))

(assert (=> b!5460622 (= e!3381432 e!3381434)))

(declare-fun bm!400659 () Bool)

(assert (=> bm!400659 (= call!400663 (isEmpty!34025 s!2326))))

(declare-fun b!5460623 () Bool)

(assert (=> b!5460623 (= e!3381435 (matchRSpec!2390 (regTwo!31087 lt!2229720) s!2326))))

(declare-fun b!5460624 () Bool)

(assert (=> b!5460624 (= e!3381430 e!3381436)))

(declare-fun res!2325806 () Bool)

(assert (=> b!5460624 (= res!2325806 (not ((_ is EmptyLang!15287) lt!2229720)))))

(assert (=> b!5460624 (=> (not res!2325806) (not e!3381436))))

(declare-fun d!1738197 () Bool)

(declare-fun c!954212 () Bool)

(assert (=> d!1738197 (= c!954212 ((_ is EmptyExpr!15287) lt!2229720))))

(assert (=> d!1738197 (= (matchRSpec!2390 lt!2229720 s!2326) e!3381430)))

(declare-fun bm!400658 () Bool)

(declare-fun c!954211 () Bool)

(assert (=> bm!400658 (= call!400664 (Exists!2468 (ite c!954211 lambda!289397 lambda!289399)))))

(declare-fun b!5460625 () Bool)

(declare-fun res!2325808 () Bool)

(assert (=> b!5460625 (=> res!2325808 e!3381433)))

(assert (=> b!5460625 (= res!2325808 call!400663)))

(assert (=> b!5460625 (= e!3381431 e!3381433)))

(declare-fun b!5460626 () Bool)

(assert (=> b!5460626 (= e!3381434 e!3381431)))

(assert (=> b!5460626 (= c!954211 ((_ is Star!15287) lt!2229720))))

(assert (= (and d!1738197 c!954212) b!5460617))

(assert (= (and d!1738197 (not c!954212)) b!5460624))

(assert (= (and b!5460624 res!2325806) b!5460620))

(assert (= (and b!5460620 c!954213) b!5460621))

(assert (= (and b!5460620 (not c!954213)) b!5460622))

(assert (= (and b!5460622 c!954214) b!5460616))

(assert (= (and b!5460622 (not c!954214)) b!5460626))

(assert (= (and b!5460616 (not res!2325807)) b!5460623))

(assert (= (and b!5460626 c!954211) b!5460625))

(assert (= (and b!5460626 (not c!954211)) b!5460619))

(assert (= (and b!5460625 (not res!2325808)) b!5460618))

(assert (= (or b!5460618 b!5460619) bm!400658))

(assert (= (or b!5460617 b!5460625) bm!400659))

(declare-fun m!6482222 () Bool)

(assert (=> b!5460616 m!6482222))

(assert (=> bm!400659 m!6480894))

(declare-fun m!6482224 () Bool)

(assert (=> b!5460623 m!6482224))

(declare-fun m!6482226 () Bool)

(assert (=> bm!400658 m!6482226))

(assert (=> b!5459345 d!1738197))

(declare-fun d!1738213 () Bool)

(assert (=> d!1738213 (= (matchR!7472 lt!2229870 s!2326) (matchRSpec!2390 lt!2229870 s!2326))))

(declare-fun lt!2230194 () Unit!154924)

(assert (=> d!1738213 (= lt!2230194 (choose!41495 lt!2229870 s!2326))))

(assert (=> d!1738213 (validRegex!7023 lt!2229870)))

(assert (=> d!1738213 (= (mainMatchTheorem!2390 lt!2229870 s!2326) lt!2230194)))

(declare-fun bs!1263903 () Bool)

(assert (= bs!1263903 d!1738213))

(declare-fun m!6482228 () Bool)

(assert (=> bs!1263903 m!6482228))

(declare-fun m!6482230 () Bool)

(assert (=> bs!1263903 m!6482230))

(declare-fun m!6482232 () Bool)

(assert (=> bs!1263903 m!6482232))

(declare-fun m!6482234 () Bool)

(assert (=> bs!1263903 m!6482234))

(assert (=> b!5459345 d!1738213))

(declare-fun d!1738215 () Bool)

(declare-fun c!954224 () Bool)

(assert (=> d!1738215 (= c!954224 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3381451 () Bool)

(assert (=> d!1738215 (= (matchZipper!1531 ((_ map or) lt!2229853 lt!2229907) (t!375389 s!2326)) e!3381451)))

(declare-fun b!5460650 () Bool)

(assert (=> b!5460650 (= e!3381451 (nullableZipper!1487 ((_ map or) lt!2229853 lt!2229907)))))

(declare-fun b!5460651 () Bool)

(assert (=> b!5460651 (= e!3381451 (matchZipper!1531 (derivationStepZipper!1506 ((_ map or) lt!2229853 lt!2229907) (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1738215 c!954224) b!5460650))

(assert (= (and d!1738215 (not c!954224)) b!5460651))

(assert (=> d!1738215 m!6480704))

(declare-fun m!6482236 () Bool)

(assert (=> b!5460650 m!6482236))

(assert (=> b!5460651 m!6480708))

(assert (=> b!5460651 m!6480708))

(declare-fun m!6482238 () Bool)

(assert (=> b!5460651 m!6482238))

(assert (=> b!5460651 m!6480712))

(assert (=> b!5460651 m!6482238))

(assert (=> b!5460651 m!6480712))

(declare-fun m!6482240 () Bool)

(assert (=> b!5460651 m!6482240))

(assert (=> b!5459345 d!1738215))

(declare-fun d!1738217 () Bool)

(assert (=> d!1738217 (= (matchR!7472 (Concat!24132 (Union!15287 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31087 (regOne!31086 r!7292))) (regTwo!31086 r!7292)) s!2326) (matchR!7472 (Union!15287 (Concat!24132 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292)) (Concat!24132 (regTwo!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292))) s!2326))))

(declare-fun lt!2230197 () Unit!154924)

(declare-fun choose!41517 (Regex!15287 Regex!15287 Regex!15287 List!62160) Unit!154924)

(assert (=> d!1738217 (= lt!2230197 (choose!41517 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292) s!2326))))

(assert (=> d!1738217 (validRegex!7023 (regOne!31087 (regOne!31086 r!7292)))))

(assert (=> d!1738217 (= (lemmaConcatDistributesInUnion!34 (regOne!31087 (regOne!31086 r!7292)) (regTwo!31087 (regOne!31086 r!7292)) (regTwo!31086 r!7292) s!2326) lt!2230197)))

(declare-fun bs!1263920 () Bool)

(assert (= bs!1263920 d!1738217))

(declare-fun m!6482244 () Bool)

(assert (=> bs!1263920 m!6482244))

(declare-fun m!6482248 () Bool)

(assert (=> bs!1263920 m!6482248))

(declare-fun m!6482252 () Bool)

(assert (=> bs!1263920 m!6482252))

(declare-fun m!6482254 () Bool)

(assert (=> bs!1263920 m!6482254))

(assert (=> b!5459345 d!1738217))

(declare-fun d!1738221 () Bool)

(assert (=> d!1738221 (= (nullable!5456 (regTwo!31087 (regOne!31086 r!7292))) (nullableFct!1639 (regTwo!31087 (regOne!31086 r!7292))))))

(declare-fun bs!1263921 () Bool)

(assert (= bs!1263921 d!1738221))

(declare-fun m!6482256 () Bool)

(assert (=> bs!1263921 m!6482256))

(assert (=> b!5459345 d!1738221))

(declare-fun d!1738223 () Bool)

(assert (=> d!1738223 (= (flatMap!1014 (ite c!953812 lt!2229910 (ite c!953814 lt!2229833 lt!2229883)) (ite c!953812 lambda!289259 (ite c!953814 lambda!289259 lambda!289259))) (dynLambda!24414 (ite c!953812 lambda!289259 (ite c!953814 lambda!289259 lambda!289259)) (ite c!953812 lt!2229850 (ite c!953814 lt!2229856 lt!2229817))))))

(declare-fun lt!2230198 () Unit!154924)

(assert (=> d!1738223 (= lt!2230198 (choose!41498 (ite c!953812 lt!2229910 (ite c!953814 lt!2229833 lt!2229883)) (ite c!953812 lt!2229850 (ite c!953814 lt!2229856 lt!2229817)) (ite c!953812 lambda!289259 (ite c!953814 lambda!289259 lambda!289259))))))

(assert (=> d!1738223 (= (ite c!953812 lt!2229910 (ite c!953814 lt!2229833 lt!2229883)) (store ((as const (Array Context!9342 Bool)) false) (ite c!953812 lt!2229850 (ite c!953814 lt!2229856 lt!2229817)) true))))

(assert (=> d!1738223 (= (lemmaFlatMapOnSingletonSet!546 (ite c!953812 lt!2229910 (ite c!953814 lt!2229833 lt!2229883)) (ite c!953812 lt!2229850 (ite c!953814 lt!2229856 lt!2229817)) (ite c!953812 lambda!289259 (ite c!953814 lambda!289259 lambda!289259))) lt!2230198)))

(declare-fun b_lambda!207853 () Bool)

(assert (=> (not b_lambda!207853) (not d!1738223)))

(declare-fun bs!1263922 () Bool)

(assert (= bs!1263922 d!1738223))

(declare-fun m!6482258 () Bool)

(assert (=> bs!1263922 m!6482258))

(declare-fun m!6482260 () Bool)

(assert (=> bs!1263922 m!6482260))

(declare-fun m!6482262 () Bool)

(assert (=> bs!1263922 m!6482262))

(declare-fun m!6482264 () Bool)

(assert (=> bs!1263922 m!6482264))

(assert (=> bm!400473 d!1738223))

(declare-fun bs!1263923 () Bool)

(declare-fun b!5460654 () Bool)

(assert (= bs!1263923 (and b!5460654 b!5459302)))

(declare-fun lambda!289402 () Int)

(assert (=> bs!1263923 (not (= lambda!289402 lambda!289282))))

(declare-fun bs!1263924 () Bool)

(assert (= bs!1263924 (and b!5460654 d!1737855)))

(assert (=> bs!1263924 (not (= lambda!289402 lambda!289293))))

(declare-fun bs!1263925 () Bool)

(assert (= bs!1263925 (and b!5460654 b!5459286)))

(assert (=> bs!1263925 (not (= lambda!289402 lambda!289261))))

(declare-fun bs!1263926 () Bool)

(assert (= bs!1263926 (and b!5460654 b!5459307)))

(assert (=> bs!1263926 (not (= lambda!289402 lambda!289279))))

(declare-fun bs!1263927 () Bool)

(assert (= bs!1263927 (and b!5460654 d!1738077)))

(assert (=> bs!1263927 (not (= lambda!289402 lambda!289375))))

(declare-fun bs!1263928 () Bool)

(assert (= bs!1263928 (and b!5460654 b!5459320)))

(assert (=> bs!1263928 (not (= lambda!289402 lambda!289265))))

(assert (=> bs!1263923 (= (and (= s!2326 Nil!62036) (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) lt!2229794)) (= lambda!289402 lambda!289283))))

(assert (=> bs!1263927 (= (and (= s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289402 lambda!289377))))

(assert (=> bs!1263925 (not (= lambda!289402 lambda!289262))))

(declare-fun bs!1263929 () Bool)

(assert (= bs!1263929 (and b!5460654 b!5460143)))

(assert (=> bs!1263929 (not (= lambda!289402 lambda!289351))))

(declare-fun bs!1263930 () Bool)

(assert (= bs!1263930 (and b!5460654 b!5459299)))

(assert (=> bs!1263930 (not (= lambda!289402 lambda!289272))))

(assert (=> bs!1263926 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) lt!2229794)) (= lambda!289402 lambda!289280))))

(assert (=> bs!1263926 (not (= lambda!289402 lambda!289277))))

(assert (=> bs!1263928 (not (= lambda!289402 lambda!289264))))

(declare-fun bs!1263932 () Bool)

(assert (= bs!1263932 (and b!5460654 b!5460618)))

(assert (=> bs!1263932 (= (and (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 lt!2229720)) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) lt!2229720)) (= lambda!289402 lambda!289397))))

(declare-fun bs!1263933 () Bool)

(assert (= bs!1263933 (and b!5460654 b!5460142)))

(assert (=> bs!1263933 (= (and (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 r!7292)) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) r!7292)) (= lambda!289402 lambda!289350))))

(assert (=> bs!1263925 (not (= lambda!289402 lambda!289263))))

(declare-fun bs!1263935 () Bool)

(assert (= bs!1263935 (and b!5460654 b!5459662)))

(assert (=> bs!1263935 (not (= lambda!289402 lambda!289301))))

(declare-fun bs!1263937 () Bool)

(assert (= bs!1263937 (and b!5460654 d!1738121)))

(assert (=> bs!1263937 (not (= lambda!289402 lambda!289385))))

(declare-fun bs!1263940 () Bool)

(assert (= bs!1263940 (and b!5460654 b!5459333)))

(assert (=> bs!1263940 (not (= lambda!289402 lambda!289269))))

(assert (=> bs!1263925 (not (= lambda!289402 lambda!289260))))

(assert (=> bs!1263923 (not (= lambda!289402 lambda!289281))))

(assert (=> bs!1263926 (not (= lambda!289402 lambda!289276))))

(declare-fun bs!1263947 () Bool)

(assert (= bs!1263947 (and b!5460654 b!5459661)))

(assert (=> bs!1263947 (= (and (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lambda!289402 lambda!289298))))

(assert (=> bs!1263937 (not (= lambda!289402 lambda!289387))))

(declare-fun bs!1263948 () Bool)

(assert (= bs!1263948 (and b!5460654 b!5459292)))

(assert (=> bs!1263948 (not (= lambda!289402 lambda!289257))))

(assert (=> bs!1263926 (not (= lambda!289402 lambda!289278))))

(declare-fun bs!1263949 () Bool)

(assert (= bs!1263949 (and b!5460654 b!5460619)))

(assert (=> bs!1263949 (not (= lambda!289402 lambda!289399))))

(assert (=> bs!1263930 (not (= lambda!289402 lambda!289270))))

(assert (=> bs!1263930 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) lt!2229794)) (= lambda!289402 lambda!289271))))

(declare-fun bs!1263950 () Bool)

(assert (= bs!1263950 (and b!5460654 d!1737983)))

(assert (=> bs!1263950 (not (= lambda!289402 lambda!289346))))

(assert (=> bs!1263928 (not (= lambda!289402 lambda!289266))))

(declare-fun bs!1263951 () Bool)

(assert (= bs!1263951 (and b!5460654 d!1737877)))

(assert (=> bs!1263951 (not (= lambda!289402 lambda!289315))))

(assert (=> bs!1263928 (not (= lambda!289402 lambda!289267))))

(assert (=> bs!1263948 (not (= lambda!289402 lambda!289258))))

(assert (=> bs!1263940 (not (= lambda!289402 lambda!289268))))

(assert (=> bs!1263951 (not (= lambda!289402 lambda!289314))))

(assert (=> b!5460654 true))

(assert (=> b!5460654 true))

(declare-fun bs!1263958 () Bool)

(declare-fun b!5460655 () Bool)

(assert (= bs!1263958 (and b!5460655 b!5459302)))

(declare-fun lambda!289405 () Int)

(assert (=> bs!1263958 (= (and (= s!2326 Nil!62036) (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229794)) (= lambda!289405 lambda!289282))))

(declare-fun bs!1263960 () Bool)

(assert (= bs!1263960 (and b!5460655 d!1737855)))

(assert (=> bs!1263960 (not (= lambda!289405 lambda!289293))))

(declare-fun bs!1263962 () Bool)

(assert (= bs!1263962 (and b!5460655 b!5459286)))

(assert (=> bs!1263962 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229727)) (= lambda!289405 lambda!289261))))

(declare-fun bs!1263964 () Bool)

(assert (= bs!1263964 (and b!5460655 b!5459307)))

(assert (=> bs!1263964 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229794)) (= lambda!289405 lambda!289279))))

(declare-fun bs!1263966 () Bool)

(assert (= bs!1263966 (and b!5460655 d!1738077)))

(assert (=> bs!1263966 (not (= lambda!289405 lambda!289375))))

(declare-fun bs!1263967 () Bool)

(assert (= bs!1263967 (and b!5460655 b!5459320)))

(assert (=> bs!1263967 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229767)) (= lambda!289405 lambda!289265))))

(assert (=> bs!1263958 (not (= lambda!289405 lambda!289283))))

(assert (=> bs!1263966 (not (= lambda!289405 lambda!289377))))

(assert (=> bs!1263962 (not (= lambda!289405 lambda!289262))))

(declare-fun bs!1263971 () Bool)

(assert (= bs!1263971 (and b!5460655 b!5460143)))

(assert (=> bs!1263971 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 r!7292)) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 r!7292))) (= lambda!289405 lambda!289351))))

(declare-fun bs!1263973 () Bool)

(assert (= bs!1263973 (and b!5460655 b!5459299)))

(assert (=> bs!1263973 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229794)) (= lambda!289405 lambda!289272))))

(assert (=> bs!1263964 (not (= lambda!289405 lambda!289280))))

(assert (=> bs!1263964 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229788) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 r!7292))) (= lambda!289405 lambda!289277))))

(assert (=> bs!1263967 (not (= lambda!289405 lambda!289264))))

(declare-fun bs!1263976 () Bool)

(assert (= bs!1263976 (and b!5460655 b!5460618)))

(assert (=> bs!1263976 (not (= lambda!289405 lambda!289397))))

(declare-fun bs!1263977 () Bool)

(assert (= bs!1263977 (and b!5460655 b!5460142)))

(assert (=> bs!1263977 (not (= lambda!289405 lambda!289350))))

(assert (=> bs!1263962 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229912)) (= lambda!289405 lambda!289263))))

(declare-fun bs!1263979 () Bool)

(assert (= bs!1263979 (and b!5460655 b!5459662)))

(assert (=> bs!1263979 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289405 lambda!289301))))

(declare-fun bs!1263980 () Bool)

(assert (= bs!1263980 (and b!5460655 b!5460654)))

(assert (=> bs!1263980 (not (= lambda!289405 lambda!289402))))

(declare-fun bs!1263981 () Bool)

(assert (= bs!1263981 (and b!5460655 d!1738121)))

(assert (=> bs!1263981 (not (= lambda!289405 lambda!289385))))

(declare-fun bs!1263982 () Bool)

(assert (= bs!1263982 (and b!5460655 b!5459333)))

(assert (=> bs!1263982 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229794) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 r!7292))) (= lambda!289405 lambda!289269))))

(assert (=> bs!1263962 (not (= lambda!289405 lambda!289260))))

(assert (=> bs!1263958 (not (= lambda!289405 lambda!289281))))

(assert (=> bs!1263964 (not (= lambda!289405 lambda!289276))))

(declare-fun bs!1263983 () Bool)

(assert (= bs!1263983 (and b!5460655 b!5459661)))

(assert (=> bs!1263983 (not (= lambda!289405 lambda!289298))))

(assert (=> bs!1263981 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289405 lambda!289387))))

(declare-fun bs!1263984 () Bool)

(assert (= bs!1263984 (and b!5460655 b!5459292)))

(assert (=> bs!1263984 (not (= lambda!289405 lambda!289257))))

(assert (=> bs!1263964 (not (= lambda!289405 lambda!289278))))

(declare-fun bs!1263985 () Bool)

(assert (= bs!1263985 (and b!5460655 b!5460619)))

(assert (=> bs!1263985 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 lt!2229720)) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 lt!2229720))) (= lambda!289405 lambda!289399))))

(assert (=> bs!1263973 (not (= lambda!289405 lambda!289270))))

(assert (=> bs!1263973 (not (= lambda!289405 lambda!289271))))

(declare-fun bs!1263987 () Bool)

(assert (= bs!1263987 (and b!5460655 d!1737983)))

(assert (=> bs!1263987 (not (= lambda!289405 lambda!289346))))

(assert (=> bs!1263967 (not (= lambda!289405 lambda!289266))))

(declare-fun bs!1263988 () Bool)

(assert (= bs!1263988 (and b!5460655 d!1737877)))

(assert (=> bs!1263988 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289405 lambda!289315))))

(assert (=> bs!1263967 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) lt!2229863)) (= lambda!289405 lambda!289267))))

(assert (=> bs!1263984 (= (and (= (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regOne!31086 r!7292)) (= (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) (regTwo!31086 r!7292))) (= lambda!289405 lambda!289258))))

(assert (=> bs!1263982 (not (= lambda!289405 lambda!289268))))

(assert (=> bs!1263988 (not (= lambda!289405 lambda!289314))))

(assert (=> b!5460655 true))

(assert (=> b!5460655 true))

(declare-fun b!5460652 () Bool)

(declare-fun e!3381456 () Bool)

(declare-fun e!3381457 () Bool)

(assert (=> b!5460652 (= e!3381456 e!3381457)))

(declare-fun res!2325815 () Bool)

(assert (=> b!5460652 (= res!2325815 (matchRSpec!2390 (regOne!31087 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) s!2326))))

(assert (=> b!5460652 (=> res!2325815 e!3381457)))

(declare-fun b!5460653 () Bool)

(declare-fun e!3381452 () Bool)

(declare-fun call!400667 () Bool)

(assert (=> b!5460653 (= e!3381452 call!400667)))

(declare-fun e!3381455 () Bool)

(declare-fun call!400668 () Bool)

(assert (=> b!5460654 (= e!3381455 call!400668)))

(declare-fun e!3381453 () Bool)

(assert (=> b!5460655 (= e!3381453 call!400668)))

(declare-fun b!5460656 () Bool)

(declare-fun c!954227 () Bool)

(assert (=> b!5460656 (= c!954227 ((_ is ElementMatch!15287) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))))

(declare-fun e!3381458 () Bool)

(declare-fun e!3381454 () Bool)

(assert (=> b!5460656 (= e!3381458 e!3381454)))

(declare-fun b!5460657 () Bool)

(assert (=> b!5460657 (= e!3381454 (= s!2326 (Cons!62036 (c!953823 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) Nil!62036)))))

(declare-fun b!5460658 () Bool)

(declare-fun c!954228 () Bool)

(assert (=> b!5460658 (= c!954228 ((_ is Union!15287) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))))

(assert (=> b!5460658 (= e!3381454 e!3381456)))

(declare-fun bm!400663 () Bool)

(assert (=> bm!400663 (= call!400667 (isEmpty!34025 s!2326))))

(declare-fun b!5460659 () Bool)

(assert (=> b!5460659 (= e!3381457 (matchRSpec!2390 (regTwo!31087 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))) s!2326))))

(declare-fun b!5460660 () Bool)

(assert (=> b!5460660 (= e!3381452 e!3381458)))

(declare-fun res!2325814 () Bool)

(assert (=> b!5460660 (= res!2325814 (not ((_ is EmptyLang!15287) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))))))))

(assert (=> b!5460660 (=> (not res!2325814) (not e!3381458))))

(declare-fun d!1738225 () Bool)

(declare-fun c!954226 () Bool)

(assert (=> d!1738225 (= c!954226 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))))

(assert (=> d!1738225 (= (matchRSpec!2390 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))) s!2326) e!3381452)))

(declare-fun bm!400662 () Bool)

(declare-fun c!954225 () Bool)

(assert (=> bm!400662 (= call!400668 (Exists!2468 (ite c!954225 lambda!289402 lambda!289405)))))

(declare-fun b!5460661 () Bool)

(declare-fun res!2325816 () Bool)

(assert (=> b!5460661 (=> res!2325816 e!3381455)))

(assert (=> b!5460661 (= res!2325816 call!400667)))

(assert (=> b!5460661 (= e!3381453 e!3381455)))

(declare-fun b!5460662 () Bool)

(assert (=> b!5460662 (= e!3381456 e!3381453)))

(assert (=> b!5460662 (= c!954225 ((_ is Star!15287) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))))

(assert (= (and d!1738225 c!954226) b!5460653))

(assert (= (and d!1738225 (not c!954226)) b!5460660))

(assert (= (and b!5460660 res!2325814) b!5460656))

(assert (= (and b!5460656 c!954227) b!5460657))

(assert (= (and b!5460656 (not c!954227)) b!5460658))

(assert (= (and b!5460658 c!954228) b!5460652))

(assert (= (and b!5460658 (not c!954228)) b!5460662))

(assert (= (and b!5460652 (not res!2325815)) b!5460659))

(assert (= (and b!5460662 c!954225) b!5460661))

(assert (= (and b!5460662 (not c!954225)) b!5460655))

(assert (= (and b!5460661 (not res!2325816)) b!5460654))

(assert (= (or b!5460654 b!5460655) bm!400662))

(assert (= (or b!5460653 b!5460661) bm!400663))

(declare-fun m!6482288 () Bool)

(assert (=> b!5460652 m!6482288))

(assert (=> bm!400663 m!6480894))

(declare-fun m!6482290 () Bool)

(assert (=> b!5460659 m!6482290))

(declare-fun m!6482292 () Bool)

(assert (=> bm!400662 m!6482292))

(assert (=> bm!400359 d!1738225))

(declare-fun d!1738231 () Bool)

(declare-fun c!954233 () Bool)

(assert (=> d!1738231 (= c!954233 (isEmpty!34025 (ite (or c!953819 c!953812) s!2326 (ite c!953816 (ite c!953817 lt!2229876 (_2!35789 lt!2229738)) (ite c!953818 (t!375389 s!2326) s!2326)))))))

(declare-fun e!3381465 () Bool)

(assert (=> d!1738231 (= (matchZipper!1531 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953816 (ite c!953817 (store ((as const (Array Context!9342 Bool)) false) (Context!9343 call!400303) true) lt!2229886) (ite c!953818 ((_ map or) lt!2229921 lt!2229838) z!1189)))) (ite (or c!953819 c!953812) s!2326 (ite c!953816 (ite c!953817 lt!2229876 (_2!35789 lt!2229738)) (ite c!953818 (t!375389 s!2326) s!2326)))) e!3381465)))

(declare-fun b!5460673 () Bool)

(assert (=> b!5460673 (= e!3381465 (nullableZipper!1487 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953816 (ite c!953817 (store ((as const (Array Context!9342 Bool)) false) (Context!9343 call!400303) true) lt!2229886) (ite c!953818 ((_ map or) lt!2229921 lt!2229838) z!1189))))))))

(declare-fun b!5460674 () Bool)

(assert (=> b!5460674 (= e!3381465 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 lt!2229842 (ite c!953812 lt!2229852 (ite c!953816 (ite c!953817 (store ((as const (Array Context!9342 Bool)) false) (Context!9343 call!400303) true) lt!2229886) (ite c!953818 ((_ map or) lt!2229921 lt!2229838) z!1189)))) (head!11691 (ite (or c!953819 c!953812) s!2326 (ite c!953816 (ite c!953817 lt!2229876 (_2!35789 lt!2229738)) (ite c!953818 (t!375389 s!2326) s!2326))))) (tail!10788 (ite (or c!953819 c!953812) s!2326 (ite c!953816 (ite c!953817 lt!2229876 (_2!35789 lt!2229738)) (ite c!953818 (t!375389 s!2326) s!2326))))))))

(assert (= (and d!1738231 c!954233) b!5460673))

(assert (= (and d!1738231 (not c!954233)) b!5460674))

(declare-fun m!6482294 () Bool)

(assert (=> d!1738231 m!6482294))

(declare-fun m!6482296 () Bool)

(assert (=> b!5460673 m!6482296))

(declare-fun m!6482298 () Bool)

(assert (=> b!5460674 m!6482298))

(assert (=> b!5460674 m!6482298))

(declare-fun m!6482300 () Bool)

(assert (=> b!5460674 m!6482300))

(declare-fun m!6482302 () Bool)

(assert (=> b!5460674 m!6482302))

(assert (=> b!5460674 m!6482300))

(assert (=> b!5460674 m!6482302))

(declare-fun m!6482304 () Bool)

(assert (=> b!5460674 m!6482304))

(assert (=> bm!400328 d!1738231))

(declare-fun b!5460677 () Bool)

(declare-fun res!2325819 () Bool)

(declare-fun e!3381467 () Bool)

(assert (=> b!5460677 (=> (not res!2325819) (not e!3381467))))

(declare-fun lt!2230204 () List!62160)

(assert (=> b!5460677 (= res!2325819 (= (size!39905 lt!2230204) (+ (size!39905 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036))) (size!39905 (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326))))))))

(declare-fun b!5460678 () Bool)

(assert (=> b!5460678 (= e!3381467 (or (not (= (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326)) Nil!62036)) (= lt!2230204 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036)))))))

(declare-fun e!3381466 () List!62160)

(declare-fun b!5460676 () Bool)

(assert (=> b!5460676 (= e!3381466 (Cons!62036 (h!68484 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036))) (++!13653 (t!375389 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036))) (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326)))))))

(declare-fun b!5460675 () Bool)

(assert (=> b!5460675 (= e!3381466 (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326)))))

(declare-fun d!1738233 () Bool)

(assert (=> d!1738233 e!3381467))

(declare-fun res!2325820 () Bool)

(assert (=> d!1738233 (=> (not res!2325820) (not e!3381467))))

(assert (=> d!1738233 (= res!2325820 (= (content!11172 lt!2230204) ((_ map or) (content!11172 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036))) (content!11172 (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326))))))))

(assert (=> d!1738233 (= lt!2230204 e!3381466)))

(declare-fun c!954234 () Bool)

(assert (=> d!1738233 (= c!954234 ((_ is Nil!62036) (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036))))))

(assert (=> d!1738233 (= (++!13653 (ite c!953817 (_1!35789 lt!2229919) (ite c!953822 (_1!35789 lt!2229902) Nil!62036)) (ite c!953817 lt!2229897 (ite c!953822 lt!2229783 s!2326))) lt!2230204)))

(assert (= (and d!1738233 c!954234) b!5460675))

(assert (= (and d!1738233 (not c!954234)) b!5460676))

(assert (= (and d!1738233 res!2325820) b!5460677))

(assert (= (and b!5460677 res!2325819) b!5460678))

(declare-fun m!6482306 () Bool)

(assert (=> b!5460677 m!6482306))

(declare-fun m!6482308 () Bool)

(assert (=> b!5460677 m!6482308))

(declare-fun m!6482310 () Bool)

(assert (=> b!5460677 m!6482310))

(declare-fun m!6482312 () Bool)

(assert (=> b!5460676 m!6482312))

(declare-fun m!6482314 () Bool)

(assert (=> d!1738233 m!6482314))

(declare-fun m!6482316 () Bool)

(assert (=> d!1738233 m!6482316))

(declare-fun m!6482318 () Bool)

(assert (=> d!1738233 m!6482318))

(assert (=> bm!400420 d!1738233))

(declare-fun bs!1263990 () Bool)

(declare-fun b!5460681 () Bool)

(assert (= bs!1263990 (and b!5460681 b!5459302)))

(declare-fun lambda!289407 () Int)

(assert (=> bs!1263990 (not (= lambda!289407 lambda!289282))))

(declare-fun bs!1263991 () Bool)

(assert (= bs!1263991 (and b!5460681 d!1737855)))

(assert (=> bs!1263991 (not (= lambda!289407 lambda!289293))))

(declare-fun bs!1263992 () Bool)

(assert (= bs!1263992 (and b!5460681 b!5459286)))

(assert (=> bs!1263992 (not (= lambda!289407 lambda!289261))))

(declare-fun bs!1263993 () Bool)

(assert (= bs!1263993 (and b!5460681 b!5459307)))

(assert (=> bs!1263993 (not (= lambda!289407 lambda!289279))))

(declare-fun bs!1263994 () Bool)

(assert (= bs!1263994 (and b!5460681 d!1738077)))

(assert (=> bs!1263994 (not (= lambda!289407 lambda!289375))))

(declare-fun bs!1263995 () Bool)

(assert (= bs!1263995 (and b!5460681 b!5459320)))

(assert (=> bs!1263995 (not (= lambda!289407 lambda!289265))))

(assert (=> bs!1263990 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) Nil!62036) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289407 lambda!289283))))

(assert (=> bs!1263994 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289407 lambda!289377))))

(assert (=> bs!1263992 (not (= lambda!289407 lambda!289262))))

(declare-fun bs!1263996 () Bool)

(assert (= bs!1263996 (and b!5460681 b!5460143)))

(assert (=> bs!1263996 (not (= lambda!289407 lambda!289351))))

(declare-fun bs!1263997 () Bool)

(assert (= bs!1263997 (and b!5460681 b!5459299)))

(assert (=> bs!1263997 (not (= lambda!289407 lambda!289272))))

(assert (=> bs!1263993 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (_1!35789 lt!2229728)) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289407 lambda!289280))))

(assert (=> bs!1263993 (not (= lambda!289407 lambda!289277))))

(assert (=> bs!1263995 (not (= lambda!289407 lambda!289264))))

(declare-fun bs!1263998 () Bool)

(assert (= bs!1263998 (and b!5460681 b!5460618)))

(assert (=> bs!1263998 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 lt!2229720)) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) lt!2229720)) (= lambda!289407 lambda!289397))))

(declare-fun bs!1263999 () Bool)

(assert (= bs!1263999 (and b!5460681 b!5460142)))

(assert (=> bs!1263999 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 r!7292)) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) r!7292)) (= lambda!289407 lambda!289350))))

(assert (=> bs!1263992 (not (= lambda!289407 lambda!289263))))

(declare-fun bs!1264000 () Bool)

(assert (= bs!1264000 (and b!5460681 b!5459662)))

(assert (=> bs!1264000 (not (= lambda!289407 lambda!289301))))

(declare-fun bs!1264001 () Bool)

(assert (= bs!1264001 (and b!5460681 b!5460654)))

(assert (=> bs!1264001 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))))) (= lambda!289407 lambda!289402))))

(declare-fun bs!1264002 () Bool)

(assert (= bs!1264002 (and b!5460681 d!1738121)))

(assert (=> bs!1264002 (not (= lambda!289407 lambda!289385))))

(declare-fun bs!1264003 () Bool)

(assert (= bs!1264003 (and b!5460681 b!5459333)))

(assert (=> bs!1264003 (not (= lambda!289407 lambda!289269))))

(assert (=> bs!1263992 (not (= lambda!289407 lambda!289260))))

(assert (=> bs!1263990 (not (= lambda!289407 lambda!289281))))

(assert (=> bs!1263993 (not (= lambda!289407 lambda!289276))))

(declare-fun bs!1264004 () Bool)

(assert (= bs!1264004 (and b!5460681 b!5459661)))

(assert (=> bs!1264004 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= lambda!289407 lambda!289298))))

(assert (=> bs!1264002 (not (= lambda!289407 lambda!289387))))

(declare-fun bs!1264005 () Bool)

(assert (= bs!1264005 (and b!5460681 b!5459292)))

(assert (=> bs!1264005 (not (= lambda!289407 lambda!289257))))

(assert (=> bs!1263993 (not (= lambda!289407 lambda!289278))))

(declare-fun bs!1264006 () Bool)

(assert (= bs!1264006 (and b!5460681 b!5460619)))

(assert (=> bs!1264006 (not (= lambda!289407 lambda!289399))))

(assert (=> bs!1263997 (not (= lambda!289407 lambda!289270))))

(assert (=> bs!1263997 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (_1!35789 lt!2229844)) (= (reg!15616 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) lt!2229794)) (= lambda!289407 lambda!289271))))

(declare-fun bs!1264007 () Bool)

(assert (= bs!1264007 (and b!5460681 d!1737983)))

(assert (=> bs!1264007 (not (= lambda!289407 lambda!289346))))

(declare-fun bs!1264008 () Bool)

(assert (= bs!1264008 (and b!5460681 b!5460655)))

(assert (=> bs!1264008 (not (= lambda!289407 lambda!289405))))

(assert (=> bs!1263995 (not (= lambda!289407 lambda!289266))))

(declare-fun bs!1264009 () Bool)

(assert (= bs!1264009 (and b!5460681 d!1737877)))

(assert (=> bs!1264009 (not (= lambda!289407 lambda!289315))))

(assert (=> bs!1263995 (not (= lambda!289407 lambda!289267))))

(assert (=> bs!1264005 (not (= lambda!289407 lambda!289258))))

(assert (=> bs!1264003 (not (= lambda!289407 lambda!289268))))

(assert (=> bs!1264009 (not (= lambda!289407 lambda!289314))))

(assert (=> b!5460681 true))

(assert (=> b!5460681 true))

(declare-fun bs!1264010 () Bool)

(declare-fun b!5460682 () Bool)

(assert (= bs!1264010 (and b!5460682 b!5459302)))

(declare-fun lambda!289408 () Int)

(assert (=> bs!1264010 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) Nil!62036) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229794)) (= lambda!289408 lambda!289282))))

(declare-fun bs!1264011 () Bool)

(assert (= bs!1264011 (and b!5460682 d!1737855)))

(assert (=> bs!1264011 (not (= lambda!289408 lambda!289293))))

(declare-fun bs!1264012 () Bool)

(assert (= bs!1264012 (and b!5460682 b!5459286)))

(assert (=> bs!1264012 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229727)) (= lambda!289408 lambda!289261))))

(declare-fun bs!1264013 () Bool)

(assert (= bs!1264013 (and b!5460682 b!5459307)))

(assert (=> bs!1264013 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (_1!35789 lt!2229728)) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229794)) (= lambda!289408 lambda!289279))))

(declare-fun bs!1264014 () Bool)

(assert (= bs!1264014 (and b!5460682 d!1738077)))

(assert (=> bs!1264014 (not (= lambda!289408 lambda!289375))))

(declare-fun bs!1264015 () Bool)

(assert (= bs!1264015 (and b!5460682 b!5459320)))

(assert (=> bs!1264015 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229767)) (= lambda!289408 lambda!289265))))

(assert (=> bs!1264010 (not (= lambda!289408 lambda!289283))))

(assert (=> bs!1264012 (not (= lambda!289408 lambda!289262))))

(declare-fun bs!1264016 () Bool)

(assert (= bs!1264016 (and b!5460682 b!5460143)))

(assert (=> bs!1264016 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 r!7292)) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 r!7292))) (= lambda!289408 lambda!289351))))

(declare-fun bs!1264017 () Bool)

(assert (= bs!1264017 (and b!5460682 b!5459299)))

(assert (=> bs!1264017 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (_1!35789 lt!2229844)) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229794)) (= lambda!289408 lambda!289272))))

(assert (=> bs!1264013 (not (= lambda!289408 lambda!289280))))

(assert (=> bs!1264013 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229788) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 r!7292))) (= lambda!289408 lambda!289277))))

(assert (=> bs!1264015 (not (= lambda!289408 lambda!289264))))

(declare-fun bs!1264018 () Bool)

(assert (= bs!1264018 (and b!5460682 b!5460618)))

(assert (=> bs!1264018 (not (= lambda!289408 lambda!289397))))

(declare-fun bs!1264019 () Bool)

(assert (= bs!1264019 (and b!5460682 b!5460142)))

(assert (=> bs!1264019 (not (= lambda!289408 lambda!289350))))

(assert (=> bs!1264012 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229912)) (= lambda!289408 lambda!289263))))

(declare-fun bs!1264020 () Bool)

(assert (= bs!1264020 (and b!5460682 b!5459662)))

(assert (=> bs!1264020 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289408 lambda!289301))))

(declare-fun bs!1264021 () Bool)

(assert (= bs!1264021 (and b!5460682 b!5460654)))

(assert (=> bs!1264021 (not (= lambda!289408 lambda!289402))))

(declare-fun bs!1264022 () Bool)

(assert (= bs!1264022 (and b!5460682 d!1738121)))

(assert (=> bs!1264022 (not (= lambda!289408 lambda!289385))))

(declare-fun bs!1264023 () Bool)

(assert (= bs!1264023 (and b!5460682 b!5459333)))

(assert (=> bs!1264023 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229794) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 r!7292))) (= lambda!289408 lambda!289269))))

(assert (=> bs!1264012 (not (= lambda!289408 lambda!289260))))

(assert (=> bs!1264010 (not (= lambda!289408 lambda!289281))))

(assert (=> bs!1264013 (not (= lambda!289408 lambda!289276))))

(declare-fun bs!1264024 () Bool)

(assert (= bs!1264024 (and b!5460682 b!5459661)))

(assert (=> bs!1264024 (not (= lambda!289408 lambda!289298))))

(assert (=> bs!1264022 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289408 lambda!289387))))

(declare-fun bs!1264025 () Bool)

(assert (= bs!1264025 (and b!5460682 b!5459292)))

(assert (=> bs!1264025 (not (= lambda!289408 lambda!289257))))

(assert (=> bs!1264013 (not (= lambda!289408 lambda!289278))))

(declare-fun bs!1264026 () Bool)

(assert (= bs!1264026 (and b!5460682 b!5460619)))

(assert (=> bs!1264026 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 lt!2229720)) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 lt!2229720))) (= lambda!289408 lambda!289399))))

(assert (=> bs!1264017 (not (= lambda!289408 lambda!289270))))

(assert (=> bs!1264017 (not (= lambda!289408 lambda!289271))))

(declare-fun bs!1264027 () Bool)

(assert (= bs!1264027 (and b!5460682 d!1737983)))

(assert (=> bs!1264027 (not (= lambda!289408 lambda!289346))))

(declare-fun bs!1264028 () Bool)

(assert (= bs!1264028 (and b!5460682 b!5460681)))

(assert (=> bs!1264028 (not (= lambda!289408 lambda!289407))))

(assert (=> bs!1264014 (not (= lambda!289408 lambda!289377))))

(declare-fun bs!1264029 () Bool)

(assert (= bs!1264029 (and b!5460682 b!5460655)))

(assert (=> bs!1264029 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))) (= lambda!289408 lambda!289405))))

(assert (=> bs!1264015 (not (= lambda!289408 lambda!289266))))

(declare-fun bs!1264030 () Bool)

(assert (= bs!1264030 (and b!5460682 d!1737877)))

(assert (=> bs!1264030 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289408 lambda!289315))))

(assert (=> bs!1264015 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) lt!2229863)) (= lambda!289408 lambda!289267))))

(assert (=> bs!1264025 (= (and (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) s!2326) (= (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regOne!31086 r!7292)) (= (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (regTwo!31086 r!7292))) (= lambda!289408 lambda!289258))))

(assert (=> bs!1264023 (not (= lambda!289408 lambda!289268))))

(assert (=> bs!1264030 (not (= lambda!289408 lambda!289314))))

(assert (=> b!5460682 true))

(assert (=> b!5460682 true))

(declare-fun b!5460679 () Bool)

(declare-fun e!3381472 () Bool)

(declare-fun e!3381473 () Bool)

(assert (=> b!5460679 (= e!3381472 e!3381473)))

(declare-fun res!2325822 () Bool)

(assert (=> b!5460679 (= res!2325822 (matchRSpec!2390 (regOne!31087 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))))))

(assert (=> b!5460679 (=> res!2325822 e!3381473)))

(declare-fun b!5460680 () Bool)

(declare-fun e!3381468 () Bool)

(declare-fun call!400669 () Bool)

(assert (=> b!5460680 (= e!3381468 call!400669)))

(declare-fun e!3381471 () Bool)

(declare-fun call!400670 () Bool)

(assert (=> b!5460681 (= e!3381471 call!400670)))

(declare-fun e!3381469 () Bool)

(assert (=> b!5460682 (= e!3381469 call!400670)))

(declare-fun b!5460683 () Bool)

(declare-fun c!954237 () Bool)

(assert (=> b!5460683 (= c!954237 ((_ is ElementMatch!15287) (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))))))

(declare-fun e!3381474 () Bool)

(declare-fun e!3381470 () Bool)

(assert (=> b!5460683 (= e!3381474 e!3381470)))

(declare-fun b!5460684 () Bool)

(assert (=> b!5460684 (= e!3381470 (= (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326)) (Cons!62036 (c!953823 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) Nil!62036)))))

(declare-fun b!5460685 () Bool)

(declare-fun c!954238 () Bool)

(assert (=> b!5460685 (= c!954238 ((_ is Union!15287) (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))))))

(assert (=> b!5460685 (= e!3381470 e!3381472)))

(declare-fun bm!400665 () Bool)

(assert (=> bm!400665 (= call!400669 (isEmpty!34025 (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))))))

(declare-fun b!5460686 () Bool)

(assert (=> b!5460686 (= e!3381473 (matchRSpec!2390 (regTwo!31087 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))) (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))))))

(declare-fun b!5460687 () Bool)

(assert (=> b!5460687 (= e!3381468 e!3381474)))

(declare-fun res!2325821 () Bool)

(assert (=> b!5460687 (= res!2325821 (not ((_ is EmptyLang!15287) (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))))))))

(assert (=> b!5460687 (=> (not res!2325821) (not e!3381474))))

(declare-fun c!954236 () Bool)

(declare-fun d!1738235 () Bool)

(assert (=> d!1738235 (= c!954236 ((_ is EmptyExpr!15287) (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))))))

(assert (=> d!1738235 (= (matchRSpec!2390 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))) (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))) e!3381468)))

(declare-fun c!954235 () Bool)

(declare-fun bm!400664 () Bool)

(assert (=> bm!400664 (= call!400670 (Exists!2468 (ite c!954235 lambda!289407 lambda!289408)))))

(declare-fun b!5460688 () Bool)

(declare-fun res!2325823 () Bool)

(assert (=> b!5460688 (=> res!2325823 e!3381471)))

(assert (=> b!5460688 (= res!2325823 call!400669)))

(assert (=> b!5460688 (= e!3381469 e!3381471)))

(declare-fun b!5460689 () Bool)

(assert (=> b!5460689 (= e!3381472 e!3381469)))

(assert (=> b!5460689 (= c!954235 ((_ is Star!15287) (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))))))

(assert (= (and d!1738235 c!954236) b!5460680))

(assert (= (and d!1738235 (not c!954236)) b!5460687))

(assert (= (and b!5460687 res!2325821) b!5460683))

(assert (= (and b!5460683 c!954237) b!5460684))

(assert (= (and b!5460683 (not c!954237)) b!5460685))

(assert (= (and b!5460685 c!954238) b!5460679))

(assert (= (and b!5460685 (not c!954238)) b!5460689))

(assert (= (and b!5460679 (not res!2325822)) b!5460686))

(assert (= (and b!5460689 c!954235) b!5460688))

(assert (= (and b!5460689 (not c!954235)) b!5460682))

(assert (= (and b!5460688 (not res!2325823)) b!5460681))

(assert (= (or b!5460681 b!5460682) bm!400664))

(assert (= (or b!5460680 b!5460688) bm!400665))

(declare-fun m!6482342 () Bool)

(assert (=> b!5460679 m!6482342))

(declare-fun m!6482344 () Bool)

(assert (=> bm!400665 m!6482344))

(declare-fun m!6482346 () Bool)

(assert (=> b!5460686 m!6482346))

(declare-fun m!6482348 () Bool)

(assert (=> bm!400664 m!6482348))

(assert (=> bm!400323 d!1738235))

(declare-fun d!1738241 () Bool)

(declare-fun c!954240 () Bool)

(assert (=> d!1738241 (= c!954240 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3381479 () Bool)

(assert (=> d!1738241 (= (matchZipper!1531 (ite c!953819 ((_ map or) lt!2229853 lt!2229838) lt!2229896) (t!375389 s!2326)) e!3381479)))

(declare-fun b!5460694 () Bool)

(assert (=> b!5460694 (= e!3381479 (nullableZipper!1487 (ite c!953819 ((_ map or) lt!2229853 lt!2229838) lt!2229896)))))

(declare-fun b!5460695 () Bool)

(assert (=> b!5460695 (= e!3381479 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 ((_ map or) lt!2229853 lt!2229838) lt!2229896) (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1738241 c!954240) b!5460694))

(assert (= (and d!1738241 (not c!954240)) b!5460695))

(assert (=> d!1738241 m!6480704))

(declare-fun m!6482350 () Bool)

(assert (=> b!5460694 m!6482350))

(assert (=> b!5460695 m!6480708))

(assert (=> b!5460695 m!6480708))

(declare-fun m!6482352 () Bool)

(assert (=> b!5460695 m!6482352))

(assert (=> b!5460695 m!6480712))

(assert (=> b!5460695 m!6482352))

(assert (=> b!5460695 m!6480712))

(declare-fun m!6482354 () Bool)

(assert (=> b!5460695 m!6482354))

(assert (=> bm!400291 d!1738241))

(declare-fun d!1738243 () Bool)

(assert (=> d!1738243 (= (isDefined!12101 (ite c!953812 call!400422 (ite c!953814 call!400484 lt!2229731))) (not (isEmpty!34026 (ite c!953812 call!400422 (ite c!953814 call!400484 lt!2229731)))))))

(declare-fun bs!1264031 () Bool)

(assert (= bs!1264031 d!1738243))

(declare-fun m!6482356 () Bool)

(assert (=> bs!1264031 m!6482356))

(assert (=> bm!400355 d!1738243))

(declare-fun d!1738245 () Bool)

(declare-fun c!954241 () Bool)

(assert (=> d!1738245 (= c!954241 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3381480 () Bool)

(assert (=> d!1738245 (= (matchZipper!1531 (ite c!953819 lt!2229853 (ite c!953812 ((_ map or) lt!2229826 lt!2229898) lt!2229921)) (t!375389 s!2326)) e!3381480)))

(declare-fun b!5460700 () Bool)

(assert (=> b!5460700 (= e!3381480 (nullableZipper!1487 (ite c!953819 lt!2229853 (ite c!953812 ((_ map or) lt!2229826 lt!2229898) lt!2229921))))))

(declare-fun b!5460701 () Bool)

(assert (=> b!5460701 (= e!3381480 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 lt!2229853 (ite c!953812 ((_ map or) lt!2229826 lt!2229898) lt!2229921)) (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1738245 c!954241) b!5460700))

(assert (= (and d!1738245 (not c!954241)) b!5460701))

(assert (=> d!1738245 m!6480704))

(declare-fun m!6482358 () Bool)

(assert (=> b!5460700 m!6482358))

(assert (=> b!5460701 m!6480708))

(assert (=> b!5460701 m!6480708))

(declare-fun m!6482360 () Bool)

(assert (=> b!5460701 m!6482360))

(assert (=> b!5460701 m!6480712))

(assert (=> b!5460701 m!6482360))

(assert (=> b!5460701 m!6480712))

(declare-fun m!6482362 () Bool)

(assert (=> b!5460701 m!6482362))

(assert (=> bm!400450 d!1738245))

(declare-fun d!1738247 () Bool)

(assert (=> d!1738247 (= (flatMap!1014 (ite c!953819 lt!2229842 (ite c!953814 lt!2229833 (ite c!953816 lt!2229886 lt!2229839))) (ite c!953819 lambda!289259 (ite c!953814 lambda!289259 (ite c!953816 lambda!289259 lambda!289259)))) (choose!41501 (ite c!953819 lt!2229842 (ite c!953814 lt!2229833 (ite c!953816 lt!2229886 lt!2229839))) (ite c!953819 lambda!289259 (ite c!953814 lambda!289259 (ite c!953816 lambda!289259 lambda!289259)))))))

(declare-fun bs!1264032 () Bool)

(assert (= bs!1264032 d!1738247))

(declare-fun m!6482364 () Bool)

(assert (=> bs!1264032 m!6482364))

(assert (=> bm!400434 d!1738247))

(declare-fun d!1738249 () Bool)

(declare-fun c!954242 () Bool)

(assert (=> d!1738249 (= c!954242 (isEmpty!34025 (t!375389 s!2326)))))

(declare-fun e!3381481 () Bool)

(assert (=> d!1738249 (= (matchZipper!1531 (ite c!953810 lt!2229836 (ite c!953819 lt!2229907 ((_ map or) lt!2229826 lt!2229896))) (t!375389 s!2326)) e!3381481)))

(declare-fun b!5460702 () Bool)

(assert (=> b!5460702 (= e!3381481 (nullableZipper!1487 (ite c!953810 lt!2229836 (ite c!953819 lt!2229907 ((_ map or) lt!2229826 lt!2229896)))))))

(declare-fun b!5460703 () Bool)

(assert (=> b!5460703 (= e!3381481 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953810 lt!2229836 (ite c!953819 lt!2229907 ((_ map or) lt!2229826 lt!2229896))) (head!11691 (t!375389 s!2326))) (tail!10788 (t!375389 s!2326))))))

(assert (= (and d!1738249 c!954242) b!5460702))

(assert (= (and d!1738249 (not c!954242)) b!5460703))

(assert (=> d!1738249 m!6480704))

(declare-fun m!6482366 () Bool)

(assert (=> b!5460702 m!6482366))

(assert (=> b!5460703 m!6480708))

(assert (=> b!5460703 m!6480708))

(declare-fun m!6482368 () Bool)

(assert (=> b!5460703 m!6482368))

(assert (=> b!5460703 m!6480712))

(assert (=> b!5460703 m!6482368))

(assert (=> b!5460703 m!6480712))

(declare-fun m!6482370 () Bool)

(assert (=> b!5460703 m!6482370))

(assert (=> bm!400402 d!1738249))

(declare-fun b!5460704 () Bool)

(declare-fun e!3381485 () Bool)

(declare-fun lt!2230208 () Option!15398)

(assert (=> b!5460704 (= e!3381485 (not (isDefined!12101 lt!2230208)))))

(declare-fun b!5460705 () Bool)

(declare-fun e!3381482 () Option!15398)

(declare-fun e!3381484 () Option!15398)

(assert (=> b!5460705 (= e!3381482 e!3381484)))

(declare-fun c!954244 () Bool)

(assert (=> b!5460705 (= c!954244 ((_ is Nil!62036) s!2326))))

(declare-fun b!5460706 () Bool)

(declare-fun lt!2230210 () Unit!154924)

(declare-fun lt!2230209 () Unit!154924)

(assert (=> b!5460706 (= lt!2230210 lt!2230209)))

(assert (=> b!5460706 (= (++!13653 (++!13653 Nil!62036 (Cons!62036 (h!68484 s!2326) Nil!62036)) (t!375389 s!2326)) s!2326)))

(assert (=> b!5460706 (= lt!2230209 (lemmaMoveElementToOtherListKeepsConcatEq!1882 Nil!62036 (h!68484 s!2326) (t!375389 s!2326) s!2326))))

(assert (=> b!5460706 (= e!3381484 (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) (++!13653 Nil!62036 (Cons!62036 (h!68484 s!2326) Nil!62036)) (t!375389 s!2326) s!2326))))

(declare-fun d!1738251 () Bool)

(assert (=> d!1738251 e!3381485))

(declare-fun res!2325830 () Bool)

(assert (=> d!1738251 (=> res!2325830 e!3381485)))

(declare-fun e!3381483 () Bool)

(assert (=> d!1738251 (= res!2325830 e!3381483)))

(declare-fun res!2325831 () Bool)

(assert (=> d!1738251 (=> (not res!2325831) (not e!3381483))))

(assert (=> d!1738251 (= res!2325831 (isDefined!12101 lt!2230208))))

(assert (=> d!1738251 (= lt!2230208 e!3381482)))

(declare-fun c!954243 () Bool)

(declare-fun e!3381486 () Bool)

(assert (=> d!1738251 (= c!954243 e!3381486)))

(declare-fun res!2325832 () Bool)

(assert (=> d!1738251 (=> (not res!2325832) (not e!3381486))))

(assert (=> d!1738251 (= res!2325832 (matchR!7472 (regOne!31086 r!7292) Nil!62036))))

(assert (=> d!1738251 (validRegex!7023 (regOne!31086 r!7292))))

(assert (=> d!1738251 (= (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) Nil!62036 s!2326 s!2326) lt!2230208)))

(declare-fun b!5460707 () Bool)

(assert (=> b!5460707 (= e!3381484 None!15397)))

(declare-fun b!5460708 () Bool)

(declare-fun res!2325833 () Bool)

(assert (=> b!5460708 (=> (not res!2325833) (not e!3381483))))

(assert (=> b!5460708 (= res!2325833 (matchR!7472 (regOne!31086 r!7292) (_1!35789 (get!21395 lt!2230208))))))

(declare-fun b!5460709 () Bool)

(assert (=> b!5460709 (= e!3381486 (matchR!7472 (regTwo!31086 r!7292) s!2326))))

(declare-fun b!5460710 () Bool)

(assert (=> b!5460710 (= e!3381482 (Some!15397 (tuple2!64973 Nil!62036 s!2326)))))

(declare-fun b!5460711 () Bool)

(declare-fun res!2325834 () Bool)

(assert (=> b!5460711 (=> (not res!2325834) (not e!3381483))))

(assert (=> b!5460711 (= res!2325834 (matchR!7472 (regTwo!31086 r!7292) (_2!35789 (get!21395 lt!2230208))))))

(declare-fun b!5460712 () Bool)

(assert (=> b!5460712 (= e!3381483 (= (++!13653 (_1!35789 (get!21395 lt!2230208)) (_2!35789 (get!21395 lt!2230208))) s!2326))))

(assert (= (and d!1738251 res!2325832) b!5460709))

(assert (= (and d!1738251 c!954243) b!5460710))

(assert (= (and d!1738251 (not c!954243)) b!5460705))

(assert (= (and b!5460705 c!954244) b!5460707))

(assert (= (and b!5460705 (not c!954244)) b!5460706))

(assert (= (and d!1738251 res!2325831) b!5460708))

(assert (= (and b!5460708 res!2325833) b!5460711))

(assert (= (and b!5460711 res!2325834) b!5460712))

(assert (= (and d!1738251 (not res!2325830)) b!5460704))

(assert (=> b!5460706 m!6480818))

(assert (=> b!5460706 m!6480818))

(assert (=> b!5460706 m!6480820))

(assert (=> b!5460706 m!6480822))

(assert (=> b!5460706 m!6480818))

(declare-fun m!6482372 () Bool)

(assert (=> b!5460706 m!6482372))

(declare-fun m!6482374 () Bool)

(assert (=> d!1738251 m!6482374))

(declare-fun m!6482376 () Bool)

(assert (=> d!1738251 m!6482376))

(declare-fun m!6482378 () Bool)

(assert (=> d!1738251 m!6482378))

(declare-fun m!6482380 () Bool)

(assert (=> b!5460709 m!6482380))

(declare-fun m!6482382 () Bool)

(assert (=> b!5460708 m!6482382))

(declare-fun m!6482384 () Bool)

(assert (=> b!5460708 m!6482384))

(assert (=> b!5460711 m!6482382))

(declare-fun m!6482386 () Bool)

(assert (=> b!5460711 m!6482386))

(assert (=> b!5460712 m!6482382))

(declare-fun m!6482388 () Bool)

(assert (=> b!5460712 m!6482388))

(assert (=> b!5460704 m!6482374))

(assert (=> b!5459292 d!1738251))

(declare-fun d!1738253 () Bool)

(assert (=> d!1738253 (= (Exists!2468 lambda!289258) (choose!41483 lambda!289258))))

(declare-fun bs!1264033 () Bool)

(assert (= bs!1264033 d!1738253))

(declare-fun m!6482390 () Bool)

(assert (=> bs!1264033 m!6482390))

(assert (=> b!5459292 d!1738253))

(declare-fun d!1738255 () Bool)

(assert (=> d!1738255 (= (Exists!2468 lambda!289257) (choose!41483 lambda!289257))))

(declare-fun bs!1264034 () Bool)

(assert (= bs!1264034 d!1738255))

(declare-fun m!6482392 () Bool)

(assert (=> bs!1264034 m!6482392))

(assert (=> b!5459292 d!1738255))

(declare-fun bs!1264035 () Bool)

(declare-fun d!1738257 () Bool)

(assert (= bs!1264035 (and d!1738257 b!5459302)))

(declare-fun lambda!289413 () Int)

(assert (=> bs!1264035 (not (= lambda!289413 lambda!289282))))

(declare-fun bs!1264036 () Bool)

(assert (= bs!1264036 (and d!1738257 d!1737855)))

(assert (=> bs!1264036 (= (and (= (regOne!31086 r!7292) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289413 lambda!289293))))

(declare-fun bs!1264037 () Bool)

(assert (= bs!1264037 (and d!1738257 b!5459286)))

(assert (=> bs!1264037 (not (= lambda!289413 lambda!289261))))

(declare-fun bs!1264038 () Bool)

(assert (= bs!1264038 (and d!1738257 b!5459307)))

(assert (=> bs!1264038 (not (= lambda!289413 lambda!289279))))

(declare-fun bs!1264039 () Bool)

(assert (= bs!1264039 (and d!1738257 d!1738077)))

(assert (=> bs!1264039 (= (and (= s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289413 lambda!289375))))

(declare-fun bs!1264040 () Bool)

(assert (= bs!1264040 (and d!1738257 b!5459320)))

(assert (=> bs!1264040 (not (= lambda!289413 lambda!289265))))

(assert (=> bs!1264035 (not (= lambda!289413 lambda!289283))))

(assert (=> bs!1264037 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289413 lambda!289262))))

(declare-fun bs!1264041 () Bool)

(assert (= bs!1264041 (and d!1738257 b!5460143)))

(assert (=> bs!1264041 (not (= lambda!289413 lambda!289351))))

(declare-fun bs!1264042 () Bool)

(assert (= bs!1264042 (and d!1738257 b!5459299)))

(assert (=> bs!1264042 (not (= lambda!289413 lambda!289272))))

(assert (=> bs!1264038 (not (= lambda!289413 lambda!289280))))

(declare-fun bs!1264043 () Bool)

(assert (= bs!1264043 (and d!1738257 b!5460682)))

(assert (=> bs!1264043 (not (= lambda!289413 lambda!289408))))

(assert (=> bs!1264038 (not (= lambda!289413 lambda!289277))))

(assert (=> bs!1264040 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289413 lambda!289264))))

(declare-fun bs!1264045 () Bool)

(assert (= bs!1264045 (and d!1738257 b!5460618)))

(assert (=> bs!1264045 (not (= lambda!289413 lambda!289397))))

(declare-fun bs!1264046 () Bool)

(assert (= bs!1264046 (and d!1738257 b!5460142)))

(assert (=> bs!1264046 (not (= lambda!289413 lambda!289350))))

(assert (=> bs!1264037 (not (= lambda!289413 lambda!289263))))

(declare-fun bs!1264048 () Bool)

(assert (= bs!1264048 (and d!1738257 b!5459662)))

(assert (=> bs!1264048 (not (= lambda!289413 lambda!289301))))

(declare-fun bs!1264050 () Bool)

(assert (= bs!1264050 (and d!1738257 b!5460654)))

(assert (=> bs!1264050 (not (= lambda!289413 lambda!289402))))

(declare-fun bs!1264052 () Bool)

(assert (= bs!1264052 (and d!1738257 d!1738121)))

(assert (=> bs!1264052 (= (and (= (regOne!31086 r!7292) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289413 lambda!289385))))

(declare-fun bs!1264053 () Bool)

(assert (= bs!1264053 (and d!1738257 b!5459333)))

(assert (=> bs!1264053 (not (= lambda!289413 lambda!289269))))

(assert (=> bs!1264037 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289413 lambda!289260))))

(assert (=> bs!1264035 (= (and (= s!2326 Nil!62036) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289413 lambda!289281))))

(assert (=> bs!1264038 (= (= (regOne!31086 r!7292) lt!2229788) (= lambda!289413 lambda!289276))))

(declare-fun bs!1264058 () Bool)

(assert (= bs!1264058 (and d!1738257 b!5459661)))

(assert (=> bs!1264058 (not (= lambda!289413 lambda!289298))))

(assert (=> bs!1264052 (not (= lambda!289413 lambda!289387))))

(declare-fun bs!1264060 () Bool)

(assert (= bs!1264060 (and d!1738257 b!5459292)))

(assert (=> bs!1264060 (= lambda!289413 lambda!289257)))

(assert (=> bs!1264038 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289413 lambda!289278))))

(declare-fun bs!1264063 () Bool)

(assert (= bs!1264063 (and d!1738257 b!5460619)))

(assert (=> bs!1264063 (not (= lambda!289413 lambda!289399))))

(assert (=> bs!1264042 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289413 lambda!289270))))

(assert (=> bs!1264042 (not (= lambda!289413 lambda!289271))))

(declare-fun bs!1264065 () Bool)

(assert (= bs!1264065 (and d!1738257 d!1737983)))

(assert (=> bs!1264065 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)))) (= lambda!289413 lambda!289346))))

(declare-fun bs!1264067 () Bool)

(assert (= bs!1264067 (and d!1738257 b!5460681)))

(assert (=> bs!1264067 (not (= lambda!289413 lambda!289407))))

(assert (=> bs!1264039 (not (= lambda!289413 lambda!289377))))

(declare-fun bs!1264070 () Bool)

(assert (= bs!1264070 (and d!1738257 b!5460655)))

(assert (=> bs!1264070 (not (= lambda!289413 lambda!289405))))

(assert (=> bs!1264040 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289413 lambda!289266))))

(declare-fun bs!1264071 () Bool)

(assert (= bs!1264071 (and d!1738257 d!1737877)))

(assert (=> bs!1264071 (not (= lambda!289413 lambda!289315))))

(assert (=> bs!1264040 (not (= lambda!289413 lambda!289267))))

(assert (=> bs!1264060 (not (= lambda!289413 lambda!289258))))

(assert (=> bs!1264053 (= (= (regOne!31086 r!7292) lt!2229794) (= lambda!289413 lambda!289268))))

(assert (=> bs!1264071 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289413 lambda!289314))))

(assert (=> d!1738257 true))

(assert (=> d!1738257 true))

(assert (=> d!1738257 true))

(assert (=> d!1738257 (= (isDefined!12101 (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) Nil!62036 s!2326 s!2326)) (Exists!2468 lambda!289413))))

(declare-fun lt!2230211 () Unit!154924)

(assert (=> d!1738257 (= lt!2230211 (choose!41489 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326))))

(assert (=> d!1738257 (validRegex!7023 (regOne!31086 r!7292))))

(assert (=> d!1738257 (= (lemmaFindConcatSeparationEquivalentToExists!1576 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326) lt!2230211)))

(declare-fun bs!1264075 () Bool)

(assert (= bs!1264075 d!1738257))

(assert (=> bs!1264075 m!6480526))

(assert (=> bs!1264075 m!6480528))

(assert (=> bs!1264075 m!6480526))

(assert (=> bs!1264075 m!6482378))

(declare-fun m!6482394 () Bool)

(assert (=> bs!1264075 m!6482394))

(declare-fun m!6482396 () Bool)

(assert (=> bs!1264075 m!6482396))

(assert (=> b!5459292 d!1738257))

(declare-fun bs!1264076 () Bool)

(declare-fun d!1738259 () Bool)

(assert (= bs!1264076 (and d!1738259 b!5459302)))

(declare-fun lambda!289415 () Int)

(assert (=> bs!1264076 (not (= lambda!289415 lambda!289282))))

(declare-fun bs!1264077 () Bool)

(assert (= bs!1264077 (and d!1738259 d!1737855)))

(assert (=> bs!1264077 (= (and (= (regOne!31086 r!7292) (ite (or c!953812 c!953814) (regTwo!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229912 (ite c!953814 lt!2229863 (regTwo!31086 r!7292))))) (= lambda!289415 lambda!289293))))

(declare-fun bs!1264078 () Bool)

(assert (= bs!1264078 (and d!1738259 b!5459286)))

(assert (=> bs!1264078 (not (= lambda!289415 lambda!289261))))

(declare-fun bs!1264080 () Bool)

(assert (= bs!1264080 (and d!1738259 d!1738257)))

(assert (=> bs!1264080 (= lambda!289415 lambda!289413)))

(declare-fun bs!1264081 () Bool)

(assert (= bs!1264081 (and d!1738259 b!5459307)))

(assert (=> bs!1264081 (not (= lambda!289415 lambda!289279))))

(declare-fun bs!1264082 () Bool)

(assert (= bs!1264082 (and d!1738259 d!1738077)))

(assert (=> bs!1264082 (= (and (= s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036))) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) (Star!15287 (reg!15616 (regOne!31086 r!7292))))) (= lambda!289415 lambda!289375))))

(declare-fun bs!1264083 () Bool)

(assert (= bs!1264083 (and d!1738259 b!5459320)))

(assert (=> bs!1264083 (not (= lambda!289415 lambda!289265))))

(assert (=> bs!1264076 (not (= lambda!289415 lambda!289283))))

(assert (=> bs!1264078 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289415 lambda!289262))))

(declare-fun bs!1264084 () Bool)

(assert (= bs!1264084 (and d!1738259 b!5460143)))

(assert (=> bs!1264084 (not (= lambda!289415 lambda!289351))))

(declare-fun bs!1264085 () Bool)

(assert (= bs!1264085 (and d!1738259 b!5459299)))

(assert (=> bs!1264085 (not (= lambda!289415 lambda!289272))))

(assert (=> bs!1264081 (not (= lambda!289415 lambda!289280))))

(declare-fun bs!1264086 () Bool)

(assert (= bs!1264086 (and d!1738259 b!5460682)))

(assert (=> bs!1264086 (not (= lambda!289415 lambda!289408))))

(assert (=> bs!1264081 (not (= lambda!289415 lambda!289277))))

(assert (=> bs!1264083 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289415 lambda!289264))))

(declare-fun bs!1264087 () Bool)

(assert (= bs!1264087 (and d!1738259 b!5460618)))

(assert (=> bs!1264087 (not (= lambda!289415 lambda!289397))))

(declare-fun bs!1264088 () Bool)

(assert (= bs!1264088 (and d!1738259 b!5460142)))

(assert (=> bs!1264088 (not (= lambda!289415 lambda!289350))))

(assert (=> bs!1264078 (not (= lambda!289415 lambda!289263))))

(declare-fun bs!1264089 () Bool)

(assert (= bs!1264089 (and d!1738259 b!5459662)))

(assert (=> bs!1264089 (not (= lambda!289415 lambda!289301))))

(declare-fun bs!1264090 () Bool)

(assert (= bs!1264090 (and d!1738259 b!5460654)))

(assert (=> bs!1264090 (not (= lambda!289415 lambda!289402))))

(declare-fun bs!1264091 () Bool)

(assert (= bs!1264091 (and d!1738259 d!1738121)))

(assert (=> bs!1264091 (= (and (= (regOne!31086 r!7292) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289415 lambda!289385))))

(declare-fun bs!1264092 () Bool)

(assert (= bs!1264092 (and d!1738259 b!5459333)))

(assert (=> bs!1264092 (not (= lambda!289415 lambda!289269))))

(assert (=> bs!1264078 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289415 lambda!289260))))

(assert (=> bs!1264076 (= (and (= s!2326 Nil!62036) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289415 lambda!289281))))

(assert (=> bs!1264081 (= (= (regOne!31086 r!7292) lt!2229788) (= lambda!289415 lambda!289276))))

(declare-fun bs!1264093 () Bool)

(assert (= bs!1264093 (and d!1738259 b!5459661)))

(assert (=> bs!1264093 (not (= lambda!289415 lambda!289298))))

(assert (=> bs!1264091 (not (= lambda!289415 lambda!289387))))

(declare-fun bs!1264094 () Bool)

(assert (= bs!1264094 (and d!1738259 b!5459292)))

(assert (=> bs!1264094 (= lambda!289415 lambda!289257)))

(assert (=> bs!1264081 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289415 lambda!289278))))

(declare-fun bs!1264095 () Bool)

(assert (= bs!1264095 (and d!1738259 b!5460619)))

(assert (=> bs!1264095 (not (= lambda!289415 lambda!289399))))

(assert (=> bs!1264085 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289415 lambda!289270))))

(assert (=> bs!1264085 (not (= lambda!289415 lambda!289271))))

(declare-fun bs!1264096 () Bool)

(assert (= bs!1264096 (and d!1738259 d!1737983)))

(assert (=> bs!1264096 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite (or c!953812 c!953814) (regOne!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292)))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229767 lt!2229794)))) (= lambda!289415 lambda!289346))))

(declare-fun bs!1264097 () Bool)

(assert (= bs!1264097 (and d!1738259 b!5460681)))

(assert (=> bs!1264097 (not (= lambda!289415 lambda!289407))))

(assert (=> bs!1264082 (not (= lambda!289415 lambda!289377))))

(declare-fun bs!1264098 () Bool)

(assert (= bs!1264098 (and d!1738259 b!5460655)))

(assert (=> bs!1264098 (not (= lambda!289415 lambda!289405))))

(assert (=> bs!1264083 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289415 lambda!289266))))

(declare-fun bs!1264099 () Bool)

(assert (= bs!1264099 (and d!1738259 d!1737877)))

(assert (=> bs!1264099 (not (= lambda!289415 lambda!289315))))

(assert (=> bs!1264083 (not (= lambda!289415 lambda!289267))))

(assert (=> bs!1264094 (not (= lambda!289415 lambda!289258))))

(assert (=> bs!1264092 (= (= (regOne!31086 r!7292) lt!2229794) (= lambda!289415 lambda!289268))))

(assert (=> bs!1264099 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289415 lambda!289314))))

(assert (=> d!1738259 true))

(assert (=> d!1738259 true))

(assert (=> d!1738259 true))

(declare-fun lambda!289417 () Int)

(assert (=> bs!1264076 (= (and (= s!2326 Nil!62036) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289417 lambda!289282))))

(assert (=> bs!1264077 (not (= lambda!289417 lambda!289293))))

(assert (=> bs!1264078 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229727)) (= lambda!289417 lambda!289261))))

(assert (=> bs!1264080 (not (= lambda!289417 lambda!289413))))

(assert (=> bs!1264081 (= (and (= s!2326 (_1!35789 lt!2229728)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289417 lambda!289279))))

(assert (=> bs!1264082 (not (= lambda!289417 lambda!289375))))

(assert (=> bs!1264083 (= (and (= (regOne!31086 r!7292) (regOne!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229767)) (= lambda!289417 lambda!289265))))

(assert (=> bs!1264076 (not (= lambda!289417 lambda!289283))))

(assert (=> bs!1264078 (not (= lambda!289417 lambda!289262))))

(assert (=> bs!1264084 (= lambda!289417 lambda!289351)))

(assert (=> bs!1264085 (= (and (= s!2326 (_1!35789 lt!2229844)) (= (regOne!31086 r!7292) (reg!15616 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229794)) (= lambda!289417 lambda!289272))))

(assert (=> bs!1264081 (not (= lambda!289417 lambda!289280))))

(assert (=> bs!1264086 (= (and (= s!2326 (ite c!953819 s!2326 (ite c!953816 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)) s!2326))) (= (regOne!31086 r!7292) (regOne!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292))))) (= (regTwo!31086 r!7292) (regTwo!31086 (ite c!953819 lt!2229870 (ite c!953816 (ite c!953817 lt!2229794 (ite c!953822 lt!2229788 lt!2229794)) (regTwo!31086 r!7292)))))) (= lambda!289417 lambda!289408))))

(assert (=> bs!1264081 (= (= (regOne!31086 r!7292) lt!2229788) (= lambda!289417 lambda!289277))))

(assert (=> bs!1264083 (not (= lambda!289417 lambda!289264))))

(assert (=> bs!1264087 (not (= lambda!289417 lambda!289397))))

(assert (=> bs!1264088 (not (= lambda!289417 lambda!289350))))

(assert (=> bs!1264078 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229912)) (= lambda!289417 lambda!289263))))

(assert (=> bs!1264089 (= (and (= (regOne!31086 r!7292) (regOne!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292))))))) (= (regTwo!31086 r!7292) (regTwo!31086 (ite c!953819 lt!2229719 (ite c!953812 lt!2229835 (ite c!953814 lt!2229767 (ite c!953816 lt!2229781 (regOne!31086 r!7292)))))))) (= lambda!289417 lambda!289301))))

(assert (=> bs!1264090 (not (= lambda!289417 lambda!289402))))

(assert (=> bs!1264091 (not (= lambda!289417 lambda!289385))))

(assert (=> bs!1264092 (= (= (regOne!31086 r!7292) lt!2229794) (= lambda!289417 lambda!289269))))

(assert (=> bs!1264078 (not (= lambda!289417 lambda!289260))))

(assert (=> bs!1264076 (not (= lambda!289417 lambda!289281))))

(assert (=> bs!1264081 (not (= lambda!289417 lambda!289276))))

(assert (=> bs!1264093 (not (= lambda!289417 lambda!289298))))

(assert (=> bs!1264091 (= (and (= (regOne!31086 r!7292) (ite c!953812 (regTwo!31086 (regOne!31086 r!7292)) (ite c!953814 (regOne!31086 (regOne!31086 r!7292)) (ite c!953817 lt!2229794 lt!2229788)))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229912 (ite c!953814 lt!2229767 (regTwo!31086 r!7292))))) (= lambda!289417 lambda!289387))))

(assert (=> bs!1264094 (not (= lambda!289417 lambda!289257))))

(assert (=> bs!1264081 (not (= lambda!289417 lambda!289278))))

(assert (=> bs!1264095 (= (and (= (regOne!31086 r!7292) (regOne!31086 lt!2229720)) (= (regTwo!31086 r!7292) (regTwo!31086 lt!2229720))) (= lambda!289417 lambda!289399))))

(assert (=> bs!1264085 (not (= lambda!289417 lambda!289270))))

(declare-fun bs!1264111 () Bool)

(assert (= bs!1264111 d!1738259))

(assert (=> bs!1264111 (not (= lambda!289417 lambda!289415))))

(assert (=> bs!1264085 (not (= lambda!289417 lambda!289271))))

(assert (=> bs!1264096 (not (= lambda!289417 lambda!289346))))

(assert (=> bs!1264097 (not (= lambda!289417 lambda!289407))))

(assert (=> bs!1264082 (not (= lambda!289417 lambda!289377))))

(assert (=> bs!1264098 (= (and (= (regOne!31086 r!7292) (regOne!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792))))) (= (regTwo!31086 r!7292) (regTwo!31086 (ite c!953819 lt!2229759 (ite c!953812 lt!2229727 (ite c!953814 lt!2229756 lt!2229792)))))) (= lambda!289417 lambda!289405))))

(assert (=> bs!1264083 (not (= lambda!289417 lambda!289266))))

(assert (=> bs!1264099 (= (and (= s!2326 (ite (or c!953812 c!953814) s!2326 (ite c!953817 (_1!35789 lt!2229844) (ite c!953822 (_1!35789 lt!2229728) Nil!62036)))) (= (regOne!31086 r!7292) (ite c!953812 (regOne!31086 (regOne!31086 r!7292)) (ite c!953814 (regTwo!31086 (regOne!31086 r!7292)) (reg!15616 (regOne!31086 r!7292))))) (= (regTwo!31086 r!7292) (ite c!953812 lt!2229727 (ite c!953814 lt!2229863 lt!2229794)))) (= lambda!289417 lambda!289315))))

(assert (=> bs!1264083 (= (and (= (regOne!31086 r!7292) (regTwo!31086 (regOne!31086 r!7292))) (= (regTwo!31086 r!7292) lt!2229863)) (= lambda!289417 lambda!289267))))

(assert (=> bs!1264094 (= lambda!289417 lambda!289258)))

(assert (=> bs!1264092 (not (= lambda!289417 lambda!289268))))

(assert (=> bs!1264099 (not (= lambda!289417 lambda!289314))))

(assert (=> d!1738259 true))

(assert (=> d!1738259 true))

(assert (=> d!1738259 true))

(assert (=> d!1738259 (= (Exists!2468 lambda!289415) (Exists!2468 lambda!289417))))

(declare-fun lt!2230213 () Unit!154924)

(assert (=> d!1738259 (= lt!2230213 (choose!41494 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326))))

(assert (=> d!1738259 (validRegex!7023 (regOne!31086 r!7292))))

(assert (=> d!1738259 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1122 (regOne!31086 r!7292) (regTwo!31086 r!7292) s!2326) lt!2230213)))

(declare-fun m!6482404 () Bool)

(assert (=> bs!1264111 m!6482404))

(declare-fun m!6482406 () Bool)

(assert (=> bs!1264111 m!6482406))

(declare-fun m!6482408 () Bool)

(assert (=> bs!1264111 m!6482408))

(assert (=> bs!1264111 m!6482378))

(assert (=> b!5459292 d!1738259))

(declare-fun d!1738263 () Bool)

(assert (=> d!1738263 (= (isDefined!12101 (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) Nil!62036 s!2326 s!2326)) (not (isEmpty!34026 (findConcatSeparation!1812 (regOne!31086 r!7292) (regTwo!31086 r!7292) Nil!62036 s!2326 s!2326))))))

(declare-fun bs!1264120 () Bool)

(assert (= bs!1264120 d!1738263))

(assert (=> bs!1264120 m!6480526))

(declare-fun m!6482410 () Bool)

(assert (=> bs!1264120 m!6482410))

(assert (=> b!5459292 d!1738263))

(declare-fun d!1738265 () Bool)

(assert (=> d!1738265 (= (isEmpty!34023 (t!375391 zl!343)) ((_ is Nil!62038) (t!375391 zl!343)))))

(assert (=> b!5459304 d!1738265))

(declare-fun bs!1264122 () Bool)

(declare-fun d!1738267 () Bool)

(assert (= bs!1264122 (and d!1738267 d!1738073)))

(declare-fun lambda!289419 () Int)

(assert (=> bs!1264122 (= lambda!289419 lambda!289365)))

(declare-fun bs!1264123 () Bool)

(assert (= bs!1264123 (and d!1738267 d!1738159)))

(assert (=> bs!1264123 (= lambda!289419 lambda!289393)))

(declare-fun bs!1264124 () Bool)

(assert (= bs!1264124 (and d!1738267 d!1737923)))

(assert (=> bs!1264124 (= lambda!289419 lambda!289323)))

(declare-fun bs!1264125 () Bool)

(assert (= bs!1264125 (and d!1738267 b!5459307)))

(assert (=> bs!1264125 (= lambda!289419 lambda!289275)))

(declare-fun bs!1264127 () Bool)

(assert (= bs!1264127 (and d!1738267 d!1738179)))

(assert (=> bs!1264127 (= lambda!289419 lambda!289396)))

(declare-fun bs!1264128 () Bool)

(assert (= bs!1264128 (and d!1738267 b!5459299)))

(assert (=> bs!1264128 (= lambda!289419 lambda!289273)))

(declare-fun bs!1264129 () Bool)

(assert (= bs!1264129 (and d!1738267 d!1737965)))

(assert (=> bs!1264129 (= lambda!289419 lambda!289344)))

(declare-fun bs!1264130 () Bool)

(assert (= bs!1264130 (and d!1738267 d!1737949)))

(assert (=> bs!1264130 (= lambda!289419 lambda!289336)))

(declare-fun bs!1264131 () Bool)

(assert (= bs!1264131 (and d!1738267 d!1737869)))

(assert (=> bs!1264131 (= lambda!289419 lambda!289308)))

(declare-fun bs!1264132 () Bool)

(assert (= bs!1264132 (and d!1738267 d!1737787)))

(assert (=> bs!1264132 (= lambda!289419 lambda!289286)))

(declare-fun bs!1264133 () Bool)

(assert (= bs!1264133 (and d!1738267 d!1738081)))

(assert (=> bs!1264133 (= lambda!289419 lambda!289380)))

(declare-fun b!5460730 () Bool)

(declare-fun e!3381499 () Regex!15287)

(declare-fun e!3381497 () Regex!15287)

(assert (=> b!5460730 (= e!3381499 e!3381497)))

(declare-fun c!954251 () Bool)

(assert (=> b!5460730 (= c!954251 ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343))))))

(declare-fun b!5460731 () Bool)

(declare-fun e!3381496 () Bool)

(declare-fun e!3381500 () Bool)

(assert (=> b!5460731 (= e!3381496 e!3381500)))

(declare-fun c!954250 () Bool)

(assert (=> b!5460731 (= c!954250 (isEmpty!34024 (tail!10790 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5460732 () Bool)

(assert (=> b!5460732 (= e!3381499 (h!68485 (exprs!5171 (h!68486 zl!343))))))

(declare-fun b!5460733 () Bool)

(declare-fun lt!2230214 () Regex!15287)

(assert (=> b!5460733 (= e!3381496 (isEmptyExpr!1019 lt!2230214))))

(declare-fun b!5460734 () Bool)

(assert (=> b!5460734 (= e!3381500 (= lt!2230214 (head!11693 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun b!5460735 () Bool)

(declare-fun e!3381498 () Bool)

(assert (=> b!5460735 (= e!3381498 (isEmpty!34024 (t!375390 (exprs!5171 (h!68486 zl!343)))))))

(declare-fun e!3381501 () Bool)

(assert (=> d!1738267 e!3381501))

(declare-fun res!2325844 () Bool)

(assert (=> d!1738267 (=> (not res!2325844) (not e!3381501))))

(assert (=> d!1738267 (= res!2325844 (validRegex!7023 lt!2230214))))

(assert (=> d!1738267 (= lt!2230214 e!3381499)))

(declare-fun c!954249 () Bool)

(assert (=> d!1738267 (= c!954249 e!3381498)))

(declare-fun res!2325845 () Bool)

(assert (=> d!1738267 (=> (not res!2325845) (not e!3381498))))

(assert (=> d!1738267 (= res!2325845 ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343))))))

(assert (=> d!1738267 (forall!14591 (exprs!5171 (h!68486 zl!343)) lambda!289419)))

(assert (=> d!1738267 (= (generalisedConcat!956 (exprs!5171 (h!68486 zl!343))) lt!2230214)))

(declare-fun b!5460736 () Bool)

(assert (=> b!5460736 (= e!3381497 EmptyExpr!15287)))

(declare-fun b!5460737 () Bool)

(assert (=> b!5460737 (= e!3381500 (isConcat!542 lt!2230214))))

(declare-fun b!5460738 () Bool)

(assert (=> b!5460738 (= e!3381497 (Concat!24132 (h!68485 (exprs!5171 (h!68486 zl!343))) (generalisedConcat!956 (t!375390 (exprs!5171 (h!68486 zl!343))))))))

(declare-fun b!5460739 () Bool)

(assert (=> b!5460739 (= e!3381501 e!3381496)))

(declare-fun c!954252 () Bool)

(assert (=> b!5460739 (= c!954252 (isEmpty!34024 (exprs!5171 (h!68486 zl!343))))))

(assert (= (and d!1738267 res!2325845) b!5460735))

(assert (= (and d!1738267 c!954249) b!5460732))

(assert (= (and d!1738267 (not c!954249)) b!5460730))

(assert (= (and b!5460730 c!954251) b!5460738))

(assert (= (and b!5460730 (not c!954251)) b!5460736))

(assert (= (and d!1738267 res!2325844) b!5460739))

(assert (= (and b!5460739 c!954252) b!5460733))

(assert (= (and b!5460739 (not c!954252)) b!5460731))

(assert (= (and b!5460731 c!954250) b!5460734))

(assert (= (and b!5460731 (not c!954250)) b!5460737))

(declare-fun m!6482412 () Bool)

(assert (=> b!5460733 m!6482412))

(declare-fun m!6482414 () Bool)

(assert (=> b!5460734 m!6482414))

(assert (=> b!5460738 m!6480382))

(assert (=> b!5460735 m!6480554))

(declare-fun m!6482416 () Bool)

(assert (=> b!5460737 m!6482416))

(declare-fun m!6482418 () Bool)

(assert (=> b!5460731 m!6482418))

(assert (=> b!5460731 m!6482418))

(declare-fun m!6482420 () Bool)

(assert (=> b!5460731 m!6482420))

(declare-fun m!6482422 () Bool)

(assert (=> d!1738267 m!6482422))

(declare-fun m!6482424 () Bool)

(assert (=> d!1738267 m!6482424))

(declare-fun m!6482426 () Bool)

(assert (=> b!5460739 m!6482426))

(assert (=> b!5459301 d!1738267))

(declare-fun c!954253 () Bool)

(declare-fun d!1738269 () Bool)

(assert (=> d!1738269 (= c!954253 (isEmpty!34025 (ite c!953819 (t!375389 s!2326) (ite c!953812 s!2326 (ite c!953816 (ite c!953817 s!2326 (ite c!953822 (_1!35789 lt!2229738) s!2326)) (t!375389 s!2326))))))))

(declare-fun e!3381502 () Bool)

(assert (=> d!1738269 (= (matchZipper!1531 (ite c!953819 ((_ map or) lt!2229907 lt!2229838) (ite c!953812 lt!2229910 (ite c!953816 (ite c!953817 z!1189 (ite c!953822 lt!2229892 lt!2229771)) lt!2229921))) (ite c!953819 (t!375389 s!2326) (ite c!953812 s!2326 (ite c!953816 (ite c!953817 s!2326 (ite c!953822 (_1!35789 lt!2229738) s!2326)) (t!375389 s!2326))))) e!3381502)))

(declare-fun b!5460740 () Bool)

(assert (=> b!5460740 (= e!3381502 (nullableZipper!1487 (ite c!953819 ((_ map or) lt!2229907 lt!2229838) (ite c!953812 lt!2229910 (ite c!953816 (ite c!953817 z!1189 (ite c!953822 lt!2229892 lt!2229771)) lt!2229921)))))))

(declare-fun b!5460741 () Bool)

(assert (=> b!5460741 (= e!3381502 (matchZipper!1531 (derivationStepZipper!1506 (ite c!953819 ((_ map or) lt!2229907 lt!2229838) (ite c!953812 lt!2229910 (ite c!953816 (ite c!953817 z!1189 (ite c!953822 lt!2229892 lt!2229771)) lt!2229921))) (head!11691 (ite c!953819 (t!375389 s!2326) (ite c!953812 s!2326 (ite c!953816 (ite c!953817 s!2326 (ite c!953822 (_1!35789 lt!2229738) s!2326)) (t!375389 s!2326)))))) (tail!10788 (ite c!953819 (t!375389 s!2326) (ite c!953812 s!2326 (ite c!953816 (ite c!953817 s!2326 (ite c!953822 (_1!35789 lt!2229738) s!2326)) (t!375389 s!2326)))))))))

(assert (= (and d!1738269 c!954253) b!5460740))

(assert (= (and d!1738269 (not c!954253)) b!5460741))

(declare-fun m!6482428 () Bool)

(assert (=> d!1738269 m!6482428))

(declare-fun m!6482430 () Bool)

(assert (=> b!5460740 m!6482430))

(declare-fun m!6482432 () Bool)

(assert (=> b!5460741 m!6482432))

(assert (=> b!5460741 m!6482432))

(declare-fun m!6482434 () Bool)

(assert (=> b!5460741 m!6482434))

(declare-fun m!6482436 () Bool)

(assert (=> b!5460741 m!6482436))

(assert (=> b!5460741 m!6482434))

(assert (=> b!5460741 m!6482436))

(declare-fun m!6482438 () Bool)

(assert (=> b!5460741 m!6482438))

(assert (=> bm!400446 d!1738269))

(declare-fun b!5460744 () Bool)

(declare-fun res!2325846 () Bool)

(declare-fun e!3381504 () Bool)

(assert (=> b!5460744 (=> (not res!2325846) (not e!3381504))))

(declare-fun lt!2230215 () List!62160)

(assert (=> b!5460744 (= res!2325846 (= (size!39905 lt!2230215) (+ (size!39905 (ite c!953817 lt!2229813 (_1!35789 lt!2229738))) (size!39905 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738))))))))

(declare-fun b!5460745 () Bool)

(assert (=> b!5460745 (= e!3381504 (or (not (= (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738)) Nil!62036)) (= lt!2230215 (ite c!953817 lt!2229813 (_1!35789 lt!2229738)))))))

(declare-fun e!3381503 () List!62160)

(declare-fun b!5460743 () Bool)

(assert (=> b!5460743 (= e!3381503 (Cons!62036 (h!68484 (ite c!953817 lt!2229813 (_1!35789 lt!2229738))) (++!13653 (t!375389 (ite c!953817 lt!2229813 (_1!35789 lt!2229738))) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738)))))))

(declare-fun b!5460742 () Bool)

(assert (=> b!5460742 (= e!3381503 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738)))))

(declare-fun d!1738271 () Bool)

(assert (=> d!1738271 e!3381504))

(declare-fun res!2325847 () Bool)

(assert (=> d!1738271 (=> (not res!2325847) (not e!3381504))))

(assert (=> d!1738271 (= res!2325847 (= (content!11172 lt!2230215) ((_ map or) (content!11172 (ite c!953817 lt!2229813 (_1!35789 lt!2229738))) (content!11172 (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738))))))))

(assert (=> d!1738271 (= lt!2230215 e!3381503)))

(declare-fun c!954254 () Bool)

(assert (=> d!1738271 (= c!954254 ((_ is Nil!62036) (ite c!953817 lt!2229813 (_1!35789 lt!2229738))))))

(assert (=> d!1738271 (= (++!13653 (ite c!953817 lt!2229813 (_1!35789 lt!2229738)) (ite c!953817 (_2!35789 lt!2229844) (_2!35789 lt!2229738))) lt!2230215)))

(assert (= (and d!1738271 c!954254) b!5460742))

(assert (= (and d!1738271 (not c!954254)) b!5460743))

(assert (= (and d!1738271 res!2325847) b!5460744))

(assert (= (and b!5460744 res!2325846) b!5460745))

(declare-fun m!6482440 () Bool)

(assert (=> b!5460744 m!6482440))

(declare-fun m!6482442 () Bool)

(assert (=> b!5460744 m!6482442))

(declare-fun m!6482444 () Bool)

(assert (=> b!5460744 m!6482444))

(declare-fun m!6482446 () Bool)

(assert (=> b!5460743 m!6482446))

(declare-fun m!6482448 () Bool)

(assert (=> d!1738271 m!6482448))

(declare-fun m!6482450 () Bool)

(assert (=> d!1738271 m!6482450))

(declare-fun m!6482452 () Bool)

(assert (=> d!1738271 m!6482452))

(assert (=> bm!400316 d!1738271))

(declare-fun d!1738273 () Bool)

(declare-fun c!954256 () Bool)

(declare-fun e!3381507 () Bool)

(assert (=> d!1738273 (= c!954256 e!3381507)))

(declare-fun res!2325848 () Bool)

(assert (=> d!1738273 (=> (not res!2325848) (not e!3381507))))

(assert (=> d!1738273 (= res!2325848 ((_ is Cons!62037) (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804)))))))

(declare-fun e!3381506 () (InoxSet Context!9342))

(assert (=> d!1738273 (= (derivationStepZipperUp!659 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804)) (h!68484 s!2326)) e!3381506)))

(declare-fun b!5460746 () Bool)

(declare-fun e!3381505 () (InoxSet Context!9342))

(declare-fun call!400673 () (InoxSet Context!9342))

(assert (=> b!5460746 (= e!3381505 call!400673)))

(declare-fun b!5460747 () Bool)

(assert (=> b!5460747 (= e!3381506 ((_ map or) call!400673 (derivationStepZipperUp!659 (Context!9343 (t!375390 (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804))))) (h!68484 s!2326))))))

(declare-fun b!5460748 () Bool)

(assert (=> b!5460748 (= e!3381505 ((as const (Array Context!9342 Bool)) false))))

(declare-fun b!5460749 () Bool)

(assert (=> b!5460749 (= e!3381506 e!3381505)))

(declare-fun c!954255 () Bool)

(assert (=> b!5460749 (= c!954255 ((_ is Cons!62037) (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804)))))))

(declare-fun b!5460750 () Bool)

(assert (=> b!5460750 (= e!3381507 (nullable!5456 (h!68485 (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804))))))))

(declare-fun bm!400668 () Bool)

(assert (=> bm!400668 (= call!400673 (derivationStepZipperDown!735 (h!68485 (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804)))) (Context!9343 (t!375390 (exprs!5171 (ite c!953819 lt!2229904 (ite c!953814 lt!2229856 lt!2229804))))) (h!68484 s!2326)))))

(assert (= (and d!1738273 res!2325848) b!5460750))

(assert (= (and d!1738273 c!954256) b!5460747))

(assert (= (and d!1738273 (not c!954256)) b!5460749))

(assert (= (and b!5460749 c!954255) b!5460746))

(assert (= (and b!5460749 (not c!954255)) b!5460748))

(assert (= (or b!5460747 b!5460746) bm!400668))

(declare-fun m!6482454 () Bool)

(assert (=> b!5460747 m!6482454))

(declare-fun m!6482456 () Bool)

(assert (=> b!5460750 m!6482456))

(declare-fun m!6482458 () Bool)

(assert (=> bm!400668 m!6482458))

(assert (=> bm!400285 d!1738273))

(declare-fun d!1738275 () Bool)

(assert (=> d!1738275 (= (get!21395 (ite c!953817 lt!2229822 lt!2229808)) (v!51426 (ite c!953817 lt!2229822 lt!2229808)))))

(assert (=> bm!400463 d!1738275))

(declare-fun b!5460755 () Bool)

(declare-fun e!3381510 () Bool)

(declare-fun tp!1502120 () Bool)

(assert (=> b!5460755 (= e!3381510 (and tp_is_empty!39827 tp!1502120))))

(assert (=> b!5459298 (= tp!1502109 e!3381510)))

(assert (= (and b!5459298 ((_ is Cons!62036) (t!375389 s!2326))) b!5460755))

(declare-fun b!5460760 () Bool)

(declare-fun e!3381513 () Bool)

(declare-fun tp!1502125 () Bool)

(declare-fun tp!1502126 () Bool)

(assert (=> b!5460760 (= e!3381513 (and tp!1502125 tp!1502126))))

(assert (=> b!5459335 (= tp!1502113 e!3381513)))

(assert (= (and b!5459335 ((_ is Cons!62037) (exprs!5171 (h!68486 zl!343)))) b!5460760))

(declare-fun b!5460774 () Bool)

(declare-fun e!3381516 () Bool)

(declare-fun tp!1502139 () Bool)

(declare-fun tp!1502140 () Bool)

(assert (=> b!5460774 (= e!3381516 (and tp!1502139 tp!1502140))))

(declare-fun b!5460772 () Bool)

(declare-fun tp!1502137 () Bool)

(declare-fun tp!1502141 () Bool)

(assert (=> b!5460772 (= e!3381516 (and tp!1502137 tp!1502141))))

(declare-fun b!5460771 () Bool)

(assert (=> b!5460771 (= e!3381516 tp_is_empty!39827)))

(declare-fun b!5460773 () Bool)

(declare-fun tp!1502138 () Bool)

(assert (=> b!5460773 (= e!3381516 tp!1502138)))

(assert (=> b!5459315 (= tp!1502108 e!3381516)))

(assert (= (and b!5459315 ((_ is ElementMatch!15287) (regOne!31086 r!7292))) b!5460771))

(assert (= (and b!5459315 ((_ is Concat!24132) (regOne!31086 r!7292))) b!5460772))

(assert (= (and b!5459315 ((_ is Star!15287) (regOne!31086 r!7292))) b!5460773))

(assert (= (and b!5459315 ((_ is Union!15287) (regOne!31086 r!7292))) b!5460774))

(declare-fun b!5460778 () Bool)

(declare-fun e!3381517 () Bool)

(declare-fun tp!1502144 () Bool)

(declare-fun tp!1502145 () Bool)

(assert (=> b!5460778 (= e!3381517 (and tp!1502144 tp!1502145))))

(declare-fun b!5460776 () Bool)

(declare-fun tp!1502142 () Bool)

(declare-fun tp!1502146 () Bool)

(assert (=> b!5460776 (= e!3381517 (and tp!1502142 tp!1502146))))

(declare-fun b!5460775 () Bool)

(assert (=> b!5460775 (= e!3381517 tp_is_empty!39827)))

(declare-fun b!5460777 () Bool)

(declare-fun tp!1502143 () Bool)

(assert (=> b!5460777 (= e!3381517 tp!1502143)))

(assert (=> b!5459315 (= tp!1502115 e!3381517)))

(assert (= (and b!5459315 ((_ is ElementMatch!15287) (regTwo!31086 r!7292))) b!5460775))

(assert (= (and b!5459315 ((_ is Concat!24132) (regTwo!31086 r!7292))) b!5460776))

(assert (= (and b!5459315 ((_ is Star!15287) (regTwo!31086 r!7292))) b!5460777))

(assert (= (and b!5459315 ((_ is Union!15287) (regTwo!31086 r!7292))) b!5460778))

(declare-fun b!5460782 () Bool)

(declare-fun e!3381518 () Bool)

(declare-fun tp!1502149 () Bool)

(declare-fun tp!1502150 () Bool)

(assert (=> b!5460782 (= e!3381518 (and tp!1502149 tp!1502150))))

(declare-fun b!5460780 () Bool)

(declare-fun tp!1502147 () Bool)

(declare-fun tp!1502151 () Bool)

(assert (=> b!5460780 (= e!3381518 (and tp!1502147 tp!1502151))))

(declare-fun b!5460779 () Bool)

(assert (=> b!5460779 (= e!3381518 tp_is_empty!39827)))

(declare-fun b!5460781 () Bool)

(declare-fun tp!1502148 () Bool)

(assert (=> b!5460781 (= e!3381518 tp!1502148)))

(assert (=> b!5459281 (= tp!1502112 e!3381518)))

(assert (= (and b!5459281 ((_ is ElementMatch!15287) (regOne!31087 r!7292))) b!5460779))

(assert (= (and b!5459281 ((_ is Concat!24132) (regOne!31087 r!7292))) b!5460780))

(assert (= (and b!5459281 ((_ is Star!15287) (regOne!31087 r!7292))) b!5460781))

(assert (= (and b!5459281 ((_ is Union!15287) (regOne!31087 r!7292))) b!5460782))

(declare-fun b!5460800 () Bool)

(declare-fun e!3381526 () Bool)

(declare-fun tp!1502154 () Bool)

(declare-fun tp!1502155 () Bool)

(assert (=> b!5460800 (= e!3381526 (and tp!1502154 tp!1502155))))

(declare-fun b!5460798 () Bool)

(declare-fun tp!1502152 () Bool)

(declare-fun tp!1502156 () Bool)

(assert (=> b!5460798 (= e!3381526 (and tp!1502152 tp!1502156))))

(declare-fun b!5460797 () Bool)

(assert (=> b!5460797 (= e!3381526 tp_is_empty!39827)))

(declare-fun b!5460799 () Bool)

(declare-fun tp!1502153 () Bool)

(assert (=> b!5460799 (= e!3381526 tp!1502153)))

(assert (=> b!5459281 (= tp!1502117 e!3381526)))

(assert (= (and b!5459281 ((_ is ElementMatch!15287) (regTwo!31087 r!7292))) b!5460797))

(assert (= (and b!5459281 ((_ is Concat!24132) (regTwo!31087 r!7292))) b!5460798))

(assert (= (and b!5459281 ((_ is Star!15287) (regTwo!31087 r!7292))) b!5460799))

(assert (= (and b!5459281 ((_ is Union!15287) (regTwo!31087 r!7292))) b!5460800))

(declare-fun condSetEmpty!35722 () Bool)

(assert (=> setNonEmpty!35719 (= condSetEmpty!35722 (= setRest!35719 ((as const (Array Context!9342 Bool)) false)))))

(declare-fun setRes!35722 () Bool)

(assert (=> setNonEmpty!35719 (= tp!1502110 setRes!35722)))

(declare-fun setIsEmpty!35722 () Bool)

(assert (=> setIsEmpty!35722 setRes!35722))

(declare-fun setElem!35722 () Context!9342)

(declare-fun setNonEmpty!35722 () Bool)

(declare-fun tp!1502162 () Bool)

(declare-fun e!3381529 () Bool)

(assert (=> setNonEmpty!35722 (= setRes!35722 (and tp!1502162 (inv!81464 setElem!35722) e!3381529))))

(declare-fun setRest!35722 () (InoxSet Context!9342))

(assert (=> setNonEmpty!35722 (= setRest!35719 ((_ map or) (store ((as const (Array Context!9342 Bool)) false) setElem!35722 true) setRest!35722))))

(declare-fun b!5460805 () Bool)

(declare-fun tp!1502161 () Bool)

(assert (=> b!5460805 (= e!3381529 tp!1502161)))

(assert (= (and setNonEmpty!35719 condSetEmpty!35722) setIsEmpty!35722))

(assert (= (and setNonEmpty!35719 (not condSetEmpty!35722)) setNonEmpty!35722))

(assert (= setNonEmpty!35722 b!5460805))

(declare-fun m!6482472 () Bool)

(assert (=> setNonEmpty!35722 m!6482472))

(declare-fun b!5460809 () Bool)

(declare-fun e!3381530 () Bool)

(declare-fun tp!1502165 () Bool)

(declare-fun tp!1502166 () Bool)

(assert (=> b!5460809 (= e!3381530 (and tp!1502165 tp!1502166))))

(declare-fun b!5460807 () Bool)

(declare-fun tp!1502163 () Bool)

(declare-fun tp!1502167 () Bool)

(assert (=> b!5460807 (= e!3381530 (and tp!1502163 tp!1502167))))

(declare-fun b!5460806 () Bool)

(assert (=> b!5460806 (= e!3381530 tp_is_empty!39827)))

(declare-fun b!5460808 () Bool)

(declare-fun tp!1502164 () Bool)

(assert (=> b!5460808 (= e!3381530 tp!1502164)))

(assert (=> b!5459287 (= tp!1502114 e!3381530)))

(assert (= (and b!5459287 ((_ is ElementMatch!15287) (reg!15616 r!7292))) b!5460806))

(assert (= (and b!5459287 ((_ is Concat!24132) (reg!15616 r!7292))) b!5460807))

(assert (= (and b!5459287 ((_ is Star!15287) (reg!15616 r!7292))) b!5460808))

(assert (= (and b!5459287 ((_ is Union!15287) (reg!15616 r!7292))) b!5460809))

(declare-fun b!5460810 () Bool)

(declare-fun e!3381531 () Bool)

(declare-fun tp!1502168 () Bool)

(declare-fun tp!1502169 () Bool)

(assert (=> b!5460810 (= e!3381531 (and tp!1502168 tp!1502169))))

(assert (=> b!5459308 (= tp!1502111 e!3381531)))

(assert (= (and b!5459308 ((_ is Cons!62037) (exprs!5171 setElem!35719))) b!5460810))

(declare-fun b!5460818 () Bool)

(declare-fun e!3381537 () Bool)

(declare-fun tp!1502174 () Bool)

(assert (=> b!5460818 (= e!3381537 tp!1502174)))

(declare-fun e!3381536 () Bool)

(declare-fun b!5460817 () Bool)

(declare-fun tp!1502175 () Bool)

(assert (=> b!5460817 (= e!3381536 (and (inv!81464 (h!68486 (t!375391 zl!343))) e!3381537 tp!1502175))))

(assert (=> b!5459288 (= tp!1502116 e!3381536)))

(assert (= b!5460817 b!5460818))

(assert (= (and b!5459288 ((_ is Cons!62038) (t!375391 zl!343))) b!5460817))

(declare-fun m!6482476 () Bool)

(assert (=> b!5460817 m!6482476))

(declare-fun b_lambda!207855 () Bool)

(assert (= b_lambda!207849 (or b!5459338 b_lambda!207855)))

(declare-fun bs!1264156 () Bool)

(declare-fun d!1738283 () Bool)

(assert (= bs!1264156 (and d!1738283 b!5459338)))

(assert (=> bs!1264156 (= (dynLambda!24414 lambda!289259 (h!68486 zl!343)) (derivationStepZipperUp!659 (h!68486 zl!343) (h!68484 s!2326)))))

(assert (=> bs!1264156 m!6480414))

(assert (=> d!1738099 d!1738283))

(declare-fun b_lambda!207857 () Bool)

(assert (= b_lambda!207847 (or b!5459338 b_lambda!207857)))

(declare-fun bs!1264157 () Bool)

(declare-fun d!1738285 () Bool)

(assert (= bs!1264157 (and d!1738285 b!5459338)))

(assert (=> bs!1264157 (= (dynLambda!24414 lambda!289259 lt!2229804) (derivationStepZipperUp!659 lt!2229804 (h!68484 s!2326)))))

(assert (=> bs!1264157 m!6480416))

(assert (=> d!1738093 d!1738285))

(declare-fun b_lambda!207859 () Bool)

(assert (= b_lambda!207829 (or b!5459307 b_lambda!207859)))

(declare-fun bs!1264158 () Bool)

(declare-fun d!1738287 () Bool)

(assert (= bs!1264158 (and d!1738287 b!5459307)))

(declare-fun lt!2230218 () Unit!154924)

(assert (=> bs!1264158 (= lt!2230218 (lemmaConcatPreservesForall!254 (exprs!5171 lt!2229837) lt!2229899 lambda!289275))))

(assert (=> bs!1264158 (= (dynLambda!24412 lambda!289274 lt!2229837) (Context!9343 (++!13654 (exprs!5171 lt!2229837) lt!2229899)))))

(declare-fun m!6482478 () Bool)

(assert (=> bs!1264158 m!6482478))

(declare-fun m!6482480 () Bool)

(assert (=> bs!1264158 m!6482480))

(assert (=> d!1737853 d!1738287))

(check-sat (not b!5460393) (not b!5460479) (not d!1737873) (not b!5460810) (not b!5459972) (not d!1737959) (not b!5460419) (not d!1738221) (not d!1738017) (not d!1738191) (not d!1738253) (not d!1737931) (not b!5460659) (not bm!400610) (not d!1737997) (not d!1737929) (not b!5460103) (not b!5460358) (not b!5459425) (not d!1737921) (not d!1737917) (not b!5460249) (not b!5459581) (not d!1738183) (not d!1738243) (not b!5460755) (not bm!400615) (not b!5459878) (not b!5459725) (not b!5459732) (not b!5460107) (not b!5460116) (not b!5460782) (not b!5460781) (not b!5460392) (not b!5460459) (not d!1738009) (not b!5460700) (not b!5460598) (not d!1738085) (not d!1737877) (not b!5460104) (not d!1738195) (not b!5460181) (not b!5460180) (not d!1738263) (not b!5460818) (not b!5460809) (not b!5460616) (not b!5459980) (not d!1737955) (not b!5460366) (not b!5460590) (not b!5459522) (not b!5460555) (not b!5460177) (not b!5460199) (not b!5460031) (not b!5460108) (not b!5460119) (not d!1737789) (not bm!400635) (not b!5460212) (not b!5459884) (not b_lambda!207855) (not b!5460679) (not d!1737951) (not d!1738121) (not d!1737923) (not d!1737795) (not b!5459814) (not d!1738153) (not b!5460694) (not d!1738139) (not b!5460217) (not b!5460561) (not b!5459716) (not b!5460093) (not b!5459975) (not d!1738271) (not b!5460712) (not b!5460452) (not b!5460474) (not bm!400637) (not bm!400589) (not b!5460478) (not b!5460594) (not b!5460744) (not b!5460778) (not bm!400582) (not d!1738069) (not b!5460731) (not b!5460201) (not bm!400617) (not d!1738179) (not bm!400597) (not d!1737899) (not d!1738077) (not bm!400513) (not d!1737973) (not b!5460798) (not d!1737919) (not bm!400632) (not b!5460805) (not d!1738135) (not b!5460677) (not bs!1264156) (not b!5460293) (not b!5460701) (not b!5459983) (not b!5460702) (not d!1737979) (not b!5460734) (not b!5459577) (not b!5460089) (not b!5460248) (not bm!400583) (not b!5460487) (not d!1738113) (not b!5460560) (not b_lambda!207839) (not b!5460553) (not b!5459426) (not b_lambda!207859) (not b!5460112) (not b!5460363) (not b!5460245) (not bs!1264157) (not b!5460706) (not b!5460557) (not b!5460460) (not b!5460292) (not bm!400662) (not bm!400652) (not b!5460652) (not d!1738189) (not b!5460251) (not b!5460290) (not b!5460321) (not b!5460140) (not b!5460243) (not d!1737871) (not b!5460208) (not b!5459449) (not d!1738071) (not b!5460294) (not d!1737829) (not b!5459976) (not b!5459431) (not bm!400529) (not b!5460475) (not d!1737801) (not b!5460325) (not d!1737787) (not d!1738103) (not b!5460800) (not b!5460799) (not b!5460674) (not b!5459978) (not b!5460623) (not b!5460462) (not bm!400514) (not d!1738249) (not b!5459845) (not d!1738267) (not b!5460185) (not b!5460463) (not d!1737965) (not d!1738081) (not b!5459423) (not b!5460592) (not b!5460740) (not b!5459719) (not b!5460253) (not b!5459842) (not b!5460817) (not b!5460711) (not b!5460780) (not b!5460415) (not d!1737793) (not d!1737821) (not d!1738159) (not b!5460760) (not b!5459880) (not b!5460741) (not b!5459666) (not d!1737811) (not b!5460777) (not b!5460738) (not d!1737807) (not b!5459512) (not b!5460423) (not d!1738233) (not d!1738035) (not bm!400561) (not bm!400578) (not d!1738041) (not bm!400605) (not d!1738099) (not bm!400500) (not b!5459735) (not d!1738015) (not b!5460106) (not b!5460650) (not b!5460211) (not b!5460750) (not b!5459578) (not bm!400619) (not d!1738119) (not bm!400531) (not bm!400665) (not d!1737949) (not b!5460676) (not d!1738251) (not bm!400664) (not b!5460028) (not b!5459731) (not b!5460329) (not d!1738007) (not d!1738083) (not bm!400606) (not b!5460554) (not b!5460417) (not setNonEmpty!35722) (not b!5460353) (not d!1737869) (not b!5459659) (not b!5459974) (not b!5460773) (not b!5459371) (not b!5460737) (not d!1737897) (not b!5460593) (not b!5460703) (not bm!400577) (not b_lambda!207857) (not d!1738093) (not bm!400618) (not bm!400614) (not d!1738157) (not b!5460587) (not b!5459448) (not bm!400580) (not bm!400658) (not b_lambda!207835) (not d!1738241) (not b!5459519) (not b!5459729) (not b!5460317) (not d!1738151) (not bm!400532) (not b!5460213) (not b!5460176) (not b!5460807) (not b!5460247) (not b!5460456) (not b!5459517) (not b!5460332) (not b!5459879) (not b!5459882) (not b!5460481) (not b!5459883) (not b!5460120) (not b!5459361) (not b!5460704) (not b!5460589) (not b!5460739) (not b!5460036) (not b!5460774) (not b!5460776) (not d!1738259) (not d!1738149) (not d!1738073) (not b!5459876) (not b!5460695) (not bm!400613) (not b!5459711) (not b!5459521) (not b_lambda!207853) (not d!1737819) (not b!5459582) (not b!5460709) (not b!5460733) (not b!5460147) (not b!5460747) (not b!5459850) (not bm!400598) (not b!5459593) (not bm!400587) (not b!5460289) (not b!5460286) (not d!1737999) (not b!5460204) (not b!5459721) (not bm!400623) (not bm!400584) (not b!5459979) (not d!1737817) (not b!5460808) (not b!5459520) (not d!1738217) (not d!1738019) (not b!5459514) (not b!5460414) (not b!5459580) (not d!1738013) (not d!1737867) (not d!1738101) (not d!1738105) (not b!5460708) (not bm!400656) (not b!5459736) (not bm!400534) tp_is_empty!39827 (not d!1738223) (not d!1737957) (not d!1737849) (not d!1738213) (not b_lambda!207837) (not b!5460073) (not b!5460209) (not b!5460319) (not bm!400533) (not d!1738257) (not b!5460562) (not d!1737851) (not d!1738011) (not bs!1264158) (not b!5460585) (not d!1738001) (not b!5460033) (not b!5459720) (not b!5460336) (not b!5459576) (not b!5459427) (not bm!400638) (not d!1737927) (not b!5460743) (not d!1737853) (not b!5459516) (not d!1737855) (not b!5460288) (not b!5460330) (not bm!400640) (not d!1738111) (not b!5459734) (not bm!400648) (not b!5460772) (not b!5460361) (not b!5459594) (not d!1738269) (not d!1737983) (not b!5459717) (not b!5460651) (not bm!400668) (not d!1737971) (not b!5459362) (not d!1737953) (not bm!400659) (not b!5460483) (not bm!400639) (not b!5459847) (not b!5460320) (not d!1738075) (not b!5460206) (not b!5460179) (not b!5459422) (not b!5459848) (not b!5459740) (not b!5460482) (not b!5460418) (not bm!400624) (not d!1738147) (not b!5460457) (not bm!400612) (not b!5460454) (not b!5460117) (not bm!400590) (not d!1738215) (not b!5459846) (not b!5460686) (not b!5460673) (not bm!400663) (not b!5460252) (not bm!400585) (not bm!400631) (not d!1738067) (not d!1738245) (not b!5460735) (not d!1738109) (not b!5460316) (not d!1738231) (not b!5459849) (not d!1738255) (not d!1738247))
(check-sat)
