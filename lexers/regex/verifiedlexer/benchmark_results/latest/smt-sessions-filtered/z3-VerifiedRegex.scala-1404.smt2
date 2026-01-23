; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73878 () Bool)

(assert start!73878)

(declare-fun b!827237 () Bool)

(declare-fun res!380650 () Bool)

(declare-fun e!545626 () Bool)

(assert (=> b!827237 (=> (not res!380650) (not e!545626))))

(declare-datatypes ((C!4704 0))(
  ( (C!4705 (val!2600 Int)) )
))
(declare-datatypes ((Regex!2067 0))(
  ( (ElementMatch!2067 (c!134426 C!4704)) (Concat!3798 (regOne!4646 Regex!2067) (regTwo!4646 Regex!2067)) (EmptyExpr!2067) (Star!2067 (reg!2396 Regex!2067)) (EmptyLang!2067) (Union!2067 (regOne!4647 Regex!2067) (regTwo!4647 Regex!2067)) )
))
(declare-fun r!27177 () Regex!2067)

(get-info :version)

(assert (=> b!827237 (= res!380650 (and (not ((_ is EmptyExpr!2067) r!27177)) (not ((_ is EmptyLang!2067) r!27177)) (not ((_ is ElementMatch!2067) r!27177)) (not ((_ is Star!2067) r!27177)) ((_ is Union!2067) r!27177)))))

(declare-fun b!827238 () Bool)

(declare-fun e!545627 () Bool)

(declare-fun tp!258764 () Bool)

(declare-fun tp!258760 () Bool)

(assert (=> b!827238 (= e!545627 (and tp!258764 tp!258760))))

(declare-fun b!827239 () Bool)

(declare-fun tp!258762 () Bool)

(assert (=> b!827239 (= e!545627 tp!258762)))

(declare-fun b!827240 () Bool)

(declare-fun c!13916 () C!4704)

(declare-datatypes ((List!8893 0))(
  ( (Nil!8877) (Cons!8877 (h!14278 C!4704) (t!93185 List!8893)) )
))
(declare-fun contains!1658 (List!8893 C!4704) Bool)

(declare-fun firstChars!38 (Regex!2067) List!8893)

(assert (=> b!827240 (= e!545626 (not (contains!1658 (firstChars!38 (regTwo!4647 r!27177)) c!13916)))))

(declare-fun res!380652 () Bool)

(assert (=> start!73878 (=> (not res!380652) (not e!545626))))

(declare-fun validRegex!620 (Regex!2067) Bool)

(assert (=> start!73878 (= res!380652 (validRegex!620 r!27177))))

(assert (=> start!73878 e!545626))

(assert (=> start!73878 e!545627))

(declare-fun tp_is_empty!3857 () Bool)

(assert (=> start!73878 tp_is_empty!3857))

(declare-fun b!827241 () Bool)

(assert (=> b!827241 (= e!545627 tp_is_empty!3857)))

(declare-fun b!827242 () Bool)

(declare-fun res!380653 () Bool)

(assert (=> b!827242 (=> (not res!380653) (not e!545626))))

(assert (=> b!827242 (= res!380653 (validRegex!620 (regTwo!4647 r!27177)))))

(declare-fun b!827243 () Bool)

(declare-fun res!380649 () Bool)

(assert (=> b!827243 (=> (not res!380649) (not e!545626))))

(assert (=> b!827243 (= res!380649 (not (contains!1658 (firstChars!38 (regOne!4647 r!27177)) c!13916)))))

(declare-fun b!827244 () Bool)

(declare-fun tp!258763 () Bool)

(declare-fun tp!258761 () Bool)

(assert (=> b!827244 (= e!545627 (and tp!258763 tp!258761))))

(declare-fun b!827245 () Bool)

(declare-fun res!380651 () Bool)

(assert (=> b!827245 (=> (not res!380651) (not e!545626))))

(assert (=> b!827245 (= res!380651 (contains!1658 (firstChars!38 r!27177) c!13916))))

(assert (= (and start!73878 res!380652) b!827245))

(assert (= (and b!827245 res!380651) b!827237))

(assert (= (and b!827237 res!380650) b!827243))

(assert (= (and b!827243 res!380649) b!827242))

(assert (= (and b!827242 res!380653) b!827240))

(assert (= (and start!73878 ((_ is ElementMatch!2067) r!27177)) b!827241))

(assert (= (and start!73878 ((_ is Concat!3798) r!27177)) b!827244))

(assert (= (and start!73878 ((_ is Star!2067) r!27177)) b!827239))

(assert (= (and start!73878 ((_ is Union!2067) r!27177)) b!827238))

(declare-fun m!1065613 () Bool)

(assert (=> b!827240 m!1065613))

(assert (=> b!827240 m!1065613))

(declare-fun m!1065615 () Bool)

(assert (=> b!827240 m!1065615))

(declare-fun m!1065617 () Bool)

(assert (=> b!827243 m!1065617))

(assert (=> b!827243 m!1065617))

(declare-fun m!1065619 () Bool)

(assert (=> b!827243 m!1065619))

(declare-fun m!1065621 () Bool)

(assert (=> b!827245 m!1065621))

(assert (=> b!827245 m!1065621))

(declare-fun m!1065623 () Bool)

(assert (=> b!827245 m!1065623))

(declare-fun m!1065625 () Bool)

(assert (=> b!827242 m!1065625))

(declare-fun m!1065627 () Bool)

(assert (=> start!73878 m!1065627))

(check-sat (not b!827245) (not b!827238) (not b!827242) (not b!827243) (not b!827244) (not b!827240) tp_is_empty!3857 (not start!73878) (not b!827239))
(check-sat)
(get-model)

(declare-fun bm!48183 () Bool)

(declare-fun call!48188 () Bool)

(declare-fun call!48190 () Bool)

(assert (=> bm!48183 (= call!48188 call!48190)))

(declare-fun bm!48184 () Bool)

(declare-fun call!48189 () Bool)

(declare-fun c!134442 () Bool)

