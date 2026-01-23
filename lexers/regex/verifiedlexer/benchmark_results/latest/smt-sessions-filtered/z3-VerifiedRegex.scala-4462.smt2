; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!237184 () Bool)

(assert start!237184)

(declare-fun b!2421348 () Bool)

(declare-fun e!1540490 () Bool)

(declare-fun call!147978 () Bool)

(assert (=> b!2421348 (= e!1540490 call!147978)))

(declare-fun b!2421349 () Bool)

(declare-fun e!1540493 () Bool)

(declare-fun tp_is_empty!11647 () Bool)

(assert (=> b!2421349 (= e!1540493 tp_is_empty!11647)))

(declare-datatypes ((C!14392 0))(
  ( (C!14393 (val!8438 Int)) )
))
(declare-datatypes ((List!28472 0))(
  ( (Nil!28374) (Cons!28374 (h!33775 C!14392) (t!208449 List!28472)) )
))
(declare-fun s!9460 () List!28472)

(declare-fun bm!147972 () Bool)

(declare-fun c!386006 () Bool)

(declare-datatypes ((Regex!7117 0))(
  ( (ElementMatch!7117 (c!386007 C!14392)) (Concat!11753 (regOne!14746 Regex!7117) (regTwo!14746 Regex!7117)) (EmptyExpr!7117) (Star!7117 (reg!7446 Regex!7117)) (EmptyLang!7117) (Union!7117 (regOne!14747 Regex!7117) (regTwo!14747 Regex!7117)) )
))
(declare-fun lt!875329 () Regex!7117)

(declare-fun call!147977 () List!28472)

(declare-fun lt!875337 () Regex!7117)

(declare-fun matchR!3234 (Regex!7117 List!28472) Bool)

(assert (=> bm!147972 (= call!147978 (matchR!3234 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)) (ite c!386006 s!9460 call!147977)))))

(declare-fun b!2421350 () Bool)

(declare-fun tp!769482 () Bool)

(declare-fun tp!769486 () Bool)

(assert (=> b!2421350 (= e!1540493 (and tp!769482 tp!769486))))

(declare-fun b!2421351 () Bool)

(declare-fun e!1540498 () Bool)

(declare-fun e!1540496 () Bool)

(assert (=> b!2421351 (= e!1540498 e!1540496)))

(declare-fun res!1028364 () Bool)

(assert (=> b!2421351 (=> res!1028364 e!1540496)))

(declare-fun lt!875342 () Regex!7117)

(assert (=> b!2421351 (= res!1028364 (not (= lt!875342 EmptyExpr!7117)))))

(declare-datatypes ((List!28473 0))(
  ( (Nil!28375) (Cons!28375 (h!33776 Regex!7117) (t!208450 List!28473)) )
))
(declare-fun lt!875332 () List!28473)

(declare-fun generalisedConcat!218 (List!28473) Regex!7117)

(assert (=> b!2421351 (= lt!875342 (generalisedConcat!218 lt!875332))))

(declare-fun bm!147973 () Bool)

(declare-datatypes ((tuple2!28014 0))(
  ( (tuple2!28015 (_1!16548 List!28472) (_2!16548 List!28472)) )
))
(declare-fun lt!875339 () tuple2!28014)

(declare-fun ++!7038 (List!28472 List!28472) List!28472)

(assert (=> bm!147973 (= call!147977 (++!7038 (ite c!386006 s!9460 (_1!16548 lt!875339)) (ite c!386006 Nil!28374 (_2!16548 lt!875339))))))

(declare-fun b!2421352 () Bool)

(declare-datatypes ((Unit!41561 0))(
  ( (Unit!41562) )
))
(declare-fun e!1540501 () Unit!41561)

(declare-fun Unit!41563 () Unit!41561)

(assert (=> b!2421352 (= e!1540501 Unit!41563)))

(declare-datatypes ((Option!5618 0))(
  ( (None!5617) (Some!5617 (v!31025 tuple2!28014)) )
))
(declare-fun lt!875331 () Option!5618)

(declare-fun call!147981 () Option!5618)

(assert (=> b!2421352 (= lt!875331 call!147981)))

(declare-fun lt!875330 () Bool)

(declare-fun call!147980 () Bool)

(assert (=> b!2421352 (= lt!875330 call!147980)))

(declare-fun c!386005 () Bool)

(assert (=> b!2421352 (= c!386005 lt!875330)))

(declare-fun lt!875333 () Unit!41561)

(declare-fun e!1540504 () Unit!41561)

(assert (=> b!2421352 (= lt!875333 e!1540504)))

(declare-fun res!1028355 () Bool)

(assert (=> b!2421352 (= res!1028355 (not lt!875330))))

(declare-fun e!1540497 () Bool)

(assert (=> b!2421352 (=> (not res!1028355) (not e!1540497))))

(assert (=> b!2421352 e!1540497))

(declare-fun b!2421353 () Bool)

(declare-fun e!1540500 () Bool)

(declare-fun e!1540499 () Bool)

(assert (=> b!2421353 (= e!1540500 e!1540499)))

(declare-fun res!1028353 () Bool)

(assert (=> b!2421353 (=> res!1028353 e!1540499)))

(declare-fun l!9164 () List!28473)

(declare-fun validRegex!2837 (Regex!7117) Bool)

(assert (=> b!2421353 (= res!1028353 (not (validRegex!2837 (h!33776 l!9164))))))

(declare-fun lt!875335 () Regex!7117)

(assert (=> b!2421353 (= lt!875335 (generalisedConcat!218 (t!208450 l!9164)))))

(declare-fun bm!147974 () Bool)

(declare-fun call!147982 () Bool)

(declare-fun call!147979 () Option!5618)

(declare-fun isDefined!4444 (Option!5618) Bool)

(assert (=> bm!147974 (= call!147982 (isDefined!4444 call!147979))))

(declare-fun b!2421355 () Bool)

(declare-fun e!1540491 () Bool)

(assert (=> b!2421355 e!1540491))

(declare-fun res!1028359 () Bool)

(assert (=> b!2421355 (=> (not res!1028359) (not e!1540491))))

(assert (=> b!2421355 (= res!1028359 call!147978)))

(declare-fun lt!875338 () Unit!41561)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!66 (Regex!7117 Regex!7117 List!28472 List!28472 List!28472) Unit!41561)

(assert (=> b!2421355 (= lt!875338 (lemmaFindSeparationIsDefinedThenConcatMatches!66 lt!875329 EmptyExpr!7117 (_1!16548 lt!875339) (_2!16548 lt!875339) s!9460))))

(declare-fun get!8728 (Option!5618) tuple2!28014)

(assert (=> b!2421355 (= lt!875339 (get!8728 lt!875331))))

(declare-fun Unit!41564 () Unit!41561)

(assert (=> b!2421355 (= e!1540504 Unit!41564)))

(declare-fun bm!147975 () Bool)

(declare-fun findConcatSeparation!726 (Regex!7117 Regex!7117 List!28472 List!28472 List!28472) Option!5618)

(assert (=> bm!147975 (= call!147981 (findConcatSeparation!726 lt!875329 EmptyExpr!7117 Nil!28374 s!9460 s!9460))))

(declare-fun b!2421356 () Bool)

(declare-fun e!1540492 () Bool)

(assert (=> b!2421356 (= e!1540492 call!147982)))

(declare-fun b!2421357 () Bool)

(assert (=> b!2421357 (= e!1540496 e!1540500)))

(declare-fun res!1028357 () Bool)

(assert (=> b!2421357 (=> res!1028357 e!1540500)))

(get-info :version)

(assert (=> b!2421357 (= res!1028357 (not ((_ is Cons!28375) l!9164)))))

(declare-fun lt!875341 () Unit!41561)

(assert (=> b!2421357 (= lt!875341 e!1540501)))

(assert (=> b!2421357 (= c!386006 (matchR!3234 lt!875329 s!9460))))

(declare-fun head!5445 (List!28473) Regex!7117)

(assert (=> b!2421357 (= lt!875329 (head!5445 l!9164))))

(declare-fun b!2421358 () Bool)

(declare-fun Unit!41565 () Unit!41561)

(assert (=> b!2421358 (= e!1540501 Unit!41565)))

(declare-fun lt!875334 () Unit!41561)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!92 (Regex!7117 Regex!7117 List!28472 List!28472) Unit!41561)

(assert (=> b!2421358 (= lt!875334 (lemmaTwoRegexMatchThenConcatMatchesConcatString!92 lt!875329 EmptyExpr!7117 s!9460 Nil!28374))))

(assert (=> b!2421358 (= lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117))))

(declare-fun res!1028358 () Bool)

(assert (=> b!2421358 (= res!1028358 (matchR!3234 lt!875337 call!147977))))

(assert (=> b!2421358 (=> (not res!1028358) (not e!1540490))))

(assert (=> b!2421358 e!1540490))

(declare-fun lt!875340 () Unit!41561)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!66 (Regex!7117 Regex!7117 List!28472) Unit!41561)

(assert (=> b!2421358 (= lt!875340 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!66 lt!875329 EmptyExpr!7117 s!9460))))

(declare-fun res!1028356 () Bool)

(assert (=> b!2421358 (= res!1028356 call!147980)))

(assert (=> b!2421358 (=> (not res!1028356) (not e!1540492))))

(assert (=> b!2421358 e!1540492))

(declare-fun b!2421359 () Bool)

(declare-fun res!1028360 () Bool)

(declare-fun e!1540494 () Bool)

(assert (=> b!2421359 (=> res!1028360 e!1540494)))

(declare-fun isEmpty!16395 (List!28473) Bool)

(assert (=> b!2421359 (= res!1028360 (isEmpty!16395 l!9164))))

(declare-fun b!2421360 () Bool)

(declare-fun e!1540502 () Bool)

(assert (=> b!2421360 (= e!1540502 (not e!1540494))))

(declare-fun res!1028362 () Bool)

(assert (=> b!2421360 (=> res!1028362 e!1540494)))

(declare-fun r!13927 () Regex!7117)

(assert (=> b!2421360 (= res!1028362 (or ((_ is Concat!11753) r!13927) ((_ is EmptyExpr!7117) r!13927)))))

(declare-fun matchRSpec!966 (Regex!7117 List!28472) Bool)

(assert (=> b!2421360 (= (matchR!3234 r!13927 s!9460) (matchRSpec!966 r!13927 s!9460))))

(declare-fun lt!875336 () Unit!41561)

(declare-fun mainMatchTheorem!966 (Regex!7117 List!28472) Unit!41561)

(assert (=> b!2421360 (= lt!875336 (mainMatchTheorem!966 r!13927 s!9460))))

(declare-fun b!2421361 () Bool)

(declare-fun res!1028354 () Bool)

(assert (=> b!2421361 (=> res!1028354 e!1540499)))

(assert (=> b!2421361 (= res!1028354 (not (validRegex!2837 lt!875335)))))

(declare-fun bm!147976 () Bool)

(assert (=> bm!147976 (= call!147979 (findConcatSeparation!726 lt!875329 lt!875342 Nil!28374 s!9460 s!9460))))

(declare-fun b!2421362 () Bool)

(assert (=> b!2421362 (= e!1540494 e!1540498)))

(declare-fun res!1028363 () Bool)

(assert (=> b!2421362 (=> res!1028363 e!1540498)))

(assert (=> b!2421362 (= res!1028363 (not (isEmpty!16395 lt!875332)))))

(declare-fun tail!3717 (List!28473) List!28473)

(assert (=> b!2421362 (= lt!875332 (tail!3717 l!9164))))

(declare-fun b!2421363 () Bool)

(declare-fun res!1028352 () Bool)

(assert (=> b!2421363 (=> (not res!1028352) (not e!1540502))))

(assert (=> b!2421363 (= res!1028352 (= r!13927 (generalisedConcat!218 l!9164)))))

(declare-fun b!2421364 () Bool)

(declare-fun e!1540503 () Bool)

(declare-fun tp!769488 () Bool)

(declare-fun tp!769485 () Bool)

(assert (=> b!2421364 (= e!1540503 (and tp!769488 tp!769485))))

(declare-fun b!2421365 () Bool)

(assert (=> b!2421365 (= e!1540491 false)))

(declare-fun b!2421366 () Bool)

(declare-fun tp!769484 () Bool)

(declare-fun tp!769483 () Bool)

(assert (=> b!2421366 (= e!1540493 (and tp!769484 tp!769483))))

(declare-fun bm!147977 () Bool)

(assert (=> bm!147977 (= call!147980 (isDefined!4444 (ite c!386006 call!147981 lt!875331)))))

(declare-fun b!2421367 () Bool)

(declare-fun tp!769487 () Bool)

(assert (=> b!2421367 (= e!1540493 tp!769487)))

(declare-fun b!2421368 () Bool)

(declare-fun Unit!41566 () Unit!41561)

(assert (=> b!2421368 (= e!1540504 Unit!41566)))

(declare-fun res!1028361 () Bool)

(assert (=> start!237184 (=> (not res!1028361) (not e!1540502))))

(declare-fun lambda!91199 () Int)

(declare-fun forall!5751 (List!28473 Int) Bool)

(assert (=> start!237184 (= res!1028361 (forall!5751 l!9164 lambda!91199))))

(assert (=> start!237184 e!1540502))

(assert (=> start!237184 e!1540503))

(assert (=> start!237184 e!1540493))

(declare-fun e!1540495 () Bool)

(assert (=> start!237184 e!1540495))

(declare-fun b!2421354 () Bool)

(assert (=> b!2421354 (= e!1540497 (not call!147982))))

(declare-fun b!2421369 () Bool)

(declare-fun tp!769489 () Bool)

(assert (=> b!2421369 (= e!1540495 (and tp_is_empty!11647 tp!769489))))

(declare-fun b!2421370 () Bool)

(assert (=> b!2421370 (= e!1540499 (= (++!7038 Nil!28374 s!9460) s!9460))))

(assert (= (and start!237184 res!1028361) b!2421363))

(assert (= (and b!2421363 res!1028352) b!2421360))

(assert (= (and b!2421360 (not res!1028362)) b!2421359))

(assert (= (and b!2421359 (not res!1028360)) b!2421362))

