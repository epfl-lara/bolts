; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711312 () Bool)

(assert start!711312)

(declare-fun b!7296485 () Bool)

(assert (=> b!7296485 true))

(declare-fun b!7296474 () Bool)

(declare-fun e!4370173 () Bool)

(declare-fun e!4370178 () Bool)

(assert (=> b!7296474 (= e!4370173 e!4370178)))

(declare-fun res!2951201 () Bool)

(assert (=> b!7296474 (=> res!2951201 e!4370178)))

(declare-datatypes ((C!38014 0))(
  ( (C!38015 (val!28955 Int)) )
))
(declare-datatypes ((Regex!18870 0))(
  ( (ElementMatch!18870 (c!1356179 C!38014)) (Concat!27715 (regOne!38252 Regex!18870) (regTwo!38252 Regex!18870)) (EmptyExpr!18870) (Star!18870 (reg!19199 Regex!18870)) (EmptyLang!18870) (Union!18870 (regOne!38253 Regex!18870) (regTwo!38253 Regex!18870)) )
))
(declare-datatypes ((List!71057 0))(
  ( (Nil!70933) (Cons!70933 (h!77381 Regex!18870) (t!385133 List!71057)) )
))
(declare-datatypes ((Context!15620 0))(
  ( (Context!15621 (exprs!8310 List!71057)) )
))
(declare-fun ct1!250 () Context!15620)

(declare-fun nullable!8047 (Regex!18870) Bool)

(assert (=> b!7296474 (= res!2951201 (not (nullable!8047 (h!77381 (exprs!8310 ct1!250)))))))

(declare-fun lt!2598370 () (Set Context!15620))

(declare-datatypes ((List!71058 0))(
  ( (Nil!70934) (Cons!70934 (h!77382 C!38014) (t!385134 List!71058)) )
))
(declare-fun s!7854 () List!71058)

(declare-fun derivationStepZipperUp!2620 (Context!15620 C!38014) (Set Context!15620))

(assert (=> b!7296474 (= lt!2598370 (derivationStepZipperUp!2620 ct1!250 (h!77382 s!7854)))))

(declare-fun lt!2598357 () Context!15620)

(declare-fun lt!2598365 () List!71057)

(assert (=> b!7296474 (= lt!2598357 (Context!15621 lt!2598365))))

(declare-fun tail!14588 (List!71057) List!71057)

(assert (=> b!7296474 (= lt!2598365 (tail!14588 (exprs!8310 ct1!250)))))

(declare-fun b!7296475 () Bool)

(declare-fun e!4370176 () Bool)

(assert (=> b!7296475 (= e!4370178 e!4370176)))

(declare-fun res!2951199 () Bool)

(assert (=> b!7296475 (=> res!2951199 e!4370176)))

(declare-fun lt!2598372 () (Set Context!15620))

(declare-fun lt!2598368 () Context!15620)

(declare-fun derivationStepZipperDown!2776 (Regex!18870 Context!15620 C!38014) (Set Context!15620))

(assert (=> b!7296475 (= res!2951199 (not (= lt!2598372 (set.union (derivationStepZipperDown!2776 (h!77381 (exprs!8310 ct1!250)) lt!2598368 (h!77382 s!7854)) (derivationStepZipperUp!2620 lt!2598368 (h!77382 s!7854))))))))

(declare-fun ct2!346 () Context!15620)

(declare-fun ++!16760 (List!71057 List!71057) List!71057)

(assert (=> b!7296475 (= lt!2598368 (Context!15621 (++!16760 lt!2598365 (exprs!8310 ct2!346))))))

(declare-fun lambda!450554 () Int)

(declare-datatypes ((Unit!164338 0))(
  ( (Unit!164339) )
))
(declare-fun lt!2598371 () Unit!164338)

(declare-fun lemmaConcatPreservesForall!1617 (List!71057 List!71057 Int) Unit!164338)

