; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742580 () Bool)

(assert start!742580)

(declare-fun b!7840342 () Bool)

(declare-fun e!4635682 () Bool)

(declare-datatypes ((C!42366 0))(
  ( (C!42367 (val!31623 Int)) )
))
(declare-datatypes ((Regex!21020 0))(
  ( (ElementMatch!21020 (c!1441489 C!42366)) (Concat!29865 (regOne!42552 Regex!21020) (regTwo!42552 Regex!21020)) (EmptyExpr!21020) (Star!21020 (reg!21349 Regex!21020)) (EmptyLang!21020) (Union!21020 (regOne!42553 Regex!21020) (regTwo!42553 Regex!21020)) )
))
(declare-fun r2!3226 () Regex!21020)

(declare-datatypes ((List!73857 0))(
  ( (Nil!73733) (Cons!73733 (h!80181 C!42366) (t!388592 List!73857)) )
))
(declare-fun s2!2463 () List!73857)

(declare-fun matchR!10474 (Regex!21020 List!73857) Bool)

(assert (=> b!7840342 (= e!4635682 (not (matchR!10474 r2!3226 s2!2463)))))

(declare-fun b!7840343 () Bool)

(declare-fun e!4635686 () Bool)

(declare-fun tp!2320392 () Bool)

(assert (=> b!7840343 (= e!4635686 tp!2320392)))

(declare-fun b!7840345 () Bool)

(declare-fun e!4635687 () Bool)

(declare-fun tp_is_empty!52395 () Bool)

(assert (=> b!7840345 (= e!4635687 tp_is_empty!52395)))

(declare-fun b!7840346 () Bool)

(declare-fun res!3118294 () Bool)

(declare-fun e!4635683 () Bool)

(assert (=> b!7840346 (=> (not res!3118294) (not e!4635683))))

(declare-fun validRegex!11434 (Regex!21020) Bool)

(assert (=> b!7840346 (= res!3118294 (validRegex!11434 r2!3226))))

(declare-fun b!7840347 () Bool)

(declare-fun tp!2320403 () Bool)

(declare-fun tp!2320399 () Bool)

(assert (=> b!7840347 (= e!4635686 (and tp!2320403 tp!2320399))))

(declare-fun b!7840348 () Bool)

(declare-fun e!4635689 () Bool)

(declare-fun tp!2320397 () Bool)

(assert (=> b!7840348 (= e!4635689 (and tp_is_empty!52395 tp!2320397))))

(declare-fun b!7840349 () Bool)

(assert (=> b!7840349 (= e!4635686 tp_is_empty!52395)))

(declare-fun b!7840350 () Bool)

(declare-fun res!3118292 () Bool)

(assert (=> b!7840350 (=> (not res!3118292) (not e!4635683))))

(declare-fun s1!2717 () List!73857)

(declare-fun s!10212 () List!73857)

(declare-fun ++!18054 (List!73857 List!73857) List!73857)

(assert (=> b!7840350 (= res!3118292 (= (++!18054 s1!2717 s2!2463) s!10212))))

(declare-fun b!7840351 () Bool)

(declare-fun res!3118298 () Bool)

(assert (=> b!7840351 (=> (not res!3118298) (not e!4635683))))

(assert (=> b!7840351 (= res!3118298 (is-Nil!73733 s2!2463))))

(declare-fun b!7840352 () Bool)

(declare-fun e!4635685 () Bool)

(declare-fun tp!2320402 () Bool)

(assert (=> b!7840352 (= e!4635685 (and tp_is_empty!52395 tp!2320402))))

(declare-fun b!7840353 () Bool)

(declare-fun res!3118291 () Bool)

(declare-fun e!4635688 () Bool)

(assert (=> b!7840353 (=> res!3118291 e!4635688)))

(declare-datatypes ((tuple2!70030 0))(
  ( (tuple2!70031 (_1!38318 List!73857) (_2!38318 List!73857)) )
))
(declare-fun lt!2678408 () tuple2!70030)

(assert (=> b!7840353 (= res!3118291 (not (matchR!10474 r2!3226 (_2!38318 lt!2678408))))))

(declare-fun b!7840354 () Bool)

(declare-fun e!4635684 () Bool)

(declare-fun lt!2678407 () Bool)

(assert (=> b!7840354 (= e!4635684 (not lt!2678407))))

(declare-fun b!7840355 () Bool)

(declare-fun e!4635690 () Bool)

(assert (=> b!7840355 (= e!4635690 e!4635688)))

(declare-fun res!3118296 () Bool)

(assert (=> b!7840355 (=> res!3118296 e!4635688)))

(declare-fun r1!3326 () Regex!21020)

(assert (=> b!7840355 (= res!3118296 (not (matchR!10474 r1!3326 (_1!38318 lt!2678408))))))

(declare-datatypes ((Option!17809 0))(
  ( (None!17808) (Some!17808 (v!54943 tuple2!70030)) )
))
(declare-fun get!26434 (Option!17809) tuple2!70030)

(assert (=> b!7840355 (= lt!2678408 (get!26434 None!17808))))

(declare-fun b!7840356 () Bool)

(declare-fun e!4635691 () Bool)

(declare-fun tp!2320404 () Bool)

(assert (=> b!7840356 (= e!4635691 (and tp_is_empty!52395 tp!2320404))))

(declare-fun b!7840357 () Bool)

(declare-fun tp!2320394 () Bool)

(declare-fun tp!2320400 () Bool)