(assert (= (and b!2421362 (not res!1028363)) b!2421351))

(assert (= (and b!2421351 (not res!1028364)) b!2421357))

(assert (= (and b!2421357 c!386006) b!2421358))

(assert (= (and b!2421357 (not c!386006)) b!2421352))

(assert (= (and b!2421358 res!1028358) b!2421348))

(assert (= (and b!2421358 res!1028356) b!2421356))

(assert (= (and b!2421352 c!386005) b!2421355))

(assert (= (and b!2421352 (not c!386005)) b!2421368))

(assert (= (and b!2421355 res!1028359) b!2421365))

(assert (= (and b!2421352 res!1028355) b!2421354))

(assert (= (or b!2421358 b!2421352) bm!147975))

(assert (= (or b!2421358 b!2421355) bm!147973))

(assert (= (or b!2421356 b!2421354) bm!147976))

(assert (= (or b!2421348 b!2421355) bm!147972))

(assert (= (or b!2421358 b!2421352) bm!147977))

(assert (= (or b!2421356 b!2421354) bm!147974))

(assert (= (and b!2421357 (not res!1028357)) b!2421353))

(assert (= (and b!2421353 (not res!1028353)) b!2421361))

(assert (= (and b!2421361 (not res!1028354)) b!2421370))

(assert (= (and start!237184 ((_ is Cons!28375) l!9164)) b!2421364))

(assert (= (and start!237184 ((_ is ElementMatch!7117) r!13927)) b!2421349))

(assert (= (and start!237184 ((_ is Concat!11753) r!13927)) b!2421350))

(assert (= (and start!237184 ((_ is Star!7117) r!13927)) b!2421367))

(assert (= (and start!237184 ((_ is Union!7117) r!13927)) b!2421366))

(assert (= (and start!237184 ((_ is Cons!28374) s!9460)) b!2421369))

(declare-fun m!2807965 () Bool)

(assert (=> b!2421355 m!2807965))

(declare-fun m!2807967 () Bool)

(assert (=> b!2421355 m!2807967))

(declare-fun m!2807969 () Bool)

(assert (=> b!2421360 m!2807969))

(declare-fun m!2807971 () Bool)

(assert (=> b!2421360 m!2807971))

(declare-fun m!2807973 () Bool)

(assert (=> b!2421360 m!2807973))

(declare-fun m!2807975 () Bool)

(assert (=> start!237184 m!2807975))

(declare-fun m!2807977 () Bool)

(assert (=> b!2421362 m!2807977))

(declare-fun m!2807979 () Bool)

(assert (=> b!2421362 m!2807979))

(declare-fun m!2807981 () Bool)

(assert (=> bm!147972 m!2807981))

(declare-fun m!2807983 () Bool)

(assert (=> b!2421353 m!2807983))

(declare-fun m!2807985 () Bool)

(assert (=> b!2421353 m!2807985))

(declare-fun m!2807987 () Bool)

(assert (=> b!2421359 m!2807987))

(declare-fun m!2807989 () Bool)

(assert (=> bm!147974 m!2807989))

(declare-fun m!2807991 () Bool)

(assert (=> bm!147977 m!2807991))

(declare-fun m!2807993 () Bool)

(assert (=> b!2421358 m!2807993))

(declare-fun m!2807995 () Bool)

(assert (=> b!2421358 m!2807995))

(declare-fun m!2807997 () Bool)

(assert (=> b!2421358 m!2807997))

(declare-fun m!2807999 () Bool)

(assert (=> b!2421361 m!2807999))

(declare-fun m!2808001 () Bool)

(assert (=> bm!147975 m!2808001))

(declare-fun m!2808003 () Bool)

(assert (=> b!2421363 m!2808003))

(declare-fun m!2808005 () Bool)

(assert (=> bm!147976 m!2808005))

(declare-fun m!2808007 () Bool)

(assert (=> b!2421357 m!2808007))

(declare-fun m!2808009 () Bool)

(assert (=> b!2421357 m!2808009))

(declare-fun m!2808011 () Bool)

(assert (=> bm!147973 m!2808011))

(declare-fun m!2808013 () Bool)

(assert (=> b!2421351 m!2808013))

(declare-fun m!2808015 () Bool)

(assert (=> b!2421370 m!2808015))

(check-sat (not b!2421357) (not b!2421370) (not bm!147975) (not b!2421362) (not b!2421363) (not b!2421369) (not b!2421351) (not b!2421360) (not b!2421361) (not b!2421358) (not b!2421350) (not b!2421364) (not b!2421367) (not b!2421366) (not b!2421359) (not bm!147972) (not start!237184) (not bm!147974) tp_is_empty!11647 (not b!2421355) (not bm!147977) (not bm!147976) (not bm!147973) (not b!2421353))
(check-sat)
(get-model)

(declare-fun b!2421465 () Bool)

(declare-fun e!1540559 () Option!5618)

(assert (=> b!2421465 (= e!1540559 (Some!5617 (tuple2!28015 Nil!28374 s!9460)))))

(declare-fun b!2421466 () Bool)

(declare-fun res!1028412 () Bool)

(declare-fun e!1540561 () Bool)

(assert (=> b!2421466 (=> (not res!1028412) (not e!1540561))))

(declare-fun lt!875361 () Option!5618)

(assert (=> b!2421466 (= res!1028412 (matchR!3234 EmptyExpr!7117 (_2!16548 (get!8728 lt!875361))))))

(declare-fun b!2421467 () Bool)

(declare-fun res!1028411 () Bool)

(assert (=> b!2421467 (=> (not res!1028411) (not e!1540561))))

(assert (=> b!2421467 (= res!1028411 (matchR!3234 lt!875329 (_1!16548 (get!8728 lt!875361))))))

(declare-fun b!2421468 () Bool)

(declare-fun e!1540558 () Bool)

(assert (=> b!2421468 (= e!1540558 (not (isDefined!4444 lt!875361)))))

(declare-fun b!2421469 () Bool)

(declare-fun e!1540560 () Option!5618)

(assert (=> b!2421469 (= e!1540559 e!1540560)))

(declare-fun c!386034 () Bool)

(assert (=> b!2421469 (= c!386034 ((_ is Nil!28374) s!9460))))

(declare-fun b!2421470 () Bool)

(declare-fun e!1540557 () Bool)

(assert (=> b!2421470 (= e!1540557 (matchR!3234 EmptyExpr!7117 s!9460))))

(declare-fun b!2421471 () Bool)

(assert (=> b!2421471 (= e!1540561 (= (++!7038 (_1!16548 (get!8728 lt!875361)) (_2!16548 (get!8728 lt!875361))) s!9460))))

(declare-fun b!2421472 () Bool)

(assert (=> b!2421472 (= e!1540560 None!5617)))

(declare-fun b!2421464 () Bool)

(declare-fun lt!875360 () Unit!41561)

(declare-fun lt!875362 () Unit!41561)

(assert (=> b!2421464 (= lt!875360 lt!875362)))

(assert (=> b!2421464 (= (++!7038 (++!7038 Nil!28374 (Cons!28374 (h!33775 s!9460) Nil!28374)) (t!208449 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!663 (List!28472 C!14392 List!28472 List!28472) Unit!41561)

(assert (=> b!2421464 (= lt!875362 (lemmaMoveElementToOtherListKeepsConcatEq!663 Nil!28374 (h!33775 s!9460) (t!208449 s!9460) s!9460))))

(assert (=> b!2421464 (= e!1540560 (findConcatSeparation!726 lt!875329 EmptyExpr!7117 (++!7038 Nil!28374 (Cons!28374 (h!33775 s!9460) Nil!28374)) (t!208449 s!9460) s!9460))))

(declare-fun d!701891 () Bool)

(assert (=> d!701891 e!1540558))

(declare-fun res!1028409 () Bool)

(assert (=> d!701891 (=> res!1028409 e!1540558)))

(assert (=> d!701891 (= res!1028409 e!1540561)))

(declare-fun res!1028410 () Bool)

(assert (=> d!701891 (=> (not res!1028410) (not e!1540561))))

(assert (=> d!701891 (= res!1028410 (isDefined!4444 lt!875361))))

(assert (=> d!701891 (= lt!875361 e!1540559)))

(declare-fun c!386033 () Bool)

(assert (=> d!701891 (= c!386033 e!1540557)))

(declare-fun res!1028408 () Bool)

(assert (=> d!701891 (=> (not res!1028408) (not e!1540557))))

(assert (=> d!701891 (= res!1028408 (matchR!3234 lt!875329 Nil!28374))))

(assert (=> d!701891 (validRegex!2837 lt!875329)))

(assert (=> d!701891 (= (findConcatSeparation!726 lt!875329 EmptyExpr!7117 Nil!28374 s!9460 s!9460) lt!875361)))

(assert (= (and d!701891 res!1028408) b!2421470))

(assert (= (and d!701891 c!386033) b!2421465))

(assert (= (and d!701891 (not c!386033)) b!2421469))

(assert (= (and b!2421469 c!386034) b!2421472))

(assert (= (and b!2421469 (not c!386034)) b!2421464))

(assert (= (and d!701891 res!1028410) b!2421467))

(assert (= (and b!2421467 res!1028411) b!2421466))

(assert (= (and b!2421466 res!1028412) b!2421471))

(assert (= (and d!701891 (not res!1028409)) b!2421468))

(declare-fun m!2808065 () Bool)

(assert (=> d!701891 m!2808065))

(declare-fun m!2808067 () Bool)

(assert (=> d!701891 m!2808067))

(declare-fun m!2808069 () Bool)

(assert (=> d!701891 m!2808069))

(declare-fun m!2808071 () Bool)

(assert (=> b!2421470 m!2808071))

(assert (=> b!2421468 m!2808065))

(declare-fun m!2808073 () Bool)

(assert (=> b!2421471 m!2808073))

(declare-fun m!2808075 () Bool)

(assert (=> b!2421471 m!2808075))

(assert (=> b!2421466 m!2808073))

(declare-fun m!2808077 () Bool)

(assert (=> b!2421466 m!2808077))

(assert (=> b!2421467 m!2808073))

(declare-fun m!2808079 () Bool)

(assert (=> b!2421467 m!2808079))

(declare-fun m!2808081 () Bool)

(assert (=> b!2421464 m!2808081))

(assert (=> b!2421464 m!2808081))

(declare-fun m!2808083 () Bool)

(assert (=> b!2421464 m!2808083))

(declare-fun m!2808085 () Bool)

(assert (=> b!2421464 m!2808085))

(assert (=> b!2421464 m!2808081))

(declare-fun m!2808087 () Bool)

(assert (=> b!2421464 m!2808087))

(assert (=> bm!147975 d!701891))

(declare-fun d!701901 () Bool)

(declare-fun res!1028427 () Bool)

(declare-fun e!1540580 () Bool)

(assert (=> d!701901 (=> res!1028427 e!1540580)))

(assert (=> d!701901 (= res!1028427 ((_ is Nil!28375) l!9164))))

(assert (=> d!701901 (= (forall!5751 l!9164 lambda!91199) e!1540580)))

(declare-fun b!2421495 () Bool)

(declare-fun e!1540581 () Bool)

(assert (=> b!2421495 (= e!1540580 e!1540581)))

(declare-fun res!1028428 () Bool)

(assert (=> b!2421495 (=> (not res!1028428) (not e!1540581))))

(declare-fun dynLambda!12211 (Int Regex!7117) Bool)

(assert (=> b!2421495 (= res!1028428 (dynLambda!12211 lambda!91199 (h!33776 l!9164)))))

(declare-fun b!2421496 () Bool)

(assert (=> b!2421496 (= e!1540581 (forall!5751 (t!208450 l!9164) lambda!91199))))

(assert (= (and d!701901 (not res!1028427)) b!2421495))

(assert (= (and b!2421495 res!1028428) b!2421496))

(declare-fun b_lambda!74643 () Bool)

(assert (=> (not b_lambda!74643) (not b!2421495)))

(declare-fun m!2808089 () Bool)

(assert (=> b!2421495 m!2808089))

(declare-fun m!2808091 () Bool)

(assert (=> b!2421496 m!2808091))

(assert (=> start!237184 d!701901))

(declare-fun b!2421558 () Bool)

(declare-fun res!1028464 () Bool)

(declare-fun e!1540625 () Bool)

(assert (=> b!2421558 (=> res!1028464 e!1540625)))

(assert (=> b!2421558 (= res!1028464 (not ((_ is ElementMatch!7117) lt!875329)))))

(declare-fun e!1540624 () Bool)

(assert (=> b!2421558 (= e!1540624 e!1540625)))

(declare-fun d!701903 () Bool)

(declare-fun e!1540622 () Bool)

(assert (=> d!701903 e!1540622))

(declare-fun c!386055 () Bool)

(assert (=> d!701903 (= c!386055 ((_ is EmptyExpr!7117) lt!875329))))

(declare-fun lt!875369 () Bool)

(declare-fun e!1540623 () Bool)

(assert (=> d!701903 (= lt!875369 e!1540623)))

(declare-fun c!386053 () Bool)

(declare-fun isEmpty!16397 (List!28472) Bool)

(assert (=> d!701903 (= c!386053 (isEmpty!16397 s!9460))))

(assert (=> d!701903 (validRegex!2837 lt!875329)))

(assert (=> d!701903 (= (matchR!3234 lt!875329 s!9460) lt!875369)))

(declare-fun bm!147992 () Bool)

(declare-fun call!147997 () Bool)

(assert (=> bm!147992 (= call!147997 (isEmpty!16397 s!9460))))

(declare-fun b!2421559 () Bool)

(declare-fun e!1540621 () Bool)

(declare-fun e!1540620 () Bool)

(assert (=> b!2421559 (= e!1540621 e!1540620)))

(declare-fun res!1028463 () Bool)

(assert (=> b!2421559 (=> res!1028463 e!1540620)))

(assert (=> b!2421559 (= res!1028463 call!147997)))

(declare-fun b!2421560 () Bool)

(declare-fun head!5447 (List!28472) C!14392)

(assert (=> b!2421560 (= e!1540620 (not (= (head!5447 s!9460) (c!386007 lt!875329))))))

(declare-fun b!2421561 () Bool)

(declare-fun res!1028466 () Bool)

(declare-fun e!1540619 () Bool)

(assert (=> b!2421561 (=> (not res!1028466) (not e!1540619))))

(declare-fun tail!3719 (List!28472) List!28472)

(assert (=> b!2421561 (= res!1028466 (isEmpty!16397 (tail!3719 s!9460)))))

(declare-fun b!2421562 () Bool)

(declare-fun res!1028468 () Bool)

(assert (=> b!2421562 (=> res!1028468 e!1540620)))

(assert (=> b!2421562 (= res!1028468 (not (isEmpty!16397 (tail!3719 s!9460))))))

(declare-fun b!2421563 () Bool)

(declare-fun nullable!2152 (Regex!7117) Bool)

(assert (=> b!2421563 (= e!1540623 (nullable!2152 lt!875329))))

(declare-fun b!2421564 () Bool)

(assert (=> b!2421564 (= e!1540622 e!1540624)))

(declare-fun c!386054 () Bool)

(assert (=> b!2421564 (= c!386054 ((_ is EmptyLang!7117) lt!875329))))

(declare-fun b!2421565 () Bool)

(declare-fun res!1028462 () Bool)

(assert (=> b!2421565 (=> (not res!1028462) (not e!1540619))))

(assert (=> b!2421565 (= res!1028462 (not call!147997))))

(declare-fun b!2421566 () Bool)

(assert (=> b!2421566 (= e!1540619 (= (head!5447 s!9460) (c!386007 lt!875329)))))

(declare-fun b!2421567 () Bool)

(declare-fun derivativeStep!1809 (Regex!7117 C!14392) Regex!7117)

(assert (=> b!2421567 (= e!1540623 (matchR!3234 (derivativeStep!1809 lt!875329 (head!5447 s!9460)) (tail!3719 s!9460)))))

(declare-fun b!2421568 () Bool)

(assert (=> b!2421568 (= e!1540624 (not lt!875369))))

(declare-fun b!2421569 () Bool)

(assert (=> b!2421569 (= e!1540625 e!1540621)))

(declare-fun res!1028467 () Bool)

(assert (=> b!2421569 (=> (not res!1028467) (not e!1540621))))

(assert (=> b!2421569 (= res!1028467 (not lt!875369))))

(declare-fun b!2421570 () Bool)

(declare-fun res!1028465 () Bool)

(assert (=> b!2421570 (=> res!1028465 e!1540625)))

(assert (=> b!2421570 (= res!1028465 e!1540619)))

(declare-fun res!1028469 () Bool)

(assert (=> b!2421570 (=> (not res!1028469) (not e!1540619))))

(assert (=> b!2421570 (= res!1028469 lt!875369)))

(declare-fun b!2421571 () Bool)

(assert (=> b!2421571 (= e!1540622 (= lt!875369 call!147997))))

(assert (= (and d!701903 c!386053) b!2421563))

(assert (= (and d!701903 (not c!386053)) b!2421567))

(assert (= (and d!701903 c!386055) b!2421571))

(assert (= (and d!701903 (not c!386055)) b!2421564))

(assert (= (and b!2421564 c!386054) b!2421568))

(assert (= (and b!2421564 (not c!386054)) b!2421558))

(assert (= (and b!2421558 (not res!1028464)) b!2421570))

(assert (= (and b!2421570 res!1028469) b!2421565))

(assert (= (and b!2421565 res!1028462) b!2421561))

(assert (= (and b!2421561 res!1028466) b!2421566))

(assert (= (and b!2421570 (not res!1028465)) b!2421569))

(assert (= (and b!2421569 res!1028467) b!2421559))

(assert (= (and b!2421559 (not res!1028463)) b!2421562))

(assert (= (and b!2421562 (not res!1028468)) b!2421560))

(assert (= (or b!2421571 b!2421559 b!2421565) bm!147992))

(declare-fun m!2808129 () Bool)

(assert (=> b!2421567 m!2808129))

(assert (=> b!2421567 m!2808129))

(declare-fun m!2808131 () Bool)

(assert (=> b!2421567 m!2808131))

(declare-fun m!2808133 () Bool)

(assert (=> b!2421567 m!2808133))

(assert (=> b!2421567 m!2808131))

(assert (=> b!2421567 m!2808133))

(declare-fun m!2808135 () Bool)

(assert (=> b!2421567 m!2808135))

(assert (=> b!2421562 m!2808133))

(assert (=> b!2421562 m!2808133))

(declare-fun m!2808137 () Bool)

(assert (=> b!2421562 m!2808137))

(declare-fun m!2808139 () Bool)

(assert (=> b!2421563 m!2808139))

(assert (=> b!2421560 m!2808129))

(declare-fun m!2808141 () Bool)

(assert (=> bm!147992 m!2808141))

(assert (=> b!2421566 m!2808129))

(assert (=> d!701903 m!2808141))

(assert (=> d!701903 m!2808069))

(assert (=> b!2421561 m!2808133))

(assert (=> b!2421561 m!2808133))

(assert (=> b!2421561 m!2808137))

(assert (=> b!2421357 d!701903))

(declare-fun d!701913 () Bool)

(assert (=> d!701913 (= (head!5445 l!9164) (h!33776 l!9164))))

(assert (=> b!2421357 d!701913))

(declare-fun b!2421576 () Bool)

(declare-fun res!1028474 () Bool)

(declare-fun e!1540634 () Bool)

(assert (=> b!2421576 (=> res!1028474 e!1540634)))

(assert (=> b!2421576 (= res!1028474 (not ((_ is ElementMatch!7117) (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)))))))

(declare-fun e!1540633 () Bool)

(assert (=> b!2421576 (= e!1540633 e!1540634)))

(declare-fun d!701917 () Bool)

(declare-fun e!1540631 () Bool)

(assert (=> d!701917 e!1540631))

(declare-fun c!386059 () Bool)

(assert (=> d!701917 (= c!386059 ((_ is EmptyExpr!7117) (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117))))))

(declare-fun lt!875371 () Bool)

(declare-fun e!1540632 () Bool)

(assert (=> d!701917 (= lt!875371 e!1540632)))

(declare-fun c!386057 () Bool)

(assert (=> d!701917 (= c!386057 (isEmpty!16397 (ite c!386006 s!9460 call!147977)))))

(assert (=> d!701917 (validRegex!2837 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)))))

