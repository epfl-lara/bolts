; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571974 () Bool)

(assert start!571974)

(declare-fun b!5462393 () Bool)

(assert (=> b!5462393 true))

(assert (=> b!5462393 true))

(declare-fun lambda!289946 () Int)

(declare-fun lambda!289945 () Int)

(assert (=> b!5462393 (not (= lambda!289946 lambda!289945))))

(assert (=> b!5462393 true))

(assert (=> b!5462393 true))

(declare-fun b!5462366 () Bool)

(assert (=> b!5462366 true))

(declare-fun bs!1264292 () Bool)

(declare-fun b!5462349 () Bool)

(assert (= bs!1264292 (and b!5462349 b!5462393)))

(declare-datatypes ((C!30852 0))(
  ( (C!30853 (val!25128 Int)) )
))
(declare-datatypes ((Regex!15291 0))(
  ( (ElementMatch!15291 (c!954577 C!30852)) (Concat!24136 (regOne!31094 Regex!15291) (regTwo!31094 Regex!15291)) (EmptyExpr!15291) (Star!15291 (reg!15620 Regex!15291)) (EmptyLang!15291) (Union!15291 (regOne!31095 Regex!15291) (regTwo!31095 Regex!15291)) )
))
(declare-fun r!7292 () Regex!15291)

(declare-fun lt!2232622 () Regex!15291)

(declare-fun lambda!289948 () Int)

(assert (=> bs!1264292 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232622 (regTwo!31094 r!7292))) (= lambda!289948 lambda!289945))))

(assert (=> bs!1264292 (not (= lambda!289948 lambda!289946))))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(declare-fun lambda!289949 () Int)

(assert (=> bs!1264292 (not (= lambda!289949 lambda!289945))))

(assert (=> bs!1264292 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232622 (regTwo!31094 r!7292))) (= lambda!289949 lambda!289946))))

(assert (=> b!5462349 (not (= lambda!289949 lambda!289948))))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(declare-fun lambda!289950 () Int)

(declare-fun lt!2232570 () Regex!15291)

(assert (=> bs!1264292 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232570 (regTwo!31094 r!7292))) (= lambda!289950 lambda!289945))))

(assert (=> bs!1264292 (not (= lambda!289950 lambda!289946))))

(assert (=> b!5462349 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232570 lt!2232622)) (= lambda!289950 lambda!289948))))

(assert (=> b!5462349 (not (= lambda!289950 lambda!289949))))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(declare-fun lambda!289951 () Int)

(assert (=> bs!1264292 (not (= lambda!289951 lambda!289945))))

(assert (=> b!5462349 (not (= lambda!289951 lambda!289948))))

(assert (=> b!5462349 (not (= lambda!289951 lambda!289950))))

(assert (=> bs!1264292 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232570 (regTwo!31094 r!7292))) (= lambda!289951 lambda!289946))))

(assert (=> b!5462349 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232570 lt!2232622)) (= lambda!289951 lambda!289949))))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(assert (=> b!5462349 true))

(declare-fun bs!1264293 () Bool)

(declare-fun b!5462396 () Bool)

(assert (= bs!1264293 (and b!5462396 b!5462393)))

(declare-fun lambda!289952 () Int)

(declare-fun lt!2232674 () Regex!15291)

(assert (=> bs!1264293 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232674 (regTwo!31094 r!7292))) (= lambda!289952 lambda!289945))))

(declare-fun bs!1264294 () Bool)

(assert (= bs!1264294 (and b!5462396 b!5462349)))

(assert (=> bs!1264294 (not (= lambda!289952 lambda!289951))))

(assert (=> bs!1264294 (= (= lt!2232674 lt!2232622) (= lambda!289952 lambda!289948))))

(assert (=> bs!1264294 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232674 lt!2232570)) (= lambda!289952 lambda!289950))))

(assert (=> bs!1264293 (not (= lambda!289952 lambda!289946))))

(assert (=> bs!1264294 (not (= lambda!289952 lambda!289949))))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(declare-fun lambda!289953 () Int)

(assert (=> bs!1264293 (not (= lambda!289953 lambda!289945))))

(assert (=> bs!1264294 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232674 lt!2232570)) (= lambda!289953 lambda!289951))))

(assert (=> bs!1264294 (not (= lambda!289953 lambda!289948))))

(assert (=> bs!1264294 (not (= lambda!289953 lambda!289950))))

(assert (=> b!5462396 (not (= lambda!289953 lambda!289952))))

(assert (=> bs!1264293 (= (and (= (regOne!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232674 (regTwo!31094 r!7292))) (= lambda!289953 lambda!289946))))

(assert (=> bs!1264294 (= (= lt!2232674 lt!2232622) (= lambda!289953 lambda!289949))))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(declare-fun lambda!289954 () Int)

(declare-fun lt!2232683 () Regex!15291)

(assert (=> bs!1264293 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232683 (regTwo!31094 r!7292))) (= lambda!289954 lambda!289945))))

(assert (=> bs!1264294 (not (= lambda!289954 lambda!289951))))

(assert (=> bs!1264294 (= (= lt!2232683 lt!2232570) (= lambda!289954 lambda!289950))))

(assert (=> b!5462396 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232683 lt!2232674)) (= lambda!289954 lambda!289952))))

(assert (=> bs!1264293 (not (= lambda!289954 lambda!289946))))

(assert (=> bs!1264294 (not (= lambda!289954 lambda!289949))))

(assert (=> b!5462396 (not (= lambda!289954 lambda!289953))))

(assert (=> bs!1264294 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232683 lt!2232622)) (= lambda!289954 lambda!289948))))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(declare-fun lambda!289955 () Int)

(assert (=> bs!1264293 (not (= lambda!289955 lambda!289945))))

(assert (=> bs!1264294 (= (= lt!2232683 lt!2232570) (= lambda!289955 lambda!289951))))

(assert (=> b!5462396 (not (= lambda!289955 lambda!289954))))

(assert (=> bs!1264294 (not (= lambda!289955 lambda!289950))))

(assert (=> b!5462396 (not (= lambda!289955 lambda!289952))))

(assert (=> bs!1264293 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232683 (regTwo!31094 r!7292))) (= lambda!289955 lambda!289946))))

(assert (=> bs!1264294 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232683 lt!2232622)) (= lambda!289955 lambda!289949))))

(assert (=> b!5462396 (= (and (= (regTwo!31094 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232683 lt!2232674)) (= lambda!289955 lambda!289953))))

(assert (=> bs!1264294 (not (= lambda!289955 lambda!289948))))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(assert (=> b!5462396 true))

(declare-fun bs!1264295 () Bool)

(declare-fun b!5462389 () Bool)

(assert (= bs!1264295 (and b!5462389 b!5462393)))

(declare-fun lambda!289956 () Int)

(declare-fun lt!2232665 () Regex!15291)

(assert (=> bs!1264295 (= (= lt!2232665 (regOne!31094 r!7292)) (= lambda!289956 lambda!289945))))

(declare-fun bs!1264296 () Bool)

(assert (= bs!1264296 (and b!5462389 b!5462349)))

(assert (=> bs!1264296 (not (= lambda!289956 lambda!289951))))

(declare-fun bs!1264297 () Bool)

(assert (= bs!1264297 (and b!5462389 b!5462396)))

(assert (=> bs!1264297 (= (and (= lt!2232665 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232683)) (= lambda!289956 lambda!289954))))

(assert (=> bs!1264296 (= (and (= lt!2232665 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232570)) (= lambda!289956 lambda!289950))))

(assert (=> bs!1264297 (= (and (= lt!2232665 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232674)) (= lambda!289956 lambda!289952))))

(assert (=> bs!1264297 (not (= lambda!289956 lambda!289955))))

(assert (=> bs!1264295 (not (= lambda!289956 lambda!289946))))

(assert (=> bs!1264296 (not (= lambda!289956 lambda!289949))))

(assert (=> bs!1264297 (not (= lambda!289956 lambda!289953))))

(assert (=> bs!1264296 (= (and (= lt!2232665 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232622)) (= lambda!289956 lambda!289948))))

(assert (=> b!5462389 true))

(assert (=> b!5462389 true))

(assert (=> b!5462389 true))

(declare-fun lambda!289957 () Int)

(assert (=> bs!1264295 (not (= lambda!289957 lambda!289945))))

(assert (=> bs!1264296 (= (and (= lt!2232665 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232570)) (= lambda!289957 lambda!289951))))

(assert (=> bs!1264297 (not (= lambda!289957 lambda!289954))))

(assert (=> b!5462389 (not (= lambda!289957 lambda!289956))))

(assert (=> bs!1264296 (not (= lambda!289957 lambda!289950))))

(assert (=> bs!1264297 (not (= lambda!289957 lambda!289952))))

(assert (=> bs!1264297 (= (and (= lt!2232665 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232683)) (= lambda!289957 lambda!289955))))

(assert (=> bs!1264295 (= (= lt!2232665 (regOne!31094 r!7292)) (= lambda!289957 lambda!289946))))

(assert (=> bs!1264296 (= (and (= lt!2232665 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232622)) (= lambda!289957 lambda!289949))))

(assert (=> bs!1264297 (= (and (= lt!2232665 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232674)) (= lambda!289957 lambda!289953))))

(assert (=> bs!1264296 (not (= lambda!289957 lambda!289948))))

(assert (=> b!5462389 true))

(assert (=> b!5462389 true))

(assert (=> b!5462389 true))

(declare-fun bs!1264298 () Bool)

(declare-fun b!5462359 () Bool)

(assert (= bs!1264298 (and b!5462359 b!5462393)))

(declare-datatypes ((List!62172 0))(
  ( (Nil!62048) (Cons!62048 (h!68496 C!30852) (t!375401 List!62172)) )
))
(declare-fun s!2326 () List!62172)

(declare-datatypes ((tuple2!64980 0))(
  ( (tuple2!64981 (_1!35793 List!62172) (_2!35793 List!62172)) )
))
(declare-fun lt!2232542 () tuple2!64980)

(declare-fun lambda!289958 () Int)

(assert (=> bs!1264298 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289958 lambda!289945))))

(declare-fun bs!1264299 () Bool)

(assert (= bs!1264299 (and b!5462359 b!5462389)))

(assert (=> bs!1264299 (not (= lambda!289958 lambda!289957))))

(declare-fun bs!1264300 () Bool)

(assert (= bs!1264300 (and b!5462359 b!5462349)))

(assert (=> bs!1264300 (not (= lambda!289958 lambda!289951))))

(declare-fun bs!1264301 () Bool)

(assert (= bs!1264301 (and b!5462359 b!5462396)))

(assert (=> bs!1264301 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289958 lambda!289954))))

(assert (=> bs!1264299 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289958 lambda!289956))))

(assert (=> bs!1264300 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289958 lambda!289950))))

(assert (=> bs!1264301 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289958 lambda!289952))))

(assert (=> bs!1264301 (not (= lambda!289958 lambda!289955))))

(assert (=> bs!1264298 (not (= lambda!289958 lambda!289946))))

(assert (=> bs!1264300 (not (= lambda!289958 lambda!289949))))

(assert (=> bs!1264301 (not (= lambda!289958 lambda!289953))))

(assert (=> bs!1264300 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289958 lambda!289948))))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(declare-fun lambda!289959 () Int)

(assert (=> bs!1264298 (not (= lambda!289959 lambda!289945))))

(assert (=> bs!1264299 (not (= lambda!289959 lambda!289957))))

(assert (=> bs!1264300 (not (= lambda!289959 lambda!289951))))

(assert (=> bs!1264301 (not (= lambda!289959 lambda!289954))))

(assert (=> bs!1264299 (not (= lambda!289959 lambda!289956))))

(assert (=> bs!1264300 (not (= lambda!289959 lambda!289950))))

(assert (=> bs!1264301 (not (= lambda!289959 lambda!289952))))

(assert (=> b!5462359 (not (= lambda!289959 lambda!289958))))

(assert (=> bs!1264301 (not (= lambda!289959 lambda!289955))))

(assert (=> bs!1264298 (not (= lambda!289959 lambda!289946))))

(assert (=> bs!1264300 (not (= lambda!289959 lambda!289949))))

(assert (=> bs!1264301 (not (= lambda!289959 lambda!289953))))

(assert (=> bs!1264300 (not (= lambda!289959 lambda!289948))))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(declare-fun lambda!289960 () Int)

(assert (=> bs!1264298 (not (= lambda!289960 lambda!289945))))

(assert (=> bs!1264299 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289960 lambda!289957))))

(assert (=> bs!1264300 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289960 lambda!289951))))

(assert (=> bs!1264301 (not (= lambda!289960 lambda!289954))))

(assert (=> b!5462359 (not (= lambda!289960 lambda!289959))))

(assert (=> bs!1264299 (not (= lambda!289960 lambda!289956))))

(assert (=> bs!1264300 (not (= lambda!289960 lambda!289950))))

(assert (=> bs!1264301 (not (= lambda!289960 lambda!289952))))

(assert (=> b!5462359 (not (= lambda!289960 lambda!289958))))

(assert (=> bs!1264301 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289960 lambda!289955))))

(assert (=> bs!1264298 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289960 lambda!289946))))

(assert (=> bs!1264300 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289960 lambda!289949))))

(assert (=> bs!1264301 (= (and (= (_1!35793 lt!2232542) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289960 lambda!289953))))

(assert (=> bs!1264300 (not (= lambda!289960 lambda!289948))))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(assert (=> b!5462359 true))

(declare-fun b!5462390 () Bool)

(assert (=> b!5462390 true))

(declare-fun bs!1264302 () Bool)

(assert (= bs!1264302 (and b!5462390 b!5462359)))

(declare-fun lambda!289963 () Int)

(declare-fun lambda!289961 () Int)

(assert (=> bs!1264302 (= lambda!289963 lambda!289961)))

(declare-fun bs!1264303 () Bool)

(assert (= bs!1264303 (and b!5462390 b!5462393)))

(declare-fun lambda!289964 () Int)

(declare-fun lt!2232686 () Regex!15291)

(assert (=> bs!1264303 (= (= lt!2232686 (regOne!31094 r!7292)) (= lambda!289964 lambda!289945))))

(declare-fun bs!1264304 () Bool)

(assert (= bs!1264304 (and b!5462390 b!5462389)))

(assert (=> bs!1264304 (not (= lambda!289964 lambda!289957))))

(declare-fun bs!1264305 () Bool)

(assert (= bs!1264305 (and b!5462390 b!5462349)))

(assert (=> bs!1264305 (not (= lambda!289964 lambda!289951))))

(declare-fun bs!1264306 () Bool)

(assert (= bs!1264306 (and b!5462390 b!5462396)))

(assert (=> bs!1264306 (= (and (= lt!2232686 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232683)) (= lambda!289964 lambda!289954))))

(assert (=> bs!1264302 (not (= lambda!289964 lambda!289959))))

(assert (=> bs!1264304 (= (= lt!2232686 lt!2232665) (= lambda!289964 lambda!289956))))

(assert (=> bs!1264305 (= (and (= lt!2232686 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232570)) (= lambda!289964 lambda!289950))))

(assert (=> bs!1264306 (= (and (= lt!2232686 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232674)) (= lambda!289964 lambda!289952))))

(assert (=> bs!1264302 (= (and (= s!2326 (_1!35793 lt!2232542)) (= lt!2232686 (reg!15620 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232665)) (= lambda!289964 lambda!289958))))

(assert (=> bs!1264306 (not (= lambda!289964 lambda!289955))))

(assert (=> bs!1264303 (not (= lambda!289964 lambda!289946))))

(assert (=> bs!1264302 (not (= lambda!289964 lambda!289960))))

(assert (=> bs!1264305 (not (= lambda!289964 lambda!289949))))

(assert (=> bs!1264306 (not (= lambda!289964 lambda!289953))))

(assert (=> bs!1264305 (= (and (= lt!2232686 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232622)) (= lambda!289964 lambda!289948))))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(declare-fun lambda!289965 () Int)

(assert (=> bs!1264303 (not (= lambda!289965 lambda!289945))))

(assert (=> bs!1264304 (= (= lt!2232686 lt!2232665) (= lambda!289965 lambda!289957))))

(assert (=> bs!1264305 (= (and (= lt!2232686 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232570)) (= lambda!289965 lambda!289951))))

(assert (=> bs!1264306 (not (= lambda!289965 lambda!289954))))

(assert (=> bs!1264302 (not (= lambda!289965 lambda!289959))))

(assert (=> bs!1264304 (not (= lambda!289965 lambda!289956))))

(assert (=> bs!1264305 (not (= lambda!289965 lambda!289950))))

(assert (=> bs!1264306 (not (= lambda!289965 lambda!289952))))

(assert (=> bs!1264302 (not (= lambda!289965 lambda!289958))))

(assert (=> b!5462390 (not (= lambda!289965 lambda!289964))))

(assert (=> bs!1264306 (= (and (= lt!2232686 (regTwo!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232683)) (= lambda!289965 lambda!289955))))

(assert (=> bs!1264303 (= (= lt!2232686 (regOne!31094 r!7292)) (= lambda!289965 lambda!289946))))

(assert (=> bs!1264302 (= (and (= s!2326 (_1!35793 lt!2232542)) (= lt!2232686 (reg!15620 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232665)) (= lambda!289965 lambda!289960))))

(assert (=> bs!1264305 (= (and (= lt!2232686 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232622)) (= lambda!289965 lambda!289949))))

(assert (=> bs!1264306 (= (and (= lt!2232686 (regOne!31094 (regOne!31094 r!7292))) (= (regTwo!31094 r!7292) lt!2232674)) (= lambda!289965 lambda!289953))))

(assert (=> bs!1264305 (not (= lambda!289965 lambda!289948))))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(declare-fun lt!2232548 () tuple2!64980)

(declare-fun lambda!289966 () Int)

(assert (=> bs!1264303 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289966 lambda!289945))))

(assert (=> bs!1264304 (not (= lambda!289966 lambda!289957))))

(assert (=> bs!1264305 (not (= lambda!289966 lambda!289951))))

(assert (=> bs!1264306 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289966 lambda!289954))))

(assert (=> bs!1264302 (not (= lambda!289966 lambda!289959))))

(assert (=> bs!1264304 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289966 lambda!289956))))

(assert (=> b!5462390 (not (= lambda!289966 lambda!289965))))

(assert (=> bs!1264305 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289966 lambda!289950))))

(assert (=> bs!1264306 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289966 lambda!289952))))

(assert (=> bs!1264302 (= (= (_1!35793 lt!2232548) (_1!35793 lt!2232542)) (= lambda!289966 lambda!289958))))

(assert (=> b!5462390 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232686) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289966 lambda!289964))))

(assert (=> bs!1264306 (not (= lambda!289966 lambda!289955))))

(assert (=> bs!1264303 (not (= lambda!289966 lambda!289946))))

(assert (=> bs!1264302 (not (= lambda!289966 lambda!289960))))

(assert (=> bs!1264305 (not (= lambda!289966 lambda!289949))))

(assert (=> bs!1264306 (not (= lambda!289966 lambda!289953))))

(assert (=> bs!1264305 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289966 lambda!289948))))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(declare-fun lambda!289967 () Int)

(assert (=> bs!1264303 (not (= lambda!289967 lambda!289945))))

(assert (=> bs!1264304 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289967 lambda!289957))))

(assert (=> bs!1264305 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289967 lambda!289951))))

(assert (=> bs!1264306 (not (= lambda!289967 lambda!289954))))

(assert (=> bs!1264302 (not (= lambda!289967 lambda!289959))))

(assert (=> bs!1264304 (not (= lambda!289967 lambda!289956))))

(assert (=> bs!1264305 (not (= lambda!289967 lambda!289950))))

(assert (=> bs!1264306 (not (= lambda!289967 lambda!289952))))

(assert (=> bs!1264302 (not (= lambda!289967 lambda!289958))))

(assert (=> b!5462390 (not (= lambda!289967 lambda!289964))))

(assert (=> bs!1264306 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289967 lambda!289955))))

(assert (=> bs!1264303 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289967 lambda!289946))))

(assert (=> bs!1264302 (= (= (_1!35793 lt!2232548) (_1!35793 lt!2232542)) (= lambda!289967 lambda!289960))))

(assert (=> bs!1264305 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289967 lambda!289949))))

(assert (=> bs!1264306 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289967 lambda!289953))))

(assert (=> bs!1264305 (not (= lambda!289967 lambda!289948))))

(assert (=> b!5462390 (not (= lambda!289967 lambda!289966))))

(assert (=> b!5462390 (= (and (= (_1!35793 lt!2232548) s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232686) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289967 lambda!289965))))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(declare-fun lambda!289968 () Int)

(assert (=> bs!1264303 (not (= lambda!289968 lambda!289945))))

(assert (=> bs!1264304 (not (= lambda!289968 lambda!289957))))

(assert (=> bs!1264305 (not (= lambda!289968 lambda!289951))))

(assert (=> bs!1264306 (not (= lambda!289968 lambda!289954))))

(assert (=> bs!1264302 (= (= (_1!35793 lt!2232548) (_1!35793 lt!2232542)) (= lambda!289968 lambda!289959))))

(assert (=> bs!1264304 (not (= lambda!289968 lambda!289956))))

(assert (=> bs!1264305 (not (= lambda!289968 lambda!289950))))

(assert (=> bs!1264306 (not (= lambda!289968 lambda!289952))))

(assert (=> bs!1264302 (not (= lambda!289968 lambda!289958))))

(assert (=> b!5462390 (not (= lambda!289968 lambda!289964))))

(assert (=> bs!1264306 (not (= lambda!289968 lambda!289955))))

(assert (=> bs!1264303 (not (= lambda!289968 lambda!289946))))

(assert (=> bs!1264302 (not (= lambda!289968 lambda!289960))))

(assert (=> bs!1264305 (not (= lambda!289968 lambda!289949))))

(assert (=> bs!1264306 (not (= lambda!289968 lambda!289953))))

(assert (=> b!5462390 (not (= lambda!289968 lambda!289967))))

(assert (=> bs!1264305 (not (= lambda!289968 lambda!289948))))