(assert (=> b!7840357 (= e!4635687 (and tp!2320394 tp!2320400))))

(declare-fun b!7840358 () Bool)

(assert (=> b!7840358 (= e!4635688 (not (= (++!18054 (_1!38318 lt!2678408) (_2!38318 lt!2678408)) s!10212)))))

(declare-fun res!3118295 () Bool)

(assert (=> start!742580 (=> (not res!3118295) (not e!4635683))))

(assert (=> start!742580 (= res!3118295 (validRegex!11434 r1!3326))))

(assert (=> start!742580 e!4635683))

(assert (=> start!742580 e!4635691))

(assert (=> start!742580 e!4635687))

(assert (=> start!742580 e!4635685))

(assert (=> start!742580 e!4635686))

(assert (=> start!742580 e!4635689))

(declare-fun b!7840344 () Bool)

(declare-fun res!3118293 () Bool)

(assert (=> b!7840344 (=> (not res!3118293) (not e!4635683))))

(assert (=> b!7840344 (= res!3118293 e!4635682)))

(declare-fun res!3118289 () Bool)

(assert (=> b!7840344 (=> res!3118289 e!4635682)))

(assert (=> b!7840344 (= res!3118289 (not (matchR!10474 r1!3326 s1!2717)))))

(declare-fun b!7840359 () Bool)

(declare-fun tp!2320396 () Bool)

(declare-fun tp!2320395 () Bool)

(assert (=> b!7840359 (= e!4635686 (and tp!2320396 tp!2320395))))

(declare-fun b!7840360 () Bool)

(declare-fun tp!2320393 () Bool)

(assert (=> b!7840360 (= e!4635687 tp!2320393)))

(declare-fun b!7840361 () Bool)

(declare-fun tp!2320401 () Bool)

(declare-fun tp!2320398 () Bool)

(assert (=> b!7840361 (= e!4635687 (and tp!2320401 tp!2320398))))

(declare-fun b!7840362 () Bool)

(assert (=> b!7840362 (= e!4635683 e!4635684)))

(declare-fun res!3118297 () Bool)

(assert (=> b!7840362 (=> (not res!3118297) (not e!4635684))))

(assert (=> b!7840362 (= res!3118297 e!4635690)))

(declare-fun res!3118290 () Bool)

(assert (=> b!7840362 (=> res!3118290 e!4635690)))

(assert (=> b!7840362 (= res!3118290 lt!2678407)))

(assert (=> b!7840362 (= lt!2678407 true)))

(assert (= (and start!742580 res!3118295) b!7840346))

(assert (= (and b!7840346 res!3118294) b!7840350))

(assert (= (and b!7840350 res!3118292) b!7840344))

(assert (= (and b!7840344 (not res!3118289)) b!7840342))

(assert (= (and b!7840344 res!3118293) b!7840351))

(assert (= (and b!7840351 res!3118298) b!7840362))

(assert (= (and b!7840362 (not res!3118290)) b!7840355))

(assert (= (and b!7840355 (not res!3118296)) b!7840353))

(assert (= (and b!7840353 (not res!3118291)) b!7840358))

(assert (= (and b!7840362 res!3118297) b!7840354))

(assert (= (and start!742580 (is-Cons!73733 s1!2717)) b!7840356))

(assert (= (and start!742580 (is-ElementMatch!21020 r1!3326)) b!7840345))

(assert (= (and start!742580 (is-Concat!29865 r1!3326)) b!7840357))

(assert (= (and start!742580 (is-Star!21020 r1!3326)) b!7840360))

(assert (= (and start!742580 (is-Union!21020 r1!3326)) b!7840361))

(assert (= (and start!742580 (is-Cons!73733 s!10212)) b!7840352))

(assert (= (and start!742580 (is-ElementMatch!21020 r2!3226)) b!7840349))

(assert (= (and start!742580 (is-Concat!29865 r2!3226)) b!7840359))

(assert (= (and start!742580 (is-Star!21020 r2!3226)) b!7840343))

(assert (= (and start!742580 (is-Union!21020 r2!3226)) b!7840347))

(assert (= (and start!742580 (is-Cons!73733 s2!2463)) b!7840348))

(declare-fun m!8253270 () Bool)

(assert (=> start!742580 m!8253270))

(declare-fun m!8253272 () Bool)

(assert (=> b!7840346 m!8253272))

(declare-fun m!8253274 () Bool)

(assert (=> b!7840353 m!8253274))

(declare-fun m!8253276 () Bool)

(assert (=> b!7840355 m!8253276))

(declare-fun m!8253278 () Bool)

(assert (=> b!7840355 m!8253278))

(declare-fun m!8253280 () Bool)

(assert (=> b!7840350 m!8253280))

(declare-fun m!8253282 () Bool)

(assert (=> b!7840342 m!8253282))

(declare-fun m!8253284 () Bool)

(assert (=> b!7840358 m!8253284))

(declare-fun m!8253286 () Bool)

(assert (=> b!7840344 m!8253286))

(push 1)

(assert (not b!7840344))

(assert (not b!7840357))

(assert (not b!7840342))

(assert (not b!7840359))

(assert (not b!7840350))

(assert (not b!7840348))

(assert (not b!7840352))

(assert (not b!7840347))

(assert (not start!742580))

(assert (not b!7840358))

(assert tp_is_empty!52395)

(assert (not b!7840356))

(assert (not b!7840346))

(assert (not b!7840355))

(assert (not b!7840361))

(assert (not b!7840353))

(assert (not b!7840360))

(assert (not b!7840343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

