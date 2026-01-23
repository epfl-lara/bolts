; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704896 () Bool)

(assert start!704896)

(declare-fun b!7247346 () Bool)

(assert (=> b!7247346 true))

(declare-fun b!7247343 () Bool)

(declare-fun e!4345457 () Bool)

(declare-fun e!4345462 () Bool)

(assert (=> b!7247343 (= e!4345457 e!4345462)))

(declare-fun res!2939648 () Bool)

(assert (=> b!7247343 (=> (not res!2939648) (not e!4345462))))

(declare-datatypes ((C!37522 0))(
  ( (C!37523 (val!28709 Int)) )
))
(declare-datatypes ((Regex!18624 0))(
  ( (ElementMatch!18624 (c!1346377 C!37522)) (Concat!27469 (regOne!37760 Regex!18624) (regTwo!37760 Regex!18624)) (EmptyExpr!18624) (Star!18624 (reg!18953 Regex!18624)) (EmptyLang!18624) (Union!18624 (regOne!37761 Regex!18624) (regTwo!37761 Regex!18624)) )
))
(declare-datatypes ((List!70452 0))(
  ( (Nil!70328) (Cons!70328 (h!76776 Regex!18624) (t!384504 List!70452)) )
))
(declare-datatypes ((Context!15128 0))(
  ( (Context!15129 (exprs!8064 List!70452)) )
))
(declare-fun ct1!232 () Context!15128)

(declare-datatypes ((List!70453 0))(
  ( (Nil!70329) (Cons!70329 (h!76777 C!37522) (t!384505 List!70453)) )
))
(declare-fun s1!1971 () List!70453)

(assert (=> b!7247343 (= res!2939648 (and (not (is-Nil!70328 (exprs!8064 ct1!232))) (is-Cons!70329 s1!1971)))))

(declare-fun lt!2583316 () List!70452)

(declare-fun ct2!328 () Context!15128)

(declare-fun ++!16510 (List!70452 List!70452) List!70452)

(assert (=> b!7247343 (= lt!2583316 (++!16510 (exprs!8064 ct1!232) (exprs!8064 ct2!328)))))

(declare-fun lambda!443416 () Int)

(declare-datatypes ((Unit!163831 0))(
  ( (Unit!163832) )
))
(declare-fun lt!2583311 () Unit!163831)

(declare-fun lemmaConcatPreservesForall!1431 (List!70452 List!70452 Int) Unit!163831)

(assert (=> b!7247343 (= lt!2583311 (lemmaConcatPreservesForall!1431 (exprs!8064 ct1!232) (exprs!8064 ct2!328) lambda!443416))))

(declare-fun b!7247344 () Bool)

(declare-fun e!4345464 () Bool)

(declare-fun tp_is_empty!46713 () Bool)

(declare-fun tp!2036826 () Bool)

(assert (=> b!7247344 (= e!4345464 (and tp_is_empty!46713 tp!2036826))))

(declare-fun b!7247345 () Bool)

(declare-fun e!4345460 () Bool)

(declare-fun tp!2036828 () Bool)

(assert (=> b!7247345 (= e!4345460 (and tp_is_empty!46713 tp!2036828))))

(declare-fun res!2939651 () Bool)

(assert (=> start!704896 (=> (not res!2939651) (not e!4345457))))

(declare-fun lt!2583315 () (Set Context!15128))

(declare-fun matchZipper!3534 ((Set Context!15128) List!70453) Bool)

(assert (=> start!704896 (= res!2939651 (matchZipper!3534 lt!2583315 s1!1971))))

(assert (=> start!704896 (= lt!2583315 (set.insert ct1!232 (as set.empty (Set Context!15128))))))

(assert (=> start!704896 e!4345457))

(declare-fun e!4345461 () Bool)

(declare-fun inv!89571 (Context!15128) Bool)

(assert (=> start!704896 (and (inv!89571 ct1!232) e!4345461)))

(assert (=> start!704896 e!4345464))

(assert (=> start!704896 e!4345460))

(declare-fun e!4345458 () Bool)

(assert (=> start!704896 (and (inv!89571 ct2!328) e!4345458)))

(declare-fun e!4345459 () Bool)

(declare-fun e!4345463 () Bool)

(assert (=> b!7247346 (= e!4345459 (not e!4345463))))

(declare-fun res!2939650 () Bool)

(assert (=> b!7247346 (=> res!2939650 e!4345463)))

(declare-fun lt!2583312 () (Set Context!15128))

(declare-fun lambda!443417 () Int)

(declare-fun exists!4326 ((Set Context!15128) Int) Bool)

(assert (=> b!7247346 (= res!2939650 (not (exists!4326 lt!2583312 lambda!443417)))))

(declare-datatypes ((List!70454 0))(
  ( (Nil!70330) (Cons!70330 (h!76778 Context!15128) (t!384506 List!70454)) )
))
(declare-fun lt!2583313 () List!70454)

(declare-fun exists!4327 (List!70454 Int) Bool)

(assert (=> b!7247346 (exists!4327 lt!2583313 lambda!443417)))

(declare-fun lt!2583310 () Unit!163831)

(declare-fun lemmaZipperMatchesExistsMatchingContext!727 (List!70454 List!70453) Unit!163831)

(assert (=> b!7247346 (= lt!2583310 (lemmaZipperMatchesExistsMatchingContext!727 lt!2583313 (t!384505 s1!1971)))))

(declare-fun toList!11453 ((Set Context!15128)) List!70454)

(assert (=> b!7247346 (= lt!2583313 (toList!11453 lt!2583312))))

(declare-fun b!7247347 () Bool)

(declare-fun tp!2036825 () Bool)

(assert (=> b!7247347 (= e!4345461 tp!2036825)))

(declare-fun b!7247348 () Bool)

(declare-fun tp!2036827 () Bool)

(assert (=> b!7247348 (= e!4345458 tp!2036827)))

(declare-fun b!7247349 () Bool)