(assert (=> d!701917 (= (matchR!3234 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)) (ite c!386006 s!9460 call!147977)) lt!875371)))

(declare-fun call!147998 () Bool)

(declare-fun bm!147993 () Bool)

(assert (=> bm!147993 (= call!147998 (isEmpty!16397 (ite c!386006 s!9460 call!147977)))))

(declare-fun b!2421577 () Bool)

(declare-fun e!1540630 () Bool)

(declare-fun e!1540629 () Bool)

(assert (=> b!2421577 (= e!1540630 e!1540629)))

(declare-fun res!1028473 () Bool)

(assert (=> b!2421577 (=> res!1028473 e!1540629)))

(assert (=> b!2421577 (= res!1028473 call!147998)))

(declare-fun b!2421578 () Bool)

(assert (=> b!2421578 (= e!1540629 (not (= (head!5447 (ite c!386006 s!9460 call!147977)) (c!386007 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117))))))))

(declare-fun b!2421579 () Bool)

(declare-fun res!1028476 () Bool)

(declare-fun e!1540628 () Bool)

(assert (=> b!2421579 (=> (not res!1028476) (not e!1540628))))

(assert (=> b!2421579 (= res!1028476 (isEmpty!16397 (tail!3719 (ite c!386006 s!9460 call!147977))))))

(declare-fun b!2421580 () Bool)

(declare-fun res!1028478 () Bool)

(assert (=> b!2421580 (=> res!1028478 e!1540629)))

(assert (=> b!2421580 (= res!1028478 (not (isEmpty!16397 (tail!3719 (ite c!386006 s!9460 call!147977)))))))

(declare-fun b!2421581 () Bool)

(assert (=> b!2421581 (= e!1540632 (nullable!2152 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117))))))

(declare-fun b!2421582 () Bool)

(assert (=> b!2421582 (= e!1540631 e!1540633)))

(declare-fun c!386058 () Bool)

(assert (=> b!2421582 (= c!386058 ((_ is EmptyLang!7117) (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117))))))

(declare-fun b!2421583 () Bool)

(declare-fun res!1028472 () Bool)

(assert (=> b!2421583 (=> (not res!1028472) (not e!1540628))))

(assert (=> b!2421583 (= res!1028472 (not call!147998))))

(declare-fun b!2421584 () Bool)

(assert (=> b!2421584 (= e!1540628 (= (head!5447 (ite c!386006 s!9460 call!147977)) (c!386007 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)))))))

(declare-fun b!2421585 () Bool)

(assert (=> b!2421585 (= e!1540632 (matchR!3234 (derivativeStep!1809 (ite c!386006 lt!875337 (Concat!11753 lt!875329 EmptyExpr!7117)) (head!5447 (ite c!386006 s!9460 call!147977))) (tail!3719 (ite c!386006 s!9460 call!147977))))))

(declare-fun b!2421586 () Bool)

(assert (=> b!2421586 (= e!1540633 (not lt!875371))))

(declare-fun b!2421587 () Bool)

(assert (=> b!2421587 (= e!1540634 e!1540630)))

(declare-fun res!1028477 () Bool)

(assert (=> b!2421587 (=> (not res!1028477) (not e!1540630))))

(assert (=> b!2421587 (= res!1028477 (not lt!875371))))

(declare-fun b!2421588 () Bool)

(declare-fun res!1028475 () Bool)

(assert (=> b!2421588 (=> res!1028475 e!1540634)))

(assert (=> b!2421588 (= res!1028475 e!1540628)))

(declare-fun res!1028479 () Bool)

(assert (=> b!2421588 (=> (not res!1028479) (not e!1540628))))

(assert (=> b!2421588 (= res!1028479 lt!875371)))

(declare-fun b!2421589 () Bool)

(assert (=> b!2421589 (= e!1540631 (= lt!875371 call!147998))))

(assert (= (and d!701917 c!386057) b!2421581))

(assert (= (and d!701917 (not c!386057)) b!2421585))

(assert (= (and d!701917 c!386059) b!2421589))

(assert (= (and d!701917 (not c!386059)) b!2421582))

(assert (= (and b!2421582 c!386058) b!2421586))

(assert (= (and b!2421582 (not c!386058)) b!2421576))

(assert (= (and b!2421576 (not res!1028474)) b!2421588))

(assert (= (and b!2421588 res!1028479) b!2421583))

(assert (= (and b!2421583 res!1028472) b!2421579))

(assert (= (and b!2421579 res!1028476) b!2421584))

(assert (= (and b!2421588 (not res!1028475)) b!2421587))

(assert (= (and b!2421587 res!1028477) b!2421577))

(assert (= (and b!2421577 (not res!1028473)) b!2421580))

(assert (= (and b!2421580 (not res!1028478)) b!2421578))

(assert (= (or b!2421589 b!2421577 b!2421583) bm!147993))

(declare-fun m!2808145 () Bool)

(assert (=> b!2421585 m!2808145))

(assert (=> b!2421585 m!2808145))

(declare-fun m!2808147 () Bool)

(assert (=> b!2421585 m!2808147))

(declare-fun m!2808149 () Bool)

(assert (=> b!2421585 m!2808149))

(assert (=> b!2421585 m!2808147))

(assert (=> b!2421585 m!2808149))

(declare-fun m!2808151 () Bool)

(assert (=> b!2421585 m!2808151))

(assert (=> b!2421580 m!2808149))

(assert (=> b!2421580 m!2808149))

(declare-fun m!2808153 () Bool)

(assert (=> b!2421580 m!2808153))

(declare-fun m!2808155 () Bool)

(assert (=> b!2421581 m!2808155))

(assert (=> b!2421578 m!2808145))

(declare-fun m!2808157 () Bool)

(assert (=> bm!147993 m!2808157))

(assert (=> b!2421584 m!2808145))

(assert (=> d!701917 m!2808157))

(declare-fun m!2808159 () Bool)

(assert (=> d!701917 m!2808159))

(assert (=> b!2421579 m!2808149))

(assert (=> b!2421579 m!2808149))

(assert (=> b!2421579 m!2808153))

(assert (=> bm!147972 d!701917))

(declare-fun d!701919 () Bool)

(assert (=> d!701919 (matchR!3234 (Concat!11753 lt!875329 EmptyExpr!7117) (++!7038 s!9460 Nil!28374))))

(declare-fun lt!875378 () Unit!41561)

(declare-fun choose!14332 (Regex!7117 Regex!7117 List!28472 List!28472) Unit!41561)

(assert (=> d!701919 (= lt!875378 (choose!14332 lt!875329 EmptyExpr!7117 s!9460 Nil!28374))))

(declare-fun e!1540650 () Bool)

(assert (=> d!701919 e!1540650))

(declare-fun res!1028489 () Bool)

(assert (=> d!701919 (=> (not res!1028489) (not e!1540650))))

(assert (=> d!701919 (= res!1028489 (validRegex!2837 lt!875329))))

(assert (=> d!701919 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!92 lt!875329 EmptyExpr!7117 s!9460 Nil!28374) lt!875378)))

(declare-fun b!2421611 () Bool)

(assert (=> b!2421611 (= e!1540650 (validRegex!2837 EmptyExpr!7117))))

(assert (= (and d!701919 res!1028489) b!2421611))

(declare-fun m!2808173 () Bool)

(assert (=> d!701919 m!2808173))

(assert (=> d!701919 m!2808173))

(declare-fun m!2808175 () Bool)

(assert (=> d!701919 m!2808175))

(declare-fun m!2808177 () Bool)

(assert (=> d!701919 m!2808177))

(assert (=> d!701919 m!2808069))

(declare-fun m!2808179 () Bool)

(assert (=> b!2421611 m!2808179))

(assert (=> b!2421358 d!701919))

(declare-fun b!2421612 () Bool)

(declare-fun res!1028492 () Bool)

(declare-fun e!1540657 () Bool)

(assert (=> b!2421612 (=> res!1028492 e!1540657)))