(assert (=> bm!48184 (= call!48189 (validRegex!620 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun b!827290 () Bool)

(declare-fun e!545661 () Bool)

(declare-fun e!545660 () Bool)

(assert (=> b!827290 (= e!545661 e!545660)))

(declare-fun c!134441 () Bool)

(assert (=> b!827290 (= c!134441 ((_ is Star!2067) (regTwo!4647 r!27177)))))

(declare-fun b!827291 () Bool)

(declare-fun e!545663 () Bool)

(assert (=> b!827291 (= e!545663 call!48190)))

(declare-fun b!827292 () Bool)

(declare-fun res!380671 () Bool)

(declare-fun e!545658 () Bool)

(assert (=> b!827292 (=> (not res!380671) (not e!545658))))

(assert (=> b!827292 (= res!380671 call!48189)))

(declare-fun e!545662 () Bool)

(assert (=> b!827292 (= e!545662 e!545658)))

(declare-fun b!827293 () Bool)

(declare-fun e!545659 () Bool)

(declare-fun e!545664 () Bool)

(assert (=> b!827293 (= e!545659 e!545664)))

(declare-fun res!380672 () Bool)

(assert (=> b!827293 (=> (not res!380672) (not e!545664))))

(assert (=> b!827293 (= res!380672 call!48188)))

(declare-fun b!827294 () Bool)

(assert (=> b!827294 (= e!545658 call!48188)))

(declare-fun b!827295 () Bool)

(assert (=> b!827295 (= e!545664 call!48189)))

(declare-fun b!827296 () Bool)

(assert (=> b!827296 (= e!545660 e!545662)))

(assert (=> b!827296 (= c!134442 ((_ is Union!2067) (regTwo!4647 r!27177)))))

(declare-fun bm!48185 () Bool)

(assert (=> bm!48185 (= call!48190 (validRegex!620 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun b!827298 () Bool)

(assert (=> b!827298 (= e!545660 e!545663)))

(declare-fun res!380674 () Bool)

(declare-fun nullable!518 (Regex!2067) Bool)

(assert (=> b!827298 (= res!380674 (not (nullable!518 (reg!2396 (regTwo!4647 r!27177)))))))

(assert (=> b!827298 (=> (not res!380674) (not e!545663))))

(declare-fun d!259543 () Bool)

(declare-fun res!380673 () Bool)

(assert (=> d!259543 (=> res!380673 e!545661)))

(assert (=> d!259543 (= res!380673 ((_ is ElementMatch!2067) (regTwo!4647 r!27177)))))

(assert (=> d!259543 (= (validRegex!620 (regTwo!4647 r!27177)) e!545661)))

(declare-fun b!827297 () Bool)

(declare-fun res!380670 () Bool)

(assert (=> b!827297 (=> res!380670 e!545659)))

(assert (=> b!827297 (= res!380670 (not ((_ is Concat!3798) (regTwo!4647 r!27177))))))

(assert (=> b!827297 (= e!545662 e!545659)))

(assert (= (and d!259543 (not res!380673)) b!827290))

(assert (= (and b!827290 c!134441) b!827298))

(assert (= (and b!827290 (not c!134441)) b!827296))

(assert (= (and b!827298 res!380674) b!827291))

(assert (= (and b!827296 c!134442) b!827292))

(assert (= (and b!827296 (not c!134442)) b!827297))

(assert (= (and b!827292 res!380671) b!827294))

(assert (= (and b!827297 (not res!380670)) b!827293))

(assert (= (and b!827293 res!380672) b!827295))

(assert (= (or b!827292 b!827295) bm!48184))

(assert (= (or b!827294 b!827293) bm!48183))

(assert (= (or b!827291 bm!48183) bm!48185))

(declare-fun m!1065635 () Bool)

(assert (=> bm!48184 m!1065635))

(declare-fun m!1065637 () Bool)

(assert (=> bm!48185 m!1065637))

(declare-fun m!1065639 () Bool)

(assert (=> b!827298 m!1065639))

(assert (=> b!827242 d!259543))

(declare-fun d!259547 () Bool)

(declare-fun lt!317567 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1306 (List!8893) (InoxSet C!4704))

(assert (=> d!259547 (= lt!317567 (select (content!1306 (firstChars!38 r!27177)) c!13916))))

(declare-fun e!545669 () Bool)

(assert (=> d!259547 (= lt!317567 e!545669)))

(declare-fun res!380680 () Bool)

(assert (=> d!259547 (=> (not res!380680) (not e!545669))))

(assert (=> d!259547 (= res!380680 ((_ is Cons!8877) (firstChars!38 r!27177)))))

(assert (=> d!259547 (= (contains!1658 (firstChars!38 r!27177) c!13916) lt!317567)))

(declare-fun b!827303 () Bool)

(declare-fun e!545670 () Bool)

(assert (=> b!827303 (= e!545669 e!545670)))

(declare-fun res!380679 () Bool)

(assert (=> b!827303 (=> res!380679 e!545670)))

(assert (=> b!827303 (= res!380679 (= (h!14278 (firstChars!38 r!27177)) c!13916))))

(declare-fun b!827304 () Bool)

(assert (=> b!827304 (= e!545670 (contains!1658 (t!93185 (firstChars!38 r!27177)) c!13916))))

(assert (= (and d!259547 res!380680) b!827303))

(assert (= (and b!827303 (not res!380679)) b!827304))

(assert (=> d!259547 m!1065621))

(declare-fun m!1065641 () Bool)

(assert (=> d!259547 m!1065641))

(declare-fun m!1065643 () Bool)

(assert (=> d!259547 m!1065643))

(declare-fun m!1065645 () Bool)

(assert (=> b!827304 m!1065645))

(assert (=> b!827245 d!259547))

(declare-fun b!827366 () Bool)

(declare-fun c!134470 () Bool)

(assert (=> b!827366 (= c!134470 (nullable!518 (regOne!4646 r!27177)))))

(declare-fun e!545707 () List!8893)

(declare-fun e!545715 () List!8893)

(assert (=> b!827366 (= e!545707 e!545715)))

(declare-fun bm!48212 () Bool)

(declare-fun call!48221 () List!8893)

(declare-fun call!48220 () List!8893)

(assert (=> bm!48212 (= call!48221 call!48220)))

(declare-fun b!827369 () Bool)

(declare-fun e!545712 () List!8893)

(assert (=> b!827369 (= e!545712 (Cons!8877 (c!134426 r!27177) Nil!8877))))

(declare-fun b!827370 () Bool)

(declare-fun c!134467 () Bool)

(assert (=> b!827370 (= c!134467 ((_ is Star!2067) r!27177))))

(declare-fun e!545711 () List!8893)

(assert (=> b!827370 (= e!545712 e!545711)))

(declare-fun bm!48215 () Bool)

(declare-fun call!48224 () List!8893)

(declare-fun c!134471 () Bool)

(assert (=> bm!48215 (= call!48224 (firstChars!38 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun b!827372 () Bool)

(assert (=> b!827372 (= e!545711 e!545707)))

(assert (=> b!827372 (= c!134471 ((_ is Union!2067) r!27177))))

(declare-fun b!827374 () Bool)

(assert (=> b!827374 (= e!545711 call!48220)))

(declare-fun d!259549 () Bool)

(declare-fun c!134469 () Bool)

(assert (=> d!259549 (= c!134469 (or ((_ is EmptyExpr!2067) r!27177) ((_ is EmptyLang!2067) r!27177)))))

(declare-fun e!545718 () List!8893)

(assert (=> d!259549 (= (firstChars!38 r!27177) e!545718)))

(declare-fun b!827375 () Bool)

(assert (=> b!827375 (= e!545718 Nil!8877)))

(declare-fun b!827377 () Bool)

(declare-fun call!48217 () List!8893)

(assert (=> b!827377 (= e!545715 call!48217)))

(declare-fun bm!48217 () Bool)

(assert (=> bm!48217 (= call!48217 call!48221)))

(declare-fun bm!48218 () Bool)

(assert (=> bm!48218 (= call!48220 (firstChars!38 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun b!827381 () Bool)

(declare-fun call!48218 () List!8893)

(assert (=> b!827381 (= e!545707 call!48218)))

(declare-fun b!827382 () Bool)

(assert (=> b!827382 (= e!545718 e!545712)))

(declare-fun c!134473 () Bool)

(assert (=> b!827382 (= c!134473 ((_ is ElementMatch!2067) r!27177))))

(declare-fun b!827383 () Bool)

(assert (=> b!827383 (= e!545715 call!48218)))

(declare-fun bm!48219 () Bool)

(declare-fun ++!2294 (List!8893 List!8893) List!8893)

(assert (=> bm!48219 (= call!48218 (++!2294 (ite c!134471 call!48224 call!48217) (ite c!134471 call!48221 call!48224)))))

(assert (= (and d!259549 c!134469) b!827375))

(assert (= (and d!259549 (not c!134469)) b!827382))

(assert (= (and b!827382 c!134473) b!827369))

(assert (= (and b!827382 (not c!134473)) b!827370))

(assert (= (and b!827370 c!134467) b!827374))

(assert (= (and b!827370 (not c!134467)) b!827372))

(assert (= (and b!827372 c!134471) b!827381))

(assert (= (and b!827372 (not c!134471)) b!827366))

(assert (= (and b!827366 c!134470) b!827383))

(assert (= (and b!827366 (not c!134470)) b!827377))

(assert (= (or b!827383 b!827377) bm!48217))

(assert (= (or b!827381 bm!48217) bm!48212))

(assert (= (or b!827381 b!827383) bm!48215))

(assert (= (or b!827381 b!827383) bm!48219))

(assert (= (or b!827374 bm!48212) bm!48218))

(declare-fun m!1065675 () Bool)

(assert (=> b!827366 m!1065675))

(declare-fun m!1065677 () Bool)

(assert (=> bm!48215 m!1065677))

(declare-fun m!1065679 () Bool)

(assert (=> bm!48218 m!1065679))

(declare-fun m!1065681 () Bool)

(assert (=> bm!48219 m!1065681))

(assert (=> b!827245 d!259549))

(declare-fun d!259559 () Bool)

(declare-fun lt!317570 () Bool)

(assert (=> d!259559 (= lt!317570 (select (content!1306 (firstChars!38 (regTwo!4647 r!27177))) c!13916))))

(declare-fun e!545721 () Bool)

(assert (=> d!259559 (= lt!317570 e!545721)))

(declare-fun res!380701 () Bool)

(assert (=> d!259559 (=> (not res!380701) (not e!545721))))

(assert (=> d!259559 (= res!380701 ((_ is Cons!8877) (firstChars!38 (regTwo!4647 r!27177))))))

(assert (=> d!259559 (= (contains!1658 (firstChars!38 (regTwo!4647 r!27177)) c!13916) lt!317570)))

(declare-fun b!827386 () Bool)

(declare-fun e!545722 () Bool)

(assert (=> b!827386 (= e!545721 e!545722)))

(declare-fun res!380700 () Bool)

(assert (=> b!827386 (=> res!380700 e!545722)))

(assert (=> b!827386 (= res!380700 (= (h!14278 (firstChars!38 (regTwo!4647 r!27177))) c!13916))))

(declare-fun b!827387 () Bool)

(assert (=> b!827387 (= e!545722 (contains!1658 (t!93185 (firstChars!38 (regTwo!4647 r!27177))) c!13916))))

(assert (= (and d!259559 res!380701) b!827386))

(assert (= (and b!827386 (not res!380700)) b!827387))

(assert (=> d!259559 m!1065613))

(declare-fun m!1065689 () Bool)

(assert (=> d!259559 m!1065689))

(declare-fun m!1065691 () Bool)

(assert (=> d!259559 m!1065691))

(declare-fun m!1065693 () Bool)

(assert (=> b!827387 m!1065693))

(assert (=> b!827240 d!259559))

(declare-fun b!827398 () Bool)

(declare-fun c!134481 () Bool)

(assert (=> b!827398 (= c!134481 (nullable!518 (regOne!4646 (regTwo!4647 r!27177))))))

(declare-fun e!545728 () List!8893)

(declare-fun e!545731 () List!8893)

(assert (=> b!827398 (= e!545728 e!545731)))

(declare-fun bm!48225 () Bool)

(declare-fun call!48233 () List!8893)

(declare-fun call!48232 () List!8893)

(assert (=> bm!48225 (= call!48233 call!48232)))

(declare-fun b!827399 () Bool)

(declare-fun e!545730 () List!8893)

(assert (=> b!827399 (= e!545730 (Cons!8877 (c!134426 (regTwo!4647 r!27177)) Nil!8877))))

(declare-fun b!827400 () Bool)

(declare-fun c!134479 () Bool)

(assert (=> b!827400 (= c!134479 ((_ is Star!2067) (regTwo!4647 r!27177)))))

(declare-fun e!545729 () List!8893)

(assert (=> b!827400 (= e!545730 e!545729)))

(declare-fun bm!48226 () Bool)

(declare-fun call!48234 () List!8893)

(declare-fun c!134482 () Bool)

(assert (=> bm!48226 (= call!48234 (firstChars!38 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun b!827401 () Bool)

(assert (=> b!827401 (= e!545729 e!545728)))

(assert (=> b!827401 (= c!134482 ((_ is Union!2067) (regTwo!4647 r!27177)))))

(declare-fun b!827402 () Bool)

(assert (=> b!827402 (= e!545729 call!48232)))

(declare-fun d!259563 () Bool)

(declare-fun c!134480 () Bool)

(assert (=> d!259563 (= c!134480 (or ((_ is EmptyExpr!2067) (regTwo!4647 r!27177)) ((_ is EmptyLang!2067) (regTwo!4647 r!27177))))))

(declare-fun e!545732 () List!8893)

(assert (=> d!259563 (= (firstChars!38 (regTwo!4647 r!27177)) e!545732)))

(declare-fun b!827403 () Bool)

(assert (=> b!827403 (= e!545732 Nil!8877)))

(declare-fun b!827404 () Bool)

(declare-fun call!48230 () List!8893)

(assert (=> b!827404 (= e!545731 call!48230)))

(declare-fun bm!48227 () Bool)

(assert (=> bm!48227 (= call!48230 call!48233)))

(declare-fun bm!48228 () Bool)

(assert (=> bm!48228 (= call!48232 (firstChars!38 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun b!827405 () Bool)

(declare-fun call!48231 () List!8893)

(assert (=> b!827405 (= e!545728 call!48231)))

(declare-fun b!827406 () Bool)

(assert (=> b!827406 (= e!545732 e!545730)))

(declare-fun c!134483 () Bool)

(assert (=> b!827406 (= c!134483 ((_ is ElementMatch!2067) (regTwo!4647 r!27177)))))

(declare-fun b!827407 () Bool)

(assert (=> b!827407 (= e!545731 call!48231)))

(declare-fun bm!48229 () Bool)

(assert (=> bm!48229 (= call!48231 (++!2294 (ite c!134482 call!48234 call!48230) (ite c!134482 call!48233 call!48234)))))

(assert (= (and d!259563 c!134480) b!827403))

(assert (= (and d!259563 (not c!134480)) b!827406))

(assert (= (and b!827406 c!134483) b!827399))

(assert (= (and b!827406 (not c!134483)) b!827400))

(assert (= (and b!827400 c!134479) b!827402))

(assert (= (and b!827400 (not c!134479)) b!827401))

(assert (= (and b!827401 c!134482) b!827405))

(assert (= (and b!827401 (not c!134482)) b!827398))

(assert (= (and b!827398 c!134481) b!827407))

(assert (= (and b!827398 (not c!134481)) b!827404))

(assert (= (or b!827407 b!827404) bm!48227))

(assert (= (or b!827405 bm!48227) bm!48225))

(assert (= (or b!827405 b!827407) bm!48226))

(assert (= (or b!827405 b!827407) bm!48229))

(assert (= (or b!827402 bm!48225) bm!48228))

(declare-fun m!1065703 () Bool)

(assert (=> b!827398 m!1065703))

(declare-fun m!1065705 () Bool)

(assert (=> bm!48226 m!1065705))

(declare-fun m!1065707 () Bool)

(assert (=> bm!48228 m!1065707))

(declare-fun m!1065709 () Bool)

(assert (=> bm!48229 m!1065709))

(assert (=> b!827240 d!259563))

(declare-fun bm!48233 () Bool)

(declare-fun call!48238 () Bool)

(declare-fun call!48240 () Bool)

(assert (=> bm!48233 (= call!48238 call!48240)))

(declare-fun bm!48234 () Bool)

(declare-fun call!48239 () Bool)

(declare-fun c!134487 () Bool)

(assert (=> bm!48234 (= call!48239 (validRegex!620 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun b!827417 () Bool)

(declare-fun e!545743 () Bool)

(declare-fun e!545742 () Bool)

(assert (=> b!827417 (= e!545743 e!545742)))

(declare-fun c!134486 () Bool)

(assert (=> b!827417 (= c!134486 ((_ is Star!2067) r!27177))))

(declare-fun b!827418 () Bool)

(declare-fun e!545745 () Bool)

(assert (=> b!827418 (= e!545745 call!48240)))

(declare-fun b!827419 () Bool)

(declare-fun res!380708 () Bool)

(declare-fun e!545740 () Bool)

(assert (=> b!827419 (=> (not res!380708) (not e!545740))))

(assert (=> b!827419 (= res!380708 call!48239)))

(declare-fun e!545744 () Bool)

(assert (=> b!827419 (= e!545744 e!545740)))

(declare-fun b!827420 () Bool)

(declare-fun e!545741 () Bool)

(declare-fun e!545746 () Bool)

(assert (=> b!827420 (= e!545741 e!545746)))

(declare-fun res!380709 () Bool)

(assert (=> b!827420 (=> (not res!380709) (not e!545746))))

(assert (=> b!827420 (= res!380709 call!48238)))

(declare-fun b!827421 () Bool)

(assert (=> b!827421 (= e!545740 call!48238)))

(declare-fun b!827422 () Bool)

(assert (=> b!827422 (= e!545746 call!48239)))

(declare-fun b!827423 () Bool)

(assert (=> b!827423 (= e!545742 e!545744)))

(assert (=> b!827423 (= c!134487 ((_ is Union!2067) r!27177))))

(declare-fun bm!48235 () Bool)

(assert (=> bm!48235 (= call!48240 (validRegex!620 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun b!827425 () Bool)

(assert (=> b!827425 (= e!545742 e!545745)))

(declare-fun res!380711 () Bool)

(assert (=> b!827425 (= res!380711 (not (nullable!518 (reg!2396 r!27177))))))

(assert (=> b!827425 (=> (not res!380711) (not e!545745))))

(declare-fun d!259567 () Bool)

(declare-fun res!380710 () Bool)

(assert (=> d!259567 (=> res!380710 e!545743)))

(assert (=> d!259567 (= res!380710 ((_ is ElementMatch!2067) r!27177))))

(assert (=> d!259567 (= (validRegex!620 r!27177) e!545743)))

(declare-fun b!827424 () Bool)

(declare-fun res!380707 () Bool)

(assert (=> b!827424 (=> res!380707 e!545741)))

(assert (=> b!827424 (= res!380707 (not ((_ is Concat!3798) r!27177)))))

(assert (=> b!827424 (= e!545744 e!545741)))

(assert (= (and d!259567 (not res!380710)) b!827417))

(assert (= (and b!827417 c!134486) b!827425))

(assert (= (and b!827417 (not c!134486)) b!827423))

(assert (= (and b!827425 res!380711) b!827418))

(assert (= (and b!827423 c!134487) b!827419))

(assert (= (and b!827423 (not c!134487)) b!827424))

(assert (= (and b!827419 res!380708) b!827421))

(assert (= (and b!827424 (not res!380707)) b!827420))

(assert (= (and b!827420 res!380709) b!827422))

(assert (= (or b!827419 b!827422) bm!48234))

(assert (= (or b!827421 b!827420) bm!48233))

(assert (= (or b!827418 bm!48233) bm!48235))

(declare-fun m!1065717 () Bool)

(assert (=> bm!48234 m!1065717))

(declare-fun m!1065719 () Bool)

(assert (=> bm!48235 m!1065719))

(declare-fun m!1065721 () Bool)

(assert (=> b!827425 m!1065721))

(assert (=> start!73878 d!259567))

(declare-fun d!259569 () Bool)

(declare-fun lt!317571 () Bool)

(assert (=> d!259569 (= lt!317571 (select (content!1306 (firstChars!38 (regOne!4647 r!27177))) c!13916))))

(declare-fun e!545749 () Bool)

(assert (=> d!259569 (= lt!317571 e!545749)))

(declare-fun res!380713 () Bool)

(assert (=> d!259569 (=> (not res!380713) (not e!545749))))

(assert (=> d!259569 (= res!380713 ((_ is Cons!8877) (firstChars!38 (regOne!4647 r!27177))))))

(assert (=> d!259569 (= (contains!1658 (firstChars!38 (regOne!4647 r!27177)) c!13916) lt!317571)))

(declare-fun b!827432 () Bool)

(declare-fun e!545750 () Bool)

(assert (=> b!827432 (= e!545749 e!545750)))

(declare-fun res!380712 () Bool)

(assert (=> b!827432 (=> res!380712 e!545750)))

(assert (=> b!827432 (= res!380712 (= (h!14278 (firstChars!38 (regOne!4647 r!27177))) c!13916))))

(declare-fun b!827433 () Bool)

(assert (=> b!827433 (= e!545750 (contains!1658 (t!93185 (firstChars!38 (regOne!4647 r!27177))) c!13916))))

(assert (= (and d!259569 res!380713) b!827432))

(assert (= (and b!827432 (not res!380712)) b!827433))

(assert (=> d!259569 m!1065617))

(declare-fun m!1065723 () Bool)

(assert (=> d!259569 m!1065723))

(declare-fun m!1065725 () Bool)

(assert (=> d!259569 m!1065725))

(declare-fun m!1065727 () Bool)

(assert (=> b!827433 m!1065727))

(assert (=> b!827243 d!259569))

(declare-fun b!827438 () Bool)

(declare-fun c!134490 () Bool)

(assert (=> b!827438 (= c!134490 (nullable!518 (regOne!4646 (regOne!4647 r!27177))))))

(declare-fun e!545751 () List!8893)

(declare-fun e!545754 () List!8893)

(assert (=> b!827438 (= e!545751 e!545754)))

(declare-fun bm!48236 () Bool)

(declare-fun call!48244 () List!8893)

(declare-fun call!48243 () List!8893)

(assert (=> bm!48236 (= call!48244 call!48243)))

(declare-fun b!827439 () Bool)

(declare-fun e!545753 () List!8893)

(assert (=> b!827439 (= e!545753 (Cons!8877 (c!134426 (regOne!4647 r!27177)) Nil!8877))))

(declare-fun b!827440 () Bool)

(declare-fun c!134488 () Bool)

(assert (=> b!827440 (= c!134488 ((_ is Star!2067) (regOne!4647 r!27177)))))

(declare-fun e!545752 () List!8893)

(assert (=> b!827440 (= e!545753 e!545752)))

(declare-fun bm!48237 () Bool)

(declare-fun call!48245 () List!8893)

(declare-fun c!134491 () Bool)

(assert (=> bm!48237 (= call!48245 (firstChars!38 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))))))

(declare-fun b!827441 () Bool)

(assert (=> b!827441 (= e!545752 e!545751)))

(assert (=> b!827441 (= c!134491 ((_ is Union!2067) (regOne!4647 r!27177)))))

(declare-fun b!827442 () Bool)

(assert (=> b!827442 (= e!545752 call!48243)))

(declare-fun d!259571 () Bool)

(declare-fun c!134489 () Bool)

(assert (=> d!259571 (= c!134489 (or ((_ is EmptyExpr!2067) (regOne!4647 r!27177)) ((_ is EmptyLang!2067) (regOne!4647 r!27177))))))

(declare-fun e!545755 () List!8893)

(assert (=> d!259571 (= (firstChars!38 (regOne!4647 r!27177)) e!545755)))

(declare-fun b!827443 () Bool)

(assert (=> b!827443 (= e!545755 Nil!8877)))

(declare-fun b!827444 () Bool)

(declare-fun call!48241 () List!8893)

(assert (=> b!827444 (= e!545754 call!48241)))

(declare-fun bm!48238 () Bool)

(assert (=> bm!48238 (= call!48241 call!48244)))

(declare-fun bm!48239 () Bool)

(assert (=> bm!48239 (= call!48243 (firstChars!38 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))))))

(declare-fun b!827445 () Bool)

(declare-fun call!48242 () List!8893)

(assert (=> b!827445 (= e!545751 call!48242)))

(declare-fun b!827446 () Bool)

(assert (=> b!827446 (= e!545755 e!545753)))

(declare-fun c!134492 () Bool)

(assert (=> b!827446 (= c!134492 ((_ is ElementMatch!2067) (regOne!4647 r!27177)))))

(declare-fun b!827447 () Bool)

(assert (=> b!827447 (= e!545754 call!48242)))

(declare-fun bm!48240 () Bool)

(assert (=> bm!48240 (= call!48242 (++!2294 (ite c!134491 call!48245 call!48241) (ite c!134491 call!48244 call!48245)))))

(assert (= (and d!259571 c!134489) b!827443))

(assert (= (and d!259571 (not c!134489)) b!827446))

(assert (= (and b!827446 c!134492) b!827439))

(assert (= (and b!827446 (not c!134492)) b!827440))

(assert (= (and b!827440 c!134488) b!827442))

(assert (= (and b!827440 (not c!134488)) b!827441))

(assert (= (and b!827441 c!134491) b!827445))

(assert (= (and b!827441 (not c!134491)) b!827438))

(assert (= (and b!827438 c!134490) b!827447))

(assert (= (and b!827438 (not c!134490)) b!827444))

(assert (= (or b!827447 b!827444) bm!48238))

(assert (= (or b!827445 bm!48238) bm!48236))

(assert (= (or b!827445 b!827447) bm!48237))

(assert (= (or b!827445 b!827447) bm!48240))

(assert (= (or b!827442 bm!48236) bm!48239))

(declare-fun m!1065729 () Bool)

(assert (=> b!827438 m!1065729))

(declare-fun m!1065731 () Bool)

(assert (=> bm!48237 m!1065731))

(declare-fun m!1065733 () Bool)

(assert (=> bm!48239 m!1065733))

(declare-fun m!1065735 () Bool)

(assert (=> bm!48240 m!1065735))

(assert (=> b!827243 d!259571))

(declare-fun b!827478 () Bool)

(declare-fun e!545763 () Bool)

(assert (=> b!827478 (= e!545763 tp_is_empty!3857)))

(declare-fun b!827481 () Bool)

(declare-fun tp!258810 () Bool)

(declare-fun tp!258813 () Bool)

(assert (=> b!827481 (= e!545763 (and tp!258810 tp!258813))))

(assert (=> b!827239 (= tp!258762 e!545763)))

(declare-fun b!827479 () Bool)

(declare-fun tp!258812 () Bool)

(declare-fun tp!258814 () Bool)

(assert (=> b!827479 (= e!545763 (and tp!258812 tp!258814))))

(declare-fun b!827480 () Bool)

(declare-fun tp!258811 () Bool)

(assert (=> b!827480 (= e!545763 tp!258811)))

(assert (= (and b!827239 ((_ is ElementMatch!2067) (reg!2396 r!27177))) b!827478))

(assert (= (and b!827239 ((_ is Concat!3798) (reg!2396 r!27177))) b!827479))

(assert (= (and b!827239 ((_ is Star!2067) (reg!2396 r!27177))) b!827480))

(assert (= (and b!827239 ((_ is Union!2067) (reg!2396 r!27177))) b!827481))

(declare-fun b!827482 () Bool)

(declare-fun e!545764 () Bool)

(assert (=> b!827482 (= e!545764 tp_is_empty!3857)))

(declare-fun b!827485 () Bool)

(declare-fun tp!258815 () Bool)

(declare-fun tp!258818 () Bool)

(assert (=> b!827485 (= e!545764 (and tp!258815 tp!258818))))

(assert (=> b!827244 (= tp!258763 e!545764)))

(declare-fun b!827483 () Bool)

(declare-fun tp!258817 () Bool)

(declare-fun tp!258819 () Bool)

(assert (=> b!827483 (= e!545764 (and tp!258817 tp!258819))))

(declare-fun b!827484 () Bool)

(declare-fun tp!258816 () Bool)

(assert (=> b!827484 (= e!545764 tp!258816)))

(assert (= (and b!827244 ((_ is ElementMatch!2067) (regOne!4646 r!27177))) b!827482))

(assert (= (and b!827244 ((_ is Concat!3798) (regOne!4646 r!27177))) b!827483))

(assert (= (and b!827244 ((_ is Star!2067) (regOne!4646 r!27177))) b!827484))

(assert (= (and b!827244 ((_ is Union!2067) (regOne!4646 r!27177))) b!827485))

(declare-fun b!827486 () Bool)

(declare-fun e!545765 () Bool)

(assert (=> b!827486 (= e!545765 tp_is_empty!3857)))

(declare-fun b!827489 () Bool)

(declare-fun tp!258820 () Bool)

(declare-fun tp!258823 () Bool)

(assert (=> b!827489 (= e!545765 (and tp!258820 tp!258823))))

(assert (=> b!827244 (= tp!258761 e!545765)))

(declare-fun b!827487 () Bool)

(declare-fun tp!258822 () Bool)

(declare-fun tp!258824 () Bool)

(assert (=> b!827487 (= e!545765 (and tp!258822 tp!258824))))

(declare-fun b!827488 () Bool)

(declare-fun tp!258821 () Bool)

(assert (=> b!827488 (= e!545765 tp!258821)))

(assert (= (and b!827244 ((_ is ElementMatch!2067) (regTwo!4646 r!27177))) b!827486))

(assert (= (and b!827244 ((_ is Concat!3798) (regTwo!4646 r!27177))) b!827487))

(assert (= (and b!827244 ((_ is Star!2067) (regTwo!4646 r!27177))) b!827488))

(assert (= (and b!827244 ((_ is Union!2067) (regTwo!4646 r!27177))) b!827489))

(declare-fun b!827490 () Bool)

(declare-fun e!545766 () Bool)

(assert (=> b!827490 (= e!545766 tp_is_empty!3857)))

(declare-fun b!827493 () Bool)

(declare-fun tp!258825 () Bool)

(declare-fun tp!258828 () Bool)

(assert (=> b!827493 (= e!545766 (and tp!258825 tp!258828))))

(assert (=> b!827238 (= tp!258764 e!545766)))

(declare-fun b!827491 () Bool)

(declare-fun tp!258827 () Bool)

(declare-fun tp!258829 () Bool)

(assert (=> b!827491 (= e!545766 (and tp!258827 tp!258829))))

(declare-fun b!827492 () Bool)

(declare-fun tp!258826 () Bool)

(assert (=> b!827492 (= e!545766 tp!258826)))

(assert (= (and b!827238 ((_ is ElementMatch!2067) (regOne!4647 r!27177))) b!827490))

(assert (= (and b!827238 ((_ is Concat!3798) (regOne!4647 r!27177))) b!827491))

(assert (= (and b!827238 ((_ is Star!2067) (regOne!4647 r!27177))) b!827492))

(assert (= (and b!827238 ((_ is Union!2067) (regOne!4647 r!27177))) b!827493))

(declare-fun b!827494 () Bool)

(declare-fun e!545767 () Bool)

(assert (=> b!827494 (= e!545767 tp_is_empty!3857)))

(declare-fun b!827497 () Bool)

(declare-fun tp!258830 () Bool)

(declare-fun tp!258833 () Bool)

(assert (=> b!827497 (= e!545767 (and tp!258830 tp!258833))))

(assert (=> b!827238 (= tp!258760 e!545767)))

(declare-fun b!827495 () Bool)

(declare-fun tp!258832 () Bool)

(declare-fun tp!258834 () Bool)

(assert (=> b!827495 (= e!545767 (and tp!258832 tp!258834))))

(declare-fun b!827496 () Bool)

(declare-fun tp!258831 () Bool)

(assert (=> b!827496 (= e!545767 tp!258831)))

(assert (= (and b!827238 ((_ is ElementMatch!2067) (regTwo!4647 r!27177))) b!827494))

(assert (= (and b!827238 ((_ is Concat!3798) (regTwo!4647 r!27177))) b!827495))

(assert (= (and b!827238 ((_ is Star!2067) (regTwo!4647 r!27177))) b!827496))

(assert (= (and b!827238 ((_ is Union!2067) (regTwo!4647 r!27177))) b!827497))

(check-sat (not b!827438) (not b!827298) (not b!827495) (not bm!48229) (not d!259559) (not b!827433) (not bm!48228) (not b!827492) (not bm!48240) (not b!827485) (not b!827483) (not bm!48226) (not bm!48234) (not bm!48185) (not b!827387) (not bm!48184) (not b!827481) (not bm!48215) (not b!827489) (not b!827398) (not b!827425) (not b!827493) (not b!827366) (not d!259569) (not b!827497) (not b!827480) (not bm!48235) (not bm!48239) (not bm!48237) (not b!827304) (not b!827484) (not d!259547) (not b!827491) (not b!827487) (not b!827496) (not bm!48218) tp_is_empty!3857 (not b!827488) (not bm!48219) (not b!827479))
(check-sat)
(get-model)

(declare-fun d!259573 () Bool)

(declare-fun c!134495 () Bool)

(assert (=> d!259573 (= c!134495 ((_ is Nil!8877) (firstChars!38 (regOne!4647 r!27177))))))

(declare-fun e!545770 () (InoxSet C!4704))

(assert (=> d!259573 (= (content!1306 (firstChars!38 (regOne!4647 r!27177))) e!545770)))

(declare-fun b!827502 () Bool)

(assert (=> b!827502 (= e!545770 ((as const (Array C!4704 Bool)) false))))

(declare-fun b!827503 () Bool)

(assert (=> b!827503 (= e!545770 ((_ map or) (store ((as const (Array C!4704 Bool)) false) (h!14278 (firstChars!38 (regOne!4647 r!27177))) true) (content!1306 (t!93185 (firstChars!38 (regOne!4647 r!27177))))))))

(assert (= (and d!259573 c!134495) b!827502))

(assert (= (and d!259573 (not c!134495)) b!827503))

(declare-fun m!1065737 () Bool)

(assert (=> b!827503 m!1065737))

(declare-fun m!1065739 () Bool)

(assert (=> b!827503 m!1065739))

(assert (=> d!259569 d!259573))

(declare-fun c!134498 () Bool)

(declare-fun b!827504 () Bool)

(assert (=> b!827504 (= c!134498 (nullable!518 (regOne!4646 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177)))))))))

(declare-fun e!545771 () List!8893)

(declare-fun e!545774 () List!8893)

(assert (=> b!827504 (= e!545771 e!545774)))

(declare-fun bm!48241 () Bool)

(declare-fun call!48249 () List!8893)

(declare-fun call!48248 () List!8893)

(assert (=> bm!48241 (= call!48249 call!48248)))

(declare-fun e!545773 () List!8893)

(declare-fun b!827505 () Bool)

(assert (=> b!827505 (= e!545773 (Cons!8877 (c!134426 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) Nil!8877))))

(declare-fun b!827506 () Bool)

(declare-fun c!134496 () Bool)

(assert (=> b!827506 (= c!134496 ((_ is Star!2067) (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun e!545772 () List!8893)

(assert (=> b!827506 (= e!545773 e!545772)))

(declare-fun c!134499 () Bool)

(declare-fun call!48250 () List!8893)

(declare-fun bm!48242 () Bool)

(assert (=> bm!48242 (= call!48250 (firstChars!38 (ite c!134499 (regOne!4647 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (regTwo!4646 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))))

(declare-fun b!827507 () Bool)

(assert (=> b!827507 (= e!545772 e!545771)))

(assert (=> b!827507 (= c!134499 ((_ is Union!2067) (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun b!827508 () Bool)

(assert (=> b!827508 (= e!545772 call!48248)))

(declare-fun d!259575 () Bool)

(declare-fun c!134497 () Bool)

(assert (=> d!259575 (= c!134497 (or ((_ is EmptyExpr!2067) (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) ((_ is EmptyLang!2067) (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177)))))))))

(declare-fun e!545775 () List!8893)

(assert (=> d!259575 (= (firstChars!38 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) e!545775)))

(declare-fun b!827509 () Bool)

(assert (=> b!827509 (= e!545775 Nil!8877)))

(declare-fun b!827510 () Bool)

(declare-fun call!48246 () List!8893)

(assert (=> b!827510 (= e!545774 call!48246)))

(declare-fun bm!48243 () Bool)

(assert (=> bm!48243 (= call!48246 call!48249)))

(declare-fun bm!48244 () Bool)

(assert (=> bm!48244 (= call!48248 (firstChars!38 (ite c!134496 (reg!2396 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (ite c!134499 (regTwo!4647 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (regOne!4646 (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177)))))))))))

(declare-fun b!827511 () Bool)

(declare-fun call!48247 () List!8893)

(assert (=> b!827511 (= e!545771 call!48247)))

(declare-fun b!827512 () Bool)

(assert (=> b!827512 (= e!545775 e!545773)))

(declare-fun c!134500 () Bool)

(assert (=> b!827512 (= c!134500 ((_ is ElementMatch!2067) (ite c!134479 (reg!2396 (regTwo!4647 r!27177)) (ite c!134482 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun b!827513 () Bool)

(assert (=> b!827513 (= e!545774 call!48247)))

(declare-fun bm!48245 () Bool)

(assert (=> bm!48245 (= call!48247 (++!2294 (ite c!134499 call!48250 call!48246) (ite c!134499 call!48249 call!48250)))))

(assert (= (and d!259575 c!134497) b!827509))

(assert (= (and d!259575 (not c!134497)) b!827512))

(assert (= (and b!827512 c!134500) b!827505))

(assert (= (and b!827512 (not c!134500)) b!827506))

(assert (= (and b!827506 c!134496) b!827508))

(assert (= (and b!827506 (not c!134496)) b!827507))

(assert (= (and b!827507 c!134499) b!827511))

(assert (= (and b!827507 (not c!134499)) b!827504))

(assert (= (and b!827504 c!134498) b!827513))

(assert (= (and b!827504 (not c!134498)) b!827510))

(assert (= (or b!827513 b!827510) bm!48243))

(assert (= (or b!827511 bm!48243) bm!48241))

(assert (= (or b!827511 b!827513) bm!48242))

(assert (= (or b!827511 b!827513) bm!48245))

(assert (= (or b!827508 bm!48241) bm!48244))

(declare-fun m!1065741 () Bool)

(assert (=> b!827504 m!1065741))

(declare-fun m!1065743 () Bool)

(assert (=> bm!48242 m!1065743))

(declare-fun m!1065745 () Bool)

(assert (=> bm!48244 m!1065745))

(declare-fun m!1065747 () Bool)

(assert (=> bm!48245 m!1065747))

(assert (=> bm!48228 d!259575))

(declare-fun d!259577 () Bool)

(declare-fun nullableFct!156 (Regex!2067) Bool)

(assert (=> d!259577 (= (nullable!518 (regOne!4646 r!27177)) (nullableFct!156 (regOne!4646 r!27177)))))

(declare-fun bs!229600 () Bool)

(assert (= bs!229600 d!259577))

(declare-fun m!1065749 () Bool)

(assert (=> bs!229600 m!1065749))

(assert (=> b!827366 d!259577))

(declare-fun c!134503 () Bool)

(declare-fun b!827514 () Bool)

(assert (=> b!827514 (= c!134503 (nullable!518 (regOne!4646 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177))))))))

(declare-fun e!545776 () List!8893)

(declare-fun e!545779 () List!8893)

(assert (=> b!827514 (= e!545776 e!545779)))

(declare-fun bm!48246 () Bool)

(declare-fun call!48254 () List!8893)

(declare-fun call!48253 () List!8893)

(assert (=> bm!48246 (= call!48254 call!48253)))

(declare-fun b!827515 () Bool)

(declare-fun e!545778 () List!8893)

(assert (=> b!827515 (= e!545778 (Cons!8877 (c!134426 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) Nil!8877))))

(declare-fun c!134501 () Bool)

(declare-fun b!827516 () Bool)

(assert (=> b!827516 (= c!134501 ((_ is Star!2067) (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun e!545777 () List!8893)

(assert (=> b!827516 (= e!545778 e!545777)))

(declare-fun c!134504 () Bool)

(declare-fun call!48255 () List!8893)

(declare-fun bm!48247 () Bool)

(assert (=> bm!48247 (= call!48255 (firstChars!38 (ite c!134504 (regOne!4647 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (regTwo!4646 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))))

(declare-fun b!827517 () Bool)

(assert (=> b!827517 (= e!545777 e!545776)))

(assert (=> b!827517 (= c!134504 ((_ is Union!2067) (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun b!827518 () Bool)

(assert (=> b!827518 (= e!545777 call!48253)))

(declare-fun c!134502 () Bool)

(declare-fun d!259579 () Bool)

(assert (=> d!259579 (= c!134502 (or ((_ is EmptyExpr!2067) (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) ((_ is EmptyLang!2067) (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177))))))))

(declare-fun e!545780 () List!8893)

(assert (=> d!259579 (= (firstChars!38 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) e!545780)))

(declare-fun b!827519 () Bool)

(assert (=> b!827519 (= e!545780 Nil!8877)))

(declare-fun b!827520 () Bool)

(declare-fun call!48251 () List!8893)

(assert (=> b!827520 (= e!545779 call!48251)))

(declare-fun bm!48248 () Bool)

(assert (=> bm!48248 (= call!48251 call!48254)))

(declare-fun bm!48249 () Bool)

(assert (=> bm!48249 (= call!48253 (firstChars!38 (ite c!134501 (reg!2396 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (ite c!134504 (regTwo!4647 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (regOne!4646 (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177))))))))))

(declare-fun b!827521 () Bool)

(declare-fun call!48252 () List!8893)

(assert (=> b!827521 (= e!545776 call!48252)))

(declare-fun b!827522 () Bool)

(assert (=> b!827522 (= e!545780 e!545778)))

(declare-fun c!134505 () Bool)

(assert (=> b!827522 (= c!134505 ((_ is ElementMatch!2067) (ite c!134467 (reg!2396 r!27177) (ite c!134471 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun b!827523 () Bool)

(assert (=> b!827523 (= e!545779 call!48252)))

(declare-fun bm!48250 () Bool)

(assert (=> bm!48250 (= call!48252 (++!2294 (ite c!134504 call!48255 call!48251) (ite c!134504 call!48254 call!48255)))))

(assert (= (and d!259579 c!134502) b!827519))

(assert (= (and d!259579 (not c!134502)) b!827522))

(assert (= (and b!827522 c!134505) b!827515))

(assert (= (and b!827522 (not c!134505)) b!827516))

(assert (= (and b!827516 c!134501) b!827518))

(assert (= (and b!827516 (not c!134501)) b!827517))

(assert (= (and b!827517 c!134504) b!827521))

(assert (= (and b!827517 (not c!134504)) b!827514))

(assert (= (and b!827514 c!134503) b!827523))

(assert (= (and b!827514 (not c!134503)) b!827520))

(assert (= (or b!827523 b!827520) bm!48248))

(assert (= (or b!827521 bm!48248) bm!48246))

(assert (= (or b!827521 b!827523) bm!48247))

(assert (= (or b!827521 b!827523) bm!48250))

(assert (= (or b!827518 bm!48246) bm!48249))

(declare-fun m!1065751 () Bool)

(assert (=> b!827514 m!1065751))

(declare-fun m!1065753 () Bool)

(assert (=> bm!48247 m!1065753))

(declare-fun m!1065755 () Bool)

(assert (=> bm!48249 m!1065755))

(declare-fun m!1065757 () Bool)

(assert (=> bm!48250 m!1065757))

(assert (=> bm!48218 d!259579))

(declare-fun b!827533 () Bool)

(declare-fun e!545786 () List!8893)

(assert (=> b!827533 (= e!545786 (Cons!8877 (h!14278 (ite c!134471 call!48224 call!48217)) (++!2294 (t!93185 (ite c!134471 call!48224 call!48217)) (ite c!134471 call!48221 call!48224))))))

(declare-fun b!827534 () Bool)

(declare-fun res!380718 () Bool)

(declare-fun e!545785 () Bool)

(assert (=> b!827534 (=> (not res!380718) (not e!545785))))

(declare-fun lt!317574 () List!8893)

(declare-fun size!7474 (List!8893) Int)

(assert (=> b!827534 (= res!380718 (= (size!7474 lt!317574) (+ (size!7474 (ite c!134471 call!48224 call!48217)) (size!7474 (ite c!134471 call!48221 call!48224)))))))

(declare-fun b!827535 () Bool)

(assert (=> b!827535 (= e!545785 (or (not (= (ite c!134471 call!48221 call!48224) Nil!8877)) (= lt!317574 (ite c!134471 call!48224 call!48217))))))

(declare-fun b!827532 () Bool)

(assert (=> b!827532 (= e!545786 (ite c!134471 call!48221 call!48224))))

(declare-fun d!259581 () Bool)

(assert (=> d!259581 e!545785))

(declare-fun res!380719 () Bool)

(assert (=> d!259581 (=> (not res!380719) (not e!545785))))

(assert (=> d!259581 (= res!380719 (= (content!1306 lt!317574) ((_ map or) (content!1306 (ite c!134471 call!48224 call!48217)) (content!1306 (ite c!134471 call!48221 call!48224)))))))

(assert (=> d!259581 (= lt!317574 e!545786)))

(declare-fun c!134508 () Bool)

(assert (=> d!259581 (= c!134508 ((_ is Nil!8877) (ite c!134471 call!48224 call!48217)))))

(assert (=> d!259581 (= (++!2294 (ite c!134471 call!48224 call!48217) (ite c!134471 call!48221 call!48224)) lt!317574)))

(assert (= (and d!259581 c!134508) b!827532))

(assert (= (and d!259581 (not c!134508)) b!827533))

(assert (= (and d!259581 res!380719) b!827534))

(assert (= (and b!827534 res!380718) b!827535))

(declare-fun m!1065759 () Bool)

(assert (=> b!827533 m!1065759))

(declare-fun m!1065761 () Bool)

(assert (=> b!827534 m!1065761))

(declare-fun m!1065763 () Bool)

(assert (=> b!827534 m!1065763))

(declare-fun m!1065765 () Bool)

(assert (=> b!827534 m!1065765))

(declare-fun m!1065767 () Bool)

(assert (=> d!259581 m!1065767))

(declare-fun m!1065769 () Bool)

(assert (=> d!259581 m!1065769))

(declare-fun m!1065771 () Bool)

(assert (=> d!259581 m!1065771))

(assert (=> bm!48219 d!259581))

(declare-fun bm!48251 () Bool)

(declare-fun call!48256 () Bool)

(declare-fun call!48258 () Bool)

(assert (=> bm!48251 (= call!48256 call!48258)))

(declare-fun c!134510 () Bool)

(declare-fun bm!48252 () Bool)

(declare-fun call!48257 () Bool)

(assert (=> bm!48252 (= call!48257 (validRegex!620 (ite c!134510 (regOne!4647 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (regTwo!4646 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))))

(declare-fun b!827536 () Bool)

(declare-fun e!545790 () Bool)

(declare-fun e!545789 () Bool)

(assert (=> b!827536 (= e!545790 e!545789)))

(declare-fun c!134509 () Bool)

(assert (=> b!827536 (= c!134509 ((_ is Star!2067) (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun b!827537 () Bool)

(declare-fun e!545792 () Bool)

(assert (=> b!827537 (= e!545792 call!48258)))

(declare-fun b!827538 () Bool)

(declare-fun res!380721 () Bool)

(declare-fun e!545787 () Bool)

(assert (=> b!827538 (=> (not res!380721) (not e!545787))))

(assert (=> b!827538 (= res!380721 call!48257)))

(declare-fun e!545791 () Bool)

(assert (=> b!827538 (= e!545791 e!545787)))

(declare-fun b!827539 () Bool)

(declare-fun e!545788 () Bool)

(declare-fun e!545793 () Bool)

(assert (=> b!827539 (= e!545788 e!545793)))

(declare-fun res!380722 () Bool)

(assert (=> b!827539 (=> (not res!380722) (not e!545793))))

(assert (=> b!827539 (= res!380722 call!48256)))

(declare-fun b!827540 () Bool)

(assert (=> b!827540 (= e!545787 call!48256)))

(declare-fun b!827541 () Bool)

(assert (=> b!827541 (= e!545793 call!48257)))

(declare-fun b!827542 () Bool)

(assert (=> b!827542 (= e!545789 e!545791)))

(assert (=> b!827542 (= c!134510 ((_ is Union!2067) (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(declare-fun bm!48253 () Bool)

(assert (=> bm!48253 (= call!48258 (validRegex!620 (ite c!134509 (reg!2396 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (ite c!134510 (regTwo!4647 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) (regOne!4646 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177)))))))))))

(declare-fun b!827544 () Bool)

(assert (=> b!827544 (= e!545789 e!545792)))

(declare-fun res!380724 () Bool)

(assert (=> b!827544 (= res!380724 (not (nullable!518 (reg!2396 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))))

(assert (=> b!827544 (=> (not res!380724) (not e!545792))))

(declare-fun d!259583 () Bool)

(declare-fun res!380723 () Bool)

(assert (=> d!259583 (=> res!380723 e!545790)))

(assert (=> d!259583 (= res!380723 ((_ is ElementMatch!2067) (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))))))

(assert (=> d!259583 (= (validRegex!620 (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177))))) e!545790)))

(declare-fun b!827543 () Bool)

(declare-fun res!380720 () Bool)

(assert (=> b!827543 (=> res!380720 e!545788)))

(assert (=> b!827543 (= res!380720 (not ((_ is Concat!3798) (ite c!134441 (reg!2396 (regTwo!4647 r!27177)) (ite c!134442 (regTwo!4647 (regTwo!4647 r!27177)) (regOne!4646 (regTwo!4647 r!27177)))))))))

(assert (=> b!827543 (= e!545791 e!545788)))

(assert (= (and d!259583 (not res!380723)) b!827536))

(assert (= (and b!827536 c!134509) b!827544))

(assert (= (and b!827536 (not c!134509)) b!827542))

(assert (= (and b!827544 res!380724) b!827537))

(assert (= (and b!827542 c!134510) b!827538))

(assert (= (and b!827542 (not c!134510)) b!827543))

(assert (= (and b!827538 res!380721) b!827540))

(assert (= (and b!827543 (not res!380720)) b!827539))

(assert (= (and b!827539 res!380722) b!827541))

(assert (= (or b!827538 b!827541) bm!48252))

(assert (= (or b!827540 b!827539) bm!48251))

(assert (= (or b!827537 bm!48251) bm!48253))

(declare-fun m!1065773 () Bool)

(assert (=> bm!48252 m!1065773))

(declare-fun m!1065775 () Bool)

(assert (=> bm!48253 m!1065775))

(declare-fun m!1065777 () Bool)

(assert (=> b!827544 m!1065777))

(assert (=> bm!48185 d!259583))

(declare-fun bm!48254 () Bool)

(declare-fun call!48259 () Bool)

(declare-fun call!48261 () Bool)

(assert (=> bm!48254 (= call!48259 call!48261)))

(declare-fun call!48260 () Bool)

(declare-fun bm!48255 () Bool)

(declare-fun c!134512 () Bool)

(assert (=> bm!48255 (= call!48260 (validRegex!620 (ite c!134512 (regOne!4647 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (regTwo!4646 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))))

(declare-fun b!827545 () Bool)

(declare-fun e!545797 () Bool)

(declare-fun e!545796 () Bool)

(assert (=> b!827545 (= e!545797 e!545796)))

(declare-fun c!134511 () Bool)

(assert (=> b!827545 (= c!134511 ((_ is Star!2067) (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun b!827546 () Bool)

(declare-fun e!545799 () Bool)

(assert (=> b!827546 (= e!545799 call!48261)))

(declare-fun b!827547 () Bool)

(declare-fun res!380726 () Bool)

(declare-fun e!545794 () Bool)

(assert (=> b!827547 (=> (not res!380726) (not e!545794))))

(assert (=> b!827547 (= res!380726 call!48260)))

(declare-fun e!545798 () Bool)

(assert (=> b!827547 (= e!545798 e!545794)))

(declare-fun b!827548 () Bool)

(declare-fun e!545795 () Bool)

(declare-fun e!545800 () Bool)

(assert (=> b!827548 (= e!545795 e!545800)))

(declare-fun res!380727 () Bool)

(assert (=> b!827548 (=> (not res!380727) (not e!545800))))

(assert (=> b!827548 (= res!380727 call!48259)))

(declare-fun b!827549 () Bool)

(assert (=> b!827549 (= e!545794 call!48259)))

(declare-fun b!827550 () Bool)

(assert (=> b!827550 (= e!545800 call!48260)))

(declare-fun b!827551 () Bool)

(assert (=> b!827551 (= e!545796 e!545798)))

(assert (=> b!827551 (= c!134512 ((_ is Union!2067) (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun bm!48256 () Bool)

(assert (=> bm!48256 (= call!48261 (validRegex!620 (ite c!134511 (reg!2396 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (ite c!134512 (regTwo!4647 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (regOne!4646 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177))))))))))

(declare-fun b!827553 () Bool)

(assert (=> b!827553 (= e!545796 e!545799)))

(declare-fun res!380729 () Bool)

(assert (=> b!827553 (= res!380729 (not (nullable!518 (reg!2396 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))))

(assert (=> b!827553 (=> (not res!380729) (not e!545799))))

(declare-fun d!259585 () Bool)

(declare-fun res!380728 () Bool)

(assert (=> d!259585 (=> res!380728 e!545797)))

(assert (=> d!259585 (= res!380728 ((_ is ElementMatch!2067) (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(assert (=> d!259585 (= (validRegex!620 (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) e!545797)))

(declare-fun b!827552 () Bool)

(declare-fun res!380725 () Bool)

(assert (=> b!827552 (=> res!380725 e!545795)))

(assert (=> b!827552 (= res!380725 (not ((_ is Concat!3798) (ite c!134442 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177))))))))

(assert (=> b!827552 (= e!545798 e!545795)))

(assert (= (and d!259585 (not res!380728)) b!827545))

(assert (= (and b!827545 c!134511) b!827553))

(assert (= (and b!827545 (not c!134511)) b!827551))

(assert (= (and b!827553 res!380729) b!827546))

(assert (= (and b!827551 c!134512) b!827547))

(assert (= (and b!827551 (not c!134512)) b!827552))

(assert (= (and b!827547 res!380726) b!827549))

(assert (= (and b!827552 (not res!380725)) b!827548))

(assert (= (and b!827548 res!380727) b!827550))

(assert (= (or b!827547 b!827550) bm!48255))

(assert (= (or b!827549 b!827548) bm!48254))

(assert (= (or b!827546 bm!48254) bm!48256))

(declare-fun m!1065779 () Bool)

(assert (=> bm!48255 m!1065779))

(declare-fun m!1065781 () Bool)

(assert (=> bm!48256 m!1065781))

(declare-fun m!1065783 () Bool)

(assert (=> b!827553 m!1065783))

(assert (=> bm!48184 d!259585))

(declare-fun b!827554 () Bool)

(declare-fun c!134515 () Bool)

(assert (=> b!827554 (= c!134515 (nullable!518 (regOne!4646 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177))))))))

(declare-fun e!545801 () List!8893)

(declare-fun e!545804 () List!8893)

(assert (=> b!827554 (= e!545801 e!545804)))

(declare-fun bm!48257 () Bool)

(declare-fun call!48265 () List!8893)

(declare-fun call!48264 () List!8893)

(assert (=> bm!48257 (= call!48265 call!48264)))

(declare-fun b!827555 () Bool)

(declare-fun e!545803 () List!8893)

(assert (=> b!827555 (= e!545803 (Cons!8877 (c!134426 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) Nil!8877))))

(declare-fun b!827556 () Bool)

(declare-fun c!134513 () Bool)

(assert (=> b!827556 (= c!134513 ((_ is Star!2067) (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun e!545802 () List!8893)

(assert (=> b!827556 (= e!545803 e!545802)))

(declare-fun c!134516 () Bool)

(declare-fun bm!48258 () Bool)

(declare-fun call!48266 () List!8893)

(assert (=> bm!48258 (= call!48266 (firstChars!38 (ite c!134516 (regOne!4647 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (regTwo!4646 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))))

(declare-fun b!827557 () Bool)

(assert (=> b!827557 (= e!545802 e!545801)))

(assert (=> b!827557 (= c!134516 ((_ is Union!2067) (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun b!827558 () Bool)

(assert (=> b!827558 (= e!545802 call!48264)))

(declare-fun d!259587 () Bool)

(declare-fun c!134514 () Bool)

(assert (=> d!259587 (= c!134514 (or ((_ is EmptyExpr!2067) (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) ((_ is EmptyLang!2067) (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177))))))))

(declare-fun e!545805 () List!8893)

(assert (=> d!259587 (= (firstChars!38 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) e!545805)))

(declare-fun b!827559 () Bool)

(assert (=> b!827559 (= e!545805 Nil!8877)))

(declare-fun b!827560 () Bool)

(declare-fun call!48262 () List!8893)

(assert (=> b!827560 (= e!545804 call!48262)))

(declare-fun bm!48259 () Bool)

(assert (=> bm!48259 (= call!48262 call!48265)))

(declare-fun bm!48260 () Bool)

(assert (=> bm!48260 (= call!48264 (firstChars!38 (ite c!134513 (reg!2396 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (ite c!134516 (regTwo!4647 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))) (regOne!4646 (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177))))))))))

(declare-fun b!827561 () Bool)

(declare-fun call!48263 () List!8893)

(assert (=> b!827561 (= e!545801 call!48263)))

(declare-fun b!827562 () Bool)

(assert (=> b!827562 (= e!545805 e!545803)))

(declare-fun c!134517 () Bool)

(assert (=> b!827562 (= c!134517 ((_ is ElementMatch!2067) (ite c!134482 (regOne!4647 (regTwo!4647 r!27177)) (regTwo!4646 (regTwo!4647 r!27177)))))))

(declare-fun b!827563 () Bool)

(assert (=> b!827563 (= e!545804 call!48263)))

(declare-fun bm!48261 () Bool)

(assert (=> bm!48261 (= call!48263 (++!2294 (ite c!134516 call!48266 call!48262) (ite c!134516 call!48265 call!48266)))))

(assert (= (and d!259587 c!134514) b!827559))

(assert (= (and d!259587 (not c!134514)) b!827562))

(assert (= (and b!827562 c!134517) b!827555))

(assert (= (and b!827562 (not c!134517)) b!827556))

(assert (= (and b!827556 c!134513) b!827558))

(assert (= (and b!827556 (not c!134513)) b!827557))

(assert (= (and b!827557 c!134516) b!827561))

(assert (= (and b!827557 (not c!134516)) b!827554))

(assert (= (and b!827554 c!134515) b!827563))

(assert (= (and b!827554 (not c!134515)) b!827560))

(assert (= (or b!827563 b!827560) bm!48259))

(assert (= (or b!827561 bm!48259) bm!48257))

(assert (= (or b!827561 b!827563) bm!48258))

(assert (= (or b!827561 b!827563) bm!48261))

(assert (= (or b!827558 bm!48257) bm!48260))

(declare-fun m!1065785 () Bool)

(assert (=> b!827554 m!1065785))

(declare-fun m!1065787 () Bool)

(assert (=> bm!48258 m!1065787))

(declare-fun m!1065789 () Bool)

(assert (=> bm!48260 m!1065789))

(declare-fun m!1065791 () Bool)

(assert (=> bm!48261 m!1065791))

(assert (=> bm!48226 d!259587))

(declare-fun d!259589 () Bool)

(declare-fun lt!317575 () Bool)

(assert (=> d!259589 (= lt!317575 (select (content!1306 (t!93185 (firstChars!38 r!27177))) c!13916))))

(declare-fun e!545806 () Bool)

(assert (=> d!259589 (= lt!317575 e!545806)))

(declare-fun res!380731 () Bool)

(assert (=> d!259589 (=> (not res!380731) (not e!545806))))

(assert (=> d!259589 (= res!380731 ((_ is Cons!8877) (t!93185 (firstChars!38 r!27177))))))

(assert (=> d!259589 (= (contains!1658 (t!93185 (firstChars!38 r!27177)) c!13916) lt!317575)))

(declare-fun b!827564 () Bool)

(declare-fun e!545807 () Bool)

(assert (=> b!827564 (= e!545806 e!545807)))

(declare-fun res!380730 () Bool)

(assert (=> b!827564 (=> res!380730 e!545807)))

(assert (=> b!827564 (= res!380730 (= (h!14278 (t!93185 (firstChars!38 r!27177))) c!13916))))

(declare-fun b!827565 () Bool)

(assert (=> b!827565 (= e!545807 (contains!1658 (t!93185 (t!93185 (firstChars!38 r!27177))) c!13916))))

(assert (= (and d!259589 res!380731) b!827564))

(assert (= (and b!827564 (not res!380730)) b!827565))

(declare-fun m!1065793 () Bool)

(assert (=> d!259589 m!1065793))

(declare-fun m!1065795 () Bool)

(assert (=> d!259589 m!1065795))

(declare-fun m!1065797 () Bool)

(assert (=> b!827565 m!1065797))

(assert (=> b!827304 d!259589))

(declare-fun b!827566 () Bool)

(declare-fun c!134520 () Bool)

(assert (=> b!827566 (= c!134520 (nullable!518 (regOne!4646 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177)))))))))

(declare-fun e!545808 () List!8893)

(declare-fun e!545811 () List!8893)

(assert (=> b!827566 (= e!545808 e!545811)))

(declare-fun bm!48262 () Bool)

(declare-fun call!48270 () List!8893)

(declare-fun call!48269 () List!8893)

(assert (=> bm!48262 (= call!48270 call!48269)))

(declare-fun e!545810 () List!8893)

(declare-fun b!827567 () Bool)

(assert (=> b!827567 (= e!545810 (Cons!8877 (c!134426 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) Nil!8877))))

(declare-fun c!134518 () Bool)

(declare-fun b!827568 () Bool)

(assert (=> b!827568 (= c!134518 ((_ is Star!2067) (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))))))

(declare-fun e!545809 () List!8893)

(assert (=> b!827568 (= e!545810 e!545809)))

(declare-fun c!134521 () Bool)

(declare-fun bm!48263 () Bool)

(declare-fun call!48271 () List!8893)

(assert (=> bm!48263 (= call!48271 (firstChars!38 (ite c!134521 (regOne!4647 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) (regTwo!4646 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))))))))

(declare-fun b!827569 () Bool)

(assert (=> b!827569 (= e!545809 e!545808)))

(assert (=> b!827569 (= c!134521 ((_ is Union!2067) (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))))))

(declare-fun b!827570 () Bool)

(assert (=> b!827570 (= e!545809 call!48269)))

(declare-fun c!134519 () Bool)

(declare-fun d!259591 () Bool)

(assert (=> d!259591 (= c!134519 (or ((_ is EmptyExpr!2067) (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) ((_ is EmptyLang!2067) (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177)))))))))

(declare-fun e!545812 () List!8893)

(assert (=> d!259591 (= (firstChars!38 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) e!545812)))

(declare-fun b!827571 () Bool)

(assert (=> b!827571 (= e!545812 Nil!8877)))

(declare-fun b!827572 () Bool)

(declare-fun call!48267 () List!8893)

(assert (=> b!827572 (= e!545811 call!48267)))

(declare-fun bm!48264 () Bool)

(assert (=> bm!48264 (= call!48267 call!48270)))

(declare-fun bm!48265 () Bool)

(assert (=> bm!48265 (= call!48269 (firstChars!38 (ite c!134518 (reg!2396 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) (ite c!134521 (regTwo!4647 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))) (regOne!4646 (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177)))))))))))

(declare-fun b!827573 () Bool)

(declare-fun call!48268 () List!8893)

(assert (=> b!827573 (= e!545808 call!48268)))

(declare-fun b!827574 () Bool)

(assert (=> b!827574 (= e!545812 e!545810)))

(declare-fun c!134522 () Bool)

(assert (=> b!827574 (= c!134522 ((_ is ElementMatch!2067) (ite c!134488 (reg!2396 (regOne!4647 r!27177)) (ite c!134491 (regTwo!4647 (regOne!4647 r!27177)) (regOne!4646 (regOne!4647 r!27177))))))))

(declare-fun b!827575 () Bool)

(assert (=> b!827575 (= e!545811 call!48268)))

(declare-fun bm!48266 () Bool)

(assert (=> bm!48266 (= call!48268 (++!2294 (ite c!134521 call!48271 call!48267) (ite c!134521 call!48270 call!48271)))))

(assert (= (and d!259591 c!134519) b!827571))

(assert (= (and d!259591 (not c!134519)) b!827574))

(assert (= (and b!827574 c!134522) b!827567))

(assert (= (and b!827574 (not c!134522)) b!827568))

(assert (= (and b!827568 c!134518) b!827570))

(assert (= (and b!827568 (not c!134518)) b!827569))

(assert (= (and b!827569 c!134521) b!827573))

(assert (= (and b!827569 (not c!134521)) b!827566))

(assert (= (and b!827566 c!134520) b!827575))

(assert (= (and b!827566 (not c!134520)) b!827572))

(assert (= (or b!827575 b!827572) bm!48264))

(assert (= (or b!827573 bm!48264) bm!48262))

(assert (= (or b!827573 b!827575) bm!48263))

(assert (= (or b!827573 b!827575) bm!48266))

(assert (= (or b!827570 bm!48262) bm!48265))

(declare-fun m!1065799 () Bool)

(assert (=> b!827566 m!1065799))

(declare-fun m!1065801 () Bool)

(assert (=> bm!48263 m!1065801))

(declare-fun m!1065803 () Bool)

(assert (=> bm!48265 m!1065803))

(declare-fun m!1065805 () Bool)

(assert (=> bm!48266 m!1065805))

(assert (=> bm!48239 d!259591))

(declare-fun b!827577 () Bool)

(declare-fun e!545814 () List!8893)

(assert (=> b!827577 (= e!545814 (Cons!8877 (h!14278 (ite c!134491 call!48245 call!48241)) (++!2294 (t!93185 (ite c!134491 call!48245 call!48241)) (ite c!134491 call!48244 call!48245))))))

(declare-fun b!827578 () Bool)

(declare-fun res!380732 () Bool)

(declare-fun e!545813 () Bool)

(assert (=> b!827578 (=> (not res!380732) (not e!545813))))

(declare-fun lt!317576 () List!8893)

(assert (=> b!827578 (= res!380732 (= (size!7474 lt!317576) (+ (size!7474 (ite c!134491 call!48245 call!48241)) (size!7474 (ite c!134491 call!48244 call!48245)))))))

(declare-fun b!827579 () Bool)

(assert (=> b!827579 (= e!545813 (or (not (= (ite c!134491 call!48244 call!48245) Nil!8877)) (= lt!317576 (ite c!134491 call!48245 call!48241))))))

(declare-fun b!827576 () Bool)

(assert (=> b!827576 (= e!545814 (ite c!134491 call!48244 call!48245))))

(declare-fun d!259593 () Bool)

(assert (=> d!259593 e!545813))

(declare-fun res!380733 () Bool)

(assert (=> d!259593 (=> (not res!380733) (not e!545813))))

(assert (=> d!259593 (= res!380733 (= (content!1306 lt!317576) ((_ map or) (content!1306 (ite c!134491 call!48245 call!48241)) (content!1306 (ite c!134491 call!48244 call!48245)))))))

(assert (=> d!259593 (= lt!317576 e!545814)))

(declare-fun c!134523 () Bool)

(assert (=> d!259593 (= c!134523 ((_ is Nil!8877) (ite c!134491 call!48245 call!48241)))))

(assert (=> d!259593 (= (++!2294 (ite c!134491 call!48245 call!48241) (ite c!134491 call!48244 call!48245)) lt!317576)))

(assert (= (and d!259593 c!134523) b!827576))

(assert (= (and d!259593 (not c!134523)) b!827577))

(assert (= (and d!259593 res!380733) b!827578))

(assert (= (and b!827578 res!380732) b!827579))

(declare-fun m!1065807 () Bool)

(assert (=> b!827577 m!1065807))

(declare-fun m!1065809 () Bool)

(assert (=> b!827578 m!1065809))

(declare-fun m!1065811 () Bool)

(assert (=> b!827578 m!1065811))

(declare-fun m!1065813 () Bool)

(assert (=> b!827578 m!1065813))

(declare-fun m!1065815 () Bool)

(assert (=> d!259593 m!1065815))

(declare-fun m!1065817 () Bool)

(assert (=> d!259593 m!1065817))

(declare-fun m!1065819 () Bool)

(assert (=> d!259593 m!1065819))

(assert (=> bm!48240 d!259593))

(declare-fun d!259595 () Bool)

(assert (=> d!259595 (= (nullable!518 (reg!2396 r!27177)) (nullableFct!156 (reg!2396 r!27177)))))

(declare-fun bs!229601 () Bool)

(assert (= bs!229601 d!259595))

(declare-fun m!1065821 () Bool)

(assert (=> bs!229601 m!1065821))

(assert (=> b!827425 d!259595))

(declare-fun bm!48267 () Bool)

(declare-fun call!48272 () Bool)

(declare-fun call!48274 () Bool)

(assert (=> bm!48267 (= call!48272 call!48274)))

(declare-fun c!134525 () Bool)

(declare-fun call!48273 () Bool)

(declare-fun bm!48268 () Bool)

(assert (=> bm!48268 (= call!48273 (validRegex!620 (ite c!134525 (regOne!4647 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (regTwo!4646 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))))

(declare-fun b!827580 () Bool)

(declare-fun e!545818 () Bool)

(declare-fun e!545817 () Bool)

(assert (=> b!827580 (= e!545818 e!545817)))

(declare-fun c!134524 () Bool)

(assert (=> b!827580 (= c!134524 ((_ is Star!2067) (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun b!827581 () Bool)

(declare-fun e!545820 () Bool)

(assert (=> b!827581 (= e!545820 call!48274)))

(declare-fun b!827582 () Bool)

(declare-fun res!380735 () Bool)

(declare-fun e!545815 () Bool)

(assert (=> b!827582 (=> (not res!380735) (not e!545815))))

(assert (=> b!827582 (= res!380735 call!48273)))

(declare-fun e!545819 () Bool)

(assert (=> b!827582 (= e!545819 e!545815)))

(declare-fun b!827583 () Bool)

(declare-fun e!545816 () Bool)

(declare-fun e!545821 () Bool)

(assert (=> b!827583 (= e!545816 e!545821)))

(declare-fun res!380736 () Bool)

(assert (=> b!827583 (=> (not res!380736) (not e!545821))))

(assert (=> b!827583 (= res!380736 call!48272)))

(declare-fun b!827584 () Bool)

(assert (=> b!827584 (= e!545815 call!48272)))

(declare-fun b!827585 () Bool)

(assert (=> b!827585 (= e!545821 call!48273)))

(declare-fun b!827586 () Bool)

(assert (=> b!827586 (= e!545817 e!545819)))

(assert (=> b!827586 (= c!134525 ((_ is Union!2067) (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(declare-fun bm!48269 () Bool)

(assert (=> bm!48269 (= call!48274 (validRegex!620 (ite c!134524 (reg!2396 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (ite c!134525 (regTwo!4647 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) (regOne!4646 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177))))))))))

(declare-fun b!827588 () Bool)

(assert (=> b!827588 (= e!545817 e!545820)))

(declare-fun res!380738 () Bool)

(assert (=> b!827588 (= res!380738 (not (nullable!518 (reg!2396 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))))

(assert (=> b!827588 (=> (not res!380738) (not e!545820))))

(declare-fun d!259597 () Bool)

(declare-fun res!380737 () Bool)

(assert (=> d!259597 (=> res!380737 e!545818)))

(assert (=> d!259597 (= res!380737 ((_ is ElementMatch!2067) (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))))))

(assert (=> d!259597 (= (validRegex!620 (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177)))) e!545818)))

(declare-fun b!827587 () Bool)

(declare-fun res!380734 () Bool)

(assert (=> b!827587 (=> res!380734 e!545816)))

(assert (=> b!827587 (= res!380734 (not ((_ is Concat!3798) (ite c!134486 (reg!2396 r!27177) (ite c!134487 (regTwo!4647 r!27177) (regOne!4646 r!27177))))))))

(assert (=> b!827587 (= e!545819 e!545816)))

(assert (= (and d!259597 (not res!380737)) b!827580))

(assert (= (and b!827580 c!134524) b!827588))

(assert (= (and b!827580 (not c!134524)) b!827586))

(assert (= (and b!827588 res!380738) b!827581))

(assert (= (and b!827586 c!134525) b!827582))

(assert (= (and b!827586 (not c!134525)) b!827587))

(assert (= (and b!827582 res!380735) b!827584))

(assert (= (and b!827587 (not res!380734)) b!827583))

(assert (= (and b!827583 res!380736) b!827585))

(assert (= (or b!827582 b!827585) bm!48268))

(assert (= (or b!827584 b!827583) bm!48267))

(assert (= (or b!827581 bm!48267) bm!48269))

(declare-fun m!1065823 () Bool)

(assert (=> bm!48268 m!1065823))

(declare-fun m!1065825 () Bool)

(assert (=> bm!48269 m!1065825))

(declare-fun m!1065827 () Bool)

(assert (=> b!827588 m!1065827))

(assert (=> bm!48235 d!259597))

(declare-fun d!259599 () Bool)

(declare-fun lt!317577 () Bool)

(assert (=> d!259599 (= lt!317577 (select (content!1306 (t!93185 (firstChars!38 (regOne!4647 r!27177)))) c!13916))))

(declare-fun e!545822 () Bool)

(assert (=> d!259599 (= lt!317577 e!545822)))

(declare-fun res!380740 () Bool)

(assert (=> d!259599 (=> (not res!380740) (not e!545822))))

(assert (=> d!259599 (= res!380740 ((_ is Cons!8877) (t!93185 (firstChars!38 (regOne!4647 r!27177)))))))

(assert (=> d!259599 (= (contains!1658 (t!93185 (firstChars!38 (regOne!4647 r!27177))) c!13916) lt!317577)))

(declare-fun b!827589 () Bool)

(declare-fun e!545823 () Bool)

(assert (=> b!827589 (= e!545822 e!545823)))

(declare-fun res!380739 () Bool)

(assert (=> b!827589 (=> res!380739 e!545823)))

(assert (=> b!827589 (= res!380739 (= (h!14278 (t!93185 (firstChars!38 (regOne!4647 r!27177)))) c!13916))))

(declare-fun b!827590 () Bool)

(assert (=> b!827590 (= e!545823 (contains!1658 (t!93185 (t!93185 (firstChars!38 (regOne!4647 r!27177)))) c!13916))))

(assert (= (and d!259599 res!380740) b!827589))

(assert (= (and b!827589 (not res!380739)) b!827590))

(assert (=> d!259599 m!1065739))

(declare-fun m!1065829 () Bool)

(assert (=> d!259599 m!1065829))

(declare-fun m!1065831 () Bool)

(assert (=> b!827590 m!1065831))

(assert (=> b!827433 d!259599))

(declare-fun d!259601 () Bool)

(declare-fun lt!317578 () Bool)

(assert (=> d!259601 (= lt!317578 (select (content!1306 (t!93185 (firstChars!38 (regTwo!4647 r!27177)))) c!13916))))

(declare-fun e!545824 () Bool)

(assert (=> d!259601 (= lt!317578 e!545824)))

(declare-fun res!380742 () Bool)

(assert (=> d!259601 (=> (not res!380742) (not e!545824))))

(assert (=> d!259601 (= res!380742 ((_ is Cons!8877) (t!93185 (firstChars!38 (regTwo!4647 r!27177)))))))

(assert (=> d!259601 (= (contains!1658 (t!93185 (firstChars!38 (regTwo!4647 r!27177))) c!13916) lt!317578)))

(declare-fun b!827591 () Bool)

(declare-fun e!545825 () Bool)

(assert (=> b!827591 (= e!545824 e!545825)))

(declare-fun res!380741 () Bool)

(assert (=> b!827591 (=> res!380741 e!545825)))

(assert (=> b!827591 (= res!380741 (= (h!14278 (t!93185 (firstChars!38 (regTwo!4647 r!27177)))) c!13916))))

(declare-fun b!827592 () Bool)

(assert (=> b!827592 (= e!545825 (contains!1658 (t!93185 (t!93185 (firstChars!38 (regTwo!4647 r!27177)))) c!13916))))

(assert (= (and d!259601 res!380742) b!827591))

(assert (= (and b!827591 (not res!380741)) b!827592))

(declare-fun m!1065833 () Bool)

(assert (=> d!259601 m!1065833))

(declare-fun m!1065835 () Bool)

(assert (=> d!259601 m!1065835))

(declare-fun m!1065837 () Bool)

(assert (=> b!827592 m!1065837))

(assert (=> b!827387 d!259601))

(declare-fun d!259603 () Bool)

(declare-fun c!134526 () Bool)

(assert (=> d!259603 (= c!134526 ((_ is Nil!8877) (firstChars!38 r!27177)))))

(declare-fun e!545826 () (InoxSet C!4704))

(assert (=> d!259603 (= (content!1306 (firstChars!38 r!27177)) e!545826)))

(declare-fun b!827593 () Bool)

(assert (=> b!827593 (= e!545826 ((as const (Array C!4704 Bool)) false))))

(declare-fun b!827594 () Bool)

(assert (=> b!827594 (= e!545826 ((_ map or) (store ((as const (Array C!4704 Bool)) false) (h!14278 (firstChars!38 r!27177)) true) (content!1306 (t!93185 (firstChars!38 r!27177)))))))

(assert (= (and d!259603 c!134526) b!827593))

(assert (= (and d!259603 (not c!134526)) b!827594))

(declare-fun m!1065839 () Bool)

(assert (=> b!827594 m!1065839))

(assert (=> b!827594 m!1065793))

(assert (=> d!259547 d!259603))

(declare-fun d!259605 () Bool)

(assert (=> d!259605 (= (nullable!518 (regOne!4646 (regTwo!4647 r!27177))) (nullableFct!156 (regOne!4646 (regTwo!4647 r!27177))))))

(declare-fun bs!229602 () Bool)

(assert (= bs!229602 d!259605))

(declare-fun m!1065841 () Bool)

(assert (=> bs!229602 m!1065841))

(assert (=> b!827398 d!259605))

(declare-fun d!259607 () Bool)

(assert (=> d!259607 (= (nullable!518 (reg!2396 (regTwo!4647 r!27177))) (nullableFct!156 (reg!2396 (regTwo!4647 r!27177))))))

(declare-fun bs!229603 () Bool)

(assert (= bs!229603 d!259607))

(declare-fun m!1065843 () Bool)

(assert (=> bs!229603 m!1065843))

(assert (=> b!827298 d!259607))

(declare-fun e!545828 () List!8893)

(declare-fun b!827596 () Bool)

(assert (=> b!827596 (= e!545828 (Cons!8877 (h!14278 (ite c!134482 call!48234 call!48230)) (++!2294 (t!93185 (ite c!134482 call!48234 call!48230)) (ite c!134482 call!48233 call!48234))))))

(declare-fun b!827597 () Bool)

(declare-fun res!380743 () Bool)

(declare-fun e!545827 () Bool)

(assert (=> b!827597 (=> (not res!380743) (not e!545827))))

(declare-fun lt!317579 () List!8893)

(assert (=> b!827597 (= res!380743 (= (size!7474 lt!317579) (+ (size!7474 (ite c!134482 call!48234 call!48230)) (size!7474 (ite c!134482 call!48233 call!48234)))))))

(declare-fun b!827598 () Bool)

(assert (=> b!827598 (= e!545827 (or (not (= (ite c!134482 call!48233 call!48234) Nil!8877)) (= lt!317579 (ite c!134482 call!48234 call!48230))))))

(declare-fun b!827595 () Bool)

(assert (=> b!827595 (= e!545828 (ite c!134482 call!48233 call!48234))))

(declare-fun d!259609 () Bool)

(assert (=> d!259609 e!545827))

(declare-fun res!380744 () Bool)

(assert (=> d!259609 (=> (not res!380744) (not e!545827))))

(assert (=> d!259609 (= res!380744 (= (content!1306 lt!317579) ((_ map or) (content!1306 (ite c!134482 call!48234 call!48230)) (content!1306 (ite c!134482 call!48233 call!48234)))))))

(assert (=> d!259609 (= lt!317579 e!545828)))

(declare-fun c!134527 () Bool)

(assert (=> d!259609 (= c!134527 ((_ is Nil!8877) (ite c!134482 call!48234 call!48230)))))

(assert (=> d!259609 (= (++!2294 (ite c!134482 call!48234 call!48230) (ite c!134482 call!48233 call!48234)) lt!317579)))

(assert (= (and d!259609 c!134527) b!827595))

(assert (= (and d!259609 (not c!134527)) b!827596))

(assert (= (and d!259609 res!380744) b!827597))

(assert (= (and b!827597 res!380743) b!827598))

(declare-fun m!1065845 () Bool)

(assert (=> b!827596 m!1065845))

(declare-fun m!1065847 () Bool)

(assert (=> b!827597 m!1065847))

(declare-fun m!1065849 () Bool)

(assert (=> b!827597 m!1065849))

(declare-fun m!1065851 () Bool)

(assert (=> b!827597 m!1065851))

(declare-fun m!1065853 () Bool)

(assert (=> d!259609 m!1065853))

(declare-fun m!1065855 () Bool)

(assert (=> d!259609 m!1065855))

(declare-fun m!1065857 () Bool)

(assert (=> d!259609 m!1065857))

(assert (=> bm!48229 d!259609))

(declare-fun d!259611 () Bool)

(assert (=> d!259611 (= (nullable!518 (regOne!4646 (regOne!4647 r!27177))) (nullableFct!156 (regOne!4646 (regOne!4647 r!27177))))))

(declare-fun bs!229604 () Bool)

(assert (= bs!229604 d!259611))

(declare-fun m!1065859 () Bool)

(assert (=> bs!229604 m!1065859))

(assert (=> b!827438 d!259611))

(declare-fun bm!48270 () Bool)

(declare-fun call!48275 () Bool)

(declare-fun call!48277 () Bool)

(assert (=> bm!48270 (= call!48275 call!48277)))

(declare-fun c!134529 () Bool)

(declare-fun bm!48271 () Bool)

(declare-fun call!48276 () Bool)

(assert (=> bm!48271 (= call!48276 (validRegex!620 (ite c!134529 (regOne!4647 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (regTwo!4646 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))))

(declare-fun b!827599 () Bool)

(declare-fun e!545832 () Bool)

(declare-fun e!545831 () Bool)

(assert (=> b!827599 (= e!545832 e!545831)))

(declare-fun c!134528 () Bool)

(assert (=> b!827599 (= c!134528 ((_ is Star!2067) (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun b!827600 () Bool)

(declare-fun e!545834 () Bool)

(assert (=> b!827600 (= e!545834 call!48277)))

(declare-fun b!827601 () Bool)

(declare-fun res!380746 () Bool)

(declare-fun e!545829 () Bool)

(assert (=> b!827601 (=> (not res!380746) (not e!545829))))

(assert (=> b!827601 (= res!380746 call!48276)))

(declare-fun e!545833 () Bool)

(assert (=> b!827601 (= e!545833 e!545829)))

(declare-fun b!827602 () Bool)

(declare-fun e!545830 () Bool)

(declare-fun e!545835 () Bool)

(assert (=> b!827602 (= e!545830 e!545835)))

(declare-fun res!380747 () Bool)

(assert (=> b!827602 (=> (not res!380747) (not e!545835))))

(assert (=> b!827602 (= res!380747 call!48275)))

(declare-fun b!827603 () Bool)

(assert (=> b!827603 (= e!545829 call!48275)))

(declare-fun b!827604 () Bool)

(assert (=> b!827604 (= e!545835 call!48276)))

(declare-fun b!827605 () Bool)

(assert (=> b!827605 (= e!545831 e!545833)))

(assert (=> b!827605 (= c!134529 ((_ is Union!2067) (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun bm!48272 () Bool)

(assert (=> bm!48272 (= call!48277 (validRegex!620 (ite c!134528 (reg!2396 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (ite c!134529 (regTwo!4647 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (regOne!4646 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177)))))))))

(declare-fun b!827607 () Bool)

(assert (=> b!827607 (= e!545831 e!545834)))

(declare-fun res!380749 () Bool)

(assert (=> b!827607 (= res!380749 (not (nullable!518 (reg!2396 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))))

(assert (=> b!827607 (=> (not res!380749) (not e!545834))))

(declare-fun d!259613 () Bool)

(declare-fun res!380748 () Bool)

(assert (=> d!259613 (=> res!380748 e!545832)))

(assert (=> d!259613 (= res!380748 ((_ is ElementMatch!2067) (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(assert (=> d!259613 (= (validRegex!620 (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177))) e!545832)))

(declare-fun b!827606 () Bool)

(declare-fun res!380745 () Bool)

(assert (=> b!827606 (=> res!380745 e!545830)))

(assert (=> b!827606 (= res!380745 (not ((_ is Concat!3798) (ite c!134487 (regOne!4647 r!27177) (regTwo!4646 r!27177)))))))

(assert (=> b!827606 (= e!545833 e!545830)))

(assert (= (and d!259613 (not res!380748)) b!827599))

(assert (= (and b!827599 c!134528) b!827607))

(assert (= (and b!827599 (not c!134528)) b!827605))

(assert (= (and b!827607 res!380749) b!827600))

(assert (= (and b!827605 c!134529) b!827601))

(assert (= (and b!827605 (not c!134529)) b!827606))

(assert (= (and b!827601 res!380746) b!827603))

(assert (= (and b!827606 (not res!380745)) b!827602))

(assert (= (and b!827602 res!380747) b!827604))

(assert (= (or b!827601 b!827604) bm!48271))

(assert (= (or b!827603 b!827602) bm!48270))

(assert (= (or b!827600 bm!48270) bm!48272))

(declare-fun m!1065861 () Bool)

(assert (=> bm!48271 m!1065861))

(declare-fun m!1065863 () Bool)

(assert (=> bm!48272 m!1065863))

(declare-fun m!1065865 () Bool)

(assert (=> b!827607 m!1065865))

(assert (=> bm!48234 d!259613))

(declare-fun b!827608 () Bool)

(declare-fun c!134532 () Bool)

(assert (=> b!827608 (= c!134532 (nullable!518 (regOne!4646 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177)))))))

(declare-fun e!545836 () List!8893)

(declare-fun e!545839 () List!8893)

(assert (=> b!827608 (= e!545836 e!545839)))

(declare-fun bm!48273 () Bool)

(declare-fun call!48281 () List!8893)

(declare-fun call!48280 () List!8893)

(assert (=> bm!48273 (= call!48281 call!48280)))

(declare-fun b!827609 () Bool)

(declare-fun e!545838 () List!8893)

(assert (=> b!827609 (= e!545838 (Cons!8877 (c!134426 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) Nil!8877))))

(declare-fun b!827610 () Bool)

(declare-fun c!134530 () Bool)

(assert (=> b!827610 (= c!134530 ((_ is Star!2067) (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun e!545837 () List!8893)

(assert (=> b!827610 (= e!545838 e!545837)))

(declare-fun call!48282 () List!8893)

(declare-fun c!134533 () Bool)

(declare-fun bm!48274 () Bool)

(assert (=> bm!48274 (= call!48282 (firstChars!38 (ite c!134533 (regOne!4647 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (regTwo!4646 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))))

(declare-fun b!827611 () Bool)

(assert (=> b!827611 (= e!545837 e!545836)))

(assert (=> b!827611 (= c!134533 ((_ is Union!2067) (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun b!827612 () Bool)

(assert (=> b!827612 (= e!545837 call!48280)))

(declare-fun d!259615 () Bool)

(declare-fun c!134531 () Bool)

(assert (=> d!259615 (= c!134531 (or ((_ is EmptyExpr!2067) (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) ((_ is EmptyLang!2067) (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177)))))))

(declare-fun e!545840 () List!8893)

(assert (=> d!259615 (= (firstChars!38 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) e!545840)))

(declare-fun b!827613 () Bool)

(assert (=> b!827613 (= e!545840 Nil!8877)))

(declare-fun b!827614 () Bool)

(declare-fun call!48278 () List!8893)

(assert (=> b!827614 (= e!545839 call!48278)))

(declare-fun bm!48275 () Bool)

(assert (=> bm!48275 (= call!48278 call!48281)))

(declare-fun bm!48276 () Bool)

(assert (=> bm!48276 (= call!48280 (firstChars!38 (ite c!134530 (reg!2396 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (ite c!134533 (regTwo!4647 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))) (regOne!4646 (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177)))))))))

(declare-fun b!827615 () Bool)

(declare-fun call!48279 () List!8893)

(assert (=> b!827615 (= e!545836 call!48279)))

(declare-fun b!827616 () Bool)

(assert (=> b!827616 (= e!545840 e!545838)))

(declare-fun c!134534 () Bool)

(assert (=> b!827616 (= c!134534 ((_ is ElementMatch!2067) (ite c!134471 (regOne!4647 r!27177) (regTwo!4646 r!27177))))))

(declare-fun b!827617 () Bool)

(assert (=> b!827617 (= e!545839 call!48279)))

(declare-fun bm!48277 () Bool)

(assert (=> bm!48277 (= call!48279 (++!2294 (ite c!134533 call!48282 call!48278) (ite c!134533 call!48281 call!48282)))))

(assert (= (and d!259615 c!134531) b!827613))

(assert (= (and d!259615 (not c!134531)) b!827616))

(assert (= (and b!827616 c!134534) b!827609))

(assert (= (and b!827616 (not c!134534)) b!827610))

(assert (= (and b!827610 c!134530) b!827612))

(assert (= (and b!827610 (not c!134530)) b!827611))

(assert (= (and b!827611 c!134533) b!827615))

(assert (= (and b!827611 (not c!134533)) b!827608))

(assert (= (and b!827608 c!134532) b!827617))

(assert (= (and b!827608 (not c!134532)) b!827614))

(assert (= (or b!827617 b!827614) bm!48275))

(assert (= (or b!827615 bm!48275) bm!48273))

(assert (= (or b!827615 b!827617) bm!48274))

(assert (= (or b!827615 b!827617) bm!48277))

(assert (= (or b!827612 bm!48273) bm!48276))

(declare-fun m!1065867 () Bool)

(assert (=> b!827608 m!1065867))

(declare-fun m!1065869 () Bool)

(assert (=> bm!48274 m!1065869))

(declare-fun m!1065871 () Bool)

(assert (=> bm!48276 m!1065871))

(declare-fun m!1065873 () Bool)

(assert (=> bm!48277 m!1065873))

(assert (=> bm!48215 d!259615))

(declare-fun b!827618 () Bool)

(declare-fun c!134537 () Bool)

(assert (=> b!827618 (= c!134537 (nullable!518 (regOne!4646 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177))))))))

(declare-fun e!545841 () List!8893)

(declare-fun e!545844 () List!8893)

(assert (=> b!827618 (= e!545841 e!545844)))

(declare-fun bm!48278 () Bool)

(declare-fun call!48286 () List!8893)

(declare-fun call!48285 () List!8893)

(assert (=> bm!48278 (= call!48286 call!48285)))

(declare-fun b!827619 () Bool)

(declare-fun e!545843 () List!8893)

(assert (=> b!827619 (= e!545843 (Cons!8877 (c!134426 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) Nil!8877))))

(declare-fun b!827620 () Bool)

(declare-fun c!134535 () Bool)

(assert (=> b!827620 (= c!134535 ((_ is Star!2067) (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))))))

(declare-fun e!545842 () List!8893)

(assert (=> b!827620 (= e!545843 e!545842)))

(declare-fun bm!48279 () Bool)

(declare-fun call!48287 () List!8893)

(declare-fun c!134538 () Bool)

(assert (=> bm!48279 (= call!48287 (firstChars!38 (ite c!134538 (regOne!4647 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) (regTwo!4646 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))))))))

(declare-fun b!827621 () Bool)

(assert (=> b!827621 (= e!545842 e!545841)))

(assert (=> b!827621 (= c!134538 ((_ is Union!2067) (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))))))

(declare-fun b!827622 () Bool)

(assert (=> b!827622 (= e!545842 call!48285)))

(declare-fun d!259617 () Bool)

(declare-fun c!134536 () Bool)

(assert (=> d!259617 (= c!134536 (or ((_ is EmptyExpr!2067) (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) ((_ is EmptyLang!2067) (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177))))))))

(declare-fun e!545845 () List!8893)

(assert (=> d!259617 (= (firstChars!38 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) e!545845)))

(declare-fun b!827623 () Bool)

(assert (=> b!827623 (= e!545845 Nil!8877)))

(declare-fun b!827624 () Bool)

(declare-fun call!48283 () List!8893)

(assert (=> b!827624 (= e!545844 call!48283)))

(declare-fun bm!48280 () Bool)

(assert (=> bm!48280 (= call!48283 call!48286)))

(declare-fun bm!48281 () Bool)

(assert (=> bm!48281 (= call!48285 (firstChars!38 (ite c!134535 (reg!2396 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) (ite c!134538 (regTwo!4647 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))) (regOne!4646 (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177))))))))))

(declare-fun b!827625 () Bool)

(declare-fun call!48284 () List!8893)

(assert (=> b!827625 (= e!545841 call!48284)))

(declare-fun b!827626 () Bool)

(assert (=> b!827626 (= e!545845 e!545843)))

(declare-fun c!134539 () Bool)

(assert (=> b!827626 (= c!134539 ((_ is ElementMatch!2067) (ite c!134491 (regOne!4647 (regOne!4647 r!27177)) (regTwo!4646 (regOne!4647 r!27177)))))))

(declare-fun b!827627 () Bool)

(assert (=> b!827627 (= e!545844 call!48284)))

(declare-fun bm!48282 () Bool)

(assert (=> bm!48282 (= call!48284 (++!2294 (ite c!134538 call!48287 call!48283) (ite c!134538 call!48286 call!48287)))))

(assert (= (and d!259617 c!134536) b!827623))

(assert (= (and d!259617 (not c!134536)) b!827626))

(assert (= (and b!827626 c!134539) b!827619))

(assert (= (and b!827626 (not c!134539)) b!827620))

(assert (= (and b!827620 c!134535) b!827622))

(assert (= (and b!827620 (not c!134535)) b!827621))

(assert (= (and b!827621 c!134538) b!827625))

(assert (= (and b!827621 (not c!134538)) b!827618))

(assert (= (and b!827618 c!134537) b!827627))

(assert (= (and b!827618 (not c!134537)) b!827624))

(assert (= (or b!827627 b!827624) bm!48280))

(assert (= (or b!827625 bm!48280) bm!48278))

(assert (= (or b!827625 b!827627) bm!48279))

(assert (= (or b!827625 b!827627) bm!48282))

(assert (= (or b!827622 bm!48278) bm!48281))

(declare-fun m!1065875 () Bool)

(assert (=> b!827618 m!1065875))

(declare-fun m!1065877 () Bool)

(assert (=> bm!48279 m!1065877))

(declare-fun m!1065879 () Bool)

(assert (=> bm!48281 m!1065879))

(declare-fun m!1065881 () Bool)

(assert (=> bm!48282 m!1065881))

(assert (=> bm!48237 d!259617))

(declare-fun d!259619 () Bool)

(declare-fun c!134540 () Bool)

(assert (=> d!259619 (= c!134540 ((_ is Nil!8877) (firstChars!38 (regTwo!4647 r!27177))))))

(declare-fun e!545846 () (InoxSet C!4704))

(assert (=> d!259619 (= (content!1306 (firstChars!38 (regTwo!4647 r!27177))) e!545846)))

(declare-fun b!827628 () Bool)

(assert (=> b!827628 (= e!545846 ((as const (Array C!4704 Bool)) false))))

(declare-fun b!827629 () Bool)

(assert (=> b!827629 (= e!545846 ((_ map or) (store ((as const (Array C!4704 Bool)) false) (h!14278 (firstChars!38 (regTwo!4647 r!27177))) true) (content!1306 (t!93185 (firstChars!38 (regTwo!4647 r!27177))))))))

(assert (= (and d!259619 c!134540) b!827628))

(assert (= (and d!259619 (not c!134540)) b!827629))

(declare-fun m!1065883 () Bool)

(assert (=> b!827629 m!1065883))

(assert (=> b!827629 m!1065833))

(assert (=> d!259559 d!259619))

(declare-fun b!827630 () Bool)

(declare-fun e!545847 () Bool)

(assert (=> b!827630 (= e!545847 tp_is_empty!3857)))

(declare-fun b!827633 () Bool)

(declare-fun tp!258835 () Bool)

(declare-fun tp!258838 () Bool)

(assert (=> b!827633 (= e!545847 (and tp!258835 tp!258838))))

(assert (=> b!827491 (= tp!258827 e!545847)))

(declare-fun b!827631 () Bool)

(declare-fun tp!258837 () Bool)

(declare-fun tp!258839 () Bool)

(assert (=> b!827631 (= e!545847 (and tp!258837 tp!258839))))

(declare-fun b!827632 () Bool)

(declare-fun tp!258836 () Bool)

(assert (=> b!827632 (= e!545847 tp!258836)))

(assert (= (and b!827491 ((_ is ElementMatch!2067) (regOne!4646 (regOne!4647 r!27177)))) b!827630))

(assert (= (and b!827491 ((_ is Concat!3798) (regOne!4646 (regOne!4647 r!27177)))) b!827631))

(assert (= (and b!827491 ((_ is Star!2067) (regOne!4646 (regOne!4647 r!27177)))) b!827632))

(assert (= (and b!827491 ((_ is Union!2067) (regOne!4646 (regOne!4647 r!27177)))) b!827633))

(declare-fun b!827634 () Bool)

(declare-fun e!545848 () Bool)

(assert (=> b!827634 (= e!545848 tp_is_empty!3857)))

(declare-fun b!827637 () Bool)

(declare-fun tp!258840 () Bool)

(declare-fun tp!258843 () Bool)

(assert (=> b!827637 (= e!545848 (and tp!258840 tp!258843))))

(assert (=> b!827491 (= tp!258829 e!545848)))

(declare-fun b!827635 () Bool)

(declare-fun tp!258842 () Bool)

(declare-fun tp!258844 () Bool)

(assert (=> b!827635 (= e!545848 (and tp!258842 tp!258844))))

(declare-fun b!827636 () Bool)

(declare-fun tp!258841 () Bool)

(assert (=> b!827636 (= e!545848 tp!258841)))

(assert (= (and b!827491 ((_ is ElementMatch!2067) (regTwo!4646 (regOne!4647 r!27177)))) b!827634))

(assert (= (and b!827491 ((_ is Concat!3798) (regTwo!4646 (regOne!4647 r!27177)))) b!827635))

(assert (= (and b!827491 ((_ is Star!2067) (regTwo!4646 (regOne!4647 r!27177)))) b!827636))

(assert (= (and b!827491 ((_ is Union!2067) (regTwo!4646 (regOne!4647 r!27177)))) b!827637))

(declare-fun b!827638 () Bool)

(declare-fun e!545849 () Bool)

(assert (=> b!827638 (= e!545849 tp_is_empty!3857)))

(declare-fun b!827641 () Bool)

(declare-fun tp!258845 () Bool)

(declare-fun tp!258848 () Bool)

(assert (=> b!827641 (= e!545849 (and tp!258845 tp!258848))))

(assert (=> b!827487 (= tp!258822 e!545849)))

(declare-fun b!827639 () Bool)

(declare-fun tp!258847 () Bool)

(declare-fun tp!258849 () Bool)

(assert (=> b!827639 (= e!545849 (and tp!258847 tp!258849))))

(declare-fun b!827640 () Bool)

(declare-fun tp!258846 () Bool)

(assert (=> b!827640 (= e!545849 tp!258846)))

(assert (= (and b!827487 ((_ is ElementMatch!2067) (regOne!4646 (regTwo!4646 r!27177)))) b!827638))

(assert (= (and b!827487 ((_ is Concat!3798) (regOne!4646 (regTwo!4646 r!27177)))) b!827639))

(assert (= (and b!827487 ((_ is Star!2067) (regOne!4646 (regTwo!4646 r!27177)))) b!827640))

(assert (= (and b!827487 ((_ is Union!2067) (regOne!4646 (regTwo!4646 r!27177)))) b!827641))

(declare-fun b!827642 () Bool)

(declare-fun e!545850 () Bool)

(assert (=> b!827642 (= e!545850 tp_is_empty!3857)))

(declare-fun b!827645 () Bool)

(declare-fun tp!258850 () Bool)

(declare-fun tp!258853 () Bool)

(assert (=> b!827645 (= e!545850 (and tp!258850 tp!258853))))

(assert (=> b!827487 (= tp!258824 e!545850)))

(declare-fun b!827643 () Bool)

(declare-fun tp!258852 () Bool)

(declare-fun tp!258854 () Bool)

(assert (=> b!827643 (= e!545850 (and tp!258852 tp!258854))))

(declare-fun b!827644 () Bool)

(declare-fun tp!258851 () Bool)

(assert (=> b!827644 (= e!545850 tp!258851)))

(assert (= (and b!827487 ((_ is ElementMatch!2067) (regTwo!4646 (regTwo!4646 r!27177)))) b!827642))

(assert (= (and b!827487 ((_ is Concat!3798) (regTwo!4646 (regTwo!4646 r!27177)))) b!827643))

(assert (= (and b!827487 ((_ is Star!2067) (regTwo!4646 (regTwo!4646 r!27177)))) b!827644))

(assert (= (and b!827487 ((_ is Union!2067) (regTwo!4646 (regTwo!4646 r!27177)))) b!827645))

(declare-fun b!827646 () Bool)

(declare-fun e!545851 () Bool)

(assert (=> b!827646 (= e!545851 tp_is_empty!3857)))

(declare-fun b!827649 () Bool)

(declare-fun tp!258855 () Bool)

(declare-fun tp!258858 () Bool)

(assert (=> b!827649 (= e!545851 (and tp!258855 tp!258858))))

(assert (=> b!827496 (= tp!258831 e!545851)))

(declare-fun b!827647 () Bool)

(declare-fun tp!258857 () Bool)

(declare-fun tp!258859 () Bool)

(assert (=> b!827647 (= e!545851 (and tp!258857 tp!258859))))

(declare-fun b!827648 () Bool)

(declare-fun tp!258856 () Bool)

(assert (=> b!827648 (= e!545851 tp!258856)))

(assert (= (and b!827496 ((_ is ElementMatch!2067) (reg!2396 (regTwo!4647 r!27177)))) b!827646))

(assert (= (and b!827496 ((_ is Concat!3798) (reg!2396 (regTwo!4647 r!27177)))) b!827647))

(assert (= (and b!827496 ((_ is Star!2067) (reg!2396 (regTwo!4647 r!27177)))) b!827648))

(assert (= (and b!827496 ((_ is Union!2067) (reg!2396 (regTwo!4647 r!27177)))) b!827649))

(declare-fun b!827650 () Bool)

(declare-fun e!545852 () Bool)

(assert (=> b!827650 (= e!545852 tp_is_empty!3857)))

(declare-fun b!827653 () Bool)

(declare-fun tp!258860 () Bool)

(declare-fun tp!258863 () Bool)

(assert (=> b!827653 (= e!545852 (and tp!258860 tp!258863))))

(assert (=> b!827495 (= tp!258832 e!545852)))

(declare-fun b!827651 () Bool)

(declare-fun tp!258862 () Bool)

(declare-fun tp!258864 () Bool)

(assert (=> b!827651 (= e!545852 (and tp!258862 tp!258864))))

(declare-fun b!827652 () Bool)

(declare-fun tp!258861 () Bool)

(assert (=> b!827652 (= e!545852 tp!258861)))

(assert (= (and b!827495 ((_ is ElementMatch!2067) (regOne!4646 (regTwo!4647 r!27177)))) b!827650))

(assert (= (and b!827495 ((_ is Concat!3798) (regOne!4646 (regTwo!4647 r!27177)))) b!827651))

(assert (= (and b!827495 ((_ is Star!2067) (regOne!4646 (regTwo!4647 r!27177)))) b!827652))

(assert (= (and b!827495 ((_ is Union!2067) (regOne!4646 (regTwo!4647 r!27177)))) b!827653))

(declare-fun b!827654 () Bool)

(declare-fun e!545853 () Bool)

(assert (=> b!827654 (= e!545853 tp_is_empty!3857)))

(declare-fun b!827657 () Bool)

(declare-fun tp!258865 () Bool)

(declare-fun tp!258868 () Bool)

(assert (=> b!827657 (= e!545853 (and tp!258865 tp!258868))))

(assert (=> b!827495 (= tp!258834 e!545853)))

(declare-fun b!827655 () Bool)

(declare-fun tp!258867 () Bool)

(declare-fun tp!258869 () Bool)

(assert (=> b!827655 (= e!545853 (and tp!258867 tp!258869))))

(declare-fun b!827656 () Bool)

(declare-fun tp!258866 () Bool)

(assert (=> b!827656 (= e!545853 tp!258866)))

(assert (= (and b!827495 ((_ is ElementMatch!2067) (regTwo!4646 (regTwo!4647 r!27177)))) b!827654))

(assert (= (and b!827495 ((_ is Concat!3798) (regTwo!4646 (regTwo!4647 r!27177)))) b!827655))

(assert (= (and b!827495 ((_ is Star!2067) (regTwo!4646 (regTwo!4647 r!27177)))) b!827656))

(assert (= (and b!827495 ((_ is Union!2067) (regTwo!4646 (regTwo!4647 r!27177)))) b!827657))

(declare-fun b!827658 () Bool)

(declare-fun e!545854 () Bool)

(assert (=> b!827658 (= e!545854 tp_is_empty!3857)))

(declare-fun b!827661 () Bool)

(declare-fun tp!258870 () Bool)

(declare-fun tp!258873 () Bool)

(assert (=> b!827661 (= e!545854 (and tp!258870 tp!258873))))

(assert (=> b!827489 (= tp!258820 e!545854)))

(declare-fun b!827659 () Bool)

(declare-fun tp!258872 () Bool)

(declare-fun tp!258874 () Bool)

(assert (=> b!827659 (= e!545854 (and tp!258872 tp!258874))))

(declare-fun b!827660 () Bool)

(declare-fun tp!258871 () Bool)

(assert (=> b!827660 (= e!545854 tp!258871)))

(assert (= (and b!827489 ((_ is ElementMatch!2067) (regOne!4647 (regTwo!4646 r!27177)))) b!827658))

(assert (= (and b!827489 ((_ is Concat!3798) (regOne!4647 (regTwo!4646 r!27177)))) b!827659))

(assert (= (and b!827489 ((_ is Star!2067) (regOne!4647 (regTwo!4646 r!27177)))) b!827660))

(assert (= (and b!827489 ((_ is Union!2067) (regOne!4647 (regTwo!4646 r!27177)))) b!827661))

(declare-fun b!827662 () Bool)

(declare-fun e!545855 () Bool)

(assert (=> b!827662 (= e!545855 tp_is_empty!3857)))

(declare-fun b!827665 () Bool)

(declare-fun tp!258875 () Bool)

(declare-fun tp!258878 () Bool)

(assert (=> b!827665 (= e!545855 (and tp!258875 tp!258878))))

(assert (=> b!827489 (= tp!258823 e!545855)))

(declare-fun b!827663 () Bool)

(declare-fun tp!258877 () Bool)

(declare-fun tp!258879 () Bool)

(assert (=> b!827663 (= e!545855 (and tp!258877 tp!258879))))

(declare-fun b!827664 () Bool)

(declare-fun tp!258876 () Bool)

(assert (=> b!827664 (= e!545855 tp!258876)))

(assert (= (and b!827489 ((_ is ElementMatch!2067) (regTwo!4647 (regTwo!4646 r!27177)))) b!827662))

(assert (= (and b!827489 ((_ is Concat!3798) (regTwo!4647 (regTwo!4646 r!27177)))) b!827663))

(assert (= (and b!827489 ((_ is Star!2067) (regTwo!4647 (regTwo!4646 r!27177)))) b!827664))

(assert (= (and b!827489 ((_ is Union!2067) (regTwo!4647 (regTwo!4646 r!27177)))) b!827665))

(declare-fun b!827666 () Bool)

(declare-fun e!545856 () Bool)

(assert (=> b!827666 (= e!545856 tp_is_empty!3857)))

(declare-fun b!827669 () Bool)

(declare-fun tp!258880 () Bool)

(declare-fun tp!258883 () Bool)

(assert (=> b!827669 (= e!545856 (and tp!258880 tp!258883))))

(assert (=> b!827484 (= tp!258816 e!545856)))

(declare-fun b!827667 () Bool)

(declare-fun tp!258882 () Bool)

(declare-fun tp!258884 () Bool)

(assert (=> b!827667 (= e!545856 (and tp!258882 tp!258884))))

(declare-fun b!827668 () Bool)

(declare-fun tp!258881 () Bool)

(assert (=> b!827668 (= e!545856 tp!258881)))

(assert (= (and b!827484 ((_ is ElementMatch!2067) (reg!2396 (regOne!4646 r!27177)))) b!827666))

(assert (= (and b!827484 ((_ is Concat!3798) (reg!2396 (regOne!4646 r!27177)))) b!827667))

(assert (= (and b!827484 ((_ is Star!2067) (reg!2396 (regOne!4646 r!27177)))) b!827668))

(assert (= (and b!827484 ((_ is Union!2067) (reg!2396 (regOne!4646 r!27177)))) b!827669))

(declare-fun b!827670 () Bool)

(declare-fun e!545857 () Bool)

(assert (=> b!827670 (= e!545857 tp_is_empty!3857)))

(declare-fun b!827673 () Bool)

(declare-fun tp!258885 () Bool)

(declare-fun tp!258888 () Bool)

(assert (=> b!827673 (= e!545857 (and tp!258885 tp!258888))))

(assert (=> b!827485 (= tp!258815 e!545857)))

(declare-fun b!827671 () Bool)

(declare-fun tp!258887 () Bool)

(declare-fun tp!258889 () Bool)

(assert (=> b!827671 (= e!545857 (and tp!258887 tp!258889))))

(declare-fun b!827672 () Bool)

(declare-fun tp!258886 () Bool)

(assert (=> b!827672 (= e!545857 tp!258886)))

(assert (= (and b!827485 ((_ is ElementMatch!2067) (regOne!4647 (regOne!4646 r!27177)))) b!827670))

(assert (= (and b!827485 ((_ is Concat!3798) (regOne!4647 (regOne!4646 r!27177)))) b!827671))

(assert (= (and b!827485 ((_ is Star!2067) (regOne!4647 (regOne!4646 r!27177)))) b!827672))

(assert (= (and b!827485 ((_ is Union!2067) (regOne!4647 (regOne!4646 r!27177)))) b!827673))

(declare-fun b!827674 () Bool)

(declare-fun e!545858 () Bool)

(assert (=> b!827674 (= e!545858 tp_is_empty!3857)))

(declare-fun b!827677 () Bool)

(declare-fun tp!258890 () Bool)

(declare-fun tp!258893 () Bool)

(assert (=> b!827677 (= e!545858 (and tp!258890 tp!258893))))

(assert (=> b!827485 (= tp!258818 e!545858)))

(declare-fun b!827675 () Bool)

(declare-fun tp!258892 () Bool)

(declare-fun tp!258894 () Bool)

(assert (=> b!827675 (= e!545858 (and tp!258892 tp!258894))))

(declare-fun b!827676 () Bool)

(declare-fun tp!258891 () Bool)

(assert (=> b!827676 (= e!545858 tp!258891)))

(assert (= (and b!827485 ((_ is ElementMatch!2067) (regTwo!4647 (regOne!4646 r!27177)))) b!827674))

(assert (= (and b!827485 ((_ is Concat!3798) (regTwo!4647 (regOne!4646 r!27177)))) b!827675))

(assert (= (and b!827485 ((_ is Star!2067) (regTwo!4647 (regOne!4646 r!27177)))) b!827676))

(assert (= (and b!827485 ((_ is Union!2067) (regTwo!4647 (regOne!4646 r!27177)))) b!827677))

(declare-fun b!827678 () Bool)

(declare-fun e!545859 () Bool)

(assert (=> b!827678 (= e!545859 tp_is_empty!3857)))

(declare-fun b!827681 () Bool)

(declare-fun tp!258895 () Bool)

(declare-fun tp!258898 () Bool)

(assert (=> b!827681 (= e!545859 (and tp!258895 tp!258898))))

(assert (=> b!827481 (= tp!258810 e!545859)))

(declare-fun b!827679 () Bool)

(declare-fun tp!258897 () Bool)

(declare-fun tp!258899 () Bool)

(assert (=> b!827679 (= e!545859 (and tp!258897 tp!258899))))

(declare-fun b!827680 () Bool)

(declare-fun tp!258896 () Bool)

(assert (=> b!827680 (= e!545859 tp!258896)))

(assert (= (and b!827481 ((_ is ElementMatch!2067) (regOne!4647 (reg!2396 r!27177)))) b!827678))

(assert (= (and b!827481 ((_ is Concat!3798) (regOne!4647 (reg!2396 r!27177)))) b!827679))

(assert (= (and b!827481 ((_ is Star!2067) (regOne!4647 (reg!2396 r!27177)))) b!827680))

(assert (= (and b!827481 ((_ is Union!2067) (regOne!4647 (reg!2396 r!27177)))) b!827681))

(declare-fun b!827682 () Bool)

(declare-fun e!545860 () Bool)

(assert (=> b!827682 (= e!545860 tp_is_empty!3857)))

(declare-fun b!827685 () Bool)

(declare-fun tp!258900 () Bool)

(declare-fun tp!258903 () Bool)

(assert (=> b!827685 (= e!545860 (and tp!258900 tp!258903))))

(assert (=> b!827481 (= tp!258813 e!545860)))

(declare-fun b!827683 () Bool)

(declare-fun tp!258902 () Bool)

(declare-fun tp!258904 () Bool)

(assert (=> b!827683 (= e!545860 (and tp!258902 tp!258904))))

(declare-fun b!827684 () Bool)

(declare-fun tp!258901 () Bool)

(assert (=> b!827684 (= e!545860 tp!258901)))

(assert (= (and b!827481 ((_ is ElementMatch!2067) (regTwo!4647 (reg!2396 r!27177)))) b!827682))

(assert (= (and b!827481 ((_ is Concat!3798) (regTwo!4647 (reg!2396 r!27177)))) b!827683))

(assert (= (and b!827481 ((_ is Star!2067) (regTwo!4647 (reg!2396 r!27177)))) b!827684))

(assert (= (and b!827481 ((_ is Union!2067) (regTwo!4647 (reg!2396 r!27177)))) b!827685))

(declare-fun b!827686 () Bool)

(declare-fun e!545861 () Bool)

(assert (=> b!827686 (= e!545861 tp_is_empty!3857)))

(declare-fun b!827689 () Bool)

(declare-fun tp!258905 () Bool)

(declare-fun tp!258908 () Bool)

(assert (=> b!827689 (= e!545861 (and tp!258905 tp!258908))))

(assert (=> b!827497 (= tp!258830 e!545861)))

(declare-fun b!827687 () Bool)

(declare-fun tp!258907 () Bool)

(declare-fun tp!258909 () Bool)

(assert (=> b!827687 (= e!545861 (and tp!258907 tp!258909))))

(declare-fun b!827688 () Bool)

(declare-fun tp!258906 () Bool)

(assert (=> b!827688 (= e!545861 tp!258906)))

(assert (= (and b!827497 ((_ is ElementMatch!2067) (regOne!4647 (regTwo!4647 r!27177)))) b!827686))

(assert (= (and b!827497 ((_ is Concat!3798) (regOne!4647 (regTwo!4647 r!27177)))) b!827687))

(assert (= (and b!827497 ((_ is Star!2067) (regOne!4647 (regTwo!4647 r!27177)))) b!827688))

(assert (= (and b!827497 ((_ is Union!2067) (regOne!4647 (regTwo!4647 r!27177)))) b!827689))

(declare-fun b!827690 () Bool)

(declare-fun e!545862 () Bool)

(assert (=> b!827690 (= e!545862 tp_is_empty!3857)))

(declare-fun b!827693 () Bool)

(declare-fun tp!258910 () Bool)

(declare-fun tp!258913 () Bool)

(assert (=> b!827693 (= e!545862 (and tp!258910 tp!258913))))

(assert (=> b!827497 (= tp!258833 e!545862)))

(declare-fun b!827691 () Bool)

(declare-fun tp!258912 () Bool)

(declare-fun tp!258914 () Bool)

(assert (=> b!827691 (= e!545862 (and tp!258912 tp!258914))))

(declare-fun b!827692 () Bool)

(declare-fun tp!258911 () Bool)

(assert (=> b!827692 (= e!545862 tp!258911)))

(assert (= (and b!827497 ((_ is ElementMatch!2067) (regTwo!4647 (regTwo!4647 r!27177)))) b!827690))

(assert (= (and b!827497 ((_ is Concat!3798) (regTwo!4647 (regTwo!4647 r!27177)))) b!827691))

(assert (= (and b!827497 ((_ is Star!2067) (regTwo!4647 (regTwo!4647 r!27177)))) b!827692))

(assert (= (and b!827497 ((_ is Union!2067) (regTwo!4647 (regTwo!4647 r!27177)))) b!827693))

(declare-fun b!827694 () Bool)

(declare-fun e!545863 () Bool)

(assert (=> b!827694 (= e!545863 tp_is_empty!3857)))

(declare-fun b!827697 () Bool)

(declare-fun tp!258915 () Bool)

(declare-fun tp!258918 () Bool)

(assert (=> b!827697 (= e!545863 (and tp!258915 tp!258918))))

(assert (=> b!827483 (= tp!258817 e!545863)))

(declare-fun b!827695 () Bool)

(declare-fun tp!258917 () Bool)

(declare-fun tp!258919 () Bool)

(assert (=> b!827695 (= e!545863 (and tp!258917 tp!258919))))

(declare-fun b!827696 () Bool)

(declare-fun tp!258916 () Bool)

(assert (=> b!827696 (= e!545863 tp!258916)))

(assert (= (and b!827483 ((_ is ElementMatch!2067) (regOne!4646 (regOne!4646 r!27177)))) b!827694))

(assert (= (and b!827483 ((_ is Concat!3798) (regOne!4646 (regOne!4646 r!27177)))) b!827695))

(assert (= (and b!827483 ((_ is Star!2067) (regOne!4646 (regOne!4646 r!27177)))) b!827696))

(assert (= (and b!827483 ((_ is Union!2067) (regOne!4646 (regOne!4646 r!27177)))) b!827697))

(declare-fun b!827698 () Bool)

(declare-fun e!545864 () Bool)

(assert (=> b!827698 (= e!545864 tp_is_empty!3857)))

(declare-fun b!827701 () Bool)

(declare-fun tp!258920 () Bool)

(declare-fun tp!258923 () Bool)

(assert (=> b!827701 (= e!545864 (and tp!258920 tp!258923))))

(assert (=> b!827483 (= tp!258819 e!545864)))

(declare-fun b!827699 () Bool)

(declare-fun tp!258922 () Bool)

(declare-fun tp!258924 () Bool)

(assert (=> b!827699 (= e!545864 (and tp!258922 tp!258924))))

(declare-fun b!827700 () Bool)

(declare-fun tp!258921 () Bool)

(assert (=> b!827700 (= e!545864 tp!258921)))

(assert (= (and b!827483 ((_ is ElementMatch!2067) (regTwo!4646 (regOne!4646 r!27177)))) b!827698))

(assert (= (and b!827483 ((_ is Concat!3798) (regTwo!4646 (regOne!4646 r!27177)))) b!827699))

(assert (= (and b!827483 ((_ is Star!2067) (regTwo!4646 (regOne!4646 r!27177)))) b!827700))

(assert (= (and b!827483 ((_ is Union!2067) (regTwo!4646 (regOne!4646 r!27177)))) b!827701))

(declare-fun b!827702 () Bool)

(declare-fun e!545865 () Bool)

(assert (=> b!827702 (= e!545865 tp_is_empty!3857)))

(declare-fun b!827705 () Bool)

(declare-fun tp!258925 () Bool)

(declare-fun tp!258928 () Bool)

(assert (=> b!827705 (= e!545865 (and tp!258925 tp!258928))))

(assert (=> b!827492 (= tp!258826 e!545865)))

(declare-fun b!827703 () Bool)

(declare-fun tp!258927 () Bool)

(declare-fun tp!258929 () Bool)

(assert (=> b!827703 (= e!545865 (and tp!258927 tp!258929))))

(declare-fun b!827704 () Bool)

(declare-fun tp!258926 () Bool)

(assert (=> b!827704 (= e!545865 tp!258926)))

(assert (= (and b!827492 ((_ is ElementMatch!2067) (reg!2396 (regOne!4647 r!27177)))) b!827702))

(assert (= (and b!827492 ((_ is Concat!3798) (reg!2396 (regOne!4647 r!27177)))) b!827703))

(assert (= (and b!827492 ((_ is Star!2067) (reg!2396 (regOne!4647 r!27177)))) b!827704))

(assert (= (and b!827492 ((_ is Union!2067) (reg!2396 (regOne!4647 r!27177)))) b!827705))

(declare-fun b!827706 () Bool)

(declare-fun e!545866 () Bool)

(assert (=> b!827706 (= e!545866 tp_is_empty!3857)))

(declare-fun b!827709 () Bool)

(declare-fun tp!258930 () Bool)

(declare-fun tp!258933 () Bool)

(assert (=> b!827709 (= e!545866 (and tp!258930 tp!258933))))

(assert (=> b!827479 (= tp!258812 e!545866)))

(declare-fun b!827707 () Bool)

(declare-fun tp!258932 () Bool)

(declare-fun tp!258934 () Bool)

(assert (=> b!827707 (= e!545866 (and tp!258932 tp!258934))))

(declare-fun b!827708 () Bool)

(declare-fun tp!258931 () Bool)

(assert (=> b!827708 (= e!545866 tp!258931)))

(assert (= (and b!827479 ((_ is ElementMatch!2067) (regOne!4646 (reg!2396 r!27177)))) b!827706))

(assert (= (and b!827479 ((_ is Concat!3798) (regOne!4646 (reg!2396 r!27177)))) b!827707))

(assert (= (and b!827479 ((_ is Star!2067) (regOne!4646 (reg!2396 r!27177)))) b!827708))

(assert (= (and b!827479 ((_ is Union!2067) (regOne!4646 (reg!2396 r!27177)))) b!827709))

(declare-fun b!827710 () Bool)

(declare-fun e!545867 () Bool)

(assert (=> b!827710 (= e!545867 tp_is_empty!3857)))

(declare-fun b!827713 () Bool)

(declare-fun tp!258935 () Bool)

(declare-fun tp!258938 () Bool)

(assert (=> b!827713 (= e!545867 (and tp!258935 tp!258938))))

(assert (=> b!827479 (= tp!258814 e!545867)))

(declare-fun b!827711 () Bool)

(declare-fun tp!258937 () Bool)

(declare-fun tp!258939 () Bool)

(assert (=> b!827711 (= e!545867 (and tp!258937 tp!258939))))

(declare-fun b!827712 () Bool)

(declare-fun tp!258936 () Bool)

(assert (=> b!827712 (= e!545867 tp!258936)))

(assert (= (and b!827479 ((_ is ElementMatch!2067) (regTwo!4646 (reg!2396 r!27177)))) b!827710))

(assert (= (and b!827479 ((_ is Concat!3798) (regTwo!4646 (reg!2396 r!27177)))) b!827711))

(assert (= (and b!827479 ((_ is Star!2067) (regTwo!4646 (reg!2396 r!27177)))) b!827712))

(assert (= (and b!827479 ((_ is Union!2067) (regTwo!4646 (reg!2396 r!27177)))) b!827713))

(declare-fun b!827714 () Bool)

(declare-fun e!545868 () Bool)

(assert (=> b!827714 (= e!545868 tp_is_empty!3857)))

(declare-fun b!827717 () Bool)

(declare-fun tp!258940 () Bool)

(declare-fun tp!258943 () Bool)

(assert (=> b!827717 (= e!545868 (and tp!258940 tp!258943))))

(assert (=> b!827493 (= tp!258825 e!545868)))

(declare-fun b!827715 () Bool)

(declare-fun tp!258942 () Bool)

(declare-fun tp!258944 () Bool)

(assert (=> b!827715 (= e!545868 (and tp!258942 tp!258944))))

(declare-fun b!827716 () Bool)

(declare-fun tp!258941 () Bool)

(assert (=> b!827716 (= e!545868 tp!258941)))

(assert (= (and b!827493 ((_ is ElementMatch!2067) (regOne!4647 (regOne!4647 r!27177)))) b!827714))

(assert (= (and b!827493 ((_ is Concat!3798) (regOne!4647 (regOne!4647 r!27177)))) b!827715))

(assert (= (and b!827493 ((_ is Star!2067) (regOne!4647 (regOne!4647 r!27177)))) b!827716))

(assert (= (and b!827493 ((_ is Union!2067) (regOne!4647 (regOne!4647 r!27177)))) b!827717))

(declare-fun b!827718 () Bool)

(declare-fun e!545869 () Bool)

(assert (=> b!827718 (= e!545869 tp_is_empty!3857)))

(declare-fun b!827721 () Bool)

(declare-fun tp!258945 () Bool)

(declare-fun tp!258948 () Bool)

(assert (=> b!827721 (= e!545869 (and tp!258945 tp!258948))))

(assert (=> b!827493 (= tp!258828 e!545869)))

(declare-fun b!827719 () Bool)

(declare-fun tp!258947 () Bool)

(declare-fun tp!258949 () Bool)

(assert (=> b!827719 (= e!545869 (and tp!258947 tp!258949))))

(declare-fun b!827720 () Bool)

(declare-fun tp!258946 () Bool)

(assert (=> b!827720 (= e!545869 tp!258946)))

(assert (= (and b!827493 ((_ is ElementMatch!2067) (regTwo!4647 (regOne!4647 r!27177)))) b!827718))

(assert (= (and b!827493 ((_ is Concat!3798) (regTwo!4647 (regOne!4647 r!27177)))) b!827719))

(assert (= (and b!827493 ((_ is Star!2067) (regTwo!4647 (regOne!4647 r!27177)))) b!827720))

(assert (= (and b!827493 ((_ is Union!2067) (regTwo!4647 (regOne!4647 r!27177)))) b!827721))

(declare-fun b!827722 () Bool)

(declare-fun e!545870 () Bool)

(assert (=> b!827722 (= e!545870 tp_is_empty!3857)))

(declare-fun b!827725 () Bool)

(declare-fun tp!258950 () Bool)

(declare-fun tp!258953 () Bool)

(assert (=> b!827725 (= e!545870 (and tp!258950 tp!258953))))

(assert (=> b!827480 (= tp!258811 e!545870)))

(declare-fun b!827723 () Bool)

(declare-fun tp!258952 () Bool)

(declare-fun tp!258954 () Bool)

(assert (=> b!827723 (= e!545870 (and tp!258952 tp!258954))))

(declare-fun b!827724 () Bool)

(declare-fun tp!258951 () Bool)

(assert (=> b!827724 (= e!545870 tp!258951)))

(assert (= (and b!827480 ((_ is ElementMatch!2067) (reg!2396 (reg!2396 r!27177)))) b!827722))

(assert (= (and b!827480 ((_ is Concat!3798) (reg!2396 (reg!2396 r!27177)))) b!827723))

(assert (= (and b!827480 ((_ is Star!2067) (reg!2396 (reg!2396 r!27177)))) b!827724))

(assert (= (and b!827480 ((_ is Union!2067) (reg!2396 (reg!2396 r!27177)))) b!827725))

(declare-fun b!827726 () Bool)

(declare-fun e!545871 () Bool)

(assert (=> b!827726 (= e!545871 tp_is_empty!3857)))

(declare-fun b!827729 () Bool)

(declare-fun tp!258955 () Bool)

(declare-fun tp!258958 () Bool)

(assert (=> b!827729 (= e!545871 (and tp!258955 tp!258958))))

(assert (=> b!827488 (= tp!258821 e!545871)))

(declare-fun b!827727 () Bool)

(declare-fun tp!258957 () Bool)

(declare-fun tp!258959 () Bool)

(assert (=> b!827727 (= e!545871 (and tp!258957 tp!258959))))

(declare-fun b!827728 () Bool)

(declare-fun tp!258956 () Bool)

(assert (=> b!827728 (= e!545871 tp!258956)))

(assert (= (and b!827488 ((_ is ElementMatch!2067) (reg!2396 (regTwo!4646 r!27177)))) b!827726))

(assert (= (and b!827488 ((_ is Concat!3798) (reg!2396 (regTwo!4646 r!27177)))) b!827727))

(assert (= (and b!827488 ((_ is Star!2067) (reg!2396 (regTwo!4646 r!27177)))) b!827728))

(assert (= (and b!827488 ((_ is Union!2067) (reg!2396 (regTwo!4646 r!27177)))) b!827729))

(check-sat (not b!827713) (not b!827687) (not b!827709) (not b!827657) (not b!827693) (not b!827635) (not bm!48279) (not b!827708) (not b!827578) (not b!827672) (not bm!48252) (not bm!48255) (not b!827668) (not b!827659) (not b!827695) (not bm!48249) (not bm!48268) (not b!827701) (not b!827608) (not b!827639) (not d!259611) (not b!827565) (not d!259601) (not b!827677) (not bm!48256) (not b!827554) (not b!827637) (not b!827721) (not b!827692) (not bm!48269) (not b!827504) (not bm!48265) (not b!827533) (not b!827724) (not bm!48274) (not b!827645) (not b!827728) (not b!827725) (not b!827656) (not b!827683) (not d!259581) (not b!827651) (not b!827534) (not b!827675) (not d!259577) (not bm!48276) (not b!827691) (not b!827566) (not b!827618) (not bm!48245) (not b!827648) (not b!827717) (not d!259595) (not bm!48277) (not b!827597) (not bm!48282) (not b!827715) (not b!827655) (not b!827633) (not bm!48250) (not b!827727) (not b!827685) (not b!827590) (not d!259599) (not b!827705) (not b!827699) (not b!827663) (not b!827544) (not b!827665) (not b!827640) (not b!827652) (not b!827703) (not b!827700) (not b!827676) (not b!827696) (not b!827704) (not b!827514) (not bm!48247) (not b!827588) (not b!827684) (not bm!48271) (not b!827716) (not bm!48281) (not b!827636) (not b!827632) (not d!259589) (not b!827673) (not b!827631) (not b!827671) tp_is_empty!3857 (not b!827697) (not b!827641) (not b!827596) (not b!827607) (not d!259605) (not b!827644) (not b!827592) (not bm!48272) (not b!827720) (not b!827643) (not b!827688) (not b!827669) (not b!827649) (not b!827667) (not b!827723) (not b!827729) (not b!827711) (not d!259593) (not b!827664) (not b!827553) (not bm!48242) (not b!827707) (not b!827719) (not b!827647) (not bm!48244) (not bm!48266) (not b!827680) (not b!827660) (not b!827653) (not b!827679) (not bm!48253) (not b!827629) (not d!259607) (not d!259609) (not bm!48261) (not bm!48258) (not b!827577) (not b!827689) (not b!827503) (not b!827681) (not bm!48260) (not b!827712) (not b!827661) (not bm!48263) (not b!827594))
(check-sat)