(assert (=> b!7247349 (= e!4345462 e!4345459)))

(declare-fun res!2939649 () Bool)

(assert (=> b!7247349 (=> (not res!2939649) (not e!4345459))))

(assert (=> b!7247349 (= res!2939649 (matchZipper!3534 lt!2583312 (t!384505 s1!1971)))))

(declare-fun derivationStepZipper!3402 ((Set Context!15128) C!37522) (Set Context!15128))

(assert (=> b!7247349 (= lt!2583312 (derivationStepZipper!3402 lt!2583315 (h!76777 s1!1971)))))

(declare-fun b!7247350 () Bool)

(declare-fun lt!2583308 () Context!15128)

(assert (=> b!7247350 (= e!4345463 (inv!89571 lt!2583308))))

(declare-fun lt!2583314 () Context!15128)

(declare-fun lt!2583307 () Unit!163831)

(assert (=> b!7247350 (= lt!2583307 (lemmaConcatPreservesForall!1431 (exprs!8064 lt!2583314) (exprs!8064 ct2!328) lambda!443416))))

(declare-fun s2!1849 () List!70453)

(declare-fun ++!16511 (List!70453 List!70453) List!70453)

(assert (=> b!7247350 (matchZipper!3534 (set.insert lt!2583308 (as set.empty (Set Context!15128))) (++!16511 (t!384505 s1!1971) s2!1849))))

(assert (=> b!7247350 (= lt!2583308 (Context!15129 (++!16510 (exprs!8064 lt!2583314) (exprs!8064 ct2!328))))))

(declare-fun lt!2583309 () Unit!163831)

(assert (=> b!7247350 (= lt!2583309 (lemmaConcatPreservesForall!1431 (exprs!8064 lt!2583314) (exprs!8064 ct2!328) lambda!443416))))

(declare-fun lt!2583317 () Unit!163831)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!369 (Context!15128 Context!15128 List!70453 List!70453) Unit!163831)

(assert (=> b!7247350 (= lt!2583317 (lemmaConcatenateContextMatchesConcatOfStrings!369 lt!2583314 ct2!328 (t!384505 s1!1971) s2!1849))))

(declare-fun getWitness!2167 ((Set Context!15128) Int) Context!15128)

(assert (=> b!7247350 (= lt!2583314 (getWitness!2167 lt!2583312 lambda!443417))))

(declare-fun b!7247351 () Bool)

(declare-fun res!2939647 () Bool)

(assert (=> b!7247351 (=> (not res!2939647) (not e!4345457))))

(assert (=> b!7247351 (= res!2939647 (matchZipper!3534 (set.insert ct2!328 (as set.empty (Set Context!15128))) s2!1849))))

(assert (= (and start!704896 res!2939651) b!7247351))

(assert (= (and b!7247351 res!2939647) b!7247343))

(assert (= (and b!7247343 res!2939648) b!7247349))

(assert (= (and b!7247349 res!2939649) b!7247346))

(assert (= (and b!7247346 (not res!2939650)) b!7247350))

(assert (= start!704896 b!7247347))

(assert (= (and start!704896 (is-Cons!70329 s1!1971)) b!7247344))

(assert (= (and start!704896 (is-Cons!70329 s2!1849)) b!7247345))

(assert (= start!704896 b!7247348))

(declare-fun m!7924470 () Bool)

(assert (=> start!704896 m!7924470))

(declare-fun m!7924472 () Bool)

(assert (=> start!704896 m!7924472))

(declare-fun m!7924474 () Bool)

(assert (=> start!704896 m!7924474))

(declare-fun m!7924476 () Bool)

(assert (=> start!704896 m!7924476))

(declare-fun m!7924478 () Bool)

(assert (=> b!7247343 m!7924478))

(declare-fun m!7924480 () Bool)

(assert (=> b!7247343 m!7924480))

(declare-fun m!7924482 () Bool)

(assert (=> b!7247351 m!7924482))

(assert (=> b!7247351 m!7924482))

(declare-fun m!7924484 () Bool)

(assert (=> b!7247351 m!7924484))

(declare-fun m!7924486 () Bool)

(assert (=> b!7247350 m!7924486))

(declare-fun m!7924488 () Bool)

(assert (=> b!7247350 m!7924488))

(assert (=> b!7247350 m!7924488))

(declare-fun m!7924490 () Bool)

(assert (=> b!7247350 m!7924490))

(declare-fun m!7924492 () Bool)

(assert (=> b!7247350 m!7924492))

(declare-fun m!7924494 () Bool)

(assert (=> b!7247350 m!7924494))

(declare-fun m!7924496 () Bool)

(assert (=> b!7247350 m!7924496))

(declare-fun m!7924498 () Bool)

(assert (=> b!7247350 m!7924498))

(assert (=> b!7247350 m!7924486))

(assert (=> b!7247350 m!7924494))

(declare-fun m!7924500 () Bool)

(assert (=> b!7247350 m!7924500))

(declare-fun m!7924502 () Bool)

(assert (=> b!7247346 m!7924502))

(declare-fun m!7924504 () Bool)

(assert (=> b!7247346 m!7924504))

(declare-fun m!7924506 () Bool)

(assert (=> b!7247346 m!7924506))

(declare-fun m!7924508 () Bool)

(assert (=> b!7247346 m!7924508))

(declare-fun m!7924510 () Bool)

(assert (=> b!7247349 m!7924510))

(declare-fun m!7924512 () Bool)

(assert (=> b!7247349 m!7924512))

(push 1)

(assert (not b!7247348))

(assert (not b!7247351))

(assert (not b!7247344))

(assert (not b!7247346))

(assert (not b!7247349))

(assert (not b!7247350))

(assert (not b!7247345))

(assert tp_is_empty!46713)

(assert (not b!7247347))

(assert (not b!7247343))