(assert (=> b!2421612 (= res!1028492 (not ((_ is ElementMatch!7117) lt!875337)))))

(declare-fun e!1540656 () Bool)

(assert (=> b!2421612 (= e!1540656 e!1540657)))

(declare-fun d!701927 () Bool)

(declare-fun e!1540654 () Bool)

(assert (=> d!701927 e!1540654))

(declare-fun c!386068 () Bool)

(assert (=> d!701927 (= c!386068 ((_ is EmptyExpr!7117) lt!875337))))

(declare-fun lt!875379 () Bool)

(declare-fun e!1540655 () Bool)

(assert (=> d!701927 (= lt!875379 e!1540655)))

(declare-fun c!386066 () Bool)

(assert (=> d!701927 (= c!386066 (isEmpty!16397 call!147977))))

(assert (=> d!701927 (validRegex!2837 lt!875337)))

(assert (=> d!701927 (= (matchR!3234 lt!875337 call!147977) lt!875379)))

(declare-fun bm!147997 () Bool)

(declare-fun call!148002 () Bool)

(assert (=> bm!147997 (= call!148002 (isEmpty!16397 call!147977))))

(declare-fun b!2421613 () Bool)

(declare-fun e!1540653 () Bool)

(declare-fun e!1540652 () Bool)

(assert (=> b!2421613 (= e!1540653 e!1540652)))

(declare-fun res!1028491 () Bool)

(assert (=> b!2421613 (=> res!1028491 e!1540652)))

(assert (=> b!2421613 (= res!1028491 call!148002)))

(declare-fun b!2421614 () Bool)

(assert (=> b!2421614 (= e!1540652 (not (= (head!5447 call!147977) (c!386007 lt!875337))))))

(declare-fun b!2421615 () Bool)

(declare-fun res!1028494 () Bool)

(declare-fun e!1540651 () Bool)

(assert (=> b!2421615 (=> (not res!1028494) (not e!1540651))))

(assert (=> b!2421615 (= res!1028494 (isEmpty!16397 (tail!3719 call!147977)))))

(declare-fun b!2421616 () Bool)

(declare-fun res!1028496 () Bool)

(assert (=> b!2421616 (=> res!1028496 e!1540652)))

(assert (=> b!2421616 (= res!1028496 (not (isEmpty!16397 (tail!3719 call!147977))))))

(declare-fun b!2421617 () Bool)

(assert (=> b!2421617 (= e!1540655 (nullable!2152 lt!875337))))

(declare-fun b!2421618 () Bool)

(assert (=> b!2421618 (= e!1540654 e!1540656)))

(declare-fun c!386067 () Bool)

(assert (=> b!2421618 (= c!386067 ((_ is EmptyLang!7117) lt!875337))))

(declare-fun b!2421619 () Bool)

(declare-fun res!1028490 () Bool)

(assert (=> b!2421619 (=> (not res!1028490) (not e!1540651))))

(assert (=> b!2421619 (= res!1028490 (not call!148002))))

(declare-fun b!2421620 () Bool)

(assert (=> b!2421620 (= e!1540651 (= (head!5447 call!147977) (c!386007 lt!875337)))))

(declare-fun b!2421621 () Bool)

(assert (=> b!2421621 (= e!1540655 (matchR!3234 (derivativeStep!1809 lt!875337 (head!5447 call!147977)) (tail!3719 call!147977)))))

(declare-fun b!2421622 () Bool)

(assert (=> b!2421622 (= e!1540656 (not lt!875379))))

(declare-fun b!2421623 () Bool)

(assert (=> b!2421623 (= e!1540657 e!1540653)))

(declare-fun res!1028495 () Bool)

(assert (=> b!2421623 (=> (not res!1028495) (not e!1540653))))

(assert (=> b!2421623 (= res!1028495 (not lt!875379))))

(declare-fun b!2421624 () Bool)

(declare-fun res!1028493 () Bool)

(assert (=> b!2421624 (=> res!1028493 e!1540657)))

(assert (=> b!2421624 (= res!1028493 e!1540651)))

(declare-fun res!1028497 () Bool)

(assert (=> b!2421624 (=> (not res!1028497) (not e!1540651))))

(assert (=> b!2421624 (= res!1028497 lt!875379)))

(declare-fun b!2421625 () Bool)

(assert (=> b!2421625 (= e!1540654 (= lt!875379 call!148002))))

(assert (= (and d!701927 c!386066) b!2421617))

(assert (= (and d!701927 (not c!386066)) b!2421621))

(assert (= (and d!701927 c!386068) b!2421625))

(assert (= (and d!701927 (not c!386068)) b!2421618))

(assert (= (and b!2421618 c!386067) b!2421622))

(assert (= (and b!2421618 (not c!386067)) b!2421612))

(assert (= (and b!2421612 (not res!1028492)) b!2421624))

(assert (= (and b!2421624 res!1028497) b!2421619))

(assert (= (and b!2421619 res!1028490) b!2421615))

(assert (= (and b!2421615 res!1028494) b!2421620))

(assert (= (and b!2421624 (not res!1028493)) b!2421623))

(assert (= (and b!2421623 res!1028495) b!2421613))

(assert (= (and b!2421613 (not res!1028491)) b!2421616))

(assert (= (and b!2421616 (not res!1028496)) b!2421614))

(assert (= (or b!2421625 b!2421613 b!2421619) bm!147997))

(declare-fun m!2808199 () Bool)

(assert (=> b!2421621 m!2808199))

(assert (=> b!2421621 m!2808199))

(declare-fun m!2808201 () Bool)

(assert (=> b!2421621 m!2808201))

(declare-fun m!2808203 () Bool)

(assert (=> b!2421621 m!2808203))

(assert (=> b!2421621 m!2808201))

(assert (=> b!2421621 m!2808203))

(declare-fun m!2808205 () Bool)

(assert (=> b!2421621 m!2808205))

(assert (=> b!2421616 m!2808203))

(assert (=> b!2421616 m!2808203))

(declare-fun m!2808207 () Bool)

(assert (=> b!2421616 m!2808207))

(declare-fun m!2808209 () Bool)

(assert (=> b!2421617 m!2808209))

(assert (=> b!2421614 m!2808199))

(declare-fun m!2808211 () Bool)

(assert (=> bm!147997 m!2808211))

(assert (=> b!2421620 m!2808199))

(assert (=> d!701927 m!2808211))

(declare-fun m!2808213 () Bool)

(assert (=> d!701927 m!2808213))

(assert (=> b!2421615 m!2808203))

(assert (=> b!2421615 m!2808203))

(assert (=> b!2421615 m!2808207))

(assert (=> b!2421358 d!701927))

(declare-fun d!701931 () Bool)

(assert (=> d!701931 (isDefined!4444 (findConcatSeparation!726 lt!875329 EmptyExpr!7117 Nil!28374 s!9460 s!9460))))

(declare-fun lt!875384 () Unit!41561)

(declare-fun choose!14334 (Regex!7117 Regex!7117 List!28472) Unit!41561)

(assert (=> d!701931 (= lt!875384 (choose!14334 lt!875329 EmptyExpr!7117 s!9460))))

(assert (=> d!701931 (validRegex!2837 lt!875329)))

(assert (=> d!701931 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!66 lt!875329 EmptyExpr!7117 s!9460) lt!875384)))

(declare-fun bs!463751 () Bool)

(assert (= bs!463751 d!701931))

(assert (=> bs!463751 m!2808001))

(assert (=> bs!463751 m!2808001))

(declare-fun m!2808249 () Bool)

(assert (=> bs!463751 m!2808249))

(declare-fun m!2808251 () Bool)

(assert (=> bs!463751 m!2808251))

(assert (=> bs!463751 m!2808069))

(assert (=> b!2421358 d!701931))

(declare-fun d!701939 () Bool)

(declare-fun isEmpty!16399 (Option!5618) Bool)

(assert (=> d!701939 (= (isDefined!4444 (ite c!386006 call!147981 lt!875331)) (not (isEmpty!16399 (ite c!386006 call!147981 lt!875331))))))

(declare-fun bs!463752 () Bool)

(assert (= bs!463752 d!701939))

(declare-fun m!2808253 () Bool)

(assert (=> bs!463752 m!2808253))

(assert (=> bm!147977 d!701939))

(declare-fun e!1540693 () List!28472)

(declare-fun b!2421691 () Bool)

(assert (=> b!2421691 (= e!1540693 (Cons!28374 (h!33775 (ite c!386006 s!9460 (_1!16548 lt!875339))) (++!7038 (t!208449 (ite c!386006 s!9460 (_1!16548 lt!875339))) (ite c!386006 Nil!28374 (_2!16548 lt!875339)))))))

(declare-fun b!2421692 () Bool)

(declare-fun res!1028531 () Bool)

(declare-fun e!1540692 () Bool)

(assert (=> b!2421692 (=> (not res!1028531) (not e!1540692))))

(declare-fun lt!875387 () List!28472)

(declare-fun size!22241 (List!28472) Int)

(assert (=> b!2421692 (= res!1028531 (= (size!22241 lt!875387) (+ (size!22241 (ite c!386006 s!9460 (_1!16548 lt!875339))) (size!22241 (ite c!386006 Nil!28374 (_2!16548 lt!875339))))))))

(declare-fun b!2421690 () Bool)

(assert (=> b!2421690 (= e!1540693 (ite c!386006 Nil!28374 (_2!16548 lt!875339)))))

(declare-fun b!2421693 () Bool)

(assert (=> b!2421693 (= e!1540692 (or (not (= (ite c!386006 Nil!28374 (_2!16548 lt!875339)) Nil!28374)) (= lt!875387 (ite c!386006 s!9460 (_1!16548 lt!875339)))))))

(declare-fun d!701941 () Bool)

(assert (=> d!701941 e!1540692))

(declare-fun res!1028530 () Bool)

