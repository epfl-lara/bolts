; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188992 () Bool)

(assert start!188992)

(declare-fun b!1887363 () Bool)

(declare-fun e!1204392 () Bool)

(declare-fun tp_is_empty!8981 () Bool)

(declare-fun tp!538139 () Bool)

(assert (=> b!1887363 (= e!1204392 (and tp_is_empty!8981 tp!538139))))

(declare-fun b!1887364 () Bool)

(declare-fun e!1204393 () Bool)

(declare-fun tp!538140 () Bool)

(assert (=> b!1887364 (= e!1204393 (and tp_is_empty!8981 tp!538140))))

(declare-fun b!1887365 () Bool)

(declare-fun e!1204391 () Bool)

(declare-datatypes ((B!1725 0))(
  ( (B!1726 (val!6148 Int)) )
))
(declare-datatypes ((List!21141 0))(
  ( (Nil!21059) (Cons!21059 (h!26460 B!1725) (t!175140 List!21141)) )
))
(declare-fun l1!1329 () List!21141)

(declare-fun l2!1298 () List!21141)

(declare-fun subseq!409 (List!21141 List!21141) Bool)

(assert (=> b!1887365 (= e!1204391 (not (subseq!409 l1!1329 (t!175140 l2!1298))))))

(declare-fun b!1887366 () Bool)

(declare-fun res!842567 () Bool)

(assert (=> b!1887366 (=> (not res!842567) (not e!1204391))))

(declare-fun l3!256 () List!21141)

(assert (=> b!1887366 (= res!842567 (subseq!409 (t!175140 l2!1298) (t!175140 l3!256)))))

(declare-fun b!1887367 () Bool)

(declare-fun res!842566 () Bool)

(assert (=> b!1887367 (=> (not res!842566) (not e!1204391))))

(get-info :version)

(assert (=> b!1887367 (= res!842566 (and (or (not ((_ is Cons!21059) l1!1329)) (not ((_ is Cons!21059) l2!1298)) (not ((_ is Cons!21059) l3!256)) (= (h!26460 l2!1298) (h!26460 l3!256))) ((_ is Cons!21059) l1!1329) ((_ is Cons!21059) l2!1298) ((_ is Cons!21059) l3!256) (= (h!26460 l2!1298) (h!26460 l3!256))))))

(declare-fun res!842568 () Bool)

(assert (=> start!188992 (=> (not res!842568) (not e!1204391))))

(assert (=> start!188992 (= res!842568 (subseq!409 l1!1329 l2!1298))))

(assert (=> start!188992 e!1204391))

(declare-fun e!1204394 () Bool)

(assert (=> start!188992 e!1204394))

(assert (=> start!188992 e!1204393))

(assert (=> start!188992 e!1204392))

(declare-fun b!1887368 () Bool)

(declare-fun tp!538138 () Bool)

(assert (=> b!1887368 (= e!1204394 (and tp_is_empty!8981 tp!538138))))

(declare-fun b!1887369 () Bool)

(declare-fun res!842570 () Bool)

(assert (=> b!1887369 (=> (not res!842570) (not e!1204391))))

(assert (=> b!1887369 (= res!842570 (not (= (h!26460 l1!1329) (h!26460 l2!1298))))))

(declare-fun b!1887370 () Bool)

(declare-fun res!842569 () Bool)

(assert (=> b!1887370 (=> (not res!842569) (not e!1204391))))

(assert (=> b!1887370 (= res!842569 (subseq!409 l2!1298 l3!256))))

(assert (= (and start!188992 res!842568) b!1887370))

(assert (= (and b!1887370 res!842569) b!1887367))

(assert (= (and b!1887367 res!842566) b!1887366))

(assert (= (and b!1887366 res!842567) b!1887369))

(assert (= (and b!1887369 res!842570) b!1887365))

(assert (= (and start!188992 ((_ is Cons!21059) l1!1329)) b!1887368))

(assert (= (and start!188992 ((_ is Cons!21059) l2!1298)) b!1887364))

(assert (= (and start!188992 ((_ is Cons!21059) l3!256)) b!1887363))

(declare-fun m!2319379 () Bool)

(assert (=> b!1887365 m!2319379))

(declare-fun m!2319381 () Bool)

(assert (=> b!1887366 m!2319381))

(declare-fun m!2319383 () Bool)

(assert (=> start!188992 m!2319383))

(declare-fun m!2319385 () Bool)

(assert (=> b!1887370 m!2319385))

(check-sat (not start!188992) (not b!1887363) (not b!1887364) (not b!1887365) (not b!1887366) (not b!1887370) (not b!1887368) tp_is_empty!8981)
(check-sat)
(get-model)

(declare-fun b!1887389 () Bool)

(declare-fun e!1204411 () Bool)

(assert (=> b!1887389 (= e!1204411 (subseq!409 (t!175140 l1!1329) (t!175140 l2!1298)))))

(declare-fun b!1887390 () Bool)

(declare-fun e!1204414 () Bool)

(assert (=> b!1887390 (= e!1204414 (subseq!409 l1!1329 (t!175140 l2!1298)))))

