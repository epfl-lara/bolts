; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295888 () Bool)

(assert start!295888)

(declare-fun b!3139337 () Bool)

(declare-fun e!1958424 () Bool)

(declare-fun tp_is_empty!16885 () Bool)

(assert (=> b!3139337 (= e!1958424 tp_is_empty!16885)))

(declare-fun b!3139338 () Bool)

(declare-fun tp!982971 () Bool)

(declare-fun tp!982973 () Bool)

(assert (=> b!3139338 (= e!1958424 (and tp!982971 tp!982973))))

(declare-fun b!3139339 () Bool)

(declare-fun tp!982974 () Bool)

(declare-fun tp!982972 () Bool)

(assert (=> b!3139339 (= e!1958424 (and tp!982974 tp!982972))))

(declare-fun b!3139340 () Bool)

(declare-fun tp!982975 () Bool)

(assert (=> b!3139340 (= e!1958424 tp!982975)))

(declare-fun b!3139341 () Bool)

(declare-fun e!1958423 () Bool)

(declare-fun e!1958425 () Bool)

(assert (=> b!3139341 (= e!1958423 e!1958425)))

(declare-fun res!1282552 () Bool)

(assert (=> b!3139341 (=> res!1282552 e!1958425)))

(assert (=> b!3139341 (= res!1282552 false)))

(declare-fun res!1282553 () Bool)

(assert (=> start!295888 (=> (not res!1282553) (not e!1958423))))

(declare-datatypes ((C!19508 0))(
  ( (C!19509 (val!11790 Int)) )
))
(declare-datatypes ((Regex!9661 0))(
  ( (ElementMatch!9661 (c!527617 C!19508)) (Concat!14982 (regOne!19834 Regex!9661) (regTwo!19834 Regex!9661)) (EmptyExpr!9661) (Star!9661 (reg!9990 Regex!9661)) (EmptyLang!9661) (Union!9661 (regOne!19835 Regex!9661) (regTwo!19835 Regex!9661)) )
))
(declare-fun r!17345 () Regex!9661)

(declare-fun validRegex!4394 (Regex!9661) Bool)

(assert (=> start!295888 (= res!1282553 (validRegex!4394 r!17345))))

(assert (=> start!295888 e!1958423))

(assert (=> start!295888 e!1958424))

(declare-fun b!3139342 () Bool)

(declare-fun res!1282554 () Bool)

(assert (=> b!3139342 (=> (not res!1282554) (not e!1958423))))

(get-info :version)

(assert (=> b!3139342 (= res!1282554 (and (not ((_ is EmptyLang!9661) r!17345)) (not ((_ is ElementMatch!9661) r!17345)) ((_ is EmptyExpr!9661) r!17345)))))

(declare-fun b!3139343 () Bool)

(declare-fun nullable!3295 (Regex!9661) Bool)

(assert (=> b!3139343 (= e!1958425 (not (= true (nullable!3295 r!17345))))))

(assert (= (and start!295888 res!1282553) b!3139342))

(assert (= (and b!3139342 res!1282554) b!3139341))

(assert (= (and b!3139341 (not res!1282552)) b!3139343))

(assert (= (and start!295888 ((_ is ElementMatch!9661) r!17345)) b!3139337))

(assert (= (and start!295888 ((_ is Concat!14982) r!17345)) b!3139338))

(assert (= (and start!295888 ((_ is Star!9661) r!17345)) b!3139340))

(assert (= (and start!295888 ((_ is Union!9661) r!17345)) b!3139339))

(declare-fun m!3417549 () Bool)

(assert (=> start!295888 m!3417549))

(declare-fun m!3417551 () Bool)

(assert (=> b!3139343 m!3417551))

(check-sat tp_is_empty!16885 (not b!3139343) (not b!3139338) (not start!295888) (not b!3139339) (not b!3139340))
(check-sat)
(get-model)

(declare-fun b!3139380 () Bool)

(declare-fun e!1958455 () Bool)

(declare-fun e!1958457 () Bool)

(assert (=> b!3139380 (= e!1958455 e!1958457)))

(declare-fun res!1282576 () Bool)

(assert (=> b!3139380 (=> (not res!1282576) (not e!1958457))))

(declare-fun call!225285 () Bool)

(assert (=> b!3139380 (= res!1282576 call!225285)))

(declare-fun bm!225278 () Bool)

(declare-fun call!225284 () Bool)

(declare-fun call!225283 () Bool)

(assert (=> bm!225278 (= call!225284 call!225283)))

(declare-fun d!865586 () Bool)

(declare-fun res!1282579 () Bool)

(declare-fun e!1958454 () Bool)

(assert (=> d!865586 (=> res!1282579 e!1958454)))

(assert (=> d!865586 (= res!1282579 ((_ is ElementMatch!9661) r!17345))))

(assert (=> d!865586 (= (validRegex!4394 r!17345) e!1958454)))

(declare-fun b!3139381 () Bool)

(assert (=> b!3139381 (= e!1958457 call!225284)))

(declare-fun bm!225279 () Bool)

(declare-fun c!527626 () Bool)