(assert (=> d!701941 (=> (not res!1028530) (not e!1540692))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3903 (List!28472) (InoxSet C!14392))

(assert (=> d!701941 (= res!1028530 (= (content!3903 lt!875387) ((_ map or) (content!3903 (ite c!386006 s!9460 (_1!16548 lt!875339))) (content!3903 (ite c!386006 Nil!28374 (_2!16548 lt!875339))))))))

(assert (=> d!701941 (= lt!875387 e!1540693)))

(declare-fun c!386085 () Bool)

(assert (=> d!701941 (= c!386085 ((_ is Nil!28374) (ite c!386006 s!9460 (_1!16548 lt!875339))))))

(assert (=> d!701941 (= (++!7038 (ite c!386006 s!9460 (_1!16548 lt!875339)) (ite c!386006 Nil!28374 (_2!16548 lt!875339))) lt!875387)))

(assert (= (and d!701941 c!386085) b!2421690))

(assert (= (and d!701941 (not c!386085)) b!2421691))

(assert (= (and d!701941 res!1028530) b!2421692))

(assert (= (and b!2421692 res!1028531) b!2421693))

(declare-fun m!2808255 () Bool)

(assert (=> b!2421691 m!2808255))

(declare-fun m!2808257 () Bool)

(assert (=> b!2421692 m!2808257))

(declare-fun m!2808259 () Bool)

(assert (=> b!2421692 m!2808259))

(declare-fun m!2808261 () Bool)

(assert (=> b!2421692 m!2808261))

(declare-fun m!2808263 () Bool)

(assert (=> d!701941 m!2808263))

(declare-fun m!2808265 () Bool)

(assert (=> d!701941 m!2808265))

(declare-fun m!2808267 () Bool)

(assert (=> d!701941 m!2808267))

(assert (=> bm!147973 d!701941))

(declare-fun d!701943 () Bool)

(assert (=> d!701943 (= (isEmpty!16395 l!9164) ((_ is Nil!28375) l!9164))))

(assert (=> b!2421359 d!701943))

(declare-fun bs!463754 () Bool)

(declare-fun d!701945 () Bool)

(assert (= bs!463754 (and d!701945 start!237184)))

(declare-fun lambda!91213 () Int)

(assert (=> bs!463754 (= lambda!91213 lambda!91199)))

(declare-fun b!2421733 () Bool)

(declare-fun e!1540719 () Bool)

(declare-fun lt!875390 () Regex!7117)

(declare-fun isConcat!172 (Regex!7117) Bool)

(assert (=> b!2421733 (= e!1540719 (isConcat!172 lt!875390))))

(declare-fun b!2421734 () Bool)

(declare-fun e!1540718 () Regex!7117)

(assert (=> b!2421734 (= e!1540718 (Concat!11753 (h!33776 lt!875332) (generalisedConcat!218 (t!208450 lt!875332))))))

(declare-fun b!2421735 () Bool)

(declare-fun e!1540717 () Bool)

(assert (=> b!2421735 (= e!1540717 e!1540719)))

(declare-fun c!386099 () Bool)

(assert (=> b!2421735 (= c!386099 (isEmpty!16395 (tail!3717 lt!875332)))))

(declare-fun b!2421736 () Bool)

(declare-fun isEmptyExpr!172 (Regex!7117) Bool)

(assert (=> b!2421736 (= e!1540717 (isEmptyExpr!172 lt!875390))))

(declare-fun b!2421737 () Bool)

(declare-fun e!1540715 () Bool)

(assert (=> b!2421737 (= e!1540715 e!1540717)))

(declare-fun c!386100 () Bool)

(assert (=> b!2421737 (= c!386100 (isEmpty!16395 lt!875332))))

(declare-fun b!2421738 () Bool)

(assert (=> b!2421738 (= e!1540718 EmptyExpr!7117)))

(declare-fun b!2421739 () Bool)

(declare-fun e!1540716 () Bool)

(assert (=> b!2421739 (= e!1540716 (isEmpty!16395 (t!208450 lt!875332)))))

(assert (=> d!701945 e!1540715))

(declare-fun res!1028543 () Bool)

(assert (=> d!701945 (=> (not res!1028543) (not e!1540715))))

(assert (=> d!701945 (= res!1028543 (validRegex!2837 lt!875390))))

(declare-fun e!1540720 () Regex!7117)

(assert (=> d!701945 (= lt!875390 e!1540720)))

(declare-fun c!386101 () Bool)

(assert (=> d!701945 (= c!386101 e!1540716)))

(declare-fun res!1028544 () Bool)

(assert (=> d!701945 (=> (not res!1028544) (not e!1540716))))

(assert (=> d!701945 (= res!1028544 ((_ is Cons!28375) lt!875332))))

(assert (=> d!701945 (forall!5751 lt!875332 lambda!91213)))

(assert (=> d!701945 (= (generalisedConcat!218 lt!875332) lt!875390)))

(declare-fun b!2421740 () Bool)

(assert (=> b!2421740 (= e!1540719 (= lt!875390 (head!5445 lt!875332)))))

(declare-fun b!2421741 () Bool)

(assert (=> b!2421741 (= e!1540720 e!1540718)))

(declare-fun c!386098 () Bool)

(assert (=> b!2421741 (= c!386098 ((_ is Cons!28375) lt!875332))))

(declare-fun b!2421742 () Bool)

(assert (=> b!2421742 (= e!1540720 (h!33776 lt!875332))))

(assert (= (and d!701945 res!1028544) b!2421739))

(assert (= (and d!701945 c!386101) b!2421742))

(assert (= (and d!701945 (not c!386101)) b!2421741))

(assert (= (and b!2421741 c!386098) b!2421734))

(assert (= (and b!2421741 (not c!386098)) b!2421738))

(assert (= (and d!701945 res!1028543) b!2421737))

(assert (= (and b!2421737 c!386100) b!2421736))

(assert (= (and b!2421737 (not c!386100)) b!2421735))

(assert (= (and b!2421735 c!386099) b!2421740))

(assert (= (and b!2421735 (not c!386099)) b!2421733))

(declare-fun m!2808275 () Bool)

(assert (=> b!2421739 m!2808275))

(assert (=> b!2421737 m!2807977))

(declare-fun m!2808277 () Bool)

(assert (=> d!701945 m!2808277))

(declare-fun m!2808279 () Bool)

(assert (=> d!701945 m!2808279))

(declare-fun m!2808281 () Bool)

(assert (=> b!2421740 m!2808281))

(declare-fun m!2808283 () Bool)

(assert (=> b!2421734 m!2808283))

(declare-fun m!2808285 () Bool)

(assert (=> b!2421736 m!2808285))

(declare-fun m!2808287 () Bool)

(assert (=> b!2421733 m!2808287))

(declare-fun m!2808289 () Bool)

(assert (=> b!2421735 m!2808289))

(assert (=> b!2421735 m!2808289))

(declare-fun m!2808291 () Bool)

(assert (=> b!2421735 m!2808291))

(assert (=> b!2421351 d!701945))

(declare-fun b!2421761 () Bool)

(declare-fun e!1540741 () Bool)

(declare-fun e!1540738 () Bool)

(assert (=> b!2421761 (= e!1540741 e!1540738)))

(declare-fun res!1028558 () Bool)

(assert (=> b!2421761 (=> (not res!1028558) (not e!1540738))))

(declare-fun call!148019 () Bool)

(assert (=> b!2421761 (= res!1028558 call!148019)))

(declare-fun b!2421762 () Bool)

(declare-fun res!1028556 () Bool)

(assert (=> b!2421762 (=> res!1028556 e!1540741)))

(assert (=> b!2421762 (= res!1028556 (not ((_ is Concat!11753) lt!875335)))))

(declare-fun e!1540735 () Bool)

(assert (=> b!2421762 (= e!1540735 e!1540741)))

(declare-fun d!701949 () Bool)

(declare-fun res!1028555 () Bool)

(declare-fun e!1540740 () Bool)

(assert (=> d!701949 (=> res!1028555 e!1540740)))

(assert (=> d!701949 (= res!1028555 ((_ is ElementMatch!7117) lt!875335))))

(assert (=> d!701949 (= (validRegex!2837 lt!875335) e!1540740)))

(declare-fun b!2421763 () Bool)

(declare-fun e!1540739 () Bool)

(declare-fun e!1540737 () Bool)

(assert (=> b!2421763 (= e!1540739 e!1540737)))

(declare-fun res!1028557 () Bool)

(assert (=> b!2421763 (= res!1028557 (not (nullable!2152 (reg!7446 lt!875335))))))

(assert (=> b!2421763 (=> (not res!1028557) (not e!1540737))))

(declare-fun call!148017 () Bool)

(declare-fun c!386107 () Bool)

(declare-fun c!386106 () Bool)

(declare-fun bm!148012 () Bool)

(assert (=> bm!148012 (= call!148017 (validRegex!2837 (ite c!386106 (reg!7446 lt!875335) (ite c!386107 (regTwo!14747 lt!875335) (regOne!14746 lt!875335)))))))

(declare-fun b!2421764 () Bool)

(assert (=> b!2421764 (= e!1540737 call!148017)))

(declare-fun b!2421765 () Bool)

(assert (=> b!2421765 (= e!1540739 e!1540735)))

(assert (=> b!2421765 (= c!386107 ((_ is Union!7117) lt!875335))))

(declare-fun b!2421766 () Bool)

(assert (=> b!2421766 (= e!1540740 e!1540739)))

(assert (=> b!2421766 (= c!386106 ((_ is Star!7117) lt!875335))))

(declare-fun b!2421767 () Bool)

(declare-fun res!1028559 () Bool)

(declare-fun e!1540736 () Bool)

(assert (=> b!2421767 (=> (not res!1028559) (not e!1540736))))

(declare-fun call!148018 () Bool)

(assert (=> b!2421767 (= res!1028559 call!148018)))

(assert (=> b!2421767 (= e!1540735 e!1540736)))

(declare-fun bm!148013 () Bool)

(assert (=> bm!148013 (= call!148019 call!148017)))

(declare-fun b!2421768 () Bool)

(assert (=> b!2421768 (= e!1540738 call!148018)))

(declare-fun bm!148014 () Bool)

(assert (=> bm!148014 (= call!148018 (validRegex!2837 (ite c!386107 (regOne!14747 lt!875335) (regTwo!14746 lt!875335))))))

(declare-fun b!2421769 () Bool)

(assert (=> b!2421769 (= e!1540736 call!148019)))

(assert (= (and d!701949 (not res!1028555)) b!2421766))

(assert (= (and b!2421766 c!386106) b!2421763))

(assert (= (and b!2421766 (not c!386106)) b!2421765))

(assert (= (and b!2421763 res!1028557) b!2421764))

(assert (= (and b!2421765 c!386107) b!2421767))

(assert (= (and b!2421765 (not c!386107)) b!2421762))

(assert (= (and b!2421767 res!1028559) b!2421769))

(assert (= (and b!2421762 (not res!1028556)) b!2421761))

(assert (= (and b!2421761 res!1028558) b!2421768))

(assert (= (or b!2421767 b!2421768) bm!148014))

(assert (= (or b!2421769 b!2421761) bm!148013))

(assert (= (or b!2421764 bm!148013) bm!148012))

(declare-fun m!2808295 () Bool)

(assert (=> b!2421763 m!2808295))

(declare-fun m!2808297 () Bool)

(assert (=> bm!148012 m!2808297))

(declare-fun m!2808299 () Bool)

(assert (=> bm!148014 m!2808299))

(assert (=> b!2421361 d!701949))

(declare-fun b!2421770 () Bool)

(declare-fun res!1028562 () Bool)

(declare-fun e!1540748 () Bool)

(assert (=> b!2421770 (=> res!1028562 e!1540748)))

(assert (=> b!2421770 (= res!1028562 (not ((_ is ElementMatch!7117) r!13927)))))

(declare-fun e!1540747 () Bool)

(assert (=> b!2421770 (= e!1540747 e!1540748)))

(declare-fun d!701953 () Bool)

(declare-fun e!1540745 () Bool)

(assert (=> d!701953 e!1540745))

(declare-fun c!386110 () Bool)

(assert (=> d!701953 (= c!386110 ((_ is EmptyExpr!7117) r!13927))))

(declare-fun lt!875394 () Bool)

(declare-fun e!1540746 () Bool)

(assert (=> d!701953 (= lt!875394 e!1540746)))

(declare-fun c!386108 () Bool)

(assert (=> d!701953 (= c!386108 (isEmpty!16397 s!9460))))

(assert (=> d!701953 (validRegex!2837 r!13927)))

(assert (=> d!701953 (= (matchR!3234 r!13927 s!9460) lt!875394)))

(declare-fun bm!148015 () Bool)

(declare-fun call!148020 () Bool)

(assert (=> bm!148015 (= call!148020 (isEmpty!16397 s!9460))))

(declare-fun b!2421771 () Bool)

(declare-fun e!1540744 () Bool)

(declare-fun e!1540743 () Bool)

(assert (=> b!2421771 (= e!1540744 e!1540743)))

(declare-fun res!1028561 () Bool)

(assert (=> b!2421771 (=> res!1028561 e!1540743)))

(assert (=> b!2421771 (= res!1028561 call!148020)))

(declare-fun b!2421772 () Bool)

(assert (=> b!2421772 (= e!1540743 (not (= (head!5447 s!9460) (c!386007 r!13927))))))

(declare-fun b!2421773 () Bool)

(declare-fun res!1028564 () Bool)

(declare-fun e!1540742 () Bool)

(assert (=> b!2421773 (=> (not res!1028564) (not e!1540742))))

(assert (=> b!2421773 (= res!1028564 (isEmpty!16397 (tail!3719 s!9460)))))

(declare-fun b!2421774 () Bool)

(declare-fun res!1028566 () Bool)

(assert (=> b!2421774 (=> res!1028566 e!1540743)))

(assert (=> b!2421774 (= res!1028566 (not (isEmpty!16397 (tail!3719 s!9460))))))

(declare-fun b!2421775 () Bool)

(assert (=> b!2421775 (= e!1540746 (nullable!2152 r!13927))))

(declare-fun b!2421776 () Bool)

(assert (=> b!2421776 (= e!1540745 e!1540747)))

(declare-fun c!386109 () Bool)

(assert (=> b!2421776 (= c!386109 ((_ is EmptyLang!7117) r!13927))))

(declare-fun b!2421777 () Bool)

(declare-fun res!1028560 () Bool)

(assert (=> b!2421777 (=> (not res!1028560) (not e!1540742))))

(assert (=> b!2421777 (= res!1028560 (not call!148020))))

(declare-fun b!2421778 () Bool)

(assert (=> b!2421778 (= e!1540742 (= (head!5447 s!9460) (c!386007 r!13927)))))

(declare-fun b!2421779 () Bool)

(assert (=> b!2421779 (= e!1540746 (matchR!3234 (derivativeStep!1809 r!13927 (head!5447 s!9460)) (tail!3719 s!9460)))))

(declare-fun b!2421780 () Bool)

(assert (=> b!2421780 (= e!1540747 (not lt!875394))))

(declare-fun b!2421781 () Bool)

(assert (=> b!2421781 (= e!1540748 e!1540744)))

(declare-fun res!1028565 () Bool)

(assert (=> b!2421781 (=> (not res!1028565) (not e!1540744))))

(assert (=> b!2421781 (= res!1028565 (not lt!875394))))

(declare-fun b!2421782 () Bool)

(declare-fun res!1028563 () Bool)

(assert (=> b!2421782 (=> res!1028563 e!1540748)))

(assert (=> b!2421782 (= res!1028563 e!1540742)))

(declare-fun res!1028567 () Bool)

(assert (=> b!2421782 (=> (not res!1028567) (not e!1540742))))

(assert (=> b!2421782 (= res!1028567 lt!875394)))

(declare-fun b!2421783 () Bool)

(assert (=> b!2421783 (= e!1540745 (= lt!875394 call!148020))))

(assert (= (and d!701953 c!386108) b!2421775))

(assert (= (and d!701953 (not c!386108)) b!2421779))

(assert (= (and d!701953 c!386110) b!2421783))

(assert (= (and d!701953 (not c!386110)) b!2421776))

(assert (= (and b!2421776 c!386109) b!2421780))

(assert (= (and b!2421776 (not c!386109)) b!2421770))

(assert (= (and b!2421770 (not res!1028562)) b!2421782))

(assert (= (and b!2421782 res!1028567) b!2421777))

(assert (= (and b!2421777 res!1028560) b!2421773))

(assert (= (and b!2421773 res!1028564) b!2421778))

(assert (= (and b!2421782 (not res!1028563)) b!2421781))

(assert (= (and b!2421781 res!1028565) b!2421771))

(assert (= (and b!2421771 (not res!1028561)) b!2421774))

(assert (= (and b!2421774 (not res!1028566)) b!2421772))

(assert (= (or b!2421783 b!2421771 b!2421777) bm!148015))

(assert (=> b!2421779 m!2808129))

(assert (=> b!2421779 m!2808129))

(declare-fun m!2808301 () Bool)

(assert (=> b!2421779 m!2808301))

(assert (=> b!2421779 m!2808133))

(assert (=> b!2421779 m!2808301))

(assert (=> b!2421779 m!2808133))

(declare-fun m!2808303 () Bool)

(assert (=> b!2421779 m!2808303))

(assert (=> b!2421774 m!2808133))

(assert (=> b!2421774 m!2808133))

(assert (=> b!2421774 m!2808137))

(declare-fun m!2808305 () Bool)

(assert (=> b!2421775 m!2808305))

(assert (=> b!2421772 m!2808129))

(assert (=> bm!148015 m!2808141))

(assert (=> b!2421778 m!2808129))

(assert (=> d!701953 m!2808141))

(declare-fun m!2808307 () Bool)

(assert (=> d!701953 m!2808307))

(assert (=> b!2421773 m!2808133))

(assert (=> b!2421773 m!2808133))

(assert (=> b!2421773 m!2808137))

(assert (=> b!2421360 d!701953))

(declare-fun b!2421874 () Bool)

(assert (=> b!2421874 true))

(assert (=> b!2421874 true))

(declare-fun bs!463756 () Bool)

(declare-fun b!2421871 () Bool)

(assert (= bs!463756 (and b!2421871 b!2421874)))

(declare-fun lambda!91219 () Int)

(declare-fun lambda!91218 () Int)

(assert (=> bs!463756 (not (= lambda!91219 lambda!91218))))

(assert (=> b!2421871 true))

(assert (=> b!2421871 true))

(declare-fun b!2421870 () Bool)

(declare-fun e!1540798 () Bool)

(declare-fun e!1540802 () Bool)

(assert (=> b!2421870 (= e!1540798 e!1540802)))

(declare-fun res!1028616 () Bool)

(assert (=> b!2421870 (= res!1028616 (not ((_ is EmptyLang!7117) r!13927)))))

(assert (=> b!2421870 (=> (not res!1028616) (not e!1540802))))

(declare-fun d!701955 () Bool)

(declare-fun c!386134 () Bool)

(assert (=> d!701955 (= c!386134 ((_ is EmptyExpr!7117) r!13927))))

(assert (=> d!701955 (= (matchRSpec!966 r!13927 s!9460) e!1540798)))

(declare-fun e!1540796 () Bool)

(declare-fun call!148026 () Bool)

(assert (=> b!2421871 (= e!1540796 call!148026)))

(declare-fun b!2421872 () Bool)

(declare-fun e!1540800 () Bool)

(assert (=> b!2421872 (= e!1540800 (matchRSpec!966 (regTwo!14747 r!13927) s!9460))))

(declare-fun b!2421873 () Bool)

(declare-fun res!1028614 () Bool)

(declare-fun e!1540801 () Bool)

(assert (=> b!2421873 (=> res!1028614 e!1540801)))

(declare-fun call!148027 () Bool)

(assert (=> b!2421873 (= res!1028614 call!148027)))

(assert (=> b!2421873 (= e!1540796 e!1540801)))

(assert (=> b!2421874 (= e!1540801 call!148026)))

(declare-fun bm!148021 () Bool)

(assert (=> bm!148021 (= call!148027 (isEmpty!16397 s!9460))))

(declare-fun b!2421875 () Bool)

(declare-fun c!386132 () Bool)

(assert (=> b!2421875 (= c!386132 ((_ is ElementMatch!7117) r!13927))))

(declare-fun e!1540797 () Bool)

(assert (=> b!2421875 (= e!1540802 e!1540797)))

(declare-fun b!2421876 () Bool)

(assert (=> b!2421876 (= e!1540797 (= s!9460 (Cons!28374 (c!386007 r!13927) Nil!28374)))))

(declare-fun b!2421877 () Bool)

(declare-fun e!1540799 () Bool)

(assert (=> b!2421877 (= e!1540799 e!1540800)))

(declare-fun res!1028615 () Bool)

(assert (=> b!2421877 (= res!1028615 (matchRSpec!966 (regOne!14747 r!13927) s!9460))))

(assert (=> b!2421877 (=> res!1028615 e!1540800)))

(declare-fun b!2421878 () Bool)

(assert (=> b!2421878 (= e!1540798 call!148027)))

(declare-fun b!2421879 () Bool)

(assert (=> b!2421879 (= e!1540799 e!1540796)))

(declare-fun c!386133 () Bool)

(assert (=> b!2421879 (= c!386133 ((_ is Star!7117) r!13927))))

(declare-fun b!2421880 () Bool)

(declare-fun c!386131 () Bool)

(assert (=> b!2421880 (= c!386131 ((_ is Union!7117) r!13927))))

(assert (=> b!2421880 (= e!1540797 e!1540799)))

(declare-fun bm!148022 () Bool)

(declare-fun Exists!1157 (Int) Bool)

(assert (=> bm!148022 (= call!148026 (Exists!1157 (ite c!386133 lambda!91218 lambda!91219)))))

(assert (= (and d!701955 c!386134) b!2421878))

(assert (= (and d!701955 (not c!386134)) b!2421870))

(assert (= (and b!2421870 res!1028616) b!2421875))

(assert (= (and b!2421875 c!386132) b!2421876))

(assert (= (and b!2421875 (not c!386132)) b!2421880))

(assert (= (and b!2421880 c!386131) b!2421877))

(assert (= (and b!2421880 (not c!386131)) b!2421879))

(assert (= (and b!2421877 (not res!1028615)) b!2421872))

(assert (= (and b!2421879 c!386133) b!2421873))

(assert (= (and b!2421879 (not c!386133)) b!2421871))

(assert (= (and b!2421873 (not res!1028614)) b!2421874))

(assert (= (or b!2421874 b!2421871) bm!148022))

(assert (= (or b!2421878 b!2421873) bm!148021))

(declare-fun m!2808365 () Bool)

(assert (=> b!2421872 m!2808365))

(assert (=> bm!148021 m!2808141))

(declare-fun m!2808367 () Bool)

(assert (=> b!2421877 m!2808367))

(declare-fun m!2808369 () Bool)

(assert (=> bm!148022 m!2808369))

(assert (=> b!2421360 d!701955))

(declare-fun d!701969 () Bool)

(assert (=> d!701969 (= (matchR!3234 r!13927 s!9460) (matchRSpec!966 r!13927 s!9460))))

(declare-fun lt!875411 () Unit!41561)

(declare-fun choose!14336 (Regex!7117 List!28472) Unit!41561)

(assert (=> d!701969 (= lt!875411 (choose!14336 r!13927 s!9460))))

(assert (=> d!701969 (validRegex!2837 r!13927)))

(assert (=> d!701969 (= (mainMatchTheorem!966 r!13927 s!9460) lt!875411)))

(declare-fun bs!463758 () Bool)

(assert (= bs!463758 d!701969))

(assert (=> bs!463758 m!2807969))

(assert (=> bs!463758 m!2807971))

(declare-fun m!2808371 () Bool)

(assert (=> bs!463758 m!2808371))

(assert (=> bs!463758 m!2808307))

(assert (=> b!2421360 d!701969))

(declare-fun b!2421930 () Bool)

(declare-fun e!1540819 () Option!5618)

(assert (=> b!2421930 (= e!1540819 (Some!5617 (tuple2!28015 Nil!28374 s!9460)))))

(declare-fun b!2421931 () Bool)

(declare-fun res!1028621 () Bool)

(declare-fun e!1540821 () Bool)

(assert (=> b!2421931 (=> (not res!1028621) (not e!1540821))))

(declare-fun lt!875413 () Option!5618)

(assert (=> b!2421931 (= res!1028621 (matchR!3234 lt!875342 (_2!16548 (get!8728 lt!875413))))))

(declare-fun b!2421932 () Bool)

(declare-fun res!1028620 () Bool)

(assert (=> b!2421932 (=> (not res!1028620) (not e!1540821))))

(assert (=> b!2421932 (= res!1028620 (matchR!3234 lt!875329 (_1!16548 (get!8728 lt!875413))))))

(declare-fun b!2421933 () Bool)

(declare-fun e!1540818 () Bool)

(assert (=> b!2421933 (= e!1540818 (not (isDefined!4444 lt!875413)))))

(declare-fun b!2421934 () Bool)

(declare-fun e!1540820 () Option!5618)

(assert (=> b!2421934 (= e!1540819 e!1540820)))

(declare-fun c!386136 () Bool)

(assert (=> b!2421934 (= c!386136 ((_ is Nil!28374) s!9460))))

(declare-fun b!2421935 () Bool)

(declare-fun e!1540817 () Bool)

(assert (=> b!2421935 (= e!1540817 (matchR!3234 lt!875342 s!9460))))

(declare-fun b!2421936 () Bool)

(assert (=> b!2421936 (= e!1540821 (= (++!7038 (_1!16548 (get!8728 lt!875413)) (_2!16548 (get!8728 lt!875413))) s!9460))))

(declare-fun b!2421937 () Bool)

(assert (=> b!2421937 (= e!1540820 None!5617)))

(declare-fun b!2421929 () Bool)

(declare-fun lt!875412 () Unit!41561)

(declare-fun lt!875414 () Unit!41561)

(assert (=> b!2421929 (= lt!875412 lt!875414)))

(assert (=> b!2421929 (= (++!7038 (++!7038 Nil!28374 (Cons!28374 (h!33775 s!9460) Nil!28374)) (t!208449 s!9460)) s!9460)))

(assert (=> b!2421929 (= lt!875414 (lemmaMoveElementToOtherListKeepsConcatEq!663 Nil!28374 (h!33775 s!9460) (t!208449 s!9460) s!9460))))

(assert (=> b!2421929 (= e!1540820 (findConcatSeparation!726 lt!875329 lt!875342 (++!7038 Nil!28374 (Cons!28374 (h!33775 s!9460) Nil!28374)) (t!208449 s!9460) s!9460))))

(declare-fun d!701973 () Bool)

(assert (=> d!701973 e!1540818))

(declare-fun res!1028618 () Bool)

(assert (=> d!701973 (=> res!1028618 e!1540818)))

(assert (=> d!701973 (= res!1028618 e!1540821)))

(declare-fun res!1028619 () Bool)

(assert (=> d!701973 (=> (not res!1028619) (not e!1540821))))

(assert (=> d!701973 (= res!1028619 (isDefined!4444 lt!875413))))

(assert (=> d!701973 (= lt!875413 e!1540819)))

(declare-fun c!386135 () Bool)

(assert (=> d!701973 (= c!386135 e!1540817)))

(declare-fun res!1028617 () Bool)

(assert (=> d!701973 (=> (not res!1028617) (not e!1540817))))

(assert (=> d!701973 (= res!1028617 (matchR!3234 lt!875329 Nil!28374))))

(assert (=> d!701973 (validRegex!2837 lt!875329)))

(assert (=> d!701973 (= (findConcatSeparation!726 lt!875329 lt!875342 Nil!28374 s!9460 s!9460) lt!875413)))

(assert (= (and d!701973 res!1028617) b!2421935))

(assert (= (and d!701973 c!386135) b!2421930))

(assert (= (and d!701973 (not c!386135)) b!2421934))

(assert (= (and b!2421934 c!386136) b!2421937))

(assert (= (and b!2421934 (not c!386136)) b!2421929))

(assert (= (and d!701973 res!1028619) b!2421932))

(assert (= (and b!2421932 res!1028620) b!2421931))

(assert (= (and b!2421931 res!1028621) b!2421936))

(assert (= (and d!701973 (not res!1028618)) b!2421933))

(declare-fun m!2808373 () Bool)

(assert (=> d!701973 m!2808373))

(assert (=> d!701973 m!2808067))

(assert (=> d!701973 m!2808069))

(declare-fun m!2808375 () Bool)

(assert (=> b!2421935 m!2808375))

(assert (=> b!2421933 m!2808373))

(declare-fun m!2808377 () Bool)

(assert (=> b!2421936 m!2808377))

(declare-fun m!2808379 () Bool)

(assert (=> b!2421936 m!2808379))

(assert (=> b!2421931 m!2808377))

(declare-fun m!2808381 () Bool)

(assert (=> b!2421931 m!2808381))

(assert (=> b!2421932 m!2808377))

(declare-fun m!2808383 () Bool)

(assert (=> b!2421932 m!2808383))

(assert (=> b!2421929 m!2808081))

(assert (=> b!2421929 m!2808081))

(assert (=> b!2421929 m!2808083))

(assert (=> b!2421929 m!2808085))

(assert (=> b!2421929 m!2808081))

(declare-fun m!2808385 () Bool)

(assert (=> b!2421929 m!2808385))

(assert (=> bm!147976 d!701973))

(declare-fun b!2421938 () Bool)

(declare-fun e!1540828 () Bool)

(declare-fun e!1540825 () Bool)

(assert (=> b!2421938 (= e!1540828 e!1540825)))

(declare-fun res!1028625 () Bool)

(assert (=> b!2421938 (=> (not res!1028625) (not e!1540825))))

(declare-fun call!148030 () Bool)

(assert (=> b!2421938 (= res!1028625 call!148030)))

(declare-fun b!2421939 () Bool)

(declare-fun res!1028623 () Bool)

(assert (=> b!2421939 (=> res!1028623 e!1540828)))

(assert (=> b!2421939 (= res!1028623 (not ((_ is Concat!11753) (h!33776 l!9164))))))

(declare-fun e!1540822 () Bool)

(assert (=> b!2421939 (= e!1540822 e!1540828)))

(declare-fun d!701975 () Bool)

(declare-fun res!1028622 () Bool)

(declare-fun e!1540827 () Bool)

(assert (=> d!701975 (=> res!1028622 e!1540827)))

(assert (=> d!701975 (= res!1028622 ((_ is ElementMatch!7117) (h!33776 l!9164)))))

(assert (=> d!701975 (= (validRegex!2837 (h!33776 l!9164)) e!1540827)))

(declare-fun b!2421940 () Bool)

(declare-fun e!1540826 () Bool)

(declare-fun e!1540824 () Bool)

(assert (=> b!2421940 (= e!1540826 e!1540824)))

(declare-fun res!1028624 () Bool)

(assert (=> b!2421940 (= res!1028624 (not (nullable!2152 (reg!7446 (h!33776 l!9164)))))))

(assert (=> b!2421940 (=> (not res!1028624) (not e!1540824))))

(declare-fun bm!148023 () Bool)

(declare-fun c!386137 () Bool)

(declare-fun c!386138 () Bool)

(declare-fun call!148028 () Bool)

(assert (=> bm!148023 (= call!148028 (validRegex!2837 (ite c!386137 (reg!7446 (h!33776 l!9164)) (ite c!386138 (regTwo!14747 (h!33776 l!9164)) (regOne!14746 (h!33776 l!9164))))))))

(declare-fun b!2421941 () Bool)

(assert (=> b!2421941 (= e!1540824 call!148028)))

(declare-fun b!2421942 () Bool)

(assert (=> b!2421942 (= e!1540826 e!1540822)))

(assert (=> b!2421942 (= c!386138 ((_ is Union!7117) (h!33776 l!9164)))))

(declare-fun b!2421943 () Bool)

(assert (=> b!2421943 (= e!1540827 e!1540826)))

(assert (=> b!2421943 (= c!386137 ((_ is Star!7117) (h!33776 l!9164)))))

(declare-fun b!2421944 () Bool)

(declare-fun res!1028626 () Bool)

(declare-fun e!1540823 () Bool)

(assert (=> b!2421944 (=> (not res!1028626) (not e!1540823))))

(declare-fun call!148029 () Bool)

(assert (=> b!2421944 (= res!1028626 call!148029)))

(assert (=> b!2421944 (= e!1540822 e!1540823)))

(declare-fun bm!148024 () Bool)

(assert (=> bm!148024 (= call!148030 call!148028)))

(declare-fun b!2421945 () Bool)

(assert (=> b!2421945 (= e!1540825 call!148029)))

(declare-fun bm!148025 () Bool)

(assert (=> bm!148025 (= call!148029 (validRegex!2837 (ite c!386138 (regOne!14747 (h!33776 l!9164)) (regTwo!14746 (h!33776 l!9164)))))))

(declare-fun b!2421946 () Bool)

(assert (=> b!2421946 (= e!1540823 call!148030)))

(assert (= (and d!701975 (not res!1028622)) b!2421943))

(assert (= (and b!2421943 c!386137) b!2421940))

(assert (= (and b!2421943 (not c!386137)) b!2421942))

(assert (= (and b!2421940 res!1028624) b!2421941))

(assert (= (and b!2421942 c!386138) b!2421944))

(assert (= (and b!2421942 (not c!386138)) b!2421939))

(assert (= (and b!2421944 res!1028626) b!2421946))

(assert (= (and b!2421939 (not res!1028623)) b!2421938))

(assert (= (and b!2421938 res!1028625) b!2421945))

(assert (= (or b!2421944 b!2421945) bm!148025))

(assert (= (or b!2421946 b!2421938) bm!148024))

(assert (= (or b!2421941 bm!148024) bm!148023))

(declare-fun m!2808387 () Bool)

(assert (=> b!2421940 m!2808387))

(declare-fun m!2808389 () Bool)

(assert (=> bm!148023 m!2808389))

(declare-fun m!2808391 () Bool)

(assert (=> bm!148025 m!2808391))

(assert (=> b!2421353 d!701975))

(declare-fun bs!463759 () Bool)

(declare-fun d!701977 () Bool)

(assert (= bs!463759 (and d!701977 start!237184)))

(declare-fun lambda!91220 () Int)

(assert (=> bs!463759 (= lambda!91220 lambda!91199)))

(declare-fun bs!463760 () Bool)

(assert (= bs!463760 (and d!701977 d!701945)))

(assert (=> bs!463760 (= lambda!91220 lambda!91213)))

(declare-fun b!2421947 () Bool)

(declare-fun e!1540833 () Bool)

(declare-fun lt!875415 () Regex!7117)

(assert (=> b!2421947 (= e!1540833 (isConcat!172 lt!875415))))

(declare-fun b!2421948 () Bool)

(declare-fun e!1540832 () Regex!7117)

(assert (=> b!2421948 (= e!1540832 (Concat!11753 (h!33776 (t!208450 l!9164)) (generalisedConcat!218 (t!208450 (t!208450 l!9164)))))))

(declare-fun b!2421949 () Bool)

(declare-fun e!1540831 () Bool)

(assert (=> b!2421949 (= e!1540831 e!1540833)))

(declare-fun c!386140 () Bool)

(assert (=> b!2421949 (= c!386140 (isEmpty!16395 (tail!3717 (t!208450 l!9164))))))

(declare-fun b!2421950 () Bool)

(assert (=> b!2421950 (= e!1540831 (isEmptyExpr!172 lt!875415))))

(declare-fun b!2421951 () Bool)

(declare-fun e!1540829 () Bool)

(assert (=> b!2421951 (= e!1540829 e!1540831)))

(declare-fun c!386141 () Bool)

(assert (=> b!2421951 (= c!386141 (isEmpty!16395 (t!208450 l!9164)))))

(declare-fun b!2421952 () Bool)

(assert (=> b!2421952 (= e!1540832 EmptyExpr!7117)))

(declare-fun b!2421953 () Bool)

(declare-fun e!1540830 () Bool)

(assert (=> b!2421953 (= e!1540830 (isEmpty!16395 (t!208450 (t!208450 l!9164))))))

(assert (=> d!701977 e!1540829))

(declare-fun res!1028627 () Bool)

(assert (=> d!701977 (=> (not res!1028627) (not e!1540829))))

(assert (=> d!701977 (= res!1028627 (validRegex!2837 lt!875415))))

(declare-fun e!1540834 () Regex!7117)

(assert (=> d!701977 (= lt!875415 e!1540834)))

(declare-fun c!386142 () Bool)

(assert (=> d!701977 (= c!386142 e!1540830)))

(declare-fun res!1028628 () Bool)

(assert (=> d!701977 (=> (not res!1028628) (not e!1540830))))

(assert (=> d!701977 (= res!1028628 ((_ is Cons!28375) (t!208450 l!9164)))))

(assert (=> d!701977 (forall!5751 (t!208450 l!9164) lambda!91220)))

(assert (=> d!701977 (= (generalisedConcat!218 (t!208450 l!9164)) lt!875415)))

(declare-fun b!2421954 () Bool)

(assert (=> b!2421954 (= e!1540833 (= lt!875415 (head!5445 (t!208450 l!9164))))))

(declare-fun b!2421955 () Bool)

(assert (=> b!2421955 (= e!1540834 e!1540832)))

(declare-fun c!386139 () Bool)

(assert (=> b!2421955 (= c!386139 ((_ is Cons!28375) (t!208450 l!9164)))))

(declare-fun b!2421956 () Bool)

(assert (=> b!2421956 (= e!1540834 (h!33776 (t!208450 l!9164)))))

(assert (= (and d!701977 res!1028628) b!2421953))

(assert (= (and d!701977 c!386142) b!2421956))

(assert (= (and d!701977 (not c!386142)) b!2421955))

(assert (= (and b!2421955 c!386139) b!2421948))

(assert (= (and b!2421955 (not c!386139)) b!2421952))

(assert (= (and d!701977 res!1028627) b!2421951))

(assert (= (and b!2421951 c!386141) b!2421950))

(assert (= (and b!2421951 (not c!386141)) b!2421949))

(assert (= (and b!2421949 c!386140) b!2421954))

(assert (= (and b!2421949 (not c!386140)) b!2421947))

(declare-fun m!2808393 () Bool)

(assert (=> b!2421953 m!2808393))

(declare-fun m!2808395 () Bool)

(assert (=> b!2421951 m!2808395))

(declare-fun m!2808397 () Bool)

(assert (=> d!701977 m!2808397))

(declare-fun m!2808399 () Bool)

(assert (=> d!701977 m!2808399))

(declare-fun m!2808401 () Bool)

(assert (=> b!2421954 m!2808401))

(declare-fun m!2808403 () Bool)

(assert (=> b!2421948 m!2808403))

(declare-fun m!2808405 () Bool)

(assert (=> b!2421950 m!2808405))

(declare-fun m!2808407 () Bool)

(assert (=> b!2421947 m!2808407))

(declare-fun m!2808409 () Bool)

(assert (=> b!2421949 m!2808409))

(assert (=> b!2421949 m!2808409))

(declare-fun m!2808411 () Bool)

(assert (=> b!2421949 m!2808411))

(assert (=> b!2421353 d!701977))

(declare-fun b!2421958 () Bool)

(declare-fun e!1540836 () List!28472)

(assert (=> b!2421958 (= e!1540836 (Cons!28374 (h!33775 Nil!28374) (++!7038 (t!208449 Nil!28374) s!9460)))))

(declare-fun b!2421959 () Bool)

(declare-fun res!1028630 () Bool)

(declare-fun e!1540835 () Bool)

(assert (=> b!2421959 (=> (not res!1028630) (not e!1540835))))

(declare-fun lt!875416 () List!28472)

(assert (=> b!2421959 (= res!1028630 (= (size!22241 lt!875416) (+ (size!22241 Nil!28374) (size!22241 s!9460))))))

(declare-fun b!2421957 () Bool)

(assert (=> b!2421957 (= e!1540836 s!9460)))

(declare-fun b!2421960 () Bool)

(assert (=> b!2421960 (= e!1540835 (or (not (= s!9460 Nil!28374)) (= lt!875416 Nil!28374)))))

(declare-fun d!701979 () Bool)

(assert (=> d!701979 e!1540835))

(declare-fun res!1028629 () Bool)

(assert (=> d!701979 (=> (not res!1028629) (not e!1540835))))

(assert (=> d!701979 (= res!1028629 (= (content!3903 lt!875416) ((_ map or) (content!3903 Nil!28374) (content!3903 s!9460))))))

(assert (=> d!701979 (= lt!875416 e!1540836)))

(declare-fun c!386143 () Bool)

(assert (=> d!701979 (= c!386143 ((_ is Nil!28374) Nil!28374))))

(assert (=> d!701979 (= (++!7038 Nil!28374 s!9460) lt!875416)))

(assert (= (and d!701979 c!386143) b!2421957))

(assert (= (and d!701979 (not c!386143)) b!2421958))

(assert (= (and d!701979 res!1028629) b!2421959))

(assert (= (and b!2421959 res!1028630) b!2421960))

(declare-fun m!2808413 () Bool)

(assert (=> b!2421958 m!2808413))

(declare-fun m!2808415 () Bool)

(assert (=> b!2421959 m!2808415))

(declare-fun m!2808417 () Bool)

(assert (=> b!2421959 m!2808417))

(declare-fun m!2808419 () Bool)

(assert (=> b!2421959 m!2808419))

(declare-fun m!2808421 () Bool)

(assert (=> d!701979 m!2808421))

(declare-fun m!2808423 () Bool)

(assert (=> d!701979 m!2808423))

(declare-fun m!2808425 () Bool)

(assert (=> d!701979 m!2808425))

(assert (=> b!2421370 d!701979))

(declare-fun d!701981 () Bool)

(assert (=> d!701981 (= (isDefined!4444 call!147979) (not (isEmpty!16399 call!147979)))))

(declare-fun bs!463761 () Bool)

(assert (= bs!463761 d!701981))

(declare-fun m!2808427 () Bool)

(assert (=> bs!463761 m!2808427))

(assert (=> bm!147974 d!701981))

(declare-fun d!701983 () Bool)

(assert (=> d!701983 (= (isEmpty!16395 lt!875332) ((_ is Nil!28375) lt!875332))))

(assert (=> b!2421362 d!701983))

(declare-fun d!701985 () Bool)

(assert (=> d!701985 (= (tail!3717 l!9164) (t!208450 l!9164))))

(assert (=> b!2421362 d!701985))

(declare-fun d!701987 () Bool)

(assert (=> d!701987 (matchR!3234 (Concat!11753 lt!875329 EmptyExpr!7117) (++!7038 (_1!16548 lt!875339) (_2!16548 lt!875339)))))

(declare-fun lt!875419 () Unit!41561)

(declare-fun choose!14337 (Regex!7117 Regex!7117 List!28472 List!28472 List!28472) Unit!41561)

(assert (=> d!701987 (= lt!875419 (choose!14337 lt!875329 EmptyExpr!7117 (_1!16548 lt!875339) (_2!16548 lt!875339) s!9460))))

(assert (=> d!701987 (validRegex!2837 lt!875329)))

(assert (=> d!701987 (= (lemmaFindSeparationIsDefinedThenConcatMatches!66 lt!875329 EmptyExpr!7117 (_1!16548 lt!875339) (_2!16548 lt!875339) s!9460) lt!875419)))

(declare-fun bs!463762 () Bool)

(assert (= bs!463762 d!701987))

(declare-fun m!2808429 () Bool)

(assert (=> bs!463762 m!2808429))

(assert (=> bs!463762 m!2808429))

(declare-fun m!2808431 () Bool)

(assert (=> bs!463762 m!2808431))

(declare-fun m!2808433 () Bool)

(assert (=> bs!463762 m!2808433))

(assert (=> bs!463762 m!2808069))

(assert (=> b!2421355 d!701987))

(declare-fun d!701989 () Bool)

(assert (=> d!701989 (= (get!8728 lt!875331) (v!31025 lt!875331))))

(assert (=> b!2421355 d!701989))

(declare-fun bs!463763 () Bool)

(declare-fun d!701991 () Bool)

(assert (= bs!463763 (and d!701991 start!237184)))

(declare-fun lambda!91221 () Int)

(assert (=> bs!463763 (= lambda!91221 lambda!91199)))

(declare-fun bs!463764 () Bool)

(assert (= bs!463764 (and d!701991 d!701945)))

(assert (=> bs!463764 (= lambda!91221 lambda!91213)))

(declare-fun bs!463765 () Bool)

(assert (= bs!463765 (and d!701991 d!701977)))

(assert (=> bs!463765 (= lambda!91221 lambda!91220)))

(declare-fun b!2421961 () Bool)

(declare-fun e!1540841 () Bool)

(declare-fun lt!875420 () Regex!7117)

(assert (=> b!2421961 (= e!1540841 (isConcat!172 lt!875420))))

(declare-fun b!2421962 () Bool)

(declare-fun e!1540840 () Regex!7117)

(assert (=> b!2421962 (= e!1540840 (Concat!11753 (h!33776 l!9164) (generalisedConcat!218 (t!208450 l!9164))))))

(declare-fun b!2421963 () Bool)

(declare-fun e!1540839 () Bool)

(assert (=> b!2421963 (= e!1540839 e!1540841)))

(declare-fun c!386145 () Bool)

(assert (=> b!2421963 (= c!386145 (isEmpty!16395 (tail!3717 l!9164)))))

(declare-fun b!2421964 () Bool)

(assert (=> b!2421964 (= e!1540839 (isEmptyExpr!172 lt!875420))))

(declare-fun b!2421965 () Bool)

(declare-fun e!1540837 () Bool)

(assert (=> b!2421965 (= e!1540837 e!1540839)))

(declare-fun c!386146 () Bool)

(assert (=> b!2421965 (= c!386146 (isEmpty!16395 l!9164))))

(declare-fun b!2421966 () Bool)

(assert (=> b!2421966 (= e!1540840 EmptyExpr!7117)))

(declare-fun b!2421967 () Bool)

(declare-fun e!1540838 () Bool)

(assert (=> b!2421967 (= e!1540838 (isEmpty!16395 (t!208450 l!9164)))))

(assert (=> d!701991 e!1540837))

(declare-fun res!1028631 () Bool)

(assert (=> d!701991 (=> (not res!1028631) (not e!1540837))))

(assert (=> d!701991 (= res!1028631 (validRegex!2837 lt!875420))))

(declare-fun e!1540842 () Regex!7117)

(assert (=> d!701991 (= lt!875420 e!1540842)))

(declare-fun c!386147 () Bool)

(assert (=> d!701991 (= c!386147 e!1540838)))

(declare-fun res!1028632 () Bool)

(assert (=> d!701991 (=> (not res!1028632) (not e!1540838))))

(assert (=> d!701991 (= res!1028632 ((_ is Cons!28375) l!9164))))

(assert (=> d!701991 (forall!5751 l!9164 lambda!91221)))

(assert (=> d!701991 (= (generalisedConcat!218 l!9164) lt!875420)))

(declare-fun b!2421968 () Bool)

(assert (=> b!2421968 (= e!1540841 (= lt!875420 (head!5445 l!9164)))))

(declare-fun b!2421969 () Bool)

(assert (=> b!2421969 (= e!1540842 e!1540840)))

(declare-fun c!386144 () Bool)

(assert (=> b!2421969 (= c!386144 ((_ is Cons!28375) l!9164))))

(declare-fun b!2421970 () Bool)

(assert (=> b!2421970 (= e!1540842 (h!33776 l!9164))))

(assert (= (and d!701991 res!1028632) b!2421967))

(assert (= (and d!701991 c!386147) b!2421970))

(assert (= (and d!701991 (not c!386147)) b!2421969))

(assert (= (and b!2421969 c!386144) b!2421962))

(assert (= (and b!2421969 (not c!386144)) b!2421966))

(assert (= (and d!701991 res!1028631) b!2421965))

(assert (= (and b!2421965 c!386146) b!2421964))

(assert (= (and b!2421965 (not c!386146)) b!2421963))

(assert (= (and b!2421963 c!386145) b!2421968))

(assert (= (and b!2421963 (not c!386145)) b!2421961))

(assert (=> b!2421967 m!2808395))

(assert (=> b!2421965 m!2807987))

(declare-fun m!2808435 () Bool)

(assert (=> d!701991 m!2808435))

(declare-fun m!2808437 () Bool)

(assert (=> d!701991 m!2808437))

(assert (=> b!2421968 m!2808009))

(assert (=> b!2421962 m!2807985))

(declare-fun m!2808439 () Bool)

(assert (=> b!2421964 m!2808439))

(declare-fun m!2808441 () Bool)

(assert (=> b!2421961 m!2808441))

(assert (=> b!2421963 m!2807979))

(assert (=> b!2421963 m!2807979))

(declare-fun m!2808443 () Bool)

(assert (=> b!2421963 m!2808443))

(assert (=> b!2421363 d!701991))

(declare-fun b!2421975 () Bool)

(declare-fun e!1540845 () Bool)

(declare-fun tp!769541 () Bool)

(assert (=> b!2421975 (= e!1540845 (and tp_is_empty!11647 tp!769541))))

(assert (=> b!2421369 (= tp!769489 e!1540845)))

(assert (= (and b!2421369 ((_ is Cons!28374) (t!208449 s!9460))) b!2421975))

(declare-fun b!2421987 () Bool)

(declare-fun e!1540848 () Bool)

(declare-fun tp!769552 () Bool)

(declare-fun tp!769556 () Bool)

(assert (=> b!2421987 (= e!1540848 (and tp!769552 tp!769556))))

(assert (=> b!2421366 (= tp!769484 e!1540848)))

(declare-fun b!2421988 () Bool)

(declare-fun tp!769553 () Bool)

(assert (=> b!2421988 (= e!1540848 tp!769553)))

(declare-fun b!2421986 () Bool)

(assert (=> b!2421986 (= e!1540848 tp_is_empty!11647)))

(declare-fun b!2421989 () Bool)

(declare-fun tp!769554 () Bool)

(declare-fun tp!769555 () Bool)

(assert (=> b!2421989 (= e!1540848 (and tp!769554 tp!769555))))

(assert (= (and b!2421366 ((_ is ElementMatch!7117) (regOne!14747 r!13927))) b!2421986))

(assert (= (and b!2421366 ((_ is Concat!11753) (regOne!14747 r!13927))) b!2421987))

(assert (= (and b!2421366 ((_ is Star!7117) (regOne!14747 r!13927))) b!2421988))

(assert (= (and b!2421366 ((_ is Union!7117) (regOne!14747 r!13927))) b!2421989))

(declare-fun b!2421991 () Bool)

(declare-fun e!1540849 () Bool)

(declare-fun tp!769557 () Bool)

(declare-fun tp!769561 () Bool)

(assert (=> b!2421991 (= e!1540849 (and tp!769557 tp!769561))))

(assert (=> b!2421366 (= tp!769483 e!1540849)))

(declare-fun b!2421992 () Bool)

(declare-fun tp!769558 () Bool)

(assert (=> b!2421992 (= e!1540849 tp!769558)))

(declare-fun b!2421990 () Bool)

(assert (=> b!2421990 (= e!1540849 tp_is_empty!11647)))

(declare-fun b!2421993 () Bool)

(declare-fun tp!769559 () Bool)

(declare-fun tp!769560 () Bool)

(assert (=> b!2421993 (= e!1540849 (and tp!769559 tp!769560))))

(assert (= (and b!2421366 ((_ is ElementMatch!7117) (regTwo!14747 r!13927))) b!2421990))

(assert (= (and b!2421366 ((_ is Concat!11753) (regTwo!14747 r!13927))) b!2421991))

(assert (= (and b!2421366 ((_ is Star!7117) (regTwo!14747 r!13927))) b!2421992))

(assert (= (and b!2421366 ((_ is Union!7117) (regTwo!14747 r!13927))) b!2421993))

(declare-fun b!2421995 () Bool)

(declare-fun e!1540850 () Bool)

(declare-fun tp!769562 () Bool)

(declare-fun tp!769566 () Bool)

(assert (=> b!2421995 (= e!1540850 (and tp!769562 tp!769566))))

(assert (=> b!2421367 (= tp!769487 e!1540850)))

(declare-fun b!2421996 () Bool)

(declare-fun tp!769563 () Bool)

(assert (=> b!2421996 (= e!1540850 tp!769563)))

(declare-fun b!2421994 () Bool)

(assert (=> b!2421994 (= e!1540850 tp_is_empty!11647)))

(declare-fun b!2421997 () Bool)

(declare-fun tp!769564 () Bool)

(declare-fun tp!769565 () Bool)

(assert (=> b!2421997 (= e!1540850 (and tp!769564 tp!769565))))

(assert (= (and b!2421367 ((_ is ElementMatch!7117) (reg!7446 r!13927))) b!2421994))

(assert (= (and b!2421367 ((_ is Concat!11753) (reg!7446 r!13927))) b!2421995))

(assert (= (and b!2421367 ((_ is Star!7117) (reg!7446 r!13927))) b!2421996))

(assert (= (and b!2421367 ((_ is Union!7117) (reg!7446 r!13927))) b!2421997))

(declare-fun b!2421999 () Bool)

(declare-fun e!1540851 () Bool)

(declare-fun tp!769567 () Bool)

(declare-fun tp!769571 () Bool)

(assert (=> b!2421999 (= e!1540851 (and tp!769567 tp!769571))))

(assert (=> b!2421350 (= tp!769482 e!1540851)))

(declare-fun b!2422000 () Bool)

(declare-fun tp!769568 () Bool)

(assert (=> b!2422000 (= e!1540851 tp!769568)))

(declare-fun b!2421998 () Bool)

(assert (=> b!2421998 (= e!1540851 tp_is_empty!11647)))

(declare-fun b!2422001 () Bool)

(declare-fun tp!769569 () Bool)

(declare-fun tp!769570 () Bool)

(assert (=> b!2422001 (= e!1540851 (and tp!769569 tp!769570))))

(assert (= (and b!2421350 ((_ is ElementMatch!7117) (regOne!14746 r!13927))) b!2421998))

(assert (= (and b!2421350 ((_ is Concat!11753) (regOne!14746 r!13927))) b!2421999))

(assert (= (and b!2421350 ((_ is Star!7117) (regOne!14746 r!13927))) b!2422000))

(assert (= (and b!2421350 ((_ is Union!7117) (regOne!14746 r!13927))) b!2422001))

(declare-fun b!2422003 () Bool)

(declare-fun e!1540852 () Bool)

(declare-fun tp!769572 () Bool)

(declare-fun tp!769576 () Bool)

(assert (=> b!2422003 (= e!1540852 (and tp!769572 tp!769576))))

(assert (=> b!2421350 (= tp!769486 e!1540852)))

(declare-fun b!2422004 () Bool)

(declare-fun tp!769573 () Bool)

(assert (=> b!2422004 (= e!1540852 tp!769573)))

(declare-fun b!2422002 () Bool)

(assert (=> b!2422002 (= e!1540852 tp_is_empty!11647)))

(declare-fun b!2422005 () Bool)

(declare-fun tp!769574 () Bool)

(declare-fun tp!769575 () Bool)

(assert (=> b!2422005 (= e!1540852 (and tp!769574 tp!769575))))

(assert (= (and b!2421350 ((_ is ElementMatch!7117) (regTwo!14746 r!13927))) b!2422002))

(assert (= (and b!2421350 ((_ is Concat!11753) (regTwo!14746 r!13927))) b!2422003))

(assert (= (and b!2421350 ((_ is Star!7117) (regTwo!14746 r!13927))) b!2422004))

(assert (= (and b!2421350 ((_ is Union!7117) (regTwo!14746 r!13927))) b!2422005))

(declare-fun b!2422007 () Bool)

(declare-fun e!1540853 () Bool)

(declare-fun tp!769577 () Bool)

(declare-fun tp!769581 () Bool)

(assert (=> b!2422007 (= e!1540853 (and tp!769577 tp!769581))))

(assert (=> b!2421364 (= tp!769488 e!1540853)))

(declare-fun b!2422008 () Bool)

(declare-fun tp!769578 () Bool)

(assert (=> b!2422008 (= e!1540853 tp!769578)))

(declare-fun b!2422006 () Bool)

(assert (=> b!2422006 (= e!1540853 tp_is_empty!11647)))

(declare-fun b!2422009 () Bool)

(declare-fun tp!769579 () Bool)

(declare-fun tp!769580 () Bool)

(assert (=> b!2422009 (= e!1540853 (and tp!769579 tp!769580))))

(assert (= (and b!2421364 ((_ is ElementMatch!7117) (h!33776 l!9164))) b!2422006))

(assert (= (and b!2421364 ((_ is Concat!11753) (h!33776 l!9164))) b!2422007))

(assert (= (and b!2421364 ((_ is Star!7117) (h!33776 l!9164))) b!2422008))

(assert (= (and b!2421364 ((_ is Union!7117) (h!33776 l!9164))) b!2422009))

(declare-fun b!2422014 () Bool)

(declare-fun e!1540856 () Bool)

(declare-fun tp!769586 () Bool)

(declare-fun tp!769587 () Bool)

(assert (=> b!2422014 (= e!1540856 (and tp!769586 tp!769587))))

(assert (=> b!2421364 (= tp!769485 e!1540856)))

(assert (= (and b!2421364 ((_ is Cons!28375) (t!208450 l!9164))) b!2422014))

(declare-fun b_lambda!74649 () Bool)

(assert (= b_lambda!74643 (or start!237184 b_lambda!74649)))

(declare-fun bs!463766 () Bool)

(declare-fun d!701993 () Bool)

(assert (= bs!463766 (and d!701993 start!237184)))

(assert (=> bs!463766 (= (dynLambda!12211 lambda!91199 (h!33776 l!9164)) (validRegex!2837 (h!33776 l!9164)))))

(assert (=> bs!463766 m!2807983))

(assert (=> b!2421495 d!701993))

(check-sat (not bm!147993) (not b!2421931) (not d!701973) (not d!701939) (not b!2421466) (not b!2422000) (not b!2421584) (not b!2421496) (not b!2421611) (not b!2421991) (not b!2421691) (not b!2421949) (not b!2421877) (not d!701981) (not b!2421933) (not b!2421778) (not d!701969) (not b!2421620) (not bm!147997) (not b!2421563) (not b!2421929) (not b!2421999) (not b!2421468) (not b!2421562) (not bm!147992) (not d!701987) (not b!2421567) (not b!2421467) (not b!2421561) (not b!2421763) (not b!2421733) (not b!2421471) (not b!2421775) (not b!2421736) (not b!2421948) tp_is_empty!11647 (not b!2421995) (not b!2421959) (not d!701979) (not bm!148023) (not b!2421932) (not d!701941) (not d!701917) (not b!2421581) (not bs!463766) (not b!2421617) (not b!2421692) (not d!701977) (not b!2421773) (not b!2421470) (not d!701945) (not b!2421968) (not b!2421614) (not d!701953) (not b!2421621) (not b!2421953) (not b!2421616) (not bm!148015) (not b!2421578) (not b!2422008) (not b!2421947) (not b_lambda!74649) (not b!2421734) (not b!2421735) (not bm!148012) (not b!2421936) (not b!2422005) (not d!701927) (not d!701903) (not b!2421989) (not bm!148014) (not b!2421739) (not b!2421940) (not b!2421737) (not b!2421962) (not b!2421566) (not b!2421872) (not b!2421740) (not d!701931) (not b!2421992) (not b!2422007) (not b!2421585) (not b!2421963) (not b!2421951) (not b!2421961) (not b!2421774) (not b!2421997) (not bm!148022) (not b!2421987) (not b!2421579) (not b!2421996) (not b!2422014) (not b!2421964) (not b!2421580) (not b!2421772) (not b!2422004) (not b!2421560) (not b!2421935) (not b!2422009) (not d!701891) (not b!2421615) (not bm!148025) (not b!2421958) (not d!701991) (not b!2421464) (not b!2421779) (not d!701919) (not bm!148021) (not b!2422001) (not b!2421967) (not b!2421965) (not b!2421975) (not b!2421988) (not b!2422003) (not b!2421993) (not b!2421954) (not b!2421950))
(check-sat)