(declare-fun b!1887388 () Bool)

(declare-fun e!1204412 () Bool)

(assert (=> b!1887388 (= e!1204412 e!1204414)))

(declare-fun res!842590 () Bool)

(assert (=> b!1887388 (=> res!842590 e!1204414)))

(assert (=> b!1887388 (= res!842590 e!1204411)))

(declare-fun res!842588 () Bool)

(assert (=> b!1887388 (=> (not res!842588) (not e!1204411))))

(assert (=> b!1887388 (= res!842588 (= (h!26460 l1!1329) (h!26460 l2!1298)))))

(declare-fun b!1887387 () Bool)

(declare-fun e!1204413 () Bool)

(assert (=> b!1887387 (= e!1204413 e!1204412)))

(declare-fun res!842589 () Bool)

(assert (=> b!1887387 (=> (not res!842589) (not e!1204412))))

(assert (=> b!1887387 (= res!842589 ((_ is Cons!21059) l2!1298))))

(declare-fun d!578188 () Bool)

(declare-fun res!842587 () Bool)

(assert (=> d!578188 (=> res!842587 e!1204413)))

(assert (=> d!578188 (= res!842587 ((_ is Nil!21059) l1!1329))))

(assert (=> d!578188 (= (subseq!409 l1!1329 l2!1298) e!1204413)))

(assert (= (and d!578188 (not res!842587)) b!1887387))

(assert (= (and b!1887387 res!842589) b!1887388))

(assert (= (and b!1887388 res!842588) b!1887389))

(assert (= (and b!1887388 (not res!842590)) b!1887390))

(declare-fun m!2319387 () Bool)

(assert (=> b!1887389 m!2319387))

(assert (=> b!1887390 m!2319379))

(assert (=> start!188992 d!578188))

(declare-fun b!1887393 () Bool)

(declare-fun e!1204415 () Bool)

(assert (=> b!1887393 (= e!1204415 (subseq!409 (t!175140 l2!1298) (t!175140 l3!256)))))

(declare-fun b!1887394 () Bool)

(declare-fun e!1204418 () Bool)

(assert (=> b!1887394 (= e!1204418 (subseq!409 l2!1298 (t!175140 l3!256)))))

(declare-fun b!1887392 () Bool)

(declare-fun e!1204416 () Bool)

(assert (=> b!1887392 (= e!1204416 e!1204418)))

(declare-fun res!842594 () Bool)

(assert (=> b!1887392 (=> res!842594 e!1204418)))

(assert (=> b!1887392 (= res!842594 e!1204415)))

(declare-fun res!842592 () Bool)

(assert (=> b!1887392 (=> (not res!842592) (not e!1204415))))

(assert (=> b!1887392 (= res!842592 (= (h!26460 l2!1298) (h!26460 l3!256)))))

(declare-fun b!1887391 () Bool)

(declare-fun e!1204417 () Bool)

(assert (=> b!1887391 (= e!1204417 e!1204416)))

(declare-fun res!842593 () Bool)

(assert (=> b!1887391 (=> (not res!842593) (not e!1204416))))

(assert (=> b!1887391 (= res!842593 ((_ is Cons!21059) l3!256))))

(declare-fun d!578192 () Bool)

(declare-fun res!842591 () Bool)

(assert (=> d!578192 (=> res!842591 e!1204417)))

(assert (=> d!578192 (= res!842591 ((_ is Nil!21059) l2!1298))))

(assert (=> d!578192 (= (subseq!409 l2!1298 l3!256) e!1204417)))

(assert (= (and d!578192 (not res!842591)) b!1887391))

(assert (= (and b!1887391 res!842593) b!1887392))

(assert (= (and b!1887392 res!842592) b!1887393))

(assert (= (and b!1887392 (not res!842594)) b!1887394))

(assert (=> b!1887393 m!2319381))

(declare-fun m!2319389 () Bool)

(assert (=> b!1887394 m!2319389))

(assert (=> b!1887370 d!578192))

(declare-fun b!1887401 () Bool)

(declare-fun e!1204423 () Bool)

(assert (=> b!1887401 (= e!1204423 (subseq!409 (t!175140 l1!1329) (t!175140 (t!175140 l2!1298))))))

(declare-fun b!1887402 () Bool)

(declare-fun e!1204426 () Bool)

(assert (=> b!1887402 (= e!1204426 (subseq!409 l1!1329 (t!175140 (t!175140 l2!1298))))))

(declare-fun b!1887400 () Bool)

(declare-fun e!1204424 () Bool)

(assert (=> b!1887400 (= e!1204424 e!1204426)))

(declare-fun res!842602 () Bool)

(assert (=> b!1887400 (=> res!842602 e!1204426)))

(assert (=> b!1887400 (= res!842602 e!1204423)))

(declare-fun res!842600 () Bool)

(assert (=> b!1887400 (=> (not res!842600) (not e!1204423))))

(assert (=> b!1887400 (= res!842600 (= (h!26460 l1!1329) (h!26460 (t!175140 l2!1298))))))

(declare-fun b!1887399 () Bool)

(declare-fun e!1204425 () Bool)

