; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686052 () Bool)

(assert start!686052)

(declare-fun b!7066391 () Bool)

(assert (=> b!7066391 true))

(declare-fun b!7066382 () Bool)

(assert (=> b!7066382 true))

(declare-fun b!7066385 () Bool)

(assert (=> b!7066385 true))

(declare-fun bs!1879837 () Bool)

(declare-fun b!7066389 () Bool)

(assert (= bs!1879837 (and b!7066389 b!7066391)))

(declare-fun lambda!423883 () Int)

(declare-fun lambda!423879 () Int)

(assert (=> bs!1879837 (not (= lambda!423883 lambda!423879))))

(declare-fun bs!1879838 () Bool)

(declare-fun b!7066406 () Bool)

(assert (= bs!1879838 (and b!7066406 b!7066391)))

(declare-datatypes ((C!35502 0))(
  ( (C!35503 (val!27453 Int)) )
))
(declare-datatypes ((List!68374 0))(
  ( (Nil!68250) (Cons!68250 (h!74698 C!35502) (t!382155 List!68374)) )
))
(declare-datatypes ((tuple2!68234 0))(
  ( (tuple2!68235 (_1!37420 List!68374) (_2!37420 List!68374)) )
))
(declare-fun lt!2541325 () tuple2!68234)

(declare-fun lambda!423884 () Int)

(declare-fun s!7408 () List!68374)

(assert (=> bs!1879838 (= (= (_1!37420 lt!2541325) s!7408) (= lambda!423884 lambda!423879))))

(declare-fun bs!1879839 () Bool)

(assert (= bs!1879839 (and b!7066406 b!7066389)))

(assert (=> bs!1879839 (not (= lambda!423884 lambda!423883))))

(assert (=> b!7066406 true))

(declare-fun b!7066376 () Bool)

(declare-fun res!2885476 () Bool)

(declare-fun e!4248214 () Bool)

(assert (=> b!7066376 (=> res!2885476 e!4248214)))

(declare-datatypes ((Regex!17616 0))(
  ( (ElementMatch!17616 (c!1317722 C!35502)) (Concat!26461 (regOne!35744 Regex!17616) (regTwo!35744 Regex!17616)) (EmptyExpr!17616) (Star!17616 (reg!17945 Regex!17616)) (EmptyLang!17616) (Union!17616 (regOne!35745 Regex!17616) (regTwo!35745 Regex!17616)) )
))
(declare-datatypes ((List!68375 0))(
  ( (Nil!68251) (Cons!68251 (h!74699 Regex!17616) (t!382156 List!68375)) )
))
(declare-datatypes ((Context!13224 0))(
  ( (Context!13225 (exprs!7112 List!68375)) )
))
(declare-fun lt!2541318 () Context!13224)

(declare-fun isEmpty!39829 (List!68375) Bool)

(assert (=> b!7066376 (= res!2885476 (isEmpty!39829 (exprs!7112 lt!2541318)))))

(declare-fun res!2885470 () Bool)

(declare-fun e!4248218 () Bool)

(assert (=> start!686052 (=> (not res!2885470) (not e!4248218))))

(declare-fun lt!2541371 () (Set Context!13224))

(declare-fun matchZipper!3156 ((Set Context!13224) List!68374) Bool)

(assert (=> start!686052 (= res!2885470 (matchZipper!3156 lt!2541371 s!7408))))

(declare-fun z1!570 () (Set Context!13224))

(declare-fun ct2!306 () Context!13224)

(declare-fun appendTo!737 ((Set Context!13224) Context!13224) (Set Context!13224))

(assert (=> start!686052 (= lt!2541371 (appendTo!737 z1!570 ct2!306))))

(assert (=> start!686052 e!4248218))

(declare-fun condSetEmpty!50112 () Bool)

(assert (=> start!686052 (= condSetEmpty!50112 (= z1!570 (as set.empty (Set Context!13224))))))

(declare-fun setRes!50112 () Bool)

(assert (=> start!686052 setRes!50112))

(declare-fun e!4248216 () Bool)

(declare-fun inv!86900 (Context!13224) Bool)

(assert (=> start!686052 (and (inv!86900 ct2!306) e!4248216)))

(declare-fun e!4248224 () Bool)

(assert (=> start!686052 e!4248224))

(declare-fun b!7066377 () Bool)

(declare-fun e!4248213 () Bool)

(declare-fun e!4248220 () Bool)

(assert (=> b!7066377 (= e!4248213 e!4248220)))

(declare-fun res!2885479 () Bool)

(assert (=> b!7066377 (=> res!2885479 e!4248220)))

(declare-fun lt!2541342 () (Set Context!13224))

(assert (=> b!7066377 (= res!2885479 (not (matchZipper!3156 lt!2541342 s!7408)))))

(declare-fun lambda!423881 () Int)

(declare-datatypes ((Unit!161932 0))(
  ( (Unit!161933) )
))
(declare-fun lt!2541358 () Unit!161932)

(declare-fun lt!2541345 () List!68375)

(declare-fun lemmaConcatPreservesForall!927 (List!68375 List!68375 Int) Unit!161932)