(assert (not start!704896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252149 () Bool)

(declare-fun c!1346387 () Bool)

(declare-fun isEmpty!40501 (List!70453) Bool)

(assert (=> d!2252149 (= c!1346387 (isEmpty!40501 (t!384505 s1!1971)))))

(declare-fun e!4345491 () Bool)

(assert (=> d!2252149 (= (matchZipper!3534 lt!2583312 (t!384505 s1!1971)) e!4345491)))

(declare-fun b!7247387 () Bool)

(declare-fun nullableZipper!2896 ((Set Context!15128)) Bool)

(assert (=> b!7247387 (= e!4345491 (nullableZipper!2896 lt!2583312))))

(declare-fun b!7247388 () Bool)

(declare-fun head!14884 (List!70453) C!37522)

(declare-fun tail!14286 (List!70453) List!70453)

(assert (=> b!7247388 (= e!4345491 (matchZipper!3534 (derivationStepZipper!3402 lt!2583312 (head!14884 (t!384505 s1!1971))) (tail!14286 (t!384505 s1!1971))))))

(assert (= (and d!2252149 c!1346387) b!7247387))

(assert (= (and d!2252149 (not c!1346387)) b!7247388))

(declare-fun m!7924558 () Bool)

(assert (=> d!2252149 m!7924558))

(declare-fun m!7924560 () Bool)

(assert (=> b!7247387 m!7924560))

(declare-fun m!7924562 () Bool)

(assert (=> b!7247388 m!7924562))

(assert (=> b!7247388 m!7924562))

(declare-fun m!7924564 () Bool)

(assert (=> b!7247388 m!7924564))

(declare-fun m!7924566 () Bool)

(assert (=> b!7247388 m!7924566))

(assert (=> b!7247388 m!7924564))

(assert (=> b!7247388 m!7924566))

(declare-fun m!7924568 () Bool)

(assert (=> b!7247388 m!7924568))

(assert (=> b!7247349 d!2252149))

(declare-fun d!2252151 () Bool)

(assert (=> d!2252151 true))

(declare-fun lambda!443434 () Int)

(declare-fun flatMap!2791 ((Set Context!15128) Int) (Set Context!15128))

(assert (=> d!2252151 (= (derivationStepZipper!3402 lt!2583315 (h!76777 s1!1971)) (flatMap!2791 lt!2583315 lambda!443434))))

(declare-fun bs!1905409 () Bool)

(assert (= bs!1905409 d!2252151))

(declare-fun m!7924570 () Bool)

(assert (=> bs!1905409 m!7924570))

(assert (=> b!7247349 d!2252151))

(declare-fun d!2252153 () Bool)

(declare-fun c!1346390 () Bool)

(assert (=> d!2252153 (= c!1346390 (isEmpty!40501 s1!1971))))

(declare-fun e!4345492 () Bool)

(assert (=> d!2252153 (= (matchZipper!3534 lt!2583315 s1!1971) e!4345492)))

(declare-fun b!7247391 () Bool)

(assert (=> b!7247391 (= e!4345492 (nullableZipper!2896 lt!2583315))))

(declare-fun b!7247392 () Bool)

(assert (=> b!7247392 (= e!4345492 (matchZipper!3534 (derivationStepZipper!3402 lt!2583315 (head!14884 s1!1971)) (tail!14286 s1!1971)))))

(assert (= (and d!2252153 c!1346390) b!7247391))

(assert (= (and d!2252153 (not c!1346390)) b!7247392))

(declare-fun m!7924572 () Bool)

(assert (=> d!2252153 m!7924572))

(declare-fun m!7924574 () Bool)

(assert (=> b!7247391 m!7924574))

(declare-fun m!7924576 () Bool)

(assert (=> b!7247392 m!7924576))

(assert (=> b!7247392 m!7924576))

(declare-fun m!7924578 () Bool)

(assert (=> b!7247392 m!7924578))

(declare-fun m!7924580 () Bool)

(assert (=> b!7247392 m!7924580))

(assert (=> b!7247392 m!7924578))

(assert (=> b!7247392 m!7924580))

(declare-fun m!7924582 () Bool)

(assert (=> b!7247392 m!7924582))

(assert (=> start!704896 d!2252153))

(declare-fun bs!1905410 () Bool)

(declare-fun d!2252155 () Bool)

(assert (= bs!1905410 (and d!2252155 b!7247343)))

(declare-fun lambda!443437 () Int)

(assert (=> bs!1905410 (= lambda!443437 lambda!443416)))

(declare-fun forall!17459 (List!70452 Int) Bool)

(assert (=> d!2252155 (= (inv!89571 ct1!232) (forall!17459 (exprs!8064 ct1!232) lambda!443437))))

(declare-fun bs!1905411 () Bool)

(assert (= bs!1905411 d!2252155))

(declare-fun m!7924584 () Bool)

(assert (=> bs!1905411 m!7924584))

(assert (=> start!704896 d!2252155))

(declare-fun bs!1905412 () Bool)

(declare-fun d!2252157 () Bool)

(assert (= bs!1905412 (and d!2252157 b!7247343)))

(declare-fun lambda!443438 () Int)

(assert (=> bs!1905412 (= lambda!443438 lambda!443416)))

(declare-fun bs!1905413 () Bool)

(assert (= bs!1905413 (and d!2252157 d!2252155)))

(assert (=> bs!1905413 (= lambda!443438 lambda!443437)))

(assert (=> d!2252157 (= (inv!89571 ct2!328) (forall!17459 (exprs!8064 ct2!328) lambda!443438))))

(declare-fun bs!1905414 () Bool)

(assert (= bs!1905414 d!2252157))

(declare-fun m!7924586 () Bool)

(assert (=> bs!1905414 m!7924586))

(assert (=> start!704896 d!2252157))

(declare-fun b!7247403 () Bool)

(declare-fun res!2939672 () Bool)

(declare-fun e!4345497 () Bool)

(assert (=> b!7247403 (=> (not res!2939672) (not e!4345497))))

(declare-fun lt!2583355 () List!70452)

(declare-fun size!41683 (List!70452) Int)

(assert (=> b!7247403 (= res!2939672 (= (size!41683 lt!2583355) (+ (size!41683 (exprs!8064 ct1!232)) (size!41683 (exprs!8064 ct2!328)))))))

(declare-fun b!7247404 () Bool)

(assert (=> b!7247404 (= e!4345497 (or (not (= (exprs!8064 ct2!328) Nil!70328)) (= lt!2583355 (exprs!8064 ct1!232))))))

(declare-fun d!2252161 () Bool)

(assert (=> d!2252161 e!4345497))

(declare-fun res!2939671 () Bool)

(assert (=> d!2252161 (=> (not res!2939671) (not e!4345497))))

(declare-fun content!14561 (List!70452) (Set Regex!18624))

(assert (=> d!2252161 (= res!2939671 (= (content!14561 lt!2583355) (set.union (content!14561 (exprs!8064 ct1!232)) (content!14561 (exprs!8064 ct2!328)))))))

(declare-fun e!4345498 () List!70452)

(assert (=> d!2252161 (= lt!2583355 e!4345498)))

(declare-fun c!1346393 () Bool)

(assert (=> d!2252161 (= c!1346393 (is-Nil!70328 (exprs!8064 ct1!232)))))

(assert (=> d!2252161 (= (++!16510 (exprs!8064 ct1!232) (exprs!8064 ct2!328)) lt!2583355)))

(declare-fun b!7247401 () Bool)

(assert (=> b!7247401 (= e!4345498 (exprs!8064 ct2!328))))

(declare-fun b!7247402 () Bool)

(assert (=> b!7247402 (= e!4345498 (Cons!70328 (h!76776 (exprs!8064 ct1!232)) (++!16510 (t!384504 (exprs!8064 ct1!232)) (exprs!8064 ct2!328))))))

(assert (= (and d!2252161 c!1346393) b!7247401))

(assert (= (and d!2252161 (not c!1346393)) b!7247402))

(assert (= (and d!2252161 res!2939671) b!7247403))

(assert (= (and b!7247403 res!2939672) b!7247404))

(declare-fun m!7924588 () Bool)

(assert (=> b!7247403 m!7924588))

(declare-fun m!7924590 () Bool)

(assert (=> b!7247403 m!7924590))

(declare-fun m!7924592 () Bool)

(assert (=> b!7247403 m!7924592))

(declare-fun m!7924594 () Bool)

(assert (=> d!2252161 m!7924594))

(declare-fun m!7924596 () Bool)

(assert (=> d!2252161 m!7924596))

(declare-fun m!7924598 () Bool)

(assert (=> d!2252161 m!7924598))

(declare-fun m!7924600 () Bool)

(assert (=> b!7247402 m!7924600))

(assert (=> b!7247343 d!2252161))

(declare-fun d!2252163 () Bool)

(assert (=> d!2252163 (forall!17459 (++!16510 (exprs!8064 ct1!232) (exprs!8064 ct2!328)) lambda!443416)))

(declare-fun lt!2583359 () Unit!163831)

(declare-fun choose!55925 (List!70452 List!70452 Int) Unit!163831)

(assert (=> d!2252163 (= lt!2583359 (choose!55925 (exprs!8064 ct1!232) (exprs!8064 ct2!328) lambda!443416))))

(assert (=> d!2252163 (forall!17459 (exprs!8064 ct1!232) lambda!443416)))

(assert (=> d!2252163 (= (lemmaConcatPreservesForall!1431 (exprs!8064 ct1!232) (exprs!8064 ct2!328) lambda!443416) lt!2583359)))

(declare-fun bs!1905416 () Bool)

(assert (= bs!1905416 d!2252163))

(assert (=> bs!1905416 m!7924478))

(assert (=> bs!1905416 m!7924478))

(declare-fun m!7924606 () Bool)

(assert (=> bs!1905416 m!7924606))

(declare-fun m!7924608 () Bool)

(assert (=> bs!1905416 m!7924608))

(declare-fun m!7924610 () Bool)

(assert (=> bs!1905416 m!7924610))

(assert (=> b!7247343 d!2252163))

(declare-fun bs!1905417 () Bool)

(declare-fun d!2252167 () Bool)

(assert (= bs!1905417 (and d!2252167 b!7247343)))

(declare-fun lambda!443441 () Int)

(assert (=> bs!1905417 (= lambda!443441 lambda!443416)))

(declare-fun bs!1905418 () Bool)

(assert (= bs!1905418 (and d!2252167 d!2252155)))

(assert (=> bs!1905418 (= lambda!443441 lambda!443437)))

(declare-fun bs!1905419 () Bool)

(assert (= bs!1905419 (and d!2252167 d!2252157)))

(assert (=> bs!1905419 (= lambda!443441 lambda!443438)))

(assert (=> d!2252167 (= (inv!89571 lt!2583308) (forall!17459 (exprs!8064 lt!2583308) lambda!443441))))

(declare-fun bs!1905420 () Bool)

(assert (= bs!1905420 d!2252167))

(declare-fun m!7924612 () Bool)

(assert (=> bs!1905420 m!7924612))

(assert (=> b!7247350 d!2252167))

(declare-fun bs!1905423 () Bool)

(declare-fun d!2252169 () Bool)

(assert (= bs!1905423 (and d!2252169 b!7247343)))

(declare-fun lambda!443445 () Int)

(assert (=> bs!1905423 (= lambda!443445 lambda!443416)))

(declare-fun bs!1905424 () Bool)

(assert (= bs!1905424 (and d!2252169 d!2252155)))

(assert (=> bs!1905424 (= lambda!443445 lambda!443437)))

(declare-fun bs!1905425 () Bool)

(assert (= bs!1905425 (and d!2252169 d!2252157)))

(assert (=> bs!1905425 (= lambda!443445 lambda!443438)))

(declare-fun bs!1905426 () Bool)

(assert (= bs!1905426 (and d!2252169 d!2252167)))

(assert (=> bs!1905426 (= lambda!443445 lambda!443441)))

(assert (=> d!2252169 (matchZipper!3534 (set.insert (Context!15129 (++!16510 (exprs!8064 lt!2583314) (exprs!8064 ct2!328))) (as set.empty (Set Context!15128))) (++!16511 (t!384505 s1!1971) s2!1849))))

(declare-fun lt!2583365 () Unit!163831)

(assert (=> d!2252169 (= lt!2583365 (lemmaConcatPreservesForall!1431 (exprs!8064 lt!2583314) (exprs!8064 ct2!328) lambda!443445))))

(declare-fun lt!2583364 () Unit!163831)

(declare-fun choose!55926 (Context!15128 Context!15128 List!70453 List!70453) Unit!163831)

(assert (=> d!2252169 (= lt!2583364 (choose!55926 lt!2583314 ct2!328 (t!384505 s1!1971) s2!1849))))

(assert (=> d!2252169 (matchZipper!3534 (set.insert lt!2583314 (as set.empty (Set Context!15128))) (t!384505 s1!1971))))

(assert (=> d!2252169 (= (lemmaConcatenateContextMatchesConcatOfStrings!369 lt!2583314 ct2!328 (t!384505 s1!1971) s2!1849) lt!2583364)))

(declare-fun bs!1905427 () Bool)

(assert (= bs!1905427 d!2252169))

(assert (=> bs!1905427 m!7924494))

(declare-fun m!7924616 () Bool)

(assert (=> bs!1905427 m!7924616))

(assert (=> bs!1905427 m!7924494))

(declare-fun m!7924618 () Bool)

(assert (=> bs!1905427 m!7924618))

(declare-fun m!7924620 () Bool)

(assert (=> bs!1905427 m!7924620))

(declare-fun m!7924622 () Bool)

(assert (=> bs!1905427 m!7924622))

(assert (=> bs!1905427 m!7924622))

(declare-fun m!7924624 () Bool)

(assert (=> bs!1905427 m!7924624))

(declare-fun m!7924626 () Bool)

(assert (=> bs!1905427 m!7924626))

(assert (=> bs!1905427 m!7924616))

(assert (=> bs!1905427 m!7924490))

(assert (=> b!7247350 d!2252169))

(declare-fun d!2252173 () Bool)

(declare-fun e!4345501 () Bool)

(assert (=> d!2252173 e!4345501))

(declare-fun res!2939675 () Bool)

(assert (=> d!2252173 (=> (not res!2939675) (not e!4345501))))

(declare-fun lt!2583370 () Context!15128)

(declare-fun dynLambda!28701 (Int Context!15128) Bool)

(assert (=> d!2252173 (= res!2939675 (dynLambda!28701 lambda!443417 lt!2583370))))

(declare-fun getWitness!2169 (List!70454 Int) Context!15128)

(assert (=> d!2252173 (= lt!2583370 (getWitness!2169 (toList!11453 lt!2583312) lambda!443417))))

(assert (=> d!2252173 (exists!4326 lt!2583312 lambda!443417)))

(assert (=> d!2252173 (= (getWitness!2167 lt!2583312 lambda!443417) lt!2583370)))

(declare-fun b!7247409 () Bool)

(assert (=> b!7247409 (= e!4345501 (set.member lt!2583370 lt!2583312))))

(assert (= (and d!2252173 res!2939675) b!7247409))

(declare-fun b_lambda!278153 () Bool)

(assert (=> (not b_lambda!278153) (not d!2252173)))

(declare-fun m!7924628 () Bool)

(assert (=> d!2252173 m!7924628))

(assert (=> d!2252173 m!7924508))

(assert (=> d!2252173 m!7924508))

(declare-fun m!7924630 () Bool)

(assert (=> d!2252173 m!7924630))

(assert (=> d!2252173 m!7924502))

(declare-fun m!7924632 () Bool)

(assert (=> b!7247409 m!7924632))

(assert (=> b!7247350 d!2252173))

(declare-fun d!2252175 () Bool)

(declare-fun c!1346396 () Bool)

(assert (=> d!2252175 (= c!1346396 (isEmpty!40501 (++!16511 (t!384505 s1!1971) s2!1849)))))

(declare-fun e!4345502 () Bool)

(assert (=> d!2252175 (= (matchZipper!3534 (set.insert lt!2583308 (as set.empty (Set Context!15128))) (++!16511 (t!384505 s1!1971) s2!1849)) e!4345502)))

(declare-fun b!7247410 () Bool)

(assert (=> b!7247410 (= e!4345502 (nullableZipper!2896 (set.insert lt!2583308 (as set.empty (Set Context!15128)))))))

(declare-fun b!7247411 () Bool)

(assert (=> b!7247411 (= e!4345502 (matchZipper!3534 (derivationStepZipper!3402 (set.insert lt!2583308 (as set.empty (Set Context!15128))) (head!14884 (++!16511 (t!384505 s1!1971) s2!1849))) (tail!14286 (++!16511 (t!384505 s1!1971) s2!1849))))))

(assert (= (and d!2252175 c!1346396) b!7247410))

(assert (= (and d!2252175 (not c!1346396)) b!7247411))

(assert (=> d!2252175 m!7924494))

(declare-fun m!7924634 () Bool)

(assert (=> d!2252175 m!7924634))

(assert (=> b!7247410 m!7924486))

(declare-fun m!7924636 () Bool)

(assert (=> b!7247410 m!7924636))

(assert (=> b!7247411 m!7924494))

(declare-fun m!7924638 () Bool)

(assert (=> b!7247411 m!7924638))

(assert (=> b!7247411 m!7924486))

(assert (=> b!7247411 m!7924638))

(declare-fun m!7924640 () Bool)

(assert (=> b!7247411 m!7924640))

(assert (=> b!7247411 m!7924494))

(declare-fun m!7924642 () Bool)

(assert (=> b!7247411 m!7924642))

(assert (=> b!7247411 m!7924640))

(assert (=> b!7247411 m!7924642))

(declare-fun m!7924644 () Bool)

(assert (=> b!7247411 m!7924644))

(assert (=> b!7247350 d!2252175))

(declare-fun b!7247422 () Bool)

(declare-fun res!2939681 () Bool)

(declare-fun e!4345508 () Bool)

(assert (=> b!7247422 (=> (not res!2939681) (not e!4345508))))

(declare-fun lt!2583374 () List!70453)

(declare-fun size!41684 (List!70453) Int)

(assert (=> b!7247422 (= res!2939681 (= (size!41684 lt!2583374) (+ (size!41684 (t!384505 s1!1971)) (size!41684 s2!1849))))))

(declare-fun b!7247420 () Bool)

(declare-fun e!4345507 () List!70453)

(assert (=> b!7247420 (= e!4345507 s2!1849)))

(declare-fun b!7247423 () Bool)

(assert (=> b!7247423 (= e!4345508 (or (not (= s2!1849 Nil!70329)) (= lt!2583374 (t!384505 s1!1971))))))

(declare-fun d!2252177 () Bool)

(assert (=> d!2252177 e!4345508))

(declare-fun res!2939680 () Bool)

(assert (=> d!2252177 (=> (not res!2939680) (not e!4345508))))

(declare-fun content!14562 (List!70453) (Set C!37522))

(assert (=> d!2252177 (= res!2939680 (= (content!14562 lt!2583374) (set.union (content!14562 (t!384505 s1!1971)) (content!14562 s2!1849))))))

(assert (=> d!2252177 (= lt!2583374 e!4345507)))

(declare-fun c!1346399 () Bool)

(assert (=> d!2252177 (= c!1346399 (is-Nil!70329 (t!384505 s1!1971)))))

(assert (=> d!2252177 (= (++!16511 (t!384505 s1!1971) s2!1849) lt!2583374)))

(declare-fun b!7247421 () Bool)

(assert (=> b!7247421 (= e!4345507 (Cons!70329 (h!76777 (t!384505 s1!1971)) (++!16511 (t!384505 (t!384505 s1!1971)) s2!1849)))))

(assert (= (and d!2252177 c!1346399) b!7247420))

(assert (= (and d!2252177 (not c!1346399)) b!7247421))

(assert (= (and d!2252177 res!2939680) b!7247422))

(assert (= (and b!7247422 res!2939681) b!7247423))

(declare-fun m!7924654 () Bool)

(assert (=> b!7247422 m!7924654))

(declare-fun m!7924656 () Bool)

(assert (=> b!7247422 m!7924656))

(declare-fun m!7924658 () Bool)

(assert (=> b!7247422 m!7924658))

(declare-fun m!7924660 () Bool)

(assert (=> d!2252177 m!7924660))

(declare-fun m!7924662 () Bool)

(assert (=> d!2252177 m!7924662))

(declare-fun m!7924664 () Bool)

(assert (=> d!2252177 m!7924664))

(declare-fun m!7924666 () Bool)

(assert (=> b!7247421 m!7924666))

(assert (=> b!7247350 d!2252177))

(declare-fun b!7247426 () Bool)

(declare-fun res!2939683 () Bool)

(declare-fun e!4345509 () Bool)

(assert (=> b!7247426 (=> (not res!2939683) (not e!4345509))))

(declare-fun lt!2583375 () List!70452)

(assert (=> b!7247426 (= res!2939683 (= (size!41683 lt!2583375) (+ (size!41683 (exprs!8064 lt!2583314)) (size!41683 (exprs!8064 ct2!328)))))))

(declare-fun b!7247427 () Bool)

(assert (=> b!7247427 (= e!4345509 (or (not (= (exprs!8064 ct2!328) Nil!70328)) (= lt!2583375 (exprs!8064 lt!2583314))))))

(declare-fun d!2252181 () Bool)

(assert (=> d!2252181 e!4345509))

(declare-fun res!2939682 () Bool)

(assert (=> d!2252181 (=> (not res!2939682) (not e!4345509))))

(assert (=> d!2252181 (= res!2939682 (= (content!14561 lt!2583375) (set.union (content!14561 (exprs!8064 lt!2583314)) (content!14561 (exprs!8064 ct2!328)))))))

(declare-fun e!4345510 () List!70452)

(assert (=> d!2252181 (= lt!2583375 e!4345510)))

(declare-fun c!1346400 () Bool)

(assert (=> d!2252181 (= c!1346400 (is-Nil!70328 (exprs!8064 lt!2583314)))))

(assert (=> d!2252181 (= (++!16510 (exprs!8064 lt!2583314) (exprs!8064 ct2!328)) lt!2583375)))

(declare-fun b!7247424 () Bool)

(assert (=> b!7247424 (= e!4345510 (exprs!8064 ct2!328))))

(declare-fun b!7247425 () Bool)

(assert (=> b!7247425 (= e!4345510 (Cons!70328 (h!76776 (exprs!8064 lt!2583314)) (++!16510 (t!384504 (exprs!8064 lt!2583314)) (exprs!8064 ct2!328))))))

(assert (= (and d!2252181 c!1346400) b!7247424))

(assert (= (and d!2252181 (not c!1346400)) b!7247425))

(assert (= (and d!2252181 res!2939682) b!7247426))

(assert (= (and b!7247426 res!2939683) b!7247427))

(declare-fun m!7924668 () Bool)

(assert (=> b!7247426 m!7924668))

(declare-fun m!7924670 () Bool)

(assert (=> b!7247426 m!7924670))

(assert (=> b!7247426 m!7924592))

(declare-fun m!7924672 () Bool)

(assert (=> d!2252181 m!7924672))

(declare-fun m!7924674 () Bool)

(assert (=> d!2252181 m!7924674))

(assert (=> d!2252181 m!7924598))

(declare-fun m!7924676 () Bool)

(assert (=> b!7247425 m!7924676))

(assert (=> b!7247350 d!2252181))

(declare-fun d!2252183 () Bool)

(assert (=> d!2252183 (forall!17459 (++!16510 (exprs!8064 lt!2583314) (exprs!8064 ct2!328)) lambda!443416)))

(declare-fun lt!2583376 () Unit!163831)

(assert (=> d!2252183 (= lt!2583376 (choose!55925 (exprs!8064 lt!2583314) (exprs!8064 ct2!328) lambda!443416))))

(assert (=> d!2252183 (forall!17459 (exprs!8064 lt!2583314) lambda!443416)))

(assert (=> d!2252183 (= (lemmaConcatPreservesForall!1431 (exprs!8064 lt!2583314) (exprs!8064 ct2!328) lambda!443416) lt!2583376)))

(declare-fun bs!1905431 () Bool)

(assert (= bs!1905431 d!2252183))

(assert (=> bs!1905431 m!7924490))

(assert (=> bs!1905431 m!7924490))

(declare-fun m!7924678 () Bool)

(assert (=> bs!1905431 m!7924678))

(declare-fun m!7924680 () Bool)

(assert (=> bs!1905431 m!7924680))

(declare-fun m!7924682 () Bool)

(assert (=> bs!1905431 m!7924682))

(assert (=> b!7247350 d!2252183))

(declare-fun d!2252185 () Bool)

(declare-fun c!1346401 () Bool)

(assert (=> d!2252185 (= c!1346401 (isEmpty!40501 s2!1849))))

(declare-fun e!4345511 () Bool)

(assert (=> d!2252185 (= (matchZipper!3534 (set.insert ct2!328 (as set.empty (Set Context!15128))) s2!1849) e!4345511)))

(declare-fun b!7247428 () Bool)

(assert (=> b!7247428 (= e!4345511 (nullableZipper!2896 (set.insert ct2!328 (as set.empty (Set Context!15128)))))))

(declare-fun b!7247429 () Bool)

(assert (=> b!7247429 (= e!4345511 (matchZipper!3534 (derivationStepZipper!3402 (set.insert ct2!328 (as set.empty (Set Context!15128))) (head!14884 s2!1849)) (tail!14286 s2!1849)))))

(assert (= (and d!2252185 c!1346401) b!7247428))

(assert (= (and d!2252185 (not c!1346401)) b!7247429))

(declare-fun m!7924684 () Bool)

(assert (=> d!2252185 m!7924684))

(assert (=> b!7247428 m!7924482))

(declare-fun m!7924686 () Bool)

(assert (=> b!7247428 m!7924686))

(declare-fun m!7924688 () Bool)

(assert (=> b!7247429 m!7924688))

(assert (=> b!7247429 m!7924482))

(assert (=> b!7247429 m!7924688))

(declare-fun m!7924690 () Bool)

(assert (=> b!7247429 m!7924690))

(declare-fun m!7924692 () Bool)

(assert (=> b!7247429 m!7924692))

(assert (=> b!7247429 m!7924690))

(assert (=> b!7247429 m!7924692))

(declare-fun m!7924694 () Bool)

(assert (=> b!7247429 m!7924694))

(assert (=> b!7247351 d!2252185))

(declare-fun d!2252187 () Bool)

(declare-fun lt!2583382 () Bool)

(assert (=> d!2252187 (= lt!2583382 (exists!4327 (toList!11453 lt!2583312) lambda!443417))))

(declare-fun choose!55927 ((Set Context!15128) Int) Bool)

(assert (=> d!2252187 (= lt!2583382 (choose!55927 lt!2583312 lambda!443417))))

(assert (=> d!2252187 (= (exists!4326 lt!2583312 lambda!443417) lt!2583382)))

(declare-fun bs!1905432 () Bool)

(assert (= bs!1905432 d!2252187))

(assert (=> bs!1905432 m!7924508))

(assert (=> bs!1905432 m!7924508))

(declare-fun m!7924702 () Bool)

(assert (=> bs!1905432 m!7924702))

(declare-fun m!7924704 () Bool)

(assert (=> bs!1905432 m!7924704))

(assert (=> b!7247346 d!2252187))

(declare-fun bs!1905433 () Bool)

(declare-fun d!2252191 () Bool)

(assert (= bs!1905433 (and d!2252191 b!7247346)))

(declare-fun lambda!443451 () Int)

(assert (=> bs!1905433 (not (= lambda!443451 lambda!443417))))

(assert (=> d!2252191 true))

(declare-fun order!28945 () Int)

(declare-fun dynLambda!28702 (Int Int) Int)

(assert (=> d!2252191 (< (dynLambda!28702 order!28945 lambda!443417) (dynLambda!28702 order!28945 lambda!443451))))

(declare-fun forall!17460 (List!70454 Int) Bool)

(assert (=> d!2252191 (= (exists!4327 lt!2583313 lambda!443417) (not (forall!17460 lt!2583313 lambda!443451)))))

(declare-fun bs!1905434 () Bool)

(assert (= bs!1905434 d!2252191))

(declare-fun m!7924706 () Bool)

(assert (=> bs!1905434 m!7924706))

(assert (=> b!7247346 d!2252191))

(declare-fun bs!1905435 () Bool)

(declare-fun d!2252193 () Bool)

(assert (= bs!1905435 (and d!2252193 b!7247346)))

(declare-fun lambda!443454 () Int)

(assert (=> bs!1905435 (= lambda!443454 lambda!443417)))

(declare-fun bs!1905436 () Bool)

(assert (= bs!1905436 (and d!2252193 d!2252191)))

(assert (=> bs!1905436 (not (= lambda!443454 lambda!443451))))

(assert (=> d!2252193 true))

(assert (=> d!2252193 (exists!4327 lt!2583313 lambda!443454)))

(declare-fun lt!2583387 () Unit!163831)

(declare-fun choose!55928 (List!70454 List!70453) Unit!163831)

(assert (=> d!2252193 (= lt!2583387 (choose!55928 lt!2583313 (t!384505 s1!1971)))))

(declare-fun content!14563 (List!70454) (Set Context!15128))

(assert (=> d!2252193 (matchZipper!3534 (content!14563 lt!2583313) (t!384505 s1!1971))))

(assert (=> d!2252193 (= (lemmaZipperMatchesExistsMatchingContext!727 lt!2583313 (t!384505 s1!1971)) lt!2583387)))

(declare-fun bs!1905437 () Bool)

(assert (= bs!1905437 d!2252193))

(declare-fun m!7924708 () Bool)

(assert (=> bs!1905437 m!7924708))

(declare-fun m!7924710 () Bool)

(assert (=> bs!1905437 m!7924710))

(declare-fun m!7924712 () Bool)

(assert (=> bs!1905437 m!7924712))

(assert (=> bs!1905437 m!7924712))

(declare-fun m!7924714 () Bool)

(assert (=> bs!1905437 m!7924714))

(assert (=> b!7247346 d!2252193))

(declare-fun d!2252195 () Bool)

(declare-fun e!4345521 () Bool)

(assert (=> d!2252195 e!4345521))

(declare-fun res!2939693 () Bool)

(assert (=> d!2252195 (=> (not res!2939693) (not e!4345521))))

(declare-fun lt!2583390 () List!70454)

(declare-fun noDuplicate!2974 (List!70454) Bool)

(assert (=> d!2252195 (= res!2939693 (noDuplicate!2974 lt!2583390))))

(declare-fun choose!55929 ((Set Context!15128)) List!70454)

(assert (=> d!2252195 (= lt!2583390 (choose!55929 lt!2583312))))

(assert (=> d!2252195 (= (toList!11453 lt!2583312) lt!2583390)))

(declare-fun b!7247445 () Bool)

(assert (=> b!7247445 (= e!4345521 (= (content!14563 lt!2583390) lt!2583312))))

(assert (= (and d!2252195 res!2939693) b!7247445))

(declare-fun m!7924716 () Bool)

(assert (=> d!2252195 m!7924716))

(declare-fun m!7924718 () Bool)

(assert (=> d!2252195 m!7924718))

(declare-fun m!7924720 () Bool)

(assert (=> b!7247445 m!7924720))

(assert (=> b!7247346 d!2252195))

(declare-fun b!7247450 () Bool)

(declare-fun e!4345524 () Bool)

(declare-fun tp!2036845 () Bool)

(declare-fun tp!2036846 () Bool)

(assert (=> b!7247450 (= e!4345524 (and tp!2036845 tp!2036846))))

(assert (=> b!7247348 (= tp!2036827 e!4345524)))

(assert (= (and b!7247348 (is-Cons!70328 (exprs!8064 ct2!328))) b!7247450))

(declare-fun b!7247451 () Bool)

(declare-fun e!4345525 () Bool)

(declare-fun tp!2036847 () Bool)

(declare-fun tp!2036848 () Bool)

(assert (=> b!7247451 (= e!4345525 (and tp!2036847 tp!2036848))))

(assert (=> b!7247347 (= tp!2036825 e!4345525)))

(assert (= (and b!7247347 (is-Cons!70328 (exprs!8064 ct1!232))) b!7247451))

(declare-fun b!7247460 () Bool)

(declare-fun e!4345530 () Bool)

(declare-fun tp!2036851 () Bool)

(assert (=> b!7247460 (= e!4345530 (and tp_is_empty!46713 tp!2036851))))

(assert (=> b!7247344 (= tp!2036826 e!4345530)))

(assert (= (and b!7247344 (is-Cons!70329 (t!384505 s1!1971))) b!7247460))

(declare-fun b!7247461 () Bool)

(declare-fun e!4345531 () Bool)

(declare-fun tp!2036852 () Bool)

(assert (=> b!7247461 (= e!4345531 (and tp_is_empty!46713 tp!2036852))))

(assert (=> b!7247345 (= tp!2036828 e!4345531)))

(assert (= (and b!7247345 (is-Cons!70329 (t!384505 s2!1849))) b!7247461))

(declare-fun b_lambda!278155 () Bool)

(assert (= b_lambda!278153 (or b!7247346 b_lambda!278155)))

(declare-fun bs!1905438 () Bool)

(declare-fun d!2252197 () Bool)

(assert (= bs!1905438 (and d!2252197 b!7247346)))

(assert (=> bs!1905438 (= (dynLambda!28701 lambda!443417 lt!2583370) (matchZipper!3534 (set.insert lt!2583370 (as set.empty (Set Context!15128))) (t!384505 s1!1971)))))

(declare-fun m!7924722 () Bool)

(assert (=> bs!1905438 m!7924722))

(assert (=> bs!1905438 m!7924722))

(declare-fun m!7924724 () Bool)

(assert (=> bs!1905438 m!7924724))

(assert (=> d!2252173 d!2252197))

(push 1)

(assert (not b!7247402))

(assert (not d!2252153))

(assert (not d!2252191))

(assert (not b_lambda!278155))

(assert (not d!2252163))

(assert (not d!2252149))

(assert (not b!7247425))

(assert (not b!7247445))

(assert (not bs!1905438))

(assert (not d!2252187))

(assert (not b!7247411))

(assert (not b!7247388))

(assert (not d!2252151))

(assert (not b!7247426))

(assert (not d!2252183))

(assert (not d!2252155))

(assert (not d!2252195))

(assert (not d!2252173))

(assert (not b!7247392))

(assert tp_is_empty!46713)

(assert (not d!2252193))

(assert (not b!7247391))

(assert (not b!7247451))

(assert (not b!7247428))

(assert (not d!2252175))

(assert (not b!7247461))

(assert (not d!2252157))

(assert (not b!7247410))

(assert (not b!7247403))

(assert (not b!7247450))

(assert (not d!2252169))

(assert (not b!7247421))

(assert (not b!7247429))

(assert (not d!2252185))

(assert (not b!7247422))

(assert (not b!7247460))

(assert (not b!7247387))

(assert (not d!2252167))

(assert (not d!2252177))

(assert (not d!2252161))

(assert (not d!2252181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