(assert (=> bm!225279 (= call!225285 (validRegex!4394 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))

(declare-fun b!3139382 () Bool)

(declare-fun e!1958460 () Bool)

(declare-fun e!1958459 () Bool)

(assert (=> b!3139382 (= e!1958460 e!1958459)))

(assert (=> b!3139382 (= c!527626 ((_ is Union!9661) r!17345))))

(declare-fun b!3139383 () Bool)

(declare-fun e!1958456 () Bool)

(assert (=> b!3139383 (= e!1958456 call!225285)))

(declare-fun b!3139384 () Bool)

(declare-fun e!1958458 () Bool)

(assert (=> b!3139384 (= e!1958460 e!1958458)))

(declare-fun res!1282577 () Bool)

(assert (=> b!3139384 (= res!1282577 (not (nullable!3295 (reg!9990 r!17345))))))

(assert (=> b!3139384 (=> (not res!1282577) (not e!1958458))))

(declare-fun b!3139385 () Bool)

(assert (=> b!3139385 (= e!1958458 call!225283)))

(declare-fun b!3139386 () Bool)

(declare-fun res!1282578 () Bool)

(assert (=> b!3139386 (=> res!1282578 e!1958455)))

(assert (=> b!3139386 (= res!1282578 (not ((_ is Concat!14982) r!17345)))))

(assert (=> b!3139386 (= e!1958459 e!1958455)))

(declare-fun bm!225280 () Bool)

(declare-fun c!527627 () Bool)

(assert (=> bm!225280 (= call!225283 (validRegex!4394 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))

(declare-fun b!3139387 () Bool)

(declare-fun res!1282575 () Bool)

(assert (=> b!3139387 (=> (not res!1282575) (not e!1958456))))

(assert (=> b!3139387 (= res!1282575 call!225284)))

(assert (=> b!3139387 (= e!1958459 e!1958456)))

(declare-fun b!3139388 () Bool)

(assert (=> b!3139388 (= e!1958454 e!1958460)))

(assert (=> b!3139388 (= c!527627 ((_ is Star!9661) r!17345))))

(assert (= (and d!865586 (not res!1282579)) b!3139388))

(assert (= (and b!3139388 c!527627) b!3139384))

(assert (= (and b!3139388 (not c!527627)) b!3139382))

(assert (= (and b!3139384 res!1282577) b!3139385))

(assert (= (and b!3139382 c!527626) b!3139387))

(assert (= (and b!3139382 (not c!527626)) b!3139386))

(assert (= (and b!3139387 res!1282575) b!3139383))

(assert (= (and b!3139386 (not res!1282578)) b!3139380))

(assert (= (and b!3139380 res!1282576) b!3139381))

(assert (= (or b!3139383 b!3139380) bm!225279))

(assert (= (or b!3139387 b!3139381) bm!225278))

(assert (= (or b!3139385 bm!225278) bm!225280))

(declare-fun m!3417555 () Bool)

(assert (=> bm!225279 m!3417555))

(declare-fun m!3417557 () Bool)

(assert (=> b!3139384 m!3417557))

(declare-fun m!3417559 () Bool)

(assert (=> bm!225280 m!3417559))

(assert (=> start!295888 d!865586))

(declare-fun d!865592 () Bool)

(declare-fun nullableFct!923 (Regex!9661) Bool)

(assert (=> d!865592 (= (nullable!3295 r!17345) (nullableFct!923 r!17345))))

(declare-fun bs!539039 () Bool)

(assert (= bs!539039 d!865592))

(declare-fun m!3417567 () Bool)

(assert (=> bs!539039 m!3417567))

(assert (=> b!3139343 d!865592))

(declare-fun b!3139425 () Bool)

(declare-fun e!1958473 () Bool)

(declare-fun tp!983004 () Bool)

(declare-fun tp!983005 () Bool)

(assert (=> b!3139425 (= e!1958473 (and tp!983004 tp!983005))))

(declare-fun b!3139423 () Bool)

(declare-fun tp!983001 () Bool)

(declare-fun tp!983003 () Bool)

(assert (=> b!3139423 (= e!1958473 (and tp!983001 tp!983003))))

(declare-fun b!3139424 () Bool)

(declare-fun tp!983002 () Bool)

(assert (=> b!3139424 (= e!1958473 tp!983002)))

(assert (=> b!3139339 (= tp!982974 e!1958473)))

(declare-fun b!3139422 () Bool)

(assert (=> b!3139422 (= e!1958473 tp_is_empty!16885)))

(assert (= (and b!3139339 ((_ is ElementMatch!9661) (regOne!19835 r!17345))) b!3139422))

(assert (= (and b!3139339 ((_ is Concat!14982) (regOne!19835 r!17345))) b!3139423))

(assert (= (and b!3139339 ((_ is Star!9661) (regOne!19835 r!17345))) b!3139424))

(assert (= (and b!3139339 ((_ is Union!9661) (regOne!19835 r!17345))) b!3139425))

(declare-fun b!3139433 () Bool)

(declare-fun e!1958475 () Bool)

(declare-fun tp!983014 () Bool)

(declare-fun tp!983015 () Bool)

(assert (=> b!3139433 (= e!1958475 (and tp!983014 tp!983015))))

(declare-fun b!3139431 () Bool)

(declare-fun tp!983011 () Bool)

(declare-fun tp!983013 () Bool)

(assert (=> b!3139431 (= e!1958475 (and tp!983011 tp!983013))))

(declare-fun b!3139432 () Bool)

(declare-fun tp!983012 () Bool)

(assert (=> b!3139432 (= e!1958475 tp!983012)))

(assert (=> b!3139339 (= tp!982972 e!1958475)))

(declare-fun b!3139430 () Bool)

(assert (=> b!3139430 (= e!1958475 tp_is_empty!16885)))

(assert (= (and b!3139339 ((_ is ElementMatch!9661) (regTwo!19835 r!17345))) b!3139430))

(assert (= (and b!3139339 ((_ is Concat!14982) (regTwo!19835 r!17345))) b!3139431))

(assert (= (and b!3139339 ((_ is Star!9661) (regTwo!19835 r!17345))) b!3139432))

(assert (= (and b!3139339 ((_ is Union!9661) (regTwo!19835 r!17345))) b!3139433))

(declare-fun b!3139444 () Bool)

(declare-fun e!1958478 () Bool)

(declare-fun tp!983026 () Bool)

(declare-fun tp!983029 () Bool)

(assert (=> b!3139444 (= e!1958478 (and tp!983026 tp!983029))))

(declare-fun b!3139440 () Bool)

(declare-fun tp!983021 () Bool)

(declare-fun tp!983023 () Bool)

(assert (=> b!3139440 (= e!1958478 (and tp!983021 tp!983023))))

(declare-fun b!3139442 () Bool)

(declare-fun tp!983022 () Bool)

(assert (=> b!3139442 (= e!1958478 tp!983022)))

(assert (=> b!3139338 (= tp!982971 e!1958478)))

(declare-fun b!3139438 () Bool)

(assert (=> b!3139438 (= e!1958478 tp_is_empty!16885)))

(assert (= (and b!3139338 ((_ is ElementMatch!9661) (regOne!19834 r!17345))) b!3139438))

(assert (= (and b!3139338 ((_ is Concat!14982) (regOne!19834 r!17345))) b!3139440))

(assert (= (and b!3139338 ((_ is Star!9661) (regOne!19834 r!17345))) b!3139442))

(assert (= (and b!3139338 ((_ is Union!9661) (regOne!19834 r!17345))) b!3139444))

(declare-fun b!3139449 () Bool)

(declare-fun e!1958479 () Bool)

(declare-fun tp!983034 () Bool)

(declare-fun tp!983036 () Bool)

(assert (=> b!3139449 (= e!1958479 (and tp!983034 tp!983036))))

(declare-fun b!3139447 () Bool)

(declare-fun tp!983031 () Bool)

(declare-fun tp!983033 () Bool)

(assert (=> b!3139447 (= e!1958479 (and tp!983031 tp!983033))))

(declare-fun b!3139448 () Bool)

(declare-fun tp!983032 () Bool)

(assert (=> b!3139448 (= e!1958479 tp!983032)))

(assert (=> b!3139338 (= tp!982973 e!1958479)))

(declare-fun b!3139446 () Bool)

(assert (=> b!3139446 (= e!1958479 tp_is_empty!16885)))

(assert (= (and b!3139338 ((_ is ElementMatch!9661) (regTwo!19834 r!17345))) b!3139446))

(assert (= (and b!3139338 ((_ is Concat!14982) (regTwo!19834 r!17345))) b!3139447))

(assert (= (and b!3139338 ((_ is Star!9661) (regTwo!19834 r!17345))) b!3139448))

(assert (= (and b!3139338 ((_ is Union!9661) (regTwo!19834 r!17345))) b!3139449))

(declare-fun b!3139457 () Bool)

(declare-fun e!1958481 () Bool)

(declare-fun tp!983044 () Bool)

(declare-fun tp!983045 () Bool)

(assert (=> b!3139457 (= e!1958481 (and tp!983044 tp!983045))))

(declare-fun b!3139455 () Bool)

(declare-fun tp!983041 () Bool)

(declare-fun tp!983043 () Bool)

(assert (=> b!3139455 (= e!1958481 (and tp!983041 tp!983043))))

(declare-fun b!3139456 () Bool)

(declare-fun tp!983042 () Bool)

(assert (=> b!3139456 (= e!1958481 tp!983042)))

(assert (=> b!3139340 (= tp!982975 e!1958481)))

(declare-fun b!3139454 () Bool)

(assert (=> b!3139454 (= e!1958481 tp_is_empty!16885)))

(assert (= (and b!3139340 ((_ is ElementMatch!9661) (reg!9990 r!17345))) b!3139454))

(assert (= (and b!3139340 ((_ is Concat!14982) (reg!9990 r!17345))) b!3139455))

(assert (= (and b!3139340 ((_ is Star!9661) (reg!9990 r!17345))) b!3139456))

(assert (= (and b!3139340 ((_ is Union!9661) (reg!9990 r!17345))) b!3139457))

(check-sat (not b!3139433) (not bm!225279) tp_is_empty!16885 (not b!3139440) (not b!3139444) (not b!3139384) (not b!3139447) (not d!865592) (not b!3139431) (not b!3139455) (not b!3139425) (not b!3139449) (not b!3139457) (not b!3139448) (not b!3139442) (not b!3139424) (not bm!225280) (not b!3139423) (not b!3139432) (not b!3139456))
(check-sat)
(get-model)

(declare-fun b!3139458 () Bool)

(declare-fun e!1958483 () Bool)

(declare-fun e!1958485 () Bool)

(assert (=> b!3139458 (= e!1958483 e!1958485)))

(declare-fun res!1282586 () Bool)

(assert (=> b!3139458 (=> (not res!1282586) (not e!1958485))))

(declare-fun call!225291 () Bool)

(assert (=> b!3139458 (= res!1282586 call!225291)))

(declare-fun bm!225284 () Bool)

(declare-fun call!225290 () Bool)

(declare-fun call!225289 () Bool)

(assert (=> bm!225284 (= call!225290 call!225289)))

(declare-fun d!865594 () Bool)

(declare-fun res!1282589 () Bool)

(declare-fun e!1958482 () Bool)

(assert (=> d!865594 (=> res!1282589 e!1958482)))

(assert (=> d!865594 (= res!1282589 ((_ is ElementMatch!9661) (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))

(assert (=> d!865594 (= (validRegex!4394 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))) e!1958482)))

(declare-fun b!3139459 () Bool)

(assert (=> b!3139459 (= e!1958485 call!225290)))

(declare-fun c!527630 () Bool)

(declare-fun bm!225285 () Bool)

(assert (=> bm!225285 (= call!225291 (validRegex!4394 (ite c!527630 (regTwo!19835 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))) (regOne!19834 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))))

(declare-fun b!3139460 () Bool)

(declare-fun e!1958488 () Bool)

(declare-fun e!1958487 () Bool)

(assert (=> b!3139460 (= e!1958488 e!1958487)))

(assert (=> b!3139460 (= c!527630 ((_ is Union!9661) (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))

(declare-fun b!3139461 () Bool)

(declare-fun e!1958484 () Bool)

(assert (=> b!3139461 (= e!1958484 call!225291)))

(declare-fun b!3139462 () Bool)

(declare-fun e!1958486 () Bool)

(assert (=> b!3139462 (= e!1958488 e!1958486)))

(declare-fun res!1282587 () Bool)

(assert (=> b!3139462 (= res!1282587 (not (nullable!3295 (reg!9990 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))))

(assert (=> b!3139462 (=> (not res!1282587) (not e!1958486))))

(declare-fun b!3139463 () Bool)

(assert (=> b!3139463 (= e!1958486 call!225289)))

(declare-fun b!3139464 () Bool)

(declare-fun res!1282588 () Bool)

(assert (=> b!3139464 (=> res!1282588 e!1958483)))

(assert (=> b!3139464 (= res!1282588 (not ((_ is Concat!14982) (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345)))))))

(assert (=> b!3139464 (= e!1958487 e!1958483)))

(declare-fun bm!225286 () Bool)

(declare-fun c!527631 () Bool)

(assert (=> bm!225286 (= call!225289 (validRegex!4394 (ite c!527631 (reg!9990 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))) (ite c!527630 (regOne!19835 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))) (regTwo!19834 (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345)))))))))

(declare-fun b!3139465 () Bool)

(declare-fun res!1282585 () Bool)

(assert (=> b!3139465 (=> (not res!1282585) (not e!1958484))))

(assert (=> b!3139465 (= res!1282585 call!225290)))

(assert (=> b!3139465 (= e!1958487 e!1958484)))

(declare-fun b!3139466 () Bool)

(assert (=> b!3139466 (= e!1958482 e!1958488)))

(assert (=> b!3139466 (= c!527631 ((_ is Star!9661) (ite c!527626 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))

(assert (= (and d!865594 (not res!1282589)) b!3139466))

(assert (= (and b!3139466 c!527631) b!3139462))

(assert (= (and b!3139466 (not c!527631)) b!3139460))

(assert (= (and b!3139462 res!1282587) b!3139463))

(assert (= (and b!3139460 c!527630) b!3139465))

(assert (= (and b!3139460 (not c!527630)) b!3139464))

(assert (= (and b!3139465 res!1282585) b!3139461))

(assert (= (and b!3139464 (not res!1282588)) b!3139458))

(assert (= (and b!3139458 res!1282586) b!3139459))

(assert (= (or b!3139461 b!3139458) bm!225285))

(assert (= (or b!3139465 b!3139459) bm!225284))

(assert (= (or b!3139463 bm!225284) bm!225286))

(declare-fun m!3417569 () Bool)

(assert (=> bm!225285 m!3417569))

(declare-fun m!3417571 () Bool)

(assert (=> b!3139462 m!3417571))

(declare-fun m!3417573 () Bool)

(assert (=> bm!225286 m!3417573))

(assert (=> bm!225279 d!865594))

(declare-fun b!3139467 () Bool)

(declare-fun e!1958490 () Bool)

(declare-fun e!1958492 () Bool)

(assert (=> b!3139467 (= e!1958490 e!1958492)))

(declare-fun res!1282591 () Bool)

(assert (=> b!3139467 (=> (not res!1282591) (not e!1958492))))

(declare-fun call!225294 () Bool)

(assert (=> b!3139467 (= res!1282591 call!225294)))

(declare-fun bm!225287 () Bool)

(declare-fun call!225293 () Bool)

(declare-fun call!225292 () Bool)

(assert (=> bm!225287 (= call!225293 call!225292)))

(declare-fun d!865596 () Bool)

(declare-fun res!1282594 () Bool)

(declare-fun e!1958489 () Bool)

(assert (=> d!865596 (=> res!1282594 e!1958489)))

(assert (=> d!865596 (= res!1282594 ((_ is ElementMatch!9661) (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))

(assert (=> d!865596 (= (validRegex!4394 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))) e!1958489)))

(declare-fun b!3139468 () Bool)

(assert (=> b!3139468 (= e!1958492 call!225293)))

(declare-fun c!527632 () Bool)

(declare-fun bm!225288 () Bool)

(assert (=> bm!225288 (= call!225294 (validRegex!4394 (ite c!527632 (regTwo!19835 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))) (regOne!19834 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))))

(declare-fun b!3139469 () Bool)

(declare-fun e!1958495 () Bool)

(declare-fun e!1958494 () Bool)

(assert (=> b!3139469 (= e!1958495 e!1958494)))

(assert (=> b!3139469 (= c!527632 ((_ is Union!9661) (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))

(declare-fun b!3139470 () Bool)

(declare-fun e!1958491 () Bool)

(assert (=> b!3139470 (= e!1958491 call!225294)))

(declare-fun b!3139471 () Bool)

(declare-fun e!1958493 () Bool)

(assert (=> b!3139471 (= e!1958495 e!1958493)))

(declare-fun res!1282592 () Bool)

(assert (=> b!3139471 (= res!1282592 (not (nullable!3295 (reg!9990 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))))

(assert (=> b!3139471 (=> (not res!1282592) (not e!1958493))))

(declare-fun b!3139472 () Bool)

(assert (=> b!3139472 (= e!1958493 call!225292)))

(declare-fun b!3139473 () Bool)

(declare-fun res!1282593 () Bool)

(assert (=> b!3139473 (=> res!1282593 e!1958490)))

(assert (=> b!3139473 (= res!1282593 (not ((_ is Concat!14982) (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345))))))))

(assert (=> b!3139473 (= e!1958494 e!1958490)))

(declare-fun c!527633 () Bool)

(declare-fun bm!225289 () Bool)

(assert (=> bm!225289 (= call!225292 (validRegex!4394 (ite c!527633 (reg!9990 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))) (ite c!527632 (regOne!19835 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))) (regTwo!19834 (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345))))))))))

(declare-fun b!3139474 () Bool)

(declare-fun res!1282590 () Bool)

(assert (=> b!3139474 (=> (not res!1282590) (not e!1958491))))

(assert (=> b!3139474 (= res!1282590 call!225293)))

(assert (=> b!3139474 (= e!1958494 e!1958491)))

(declare-fun b!3139475 () Bool)

(assert (=> b!3139475 (= e!1958489 e!1958495)))

(assert (=> b!3139475 (= c!527633 ((_ is Star!9661) (ite c!527627 (reg!9990 r!17345) (ite c!527626 (regOne!19835 r!17345) (regTwo!19834 r!17345)))))))

(assert (= (and d!865596 (not res!1282594)) b!3139475))

(assert (= (and b!3139475 c!527633) b!3139471))

(assert (= (and b!3139475 (not c!527633)) b!3139469))

(assert (= (and b!3139471 res!1282592) b!3139472))

(assert (= (and b!3139469 c!527632) b!3139474))

(assert (= (and b!3139469 (not c!527632)) b!3139473))

(assert (= (and b!3139474 res!1282590) b!3139470))

(assert (= (and b!3139473 (not res!1282593)) b!3139467))

(assert (= (and b!3139467 res!1282591) b!3139468))

(assert (= (or b!3139470 b!3139467) bm!225288))

(assert (= (or b!3139474 b!3139468) bm!225287))

(assert (= (or b!3139472 bm!225287) bm!225289))

(declare-fun m!3417575 () Bool)

(assert (=> bm!225288 m!3417575))

(declare-fun m!3417577 () Bool)

(assert (=> b!3139471 m!3417577))

(declare-fun m!3417579 () Bool)

(assert (=> bm!225289 m!3417579))

(assert (=> bm!225280 d!865596))

(declare-fun d!865598 () Bool)

(assert (=> d!865598 (= (nullable!3295 (reg!9990 r!17345)) (nullableFct!923 (reg!9990 r!17345)))))

(declare-fun bs!539040 () Bool)

(assert (= bs!539040 d!865598))

(declare-fun m!3417581 () Bool)

(assert (=> bs!539040 m!3417581))

(assert (=> b!3139384 d!865598))

(declare-fun d!865600 () Bool)

(declare-fun res!1282618 () Bool)

(declare-fun e!1958527 () Bool)

(assert (=> d!865600 (=> res!1282618 e!1958527)))

(assert (=> d!865600 (= res!1282618 ((_ is EmptyExpr!9661) r!17345))))

(assert (=> d!865600 (= (nullableFct!923 r!17345) e!1958527)))

(declare-fun b!3139508 () Bool)

(declare-fun e!1958526 () Bool)

(declare-fun e!1958522 () Bool)

(assert (=> b!3139508 (= e!1958526 e!1958522)))

(declare-fun res!1282616 () Bool)

(assert (=> b!3139508 (=> res!1282616 e!1958522)))

(assert (=> b!3139508 (= res!1282616 ((_ is Star!9661) r!17345))))

(declare-fun b!3139509 () Bool)

(assert (=> b!3139509 (= e!1958527 e!1958526)))

(declare-fun res!1282617 () Bool)

(assert (=> b!3139509 (=> (not res!1282617) (not e!1958526))))

(assert (=> b!3139509 (= res!1282617 (and (not ((_ is EmptyLang!9661) r!17345)) (not ((_ is ElementMatch!9661) r!17345))))))

(declare-fun b!3139510 () Bool)

(declare-fun e!1958523 () Bool)

(declare-fun call!225306 () Bool)

(assert (=> b!3139510 (= e!1958523 call!225306)))

(declare-fun b!3139511 () Bool)

(declare-fun e!1958524 () Bool)

(assert (=> b!3139511 (= e!1958522 e!1958524)))

(declare-fun c!527640 () Bool)

(assert (=> b!3139511 (= c!527640 ((_ is Union!9661) r!17345))))

(declare-fun bm!225300 () Bool)

(declare-fun call!225305 () Bool)

(assert (=> bm!225300 (= call!225305 (nullable!3295 (ite c!527640 (regOne!19835 r!17345) (regTwo!19834 r!17345))))))

(declare-fun b!3139512 () Bool)

(assert (=> b!3139512 (= e!1958524 e!1958523)))

(declare-fun res!1282615 () Bool)

(assert (=> b!3139512 (= res!1282615 call!225305)))

(assert (=> b!3139512 (=> res!1282615 e!1958523)))

(declare-fun b!3139513 () Bool)

(declare-fun e!1958525 () Bool)

(assert (=> b!3139513 (= e!1958524 e!1958525)))

(declare-fun res!1282619 () Bool)

(assert (=> b!3139513 (= res!1282619 call!225306)))

(assert (=> b!3139513 (=> (not res!1282619) (not e!1958525))))

(declare-fun b!3139514 () Bool)

(assert (=> b!3139514 (= e!1958525 call!225305)))

(declare-fun bm!225301 () Bool)

(assert (=> bm!225301 (= call!225306 (nullable!3295 (ite c!527640 (regTwo!19835 r!17345) (regOne!19834 r!17345))))))

(assert (= (and d!865600 (not res!1282618)) b!3139509))

(assert (= (and b!3139509 res!1282617) b!3139508))

(assert (= (and b!3139508 (not res!1282616)) b!3139511))

(assert (= (and b!3139511 c!527640) b!3139512))

(assert (= (and b!3139511 (not c!527640)) b!3139513))

(assert (= (and b!3139512 (not res!1282615)) b!3139510))

(assert (= (and b!3139513 res!1282619) b!3139514))

(assert (= (or b!3139512 b!3139514) bm!225300))

(assert (= (or b!3139510 b!3139513) bm!225301))

(declare-fun m!3417597 () Bool)

(assert (=> bm!225300 m!3417597))

(declare-fun m!3417599 () Bool)

(assert (=> bm!225301 m!3417599))

(assert (=> d!865592 d!865600))

(declare-fun b!3139532 () Bool)

(declare-fun e!1958540 () Bool)

(declare-fun tp!983049 () Bool)

(declare-fun tp!983050 () Bool)

(assert (=> b!3139532 (= e!1958540 (and tp!983049 tp!983050))))

(declare-fun b!3139530 () Bool)

(declare-fun tp!983046 () Bool)

(declare-fun tp!983048 () Bool)

(assert (=> b!3139530 (= e!1958540 (and tp!983046 tp!983048))))

(declare-fun b!3139531 () Bool)

(declare-fun tp!983047 () Bool)

(assert (=> b!3139531 (= e!1958540 tp!983047)))

(assert (=> b!3139424 (= tp!983002 e!1958540)))

(declare-fun b!3139529 () Bool)

(assert (=> b!3139529 (= e!1958540 tp_is_empty!16885)))

(assert (= (and b!3139424 ((_ is ElementMatch!9661) (reg!9990 (regOne!19835 r!17345)))) b!3139529))

(assert (= (and b!3139424 ((_ is Concat!14982) (reg!9990 (regOne!19835 r!17345)))) b!3139530))

(assert (= (and b!3139424 ((_ is Star!9661) (reg!9990 (regOne!19835 r!17345)))) b!3139531))

(assert (= (and b!3139424 ((_ is Union!9661) (reg!9990 (regOne!19835 r!17345)))) b!3139532))

(declare-fun b!3139536 () Bool)

(declare-fun e!1958541 () Bool)

(declare-fun tp!983054 () Bool)

(declare-fun tp!983055 () Bool)

(assert (=> b!3139536 (= e!1958541 (and tp!983054 tp!983055))))

(declare-fun b!3139534 () Bool)

(declare-fun tp!983051 () Bool)

(declare-fun tp!983053 () Bool)

(assert (=> b!3139534 (= e!1958541 (and tp!983051 tp!983053))))

(declare-fun b!3139535 () Bool)

(declare-fun tp!983052 () Bool)

(assert (=> b!3139535 (= e!1958541 tp!983052)))

(assert (=> b!3139433 (= tp!983014 e!1958541)))

(declare-fun b!3139533 () Bool)

(assert (=> b!3139533 (= e!1958541 tp_is_empty!16885)))

(assert (= (and b!3139433 ((_ is ElementMatch!9661) (regOne!19835 (regTwo!19835 r!17345)))) b!3139533))

(assert (= (and b!3139433 ((_ is Concat!14982) (regOne!19835 (regTwo!19835 r!17345)))) b!3139534))

(assert (= (and b!3139433 ((_ is Star!9661) (regOne!19835 (regTwo!19835 r!17345)))) b!3139535))

(assert (= (and b!3139433 ((_ is Union!9661) (regOne!19835 (regTwo!19835 r!17345)))) b!3139536))

(declare-fun b!3139540 () Bool)

(declare-fun e!1958542 () Bool)

(declare-fun tp!983059 () Bool)

(declare-fun tp!983060 () Bool)

(assert (=> b!3139540 (= e!1958542 (and tp!983059 tp!983060))))

(declare-fun b!3139538 () Bool)

(declare-fun tp!983056 () Bool)

(declare-fun tp!983058 () Bool)

(assert (=> b!3139538 (= e!1958542 (and tp!983056 tp!983058))))

(declare-fun b!3139539 () Bool)

(declare-fun tp!983057 () Bool)

(assert (=> b!3139539 (= e!1958542 tp!983057)))

(assert (=> b!3139433 (= tp!983015 e!1958542)))

(declare-fun b!3139537 () Bool)

(assert (=> b!3139537 (= e!1958542 tp_is_empty!16885)))

(assert (= (and b!3139433 ((_ is ElementMatch!9661) (regTwo!19835 (regTwo!19835 r!17345)))) b!3139537))

(assert (= (and b!3139433 ((_ is Concat!14982) (regTwo!19835 (regTwo!19835 r!17345)))) b!3139538))

(assert (= (and b!3139433 ((_ is Star!9661) (regTwo!19835 (regTwo!19835 r!17345)))) b!3139539))

(assert (= (and b!3139433 ((_ is Union!9661) (regTwo!19835 (regTwo!19835 r!17345)))) b!3139540))

(declare-fun b!3139544 () Bool)

(declare-fun e!1958543 () Bool)

(declare-fun tp!983064 () Bool)

(declare-fun tp!983065 () Bool)

(assert (=> b!3139544 (= e!1958543 (and tp!983064 tp!983065))))

(declare-fun b!3139542 () Bool)

(declare-fun tp!983061 () Bool)

(declare-fun tp!983063 () Bool)

(assert (=> b!3139542 (= e!1958543 (and tp!983061 tp!983063))))

(declare-fun b!3139543 () Bool)

(declare-fun tp!983062 () Bool)

(assert (=> b!3139543 (= e!1958543 tp!983062)))

(assert (=> b!3139448 (= tp!983032 e!1958543)))

(declare-fun b!3139541 () Bool)

(assert (=> b!3139541 (= e!1958543 tp_is_empty!16885)))

(assert (= (and b!3139448 ((_ is ElementMatch!9661) (reg!9990 (regTwo!19834 r!17345)))) b!3139541))

(assert (= (and b!3139448 ((_ is Concat!14982) (reg!9990 (regTwo!19834 r!17345)))) b!3139542))

(assert (= (and b!3139448 ((_ is Star!9661) (reg!9990 (regTwo!19834 r!17345)))) b!3139543))

(assert (= (and b!3139448 ((_ is Union!9661) (reg!9990 (regTwo!19834 r!17345)))) b!3139544))

(declare-fun b!3139548 () Bool)

(declare-fun e!1958544 () Bool)

(declare-fun tp!983069 () Bool)

(declare-fun tp!983070 () Bool)

(assert (=> b!3139548 (= e!1958544 (and tp!983069 tp!983070))))

(declare-fun b!3139546 () Bool)

(declare-fun tp!983066 () Bool)

(declare-fun tp!983068 () Bool)

(assert (=> b!3139546 (= e!1958544 (and tp!983066 tp!983068))))

(declare-fun b!3139547 () Bool)

(declare-fun tp!983067 () Bool)

(assert (=> b!3139547 (= e!1958544 tp!983067)))

(assert (=> b!3139425 (= tp!983004 e!1958544)))

(declare-fun b!3139545 () Bool)

(assert (=> b!3139545 (= e!1958544 tp_is_empty!16885)))

(assert (= (and b!3139425 ((_ is ElementMatch!9661) (regOne!19835 (regOne!19835 r!17345)))) b!3139545))

(assert (= (and b!3139425 ((_ is Concat!14982) (regOne!19835 (regOne!19835 r!17345)))) b!3139546))

(assert (= (and b!3139425 ((_ is Star!9661) (regOne!19835 (regOne!19835 r!17345)))) b!3139547))

(assert (= (and b!3139425 ((_ is Union!9661) (regOne!19835 (regOne!19835 r!17345)))) b!3139548))

(declare-fun b!3139552 () Bool)

(declare-fun e!1958545 () Bool)

(declare-fun tp!983074 () Bool)

(declare-fun tp!983075 () Bool)

(assert (=> b!3139552 (= e!1958545 (and tp!983074 tp!983075))))

(declare-fun b!3139550 () Bool)

(declare-fun tp!983071 () Bool)

(declare-fun tp!983073 () Bool)

(assert (=> b!3139550 (= e!1958545 (and tp!983071 tp!983073))))

(declare-fun b!3139551 () Bool)

(declare-fun tp!983072 () Bool)

(assert (=> b!3139551 (= e!1958545 tp!983072)))

(assert (=> b!3139425 (= tp!983005 e!1958545)))

(declare-fun b!3139549 () Bool)

(assert (=> b!3139549 (= e!1958545 tp_is_empty!16885)))

(assert (= (and b!3139425 ((_ is ElementMatch!9661) (regTwo!19835 (regOne!19835 r!17345)))) b!3139549))

(assert (= (and b!3139425 ((_ is Concat!14982) (regTwo!19835 (regOne!19835 r!17345)))) b!3139550))

(assert (= (and b!3139425 ((_ is Star!9661) (regTwo!19835 (regOne!19835 r!17345)))) b!3139551))

(assert (= (and b!3139425 ((_ is Union!9661) (regTwo!19835 (regOne!19835 r!17345)))) b!3139552))

(declare-fun b!3139556 () Bool)

(declare-fun e!1958546 () Bool)

(declare-fun tp!983079 () Bool)

(declare-fun tp!983080 () Bool)

(assert (=> b!3139556 (= e!1958546 (and tp!983079 tp!983080))))

(declare-fun b!3139554 () Bool)

(declare-fun tp!983076 () Bool)

(declare-fun tp!983078 () Bool)

(assert (=> b!3139554 (= e!1958546 (and tp!983076 tp!983078))))

(declare-fun b!3139555 () Bool)

(declare-fun tp!983077 () Bool)

(assert (=> b!3139555 (= e!1958546 tp!983077)))

(assert (=> b!3139449 (= tp!983034 e!1958546)))

(declare-fun b!3139553 () Bool)

(assert (=> b!3139553 (= e!1958546 tp_is_empty!16885)))

(assert (= (and b!3139449 ((_ is ElementMatch!9661) (regOne!19835 (regTwo!19834 r!17345)))) b!3139553))

(assert (= (and b!3139449 ((_ is Concat!14982) (regOne!19835 (regTwo!19834 r!17345)))) b!3139554))

(assert (= (and b!3139449 ((_ is Star!9661) (regOne!19835 (regTwo!19834 r!17345)))) b!3139555))

(assert (= (and b!3139449 ((_ is Union!9661) (regOne!19835 (regTwo!19834 r!17345)))) b!3139556))

(declare-fun b!3139560 () Bool)

(declare-fun e!1958547 () Bool)

(declare-fun tp!983084 () Bool)

(declare-fun tp!983085 () Bool)

(assert (=> b!3139560 (= e!1958547 (and tp!983084 tp!983085))))

(declare-fun b!3139558 () Bool)

(declare-fun tp!983081 () Bool)

(declare-fun tp!983083 () Bool)

(assert (=> b!3139558 (= e!1958547 (and tp!983081 tp!983083))))

(declare-fun b!3139559 () Bool)

(declare-fun tp!983082 () Bool)

(assert (=> b!3139559 (= e!1958547 tp!983082)))

(assert (=> b!3139449 (= tp!983036 e!1958547)))

(declare-fun b!3139557 () Bool)

(assert (=> b!3139557 (= e!1958547 tp_is_empty!16885)))

(assert (= (and b!3139449 ((_ is ElementMatch!9661) (regTwo!19835 (regTwo!19834 r!17345)))) b!3139557))

(assert (= (and b!3139449 ((_ is Concat!14982) (regTwo!19835 (regTwo!19834 r!17345)))) b!3139558))

(assert (= (and b!3139449 ((_ is Star!9661) (regTwo!19835 (regTwo!19834 r!17345)))) b!3139559))

(assert (= (and b!3139449 ((_ is Union!9661) (regTwo!19835 (regTwo!19834 r!17345)))) b!3139560))

(declare-fun b!3139564 () Bool)

(declare-fun e!1958548 () Bool)

(declare-fun tp!983089 () Bool)

(declare-fun tp!983090 () Bool)

(assert (=> b!3139564 (= e!1958548 (and tp!983089 tp!983090))))

(declare-fun b!3139562 () Bool)

(declare-fun tp!983086 () Bool)

(declare-fun tp!983088 () Bool)

(assert (=> b!3139562 (= e!1958548 (and tp!983086 tp!983088))))

(declare-fun b!3139563 () Bool)

(declare-fun tp!983087 () Bool)

(assert (=> b!3139563 (= e!1958548 tp!983087)))

(assert (=> b!3139455 (= tp!983041 e!1958548)))

(declare-fun b!3139561 () Bool)

(assert (=> b!3139561 (= e!1958548 tp_is_empty!16885)))

(assert (= (and b!3139455 ((_ is ElementMatch!9661) (regOne!19834 (reg!9990 r!17345)))) b!3139561))

(assert (= (and b!3139455 ((_ is Concat!14982) (regOne!19834 (reg!9990 r!17345)))) b!3139562))

(assert (= (and b!3139455 ((_ is Star!9661) (regOne!19834 (reg!9990 r!17345)))) b!3139563))

(assert (= (and b!3139455 ((_ is Union!9661) (regOne!19834 (reg!9990 r!17345)))) b!3139564))

(declare-fun b!3139568 () Bool)

(declare-fun e!1958549 () Bool)

(declare-fun tp!983094 () Bool)

(declare-fun tp!983095 () Bool)

(assert (=> b!3139568 (= e!1958549 (and tp!983094 tp!983095))))

(declare-fun b!3139566 () Bool)

(declare-fun tp!983091 () Bool)

(declare-fun tp!983093 () Bool)

(assert (=> b!3139566 (= e!1958549 (and tp!983091 tp!983093))))

(declare-fun b!3139567 () Bool)

(declare-fun tp!983092 () Bool)

(assert (=> b!3139567 (= e!1958549 tp!983092)))

(assert (=> b!3139455 (= tp!983043 e!1958549)))

(declare-fun b!3139565 () Bool)

(assert (=> b!3139565 (= e!1958549 tp_is_empty!16885)))

(assert (= (and b!3139455 ((_ is ElementMatch!9661) (regTwo!19834 (reg!9990 r!17345)))) b!3139565))

(assert (= (and b!3139455 ((_ is Concat!14982) (regTwo!19834 (reg!9990 r!17345)))) b!3139566))

(assert (= (and b!3139455 ((_ is Star!9661) (regTwo!19834 (reg!9990 r!17345)))) b!3139567))

(assert (= (and b!3139455 ((_ is Union!9661) (regTwo!19834 (reg!9990 r!17345)))) b!3139568))

(declare-fun b!3139572 () Bool)

(declare-fun e!1958550 () Bool)

(declare-fun tp!983099 () Bool)

(declare-fun tp!983100 () Bool)

(assert (=> b!3139572 (= e!1958550 (and tp!983099 tp!983100))))

(declare-fun b!3139570 () Bool)

(declare-fun tp!983096 () Bool)

(declare-fun tp!983098 () Bool)

(assert (=> b!3139570 (= e!1958550 (and tp!983096 tp!983098))))

(declare-fun b!3139571 () Bool)

(declare-fun tp!983097 () Bool)

(assert (=> b!3139571 (= e!1958550 tp!983097)))

(assert (=> b!3139440 (= tp!983021 e!1958550)))

(declare-fun b!3139569 () Bool)

(assert (=> b!3139569 (= e!1958550 tp_is_empty!16885)))

(assert (= (and b!3139440 ((_ is ElementMatch!9661) (regOne!19834 (regOne!19834 r!17345)))) b!3139569))

(assert (= (and b!3139440 ((_ is Concat!14982) (regOne!19834 (regOne!19834 r!17345)))) b!3139570))

(assert (= (and b!3139440 ((_ is Star!9661) (regOne!19834 (regOne!19834 r!17345)))) b!3139571))

(assert (= (and b!3139440 ((_ is Union!9661) (regOne!19834 (regOne!19834 r!17345)))) b!3139572))

(declare-fun b!3139576 () Bool)

(declare-fun e!1958551 () Bool)

(declare-fun tp!983104 () Bool)

(declare-fun tp!983105 () Bool)

(assert (=> b!3139576 (= e!1958551 (and tp!983104 tp!983105))))

(declare-fun b!3139574 () Bool)

(declare-fun tp!983101 () Bool)

(declare-fun tp!983103 () Bool)

(assert (=> b!3139574 (= e!1958551 (and tp!983101 tp!983103))))

(declare-fun b!3139575 () Bool)

(declare-fun tp!983102 () Bool)

(assert (=> b!3139575 (= e!1958551 tp!983102)))

(assert (=> b!3139440 (= tp!983023 e!1958551)))

(declare-fun b!3139573 () Bool)

(assert (=> b!3139573 (= e!1958551 tp_is_empty!16885)))

(assert (= (and b!3139440 ((_ is ElementMatch!9661) (regTwo!19834 (regOne!19834 r!17345)))) b!3139573))

(assert (= (and b!3139440 ((_ is Concat!14982) (regTwo!19834 (regOne!19834 r!17345)))) b!3139574))

(assert (= (and b!3139440 ((_ is Star!9661) (regTwo!19834 (regOne!19834 r!17345)))) b!3139575))

(assert (= (and b!3139440 ((_ is Union!9661) (regTwo!19834 (regOne!19834 r!17345)))) b!3139576))

(declare-fun b!3139580 () Bool)

(declare-fun e!1958552 () Bool)

(declare-fun tp!983109 () Bool)

(declare-fun tp!983110 () Bool)

(assert (=> b!3139580 (= e!1958552 (and tp!983109 tp!983110))))

(declare-fun b!3139578 () Bool)

(declare-fun tp!983106 () Bool)

(declare-fun tp!983108 () Bool)

(assert (=> b!3139578 (= e!1958552 (and tp!983106 tp!983108))))

(declare-fun b!3139579 () Bool)

(declare-fun tp!983107 () Bool)

(assert (=> b!3139579 (= e!1958552 tp!983107)))

(assert (=> b!3139442 (= tp!983022 e!1958552)))

(declare-fun b!3139577 () Bool)

(assert (=> b!3139577 (= e!1958552 tp_is_empty!16885)))

(assert (= (and b!3139442 ((_ is ElementMatch!9661) (reg!9990 (regOne!19834 r!17345)))) b!3139577))

(assert (= (and b!3139442 ((_ is Concat!14982) (reg!9990 (regOne!19834 r!17345)))) b!3139578))

(assert (= (and b!3139442 ((_ is Star!9661) (reg!9990 (regOne!19834 r!17345)))) b!3139579))

(assert (= (and b!3139442 ((_ is Union!9661) (reg!9990 (regOne!19834 r!17345)))) b!3139580))

(declare-fun b!3139591 () Bool)

(declare-fun e!1958559 () Bool)

(declare-fun tp!983114 () Bool)

(declare-fun tp!983115 () Bool)

(assert (=> b!3139591 (= e!1958559 (and tp!983114 tp!983115))))

(declare-fun b!3139589 () Bool)

(declare-fun tp!983111 () Bool)

(declare-fun tp!983113 () Bool)

(assert (=> b!3139589 (= e!1958559 (and tp!983111 tp!983113))))

(declare-fun b!3139590 () Bool)

(declare-fun tp!983112 () Bool)

(assert (=> b!3139590 (= e!1958559 tp!983112)))

(assert (=> b!3139456 (= tp!983042 e!1958559)))

(declare-fun b!3139588 () Bool)

(assert (=> b!3139588 (= e!1958559 tp_is_empty!16885)))

(assert (= (and b!3139456 ((_ is ElementMatch!9661) (reg!9990 (reg!9990 r!17345)))) b!3139588))

(assert (= (and b!3139456 ((_ is Concat!14982) (reg!9990 (reg!9990 r!17345)))) b!3139589))

(assert (= (and b!3139456 ((_ is Star!9661) (reg!9990 (reg!9990 r!17345)))) b!3139590))

(assert (= (and b!3139456 ((_ is Union!9661) (reg!9990 (reg!9990 r!17345)))) b!3139591))

(declare-fun b!3139595 () Bool)

(declare-fun e!1958560 () Bool)

(declare-fun tp!983119 () Bool)

(declare-fun tp!983120 () Bool)

(assert (=> b!3139595 (= e!1958560 (and tp!983119 tp!983120))))

(declare-fun b!3139593 () Bool)

(declare-fun tp!983116 () Bool)

(declare-fun tp!983118 () Bool)

(assert (=> b!3139593 (= e!1958560 (and tp!983116 tp!983118))))

(declare-fun b!3139594 () Bool)

(declare-fun tp!983117 () Bool)

(assert (=> b!3139594 (= e!1958560 tp!983117)))

(assert (=> b!3139457 (= tp!983044 e!1958560)))

(declare-fun b!3139592 () Bool)

(assert (=> b!3139592 (= e!1958560 tp_is_empty!16885)))

(assert (= (and b!3139457 ((_ is ElementMatch!9661) (regOne!19835 (reg!9990 r!17345)))) b!3139592))

(assert (= (and b!3139457 ((_ is Concat!14982) (regOne!19835 (reg!9990 r!17345)))) b!3139593))

(assert (= (and b!3139457 ((_ is Star!9661) (regOne!19835 (reg!9990 r!17345)))) b!3139594))

(assert (= (and b!3139457 ((_ is Union!9661) (regOne!19835 (reg!9990 r!17345)))) b!3139595))

(declare-fun b!3139599 () Bool)

(declare-fun e!1958561 () Bool)

(declare-fun tp!983124 () Bool)

(declare-fun tp!983125 () Bool)

(assert (=> b!3139599 (= e!1958561 (and tp!983124 tp!983125))))

(declare-fun b!3139597 () Bool)

(declare-fun tp!983121 () Bool)

(declare-fun tp!983123 () Bool)

(assert (=> b!3139597 (= e!1958561 (and tp!983121 tp!983123))))

(declare-fun b!3139598 () Bool)

(declare-fun tp!983122 () Bool)

(assert (=> b!3139598 (= e!1958561 tp!983122)))

(assert (=> b!3139457 (= tp!983045 e!1958561)))

(declare-fun b!3139596 () Bool)

(assert (=> b!3139596 (= e!1958561 tp_is_empty!16885)))

(assert (= (and b!3139457 ((_ is ElementMatch!9661) (regTwo!19835 (reg!9990 r!17345)))) b!3139596))

(assert (= (and b!3139457 ((_ is Concat!14982) (regTwo!19835 (reg!9990 r!17345)))) b!3139597))

(assert (= (and b!3139457 ((_ is Star!9661) (regTwo!19835 (reg!9990 r!17345)))) b!3139598))

(assert (= (and b!3139457 ((_ is Union!9661) (regTwo!19835 (reg!9990 r!17345)))) b!3139599))

(declare-fun b!3139607 () Bool)

(declare-fun e!1958563 () Bool)

(declare-fun tp!983132 () Bool)

(declare-fun tp!983135 () Bool)

(assert (=> b!3139607 (= e!1958563 (and tp!983132 tp!983135))))

(declare-fun b!3139603 () Bool)

(declare-fun tp!983127 () Bool)

(declare-fun tp!983130 () Bool)

(assert (=> b!3139603 (= e!1958563 (and tp!983127 tp!983130))))

(declare-fun b!3139605 () Bool)

(declare-fun tp!983128 () Bool)

(assert (=> b!3139605 (= e!1958563 tp!983128)))

(assert (=> b!3139431 (= tp!983011 e!1958563)))

(declare-fun b!3139601 () Bool)

(assert (=> b!3139601 (= e!1958563 tp_is_empty!16885)))

(assert (= (and b!3139431 ((_ is ElementMatch!9661) (regOne!19834 (regTwo!19835 r!17345)))) b!3139601))

(assert (= (and b!3139431 ((_ is Concat!14982) (regOne!19834 (regTwo!19835 r!17345)))) b!3139603))

(assert (= (and b!3139431 ((_ is Star!9661) (regOne!19834 (regTwo!19835 r!17345)))) b!3139605))

(assert (= (and b!3139431 ((_ is Union!9661) (regOne!19834 (regTwo!19835 r!17345)))) b!3139607))

(declare-fun b!3139611 () Bool)

(declare-fun e!1958564 () Bool)

(declare-fun tp!983139 () Bool)

(declare-fun tp!983140 () Bool)

(assert (=> b!3139611 (= e!1958564 (and tp!983139 tp!983140))))

(declare-fun b!3139609 () Bool)

(declare-fun tp!983136 () Bool)

(declare-fun tp!983138 () Bool)

(assert (=> b!3139609 (= e!1958564 (and tp!983136 tp!983138))))

(declare-fun b!3139610 () Bool)

(declare-fun tp!983137 () Bool)

(assert (=> b!3139610 (= e!1958564 tp!983137)))

(assert (=> b!3139431 (= tp!983013 e!1958564)))

(declare-fun b!3139608 () Bool)

(assert (=> b!3139608 (= e!1958564 tp_is_empty!16885)))

(assert (= (and b!3139431 ((_ is ElementMatch!9661) (regTwo!19834 (regTwo!19835 r!17345)))) b!3139608))

(assert (= (and b!3139431 ((_ is Concat!14982) (regTwo!19834 (regTwo!19835 r!17345)))) b!3139609))

(assert (= (and b!3139431 ((_ is Star!9661) (regTwo!19834 (regTwo!19835 r!17345)))) b!3139610))

(assert (= (and b!3139431 ((_ is Union!9661) (regTwo!19834 (regTwo!19835 r!17345)))) b!3139611))

(declare-fun b!3139619 () Bool)

(declare-fun e!1958566 () Bool)

(declare-fun tp!983149 () Bool)

(declare-fun tp!983150 () Bool)

(assert (=> b!3139619 (= e!1958566 (and tp!983149 tp!983150))))

(declare-fun b!3139617 () Bool)

(declare-fun tp!983146 () Bool)

(declare-fun tp!983148 () Bool)

(assert (=> b!3139617 (= e!1958566 (and tp!983146 tp!983148))))

(declare-fun b!3139618 () Bool)

(declare-fun tp!983147 () Bool)

(assert (=> b!3139618 (= e!1958566 tp!983147)))

(assert (=> b!3139444 (= tp!983026 e!1958566)))

(declare-fun b!3139616 () Bool)

(assert (=> b!3139616 (= e!1958566 tp_is_empty!16885)))

(assert (= (and b!3139444 ((_ is ElementMatch!9661) (regOne!19835 (regOne!19834 r!17345)))) b!3139616))

(assert (= (and b!3139444 ((_ is Concat!14982) (regOne!19835 (regOne!19834 r!17345)))) b!3139617))

(assert (= (and b!3139444 ((_ is Star!9661) (regOne!19835 (regOne!19834 r!17345)))) b!3139618))

(assert (= (and b!3139444 ((_ is Union!9661) (regOne!19835 (regOne!19834 r!17345)))) b!3139619))

(declare-fun b!3139627 () Bool)

(declare-fun e!1958568 () Bool)

(declare-fun tp!983159 () Bool)

(declare-fun tp!983160 () Bool)

(assert (=> b!3139627 (= e!1958568 (and tp!983159 tp!983160))))

(declare-fun b!3139625 () Bool)

(declare-fun tp!983156 () Bool)

(declare-fun tp!983158 () Bool)

(assert (=> b!3139625 (= e!1958568 (and tp!983156 tp!983158))))

(declare-fun b!3139626 () Bool)

(declare-fun tp!983157 () Bool)

(assert (=> b!3139626 (= e!1958568 tp!983157)))

(assert (=> b!3139444 (= tp!983029 e!1958568)))

(declare-fun b!3139624 () Bool)

(assert (=> b!3139624 (= e!1958568 tp_is_empty!16885)))

(assert (= (and b!3139444 ((_ is ElementMatch!9661) (regTwo!19835 (regOne!19834 r!17345)))) b!3139624))

(assert (= (and b!3139444 ((_ is Concat!14982) (regTwo!19835 (regOne!19834 r!17345)))) b!3139625))

(assert (= (and b!3139444 ((_ is Star!9661) (regTwo!19835 (regOne!19834 r!17345)))) b!3139626))

(assert (= (and b!3139444 ((_ is Union!9661) (regTwo!19835 (regOne!19834 r!17345)))) b!3139627))

(declare-fun b!3139635 () Bool)

(declare-fun e!1958570 () Bool)

(declare-fun tp!983169 () Bool)

(declare-fun tp!983170 () Bool)

(assert (=> b!3139635 (= e!1958570 (and tp!983169 tp!983170))))

(declare-fun b!3139633 () Bool)

(declare-fun tp!983166 () Bool)

(declare-fun tp!983168 () Bool)

(assert (=> b!3139633 (= e!1958570 (and tp!983166 tp!983168))))

(declare-fun b!3139634 () Bool)

(declare-fun tp!983167 () Bool)

(assert (=> b!3139634 (= e!1958570 tp!983167)))

(assert (=> b!3139447 (= tp!983031 e!1958570)))

(declare-fun b!3139632 () Bool)

(assert (=> b!3139632 (= e!1958570 tp_is_empty!16885)))

(assert (= (and b!3139447 ((_ is ElementMatch!9661) (regOne!19834 (regTwo!19834 r!17345)))) b!3139632))

(assert (= (and b!3139447 ((_ is Concat!14982) (regOne!19834 (regTwo!19834 r!17345)))) b!3139633))

(assert (= (and b!3139447 ((_ is Star!9661) (regOne!19834 (regTwo!19834 r!17345)))) b!3139634))

(assert (= (and b!3139447 ((_ is Union!9661) (regOne!19834 (regTwo!19834 r!17345)))) b!3139635))

(declare-fun b!3139643 () Bool)

(declare-fun e!1958572 () Bool)

(declare-fun tp!983179 () Bool)

(declare-fun tp!983180 () Bool)

(assert (=> b!3139643 (= e!1958572 (and tp!983179 tp!983180))))

(declare-fun b!3139641 () Bool)

(declare-fun tp!983176 () Bool)

(declare-fun tp!983178 () Bool)

(assert (=> b!3139641 (= e!1958572 (and tp!983176 tp!983178))))

(declare-fun b!3139642 () Bool)

(declare-fun tp!983177 () Bool)

(assert (=> b!3139642 (= e!1958572 tp!983177)))

(assert (=> b!3139447 (= tp!983033 e!1958572)))

(declare-fun b!3139640 () Bool)

(assert (=> b!3139640 (= e!1958572 tp_is_empty!16885)))

(assert (= (and b!3139447 ((_ is ElementMatch!9661) (regTwo!19834 (regTwo!19834 r!17345)))) b!3139640))

(assert (= (and b!3139447 ((_ is Concat!14982) (regTwo!19834 (regTwo!19834 r!17345)))) b!3139641))

(assert (= (and b!3139447 ((_ is Star!9661) (regTwo!19834 (regTwo!19834 r!17345)))) b!3139642))

(assert (= (and b!3139447 ((_ is Union!9661) (regTwo!19834 (regTwo!19834 r!17345)))) b!3139643))

(declare-fun b!3139651 () Bool)

(declare-fun e!1958574 () Bool)

(declare-fun tp!983189 () Bool)

(declare-fun tp!983190 () Bool)

(assert (=> b!3139651 (= e!1958574 (and tp!983189 tp!983190))))

(declare-fun b!3139649 () Bool)

(declare-fun tp!983186 () Bool)

(declare-fun tp!983188 () Bool)

(assert (=> b!3139649 (= e!1958574 (and tp!983186 tp!983188))))

(declare-fun b!3139650 () Bool)

(declare-fun tp!983187 () Bool)

(assert (=> b!3139650 (= e!1958574 tp!983187)))

(assert (=> b!3139423 (= tp!983001 e!1958574)))

(declare-fun b!3139648 () Bool)

(assert (=> b!3139648 (= e!1958574 tp_is_empty!16885)))

(assert (= (and b!3139423 ((_ is ElementMatch!9661) (regOne!19834 (regOne!19835 r!17345)))) b!3139648))

(assert (= (and b!3139423 ((_ is Concat!14982) (regOne!19834 (regOne!19835 r!17345)))) b!3139649))

(assert (= (and b!3139423 ((_ is Star!9661) (regOne!19834 (regOne!19835 r!17345)))) b!3139650))

(assert (= (and b!3139423 ((_ is Union!9661) (regOne!19834 (regOne!19835 r!17345)))) b!3139651))

(declare-fun b!3139659 () Bool)

(declare-fun e!1958576 () Bool)

(declare-fun tp!983199 () Bool)

(declare-fun tp!983200 () Bool)

(assert (=> b!3139659 (= e!1958576 (and tp!983199 tp!983200))))

(declare-fun b!3139657 () Bool)

(declare-fun tp!983196 () Bool)

(declare-fun tp!983198 () Bool)

(assert (=> b!3139657 (= e!1958576 (and tp!983196 tp!983198))))

(declare-fun b!3139658 () Bool)

(declare-fun tp!983197 () Bool)

(assert (=> b!3139658 (= e!1958576 tp!983197)))

(assert (=> b!3139423 (= tp!983003 e!1958576)))

(declare-fun b!3139656 () Bool)

(assert (=> b!3139656 (= e!1958576 tp_is_empty!16885)))

(assert (= (and b!3139423 ((_ is ElementMatch!9661) (regTwo!19834 (regOne!19835 r!17345)))) b!3139656))

(assert (= (and b!3139423 ((_ is Concat!14982) (regTwo!19834 (regOne!19835 r!17345)))) b!3139657))

(assert (= (and b!3139423 ((_ is Star!9661) (regTwo!19834 (regOne!19835 r!17345)))) b!3139658))

(assert (= (and b!3139423 ((_ is Union!9661) (regTwo!19834 (regOne!19835 r!17345)))) b!3139659))

(declare-fun b!3139667 () Bool)

(declare-fun e!1958578 () Bool)

(declare-fun tp!983209 () Bool)

(declare-fun tp!983210 () Bool)

(assert (=> b!3139667 (= e!1958578 (and tp!983209 tp!983210))))

(declare-fun b!3139665 () Bool)

(declare-fun tp!983206 () Bool)

(declare-fun tp!983208 () Bool)

(assert (=> b!3139665 (= e!1958578 (and tp!983206 tp!983208))))

(declare-fun b!3139666 () Bool)

(declare-fun tp!983207 () Bool)

(assert (=> b!3139666 (= e!1958578 tp!983207)))

(assert (=> b!3139432 (= tp!983012 e!1958578)))

(declare-fun b!3139664 () Bool)

(assert (=> b!3139664 (= e!1958578 tp_is_empty!16885)))

(assert (= (and b!3139432 ((_ is ElementMatch!9661) (reg!9990 (regTwo!19835 r!17345)))) b!3139664))

(assert (= (and b!3139432 ((_ is Concat!14982) (reg!9990 (regTwo!19835 r!17345)))) b!3139665))

(assert (= (and b!3139432 ((_ is Star!9661) (reg!9990 (regTwo!19835 r!17345)))) b!3139666))

(assert (= (and b!3139432 ((_ is Union!9661) (reg!9990 (regTwo!19835 r!17345)))) b!3139667))

(check-sat (not b!3139570) (not b!3139617) (not b!3139625) (not b!3139633) (not b!3139575) (not b!3139548) (not bm!225288) (not b!3139609) (not bm!225300) (not b!3139562) (not b!3139558) (not b!3139657) (not b!3139535) (not b!3139658) (not b!3139605) (not b!3139574) (not b!3139667) (not b!3139534) (not b!3139611) tp_is_empty!16885 (not b!3139607) (not b!3139560) (not b!3139550) (not b!3139649) (not b!3139635) (not b!3139634) (not b!3139567) (not b!3139610) (not b!3139590) (not b!3139532) (not b!3139627) (not b!3139540) (not b!3139651) (not b!3139603) (not b!3139659) (not b!3139578) (not b!3139597) (not b!3139555) (not b!3139626) (not b!3139542) (not b!3139538) (not b!3139580) (not b!3139543) (not b!3139594) (not b!3139571) (not b!3139554) (not b!3139576) (not b!3139589) (not b!3139641) (not b!3139530) (not b!3139462) (not bm!225285) (not b!3139539) (not b!3139599) (not b!3139591) (not b!3139666) (not b!3139544) (not b!3139546) (not b!3139563) (not b!3139598) (not b!3139650) (not b!3139595) (not b!3139566) (not b!3139642) (not b!3139556) (not b!3139564) (not b!3139572) (not b!3139593) (not b!3139579) (not b!3139568) (not b!3139471) (not b!3139531) (not bm!225289) (not b!3139536) (not bm!225301) (not b!3139551) (not b!3139619) (not b!3139559) (not b!3139552) (not bm!225286) (not b!3139665) (not b!3139547) (not b!3139618) (not d!865598) (not b!3139643))
(check-sat)