(assert (=> b!7066377 (= lt!2541358 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066378 () Bool)

(declare-fun e!4248206 () Bool)

(assert (=> b!7066378 (= e!4248220 e!4248206)))

(declare-fun res!2885463 () Bool)

(assert (=> b!7066378 (=> res!2885463 e!4248206)))

(declare-fun lt!2541316 () Int)

(declare-fun lt!2541350 () Context!13224)

(declare-fun contextDepthTotal!552 (Context!13224) Int)

(assert (=> b!7066378 (= res!2885463 (<= lt!2541316 (contextDepthTotal!552 lt!2541350)))))

(declare-fun lt!2541374 () Int)

(assert (=> b!7066378 (<= lt!2541316 lt!2541374)))

(declare-datatypes ((List!68376 0))(
  ( (Nil!68252) (Cons!68252 (h!74700 Context!13224) (t!382157 List!68376)) )
))
(declare-fun lt!2541364 () List!68376)

(declare-fun zipperDepthTotal!581 (List!68376) Int)

(assert (=> b!7066378 (= lt!2541374 (zipperDepthTotal!581 lt!2541364))))

(assert (=> b!7066378 (= lt!2541316 (contextDepthTotal!552 lt!2541318))))

(declare-fun lt!2541310 () Unit!161932)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!119 (List!68376 Context!13224) Unit!161932)

(assert (=> b!7066378 (= lt!2541310 (lemmaTotalDepthZipperLargerThanOfAnyContext!119 lt!2541364 lt!2541318))))

(declare-fun toList!10957 ((Set Context!13224)) List!68376)

(assert (=> b!7066378 (= lt!2541364 (toList!10957 z1!570))))

(declare-fun lt!2541322 () Unit!161932)

(assert (=> b!7066378 (= lt!2541322 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541312 () Unit!161932)

(assert (=> b!7066378 (= lt!2541312 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541321 () Unit!161932)

(assert (=> b!7066378 (= lt!2541321 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541376 () (Set Context!13224))

(declare-fun lambda!423882 () Int)

(declare-fun flatMap!2542 ((Set Context!13224) Int) (Set Context!13224))

(declare-fun derivationStepZipperUp!2200 (Context!13224 C!35502) (Set Context!13224))

(assert (=> b!7066378 (= (flatMap!2542 lt!2541376 lambda!423882) (derivationStepZipperUp!2200 lt!2541350 (h!74698 s!7408)))))

(declare-fun lt!2541363 () Unit!161932)

(declare-fun lemmaFlatMapOnSingletonSet!2051 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> b!7066378 (= lt!2541363 (lemmaFlatMapOnSingletonSet!2051 lt!2541376 lt!2541350 lambda!423882))))

(declare-fun lambda!423880 () Int)

(declare-fun map!15957 ((Set Context!13224) Int) (Set Context!13224))

(declare-fun ++!15729 (List!68375 List!68375) List!68375)

(assert (=> b!7066378 (= (map!15957 lt!2541376 lambda!423880) (set.insert (Context!13225 (++!15729 lt!2541345 (exprs!7112 ct2!306))) (as set.empty (Set Context!13224))))))

(declare-fun lt!2541330 () Unit!161932)

(assert (=> b!7066378 (= lt!2541330 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541373 () Unit!161932)

(declare-fun lemmaMapOnSingletonSet!433 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> b!7066378 (= lt!2541373 (lemmaMapOnSingletonSet!433 lt!2541376 lt!2541350 lambda!423880))))

(assert (=> b!7066378 (= lt!2541376 (set.insert lt!2541350 (as set.empty (Set Context!13224))))))

(declare-fun b!7066379 () Bool)

(declare-fun e!4248205 () Bool)

(declare-fun lt!2541360 () (Set Context!13224))

(assert (=> b!7066379 (= e!4248205 (not (matchZipper!3156 lt!2541360 (t!382155 s!7408))))))

(declare-fun lt!2541349 () Unit!161932)

(assert (=> b!7066379 (= lt!2541349 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066380 () Bool)

(declare-fun e!4248208 () Bool)

(declare-fun e!4248207 () Bool)

(assert (=> b!7066380 (= e!4248208 e!4248207)))

(declare-fun res!2885465 () Bool)

(assert (=> b!7066380 (=> res!2885465 e!4248207)))

(declare-fun lt!2541328 () (Set Context!13224))

(declare-fun lt!2541366 () (Set Context!13224))

(assert (=> b!7066380 (= res!2885465 (not (= lt!2541328 lt!2541366)))))

(declare-fun lt!2541343 () Context!13224)

(assert (=> b!7066380 (= lt!2541328 (set.insert lt!2541343 (as set.empty (Set Context!13224))))))

(declare-fun lt!2541344 () Unit!161932)

(assert (=> b!7066380 (= lt!2541344 (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541318) (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066381 () Bool)

(declare-fun e!4248212 () Bool)

(assert (=> b!7066381 (= e!4248212 (matchZipper!3156 lt!2541360 (t!382155 s!7408)))))

(declare-datatypes ((Option!16949 0))(
  ( (None!16948) (Some!16948 (v!53242 tuple2!68234)) )
))
(declare-fun call!642175 () Option!16949)

(declare-fun bm!642168 () Bool)

(declare-fun lt!2541319 () (Set Context!13224))

(declare-fun lt!2541329 () (Set Context!13224))

(declare-fun c!1317721 () Bool)

(declare-fun lt!2541351 () (Set Context!13224))

(declare-fun findConcatSeparationZippers!465 ((Set Context!13224) (Set Context!13224) List!68374 List!68374 List!68374) Option!16949)

(assert (=> bm!642168 (= call!642175 (findConcatSeparationZippers!465 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 Nil!68250 s!7408 s!7408))))

(declare-fun e!4248215 () Bool)

(assert (=> b!7066382 (= e!4248215 e!4248208)))

(declare-fun res!2885459 () Bool)

(assert (=> b!7066382 (=> res!2885459 e!4248208)))

(declare-fun lt!2541340 () Context!13224)

(assert (=> b!7066382 (= res!2885459 (or (not (= lt!2541343 lt!2541340)) (not (set.member lt!2541318 z1!570))))))

(assert (=> b!7066382 (= lt!2541343 (Context!13225 (++!15729 (exprs!7112 lt!2541318) (exprs!7112 ct2!306))))))

(declare-fun lt!2541338 () Unit!161932)

(assert (=> b!7066382 (= lt!2541338 (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541318) (exprs!7112 ct2!306) lambda!423881))))

(declare-fun mapPost2!445 ((Set Context!13224) Int Context!13224) Context!13224)

(assert (=> b!7066382 (= lt!2541318 (mapPost2!445 z1!570 lambda!423880 lt!2541340))))

(declare-fun setIsEmpty!50112 () Bool)

(assert (=> setIsEmpty!50112 setRes!50112))

(declare-fun b!7066383 () Bool)

(declare-fun e!4248225 () Bool)

(assert (=> b!7066383 (= e!4248225 e!4248213)))

(declare-fun res!2885462 () Bool)

(assert (=> b!7066383 (=> res!2885462 e!4248213)))

(declare-fun derivationStepZipper!3066 ((Set Context!13224) C!35502) (Set Context!13224))

(assert (=> b!7066383 (= res!2885462 (not (= (derivationStepZipper!3066 lt!2541342 (h!74698 s!7408)) lt!2541360)))))

(declare-fun lt!2541332 () Unit!161932)

(assert (=> b!7066383 (= lt!2541332 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541362 () Unit!161932)

(assert (=> b!7066383 (= lt!2541362 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541336 () Context!13224)

(assert (=> b!7066383 (= (flatMap!2542 lt!2541342 lambda!423882) (derivationStepZipperUp!2200 lt!2541336 (h!74698 s!7408)))))

(declare-fun lt!2541354 () Unit!161932)

(assert (=> b!7066383 (= lt!2541354 (lemmaFlatMapOnSingletonSet!2051 lt!2541342 lt!2541336 lambda!423882))))

(assert (=> b!7066383 (= lt!2541342 (set.insert lt!2541336 (as set.empty (Set Context!13224))))))

(declare-fun lt!2541313 () Unit!161932)

(assert (=> b!7066383 (= lt!2541313 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541356 () Unit!161932)

(assert (=> b!7066383 (= lt!2541356 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066384 () Bool)

(declare-fun tp_is_empty!44457 () Bool)

(declare-fun tp!1941585 () Bool)

(assert (=> b!7066384 (= e!4248224 (and tp_is_empty!44457 tp!1941585))))

(assert (=> b!7066385 (= e!4248207 e!4248214)))

(declare-fun res!2885461 () Bool)

(assert (=> b!7066385 (=> res!2885461 e!4248214)))

(declare-fun lt!2541367 () (Set Context!13224))

(assert (=> b!7066385 (= res!2885461 (not (= (derivationStepZipper!3066 lt!2541328 (h!74698 s!7408)) lt!2541367)))))

(assert (=> b!7066385 (= (flatMap!2542 lt!2541328 lambda!423882) (derivationStepZipperUp!2200 lt!2541343 (h!74698 s!7408)))))

(declare-fun lt!2541335 () Unit!161932)

(assert (=> b!7066385 (= lt!2541335 (lemmaFlatMapOnSingletonSet!2051 lt!2541328 lt!2541343 lambda!423882))))

(assert (=> b!7066385 (= lt!2541367 (derivationStepZipperUp!2200 lt!2541343 (h!74698 s!7408)))))

(declare-fun lt!2541327 () Unit!161932)

(assert (=> b!7066385 (= lt!2541327 (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541318) (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066386 () Bool)

(declare-fun e!4248222 () Bool)

(declare-fun e!4248209 () Bool)

(assert (=> b!7066386 (= e!4248222 e!4248209)))

(declare-fun res!2885482 () Bool)

(assert (=> b!7066386 (=> res!2885482 e!4248209)))

(assert (=> b!7066386 (= res!2885482 e!4248205)))

(declare-fun res!2885464 () Bool)

(assert (=> b!7066386 (=> (not res!2885464) (not e!4248205))))

(declare-fun lt!2541348 () Bool)

(declare-fun lt!2541372 () Bool)

(assert (=> b!7066386 (= res!2885464 (not (= lt!2541348 lt!2541372)))))

(assert (=> b!7066386 (= lt!2541348 (matchZipper!3156 lt!2541367 (t!382155 s!7408)))))

(declare-fun lt!2541370 () Unit!161932)

(assert (=> b!7066386 (= lt!2541370 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541341 () (Set Context!13224))

(assert (=> b!7066386 (= (matchZipper!3156 lt!2541341 (t!382155 s!7408)) e!4248212)))

(declare-fun res!2885467 () Bool)

(assert (=> b!7066386 (=> res!2885467 e!4248212)))

(assert (=> b!7066386 (= res!2885467 lt!2541372)))

(declare-fun lt!2541326 () (Set Context!13224))

(assert (=> b!7066386 (= lt!2541372 (matchZipper!3156 lt!2541326 (t!382155 s!7408)))))

(declare-fun lt!2541365 () Unit!161932)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1629 ((Set Context!13224) (Set Context!13224) List!68374) Unit!161932)

(assert (=> b!7066386 (= lt!2541365 (lemmaZipperConcatMatchesSameAsBothZippers!1629 lt!2541326 lt!2541360 (t!382155 s!7408)))))

(declare-fun lt!2541337 () Unit!161932)

(assert (=> b!7066386 (= lt!2541337 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541314 () Unit!161932)

(assert (=> b!7066386 (= lt!2541314 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066387 () Bool)

(declare-fun res!2885473 () Bool)

(declare-fun e!4248217 () Bool)

(assert (=> b!7066387 (=> res!2885473 e!4248217)))

(declare-fun isPrefix!5849 (List!68374 List!68374) Bool)

(assert (=> b!7066387 (= res!2885473 (not (isPrefix!5849 Nil!68250 (_1!37420 lt!2541325))))))

(declare-fun b!7066388 () Bool)

(declare-fun e!4248210 () Bool)

(assert (=> b!7066388 (= e!4248210 e!4248222)))

(declare-fun res!2885468 () Bool)

(assert (=> b!7066388 (=> res!2885468 e!4248222)))

(assert (=> b!7066388 (= res!2885468 (not (= lt!2541367 lt!2541341)))))

(assert (=> b!7066388 (= lt!2541341 (set.union lt!2541326 lt!2541360))))

(assert (=> b!7066388 (= lt!2541360 (derivationStepZipperUp!2200 lt!2541336 (h!74698 s!7408)))))

(declare-fun derivationStepZipperDown!2250 (Regex!17616 Context!13224 C!35502) (Set Context!13224))

(assert (=> b!7066388 (= lt!2541326 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541318)) lt!2541336 (h!74698 s!7408)))))

(assert (=> b!7066388 (= lt!2541336 (Context!13225 (++!15729 lt!2541345 (exprs!7112 ct2!306))))))

(declare-fun lt!2541315 () Unit!161932)

(assert (=> b!7066388 (= lt!2541315 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun lt!2541317 () Unit!161932)

(assert (=> b!7066388 (= lt!2541317 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun e!4248211 () Unit!161932)

(declare-fun Unit!161934 () Unit!161932)

(assert (=> b!7066389 (= e!4248211 Unit!161934)))

(declare-fun lt!2541352 () Context!13224)

(declare-fun getWitness!1702 ((Set Context!13224) Int) Context!13224)

(assert (=> b!7066389 (= lt!2541352 (getWitness!1702 lt!2541376 lambda!423883))))

(declare-fun lt!2541347 () Unit!161932)

(declare-fun lemmaContainsThenExists!148 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> b!7066389 (= lt!2541347 (lemmaContainsThenExists!148 lt!2541376 lt!2541350 lambda!423883))))

(declare-fun exists!3642 ((Set Context!13224) Int) Bool)

(assert (=> b!7066389 (exists!3642 lt!2541376 lambda!423883)))

(assert (=> b!7066389 (= lt!2541351 (set.insert lt!2541318 (as set.empty (Set Context!13224))))))

(declare-fun lt!2541369 () Unit!161932)

(assert (=> b!7066389 (= lt!2541369 (lemmaContainsThenExists!148 lt!2541351 lt!2541318 lambda!423883))))

(assert (=> b!7066389 (exists!3642 lt!2541351 lambda!423883)))

(declare-fun lt!2541333 () Unit!161932)

(declare-fun call!642173 () Unit!161932)

(assert (=> b!7066389 (= lt!2541333 call!642173)))

(declare-fun call!642174 () Bool)

(assert (=> b!7066389 call!642174))

(declare-fun b!7066390 () Bool)

(declare-fun e!4248219 () Bool)

(declare-fun tp!1941586 () Bool)

(assert (=> b!7066390 (= e!4248219 tp!1941586)))

(declare-fun setElem!50112 () Context!13224)

(declare-fun setNonEmpty!50112 () Bool)

(declare-fun tp!1941583 () Bool)

(assert (=> setNonEmpty!50112 (= setRes!50112 (and tp!1941583 (inv!86900 setElem!50112) e!4248219))))

(declare-fun setRest!50112 () (Set Context!13224))

(assert (=> setNonEmpty!50112 (= z1!570 (set.union (set.insert setElem!50112 (as set.empty (Set Context!13224))) setRest!50112))))

(assert (=> b!7066391 (= e!4248218 (not e!4248215))))

(declare-fun res!2885475 () Bool)

(assert (=> b!7066391 (=> res!2885475 e!4248215)))

(assert (=> b!7066391 (= res!2885475 (not (matchZipper!3156 lt!2541366 s!7408)))))

(assert (=> b!7066391 (= lt!2541366 (set.insert lt!2541340 (as set.empty (Set Context!13224))))))

(assert (=> b!7066391 (= lt!2541340 (getWitness!1702 lt!2541371 lambda!423879))))

(declare-fun lt!2541359 () List!68376)

(declare-fun exists!3643 (List!68376 Int) Bool)

(assert (=> b!7066391 (exists!3643 lt!2541359 lambda!423879)))

(declare-fun lt!2541357 () Unit!161932)

(declare-fun lemmaZipperMatchesExistsMatchingContext!537 (List!68376 List!68374) Unit!161932)

(assert (=> b!7066391 (= lt!2541357 (lemmaZipperMatchesExistsMatchingContext!537 lt!2541359 s!7408))))

(assert (=> b!7066391 (= lt!2541359 (toList!10957 lt!2541371))))

(declare-fun b!7066392 () Bool)

(declare-fun e!4248223 () Bool)

(declare-fun lt!2541375 () (Set Context!13224))

(declare-fun lt!2541346 () List!68374)

(assert (=> b!7066392 (= e!4248223 (matchZipper!3156 lt!2541375 lt!2541346))))

(declare-fun b!7066393 () Bool)

(declare-fun Unit!161935 () Unit!161932)

(assert (=> b!7066393 (= e!4248211 Unit!161935)))

(assert (=> b!7066393 (= lt!2541319 (set.insert lt!2541318 (as set.empty (Set Context!13224))))))

(declare-fun lt!2541320 () Unit!161932)

(assert (=> b!7066393 (= lt!2541320 (lemmaFlatMapOnSingletonSet!2051 lt!2541319 lt!2541318 lambda!423882))))

(assert (=> b!7066393 (= (flatMap!2542 lt!2541319 lambda!423882) (derivationStepZipperUp!2200 lt!2541318 (h!74698 s!7408)))))

(declare-fun lt!2541355 () (Set Context!13224))

(assert (=> b!7066393 (= lt!2541355 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541318)) lt!2541350 (h!74698 s!7408)))))

(assert (=> b!7066393 (= lt!2541375 (derivationStepZipperUp!2200 lt!2541350 (h!74698 s!7408)))))

(declare-fun tail!13780 (List!68374) List!68374)

(assert (=> b!7066393 (= lt!2541346 (tail!13780 (_1!37420 lt!2541325)))))

(declare-fun lt!2541323 () Unit!161932)

(assert (=> b!7066393 (= lt!2541323 (lemmaZipperConcatMatchesSameAsBothZippers!1629 lt!2541355 lt!2541375 lt!2541346))))

(declare-fun res!2885480 () Bool)

(assert (=> b!7066393 (= res!2885480 (matchZipper!3156 lt!2541355 lt!2541346))))

(assert (=> b!7066393 (=> res!2885480 e!4248223)))

(assert (=> b!7066393 (= (matchZipper!3156 (set.union lt!2541355 lt!2541375) lt!2541346) e!4248223)))

(declare-fun lt!2541353 () Unit!161932)

(assert (=> b!7066393 (= lt!2541353 (lemmaFlatMapOnSingletonSet!2051 lt!2541376 lt!2541350 lambda!423882))))

(assert (=> b!7066393 (= (flatMap!2542 lt!2541376 lambda!423882) (derivationStepZipperUp!2200 lt!2541350 (h!74698 s!7408)))))

(declare-fun lt!2541331 () Unit!161932)

(assert (=> b!7066393 (= lt!2541331 call!642173)))

(assert (=> b!7066393 call!642174))

(declare-fun b!7066394 () Bool)

(assert (=> b!7066394 (= e!4248209 e!4248225)))

(declare-fun res!2885466 () Bool)

(assert (=> b!7066394 (=> res!2885466 e!4248225)))

(assert (=> b!7066394 (= res!2885466 (not (matchZipper!3156 lt!2541360 (t!382155 s!7408))))))

(declare-fun lt!2541339 () Unit!161932)

(assert (=> b!7066394 (= lt!2541339 (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(declare-fun b!7066395 () Bool)

(declare-fun ++!15730 (List!68374 List!68374) List!68374)

(assert (=> b!7066395 (= e!4248217 (= (++!15730 Nil!68250 s!7408) s!7408))))

(declare-fun b!7066396 () Bool)

(declare-fun tp!1941584 () Bool)

(assert (=> b!7066396 (= e!4248216 tp!1941584)))

(declare-fun b!7066397 () Bool)

(declare-fun res!2885484 () Bool)

(assert (=> b!7066397 (=> (not res!2885484) (not e!4248218))))

(assert (=> b!7066397 (= res!2885484 (is-Cons!68250 s!7408))))

(declare-fun b!7066398 () Bool)

(declare-fun e!4248221 () Bool)

(assert (=> b!7066398 (= e!4248206 e!4248221)))

(declare-fun res!2885477 () Bool)

(assert (=> b!7066398 (=> res!2885477 e!4248221)))

(assert (=> b!7066398 (= res!2885477 (not (matchZipper!3156 lt!2541376 (_1!37420 lt!2541325))))))

(declare-fun lt!2541334 () Option!16949)

(declare-fun get!23908 (Option!16949) tuple2!68234)

(assert (=> b!7066398 (= lt!2541325 (get!23908 lt!2541334))))

(declare-fun isDefined!13650 (Option!16949) Bool)

(assert (=> b!7066398 (isDefined!13650 lt!2541334)))

(assert (=> b!7066398 (= lt!2541334 (findConcatSeparationZippers!465 lt!2541376 lt!2541329 Nil!68250 s!7408 s!7408))))

(assert (=> b!7066398 (= lt!2541329 (set.insert ct2!306 (as set.empty (Set Context!13224))))))

(declare-fun lt!2541368 () Unit!161932)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!453 ((Set Context!13224) Context!13224 List!68374) Unit!161932)

(assert (=> b!7066398 (= lt!2541368 (lemmaConcatZipperMatchesStringThenFindConcatDefined!453 lt!2541376 ct2!306 s!7408))))

(declare-fun b!7066399 () Bool)

(declare-fun res!2885474 () Bool)

(assert (=> b!7066399 (=> res!2885474 e!4248209)))

(assert (=> b!7066399 (= res!2885474 (not lt!2541348))))

(declare-fun b!7066400 () Bool)

(declare-fun res!2885481 () Bool)

(assert (=> b!7066400 (=> res!2885481 e!4248221)))

(assert (=> b!7066400 (= res!2885481 (not (matchZipper!3156 lt!2541329 (_2!37420 lt!2541325))))))

(declare-fun b!7066401 () Bool)

(declare-fun res!2885478 () Bool)

(assert (=> b!7066401 (=> res!2885478 e!4248215)))

(assert (=> b!7066401 (= res!2885478 (not (set.member lt!2541340 lt!2541371)))))

(declare-fun b!7066402 () Bool)

(declare-fun res!2885460 () Bool)

(assert (=> b!7066402 (=> res!2885460 e!4248214)))

(assert (=> b!7066402 (= res!2885460 (not (is-Cons!68251 (exprs!7112 lt!2541318))))))

(declare-fun bm!642169 () Bool)

(assert (=> bm!642169 (= call!642174 (isDefined!13650 call!642175))))

(declare-fun b!7066403 () Bool)

(declare-fun res!2885469 () Bool)

(assert (=> b!7066403 (=> res!2885469 e!4248221)))

(assert (=> b!7066403 (= res!2885469 (not (= (++!15730 (_1!37420 lt!2541325) (_2!37420 lt!2541325)) s!7408)))))

(declare-fun b!7066404 () Bool)

(declare-fun res!2885471 () Bool)

(assert (=> b!7066404 (=> res!2885471 e!4248206)))

(assert (=> b!7066404 (= res!2885471 (>= (zipperDepthTotal!581 (Cons!68252 lt!2541350 Nil!68252)) lt!2541374))))

(declare-fun b!7066405 () Bool)

(assert (=> b!7066405 (= e!4248214 e!4248210)))

(declare-fun res!2885483 () Bool)

(assert (=> b!7066405 (=> res!2885483 e!4248210)))

(declare-fun nullable!7299 (Regex!17616) Bool)

(assert (=> b!7066405 (= res!2885483 (not (nullable!7299 (h!74699 (exprs!7112 lt!2541318)))))))

(assert (=> b!7066405 (= lt!2541350 (Context!13225 lt!2541345))))

(declare-fun tail!13781 (List!68375) List!68375)

(assert (=> b!7066405 (= lt!2541345 (tail!13781 (exprs!7112 lt!2541318)))))

(assert (=> b!7066406 (= e!4248221 e!4248217)))

(declare-fun res!2885472 () Bool)

(assert (=> b!7066406 (=> res!2885472 e!4248217)))

(assert (=> b!7066406 (= res!2885472 (not (matchZipper!3156 z1!570 (_1!37420 lt!2541325))))))

(declare-fun content!13749 (List!68376) (Set Context!13224))

(assert (=> b!7066406 (matchZipper!3156 (content!13749 lt!2541364) (_1!37420 lt!2541325))))

(declare-fun lt!2541324 () Unit!161932)

(declare-fun lemmaExistsMatchingContextThenMatchingString!45 (List!68376 List!68374) Unit!161932)

(assert (=> b!7066406 (= lt!2541324 (lemmaExistsMatchingContextThenMatchingString!45 lt!2541364 (_1!37420 lt!2541325)))))

(assert (=> b!7066406 (exists!3642 z1!570 lambda!423884)))

(declare-fun lt!2541361 () Unit!161932)

(assert (=> b!7066406 (= lt!2541361 (lemmaContainsThenExists!148 z1!570 lt!2541318 lambda!423884))))

(declare-fun lt!2541311 () Unit!161932)

(assert (=> b!7066406 (= lt!2541311 e!4248211)))

(declare-fun isEmpty!39830 (List!68374) Bool)

(assert (=> b!7066406 (= c!1317721 (isEmpty!39830 (_1!37420 lt!2541325)))))

(declare-fun bm!642170 () Bool)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!65 ((Set Context!13224) (Set Context!13224) List!68374 List!68374 List!68374 List!68374 List!68374) Unit!161932)

(assert (=> bm!642170 (= call!642173 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!65 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 (_1!37420 lt!2541325) (_2!37420 lt!2541325) s!7408 Nil!68250 s!7408))))

(assert (= (and start!686052 res!2885470) b!7066397))

(assert (= (and b!7066397 res!2885484) b!7066391))

(assert (= (and b!7066391 (not res!2885475)) b!7066401))

(assert (= (and b!7066401 (not res!2885478)) b!7066382))

(assert (= (and b!7066382 (not res!2885459)) b!7066380))

(assert (= (and b!7066380 (not res!2885465)) b!7066385))

(assert (= (and b!7066385 (not res!2885461)) b!7066402))

(assert (= (and b!7066402 (not res!2885460)) b!7066376))

(assert (= (and b!7066376 (not res!2885476)) b!7066405))

(assert (= (and b!7066405 (not res!2885483)) b!7066388))

(assert (= (and b!7066388 (not res!2885468)) b!7066386))

(assert (= (and b!7066386 (not res!2885467)) b!7066381))

(assert (= (and b!7066386 res!2885464) b!7066379))

(assert (= (and b!7066386 (not res!2885482)) b!7066399))

(assert (= (and b!7066399 (not res!2885474)) b!7066394))

(assert (= (and b!7066394 (not res!2885466)) b!7066383))

(assert (= (and b!7066383 (not res!2885462)) b!7066377))

(assert (= (and b!7066377 (not res!2885479)) b!7066378))

(assert (= (and b!7066378 (not res!2885463)) b!7066404))

(assert (= (and b!7066404 (not res!2885471)) b!7066398))

(assert (= (and b!7066398 (not res!2885477)) b!7066400))

(assert (= (and b!7066400 (not res!2885481)) b!7066403))

(assert (= (and b!7066403 (not res!2885469)) b!7066406))

(assert (= (and b!7066406 c!1317721) b!7066389))

(assert (= (and b!7066406 (not c!1317721)) b!7066393))

(assert (= (and b!7066393 (not res!2885480)) b!7066392))

(assert (= (or b!7066389 b!7066393) bm!642170))

(assert (= (or b!7066389 b!7066393) bm!642168))

(assert (= (or b!7066389 b!7066393) bm!642169))

(assert (= (and b!7066406 (not res!2885472)) b!7066387))

(assert (= (and b!7066387 (not res!2885473)) b!7066395))

(assert (= (and start!686052 condSetEmpty!50112) setIsEmpty!50112))

(assert (= (and start!686052 (not condSetEmpty!50112)) setNonEmpty!50112))

(assert (= setNonEmpty!50112 b!7066390))

(assert (= start!686052 b!7066396))

(assert (= (and start!686052 (is-Cons!68250 s!7408)) b!7066384))

(declare-fun m!7789996 () Bool)

(assert (=> b!7066376 m!7789996))

(declare-fun m!7789998 () Bool)

(assert (=> b!7066386 m!7789998))

(declare-fun m!7790000 () Bool)

(assert (=> b!7066386 m!7790000))

(assert (=> b!7066386 m!7790000))

(assert (=> b!7066386 m!7790000))

(declare-fun m!7790002 () Bool)

(assert (=> b!7066386 m!7790002))

(declare-fun m!7790004 () Bool)

(assert (=> b!7066386 m!7790004))

(declare-fun m!7790006 () Bool)

(assert (=> b!7066386 m!7790006))

(declare-fun m!7790008 () Bool)

(assert (=> b!7066387 m!7790008))

(declare-fun m!7790010 () Bool)

(assert (=> b!7066382 m!7790010))

(declare-fun m!7790012 () Bool)

(assert (=> b!7066382 m!7790012))

(declare-fun m!7790014 () Bool)

(assert (=> b!7066382 m!7790014))

(declare-fun m!7790016 () Bool)

(assert (=> b!7066382 m!7790016))

(declare-fun m!7790018 () Bool)

(assert (=> b!7066406 m!7790018))

(declare-fun m!7790020 () Bool)

(assert (=> b!7066406 m!7790020))

(declare-fun m!7790022 () Bool)

(assert (=> b!7066406 m!7790022))

(declare-fun m!7790024 () Bool)

(assert (=> b!7066406 m!7790024))

(declare-fun m!7790026 () Bool)

(assert (=> b!7066406 m!7790026))

(declare-fun m!7790028 () Bool)

(assert (=> b!7066406 m!7790028))

(assert (=> b!7066406 m!7790020))

(declare-fun m!7790030 () Bool)

(assert (=> b!7066406 m!7790030))

(declare-fun m!7790032 () Bool)

(assert (=> b!7066398 m!7790032))

(declare-fun m!7790034 () Bool)

(assert (=> b!7066398 m!7790034))

(declare-fun m!7790036 () Bool)

(assert (=> b!7066398 m!7790036))

(declare-fun m!7790038 () Bool)

(assert (=> b!7066398 m!7790038))

(declare-fun m!7790040 () Bool)

(assert (=> b!7066398 m!7790040))

(declare-fun m!7790042 () Bool)

(assert (=> b!7066398 m!7790042))

(declare-fun m!7790044 () Bool)

(assert (=> b!7066391 m!7790044))

(declare-fun m!7790046 () Bool)

(assert (=> b!7066391 m!7790046))

(declare-fun m!7790048 () Bool)

(assert (=> b!7066391 m!7790048))

(declare-fun m!7790050 () Bool)

(assert (=> b!7066391 m!7790050))

(declare-fun m!7790052 () Bool)

(assert (=> b!7066391 m!7790052))

(declare-fun m!7790054 () Bool)

(assert (=> b!7066391 m!7790054))

(declare-fun m!7790056 () Bool)

(assert (=> b!7066403 m!7790056))

(declare-fun m!7790058 () Bool)

(assert (=> start!686052 m!7790058))

(declare-fun m!7790060 () Bool)

(assert (=> start!686052 m!7790060))

(declare-fun m!7790062 () Bool)

(assert (=> start!686052 m!7790062))

(declare-fun m!7790064 () Bool)

(assert (=> b!7066394 m!7790064))

(assert (=> b!7066394 m!7790000))

(declare-fun m!7790066 () Bool)

(assert (=> b!7066405 m!7790066))

(declare-fun m!7790068 () Bool)

(assert (=> b!7066405 m!7790068))

(declare-fun m!7790070 () Bool)

(assert (=> bm!642168 m!7790070))

(declare-fun m!7790072 () Bool)

(assert (=> b!7066378 m!7790072))

(declare-fun m!7790074 () Bool)

(assert (=> b!7066378 m!7790074))

(declare-fun m!7790076 () Bool)

(assert (=> b!7066378 m!7790076))

(declare-fun m!7790078 () Bool)

(assert (=> b!7066378 m!7790078))

(declare-fun m!7790080 () Bool)

(assert (=> b!7066378 m!7790080))

(declare-fun m!7790082 () Bool)

(assert (=> b!7066378 m!7790082))

(assert (=> b!7066378 m!7790000))

(declare-fun m!7790084 () Bool)

(assert (=> b!7066378 m!7790084))

(declare-fun m!7790086 () Bool)

(assert (=> b!7066378 m!7790086))

(declare-fun m!7790088 () Bool)

(assert (=> b!7066378 m!7790088))

(declare-fun m!7790090 () Bool)

(assert (=> b!7066378 m!7790090))

(declare-fun m!7790092 () Bool)

(assert (=> b!7066378 m!7790092))

(declare-fun m!7790094 () Bool)

(assert (=> b!7066378 m!7790094))

(assert (=> b!7066378 m!7790000))

(assert (=> b!7066378 m!7790000))

(declare-fun m!7790096 () Bool)

(assert (=> b!7066378 m!7790096))

(assert (=> b!7066378 m!7790000))

(declare-fun m!7790098 () Bool)

(assert (=> b!7066389 m!7790098))

(declare-fun m!7790100 () Bool)

(assert (=> b!7066389 m!7790100))

(declare-fun m!7790102 () Bool)

(assert (=> b!7066389 m!7790102))

(declare-fun m!7790104 () Bool)

(assert (=> b!7066389 m!7790104))

(declare-fun m!7790106 () Bool)

(assert (=> b!7066389 m!7790106))

(declare-fun m!7790108 () Bool)

(assert (=> b!7066389 m!7790108))

(declare-fun m!7790110 () Bool)

(assert (=> b!7066385 m!7790110))

(declare-fun m!7790112 () Bool)

(assert (=> b!7066385 m!7790112))

(declare-fun m!7790114 () Bool)

(assert (=> b!7066385 m!7790114))

(assert (=> b!7066385 m!7790014))

(declare-fun m!7790116 () Bool)

(assert (=> b!7066385 m!7790116))

(declare-fun m!7790118 () Bool)

(assert (=> bm!642170 m!7790118))

(assert (=> b!7066379 m!7790064))

(assert (=> b!7066379 m!7790000))

(declare-fun m!7790120 () Bool)

(assert (=> b!7066377 m!7790120))

(assert (=> b!7066377 m!7790000))

(declare-fun m!7790122 () Bool)

(assert (=> b!7066401 m!7790122))

(declare-fun m!7790124 () Bool)

(assert (=> setNonEmpty!50112 m!7790124))

(assert (=> b!7066381 m!7790064))

(declare-fun m!7790126 () Bool)

(assert (=> b!7066393 m!7790126))

(assert (=> b!7066393 m!7790096))

(declare-fun m!7790128 () Bool)

(assert (=> b!7066393 m!7790128))

(declare-fun m!7790130 () Bool)

(assert (=> b!7066393 m!7790130))

(declare-fun m!7790132 () Bool)

(assert (=> b!7066393 m!7790132))

(declare-fun m!7790134 () Bool)

(assert (=> b!7066393 m!7790134))

(assert (=> b!7066393 m!7790090))

(declare-fun m!7790136 () Bool)

(assert (=> b!7066393 m!7790136))

(declare-fun m!7790138 () Bool)

(assert (=> b!7066393 m!7790138))

(assert (=> b!7066393 m!7790088))

(assert (=> b!7066393 m!7790106))

(declare-fun m!7790140 () Bool)

(assert (=> b!7066393 m!7790140))

(declare-fun m!7790142 () Bool)

(assert (=> b!7066395 m!7790142))

(declare-fun m!7790144 () Bool)

(assert (=> bm!642169 m!7790144))

(declare-fun m!7790146 () Bool)

(assert (=> b!7066400 m!7790146))

(declare-fun m!7790148 () Bool)

(assert (=> b!7066404 m!7790148))

(declare-fun m!7790150 () Bool)

(assert (=> b!7066383 m!7790150))

(assert (=> b!7066383 m!7790000))

(assert (=> b!7066383 m!7790000))

(declare-fun m!7790152 () Bool)

(assert (=> b!7066383 m!7790152))

(declare-fun m!7790154 () Bool)

(assert (=> b!7066383 m!7790154))

(declare-fun m!7790156 () Bool)

(assert (=> b!7066383 m!7790156))

(assert (=> b!7066383 m!7790000))

(declare-fun m!7790158 () Bool)

(assert (=> b!7066383 m!7790158))

(assert (=> b!7066383 m!7790000))

(assert (=> b!7066388 m!7790000))

(assert (=> b!7066388 m!7790080))

(declare-fun m!7790160 () Bool)

(assert (=> b!7066388 m!7790160))

(assert (=> b!7066388 m!7790158))

(assert (=> b!7066388 m!7790000))

(declare-fun m!7790162 () Bool)

(assert (=> b!7066380 m!7790162))

(assert (=> b!7066380 m!7790014))

(declare-fun m!7790164 () Bool)

(assert (=> b!7066392 m!7790164))

(push 1)

(assert (not b!7066380))

(assert (not bm!642169))

(assert (not b!7066386))

(assert (not b!7066395))

(assert (not b!7066406))

(assert (not b!7066391))

(assert (not b!7066381))

(assert (not b!7066377))

(assert (not b!7066376))

(assert (not b!7066400))

(assert (not b!7066394))

(assert (not b!7066385))

(assert (not b!7066390))

(assert (not setNonEmpty!50112))

(assert (not b!7066398))

(assert (not b!7066389))

(assert (not b!7066405))

(assert (not b!7066404))

(assert (not b!7066388))

(assert (not b!7066387))

(assert (not b!7066384))

(assert (not b!7066382))

(assert (not b!7066403))

(assert (not b!7066379))

(assert (not start!686052))

(assert (not b!7066392))

(assert (not b!7066396))

(assert (not b!7066378))

(assert (not b!7066383))

(assert (not bm!642168))

(assert (not b!7066393))

(assert tp_is_empty!44457)

(assert (not bm!642170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7066534 () Bool)

(declare-fun e!4248300 () Bool)

(declare-fun lt!2541589 () Option!16949)

(assert (=> b!7066534 (= e!4248300 (not (isDefined!13650 lt!2541589)))))

(declare-fun b!7066535 () Bool)

(declare-fun res!2885574 () Bool)

(declare-fun e!4248301 () Bool)

(assert (=> b!7066535 (=> (not res!2885574) (not e!4248301))))

(assert (=> b!7066535 (= res!2885574 (matchZipper!3156 (ite c!1317721 lt!2541351 lt!2541319) (_1!37420 (get!23908 lt!2541589))))))

(declare-fun b!7066536 () Bool)

(declare-fun res!2885578 () Bool)

(assert (=> b!7066536 (=> (not res!2885578) (not e!4248301))))

(assert (=> b!7066536 (= res!2885578 (matchZipper!3156 lt!2541329 (_2!37420 (get!23908 lt!2541589))))))

(declare-fun b!7066537 () Bool)

(declare-fun e!4248302 () Bool)

(assert (=> b!7066537 (= e!4248302 (matchZipper!3156 lt!2541329 s!7408))))

(declare-fun b!7066538 () Bool)

(declare-fun e!4248303 () Option!16949)

(declare-fun e!4248299 () Option!16949)

(assert (=> b!7066538 (= e!4248303 e!4248299)))

(declare-fun c!1317758 () Bool)

(assert (=> b!7066538 (= c!1317758 (is-Nil!68250 s!7408))))

(declare-fun b!7066540 () Bool)

(assert (=> b!7066540 (= e!4248301 (= (++!15730 (_1!37420 (get!23908 lt!2541589)) (_2!37420 (get!23908 lt!2541589))) s!7408))))

(declare-fun b!7066541 () Bool)

(assert (=> b!7066541 (= e!4248299 None!16948)))

(declare-fun b!7066542 () Bool)

(declare-fun lt!2541588 () Unit!161932)

(declare-fun lt!2541590 () Unit!161932)

(assert (=> b!7066542 (= lt!2541588 lt!2541590)))

(assert (=> b!7066542 (= (++!15730 (++!15730 Nil!68250 (Cons!68250 (h!74698 s!7408) Nil!68250)) (t!382155 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2969 (List!68374 C!35502 List!68374 List!68374) Unit!161932)

(assert (=> b!7066542 (= lt!2541590 (lemmaMoveElementToOtherListKeepsConcatEq!2969 Nil!68250 (h!74698 s!7408) (t!382155 s!7408) s!7408))))

(assert (=> b!7066542 (= e!4248299 (findConcatSeparationZippers!465 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 (++!15730 Nil!68250 (Cons!68250 (h!74698 s!7408) Nil!68250)) (t!382155 s!7408) s!7408))))

(declare-fun b!7066539 () Bool)

(assert (=> b!7066539 (= e!4248303 (Some!16948 (tuple2!68235 Nil!68250 s!7408)))))

(declare-fun d!2209654 () Bool)

(assert (=> d!2209654 e!4248300))

(declare-fun res!2885576 () Bool)

(assert (=> d!2209654 (=> res!2885576 e!4248300)))

(assert (=> d!2209654 (= res!2885576 e!4248301)))

(declare-fun res!2885575 () Bool)

(assert (=> d!2209654 (=> (not res!2885575) (not e!4248301))))

(assert (=> d!2209654 (= res!2885575 (isDefined!13650 lt!2541589))))

(assert (=> d!2209654 (= lt!2541589 e!4248303)))

(declare-fun c!1317757 () Bool)

(assert (=> d!2209654 (= c!1317757 e!4248302)))

(declare-fun res!2885577 () Bool)

(assert (=> d!2209654 (=> (not res!2885577) (not e!4248302))))

(assert (=> d!2209654 (= res!2885577 (matchZipper!3156 (ite c!1317721 lt!2541351 lt!2541319) Nil!68250))))

(assert (=> d!2209654 (= (++!15730 Nil!68250 s!7408) s!7408)))

(assert (=> d!2209654 (= (findConcatSeparationZippers!465 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 Nil!68250 s!7408 s!7408) lt!2541589)))

(assert (= (and d!2209654 res!2885577) b!7066537))

(assert (= (and d!2209654 c!1317757) b!7066539))

(assert (= (and d!2209654 (not c!1317757)) b!7066538))

(assert (= (and b!7066538 c!1317758) b!7066541))

(assert (= (and b!7066538 (not c!1317758)) b!7066542))

(assert (= (and d!2209654 res!2885575) b!7066535))

(assert (= (and b!7066535 res!2885574) b!7066536))

(assert (= (and b!7066536 res!2885578) b!7066540))

(assert (= (and d!2209654 (not res!2885576)) b!7066534))

(declare-fun m!7790336 () Bool)

(assert (=> b!7066537 m!7790336))

(declare-fun m!7790338 () Bool)

(assert (=> b!7066540 m!7790338))

(declare-fun m!7790340 () Bool)

(assert (=> b!7066540 m!7790340))

(assert (=> b!7066535 m!7790338))

(declare-fun m!7790342 () Bool)

(assert (=> b!7066535 m!7790342))

(declare-fun m!7790344 () Bool)

(assert (=> b!7066534 m!7790344))

(assert (=> b!7066536 m!7790338))

(declare-fun m!7790346 () Bool)

(assert (=> b!7066536 m!7790346))

(assert (=> d!2209654 m!7790344))

(declare-fun m!7790348 () Bool)

(assert (=> d!2209654 m!7790348))

(assert (=> d!2209654 m!7790142))

(declare-fun m!7790350 () Bool)

(assert (=> b!7066542 m!7790350))

(assert (=> b!7066542 m!7790350))

(declare-fun m!7790352 () Bool)

(assert (=> b!7066542 m!7790352))

(declare-fun m!7790354 () Bool)

(assert (=> b!7066542 m!7790354))

(assert (=> b!7066542 m!7790350))

(declare-fun m!7790356 () Bool)

(assert (=> b!7066542 m!7790356))

(assert (=> bm!642168 d!2209654))

(declare-fun d!2209656 () Bool)

(declare-fun c!1317761 () Bool)

(assert (=> d!2209656 (= c!1317761 (isEmpty!39830 (_2!37420 lt!2541325)))))

(declare-fun e!4248306 () Bool)

(assert (=> d!2209656 (= (matchZipper!3156 lt!2541329 (_2!37420 lt!2541325)) e!4248306)))

(declare-fun b!7066547 () Bool)

(declare-fun nullableZipper!2683 ((Set Context!13224)) Bool)

(assert (=> b!7066547 (= e!4248306 (nullableZipper!2683 lt!2541329))))

(declare-fun b!7066548 () Bool)

(declare-fun head!14389 (List!68374) C!35502)

(assert (=> b!7066548 (= e!4248306 (matchZipper!3156 (derivationStepZipper!3066 lt!2541329 (head!14389 (_2!37420 lt!2541325))) (tail!13780 (_2!37420 lt!2541325))))))

(assert (= (and d!2209656 c!1317761) b!7066547))

(assert (= (and d!2209656 (not c!1317761)) b!7066548))

(declare-fun m!7790358 () Bool)

(assert (=> d!2209656 m!7790358))

(declare-fun m!7790360 () Bool)

(assert (=> b!7066547 m!7790360))

(declare-fun m!7790362 () Bool)

(assert (=> b!7066548 m!7790362))

(assert (=> b!7066548 m!7790362))

(declare-fun m!7790364 () Bool)

(assert (=> b!7066548 m!7790364))

(declare-fun m!7790366 () Bool)

(assert (=> b!7066548 m!7790366))

(assert (=> b!7066548 m!7790364))

(assert (=> b!7066548 m!7790366))

(declare-fun m!7790368 () Bool)

(assert (=> b!7066548 m!7790368))

(assert (=> b!7066400 d!2209656))

(declare-fun d!2209658 () Bool)

(declare-fun c!1317762 () Bool)

(assert (=> d!2209658 (= c!1317762 (isEmpty!39830 (t!382155 s!7408)))))

(declare-fun e!4248307 () Bool)

(assert (=> d!2209658 (= (matchZipper!3156 lt!2541360 (t!382155 s!7408)) e!4248307)))

(declare-fun b!7066549 () Bool)

(assert (=> b!7066549 (= e!4248307 (nullableZipper!2683 lt!2541360))))

(declare-fun b!7066550 () Bool)

(assert (=> b!7066550 (= e!4248307 (matchZipper!3156 (derivationStepZipper!3066 lt!2541360 (head!14389 (t!382155 s!7408))) (tail!13780 (t!382155 s!7408))))))

(assert (= (and d!2209658 c!1317762) b!7066549))

(assert (= (and d!2209658 (not c!1317762)) b!7066550))

(declare-fun m!7790370 () Bool)

(assert (=> d!2209658 m!7790370))

(declare-fun m!7790372 () Bool)

(assert (=> b!7066549 m!7790372))

(declare-fun m!7790374 () Bool)

(assert (=> b!7066550 m!7790374))

(assert (=> b!7066550 m!7790374))

(declare-fun m!7790376 () Bool)

(assert (=> b!7066550 m!7790376))

(declare-fun m!7790378 () Bool)

(assert (=> b!7066550 m!7790378))

(assert (=> b!7066550 m!7790376))

(assert (=> b!7066550 m!7790378))

(declare-fun m!7790380 () Bool)

(assert (=> b!7066550 m!7790380))

(assert (=> b!7066381 d!2209658))

(declare-fun d!2209660 () Bool)

(declare-fun forall!16565 (List!68375 Int) Bool)

(assert (=> d!2209660 (forall!16565 (++!15729 (exprs!7112 lt!2541318) (exprs!7112 ct2!306)) lambda!423881)))

(declare-fun lt!2541593 () Unit!161932)

(declare-fun choose!54072 (List!68375 List!68375 Int) Unit!161932)

(assert (=> d!2209660 (= lt!2541593 (choose!54072 (exprs!7112 lt!2541318) (exprs!7112 ct2!306) lambda!423881))))

(assert (=> d!2209660 (forall!16565 (exprs!7112 lt!2541318) lambda!423881)))

(assert (=> d!2209660 (= (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541318) (exprs!7112 ct2!306) lambda!423881) lt!2541593)))

(declare-fun bs!1879843 () Bool)

(assert (= bs!1879843 d!2209660))

(assert (=> bs!1879843 m!7790012))

(assert (=> bs!1879843 m!7790012))

(declare-fun m!7790382 () Bool)

(assert (=> bs!1879843 m!7790382))

(declare-fun m!7790384 () Bool)

(assert (=> bs!1879843 m!7790384))

(declare-fun m!7790386 () Bool)

(assert (=> bs!1879843 m!7790386))

(assert (=> b!7066380 d!2209660))

(declare-fun d!2209662 () Bool)

(assert (=> d!2209662 (isDefined!13650 (findConcatSeparationZippers!465 lt!2541376 (set.insert ct2!306 (as set.empty (Set Context!13224))) Nil!68250 s!7408 s!7408))))

(declare-fun lt!2541596 () Unit!161932)

(declare-fun choose!54073 ((Set Context!13224) Context!13224 List!68374) Unit!161932)

(assert (=> d!2209662 (= lt!2541596 (choose!54073 lt!2541376 ct2!306 s!7408))))

(assert (=> d!2209662 (matchZipper!3156 (appendTo!737 lt!2541376 ct2!306) s!7408)))

(assert (=> d!2209662 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!453 lt!2541376 ct2!306 s!7408) lt!2541596)))

(declare-fun bs!1879844 () Bool)

(assert (= bs!1879844 d!2209662))

(assert (=> bs!1879844 m!7790034))

(declare-fun m!7790388 () Bool)

(assert (=> bs!1879844 m!7790388))

(declare-fun m!7790390 () Bool)

(assert (=> bs!1879844 m!7790390))

(assert (=> bs!1879844 m!7790388))

(declare-fun m!7790392 () Bool)

(assert (=> bs!1879844 m!7790392))

(declare-fun m!7790394 () Bool)

(assert (=> bs!1879844 m!7790394))

(assert (=> bs!1879844 m!7790394))

(declare-fun m!7790396 () Bool)

(assert (=> bs!1879844 m!7790396))

(assert (=> bs!1879844 m!7790034))

(assert (=> b!7066398 d!2209662))

(declare-fun b!7066551 () Bool)

(declare-fun e!4248309 () Bool)

(declare-fun lt!2541598 () Option!16949)

(assert (=> b!7066551 (= e!4248309 (not (isDefined!13650 lt!2541598)))))

(declare-fun b!7066552 () Bool)

(declare-fun res!2885579 () Bool)

(declare-fun e!4248310 () Bool)

(assert (=> b!7066552 (=> (not res!2885579) (not e!4248310))))

(assert (=> b!7066552 (= res!2885579 (matchZipper!3156 lt!2541376 (_1!37420 (get!23908 lt!2541598))))))

(declare-fun b!7066553 () Bool)

(declare-fun res!2885583 () Bool)

(assert (=> b!7066553 (=> (not res!2885583) (not e!4248310))))

(assert (=> b!7066553 (= res!2885583 (matchZipper!3156 lt!2541329 (_2!37420 (get!23908 lt!2541598))))))

(declare-fun b!7066554 () Bool)

(declare-fun e!4248311 () Bool)

(assert (=> b!7066554 (= e!4248311 (matchZipper!3156 lt!2541329 s!7408))))

(declare-fun b!7066555 () Bool)

(declare-fun e!4248312 () Option!16949)

(declare-fun e!4248308 () Option!16949)

(assert (=> b!7066555 (= e!4248312 e!4248308)))

(declare-fun c!1317764 () Bool)

(assert (=> b!7066555 (= c!1317764 (is-Nil!68250 s!7408))))

(declare-fun b!7066557 () Bool)

(assert (=> b!7066557 (= e!4248310 (= (++!15730 (_1!37420 (get!23908 lt!2541598)) (_2!37420 (get!23908 lt!2541598))) s!7408))))

(declare-fun b!7066558 () Bool)

(assert (=> b!7066558 (= e!4248308 None!16948)))

(declare-fun b!7066559 () Bool)

(declare-fun lt!2541597 () Unit!161932)

(declare-fun lt!2541599 () Unit!161932)

(assert (=> b!7066559 (= lt!2541597 lt!2541599)))

(assert (=> b!7066559 (= (++!15730 (++!15730 Nil!68250 (Cons!68250 (h!74698 s!7408) Nil!68250)) (t!382155 s!7408)) s!7408)))

(assert (=> b!7066559 (= lt!2541599 (lemmaMoveElementToOtherListKeepsConcatEq!2969 Nil!68250 (h!74698 s!7408) (t!382155 s!7408) s!7408))))

(assert (=> b!7066559 (= e!4248308 (findConcatSeparationZippers!465 lt!2541376 lt!2541329 (++!15730 Nil!68250 (Cons!68250 (h!74698 s!7408) Nil!68250)) (t!382155 s!7408) s!7408))))

(declare-fun b!7066556 () Bool)

(assert (=> b!7066556 (= e!4248312 (Some!16948 (tuple2!68235 Nil!68250 s!7408)))))

(declare-fun d!2209664 () Bool)

(assert (=> d!2209664 e!4248309))

(declare-fun res!2885581 () Bool)

(assert (=> d!2209664 (=> res!2885581 e!4248309)))

(assert (=> d!2209664 (= res!2885581 e!4248310)))

(declare-fun res!2885580 () Bool)

(assert (=> d!2209664 (=> (not res!2885580) (not e!4248310))))

(assert (=> d!2209664 (= res!2885580 (isDefined!13650 lt!2541598))))

(assert (=> d!2209664 (= lt!2541598 e!4248312)))

(declare-fun c!1317763 () Bool)

(assert (=> d!2209664 (= c!1317763 e!4248311)))

(declare-fun res!2885582 () Bool)

(assert (=> d!2209664 (=> (not res!2885582) (not e!4248311))))

(assert (=> d!2209664 (= res!2885582 (matchZipper!3156 lt!2541376 Nil!68250))))

(assert (=> d!2209664 (= (++!15730 Nil!68250 s!7408) s!7408)))

(assert (=> d!2209664 (= (findConcatSeparationZippers!465 lt!2541376 lt!2541329 Nil!68250 s!7408 s!7408) lt!2541598)))

(assert (= (and d!2209664 res!2885582) b!7066554))

(assert (= (and d!2209664 c!1317763) b!7066556))

(assert (= (and d!2209664 (not c!1317763)) b!7066555))

(assert (= (and b!7066555 c!1317764) b!7066558))

(assert (= (and b!7066555 (not c!1317764)) b!7066559))

(assert (= (and d!2209664 res!2885580) b!7066552))

(assert (= (and b!7066552 res!2885579) b!7066553))

(assert (= (and b!7066553 res!2885583) b!7066557))

(assert (= (and d!2209664 (not res!2885581)) b!7066551))

(assert (=> b!7066554 m!7790336))

(declare-fun m!7790398 () Bool)

(assert (=> b!7066557 m!7790398))

(declare-fun m!7790400 () Bool)

(assert (=> b!7066557 m!7790400))

(assert (=> b!7066552 m!7790398))

(declare-fun m!7790402 () Bool)

(assert (=> b!7066552 m!7790402))

(declare-fun m!7790404 () Bool)

(assert (=> b!7066551 m!7790404))

(assert (=> b!7066553 m!7790398))

(declare-fun m!7790406 () Bool)

(assert (=> b!7066553 m!7790406))

(assert (=> d!2209664 m!7790404))

(declare-fun m!7790408 () Bool)

(assert (=> d!2209664 m!7790408))

(assert (=> d!2209664 m!7790142))

(assert (=> b!7066559 m!7790350))

(assert (=> b!7066559 m!7790350))

(assert (=> b!7066559 m!7790352))

(assert (=> b!7066559 m!7790354))

(assert (=> b!7066559 m!7790350))

(declare-fun m!7790410 () Bool)

(assert (=> b!7066559 m!7790410))

(assert (=> b!7066398 d!2209664))

(declare-fun d!2209666 () Bool)

(declare-fun c!1317765 () Bool)

(assert (=> d!2209666 (= c!1317765 (isEmpty!39830 (_1!37420 lt!2541325)))))

(declare-fun e!4248313 () Bool)

(assert (=> d!2209666 (= (matchZipper!3156 lt!2541376 (_1!37420 lt!2541325)) e!4248313)))

(declare-fun b!7066560 () Bool)

(assert (=> b!7066560 (= e!4248313 (nullableZipper!2683 lt!2541376))))

(declare-fun b!7066561 () Bool)

(assert (=> b!7066561 (= e!4248313 (matchZipper!3156 (derivationStepZipper!3066 lt!2541376 (head!14389 (_1!37420 lt!2541325))) (tail!13780 (_1!37420 lt!2541325))))))

(assert (= (and d!2209666 c!1317765) b!7066560))

(assert (= (and d!2209666 (not c!1317765)) b!7066561))

(assert (=> d!2209666 m!7790030))

(declare-fun m!7790412 () Bool)

(assert (=> b!7066560 m!7790412))

(declare-fun m!7790414 () Bool)

(assert (=> b!7066561 m!7790414))

(assert (=> b!7066561 m!7790414))

(declare-fun m!7790416 () Bool)

(assert (=> b!7066561 m!7790416))

(assert (=> b!7066561 m!7790132))

(assert (=> b!7066561 m!7790416))

(assert (=> b!7066561 m!7790132))

(declare-fun m!7790418 () Bool)

(assert (=> b!7066561 m!7790418))

(assert (=> b!7066398 d!2209666))

(declare-fun d!2209668 () Bool)

(declare-fun isEmpty!39833 (Option!16949) Bool)

(assert (=> d!2209668 (= (isDefined!13650 lt!2541334) (not (isEmpty!39833 lt!2541334)))))

(declare-fun bs!1879845 () Bool)

(assert (= bs!1879845 d!2209668))

(declare-fun m!7790420 () Bool)

(assert (=> bs!1879845 m!7790420))

(assert (=> b!7066398 d!2209668))

(declare-fun d!2209670 () Bool)

(assert (=> d!2209670 (= (get!23908 lt!2541334) (v!53242 lt!2541334))))

(assert (=> b!7066398 d!2209670))

(declare-fun d!2209672 () Bool)

(assert (=> d!2209672 (= (isDefined!13650 call!642175) (not (isEmpty!39833 call!642175)))))

(declare-fun bs!1879846 () Bool)

(assert (= bs!1879846 d!2209672))

(declare-fun m!7790422 () Bool)

(assert (=> bs!1879846 m!7790422))

(assert (=> bm!642169 d!2209672))

(declare-fun b!7066571 () Bool)

(declare-fun e!4248318 () List!68375)

(assert (=> b!7066571 (= e!4248318 (Cons!68251 (h!74699 (exprs!7112 lt!2541318)) (++!15729 (t!382156 (exprs!7112 lt!2541318)) (exprs!7112 ct2!306))))))

(declare-fun d!2209674 () Bool)

(declare-fun e!4248319 () Bool)

(assert (=> d!2209674 e!4248319))

(declare-fun res!2885588 () Bool)

(assert (=> d!2209674 (=> (not res!2885588) (not e!4248319))))

(declare-fun lt!2541602 () List!68375)

(declare-fun content!13751 (List!68375) (Set Regex!17616))

(assert (=> d!2209674 (= res!2885588 (= (content!13751 lt!2541602) (set.union (content!13751 (exprs!7112 lt!2541318)) (content!13751 (exprs!7112 ct2!306)))))))

(assert (=> d!2209674 (= lt!2541602 e!4248318)))

(declare-fun c!1317768 () Bool)

(assert (=> d!2209674 (= c!1317768 (is-Nil!68251 (exprs!7112 lt!2541318)))))

(assert (=> d!2209674 (= (++!15729 (exprs!7112 lt!2541318) (exprs!7112 ct2!306)) lt!2541602)))

(declare-fun b!7066572 () Bool)

(declare-fun res!2885589 () Bool)

(assert (=> b!7066572 (=> (not res!2885589) (not e!4248319))))

(declare-fun size!41191 (List!68375) Int)

(assert (=> b!7066572 (= res!2885589 (= (size!41191 lt!2541602) (+ (size!41191 (exprs!7112 lt!2541318)) (size!41191 (exprs!7112 ct2!306)))))))

(declare-fun b!7066570 () Bool)

(assert (=> b!7066570 (= e!4248318 (exprs!7112 ct2!306))))

(declare-fun b!7066573 () Bool)

(assert (=> b!7066573 (= e!4248319 (or (not (= (exprs!7112 ct2!306) Nil!68251)) (= lt!2541602 (exprs!7112 lt!2541318))))))

(assert (= (and d!2209674 c!1317768) b!7066570))

(assert (= (and d!2209674 (not c!1317768)) b!7066571))

(assert (= (and d!2209674 res!2885588) b!7066572))

(assert (= (and b!7066572 res!2885589) b!7066573))

(declare-fun m!7790424 () Bool)

(assert (=> b!7066571 m!7790424))

(declare-fun m!7790426 () Bool)

(assert (=> d!2209674 m!7790426))

(declare-fun m!7790428 () Bool)

(assert (=> d!2209674 m!7790428))

(declare-fun m!7790430 () Bool)

(assert (=> d!2209674 m!7790430))

(declare-fun m!7790432 () Bool)

(assert (=> b!7066572 m!7790432))

(declare-fun m!7790434 () Bool)

(assert (=> b!7066572 m!7790434))

(declare-fun m!7790436 () Bool)

(assert (=> b!7066572 m!7790436))

(assert (=> b!7066382 d!2209674))

(assert (=> b!7066382 d!2209660))

(declare-fun d!2209676 () Bool)

(declare-fun e!4248322 () Bool)

(assert (=> d!2209676 e!4248322))

(declare-fun res!2885592 () Bool)

(assert (=> d!2209676 (=> (not res!2885592) (not e!4248322))))

(declare-fun lt!2541605 () Context!13224)

(declare-fun dynLambda!27733 (Int Context!13224) Context!13224)

(assert (=> d!2209676 (= res!2885592 (= lt!2541340 (dynLambda!27733 lambda!423880 lt!2541605)))))

(declare-fun choose!54074 ((Set Context!13224) Int Context!13224) Context!13224)

(assert (=> d!2209676 (= lt!2541605 (choose!54074 z1!570 lambda!423880 lt!2541340))))

(assert (=> d!2209676 (set.member lt!2541340 (map!15957 z1!570 lambda!423880))))

(assert (=> d!2209676 (= (mapPost2!445 z1!570 lambda!423880 lt!2541340) lt!2541605)))

(declare-fun b!7066577 () Bool)

(assert (=> b!7066577 (= e!4248322 (set.member lt!2541605 z1!570))))

(assert (= (and d!2209676 res!2885592) b!7066577))

(declare-fun b_lambda!269647 () Bool)

(assert (=> (not b_lambda!269647) (not d!2209676)))

(declare-fun m!7790438 () Bool)

(assert (=> d!2209676 m!7790438))

(declare-fun m!7790440 () Bool)

(assert (=> d!2209676 m!7790440))

(declare-fun m!7790442 () Bool)

(assert (=> d!2209676 m!7790442))

(declare-fun m!7790444 () Bool)

(assert (=> d!2209676 m!7790444))

(declare-fun m!7790446 () Bool)

(assert (=> b!7066577 m!7790446))

(assert (=> b!7066382 d!2209676))

(declare-fun d!2209678 () Bool)

(declare-fun e!4248327 () Bool)

(assert (=> d!2209678 e!4248327))

(declare-fun res!2885597 () Bool)

(assert (=> d!2209678 (=> (not res!2885597) (not e!4248327))))

(declare-fun lt!2541608 () List!68374)

(declare-fun content!13752 (List!68374) (Set C!35502))

(assert (=> d!2209678 (= res!2885597 (= (content!13752 lt!2541608) (set.union (content!13752 Nil!68250) (content!13752 s!7408))))))

(declare-fun e!4248328 () List!68374)

(assert (=> d!2209678 (= lt!2541608 e!4248328)))

(declare-fun c!1317771 () Bool)

(assert (=> d!2209678 (= c!1317771 (is-Nil!68250 Nil!68250))))

(assert (=> d!2209678 (= (++!15730 Nil!68250 s!7408) lt!2541608)))

(declare-fun b!7066587 () Bool)

(assert (=> b!7066587 (= e!4248328 (Cons!68250 (h!74698 Nil!68250) (++!15730 (t!382155 Nil!68250) s!7408)))))

(declare-fun b!7066588 () Bool)

(declare-fun res!2885598 () Bool)

(assert (=> b!7066588 (=> (not res!2885598) (not e!4248327))))

(declare-fun size!41192 (List!68374) Int)

(assert (=> b!7066588 (= res!2885598 (= (size!41192 lt!2541608) (+ (size!41192 Nil!68250) (size!41192 s!7408))))))

(declare-fun b!7066586 () Bool)

(assert (=> b!7066586 (= e!4248328 s!7408)))

(declare-fun b!7066589 () Bool)

(assert (=> b!7066589 (= e!4248327 (or (not (= s!7408 Nil!68250)) (= lt!2541608 Nil!68250)))))

(assert (= (and d!2209678 c!1317771) b!7066586))

(assert (= (and d!2209678 (not c!1317771)) b!7066587))

(assert (= (and d!2209678 res!2885597) b!7066588))

(assert (= (and b!7066588 res!2885598) b!7066589))

(declare-fun m!7790448 () Bool)

(assert (=> d!2209678 m!7790448))

(declare-fun m!7790450 () Bool)

(assert (=> d!2209678 m!7790450))

(declare-fun m!7790452 () Bool)

(assert (=> d!2209678 m!7790452))

(declare-fun m!7790454 () Bool)

(assert (=> b!7066587 m!7790454))

(declare-fun m!7790456 () Bool)

(assert (=> b!7066588 m!7790456))

(declare-fun m!7790458 () Bool)

(assert (=> b!7066588 m!7790458))

(declare-fun m!7790460 () Bool)

(assert (=> b!7066588 m!7790460))

(assert (=> b!7066395 d!2209678))

(declare-fun d!2209680 () Bool)

(assert (=> d!2209680 (= (isEmpty!39829 (exprs!7112 lt!2541318)) (is-Nil!68251 (exprs!7112 lt!2541318)))))

(assert (=> b!7066376 d!2209680))

(assert (=> b!7066394 d!2209658))

(declare-fun d!2209682 () Bool)

(assert (=> d!2209682 (forall!16565 (++!15729 lt!2541345 (exprs!7112 ct2!306)) lambda!423881)))

(declare-fun lt!2541609 () Unit!161932)

(assert (=> d!2209682 (= lt!2541609 (choose!54072 lt!2541345 (exprs!7112 ct2!306) lambda!423881))))

(assert (=> d!2209682 (forall!16565 lt!2541345 lambda!423881)))

(assert (=> d!2209682 (= (lemmaConcatPreservesForall!927 lt!2541345 (exprs!7112 ct2!306) lambda!423881) lt!2541609)))

(declare-fun bs!1879847 () Bool)

(assert (= bs!1879847 d!2209682))

(assert (=> bs!1879847 m!7790080))

(assert (=> bs!1879847 m!7790080))

(declare-fun m!7790462 () Bool)

(assert (=> bs!1879847 m!7790462))

(declare-fun m!7790464 () Bool)

(assert (=> bs!1879847 m!7790464))

(declare-fun m!7790466 () Bool)

(assert (=> bs!1879847 m!7790466))

(assert (=> b!7066394 d!2209682))

(declare-fun b!7066612 () Bool)

(declare-fun e!4248345 () (Set Context!13224))

(declare-fun call!642197 () (Set Context!13224))

(declare-fun call!642200 () (Set Context!13224))

(assert (=> b!7066612 (= e!4248345 (set.union call!642197 call!642200))))

(declare-fun b!7066613 () Bool)

(declare-fun e!4248346 () (Set Context!13224))

(assert (=> b!7066613 (= e!4248346 e!4248345)))

(declare-fun c!1317782 () Bool)

(assert (=> b!7066613 (= c!1317782 (is-Union!17616 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun d!2209684 () Bool)

(declare-fun c!1317786 () Bool)

(assert (=> d!2209684 (= c!1317786 (and (is-ElementMatch!17616 (h!74699 (exprs!7112 lt!2541318))) (= (c!1317722 (h!74699 (exprs!7112 lt!2541318))) (h!74698 s!7408))))))

(assert (=> d!2209684 (= (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541318)) lt!2541350 (h!74698 s!7408)) e!4248346)))

(declare-fun c!1317783 () Bool)

(declare-fun bm!642192 () Bool)

(declare-fun call!642201 () List!68375)

(declare-fun c!1317784 () Bool)

(declare-fun $colon$colon!2644 (List!68375 Regex!17616) List!68375)

(assert (=> bm!642192 (= call!642201 ($colon$colon!2644 (exprs!7112 lt!2541350) (ite (or c!1317783 c!1317784) (regTwo!35744 (h!74699 (exprs!7112 lt!2541318))) (h!74699 (exprs!7112 lt!2541318)))))))

(declare-fun b!7066614 () Bool)

(declare-fun e!4248343 () (Set Context!13224))

(assert (=> b!7066614 (= e!4248343 (as set.empty (Set Context!13224)))))

(declare-fun bm!642193 () Bool)

(assert (=> bm!642193 (= call!642200 (derivationStepZipperDown!2250 (ite c!1317782 (regTwo!35745 (h!74699 (exprs!7112 lt!2541318))) (regOne!35744 (h!74699 (exprs!7112 lt!2541318)))) (ite c!1317782 lt!2541350 (Context!13225 call!642201)) (h!74698 s!7408)))))

(declare-fun b!7066615 () Bool)

(declare-fun call!642199 () (Set Context!13224))

(assert (=> b!7066615 (= e!4248343 call!642199)))

(declare-fun bm!642194 () Bool)

(declare-fun call!642202 () (Set Context!13224))

(assert (=> bm!642194 (= call!642202 call!642197)))

(declare-fun b!7066616 () Bool)

(declare-fun e!4248342 () Bool)

(assert (=> b!7066616 (= e!4248342 (nullable!7299 (regOne!35744 (h!74699 (exprs!7112 lt!2541318)))))))

(declare-fun b!7066617 () Bool)

(assert (=> b!7066617 (= e!4248346 (set.insert lt!2541350 (as set.empty (Set Context!13224))))))

(declare-fun b!7066618 () Bool)

(declare-fun e!4248344 () (Set Context!13224))

(declare-fun e!4248341 () (Set Context!13224))

(assert (=> b!7066618 (= e!4248344 e!4248341)))

(assert (=> b!7066618 (= c!1317784 (is-Concat!26461 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun b!7066619 () Bool)

(declare-fun c!1317785 () Bool)

(assert (=> b!7066619 (= c!1317785 (is-Star!17616 (h!74699 (exprs!7112 lt!2541318))))))

(assert (=> b!7066619 (= e!4248341 e!4248343)))

(declare-fun bm!642195 () Bool)

(assert (=> bm!642195 (= call!642199 call!642202)))

(declare-fun bm!642196 () Bool)

(declare-fun call!642198 () List!68375)

(assert (=> bm!642196 (= call!642198 call!642201)))

(declare-fun bm!642197 () Bool)

(assert (=> bm!642197 (= call!642197 (derivationStepZipperDown!2250 (ite c!1317782 (regOne!35745 (h!74699 (exprs!7112 lt!2541318))) (ite c!1317783 (regTwo!35744 (h!74699 (exprs!7112 lt!2541318))) (ite c!1317784 (regOne!35744 (h!74699 (exprs!7112 lt!2541318))) (reg!17945 (h!74699 (exprs!7112 lt!2541318)))))) (ite (or c!1317782 c!1317783) lt!2541350 (Context!13225 call!642198)) (h!74698 s!7408)))))

(declare-fun b!7066620 () Bool)

(assert (=> b!7066620 (= e!4248344 (set.union call!642200 call!642202))))

(declare-fun b!7066621 () Bool)

(assert (=> b!7066621 (= c!1317783 e!4248342)))

(declare-fun res!2885601 () Bool)

(assert (=> b!7066621 (=> (not res!2885601) (not e!4248342))))

(assert (=> b!7066621 (= res!2885601 (is-Concat!26461 (h!74699 (exprs!7112 lt!2541318))))))

(assert (=> b!7066621 (= e!4248345 e!4248344)))

(declare-fun b!7066622 () Bool)

(assert (=> b!7066622 (= e!4248341 call!642199)))

(assert (= (and d!2209684 c!1317786) b!7066617))

(assert (= (and d!2209684 (not c!1317786)) b!7066613))

(assert (= (and b!7066613 c!1317782) b!7066612))

(assert (= (and b!7066613 (not c!1317782)) b!7066621))

(assert (= (and b!7066621 res!2885601) b!7066616))

(assert (= (and b!7066621 c!1317783) b!7066620))

(assert (= (and b!7066621 (not c!1317783)) b!7066618))

(assert (= (and b!7066618 c!1317784) b!7066622))

(assert (= (and b!7066618 (not c!1317784)) b!7066619))

(assert (= (and b!7066619 c!1317785) b!7066615))

(assert (= (and b!7066619 (not c!1317785)) b!7066614))

(assert (= (or b!7066622 b!7066615) bm!642196))

(assert (= (or b!7066622 b!7066615) bm!642195))

(assert (= (or b!7066620 bm!642195) bm!642194))

(assert (= (or b!7066620 bm!642196) bm!642192))

(assert (= (or b!7066612 bm!642194) bm!642197))

(assert (= (or b!7066612 b!7066620) bm!642193))

(declare-fun m!7790468 () Bool)

(assert (=> bm!642197 m!7790468))

(declare-fun m!7790470 () Bool)

(assert (=> b!7066616 m!7790470))

(declare-fun m!7790472 () Bool)

(assert (=> bm!642192 m!7790472))

(declare-fun m!7790474 () Bool)

(assert (=> bm!642193 m!7790474))

(assert (=> b!7066617 m!7790074))

(assert (=> b!7066393 d!2209684))

(declare-fun d!2209686 () Bool)

(declare-fun c!1317791 () Bool)

(declare-fun e!4248355 () Bool)

(assert (=> d!2209686 (= c!1317791 e!4248355)))

(declare-fun res!2885604 () Bool)

(assert (=> d!2209686 (=> (not res!2885604) (not e!4248355))))

(assert (=> d!2209686 (= res!2885604 (is-Cons!68251 (exprs!7112 lt!2541350)))))

(declare-fun e!4248354 () (Set Context!13224))

(assert (=> d!2209686 (= (derivationStepZipperUp!2200 lt!2541350 (h!74698 s!7408)) e!4248354)))

(declare-fun call!642205 () (Set Context!13224))

(declare-fun b!7066633 () Bool)

(assert (=> b!7066633 (= e!4248354 (set.union call!642205 (derivationStepZipperUp!2200 (Context!13225 (t!382156 (exprs!7112 lt!2541350))) (h!74698 s!7408))))))

(declare-fun b!7066634 () Bool)

(assert (=> b!7066634 (= e!4248355 (nullable!7299 (h!74699 (exprs!7112 lt!2541350))))))

(declare-fun bm!642200 () Bool)

(assert (=> bm!642200 (= call!642205 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541350)) (Context!13225 (t!382156 (exprs!7112 lt!2541350))) (h!74698 s!7408)))))

(declare-fun b!7066635 () Bool)

(declare-fun e!4248353 () (Set Context!13224))

(assert (=> b!7066635 (= e!4248353 (as set.empty (Set Context!13224)))))

(declare-fun b!7066636 () Bool)

(assert (=> b!7066636 (= e!4248354 e!4248353)))

(declare-fun c!1317792 () Bool)

(assert (=> b!7066636 (= c!1317792 (is-Cons!68251 (exprs!7112 lt!2541350)))))

(declare-fun b!7066637 () Bool)

(assert (=> b!7066637 (= e!4248353 call!642205)))

(assert (= (and d!2209686 res!2885604) b!7066634))

(assert (= (and d!2209686 c!1317791) b!7066633))

(assert (= (and d!2209686 (not c!1317791)) b!7066636))

(assert (= (and b!7066636 c!1317792) b!7066637))

(assert (= (and b!7066636 (not c!1317792)) b!7066635))

(assert (= (or b!7066633 b!7066637) bm!642200))

(declare-fun m!7790476 () Bool)

(assert (=> b!7066633 m!7790476))

(declare-fun m!7790478 () Bool)

(assert (=> b!7066634 m!7790478))

(declare-fun m!7790480 () Bool)

(assert (=> bm!642200 m!7790480))

(assert (=> b!7066393 d!2209686))

(declare-fun d!2209688 () Bool)

(declare-fun c!1317793 () Bool)

(assert (=> d!2209688 (= c!1317793 (isEmpty!39830 lt!2541346))))

(declare-fun e!4248356 () Bool)

(assert (=> d!2209688 (= (matchZipper!3156 lt!2541355 lt!2541346) e!4248356)))

(declare-fun b!7066638 () Bool)

(assert (=> b!7066638 (= e!4248356 (nullableZipper!2683 lt!2541355))))

(declare-fun b!7066639 () Bool)

(assert (=> b!7066639 (= e!4248356 (matchZipper!3156 (derivationStepZipper!3066 lt!2541355 (head!14389 lt!2541346)) (tail!13780 lt!2541346)))))

(assert (= (and d!2209688 c!1317793) b!7066638))

(assert (= (and d!2209688 (not c!1317793)) b!7066639))

(declare-fun m!7790482 () Bool)

(assert (=> d!2209688 m!7790482))

(declare-fun m!7790484 () Bool)

(assert (=> b!7066638 m!7790484))

(declare-fun m!7790486 () Bool)

(assert (=> b!7066639 m!7790486))

(assert (=> b!7066639 m!7790486))

(declare-fun m!7790488 () Bool)

(assert (=> b!7066639 m!7790488))

(declare-fun m!7790490 () Bool)

(assert (=> b!7066639 m!7790490))

(assert (=> b!7066639 m!7790488))

(assert (=> b!7066639 m!7790490))

(declare-fun m!7790492 () Bool)

(assert (=> b!7066639 m!7790492))

(assert (=> b!7066393 d!2209688))

(declare-fun d!2209690 () Bool)

(declare-fun choose!54075 ((Set Context!13224) Int) (Set Context!13224))

(assert (=> d!2209690 (= (flatMap!2542 lt!2541376 lambda!423882) (choose!54075 lt!2541376 lambda!423882))))

(declare-fun bs!1879848 () Bool)

(assert (= bs!1879848 d!2209690))

(declare-fun m!7790494 () Bool)

(assert (=> bs!1879848 m!7790494))

(assert (=> b!7066393 d!2209690))

(declare-fun d!2209692 () Bool)

(assert (=> d!2209692 (= (tail!13780 (_1!37420 lt!2541325)) (t!382155 (_1!37420 lt!2541325)))))

(assert (=> b!7066393 d!2209692))

(declare-fun d!2209694 () Bool)

(declare-fun c!1317794 () Bool)

(assert (=> d!2209694 (= c!1317794 (isEmpty!39830 lt!2541346))))

(declare-fun e!4248357 () Bool)

(assert (=> d!2209694 (= (matchZipper!3156 (set.union lt!2541355 lt!2541375) lt!2541346) e!4248357)))

(declare-fun b!7066640 () Bool)

(assert (=> b!7066640 (= e!4248357 (nullableZipper!2683 (set.union lt!2541355 lt!2541375)))))

(declare-fun b!7066641 () Bool)

(assert (=> b!7066641 (= e!4248357 (matchZipper!3156 (derivationStepZipper!3066 (set.union lt!2541355 lt!2541375) (head!14389 lt!2541346)) (tail!13780 lt!2541346)))))

(assert (= (and d!2209694 c!1317794) b!7066640))

(assert (= (and d!2209694 (not c!1317794)) b!7066641))

(assert (=> d!2209694 m!7790482))

(declare-fun m!7790496 () Bool)

(assert (=> b!7066640 m!7790496))

(assert (=> b!7066641 m!7790486))

(assert (=> b!7066641 m!7790486))

(declare-fun m!7790498 () Bool)

(assert (=> b!7066641 m!7790498))

(assert (=> b!7066641 m!7790490))

(assert (=> b!7066641 m!7790498))

(assert (=> b!7066641 m!7790490))

(declare-fun m!7790500 () Bool)

(assert (=> b!7066641 m!7790500))

(assert (=> b!7066393 d!2209694))

(declare-fun d!2209696 () Bool)

(declare-fun dynLambda!27734 (Int Context!13224) (Set Context!13224))

(assert (=> d!2209696 (= (flatMap!2542 lt!2541319 lambda!423882) (dynLambda!27734 lambda!423882 lt!2541318))))

(declare-fun lt!2541612 () Unit!161932)

(declare-fun choose!54076 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> d!2209696 (= lt!2541612 (choose!54076 lt!2541319 lt!2541318 lambda!423882))))

(assert (=> d!2209696 (= lt!2541319 (set.insert lt!2541318 (as set.empty (Set Context!13224))))))

(assert (=> d!2209696 (= (lemmaFlatMapOnSingletonSet!2051 lt!2541319 lt!2541318 lambda!423882) lt!2541612)))

(declare-fun b_lambda!269649 () Bool)

(assert (=> (not b_lambda!269649) (not d!2209696)))

(declare-fun bs!1879849 () Bool)

(assert (= bs!1879849 d!2209696))

(assert (=> bs!1879849 m!7790130))

(declare-fun m!7790502 () Bool)

(assert (=> bs!1879849 m!7790502))

(declare-fun m!7790504 () Bool)

(assert (=> bs!1879849 m!7790504))

(assert (=> bs!1879849 m!7790106))

(assert (=> b!7066393 d!2209696))

(declare-fun d!2209698 () Bool)

(assert (=> d!2209698 (= (flatMap!2542 lt!2541376 lambda!423882) (dynLambda!27734 lambda!423882 lt!2541350))))

(declare-fun lt!2541613 () Unit!161932)

(assert (=> d!2209698 (= lt!2541613 (choose!54076 lt!2541376 lt!2541350 lambda!423882))))

(assert (=> d!2209698 (= lt!2541376 (set.insert lt!2541350 (as set.empty (Set Context!13224))))))

(assert (=> d!2209698 (= (lemmaFlatMapOnSingletonSet!2051 lt!2541376 lt!2541350 lambda!423882) lt!2541613)))

(declare-fun b_lambda!269651 () Bool)

(assert (=> (not b_lambda!269651) (not d!2209698)))

(declare-fun bs!1879850 () Bool)

(assert (= bs!1879850 d!2209698))

(assert (=> bs!1879850 m!7790090))

(declare-fun m!7790506 () Bool)

(assert (=> bs!1879850 m!7790506))

(declare-fun m!7790508 () Bool)

(assert (=> bs!1879850 m!7790508))

(assert (=> bs!1879850 m!7790074))

(assert (=> b!7066393 d!2209698))

(declare-fun d!2209700 () Bool)

(declare-fun e!4248360 () Bool)

(assert (=> d!2209700 (= (matchZipper!3156 (set.union lt!2541355 lt!2541375) lt!2541346) e!4248360)))

(declare-fun res!2885607 () Bool)

(assert (=> d!2209700 (=> res!2885607 e!4248360)))

(assert (=> d!2209700 (= res!2885607 (matchZipper!3156 lt!2541355 lt!2541346))))

(declare-fun lt!2541616 () Unit!161932)

(declare-fun choose!54077 ((Set Context!13224) (Set Context!13224) List!68374) Unit!161932)

(assert (=> d!2209700 (= lt!2541616 (choose!54077 lt!2541355 lt!2541375 lt!2541346))))

(assert (=> d!2209700 (= (lemmaZipperConcatMatchesSameAsBothZippers!1629 lt!2541355 lt!2541375 lt!2541346) lt!2541616)))

(declare-fun b!7066644 () Bool)

(assert (=> b!7066644 (= e!4248360 (matchZipper!3156 lt!2541375 lt!2541346))))

(assert (= (and d!2209700 (not res!2885607)) b!7066644))

(assert (=> d!2209700 m!7790140))

(assert (=> d!2209700 m!7790134))

(declare-fun m!7790510 () Bool)

(assert (=> d!2209700 m!7790510))

(assert (=> b!7066644 m!7790164))

(assert (=> b!7066393 d!2209700))

(declare-fun d!2209702 () Bool)

(declare-fun c!1317795 () Bool)

(declare-fun e!4248363 () Bool)

(assert (=> d!2209702 (= c!1317795 e!4248363)))

(declare-fun res!2885608 () Bool)

(assert (=> d!2209702 (=> (not res!2885608) (not e!4248363))))

(assert (=> d!2209702 (= res!2885608 (is-Cons!68251 (exprs!7112 lt!2541318)))))

(declare-fun e!4248362 () (Set Context!13224))

(assert (=> d!2209702 (= (derivationStepZipperUp!2200 lt!2541318 (h!74698 s!7408)) e!4248362)))

(declare-fun b!7066645 () Bool)

(declare-fun call!642206 () (Set Context!13224))

(assert (=> b!7066645 (= e!4248362 (set.union call!642206 (derivationStepZipperUp!2200 (Context!13225 (t!382156 (exprs!7112 lt!2541318))) (h!74698 s!7408))))))

(declare-fun b!7066646 () Bool)

(assert (=> b!7066646 (= e!4248363 (nullable!7299 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun bm!642201 () Bool)

(assert (=> bm!642201 (= call!642206 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541318)) (Context!13225 (t!382156 (exprs!7112 lt!2541318))) (h!74698 s!7408)))))

(declare-fun b!7066647 () Bool)

(declare-fun e!4248361 () (Set Context!13224))

(assert (=> b!7066647 (= e!4248361 (as set.empty (Set Context!13224)))))

(declare-fun b!7066648 () Bool)

(assert (=> b!7066648 (= e!4248362 e!4248361)))

(declare-fun c!1317796 () Bool)

(assert (=> b!7066648 (= c!1317796 (is-Cons!68251 (exprs!7112 lt!2541318)))))

(declare-fun b!7066649 () Bool)

(assert (=> b!7066649 (= e!4248361 call!642206)))

(assert (= (and d!2209702 res!2885608) b!7066646))

(assert (= (and d!2209702 c!1317795) b!7066645))

(assert (= (and d!2209702 (not c!1317795)) b!7066648))

(assert (= (and b!7066648 c!1317796) b!7066649))

(assert (= (and b!7066648 (not c!1317796)) b!7066647))

(assert (= (or b!7066645 b!7066649) bm!642201))

(declare-fun m!7790512 () Bool)

(assert (=> b!7066645 m!7790512))

(assert (=> b!7066646 m!7790066))

(declare-fun m!7790514 () Bool)

(assert (=> bm!642201 m!7790514))

(assert (=> b!7066393 d!2209702))

(declare-fun d!2209704 () Bool)

(assert (=> d!2209704 (= (flatMap!2542 lt!2541319 lambda!423882) (choose!54075 lt!2541319 lambda!423882))))

(declare-fun bs!1879851 () Bool)

(assert (= bs!1879851 d!2209704))

(declare-fun m!7790516 () Bool)

(assert (=> bs!1879851 m!7790516))

(assert (=> b!7066393 d!2209704))

(assert (=> b!7066379 d!2209658))

(assert (=> b!7066379 d!2209682))

(declare-fun d!2209706 () Bool)

(assert (=> d!2209706 (= (map!15957 lt!2541376 lambda!423880) (set.insert (dynLambda!27733 lambda!423880 lt!2541350) (as set.empty (Set Context!13224))))))

(declare-fun lt!2541619 () Unit!161932)

(declare-fun choose!54078 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> d!2209706 (= lt!2541619 (choose!54078 lt!2541376 lt!2541350 lambda!423880))))

(assert (=> d!2209706 (= lt!2541376 (set.insert lt!2541350 (as set.empty (Set Context!13224))))))

(assert (=> d!2209706 (= (lemmaMapOnSingletonSet!433 lt!2541376 lt!2541350 lambda!423880) lt!2541619)))

(declare-fun b_lambda!269653 () Bool)

(assert (=> (not b_lambda!269653) (not d!2209706)))

(declare-fun bs!1879852 () Bool)

(assert (= bs!1879852 d!2209706))

(declare-fun m!7790518 () Bool)

(assert (=> bs!1879852 m!7790518))

(declare-fun m!7790520 () Bool)

(assert (=> bs!1879852 m!7790520))

(assert (=> bs!1879852 m!7790072))

(assert (=> bs!1879852 m!7790520))

(declare-fun m!7790522 () Bool)

(assert (=> bs!1879852 m!7790522))

(assert (=> bs!1879852 m!7790074))

(assert (=> b!7066378 d!2209706))

(declare-fun d!2209708 () Bool)

(declare-fun lt!2541622 () Int)

(assert (=> d!2209708 (>= lt!2541622 0)))

(declare-fun e!4248366 () Int)

(assert (=> d!2209708 (= lt!2541622 e!4248366)))

(declare-fun c!1317799 () Bool)

(assert (=> d!2209708 (= c!1317799 (is-Cons!68252 lt!2541364))))

(assert (=> d!2209708 (= (zipperDepthTotal!581 lt!2541364) lt!2541622)))

(declare-fun b!7066654 () Bool)

(assert (=> b!7066654 (= e!4248366 (+ (contextDepthTotal!552 (h!74700 lt!2541364)) (zipperDepthTotal!581 (t!382157 lt!2541364))))))

(declare-fun b!7066655 () Bool)

(assert (=> b!7066655 (= e!4248366 0)))

(assert (= (and d!2209708 c!1317799) b!7066654))

(assert (= (and d!2209708 (not c!1317799)) b!7066655))

(declare-fun m!7790524 () Bool)

(assert (=> b!7066654 m!7790524))

(declare-fun m!7790526 () Bool)

(assert (=> b!7066654 m!7790526))

(assert (=> b!7066378 d!2209708))

(assert (=> b!7066378 d!2209686))

(assert (=> b!7066378 d!2209682))

(declare-fun d!2209710 () Bool)

(declare-fun lt!2541625 () Int)

(assert (=> d!2209710 (>= lt!2541625 0)))

(declare-fun e!4248369 () Int)

(assert (=> d!2209710 (= lt!2541625 e!4248369)))

(declare-fun c!1317803 () Bool)

(assert (=> d!2209710 (= c!1317803 (is-Cons!68251 (exprs!7112 lt!2541350)))))

(assert (=> d!2209710 (= (contextDepthTotal!552 lt!2541350) lt!2541625)))

(declare-fun b!7066660 () Bool)

(declare-fun regexDepthTotal!330 (Regex!17616) Int)

(assert (=> b!7066660 (= e!4248369 (+ (regexDepthTotal!330 (h!74699 (exprs!7112 lt!2541350))) (contextDepthTotal!552 (Context!13225 (t!382156 (exprs!7112 lt!2541350))))))))

(declare-fun b!7066661 () Bool)

(assert (=> b!7066661 (= e!4248369 1)))

(assert (= (and d!2209710 c!1317803) b!7066660))

(assert (= (and d!2209710 (not c!1317803)) b!7066661))

(declare-fun m!7790528 () Bool)

(assert (=> b!7066660 m!7790528))

(declare-fun m!7790530 () Bool)

(assert (=> b!7066660 m!7790530))

(assert (=> b!7066378 d!2209710))

(declare-fun d!2209712 () Bool)

(assert (=> d!2209712 (<= (contextDepthTotal!552 lt!2541318) (zipperDepthTotal!581 lt!2541364))))

(declare-fun lt!2541628 () Unit!161932)

(declare-fun choose!54079 (List!68376 Context!13224) Unit!161932)

(assert (=> d!2209712 (= lt!2541628 (choose!54079 lt!2541364 lt!2541318))))

(declare-fun contains!20500 (List!68376 Context!13224) Bool)

(assert (=> d!2209712 (contains!20500 lt!2541364 lt!2541318)))

(assert (=> d!2209712 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!119 lt!2541364 lt!2541318) lt!2541628)))

(declare-fun bs!1879853 () Bool)

(assert (= bs!1879853 d!2209712))

(assert (=> bs!1879853 m!7790092))

(assert (=> bs!1879853 m!7790082))

(declare-fun m!7790532 () Bool)

(assert (=> bs!1879853 m!7790532))

(declare-fun m!7790534 () Bool)

(assert (=> bs!1879853 m!7790534))

(assert (=> b!7066378 d!2209712))

(declare-fun b!7066663 () Bool)

(declare-fun e!4248370 () List!68375)

(assert (=> b!7066663 (= e!4248370 (Cons!68251 (h!74699 lt!2541345) (++!15729 (t!382156 lt!2541345) (exprs!7112 ct2!306))))))

(declare-fun d!2209714 () Bool)

(declare-fun e!4248371 () Bool)

(assert (=> d!2209714 e!4248371))

(declare-fun res!2885609 () Bool)

(assert (=> d!2209714 (=> (not res!2885609) (not e!4248371))))

(declare-fun lt!2541629 () List!68375)

(assert (=> d!2209714 (= res!2885609 (= (content!13751 lt!2541629) (set.union (content!13751 lt!2541345) (content!13751 (exprs!7112 ct2!306)))))))

(assert (=> d!2209714 (= lt!2541629 e!4248370)))

(declare-fun c!1317805 () Bool)

(assert (=> d!2209714 (= c!1317805 (is-Nil!68251 lt!2541345))))

(assert (=> d!2209714 (= (++!15729 lt!2541345 (exprs!7112 ct2!306)) lt!2541629)))

(declare-fun b!7066664 () Bool)

(declare-fun res!2885610 () Bool)

(assert (=> b!7066664 (=> (not res!2885610) (not e!4248371))))

(assert (=> b!7066664 (= res!2885610 (= (size!41191 lt!2541629) (+ (size!41191 lt!2541345) (size!41191 (exprs!7112 ct2!306)))))))

(declare-fun b!7066662 () Bool)

(assert (=> b!7066662 (= e!4248370 (exprs!7112 ct2!306))))

(declare-fun b!7066665 () Bool)

(assert (=> b!7066665 (= e!4248371 (or (not (= (exprs!7112 ct2!306) Nil!68251)) (= lt!2541629 lt!2541345)))))

(assert (= (and d!2209714 c!1317805) b!7066662))

(assert (= (and d!2209714 (not c!1317805)) b!7066663))

(assert (= (and d!2209714 res!2885609) b!7066664))

(assert (= (and b!7066664 res!2885610) b!7066665))

(declare-fun m!7790536 () Bool)

(assert (=> b!7066663 m!7790536))

(declare-fun m!7790538 () Bool)

(assert (=> d!2209714 m!7790538))

(declare-fun m!7790540 () Bool)

(assert (=> d!2209714 m!7790540))

(assert (=> d!2209714 m!7790430))

(declare-fun m!7790542 () Bool)

(assert (=> b!7066664 m!7790542))

(declare-fun m!7790544 () Bool)

(assert (=> b!7066664 m!7790544))

(assert (=> b!7066664 m!7790436))

(assert (=> b!7066378 d!2209714))

(assert (=> b!7066378 d!2209698))

(declare-fun d!2209716 () Bool)

(declare-fun lt!2541630 () Int)

(assert (=> d!2209716 (>= lt!2541630 0)))

(declare-fun e!4248372 () Int)

(assert (=> d!2209716 (= lt!2541630 e!4248372)))

(declare-fun c!1317806 () Bool)

(assert (=> d!2209716 (= c!1317806 (is-Cons!68251 (exprs!7112 lt!2541318)))))

(assert (=> d!2209716 (= (contextDepthTotal!552 lt!2541318) lt!2541630)))

(declare-fun b!7066666 () Bool)

(assert (=> b!7066666 (= e!4248372 (+ (regexDepthTotal!330 (h!74699 (exprs!7112 lt!2541318))) (contextDepthTotal!552 (Context!13225 (t!382156 (exprs!7112 lt!2541318))))))))

(declare-fun b!7066667 () Bool)

(assert (=> b!7066667 (= e!4248372 1)))

(assert (= (and d!2209716 c!1317806) b!7066666))

(assert (= (and d!2209716 (not c!1317806)) b!7066667))

(declare-fun m!7790546 () Bool)

(assert (=> b!7066666 m!7790546))

(declare-fun m!7790548 () Bool)

(assert (=> b!7066666 m!7790548))

(assert (=> b!7066378 d!2209716))

(declare-fun d!2209718 () Bool)

(declare-fun choose!54080 ((Set Context!13224) Int) (Set Context!13224))

(assert (=> d!2209718 (= (map!15957 lt!2541376 lambda!423880) (choose!54080 lt!2541376 lambda!423880))))

(declare-fun bs!1879854 () Bool)

(assert (= bs!1879854 d!2209718))

(declare-fun m!7790550 () Bool)

(assert (=> bs!1879854 m!7790550))

(assert (=> b!7066378 d!2209718))

(assert (=> b!7066378 d!2209690))

(declare-fun d!2209720 () Bool)

(declare-fun e!4248375 () Bool)

(assert (=> d!2209720 e!4248375))

(declare-fun res!2885613 () Bool)

(assert (=> d!2209720 (=> (not res!2885613) (not e!4248375))))

(declare-fun lt!2541633 () List!68376)

(declare-fun noDuplicate!2712 (List!68376) Bool)

(assert (=> d!2209720 (= res!2885613 (noDuplicate!2712 lt!2541633))))

(declare-fun choose!54081 ((Set Context!13224)) List!68376)

(assert (=> d!2209720 (= lt!2541633 (choose!54081 z1!570))))

(assert (=> d!2209720 (= (toList!10957 z1!570) lt!2541633)))

(declare-fun b!7066670 () Bool)

(assert (=> b!7066670 (= e!4248375 (= (content!13749 lt!2541633) z1!570))))

(assert (= (and d!2209720 res!2885613) b!7066670))

(declare-fun m!7790552 () Bool)

(assert (=> d!2209720 m!7790552))

(declare-fun m!7790554 () Bool)

(assert (=> d!2209720 m!7790554))

(declare-fun m!7790556 () Bool)

(assert (=> b!7066670 m!7790556))

(assert (=> b!7066378 d!2209720))

(declare-fun d!2209722 () Bool)

(declare-fun c!1317807 () Bool)

(assert (=> d!2209722 (= c!1317807 (isEmpty!39830 s!7408))))

(declare-fun e!4248376 () Bool)

(assert (=> d!2209722 (= (matchZipper!3156 lt!2541342 s!7408) e!4248376)))

(declare-fun b!7066671 () Bool)

(assert (=> b!7066671 (= e!4248376 (nullableZipper!2683 lt!2541342))))

(declare-fun b!7066672 () Bool)

(assert (=> b!7066672 (= e!4248376 (matchZipper!3156 (derivationStepZipper!3066 lt!2541342 (head!14389 s!7408)) (tail!13780 s!7408)))))

(assert (= (and d!2209722 c!1317807) b!7066671))

(assert (= (and d!2209722 (not c!1317807)) b!7066672))

(declare-fun m!7790558 () Bool)

(assert (=> d!2209722 m!7790558))

(declare-fun m!7790560 () Bool)

(assert (=> b!7066671 m!7790560))

(declare-fun m!7790562 () Bool)

(assert (=> b!7066672 m!7790562))

(assert (=> b!7066672 m!7790562))

(declare-fun m!7790564 () Bool)

(assert (=> b!7066672 m!7790564))

(declare-fun m!7790566 () Bool)

(assert (=> b!7066672 m!7790566))

(assert (=> b!7066672 m!7790564))

(assert (=> b!7066672 m!7790566))

(declare-fun m!7790568 () Bool)

(assert (=> b!7066672 m!7790568))

(assert (=> b!7066377 d!2209722))

(assert (=> b!7066377 d!2209682))

(declare-fun d!2209724 () Bool)

(declare-fun e!4248379 () Bool)

(assert (=> d!2209724 e!4248379))

(declare-fun res!2885616 () Bool)

(assert (=> d!2209724 (=> (not res!2885616) (not e!4248379))))

(declare-fun lt!2541636 () Context!13224)

(declare-fun dynLambda!27735 (Int Context!13224) Bool)

(assert (=> d!2209724 (= res!2885616 (dynLambda!27735 lambda!423883 lt!2541636))))

(declare-fun getWitness!1704 (List!68376 Int) Context!13224)

(assert (=> d!2209724 (= lt!2541636 (getWitness!1704 (toList!10957 lt!2541376) lambda!423883))))

(assert (=> d!2209724 (exists!3642 lt!2541376 lambda!423883)))

(assert (=> d!2209724 (= (getWitness!1702 lt!2541376 lambda!423883) lt!2541636)))

(declare-fun b!7066675 () Bool)

(assert (=> b!7066675 (= e!4248379 (set.member lt!2541636 lt!2541376))))

(assert (= (and d!2209724 res!2885616) b!7066675))

(declare-fun b_lambda!269655 () Bool)

(assert (=> (not b_lambda!269655) (not d!2209724)))

(declare-fun m!7790570 () Bool)

(assert (=> d!2209724 m!7790570))

(declare-fun m!7790572 () Bool)

(assert (=> d!2209724 m!7790572))

(assert (=> d!2209724 m!7790572))

(declare-fun m!7790574 () Bool)

(assert (=> d!2209724 m!7790574))

(assert (=> d!2209724 m!7790098))

(declare-fun m!7790576 () Bool)

(assert (=> b!7066675 m!7790576))

(assert (=> b!7066389 d!2209724))

(declare-fun d!2209726 () Bool)

(declare-fun lt!2541639 () Bool)

(assert (=> d!2209726 (= lt!2541639 (exists!3643 (toList!10957 lt!2541351) lambda!423883))))

(declare-fun choose!54082 ((Set Context!13224) Int) Bool)

(assert (=> d!2209726 (= lt!2541639 (choose!54082 lt!2541351 lambda!423883))))

(assert (=> d!2209726 (= (exists!3642 lt!2541351 lambda!423883) lt!2541639)))

(declare-fun bs!1879855 () Bool)

(assert (= bs!1879855 d!2209726))

(declare-fun m!7790578 () Bool)

(assert (=> bs!1879855 m!7790578))

(assert (=> bs!1879855 m!7790578))

(declare-fun m!7790580 () Bool)

(assert (=> bs!1879855 m!7790580))

(declare-fun m!7790582 () Bool)

(assert (=> bs!1879855 m!7790582))

(assert (=> b!7066389 d!2209726))

(declare-fun d!2209728 () Bool)

(declare-fun lt!2541640 () Bool)

(assert (=> d!2209728 (= lt!2541640 (exists!3643 (toList!10957 lt!2541376) lambda!423883))))

(assert (=> d!2209728 (= lt!2541640 (choose!54082 lt!2541376 lambda!423883))))

(assert (=> d!2209728 (= (exists!3642 lt!2541376 lambda!423883) lt!2541640)))

(declare-fun bs!1879856 () Bool)

(assert (= bs!1879856 d!2209728))

(assert (=> bs!1879856 m!7790572))

(assert (=> bs!1879856 m!7790572))

(declare-fun m!7790584 () Bool)

(assert (=> bs!1879856 m!7790584))

(declare-fun m!7790586 () Bool)

(assert (=> bs!1879856 m!7790586))

(assert (=> b!7066389 d!2209728))

(declare-fun d!2209730 () Bool)

(assert (=> d!2209730 (exists!3642 lt!2541376 lambda!423883)))

(declare-fun lt!2541643 () Unit!161932)

(declare-fun choose!54083 ((Set Context!13224) Context!13224 Int) Unit!161932)

(assert (=> d!2209730 (= lt!2541643 (choose!54083 lt!2541376 lt!2541350 lambda!423883))))

(assert (=> d!2209730 (set.member lt!2541350 lt!2541376)))

(assert (=> d!2209730 (= (lemmaContainsThenExists!148 lt!2541376 lt!2541350 lambda!423883) lt!2541643)))

(declare-fun bs!1879857 () Bool)

(assert (= bs!1879857 d!2209730))

(assert (=> bs!1879857 m!7790098))

(declare-fun m!7790588 () Bool)

(assert (=> bs!1879857 m!7790588))

(declare-fun m!7790590 () Bool)

(assert (=> bs!1879857 m!7790590))

(assert (=> b!7066389 d!2209730))

(declare-fun d!2209732 () Bool)

(assert (=> d!2209732 (exists!3642 lt!2541351 lambda!423883)))

(declare-fun lt!2541644 () Unit!161932)

(assert (=> d!2209732 (= lt!2541644 (choose!54083 lt!2541351 lt!2541318 lambda!423883))))

(assert (=> d!2209732 (set.member lt!2541318 lt!2541351)))

(assert (=> d!2209732 (= (lemmaContainsThenExists!148 lt!2541351 lt!2541318 lambda!423883) lt!2541644)))

(declare-fun bs!1879858 () Bool)

(assert (= bs!1879858 d!2209732))

(assert (=> bs!1879858 m!7790102))

(declare-fun m!7790592 () Bool)

(assert (=> bs!1879858 m!7790592))

(declare-fun m!7790594 () Bool)

(assert (=> bs!1879858 m!7790594))

(assert (=> b!7066389 d!2209732))

(declare-fun d!2209734 () Bool)

(declare-fun c!1317808 () Bool)

(assert (=> d!2209734 (= c!1317808 (isEmpty!39830 lt!2541346))))

(declare-fun e!4248381 () Bool)

(assert (=> d!2209734 (= (matchZipper!3156 lt!2541375 lt!2541346) e!4248381)))

(declare-fun b!7066676 () Bool)

(assert (=> b!7066676 (= e!4248381 (nullableZipper!2683 lt!2541375))))

(declare-fun b!7066677 () Bool)

(assert (=> b!7066677 (= e!4248381 (matchZipper!3156 (derivationStepZipper!3066 lt!2541375 (head!14389 lt!2541346)) (tail!13780 lt!2541346)))))

(assert (= (and d!2209734 c!1317808) b!7066676))

(assert (= (and d!2209734 (not c!1317808)) b!7066677))

(assert (=> d!2209734 m!7790482))

(declare-fun m!7790596 () Bool)

(assert (=> b!7066676 m!7790596))

(assert (=> b!7066677 m!7790486))

(assert (=> b!7066677 m!7790486))

(declare-fun m!7790598 () Bool)

(assert (=> b!7066677 m!7790598))

(assert (=> b!7066677 m!7790490))

(assert (=> b!7066677 m!7790598))

(assert (=> b!7066677 m!7790490))

(declare-fun m!7790600 () Bool)

(assert (=> b!7066677 m!7790600))

(assert (=> b!7066392 d!2209734))

(declare-fun bs!1879859 () Bool)

(declare-fun d!2209736 () Bool)

(assert (= bs!1879859 (and d!2209736 b!7066391)))

(declare-fun lambda!423961 () Int)

(assert (=> bs!1879859 (= lambda!423961 lambda!423879)))

(declare-fun bs!1879860 () Bool)

(assert (= bs!1879860 (and d!2209736 b!7066389)))

(assert (=> bs!1879860 (not (= lambda!423961 lambda!423883))))

(declare-fun bs!1879861 () Bool)

(assert (= bs!1879861 (and d!2209736 b!7066406)))

(assert (=> bs!1879861 (= (= s!7408 (_1!37420 lt!2541325)) (= lambda!423961 lambda!423884))))

(assert (=> d!2209736 true))

(assert (=> d!2209736 (exists!3643 lt!2541359 lambda!423961)))

(declare-fun lt!2541647 () Unit!161932)

(declare-fun choose!54084 (List!68376 List!68374) Unit!161932)

(assert (=> d!2209736 (= lt!2541647 (choose!54084 lt!2541359 s!7408))))

(assert (=> d!2209736 (matchZipper!3156 (content!13749 lt!2541359) s!7408)))

(assert (=> d!2209736 (= (lemmaZipperMatchesExistsMatchingContext!537 lt!2541359 s!7408) lt!2541647)))

(declare-fun bs!1879862 () Bool)

(assert (= bs!1879862 d!2209736))

(declare-fun m!7790602 () Bool)

(assert (=> bs!1879862 m!7790602))

(declare-fun m!7790604 () Bool)

(assert (=> bs!1879862 m!7790604))

(declare-fun m!7790606 () Bool)

(assert (=> bs!1879862 m!7790606))

(assert (=> bs!1879862 m!7790606))

(declare-fun m!7790608 () Bool)

(assert (=> bs!1879862 m!7790608))

(assert (=> b!7066391 d!2209736))

(declare-fun bs!1879863 () Bool)

(declare-fun d!2209738 () Bool)

(assert (= bs!1879863 (and d!2209738 b!7066391)))

(declare-fun lambda!423964 () Int)

(assert (=> bs!1879863 (not (= lambda!423964 lambda!423879))))

(declare-fun bs!1879864 () Bool)

(assert (= bs!1879864 (and d!2209738 b!7066389)))

(assert (=> bs!1879864 (not (= lambda!423964 lambda!423883))))

(declare-fun bs!1879865 () Bool)

(assert (= bs!1879865 (and d!2209738 b!7066406)))

(assert (=> bs!1879865 (not (= lambda!423964 lambda!423884))))

(declare-fun bs!1879866 () Bool)

(assert (= bs!1879866 (and d!2209738 d!2209736)))

(assert (=> bs!1879866 (not (= lambda!423964 lambda!423961))))

(assert (=> d!2209738 true))

(declare-fun order!28375 () Int)

(declare-fun dynLambda!27736 (Int Int) Int)

(assert (=> d!2209738 (< (dynLambda!27736 order!28375 lambda!423879) (dynLambda!27736 order!28375 lambda!423964))))

(declare-fun forall!16566 (List!68376 Int) Bool)

(assert (=> d!2209738 (= (exists!3643 lt!2541359 lambda!423879) (not (forall!16566 lt!2541359 lambda!423964)))))

(declare-fun bs!1879867 () Bool)

(assert (= bs!1879867 d!2209738))

(declare-fun m!7790610 () Bool)

(assert (=> bs!1879867 m!7790610))

(assert (=> b!7066391 d!2209738))

(declare-fun d!2209740 () Bool)

(declare-fun c!1317811 () Bool)

(assert (=> d!2209740 (= c!1317811 (isEmpty!39830 s!7408))))

(declare-fun e!4248382 () Bool)

(assert (=> d!2209740 (= (matchZipper!3156 lt!2541366 s!7408) e!4248382)))

(declare-fun b!7066680 () Bool)

(assert (=> b!7066680 (= e!4248382 (nullableZipper!2683 lt!2541366))))

(declare-fun b!7066681 () Bool)

(assert (=> b!7066681 (= e!4248382 (matchZipper!3156 (derivationStepZipper!3066 lt!2541366 (head!14389 s!7408)) (tail!13780 s!7408)))))

(assert (= (and d!2209740 c!1317811) b!7066680))

(assert (= (and d!2209740 (not c!1317811)) b!7066681))

(assert (=> d!2209740 m!7790558))

(declare-fun m!7790612 () Bool)

(assert (=> b!7066680 m!7790612))

(assert (=> b!7066681 m!7790562))

(assert (=> b!7066681 m!7790562))

(declare-fun m!7790614 () Bool)

(assert (=> b!7066681 m!7790614))

(assert (=> b!7066681 m!7790566))

(assert (=> b!7066681 m!7790614))

(assert (=> b!7066681 m!7790566))

(declare-fun m!7790616 () Bool)

(assert (=> b!7066681 m!7790616))

(assert (=> b!7066391 d!2209740))

(declare-fun d!2209742 () Bool)

(declare-fun e!4248383 () Bool)

(assert (=> d!2209742 e!4248383))

(declare-fun res!2885617 () Bool)

(assert (=> d!2209742 (=> (not res!2885617) (not e!4248383))))

(declare-fun lt!2541648 () List!68376)

(assert (=> d!2209742 (= res!2885617 (noDuplicate!2712 lt!2541648))))

(assert (=> d!2209742 (= lt!2541648 (choose!54081 lt!2541371))))

(assert (=> d!2209742 (= (toList!10957 lt!2541371) lt!2541648)))

(declare-fun b!7066682 () Bool)

(assert (=> b!7066682 (= e!4248383 (= (content!13749 lt!2541648) lt!2541371))))

(assert (= (and d!2209742 res!2885617) b!7066682))

(declare-fun m!7790618 () Bool)

(assert (=> d!2209742 m!7790618))

(declare-fun m!7790620 () Bool)

(assert (=> d!2209742 m!7790620))

(declare-fun m!7790622 () Bool)

(assert (=> b!7066682 m!7790622))

(assert (=> b!7066391 d!2209742))

(declare-fun d!2209744 () Bool)

(declare-fun e!4248384 () Bool)

(assert (=> d!2209744 e!4248384))

(declare-fun res!2885618 () Bool)

(assert (=> d!2209744 (=> (not res!2885618) (not e!4248384))))

(declare-fun lt!2541649 () Context!13224)

(assert (=> d!2209744 (= res!2885618 (dynLambda!27735 lambda!423879 lt!2541649))))

(assert (=> d!2209744 (= lt!2541649 (getWitness!1704 (toList!10957 lt!2541371) lambda!423879))))

(assert (=> d!2209744 (exists!3642 lt!2541371 lambda!423879)))

(assert (=> d!2209744 (= (getWitness!1702 lt!2541371 lambda!423879) lt!2541649)))

(declare-fun b!7066683 () Bool)

(assert (=> b!7066683 (= e!4248384 (set.member lt!2541649 lt!2541371))))

(assert (= (and d!2209744 res!2885618) b!7066683))

(declare-fun b_lambda!269657 () Bool)

(assert (=> (not b_lambda!269657) (not d!2209744)))

(declare-fun m!7790624 () Bool)

(assert (=> d!2209744 m!7790624))

(assert (=> d!2209744 m!7790044))

(assert (=> d!2209744 m!7790044))

(declare-fun m!7790626 () Bool)

(assert (=> d!2209744 m!7790626))

(declare-fun m!7790628 () Bool)

(assert (=> d!2209744 m!7790628))

(declare-fun m!7790630 () Bool)

(assert (=> b!7066683 m!7790630))

(assert (=> b!7066391 d!2209744))

(declare-fun bs!1879868 () Bool)

(declare-fun d!2209746 () Bool)

(assert (= bs!1879868 (and d!2209746 b!7066382)))

(declare-fun lambda!423967 () Int)

(assert (=> bs!1879868 (= lambda!423967 lambda!423881)))

(assert (=> d!2209746 (= (inv!86900 setElem!50112) (forall!16565 (exprs!7112 setElem!50112) lambda!423967))))

(declare-fun bs!1879869 () Bool)

(assert (= bs!1879869 d!2209746))

(declare-fun m!7790632 () Bool)

(assert (=> bs!1879869 m!7790632))

(assert (=> setNonEmpty!50112 d!2209746))

(assert (=> b!7066385 d!2209660))

(declare-fun bs!1879870 () Bool)

(declare-fun d!2209748 () Bool)

(assert (= bs!1879870 (and d!2209748 b!7066385)))

(declare-fun lambda!423970 () Int)

(assert (=> bs!1879870 (= lambda!423970 lambda!423882)))

(assert (=> d!2209748 true))

(assert (=> d!2209748 (= (derivationStepZipper!3066 lt!2541328 (h!74698 s!7408)) (flatMap!2542 lt!2541328 lambda!423970))))

(declare-fun bs!1879871 () Bool)

(assert (= bs!1879871 d!2209748))

(declare-fun m!7790634 () Bool)

(assert (=> bs!1879871 m!7790634))

(assert (=> b!7066385 d!2209748))

(declare-fun d!2209750 () Bool)

(declare-fun c!1317814 () Bool)

(declare-fun e!4248387 () Bool)

(assert (=> d!2209750 (= c!1317814 e!4248387)))

(declare-fun res!2885619 () Bool)

(assert (=> d!2209750 (=> (not res!2885619) (not e!4248387))))

(assert (=> d!2209750 (= res!2885619 (is-Cons!68251 (exprs!7112 lt!2541343)))))

(declare-fun e!4248386 () (Set Context!13224))

(assert (=> d!2209750 (= (derivationStepZipperUp!2200 lt!2541343 (h!74698 s!7408)) e!4248386)))

(declare-fun b!7066686 () Bool)

(declare-fun call!642207 () (Set Context!13224))

(assert (=> b!7066686 (= e!4248386 (set.union call!642207 (derivationStepZipperUp!2200 (Context!13225 (t!382156 (exprs!7112 lt!2541343))) (h!74698 s!7408))))))

(declare-fun b!7066687 () Bool)

(assert (=> b!7066687 (= e!4248387 (nullable!7299 (h!74699 (exprs!7112 lt!2541343))))))

(declare-fun bm!642202 () Bool)

(assert (=> bm!642202 (= call!642207 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541343)) (Context!13225 (t!382156 (exprs!7112 lt!2541343))) (h!74698 s!7408)))))

(declare-fun b!7066688 () Bool)

(declare-fun e!4248385 () (Set Context!13224))

(assert (=> b!7066688 (= e!4248385 (as set.empty (Set Context!13224)))))

(declare-fun b!7066689 () Bool)

(assert (=> b!7066689 (= e!4248386 e!4248385)))

(declare-fun c!1317815 () Bool)

(assert (=> b!7066689 (= c!1317815 (is-Cons!68251 (exprs!7112 lt!2541343)))))

(declare-fun b!7066690 () Bool)

(assert (=> b!7066690 (= e!4248385 call!642207)))

(assert (= (and d!2209750 res!2885619) b!7066687))

(assert (= (and d!2209750 c!1317814) b!7066686))

(assert (= (and d!2209750 (not c!1317814)) b!7066689))

(assert (= (and b!7066689 c!1317815) b!7066690))

(assert (= (and b!7066689 (not c!1317815)) b!7066688))

(assert (= (or b!7066686 b!7066690) bm!642202))

(declare-fun m!7790636 () Bool)

(assert (=> b!7066686 m!7790636))

(declare-fun m!7790638 () Bool)

(assert (=> b!7066687 m!7790638))

(declare-fun m!7790640 () Bool)

(assert (=> bm!642202 m!7790640))

(assert (=> b!7066385 d!2209750))

(declare-fun d!2209752 () Bool)

(assert (=> d!2209752 (= (flatMap!2542 lt!2541328 lambda!423882) (choose!54075 lt!2541328 lambda!423882))))

(declare-fun bs!1879872 () Bool)

(assert (= bs!1879872 d!2209752))

(declare-fun m!7790642 () Bool)

(assert (=> bs!1879872 m!7790642))

(assert (=> b!7066385 d!2209752))

(declare-fun d!2209754 () Bool)

(assert (=> d!2209754 (= (flatMap!2542 lt!2541328 lambda!423882) (dynLambda!27734 lambda!423882 lt!2541343))))

(declare-fun lt!2541650 () Unit!161932)

(assert (=> d!2209754 (= lt!2541650 (choose!54076 lt!2541328 lt!2541343 lambda!423882))))

(assert (=> d!2209754 (= lt!2541328 (set.insert lt!2541343 (as set.empty (Set Context!13224))))))

(assert (=> d!2209754 (= (lemmaFlatMapOnSingletonSet!2051 lt!2541328 lt!2541343 lambda!423882) lt!2541650)))

(declare-fun b_lambda!269659 () Bool)

(assert (=> (not b_lambda!269659) (not d!2209754)))

(declare-fun bs!1879873 () Bool)

(assert (= bs!1879873 d!2209754))

(assert (=> bs!1879873 m!7790114))

(declare-fun m!7790644 () Bool)

(assert (=> bs!1879873 m!7790644))

(declare-fun m!7790646 () Bool)

(assert (=> bs!1879873 m!7790646))

(assert (=> bs!1879873 m!7790162))

(assert (=> b!7066385 d!2209754))

(declare-fun d!2209756 () Bool)

(declare-fun lt!2541651 () Int)

(assert (=> d!2209756 (>= lt!2541651 0)))

(declare-fun e!4248388 () Int)

(assert (=> d!2209756 (= lt!2541651 e!4248388)))

(declare-fun c!1317816 () Bool)

(assert (=> d!2209756 (= c!1317816 (is-Cons!68252 (Cons!68252 lt!2541350 Nil!68252)))))

(assert (=> d!2209756 (= (zipperDepthTotal!581 (Cons!68252 lt!2541350 Nil!68252)) lt!2541651)))

(declare-fun b!7066691 () Bool)

(assert (=> b!7066691 (= e!4248388 (+ (contextDepthTotal!552 (h!74700 (Cons!68252 lt!2541350 Nil!68252))) (zipperDepthTotal!581 (t!382157 (Cons!68252 lt!2541350 Nil!68252)))))))

(declare-fun b!7066692 () Bool)

(assert (=> b!7066692 (= e!4248388 0)))

(assert (= (and d!2209756 c!1317816) b!7066691))

(assert (= (and d!2209756 (not c!1317816)) b!7066692))

(declare-fun m!7790648 () Bool)

(assert (=> b!7066691 m!7790648))

(declare-fun m!7790650 () Bool)

(assert (=> b!7066691 m!7790650))

(assert (=> b!7066404 d!2209756))

(declare-fun d!2209758 () Bool)

(declare-fun e!4248389 () Bool)

(assert (=> d!2209758 e!4248389))

(declare-fun res!2885620 () Bool)

(assert (=> d!2209758 (=> (not res!2885620) (not e!4248389))))

(declare-fun lt!2541652 () List!68374)

(assert (=> d!2209758 (= res!2885620 (= (content!13752 lt!2541652) (set.union (content!13752 (_1!37420 lt!2541325)) (content!13752 (_2!37420 lt!2541325)))))))

(declare-fun e!4248390 () List!68374)

(assert (=> d!2209758 (= lt!2541652 e!4248390)))

(declare-fun c!1317817 () Bool)

(assert (=> d!2209758 (= c!1317817 (is-Nil!68250 (_1!37420 lt!2541325)))))

(assert (=> d!2209758 (= (++!15730 (_1!37420 lt!2541325) (_2!37420 lt!2541325)) lt!2541652)))

(declare-fun b!7066694 () Bool)

(assert (=> b!7066694 (= e!4248390 (Cons!68250 (h!74698 (_1!37420 lt!2541325)) (++!15730 (t!382155 (_1!37420 lt!2541325)) (_2!37420 lt!2541325))))))

(declare-fun b!7066695 () Bool)

(declare-fun res!2885621 () Bool)

(assert (=> b!7066695 (=> (not res!2885621) (not e!4248389))))

(assert (=> b!7066695 (= res!2885621 (= (size!41192 lt!2541652) (+ (size!41192 (_1!37420 lt!2541325)) (size!41192 (_2!37420 lt!2541325)))))))

(declare-fun b!7066693 () Bool)

(assert (=> b!7066693 (= e!4248390 (_2!37420 lt!2541325))))

(declare-fun b!7066696 () Bool)

(assert (=> b!7066696 (= e!4248389 (or (not (= (_2!37420 lt!2541325) Nil!68250)) (= lt!2541652 (_1!37420 lt!2541325))))))

(assert (= (and d!2209758 c!1317817) b!7066693))

(assert (= (and d!2209758 (not c!1317817)) b!7066694))

(assert (= (and d!2209758 res!2885620) b!7066695))

(assert (= (and b!7066695 res!2885621) b!7066696))

(declare-fun m!7790652 () Bool)

(assert (=> d!2209758 m!7790652))

(declare-fun m!7790654 () Bool)

(assert (=> d!2209758 m!7790654))

(declare-fun m!7790656 () Bool)

(assert (=> d!2209758 m!7790656))

(declare-fun m!7790658 () Bool)

(assert (=> b!7066694 m!7790658))

(declare-fun m!7790660 () Bool)

(assert (=> b!7066695 m!7790660))

(declare-fun m!7790662 () Bool)

(assert (=> b!7066695 m!7790662))

(declare-fun m!7790664 () Bool)

(assert (=> b!7066695 m!7790664))

(assert (=> b!7066403 d!2209758))

(declare-fun d!2209760 () Bool)

(assert (=> d!2209760 (= (flatMap!2542 lt!2541342 lambda!423882) (choose!54075 lt!2541342 lambda!423882))))

(declare-fun bs!1879874 () Bool)

(assert (= bs!1879874 d!2209760))

(declare-fun m!7790666 () Bool)

(assert (=> bs!1879874 m!7790666))

(assert (=> b!7066383 d!2209760))

(assert (=> b!7066383 d!2209682))

(declare-fun d!2209762 () Bool)

(assert (=> d!2209762 (= (flatMap!2542 lt!2541342 lambda!423882) (dynLambda!27734 lambda!423882 lt!2541336))))

(declare-fun lt!2541653 () Unit!161932)

(assert (=> d!2209762 (= lt!2541653 (choose!54076 lt!2541342 lt!2541336 lambda!423882))))

(assert (=> d!2209762 (= lt!2541342 (set.insert lt!2541336 (as set.empty (Set Context!13224))))))

(assert (=> d!2209762 (= (lemmaFlatMapOnSingletonSet!2051 lt!2541342 lt!2541336 lambda!423882) lt!2541653)))

(declare-fun b_lambda!269661 () Bool)

(assert (=> (not b_lambda!269661) (not d!2209762)))

(declare-fun bs!1879875 () Bool)

(assert (= bs!1879875 d!2209762))

(assert (=> bs!1879875 m!7790150))

(declare-fun m!7790668 () Bool)

(assert (=> bs!1879875 m!7790668))

(declare-fun m!7790670 () Bool)

(assert (=> bs!1879875 m!7790670))

(assert (=> bs!1879875 m!7790156))

(assert (=> b!7066383 d!2209762))

(declare-fun d!2209764 () Bool)

(declare-fun c!1317818 () Bool)

(declare-fun e!4248393 () Bool)

(assert (=> d!2209764 (= c!1317818 e!4248393)))

(declare-fun res!2885622 () Bool)

(assert (=> d!2209764 (=> (not res!2885622) (not e!4248393))))

(assert (=> d!2209764 (= res!2885622 (is-Cons!68251 (exprs!7112 lt!2541336)))))

(declare-fun e!4248392 () (Set Context!13224))

(assert (=> d!2209764 (= (derivationStepZipperUp!2200 lt!2541336 (h!74698 s!7408)) e!4248392)))

(declare-fun b!7066697 () Bool)

(declare-fun call!642208 () (Set Context!13224))

(assert (=> b!7066697 (= e!4248392 (set.union call!642208 (derivationStepZipperUp!2200 (Context!13225 (t!382156 (exprs!7112 lt!2541336))) (h!74698 s!7408))))))

(declare-fun b!7066698 () Bool)

(assert (=> b!7066698 (= e!4248393 (nullable!7299 (h!74699 (exprs!7112 lt!2541336))))))

(declare-fun bm!642203 () Bool)

(assert (=> bm!642203 (= call!642208 (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541336)) (Context!13225 (t!382156 (exprs!7112 lt!2541336))) (h!74698 s!7408)))))

(declare-fun b!7066699 () Bool)

(declare-fun e!4248391 () (Set Context!13224))

(assert (=> b!7066699 (= e!4248391 (as set.empty (Set Context!13224)))))

(declare-fun b!7066700 () Bool)

(assert (=> b!7066700 (= e!4248392 e!4248391)))

(declare-fun c!1317819 () Bool)

(assert (=> b!7066700 (= c!1317819 (is-Cons!68251 (exprs!7112 lt!2541336)))))

(declare-fun b!7066701 () Bool)

(assert (=> b!7066701 (= e!4248391 call!642208)))

(assert (= (and d!2209764 res!2885622) b!7066698))

(assert (= (and d!2209764 c!1317818) b!7066697))

(assert (= (and d!2209764 (not c!1317818)) b!7066700))

(assert (= (and b!7066700 c!1317819) b!7066701))

(assert (= (and b!7066700 (not c!1317819)) b!7066699))

(assert (= (or b!7066697 b!7066701) bm!642203))

(declare-fun m!7790672 () Bool)

(assert (=> b!7066697 m!7790672))

(declare-fun m!7790674 () Bool)

(assert (=> b!7066698 m!7790674))

(declare-fun m!7790676 () Bool)

(assert (=> bm!642203 m!7790676))

(assert (=> b!7066383 d!2209764))

(declare-fun bs!1879876 () Bool)

(declare-fun d!2209766 () Bool)

(assert (= bs!1879876 (and d!2209766 b!7066385)))

(declare-fun lambda!423971 () Int)

(assert (=> bs!1879876 (= lambda!423971 lambda!423882)))

(declare-fun bs!1879877 () Bool)

(assert (= bs!1879877 (and d!2209766 d!2209748)))

(assert (=> bs!1879877 (= lambda!423971 lambda!423970)))

(assert (=> d!2209766 true))

(assert (=> d!2209766 (= (derivationStepZipper!3066 lt!2541342 (h!74698 s!7408)) (flatMap!2542 lt!2541342 lambda!423971))))

(declare-fun bs!1879878 () Bool)

(assert (= bs!1879878 d!2209766))

(declare-fun m!7790678 () Bool)

(assert (=> bs!1879878 m!7790678))

(assert (=> b!7066383 d!2209766))

(declare-fun b!7066702 () Bool)

(declare-fun e!4248398 () (Set Context!13224))

(declare-fun call!642209 () (Set Context!13224))

(declare-fun call!642212 () (Set Context!13224))

(assert (=> b!7066702 (= e!4248398 (set.union call!642209 call!642212))))

(declare-fun b!7066703 () Bool)

(declare-fun e!4248399 () (Set Context!13224))

(assert (=> b!7066703 (= e!4248399 e!4248398)))

(declare-fun c!1317820 () Bool)

(assert (=> b!7066703 (= c!1317820 (is-Union!17616 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun d!2209768 () Bool)

(declare-fun c!1317824 () Bool)

(assert (=> d!2209768 (= c!1317824 (and (is-ElementMatch!17616 (h!74699 (exprs!7112 lt!2541318))) (= (c!1317722 (h!74699 (exprs!7112 lt!2541318))) (h!74698 s!7408))))))

(assert (=> d!2209768 (= (derivationStepZipperDown!2250 (h!74699 (exprs!7112 lt!2541318)) lt!2541336 (h!74698 s!7408)) e!4248399)))

(declare-fun bm!642204 () Bool)

(declare-fun call!642213 () List!68375)

(declare-fun c!1317821 () Bool)

(declare-fun c!1317822 () Bool)

(assert (=> bm!642204 (= call!642213 ($colon$colon!2644 (exprs!7112 lt!2541336) (ite (or c!1317821 c!1317822) (regTwo!35744 (h!74699 (exprs!7112 lt!2541318))) (h!74699 (exprs!7112 lt!2541318)))))))

(declare-fun b!7066704 () Bool)

(declare-fun e!4248396 () (Set Context!13224))

(assert (=> b!7066704 (= e!4248396 (as set.empty (Set Context!13224)))))

(declare-fun bm!642205 () Bool)

(assert (=> bm!642205 (= call!642212 (derivationStepZipperDown!2250 (ite c!1317820 (regTwo!35745 (h!74699 (exprs!7112 lt!2541318))) (regOne!35744 (h!74699 (exprs!7112 lt!2541318)))) (ite c!1317820 lt!2541336 (Context!13225 call!642213)) (h!74698 s!7408)))))

(declare-fun b!7066705 () Bool)

(declare-fun call!642211 () (Set Context!13224))

(assert (=> b!7066705 (= e!4248396 call!642211)))

(declare-fun bm!642206 () Bool)

(declare-fun call!642214 () (Set Context!13224))

(assert (=> bm!642206 (= call!642214 call!642209)))

(declare-fun b!7066706 () Bool)

(declare-fun e!4248395 () Bool)

(assert (=> b!7066706 (= e!4248395 (nullable!7299 (regOne!35744 (h!74699 (exprs!7112 lt!2541318)))))))

(declare-fun b!7066707 () Bool)

(assert (=> b!7066707 (= e!4248399 (set.insert lt!2541336 (as set.empty (Set Context!13224))))))

(declare-fun b!7066708 () Bool)

(declare-fun e!4248397 () (Set Context!13224))

(declare-fun e!4248394 () (Set Context!13224))

(assert (=> b!7066708 (= e!4248397 e!4248394)))

(assert (=> b!7066708 (= c!1317822 (is-Concat!26461 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun b!7066709 () Bool)

(declare-fun c!1317823 () Bool)

(assert (=> b!7066709 (= c!1317823 (is-Star!17616 (h!74699 (exprs!7112 lt!2541318))))))

(assert (=> b!7066709 (= e!4248394 e!4248396)))

(declare-fun bm!642207 () Bool)

(assert (=> bm!642207 (= call!642211 call!642214)))

(declare-fun bm!642208 () Bool)

(declare-fun call!642210 () List!68375)

(assert (=> bm!642208 (= call!642210 call!642213)))

(declare-fun bm!642209 () Bool)

(assert (=> bm!642209 (= call!642209 (derivationStepZipperDown!2250 (ite c!1317820 (regOne!35745 (h!74699 (exprs!7112 lt!2541318))) (ite c!1317821 (regTwo!35744 (h!74699 (exprs!7112 lt!2541318))) (ite c!1317822 (regOne!35744 (h!74699 (exprs!7112 lt!2541318))) (reg!17945 (h!74699 (exprs!7112 lt!2541318)))))) (ite (or c!1317820 c!1317821) lt!2541336 (Context!13225 call!642210)) (h!74698 s!7408)))))

(declare-fun b!7066710 () Bool)

(assert (=> b!7066710 (= e!4248397 (set.union call!642212 call!642214))))

(declare-fun b!7066711 () Bool)

(assert (=> b!7066711 (= c!1317821 e!4248395)))

(declare-fun res!2885623 () Bool)

(assert (=> b!7066711 (=> (not res!2885623) (not e!4248395))))

(assert (=> b!7066711 (= res!2885623 (is-Concat!26461 (h!74699 (exprs!7112 lt!2541318))))))

(assert (=> b!7066711 (= e!4248398 e!4248397)))

(declare-fun b!7066712 () Bool)

(assert (=> b!7066712 (= e!4248394 call!642211)))

(assert (= (and d!2209768 c!1317824) b!7066707))

(assert (= (and d!2209768 (not c!1317824)) b!7066703))

(assert (= (and b!7066703 c!1317820) b!7066702))

(assert (= (and b!7066703 (not c!1317820)) b!7066711))

(assert (= (and b!7066711 res!2885623) b!7066706))

(assert (= (and b!7066711 c!1317821) b!7066710))

(assert (= (and b!7066711 (not c!1317821)) b!7066708))

(assert (= (and b!7066708 c!1317822) b!7066712))

(assert (= (and b!7066708 (not c!1317822)) b!7066709))

(assert (= (and b!7066709 c!1317823) b!7066705))

(assert (= (and b!7066709 (not c!1317823)) b!7066704))

(assert (= (or b!7066712 b!7066705) bm!642208))

(assert (= (or b!7066712 b!7066705) bm!642207))

(assert (= (or b!7066710 bm!642207) bm!642206))

(assert (= (or b!7066710 bm!642208) bm!642204))

(assert (= (or b!7066702 bm!642206) bm!642209))

(assert (= (or b!7066702 b!7066710) bm!642205))

(declare-fun m!7790680 () Bool)

(assert (=> bm!642209 m!7790680))

(assert (=> b!7066706 m!7790470))

(declare-fun m!7790682 () Bool)

(assert (=> bm!642204 m!7790682))

(declare-fun m!7790684 () Bool)

(assert (=> bm!642205 m!7790684))

(assert (=> b!7066707 m!7790156))

(assert (=> b!7066388 d!2209768))

(assert (=> b!7066388 d!2209682))

(assert (=> b!7066388 d!2209764))

(assert (=> b!7066388 d!2209714))

(declare-fun d!2209770 () Bool)

(assert (=> d!2209770 (isDefined!13650 (findConcatSeparationZippers!465 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 Nil!68250 s!7408 s!7408))))

(declare-fun lt!2541656 () Unit!161932)

(declare-fun choose!54085 ((Set Context!13224) (Set Context!13224) List!68374 List!68374 List!68374 List!68374 List!68374) Unit!161932)

(assert (=> d!2209770 (= lt!2541656 (choose!54085 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 (_1!37420 lt!2541325) (_2!37420 lt!2541325) s!7408 Nil!68250 s!7408))))

(assert (=> d!2209770 (matchZipper!3156 (ite c!1317721 lt!2541351 lt!2541319) (_1!37420 lt!2541325))))

(assert (=> d!2209770 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!65 (ite c!1317721 lt!2541351 lt!2541319) lt!2541329 (_1!37420 lt!2541325) (_2!37420 lt!2541325) s!7408 Nil!68250 s!7408) lt!2541656)))

(declare-fun bs!1879879 () Bool)

(assert (= bs!1879879 d!2209770))

(assert (=> bs!1879879 m!7790070))

(assert (=> bs!1879879 m!7790070))

(declare-fun m!7790686 () Bool)

(assert (=> bs!1879879 m!7790686))

(declare-fun m!7790688 () Bool)

(assert (=> bs!1879879 m!7790688))

(declare-fun m!7790690 () Bool)

(assert (=> bs!1879879 m!7790690))

(assert (=> bm!642170 d!2209770))

(declare-fun b!7066721 () Bool)

(declare-fun e!4248406 () Bool)

(declare-fun e!4248408 () Bool)

(assert (=> b!7066721 (= e!4248406 e!4248408)))

(declare-fun res!2885633 () Bool)

(assert (=> b!7066721 (=> (not res!2885633) (not e!4248408))))

(assert (=> b!7066721 (= res!2885633 (not (is-Nil!68250 (_1!37420 lt!2541325))))))

(declare-fun d!2209772 () Bool)

(declare-fun e!4248407 () Bool)

(assert (=> d!2209772 e!4248407))

(declare-fun res!2885632 () Bool)

(assert (=> d!2209772 (=> res!2885632 e!4248407)))

(declare-fun lt!2541659 () Bool)

(assert (=> d!2209772 (= res!2885632 (not lt!2541659))))

(assert (=> d!2209772 (= lt!2541659 e!4248406)))

(declare-fun res!2885634 () Bool)

(assert (=> d!2209772 (=> res!2885634 e!4248406)))

(assert (=> d!2209772 (= res!2885634 (is-Nil!68250 Nil!68250))))

(assert (=> d!2209772 (= (isPrefix!5849 Nil!68250 (_1!37420 lt!2541325)) lt!2541659)))

(declare-fun b!7066724 () Bool)

(assert (=> b!7066724 (= e!4248407 (>= (size!41192 (_1!37420 lt!2541325)) (size!41192 Nil!68250)))))

(declare-fun b!7066722 () Bool)

(declare-fun res!2885635 () Bool)

(assert (=> b!7066722 (=> (not res!2885635) (not e!4248408))))

(assert (=> b!7066722 (= res!2885635 (= (head!14389 Nil!68250) (head!14389 (_1!37420 lt!2541325))))))

(declare-fun b!7066723 () Bool)

(assert (=> b!7066723 (= e!4248408 (isPrefix!5849 (tail!13780 Nil!68250) (tail!13780 (_1!37420 lt!2541325))))))

(assert (= (and d!2209772 (not res!2885634)) b!7066721))

(assert (= (and b!7066721 res!2885633) b!7066722))

(assert (= (and b!7066722 res!2885635) b!7066723))

(assert (= (and d!2209772 (not res!2885632)) b!7066724))

(assert (=> b!7066724 m!7790662))

(assert (=> b!7066724 m!7790458))

(declare-fun m!7790692 () Bool)

(assert (=> b!7066722 m!7790692))

(assert (=> b!7066722 m!7790414))

(declare-fun m!7790694 () Bool)

(assert (=> b!7066723 m!7790694))

(assert (=> b!7066723 m!7790132))

(assert (=> b!7066723 m!7790694))

(assert (=> b!7066723 m!7790132))

(declare-fun m!7790696 () Bool)

(assert (=> b!7066723 m!7790696))

(assert (=> b!7066387 d!2209772))

(declare-fun d!2209774 () Bool)

(assert (=> d!2209774 (= (isEmpty!39830 (_1!37420 lt!2541325)) (is-Nil!68250 (_1!37420 lt!2541325)))))

(assert (=> b!7066406 d!2209774))

(declare-fun d!2209776 () Bool)

(declare-fun lt!2541660 () Bool)

(assert (=> d!2209776 (= lt!2541660 (exists!3643 (toList!10957 z1!570) lambda!423884))))

(assert (=> d!2209776 (= lt!2541660 (choose!54082 z1!570 lambda!423884))))

(assert (=> d!2209776 (= (exists!3642 z1!570 lambda!423884) lt!2541660)))

(declare-fun bs!1879880 () Bool)

(assert (= bs!1879880 d!2209776))

(assert (=> bs!1879880 m!7790076))

(assert (=> bs!1879880 m!7790076))

(declare-fun m!7790698 () Bool)

(assert (=> bs!1879880 m!7790698))

(declare-fun m!7790700 () Bool)

(assert (=> bs!1879880 m!7790700))

(assert (=> b!7066406 d!2209776))

(declare-fun bs!1879881 () Bool)

(declare-fun d!2209778 () Bool)

(assert (= bs!1879881 (and d!2209778 b!7066389)))

(declare-fun lambda!423974 () Int)

(assert (=> bs!1879881 (not (= lambda!423974 lambda!423883))))

(declare-fun bs!1879882 () Bool)

(assert (= bs!1879882 (and d!2209778 b!7066406)))

(assert (=> bs!1879882 (= lambda!423974 lambda!423884)))

(declare-fun bs!1879883 () Bool)

(assert (= bs!1879883 (and d!2209778 b!7066391)))

(assert (=> bs!1879883 (= (= (_1!37420 lt!2541325) s!7408) (= lambda!423974 lambda!423879))))

(declare-fun bs!1879884 () Bool)

(assert (= bs!1879884 (and d!2209778 d!2209738)))

(assert (=> bs!1879884 (not (= lambda!423974 lambda!423964))))

(declare-fun bs!1879885 () Bool)

(assert (= bs!1879885 (and d!2209778 d!2209736)))

(assert (=> bs!1879885 (= (= (_1!37420 lt!2541325) s!7408) (= lambda!423974 lambda!423961))))

(assert (=> d!2209778 true))

(assert (=> d!2209778 (matchZipper!3156 (content!13749 lt!2541364) (_1!37420 lt!2541325))))

(declare-fun lt!2541663 () Unit!161932)

(declare-fun choose!54086 (List!68376 List!68374) Unit!161932)

(assert (=> d!2209778 (= lt!2541663 (choose!54086 lt!2541364 (_1!37420 lt!2541325)))))

(assert (=> d!2209778 (exists!3643 lt!2541364 lambda!423974)))

(assert (=> d!2209778 (= (lemmaExistsMatchingContextThenMatchingString!45 lt!2541364 (_1!37420 lt!2541325)) lt!2541663)))

(declare-fun bs!1879886 () Bool)

(assert (= bs!1879886 d!2209778))

(assert (=> bs!1879886 m!7790020))

(assert (=> bs!1879886 m!7790020))

(assert (=> bs!1879886 m!7790022))

(declare-fun m!7790702 () Bool)

(assert (=> bs!1879886 m!7790702))

(declare-fun m!7790704 () Bool)

(assert (=> bs!1879886 m!7790704))

(assert (=> b!7066406 d!2209778))

(declare-fun d!2209780 () Bool)

(declare-fun c!1317827 () Bool)

(assert (=> d!2209780 (= c!1317827 (isEmpty!39830 (_1!37420 lt!2541325)))))

(declare-fun e!4248409 () Bool)

(assert (=> d!2209780 (= (matchZipper!3156 z1!570 (_1!37420 lt!2541325)) e!4248409)))

(declare-fun b!7066725 () Bool)

(assert (=> b!7066725 (= e!4248409 (nullableZipper!2683 z1!570))))

(declare-fun b!7066726 () Bool)

(assert (=> b!7066726 (= e!4248409 (matchZipper!3156 (derivationStepZipper!3066 z1!570 (head!14389 (_1!37420 lt!2541325))) (tail!13780 (_1!37420 lt!2541325))))))

(assert (= (and d!2209780 c!1317827) b!7066725))

(assert (= (and d!2209780 (not c!1317827)) b!7066726))

(assert (=> d!2209780 m!7790030))

(declare-fun m!7790706 () Bool)

(assert (=> b!7066725 m!7790706))

(assert (=> b!7066726 m!7790414))

(assert (=> b!7066726 m!7790414))

(declare-fun m!7790708 () Bool)

(assert (=> b!7066726 m!7790708))

(assert (=> b!7066726 m!7790132))

(assert (=> b!7066726 m!7790708))

(assert (=> b!7066726 m!7790132))

(declare-fun m!7790710 () Bool)

(assert (=> b!7066726 m!7790710))

(assert (=> b!7066406 d!2209780))

(declare-fun d!2209782 () Bool)

(declare-fun c!1317828 () Bool)

(assert (=> d!2209782 (= c!1317828 (isEmpty!39830 (_1!37420 lt!2541325)))))

(declare-fun e!4248410 () Bool)

(assert (=> d!2209782 (= (matchZipper!3156 (content!13749 lt!2541364) (_1!37420 lt!2541325)) e!4248410)))

(declare-fun b!7066727 () Bool)

(assert (=> b!7066727 (= e!4248410 (nullableZipper!2683 (content!13749 lt!2541364)))))

(declare-fun b!7066728 () Bool)

(assert (=> b!7066728 (= e!4248410 (matchZipper!3156 (derivationStepZipper!3066 (content!13749 lt!2541364) (head!14389 (_1!37420 lt!2541325))) (tail!13780 (_1!37420 lt!2541325))))))

(assert (= (and d!2209782 c!1317828) b!7066727))

(assert (= (and d!2209782 (not c!1317828)) b!7066728))

(assert (=> d!2209782 m!7790030))

(assert (=> b!7066727 m!7790020))

(declare-fun m!7790712 () Bool)

(assert (=> b!7066727 m!7790712))

(assert (=> b!7066728 m!7790414))

(assert (=> b!7066728 m!7790020))

(assert (=> b!7066728 m!7790414))

(declare-fun m!7790714 () Bool)

(assert (=> b!7066728 m!7790714))

(assert (=> b!7066728 m!7790132))

(assert (=> b!7066728 m!7790714))

(assert (=> b!7066728 m!7790132))

(declare-fun m!7790716 () Bool)

(assert (=> b!7066728 m!7790716))

(assert (=> b!7066406 d!2209782))

(declare-fun d!2209784 () Bool)

(declare-fun c!1317831 () Bool)

(assert (=> d!2209784 (= c!1317831 (is-Nil!68252 lt!2541364))))

(declare-fun e!4248413 () (Set Context!13224))

(assert (=> d!2209784 (= (content!13749 lt!2541364) e!4248413)))

(declare-fun b!7066733 () Bool)

(assert (=> b!7066733 (= e!4248413 (as set.empty (Set Context!13224)))))

(declare-fun b!7066734 () Bool)

(assert (=> b!7066734 (= e!4248413 (set.union (set.insert (h!74700 lt!2541364) (as set.empty (Set Context!13224))) (content!13749 (t!382157 lt!2541364))))))

(assert (= (and d!2209784 c!1317831) b!7066733))

(assert (= (and d!2209784 (not c!1317831)) b!7066734))

(declare-fun m!7790718 () Bool)

(assert (=> b!7066734 m!7790718))

(declare-fun m!7790720 () Bool)

(assert (=> b!7066734 m!7790720))

(assert (=> b!7066406 d!2209784))

(declare-fun d!2209786 () Bool)

(assert (=> d!2209786 (exists!3642 z1!570 lambda!423884)))

(declare-fun lt!2541664 () Unit!161932)

(assert (=> d!2209786 (= lt!2541664 (choose!54083 z1!570 lt!2541318 lambda!423884))))

(assert (=> d!2209786 (set.member lt!2541318 z1!570)))

(assert (=> d!2209786 (= (lemmaContainsThenExists!148 z1!570 lt!2541318 lambda!423884) lt!2541664)))

(declare-fun bs!1879887 () Bool)

(assert (= bs!1879887 d!2209786))

(assert (=> bs!1879887 m!7790024))

(declare-fun m!7790722 () Bool)

(assert (=> bs!1879887 m!7790722))

(assert (=> bs!1879887 m!7790010))

(assert (=> b!7066406 d!2209786))

(declare-fun d!2209788 () Bool)

(declare-fun c!1317832 () Bool)

(assert (=> d!2209788 (= c!1317832 (isEmpty!39830 (t!382155 s!7408)))))

(declare-fun e!4248414 () Bool)

(assert (=> d!2209788 (= (matchZipper!3156 lt!2541341 (t!382155 s!7408)) e!4248414)))

(declare-fun b!7066735 () Bool)

(assert (=> b!7066735 (= e!4248414 (nullableZipper!2683 lt!2541341))))

(declare-fun b!7066736 () Bool)

(assert (=> b!7066736 (= e!4248414 (matchZipper!3156 (derivationStepZipper!3066 lt!2541341 (head!14389 (t!382155 s!7408))) (tail!13780 (t!382155 s!7408))))))

(assert (= (and d!2209788 c!1317832) b!7066735))

(assert (= (and d!2209788 (not c!1317832)) b!7066736))

(assert (=> d!2209788 m!7790370))

(declare-fun m!7790724 () Bool)

(assert (=> b!7066735 m!7790724))

(assert (=> b!7066736 m!7790374))

(assert (=> b!7066736 m!7790374))

(declare-fun m!7790726 () Bool)

(assert (=> b!7066736 m!7790726))

(assert (=> b!7066736 m!7790378))

(assert (=> b!7066736 m!7790726))

(assert (=> b!7066736 m!7790378))

(declare-fun m!7790728 () Bool)

(assert (=> b!7066736 m!7790728))

(assert (=> b!7066386 d!2209788))

(declare-fun e!4248415 () Bool)

(declare-fun d!2209790 () Bool)

(assert (=> d!2209790 (= (matchZipper!3156 (set.union lt!2541326 lt!2541360) (t!382155 s!7408)) e!4248415)))

(declare-fun res!2885636 () Bool)

(assert (=> d!2209790 (=> res!2885636 e!4248415)))

(assert (=> d!2209790 (= res!2885636 (matchZipper!3156 lt!2541326 (t!382155 s!7408)))))

(declare-fun lt!2541665 () Unit!161932)

(assert (=> d!2209790 (= lt!2541665 (choose!54077 lt!2541326 lt!2541360 (t!382155 s!7408)))))

(assert (=> d!2209790 (= (lemmaZipperConcatMatchesSameAsBothZippers!1629 lt!2541326 lt!2541360 (t!382155 s!7408)) lt!2541665)))

(declare-fun b!7066737 () Bool)

(assert (=> b!7066737 (= e!4248415 (matchZipper!3156 lt!2541360 (t!382155 s!7408)))))

(assert (= (and d!2209790 (not res!2885636)) b!7066737))

(declare-fun m!7790730 () Bool)

(assert (=> d!2209790 m!7790730))

(assert (=> d!2209790 m!7790004))

(declare-fun m!7790732 () Bool)

(assert (=> d!2209790 m!7790732))

(assert (=> b!7066737 m!7790064))

(assert (=> b!7066386 d!2209790))

(assert (=> b!7066386 d!2209682))

(declare-fun d!2209792 () Bool)

(declare-fun c!1317833 () Bool)

(assert (=> d!2209792 (= c!1317833 (isEmpty!39830 (t!382155 s!7408)))))

(declare-fun e!4248416 () Bool)

(assert (=> d!2209792 (= (matchZipper!3156 lt!2541367 (t!382155 s!7408)) e!4248416)))

(declare-fun b!7066738 () Bool)

(assert (=> b!7066738 (= e!4248416 (nullableZipper!2683 lt!2541367))))

(declare-fun b!7066739 () Bool)

(assert (=> b!7066739 (= e!4248416 (matchZipper!3156 (derivationStepZipper!3066 lt!2541367 (head!14389 (t!382155 s!7408))) (tail!13780 (t!382155 s!7408))))))

(assert (= (and d!2209792 c!1317833) b!7066738))

(assert (= (and d!2209792 (not c!1317833)) b!7066739))

(assert (=> d!2209792 m!7790370))

(declare-fun m!7790734 () Bool)

(assert (=> b!7066738 m!7790734))

(assert (=> b!7066739 m!7790374))

(assert (=> b!7066739 m!7790374))

(declare-fun m!7790736 () Bool)

(assert (=> b!7066739 m!7790736))

(assert (=> b!7066739 m!7790378))

(assert (=> b!7066739 m!7790736))

(assert (=> b!7066739 m!7790378))

(declare-fun m!7790738 () Bool)

(assert (=> b!7066739 m!7790738))

(assert (=> b!7066386 d!2209792))

(declare-fun d!2209794 () Bool)

(declare-fun c!1317834 () Bool)

(assert (=> d!2209794 (= c!1317834 (isEmpty!39830 (t!382155 s!7408)))))

(declare-fun e!4248417 () Bool)

(assert (=> d!2209794 (= (matchZipper!3156 lt!2541326 (t!382155 s!7408)) e!4248417)))

(declare-fun b!7066740 () Bool)

(assert (=> b!7066740 (= e!4248417 (nullableZipper!2683 lt!2541326))))

(declare-fun b!7066741 () Bool)

(assert (=> b!7066741 (= e!4248417 (matchZipper!3156 (derivationStepZipper!3066 lt!2541326 (head!14389 (t!382155 s!7408))) (tail!13780 (t!382155 s!7408))))))

(assert (= (and d!2209794 c!1317834) b!7066740))

(assert (= (and d!2209794 (not c!1317834)) b!7066741))

(assert (=> d!2209794 m!7790370))

(declare-fun m!7790740 () Bool)

(assert (=> b!7066740 m!7790740))

(assert (=> b!7066741 m!7790374))

(assert (=> b!7066741 m!7790374))

(declare-fun m!7790742 () Bool)

(assert (=> b!7066741 m!7790742))

(assert (=> b!7066741 m!7790378))

(assert (=> b!7066741 m!7790742))

(assert (=> b!7066741 m!7790378))

(declare-fun m!7790744 () Bool)

(assert (=> b!7066741 m!7790744))

(assert (=> b!7066386 d!2209794))

(declare-fun d!2209796 () Bool)

(declare-fun c!1317835 () Bool)

(assert (=> d!2209796 (= c!1317835 (isEmpty!39830 s!7408))))

(declare-fun e!4248418 () Bool)

(assert (=> d!2209796 (= (matchZipper!3156 lt!2541371 s!7408) e!4248418)))

(declare-fun b!7066742 () Bool)

(assert (=> b!7066742 (= e!4248418 (nullableZipper!2683 lt!2541371))))

(declare-fun b!7066743 () Bool)

(assert (=> b!7066743 (= e!4248418 (matchZipper!3156 (derivationStepZipper!3066 lt!2541371 (head!14389 s!7408)) (tail!13780 s!7408)))))

(assert (= (and d!2209796 c!1317835) b!7066742))

(assert (= (and d!2209796 (not c!1317835)) b!7066743))

(assert (=> d!2209796 m!7790558))

(declare-fun m!7790746 () Bool)

(assert (=> b!7066742 m!7790746))

(assert (=> b!7066743 m!7790562))

(assert (=> b!7066743 m!7790562))

(declare-fun m!7790748 () Bool)

(assert (=> b!7066743 m!7790748))

(assert (=> b!7066743 m!7790566))

(assert (=> b!7066743 m!7790748))

(assert (=> b!7066743 m!7790566))

(declare-fun m!7790750 () Bool)

(assert (=> b!7066743 m!7790750))

(assert (=> start!686052 d!2209796))

(declare-fun bs!1879888 () Bool)

(declare-fun d!2209798 () Bool)

(assert (= bs!1879888 (and d!2209798 b!7066382)))

(declare-fun lambda!423979 () Int)

(assert (=> bs!1879888 (= lambda!423979 lambda!423880)))

(assert (=> d!2209798 true))

(assert (=> d!2209798 (= (appendTo!737 z1!570 ct2!306) (map!15957 z1!570 lambda!423979))))

(declare-fun bs!1879889 () Bool)

(assert (= bs!1879889 d!2209798))

(declare-fun m!7790752 () Bool)

(assert (=> bs!1879889 m!7790752))

(assert (=> start!686052 d!2209798))

(declare-fun bs!1879890 () Bool)

(declare-fun d!2209800 () Bool)

(assert (= bs!1879890 (and d!2209800 b!7066382)))

(declare-fun lambda!423980 () Int)

(assert (=> bs!1879890 (= lambda!423980 lambda!423881)))

(declare-fun bs!1879891 () Bool)

(assert (= bs!1879891 (and d!2209800 d!2209746)))

(assert (=> bs!1879891 (= lambda!423980 lambda!423967)))

(assert (=> d!2209800 (= (inv!86900 ct2!306) (forall!16565 (exprs!7112 ct2!306) lambda!423980))))

(declare-fun bs!1879892 () Bool)

(assert (= bs!1879892 d!2209800))

(declare-fun m!7790754 () Bool)

(assert (=> bs!1879892 m!7790754))

(assert (=> start!686052 d!2209800))

(declare-fun d!2209802 () Bool)

(declare-fun nullableFct!2798 (Regex!17616) Bool)

(assert (=> d!2209802 (= (nullable!7299 (h!74699 (exprs!7112 lt!2541318))) (nullableFct!2798 (h!74699 (exprs!7112 lt!2541318))))))

(declare-fun bs!1879893 () Bool)

(assert (= bs!1879893 d!2209802))

(declare-fun m!7790756 () Bool)

(assert (=> bs!1879893 m!7790756))

(assert (=> b!7066405 d!2209802))

(declare-fun d!2209804 () Bool)

(assert (=> d!2209804 (= (tail!13781 (exprs!7112 lt!2541318)) (t!382156 (exprs!7112 lt!2541318)))))

(assert (=> b!7066405 d!2209804))

(declare-fun b!7066748 () Bool)

(declare-fun e!4248421 () Bool)

(declare-fun tp!1941603 () Bool)

(declare-fun tp!1941604 () Bool)

(assert (=> b!7066748 (= e!4248421 (and tp!1941603 tp!1941604))))

(assert (=> b!7066390 (= tp!1941586 e!4248421)))

(assert (= (and b!7066390 (is-Cons!68251 (exprs!7112 setElem!50112))) b!7066748))

(declare-fun b!7066753 () Bool)

(declare-fun e!4248424 () Bool)

(declare-fun tp!1941607 () Bool)

(assert (=> b!7066753 (= e!4248424 (and tp_is_empty!44457 tp!1941607))))

(assert (=> b!7066384 (= tp!1941585 e!4248424)))

(assert (= (and b!7066384 (is-Cons!68250 (t!382155 s!7408))) b!7066753))

(declare-fun b!7066754 () Bool)

(declare-fun e!4248425 () Bool)

(declare-fun tp!1941608 () Bool)

(declare-fun tp!1941609 () Bool)

(assert (=> b!7066754 (= e!4248425 (and tp!1941608 tp!1941609))))

(assert (=> b!7066396 (= tp!1941584 e!4248425)))

(assert (= (and b!7066396 (is-Cons!68251 (exprs!7112 ct2!306))) b!7066754))

(declare-fun condSetEmpty!50118 () Bool)

(assert (=> setNonEmpty!50112 (= condSetEmpty!50118 (= setRest!50112 (as set.empty (Set Context!13224))))))

(declare-fun setRes!50118 () Bool)

(assert (=> setNonEmpty!50112 (= tp!1941583 setRes!50118)))

(declare-fun setIsEmpty!50118 () Bool)

(assert (=> setIsEmpty!50118 setRes!50118))

(declare-fun e!4248428 () Bool)

(declare-fun tp!1941615 () Bool)

(declare-fun setNonEmpty!50118 () Bool)

(declare-fun setElem!50118 () Context!13224)

(assert (=> setNonEmpty!50118 (= setRes!50118 (and tp!1941615 (inv!86900 setElem!50118) e!4248428))))

(declare-fun setRest!50118 () (Set Context!13224))

(assert (=> setNonEmpty!50118 (= setRest!50112 (set.union (set.insert setElem!50118 (as set.empty (Set Context!13224))) setRest!50118))))

(declare-fun b!7066759 () Bool)

(declare-fun tp!1941614 () Bool)

(assert (=> b!7066759 (= e!4248428 tp!1941614)))

(assert (= (and setNonEmpty!50112 condSetEmpty!50118) setIsEmpty!50118))

(assert (= (and setNonEmpty!50112 (not condSetEmpty!50118)) setNonEmpty!50118))

(assert (= setNonEmpty!50118 b!7066759))

(declare-fun m!7790758 () Bool)

(assert (=> setNonEmpty!50118 m!7790758))

(declare-fun b_lambda!269663 () Bool)

(assert (= b_lambda!269661 (or b!7066385 b_lambda!269663)))

(declare-fun bs!1879894 () Bool)

(declare-fun d!2209806 () Bool)

(assert (= bs!1879894 (and d!2209806 b!7066385)))

(assert (=> bs!1879894 (= (dynLambda!27734 lambda!423882 lt!2541336) (derivationStepZipperUp!2200 lt!2541336 (h!74698 s!7408)))))

(assert (=> bs!1879894 m!7790158))

(assert (=> d!2209762 d!2209806))

(declare-fun b_lambda!269665 () Bool)

(assert (= b_lambda!269657 (or b!7066391 b_lambda!269665)))

(declare-fun bs!1879895 () Bool)

(declare-fun d!2209808 () Bool)

(assert (= bs!1879895 (and d!2209808 b!7066391)))

(assert (=> bs!1879895 (= (dynLambda!27735 lambda!423879 lt!2541649) (matchZipper!3156 (set.insert lt!2541649 (as set.empty (Set Context!13224))) s!7408))))

(declare-fun m!7790760 () Bool)

(assert (=> bs!1879895 m!7790760))

(assert (=> bs!1879895 m!7790760))

(declare-fun m!7790762 () Bool)

(assert (=> bs!1879895 m!7790762))

(assert (=> d!2209744 d!2209808))

(declare-fun b_lambda!269667 () Bool)

(assert (= b_lambda!269647 (or b!7066382 b_lambda!269667)))

(declare-fun bs!1879896 () Bool)

(declare-fun d!2209810 () Bool)

(assert (= bs!1879896 (and d!2209810 b!7066382)))

(declare-fun lt!2541668 () Unit!161932)

(assert (=> bs!1879896 (= lt!2541668 (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541605) (exprs!7112 ct2!306) lambda!423881))))

(assert (=> bs!1879896 (= (dynLambda!27733 lambda!423880 lt!2541605) (Context!13225 (++!15729 (exprs!7112 lt!2541605) (exprs!7112 ct2!306))))))

(declare-fun m!7790764 () Bool)

(assert (=> bs!1879896 m!7790764))

(declare-fun m!7790766 () Bool)

(assert (=> bs!1879896 m!7790766))

(assert (=> d!2209676 d!2209810))

(declare-fun b_lambda!269669 () Bool)

(assert (= b_lambda!269653 (or b!7066382 b_lambda!269669)))

(declare-fun bs!1879897 () Bool)

(declare-fun d!2209812 () Bool)

(assert (= bs!1879897 (and d!2209812 b!7066382)))

(declare-fun lt!2541669 () Unit!161932)

(assert (=> bs!1879897 (= lt!2541669 (lemmaConcatPreservesForall!927 (exprs!7112 lt!2541350) (exprs!7112 ct2!306) lambda!423881))))

(assert (=> bs!1879897 (= (dynLambda!27733 lambda!423880 lt!2541350) (Context!13225 (++!15729 (exprs!7112 lt!2541350) (exprs!7112 ct2!306))))))

(declare-fun m!7790768 () Bool)

(assert (=> bs!1879897 m!7790768))

(declare-fun m!7790770 () Bool)

(assert (=> bs!1879897 m!7790770))

(assert (=> d!2209706 d!2209812))

(declare-fun b_lambda!269671 () Bool)

(assert (= b_lambda!269649 (or b!7066385 b_lambda!269671)))

(declare-fun bs!1879898 () Bool)

(declare-fun d!2209814 () Bool)

(assert (= bs!1879898 (and d!2209814 b!7066385)))

(assert (=> bs!1879898 (= (dynLambda!27734 lambda!423882 lt!2541318) (derivationStepZipperUp!2200 lt!2541318 (h!74698 s!7408)))))

(assert (=> bs!1879898 m!7790128))

(assert (=> d!2209696 d!2209814))

(declare-fun b_lambda!269673 () Bool)

(assert (= b_lambda!269651 (or b!7066385 b_lambda!269673)))

(declare-fun bs!1879899 () Bool)

(declare-fun d!2209816 () Bool)

(assert (= bs!1879899 (and d!2209816 b!7066385)))

(assert (=> bs!1879899 (= (dynLambda!27734 lambda!423882 lt!2541350) (derivationStepZipperUp!2200 lt!2541350 (h!74698 s!7408)))))

(assert (=> bs!1879899 m!7790088))

(assert (=> d!2209698 d!2209816))

(declare-fun b_lambda!269675 () Bool)

(assert (= b_lambda!269659 (or b!7066385 b_lambda!269675)))

(declare-fun bs!1879900 () Bool)

(declare-fun d!2209818 () Bool)

(assert (= bs!1879900 (and d!2209818 b!7066385)))

(assert (=> bs!1879900 (= (dynLambda!27734 lambda!423882 lt!2541343) (derivationStepZipperUp!2200 lt!2541343 (h!74698 s!7408)))))

(assert (=> bs!1879900 m!7790116))

(assert (=> d!2209754 d!2209818))

(declare-fun b_lambda!269677 () Bool)

(assert (= b_lambda!269655 (or b!7066389 b_lambda!269677)))

(declare-fun bs!1879901 () Bool)

(declare-fun d!2209820 () Bool)

(assert (= bs!1879901 (and d!2209820 b!7066389)))

(declare-fun nullableContext!114 (Context!13224) Bool)

(assert (=> bs!1879901 (= (dynLambda!27735 lambda!423883 lt!2541636) (nullableContext!114 lt!2541636))))

(declare-fun m!7790772 () Bool)

(assert (=> bs!1879901 m!7790772))

(assert (=> d!2209724 d!2209820))

(push 1)

(assert (not b!7066722))

(assert (not b!7066571))

(assert (not d!2209802))

(assert (not b_lambda!269663))

(assert (not d!2209656))

(assert (not b!7066540))

(assert (not b!7066644))

(assert (not b_lambda!269667))

(assert (not b!7066654))

(assert (not d!2209744))

(assert (not b!7066737))

(assert (not d!2209674))

(assert (not b!7066686))

(assert (not bm!642202))

(assert (not b!7066680))

(assert (not b!7066561))

(assert (not b!7066633))

(assert (not d!2209762))

(assert (not b!7066694))

(assert (not b_lambda!269665))

(assert (not bm!642193))

(assert (not bm!642201))

(assert (not b!7066736))

(assert (not b!7066682))

(assert (not d!2209788))

(assert (not b!7066550))

(assert (not d!2209776))

(assert (not d!2209732))

(assert (not bm!642205))

(assert (not d!2209668))

(assert (not d!2209796))

(assert (not d!2209662))

(assert (not b_lambda!269677))

(assert (not d!2209682))

(assert (not d!2209794))

(assert (not d!2209696))

(assert (not b!7066698))

(assert (not d!2209672))

(assert (not b!7066634))

(assert (not b!7066759))

(assert (not bm!642192))

(assert (not setNonEmpty!50118))

(assert (not d!2209736))

(assert (not d!2209746))

(assert (not b!7066753))

(assert (not d!2209690))

(assert (not b!7066695))

(assert (not d!2209720))

(assert (not b!7066553))

(assert (not d!2209694))

(assert (not b!7066734))

(assert (not b!7066645))

(assert (not b!7066640))

(assert (not b_lambda!269675))

(assert (not d!2209660))

(assert (not d!2209790))

(assert (not d!2209758))

(assert (not d!2209734))

(assert (not b!7066754))

(assert (not b_lambda!269673))

(assert (not bm!642209))

(assert (not b!7066549))

(assert (not d!2209678))

(assert (not b!7066537))

(assert (not b!7066638))

(assert (not b!7066738))

(assert (not b!7066542))

(assert (not d!2209740))

(assert (not d!2209722))

(assert (not b!7066660))

(assert (not d!2209688))

(assert (not b!7066724))

(assert (not b!7066551))

(assert (not b!7066588))

(assert (not d!2209726))

(assert (not b!7066534))

(assert (not b!7066557))

(assert (not b!7066646))

(assert (not b!7066641))

(assert (not bs!1879900))

(assert (not b!7066587))

(assert (not b!7066670))

(assert (not bs!1879898))

(assert (not d!2209724))

(assert (not b!7066536))

(assert (not d!2209714))

(assert (not b!7066728))

(assert (not b!7066535))

(assert (not d!2209718))

(assert (not bs!1879896))

(assert (not d!2209658))

(assert (not b!7066666))

(assert (not d!2209782))

(assert (not b!7066742))

(assert (not b!7066560))

(assert (not b!7066727))

(assert (not d!2209666))

(assert (not bs!1879895))

(assert (not bm!642204))

(assert (not b!7066664))

(assert (not b!7066548))

(assert (not bm!642197))

(assert (not bs!1879894))

(assert (not d!2209792))

(assert (not d!2209730))

(assert (not d!2209786))

(assert (not b!7066697))

(assert (not d!2209766))

(assert (not b!7066735))

(assert (not d!2209754))

(assert (not b_lambda!269671))

(assert (not b!7066559))

(assert (not d!2209800))

(assert (not d!2209664))

(assert (not b!7066572))

(assert (not bs!1879901))

(assert (not d!2209698))

(assert (not b!7066554))

(assert (not b!7066552))

(assert (not d!2209778))

(assert (not b!7066672))

(assert (not d!2209752))

(assert (not d!2209738))

(assert (not d!2209712))

(assert (not b!7066748))

(assert (not b!7066741))

(assert (not b!7066687))

(assert (not b!7066691))

(assert (not b!7066671))

(assert (not b!7066723))

(assert (not bs!1879897))

(assert (not b!7066677))

(assert (not b!7066639))

(assert (not bm!642200))

(assert (not b!7066725))

(assert (not d!2209728))

(assert (not d!2209742))

(assert (not b!7066547))

(assert (not b!7066726))

(assert (not d!2209798))

(assert (not b!7066681))

(assert tp_is_empty!44457)

(assert (not b_lambda!269669))

(assert (not b!7066663))

(assert (not b!7066739))

(assert (not d!2209706))

(assert (not d!2209760))

(assert (not d!2209700))

(assert (not bm!642203))

(assert (not b!7066743))

(assert (not d!2209780))

(assert (not d!2209748))

(assert (not d!2209770))

(assert (not b!7066706))

(assert (not b!7066740))

(assert (not b!7066676))

(assert (not d!2209654))

(assert (not b!7066616))

(assert (not d!2209704))

(assert (not d!2209676))

(assert (not bs!1879899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