(assert (=> b!5462390 (not (= lambda!289968 lambda!289966))))

(assert (=> b!5462390 (not (= lambda!289968 lambda!289965))))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(assert (=> b!5462390 true))

(declare-fun bs!1264307 () Bool)

(declare-fun b!5462350 () Bool)

(assert (= bs!1264307 (and b!5462350 b!5462393)))

(declare-fun lambda!289969 () Int)

(assert (=> bs!1264307 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289969 lambda!289945))))

(declare-fun bs!1264308 () Bool)

(assert (= bs!1264308 (and b!5462350 b!5462389)))

(assert (=> bs!1264308 (not (= lambda!289969 lambda!289957))))

(declare-fun bs!1264309 () Bool)

(assert (= bs!1264309 (and b!5462350 b!5462349)))

(assert (=> bs!1264309 (not (= lambda!289969 lambda!289951))))

(declare-fun bs!1264310 () Bool)

(assert (= bs!1264310 (and b!5462350 b!5462396)))

(assert (=> bs!1264310 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289969 lambda!289954))))

(declare-fun bs!1264311 () Bool)

(assert (= bs!1264311 (and b!5462350 b!5462359)))

(assert (=> bs!1264311 (not (= lambda!289969 lambda!289959))))

(declare-fun bs!1264312 () Bool)

(assert (= bs!1264312 (and b!5462350 b!5462390)))

(assert (=> bs!1264312 (not (= lambda!289969 lambda!289968))))

(assert (=> bs!1264308 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289969 lambda!289956))))

(assert (=> bs!1264309 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289969 lambda!289950))))

(assert (=> bs!1264310 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289969 lambda!289952))))

(assert (=> bs!1264311 (= (= Nil!62048 (_1!35793 lt!2232542)) (= lambda!289969 lambda!289958))))

(assert (=> bs!1264312 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232686) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289969 lambda!289964))))

(assert (=> bs!1264310 (not (= lambda!289969 lambda!289955))))

(assert (=> bs!1264307 (not (= lambda!289969 lambda!289946))))

(assert (=> bs!1264311 (not (= lambda!289969 lambda!289960))))

(assert (=> bs!1264309 (not (= lambda!289969 lambda!289949))))

(assert (=> bs!1264310 (not (= lambda!289969 lambda!289953))))

(assert (=> bs!1264312 (not (= lambda!289969 lambda!289967))))

(assert (=> bs!1264309 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289969 lambda!289948))))

(assert (=> bs!1264312 (= (= Nil!62048 (_1!35793 lt!2232548)) (= lambda!289969 lambda!289966))))

(assert (=> bs!1264312 (not (= lambda!289969 lambda!289965))))

(assert (=> b!5462350 true))

(assert (=> b!5462350 true))

(declare-fun lambda!289970 () Int)

(assert (=> bs!1264307 (not (= lambda!289970 lambda!289945))))

(assert (=> bs!1264308 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232665) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289970 lambda!289957))))

(assert (=> bs!1264309 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232570)) (= lambda!289970 lambda!289951))))

(assert (=> bs!1264310 (not (= lambda!289970 lambda!289954))))

(assert (=> bs!1264311 (not (= lambda!289970 lambda!289959))))

(assert (=> b!5462350 (not (= lambda!289970 lambda!289969))))

(assert (=> bs!1264312 (not (= lambda!289970 lambda!289968))))

(assert (=> bs!1264308 (not (= lambda!289970 lambda!289956))))

(assert (=> bs!1264309 (not (= lambda!289970 lambda!289950))))

(assert (=> bs!1264310 (not (= lambda!289970 lambda!289952))))

(assert (=> bs!1264311 (not (= lambda!289970 lambda!289958))))

(assert (=> bs!1264312 (not (= lambda!289970 lambda!289964))))

(assert (=> bs!1264310 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232683)) (= lambda!289970 lambda!289955))))

(assert (=> bs!1264307 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 r!7292)) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289970 lambda!289946))))

(assert (=> bs!1264311 (= (= Nil!62048 (_1!35793 lt!2232542)) (= lambda!289970 lambda!289960))))

(assert (=> bs!1264309 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232622)) (= lambda!289970 lambda!289949))))

(assert (=> bs!1264310 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (= lt!2232665 lt!2232674)) (= lambda!289970 lambda!289953))))

(assert (=> bs!1264312 (= (= Nil!62048 (_1!35793 lt!2232548)) (= lambda!289970 lambda!289967))))

(assert (=> bs!1264309 (not (= lambda!289970 lambda!289948))))

(assert (=> bs!1264312 (not (= lambda!289970 lambda!289966))))

(assert (=> bs!1264312 (= (and (= Nil!62048 s!2326) (= (reg!15620 (regOne!31094 r!7292)) lt!2232686) (= lt!2232665 (regTwo!31094 r!7292))) (= lambda!289970 lambda!289965))))

(assert (=> b!5462350 true))

(assert (=> b!5462350 true))

(declare-fun lambda!289971 () Int)

(assert (=> bs!1264307 (not (= lambda!289971 lambda!289945))))

(assert (=> bs!1264308 (not (= lambda!289971 lambda!289957))))

(assert (=> bs!1264309 (not (= lambda!289971 lambda!289951))))

(assert (=> b!5462350 (not (= lambda!289971 lambda!289970))))

(assert (=> bs!1264310 (not (= lambda!289971 lambda!289954))))

(assert (=> bs!1264311 (= (= Nil!62048 (_1!35793 lt!2232542)) (= lambda!289971 lambda!289959))))

(assert (=> b!5462350 (not (= lambda!289971 lambda!289969))))

(assert (=> bs!1264312 (= (= Nil!62048 (_1!35793 lt!2232548)) (= lambda!289971 lambda!289968))))

(assert (=> bs!1264308 (not (= lambda!289971 lambda!289956))))

(assert (=> bs!1264309 (not (= lambda!289971 lambda!289950))))

(assert (=> bs!1264310 (not (= lambda!289971 lambda!289952))))

(assert (=> bs!1264311 (not (= lambda!289971 lambda!289958))))

(assert (=> bs!1264312 (not (= lambda!289971 lambda!289964))))

(assert (=> bs!1264310 (not (= lambda!289971 lambda!289955))))

(assert (=> bs!1264307 (not (= lambda!289971 lambda!289946))))

(assert (=> bs!1264311 (not (= lambda!289971 lambda!289960))))

(assert (=> bs!1264309 (not (= lambda!289971 lambda!289949))))

(assert (=> bs!1264310 (not (= lambda!289971 lambda!289953))))

(assert (=> bs!1264312 (not (= lambda!289971 lambda!289967))))

(assert (=> bs!1264309 (not (= lambda!289971 lambda!289948))))

(assert (=> bs!1264312 (not (= lambda!289971 lambda!289966))))

(assert (=> bs!1264312 (not (= lambda!289971 lambda!289965))))

(assert (=> b!5462350 true))

(assert (=> b!5462350 true))

(declare-fun bm!402983 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62173 0))(
  ( (Nil!62049) (Cons!62049 (h!68497 Regex!15291) (t!375402 List!62173)) )
))
(declare-datatypes ((Context!9350 0))(
  ( (Context!9351 (exprs!5175 List!62173)) )
))
(declare-fun call!403136 () (InoxSet Context!9350))

(declare-fun call!403158 () (InoxSet Context!9350))

(assert (=> bm!402983 (= call!403136 call!403158)))

(declare-fun bm!402984 () Bool)

(declare-fun call!403179 () Bool)

(declare-fun call!403093 () Bool)

(assert (=> bm!402984 (= call!403179 call!403093)))

(declare-fun bm!402985 () Bool)

(declare-fun call!403080 () Bool)

(declare-fun call!403117 () Bool)

(assert (=> bm!402985 (= call!403080 call!403117)))

(declare-fun bm!402986 () Bool)

(declare-datatypes ((Unit!155012 0))(
  ( (Unit!155013) )
))
(declare-fun call!403149 () Unit!155012)

(declare-fun call!403091 () Unit!155012)

(assert (=> bm!402986 (= call!403149 call!403091)))

(declare-fun bm!402987 () Bool)

(declare-fun call!403135 () Bool)

(declare-fun call!403174 () Bool)

(assert (=> bm!402987 (= call!403135 call!403174)))

(declare-fun lt!2232675 () (InoxSet Context!9350))

(declare-fun c!954575 () Bool)

(declare-fun lt!2232617 () (InoxSet Context!9350))

(declare-fun lt!2232522 () (InoxSet Context!9350))

(declare-fun lt!2232618 () (InoxSet Context!9350))

(declare-fun bm!402988 () Bool)

(declare-fun c!954568 () Bool)

(declare-fun lt!2232567 () (InoxSet Context!9350))

(declare-fun call!403110 () Unit!155012)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!528 ((InoxSet Context!9350) (InoxSet Context!9350) List!62172) Unit!155012)

(assert (=> bm!402988 (= call!403110 (lemmaZipperConcatMatchesSameAsBothZippers!528 (ite c!954575 lt!2232522 (ite c!954568 lt!2232617 lt!2232675)) (ite c!954575 lt!2232567 (ite c!954568 lt!2232618 lt!2232567)) (t!375401 s!2326)))))

(declare-fun lt!2232706 () (InoxSet Context!9350))

(declare-fun bm!402989 () Bool)

(declare-fun call!403054 () (InoxSet Context!9350))

(declare-fun lt!2232634 () (InoxSet Context!9350))

(declare-fun lt!2232682 () (InoxSet Context!9350))

(declare-fun lambda!289947 () Int)

(declare-fun flatMap!1018 ((InoxSet Context!9350) Int) (InoxSet Context!9350))

(assert (=> bm!402989 (= call!403054 (flatMap!1018 (ite c!954575 lt!2232634 (ite c!954568 lt!2232682 lt!2232706)) (ite c!954575 lambda!289947 (ite c!954568 lambda!289947 lambda!289947))))))

(declare-fun lt!2232633 () Regex!15291)

(declare-fun lt!2232608 () tuple2!64980)

(declare-fun lt!2232568 () List!62172)

(declare-fun call!403103 () Bool)

(declare-fun c!954572 () Bool)

(declare-fun bm!402990 () Bool)

(declare-fun c!954570 () Bool)

(declare-fun c!954569 () Bool)

(declare-fun matchR!7476 (Regex!15291 List!62172) Bool)

(assert (=> bm!402990 (= call!403103 (matchR!7476 (ite c!954570 lt!2232674 (ite c!954572 (ite c!954569 lt!2232665 lt!2232633) (regOne!31094 r!7292))) (ite c!954570 s!2326 (ite c!954572 (ite c!954569 lt!2232568 (_2!35793 lt!2232608)) s!2326))))))

(declare-fun lt!2232666 () List!62173)

(declare-fun call!403190 () Regex!15291)

(declare-fun bm!402991 () Bool)

(declare-fun lt!2232698 () List!62173)

(declare-fun generalisedConcat!960 (List!62173) Regex!15291)

(assert (=> bm!402991 (= call!403190 (generalisedConcat!960 (ite c!954568 lt!2232666 lt!2232698)))))

(declare-fun e!3382403 () Unit!155012)

(declare-fun Unit!155014 () Unit!155012)

(assert (=> b!5462349 (= e!3382403 Unit!155014)))

(declare-datatypes ((List!62174 0))(
  ( (Nil!62050) (Cons!62050 (h!68498 Context!9350) (t!375403 List!62174)) )
))
(declare-fun zl!343 () List!62174)