(assert (=> b!7296475 (= lt!2598371 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598364 () Unit!164338)

(assert (=> b!7296475 (= lt!2598364 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun b!7296476 () Bool)

(declare-fun e!4370179 () Bool)

(declare-fun tp_is_empty!47205 () Bool)

(declare-fun tp!2062441 () Bool)

(assert (=> b!7296476 (= e!4370179 (and tp_is_empty!47205 tp!2062441))))

(declare-fun b!7296477 () Bool)

(declare-fun res!2951200 () Bool)

(declare-fun e!4370177 () Bool)

(assert (=> b!7296477 (=> (not res!2951200) (not e!4370177))))

(declare-fun nullableContext!360 (Context!15620) Bool)

(assert (=> b!7296477 (= res!2951200 (nullableContext!360 ct1!250))))

(declare-fun b!7296478 () Bool)

(declare-fun res!2951198 () Bool)

(assert (=> b!7296478 (=> res!2951198 e!4370173)))

(assert (=> b!7296478 (= res!2951198 (not (is-Cons!70933 (exprs!8310 ct1!250))))))

(declare-fun res!2951203 () Bool)

(assert (=> start!711312 (=> (not res!2951203) (not e!4370177))))

(declare-fun matchZipper!3774 ((Set Context!15620) List!71058) Bool)

(assert (=> start!711312 (= res!2951203 (matchZipper!3774 (set.insert ct2!346 (as set.empty (Set Context!15620))) s!7854))))

(assert (=> start!711312 e!4370177))

(declare-fun e!4370175 () Bool)

(declare-fun inv!90186 (Context!15620) Bool)

(assert (=> start!711312 (and (inv!90186 ct2!346) e!4370175)))

(assert (=> start!711312 e!4370179))

(declare-fun e!4370174 () Bool)

(assert (=> start!711312 (and (inv!90186 ct1!250) e!4370174)))

(declare-fun b!7296479 () Bool)

(assert (=> b!7296479 (= e!4370176 (inv!90186 lt!2598368))))

(declare-fun lt!2598360 () Unit!164338)

(assert (=> b!7296479 (= lt!2598360 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lambda!450555 () Int)

(declare-fun lt!2598366 () (Set Context!15620))

(declare-fun flatMap!2965 ((Set Context!15620) Int) (Set Context!15620))

(assert (=> b!7296479 (= (flatMap!2965 lt!2598366 lambda!450555) (derivationStepZipperUp!2620 lt!2598368 (h!77382 s!7854)))))

(declare-fun lt!2598367 () Unit!164338)

(declare-fun lemmaFlatMapOnSingletonSet!2363 ((Set Context!15620) Context!15620 Int) Unit!164338)

(assert (=> b!7296479 (= lt!2598367 (lemmaFlatMapOnSingletonSet!2363 lt!2598366 lt!2598368 lambda!450555))))

(declare-fun lt!2598374 () Unit!164338)

(assert (=> b!7296479 (= lt!2598374 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598369 () Unit!164338)

(assert (=> b!7296479 (= lt!2598369 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598363 () Unit!164338)

(assert (=> b!7296479 (= lt!2598363 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(assert (=> b!7296479 (matchZipper!3774 lt!2598366 s!7854)))

(assert (=> b!7296479 (= lt!2598366 (set.insert lt!2598368 (as set.empty (Set Context!15620))))))

(declare-fun lt!2598376 () Unit!164338)

(assert (=> b!7296479 (= lt!2598376 (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598362 () Unit!164338)

(declare-fun lemmaPrependingNullableCtxStillMatches!53 (Context!15620 Context!15620 List!71058) Unit!164338)

(assert (=> b!7296479 (= lt!2598362 (lemmaPrependingNullableCtxStillMatches!53 lt!2598357 ct2!346 s!7854))))

(declare-fun b!7296480 () Bool)

(declare-fun res!2951206 () Bool)

(assert (=> b!7296480 (=> res!2951206 e!4370173)))

(declare-fun isEmpty!40805 (List!71057) Bool)

(assert (=> b!7296480 (= res!2951206 (isEmpty!40805 (exprs!8310 ct1!250)))))

(declare-fun b!7296481 () Bool)

(declare-fun tp!2062443 () Bool)

(assert (=> b!7296481 (= e!4370174 tp!2062443)))

(declare-fun b!7296482 () Bool)

(declare-fun res!2951205 () Bool)

(assert (=> b!7296482 (=> (not res!2951205) (not e!4370177))))

(assert (=> b!7296482 (= res!2951205 (is-Cons!70934 s!7854))))

(declare-fun b!7296483 () Bool)

(declare-fun res!2951202 () Bool)

(assert (=> b!7296483 (=> res!2951202 e!4370178)))

(assert (=> b!7296483 (= res!2951202 (not (= lt!2598370 (set.union (derivationStepZipperDown!2776 (h!77381 (exprs!8310 ct1!250)) lt!2598357 (h!77382 s!7854)) (derivationStepZipperUp!2620 lt!2598357 (h!77382 s!7854))))))))

(declare-fun b!7296484 () Bool)

(declare-fun tp!2062442 () Bool)

(assert (=> b!7296484 (= e!4370175 tp!2062442)))

(assert (=> b!7296485 (= e!4370177 (not e!4370173))))

(declare-fun res!2951204 () Bool)

(assert (=> b!7296485 (=> res!2951204 e!4370173)))

(declare-fun lt!2598373 () (Set Context!15620))

(declare-fun derivationStepZipper!3603 ((Set Context!15620) C!38014) (Set Context!15620))

(assert (=> b!7296485 (= res!2951204 (not (= lt!2598372 (derivationStepZipper!3603 lt!2598373 (h!77382 s!7854)))))))

(declare-fun lt!2598361 () Unit!164338)

(assert (=> b!7296485 (= lt!2598361 (lemmaConcatPreservesForall!1617 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598356 () Context!15620)

(assert (=> b!7296485 (= (flatMap!2965 lt!2598373 lambda!450555) (derivationStepZipperUp!2620 lt!2598356 (h!77382 s!7854)))))

(declare-fun lt!2598354 () Unit!164338)

(assert (=> b!7296485 (= lt!2598354 (lemmaFlatMapOnSingletonSet!2363 lt!2598373 lt!2598356 lambda!450555))))

(assert (=> b!7296485 (= lt!2598373 (set.insert lt!2598356 (as set.empty (Set Context!15620))))))

(declare-fun lt!2598358 () Unit!164338)

(assert (=> b!7296485 (= lt!2598358 (lemmaConcatPreservesForall!1617 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598355 () Unit!164338)

(assert (=> b!7296485 (= lt!2598355 (lemmaConcatPreservesForall!1617 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554))))

(declare-fun lt!2598375 () (Set Context!15620))

(assert (=> b!7296485 (= (flatMap!2965 lt!2598375 lambda!450555) (derivationStepZipperUp!2620 ct1!250 (h!77382 s!7854)))))

(declare-fun lt!2598359 () Unit!164338)

(assert (=> b!7296485 (= lt!2598359 (lemmaFlatMapOnSingletonSet!2363 lt!2598375 ct1!250 lambda!450555))))

(assert (=> b!7296485 (= lt!2598375 (set.insert ct1!250 (as set.empty (Set Context!15620))))))

(assert (=> b!7296485 (= lt!2598372 (derivationStepZipperUp!2620 lt!2598356 (h!77382 s!7854)))))

(assert (=> b!7296485 (= lt!2598356 (Context!15621 (++!16760 (exprs!8310 ct1!250) (exprs!8310 ct2!346))))))

(declare-fun lt!2598377 () Unit!164338)

(assert (=> b!7296485 (= lt!2598377 (lemmaConcatPreservesForall!1617 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554))))

(assert (= (and start!711312 res!2951203) b!7296477))

(assert (= (and b!7296477 res!2951200) b!7296482))

(assert (= (and b!7296482 res!2951205) b!7296485))

(assert (= (and b!7296485 (not res!2951204)) b!7296478))

(assert (= (and b!7296478 (not res!2951198)) b!7296480))

(assert (= (and b!7296480 (not res!2951206)) b!7296474))

(assert (= (and b!7296474 (not res!2951201)) b!7296483))

(assert (= (and b!7296483 (not res!2951202)) b!7296475))

(assert (= (and b!7296475 (not res!2951199)) b!7296479))

(assert (= start!711312 b!7296484))

(assert (= (and start!711312 (is-Cons!70934 s!7854)) b!7296476))

(assert (= start!711312 b!7296481))

(declare-fun m!7968302 () Bool)

(assert (=> b!7296475 m!7968302))

(declare-fun m!7968304 () Bool)

(assert (=> b!7296475 m!7968304))

(declare-fun m!7968306 () Bool)

(assert (=> b!7296475 m!7968306))

(declare-fun m!7968308 () Bool)

(assert (=> b!7296475 m!7968308))

(assert (=> b!7296475 m!7968308))

(declare-fun m!7968310 () Bool)

(assert (=> b!7296474 m!7968310))

(declare-fun m!7968312 () Bool)

(assert (=> b!7296474 m!7968312))

(declare-fun m!7968314 () Bool)

(assert (=> b!7296474 m!7968314))

(declare-fun m!7968316 () Bool)

(assert (=> b!7296483 m!7968316))

(declare-fun m!7968318 () Bool)

(assert (=> b!7296483 m!7968318))

(declare-fun m!7968320 () Bool)

(assert (=> start!711312 m!7968320))

(assert (=> start!711312 m!7968320))

(declare-fun m!7968322 () Bool)

(assert (=> start!711312 m!7968322))

(declare-fun m!7968324 () Bool)

(assert (=> start!711312 m!7968324))

(declare-fun m!7968326 () Bool)

(assert (=> start!711312 m!7968326))

(declare-fun m!7968328 () Bool)

(assert (=> b!7296480 m!7968328))

(declare-fun m!7968330 () Bool)

(assert (=> b!7296479 m!7968330))

(declare-fun m!7968332 () Bool)

(assert (=> b!7296479 m!7968332))

(declare-fun m!7968334 () Bool)

(assert (=> b!7296479 m!7968334))

(declare-fun m!7968336 () Bool)

(assert (=> b!7296479 m!7968336))

(assert (=> b!7296479 m!7968308))

(assert (=> b!7296479 m!7968308))

(assert (=> b!7296479 m!7968304))

(assert (=> b!7296479 m!7968308))

(assert (=> b!7296479 m!7968308))

(declare-fun m!7968338 () Bool)

(assert (=> b!7296479 m!7968338))

(assert (=> b!7296479 m!7968308))

(declare-fun m!7968340 () Bool)

(assert (=> b!7296479 m!7968340))

(declare-fun m!7968342 () Bool)

(assert (=> b!7296477 m!7968342))

(declare-fun m!7968344 () Bool)

(assert (=> b!7296485 m!7968344))

(declare-fun m!7968346 () Bool)

(assert (=> b!7296485 m!7968346))

(declare-fun m!7968348 () Bool)

(assert (=> b!7296485 m!7968348))

(declare-fun m!7968350 () Bool)

(assert (=> b!7296485 m!7968350))

(declare-fun m!7968352 () Bool)

(assert (=> b!7296485 m!7968352))

(assert (=> b!7296485 m!7968346))

(declare-fun m!7968354 () Bool)

(assert (=> b!7296485 m!7968354))

(declare-fun m!7968356 () Bool)

(assert (=> b!7296485 m!7968356))

(assert (=> b!7296485 m!7968346))

(assert (=> b!7296485 m!7968312))

(assert (=> b!7296485 m!7968346))

(declare-fun m!7968358 () Bool)

(assert (=> b!7296485 m!7968358))

(declare-fun m!7968360 () Bool)

(assert (=> b!7296485 m!7968360))

(declare-fun m!7968362 () Bool)

(assert (=> b!7296485 m!7968362))

(push 1)

(assert (not start!711312))

(assert (not b!7296474))

(assert (not b!7296476))

(assert (not b!7296481))

(assert (not b!7296484))

(assert (not b!7296479))

(assert (not b!7296485))

(assert (not b!7296480))

(assert (not b!7296477))

(assert (not b!7296475))

(assert (not b!7296483))

(assert tp_is_empty!47205)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2267072 () Bool)

(declare-fun choose!56541 ((Set Context!15620) Int) (Set Context!15620))

(assert (=> d!2267072 (= (flatMap!2965 lt!2598375 lambda!450555) (choose!56541 lt!2598375 lambda!450555))))

(declare-fun bs!1913049 () Bool)

(assert (= bs!1913049 d!2267072))

(declare-fun m!7968426 () Bool)

(assert (=> bs!1913049 m!7968426))

(assert (=> b!7296485 d!2267072))

(declare-fun d!2267074 () Bool)

(declare-fun dynLambda!29007 (Int Context!15620) (Set Context!15620))

(assert (=> d!2267074 (= (flatMap!2965 lt!2598375 lambda!450555) (dynLambda!29007 lambda!450555 ct1!250))))

(declare-fun lt!2598452 () Unit!164338)

(declare-fun choose!56542 ((Set Context!15620) Context!15620 Int) Unit!164338)

(assert (=> d!2267074 (= lt!2598452 (choose!56542 lt!2598375 ct1!250 lambda!450555))))

(assert (=> d!2267074 (= lt!2598375 (set.insert ct1!250 (as set.empty (Set Context!15620))))))

(assert (=> d!2267074 (= (lemmaFlatMapOnSingletonSet!2363 lt!2598375 ct1!250 lambda!450555) lt!2598452)))

(declare-fun b_lambda!281405 () Bool)

(assert (=> (not b_lambda!281405) (not d!2267074)))

(declare-fun bs!1913050 () Bool)

(assert (= bs!1913050 d!2267074))

(assert (=> bs!1913050 m!7968362))

(declare-fun m!7968428 () Bool)

(assert (=> bs!1913050 m!7968428))

(declare-fun m!7968430 () Bool)

(assert (=> bs!1913050 m!7968430))

(assert (=> bs!1913050 m!7968352))

(assert (=> b!7296485 d!2267074))

(declare-fun d!2267076 () Bool)

(assert (=> d!2267076 (= (flatMap!2965 lt!2598373 lambda!450555) (dynLambda!29007 lambda!450555 lt!2598356))))

(declare-fun lt!2598453 () Unit!164338)

(assert (=> d!2267076 (= lt!2598453 (choose!56542 lt!2598373 lt!2598356 lambda!450555))))

(assert (=> d!2267076 (= lt!2598373 (set.insert lt!2598356 (as set.empty (Set Context!15620))))))

(assert (=> d!2267076 (= (lemmaFlatMapOnSingletonSet!2363 lt!2598373 lt!2598356 lambda!450555) lt!2598453)))

(declare-fun b_lambda!281407 () Bool)

(assert (=> (not b_lambda!281407) (not d!2267076)))

(declare-fun bs!1913051 () Bool)

(assert (= bs!1913051 d!2267076))

(assert (=> bs!1913051 m!7968350))

(declare-fun m!7968432 () Bool)

(assert (=> bs!1913051 m!7968432))

(declare-fun m!7968434 () Bool)

(assert (=> bs!1913051 m!7968434))

(assert (=> bs!1913051 m!7968354))

(assert (=> b!7296485 d!2267076))

(declare-fun d!2267078 () Bool)

(declare-fun e!4370206 () Bool)

(assert (=> d!2267078 e!4370206))

(declare-fun res!2951239 () Bool)

(assert (=> d!2267078 (=> (not res!2951239) (not e!4370206))))

(declare-fun lt!2598456 () List!71057)

(declare-fun content!14818 (List!71057) (Set Regex!18870))

(assert (=> d!2267078 (= res!2951239 (= (content!14818 lt!2598456) (set.union (content!14818 (exprs!8310 ct1!250)) (content!14818 (exprs!8310 ct2!346)))))))

(declare-fun e!4370205 () List!71057)

(assert (=> d!2267078 (= lt!2598456 e!4370205)))

(declare-fun c!1356189 () Bool)

(assert (=> d!2267078 (= c!1356189 (is-Nil!70933 (exprs!8310 ct1!250)))))

(assert (=> d!2267078 (= (++!16760 (exprs!8310 ct1!250) (exprs!8310 ct2!346)) lt!2598456)))

(declare-fun b!7296537 () Bool)

(assert (=> b!7296537 (= e!4370206 (or (not (= (exprs!8310 ct2!346) Nil!70933)) (= lt!2598456 (exprs!8310 ct1!250))))))

(declare-fun b!7296536 () Bool)

(declare-fun res!2951238 () Bool)

(assert (=> b!7296536 (=> (not res!2951238) (not e!4370206))))

(declare-fun size!41864 (List!71057) Int)

(assert (=> b!7296536 (= res!2951238 (= (size!41864 lt!2598456) (+ (size!41864 (exprs!8310 ct1!250)) (size!41864 (exprs!8310 ct2!346)))))))

(declare-fun b!7296535 () Bool)

(assert (=> b!7296535 (= e!4370205 (Cons!70933 (h!77381 (exprs!8310 ct1!250)) (++!16760 (t!385133 (exprs!8310 ct1!250)) (exprs!8310 ct2!346))))))

(declare-fun b!7296534 () Bool)

(assert (=> b!7296534 (= e!4370205 (exprs!8310 ct2!346))))

(assert (= (and d!2267078 c!1356189) b!7296534))

(assert (= (and d!2267078 (not c!1356189)) b!7296535))

(assert (= (and d!2267078 res!2951239) b!7296536))

(assert (= (and b!7296536 res!2951238) b!7296537))

(declare-fun m!7968436 () Bool)

(assert (=> d!2267078 m!7968436))

(declare-fun m!7968438 () Bool)

(assert (=> d!2267078 m!7968438))

(declare-fun m!7968440 () Bool)

(assert (=> d!2267078 m!7968440))

(declare-fun m!7968442 () Bool)

(assert (=> b!7296536 m!7968442))

(declare-fun m!7968444 () Bool)

(assert (=> b!7296536 m!7968444))

(declare-fun m!7968446 () Bool)

(assert (=> b!7296536 m!7968446))

(declare-fun m!7968448 () Bool)

(assert (=> b!7296535 m!7968448))

(assert (=> b!7296485 d!2267078))

(declare-fun bs!1913052 () Bool)

(declare-fun d!2267080 () Bool)

(assert (= bs!1913052 (and d!2267080 b!7296485)))

(declare-fun lambda!450588 () Int)

(assert (=> bs!1913052 (= lambda!450588 lambda!450555)))

(assert (=> d!2267080 true))

(assert (=> d!2267080 (= (derivationStepZipper!3603 lt!2598373 (h!77382 s!7854)) (flatMap!2965 lt!2598373 lambda!450588))))

(declare-fun bs!1913053 () Bool)

(assert (= bs!1913053 d!2267080))

(declare-fun m!7968450 () Bool)

(assert (=> bs!1913053 m!7968450))

(assert (=> b!7296485 d!2267080))

(declare-fun d!2267082 () Bool)

(declare-fun c!1356197 () Bool)

(declare-fun e!4370213 () Bool)

(assert (=> d!2267082 (= c!1356197 e!4370213)))

(declare-fun res!2951242 () Bool)

(assert (=> d!2267082 (=> (not res!2951242) (not e!4370213))))

(assert (=> d!2267082 (= res!2951242 (is-Cons!70933 (exprs!8310 lt!2598356)))))

(declare-fun e!4370214 () (Set Context!15620))

(assert (=> d!2267082 (= (derivationStepZipperUp!2620 lt!2598356 (h!77382 s!7854)) e!4370214)))

(declare-fun b!7296550 () Bool)

(declare-fun e!4370215 () (Set Context!15620))

(assert (=> b!7296550 (= e!4370214 e!4370215)))

(declare-fun c!1356196 () Bool)

(assert (=> b!7296550 (= c!1356196 (is-Cons!70933 (exprs!8310 lt!2598356)))))

(declare-fun b!7296551 () Bool)

(declare-fun call!664834 () (Set Context!15620))

(assert (=> b!7296551 (= e!4370214 (set.union call!664834 (derivationStepZipperUp!2620 (Context!15621 (t!385133 (exprs!8310 lt!2598356))) (h!77382 s!7854))))))

(declare-fun b!7296552 () Bool)

(assert (=> b!7296552 (= e!4370213 (nullable!8047 (h!77381 (exprs!8310 lt!2598356))))))

(declare-fun b!7296553 () Bool)

(assert (=> b!7296553 (= e!4370215 (as set.empty (Set Context!15620)))))

(declare-fun bm!664829 () Bool)

(assert (=> bm!664829 (= call!664834 (derivationStepZipperDown!2776 (h!77381 (exprs!8310 lt!2598356)) (Context!15621 (t!385133 (exprs!8310 lt!2598356))) (h!77382 s!7854)))))

(declare-fun b!7296554 () Bool)

(assert (=> b!7296554 (= e!4370215 call!664834)))

(assert (= (and d!2267082 res!2951242) b!7296552))

(assert (= (and d!2267082 c!1356197) b!7296551))

(assert (= (and d!2267082 (not c!1356197)) b!7296550))

(assert (= (and b!7296550 c!1356196) b!7296554))

(assert (= (and b!7296550 (not c!1356196)) b!7296553))

(assert (= (or b!7296551 b!7296554) bm!664829))

(declare-fun m!7968452 () Bool)

(assert (=> b!7296551 m!7968452))

(declare-fun m!7968454 () Bool)

(assert (=> b!7296552 m!7968454))

(declare-fun m!7968456 () Bool)

(assert (=> bm!664829 m!7968456))

(assert (=> b!7296485 d!2267082))

(declare-fun d!2267084 () Bool)

(declare-fun c!1356199 () Bool)

(declare-fun e!4370216 () Bool)

(assert (=> d!2267084 (= c!1356199 e!4370216)))

(declare-fun res!2951243 () Bool)

(assert (=> d!2267084 (=> (not res!2951243) (not e!4370216))))

(assert (=> d!2267084 (= res!2951243 (is-Cons!70933 (exprs!8310 ct1!250)))))

(declare-fun e!4370217 () (Set Context!15620))

(assert (=> d!2267084 (= (derivationStepZipperUp!2620 ct1!250 (h!77382 s!7854)) e!4370217)))

(declare-fun b!7296555 () Bool)

(declare-fun e!4370218 () (Set Context!15620))

(assert (=> b!7296555 (= e!4370217 e!4370218)))

(declare-fun c!1356198 () Bool)

(assert (=> b!7296555 (= c!1356198 (is-Cons!70933 (exprs!8310 ct1!250)))))

(declare-fun b!7296556 () Bool)

(declare-fun call!664835 () (Set Context!15620))

(assert (=> b!7296556 (= e!4370217 (set.union call!664835 (derivationStepZipperUp!2620 (Context!15621 (t!385133 (exprs!8310 ct1!250))) (h!77382 s!7854))))))

(declare-fun b!7296557 () Bool)

(assert (=> b!7296557 (= e!4370216 (nullable!8047 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun b!7296558 () Bool)

(assert (=> b!7296558 (= e!4370218 (as set.empty (Set Context!15620)))))

(declare-fun bm!664830 () Bool)

(assert (=> bm!664830 (= call!664835 (derivationStepZipperDown!2776 (h!77381 (exprs!8310 ct1!250)) (Context!15621 (t!385133 (exprs!8310 ct1!250))) (h!77382 s!7854)))))

(declare-fun b!7296559 () Bool)

(assert (=> b!7296559 (= e!4370218 call!664835)))

(assert (= (and d!2267084 res!2951243) b!7296557))

(assert (= (and d!2267084 c!1356199) b!7296556))

(assert (= (and d!2267084 (not c!1356199)) b!7296555))

(assert (= (and b!7296555 c!1356198) b!7296559))

(assert (= (and b!7296555 (not c!1356198)) b!7296558))

(assert (= (or b!7296556 b!7296559) bm!664830))

(declare-fun m!7968458 () Bool)

(assert (=> b!7296556 m!7968458))

(assert (=> b!7296557 m!7968310))

(declare-fun m!7968460 () Bool)

(assert (=> bm!664830 m!7968460))

(assert (=> b!7296485 d!2267084))

(declare-fun d!2267086 () Bool)

(declare-fun forall!17691 (List!71057 Int) Bool)

(assert (=> d!2267086 (forall!17691 (++!16760 (exprs!8310 ct1!250) (exprs!8310 ct2!346)) lambda!450554)))

(declare-fun lt!2598459 () Unit!164338)

(declare-fun choose!56543 (List!71057 List!71057 Int) Unit!164338)

(assert (=> d!2267086 (= lt!2598459 (choose!56543 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554))))

(assert (=> d!2267086 (forall!17691 (exprs!8310 ct1!250) lambda!450554)))

(assert (=> d!2267086 (= (lemmaConcatPreservesForall!1617 (exprs!8310 ct1!250) (exprs!8310 ct2!346) lambda!450554) lt!2598459)))

(declare-fun bs!1913054 () Bool)

(assert (= bs!1913054 d!2267086))

(assert (=> bs!1913054 m!7968360))

(assert (=> bs!1913054 m!7968360))

(declare-fun m!7968462 () Bool)

(assert (=> bs!1913054 m!7968462))

(declare-fun m!7968464 () Bool)

(assert (=> bs!1913054 m!7968464))

(declare-fun m!7968466 () Bool)

(assert (=> bs!1913054 m!7968466))

(assert (=> b!7296485 d!2267086))

(declare-fun d!2267088 () Bool)

(assert (=> d!2267088 (= (flatMap!2965 lt!2598373 lambda!450555) (choose!56541 lt!2598373 lambda!450555))))

(declare-fun bs!1913055 () Bool)

(assert (= bs!1913055 d!2267088))

(declare-fun m!7968468 () Bool)

(assert (=> bs!1913055 m!7968468))

(assert (=> b!7296485 d!2267088))

(declare-fun d!2267090 () Bool)

(declare-fun nullableFct!3182 (Regex!18870) Bool)

(assert (=> d!2267090 (= (nullable!8047 (h!77381 (exprs!8310 ct1!250))) (nullableFct!3182 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun bs!1913056 () Bool)

(assert (= bs!1913056 d!2267090))

(declare-fun m!7968470 () Bool)

(assert (=> bs!1913056 m!7968470))

(assert (=> b!7296474 d!2267090))

(assert (=> b!7296474 d!2267084))

(declare-fun d!2267092 () Bool)

(assert (=> d!2267092 (= (tail!14588 (exprs!8310 ct1!250)) (t!385133 (exprs!8310 ct1!250)))))

(assert (=> b!7296474 d!2267092))

(declare-fun d!2267094 () Bool)

(declare-fun c!1356202 () Bool)

(declare-fun isEmpty!40807 (List!71058) Bool)

(assert (=> d!2267094 (= c!1356202 (isEmpty!40807 s!7854))))

(declare-fun e!4370221 () Bool)

(assert (=> d!2267094 (= (matchZipper!3774 (set.insert ct2!346 (as set.empty (Set Context!15620))) s!7854) e!4370221)))

(declare-fun b!7296564 () Bool)

(declare-fun nullableZipper!3061 ((Set Context!15620)) Bool)

(assert (=> b!7296564 (= e!4370221 (nullableZipper!3061 (set.insert ct2!346 (as set.empty (Set Context!15620)))))))

(declare-fun b!7296565 () Bool)

(declare-fun head!15059 (List!71058) C!38014)

(declare-fun tail!14590 (List!71058) List!71058)

(assert (=> b!7296565 (= e!4370221 (matchZipper!3774 (derivationStepZipper!3603 (set.insert ct2!346 (as set.empty (Set Context!15620))) (head!15059 s!7854)) (tail!14590 s!7854)))))

(assert (= (and d!2267094 c!1356202) b!7296564))

(assert (= (and d!2267094 (not c!1356202)) b!7296565))

(declare-fun m!7968472 () Bool)

(assert (=> d!2267094 m!7968472))

(assert (=> b!7296564 m!7968320))

(declare-fun m!7968474 () Bool)

(assert (=> b!7296564 m!7968474))

(declare-fun m!7968476 () Bool)

(assert (=> b!7296565 m!7968476))

(assert (=> b!7296565 m!7968320))

(assert (=> b!7296565 m!7968476))

(declare-fun m!7968478 () Bool)

(assert (=> b!7296565 m!7968478))

(declare-fun m!7968480 () Bool)

(assert (=> b!7296565 m!7968480))

(assert (=> b!7296565 m!7968478))

(assert (=> b!7296565 m!7968480))

(declare-fun m!7968482 () Bool)

(assert (=> b!7296565 m!7968482))

(assert (=> start!711312 d!2267094))

(declare-fun bs!1913057 () Bool)

(declare-fun d!2267100 () Bool)

(assert (= bs!1913057 (and d!2267100 b!7296485)))

(declare-fun lambda!450591 () Int)

(assert (=> bs!1913057 (= lambda!450591 lambda!450554)))

(assert (=> d!2267100 (= (inv!90186 ct2!346) (forall!17691 (exprs!8310 ct2!346) lambda!450591))))

(declare-fun bs!1913058 () Bool)

(assert (= bs!1913058 d!2267100))

(declare-fun m!7968484 () Bool)

(assert (=> bs!1913058 m!7968484))

(assert (=> start!711312 d!2267100))

(declare-fun bs!1913059 () Bool)

(declare-fun d!2267102 () Bool)

(assert (= bs!1913059 (and d!2267102 b!7296485)))

(declare-fun lambda!450592 () Int)

(assert (=> bs!1913059 (= lambda!450592 lambda!450554)))

(declare-fun bs!1913060 () Bool)

(assert (= bs!1913060 (and d!2267102 d!2267100)))

(assert (=> bs!1913060 (= lambda!450592 lambda!450591)))

(assert (=> d!2267102 (= (inv!90186 ct1!250) (forall!17691 (exprs!8310 ct1!250) lambda!450592))))

(declare-fun bs!1913061 () Bool)

(assert (= bs!1913061 d!2267102))

(declare-fun m!7968486 () Bool)

(assert (=> bs!1913061 m!7968486))

(assert (=> start!711312 d!2267102))

(declare-fun bm!664846 () Bool)

(declare-fun call!664856 () List!71057)

(declare-fun call!664854 () List!71057)

(assert (=> bm!664846 (= call!664856 call!664854)))

(declare-fun b!7296615 () Bool)

(declare-fun c!1356223 () Bool)

(assert (=> b!7296615 (= c!1356223 (is-Star!18870 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun e!4370252 () (Set Context!15620))

(declare-fun e!4370249 () (Set Context!15620))

(assert (=> b!7296615 (= e!4370252 e!4370249)))

(declare-fun b!7296616 () Bool)

(declare-fun e!4370251 () (Set Context!15620))

(declare-fun call!664855 () (Set Context!15620))

(declare-fun call!664851 () (Set Context!15620))

(assert (=> b!7296616 (= e!4370251 (set.union call!664855 call!664851))))

(declare-fun b!7296617 () Bool)

(declare-fun call!664853 () (Set Context!15620))

(assert (=> b!7296617 (= e!4370249 call!664853)))

(declare-fun d!2267104 () Bool)

(declare-fun c!1356222 () Bool)

(assert (=> d!2267104 (= c!1356222 (and (is-ElementMatch!18870 (h!77381 (exprs!8310 ct1!250))) (= (c!1356179 (h!77381 (exprs!8310 ct1!250))) (h!77382 s!7854))))))

(declare-fun e!4370250 () (Set Context!15620))

(assert (=> d!2267104 (= (derivationStepZipperDown!2776 (h!77381 (exprs!8310 ct1!250)) lt!2598368 (h!77382 s!7854)) e!4370250)))

(declare-fun b!7296618 () Bool)

(declare-fun e!4370254 () (Set Context!15620))

(declare-fun call!664852 () (Set Context!15620))

(assert (=> b!7296618 (= e!4370254 (set.union call!664851 call!664852))))

(declare-fun b!7296619 () Bool)

(declare-fun c!1356226 () Bool)

(declare-fun e!4370253 () Bool)

(assert (=> b!7296619 (= c!1356226 e!4370253)))

(declare-fun res!2951255 () Bool)

(assert (=> b!7296619 (=> (not res!2951255) (not e!4370253))))

(assert (=> b!7296619 (= res!2951255 (is-Concat!27715 (h!77381 (exprs!8310 ct1!250))))))

(assert (=> b!7296619 (= e!4370251 e!4370254)))

(declare-fun b!7296620 () Bool)

(assert (=> b!7296620 (= e!4370253 (nullable!8047 (regOne!38252 (h!77381 (exprs!8310 ct1!250)))))))

(declare-fun c!1356225 () Bool)

(declare-fun c!1356224 () Bool)

(declare-fun bm!664847 () Bool)

(assert (=> bm!664847 (= call!664855 (derivationStepZipperDown!2776 (ite c!1356224 (regOne!38253 (h!77381 (exprs!8310 ct1!250))) (ite c!1356226 (regTwo!38252 (h!77381 (exprs!8310 ct1!250))) (ite c!1356225 (regOne!38252 (h!77381 (exprs!8310 ct1!250))) (reg!19199 (h!77381 (exprs!8310 ct1!250)))))) (ite (or c!1356224 c!1356226) lt!2598368 (Context!15621 call!664856)) (h!77382 s!7854)))))

(declare-fun b!7296621 () Bool)

(assert (=> b!7296621 (= e!4370249 (as set.empty (Set Context!15620)))))

(declare-fun b!7296622 () Bool)

(assert (=> b!7296622 (= e!4370250 e!4370251)))

(assert (=> b!7296622 (= c!1356224 (is-Union!18870 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun bm!664848 () Bool)

(assert (=> bm!664848 (= call!664852 call!664855)))

(declare-fun b!7296623 () Bool)

(assert (=> b!7296623 (= e!4370254 e!4370252)))

(assert (=> b!7296623 (= c!1356225 (is-Concat!27715 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun b!7296624 () Bool)

(assert (=> b!7296624 (= e!4370250 (set.insert lt!2598368 (as set.empty (Set Context!15620))))))

(declare-fun bm!664849 () Bool)

(assert (=> bm!664849 (= call!664851 (derivationStepZipperDown!2776 (ite c!1356224 (regTwo!38253 (h!77381 (exprs!8310 ct1!250))) (regOne!38252 (h!77381 (exprs!8310 ct1!250)))) (ite c!1356224 lt!2598368 (Context!15621 call!664854)) (h!77382 s!7854)))))

(declare-fun b!7296625 () Bool)

(assert (=> b!7296625 (= e!4370252 call!664853)))

(declare-fun bm!664850 () Bool)

(declare-fun $colon$colon!2999 (List!71057 Regex!18870) List!71057)

(assert (=> bm!664850 (= call!664854 ($colon$colon!2999 (exprs!8310 lt!2598368) (ite (or c!1356226 c!1356225) (regTwo!38252 (h!77381 (exprs!8310 ct1!250))) (h!77381 (exprs!8310 ct1!250)))))))

(declare-fun bm!664851 () Bool)

(assert (=> bm!664851 (= call!664853 call!664852)))

(assert (= (and d!2267104 c!1356222) b!7296624))

(assert (= (and d!2267104 (not c!1356222)) b!7296622))

(assert (= (and b!7296622 c!1356224) b!7296616))

(assert (= (and b!7296622 (not c!1356224)) b!7296619))

(assert (= (and b!7296619 res!2951255) b!7296620))

(assert (= (and b!7296619 c!1356226) b!7296618))

(assert (= (and b!7296619 (not c!1356226)) b!7296623))

(assert (= (and b!7296623 c!1356225) b!7296625))

(assert (= (and b!7296623 (not c!1356225)) b!7296615))

(assert (= (and b!7296615 c!1356223) b!7296617))

(assert (= (and b!7296615 (not c!1356223)) b!7296621))

(assert (= (or b!7296625 b!7296617) bm!664846))

(assert (= (or b!7296625 b!7296617) bm!664851))

(assert (= (or b!7296618 bm!664846) bm!664850))

(assert (= (or b!7296618 bm!664851) bm!664848))

(assert (= (or b!7296616 bm!664848) bm!664847))

(assert (= (or b!7296616 b!7296618) bm!664849))

(declare-fun m!7968514 () Bool)

(assert (=> bm!664847 m!7968514))

(declare-fun m!7968516 () Bool)

(assert (=> bm!664849 m!7968516))

(declare-fun m!7968518 () Bool)

(assert (=> bm!664850 m!7968518))

(assert (=> b!7296624 m!7968334))

(declare-fun m!7968520 () Bool)

(assert (=> b!7296620 m!7968520))

(assert (=> b!7296475 d!2267104))

(declare-fun d!2267112 () Bool)

(declare-fun c!1356228 () Bool)

(declare-fun e!4370255 () Bool)

(assert (=> d!2267112 (= c!1356228 e!4370255)))

(declare-fun res!2951256 () Bool)

(assert (=> d!2267112 (=> (not res!2951256) (not e!4370255))))

(assert (=> d!2267112 (= res!2951256 (is-Cons!70933 (exprs!8310 lt!2598368)))))

(declare-fun e!4370256 () (Set Context!15620))

(assert (=> d!2267112 (= (derivationStepZipperUp!2620 lt!2598368 (h!77382 s!7854)) e!4370256)))

(declare-fun b!7296626 () Bool)

(declare-fun e!4370257 () (Set Context!15620))

(assert (=> b!7296626 (= e!4370256 e!4370257)))

(declare-fun c!1356227 () Bool)

(assert (=> b!7296626 (= c!1356227 (is-Cons!70933 (exprs!8310 lt!2598368)))))

(declare-fun call!664857 () (Set Context!15620))

(declare-fun b!7296627 () Bool)

(assert (=> b!7296627 (= e!4370256 (set.union call!664857 (derivationStepZipperUp!2620 (Context!15621 (t!385133 (exprs!8310 lt!2598368))) (h!77382 s!7854))))))

(declare-fun b!7296628 () Bool)

(assert (=> b!7296628 (= e!4370255 (nullable!8047 (h!77381 (exprs!8310 lt!2598368))))))

(declare-fun b!7296629 () Bool)

(assert (=> b!7296629 (= e!4370257 (as set.empty (Set Context!15620)))))

(declare-fun bm!664852 () Bool)

(assert (=> bm!664852 (= call!664857 (derivationStepZipperDown!2776 (h!77381 (exprs!8310 lt!2598368)) (Context!15621 (t!385133 (exprs!8310 lt!2598368))) (h!77382 s!7854)))))

(declare-fun b!7296630 () Bool)

(assert (=> b!7296630 (= e!4370257 call!664857)))

(assert (= (and d!2267112 res!2951256) b!7296628))

(assert (= (and d!2267112 c!1356228) b!7296627))

(assert (= (and d!2267112 (not c!1356228)) b!7296626))

(assert (= (and b!7296626 c!1356227) b!7296630))

(assert (= (and b!7296626 (not c!1356227)) b!7296629))

(assert (= (or b!7296627 b!7296630) bm!664852))

(declare-fun m!7968522 () Bool)

(assert (=> b!7296627 m!7968522))

(declare-fun m!7968524 () Bool)

(assert (=> b!7296628 m!7968524))

(declare-fun m!7968526 () Bool)

(assert (=> bm!664852 m!7968526))

(assert (=> b!7296475 d!2267112))

(declare-fun d!2267114 () Bool)

(assert (=> d!2267114 (forall!17691 (++!16760 lt!2598365 (exprs!8310 ct2!346)) lambda!450554)))

(declare-fun lt!2598466 () Unit!164338)

(assert (=> d!2267114 (= lt!2598466 (choose!56543 lt!2598365 (exprs!8310 ct2!346) lambda!450554))))

(assert (=> d!2267114 (forall!17691 lt!2598365 lambda!450554)))

(assert (=> d!2267114 (= (lemmaConcatPreservesForall!1617 lt!2598365 (exprs!8310 ct2!346) lambda!450554) lt!2598466)))

(declare-fun bs!1913063 () Bool)

(assert (= bs!1913063 d!2267114))

(assert (=> bs!1913063 m!7968306))

(assert (=> bs!1913063 m!7968306))

(declare-fun m!7968528 () Bool)

(assert (=> bs!1913063 m!7968528))

(declare-fun m!7968530 () Bool)

(assert (=> bs!1913063 m!7968530))

(declare-fun m!7968532 () Bool)

(assert (=> bs!1913063 m!7968532))

(assert (=> b!7296475 d!2267114))

(declare-fun d!2267116 () Bool)

(declare-fun e!4370259 () Bool)

(assert (=> d!2267116 e!4370259))

(declare-fun res!2951258 () Bool)

(assert (=> d!2267116 (=> (not res!2951258) (not e!4370259))))

(declare-fun lt!2598467 () List!71057)

(assert (=> d!2267116 (= res!2951258 (= (content!14818 lt!2598467) (set.union (content!14818 lt!2598365) (content!14818 (exprs!8310 ct2!346)))))))

(declare-fun e!4370258 () List!71057)

(assert (=> d!2267116 (= lt!2598467 e!4370258)))

(declare-fun c!1356229 () Bool)

(assert (=> d!2267116 (= c!1356229 (is-Nil!70933 lt!2598365))))

(assert (=> d!2267116 (= (++!16760 lt!2598365 (exprs!8310 ct2!346)) lt!2598467)))

(declare-fun b!7296634 () Bool)

(assert (=> b!7296634 (= e!4370259 (or (not (= (exprs!8310 ct2!346) Nil!70933)) (= lt!2598467 lt!2598365)))))

(declare-fun b!7296633 () Bool)

(declare-fun res!2951257 () Bool)

(assert (=> b!7296633 (=> (not res!2951257) (not e!4370259))))

(assert (=> b!7296633 (= res!2951257 (= (size!41864 lt!2598467) (+ (size!41864 lt!2598365) (size!41864 (exprs!8310 ct2!346)))))))

(declare-fun b!7296632 () Bool)

(assert (=> b!7296632 (= e!4370258 (Cons!70933 (h!77381 lt!2598365) (++!16760 (t!385133 lt!2598365) (exprs!8310 ct2!346))))))

(declare-fun b!7296631 () Bool)

(assert (=> b!7296631 (= e!4370258 (exprs!8310 ct2!346))))

(assert (= (and d!2267116 c!1356229) b!7296631))

(assert (= (and d!2267116 (not c!1356229)) b!7296632))

(assert (= (and d!2267116 res!2951258) b!7296633))

(assert (= (and b!7296633 res!2951257) b!7296634))

(declare-fun m!7968534 () Bool)

(assert (=> d!2267116 m!7968534))

(declare-fun m!7968536 () Bool)

(assert (=> d!2267116 m!7968536))

(assert (=> d!2267116 m!7968440))

(declare-fun m!7968538 () Bool)

(assert (=> b!7296633 m!7968538))

(declare-fun m!7968540 () Bool)

(assert (=> b!7296633 m!7968540))

(assert (=> b!7296633 m!7968446))

(declare-fun m!7968542 () Bool)

(assert (=> b!7296632 m!7968542))

(assert (=> b!7296475 d!2267116))

(declare-fun d!2267118 () Bool)

(assert (=> d!2267118 (= (isEmpty!40805 (exprs!8310 ct1!250)) (is-Nil!70933 (exprs!8310 ct1!250)))))

(assert (=> b!7296480 d!2267118))

(declare-fun bs!1913064 () Bool)

(declare-fun d!2267120 () Bool)

(assert (= bs!1913064 (and d!2267120 b!7296485)))

(declare-fun lambda!450595 () Int)

(assert (=> bs!1913064 (not (= lambda!450595 lambda!450554))))

(declare-fun bs!1913065 () Bool)

(assert (= bs!1913065 (and d!2267120 d!2267100)))

(assert (=> bs!1913065 (not (= lambda!450595 lambda!450591))))

(declare-fun bs!1913066 () Bool)

(assert (= bs!1913066 (and d!2267120 d!2267102)))

(assert (=> bs!1913066 (not (= lambda!450595 lambda!450592))))

(assert (=> d!2267120 (= (nullableContext!360 ct1!250) (forall!17691 (exprs!8310 ct1!250) lambda!450595))))

(declare-fun bs!1913067 () Bool)

(assert (= bs!1913067 d!2267120))

(declare-fun m!7968544 () Bool)

(assert (=> bs!1913067 m!7968544))

(assert (=> b!7296477 d!2267120))

(declare-fun bm!664853 () Bool)

(declare-fun call!664863 () List!71057)

(declare-fun call!664861 () List!71057)

(assert (=> bm!664853 (= call!664863 call!664861)))

(declare-fun b!7296639 () Bool)

(declare-fun c!1356234 () Bool)

(assert (=> b!7296639 (= c!1356234 (is-Star!18870 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun e!4370265 () (Set Context!15620))

(declare-fun e!4370262 () (Set Context!15620))

(assert (=> b!7296639 (= e!4370265 e!4370262)))

(declare-fun b!7296640 () Bool)

(declare-fun e!4370264 () (Set Context!15620))

(declare-fun call!664862 () (Set Context!15620))

(declare-fun call!664858 () (Set Context!15620))

(assert (=> b!7296640 (= e!4370264 (set.union call!664862 call!664858))))

(declare-fun b!7296641 () Bool)

(declare-fun call!664860 () (Set Context!15620))

(assert (=> b!7296641 (= e!4370262 call!664860)))

(declare-fun d!2267122 () Bool)

(declare-fun c!1356233 () Bool)

(assert (=> d!2267122 (= c!1356233 (and (is-ElementMatch!18870 (h!77381 (exprs!8310 ct1!250))) (= (c!1356179 (h!77381 (exprs!8310 ct1!250))) (h!77382 s!7854))))))

(declare-fun e!4370263 () (Set Context!15620))

(assert (=> d!2267122 (= (derivationStepZipperDown!2776 (h!77381 (exprs!8310 ct1!250)) lt!2598357 (h!77382 s!7854)) e!4370263)))

(declare-fun b!7296642 () Bool)

(declare-fun e!4370267 () (Set Context!15620))

(declare-fun call!664859 () (Set Context!15620))

(assert (=> b!7296642 (= e!4370267 (set.union call!664858 call!664859))))

(declare-fun b!7296643 () Bool)

(declare-fun c!1356237 () Bool)

(declare-fun e!4370266 () Bool)

(assert (=> b!7296643 (= c!1356237 e!4370266)))

(declare-fun res!2951259 () Bool)

(assert (=> b!7296643 (=> (not res!2951259) (not e!4370266))))

(assert (=> b!7296643 (= res!2951259 (is-Concat!27715 (h!77381 (exprs!8310 ct1!250))))))

(assert (=> b!7296643 (= e!4370264 e!4370267)))

(declare-fun b!7296644 () Bool)

(assert (=> b!7296644 (= e!4370266 (nullable!8047 (regOne!38252 (h!77381 (exprs!8310 ct1!250)))))))

(declare-fun c!1356235 () Bool)

(declare-fun c!1356236 () Bool)

(declare-fun bm!664854 () Bool)

(assert (=> bm!664854 (= call!664862 (derivationStepZipperDown!2776 (ite c!1356235 (regOne!38253 (h!77381 (exprs!8310 ct1!250))) (ite c!1356237 (regTwo!38252 (h!77381 (exprs!8310 ct1!250))) (ite c!1356236 (regOne!38252 (h!77381 (exprs!8310 ct1!250))) (reg!19199 (h!77381 (exprs!8310 ct1!250)))))) (ite (or c!1356235 c!1356237) lt!2598357 (Context!15621 call!664863)) (h!77382 s!7854)))))

(declare-fun b!7296645 () Bool)

(assert (=> b!7296645 (= e!4370262 (as set.empty (Set Context!15620)))))

(declare-fun b!7296646 () Bool)

(assert (=> b!7296646 (= e!4370263 e!4370264)))

(assert (=> b!7296646 (= c!1356235 (is-Union!18870 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun bm!664855 () Bool)

(assert (=> bm!664855 (= call!664859 call!664862)))

(declare-fun b!7296647 () Bool)

(assert (=> b!7296647 (= e!4370267 e!4370265)))

(assert (=> b!7296647 (= c!1356236 (is-Concat!27715 (h!77381 (exprs!8310 ct1!250))))))

(declare-fun b!7296648 () Bool)

(assert (=> b!7296648 (= e!4370263 (set.insert lt!2598357 (as set.empty (Set Context!15620))))))

(declare-fun bm!664856 () Bool)

(assert (=> bm!664856 (= call!664858 (derivationStepZipperDown!2776 (ite c!1356235 (regTwo!38253 (h!77381 (exprs!8310 ct1!250))) (regOne!38252 (h!77381 (exprs!8310 ct1!250)))) (ite c!1356235 lt!2598357 (Context!15621 call!664861)) (h!77382 s!7854)))))

(declare-fun b!7296649 () Bool)

(assert (=> b!7296649 (= e!4370265 call!664860)))

(declare-fun bm!664857 () Bool)

(assert (=> bm!664857 (= call!664861 ($colon$colon!2999 (exprs!8310 lt!2598357) (ite (or c!1356237 c!1356236) (regTwo!38252 (h!77381 (exprs!8310 ct1!250))) (h!77381 (exprs!8310 ct1!250)))))))

(declare-fun bm!664858 () Bool)

(assert (=> bm!664858 (= call!664860 call!664859)))

(assert (= (and d!2267122 c!1356233) b!7296648))

(assert (= (and d!2267122 (not c!1356233)) b!7296646))

(assert (= (and b!7296646 c!1356235) b!7296640))

(assert (= (and b!7296646 (not c!1356235)) b!7296643))

(assert (= (and b!7296643 res!2951259) b!7296644))

(assert (= (and b!7296643 c!1356237) b!7296642))

(assert (= (and b!7296643 (not c!1356237)) b!7296647))

(assert (= (and b!7296647 c!1356236) b!7296649))

(assert (= (and b!7296647 (not c!1356236)) b!7296639))

(assert (= (and b!7296639 c!1356234) b!7296641))

(assert (= (and b!7296639 (not c!1356234)) b!7296645))

(assert (= (or b!7296649 b!7296641) bm!664853))

(assert (= (or b!7296649 b!7296641) bm!664858))

(assert (= (or b!7296642 bm!664853) bm!664857))

(assert (= (or b!7296642 bm!664858) bm!664855))

(assert (= (or b!7296640 bm!664855) bm!664854))

(assert (= (or b!7296640 b!7296642) bm!664856))

(declare-fun m!7968546 () Bool)

(assert (=> bm!664854 m!7968546))

(declare-fun m!7968548 () Bool)

(assert (=> bm!664856 m!7968548))

(declare-fun m!7968550 () Bool)

(assert (=> bm!664857 m!7968550))

(declare-fun m!7968552 () Bool)

(assert (=> b!7296648 m!7968552))

(assert (=> b!7296644 m!7968520))

(assert (=> b!7296483 d!2267122))

(declare-fun d!2267124 () Bool)

(declare-fun c!1356247 () Bool)

(declare-fun e!4370278 () Bool)

(assert (=> d!2267124 (= c!1356247 e!4370278)))

(declare-fun res!2951262 () Bool)

(assert (=> d!2267124 (=> (not res!2951262) (not e!4370278))))

(assert (=> d!2267124 (= res!2951262 (is-Cons!70933 (exprs!8310 lt!2598357)))))

(declare-fun e!4370279 () (Set Context!15620))

(assert (=> d!2267124 (= (derivationStepZipperUp!2620 lt!2598357 (h!77382 s!7854)) e!4370279)))

(declare-fun b!7296668 () Bool)

(declare-fun e!4370280 () (Set Context!15620))

(assert (=> b!7296668 (= e!4370279 e!4370280)))

(declare-fun c!1356246 () Bool)

(assert (=> b!7296668 (= c!1356246 (is-Cons!70933 (exprs!8310 lt!2598357)))))

(declare-fun b!7296669 () Bool)

(declare-fun call!664864 () (Set Context!15620))

(assert (=> b!7296669 (= e!4370279 (set.union call!664864 (derivationStepZipperUp!2620 (Context!15621 (t!385133 (exprs!8310 lt!2598357))) (h!77382 s!7854))))))

(declare-fun b!7296670 () Bool)

(assert (=> b!7296670 (= e!4370278 (nullable!8047 (h!77381 (exprs!8310 lt!2598357))))))

(declare-fun b!7296671 () Bool)

(assert (=> b!7296671 (= e!4370280 (as set.empty (Set Context!15620)))))

(declare-fun bm!664859 () Bool)

(assert (=> bm!664859 (= call!664864 (derivationStepZipperDown!2776 (h!77381 (exprs!8310 lt!2598357)) (Context!15621 (t!385133 (exprs!8310 lt!2598357))) (h!77382 s!7854)))))

(declare-fun b!7296672 () Bool)

(assert (=> b!7296672 (= e!4370280 call!664864)))

(assert (= (and d!2267124 res!2951262) b!7296670))

(assert (= (and d!2267124 c!1356247) b!7296669))

(assert (= (and d!2267124 (not c!1356247)) b!7296668))

(assert (= (and b!7296668 c!1356246) b!7296672))

(assert (= (and b!7296668 (not c!1356246)) b!7296671))

(assert (= (or b!7296669 b!7296672) bm!664859))

(declare-fun m!7968554 () Bool)

(assert (=> b!7296669 m!7968554))

(declare-fun m!7968556 () Bool)

(assert (=> b!7296670 m!7968556))

(declare-fun m!7968558 () Bool)

(assert (=> bm!664859 m!7968558))

(assert (=> b!7296483 d!2267124))

(declare-fun d!2267126 () Bool)

(assert (=> d!2267126 (= (flatMap!2965 lt!2598366 lambda!450555) (dynLambda!29007 lambda!450555 lt!2598368))))

(declare-fun lt!2598468 () Unit!164338)

(assert (=> d!2267126 (= lt!2598468 (choose!56542 lt!2598366 lt!2598368 lambda!450555))))

(assert (=> d!2267126 (= lt!2598366 (set.insert lt!2598368 (as set.empty (Set Context!15620))))))

(assert (=> d!2267126 (= (lemmaFlatMapOnSingletonSet!2363 lt!2598366 lt!2598368 lambda!450555) lt!2598468)))

(declare-fun b_lambda!281409 () Bool)

(assert (=> (not b_lambda!281409) (not d!2267126)))

(declare-fun bs!1913068 () Bool)

(assert (= bs!1913068 d!2267126))

(assert (=> bs!1913068 m!7968340))

(declare-fun m!7968560 () Bool)

(assert (=> bs!1913068 m!7968560))

(declare-fun m!7968562 () Bool)

(assert (=> bs!1913068 m!7968562))

(assert (=> bs!1913068 m!7968334))

(assert (=> b!7296479 d!2267126))

(declare-fun bs!1913069 () Bool)

(declare-fun d!2267128 () Bool)

(assert (= bs!1913069 (and d!2267128 b!7296485)))

(declare-fun lambda!450596 () Int)

(assert (=> bs!1913069 (= lambda!450596 lambda!450554)))

(declare-fun bs!1913070 () Bool)

(assert (= bs!1913070 (and d!2267128 d!2267100)))

(assert (=> bs!1913070 (= lambda!450596 lambda!450591)))

(declare-fun bs!1913071 () Bool)

(assert (= bs!1913071 (and d!2267128 d!2267102)))

(assert (=> bs!1913071 (= lambda!450596 lambda!450592)))

(declare-fun bs!1913072 () Bool)

(assert (= bs!1913072 (and d!2267128 d!2267120)))

(assert (=> bs!1913072 (not (= lambda!450596 lambda!450595))))

(assert (=> d!2267128 (= (inv!90186 lt!2598368) (forall!17691 (exprs!8310 lt!2598368) lambda!450596))))

(declare-fun bs!1913073 () Bool)

(assert (= bs!1913073 d!2267128))

(declare-fun m!7968564 () Bool)

(assert (=> bs!1913073 m!7968564))

(assert (=> b!7296479 d!2267128))

(declare-fun d!2267130 () Bool)

(assert (=> d!2267130 (= (flatMap!2965 lt!2598366 lambda!450555) (choose!56541 lt!2598366 lambda!450555))))

(declare-fun bs!1913074 () Bool)

(assert (= bs!1913074 d!2267130))

(declare-fun m!7968566 () Bool)

(assert (=> bs!1913074 m!7968566))

(assert (=> b!7296479 d!2267130))

(assert (=> b!7296479 d!2267112))

(assert (=> b!7296479 d!2267114))

(declare-fun bs!1913075 () Bool)

(declare-fun d!2267132 () Bool)

(assert (= bs!1913075 (and d!2267132 d!2267120)))

(declare-fun lambda!450599 () Int)

(assert (=> bs!1913075 (not (= lambda!450599 lambda!450595))))

(declare-fun bs!1913076 () Bool)

(assert (= bs!1913076 (and d!2267132 d!2267100)))

(assert (=> bs!1913076 (= lambda!450599 lambda!450591)))

(declare-fun bs!1913077 () Bool)

(assert (= bs!1913077 (and d!2267132 d!2267102)))

(assert (=> bs!1913077 (= lambda!450599 lambda!450592)))

(declare-fun bs!1913078 () Bool)

(assert (= bs!1913078 (and d!2267132 b!7296485)))

(assert (=> bs!1913078 (= lambda!450599 lambda!450554)))

(declare-fun bs!1913079 () Bool)

(assert (= bs!1913079 (and d!2267132 d!2267128)))

(assert (=> bs!1913079 (= lambda!450599 lambda!450596)))

(assert (=> d!2267132 (matchZipper!3774 (set.insert (Context!15621 (++!16760 (exprs!8310 lt!2598357) (exprs!8310 ct2!346))) (as set.empty (Set Context!15620))) s!7854)))

(declare-fun lt!2598474 () Unit!164338)

(assert (=> d!2267132 (= lt!2598474 (lemmaConcatPreservesForall!1617 (exprs!8310 lt!2598357) (exprs!8310 ct2!346) lambda!450599))))

(declare-fun lt!2598473 () Unit!164338)

(declare-fun choose!56544 (Context!15620 Context!15620 List!71058) Unit!164338)

(assert (=> d!2267132 (= lt!2598473 (choose!56544 lt!2598357 ct2!346 s!7854))))

(assert (=> d!2267132 (matchZipper!3774 (set.insert ct2!346 (as set.empty (Set Context!15620))) s!7854)))

(assert (=> d!2267132 (= (lemmaPrependingNullableCtxStillMatches!53 lt!2598357 ct2!346 s!7854) lt!2598473)))

(declare-fun bs!1913080 () Bool)

(assert (= bs!1913080 d!2267132))

(declare-fun m!7968568 () Bool)

(assert (=> bs!1913080 m!7968568))

(declare-fun m!7968570 () Bool)

(assert (=> bs!1913080 m!7968570))

(assert (=> bs!1913080 m!7968320))

(assert (=> bs!1913080 m!7968320))

(assert (=> bs!1913080 m!7968322))

(declare-fun m!7968572 () Bool)

(assert (=> bs!1913080 m!7968572))

(assert (=> bs!1913080 m!7968568))

(declare-fun m!7968574 () Bool)

(assert (=> bs!1913080 m!7968574))

(declare-fun m!7968576 () Bool)

(assert (=> bs!1913080 m!7968576))

(assert (=> b!7296479 d!2267132))

(declare-fun d!2267134 () Bool)

(declare-fun c!1356248 () Bool)

(assert (=> d!2267134 (= c!1356248 (isEmpty!40807 s!7854))))

(declare-fun e!4370281 () Bool)

(assert (=> d!2267134 (= (matchZipper!3774 lt!2598366 s!7854) e!4370281)))

(declare-fun b!7296673 () Bool)

(assert (=> b!7296673 (= e!4370281 (nullableZipper!3061 lt!2598366))))

(declare-fun b!7296674 () Bool)

(assert (=> b!7296674 (= e!4370281 (matchZipper!3774 (derivationStepZipper!3603 lt!2598366 (head!15059 s!7854)) (tail!14590 s!7854)))))

(assert (= (and d!2267134 c!1356248) b!7296673))

(assert (= (and d!2267134 (not c!1356248)) b!7296674))

(assert (=> d!2267134 m!7968472))

(declare-fun m!7968578 () Bool)

(assert (=> b!7296673 m!7968578))

(assert (=> b!7296674 m!7968476))

(assert (=> b!7296674 m!7968476))

(declare-fun m!7968580 () Bool)

(assert (=> b!7296674 m!7968580))

(assert (=> b!7296674 m!7968480))

(assert (=> b!7296674 m!7968580))

(assert (=> b!7296674 m!7968480))

(declare-fun m!7968582 () Bool)

(assert (=> b!7296674 m!7968582))

(assert (=> b!7296479 d!2267134))

(declare-fun b!7296679 () Bool)

(declare-fun e!4370284 () Bool)

(declare-fun tp!2062457 () Bool)

(declare-fun tp!2062458 () Bool)

(assert (=> b!7296679 (= e!4370284 (and tp!2062457 tp!2062458))))

(assert (=> b!7296481 (= tp!2062443 e!4370284)))

(assert (= (and b!7296481 (is-Cons!70933 (exprs!8310 ct1!250))) b!7296679))

(declare-fun b!7296684 () Bool)

(declare-fun e!4370287 () Bool)

(declare-fun tp!2062461 () Bool)

(assert (=> b!7296684 (= e!4370287 (and tp_is_empty!47205 tp!2062461))))

(assert (=> b!7296476 (= tp!2062441 e!4370287)))

(assert (= (and b!7296476 (is-Cons!70934 (t!385134 s!7854))) b!7296684))

(declare-fun b!7296685 () Bool)

(declare-fun e!4370288 () Bool)

(declare-fun tp!2062462 () Bool)

(declare-fun tp!2062463 () Bool)

(assert (=> b!7296685 (= e!4370288 (and tp!2062462 tp!2062463))))

(assert (=> b!7296484 (= tp!2062442 e!4370288)))

(assert (= (and b!7296484 (is-Cons!70933 (exprs!8310 ct2!346))) b!7296685))

(declare-fun b_lambda!281411 () Bool)

(assert (= b_lambda!281407 (or b!7296485 b_lambda!281411)))

(declare-fun bs!1913081 () Bool)

(declare-fun d!2267136 () Bool)

(assert (= bs!1913081 (and d!2267136 b!7296485)))

(assert (=> bs!1913081 (= (dynLambda!29007 lambda!450555 lt!2598356) (derivationStepZipperUp!2620 lt!2598356 (h!77382 s!7854)))))

(assert (=> bs!1913081 m!7968358))

(assert (=> d!2267076 d!2267136))

(declare-fun b_lambda!281413 () Bool)

(assert (= b_lambda!281405 (or b!7296485 b_lambda!281413)))

(declare-fun bs!1913082 () Bool)

(declare-fun d!2267138 () Bool)

(assert (= bs!1913082 (and d!2267138 b!7296485)))

(assert (=> bs!1913082 (= (dynLambda!29007 lambda!450555 ct1!250) (derivationStepZipperUp!2620 ct1!250 (h!77382 s!7854)))))

(assert (=> bs!1913082 m!7968312))

(assert (=> d!2267074 d!2267138))

(declare-fun b_lambda!281415 () Bool)

(assert (= b_lambda!281409 (or b!7296485 b_lambda!281415)))

(declare-fun bs!1913083 () Bool)

(declare-fun d!2267140 () Bool)

(assert (= bs!1913083 (and d!2267140 b!7296485)))

(assert (=> bs!1913083 (= (dynLambda!29007 lambda!450555 lt!2598368) (derivationStepZipperUp!2620 lt!2598368 (h!77382 s!7854)))))

(assert (=> bs!1913083 m!7968304))

(assert (=> d!2267126 d!2267140))

(push 1)

(assert (not b_lambda!281411))

(assert (not b!7296673))

(assert (not bm!664850))

(assert (not d!2267080))

(assert (not d!2267088))

(assert (not b_lambda!281415))

(assert tp_is_empty!47205)

(assert (not bs!1913083))

(assert (not d!2267078))

(assert (not d!2267090))

(assert (not bs!1913082))

(assert (not d!2267116))

(assert (not bm!664857))

(assert (not bm!664847))

(assert (not d!2267102))

(assert (not bm!664830))

(assert (not b!7296565))

(assert (not d!2267126))

(assert (not b!7296685))

(assert (not b!7296684))

(assert (not b!7296633))

(assert (not d!2267094))

(assert (not d!2267114))

(assert (not d!2267132))

(assert (not b!7296674))

(assert (not d!2267128))

(assert (not bm!664852))

(assert (not d!2267120))

(assert (not b!7296620))

(assert (not d!2267074))

(assert (not b!7296644))

(assert (not b!7296628))

(assert (not b!7296627))

(assert (not d!2267076))

(assert (not d!2267134))

(assert (not bm!664829))

(assert (not b!7296679))

(assert (not bm!664859))

(assert (not b!7296536))

(assert (not bm!664856))

(assert (not b!7296552))

(assert (not b!7296551))

(assert (not b!7296670))

(assert (not b_lambda!281413))

(assert (not d!2267100))

(assert (not b!7296535))

(assert (not d!2267130))

(assert (not b!7296669))

(assert (not bm!664849))

(assert (not d!2267072))

(assert (not b!7296557))

(assert (not bs!1913081))

(assert (not d!2267086))

(assert (not b!7296632))

(assert (not b!7296556))

(assert (not b!7296564))

(assert (not bm!664854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