(assert (=> b!1887399 (= e!1204425 e!1204424)))

(declare-fun res!842601 () Bool)

(assert (=> b!1887399 (=> (not res!842601) (not e!1204424))))

(assert (=> b!1887399 (= res!842601 ((_ is Cons!21059) (t!175140 l2!1298)))))

(declare-fun d!578194 () Bool)

(declare-fun res!842599 () Bool)

(assert (=> d!578194 (=> res!842599 e!1204425)))

(assert (=> d!578194 (= res!842599 ((_ is Nil!21059) l1!1329))))

(assert (=> d!578194 (= (subseq!409 l1!1329 (t!175140 l2!1298)) e!1204425)))

(assert (= (and d!578194 (not res!842599)) b!1887399))

(assert (= (and b!1887399 res!842601) b!1887400))

(assert (= (and b!1887400 res!842600) b!1887401))

(assert (= (and b!1887400 (not res!842602)) b!1887402))

(declare-fun m!2319395 () Bool)

(assert (=> b!1887401 m!2319395))

(declare-fun m!2319397 () Bool)

(assert (=> b!1887402 m!2319397))

(assert (=> b!1887365 d!578194))

(declare-fun b!1887409 () Bool)

(declare-fun e!1204431 () Bool)

(assert (=> b!1887409 (= e!1204431 (subseq!409 (t!175140 (t!175140 l2!1298)) (t!175140 (t!175140 l3!256))))))

(declare-fun b!1887410 () Bool)

(declare-fun e!1204434 () Bool)

(assert (=> b!1887410 (= e!1204434 (subseq!409 (t!175140 l2!1298) (t!175140 (t!175140 l3!256))))))

(declare-fun b!1887408 () Bool)

(declare-fun e!1204432 () Bool)

(assert (=> b!1887408 (= e!1204432 e!1204434)))

(declare-fun res!842610 () Bool)

(assert (=> b!1887408 (=> res!842610 e!1204434)))

(assert (=> b!1887408 (= res!842610 e!1204431)))

(declare-fun res!842608 () Bool)

(assert (=> b!1887408 (=> (not res!842608) (not e!1204431))))

(assert (=> b!1887408 (= res!842608 (= (h!26460 (t!175140 l2!1298)) (h!26460 (t!175140 l3!256))))))

(declare-fun b!1887407 () Bool)

(declare-fun e!1204433 () Bool)

(assert (=> b!1887407 (= e!1204433 e!1204432)))

(declare-fun res!842609 () Bool)

(assert (=> b!1887407 (=> (not res!842609) (not e!1204432))))

(assert (=> b!1887407 (= res!842609 ((_ is Cons!21059) (t!175140 l3!256)))))

(declare-fun d!578198 () Bool)

(declare-fun res!842607 () Bool)

(assert (=> d!578198 (=> res!842607 e!1204433)))

(assert (=> d!578198 (= res!842607 ((_ is Nil!21059) (t!175140 l2!1298)))))

(assert (=> d!578198 (= (subseq!409 (t!175140 l2!1298) (t!175140 l3!256)) e!1204433)))

(assert (= (and d!578198 (not res!842607)) b!1887407))

(assert (= (and b!1887407 res!842609) b!1887408))

(assert (= (and b!1887408 res!842608) b!1887409))

(assert (= (and b!1887408 (not res!842610)) b!1887410))

(declare-fun m!2319401 () Bool)

(assert (=> b!1887409 m!2319401))

(declare-fun m!2319403 () Bool)

(assert (=> b!1887410 m!2319403))

(assert (=> b!1887366 d!578198))

(declare-fun b!1887423 () Bool)

(declare-fun e!1204445 () Bool)

(declare-fun tp!538143 () Bool)

(assert (=> b!1887423 (= e!1204445 (and tp_is_empty!8981 tp!538143))))

(assert (=> b!1887368 (= tp!538138 e!1204445)))

(assert (= (and b!1887368 ((_ is Cons!21059) (t!175140 l1!1329))) b!1887423))

(declare-fun b!1887424 () Bool)

(declare-fun e!1204446 () Bool)

(declare-fun tp!538144 () Bool)

(assert (=> b!1887424 (= e!1204446 (and tp_is_empty!8981 tp!538144))))

(assert (=> b!1887363 (= tp!538139 e!1204446)))

(assert (= (and b!1887363 ((_ is Cons!21059) (t!175140 l3!256))) b!1887424))

(declare-fun b!1887425 () Bool)

(declare-fun e!1204447 () Bool)

(declare-fun tp!538145 () Bool)

(assert (=> b!1887425 (= e!1204447 (and tp_is_empty!8981 tp!538145))))

(assert (=> b!1887364 (= tp!538140 e!1204447)))

(assert (= (and b!1887364 ((_ is Cons!21059) (t!175140 l2!1298))) b!1887425))

(check-sat (not b!1887394) (not b!1887402) (not b!1887401) (not b!1887425) (not b!1887424) (not b!1887410) (not b!1887423) tp_is_empty!8981 (not b!1887409) (not b!1887393) (not b!1887389) (not b!1887390))
(check-sat)