(assert (=> b!5462349 (= lt!2232666 (Cons!62049 (regTwo!31094 (regOne!31094 r!7292)) (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun lt!2232556 () Context!9350)

(assert (=> b!5462349 (= lt!2232556 (Context!9351 lt!2232666))))

(declare-fun call!403037 () (InoxSet Context!9350))

(assert (=> b!5462349 (= lt!2232617 call!403037)))

(declare-fun lt!2232609 () (InoxSet Context!9350))

(declare-fun call!403112 () (InoxSet Context!9350))

(assert (=> b!5462349 (= lt!2232609 call!403112)))

(declare-fun lt!2232722 () Unit!155012)

(declare-fun call!403150 () Unit!155012)

(assert (=> b!5462349 (= lt!2232722 call!403150)))

(declare-fun lt!2232664 () Bool)

(declare-fun call!403128 () Bool)

(assert (=> b!5462349 (= lt!2232664 call!403128)))

(declare-fun res!2326849 () Bool)

(assert (=> b!5462349 (= res!2326849 lt!2232664)))

(declare-fun e!3382413 () Bool)

(assert (=> b!5462349 (=> res!2326849 e!3382413)))

(declare-fun call!403153 () Bool)

(assert (=> b!5462349 (= call!403153 e!3382413)))

(declare-fun lt!2232571 () List!62173)

(assert (=> b!5462349 (= lt!2232571 (Cons!62049 (regOne!31094 (regOne!31094 r!7292)) lt!2232666))))

(declare-fun lt!2232699 () Context!9350)

(assert (=> b!5462349 (= lt!2232699 (Context!9351 lt!2232571))))

(declare-fun lt!2232585 () (InoxSet Context!9350))

(assert (=> b!5462349 (= lt!2232585 (store ((as const (Array Context!9350 Bool)) false) lt!2232699 true))))

(assert (=> b!5462349 (= lt!2232682 (store ((as const (Array Context!9350 Bool)) false) lt!2232556 true))))

(declare-fun lt!2232569 () (InoxSet Context!9350))

(declare-fun call!403049 () (InoxSet Context!9350))

(assert (=> b!5462349 (= lt!2232569 call!403049)))

(declare-fun lt!2232688 () Unit!155012)

(declare-fun call!403106 () Unit!155012)

(assert (=> b!5462349 (= lt!2232688 call!403106)))

(declare-fun call!403115 () (InoxSet Context!9350))

(assert (=> b!5462349 (= call!403115 call!403049)))

(assert (=> b!5462349 (= lt!2232618 call!403158)))

(declare-fun lt!2232551 () Unit!155012)

(declare-fun call!403189 () Unit!155012)

(assert (=> b!5462349 (= lt!2232551 call!403189)))

(declare-fun call!403090 () (InoxSet Context!9350))

(assert (=> b!5462349 (= call!403090 call!403158)))

(declare-fun lt!2232597 () Unit!155012)

(declare-fun call!403101 () Unit!155012)

(assert (=> b!5462349 (= lt!2232597 call!403101)))

(declare-fun res!2326876 () Bool)

(assert (=> b!5462349 (= res!2326876 lt!2232664)))

(declare-fun e!3382389 () Bool)

(assert (=> b!5462349 (=> res!2326876 e!3382389)))

(assert (=> b!5462349 (= call!403135 e!3382389)))

(declare-fun lt!2232725 () Regex!15291)

(declare-fun call!403114 () Regex!15291)

(assert (=> b!5462349 (= lt!2232725 call!403114)))

(declare-fun lt!2232610 () Unit!155012)

(declare-fun call!403124 () Unit!155012)

(assert (=> b!5462349 (= lt!2232610 call!403124)))

(declare-fun lt!2232549 () Bool)

(declare-fun call!403097 () Bool)

(assert (=> b!5462349 (= lt!2232549 call!403097)))

(declare-fun call!403178 () Bool)

(assert (=> b!5462349 (= lt!2232549 call!403178)))

(assert (=> b!5462349 (= lt!2232622 call!403190)))

(declare-fun lt!2232546 () Unit!155012)

(declare-fun call!403121 () Unit!155012)

(assert (=> b!5462349 (= lt!2232546 call!403121)))

(declare-fun lt!2232607 () Bool)

(declare-fun call!403131 () Bool)

(assert (=> b!5462349 (= lt!2232607 call!403131)))

(declare-fun call!403107 () Bool)

(assert (=> b!5462349 (= lt!2232607 call!403107)))

(declare-fun lt!2232565 () Unit!155012)

(declare-fun call!402991 () Unit!155012)

(assert (=> b!5462349 (= lt!2232565 call!402991)))

(declare-fun call!403032 () Bool)

(assert (=> b!5462349 (= lt!2232549 call!403032)))

(declare-fun lt!2232647 () Unit!155012)

(declare-fun call!403011 () Unit!155012)

(assert (=> b!5462349 (= lt!2232647 call!403011)))

(declare-fun call!403063 () Bool)

(declare-fun call!402996 () Bool)

(assert (=> b!5462349 (= call!403063 call!402996)))

(declare-fun lt!2232580 () Unit!155012)

(declare-fun call!403034 () Unit!155012)

(assert (=> b!5462349 (= lt!2232580 call!403034)))

(declare-fun call!403067 () Bool)

(declare-fun call!403033 () Bool)

(assert (=> b!5462349 (= call!403067 call!403033)))

(declare-fun lt!2232644 () Unit!155012)

(declare-fun call!403038 () Unit!155012)

(assert (=> b!5462349 (= lt!2232644 call!403038)))

(declare-fun call!403105 () Bool)

(assert (=> b!5462349 (= lt!2232607 call!403105)))

(declare-fun call!403145 () Regex!15291)

(assert (=> b!5462349 (= lt!2232570 call!403145)))

(declare-fun lt!2232707 () Unit!155012)

(declare-fun call!403012 () Unit!155012)

(assert (=> b!5462349 (= lt!2232707 call!403012)))

(declare-fun call!403072 () Bool)

(declare-fun call!403043 () Bool)

(assert (=> b!5462349 (= call!403072 call!403043)))

(declare-fun lt!2232711 () Unit!155012)

(declare-fun call!403183 () Unit!155012)

(assert (=> b!5462349 (= lt!2232711 call!403183)))

(declare-fun call!403146 () Bool)

(declare-fun call!403182 () Bool)

(assert (=> b!5462349 (= call!403146 call!403182)))

(declare-fun lt!2232559 () Unit!155012)

(declare-fun call!403171 () Unit!155012)

(assert (=> b!5462349 (= lt!2232559 call!403171)))

(declare-fun res!2326852 () Bool)

(declare-fun call!403035 () Bool)

(declare-fun call!403069 () Bool)

(assert (=> b!5462349 (= res!2326852 (= call!403035 call!403069))))

(declare-fun e!3382418 () Bool)

(assert (=> b!5462349 (=> (not res!2326852) (not e!3382418))))

(assert (=> b!5462349 e!3382418))

(declare-fun bm!402992 () Bool)

(declare-fun call!403133 () Unit!155012)

(declare-fun call!403066 () Unit!155012)

(assert (=> bm!402992 (= call!403133 call!403066)))

(declare-fun c!954574 () Bool)

(declare-fun bm!402993 () Bool)

(declare-fun Exists!2472 (Int) Bool)

(assert (=> bm!402993 (= call!403033 (Exists!2472 (ite c!954568 lambda!289949 (ite c!954570 lambda!289954 (ite c!954569 lambda!289956 (ite c!954574 lambda!289965 lambda!289969))))))))

(declare-fun bm!402994 () Bool)

(declare-fun call!403044 () Unit!155012)

(declare-fun call!403065 () Unit!155012)

(assert (=> bm!402994 (= call!403044 call!403065)))

(declare-fun bm!402995 () Bool)

(declare-fun call!403159 () (InoxSet Context!9350))

(assert (=> bm!402995 (= call!403159 call!403115)))

(declare-fun bm!402996 () Bool)

(declare-fun call!403075 () Unit!155012)

(assert (=> bm!402996 (= call!403075 call!402991)))

(declare-fun e!3382382 () Bool)

(assert (=> b!5462350 e!3382382))

(declare-fun res!2326872 () Bool)

(assert (=> b!5462350 (=> (not res!2326872) (not e!3382382))))

(declare-fun call!403059 () Bool)

(assert (=> b!5462350 (= res!2326872 call!403059)))

(declare-fun lt!2232704 () Unit!155012)

(declare-fun call!403057 () Unit!155012)

(assert (=> b!5462350 (= lt!2232704 call!403057)))

(declare-fun call!403095 () Bool)

(declare-fun call!403068 () Bool)

(assert (=> b!5462350 (= call!403095 call!403068)))

(declare-fun lt!2232584 () Unit!155012)

(declare-fun call!403167 () Unit!155012)

(assert (=> b!5462350 (= lt!2232584 call!403167)))

(declare-fun call!403193 () Bool)

(declare-fun call!403141 () Bool)

(assert (=> b!5462350 (= call!403193 call!403141)))

(declare-fun lt!2232550 () Unit!155012)

(declare-fun call!403074 () Unit!155012)

(assert (=> b!5462350 (= lt!2232550 call!403074)))

(declare-fun call!403009 () Bool)

(assert (=> b!5462350 (= call!403080 call!403009)))

(declare-fun lt!2232624 () Unit!155012)

(declare-fun call!403085 () Unit!155012)

(assert (=> b!5462350 (= lt!2232624 call!403085)))

(declare-fun call!403008 () Bool)

(declare-fun call!403157 () Bool)

(assert (=> b!5462350 (= call!403008 call!403157)))

(declare-fun lt!2232606 () Unit!155012)

(declare-fun call!403058 () Unit!155012)

(assert (=> b!5462350 (= lt!2232606 call!403058)))

(declare-fun call!403027 () Bool)

(declare-fun call!403176 () Bool)

(assert (=> b!5462350 (= call!403027 call!403176)))

(declare-fun lt!2232690 () Unit!155012)

(declare-fun call!403079 () Unit!155012)

(assert (=> b!5462350 (= lt!2232690 call!403079)))

(declare-fun lt!2232723 () Regex!15291)

(declare-fun call!403019 () Regex!15291)

(assert (=> b!5462350 (= lt!2232723 call!403019)))

(declare-fun call!403130 () (InoxSet Context!9350))

(declare-fun call!403053 () (InoxSet Context!9350))

(assert (=> b!5462350 (= call!403130 call!403053)))

(declare-fun lt!2232601 () Unit!155012)

(declare-fun call!403002 () Unit!155012)

(assert (=> b!5462350 (= lt!2232601 call!403002)))

(declare-fun lt!2232563 () (InoxSet Context!9350))

(declare-fun lt!2232540 () Context!9350)

(assert (=> b!5462350 (= lt!2232563 (store ((as const (Array Context!9350 Bool)) false) lt!2232540 true))))

(declare-fun e!3382394 () Unit!155012)

(declare-fun Unit!155015 () Unit!155012)

(assert (=> b!5462350 (= e!3382394 Unit!155015)))

(declare-fun bm!402997 () Bool)

(declare-fun call!403139 () Bool)

(assert (=> bm!402997 (= call!403157 call!403139)))

(declare-fun lt!2232640 () (InoxSet Context!9350))

(declare-fun lt!2232637 () (InoxSet Context!9350))

(declare-fun lt!2232555 () (InoxSet Context!9350))

(declare-fun call!403186 () (InoxSet Context!9350))

(declare-fun bm!402998 () Bool)

(assert (=> bm!402998 (= call!403186 (flatMap!1018 (ite c!954575 lt!2232555 (ite c!954568 lt!2232585 (ite c!954570 lt!2232637 lt!2232640))) (ite c!954575 lambda!289947 (ite c!954568 lambda!289947 (ite c!954570 lambda!289947 lambda!289947)))))))

(declare-fun bm!402999 () Bool)

(assert (=> bm!402999 (= call!403067 (Exists!2472 (ite c!954568 lambda!289948 (ite c!954570 lambda!289955 (ite c!954569 lambda!289957 (ite c!954574 lambda!289966 lambda!289970))))))))

(declare-fun bm!403000 () Bool)

(declare-fun call!403020 () Bool)

(assert (=> bm!403000 (= call!403027 call!403020)))

(declare-fun b!5462351 () Bool)

(declare-fun e!3382399 () Unit!155012)

(declare-fun e!3382402 () Unit!155012)

(assert (=> b!5462351 (= e!3382399 e!3382402)))

(get-info :version)

(assert (=> b!5462351 (= c!954575 ((_ is Union!15291) (regOne!31094 r!7292)))))

(declare-fun bm!403001 () Bool)

(declare-fun call!403092 () Bool)

(declare-fun call!403086 () Bool)

(assert (=> bm!403001 (= call!403092 call!403086)))

(declare-fun b!5462352 () Bool)

(assert (=> b!5462352 (= e!3382382 false)))

(declare-fun call!403005 () Unit!155012)

(declare-fun lt!2232587 () tuple2!64980)

(declare-fun bm!403002 () Bool)

(declare-fun lt!2232671 () tuple2!64980)

(declare-fun lemmaStarApp!86 (Regex!15291 List!62172 List!62172) Unit!155012)

(assert (=> bm!403002 (= call!403005 (lemmaStarApp!86 (reg!15620 (regOne!31094 r!7292)) (ite c!954569 (_1!35793 lt!2232671) (_1!35793 lt!2232587)) (ite c!954569 (_2!35793 lt!2232671) (_2!35793 lt!2232587))))))

(declare-fun bm!403003 () Bool)

(declare-fun call!403148 () Unit!155012)

(declare-fun call!403094 () Unit!155012)

(assert (=> bm!403003 (= call!403148 call!403094)))

(declare-fun bm!403004 () Bool)

(declare-fun call!403064 () Bool)

(declare-fun call!403191 () Bool)

(assert (=> bm!403004 (= call!403064 call!403191)))

(declare-fun b!5462353 () Bool)

(declare-fun e!3382398 () Bool)

(assert (=> b!5462353 e!3382398))

(declare-fun res!2326869 () Bool)

(assert (=> b!5462353 (=> (not res!2326869) (not e!3382398))))

(declare-fun call!403184 () Bool)

(declare-fun call!403161 () Bool)

(assert (=> b!5462353 (= res!2326869 (= call!403184 call!403161))))

(declare-fun lt!2232630 () Unit!155012)

(declare-fun call!402995 () Unit!155012)

(assert (=> b!5462353 (= lt!2232630 call!402995)))

(declare-fun call!403077 () Bool)

(assert (=> b!5462353 (= call!403179 call!403077)))

(declare-fun lt!2232623 () Unit!155012)

(declare-fun call!403102 () Unit!155012)

(assert (=> b!5462353 (= lt!2232623 call!403102)))

(declare-fun call!402998 () Bool)

(assert (=> b!5462353 (not call!402998)))

(declare-fun lt!2232691 () Unit!155012)

(declare-fun call!403156 () Unit!155012)

(assert (=> b!5462353 (= lt!2232691 call!403156)))

(declare-fun e!3382404 () Unit!155012)

(declare-fun Unit!155016 () Unit!155012)

(assert (=> b!5462353 (= e!3382404 Unit!155016)))

(declare-fun bm!403005 () Bool)

(declare-fun call!403082 () Bool)

(assert (=> bm!403005 (= call!403068 call!403082)))

(declare-fun bm!403006 () Bool)

(declare-fun call!403185 () Bool)

(assert (=> bm!403006 (= call!403095 call!403185)))

(declare-datatypes ((Option!15402 0))(
  ( (None!15401) (Some!15401 (v!51430 tuple2!64980)) )
))
(declare-fun call!403047 () Option!15402)

(declare-fun call!403046 () Option!15402)

(declare-fun bm!403007 () Bool)

(declare-fun lt!2232578 () Option!15402)

(declare-fun call!403029 () Option!15402)

(declare-fun lt!2232695 () Option!15402)

(declare-fun isDefined!12105 (Option!15402) Bool)

(assert (=> bm!403007 (= call!403072 (isDefined!12105 (ite c!954568 call!403046 (ite c!954570 call!403029 (ite c!954569 lt!2232695 (ite c!954574 lt!2232578 call!403047))))))))

(declare-fun bm!403008 () Bool)

(declare-fun call!403036 () Regex!15291)

(declare-fun call!403041 () Regex!15291)

(assert (=> bm!403008 (= call!403036 call!403041)))

(declare-fun b!5462354 () Bool)

(declare-fun e!3382417 () Bool)

(declare-fun lt!2232705 () Bool)

(assert (=> b!5462354 (= e!3382417 lt!2232705)))

(declare-fun bm!403009 () Bool)

(declare-fun call!403076 () (InoxSet Context!9350))

(declare-fun lt!2232717 () Context!9350)

(declare-fun lt!2232533 () Context!9350)

(declare-fun lt!2232719 () Context!9350)

(declare-fun derivationStepZipperUp!663 (Context!9350 C!30852) (InoxSet Context!9350))

(assert (=> bm!403009 (= call!403076 (derivationStepZipperUp!663 (ite c!954575 lt!2232719 (ite c!954568 lt!2232556 (ite c!954570 lt!2232533 lt!2232717))) (h!68496 s!2326)))))

(declare-fun setElem!35737 () Context!9350)

(declare-fun setNonEmpty!35737 () Bool)

(declare-fun tp!1502351 () Bool)

(declare-fun setRes!35737 () Bool)

(declare-fun e!3382401 () Bool)

(declare-fun inv!81474 (Context!9350) Bool)

(assert (=> setNonEmpty!35737 (= setRes!35737 (and tp!1502351 (inv!81474 setElem!35737) e!3382401))))

(declare-fun z!1189 () (InoxSet Context!9350))

(declare-fun setRest!35737 () (InoxSet Context!9350))

(assert (=> setNonEmpty!35737 (= z!1189 ((_ map or) (store ((as const (Array Context!9350 Bool)) false) setElem!35737 true) setRest!35737))))

(declare-fun bm!403010 () Bool)

(assert (=> bm!403010 (= call!403193 call!403092)))

(declare-fun bm!403011 () Bool)

(declare-fun call!403108 () Unit!155012)

(assert (=> bm!403011 (= call!403094 call!403108)))

(declare-fun bm!403012 () Bool)

(assert (=> bm!403012 (= call!403182 (Exists!2472 (ite c!954568 lambda!289951 (ite c!954570 lambda!289952 (ite c!954569 lambda!289959 (ite c!954574 lambda!289967 lambda!289969))))))))

(declare-fun bm!403013 () Bool)

(assert (=> bm!403013 (= call!403079 call!403094)))

(declare-fun bm!403014 () Bool)

(assert (=> bm!403014 (= call!403185 (Exists!2472 (ite c!954569 lambda!289956 (ite c!954574 lambda!289964 lambda!289969))))))

(declare-fun bm!403015 () Bool)

(declare-fun call!403073 () Bool)

(assert (=> bm!403015 (= call!403073 call!403067)))

(declare-fun b!5462355 () Bool)

(declare-fun e!3382409 () Bool)

(declare-fun e!3382390 () Bool)

(assert (=> b!5462355 (= e!3382409 (not e!3382390))))

(declare-fun res!2326853 () Bool)

(assert (=> b!5462355 (=> res!2326853 e!3382390)))

(assert (=> b!5462355 (= res!2326853 (not ((_ is Cons!62050) zl!343)))))

(declare-fun lt!2232553 () Bool)

(declare-fun lt!2232572 () Bool)

(assert (=> b!5462355 (= lt!2232553 lt!2232572)))

(declare-fun matchRSpec!2394 (Regex!15291 List!62172) Bool)

(assert (=> b!5462355 (= lt!2232572 (matchRSpec!2394 r!7292 s!2326))))

(assert (=> b!5462355 (= lt!2232553 (matchR!7476 r!7292 s!2326))))

(declare-fun lt!2232643 () Unit!155012)

(declare-fun mainMatchTheorem!2394 (Regex!15291 List!62172) Unit!155012)

(assert (=> b!5462355 (= lt!2232643 (mainMatchTheorem!2394 r!7292 s!2326))))

(declare-fun bm!403016 () Bool)

(assert (=> bm!403016 (= call!403066 call!403011)))

(declare-fun bm!403017 () Bool)

(declare-fun call!403096 () Bool)

(assert (=> bm!403017 (= call!403096 call!403032)))

(declare-fun b!5462356 () Bool)

(declare-fun e!3382410 () Unit!155012)

(assert (=> b!5462356 (= e!3382410 e!3382404)))

(declare-fun c!954567 () Bool)

(assert (=> b!5462356 (= c!954567 ((_ is EmptyExpr!15291) (regOne!31094 r!7292)))))

(declare-fun call!403119 () Unit!155012)

(declare-fun bm!403018 () Bool)

(declare-fun lemmaConcatAssociativity!2868 (List!62172 List!62172 List!62172) Unit!155012)

(assert (=> bm!403018 (= call!403119 (lemmaConcatAssociativity!2868 (ite c!954569 (_1!35793 lt!2232671) (_1!35793 lt!2232587)) (ite c!954569 (_2!35793 lt!2232671) (_2!35793 lt!2232587)) (ite c!954569 (_2!35793 lt!2232542) (_2!35793 lt!2232548))))))

(declare-fun bm!403019 () Bool)

(declare-fun call!403175 () Unit!155012)

(assert (=> bm!403019 (= call!402995 call!403175)))

(declare-fun call!402994 () Option!15402)

(declare-fun bm!403020 () Bool)

(declare-fun findConcatSeparation!1816 (Regex!15291 Regex!15291 List!62172 List!62172 List!62172) Option!15402)

(assert (=> bm!403020 (= call!402994 (findConcatSeparation!1816 (ite (or c!954568 c!954570) (regOne!31094 (regOne!31094 r!7292)) (ite c!954569 (reg!15620 (regOne!31094 r!7292)) lt!2232686)) (ite c!954568 lt!2232622 (ite c!954570 lt!2232674 (ite c!954569 lt!2232665 (regTwo!31094 r!7292)))) Nil!62048 (ite (or c!954568 c!954570) s!2326 (ite c!954569 (_1!35793 lt!2232542) s!2326)) (ite (or c!954568 c!954570) s!2326 (ite c!954569 (_1!35793 lt!2232542) s!2326))))))

(declare-fun call!402992 () tuple2!64980)

(declare-fun bm!403021 () Bool)

(declare-fun lt!2232532 () Option!15402)

(declare-fun get!21401 (Option!15402) tuple2!64980)

(assert (=> bm!403021 (= call!402992 (get!21401 (ite c!954569 lt!2232695 lt!2232532)))))

(declare-fun b!5462357 () Bool)

(declare-fun res!2326864 () Bool)

(assert (=> b!5462357 (=> res!2326864 e!3382390)))

(assert (=> b!5462357 (= res!2326864 (not (= r!7292 (generalisedConcat!960 (exprs!5175 (h!68498 zl!343))))))))

(declare-fun bm!403022 () Bool)

(declare-fun call!402999 () Bool)

(declare-fun call!403165 () Bool)

(assert (=> bm!403022 (= call!402999 call!403165)))

(declare-fun bm!403023 () Bool)

(declare-fun lemmaConcatAssociative!86 (Regex!15291 Regex!15291 Regex!15291 List!62172) Unit!155012)

(assert (=> bm!403023 (= call!403171 (lemmaConcatAssociative!86 (ite (or c!954568 c!954570) (regOne!31094 (regOne!31094 r!7292)) (reg!15620 (regOne!31094 r!7292))) (ite (or c!954568 c!954570) (regTwo!31094 (regOne!31094 r!7292)) lt!2232665) (ite c!954568 lt!2232570 (ite c!954570 lt!2232683 (regTwo!31094 r!7292))) s!2326))))

(declare-fun b!5462358 () Bool)

(declare-fun e!3382405 () Unit!155012)

(declare-fun Unit!155017 () Unit!155012)

(assert (=> b!5462358 (= e!3382405 Unit!155017)))

(declare-fun lt!2232679 () (InoxSet Context!9350))

(assert (=> b!5462358 (= lt!2232679 (store ((as const (Array Context!9350 Bool)) false) lt!2232540 true))))

(declare-fun lt!2232582 () Unit!155012)

(assert (=> b!5462358 (= lt!2232582 call!403002)))

(assert (=> b!5462358 (= call!403130 call!403053)))

(declare-fun lt!2232595 () Regex!15291)

(assert (=> b!5462358 (= lt!2232595 call!403019)))

(declare-fun lt!2232615 () Unit!155012)

(assert (=> b!5462358 (= lt!2232615 call!403148)))

(declare-fun res!2326851 () Bool)

(declare-fun call!403129 () Bool)

(assert (=> b!5462358 (= res!2326851 (= call!403129 call!402999))))

(declare-fun e!3382416 () Bool)

(assert (=> b!5462358 (=> (not res!2326851) (not e!3382416))))

(assert (=> b!5462358 e!3382416))

(declare-fun Unit!155018 () Unit!155012)

(assert (=> b!5462359 (= e!3382405 Unit!155018)))

(declare-fun lt!2232523 () Unit!155012)

(assert (=> b!5462359 (= lt!2232523 call!403044)))

(declare-fun call!403026 () Bool)

(declare-fun call!403098 () Bool)

(assert (=> b!5462359 (= call!403026 call!403098)))

(declare-fun lt!2232579 () Unit!155012)

(declare-fun call!403001 () Unit!155012)

(assert (=> b!5462359 (= lt!2232579 call!403001)))

(declare-fun call!403120 () Option!15402)

(assert (=> b!5462359 (= lt!2232695 call!403120)))

(assert (=> b!5462359 (= call!403117 call!403082)))

(declare-fun lt!2232534 () Unit!155012)

(declare-fun call!403138 () Unit!155012)

(assert (=> b!5462359 (= lt!2232534 call!403138)))

(declare-fun call!402993 () Bool)

(declare-fun call!403163 () Bool)

(assert (=> b!5462359 (= call!402993 call!403163)))

(declare-fun lt!2232680 () Unit!155012)

(assert (=> b!5462359 (= lt!2232680 call!403149)))

(declare-fun call!403016 () Bool)

(declare-fun call!402990 () Bool)

(assert (=> b!5462359 (= call!403016 call!402990)))

(assert (=> b!5462359 (= lt!2232671 call!402992)))

(declare-fun lt!2232537 () Unit!155012)

(assert (=> b!5462359 (= lt!2232537 call!403119)))

(declare-fun call!403192 () List!62172)

(assert (=> b!5462359 (= lt!2232568 call!403192)))

(declare-fun lt!2232531 () List!62172)

(declare-fun call!403123 () List!62172)

(assert (=> b!5462359 (= lt!2232531 call!403123)))

(declare-fun lt!2232561 () List!62172)

(declare-fun call!403181 () List!62172)

(assert (=> b!5462359 (= lt!2232561 call!403181)))

(declare-fun lt!2232700 () List!62172)

(declare-fun call!403142 () List!62172)

(assert (=> b!5462359 (= lt!2232700 call!403142)))

(assert (=> b!5462359 (= lt!2232561 lt!2232700)))

(declare-fun lt!2232652 () Unit!155012)

(assert (=> b!5462359 (= lt!2232652 call!403005)))

(declare-fun call!403111 () Bool)

(assert (=> b!5462359 call!403111))

(declare-fun lt!2232669 () Unit!155012)

(declare-fun call!403030 () Unit!155012)

(assert (=> b!5462359 (= lt!2232669 call!403030)))

(assert (=> b!5462359 call!403129))

(declare-fun lt!2232685 () Unit!155012)

(assert (=> b!5462359 (= lt!2232685 call!403148)))

(declare-fun call!403083 () Bool)

(assert (=> b!5462359 (= call!403083 call!402999)))

(declare-fun lt!2232709 () Unit!155012)

(declare-fun call!403162 () Unit!155012)

(assert (=> b!5462359 (= lt!2232709 call!403162)))

(declare-fun call!403126 () Bool)

(assert (=> b!5462359 call!403126))

(declare-fun lt!2232543 () Unit!155012)

(declare-fun call!403151 () Unit!155012)

(assert (=> b!5462359 (= lt!2232543 call!403151)))

(declare-fun lt!2232653 () Unit!155012)

(declare-fun call!402988 () Unit!155012)

(assert (=> b!5462359 (= lt!2232653 call!402988)))

(declare-fun call!403134 () Bool)

(assert (=> b!5462359 call!403134))

(declare-fun lt!2232602 () Unit!155012)

(declare-fun call!403013 () Unit!155012)

(assert (=> b!5462359 (= lt!2232602 call!403013)))

(declare-fun res!2326856 () Bool)

(declare-fun call!403144 () Bool)

(assert (=> b!5462359 (= res!2326856 call!403144)))

(declare-fun e!3382419 () Bool)

(assert (=> b!5462359 (=> (not res!2326856) (not e!3382419))))

(assert (=> b!5462359 e!3382419))

(declare-fun lt!2232638 () Unit!155012)

(declare-fun call!403022 () Unit!155012)

(assert (=> b!5462359 (= lt!2232638 call!403022)))

(declare-fun call!403052 () Bool)

(assert (=> b!5462359 call!403052))

(declare-fun bm!403024 () Bool)

(declare-fun ++!13661 (List!62172 List!62172) List!62172)

(assert (=> bm!403024 (= call!403142 (++!13661 (ite c!954569 (_1!35793 lt!2232671) (_1!35793 lt!2232608)) (ite c!954569 lt!2232531 (_2!35793 lt!2232608))))))

(declare-fun bm!403025 () Bool)

(declare-fun lt!2232573 () List!62173)

(declare-fun lt!2232625 () List!62173)

(declare-fun lemmaConcatPreservesForall!258 (List!62173 List!62173 Int) Unit!155012)

(assert (=> bm!403025 (= call!402988 (lemmaConcatPreservesForall!258 lt!2232625 lt!2232573 (ite c!954569 lambda!289961 lambda!289963)))))

(declare-fun lt!2232575 () Regex!15291)

(declare-fun bm!403026 () Bool)

(declare-fun call!403099 () Bool)

(declare-fun lt!2232672 () Regex!15291)

(assert (=> bm!403026 (= call!403099 (matchR!7476 (ite c!954575 lt!2232575 lt!2232672) s!2326))))

(declare-fun bm!403027 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1580 (Regex!15291 Regex!15291 List!62172) Unit!155012)

(assert (=> bm!403027 (= call!403011 (lemmaFindConcatSeparationEquivalentToExists!1580 (ite (or c!954568 c!954570) (regOne!31094 (regOne!31094 r!7292)) (ite c!954569 lt!2232665 (ite c!954574 lt!2232686 (reg!15620 (regOne!31094 r!7292))))) (ite c!954568 lt!2232622 (ite c!954570 lt!2232674 (ite (or c!954569 c!954574) (regTwo!31094 r!7292) lt!2232665))) (ite (or c!954568 c!954570 c!954569 c!954574) s!2326 Nil!62048)))))

(declare-fun lt!2232621 () Regex!15291)

(declare-fun bm!403028 () Bool)

(assert (=> bm!403028 (= call!403035 (matchR!7476 (ite c!954568 (Concat!24136 (Concat!24136 (regOne!31094 (regOne!31094 r!7292)) (regTwo!31094 (regOne!31094 r!7292))) lt!2232570) (ite c!954570 (Concat!24136 (regOne!31094 r!7292) lt!2232683) (ite c!954572 (ite c!954569 lt!2232672 (ite c!954574 lt!2232621 lt!2232665)) (regTwo!31094 r!7292)))) (ite (or c!954568 c!954570) s!2326 (ite c!954572 (ite c!954569 lt!2232700 (ite c!954574 s!2326 Nil!62048)) s!2326))))))

(declare-fun lt!2232560 () (InoxSet Context!9350))

(declare-fun call!403025 () Bool)

(declare-fun c!954565 () Bool)

(declare-fun bm!403029 () Bool)

(declare-fun lt!2232539 () (InoxSet Context!9350))

(declare-fun matchZipper!1535 ((InoxSet Context!9350) List!62172) Bool)

(assert (=> bm!403029 (= call!403025 (matchZipper!1535 (ite c!954575 lt!2232567 (ite c!954568 lt!2232617 (ite c!954570 z!1189 (ite c!954572 (ite c!954569 (ite c!954565 lt!2232679 lt!2232560) (ite c!954574 lt!2232706 lt!2232563)) lt!2232539)))) (ite (or c!954575 c!954568) (t!375401 s!2326) (ite c!954570 s!2326 (ite c!954572 (ite c!954569 (ite c!954565 s!2326 (_1!35793 lt!2232671)) (ite c!954574 (_2!35793 lt!2232608) s!2326)) s!2326)))))))

(declare-fun bm!403030 () Bool)

(assert (=> bm!403030 (= call!403178 (matchZipper!1535 (ite c!954575 lt!2232522 lt!2232585) (ite c!954575 (t!375401 s!2326) s!2326)))))

(declare-fun bm!403031 () Bool)

(declare-fun call!403140 () Bool)

(assert (=> bm!403031 (= call!403107 call!403140)))

(declare-fun b!5462360 () Bool)

(declare-fun e!3382381 () Bool)

(declare-fun call!403031 () Bool)

(assert (=> b!5462360 (= e!3382381 call!403031)))

(declare-fun bm!403032 () Bool)

(declare-fun lt!2232526 () Regex!15291)

(declare-fun call!403104 () Bool)

(assert (=> bm!403032 (= call!403104 (matchR!7476 (ite c!954570 lt!2232526 (reg!15620 (regOne!31094 r!7292))) (ite c!954570 s!2326 (_1!35793 lt!2232608))))))

(declare-fun bm!403033 () Bool)

(assert (=> bm!403033 (= call!403086 call!403033)))

(declare-fun bm!403034 () Bool)

(assert (=> bm!403034 (= call!403057 call!403030)))

(declare-fun bm!403035 () Bool)

(assert (=> bm!403035 (= call!403167 call!403138)))

(declare-fun bm!403036 () Bool)

(declare-fun call!403007 () Bool)

(assert (=> bm!403036 (= call!403007 call!403128)))

(declare-fun bm!403037 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!448 (Regex!15291 List!62172) Unit!155012)

(assert (=> bm!403037 (= call!403138 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!448 (reg!15620 (regOne!31094 r!7292)) (ite c!954569 (_1!35793 lt!2232542) (ite c!954574 (_1!35793 lt!2232548) Nil!62048))))))

(declare-fun b!5462361 () Bool)

(declare-fun e!3382395 () Bool)

(assert (=> b!5462361 (= e!3382395 call!403025)))

(declare-fun bm!403038 () Bool)

(assert (=> bm!403038 (= call!403049 (derivationStepZipperUp!663 (ite c!954568 lt!2232699 lt!2232540) (h!68496 s!2326)))))

(declare-fun b!5462362 () Bool)

(declare-fun e!3382391 () Bool)

(declare-fun call!403028 () Bool)

(assert (=> b!5462362 (= e!3382391 (= lt!2232553 call!403028))))

(declare-fun b!5462363 () Bool)

(declare-fun e!3382412 () Unit!155012)

(declare-fun Unit!155019 () Unit!155012)

(assert (=> b!5462363 (= e!3382412 Unit!155019)))

(declare-fun bm!403039 () Bool)

(declare-fun call!403147 () Unit!155012)

(assert (=> bm!403039 (= call!403147 call!403034)))

(declare-fun b!5462364 () Bool)

(declare-fun e!3382396 () Unit!155012)

(declare-fun Unit!155020 () Unit!155012)

(assert (=> b!5462364 (= e!3382396 Unit!155020)))

(declare-fun bm!403040 () Bool)

(declare-fun call!403040 () Bool)

(assert (=> bm!403040 (= call!403097 call!403040)))

(declare-fun b!5462365 () Bool)

(declare-fun e!3382387 () Bool)

(assert (=> b!5462365 (= e!3382387 call!403025)))

(declare-fun lt!2232645 () (InoxSet Context!9350))

(declare-fun bm!403041 () Bool)

(assert (=> bm!403041 (= call!403140 (matchZipper!1535 (ite c!954575 ((_ map or) lt!2232645 lt!2232567) (ite c!954568 lt!2232682 (ite c!954572 z!1189 lt!2232567))) (ite c!954575 (t!375401 s!2326) (ite (or c!954568 c!954572) s!2326 (t!375401 s!2326)))))))

(declare-fun e!3382392 () Bool)

(declare-fun e!3382411 () Bool)

(assert (=> b!5462366 (= e!3382392 e!3382411)))

(declare-fun res!2326859 () Bool)

(assert (=> b!5462366 (=> res!2326859 e!3382411)))

(declare-fun lt!2232525 () (InoxSet Context!9350))

(declare-fun derivationStepZipper!1510 ((InoxSet Context!9350) C!30852) (InoxSet Context!9350))

(assert (=> b!5462366 (= res!2326859 (not (= lt!2232567 (derivationStepZipper!1510 lt!2232525 (h!68496 s!2326)))))))

(assert (=> b!5462366 (= (flatMap!1018 lt!2232525 lambda!289947) (derivationStepZipperUp!663 lt!2232540 (h!68496 s!2326)))))

(declare-fun lt!2232689 () Unit!155012)

(declare-fun lemmaFlatMapOnSingletonSet!550 ((InoxSet Context!9350) Context!9350 Int) Unit!155012)

(assert (=> b!5462366 (= lt!2232689 (lemmaFlatMapOnSingletonSet!550 lt!2232525 lt!2232540 lambda!289947))))

(assert (=> b!5462366 (= lt!2232525 (store ((as const (Array Context!9350 Bool)) false) lt!2232540 true))))

(declare-fun lt!2232681 () Unit!155012)

(assert (=> b!5462366 (= lt!2232681 e!3382399)))

(declare-fun c!954566 () Bool)

(assert (=> b!5462366 (= c!954566 (and ((_ is ElementMatch!15291) (regOne!31094 r!7292)) (= (c!954577 (regOne!31094 r!7292)) (h!68496 s!2326))))))

(declare-fun lt!2232670 () Unit!155012)

(declare-fun e!3382393 () Unit!155012)

(assert (=> b!5462366 (= lt!2232670 e!3382393)))

(declare-fun c!954573 () Bool)

(declare-fun nullable!5460 (Regex!15291) Bool)

(assert (=> b!5462366 (= c!954573 (nullable!5460 (h!68497 (exprs!5175 (h!68498 zl!343)))))))

(assert (=> b!5462366 (= (flatMap!1018 z!1189 lambda!289947) (derivationStepZipperUp!663 (h!68498 zl!343) (h!68496 s!2326)))))

(declare-fun lt!2232628 () Unit!155012)

(assert (=> b!5462366 (= lt!2232628 (lemmaFlatMapOnSingletonSet!550 z!1189 (h!68498 zl!343) lambda!289947))))

(assert (=> b!5462366 (= lt!2232567 (derivationStepZipperUp!663 lt!2232540 (h!68496 s!2326)))))

(declare-fun derivationStepZipperDown!739 (Regex!15291 Context!9350 C!30852) (InoxSet Context!9350))

(assert (=> b!5462366 (= lt!2232675 (derivationStepZipperDown!739 (h!68497 (exprs!5175 (h!68498 zl!343))) lt!2232540 (h!68496 s!2326)))))

(assert (=> b!5462366 (= lt!2232540 (Context!9351 (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun lt!2232676 () (InoxSet Context!9350))

(assert (=> b!5462366 (= lt!2232676 (derivationStepZipperUp!663 (Context!9351 (Cons!62049 (h!68497 (exprs!5175 (h!68498 zl!343))) (t!375402 (exprs!5175 (h!68498 zl!343))))) (h!68496 s!2326)))))

(declare-fun b!5462367 () Bool)

(declare-fun tp!1502346 () Bool)

(assert (=> b!5462367 (= e!3382401 tp!1502346)))

(declare-fun lt!2232596 () Context!9350)

(declare-fun lt!2232627 () Context!9350)

(declare-fun call!403061 () (InoxSet Context!9350))

(declare-fun bm!403042 () Bool)

(assert (=> bm!403042 (= call!403061 (derivationStepZipperUp!663 (ite c!954575 lt!2232627 lt!2232596) (h!68496 s!2326)))))

(declare-fun bm!403043 () Bool)

(declare-fun lt!2232591 () Context!9350)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!106 (Context!9350 Context!9350 List!62172 List!62172) Unit!155012)

(assert (=> bm!403043 (= call!403151 (lemmaConcatenateContextMatchesConcatOfStrings!106 lt!2232717 lt!2232591 (ite c!954569 (_1!35793 lt!2232671) (_1!35793 lt!2232608)) (ite c!954569 lt!2232531 (_2!35793 lt!2232608))))))

(declare-fun bm!403044 () Bool)

(assert (=> bm!403044 (= call!403059 call!403083)))

(declare-fun bm!403045 () Bool)

(declare-fun call!403089 () Bool)

(declare-fun call!403125 () Bool)

(assert (=> bm!403045 (= call!403089 call!403125)))

(declare-fun bm!403046 () Bool)

(assert (=> bm!403046 (= call!403002 (lemmaFlatMapOnSingletonSet!550 (ite c!954569 lt!2232679 lt!2232563) lt!2232540 (ite c!954569 lambda!289947 lambda!289947)))))

(declare-fun b!5462368 () Bool)

(declare-fun e!3382421 () Bool)

(declare-fun tp!1502344 () Bool)

(assert (=> b!5462368 (= e!3382421 tp!1502344)))

(declare-fun b!5462369 () Bool)

(assert (=> b!5462369 e!3382391))

(declare-fun res!2326863 () Bool)

(assert (=> b!5462369 (=> (not res!2326863) (not e!3382391))))

(declare-fun call!403021 () Bool)

(declare-fun call!403188 () Bool)

(assert (=> b!5462369 (= res!2326863 (= call!403021 call!403188))))

(declare-fun lt!2232716 () Unit!155012)

(assert (=> b!5462369 (= lt!2232716 call!403108)))

(declare-fun lt!2232564 () Regex!15291)

(declare-fun call!403062 () Regex!15291)

(assert (=> b!5462369 (= lt!2232564 call!403062)))

(declare-fun call!403084 () Bool)

(assert (=> b!5462369 (= call!402998 call!403084)))

(declare-fun lt!2232677 () Unit!155012)

(assert (=> b!5462369 (= lt!2232677 call!403101)))

(declare-fun call!403122 () (InoxSet Context!9350))

(declare-fun call!403010 () (InoxSet Context!9350))

(assert (=> b!5462369 (= call!403122 call!403010)))

(declare-fun lt!2232684 () Unit!155012)

(declare-fun call!403014 () Unit!155012)

(assert (=> b!5462369 (= lt!2232684 call!403014)))

(assert (=> b!5462369 (= lt!2232539 (store ((as const (Array Context!9350 Bool)) false) lt!2232540 true))))

(assert (=> b!5462369 (= call!403184 call!403077)))

(declare-fun lt!2232692 () Unit!155012)

(assert (=> b!5462369 (= lt!2232692 call!403102)))

(assert (=> b!5462369 (= call!403179 call!403161)))

(declare-fun lt!2232614 () Unit!155012)

(assert (=> b!5462369 (= lt!2232614 call!402995)))

(declare-fun call!403023 () Bool)

(assert (=> b!5462369 (not call!403023)))

(declare-fun lt!2232616 () Unit!155012)

(assert (=> b!5462369 (= lt!2232616 call!403156)))

(declare-fun Unit!155021 () Unit!155012)

(assert (=> b!5462369 (= e!3382404 Unit!155021)))

(declare-fun bm!403047 () Bool)

(declare-fun call!403048 () Bool)

(assert (=> bm!403047 (= call!403077 call!403048)))

(declare-fun b!5462370 () Bool)

(declare-fun Unit!155022 () Unit!155012)

(assert (=> b!5462370 (= e!3382393 Unit!155022)))

(declare-fun bm!403048 () Bool)

(assert (=> bm!403048 (= call!403053 call!403049)))

(declare-fun b!5462371 () Bool)

(declare-fun e!3382408 () Bool)

(declare-fun tp_is_empty!39835 () Bool)

(declare-fun tp!1502352 () Bool)

(assert (=> b!5462371 (= e!3382408 (and tp_is_empty!39835 tp!1502352))))

(declare-fun bm!403049 () Bool)

(assert (=> bm!403049 (= call!403146 (Exists!2472 (ite c!954568 lambda!289950 (ite c!954570 lambda!289953 (ite c!954569 lambda!289958 lambda!289966)))))))

(declare-fun bm!403050 () Bool)

(declare-fun call!403055 () List!62173)

(declare-fun ++!13662 (List!62173 List!62173) List!62173)

(assert (=> bm!403050 (= call!403055 (++!13662 lt!2232625 lt!2232573))))

(declare-fun bm!403051 () Bool)

(declare-fun call!403078 () Unit!155012)

(assert (=> bm!403051 (= call!403078 call!403121)))

(declare-fun bm!403052 () Bool)

(declare-fun call!403170 () Bool)

(assert (=> bm!403052 (= call!403170 call!403105)))

(declare-fun bm!403053 () Bool)

(declare-fun call!403143 () Bool)

(assert (=> bm!403053 (= call!402998 call!403143)))

(declare-fun bm!403054 () Bool)

(assert (=> bm!403054 (= call!403184 call!403064)))

(declare-fun b!5462372 () Bool)

(declare-fun res!2326855 () Bool)

(assert (=> b!5462372 (=> res!2326855 e!3382392)))

(declare-fun isEmpty!34037 (List!62173) Bool)

(assert (=> b!5462372 (= res!2326855 (isEmpty!34037 (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun b!5462373 () Bool)

(declare-fun e!3382385 () Bool)

(assert (=> b!5462373 (= e!3382385 (matchZipper!1535 lt!2232567 (t!375401 s!2326)))))

(declare-fun bm!403055 () Bool)

(declare-fun call!403060 () Bool)

(assert (=> bm!403055 (= call!403141 call!403060)))

(declare-fun bm!403056 () Bool)

(declare-fun call!403172 () Unit!155012)

(assert (=> bm!403056 (= call!403175 call!403172)))

(declare-fun b!5462374 () Bool)

(declare-fun e!3382397 () Bool)

(declare-fun tp!1502345 () Bool)

(declare-fun tp!1502348 () Bool)

(assert (=> b!5462374 (= e!3382397 (and tp!1502345 tp!1502348))))

(declare-fun bm!403057 () Bool)

(assert (=> bm!403057 (= call!403037 (derivationStepZipperDown!739 (ite c!954575 (regOne!31095 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292))) (ite c!954575 lt!2232540 lt!2232556) (h!68496 s!2326)))))

(declare-fun b!5462375 () Bool)

(declare-fun Unit!155023 () Unit!155012)

(assert (=> b!5462375 (= e!3382399 Unit!155023)))

(declare-fun lt!2232547 () (InoxSet Context!9350))

(assert (=> b!5462375 (= lt!2232547 (store ((as const (Array Context!9350 Bool)) false) lt!2232540 true))))

(declare-fun lt!2232720 () Regex!15291)

(assert (=> b!5462375 (= lt!2232720 call!403041)))

(declare-fun lt!2232654 () Unit!155012)

(declare-fun call!403166 () Unit!155012)

(assert (=> b!5462375 (= lt!2232654 call!403166)))

(declare-fun call!403116 () Bool)

(assert (=> b!5462375 (= call!403116 call!403125)))

(declare-fun bm!403058 () Bool)

(declare-fun call!403087 () Bool)

(declare-fun call!403100 () Bool)

(assert (=> bm!403058 (= call!403087 call!403100)))

(declare-fun bm!403059 () Bool)

(declare-fun call!403160 () Bool)

(assert (=> bm!403059 (= call!403160 call!403097)))

(declare-fun bm!403060 () Bool)

(assert (=> bm!403060 (= call!403012 (lemmaFindConcatSeparationEquivalentToExists!1580 (ite (or c!954568 c!954570) (regTwo!31094 (regOne!31094 r!7292)) (reg!15620 (regOne!31094 r!7292))) (ite c!954568 lt!2232570 (ite c!954570 lt!2232683 lt!2232665)) (ite (or c!954568 c!954570) s!2326 (ite c!954569 (_1!35793 lt!2232542) (_1!35793 lt!2232548)))))))

(declare-fun bm!403061 () Bool)

(assert (=> bm!403061 (= call!403009 call!403163)))

(declare-fun bm!403062 () Bool)

(assert (=> bm!403062 (= call!403158 call!403076)))

(declare-fun bm!403063 () Bool)

(assert (=> bm!403063 (= call!403026 call!403069)))

(declare-fun bm!403064 () Bool)

(declare-fun call!403003 () Bool)

(declare-fun call!403081 () Bool)

(assert (=> bm!403064 (= call!403003 call!403081)))

(declare-fun bm!403065 () Bool)

(assert (=> bm!403065 (= call!403102 call!403065)))

(declare-fun call!403187 () List!62172)

(declare-fun bm!403066 () Bool)

(declare-fun lt!2232605 () List!62172)

(assert (=> bm!403066 (= call!403083 (matchR!7476 (ite c!954569 (reg!15620 (regOne!31094 r!7292)) (ite c!954574 lt!2232672 lt!2232633)) (ite c!954569 (_1!35793 lt!2232671) (ite c!954574 lt!2232605 call!403187))))))

(declare-fun bm!403067 () Bool)

(assert (=> bm!403067 (= call!403122 (flatMap!1018 (ite c!954572 (ite c!954569 lt!2232679 lt!2232563) lt!2232539) (ite c!954572 (ite c!954569 lambda!289947 lambda!289947) lambda!289947)))))

(declare-fun bm!403068 () Bool)

(declare-fun call!403018 () Regex!15291)

(assert (=> bm!403068 (= call!403114 call!403018)))

(declare-fun b!5462376 () Bool)

(declare-fun lt!2232702 () Bool)

(assert (=> b!5462376 (not lt!2232702)))

(declare-fun lt!2232541 () Unit!155012)

(declare-fun e!3382388 () Unit!155012)

(assert (=> b!5462376 (= lt!2232541 e!3382388)))

(declare-fun c!954571 () Bool)

(assert (=> b!5462376 (= c!954571 lt!2232702)))

(declare-fun call!403088 () Bool)

(assert (=> b!5462376 (= lt!2232702 call!403088)))

(declare-fun e!3382386 () Unit!155012)

(declare-fun Unit!155024 () Unit!155012)

(assert (=> b!5462376 (= e!3382386 Unit!155024)))

(declare-fun bm!403069 () Bool)

(assert (=> bm!403069 (= call!403145 call!403036)))

(declare-fun bm!403070 () Bool)

(assert (=> bm!403070 (= call!403153 (matchZipper!1535 (ite c!954575 lt!2232634 ((_ map or) lt!2232617 lt!2232609)) (ite c!954575 s!2326 (t!375401 s!2326))))))

(declare-fun lt!2232611 () List!62172)

(declare-fun lt!2232620 () Regex!15291)

(declare-fun bm!403071 () Bool)

(assert (=> bm!403071 (= call!403040 (matchR!7476 (ite c!954575 lt!2232620 (ite c!954568 lt!2232725 (ite c!954570 (Concat!24136 (regOne!31094 (regOne!31094 r!7292)) (Concat!24136 (regTwo!31094 (regOne!31094 r!7292)) lt!2232683)) (ite c!954572 (ite c!954569 (ite c!954565 lt!2232595 lt!2232633) (ite c!954574 lt!2232633 lt!2232723)) lt!2232564)))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite c!954572 (ite c!954569 (ite c!954565 s!2326 lt!2232531) (ite c!954574 lt!2232611 s!2326)) s!2326))))))

(declare-fun bm!403072 () Bool)

(declare-fun call!403137 () Bool)

(declare-fun call!403118 () Bool)

(assert (=> bm!403072 (= call!403137 call!403118)))

(declare-fun bm!403073 () Bool)

(assert (=> bm!403073 (= call!403084 call!403107)))

(declare-fun bm!403074 () Bool)

(declare-fun call!403017 () Unit!155012)

(assert (=> bm!403074 (= call!403074 call!403017)))

(declare-fun b!5462377 () Bool)

(declare-fun tp!1502347 () Bool)

(assert (=> b!5462377 (= e!3382397 tp!1502347)))

(declare-fun bm!403075 () Bool)

(assert (=> bm!403075 (= call!403128 call!403025)))

(declare-fun bm!403076 () Bool)

(assert (=> bm!403076 (= call!403143 call!403003)))

(declare-fun bm!403077 () Bool)

(assert (=> bm!403077 (= call!403111 call!403093)))

(declare-fun bm!403078 () Bool)

(declare-fun call!402989 () Unit!155012)

(assert (=> bm!403078 (= call!403001 call!402989)))

(declare-fun bm!403079 () Bool)

(declare-fun call!403045 () (InoxSet Context!9350))

(assert (=> bm!403079 (= call!403045 call!403112)))

(declare-fun bm!403080 () Bool)

(declare-fun call!403004 () Bool)

(assert (=> bm!403080 (= call!403098 call!403004)))

(declare-fun b!5462378 () Bool)

(declare-fun res!2326871 () Bool)

(assert (=> b!5462378 (=> (not res!2326871) (not e!3382409))))

(declare-fun unfocusZipper!1033 (List!62174) Regex!15291)

(assert (=> b!5462378 (= res!2326871 (= r!7292 (unfocusZipper!1033 zl!343)))))

(declare-fun bm!403081 () Bool)

(declare-fun call!403050 () Bool)

(assert (=> bm!403081 (= call!403050 call!403146)))

(declare-fun bm!403082 () Bool)

(assert (=> bm!403082 (= call!403010 (derivationStepZipperUp!663 (ite c!954572 lt!2232591 lt!2232540) (h!68496 s!2326)))))

(declare-fun bm!403083 () Bool)

(declare-fun lt!2232693 () Regex!15291)

(declare-fun theoremZipperRegexEquiv!571 ((InoxSet Context!9350) List!62174 Regex!15291 List!62172) Unit!155012)

(assert (=> bm!403083 (= call!403166 (theoremZipperRegexEquiv!571 (ite c!954566 lt!2232547 (ite c!954575 lt!2232555 (ite c!954568 lt!2232585 (ite c!954572 (ite c!954569 (ite c!954565 lt!2232679 lt!2232560) (ite c!954574 lt!2232560 lt!2232563)) lt!2232539)))) (ite c!954566 (Cons!62050 lt!2232540 Nil!62050) (ite c!954575 (Cons!62050 lt!2232719 Nil!62050) (ite c!954568 (Cons!62050 lt!2232699 Nil!62050) (ite c!954572 (ite c!954569 (ite c!954565 (Cons!62050 lt!2232540 Nil!62050) (Cons!62050 lt!2232717 Nil!62050)) (ite c!954574 (Cons!62050 lt!2232717 Nil!62050) (Cons!62050 lt!2232540 Nil!62050))) (Cons!62050 lt!2232540 Nil!62050))))) (ite c!954566 lt!2232720 (ite c!954575 lt!2232693 (ite c!954568 lt!2232725 (ite c!954572 (ite c!954569 (ite c!954565 lt!2232595 (reg!15620 (regOne!31094 r!7292))) (ite c!954574 (reg!15620 (regOne!31094 r!7292)) lt!2232723)) lt!2232564)))) (ite c!954566 (t!375401 s!2326) (ite (or c!954575 c!954568) s!2326 (ite c!954572 (ite c!954569 (ite c!954565 s!2326 (_1!35793 lt!2232671)) (ite c!954574 (_1!35793 lt!2232608) s!2326)) s!2326)))))))

(declare-fun bm!403084 () Bool)

(assert (=> bm!403084 (= call!403091 call!403183)))

(declare-fun b!5462379 () Bool)

(declare-fun e!3382384 () Bool)

(assert (=> b!5462379 (= e!3382384 (= lt!2232553 call!403100))))

(declare-fun bm!403085 () Bool)

(assert (=> bm!403085 (= call!403129 call!403020)))

(declare-fun b!5462380 () Bool)

(declare-fun res!2326854 () Bool)

(assert (=> b!5462380 (=> res!2326854 e!3382390)))

(assert (=> b!5462380 (= res!2326854 (not ((_ is Cons!62049) (exprs!5175 (h!68498 zl!343)))))))

(declare-fun bm!403086 () Bool)

(assert (=> bm!403086 (= call!403093 call!403103)))

(declare-fun bm!403087 () Bool)

(declare-fun call!403173 () Bool)

(assert (=> bm!403087 (= call!403069 call!403173)))

(declare-fun b!5462381 () Bool)

(declare-fun Unit!155025 () Unit!155012)

(assert (=> b!5462381 (= e!3382412 Unit!155025)))

(declare-fun lt!2232639 () Unit!155012)

(assert (=> b!5462381 (= lt!2232639 call!403110)))

(declare-fun res!2326862 () Bool)

(declare-fun lt!2232714 () Bool)

(assert (=> b!5462381 (= res!2326862 lt!2232714)))

(assert (=> b!5462381 (=> res!2326862 e!3382387)))

(assert (=> b!5462381 (= call!403174 e!3382387)))

(declare-fun bm!403088 () Bool)

(assert (=> bm!403088 (= call!403052 call!403088)))

(declare-fun b!5462382 () Bool)

(assert (=> b!5462382 (= e!3382398 (= lt!2232553 call!403028))))

(declare-fun bm!403089 () Bool)

(declare-fun call!403164 () Bool)

(assert (=> bm!403089 (= call!403164 (matchRSpec!2394 (ite c!954575 lt!2232693 (ite c!954568 lt!2232725 (ite c!954570 lt!2232526 (ite c!954572 lt!2232672 (ite c!954567 (regTwo!31094 r!7292) (regOne!31094 r!7292)))))) s!2326))))

(declare-fun b!5462383 () Bool)

(declare-fun e!3382406 () Unit!155012)

(assert (=> b!5462383 (= e!3382403 e!3382406)))

(assert (=> b!5462383 (= c!954570 ((_ is Concat!24136) (regOne!31094 r!7292)))))

(declare-fun bm!403090 () Bool)

(assert (=> bm!403090 (= call!403174 (matchZipper!1535 (ite c!954575 ((_ map or) lt!2232522 lt!2232567) (ite c!954568 ((_ map or) lt!2232617 lt!2232618) lt!2232675)) (t!375401 s!2326)))))

(declare-fun lt!2232521 () Regex!15291)

(declare-fun bm!403091 () Bool)

(assert (=> bm!403091 (= call!403139 (matchRSpec!2394 (ite c!954575 lt!2232521 (ite c!954574 lt!2232686 lt!2232665)) (ite c!954575 s!2326 (ite c!954574 (_1!35793 lt!2232548) Nil!62048))))))

(declare-fun bm!403092 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1126 (Regex!15291 Regex!15291 List!62172) Unit!155012)

(assert (=> bm!403092 (= call!403183 (lemmaExistCutMatchRandMatchRSpecEquivalent!1126 (ite c!954568 (regTwo!31094 (regOne!31094 r!7292)) (ite c!954570 (regOne!31094 (regOne!31094 r!7292)) (ite c!954569 (reg!15620 (regOne!31094 r!7292)) lt!2232686))) (ite c!954568 lt!2232570 (ite c!954570 lt!2232674 (ite c!954569 lt!2232665 (regTwo!31094 r!7292)))) (ite (or c!954568 c!954570) s!2326 (ite c!954569 (_1!35793 lt!2232542) s!2326))))))

(declare-fun bm!403093 () Bool)

(declare-fun call!403155 () Bool)

(assert (=> bm!403093 (= call!402990 call!403155)))

(declare-fun b!5462384 () Bool)

(declare-fun res!2326874 () Bool)

(assert (=> b!5462384 (=> res!2326874 e!3382390)))

(declare-fun isEmpty!34038 (List!62174) Bool)

(assert (=> b!5462384 (= res!2326874 (not (isEmpty!34038 (t!375403 zl!343))))))

(declare-fun bm!403094 () Bool)

(assert (=> bm!403094 (= call!403088 call!403084)))

(declare-fun bm!403095 () Bool)

(assert (=> bm!403095 (= call!403023 call!403135)))

(declare-fun b!5462385 () Bool)

(declare-fun res!2326873 () Bool)

(assert (=> b!5462385 (=> (not res!2326873) (not e!3382409))))

(declare-fun toList!9075 ((InoxSet Context!9350)) List!62174)

(assert (=> b!5462385 (= res!2326873 (= (toList!9075 z!1189) zl!343))))

(declare-fun bm!403096 () Bool)

(assert (=> bm!403096 (= call!403188 call!403007)))

(declare-fun bm!403097 () Bool)

(assert (=> bm!403097 (= call!403021 call!403160)))

(declare-fun bm!403098 () Bool)

(declare-fun call!403000 () Regex!15291)

(assert (=> bm!403098 (= call!403062 call!403000)))

(declare-fun b!5462386 () Bool)

(assert (=> b!5462386 (= e!3382419 lt!2232705)))

(declare-fun bm!403099 () Bool)

(declare-fun call!403024 () Unit!155012)

(assert (=> bm!403099 (= call!403024 call!403171)))

(declare-fun bm!403100 () Bool)

(assert (=> bm!403100 (= call!403108 call!403124)))

(declare-fun bm!403101 () Bool)

(assert (=> bm!403101 (= call!403173 (matchR!7476 (ite c!954575 lt!2232693 (ite c!954568 (Concat!24136 (regOne!31094 (regOne!31094 r!7292)) (Concat!24136 (regTwo!31094 (regOne!31094 r!7292)) lt!2232570)) (ite c!954569 lt!2232665 lt!2232686))) (ite (or c!954575 c!954568) s!2326 (ite c!954569 (_1!35793 lt!2232542) (_1!35793 lt!2232548)))))))

(declare-fun b!5462387 () Bool)

(declare-fun e!3382383 () Bool)

(declare-fun e!3382422 () Bool)

(assert (=> b!5462387 (= e!3382383 e!3382422)))

(declare-fun res!2326866 () Bool)

(assert (=> b!5462387 (=> res!2326866 e!3382422)))

(declare-fun lt!2232721 () List!62174)

(declare-fun zipperDepth!192 (List!62174) Int)

(assert (=> b!5462387 (= res!2326866 (< (zipperDepth!192 zl!343) (zipperDepth!192 lt!2232721)))))

(assert (=> b!5462387 (= lt!2232721 (Cons!62050 lt!2232540 Nil!62050))))

(declare-fun call!403180 () (InoxSet Context!9350))

(declare-fun bm!403102 () Bool)

(declare-fun lt!2232626 () List!62173)

(assert (=> bm!403102 (= call!403180 (derivationStepZipperDown!739 (ite c!954575 (regTwo!31095 (regOne!31094 r!7292)) (ite c!954568 (regTwo!31094 (regOne!31094 r!7292)) (ite c!954570 (regOne!31094 (regOne!31094 r!7292)) (reg!15620 (regOne!31094 r!7292))))) (ite (or c!954575 c!954568) lt!2232540 (ite c!954570 (Context!9351 lt!2232626) lt!2232591)) (h!68496 s!2326)))))

(declare-fun b!5462388 () Bool)

(declare-fun res!2326868 () Bool)

(assert (=> b!5462388 (=> res!2326868 e!3382390)))

(assert (=> b!5462388 (= res!2326868 (or ((_ is EmptyExpr!15291) r!7292) ((_ is EmptyLang!15291) r!7292) ((_ is ElementMatch!15291) r!7292) ((_ is Union!15291) r!7292) (not ((_ is Concat!24136) r!7292))))))

(declare-fun bm!403103 () Bool)

(declare-fun call!403109 () Unit!155012)

(assert (=> bm!403103 (= call!403124 call!403109)))

(declare-fun bm!403104 () Bool)

(declare-fun call!403015 () Bool)

(assert (=> bm!403104 (= call!403105 call!403015)))

(declare-fun bm!403105 () Bool)

(assert (=> bm!403105 (= call!402996 (Exists!2472 (ite c!954568 lambda!289948 (ite c!954570 lambda!289954 (ite c!954569 lambda!289960 lambda!289966)))))))

(declare-fun bm!403106 () Bool)

(assert (=> bm!403106 (= call!403015 (matchRSpec!2394 (ite c!954575 lt!2232620 (ite c!954568 lt!2232622 (ite c!954570 lt!2232674 (ite c!954572 (ite c!954569 lt!2232665 lt!2232621) (ite c!954567 (regOne!31094 r!7292) (regTwo!31094 r!7292)))))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite (and c!954572 c!954569) (_1!35793 lt!2232542) s!2326))))))

(declare-fun bm!403107 () Bool)

(assert (=> bm!403107 (= call!403100 (matchZipper!1535 (ite (or c!954575 c!954568) z!1189 (ite c!954570 lt!2232637 (ite c!954572 (ite c!954569 lt!2232706 lt!2232560) z!1189))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite c!954572 (ite c!954569 lt!2232531 (_1!35793 lt!2232608)) s!2326))))))

(declare-fun bm!403108 () Bool)

(assert (=> bm!403108 (= call!403058 call!403175)))

(assert (=> b!5462389 call!403088))

(declare-fun lt!2232519 () Unit!155012)

(assert (=> b!5462389 (= lt!2232519 e!3382405)))

(declare-fun isEmpty!34039 (List!62172) Bool)

(assert (=> b!5462389 (= c!954565 (isEmpty!34039 (_1!35793 lt!2232542)))))

(declare-fun call!403169 () tuple2!64980)

(assert (=> b!5462389 (= lt!2232542 call!403169)))

(assert (=> b!5462389 (= call!403185 call!403060)))

(declare-fun lt!2232586 () Unit!155012)

(assert (=> b!5462389 (= lt!2232586 call!403017)))

(assert (=> b!5462389 (= call!403137 call!403092)))

(declare-fun lt!2232603 () Option!15402)

(declare-fun call!403070 () Option!15402)

(assert (=> b!5462389 (= lt!2232603 call!403070)))

(declare-fun lt!2232657 () Unit!155012)

(assert (=> b!5462389 (= lt!2232657 call!403133)))

(declare-fun Unit!155026 () Unit!155012)

(assert (=> b!5462389 (= e!3382386 Unit!155026)))

(declare-fun bm!403109 () Bool)

(declare-fun call!403113 () Bool)

(assert (=> bm!403109 (= call!403126 call!403113)))

(declare-fun bm!403110 () Bool)

(assert (=> bm!403110 (= call!403172 call!403038)))

(declare-fun bm!403111 () Bool)

(assert (=> bm!403111 (= call!403191 call!403035)))

(declare-fun bm!403112 () Bool)

(assert (=> bm!403112 (= call!402993 call!403050)))

(declare-fun e!3382420 () Bool)

(assert (=> b!5462390 e!3382420))

(declare-fun res!2326858 () Bool)

(assert (=> b!5462390 (=> (not res!2326858) (not e!3382420))))

(assert (=> b!5462390 (= res!2326858 call!403027)))

(declare-fun lt!2232710 () Unit!155012)

(assert (=> b!5462390 (= lt!2232710 call!403013)))

(assert (=> b!5462390 call!403131))

(declare-fun lt!2232588 () Unit!155012)

(assert (=> b!5462390 (= lt!2232588 call!403005)))

(assert (=> b!5462390 (= lt!2232611 call!403192)))

(declare-fun lt!2232694 () List!62172)

(assert (=> b!5462390 (= lt!2232611 (++!13661 lt!2232694 (_2!35793 lt!2232548)))))

(declare-fun lt!2232718 () List!62172)

(assert (=> b!5462390 (= lt!2232718 call!403123)))

(assert (=> b!5462390 (= lt!2232694 call!403187)))

(declare-fun lt!2232613 () Unit!155012)

(assert (=> b!5462390 (= lt!2232613 call!403119)))

(assert (=> b!5462390 (= lt!2232587 (get!21401 lt!2232578))))

(assert (=> b!5462390 (= call!402990 call!403068)))

(declare-fun lt!2232678 () Unit!155012)

(assert (=> b!5462390 (= lt!2232678 call!403167)))

(assert (=> b!5462390 (= call!402993 call!403009)))

(declare-fun lt!2232604 () Unit!155012)

(assert (=> b!5462390 (= lt!2232604 call!403074)))

(assert (=> b!5462390 (= call!403080 call!403141)))

(assert (=> b!5462390 (= lt!2232578 call!403047)))

(declare-fun lt!2232530 () Unit!155012)

(assert (=> b!5462390 (= lt!2232530 call!403001)))

(assert (=> b!5462390 (= call!403026 call!403157)))

(declare-fun lt!2232724 () Unit!155012)

(assert (=> b!5462390 (= lt!2232724 call!403058)))

(assert (=> b!5462390 (= lt!2232548 call!403169)))

(assert (=> b!5462390 (= call!403016 call!403193)))

(declare-fun lt!2232661 () Unit!155012)

(assert (=> b!5462390 (= lt!2232661 call!403149)))

(declare-fun lt!2232592 () Option!15402)

(assert (=> b!5462390 (= (isDefined!12105 lt!2232592) call!403095)))

(assert (=> b!5462390 (= lt!2232592 call!403120)))

(declare-fun lt!2232649 () Unit!155012)

(assert (=> b!5462390 (= lt!2232649 call!403085)))

(assert (=> b!5462390 call!403098))

(declare-fun lt!2232648 () Unit!155012)

(assert (=> b!5462390 (= lt!2232648 call!403044)))

(assert (=> b!5462390 call!403008))

(assert (=> b!5462390 (= lt!2232621 (Concat!24136 lt!2232686 (regTwo!31094 r!7292)))))

(assert (=> b!5462390 (= lt!2232686 (Concat!24136 (reg!15620 (regOne!31094 r!7292)) lt!2232665))))

(declare-fun lt!2232659 () Unit!155012)

(assert (=> b!5462390 (= lt!2232659 call!403024)))

(assert (=> b!5462390 e!3382417))

(declare-fun res!2326867 () Bool)

(assert (=> b!5462390 (=> (not res!2326867) (not e!3382417))))

(assert (=> b!5462390 (= res!2326867 call!403059)))

(declare-fun lt!2232663 () Unit!155012)

(assert (=> b!5462390 (= lt!2232663 call!403057)))

(assert (=> b!5462390 (= call!403111 call!403176)))

(declare-fun lt!2232703 () Unit!155012)

(assert (=> b!5462390 (= lt!2232703 call!403162)))

(assert (=> b!5462390 (= call!403104 call!403126)))

(declare-fun lt!2232668 () Unit!155012)

(assert (=> b!5462390 (= lt!2232668 call!403079)))

(assert (=> b!5462390 call!403134))

(assert (=> b!5462390 (= lt!2232605 call!403142)))

(declare-fun lt!2232632 () List!62173)

(assert (=> b!5462390 (= lt!2232632 call!403055)))

(declare-fun lt!2232583 () Unit!155012)

(assert (=> b!5462390 (= lt!2232583 call!403022)))

(declare-fun lt!2232641 () Unit!155012)

(assert (=> b!5462390 (= lt!2232641 call!403151)))

(assert (=> b!5462390 (= lt!2232608 call!402992)))

(assert (=> b!5462390 call!403137))

(declare-fun findConcatSeparationZippers!90 ((InoxSet Context!9350) (InoxSet Context!9350) List!62172 List!62172 List!62172) Option!15402)

(assert (=> b!5462390 (= lt!2232532 (findConcatSeparationZippers!90 lt!2232560 lt!2232706 Nil!62048 s!2326 s!2326))))

(declare-fun lt!2232552 () Unit!155012)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!90 ((InoxSet Context!9350) Context!9350 List!62172) Unit!155012)

(assert (=> b!5462390 (= lt!2232552 (lemmaConcatZipperMatchesStringThenFindConcatDefined!90 lt!2232560 lt!2232591 s!2326))))

(declare-fun lambda!289962 () Int)

(declare-fun map!14263 ((InoxSet Context!9350) Int) (InoxSet Context!9350))

(assert (=> b!5462390 (= (map!14263 lt!2232560 lambda!289962) (store ((as const (Array Context!9350 Bool)) false) (Context!9351 call!403055) true))))

(declare-fun lt!2232576 () Unit!155012)

(assert (=> b!5462390 (= lt!2232576 call!402988)))

(declare-fun lt!2232581 () Unit!155012)

(declare-fun lemmaMapOnSingletonSet!92 ((InoxSet Context!9350) Context!9350 Int) Unit!155012)

(assert (=> b!5462390 (= lt!2232581 (lemmaMapOnSingletonSet!92 lt!2232560 lt!2232717 lambda!289962))))

(declare-fun Unit!155027 () Unit!155012)

(assert (=> b!5462390 (= e!3382394 Unit!155027)))

(declare-fun bm!403113 () Bool)

(declare-fun call!403042 () Unit!155012)

(assert (=> bm!403113 (= call!403038 call!403042)))

(declare-fun bm!403114 () Bool)

(declare-fun call!402997 () Bool)

(assert (=> bm!403114 (= call!403117 call!402997)))

(declare-fun bm!403115 () Bool)

(assert (=> bm!403115 (= call!403115 call!403186)))

(declare-fun bm!403116 () Bool)

(declare-fun call!403071 () Bool)

(assert (=> bm!403116 (= call!403071 call!403087)))

(declare-fun b!5462391 () Bool)

(declare-fun e!3382407 () Bool)

(assert (=> b!5462391 (= e!3382407 (or (not lt!2232553) lt!2232572))))

(declare-fun bm!403117 () Bool)

(assert (=> bm!403117 (= call!403187 call!403181)))

(declare-fun bm!403118 () Bool)

(assert (=> bm!403118 (= call!403192 (++!13661 (ite c!954569 (_1!35793 lt!2232671) (_1!35793 lt!2232587)) (ite c!954569 (_2!35793 lt!2232671) lt!2232718)))))

(declare-fun bm!403119 () Bool)

(declare-fun call!403132 () Unit!155012)

(assert (=> bm!403119 (= call!403106 call!403132)))

(declare-fun bm!403120 () Bool)

(declare-fun call!403154 () Bool)

(assert (=> bm!403120 (= call!403131 call!403154)))

(declare-fun b!5462392 () Bool)

(assert (=> b!5462392 (= e!3382389 call!403003)))

(declare-fun bm!403121 () Bool)

(assert (=> bm!403121 (= call!403032 call!403164)))

(declare-fun bm!403122 () Bool)

(assert (=> bm!403122 (= call!403176 call!403165)))

(declare-fun lt!2232554 () List!62173)

(declare-fun bm!403123 () Bool)

(assert (=> bm!403123 (= call!403041 (generalisedConcat!960 (ite c!954566 (t!375402 (exprs!5175 (h!68498 zl!343))) (ite c!954575 lt!2232554 (t!375402 (exprs!5175 (h!68498 zl!343)))))))))

(declare-fun bm!403124 () Bool)

(assert (=> bm!403124 (= call!403161 call!403004)))

(declare-fun bm!403125 () Bool)

(assert (=> bm!403125 (= call!403042 (mainMatchTheorem!2394 (ite c!954575 lt!2232575 (ite c!954568 lt!2232622 (ite c!954570 lt!2232526 (ite c!954572 (ite c!954574 lt!2232686 lt!2232665) (ite c!954567 (regOne!31094 r!7292) (regTwo!31094 r!7292)))))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite c!954572 (ite c!954574 (_1!35793 lt!2232548) Nil!62048) s!2326))))))

(declare-fun bm!403126 () Bool)

(assert (=> bm!403126 (= call!403162 call!403078)))

(assert (=> b!5462393 (= e!3382390 e!3382392)))

(declare-fun res!2326875 () Bool)

(assert (=> b!5462393 (=> res!2326875 e!3382392)))

(declare-fun lt!2232545 () Bool)

(assert (=> b!5462393 (= res!2326875 (or (not (= lt!2232553 lt!2232545)) ((_ is Nil!62048) s!2326)))))

(assert (=> b!5462393 (= (Exists!2472 lambda!289945) (Exists!2472 lambda!289946))))

(declare-fun lt!2232636 () Unit!155012)

(assert (=> b!5462393 (= lt!2232636 (lemmaExistCutMatchRandMatchRSpecEquivalent!1126 (regOne!31094 r!7292) (regTwo!31094 r!7292) s!2326))))

(assert (=> b!5462393 (= lt!2232545 (Exists!2472 lambda!289945))))

(assert (=> b!5462393 (= lt!2232545 (isDefined!12105 (findConcatSeparation!1816 (regOne!31094 r!7292) (regTwo!31094 r!7292) Nil!62048 s!2326 s!2326)))))

(declare-fun lt!2232673 () Unit!155012)

(assert (=> b!5462393 (= lt!2232673 (lemmaFindConcatSeparationEquivalentToExists!1580 (regOne!31094 r!7292) (regTwo!31094 r!7292) s!2326))))

(declare-fun b!5462394 () Bool)

(assert (=> b!5462394 (= e!3382422 true)))

(declare-fun lt!2232697 () Bool)

(assert (=> b!5462394 (= lt!2232697 (matchZipper!1535 z!1189 s!2326))))

(declare-fun lt!2232642 () Regex!15291)

(assert (=> b!5462394 (= (matchR!7476 lt!2232642 s!2326) (matchZipper!1535 lt!2232525 s!2326))))

(declare-fun lt!2232708 () Unit!155012)

(assert (=> b!5462394 (= lt!2232708 (theoremZipperRegexEquiv!571 lt!2232525 lt!2232721 lt!2232642 s!2326))))

(declare-fun bm!403127 () Bool)

(declare-fun call!403006 () Unit!155012)

(assert (=> bm!403127 (= call!403006 (lemmaFlatMapOnSingletonSet!550 (ite c!954570 lt!2232637 lt!2232640) (ite c!954570 lt!2232533 lt!2232596) (ite c!954570 lambda!289947 lambda!289947)))))

(declare-fun bm!403128 () Bool)

(assert (=> bm!403128 (= call!402989 call!403012)))

(declare-fun bm!403129 () Bool)

(assert (=> bm!403129 (= call!403014 call!403106)))

(declare-fun call!403177 () Unit!155012)

(declare-fun bm!403130 () Bool)

(assert (=> bm!403130 (= call!403177 (mainMatchTheorem!2394 (ite c!954575 lt!2232693 lt!2232672) s!2326))))

(declare-fun bm!403131 () Bool)

(assert (=> bm!403131 (= call!403085 call!403133)))

(declare-fun bm!403132 () Bool)

(assert (=> bm!403132 (= call!403169 (get!21401 (ite c!954569 lt!2232603 lt!2232592)))))

(declare-fun setIsEmpty!35737 () Bool)

(assert (=> setIsEmpty!35737 setRes!35737))

(declare-fun b!5462395 () Bool)

(assert (=> b!5462395 (= e!3382411 e!3382383)))

(declare-fun res!2326848 () Bool)

(assert (=> b!5462395 (=> res!2326848 e!3382383)))

(declare-fun regexDepth!207 (Regex!15291) Int)

(assert (=> b!5462395 (= res!2326848 (< (regexDepth!207 r!7292) (regexDepth!207 lt!2232642)))))

(assert (=> b!5462395 (= lt!2232642 (generalisedConcat!960 (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun bm!403133 () Bool)

(assert (=> bm!403133 (= call!403022 (lemmaConcatPreservesForall!258 lt!2232625 lt!2232573 (ite c!954569 lambda!289961 lambda!289963)))))

(declare-fun e!3382414 () Bool)

(assert (=> b!5462396 e!3382414))

(declare-fun res!2326850 () Bool)

(assert (=> b!5462396 (=> (not res!2326850) (not e!3382414))))

(assert (=> b!5462396 (= res!2326850 (= call!403191 call!403160))))

(declare-fun lt!2232599 () Unit!155012)

(assert (=> b!5462396 (= lt!2232599 call!403024)))

(assert (=> b!5462396 (= call!403086 call!403073)))

(declare-fun lt!2232590 () Unit!155012)

(assert (=> b!5462396 (= lt!2232590 call!403147)))

(assert (=> b!5462396 (= call!402997 call!403155)))

(declare-fun lt!2232594 () Unit!155012)

(assert (=> b!5462396 (= lt!2232594 call!402989)))

(assert (=> b!5462396 (= lt!2232683 call!403000)))

(assert (=> b!5462396 (= call!403103 call!403170)))

(declare-fun lt!2232557 () Unit!155012)

(assert (=> b!5462396 (= lt!2232557 call!403075)))

(declare-fun call!403152 () Bool)

(assert (=> b!5462396 (= call!403152 call!403050)))

(declare-fun lt!2232544 () Unit!155012)

(assert (=> b!5462396 (= lt!2232544 call!403091)))

(declare-fun call!403051 () Bool)

(assert (=> b!5462396 (= call!403118 call!403051)))

(declare-fun lt!2232635 () Unit!155012)

(assert (=> b!5462396 (= lt!2232635 call!403066)))

(assert (=> b!5462396 (= lt!2232674 call!403114)))

(declare-fun lt!2232574 () Bool)

(assert (=> b!5462396 (= lt!2232574 call!403096)))

(declare-fun lt!2232646 () Unit!155012)

(assert (=> b!5462396 (= lt!2232646 call!403172)))

(assert (=> b!5462396 (= lt!2232574 call!403071)))

(assert (=> b!5462396 (= lt!2232574 call!403104)))

(declare-fun lt!2232536 () Unit!155012)

(assert (=> b!5462396 (= lt!2232536 call!403078)))

(assert (=> b!5462396 (= lt!2232526 call!403190)))

(assert (=> b!5462396 (= call!403159 call!403136)))

(declare-fun lt!2232612 () Unit!155012)

(assert (=> b!5462396 (= lt!2232612 call!403006)))

(declare-fun lt!2232662 () (InoxSet Context!9350))

(assert (=> b!5462396 (= lt!2232662 call!403136)))

(assert (=> b!5462396 (= lt!2232637 (store ((as const (Array Context!9350 Bool)) false) lt!2232533 true))))

(assert (=> b!5462396 (= lt!2232533 (Context!9351 lt!2232698))))

(assert (=> b!5462396 (= lt!2232698 (Cons!62049 (regOne!31094 (regOne!31094 r!7292)) lt!2232626))))

(declare-fun lt!2232527 () (InoxSet Context!9350))

(assert (=> b!5462396 (= lt!2232527 call!403045)))

(assert (=> b!5462396 (= lt!2232626 (Cons!62049 (regTwo!31094 (regOne!31094 r!7292)) (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun Unit!155028 () Unit!155012)

(assert (=> b!5462396 (= e!3382406 Unit!155028)))

(declare-fun b!5462397 () Bool)

(assert (=> b!5462397 (= c!954568 e!3382381)))

(declare-fun res!2326857 () Bool)

(assert (=> b!5462397 (=> (not res!2326857) (not e!3382381))))

(assert (=> b!5462397 (= res!2326857 ((_ is Concat!24136) (regOne!31094 r!7292)))))

(assert (=> b!5462397 (= e!3382402 e!3382403)))

(declare-fun bm!403134 () Bool)

(assert (=> bm!403134 (= call!403155 call!402996)))

(declare-fun b!5462398 () Bool)

(assert (=> b!5462398 (= e!3382416 call!403052)))

(declare-fun bm!403135 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!46 ((InoxSet Context!9350) List!62172) Unit!155012)

(assert (=> bm!403135 (= call!403156 (lemmaEmptyZipperMatchesNothing!46 lt!2232675 (t!375401 s!2326)))))

(declare-fun bm!403136 () Bool)

(assert (=> bm!403136 (= call!403112 call!403180)))

(declare-fun bm!403137 () Bool)

(assert (=> bm!403137 (= call!403051 call!403043)))

(declare-fun b!5462399 () Bool)

(assert (=> b!5462399 (= e!3382413 call!403089)))

(declare-fun bm!403138 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!258 (Regex!15291 Regex!15291 List!62172 List!62172) Unit!155012)

(assert (=> bm!403138 (= call!403030 (lemmaTwoRegexMatchThenConcatMatchesConcatString!258 (ite c!954569 lt!2232665 (ite c!954574 (reg!15620 (regOne!31094 r!7292)) lt!2232665)) (ite c!954569 (regTwo!31094 r!7292) (ite c!954574 lt!2232633 (regTwo!31094 r!7292))) (ite c!954569 (_2!35793 lt!2232671) (ite c!954574 (_1!35793 lt!2232608) Nil!62048)) (ite c!954569 (_2!35793 lt!2232542) (ite c!954574 (_2!35793 lt!2232608) s!2326))))))

(declare-fun b!5462400 () Bool)

(assert (=> b!5462400 (= e!3382414 (= lt!2232553 call!403007))))

(declare-fun b!5462401 () Bool)

(assert (=> b!5462401 e!3382384))

(declare-fun res!2326845 () Bool)

(assert (=> b!5462401 (=> (not res!2326845) (not e!3382384))))

(declare-fun lt!2232524 () Bool)

(assert (=> b!5462401 (= res!2326845 (= lt!2232524 call!403139))))

(declare-fun lt!2232631 () Unit!155012)

(assert (=> b!5462401 (= lt!2232631 (mainMatchTheorem!2394 lt!2232521 s!2326))))

(declare-fun lt!2232660 () Bool)

(assert (=> b!5462401 (= lt!2232660 call!403015)))

(declare-fun lt!2232619 () Unit!155012)

(declare-fun call!403127 () Unit!155012)

(assert (=> b!5462401 (= lt!2232619 call!403127)))

(assert (=> b!5462401 (= lt!2232524 lt!2232660)))

(assert (=> b!5462401 (= lt!2232660 call!403040)))

(assert (=> b!5462401 (= lt!2232524 call!403154)))

(assert (=> b!5462401 (= lt!2232620 (Union!15291 (Concat!24136 (regOne!31095 (regOne!31094 r!7292)) (regTwo!31094 r!7292)) (Concat!24136 (regTwo!31095 (regOne!31094 r!7292)) (regTwo!31094 r!7292))))))

(assert (=> b!5462401 (= lt!2232521 (Concat!24136 (regOne!31094 r!7292) (regTwo!31094 r!7292)))))

(declare-fun lt!2232656 () Unit!155012)

(declare-fun lemmaConcatDistributesInUnion!38 (Regex!15291 Regex!15291 Regex!15291 List!62172) Unit!155012)

(assert (=> b!5462401 (= lt!2232656 (lemmaConcatDistributesInUnion!38 (regOne!31095 (regOne!31094 r!7292)) (regTwo!31095 (regOne!31094 r!7292)) (regTwo!31094 r!7292) s!2326))))

(declare-fun lt!2232651 () Bool)

(assert (=> b!5462401 (= lt!2232651 (matchRSpec!2394 lt!2232575 s!2326))))

(declare-fun lt!2232529 () Unit!155012)

(assert (=> b!5462401 (= lt!2232529 call!403042)))

(declare-fun lt!2232520 () Bool)

(assert (=> b!5462401 (= lt!2232520 call!403164)))

(declare-fun lt!2232562 () Unit!155012)

(assert (=> b!5462401 (= lt!2232562 call!403177)))

(assert (=> b!5462401 (= lt!2232651 call!403153)))

(assert (=> b!5462401 (= lt!2232651 call!403099)))

(declare-fun lt!2232558 () Unit!155012)

(declare-fun call!403039 () Unit!155012)

(assert (=> b!5462401 (= lt!2232558 call!403039)))

(assert (=> b!5462401 (= lt!2232575 call!403036)))

(assert (=> b!5462401 (= lt!2232520 call!403089)))

(assert (=> b!5462401 (= lt!2232520 call!403173)))

(declare-fun lt!2232713 () Unit!155012)

(assert (=> b!5462401 (= lt!2232713 call!403109)))

(assert (=> b!5462401 (= lt!2232693 call!403018)))

(declare-fun lt!2232655 () Unit!155012)

(assert (=> b!5462401 (= lt!2232655 e!3382396)))

(declare-fun c!954564 () Bool)

(assert (=> b!5462401 (= c!954564 call!403031)))

(assert (=> b!5462401 (= call!403054 call!403061)))

(declare-fun lt!2232535 () Unit!155012)

(assert (=> b!5462401 (= lt!2232535 call!403132)))

(declare-fun lt!2232658 () (InoxSet Context!9350))

(assert (=> b!5462401 (= lt!2232658 call!403061)))

(declare-fun lt!2232598 () Unit!155012)

(assert (=> b!5462401 (= lt!2232598 e!3382412)))

(declare-fun c!954576 () Bool)

(assert (=> b!5462401 (= c!954576 (nullable!5460 (regOne!31095 (regOne!31094 r!7292))))))

(assert (=> b!5462401 (= call!403186 call!403076)))

(declare-fun lt!2232538 () Unit!155012)

(declare-fun call!403056 () Unit!155012)

(assert (=> b!5462401 (= lt!2232538 call!403056)))

(declare-fun lt!2232650 () (InoxSet Context!9350))

(assert (=> b!5462401 (= lt!2232650 call!403076)))

(assert (=> b!5462401 (= lt!2232634 (store ((as const (Array Context!9350 Bool)) false) lt!2232627 true))))

(assert (=> b!5462401 (= lt!2232627 (Context!9351 lt!2232554))))

(assert (=> b!5462401 (= lt!2232554 (Cons!62049 (regTwo!31095 (regOne!31094 r!7292)) (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(assert (=> b!5462401 (= lt!2232555 (store ((as const (Array Context!9350 Bool)) false) lt!2232719 true))))

(declare-fun lt!2232712 () List!62173)

(assert (=> b!5462401 (= lt!2232719 (Context!9351 lt!2232712))))

(assert (=> b!5462401 (= lt!2232712 (Cons!62049 (regOne!31095 (regOne!31094 r!7292)) (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(declare-fun e!3382400 () Bool)

(assert (=> b!5462401 (= call!403081 e!3382400)))

(declare-fun res!2326861 () Bool)

(assert (=> b!5462401 (=> res!2326861 e!3382400)))

(assert (=> b!5462401 (= res!2326861 lt!2232714)))

(assert (=> b!5462401 (= lt!2232714 call!403178)))

(declare-fun lt!2232687 () Unit!155012)

(assert (=> b!5462401 (= lt!2232687 (lemmaZipperConcatMatchesSameAsBothZippers!528 lt!2232522 lt!2232645 (t!375401 s!2326)))))

(assert (=> b!5462401 (= lt!2232645 call!403180)))

(assert (=> b!5462401 (= lt!2232522 call!403037)))

(declare-fun Unit!155029 () Unit!155012)

(assert (=> b!5462401 (= e!3382402 Unit!155029)))

(declare-fun bm!403139 () Bool)

(assert (=> bm!403139 (= call!402997 call!403072)))

(declare-fun b!5462402 () Bool)

(assert (=> b!5462402 (= e!3382388 e!3382394)))

(assert (=> b!5462402 (= c!954574 call!403023)))

(declare-fun bm!403140 () Bool)

(assert (=> bm!403140 (= call!403016 call!403051)))

(declare-fun bm!403141 () Bool)

(assert (=> bm!403141 (= call!403163 call!403152)))

(declare-fun bm!403142 () Bool)

(assert (=> bm!403142 (= call!403034 (lemmaExistCutMatchRandMatchRSpecEquivalent!1126 (ite c!954568 (regOne!31094 (regOne!31094 r!7292)) (ite c!954570 (regTwo!31094 (regOne!31094 r!7292)) (ite c!954569 lt!2232665 (reg!15620 (regOne!31094 r!7292))))) (ite c!954568 lt!2232622 (ite c!954570 lt!2232683 (ite c!954569 (regTwo!31094 r!7292) lt!2232665))) (ite (or c!954568 c!954570 c!954569) s!2326 (ite c!954574 (_1!35793 lt!2232548) Nil!62048))))))

(declare-fun b!5462403 () Bool)

(declare-fun Unit!155030 () Unit!155012)

(assert (=> b!5462403 (= e!3382396 Unit!155030)))

(declare-fun lt!2232577 () Unit!155012)

(assert (=> b!5462403 (= lt!2232577 call!403150)))

(declare-fun res!2326870 () Bool)

(assert (=> b!5462403 (= res!2326870 (matchZipper!1535 lt!2232645 (t!375401 s!2326)))))

(assert (=> b!5462403 (=> res!2326870 e!3382395)))

(assert (=> b!5462403 (= call!403140 e!3382395)))

(declare-fun b!5462404 () Bool)

(assert (=> b!5462404 (= c!954572 ((_ is Star!15291) (regOne!31094 r!7292)))))

(assert (=> b!5462404 (= e!3382406 e!3382410)))

(declare-fun bm!403143 () Bool)

(assert (=> bm!403143 (= call!403048 call!403096)))

(declare-fun bm!403144 () Bool)

(assert (=> bm!403144 (= call!403043 (Exists!2472 (ite c!954568 lambda!289950 (ite c!954570 lambda!289952 (ite c!954569 lambda!289958 lambda!289964)))))))

(declare-fun bm!403145 () Bool)

(assert (=> bm!403145 (= call!403101 call!403110)))

(declare-fun bm!403146 () Bool)

(assert (=> bm!403146 (= call!403116 (matchR!7476 (ite c!954566 lt!2232720 (ite c!954575 lt!2232521 (ite c!954568 lt!2232622 lt!2232665))) (ite c!954566 (t!375401 s!2326) (ite (or c!954575 c!954568) s!2326 lt!2232694))))))

(declare-fun bm!403147 () Bool)

(assert (=> bm!403147 (= call!403152 call!403182)))

(declare-fun bm!403148 () Bool)

(assert (=> bm!403148 (= call!403039 (theoremZipperRegexEquiv!571 (ite c!954575 lt!2232634 (ite c!954568 lt!2232682 (ite c!954570 lt!2232637 lt!2232706))) (ite c!954575 (Cons!62050 lt!2232627 Nil!62050) (ite c!954568 (Cons!62050 lt!2232556 Nil!62050) (ite c!954570 (Cons!62050 lt!2232533 Nil!62050) (Cons!62050 lt!2232591 Nil!62050)))) (ite c!954575 lt!2232575 (ite c!954568 lt!2232622 (ite c!954570 lt!2232526 lt!2232633))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite c!954569 lt!2232531 (_2!35793 lt!2232608)))))))

(declare-fun bm!403149 () Bool)

(assert (=> bm!403149 (= call!403047 call!403070)))

(declare-fun bm!403150 () Bool)

(assert (=> bm!403150 (= call!403165 call!403188)))

(declare-fun bm!403151 () Bool)

(assert (=> bm!403151 (= call!403017 call!403147)))

(declare-fun bm!403152 () Bool)

(assert (=> bm!403152 (= call!403046 (findConcatSeparation!1816 (ite (or c!954568 c!954570) (regTwo!31094 (regOne!31094 r!7292)) (ite c!954569 lt!2232665 (reg!15620 (regOne!31094 r!7292)))) (ite c!954568 lt!2232570 (ite c!954570 lt!2232683 (ite c!954569 (regTwo!31094 r!7292) lt!2232665))) Nil!62048 (ite (or c!954568 c!954570 c!954569) s!2326 (ite c!954574 (_1!35793 lt!2232548) Nil!62048)) (ite (or c!954568 c!954570 c!954569) s!2326 (ite c!954574 (_1!35793 lt!2232548) Nil!62048))))))

(declare-fun bm!403153 () Bool)

(assert (=> bm!403153 (= call!403019 call!403062)))

(declare-fun bm!403154 () Bool)

(assert (=> bm!403154 (= call!403090 call!403054)))

(declare-fun bm!403155 () Bool)

(assert (=> bm!403155 (= call!403008 call!403144)))

(declare-fun b!5462405 () Bool)

(declare-fun Unit!155031 () Unit!155012)

(assert (=> b!5462405 (= e!3382410 Unit!155031)))

(assert (=> b!5462405 (= lt!2232665 (regOne!31094 r!7292))))

(assert (=> b!5462405 (= lt!2232573 (Cons!62049 lt!2232665 (t!375402 (exprs!5175 (h!68498 zl!343)))))))

(assert (=> b!5462405 (= lt!2232596 (Context!9351 (Cons!62049 (reg!15620 (regOne!31094 r!7292)) lt!2232573)))))

(assert (=> b!5462405 (= lt!2232640 (store ((as const (Array Context!9350 Bool)) false) lt!2232596 true))))

(declare-fun lt!2232528 () (InoxSet Context!9350))

(assert (=> b!5462405 (= lt!2232528 call!403061)))

(declare-fun lt!2232667 () Unit!155012)

(assert (=> b!5462405 (= lt!2232667 call!403006)))

(assert (=> b!5462405 (= call!403159 call!403061)))

(assert (=> b!5462405 (= lt!2232591 (Context!9351 lt!2232573))))

(declare-fun lt!2232696 () (InoxSet Context!9350))

(assert (=> b!5462405 (= lt!2232696 call!403045)))

(assert (=> b!5462405 (= lt!2232633 (Concat!24136 lt!2232665 (regTwo!31094 r!7292)))))

(assert (=> b!5462405 (= lt!2232672 (Concat!24136 (reg!15620 (regOne!31094 r!7292)) lt!2232633))))

(assert (=> b!5462405 (= lt!2232625 (Cons!62049 (reg!15620 (regOne!31094 r!7292)) Nil!62049))))

(assert (=> b!5462405 (= lt!2232717 (Context!9351 lt!2232625))))

(assert (=> b!5462405 (= lt!2232560 (store ((as const (Array Context!9350 Bool)) false) lt!2232717 true))))

(assert (=> b!5462405 (= lt!2232706 (store ((as const (Array Context!9350 Bool)) false) lt!2232591 true))))

(declare-fun lt!2232593 () (InoxSet Context!9350))

(assert (=> b!5462405 (= lt!2232593 call!403136)))

(declare-fun lt!2232566 () (InoxSet Context!9350))

(assert (=> b!5462405 (= lt!2232566 call!403010)))

(declare-fun lt!2232715 () Unit!155012)

(assert (=> b!5462405 (= lt!2232715 call!403014)))

(assert (=> b!5462405 (= (flatMap!1018 lt!2232560 lambda!289947) call!403136)))

(declare-fun lt!2232600 () Unit!155012)

(assert (=> b!5462405 (= lt!2232600 call!403189)))

(assert (=> b!5462405 (= call!403090 call!403010)))

(declare-fun lt!2232701 () Unit!155012)

(assert (=> b!5462405 (= lt!2232701 call!403177)))

(assert (=> b!5462405 (= lt!2232705 call!403099)))

(declare-fun res!2326865 () Bool)

(assert (=> b!5462405 (= res!2326865 (= lt!2232705 call!403048))))

(assert (=> b!5462405 (=> (not res!2326865) (not e!3382407))))

(assert (=> b!5462405 e!3382407))

(assert (=> b!5462405 (= c!954569 lt!2232553)))

(declare-fun lt!2232629 () Unit!155012)

(assert (=> b!5462405 (= lt!2232629 e!3382386)))

(assert (=> b!5462405 (= lt!2232553 call!403084)))

(declare-fun bm!403156 () Bool)

(declare-fun call!403168 () Option!15402)

(assert (=> bm!403156 (= call!403063 (isDefined!12105 (ite c!954568 call!402994 (ite c!954570 call!403168 (ite c!954569 lt!2232603 lt!2232532)))))))

(declare-fun bm!403157 () Bool)

(assert (=> bm!403157 (= call!403056 (lemmaFlatMapOnSingletonSet!550 (ite c!954575 lt!2232555 (ite c!954568 lt!2232682 lt!2232706)) (ite c!954575 lt!2232719 (ite c!954568 lt!2232556 lt!2232591)) (ite c!954575 lambda!289947 (ite c!954568 lambda!289947 lambda!289947))))))

(declare-fun bm!403158 () Bool)

(assert (=> bm!403158 (= call!403082 (Exists!2472 (ite c!954569 lambda!289958 (ite c!954574 lambda!289968 lambda!289971))))))

(declare-fun bm!403159 () Bool)

(assert (=> bm!403159 (= call!403132 (lemmaFlatMapOnSingletonSet!550 (ite c!954575 lt!2232634 (ite c!954568 lt!2232585 (ite c!954572 lt!2232560 lt!2232539))) (ite c!954575 lt!2232627 (ite c!954568 lt!2232699 (ite c!954572 lt!2232717 lt!2232540))) (ite c!954575 lambda!289947 (ite c!954568 lambda!289947 (ite c!954572 lambda!289947 lambda!289947)))))))

(declare-fun bm!403160 () Bool)

(assert (=> bm!403160 (= call!403168 call!402994)))

(declare-fun bm!403161 () Bool)

(assert (=> bm!403161 (= call!403018 (generalisedConcat!960 (ite c!954575 lt!2232712 (ite c!954568 lt!2232571 lt!2232626))))))

(declare-fun b!5462406 () Bool)

(declare-fun tp!1502349 () Bool)

(declare-fun tp!1502353 () Bool)

(assert (=> b!5462406 (= e!3382397 (and tp!1502349 tp!1502353))))

(declare-fun bm!403162 () Bool)

(assert (=> bm!403162 (= call!403029 call!403046)))

(declare-fun bm!403163 () Bool)

(assert (=> bm!403163 (= call!403134 call!403143)))

(declare-fun bm!403164 () Bool)

(assert (=> bm!403164 (= call!403060 call!403073)))

(declare-fun bm!403165 () Bool)

(assert (=> bm!403165 (= call!403150 (lemmaZipperConcatMatchesSameAsBothZippers!528 (ite c!954575 lt!2232645 lt!2232617) (ite c!954575 lt!2232567 lt!2232609) (t!375401 s!2326)))))

(declare-fun bm!403166 () Bool)

(assert (=> bm!403166 (= call!403154 call!403116)))

(declare-fun b!5462407 () Bool)

(declare-fun res!2326846 () Bool)

(assert (=> b!5462407 (=> res!2326846 e!3382390)))

(declare-fun generalisedUnion!1220 (List!62173) Regex!15291)

(declare-fun unfocusZipperList!733 (List!62174) List!62173)

(assert (=> b!5462407 (= res!2326846 (not (= r!7292 (generalisedUnion!1220 (unfocusZipperList!733 zl!343)))))))

(declare-fun b!5462408 () Bool)

(assert (=> b!5462408 (= e!3382420 false)))

(declare-fun bm!403167 () Bool)

(assert (=> bm!403167 (= call!402991 call!403127)))

(declare-fun b!5462409 () Bool)

(declare-fun Unit!155032 () Unit!155012)

(assert (=> b!5462409 (= e!3382388 Unit!155032)))

(declare-fun bm!403168 () Bool)

(assert (=> bm!403168 (= call!403130 call!403122)))

(declare-fun b!5462410 () Bool)

(assert (=> b!5462410 (= e!3382418 (= lt!2232553 call!403087))))

(declare-fun b!5462411 () Bool)

(assert (=> b!5462411 (= e!3382397 tp_is_empty!39835)))

(declare-fun bm!403169 () Bool)

(assert (=> bm!403169 (= call!403028 call!403113)))

(declare-fun b!5462412 () Bool)

(declare-fun tp!1502350 () Bool)

(declare-fun e!3382415 () Bool)

(assert (=> b!5462412 (= e!3382415 (and (inv!81474 (h!68498 zl!343)) e!3382421 tp!1502350))))

(declare-fun b!5462413 () Bool)

(assert (=> b!5462413 (= e!3382400 (matchZipper!1535 lt!2232645 (t!375401 s!2326)))))

(declare-fun bm!403170 () Bool)

(assert (=> bm!403170 (= call!403118 call!403063)))

(declare-fun bm!403171 () Bool)

(assert (=> bm!403171 (= call!403121 call!403039)))

(declare-fun bm!403172 () Bool)

(assert (=> bm!403172 (= call!403020 call!403021)))

(declare-fun bm!403173 () Bool)

(assert (=> bm!403173 (= call!403065 call!403075)))

(declare-fun bm!403174 () Bool)

(assert (=> bm!403174 (= call!403013 (lemmaTwoRegexMatchThenConcatMatchesConcatString!258 (ite c!954569 (reg!15620 (regOne!31094 r!7292)) lt!2232665) (ite c!954569 lt!2232633 (regTwo!31094 r!7292)) (ite c!954569 (_1!35793 lt!2232671) lt!2232694) (ite c!954569 lt!2232531 (_2!35793 lt!2232548))))))

(declare-fun bm!403175 () Bool)

(assert (=> bm!403175 (= call!403123 (++!13661 (ite c!954569 (_2!35793 lt!2232671) (_2!35793 lt!2232587)) (ite c!954569 (_2!35793 lt!2232542) (_2!35793 lt!2232548))))))

(declare-fun bm!403176 () Bool)

(assert (=> bm!403176 (= call!403144 call!403064)))

(declare-fun b!5462414 () Bool)

(declare-fun Unit!155033 () Unit!155012)

(assert (=> b!5462414 (= e!3382393 Unit!155033)))

(declare-fun lt!2232589 () Unit!155012)

(assert (=> b!5462414 (= lt!2232589 (lemmaZipperConcatMatchesSameAsBothZippers!528 lt!2232675 lt!2232567 (t!375401 s!2326)))))

(declare-fun res!2326860 () Bool)

(assert (=> b!5462414 (= res!2326860 (matchZipper!1535 lt!2232675 (t!375401 s!2326)))))

(assert (=> b!5462414 (=> res!2326860 e!3382385)))

(assert (=> b!5462414 (= (matchZipper!1535 ((_ map or) lt!2232675 lt!2232567) (t!375401 s!2326)) e!3382385)))

(declare-fun bm!403177 () Bool)

(assert (=> bm!403177 (= call!403125 (matchZipper!1535 (ite c!954566 lt!2232547 (ite c!954575 lt!2232555 lt!2232609)) (ite c!954566 (t!375401 s!2326) (ite c!954575 s!2326 (t!375401 s!2326)))))))

(declare-fun bm!403178 () Bool)

(assert (=> bm!403178 (= call!403081 (matchZipper!1535 (ite c!954575 ((_ map or) lt!2232522 lt!2232645) (ite c!954568 lt!2232618 (ite c!954572 (ite c!954569 (store ((as const (Array Context!9350 Bool)) false) (Context!9351 call!403055) true) (store ((as const (Array Context!9350 Bool)) false) (Context!9351 lt!2232632) true)) (ite c!954567 ((_ map or) lt!2232675 lt!2232567) lt!2232675)))) (ite (or c!954575 c!954568) (t!375401 s!2326) (ite c!954572 (ite c!954569 lt!2232700 lt!2232605) (t!375401 s!2326)))))))

(declare-fun bm!403179 () Bool)

(assert (=> bm!403179 (= call!403070 call!403029)))

(declare-fun bm!403180 () Bool)

(assert (=> bm!403180 (= call!403113 call!403071)))

(declare-fun bm!403181 () Bool)

(assert (=> bm!403181 (= call!403031 (nullable!5460 (ite c!954575 (regTwo!31095 (regOne!31094 r!7292)) (regOne!31094 (regOne!31094 r!7292)))))))

(declare-fun bm!403182 () Bool)

(assert (=> bm!403182 (= call!403189 call!403056)))

(declare-fun bm!403183 () Bool)

(assert (=> bm!403183 (= call!403109 call!403166)))

(declare-fun bm!403184 () Bool)

(assert (=> bm!403184 (= call!403127 (mainMatchTheorem!2394 (ite c!954575 lt!2232620 (ite c!954568 lt!2232725 (ite c!954570 lt!2232674 (ite c!954572 (ite c!954569 lt!2232665 lt!2232621) (ite c!954567 (regTwo!31094 r!7292) (regOne!31094 r!7292)))))) (ite (or c!954575 c!954568 c!954570) s!2326 (ite (and c!954572 c!954569) (_1!35793 lt!2232542) s!2326))))))

(declare-fun bm!403185 () Bool)

(assert (=> bm!403185 (= call!403181 (++!13661 (ite c!954569 lt!2232568 (ite c!954574 (_1!35793 lt!2232587) Nil!62048)) (ite c!954569 (_2!35793 lt!2232542) (ite c!954574 (_2!35793 lt!2232587) s!2326))))))

(declare-fun res!2326847 () Bool)

(assert (=> start!571974 (=> (not res!2326847) (not e!3382409))))

(declare-fun validRegex!7027 (Regex!15291) Bool)

(assert (=> start!571974 (= res!2326847 (validRegex!7027 r!7292))))

(assert (=> start!571974 e!3382409))

(assert (=> start!571974 e!3382397))

(declare-fun condSetEmpty!35737 () Bool)

(assert (=> start!571974 (= condSetEmpty!35737 (= z!1189 ((as const (Array Context!9350 Bool)) false)))))

(assert (=> start!571974 setRes!35737))

(assert (=> start!571974 e!3382415))

(assert (=> start!571974 e!3382408))

(declare-fun bm!403186 () Bool)

(assert (=> bm!403186 (= call!403000 call!403145)))

(declare-fun bm!403187 () Bool)

(assert (=> bm!403187 (= call!403004 call!403170)))

(declare-fun bm!403188 () Bool)

(assert (=> bm!403188 (= call!403120 call!403168)))

(assert (= (and start!571974 res!2326847) b!5462385))

(assert (= (and b!5462385 res!2326873) b!5462378))

(assert (= (and b!5462378 res!2326871) b!5462355))

(assert (= (and b!5462355 (not res!2326853)) b!5462384))

(assert (= (and b!5462384 (not res!2326874)) b!5462357))

(assert (= (and b!5462357 (not res!2326864)) b!5462380))

(assert (= (and b!5462380 (not res!2326854)) b!5462407))

(assert (= (and b!5462407 (not res!2326846)) b!5462388))

(assert (= (and b!5462388 (not res!2326868)) b!5462393))

(assert (= (and b!5462393 (not res!2326875)) b!5462372))

(assert (= (and b!5462372 (not res!2326855)) b!5462366))

(assert (= (and b!5462366 c!954573) b!5462414))

(assert (= (and b!5462366 (not c!954573)) b!5462370))

(assert (= (and b!5462414 (not res!2326860)) b!5462373))

(assert (= (and b!5462366 c!954566) b!5462375))

(assert (= (and b!5462366 (not c!954566)) b!5462351))

(assert (= (and b!5462351 c!954575) b!5462401))

(assert (= (and b!5462351 (not c!954575)) b!5462397))

(assert (= (and b!5462401 (not res!2326861)) b!5462413))

(assert (= (and b!5462401 c!954576) b!5462381))

(assert (= (and b!5462401 (not c!954576)) b!5462363))

(assert (= (and b!5462381 (not res!2326862)) b!5462365))

(assert (= (and b!5462401 c!954564) b!5462403))

(assert (= (and b!5462401 (not c!954564)) b!5462364))

(assert (= (and b!5462403 (not res!2326870)) b!5462361))

(assert (= (and b!5462401 res!2326845) b!5462379))

(assert (= (and b!5462397 res!2326857) b!5462360))

(assert (= (and b!5462397 c!954568) b!5462349))

(assert (= (and b!5462397 (not c!954568)) b!5462383))

(assert (= (and b!5462349 (not res!2326849)) b!5462399))

(assert (= (and b!5462349 (not res!2326876)) b!5462392))

(assert (= (and b!5462349 res!2326852) b!5462410))

(assert (= (and b!5462383 c!954570) b!5462396))

(assert (= (and b!5462383 (not c!954570)) b!5462404))

(assert (= (and b!5462396 res!2326850) b!5462400))

(assert (= (and b!5462404 c!954572) b!5462405))

(assert (= (and b!5462404 (not c!954572)) b!5462356))

(assert (= (and b!5462405 res!2326865) b!5462391))

(assert (= (and b!5462405 c!954569) b!5462389))

(assert (= (and b!5462405 (not c!954569)) b!5462376))

(assert (= (and b!5462389 c!954565) b!5462358))

(assert (= (and b!5462389 (not c!954565)) b!5462359))

(assert (= (and b!5462358 res!2326851) b!5462398))

(assert (= (and b!5462359 res!2326856) b!5462386))

(assert (= (or b!5462358 b!5462359) bm!403085))

(assert (= (or b!5462358 b!5462359) bm!403003))

(assert (= (or b!5462398 b!5462359) bm!403088))

(assert (= (or b!5462358 b!5462359) bm!403022))

(assert (= (and b!5462376 c!954571) b!5462402))

(assert (= (and b!5462376 (not c!954571)) b!5462409))

(assert (= (and b!5462402 c!954574) b!5462390))

(assert (= (and b!5462402 (not c!954574)) b!5462350))

(assert (= (and b!5462390 res!2326867) b!5462354))

(assert (= (and b!5462390 res!2326858) b!5462408))

(assert (= (and b!5462350 res!2326872) b!5462352))

(assert (= (or b!5462390 b!5462350) bm!403055))

(assert (= (or b!5462390 b!5462350) bm!403006))

(assert (= (or b!5462390 b!5462350) bm!403061))

(assert (= (or b!5462390 b!5462350) bm!403034))

(assert (= (or b!5462390 b!5462350) bm!403155))

(assert (= (or b!5462390 b!5462350) bm!403149))

(assert (= (or b!5462390 b!5462350) bm!403013))

(assert (= (or b!5462390 b!5462350) bm!403117))

(assert (= (or b!5462390 b!5462350) bm!403074))

(assert (= (or b!5462390 b!5462350) bm!403035))

(assert (= (or b!5462390 b!5462350) bm!403000))

(assert (= (or b!5462390 b!5462350) bm!403122))

(assert (= (or b!5462390 b!5462350) bm!403005))

(assert (= (or b!5462390 b!5462350) bm!403010))

(assert (= (or b!5462390 b!5462350) bm!403108))

(assert (= (or b!5462390 b!5462350) bm!402997))

(assert (= (or b!5462390 b!5462350) bm!403131))

(assert (= (or b!5462390 b!5462350) bm!402985))

(assert (= (or b!5462390 b!5462350) bm!403044))

(assert (= (or b!5462359 bm!402985) bm!403114))

(assert (= (or b!5462389 bm!403149) bm!403179))

(assert (= (or b!5462359 b!5462390) bm!403043))

(assert (= (or b!5462359 b!5462390) bm!403093))

(assert (= (or b!5462359 b!5462390) bm!403080))

(assert (= (or bm!403022 bm!403122) bm!403150))

(assert (= (or b!5462359 b!5462390) bm!403078))

(assert (= (or b!5462389 b!5462390) bm!403072))

(assert (= (or b!5462359 bm!403061) bm!403141))

(assert (= (or b!5462389 bm!403074) bm!403151))

(assert (= (or b!5462359 b!5462390) bm!403021))

(assert (= (or b!5462359 bm!403035) bm!403037))

(assert (= (or b!5462358 b!5462350) bm!403046))

(assert (= (or b!5462359 b!5462390) bm!403063))

(assert (= (or b!5462359 bm!403155) bm!403176))

(assert (= (or b!5462359 b!5462390) bm!403118))

(assert (= (or b!5462359 b!5462390) bm!402994))

(assert (= (or b!5462359 b!5462390) bm!403174))

(assert (= (or b!5462358 b!5462350) bm!403048))

(assert (= (or bm!403003 bm!403013) bm!403011))

(assert (= (or b!5462359 b!5462390) bm!403002))

(assert (= (or b!5462389 bm!403006) bm!403014))

(assert (= (or b!5462389 bm!403131) bm!402992))

(assert (= (or b!5462359 b!5462390) bm!403109))

(assert (= (or b!5462359 b!5462390) bm!403050))

(assert (= (or b!5462359 b!5462390) bm!402986))

(assert (= (or b!5462359 b!5462390) bm!403077))

(assert (= (or b!5462359 bm!403117) bm!403185))

(assert (= (or b!5462359 b!5462390) bm!403018))

(assert (= (or b!5462359 b!5462390) bm!403133))

(assert (= (or b!5462358 b!5462350) bm!403153))

(assert (= (or b!5462359 b!5462390) bm!403126))

(assert (= (or b!5462359 b!5462390) bm!403025))

(assert (= (or b!5462359 b!5462390) bm!403112))

(assert (= (or b!5462389 bm!403010) bm!403001))

(assert (= (or b!5462359 b!5462390) bm!403140))

(assert (= (or bm!403085 bm!403000) bm!403172))

(assert (= (or b!5462358 b!5462350) bm!403168))

(assert (= (or b!5462359 bm!403005) bm!403158))

(assert (= (or b!5462359 b!5462390) bm!403024))

(assert (= (or b!5462359 bm!403034) bm!403138))

(assert (= (or b!5462389 b!5462390) bm!403132))

(assert (= (or b!5462389 bm!403088 b!5462376) bm!403094))

(assert (= (or b!5462359 b!5462390) bm!403175))

(assert (= (or b!5462389 bm!403055) bm!403164))

(assert (= (or b!5462359 b!5462390) bm!403188))

(assert (= (or b!5462359 bm!403044) bm!403066))

(assert (= (or b!5462359 b!5462390) bm!403163))

(assert (= (and b!5462356 c!954567) b!5462369))

(assert (= (and b!5462356 (not c!954567)) b!5462353))

(assert (= (and b!5462369 res!2326863) b!5462362))

(assert (= (and b!5462353 res!2326869) b!5462382))

(assert (= (or b!5462369 b!5462353) bm!403053))

(assert (= (or b!5462362 b!5462382) bm!403169))

(assert (= (or b!5462369 b!5462353) bm!403135))

(assert (= (or b!5462369 b!5462353) bm!402984))

(assert (= (or b!5462369 b!5462353) bm!403065))

(assert (= (or b!5462369 b!5462353) bm!403019))

(assert (= (or b!5462369 b!5462353) bm!403054))

(assert (= (or b!5462369 b!5462353) bm!403047))

(assert (= (or b!5462369 b!5462353) bm!403124))

(assert (= (or b!5462405 b!5462369) bm!403129))

(assert (= (or bm!403168 b!5462369) bm!403067))

(assert (= (or b!5462405 b!5462369) bm!403082))

(assert (= (or bm!403080 bm!403124) bm!403187))

(assert (= (or bm!403172 b!5462369) bm!403097))

(assert (= (or bm!403153 b!5462369) bm!403098))

(assert (= (or bm!403109 bm!403169) bm!403180))

(assert (= (or bm!402994 bm!403065) bm!403173))

(assert (= (or b!5462402 b!5462369) bm!403095))

(assert (= (or bm!403011 b!5462369) bm!403100))

(assert (= (or bm!403077 bm!402984) bm!403086))

(assert (= (or bm!403176 bm!403054) bm!403004))

(assert (= (or bm!403108 bm!403019) bm!403056))

(assert (= (or bm!403094 b!5462405 b!5462369) bm!403073))

(assert (= (or bm!403163 bm!403053) bm!403076))

(assert (= (or b!5462405 bm!403047) bm!403143))

(assert (= (or bm!403150 b!5462369) bm!403096))

(assert (= (or b!5462396 bm!403126) bm!403051))

(assert (= (or b!5462396 bm!403173) bm!402996))

(assert (= (or b!5462396 bm!403001) bm!403033))

(assert (= (or b!5462396 bm!403097) bm!403059))

(assert (= (or b!5462396 b!5462405) bm!403079))

(assert (= (or b!5462396 b!5462390) bm!403099))

(assert (= (or b!5462396 bm!403180) bm!403116))

(assert (= (or b!5462396 bm!403112) bm!403081))

(assert (= (or b!5462396 bm!403086) bm!402990))

(assert (= (or b!5462396 bm!403141) bm!403147))

(assert (= (or b!5462396 bm!403140) bm!403137))

(assert (= (or b!5462396 b!5462390) bm!403032))

(assert (= (or b!5462396 bm!402986) bm!403084))

(assert (= (or b!5462396 bm!403143) bm!403017))

(assert (= (or b!5462396 bm!403078) bm!403128))

(assert (= (or b!5462400 bm!403096) bm!403036))

(assert (= (or b!5462396 b!5462405) bm!402995))

(assert (= (or b!5462396 bm!403187) bm!403052))

(assert (= (or b!5462396 bm!403179) bm!403162))

(assert (= (or b!5462396 b!5462405) bm!402983))

(assert (= (or b!5462396 bm!403188) bm!403160))

(assert (= (or b!5462396 bm!403056) bm!403110))

(assert (= (or b!5462396 bm!403151) bm!403039))

(assert (= (or b!5462396 bm!403164) bm!403015))

(assert (= (or b!5462396 bm!403098) bm!403186))

(assert (= (or b!5462396 bm!403093) bm!403134))

(assert (= (or b!5462396 bm!403004) bm!403111))

(assert (= (or b!5462396 b!5462405) bm!403127))

(assert (= (or b!5462396 bm!402992) bm!403016))

(assert (= (or b!5462396 bm!403114) bm!403139))

(assert (= (or b!5462396 bm!403072) bm!403170))

(assert (= (or b!5462349 bm!403134) bm!403105))

(assert (= (or b!5462349 b!5462396) bm!403068))

(assert (= (or b!5462349 bm!402995) bm!403115))

(assert (= (or b!5462349 bm!403095) bm!402987))

(assert (= (or b!5462349 bm!403039) bm!403142))

(assert (= (or b!5462349 bm!403110) bm!403113))

(assert (= (or b!5462349 bm!403129) bm!403119))

(assert (= (or b!5462349 bm!403099) bm!403023))

(assert (= (or b!5462349 bm!403084) bm!403092))

(assert (= (or b!5462349 bm!403015) bm!402999))

(assert (= (or b!5462349 bm!403079) bm!403136))

(assert (= (or b!5462349 bm!403186) bm!403069))

(assert (= (or b!5462349 bm!403051) bm!403171))

(assert (= (or b!5462349 bm!403081) bm!403049))

(assert (= (or b!5462349 b!5462390) bm!403120))

(assert (= (or b!5462392 bm!403076) bm!403064))

(assert (= (or b!5462349 b!5462396) bm!402991))

(assert (= (or b!5462349 bm!403033) bm!402993))

(assert (= (or b!5462410 bm!403116) bm!403058))

(assert (= (or b!5462349 bm!403016) bm!403027))

(assert (= (or b!5462349 bm!403017) bm!403121))

(assert (= (or b!5462349 bm!403162) bm!403152))

(assert (= (or b!5462349 bm!403052) bm!403104))

(assert (= (or b!5462349 bm!403059) bm!403040))

(assert (= (or b!5462349 bm!403100) bm!403103))

(assert (= (or b!5462349 b!5462405) bm!403154))

(assert (= (or b!5462349 bm!403160) bm!403020))

(assert (= (or b!5462349 bm!403048) bm!403038))

(assert (= (or b!5462349 bm!402996) bm!403167))

(assert (= (or b!5462349 bm!403073) bm!403031))

(assert (= (or b!5462349 bm!402983) bm!403062))

(assert (= (or b!5462349 bm!403063) bm!403087))

(assert (= (or b!5462349 bm!403036) bm!403075))

(assert (= (or b!5462349 b!5462369) bm!403145))

(assert (= (or b!5462349 bm!403147) bm!403012))

(assert (= (or b!5462349 bm!403111) bm!403028))

(assert (= (or b!5462349 b!5462405) bm!403182))

(assert (= (or b!5462349 bm!403137) bm!403144))

(assert (= (or b!5462349 bm!403128) bm!403060))

(assert (= (or b!5462349 bm!403170) bm!403156))

(assert (= (or b!5462349 bm!403139) bm!403007))

(assert (= (or b!5462401 bm!403167) bm!403184))

(assert (= (or b!5462401 b!5462349) bm!403070))

(assert (= (or b!5462401 bm!403104) bm!403106))

(assert (= (or b!5462401 bm!403113) bm!403125))

(assert (= (or b!5462401 b!5462360) bm!403181))

(assert (= (or b!5462401 bm!403087) bm!403101))

(assert (= (or b!5462401 bm!403182) bm!403157))

(assert (= (or b!5462379 bm!403058) bm!403107))

(assert (= (or b!5462401 bm!403069) bm!403008))

(assert (= (or b!5462361 b!5462365 bm!403075) bm!403029))

(assert (= (or b!5462401 bm!403040) bm!403071))

(assert (= (or b!5462401 bm!403120) bm!403166))

(assert (= (or b!5462401 bm!403171) bm!403148))

(assert (= (or b!5462381 bm!402987) bm!403090))

(assert (= (or b!5462401 bm!403119) bm!403159))

(assert (= (or b!5462403 bm!403031) bm!403041))

(assert (= (or b!5462381 bm!403145) bm!402988))

(assert (= (or b!5462401 b!5462405) bm!403026))

(assert (= (or b!5462403 b!5462349) bm!403165))

(assert (= (or b!5462401 bm!403115) bm!402998))

(assert (= (or b!5462401 bm!403068) bm!403161))

(assert (= (or b!5462401 bm!403064) bm!403178))

(assert (= (or b!5462401 bm!403136) bm!403102))

(assert (= (or b!5462401 bm!403121) bm!403089))

(assert (= (or b!5462401 b!5462399) bm!403045))

(assert (= (or b!5462401 bm!403103) bm!403183))

(assert (= (or b!5462401 b!5462405) bm!403130))

(assert (= (or b!5462401 bm!403062) bm!403009))

(assert (= (or b!5462401 bm!403154) bm!402989))

(assert (= (or b!5462401 b!5462349) bm!403030))

(assert (= (or b!5462401 b!5462405) bm!403042))

(assert (= (or b!5462401 b!5462349) bm!403057))

(assert (= (or b!5462401 bm!402997) bm!403091))

(assert (= (or b!5462375 bm!403166) bm!403146))

(assert (= (or b!5462375 bm!403008) bm!403123))

(assert (= (or b!5462375 bm!403183) bm!403083))

(assert (= (or b!5462375 bm!403045) bm!403177))

(assert (= (and b!5462366 (not res!2326859)) b!5462395))

(assert (= (and b!5462395 (not res!2326848)) b!5462387))

(assert (= (and b!5462387 (not res!2326866)) b!5462394))

(assert (= (and start!571974 ((_ is ElementMatch!15291) r!7292)) b!5462411))

(assert (= (and start!571974 ((_ is Concat!24136) r!7292)) b!5462406))

(assert (= (and start!571974 ((_ is Star!15291) r!7292)) b!5462377))

(assert (= (and start!571974 ((_ is Union!15291) r!7292)) b!5462374))

(assert (= (and start!571974 condSetEmpty!35737) setIsEmpty!35737))

(assert (= (and start!571974 (not condSetEmpty!35737)) setNonEmpty!35737))

(assert (= setNonEmpty!35737 b!5462367))

(assert (= b!5462412 b!5462368))

(assert (= (and start!571974 ((_ is Cons!62050) zl!343)) b!5462412))

(assert (= (and start!571974 ((_ is Cons!62048) s!2326)) b!5462371))

(declare-fun m!6483490 () Bool)

(assert (=> bm!403144 m!6483490))

(declare-fun m!6483492 () Bool)

(assert (=> bm!403178 m!6483492))

(declare-fun m!6483494 () Bool)

(assert (=> bm!403178 m!6483494))

(declare-fun m!6483496 () Bool)

(assert (=> bm!403178 m!6483496))

(declare-fun m!6483498 () Bool)

(assert (=> bm!403028 m!6483498))

(declare-fun m!6483500 () Bool)

(assert (=> b!5462394 m!6483500))

(declare-fun m!6483502 () Bool)

(assert (=> b!5462394 m!6483502))

(declare-fun m!6483504 () Bool)

(assert (=> b!5462394 m!6483504))

(declare-fun m!6483506 () Bool)

(assert (=> b!5462394 m!6483506))

(declare-fun m!6483508 () Bool)

(assert (=> bm!403101 m!6483508))

(declare-fun m!6483510 () Bool)

(assert (=> bm!403083 m!6483510))

(declare-fun m!6483512 () Bool)

(assert (=> b!5462366 m!6483512))

(declare-fun m!6483514 () Bool)

(assert (=> b!5462366 m!6483514))

(declare-fun m!6483516 () Bool)

(assert (=> b!5462366 m!6483516))

(declare-fun m!6483518 () Bool)

(assert (=> b!5462366 m!6483518))

(declare-fun m!6483520 () Bool)

(assert (=> b!5462366 m!6483520))

(declare-fun m!6483522 () Bool)

(assert (=> b!5462366 m!6483522))

(declare-fun m!6483524 () Bool)

(assert (=> b!5462366 m!6483524))

(declare-fun m!6483526 () Bool)

(assert (=> b!5462366 m!6483526))

(declare-fun m!6483528 () Bool)

(assert (=> b!5462366 m!6483528))

(declare-fun m!6483530 () Bool)

(assert (=> b!5462366 m!6483530))

(declare-fun m!6483532 () Bool)

(assert (=> b!5462366 m!6483532))

(declare-fun m!6483534 () Bool)

(assert (=> b!5462414 m!6483534))

(declare-fun m!6483536 () Bool)

(assert (=> b!5462414 m!6483536))

(declare-fun m!6483538 () Bool)

(assert (=> b!5462414 m!6483538))

(declare-fun m!6483540 () Bool)

(assert (=> bm!403177 m!6483540))

(declare-fun m!6483542 () Bool)

(assert (=> bm!403146 m!6483542))

(declare-fun m!6483544 () Bool)

(assert (=> bm!403066 m!6483544))

(declare-fun m!6483546 () Bool)

(assert (=> bm!403041 m!6483546))

(declare-fun m!6483548 () Bool)

(assert (=> bm!403123 m!6483548))

(declare-fun m!6483550 () Bool)

(assert (=> b!5462390 m!6483550))

(declare-fun m!6483552 () Bool)

(assert (=> b!5462390 m!6483552))

(assert (=> b!5462390 m!6483492))

(declare-fun m!6483554 () Bool)

(assert (=> b!5462390 m!6483554))

(declare-fun m!6483556 () Bool)

(assert (=> b!5462390 m!6483556))

(declare-fun m!6483558 () Bool)

(assert (=> b!5462390 m!6483558))

(declare-fun m!6483560 () Bool)

(assert (=> b!5462390 m!6483560))

(declare-fun m!6483562 () Bool)

(assert (=> b!5462390 m!6483562))

(declare-fun m!6483564 () Bool)

(assert (=> bm!403029 m!6483564))

(declare-fun m!6483566 () Bool)

(assert (=> bm!403027 m!6483566))

(declare-fun m!6483568 () Bool)

(assert (=> b!5462385 m!6483568))

(declare-fun m!6483570 () Bool)

(assert (=> b!5462412 m!6483570))

(declare-fun m!6483572 () Bool)

(assert (=> setNonEmpty!35737 m!6483572))

(declare-fun m!6483574 () Bool)

(assert (=> bm!403070 m!6483574))

(declare-fun m!6483576 () Bool)

(assert (=> bm!403184 m!6483576))

(declare-fun m!6483578 () Bool)

(assert (=> bm!403067 m!6483578))

(declare-fun m!6483580 () Bool)

(assert (=> bm!403107 m!6483580))

(declare-fun m!6483582 () Bool)

(assert (=> bm!403032 m!6483582))

(declare-fun m!6483584 () Bool)

(assert (=> bm!403030 m!6483584))

(declare-fun m!6483586 () Bool)

(assert (=> bm!403082 m!6483586))

(declare-fun m!6483588 () Bool)

(assert (=> bm!403185 m!6483588))

(declare-fun m!6483590 () Bool)

(assert (=> b!5462401 m!6483590))

(declare-fun m!6483592 () Bool)

(assert (=> b!5462401 m!6483592))

(declare-fun m!6483594 () Bool)

(assert (=> b!5462401 m!6483594))

(declare-fun m!6483596 () Bool)

(assert (=> b!5462401 m!6483596))

(declare-fun m!6483598 () Bool)

(assert (=> b!5462401 m!6483598))

(declare-fun m!6483600 () Bool)

(assert (=> b!5462401 m!6483600))

(declare-fun m!6483602 () Bool)

(assert (=> b!5462401 m!6483602))

(declare-fun m!6483604 () Bool)

(assert (=> bm!403007 m!6483604))

(declare-fun m!6483606 () Bool)

(assert (=> bm!403148 m!6483606))

(declare-fun m!6483608 () Bool)

(assert (=> bm!403105 m!6483608))

(declare-fun m!6483610 () Bool)

(assert (=> bm!402990 m!6483610))

(declare-fun m!6483612 () Bool)

(assert (=> bm!403158 m!6483612))

(declare-fun m!6483614 () Bool)

(assert (=> bm!403009 m!6483614))

(declare-fun m!6483616 () Bool)

(assert (=> bm!403050 m!6483616))

(declare-fun m!6483618 () Bool)

(assert (=> bm!402989 m!6483618))

(declare-fun m!6483620 () Bool)

(assert (=> bm!403021 m!6483620))

(declare-fun m!6483622 () Bool)

(assert (=> bm!403165 m!6483622))

(assert (=> b!5462350 m!6483526))

(declare-fun m!6483624 () Bool)

(assert (=> bm!402999 m!6483624))

(declare-fun m!6483626 () Bool)

(assert (=> bm!403026 m!6483626))

(declare-fun m!6483628 () Bool)

(assert (=> bm!403090 m!6483628))

(declare-fun m!6483630 () Bool)

(assert (=> bm!403125 m!6483630))

(declare-fun m!6483632 () Bool)

(assert (=> b!5462384 m!6483632))

(declare-fun m!6483634 () Bool)

(assert (=> bm!403049 m!6483634))

(declare-fun m!6483636 () Bool)

(assert (=> bm!403157 m!6483636))

(declare-fun m!6483638 () Bool)

(assert (=> bm!403018 m!6483638))

(declare-fun m!6483640 () Bool)

(assert (=> bm!403012 m!6483640))

(declare-fun m!6483642 () Bool)

(assert (=> start!571974 m!6483642))

(declare-fun m!6483644 () Bool)

(assert (=> bm!403071 m!6483644))

(declare-fun m!6483646 () Bool)

(assert (=> b!5462372 m!6483646))

(declare-fun m!6483648 () Bool)

(assert (=> b!5462413 m!6483648))

(declare-fun m!6483650 () Bool)

(assert (=> b!5462373 m!6483650))

(declare-fun m!6483652 () Bool)

(assert (=> bm!403135 m!6483652))

(declare-fun m!6483654 () Bool)

(assert (=> bm!403092 m!6483654))

(declare-fun m!6483656 () Bool)

(assert (=> bm!403014 m!6483656))

(declare-fun m!6483658 () Bool)

(assert (=> bm!403091 m!6483658))

(declare-fun m!6483660 () Bool)

(assert (=> bm!403118 m!6483660))

(declare-fun m!6483662 () Bool)

(assert (=> bm!403037 m!6483662))

(assert (=> b!5462375 m!6483526))

(declare-fun m!6483664 () Bool)

(assert (=> bm!403161 m!6483664))

(assert (=> b!5462403 m!6483648))

(declare-fun m!6483666 () Bool)

(assert (=> bm!403043 m!6483666))

(declare-fun m!6483668 () Bool)

(assert (=> b!5462407 m!6483668))

(assert (=> b!5462407 m!6483668))

(declare-fun m!6483670 () Bool)

(assert (=> b!5462407 m!6483670))

(declare-fun m!6483672 () Bool)

(assert (=> bm!402998 m!6483672))

(declare-fun m!6483674 () Bool)

(assert (=> bm!403020 m!6483674))

(declare-fun m!6483676 () Bool)

(assert (=> bm!403138 m!6483676))

(declare-fun m!6483678 () Bool)

(assert (=> bm!403152 m!6483678))

(declare-fun m!6483680 () Bool)

(assert (=> bm!403042 m!6483680))

(declare-fun m!6483682 () Bool)

(assert (=> b!5462396 m!6483682))

(declare-fun m!6483684 () Bool)

(assert (=> bm!403133 m!6483684))

(declare-fun m!6483686 () Bool)

(assert (=> bm!403002 m!6483686))

(declare-fun m!6483688 () Bool)

(assert (=> b!5462405 m!6483688))

(declare-fun m!6483690 () Bool)

(assert (=> b!5462405 m!6483690))

(declare-fun m!6483692 () Bool)

(assert (=> b!5462405 m!6483692))

(declare-fun m!6483694 () Bool)

(assert (=> b!5462405 m!6483694))

(declare-fun m!6483696 () Bool)

(assert (=> bm!403046 m!6483696))

(assert (=> b!5462369 m!6483526))

(declare-fun m!6483698 () Bool)

(assert (=> b!5462389 m!6483698))

(declare-fun m!6483700 () Bool)

(assert (=> bm!403127 m!6483700))

(declare-fun m!6483702 () Bool)

(assert (=> bm!403089 m!6483702))

(declare-fun m!6483704 () Bool)

(assert (=> bm!403038 m!6483704))

(declare-fun m!6483706 () Bool)

(assert (=> bm!403181 m!6483706))

(declare-fun m!6483708 () Bool)

(assert (=> bm!403060 m!6483708))

(assert (=> bm!403025 m!6483684))

(declare-fun m!6483710 () Bool)

(assert (=> bm!403175 m!6483710))

(declare-fun m!6483712 () Bool)

(assert (=> bm!403102 m!6483712))

(declare-fun m!6483714 () Bool)

(assert (=> bm!402991 m!6483714))

(declare-fun m!6483716 () Bool)

(assert (=> bm!403132 m!6483716))

(declare-fun m!6483718 () Bool)

(assert (=> bm!403024 m!6483718))

(declare-fun m!6483720 () Bool)

(assert (=> b!5462349 m!6483720))

(declare-fun m!6483722 () Bool)

(assert (=> b!5462349 m!6483722))

(declare-fun m!6483724 () Bool)

(assert (=> b!5462378 m!6483724))

(declare-fun m!6483726 () Bool)

(assert (=> bm!403174 m!6483726))

(declare-fun m!6483728 () Bool)

(assert (=> bm!403142 m!6483728))

(assert (=> b!5462358 m!6483526))

(declare-fun m!6483730 () Bool)

(assert (=> b!5462357 m!6483730))

(declare-fun m!6483732 () Bool)

(assert (=> b!5462395 m!6483732))

(declare-fun m!6483734 () Bool)

(assert (=> b!5462395 m!6483734))

(declare-fun m!6483736 () Bool)

(assert (=> b!5462395 m!6483736))

(declare-fun m!6483738 () Bool)

(assert (=> bm!403106 m!6483738))

(declare-fun m!6483740 () Bool)

(assert (=> bm!403023 m!6483740))

(declare-fun m!6483742 () Bool)

(assert (=> bm!403159 m!6483742))

(declare-fun m!6483744 () Bool)

(assert (=> bm!402993 m!6483744))

(declare-fun m!6483746 () Bool)

(assert (=> bm!403130 m!6483746))

(declare-fun m!6483748 () Bool)

(assert (=> bm!403156 m!6483748))

(declare-fun m!6483750 () Bool)

(assert (=> bm!402988 m!6483750))

(declare-fun m!6483752 () Bool)

(assert (=> b!5462393 m!6483752))

(declare-fun m!6483754 () Bool)

(assert (=> b!5462393 m!6483754))

(declare-fun m!6483756 () Bool)

(assert (=> b!5462393 m!6483756))

(declare-fun m!6483758 () Bool)

(assert (=> b!5462393 m!6483758))

(assert (=> b!5462393 m!6483756))

(declare-fun m!6483760 () Bool)

(assert (=> b!5462393 m!6483760))

(assert (=> b!5462393 m!6483752))

(declare-fun m!6483762 () Bool)

(assert (=> b!5462393 m!6483762))

(declare-fun m!6483764 () Bool)

(assert (=> bm!403057 m!6483764))

(declare-fun m!6483766 () Bool)

(assert (=> b!5462355 m!6483766))

(declare-fun m!6483768 () Bool)

(assert (=> b!5462355 m!6483768))

(declare-fun m!6483770 () Bool)

(assert (=> b!5462355 m!6483770))

(declare-fun m!6483772 () Bool)

(assert (=> b!5462387 m!6483772))

(declare-fun m!6483774 () Bool)

(assert (=> b!5462387 m!6483774))

(check-sat (not b!5462407) (not bm!403038) (not b!5462374) (not b!5462405) (not bm!402990) (not bm!403146) (not bm!403002) (not b!5462357) (not bm!403057) (not bm!403132) (not b!5462403) (not bm!403105) tp_is_empty!39835 (not b!5462373) (not bm!403185) (not bm!403178) (not bm!403148) (not bm!403041) (not bm!402988) (not bm!403156) (not bm!403046) (not b!5462406) (not b!5462378) (not bm!403020) (not bm!403157) (not bm!403012) (not b!5462390) (not bm!403159) (not bm!403007) (not b!5462413) (not bm!402998) (not b!5462384) (not bm!403106) (not bm!403144) (not bm!403118) (not bm!402989) (not b!5462366) (not b!5462395) (not bm!402991) (not bm!403127) (not bm!403138) (not bm!403152) (not bm!403023) (not bm!403042) (not bm!403018) (not bm!403089) (not bm!403142) (not bm!403091) (not bm!403026) (not b!5462371) (not bm!403049) (not bm!403067) (not bm!403161) (not bm!402993) (not bm!403060) (not bm!403102) (not bm!403165) (not bm!403125) (not bm!403130) (not bm!403071) (not bm!403175) (not bm!403037) (not bm!403024) (not bm!403050) (not bm!403030) (not b!5462372) (not b!5462414) (not setNonEmpty!35737) (not bm!403082) (not bm!403177) (not b!5462377) (not bm!403135) (not bm!403043) (not bm!403028) (not bm!403133) (not bm!403181) (not b!5462401) (not b!5462389) (not bm!403014) (not bm!403025) (not bm!403092) (not b!5462387) (not bm!403009) (not bm!403027) (not bm!403066) (not b!5462355) (not b!5462385) (not bm!403101) (not start!571974) (not bm!403158) (not bm!403070) (not bm!403032) (not bm!403184) (not b!5462367) (not bm!402999) (not b!5462394) (not b!5462412) (not b!5462368) (not bm!403174) (not bm!403021) (not b!5462393) (not bm!403090) (not bm!403107) (not bm!403083) (not bm!403123) (not bm!403029))
(check-sat)
