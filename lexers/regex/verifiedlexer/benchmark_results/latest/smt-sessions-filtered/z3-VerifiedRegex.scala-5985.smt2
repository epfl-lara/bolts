; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293000 () Bool)

(assert start!293000)

(declare-fun b!3073594 () Bool)

(declare-fun res!1261406 () Bool)

(declare-fun e!1923328 () Bool)

(assert (=> b!3073594 (=> res!1261406 e!1923328)))

(declare-datatypes ((C!19228 0))(
  ( (C!19229 (val!11650 Int)) )
))
(declare-datatypes ((List!35386 0))(
  ( (Nil!35262) (Cons!35262 (h!40682 C!19228) (t!234451 List!35386)) )
))
(declare-fun s!11993 () List!35386)

(declare-fun ++!8472 (List!35386 List!35386) List!35386)

(assert (=> b!3073594 (= res!1261406 (not (= (++!8472 Nil!35262 s!11993) s!11993)))))

(declare-fun b!3073595 () Bool)

(declare-fun e!1923331 () Bool)

(declare-fun e!1923329 () Bool)

(assert (=> b!3073595 (= e!1923331 (not e!1923329))))

(declare-fun res!1261404 () Bool)

(assert (=> b!3073595 (=> res!1261404 e!1923329)))

(declare-fun lt!1051991 () Bool)

(declare-datatypes ((Regex!9521 0))(
  ( (ElementMatch!9521 (c!511199 C!19228)) (Concat!14842 (regOne!19554 Regex!9521) (regTwo!19554 Regex!9521)) (EmptyExpr!9521) (Star!9521 (reg!9850 Regex!9521)) (EmptyLang!9521) (Union!9521 (regOne!19555 Regex!9521) (regTwo!19555 Regex!9521)) )
))
(declare-fun r!17423 () Regex!9521)

(get-info :version)

(assert (=> b!3073595 (= res!1261404 (or lt!1051991 (not ((_ is Concat!14842) r!17423))))))

(declare-fun matchRSpec!1658 (Regex!9521 List!35386) Bool)

(assert (=> b!3073595 (= lt!1051991 (matchRSpec!1658 r!17423 s!11993))))

(declare-fun matchR!4403 (Regex!9521 List!35386) Bool)

(assert (=> b!3073595 (= lt!1051991 (matchR!4403 r!17423 s!11993))))

(declare-datatypes ((Unit!49481 0))(
  ( (Unit!49482) )
))
(declare-fun lt!1051986 () Unit!49481)

(declare-fun mainMatchTheorem!1658 (Regex!9521 List!35386) Unit!49481)

(assert (=> b!3073595 (= lt!1051986 (mainMatchTheorem!1658 r!17423 s!11993))))

(declare-fun b!3073596 () Bool)

(declare-fun res!1261397 () Bool)

(declare-fun e!1923330 () Bool)

(assert (=> b!3073596 (=> res!1261397 e!1923330)))

(declare-fun lt!1051989 () Regex!9521)

(declare-fun isEmptyExpr!578 (Regex!9521) Bool)

(assert (=> b!3073596 (= res!1261397 (isEmptyExpr!578 lt!1051989))))

(declare-fun b!3073597 () Bool)

(declare-fun e!1923327 () Bool)

(declare-fun tp!969233 () Bool)

(declare-fun tp!969230 () Bool)

(assert (=> b!3073597 (= e!1923327 (and tp!969233 tp!969230))))

(declare-fun b!3073598 () Bool)

(declare-fun res!1261396 () Bool)

(assert (=> b!3073598 (=> res!1261396 e!1923329)))

(declare-fun isEmpty!19587 (List!35386) Bool)

(assert (=> b!3073598 (= res!1261396 (isEmpty!19587 s!11993))))

(declare-fun b!3073599 () Bool)

(declare-fun lt!1051987 () Bool)

(assert (=> b!3073599 (= e!1923328 lt!1051987)))

(declare-fun b!3073600 () Bool)

(declare-fun e!1923326 () Bool)

(declare-fun tp_is_empty!16605 () Bool)

(declare-fun tp!969229 () Bool)

(assert (=> b!3073600 (= e!1923326 (and tp_is_empty!16605 tp!969229))))

(declare-fun b!3073601 () Bool)

(declare-fun res!1261395 () Bool)

(assert (=> b!3073601 (=> res!1261395 e!1923328)))

(declare-fun validRegex!4254 (Regex!9521) Bool)

(assert (=> b!3073601 (= res!1261395 (not (validRegex!4254 (regOne!19554 r!17423))))))

(declare-fun b!3073602 () Bool)

(declare-fun res!1261400 () Bool)

(assert (=> b!3073602 (=> res!1261400 e!1923328)))

(assert (=> b!3073602 (= res!1261400 (not (= (++!8472 s!11993 Nil!35262) s!11993)))))

(declare-fun b!3073603 () Bool)

(declare-fun tp!969228 () Bool)

(declare-fun tp!969231 () Bool)

(assert (=> b!3073603 (= e!1923327 (and tp!969228 tp!969231))))

(declare-fun b!3073604 () Bool)

(declare-fun res!1261398 () Bool)

(assert (=> b!3073604 (=> res!1261398 e!1923328)))

(assert (=> b!3073604 (= res!1261398 (not (validRegex!4254 (regTwo!19554 r!17423))))))

(declare-fun b!3073605 () Bool)

(declare-fun res!1261402 () Bool)

(assert (=> b!3073605 (=> res!1261402 e!1923330)))

(declare-fun lt!1051985 () Regex!9521)

(assert (=> b!3073605 (= res!1261402 (not (isEmptyExpr!578 lt!1051985)))))

(declare-fun b!3073606 () Bool)

(assert (=> b!3073606 (= e!1923330 e!1923328)))

(declare-fun res!1261399 () Bool)

(assert (=> b!3073606 (=> res!1261399 e!1923328)))

(declare-fun lt!1051988 () Bool)

(assert (=> b!3073606 (= res!1261399 (not lt!1051988))))

(assert (=> b!3073606 (= lt!1051987 (matchR!4403 lt!1051985 Nil!35262))))

(assert (=> b!3073606 (= lt!1051987 (matchR!4403 (regTwo!19554 r!17423) Nil!35262))))

(declare-fun lt!1051990 () Unit!49481)

(declare-fun lemmaSimplifySound!302 (Regex!9521 List!35386) Unit!49481)

(assert (=> b!3073606 (= lt!1051990 (lemmaSimplifySound!302 (regTwo!19554 r!17423) Nil!35262))))

(assert (=> b!3073606 (= lt!1051988 (matchR!4403 lt!1051989 s!11993))))

(assert (=> b!3073606 (= lt!1051988 (matchR!4403 (regOne!19554 r!17423) s!11993))))

(declare-fun lt!1051992 () Unit!49481)

(assert (=> b!3073606 (= lt!1051992 (lemmaSimplifySound!302 (regOne!19554 r!17423) s!11993))))

(declare-fun res!1261394 () Bool)

(assert (=> start!293000 (=> (not res!1261394) (not e!1923331))))

(assert (=> start!293000 (= res!1261394 (validRegex!4254 r!17423))))

(assert (=> start!293000 e!1923331))

(assert (=> start!293000 e!1923327))

(assert (=> start!293000 e!1923326))

(declare-fun b!3073607 () Bool)

(declare-fun tp!969232 () Bool)

(assert (=> b!3073607 (= e!1923327 tp!969232)))

(declare-fun b!3073608 () Bool)

(assert (=> b!3073608 (= e!1923329 e!1923330)))

(declare-fun res!1261405 () Bool)

(assert (=> b!3073608 (=> res!1261405 e!1923330)))

(declare-fun isEmptyLang!572 (Regex!9521) Bool)

(assert (=> b!3073608 (= res!1261405 (isEmptyLang!572 lt!1051989))))

(declare-fun simplify!476 (Regex!9521) Regex!9521)

(assert (=> b!3073608 (= lt!1051985 (simplify!476 (regTwo!19554 r!17423)))))

(assert (=> b!3073608 (= lt!1051989 (simplify!476 (regOne!19554 r!17423)))))

(declare-fun b!3073609 () Bool)

(declare-fun res!1261401 () Bool)

(assert (=> b!3073609 (=> res!1261401 e!1923330)))

(assert (=> b!3073609 (= res!1261401 (isEmptyLang!572 lt!1051985))))

(declare-fun b!3073610 () Bool)

(assert (=> b!3073610 (= e!1923327 tp_is_empty!16605)))

(declare-fun b!3073611 () Bool)

(declare-fun res!1261403 () Bool)

(assert (=> b!3073611 (=> res!1261403 e!1923328)))

(declare-fun isPrefix!2768 (List!35386 List!35386) Bool)

(assert (=> b!3073611 (= res!1261403 (not (isPrefix!2768 Nil!35262 s!11993)))))

(assert (= (and start!293000 res!1261394) b!3073595))

(assert (= (and b!3073595 (not res!1261404)) b!3073598))

(assert (= (and b!3073598 (not res!1261396)) b!3073608))

(assert (= (and b!3073608 (not res!1261405)) b!3073609))

(assert (= (and b!3073609 (not res!1261401)) b!3073596))

(assert (= (and b!3073596 (not res!1261397)) b!3073605))

(assert (= (and b!3073605 (not res!1261402)) b!3073606))

(assert (= (and b!3073606 (not res!1261399)) b!3073601))

(assert (= (and b!3073601 (not res!1261395)) b!3073604))

(assert (= (and b!3073604 (not res!1261398)) b!3073602))

(assert (= (and b!3073602 (not res!1261400)) b!3073611))

(assert (= (and b!3073611 (not res!1261403)) b!3073594))

(assert (= (and b!3073594 (not res!1261406)) b!3073599))

(assert (= (and start!293000 ((_ is ElementMatch!9521) r!17423)) b!3073610))

(assert (= (and start!293000 ((_ is Concat!14842) r!17423)) b!3073603))

(assert (= (and start!293000 ((_ is Star!9521) r!17423)) b!3073607))

(assert (= (and start!293000 ((_ is Union!9521) r!17423)) b!3073597))

(assert (= (and start!293000 ((_ is Cons!35262) s!11993)) b!3073600))

(declare-fun m!3386721 () Bool)

(assert (=> b!3073611 m!3386721))

(declare-fun m!3386723 () Bool)

(assert (=> b!3073601 m!3386723))

(declare-fun m!3386725 () Bool)

(assert (=> b!3073609 m!3386725))

(declare-fun m!3386727 () Bool)

(assert (=> b!3073602 m!3386727))

(declare-fun m!3386729 () Bool)

(assert (=> b!3073598 m!3386729))

(declare-fun m!3386731 () Bool)

(assert (=> b!3073608 m!3386731))

(declare-fun m!3386733 () Bool)

(assert (=> b!3073608 m!3386733))

(declare-fun m!3386735 () Bool)

(assert (=> b!3073608 m!3386735))

(declare-fun m!3386737 () Bool)

(assert (=> b!3073594 m!3386737))

(declare-fun m!3386739 () Bool)

(assert (=> b!3073595 m!3386739))

(declare-fun m!3386741 () Bool)

(assert (=> b!3073595 m!3386741))

(declare-fun m!3386743 () Bool)

(assert (=> b!3073595 m!3386743))

(declare-fun m!3386745 () Bool)

(assert (=> b!3073606 m!3386745))

(declare-fun m!3386747 () Bool)

(assert (=> b!3073606 m!3386747))

(declare-fun m!3386749 () Bool)

(assert (=> b!3073606 m!3386749))

(declare-fun m!3386751 () Bool)

(assert (=> b!3073606 m!3386751))

(declare-fun m!3386753 () Bool)

(assert (=> b!3073606 m!3386753))

(declare-fun m!3386755 () Bool)

(assert (=> b!3073606 m!3386755))

(declare-fun m!3386757 () Bool)

(assert (=> b!3073604 m!3386757))

(declare-fun m!3386759 () Bool)

(assert (=> b!3073605 m!3386759))

(declare-fun m!3386761 () Bool)

(assert (=> start!293000 m!3386761))

(declare-fun m!3386763 () Bool)

(assert (=> b!3073596 m!3386763))

(check-sat (not b!3073606) (not b!3073602) tp_is_empty!16605 (not b!3073603) (not b!3073609) (not b!3073605) (not b!3073595) (not b!3073604) (not b!3073611) (not b!3073597) (not b!3073601) (not b!3073608) (not b!3073596) (not b!3073594) (not b!3073598) (not b!3073600) (not b!3073607) (not start!293000))
(check-sat)
(get-model)

(declare-fun b!3073623 () Bool)

(declare-fun e!1923338 () Bool)

(declare-fun size!26567 (List!35386) Int)

(assert (=> b!3073623 (= e!1923338 (>= (size!26567 s!11993) (size!26567 Nil!35262)))))

(declare-fun b!3073622 () Bool)

(declare-fun e!1923339 () Bool)

(declare-fun tail!5048 (List!35386) List!35386)

(assert (=> b!3073622 (= e!1923339 (isPrefix!2768 (tail!5048 Nil!35262) (tail!5048 s!11993)))))

(declare-fun b!3073620 () Bool)

(declare-fun e!1923340 () Bool)

(assert (=> b!3073620 (= e!1923340 e!1923339)))

(declare-fun res!1261416 () Bool)

(assert (=> b!3073620 (=> (not res!1261416) (not e!1923339))))

(assert (=> b!3073620 (= res!1261416 (not ((_ is Nil!35262) s!11993)))))

(declare-fun b!3073621 () Bool)

(declare-fun res!1261418 () Bool)

(assert (=> b!3073621 (=> (not res!1261418) (not e!1923339))))

(declare-fun head!6822 (List!35386) C!19228)

(assert (=> b!3073621 (= res!1261418 (= (head!6822 Nil!35262) (head!6822 s!11993)))))

(declare-fun d!856518 () Bool)

(assert (=> d!856518 e!1923338))

(declare-fun res!1261417 () Bool)

(assert (=> d!856518 (=> res!1261417 e!1923338)))

(declare-fun lt!1051995 () Bool)

(assert (=> d!856518 (= res!1261417 (not lt!1051995))))

(assert (=> d!856518 (= lt!1051995 e!1923340)))

(declare-fun res!1261415 () Bool)

(assert (=> d!856518 (=> res!1261415 e!1923340)))

(assert (=> d!856518 (= res!1261415 ((_ is Nil!35262) Nil!35262))))

(assert (=> d!856518 (= (isPrefix!2768 Nil!35262 s!11993) lt!1051995)))

(assert (= (and d!856518 (not res!1261415)) b!3073620))

(assert (= (and b!3073620 res!1261416) b!3073621))

(assert (= (and b!3073621 res!1261418) b!3073622))

(assert (= (and d!856518 (not res!1261417)) b!3073623))

(declare-fun m!3386765 () Bool)

(assert (=> b!3073623 m!3386765))

(declare-fun m!3386767 () Bool)

(assert (=> b!3073623 m!3386767))

(declare-fun m!3386769 () Bool)

(assert (=> b!3073622 m!3386769))

(declare-fun m!3386771 () Bool)

(assert (=> b!3073622 m!3386771))

(assert (=> b!3073622 m!3386769))

(assert (=> b!3073622 m!3386771))

(declare-fun m!3386773 () Bool)

(assert (=> b!3073622 m!3386773))

(declare-fun m!3386775 () Bool)

(assert (=> b!3073621 m!3386775))

(declare-fun m!3386777 () Bool)

(assert (=> b!3073621 m!3386777))

(assert (=> b!3073611 d!856518))

(declare-fun bm!213632 () Bool)

(declare-fun call!213638 () Bool)

(declare-fun call!213639 () Bool)

(assert (=> bm!213632 (= call!213638 call!213639)))

(declare-fun b!3073665 () Bool)

(declare-fun e!1923373 () Bool)

(declare-fun e!1923371 () Bool)

(assert (=> b!3073665 (= e!1923373 e!1923371)))

(declare-fun c!511213 () Bool)

(assert (=> b!3073665 (= c!511213 ((_ is Star!9521) (regOne!19554 r!17423)))))

(declare-fun b!3073666 () Bool)

(declare-fun e!1923370 () Bool)

(declare-fun e!1923375 () Bool)

(assert (=> b!3073666 (= e!1923370 e!1923375)))

(declare-fun res!1261436 () Bool)

(assert (=> b!3073666 (=> (not res!1261436) (not e!1923375))))

(assert (=> b!3073666 (= res!1261436 call!213638)))

(declare-fun b!3073667 () Bool)

(declare-fun e!1923372 () Bool)

(assert (=> b!3073667 (= e!1923371 e!1923372)))

(declare-fun res!1261437 () Bool)

(declare-fun nullable!3167 (Regex!9521) Bool)

(assert (=> b!3073667 (= res!1261437 (not (nullable!3167 (reg!9850 (regOne!19554 r!17423)))))))

(assert (=> b!3073667 (=> (not res!1261437) (not e!1923372))))

(declare-fun b!3073668 () Bool)

(declare-fun res!1261439 () Bool)

(assert (=> b!3073668 (=> res!1261439 e!1923370)))

(assert (=> b!3073668 (= res!1261439 (not ((_ is Concat!14842) (regOne!19554 r!17423))))))

(declare-fun e!1923369 () Bool)

(assert (=> b!3073668 (= e!1923369 e!1923370)))

(declare-fun c!511212 () Bool)

(declare-fun bm!213633 () Bool)

(assert (=> bm!213633 (= call!213639 (validRegex!4254 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun b!3073664 () Bool)

(assert (=> b!3073664 (= e!1923371 e!1923369)))

(assert (=> b!3073664 (= c!511212 ((_ is Union!9521) (regOne!19554 r!17423)))))

(declare-fun d!856524 () Bool)

(declare-fun res!1261438 () Bool)

(assert (=> d!856524 (=> res!1261438 e!1923373)))

(assert (=> d!856524 (= res!1261438 ((_ is ElementMatch!9521) (regOne!19554 r!17423)))))

(assert (=> d!856524 (= (validRegex!4254 (regOne!19554 r!17423)) e!1923373)))

(declare-fun b!3073669 () Bool)

(assert (=> b!3073669 (= e!1923372 call!213639)))

(declare-fun b!3073670 () Bool)

(declare-fun e!1923374 () Bool)

(assert (=> b!3073670 (= e!1923374 call!213638)))

(declare-fun bm!213634 () Bool)

(declare-fun call!213637 () Bool)

(assert (=> bm!213634 (= call!213637 (validRegex!4254 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun b!3073671 () Bool)

(assert (=> b!3073671 (= e!1923375 call!213637)))

(declare-fun b!3073672 () Bool)

(declare-fun res!1261435 () Bool)

(assert (=> b!3073672 (=> (not res!1261435) (not e!1923374))))

(assert (=> b!3073672 (= res!1261435 call!213637)))

(assert (=> b!3073672 (= e!1923369 e!1923374)))

(assert (= (and d!856524 (not res!1261438)) b!3073665))

(assert (= (and b!3073665 c!511213) b!3073667))

(assert (= (and b!3073665 (not c!511213)) b!3073664))

(assert (= (and b!3073667 res!1261437) b!3073669))

(assert (= (and b!3073664 c!511212) b!3073672))

(assert (= (and b!3073664 (not c!511212)) b!3073668))

(assert (= (and b!3073672 res!1261435) b!3073670))

(assert (= (and b!3073668 (not res!1261439)) b!3073666))

(assert (= (and b!3073666 res!1261436) b!3073671))

(assert (= (or b!3073672 b!3073671) bm!213634))

(assert (= (or b!3073670 b!3073666) bm!213632))

(assert (= (or b!3073669 bm!213632) bm!213633))

(declare-fun m!3386779 () Bool)

(assert (=> b!3073667 m!3386779))

(declare-fun m!3386781 () Bool)

(assert (=> bm!213633 m!3386781))

(declare-fun m!3386783 () Bool)

(assert (=> bm!213634 m!3386783))

(assert (=> b!3073601 d!856524))

(declare-fun b!3073682 () Bool)

(declare-fun e!1923381 () List!35386)

(assert (=> b!3073682 (= e!1923381 (Cons!35262 (h!40682 s!11993) (++!8472 (t!234451 s!11993) Nil!35262)))))

(declare-fun b!3073683 () Bool)

(declare-fun res!1261444 () Bool)

(declare-fun e!1923380 () Bool)

(assert (=> b!3073683 (=> (not res!1261444) (not e!1923380))))

(declare-fun lt!1051998 () List!35386)

(assert (=> b!3073683 (= res!1261444 (= (size!26567 lt!1051998) (+ (size!26567 s!11993) (size!26567 Nil!35262))))))

(declare-fun b!3073681 () Bool)

(assert (=> b!3073681 (= e!1923381 Nil!35262)))

(declare-fun d!856526 () Bool)

(assert (=> d!856526 e!1923380))

(declare-fun res!1261445 () Bool)

(assert (=> d!856526 (=> (not res!1261445) (not e!1923380))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4812 (List!35386) (InoxSet C!19228))

(assert (=> d!856526 (= res!1261445 (= (content!4812 lt!1051998) ((_ map or) (content!4812 s!11993) (content!4812 Nil!35262))))))

(assert (=> d!856526 (= lt!1051998 e!1923381)))

(declare-fun c!511216 () Bool)

(assert (=> d!856526 (= c!511216 ((_ is Nil!35262) s!11993))))

(assert (=> d!856526 (= (++!8472 s!11993 Nil!35262) lt!1051998)))

(declare-fun b!3073684 () Bool)

(assert (=> b!3073684 (= e!1923380 (or (not (= Nil!35262 Nil!35262)) (= lt!1051998 s!11993)))))

(assert (= (and d!856526 c!511216) b!3073681))

(assert (= (and d!856526 (not c!511216)) b!3073682))

(assert (= (and d!856526 res!1261445) b!3073683))

(assert (= (and b!3073683 res!1261444) b!3073684))

(declare-fun m!3386785 () Bool)

(assert (=> b!3073682 m!3386785))

(declare-fun m!3386787 () Bool)

(assert (=> b!3073683 m!3386787))

(assert (=> b!3073683 m!3386765))

(assert (=> b!3073683 m!3386767))

(declare-fun m!3386789 () Bool)

(assert (=> d!856526 m!3386789))

(declare-fun m!3386791 () Bool)

(assert (=> d!856526 m!3386791))

(declare-fun m!3386793 () Bool)

(assert (=> d!856526 m!3386793))

(assert (=> b!3073602 d!856526))

(declare-fun bm!213635 () Bool)

(declare-fun call!213641 () Bool)

(declare-fun call!213642 () Bool)

(assert (=> bm!213635 (= call!213641 call!213642)))

(declare-fun b!3073686 () Bool)

(declare-fun e!1923386 () Bool)

(declare-fun e!1923384 () Bool)

(assert (=> b!3073686 (= e!1923386 e!1923384)))

(declare-fun c!511218 () Bool)

(assert (=> b!3073686 (= c!511218 ((_ is Star!9521) (regTwo!19554 r!17423)))))

(declare-fun b!3073687 () Bool)

(declare-fun e!1923383 () Bool)

(declare-fun e!1923388 () Bool)

(assert (=> b!3073687 (= e!1923383 e!1923388)))

(declare-fun res!1261447 () Bool)

(assert (=> b!3073687 (=> (not res!1261447) (not e!1923388))))

(assert (=> b!3073687 (= res!1261447 call!213641)))

(declare-fun b!3073688 () Bool)

(declare-fun e!1923385 () Bool)

(assert (=> b!3073688 (= e!1923384 e!1923385)))

(declare-fun res!1261448 () Bool)

(assert (=> b!3073688 (= res!1261448 (not (nullable!3167 (reg!9850 (regTwo!19554 r!17423)))))))

(assert (=> b!3073688 (=> (not res!1261448) (not e!1923385))))

(declare-fun b!3073689 () Bool)

(declare-fun res!1261450 () Bool)

(assert (=> b!3073689 (=> res!1261450 e!1923383)))

(assert (=> b!3073689 (= res!1261450 (not ((_ is Concat!14842) (regTwo!19554 r!17423))))))

(declare-fun e!1923382 () Bool)

(assert (=> b!3073689 (= e!1923382 e!1923383)))

(declare-fun c!511217 () Bool)

(declare-fun bm!213636 () Bool)

(assert (=> bm!213636 (= call!213642 (validRegex!4254 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun b!3073685 () Bool)

(assert (=> b!3073685 (= e!1923384 e!1923382)))

(assert (=> b!3073685 (= c!511217 ((_ is Union!9521) (regTwo!19554 r!17423)))))

(declare-fun d!856528 () Bool)

(declare-fun res!1261449 () Bool)

(assert (=> d!856528 (=> res!1261449 e!1923386)))

(assert (=> d!856528 (= res!1261449 ((_ is ElementMatch!9521) (regTwo!19554 r!17423)))))

(assert (=> d!856528 (= (validRegex!4254 (regTwo!19554 r!17423)) e!1923386)))

(declare-fun b!3073690 () Bool)

(assert (=> b!3073690 (= e!1923385 call!213642)))

(declare-fun b!3073691 () Bool)

(declare-fun e!1923387 () Bool)

(assert (=> b!3073691 (= e!1923387 call!213641)))

(declare-fun bm!213637 () Bool)

(declare-fun call!213640 () Bool)

(assert (=> bm!213637 (= call!213640 (validRegex!4254 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun b!3073692 () Bool)

(assert (=> b!3073692 (= e!1923388 call!213640)))

(declare-fun b!3073693 () Bool)

(declare-fun res!1261446 () Bool)

(assert (=> b!3073693 (=> (not res!1261446) (not e!1923387))))

(assert (=> b!3073693 (= res!1261446 call!213640)))

(assert (=> b!3073693 (= e!1923382 e!1923387)))

(assert (= (and d!856528 (not res!1261449)) b!3073686))

(assert (= (and b!3073686 c!511218) b!3073688))

(assert (= (and b!3073686 (not c!511218)) b!3073685))

(assert (= (and b!3073688 res!1261448) b!3073690))

(assert (= (and b!3073685 c!511217) b!3073693))

(assert (= (and b!3073685 (not c!511217)) b!3073689))

(assert (= (and b!3073693 res!1261446) b!3073691))

(assert (= (and b!3073689 (not res!1261450)) b!3073687))

(assert (= (and b!3073687 res!1261447) b!3073692))

(assert (= (or b!3073693 b!3073692) bm!213637))

(assert (= (or b!3073691 b!3073687) bm!213635))

(assert (= (or b!3073690 bm!213635) bm!213636))

(declare-fun m!3386795 () Bool)

(assert (=> b!3073688 m!3386795))

(declare-fun m!3386797 () Bool)

(assert (=> bm!213636 m!3386797))

(declare-fun m!3386799 () Bool)

(assert (=> bm!213637 m!3386799))

(assert (=> b!3073604 d!856528))

(declare-fun d!856530 () Bool)

(assert (=> d!856530 (= (isEmptyExpr!578 lt!1051985) ((_ is EmptyExpr!9521) lt!1051985))))

(assert (=> b!3073605 d!856530))

(declare-fun b!3073695 () Bool)

(declare-fun e!1923390 () List!35386)

(assert (=> b!3073695 (= e!1923390 (Cons!35262 (h!40682 Nil!35262) (++!8472 (t!234451 Nil!35262) s!11993)))))

(declare-fun b!3073696 () Bool)

(declare-fun res!1261451 () Bool)

(declare-fun e!1923389 () Bool)

(assert (=> b!3073696 (=> (not res!1261451) (not e!1923389))))

(declare-fun lt!1051999 () List!35386)

(assert (=> b!3073696 (= res!1261451 (= (size!26567 lt!1051999) (+ (size!26567 Nil!35262) (size!26567 s!11993))))))

(declare-fun b!3073694 () Bool)

(assert (=> b!3073694 (= e!1923390 s!11993)))

(declare-fun d!856532 () Bool)

(assert (=> d!856532 e!1923389))

(declare-fun res!1261452 () Bool)

(assert (=> d!856532 (=> (not res!1261452) (not e!1923389))))

(assert (=> d!856532 (= res!1261452 (= (content!4812 lt!1051999) ((_ map or) (content!4812 Nil!35262) (content!4812 s!11993))))))

(assert (=> d!856532 (= lt!1051999 e!1923390)))

(declare-fun c!511219 () Bool)

(assert (=> d!856532 (= c!511219 ((_ is Nil!35262) Nil!35262))))

(assert (=> d!856532 (= (++!8472 Nil!35262 s!11993) lt!1051999)))

(declare-fun b!3073697 () Bool)

(assert (=> b!3073697 (= e!1923389 (or (not (= s!11993 Nil!35262)) (= lt!1051999 Nil!35262)))))

(assert (= (and d!856532 c!511219) b!3073694))

(assert (= (and d!856532 (not c!511219)) b!3073695))

(assert (= (and d!856532 res!1261452) b!3073696))

(assert (= (and b!3073696 res!1261451) b!3073697))

(declare-fun m!3386801 () Bool)

(assert (=> b!3073695 m!3386801))

(declare-fun m!3386803 () Bool)

(assert (=> b!3073696 m!3386803))

(assert (=> b!3073696 m!3386767))

(assert (=> b!3073696 m!3386765))

(declare-fun m!3386805 () Bool)

(assert (=> d!856532 m!3386805))

(assert (=> d!856532 m!3386793))

(assert (=> d!856532 m!3386791))

(assert (=> b!3073594 d!856532))

(declare-fun b!3074070 () Bool)

(assert (=> b!3074070 true))

(assert (=> b!3074070 true))

(declare-fun bs!532688 () Bool)

(declare-fun b!3074061 () Bool)

(assert (= bs!532688 (and b!3074061 b!3074070)))

(declare-fun lambda!114148 () Int)

(declare-fun lambda!114147 () Int)

(assert (=> bs!532688 (not (= lambda!114148 lambda!114147))))

(assert (=> b!3074061 true))

(assert (=> b!3074061 true))

(declare-fun e!1923587 () Bool)

(declare-fun call!213703 () Bool)

(assert (=> b!3074061 (= e!1923587 call!213703)))

(declare-fun c!511311 () Bool)

(declare-fun bm!213698 () Bool)

(declare-fun Exists!1784 (Int) Bool)

(assert (=> bm!213698 (= call!213703 (Exists!1784 (ite c!511311 lambda!114147 lambda!114148)))))

(declare-fun b!3074062 () Bool)

(declare-fun c!511314 () Bool)

(assert (=> b!3074062 (= c!511314 ((_ is ElementMatch!9521) r!17423))))

(declare-fun e!1923593 () Bool)

(declare-fun e!1923591 () Bool)

(assert (=> b!3074062 (= e!1923593 e!1923591)))

(declare-fun bm!213699 () Bool)

(declare-fun call!213704 () Bool)

(assert (=> bm!213699 (= call!213704 (isEmpty!19587 s!11993))))

(declare-fun b!3074063 () Bool)

(declare-fun e!1923588 () Bool)

(assert (=> b!3074063 (= e!1923588 e!1923593)))

(declare-fun res!1261597 () Bool)

(assert (=> b!3074063 (= res!1261597 (not ((_ is EmptyLang!9521) r!17423)))))

(assert (=> b!3074063 (=> (not res!1261597) (not e!1923593))))

(declare-fun b!3074064 () Bool)

(declare-fun e!1923589 () Bool)

(assert (=> b!3074064 (= e!1923589 e!1923587)))

(assert (=> b!3074064 (= c!511311 ((_ is Star!9521) r!17423))))

(declare-fun b!3074065 () Bool)

(declare-fun e!1923592 () Bool)

(assert (=> b!3074065 (= e!1923592 (matchRSpec!1658 (regTwo!19555 r!17423) s!11993))))

(declare-fun b!3074066 () Bool)

(declare-fun c!511312 () Bool)

(assert (=> b!3074066 (= c!511312 ((_ is Union!9521) r!17423))))

(assert (=> b!3074066 (= e!1923591 e!1923589)))

(declare-fun b!3074067 () Bool)

(assert (=> b!3074067 (= e!1923588 call!213704)))

(declare-fun b!3074068 () Bool)

(assert (=> b!3074068 (= e!1923591 (= s!11993 (Cons!35262 (c!511199 r!17423) Nil!35262)))))

(declare-fun b!3074069 () Bool)

(declare-fun res!1261595 () Bool)

(declare-fun e!1923590 () Bool)

(assert (=> b!3074069 (=> res!1261595 e!1923590)))

(assert (=> b!3074069 (= res!1261595 call!213704)))

(assert (=> b!3074069 (= e!1923587 e!1923590)))

(assert (=> b!3074070 (= e!1923590 call!213703)))

(declare-fun b!3074071 () Bool)

(assert (=> b!3074071 (= e!1923589 e!1923592)))

(declare-fun res!1261596 () Bool)

(assert (=> b!3074071 (= res!1261596 (matchRSpec!1658 (regOne!19555 r!17423) s!11993))))

(assert (=> b!3074071 (=> res!1261596 e!1923592)))

(declare-fun d!856534 () Bool)

(declare-fun c!511313 () Bool)

(assert (=> d!856534 (= c!511313 ((_ is EmptyExpr!9521) r!17423))))

(assert (=> d!856534 (= (matchRSpec!1658 r!17423 s!11993) e!1923588)))

(assert (= (and d!856534 c!511313) b!3074067))

(assert (= (and d!856534 (not c!511313)) b!3074063))

(assert (= (and b!3074063 res!1261597) b!3074062))

(assert (= (and b!3074062 c!511314) b!3074068))

(assert (= (and b!3074062 (not c!511314)) b!3074066))

(assert (= (and b!3074066 c!511312) b!3074071))

(assert (= (and b!3074066 (not c!511312)) b!3074064))

(assert (= (and b!3074071 (not res!1261596)) b!3074065))

(assert (= (and b!3074064 c!511311) b!3074069))

(assert (= (and b!3074064 (not c!511311)) b!3074061))

(assert (= (and b!3074069 (not res!1261595)) b!3074070))

(assert (= (or b!3074070 b!3074061) bm!213698))

(assert (= (or b!3074067 b!3074069) bm!213699))

(declare-fun m!3386943 () Bool)

(assert (=> bm!213698 m!3386943))

(assert (=> bm!213699 m!3386729))

(declare-fun m!3386945 () Bool)

(assert (=> b!3074065 m!3386945))

(declare-fun m!3386947 () Bool)

(assert (=> b!3074071 m!3386947))

(assert (=> b!3073595 d!856534))

(declare-fun b!3074104 () Bool)

(declare-fun e!1923614 () Bool)

(declare-fun lt!1052047 () Bool)

(declare-fun call!213707 () Bool)

(assert (=> b!3074104 (= e!1923614 (= lt!1052047 call!213707))))

(declare-fun b!3074105 () Bool)

(declare-fun e!1923609 () Bool)

(assert (=> b!3074105 (= e!1923609 (nullable!3167 r!17423))))

(declare-fun b!3074106 () Bool)

(declare-fun e!1923608 () Bool)

(assert (=> b!3074106 (= e!1923608 (not lt!1052047))))

(declare-fun b!3074107 () Bool)

(declare-fun e!1923610 () Bool)

(declare-fun e!1923611 () Bool)

(assert (=> b!3074107 (= e!1923610 e!1923611)))

(declare-fun res!1261620 () Bool)

(assert (=> b!3074107 (=> res!1261620 e!1923611)))

(assert (=> b!3074107 (= res!1261620 call!213707)))

(declare-fun bm!213702 () Bool)

(assert (=> bm!213702 (= call!213707 (isEmpty!19587 s!11993))))

(declare-fun b!3074108 () Bool)

(declare-fun res!1261618 () Bool)

(declare-fun e!1923613 () Bool)

(assert (=> b!3074108 (=> res!1261618 e!1923613)))

(declare-fun e!1923612 () Bool)

(assert (=> b!3074108 (= res!1261618 e!1923612)))

(declare-fun res!1261616 () Bool)

(assert (=> b!3074108 (=> (not res!1261616) (not e!1923612))))

(assert (=> b!3074108 (= res!1261616 lt!1052047)))

(declare-fun b!3074109 () Bool)

(declare-fun res!1261614 () Bool)

(assert (=> b!3074109 (=> res!1261614 e!1923611)))

(assert (=> b!3074109 (= res!1261614 (not (isEmpty!19587 (tail!5048 s!11993))))))

(declare-fun b!3074110 () Bool)

(declare-fun res!1261615 () Bool)

(assert (=> b!3074110 (=> (not res!1261615) (not e!1923612))))

(assert (=> b!3074110 (= res!1261615 (not call!213707))))

(declare-fun b!3074111 () Bool)

(declare-fun res!1261619 () Bool)

(assert (=> b!3074111 (=> res!1261619 e!1923613)))

(assert (=> b!3074111 (= res!1261619 (not ((_ is ElementMatch!9521) r!17423)))))

(assert (=> b!3074111 (= e!1923608 e!1923613)))

(declare-fun d!856574 () Bool)

(assert (=> d!856574 e!1923614))

(declare-fun c!511322 () Bool)

(assert (=> d!856574 (= c!511322 ((_ is EmptyExpr!9521) r!17423))))

(assert (=> d!856574 (= lt!1052047 e!1923609)))

(declare-fun c!511321 () Bool)

(assert (=> d!856574 (= c!511321 (isEmpty!19587 s!11993))))

(assert (=> d!856574 (validRegex!4254 r!17423)))

(assert (=> d!856574 (= (matchR!4403 r!17423 s!11993) lt!1052047)))

(declare-fun b!3074112 () Bool)

(declare-fun res!1261621 () Bool)

(assert (=> b!3074112 (=> (not res!1261621) (not e!1923612))))

(assert (=> b!3074112 (= res!1261621 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074113 () Bool)

(declare-fun derivativeStep!2763 (Regex!9521 C!19228) Regex!9521)

(assert (=> b!3074113 (= e!1923609 (matchR!4403 (derivativeStep!2763 r!17423 (head!6822 s!11993)) (tail!5048 s!11993)))))

(declare-fun b!3074114 () Bool)

(assert (=> b!3074114 (= e!1923611 (not (= (head!6822 s!11993) (c!511199 r!17423))))))

(declare-fun b!3074115 () Bool)

(assert (=> b!3074115 (= e!1923614 e!1923608)))

(declare-fun c!511323 () Bool)

(assert (=> b!3074115 (= c!511323 ((_ is EmptyLang!9521) r!17423))))

(declare-fun b!3074116 () Bool)

(assert (=> b!3074116 (= e!1923612 (= (head!6822 s!11993) (c!511199 r!17423)))))

(declare-fun b!3074117 () Bool)

(assert (=> b!3074117 (= e!1923613 e!1923610)))

(declare-fun res!1261617 () Bool)

(assert (=> b!3074117 (=> (not res!1261617) (not e!1923610))))

(assert (=> b!3074117 (= res!1261617 (not lt!1052047))))

(assert (= (and d!856574 c!511321) b!3074105))

(assert (= (and d!856574 (not c!511321)) b!3074113))

(assert (= (and d!856574 c!511322) b!3074104))

(assert (= (and d!856574 (not c!511322)) b!3074115))

(assert (= (and b!3074115 c!511323) b!3074106))

(assert (= (and b!3074115 (not c!511323)) b!3074111))

(assert (= (and b!3074111 (not res!1261619)) b!3074108))

(assert (= (and b!3074108 res!1261616) b!3074110))

(assert (= (and b!3074110 res!1261615) b!3074112))

(assert (= (and b!3074112 res!1261621) b!3074116))

(assert (= (and b!3074108 (not res!1261618)) b!3074117))

(assert (= (and b!3074117 res!1261617) b!3074107))

(assert (= (and b!3074107 (not res!1261620)) b!3074109))

(assert (= (and b!3074109 (not res!1261614)) b!3074114))

(assert (= (or b!3074104 b!3074107 b!3074110) bm!213702))

(assert (=> b!3074116 m!3386777))

(assert (=> b!3074113 m!3386777))

(assert (=> b!3074113 m!3386777))

(declare-fun m!3386949 () Bool)

(assert (=> b!3074113 m!3386949))

(assert (=> b!3074113 m!3386771))

(assert (=> b!3074113 m!3386949))

(assert (=> b!3074113 m!3386771))

(declare-fun m!3386951 () Bool)

(assert (=> b!3074113 m!3386951))

(assert (=> bm!213702 m!3386729))

(assert (=> b!3074109 m!3386771))

(assert (=> b!3074109 m!3386771))

(declare-fun m!3386953 () Bool)

(assert (=> b!3074109 m!3386953))

(declare-fun m!3386955 () Bool)

(assert (=> b!3074105 m!3386955))

(assert (=> b!3074112 m!3386771))

(assert (=> b!3074112 m!3386771))

(assert (=> b!3074112 m!3386953))

(assert (=> b!3074114 m!3386777))

(assert (=> d!856574 m!3386729))

(assert (=> d!856574 m!3386761))

(assert (=> b!3073595 d!856574))

(declare-fun d!856576 () Bool)

(assert (=> d!856576 (= (matchR!4403 r!17423 s!11993) (matchRSpec!1658 r!17423 s!11993))))

(declare-fun lt!1052050 () Unit!49481)

(declare-fun choose!18211 (Regex!9521 List!35386) Unit!49481)

(assert (=> d!856576 (= lt!1052050 (choose!18211 r!17423 s!11993))))

(assert (=> d!856576 (validRegex!4254 r!17423)))

(assert (=> d!856576 (= (mainMatchTheorem!1658 r!17423 s!11993) lt!1052050)))

(declare-fun bs!532689 () Bool)

(assert (= bs!532689 d!856576))

(assert (=> bs!532689 m!3386741))

(assert (=> bs!532689 m!3386739))

(declare-fun m!3386957 () Bool)

(assert (=> bs!532689 m!3386957))

(assert (=> bs!532689 m!3386761))

(assert (=> b!3073595 d!856576))

(declare-fun bm!213703 () Bool)

(declare-fun call!213709 () Bool)

(declare-fun call!213710 () Bool)

(assert (=> bm!213703 (= call!213709 call!213710)))

(declare-fun b!3074119 () Bool)

(declare-fun e!1923619 () Bool)

(declare-fun e!1923617 () Bool)

(assert (=> b!3074119 (= e!1923619 e!1923617)))

(declare-fun c!511325 () Bool)

(assert (=> b!3074119 (= c!511325 ((_ is Star!9521) r!17423))))

(declare-fun b!3074120 () Bool)

(declare-fun e!1923616 () Bool)

(declare-fun e!1923621 () Bool)

(assert (=> b!3074120 (= e!1923616 e!1923621)))

(declare-fun res!1261623 () Bool)

(assert (=> b!3074120 (=> (not res!1261623) (not e!1923621))))

(assert (=> b!3074120 (= res!1261623 call!213709)))

(declare-fun b!3074121 () Bool)

(declare-fun e!1923618 () Bool)

(assert (=> b!3074121 (= e!1923617 e!1923618)))

(declare-fun res!1261624 () Bool)

(assert (=> b!3074121 (= res!1261624 (not (nullable!3167 (reg!9850 r!17423))))))

(assert (=> b!3074121 (=> (not res!1261624) (not e!1923618))))

(declare-fun b!3074122 () Bool)

(declare-fun res!1261626 () Bool)

(assert (=> b!3074122 (=> res!1261626 e!1923616)))

(assert (=> b!3074122 (= res!1261626 (not ((_ is Concat!14842) r!17423)))))

(declare-fun e!1923615 () Bool)

(assert (=> b!3074122 (= e!1923615 e!1923616)))

(declare-fun c!511324 () Bool)

(declare-fun bm!213704 () Bool)

(assert (=> bm!213704 (= call!213710 (validRegex!4254 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))

(declare-fun b!3074118 () Bool)

(assert (=> b!3074118 (= e!1923617 e!1923615)))

(assert (=> b!3074118 (= c!511324 ((_ is Union!9521) r!17423))))

(declare-fun d!856578 () Bool)

(declare-fun res!1261625 () Bool)

(assert (=> d!856578 (=> res!1261625 e!1923619)))

(assert (=> d!856578 (= res!1261625 ((_ is ElementMatch!9521) r!17423))))

(assert (=> d!856578 (= (validRegex!4254 r!17423) e!1923619)))

(declare-fun b!3074123 () Bool)

(assert (=> b!3074123 (= e!1923618 call!213710)))

(declare-fun b!3074124 () Bool)

(declare-fun e!1923620 () Bool)

(assert (=> b!3074124 (= e!1923620 call!213709)))

(declare-fun bm!213705 () Bool)

(declare-fun call!213708 () Bool)

(assert (=> bm!213705 (= call!213708 (validRegex!4254 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))

(declare-fun b!3074125 () Bool)

(assert (=> b!3074125 (= e!1923621 call!213708)))

(declare-fun b!3074126 () Bool)

(declare-fun res!1261622 () Bool)

(assert (=> b!3074126 (=> (not res!1261622) (not e!1923620))))

(assert (=> b!3074126 (= res!1261622 call!213708)))

(assert (=> b!3074126 (= e!1923615 e!1923620)))

(assert (= (and d!856578 (not res!1261625)) b!3074119))

(assert (= (and b!3074119 c!511325) b!3074121))

(assert (= (and b!3074119 (not c!511325)) b!3074118))

(assert (= (and b!3074121 res!1261624) b!3074123))

(assert (= (and b!3074118 c!511324) b!3074126))

(assert (= (and b!3074118 (not c!511324)) b!3074122))

(assert (= (and b!3074126 res!1261622) b!3074124))

(assert (= (and b!3074122 (not res!1261626)) b!3074120))

(assert (= (and b!3074120 res!1261623) b!3074125))

(assert (= (or b!3074126 b!3074125) bm!213705))

(assert (= (or b!3074124 b!3074120) bm!213703))

(assert (= (or b!3074123 bm!213703) bm!213704))

(declare-fun m!3386959 () Bool)

(assert (=> b!3074121 m!3386959))

(declare-fun m!3386961 () Bool)

(assert (=> bm!213704 m!3386961))

(declare-fun m!3386963 () Bool)

(assert (=> bm!213705 m!3386963))

(assert (=> start!293000 d!856578))

(declare-fun b!3074127 () Bool)

(declare-fun e!1923628 () Bool)

(declare-fun lt!1052051 () Bool)

(declare-fun call!213711 () Bool)

(assert (=> b!3074127 (= e!1923628 (= lt!1052051 call!213711))))

(declare-fun b!3074128 () Bool)

(declare-fun e!1923623 () Bool)

(assert (=> b!3074128 (= e!1923623 (nullable!3167 lt!1051985))))

(declare-fun b!3074129 () Bool)

(declare-fun e!1923622 () Bool)

(assert (=> b!3074129 (= e!1923622 (not lt!1052051))))

(declare-fun b!3074130 () Bool)

(declare-fun e!1923624 () Bool)

(declare-fun e!1923625 () Bool)

(assert (=> b!3074130 (= e!1923624 e!1923625)))

(declare-fun res!1261633 () Bool)

(assert (=> b!3074130 (=> res!1261633 e!1923625)))

(assert (=> b!3074130 (= res!1261633 call!213711)))

(declare-fun bm!213706 () Bool)

(assert (=> bm!213706 (= call!213711 (isEmpty!19587 Nil!35262))))

(declare-fun b!3074131 () Bool)

(declare-fun res!1261631 () Bool)

(declare-fun e!1923627 () Bool)

(assert (=> b!3074131 (=> res!1261631 e!1923627)))

(declare-fun e!1923626 () Bool)

(assert (=> b!3074131 (= res!1261631 e!1923626)))

(declare-fun res!1261629 () Bool)

(assert (=> b!3074131 (=> (not res!1261629) (not e!1923626))))

(assert (=> b!3074131 (= res!1261629 lt!1052051)))

(declare-fun b!3074132 () Bool)

(declare-fun res!1261627 () Bool)

(assert (=> b!3074132 (=> res!1261627 e!1923625)))

(assert (=> b!3074132 (= res!1261627 (not (isEmpty!19587 (tail!5048 Nil!35262))))))

(declare-fun b!3074133 () Bool)

(declare-fun res!1261628 () Bool)

(assert (=> b!3074133 (=> (not res!1261628) (not e!1923626))))

(assert (=> b!3074133 (= res!1261628 (not call!213711))))

(declare-fun b!3074134 () Bool)

(declare-fun res!1261632 () Bool)

(assert (=> b!3074134 (=> res!1261632 e!1923627)))

(assert (=> b!3074134 (= res!1261632 (not ((_ is ElementMatch!9521) lt!1051985)))))

(assert (=> b!3074134 (= e!1923622 e!1923627)))

(declare-fun d!856580 () Bool)

(assert (=> d!856580 e!1923628))

(declare-fun c!511327 () Bool)

(assert (=> d!856580 (= c!511327 ((_ is EmptyExpr!9521) lt!1051985))))

(assert (=> d!856580 (= lt!1052051 e!1923623)))

(declare-fun c!511326 () Bool)

(assert (=> d!856580 (= c!511326 (isEmpty!19587 Nil!35262))))

(assert (=> d!856580 (validRegex!4254 lt!1051985)))

(assert (=> d!856580 (= (matchR!4403 lt!1051985 Nil!35262) lt!1052051)))

(declare-fun b!3074135 () Bool)

(declare-fun res!1261634 () Bool)

(assert (=> b!3074135 (=> (not res!1261634) (not e!1923626))))

(assert (=> b!3074135 (= res!1261634 (isEmpty!19587 (tail!5048 Nil!35262)))))

(declare-fun b!3074136 () Bool)

(assert (=> b!3074136 (= e!1923623 (matchR!4403 (derivativeStep!2763 lt!1051985 (head!6822 Nil!35262)) (tail!5048 Nil!35262)))))

(declare-fun b!3074137 () Bool)

(assert (=> b!3074137 (= e!1923625 (not (= (head!6822 Nil!35262) (c!511199 lt!1051985))))))

(declare-fun b!3074138 () Bool)

(assert (=> b!3074138 (= e!1923628 e!1923622)))

(declare-fun c!511328 () Bool)

(assert (=> b!3074138 (= c!511328 ((_ is EmptyLang!9521) lt!1051985))))

(declare-fun b!3074139 () Bool)

(assert (=> b!3074139 (= e!1923626 (= (head!6822 Nil!35262) (c!511199 lt!1051985)))))

(declare-fun b!3074140 () Bool)

(assert (=> b!3074140 (= e!1923627 e!1923624)))

(declare-fun res!1261630 () Bool)

(assert (=> b!3074140 (=> (not res!1261630) (not e!1923624))))

(assert (=> b!3074140 (= res!1261630 (not lt!1052051))))

(assert (= (and d!856580 c!511326) b!3074128))

(assert (= (and d!856580 (not c!511326)) b!3074136))

(assert (= (and d!856580 c!511327) b!3074127))

(assert (= (and d!856580 (not c!511327)) b!3074138))

(assert (= (and b!3074138 c!511328) b!3074129))

(assert (= (and b!3074138 (not c!511328)) b!3074134))

(assert (= (and b!3074134 (not res!1261632)) b!3074131))

(assert (= (and b!3074131 res!1261629) b!3074133))

(assert (= (and b!3074133 res!1261628) b!3074135))

(assert (= (and b!3074135 res!1261634) b!3074139))

(assert (= (and b!3074131 (not res!1261631)) b!3074140))

(assert (= (and b!3074140 res!1261630) b!3074130))

(assert (= (and b!3074130 (not res!1261633)) b!3074132))

(assert (= (and b!3074132 (not res!1261627)) b!3074137))

(assert (= (or b!3074127 b!3074130 b!3074133) bm!213706))

(assert (=> b!3074139 m!3386775))

(assert (=> b!3074136 m!3386775))

(assert (=> b!3074136 m!3386775))

(declare-fun m!3386965 () Bool)

(assert (=> b!3074136 m!3386965))

(assert (=> b!3074136 m!3386769))

(assert (=> b!3074136 m!3386965))

(assert (=> b!3074136 m!3386769))

(declare-fun m!3386967 () Bool)

(assert (=> b!3074136 m!3386967))

(declare-fun m!3386969 () Bool)

(assert (=> bm!213706 m!3386969))

(assert (=> b!3074132 m!3386769))

(assert (=> b!3074132 m!3386769))

(declare-fun m!3386971 () Bool)

(assert (=> b!3074132 m!3386971))

(declare-fun m!3386973 () Bool)

(assert (=> b!3074128 m!3386973))

(assert (=> b!3074135 m!3386769))

(assert (=> b!3074135 m!3386769))

(assert (=> b!3074135 m!3386971))

(assert (=> b!3074137 m!3386775))

(assert (=> d!856580 m!3386969))

(declare-fun m!3386975 () Bool)

(assert (=> d!856580 m!3386975))

(assert (=> b!3073606 d!856580))

(declare-fun d!856582 () Bool)

(assert (=> d!856582 (= (matchR!4403 (regTwo!19554 r!17423) Nil!35262) (matchR!4403 (simplify!476 (regTwo!19554 r!17423)) Nil!35262))))

(declare-fun lt!1052054 () Unit!49481)

(declare-fun choose!18212 (Regex!9521 List!35386) Unit!49481)

(assert (=> d!856582 (= lt!1052054 (choose!18212 (regTwo!19554 r!17423) Nil!35262))))

(assert (=> d!856582 (validRegex!4254 (regTwo!19554 r!17423))))

(assert (=> d!856582 (= (lemmaSimplifySound!302 (regTwo!19554 r!17423) Nil!35262) lt!1052054)))

(declare-fun bs!532690 () Bool)

(assert (= bs!532690 d!856582))

(declare-fun m!3386977 () Bool)

(assert (=> bs!532690 m!3386977))

(assert (=> bs!532690 m!3386757))

(assert (=> bs!532690 m!3386755))

(assert (=> bs!532690 m!3386733))

(assert (=> bs!532690 m!3386733))

(declare-fun m!3386979 () Bool)

(assert (=> bs!532690 m!3386979))

(assert (=> b!3073606 d!856582))

(declare-fun d!856584 () Bool)

(assert (=> d!856584 (= (matchR!4403 (regOne!19554 r!17423) s!11993) (matchR!4403 (simplify!476 (regOne!19554 r!17423)) s!11993))))

(declare-fun lt!1052055 () Unit!49481)

(assert (=> d!856584 (= lt!1052055 (choose!18212 (regOne!19554 r!17423) s!11993))))

(assert (=> d!856584 (validRegex!4254 (regOne!19554 r!17423))))

(assert (=> d!856584 (= (lemmaSimplifySound!302 (regOne!19554 r!17423) s!11993) lt!1052055)))

(declare-fun bs!532691 () Bool)

(assert (= bs!532691 d!856584))

(declare-fun m!3386981 () Bool)

(assert (=> bs!532691 m!3386981))

(assert (=> bs!532691 m!3386723))

(assert (=> bs!532691 m!3386747))

(assert (=> bs!532691 m!3386735))

(assert (=> bs!532691 m!3386735))

(declare-fun m!3386983 () Bool)

(assert (=> bs!532691 m!3386983))

(assert (=> b!3073606 d!856584))

(declare-fun b!3074141 () Bool)

(declare-fun e!1923635 () Bool)

(declare-fun lt!1052056 () Bool)

(declare-fun call!213712 () Bool)

(assert (=> b!3074141 (= e!1923635 (= lt!1052056 call!213712))))

(declare-fun b!3074142 () Bool)

(declare-fun e!1923630 () Bool)

(assert (=> b!3074142 (= e!1923630 (nullable!3167 (regOne!19554 r!17423)))))

(declare-fun b!3074143 () Bool)

(declare-fun e!1923629 () Bool)

(assert (=> b!3074143 (= e!1923629 (not lt!1052056))))

(declare-fun b!3074144 () Bool)

(declare-fun e!1923631 () Bool)

(declare-fun e!1923632 () Bool)

(assert (=> b!3074144 (= e!1923631 e!1923632)))

(declare-fun res!1261641 () Bool)

(assert (=> b!3074144 (=> res!1261641 e!1923632)))

(assert (=> b!3074144 (= res!1261641 call!213712)))

(declare-fun bm!213707 () Bool)

(assert (=> bm!213707 (= call!213712 (isEmpty!19587 s!11993))))

(declare-fun b!3074145 () Bool)

(declare-fun res!1261639 () Bool)

(declare-fun e!1923634 () Bool)

(assert (=> b!3074145 (=> res!1261639 e!1923634)))

(declare-fun e!1923633 () Bool)

(assert (=> b!3074145 (= res!1261639 e!1923633)))

(declare-fun res!1261637 () Bool)

(assert (=> b!3074145 (=> (not res!1261637) (not e!1923633))))

(assert (=> b!3074145 (= res!1261637 lt!1052056)))

(declare-fun b!3074146 () Bool)

(declare-fun res!1261635 () Bool)

(assert (=> b!3074146 (=> res!1261635 e!1923632)))

(assert (=> b!3074146 (= res!1261635 (not (isEmpty!19587 (tail!5048 s!11993))))))

(declare-fun b!3074147 () Bool)

(declare-fun res!1261636 () Bool)

(assert (=> b!3074147 (=> (not res!1261636) (not e!1923633))))

(assert (=> b!3074147 (= res!1261636 (not call!213712))))

(declare-fun b!3074148 () Bool)

(declare-fun res!1261640 () Bool)

(assert (=> b!3074148 (=> res!1261640 e!1923634)))

(assert (=> b!3074148 (= res!1261640 (not ((_ is ElementMatch!9521) (regOne!19554 r!17423))))))

(assert (=> b!3074148 (= e!1923629 e!1923634)))

(declare-fun d!856586 () Bool)

(assert (=> d!856586 e!1923635))

(declare-fun c!511330 () Bool)

(assert (=> d!856586 (= c!511330 ((_ is EmptyExpr!9521) (regOne!19554 r!17423)))))

(assert (=> d!856586 (= lt!1052056 e!1923630)))

(declare-fun c!511329 () Bool)

(assert (=> d!856586 (= c!511329 (isEmpty!19587 s!11993))))

(assert (=> d!856586 (validRegex!4254 (regOne!19554 r!17423))))

(assert (=> d!856586 (= (matchR!4403 (regOne!19554 r!17423) s!11993) lt!1052056)))

(declare-fun b!3074149 () Bool)

(declare-fun res!1261642 () Bool)

(assert (=> b!3074149 (=> (not res!1261642) (not e!1923633))))

(assert (=> b!3074149 (= res!1261642 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074150 () Bool)

(assert (=> b!3074150 (= e!1923630 (matchR!4403 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)) (tail!5048 s!11993)))))

(declare-fun b!3074151 () Bool)

(assert (=> b!3074151 (= e!1923632 (not (= (head!6822 s!11993) (c!511199 (regOne!19554 r!17423)))))))

(declare-fun b!3074152 () Bool)

(assert (=> b!3074152 (= e!1923635 e!1923629)))

(declare-fun c!511331 () Bool)

(assert (=> b!3074152 (= c!511331 ((_ is EmptyLang!9521) (regOne!19554 r!17423)))))

(declare-fun b!3074153 () Bool)

(assert (=> b!3074153 (= e!1923633 (= (head!6822 s!11993) (c!511199 (regOne!19554 r!17423))))))

(declare-fun b!3074154 () Bool)

(assert (=> b!3074154 (= e!1923634 e!1923631)))

(declare-fun res!1261638 () Bool)

(assert (=> b!3074154 (=> (not res!1261638) (not e!1923631))))

(assert (=> b!3074154 (= res!1261638 (not lt!1052056))))

(assert (= (and d!856586 c!511329) b!3074142))

(assert (= (and d!856586 (not c!511329)) b!3074150))

(assert (= (and d!856586 c!511330) b!3074141))

(assert (= (and d!856586 (not c!511330)) b!3074152))

(assert (= (and b!3074152 c!511331) b!3074143))

(assert (= (and b!3074152 (not c!511331)) b!3074148))

(assert (= (and b!3074148 (not res!1261640)) b!3074145))

(assert (= (and b!3074145 res!1261637) b!3074147))

(assert (= (and b!3074147 res!1261636) b!3074149))

(assert (= (and b!3074149 res!1261642) b!3074153))

(assert (= (and b!3074145 (not res!1261639)) b!3074154))

(assert (= (and b!3074154 res!1261638) b!3074144))

(assert (= (and b!3074144 (not res!1261641)) b!3074146))

(assert (= (and b!3074146 (not res!1261635)) b!3074151))

(assert (= (or b!3074141 b!3074144 b!3074147) bm!213707))

(assert (=> b!3074153 m!3386777))

(assert (=> b!3074150 m!3386777))

(assert (=> b!3074150 m!3386777))

(declare-fun m!3386985 () Bool)

(assert (=> b!3074150 m!3386985))

(assert (=> b!3074150 m!3386771))

(assert (=> b!3074150 m!3386985))

(assert (=> b!3074150 m!3386771))

(declare-fun m!3386987 () Bool)

(assert (=> b!3074150 m!3386987))

(assert (=> bm!213707 m!3386729))

(assert (=> b!3074146 m!3386771))

(assert (=> b!3074146 m!3386771))

(assert (=> b!3074146 m!3386953))

(declare-fun m!3386989 () Bool)

(assert (=> b!3074142 m!3386989))

(assert (=> b!3074149 m!3386771))

(assert (=> b!3074149 m!3386771))

(assert (=> b!3074149 m!3386953))

(assert (=> b!3074151 m!3386777))

(assert (=> d!856586 m!3386729))

(assert (=> d!856586 m!3386723))

(assert (=> b!3073606 d!856586))

(declare-fun b!3074155 () Bool)

(declare-fun e!1923642 () Bool)

(declare-fun lt!1052057 () Bool)

(declare-fun call!213713 () Bool)

(assert (=> b!3074155 (= e!1923642 (= lt!1052057 call!213713))))

(declare-fun b!3074156 () Bool)

(declare-fun e!1923637 () Bool)

(assert (=> b!3074156 (= e!1923637 (nullable!3167 (regTwo!19554 r!17423)))))

(declare-fun b!3074157 () Bool)

(declare-fun e!1923636 () Bool)

(assert (=> b!3074157 (= e!1923636 (not lt!1052057))))

(declare-fun b!3074158 () Bool)

(declare-fun e!1923638 () Bool)

(declare-fun e!1923639 () Bool)

(assert (=> b!3074158 (= e!1923638 e!1923639)))

(declare-fun res!1261649 () Bool)

(assert (=> b!3074158 (=> res!1261649 e!1923639)))

(assert (=> b!3074158 (= res!1261649 call!213713)))

(declare-fun bm!213708 () Bool)

(assert (=> bm!213708 (= call!213713 (isEmpty!19587 Nil!35262))))

(declare-fun b!3074159 () Bool)

(declare-fun res!1261647 () Bool)

(declare-fun e!1923641 () Bool)

(assert (=> b!3074159 (=> res!1261647 e!1923641)))

(declare-fun e!1923640 () Bool)

(assert (=> b!3074159 (= res!1261647 e!1923640)))

(declare-fun res!1261645 () Bool)

(assert (=> b!3074159 (=> (not res!1261645) (not e!1923640))))

(assert (=> b!3074159 (= res!1261645 lt!1052057)))

(declare-fun b!3074160 () Bool)

(declare-fun res!1261643 () Bool)

(assert (=> b!3074160 (=> res!1261643 e!1923639)))

(assert (=> b!3074160 (= res!1261643 (not (isEmpty!19587 (tail!5048 Nil!35262))))))

(declare-fun b!3074161 () Bool)

(declare-fun res!1261644 () Bool)

(assert (=> b!3074161 (=> (not res!1261644) (not e!1923640))))

(assert (=> b!3074161 (= res!1261644 (not call!213713))))

(declare-fun b!3074162 () Bool)

(declare-fun res!1261648 () Bool)

(assert (=> b!3074162 (=> res!1261648 e!1923641)))

(assert (=> b!3074162 (= res!1261648 (not ((_ is ElementMatch!9521) (regTwo!19554 r!17423))))))

(assert (=> b!3074162 (= e!1923636 e!1923641)))

(declare-fun d!856588 () Bool)

(assert (=> d!856588 e!1923642))

(declare-fun c!511333 () Bool)

(assert (=> d!856588 (= c!511333 ((_ is EmptyExpr!9521) (regTwo!19554 r!17423)))))

(assert (=> d!856588 (= lt!1052057 e!1923637)))

(declare-fun c!511332 () Bool)

(assert (=> d!856588 (= c!511332 (isEmpty!19587 Nil!35262))))

(assert (=> d!856588 (validRegex!4254 (regTwo!19554 r!17423))))

(assert (=> d!856588 (= (matchR!4403 (regTwo!19554 r!17423) Nil!35262) lt!1052057)))

(declare-fun b!3074163 () Bool)

(declare-fun res!1261650 () Bool)

(assert (=> b!3074163 (=> (not res!1261650) (not e!1923640))))

(assert (=> b!3074163 (= res!1261650 (isEmpty!19587 (tail!5048 Nil!35262)))))

(declare-fun b!3074164 () Bool)

(assert (=> b!3074164 (= e!1923637 (matchR!4403 (derivativeStep!2763 (regTwo!19554 r!17423) (head!6822 Nil!35262)) (tail!5048 Nil!35262)))))

(declare-fun b!3074165 () Bool)

(assert (=> b!3074165 (= e!1923639 (not (= (head!6822 Nil!35262) (c!511199 (regTwo!19554 r!17423)))))))

(declare-fun b!3074166 () Bool)

(assert (=> b!3074166 (= e!1923642 e!1923636)))

(declare-fun c!511334 () Bool)

(assert (=> b!3074166 (= c!511334 ((_ is EmptyLang!9521) (regTwo!19554 r!17423)))))

(declare-fun b!3074167 () Bool)

(assert (=> b!3074167 (= e!1923640 (= (head!6822 Nil!35262) (c!511199 (regTwo!19554 r!17423))))))

(declare-fun b!3074168 () Bool)

(assert (=> b!3074168 (= e!1923641 e!1923638)))

(declare-fun res!1261646 () Bool)

(assert (=> b!3074168 (=> (not res!1261646) (not e!1923638))))

(assert (=> b!3074168 (= res!1261646 (not lt!1052057))))

(assert (= (and d!856588 c!511332) b!3074156))

(assert (= (and d!856588 (not c!511332)) b!3074164))

(assert (= (and d!856588 c!511333) b!3074155))

(assert (= (and d!856588 (not c!511333)) b!3074166))

(assert (= (and b!3074166 c!511334) b!3074157))

(assert (= (and b!3074166 (not c!511334)) b!3074162))

(assert (= (and b!3074162 (not res!1261648)) b!3074159))

(assert (= (and b!3074159 res!1261645) b!3074161))

(assert (= (and b!3074161 res!1261644) b!3074163))

(assert (= (and b!3074163 res!1261650) b!3074167))

(assert (= (and b!3074159 (not res!1261647)) b!3074168))

(assert (= (and b!3074168 res!1261646) b!3074158))

(assert (= (and b!3074158 (not res!1261649)) b!3074160))

(assert (= (and b!3074160 (not res!1261643)) b!3074165))

(assert (= (or b!3074155 b!3074158 b!3074161) bm!213708))

(assert (=> b!3074167 m!3386775))

(assert (=> b!3074164 m!3386775))

(assert (=> b!3074164 m!3386775))

(declare-fun m!3386991 () Bool)

(assert (=> b!3074164 m!3386991))

(assert (=> b!3074164 m!3386769))

(assert (=> b!3074164 m!3386991))

(assert (=> b!3074164 m!3386769))

(declare-fun m!3386993 () Bool)

(assert (=> b!3074164 m!3386993))

(assert (=> bm!213708 m!3386969))

(assert (=> b!3074160 m!3386769))

(assert (=> b!3074160 m!3386769))

(assert (=> b!3074160 m!3386971))

(declare-fun m!3386995 () Bool)

(assert (=> b!3074156 m!3386995))

(assert (=> b!3074163 m!3386769))

(assert (=> b!3074163 m!3386769))

(assert (=> b!3074163 m!3386971))

(assert (=> b!3074165 m!3386775))

(assert (=> d!856588 m!3386969))

(assert (=> d!856588 m!3386757))

(assert (=> b!3073606 d!856588))

(declare-fun b!3074169 () Bool)

(declare-fun e!1923649 () Bool)

(declare-fun lt!1052058 () Bool)

(declare-fun call!213714 () Bool)

(assert (=> b!3074169 (= e!1923649 (= lt!1052058 call!213714))))

(declare-fun b!3074170 () Bool)

(declare-fun e!1923644 () Bool)

(assert (=> b!3074170 (= e!1923644 (nullable!3167 lt!1051989))))

(declare-fun b!3074171 () Bool)

(declare-fun e!1923643 () Bool)

(assert (=> b!3074171 (= e!1923643 (not lt!1052058))))

(declare-fun b!3074172 () Bool)

(declare-fun e!1923645 () Bool)

(declare-fun e!1923646 () Bool)

(assert (=> b!3074172 (= e!1923645 e!1923646)))

(declare-fun res!1261657 () Bool)

(assert (=> b!3074172 (=> res!1261657 e!1923646)))

(assert (=> b!3074172 (= res!1261657 call!213714)))

(declare-fun bm!213709 () Bool)

(assert (=> bm!213709 (= call!213714 (isEmpty!19587 s!11993))))

(declare-fun b!3074173 () Bool)

(declare-fun res!1261655 () Bool)

(declare-fun e!1923648 () Bool)

(assert (=> b!3074173 (=> res!1261655 e!1923648)))

(declare-fun e!1923647 () Bool)

(assert (=> b!3074173 (= res!1261655 e!1923647)))

(declare-fun res!1261653 () Bool)

(assert (=> b!3074173 (=> (not res!1261653) (not e!1923647))))

(assert (=> b!3074173 (= res!1261653 lt!1052058)))

(declare-fun b!3074174 () Bool)

(declare-fun res!1261651 () Bool)

(assert (=> b!3074174 (=> res!1261651 e!1923646)))

(assert (=> b!3074174 (= res!1261651 (not (isEmpty!19587 (tail!5048 s!11993))))))

(declare-fun b!3074175 () Bool)

(declare-fun res!1261652 () Bool)

(assert (=> b!3074175 (=> (not res!1261652) (not e!1923647))))

(assert (=> b!3074175 (= res!1261652 (not call!213714))))

(declare-fun b!3074176 () Bool)

(declare-fun res!1261656 () Bool)

(assert (=> b!3074176 (=> res!1261656 e!1923648)))

(assert (=> b!3074176 (= res!1261656 (not ((_ is ElementMatch!9521) lt!1051989)))))

(assert (=> b!3074176 (= e!1923643 e!1923648)))

(declare-fun d!856590 () Bool)

(assert (=> d!856590 e!1923649))

(declare-fun c!511336 () Bool)

(assert (=> d!856590 (= c!511336 ((_ is EmptyExpr!9521) lt!1051989))))

(assert (=> d!856590 (= lt!1052058 e!1923644)))

(declare-fun c!511335 () Bool)

(assert (=> d!856590 (= c!511335 (isEmpty!19587 s!11993))))

(assert (=> d!856590 (validRegex!4254 lt!1051989)))

(assert (=> d!856590 (= (matchR!4403 lt!1051989 s!11993) lt!1052058)))

(declare-fun b!3074177 () Bool)

(declare-fun res!1261658 () Bool)

(assert (=> b!3074177 (=> (not res!1261658) (not e!1923647))))

(assert (=> b!3074177 (= res!1261658 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074178 () Bool)

(assert (=> b!3074178 (= e!1923644 (matchR!4403 (derivativeStep!2763 lt!1051989 (head!6822 s!11993)) (tail!5048 s!11993)))))

(declare-fun b!3074179 () Bool)

(assert (=> b!3074179 (= e!1923646 (not (= (head!6822 s!11993) (c!511199 lt!1051989))))))

(declare-fun b!3074180 () Bool)

(assert (=> b!3074180 (= e!1923649 e!1923643)))

(declare-fun c!511337 () Bool)

(assert (=> b!3074180 (= c!511337 ((_ is EmptyLang!9521) lt!1051989))))

(declare-fun b!3074181 () Bool)

(assert (=> b!3074181 (= e!1923647 (= (head!6822 s!11993) (c!511199 lt!1051989)))))

(declare-fun b!3074182 () Bool)

(assert (=> b!3074182 (= e!1923648 e!1923645)))

(declare-fun res!1261654 () Bool)

(assert (=> b!3074182 (=> (not res!1261654) (not e!1923645))))

(assert (=> b!3074182 (= res!1261654 (not lt!1052058))))

(assert (= (and d!856590 c!511335) b!3074170))

(assert (= (and d!856590 (not c!511335)) b!3074178))

(assert (= (and d!856590 c!511336) b!3074169))

(assert (= (and d!856590 (not c!511336)) b!3074180))

(assert (= (and b!3074180 c!511337) b!3074171))

(assert (= (and b!3074180 (not c!511337)) b!3074176))

(assert (= (and b!3074176 (not res!1261656)) b!3074173))

(assert (= (and b!3074173 res!1261653) b!3074175))

(assert (= (and b!3074175 res!1261652) b!3074177))

(assert (= (and b!3074177 res!1261658) b!3074181))

(assert (= (and b!3074173 (not res!1261655)) b!3074182))

(assert (= (and b!3074182 res!1261654) b!3074172))

(assert (= (and b!3074172 (not res!1261657)) b!3074174))

(assert (= (and b!3074174 (not res!1261651)) b!3074179))

(assert (= (or b!3074169 b!3074172 b!3074175) bm!213709))

(assert (=> b!3074181 m!3386777))

(assert (=> b!3074178 m!3386777))

(assert (=> b!3074178 m!3386777))

(declare-fun m!3386997 () Bool)

(assert (=> b!3074178 m!3386997))

(assert (=> b!3074178 m!3386771))

(assert (=> b!3074178 m!3386997))

(assert (=> b!3074178 m!3386771))

(declare-fun m!3386999 () Bool)

(assert (=> b!3074178 m!3386999))

(assert (=> bm!213709 m!3386729))

(assert (=> b!3074174 m!3386771))

(assert (=> b!3074174 m!3386771))

(assert (=> b!3074174 m!3386953))

(declare-fun m!3387001 () Bool)

(assert (=> b!3074170 m!3387001))

(assert (=> b!3074177 m!3386771))

(assert (=> b!3074177 m!3386771))

(assert (=> b!3074177 m!3386953))

(assert (=> b!3074179 m!3386777))

(assert (=> d!856590 m!3386729))

(declare-fun m!3387003 () Bool)

(assert (=> d!856590 m!3387003))

(assert (=> b!3073606 d!856590))

(declare-fun d!856592 () Bool)

(assert (=> d!856592 (= (isEmptyExpr!578 lt!1051989) ((_ is EmptyExpr!9521) lt!1051989))))

(assert (=> b!3073596 d!856592))

(declare-fun d!856594 () Bool)

(assert (=> d!856594 (= (isEmptyLang!572 lt!1051989) ((_ is EmptyLang!9521) lt!1051989))))

(assert (=> b!3073608 d!856594))

(declare-fun bm!213724 () Bool)

(declare-fun call!213731 () Bool)

(declare-fun c!511360 () Bool)

(declare-fun lt!1052076 () Regex!9521)

(declare-fun lt!1052071 () Regex!9521)

(assert (=> bm!213724 (= call!213731 (isEmptyLang!572 (ite c!511360 lt!1052071 lt!1052076)))))

(declare-fun b!3074233 () Bool)

(declare-fun c!511367 () Bool)

(declare-fun call!213729 () Bool)

(assert (=> b!3074233 (= c!511367 call!213729)))

(declare-fun e!1923690 () Regex!9521)

(declare-fun e!1923689 () Regex!9521)

(assert (=> b!3074233 (= e!1923690 e!1923689)))

(declare-fun b!3074234 () Bool)

(declare-fun e!1923680 () Bool)

(declare-fun call!213732 () Bool)

(assert (=> b!3074234 (= e!1923680 call!213732)))

(declare-fun b!3074235 () Bool)

(declare-fun c!511365 () Bool)

(declare-fun e!1923681 () Bool)

(assert (=> b!3074235 (= c!511365 e!1923681)))

(declare-fun res!1261667 () Bool)

(assert (=> b!3074235 (=> res!1261667 e!1923681)))

(declare-fun call!213733 () Bool)

(assert (=> b!3074235 (= res!1261667 call!213733)))

(declare-fun lt!1052075 () Regex!9521)

(declare-fun call!213734 () Regex!9521)

(assert (=> b!3074235 (= lt!1052075 call!213734)))

(declare-fun e!1923688 () Regex!9521)

(declare-fun e!1923683 () Regex!9521)

(assert (=> b!3074235 (= e!1923688 e!1923683)))

(declare-fun b!3074236 () Bool)

(declare-fun e!1923682 () Regex!9521)

(declare-fun lt!1052072 () Regex!9521)

(assert (=> b!3074236 (= e!1923682 (Concat!14842 lt!1052076 lt!1052072))))

(declare-fun b!3074238 () Bool)

(assert (=> b!3074238 (= e!1923681 call!213729)))

(declare-fun b!3074239 () Bool)

(declare-fun e!1923686 () Regex!9521)

(assert (=> b!3074239 (= e!1923686 (regTwo!19554 r!17423))))

(declare-fun bm!213725 () Bool)

(declare-fun call!213735 () Regex!9521)

(assert (=> bm!213725 (= call!213735 (simplify!476 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun b!3074240 () Bool)

(declare-fun e!1923679 () Regex!9521)

(assert (=> b!3074240 (= e!1923679 lt!1052071)))

(declare-fun c!511363 () Bool)

(declare-fun bm!213726 () Bool)

(assert (=> bm!213726 (= call!213729 (isEmptyExpr!578 (ite c!511363 lt!1052075 lt!1052076)))))

(declare-fun b!3074241 () Bool)

(assert (=> b!3074241 (= e!1923689 e!1923682)))

(declare-fun c!511362 () Bool)

(assert (=> b!3074241 (= c!511362 (isEmptyExpr!578 lt!1052072))))

(declare-fun b!3074242 () Bool)

(declare-fun c!511368 () Bool)

(assert (=> b!3074242 (= c!511368 call!213732)))

(declare-fun e!1923691 () Regex!9521)

(assert (=> b!3074242 (= e!1923691 e!1923679)))

(declare-fun b!3074243 () Bool)

(declare-fun lt!1052074 () Regex!9521)

(assert (=> b!3074243 (= e!1923679 (Union!9521 lt!1052071 lt!1052074))))

(declare-fun bm!213727 () Bool)

(assert (=> bm!213727 (= call!213733 (isEmptyLang!572 (ite c!511363 lt!1052075 (ite c!511360 lt!1052074 lt!1052072))))))

(declare-fun b!3074244 () Bool)

(declare-fun e!1923687 () Regex!9521)

(assert (=> b!3074244 (= e!1923687 e!1923686)))

(declare-fun c!511361 () Bool)

(assert (=> b!3074244 (= c!511361 ((_ is ElementMatch!9521) (regTwo!19554 r!17423)))))

(declare-fun bm!213728 () Bool)

(assert (=> bm!213728 (= call!213734 (simplify!476 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun b!3074245 () Bool)

(assert (=> b!3074245 (= e!1923683 EmptyExpr!9521)))

(declare-fun b!3074246 () Bool)

(assert (=> b!3074246 (= e!1923691 lt!1052074)))

(declare-fun b!3074247 () Bool)

(assert (=> b!3074247 (= e!1923683 (Star!9521 lt!1052075))))

(declare-fun b!3074248 () Bool)

(declare-fun e!1923678 () Regex!9521)

(assert (=> b!3074248 (= e!1923678 e!1923691)))

(assert (=> b!3074248 (= lt!1052071 call!213735)))

(declare-fun call!213730 () Regex!9521)

(assert (=> b!3074248 (= lt!1052074 call!213730)))

(declare-fun c!511370 () Bool)

(assert (=> b!3074248 (= c!511370 call!213731)))

(declare-fun b!3074249 () Bool)

(declare-fun c!511364 () Bool)

(assert (=> b!3074249 (= c!511364 ((_ is EmptyExpr!9521) (regTwo!19554 r!17423)))))

(declare-fun e!1923684 () Regex!9521)

(assert (=> b!3074249 (= e!1923686 e!1923684)))

(declare-fun b!3074250 () Bool)

(assert (=> b!3074250 (= e!1923682 lt!1052076)))

(declare-fun b!3074251 () Bool)

(assert (=> b!3074251 (= e!1923690 EmptyLang!9521)))

(declare-fun b!3074252 () Bool)

(assert (=> b!3074252 (= e!1923684 EmptyExpr!9521)))

(declare-fun b!3074237 () Bool)

(assert (=> b!3074237 (= c!511360 ((_ is Union!9521) (regTwo!19554 r!17423)))))

(assert (=> b!3074237 (= e!1923688 e!1923678)))

(declare-fun d!856596 () Bool)

(declare-fun e!1923685 () Bool)

(assert (=> d!856596 e!1923685))

(declare-fun res!1261665 () Bool)

(assert (=> d!856596 (=> (not res!1261665) (not e!1923685))))

(declare-fun lt!1052073 () Regex!9521)

(assert (=> d!856596 (= res!1261665 (validRegex!4254 lt!1052073))))

(assert (=> d!856596 (= lt!1052073 e!1923687)))

(declare-fun c!511366 () Bool)

(assert (=> d!856596 (= c!511366 ((_ is EmptyLang!9521) (regTwo!19554 r!17423)))))

(assert (=> d!856596 (validRegex!4254 (regTwo!19554 r!17423))))

(assert (=> d!856596 (= (simplify!476 (regTwo!19554 r!17423)) lt!1052073)))

(declare-fun bm!213729 () Bool)

(assert (=> bm!213729 (= call!213730 call!213734)))

(declare-fun b!3074253 () Bool)

(assert (=> b!3074253 (= e!1923687 EmptyLang!9521)))

(declare-fun b!3074254 () Bool)

(assert (=> b!3074254 (= e!1923685 (= (nullable!3167 lt!1052073) (nullable!3167 (regTwo!19554 r!17423))))))

(declare-fun b!3074255 () Bool)

(assert (=> b!3074255 (= e!1923689 lt!1052072)))

(declare-fun bm!213730 () Bool)

(assert (=> bm!213730 (= call!213732 call!213733)))

(declare-fun b!3074256 () Bool)

(assert (=> b!3074256 (= e!1923678 e!1923690)))

(assert (=> b!3074256 (= lt!1052076 call!213730)))

(assert (=> b!3074256 (= lt!1052072 call!213735)))

(declare-fun res!1261666 () Bool)

(assert (=> b!3074256 (= res!1261666 call!213731)))

(assert (=> b!3074256 (=> res!1261666 e!1923680)))

(declare-fun c!511369 () Bool)

(assert (=> b!3074256 (= c!511369 e!1923680)))

(declare-fun b!3074257 () Bool)

(assert (=> b!3074257 (= e!1923684 e!1923688)))

(assert (=> b!3074257 (= c!511363 ((_ is Star!9521) (regTwo!19554 r!17423)))))

(assert (= (and d!856596 c!511366) b!3074253))

(assert (= (and d!856596 (not c!511366)) b!3074244))

(assert (= (and b!3074244 c!511361) b!3074239))

(assert (= (and b!3074244 (not c!511361)) b!3074249))

(assert (= (and b!3074249 c!511364) b!3074252))

(assert (= (and b!3074249 (not c!511364)) b!3074257))

(assert (= (and b!3074257 c!511363) b!3074235))

(assert (= (and b!3074257 (not c!511363)) b!3074237))

(assert (= (and b!3074235 (not res!1261667)) b!3074238))

(assert (= (and b!3074235 c!511365) b!3074245))

(assert (= (and b!3074235 (not c!511365)) b!3074247))

(assert (= (and b!3074237 c!511360) b!3074248))

(assert (= (and b!3074237 (not c!511360)) b!3074256))

(assert (= (and b!3074248 c!511370) b!3074246))

(assert (= (and b!3074248 (not c!511370)) b!3074242))

(assert (= (and b!3074242 c!511368) b!3074240))

(assert (= (and b!3074242 (not c!511368)) b!3074243))

(assert (= (and b!3074256 (not res!1261666)) b!3074234))

(assert (= (and b!3074256 c!511369) b!3074251))

(assert (= (and b!3074256 (not c!511369)) b!3074233))

(assert (= (and b!3074233 c!511367) b!3074255))

(assert (= (and b!3074233 (not c!511367)) b!3074241))

(assert (= (and b!3074241 c!511362) b!3074250))

(assert (= (and b!3074241 (not c!511362)) b!3074236))

(assert (= (or b!3074248 b!3074256) bm!213725))

(assert (= (or b!3074248 b!3074256) bm!213729))

(assert (= (or b!3074248 b!3074256) bm!213724))

(assert (= (or b!3074242 b!3074234) bm!213730))

(assert (= (or b!3074238 b!3074233) bm!213726))

(assert (= (or b!3074235 bm!213729) bm!213728))

(assert (= (or b!3074235 bm!213730) bm!213727))

(assert (= (and d!856596 res!1261665) b!3074254))

(declare-fun m!3387005 () Bool)

(assert (=> d!856596 m!3387005))

(assert (=> d!856596 m!3386757))

(declare-fun m!3387007 () Bool)

(assert (=> b!3074254 m!3387007))

(assert (=> b!3074254 m!3386995))

(declare-fun m!3387009 () Bool)

(assert (=> b!3074241 m!3387009))

(declare-fun m!3387011 () Bool)

(assert (=> bm!213724 m!3387011))

(declare-fun m!3387013 () Bool)

(assert (=> bm!213727 m!3387013))

(declare-fun m!3387015 () Bool)

(assert (=> bm!213726 m!3387015))

(declare-fun m!3387017 () Bool)

(assert (=> bm!213725 m!3387017))

(declare-fun m!3387019 () Bool)

(assert (=> bm!213728 m!3387019))

(assert (=> b!3073608 d!856596))

(declare-fun call!213738 () Bool)

(declare-fun bm!213731 () Bool)

(declare-fun c!511371 () Bool)

(declare-fun lt!1052077 () Regex!9521)

(declare-fun lt!1052082 () Regex!9521)

(assert (=> bm!213731 (= call!213738 (isEmptyLang!572 (ite c!511371 lt!1052077 lt!1052082)))))

(declare-fun b!3074258 () Bool)

(declare-fun c!511378 () Bool)

(declare-fun call!213736 () Bool)

(assert (=> b!3074258 (= c!511378 call!213736)))

(declare-fun e!1923704 () Regex!9521)

(declare-fun e!1923703 () Regex!9521)

(assert (=> b!3074258 (= e!1923704 e!1923703)))

(declare-fun b!3074259 () Bool)

(declare-fun e!1923694 () Bool)

(declare-fun call!213739 () Bool)

(assert (=> b!3074259 (= e!1923694 call!213739)))

(declare-fun b!3074260 () Bool)

(declare-fun c!511376 () Bool)

(declare-fun e!1923695 () Bool)

(assert (=> b!3074260 (= c!511376 e!1923695)))

(declare-fun res!1261670 () Bool)

(assert (=> b!3074260 (=> res!1261670 e!1923695)))

(declare-fun call!213740 () Bool)

(assert (=> b!3074260 (= res!1261670 call!213740)))

(declare-fun lt!1052081 () Regex!9521)

(declare-fun call!213741 () Regex!9521)

(assert (=> b!3074260 (= lt!1052081 call!213741)))

(declare-fun e!1923702 () Regex!9521)

(declare-fun e!1923697 () Regex!9521)

(assert (=> b!3074260 (= e!1923702 e!1923697)))

(declare-fun b!3074261 () Bool)

(declare-fun e!1923696 () Regex!9521)

(declare-fun lt!1052078 () Regex!9521)

(assert (=> b!3074261 (= e!1923696 (Concat!14842 lt!1052082 lt!1052078))))

(declare-fun b!3074263 () Bool)

(assert (=> b!3074263 (= e!1923695 call!213736)))

(declare-fun b!3074264 () Bool)

(declare-fun e!1923700 () Regex!9521)

(assert (=> b!3074264 (= e!1923700 (regOne!19554 r!17423))))

(declare-fun bm!213732 () Bool)

(declare-fun call!213742 () Regex!9521)

(assert (=> bm!213732 (= call!213742 (simplify!476 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun b!3074265 () Bool)

(declare-fun e!1923693 () Regex!9521)

(assert (=> b!3074265 (= e!1923693 lt!1052077)))

(declare-fun c!511374 () Bool)

(declare-fun bm!213733 () Bool)

(assert (=> bm!213733 (= call!213736 (isEmptyExpr!578 (ite c!511374 lt!1052081 lt!1052082)))))

(declare-fun b!3074266 () Bool)

(assert (=> b!3074266 (= e!1923703 e!1923696)))

(declare-fun c!511373 () Bool)

(assert (=> b!3074266 (= c!511373 (isEmptyExpr!578 lt!1052078))))

(declare-fun b!3074267 () Bool)

(declare-fun c!511379 () Bool)

(assert (=> b!3074267 (= c!511379 call!213739)))

(declare-fun e!1923705 () Regex!9521)

(assert (=> b!3074267 (= e!1923705 e!1923693)))

(declare-fun b!3074268 () Bool)

(declare-fun lt!1052080 () Regex!9521)

(assert (=> b!3074268 (= e!1923693 (Union!9521 lt!1052077 lt!1052080))))

(declare-fun bm!213734 () Bool)

(assert (=> bm!213734 (= call!213740 (isEmptyLang!572 (ite c!511374 lt!1052081 (ite c!511371 lt!1052080 lt!1052078))))))

(declare-fun b!3074269 () Bool)

(declare-fun e!1923701 () Regex!9521)

(assert (=> b!3074269 (= e!1923701 e!1923700)))

(declare-fun c!511372 () Bool)

(assert (=> b!3074269 (= c!511372 ((_ is ElementMatch!9521) (regOne!19554 r!17423)))))

(declare-fun bm!213735 () Bool)

(assert (=> bm!213735 (= call!213741 (simplify!476 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun b!3074270 () Bool)

(assert (=> b!3074270 (= e!1923697 EmptyExpr!9521)))

(declare-fun b!3074271 () Bool)

(assert (=> b!3074271 (= e!1923705 lt!1052080)))

(declare-fun b!3074272 () Bool)

(assert (=> b!3074272 (= e!1923697 (Star!9521 lt!1052081))))

(declare-fun b!3074273 () Bool)

(declare-fun e!1923692 () Regex!9521)

(assert (=> b!3074273 (= e!1923692 e!1923705)))

(assert (=> b!3074273 (= lt!1052077 call!213742)))

(declare-fun call!213737 () Regex!9521)

(assert (=> b!3074273 (= lt!1052080 call!213737)))

(declare-fun c!511381 () Bool)

(assert (=> b!3074273 (= c!511381 call!213738)))

(declare-fun b!3074274 () Bool)

(declare-fun c!511375 () Bool)

(assert (=> b!3074274 (= c!511375 ((_ is EmptyExpr!9521) (regOne!19554 r!17423)))))

(declare-fun e!1923698 () Regex!9521)

(assert (=> b!3074274 (= e!1923700 e!1923698)))

(declare-fun b!3074275 () Bool)

(assert (=> b!3074275 (= e!1923696 lt!1052082)))

(declare-fun b!3074276 () Bool)

(assert (=> b!3074276 (= e!1923704 EmptyLang!9521)))

(declare-fun b!3074277 () Bool)

(assert (=> b!3074277 (= e!1923698 EmptyExpr!9521)))

(declare-fun b!3074262 () Bool)

(assert (=> b!3074262 (= c!511371 ((_ is Union!9521) (regOne!19554 r!17423)))))

(assert (=> b!3074262 (= e!1923702 e!1923692)))

(declare-fun d!856598 () Bool)

(declare-fun e!1923699 () Bool)

(assert (=> d!856598 e!1923699))

(declare-fun res!1261668 () Bool)

(assert (=> d!856598 (=> (not res!1261668) (not e!1923699))))

(declare-fun lt!1052079 () Regex!9521)

(assert (=> d!856598 (= res!1261668 (validRegex!4254 lt!1052079))))

(assert (=> d!856598 (= lt!1052079 e!1923701)))

(declare-fun c!511377 () Bool)

(assert (=> d!856598 (= c!511377 ((_ is EmptyLang!9521) (regOne!19554 r!17423)))))

(assert (=> d!856598 (validRegex!4254 (regOne!19554 r!17423))))

(assert (=> d!856598 (= (simplify!476 (regOne!19554 r!17423)) lt!1052079)))

(declare-fun bm!213736 () Bool)

(assert (=> bm!213736 (= call!213737 call!213741)))

(declare-fun b!3074278 () Bool)

(assert (=> b!3074278 (= e!1923701 EmptyLang!9521)))

(declare-fun b!3074279 () Bool)

(assert (=> b!3074279 (= e!1923699 (= (nullable!3167 lt!1052079) (nullable!3167 (regOne!19554 r!17423))))))

(declare-fun b!3074280 () Bool)

(assert (=> b!3074280 (= e!1923703 lt!1052078)))

(declare-fun bm!213737 () Bool)

(assert (=> bm!213737 (= call!213739 call!213740)))

(declare-fun b!3074281 () Bool)

(assert (=> b!3074281 (= e!1923692 e!1923704)))

(assert (=> b!3074281 (= lt!1052082 call!213737)))

(assert (=> b!3074281 (= lt!1052078 call!213742)))

(declare-fun res!1261669 () Bool)

(assert (=> b!3074281 (= res!1261669 call!213738)))

(assert (=> b!3074281 (=> res!1261669 e!1923694)))

(declare-fun c!511380 () Bool)

(assert (=> b!3074281 (= c!511380 e!1923694)))

(declare-fun b!3074282 () Bool)

(assert (=> b!3074282 (= e!1923698 e!1923702)))

(assert (=> b!3074282 (= c!511374 ((_ is Star!9521) (regOne!19554 r!17423)))))

(assert (= (and d!856598 c!511377) b!3074278))

(assert (= (and d!856598 (not c!511377)) b!3074269))

(assert (= (and b!3074269 c!511372) b!3074264))

(assert (= (and b!3074269 (not c!511372)) b!3074274))

(assert (= (and b!3074274 c!511375) b!3074277))

(assert (= (and b!3074274 (not c!511375)) b!3074282))

(assert (= (and b!3074282 c!511374) b!3074260))

(assert (= (and b!3074282 (not c!511374)) b!3074262))

(assert (= (and b!3074260 (not res!1261670)) b!3074263))

(assert (= (and b!3074260 c!511376) b!3074270))

(assert (= (and b!3074260 (not c!511376)) b!3074272))

(assert (= (and b!3074262 c!511371) b!3074273))

(assert (= (and b!3074262 (not c!511371)) b!3074281))

(assert (= (and b!3074273 c!511381) b!3074271))

(assert (= (and b!3074273 (not c!511381)) b!3074267))

(assert (= (and b!3074267 c!511379) b!3074265))

(assert (= (and b!3074267 (not c!511379)) b!3074268))

(assert (= (and b!3074281 (not res!1261669)) b!3074259))

(assert (= (and b!3074281 c!511380) b!3074276))

(assert (= (and b!3074281 (not c!511380)) b!3074258))

(assert (= (and b!3074258 c!511378) b!3074280))

(assert (= (and b!3074258 (not c!511378)) b!3074266))

(assert (= (and b!3074266 c!511373) b!3074275))

(assert (= (and b!3074266 (not c!511373)) b!3074261))

(assert (= (or b!3074273 b!3074281) bm!213732))

(assert (= (or b!3074273 b!3074281) bm!213736))

(assert (= (or b!3074273 b!3074281) bm!213731))

(assert (= (or b!3074267 b!3074259) bm!213737))

(assert (= (or b!3074263 b!3074258) bm!213733))

(assert (= (or b!3074260 bm!213736) bm!213735))

(assert (= (or b!3074260 bm!213737) bm!213734))

(assert (= (and d!856598 res!1261668) b!3074279))

(declare-fun m!3387021 () Bool)

(assert (=> d!856598 m!3387021))

(assert (=> d!856598 m!3386723))

(declare-fun m!3387023 () Bool)

(assert (=> b!3074279 m!3387023))

(assert (=> b!3074279 m!3386989))

(declare-fun m!3387025 () Bool)

(assert (=> b!3074266 m!3387025))

(declare-fun m!3387027 () Bool)

(assert (=> bm!213731 m!3387027))

(declare-fun m!3387029 () Bool)

(assert (=> bm!213734 m!3387029))

(declare-fun m!3387031 () Bool)

(assert (=> bm!213733 m!3387031))

(declare-fun m!3387033 () Bool)

(assert (=> bm!213732 m!3387033))

(declare-fun m!3387035 () Bool)

(assert (=> bm!213735 m!3387035))

(assert (=> b!3073608 d!856598))

(declare-fun d!856600 () Bool)

(assert (=> d!856600 (= (isEmptyLang!572 lt!1051985) ((_ is EmptyLang!9521) lt!1051985))))

(assert (=> b!3073609 d!856600))

(declare-fun d!856602 () Bool)

(assert (=> d!856602 (= (isEmpty!19587 s!11993) ((_ is Nil!35262) s!11993))))

(assert (=> b!3073598 d!856602))

(declare-fun b!3074287 () Bool)

(declare-fun e!1923708 () Bool)

(declare-fun tp!969274 () Bool)

(assert (=> b!3074287 (= e!1923708 (and tp_is_empty!16605 tp!969274))))

(assert (=> b!3073600 (= tp!969229 e!1923708)))

(assert (= (and b!3073600 ((_ is Cons!35262) (t!234451 s!11993))) b!3074287))

(declare-fun e!1923711 () Bool)

(assert (=> b!3073607 (= tp!969232 e!1923711)))

(declare-fun b!3074301 () Bool)

(declare-fun tp!969285 () Bool)

(declare-fun tp!969287 () Bool)

(assert (=> b!3074301 (= e!1923711 (and tp!969285 tp!969287))))

(declare-fun b!3074300 () Bool)

(declare-fun tp!969286 () Bool)

(assert (=> b!3074300 (= e!1923711 tp!969286)))

(declare-fun b!3074298 () Bool)

(assert (=> b!3074298 (= e!1923711 tp_is_empty!16605)))

(declare-fun b!3074299 () Bool)

(declare-fun tp!969288 () Bool)

(declare-fun tp!969289 () Bool)

(assert (=> b!3074299 (= e!1923711 (and tp!969288 tp!969289))))

(assert (= (and b!3073607 ((_ is ElementMatch!9521) (reg!9850 r!17423))) b!3074298))

(assert (= (and b!3073607 ((_ is Concat!14842) (reg!9850 r!17423))) b!3074299))

(assert (= (and b!3073607 ((_ is Star!9521) (reg!9850 r!17423))) b!3074300))

(assert (= (and b!3073607 ((_ is Union!9521) (reg!9850 r!17423))) b!3074301))

(declare-fun e!1923712 () Bool)

(assert (=> b!3073597 (= tp!969233 e!1923712)))

(declare-fun b!3074305 () Bool)

(declare-fun tp!969290 () Bool)

(declare-fun tp!969292 () Bool)

(assert (=> b!3074305 (= e!1923712 (and tp!969290 tp!969292))))

(declare-fun b!3074304 () Bool)

(declare-fun tp!969291 () Bool)

(assert (=> b!3074304 (= e!1923712 tp!969291)))

(declare-fun b!3074302 () Bool)

(assert (=> b!3074302 (= e!1923712 tp_is_empty!16605)))

(declare-fun b!3074303 () Bool)

(declare-fun tp!969293 () Bool)

(declare-fun tp!969294 () Bool)

(assert (=> b!3074303 (= e!1923712 (and tp!969293 tp!969294))))

(assert (= (and b!3073597 ((_ is ElementMatch!9521) (regOne!19555 r!17423))) b!3074302))

(assert (= (and b!3073597 ((_ is Concat!14842) (regOne!19555 r!17423))) b!3074303))

(assert (= (and b!3073597 ((_ is Star!9521) (regOne!19555 r!17423))) b!3074304))

(assert (= (and b!3073597 ((_ is Union!9521) (regOne!19555 r!17423))) b!3074305))

(declare-fun e!1923713 () Bool)

(assert (=> b!3073597 (= tp!969230 e!1923713)))

(declare-fun b!3074309 () Bool)

(declare-fun tp!969295 () Bool)

(declare-fun tp!969297 () Bool)

(assert (=> b!3074309 (= e!1923713 (and tp!969295 tp!969297))))

(declare-fun b!3074308 () Bool)

(declare-fun tp!969296 () Bool)

(assert (=> b!3074308 (= e!1923713 tp!969296)))

(declare-fun b!3074306 () Bool)

(assert (=> b!3074306 (= e!1923713 tp_is_empty!16605)))

(declare-fun b!3074307 () Bool)

(declare-fun tp!969298 () Bool)

(declare-fun tp!969299 () Bool)

(assert (=> b!3074307 (= e!1923713 (and tp!969298 tp!969299))))

(assert (= (and b!3073597 ((_ is ElementMatch!9521) (regTwo!19555 r!17423))) b!3074306))

(assert (= (and b!3073597 ((_ is Concat!14842) (regTwo!19555 r!17423))) b!3074307))

(assert (= (and b!3073597 ((_ is Star!9521) (regTwo!19555 r!17423))) b!3074308))

(assert (= (and b!3073597 ((_ is Union!9521) (regTwo!19555 r!17423))) b!3074309))

(declare-fun e!1923714 () Bool)

(assert (=> b!3073603 (= tp!969228 e!1923714)))

(declare-fun b!3074313 () Bool)

(declare-fun tp!969300 () Bool)

(declare-fun tp!969302 () Bool)

(assert (=> b!3074313 (= e!1923714 (and tp!969300 tp!969302))))

(declare-fun b!3074312 () Bool)

(declare-fun tp!969301 () Bool)

(assert (=> b!3074312 (= e!1923714 tp!969301)))

(declare-fun b!3074310 () Bool)

(assert (=> b!3074310 (= e!1923714 tp_is_empty!16605)))

(declare-fun b!3074311 () Bool)

(declare-fun tp!969303 () Bool)

(declare-fun tp!969304 () Bool)

(assert (=> b!3074311 (= e!1923714 (and tp!969303 tp!969304))))

(assert (= (and b!3073603 ((_ is ElementMatch!9521) (regOne!19554 r!17423))) b!3074310))

(assert (= (and b!3073603 ((_ is Concat!14842) (regOne!19554 r!17423))) b!3074311))

(assert (= (and b!3073603 ((_ is Star!9521) (regOne!19554 r!17423))) b!3074312))

(assert (= (and b!3073603 ((_ is Union!9521) (regOne!19554 r!17423))) b!3074313))

(declare-fun e!1923715 () Bool)

(assert (=> b!3073603 (= tp!969231 e!1923715)))

(declare-fun b!3074317 () Bool)

(declare-fun tp!969305 () Bool)

(declare-fun tp!969307 () Bool)

(assert (=> b!3074317 (= e!1923715 (and tp!969305 tp!969307))))

(declare-fun b!3074316 () Bool)

(declare-fun tp!969306 () Bool)

(assert (=> b!3074316 (= e!1923715 tp!969306)))

(declare-fun b!3074314 () Bool)

(assert (=> b!3074314 (= e!1923715 tp_is_empty!16605)))

(declare-fun b!3074315 () Bool)

(declare-fun tp!969308 () Bool)

(declare-fun tp!969309 () Bool)

(assert (=> b!3074315 (= e!1923715 (and tp!969308 tp!969309))))

(assert (= (and b!3073603 ((_ is ElementMatch!9521) (regTwo!19554 r!17423))) b!3074314))

(assert (= (and b!3073603 ((_ is Concat!14842) (regTwo!19554 r!17423))) b!3074315))

(assert (= (and b!3073603 ((_ is Star!9521) (regTwo!19554 r!17423))) b!3074316))

(assert (= (and b!3073603 ((_ is Union!9521) (regTwo!19554 r!17423))) b!3074317))

(check-sat (not d!856574) (not b!3074136) (not bm!213699) (not b!3074287) (not b!3074181) (not b!3074071) (not b!3074179) (not b!3074254) (not d!856584) (not d!856582) (not d!856596) (not b!3074305) (not b!3074315) (not b!3074142) (not bm!213705) (not b!3074241) (not bm!213636) (not b!3074146) (not bm!213702) (not b!3073667) (not b!3074121) (not b!3074151) (not b!3074311) (not b!3073683) (not b!3074139) (not b!3074313) (not b!3074112) (not b!3073682) tp_is_empty!16605 (not bm!213724) (not bm!213733) (not b!3074177) (not b!3074167) (not b!3074308) (not b!3074279) (not bm!213728) (not bm!213731) (not bm!213735) (not b!3074170) (not b!3074132) (not bm!213726) (not b!3074301) (not b!3074105) (not b!3074163) (not b!3074174) (not b!3074160) (not b!3074309) (not b!3074300) (not b!3074316) (not bm!213633) (not bm!213637) (not b!3074164) (not b!3074317) (not bm!213706) (not b!3074307) (not b!3074299) (not b!3074303) (not bm!213727) (not bm!213707) (not b!3074150) (not b!3074116) (not b!3073623) (not b!3074137) (not b!3073621) (not b!3074113) (not b!3074149) (not b!3074266) (not b!3074114) (not bm!213734) (not bm!213709) (not b!3074178) (not d!856580) (not bm!213732) (not b!3074153) (not b!3074165) (not bm!213634) (not b!3074156) (not b!3074128) (not b!3073688) (not d!856526) (not d!856588) (not bm!213725) (not bm!213704) (not bm!213708) (not b!3073622) (not b!3073695) (not b!3074065) (not b!3074304) (not b!3073696) (not d!856586) (not bm!213698) (not d!856532) (not b!3074109) (not d!856590) (not d!856598) (not b!3074135) (not d!856576) (not b!3074312))
(check-sat)
(get-model)

(declare-fun d!856604 () Bool)

(assert (=> d!856604 (= (head!6822 s!11993) (h!40682 s!11993))))

(assert (=> b!3074151 d!856604))

(declare-fun lt!1052083 () Regex!9521)

(declare-fun c!511382 () Bool)

(declare-fun call!213745 () Bool)

(declare-fun bm!213738 () Bool)

(declare-fun lt!1052088 () Regex!9521)

(assert (=> bm!213738 (= call!213745 (isEmptyLang!572 (ite c!511382 lt!1052083 lt!1052088)))))

(declare-fun b!3074318 () Bool)

(declare-fun c!511389 () Bool)

(declare-fun call!213743 () Bool)

(assert (=> b!3074318 (= c!511389 call!213743)))

(declare-fun e!1923728 () Regex!9521)

(declare-fun e!1923727 () Regex!9521)

(assert (=> b!3074318 (= e!1923728 e!1923727)))

(declare-fun b!3074319 () Bool)

(declare-fun e!1923718 () Bool)

(declare-fun call!213746 () Bool)

(assert (=> b!3074319 (= e!1923718 call!213746)))

(declare-fun b!3074320 () Bool)

(declare-fun c!511387 () Bool)

(declare-fun e!1923719 () Bool)

(assert (=> b!3074320 (= c!511387 e!1923719)))

(declare-fun res!1261673 () Bool)

(assert (=> b!3074320 (=> res!1261673 e!1923719)))

(declare-fun call!213747 () Bool)

(assert (=> b!3074320 (= res!1261673 call!213747)))

(declare-fun lt!1052087 () Regex!9521)

(declare-fun call!213748 () Regex!9521)

(assert (=> b!3074320 (= lt!1052087 call!213748)))

(declare-fun e!1923726 () Regex!9521)

(declare-fun e!1923721 () Regex!9521)

(assert (=> b!3074320 (= e!1923726 e!1923721)))

(declare-fun b!3074321 () Bool)

(declare-fun e!1923720 () Regex!9521)

(declare-fun lt!1052084 () Regex!9521)

(assert (=> b!3074321 (= e!1923720 (Concat!14842 lt!1052088 lt!1052084))))

(declare-fun b!3074323 () Bool)

(assert (=> b!3074323 (= e!1923719 call!213743)))

(declare-fun e!1923724 () Regex!9521)

(declare-fun b!3074324 () Bool)

(assert (=> b!3074324 (= e!1923724 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))

(declare-fun call!213749 () Regex!9521)

(declare-fun bm!213739 () Bool)

(assert (=> bm!213739 (= call!213749 (simplify!476 (ite c!511382 (regOne!19555 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (regTwo!19554 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))))

(declare-fun b!3074325 () Bool)

(declare-fun e!1923717 () Regex!9521)

(assert (=> b!3074325 (= e!1923717 lt!1052083)))

(declare-fun bm!213740 () Bool)

(declare-fun c!511385 () Bool)

(assert (=> bm!213740 (= call!213743 (isEmptyExpr!578 (ite c!511385 lt!1052087 lt!1052088)))))

(declare-fun b!3074326 () Bool)

(assert (=> b!3074326 (= e!1923727 e!1923720)))

(declare-fun c!511384 () Bool)

(assert (=> b!3074326 (= c!511384 (isEmptyExpr!578 lt!1052084))))

(declare-fun b!3074327 () Bool)

(declare-fun c!511390 () Bool)

(assert (=> b!3074327 (= c!511390 call!213746)))

(declare-fun e!1923729 () Regex!9521)

(assert (=> b!3074327 (= e!1923729 e!1923717)))

(declare-fun b!3074328 () Bool)

(declare-fun lt!1052086 () Regex!9521)

(assert (=> b!3074328 (= e!1923717 (Union!9521 lt!1052083 lt!1052086))))

(declare-fun bm!213741 () Bool)

(assert (=> bm!213741 (= call!213747 (isEmptyLang!572 (ite c!511385 lt!1052087 (ite c!511382 lt!1052086 lt!1052084))))))

(declare-fun b!3074329 () Bool)

(declare-fun e!1923725 () Regex!9521)

(assert (=> b!3074329 (= e!1923725 e!1923724)))

(declare-fun c!511383 () Bool)

(assert (=> b!3074329 (= c!511383 ((_ is ElementMatch!9521) (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun bm!213742 () Bool)

(assert (=> bm!213742 (= call!213748 (simplify!476 (ite c!511385 (reg!9850 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (ite c!511382 (regTwo!19555 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (regOne!19554 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))))))

(declare-fun b!3074330 () Bool)

(assert (=> b!3074330 (= e!1923721 EmptyExpr!9521)))

(declare-fun b!3074331 () Bool)

(assert (=> b!3074331 (= e!1923729 lt!1052086)))

(declare-fun b!3074332 () Bool)

(assert (=> b!3074332 (= e!1923721 (Star!9521 lt!1052087))))

(declare-fun b!3074333 () Bool)

(declare-fun e!1923716 () Regex!9521)

(assert (=> b!3074333 (= e!1923716 e!1923729)))

(assert (=> b!3074333 (= lt!1052083 call!213749)))

(declare-fun call!213744 () Regex!9521)

(assert (=> b!3074333 (= lt!1052086 call!213744)))

(declare-fun c!511392 () Bool)

(assert (=> b!3074333 (= c!511392 call!213745)))

(declare-fun c!511386 () Bool)

(declare-fun b!3074334 () Bool)

(assert (=> b!3074334 (= c!511386 ((_ is EmptyExpr!9521) (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun e!1923722 () Regex!9521)

(assert (=> b!3074334 (= e!1923724 e!1923722)))

(declare-fun b!3074335 () Bool)

(assert (=> b!3074335 (= e!1923720 lt!1052088)))

(declare-fun b!3074336 () Bool)

(assert (=> b!3074336 (= e!1923728 EmptyLang!9521)))

(declare-fun b!3074337 () Bool)

(assert (=> b!3074337 (= e!1923722 EmptyExpr!9521)))

(declare-fun b!3074322 () Bool)

(assert (=> b!3074322 (= c!511382 ((_ is Union!9521) (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(assert (=> b!3074322 (= e!1923726 e!1923716)))

(declare-fun d!856606 () Bool)

(declare-fun e!1923723 () Bool)

(assert (=> d!856606 e!1923723))

(declare-fun res!1261671 () Bool)

(assert (=> d!856606 (=> (not res!1261671) (not e!1923723))))

(declare-fun lt!1052085 () Regex!9521)

(assert (=> d!856606 (= res!1261671 (validRegex!4254 lt!1052085))))

(assert (=> d!856606 (= lt!1052085 e!1923725)))

(declare-fun c!511388 () Bool)

(assert (=> d!856606 (= c!511388 ((_ is EmptyLang!9521) (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(assert (=> d!856606 (validRegex!4254 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))

(assert (=> d!856606 (= (simplify!476 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) lt!1052085)))

(declare-fun bm!213743 () Bool)

(assert (=> bm!213743 (= call!213744 call!213748)))

(declare-fun b!3074338 () Bool)

(assert (=> b!3074338 (= e!1923725 EmptyLang!9521)))

(declare-fun b!3074339 () Bool)

(assert (=> b!3074339 (= e!1923723 (= (nullable!3167 lt!1052085) (nullable!3167 (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))))

(declare-fun b!3074340 () Bool)

(assert (=> b!3074340 (= e!1923727 lt!1052084)))

(declare-fun bm!213744 () Bool)

(assert (=> bm!213744 (= call!213746 call!213747)))

(declare-fun b!3074341 () Bool)

(assert (=> b!3074341 (= e!1923716 e!1923728)))

(assert (=> b!3074341 (= lt!1052088 call!213744)))

(assert (=> b!3074341 (= lt!1052084 call!213749)))

(declare-fun res!1261672 () Bool)

(assert (=> b!3074341 (= res!1261672 call!213745)))

(assert (=> b!3074341 (=> res!1261672 e!1923718)))

(declare-fun c!511391 () Bool)

(assert (=> b!3074341 (= c!511391 e!1923718)))

(declare-fun b!3074342 () Bool)

(assert (=> b!3074342 (= e!1923722 e!1923726)))

(assert (=> b!3074342 (= c!511385 ((_ is Star!9521) (ite c!511374 (reg!9850 (regOne!19554 r!17423)) (ite c!511371 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(assert (= (and d!856606 c!511388) b!3074338))

(assert (= (and d!856606 (not c!511388)) b!3074329))

(assert (= (and b!3074329 c!511383) b!3074324))

(assert (= (and b!3074329 (not c!511383)) b!3074334))

(assert (= (and b!3074334 c!511386) b!3074337))

(assert (= (and b!3074334 (not c!511386)) b!3074342))

(assert (= (and b!3074342 c!511385) b!3074320))

(assert (= (and b!3074342 (not c!511385)) b!3074322))

(assert (= (and b!3074320 (not res!1261673)) b!3074323))

(assert (= (and b!3074320 c!511387) b!3074330))

(assert (= (and b!3074320 (not c!511387)) b!3074332))

(assert (= (and b!3074322 c!511382) b!3074333))

(assert (= (and b!3074322 (not c!511382)) b!3074341))

(assert (= (and b!3074333 c!511392) b!3074331))

(assert (= (and b!3074333 (not c!511392)) b!3074327))

(assert (= (and b!3074327 c!511390) b!3074325))

(assert (= (and b!3074327 (not c!511390)) b!3074328))

(assert (= (and b!3074341 (not res!1261672)) b!3074319))

(assert (= (and b!3074341 c!511391) b!3074336))

(assert (= (and b!3074341 (not c!511391)) b!3074318))

(assert (= (and b!3074318 c!511389) b!3074340))

(assert (= (and b!3074318 (not c!511389)) b!3074326))

(assert (= (and b!3074326 c!511384) b!3074335))

(assert (= (and b!3074326 (not c!511384)) b!3074321))

(assert (= (or b!3074333 b!3074341) bm!213739))

(assert (= (or b!3074333 b!3074341) bm!213743))

(assert (= (or b!3074333 b!3074341) bm!213738))

(assert (= (or b!3074327 b!3074319) bm!213744))

(assert (= (or b!3074323 b!3074318) bm!213740))

(assert (= (or b!3074320 bm!213743) bm!213742))

(assert (= (or b!3074320 bm!213744) bm!213741))

(assert (= (and d!856606 res!1261671) b!3074339))

(declare-fun m!3387037 () Bool)

(assert (=> d!856606 m!3387037))

(declare-fun m!3387039 () Bool)

(assert (=> d!856606 m!3387039))

(declare-fun m!3387041 () Bool)

(assert (=> b!3074339 m!3387041))

(declare-fun m!3387043 () Bool)

(assert (=> b!3074339 m!3387043))

(declare-fun m!3387045 () Bool)

(assert (=> b!3074326 m!3387045))

(declare-fun m!3387047 () Bool)

(assert (=> bm!213738 m!3387047))

(declare-fun m!3387049 () Bool)

(assert (=> bm!213741 m!3387049))

(declare-fun m!3387051 () Bool)

(assert (=> bm!213740 m!3387051))

(declare-fun m!3387053 () Bool)

(assert (=> bm!213739 m!3387053))

(declare-fun m!3387055 () Bool)

(assert (=> bm!213742 m!3387055))

(assert (=> bm!213735 d!856606))

(declare-fun d!856608 () Bool)

(assert (not d!856608))

(assert (=> b!3074163 d!856608))

(declare-fun d!856610 () Bool)

(assert (not d!856610))

(assert (=> b!3074163 d!856610))

(declare-fun d!856612 () Bool)

(assert (=> d!856612 (= (isEmptyLang!572 (ite c!511360 lt!1052071 lt!1052076)) ((_ is EmptyLang!9521) (ite c!511360 lt!1052071 lt!1052076)))))

(assert (=> bm!213724 d!856612))

(declare-fun d!856614 () Bool)

(assert (=> d!856614 (= (isEmpty!19587 (tail!5048 s!11993)) ((_ is Nil!35262) (tail!5048 s!11993)))))

(assert (=> b!3074109 d!856614))

(declare-fun d!856616 () Bool)

(assert (=> d!856616 (= (tail!5048 s!11993) (t!234451 s!11993))))

(assert (=> b!3074109 d!856616))

(assert (=> b!3074149 d!856614))

(assert (=> b!3074149 d!856616))

(declare-fun d!856618 () Bool)

(assert (=> d!856618 (= (isEmptyLang!572 (ite c!511374 lt!1052081 (ite c!511371 lt!1052080 lt!1052078))) ((_ is EmptyLang!9521) (ite c!511374 lt!1052081 (ite c!511371 lt!1052080 lt!1052078))))))

(assert (=> bm!213734 d!856618))

(declare-fun d!856620 () Bool)

(assert (not d!856620))

(assert (=> b!3073621 d!856620))

(assert (=> b!3073621 d!856604))

(assert (=> bm!213702 d!856602))

(assert (=> b!3074174 d!856614))

(assert (=> b!3074174 d!856616))

(declare-fun d!856622 () Bool)

(declare-fun c!511395 () Bool)

(assert (=> d!856622 (= c!511395 ((_ is Nil!35262) lt!1051998))))

(declare-fun e!1923732 () (InoxSet C!19228))

(assert (=> d!856622 (= (content!4812 lt!1051998) e!1923732)))

(declare-fun b!3074347 () Bool)

(assert (=> b!3074347 (= e!1923732 ((as const (Array C!19228 Bool)) false))))

(declare-fun b!3074348 () Bool)

(assert (=> b!3074348 (= e!1923732 ((_ map or) (store ((as const (Array C!19228 Bool)) false) (h!40682 lt!1051998) true) (content!4812 (t!234451 lt!1051998))))))

(assert (= (and d!856622 c!511395) b!3074347))

(assert (= (and d!856622 (not c!511395)) b!3074348))

(declare-fun m!3387057 () Bool)

(assert (=> b!3074348 m!3387057))

(declare-fun m!3387059 () Bool)

(assert (=> b!3074348 m!3387059))

(assert (=> d!856526 d!856622))

(declare-fun d!856624 () Bool)

(declare-fun c!511396 () Bool)

(assert (=> d!856624 (= c!511396 ((_ is Nil!35262) s!11993))))

(declare-fun e!1923733 () (InoxSet C!19228))

(assert (=> d!856624 (= (content!4812 s!11993) e!1923733)))

(declare-fun b!3074349 () Bool)

(assert (=> b!3074349 (= e!1923733 ((as const (Array C!19228 Bool)) false))))

(declare-fun b!3074350 () Bool)

(assert (=> b!3074350 (= e!1923733 ((_ map or) (store ((as const (Array C!19228 Bool)) false) (h!40682 s!11993) true) (content!4812 (t!234451 s!11993))))))

(assert (= (and d!856624 c!511396) b!3074349))

(assert (= (and d!856624 (not c!511396)) b!3074350))

(declare-fun m!3387061 () Bool)

(assert (=> b!3074350 m!3387061))

(declare-fun m!3387063 () Bool)

(assert (=> b!3074350 m!3387063))

(assert (=> d!856526 d!856624))

(declare-fun d!856626 () Bool)

(assert (=> d!856626 (= (content!4812 Nil!35262) ((as const (Array C!19228 Bool)) false))))

(assert (=> d!856526 d!856626))

(declare-fun d!856628 () Bool)

(declare-fun lt!1052091 () Int)

(assert (=> d!856628 (>= lt!1052091 0)))

(declare-fun e!1923736 () Int)

(assert (=> d!856628 (= lt!1052091 e!1923736)))

(declare-fun c!511399 () Bool)

(assert (=> d!856628 (= c!511399 ((_ is Nil!35262) s!11993))))

(assert (=> d!856628 (= (size!26567 s!11993) lt!1052091)))

(declare-fun b!3074355 () Bool)

(assert (=> b!3074355 (= e!1923736 0)))

(declare-fun b!3074356 () Bool)

(assert (=> b!3074356 (= e!1923736 (+ 1 (size!26567 (t!234451 s!11993))))))

(assert (= (and d!856628 c!511399) b!3074355))

(assert (= (and d!856628 (not c!511399)) b!3074356))

(declare-fun m!3387065 () Bool)

(assert (=> b!3074356 m!3387065))

(assert (=> b!3073623 d!856628))

(declare-fun d!856630 () Bool)

(declare-fun lt!1052092 () Int)

(assert (=> d!856630 (>= lt!1052092 0)))

(declare-fun e!1923737 () Int)

(assert (=> d!856630 (= lt!1052092 e!1923737)))

(declare-fun c!511400 () Bool)

(assert (=> d!856630 (= c!511400 ((_ is Nil!35262) Nil!35262))))

(assert (=> d!856630 (= (size!26567 Nil!35262) lt!1052092)))

(declare-fun b!3074357 () Bool)

(assert (=> b!3074357 (= e!1923737 0)))

(declare-fun b!3074358 () Bool)

(assert (=> b!3074358 (= e!1923737 (+ 1 (size!26567 (t!234451 Nil!35262))))))

(assert (= (and d!856630 c!511400) b!3074357))

(assert (= (and d!856630 (not c!511400)) b!3074358))

(declare-fun m!3387067 () Bool)

(assert (=> b!3074358 m!3387067))

(assert (=> b!3073623 d!856630))

(declare-fun d!856632 () Bool)

(declare-fun choose!18213 (Int) Bool)

(assert (=> d!856632 (= (Exists!1784 (ite c!511311 lambda!114147 lambda!114148)) (choose!18213 (ite c!511311 lambda!114147 lambda!114148)))))

(declare-fun bs!532692 () Bool)

(assert (= bs!532692 d!856632))

(declare-fun m!3387069 () Bool)

(assert (=> bs!532692 m!3387069))

(assert (=> bm!213698 d!856632))

(declare-fun d!856634 () Bool)

(assert (=> d!856634 (= (isEmpty!19587 Nil!35262) true)))

(assert (=> bm!213706 d!856634))

(declare-fun d!856636 () Bool)

(declare-fun lt!1052093 () Int)

(assert (=> d!856636 (>= lt!1052093 0)))

(declare-fun e!1923738 () Int)

(assert (=> d!856636 (= lt!1052093 e!1923738)))

(declare-fun c!511401 () Bool)

(assert (=> d!856636 (= c!511401 ((_ is Nil!35262) lt!1051999))))

(assert (=> d!856636 (= (size!26567 lt!1051999) lt!1052093)))

(declare-fun b!3074359 () Bool)

(assert (=> b!3074359 (= e!1923738 0)))

(declare-fun b!3074360 () Bool)

(assert (=> b!3074360 (= e!1923738 (+ 1 (size!26567 (t!234451 lt!1051999))))))

(assert (= (and d!856636 c!511401) b!3074359))

(assert (= (and d!856636 (not c!511401)) b!3074360))

(declare-fun m!3387071 () Bool)

(assert (=> b!3074360 m!3387071))

(assert (=> b!3073696 d!856636))

(assert (=> b!3073696 d!856630))

(assert (=> b!3073696 d!856628))

(declare-fun d!856638 () Bool)

(declare-fun nullableFct!906 (Regex!9521) Bool)

(assert (=> d!856638 (= (nullable!3167 lt!1052073) (nullableFct!906 lt!1052073))))

(declare-fun bs!532693 () Bool)

(assert (= bs!532693 d!856638))

(declare-fun m!3387073 () Bool)

(assert (=> bs!532693 m!3387073))

(assert (=> b!3074254 d!856638))

(declare-fun d!856640 () Bool)

(assert (=> d!856640 (= (nullable!3167 (regTwo!19554 r!17423)) (nullableFct!906 (regTwo!19554 r!17423)))))

(declare-fun bs!532694 () Bool)

(assert (= bs!532694 d!856640))

(declare-fun m!3387075 () Bool)

(assert (=> bs!532694 m!3387075))

(assert (=> b!3074254 d!856640))

(assert (=> b!3074167 d!856620))

(declare-fun d!856642 () Bool)

(assert (=> d!856642 (= (matchR!4403 (regOne!19554 r!17423) s!11993) (matchR!4403 (simplify!476 (regOne!19554 r!17423)) s!11993))))

(assert (=> d!856642 true))

(declare-fun _$95!591 () Unit!49481)

(assert (=> d!856642 (= (choose!18212 (regOne!19554 r!17423) s!11993) _$95!591)))

(declare-fun bs!532695 () Bool)

(assert (= bs!532695 d!856642))

(assert (=> bs!532695 m!3386747))

(assert (=> bs!532695 m!3386735))

(assert (=> bs!532695 m!3386735))

(assert (=> bs!532695 m!3386983))

(assert (=> d!856584 d!856642))

(assert (=> d!856584 d!856524))

(declare-fun b!3074361 () Bool)

(declare-fun e!1923745 () Bool)

(declare-fun lt!1052094 () Bool)

(declare-fun call!213750 () Bool)

(assert (=> b!3074361 (= e!1923745 (= lt!1052094 call!213750))))

(declare-fun b!3074362 () Bool)

(declare-fun e!1923740 () Bool)

(assert (=> b!3074362 (= e!1923740 (nullable!3167 (simplify!476 (regOne!19554 r!17423))))))

(declare-fun b!3074363 () Bool)

(declare-fun e!1923739 () Bool)

(assert (=> b!3074363 (= e!1923739 (not lt!1052094))))

(declare-fun b!3074364 () Bool)

(declare-fun e!1923741 () Bool)

(declare-fun e!1923742 () Bool)

(assert (=> b!3074364 (= e!1923741 e!1923742)))

(declare-fun res!1261680 () Bool)

(assert (=> b!3074364 (=> res!1261680 e!1923742)))

(assert (=> b!3074364 (= res!1261680 call!213750)))

(declare-fun bm!213745 () Bool)

(assert (=> bm!213745 (= call!213750 (isEmpty!19587 s!11993))))

(declare-fun b!3074365 () Bool)

(declare-fun res!1261678 () Bool)

(declare-fun e!1923744 () Bool)

(assert (=> b!3074365 (=> res!1261678 e!1923744)))

(declare-fun e!1923743 () Bool)

(assert (=> b!3074365 (= res!1261678 e!1923743)))

(declare-fun res!1261676 () Bool)

(assert (=> b!3074365 (=> (not res!1261676) (not e!1923743))))

(assert (=> b!3074365 (= res!1261676 lt!1052094)))

(declare-fun b!3074366 () Bool)

(declare-fun res!1261674 () Bool)

(assert (=> b!3074366 (=> res!1261674 e!1923742)))

(assert (=> b!3074366 (= res!1261674 (not (isEmpty!19587 (tail!5048 s!11993))))))

(declare-fun b!3074367 () Bool)

(declare-fun res!1261675 () Bool)

(assert (=> b!3074367 (=> (not res!1261675) (not e!1923743))))

(assert (=> b!3074367 (= res!1261675 (not call!213750))))

(declare-fun b!3074368 () Bool)

(declare-fun res!1261679 () Bool)

(assert (=> b!3074368 (=> res!1261679 e!1923744)))

(assert (=> b!3074368 (= res!1261679 (not ((_ is ElementMatch!9521) (simplify!476 (regOne!19554 r!17423)))))))

(assert (=> b!3074368 (= e!1923739 e!1923744)))

(declare-fun d!856644 () Bool)

(assert (=> d!856644 e!1923745))

(declare-fun c!511403 () Bool)

(assert (=> d!856644 (= c!511403 ((_ is EmptyExpr!9521) (simplify!476 (regOne!19554 r!17423))))))

(assert (=> d!856644 (= lt!1052094 e!1923740)))

(declare-fun c!511402 () Bool)

(assert (=> d!856644 (= c!511402 (isEmpty!19587 s!11993))))

(assert (=> d!856644 (validRegex!4254 (simplify!476 (regOne!19554 r!17423)))))

(assert (=> d!856644 (= (matchR!4403 (simplify!476 (regOne!19554 r!17423)) s!11993) lt!1052094)))

(declare-fun b!3074369 () Bool)

(declare-fun res!1261681 () Bool)

(assert (=> b!3074369 (=> (not res!1261681) (not e!1923743))))

(assert (=> b!3074369 (= res!1261681 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074370 () Bool)

(assert (=> b!3074370 (= e!1923740 (matchR!4403 (derivativeStep!2763 (simplify!476 (regOne!19554 r!17423)) (head!6822 s!11993)) (tail!5048 s!11993)))))

(declare-fun b!3074371 () Bool)

(assert (=> b!3074371 (= e!1923742 (not (= (head!6822 s!11993) (c!511199 (simplify!476 (regOne!19554 r!17423))))))))

(declare-fun b!3074372 () Bool)

(assert (=> b!3074372 (= e!1923745 e!1923739)))

(declare-fun c!511404 () Bool)

(assert (=> b!3074372 (= c!511404 ((_ is EmptyLang!9521) (simplify!476 (regOne!19554 r!17423))))))

(declare-fun b!3074373 () Bool)

(assert (=> b!3074373 (= e!1923743 (= (head!6822 s!11993) (c!511199 (simplify!476 (regOne!19554 r!17423)))))))

(declare-fun b!3074374 () Bool)

(assert (=> b!3074374 (= e!1923744 e!1923741)))

(declare-fun res!1261677 () Bool)

(assert (=> b!3074374 (=> (not res!1261677) (not e!1923741))))

(assert (=> b!3074374 (= res!1261677 (not lt!1052094))))

(assert (= (and d!856644 c!511402) b!3074362))

(assert (= (and d!856644 (not c!511402)) b!3074370))

(assert (= (and d!856644 c!511403) b!3074361))

(assert (= (and d!856644 (not c!511403)) b!3074372))

(assert (= (and b!3074372 c!511404) b!3074363))

(assert (= (and b!3074372 (not c!511404)) b!3074368))

(assert (= (and b!3074368 (not res!1261679)) b!3074365))

(assert (= (and b!3074365 res!1261676) b!3074367))

(assert (= (and b!3074367 res!1261675) b!3074369))

(assert (= (and b!3074369 res!1261681) b!3074373))

(assert (= (and b!3074365 (not res!1261678)) b!3074374))

(assert (= (and b!3074374 res!1261677) b!3074364))

(assert (= (and b!3074364 (not res!1261680)) b!3074366))

(assert (= (and b!3074366 (not res!1261674)) b!3074371))

(assert (= (or b!3074361 b!3074364 b!3074367) bm!213745))

(assert (=> b!3074373 m!3386777))

(assert (=> b!3074370 m!3386777))

(assert (=> b!3074370 m!3386735))

(assert (=> b!3074370 m!3386777))

(declare-fun m!3387077 () Bool)

(assert (=> b!3074370 m!3387077))

(assert (=> b!3074370 m!3386771))

(assert (=> b!3074370 m!3387077))

(assert (=> b!3074370 m!3386771))

(declare-fun m!3387079 () Bool)

(assert (=> b!3074370 m!3387079))

(assert (=> bm!213745 m!3386729))

(assert (=> b!3074366 m!3386771))

(assert (=> b!3074366 m!3386771))

(assert (=> b!3074366 m!3386953))

(assert (=> b!3074362 m!3386735))

(declare-fun m!3387081 () Bool)

(assert (=> b!3074362 m!3387081))

(assert (=> b!3074369 m!3386771))

(assert (=> b!3074369 m!3386771))

(assert (=> b!3074369 m!3386953))

(assert (=> b!3074371 m!3386777))

(assert (=> d!856644 m!3386729))

(assert (=> d!856644 m!3386735))

(declare-fun m!3387083 () Bool)

(assert (=> d!856644 m!3387083))

(assert (=> d!856584 d!856644))

(assert (=> d!856584 d!856586))

(assert (=> d!856584 d!856598))

(declare-fun b!3074375 () Bool)

(declare-fun e!1923752 () Bool)

(declare-fun lt!1052095 () Bool)

(declare-fun call!213751 () Bool)

(assert (=> b!3074375 (= e!1923752 (= lt!1052095 call!213751))))

(declare-fun b!3074376 () Bool)

(declare-fun e!1923747 () Bool)

(assert (=> b!3074376 (= e!1923747 (nullable!3167 (derivativeStep!2763 r!17423 (head!6822 s!11993))))))

(declare-fun b!3074377 () Bool)

(declare-fun e!1923746 () Bool)

(assert (=> b!3074377 (= e!1923746 (not lt!1052095))))

(declare-fun b!3074378 () Bool)

(declare-fun e!1923748 () Bool)

(declare-fun e!1923749 () Bool)

(assert (=> b!3074378 (= e!1923748 e!1923749)))

(declare-fun res!1261688 () Bool)

(assert (=> b!3074378 (=> res!1261688 e!1923749)))

(assert (=> b!3074378 (= res!1261688 call!213751)))

(declare-fun bm!213746 () Bool)

(assert (=> bm!213746 (= call!213751 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074379 () Bool)

(declare-fun res!1261686 () Bool)

(declare-fun e!1923751 () Bool)

(assert (=> b!3074379 (=> res!1261686 e!1923751)))

(declare-fun e!1923750 () Bool)

(assert (=> b!3074379 (= res!1261686 e!1923750)))

(declare-fun res!1261684 () Bool)

(assert (=> b!3074379 (=> (not res!1261684) (not e!1923750))))

(assert (=> b!3074379 (= res!1261684 lt!1052095)))

(declare-fun b!3074380 () Bool)

(declare-fun res!1261682 () Bool)

(assert (=> b!3074380 (=> res!1261682 e!1923749)))

(assert (=> b!3074380 (= res!1261682 (not (isEmpty!19587 (tail!5048 (tail!5048 s!11993)))))))

(declare-fun b!3074381 () Bool)

(declare-fun res!1261683 () Bool)

(assert (=> b!3074381 (=> (not res!1261683) (not e!1923750))))

(assert (=> b!3074381 (= res!1261683 (not call!213751))))

(declare-fun b!3074382 () Bool)

(declare-fun res!1261687 () Bool)

(assert (=> b!3074382 (=> res!1261687 e!1923751)))

(assert (=> b!3074382 (= res!1261687 (not ((_ is ElementMatch!9521) (derivativeStep!2763 r!17423 (head!6822 s!11993)))))))

(assert (=> b!3074382 (= e!1923746 e!1923751)))

(declare-fun d!856646 () Bool)

(assert (=> d!856646 e!1923752))

(declare-fun c!511406 () Bool)

(assert (=> d!856646 (= c!511406 ((_ is EmptyExpr!9521) (derivativeStep!2763 r!17423 (head!6822 s!11993))))))

(assert (=> d!856646 (= lt!1052095 e!1923747)))

(declare-fun c!511405 () Bool)

(assert (=> d!856646 (= c!511405 (isEmpty!19587 (tail!5048 s!11993)))))

(assert (=> d!856646 (validRegex!4254 (derivativeStep!2763 r!17423 (head!6822 s!11993)))))

(assert (=> d!856646 (= (matchR!4403 (derivativeStep!2763 r!17423 (head!6822 s!11993)) (tail!5048 s!11993)) lt!1052095)))

(declare-fun b!3074383 () Bool)

(declare-fun res!1261689 () Bool)

(assert (=> b!3074383 (=> (not res!1261689) (not e!1923750))))

(assert (=> b!3074383 (= res!1261689 (isEmpty!19587 (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074384 () Bool)

(assert (=> b!3074384 (= e!1923747 (matchR!4403 (derivativeStep!2763 (derivativeStep!2763 r!17423 (head!6822 s!11993)) (head!6822 (tail!5048 s!11993))) (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074385 () Bool)

(assert (=> b!3074385 (= e!1923749 (not (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 r!17423 (head!6822 s!11993))))))))

(declare-fun b!3074386 () Bool)

(assert (=> b!3074386 (= e!1923752 e!1923746)))

(declare-fun c!511407 () Bool)

(assert (=> b!3074386 (= c!511407 ((_ is EmptyLang!9521) (derivativeStep!2763 r!17423 (head!6822 s!11993))))))

(declare-fun b!3074387 () Bool)

(assert (=> b!3074387 (= e!1923750 (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 r!17423 (head!6822 s!11993)))))))

(declare-fun b!3074388 () Bool)

(assert (=> b!3074388 (= e!1923751 e!1923748)))

(declare-fun res!1261685 () Bool)

(assert (=> b!3074388 (=> (not res!1261685) (not e!1923748))))

(assert (=> b!3074388 (= res!1261685 (not lt!1052095))))

(assert (= (and d!856646 c!511405) b!3074376))

(assert (= (and d!856646 (not c!511405)) b!3074384))

(assert (= (and d!856646 c!511406) b!3074375))

(assert (= (and d!856646 (not c!511406)) b!3074386))

(assert (= (and b!3074386 c!511407) b!3074377))

(assert (= (and b!3074386 (not c!511407)) b!3074382))

(assert (= (and b!3074382 (not res!1261687)) b!3074379))

(assert (= (and b!3074379 res!1261684) b!3074381))

(assert (= (and b!3074381 res!1261683) b!3074383))

(assert (= (and b!3074383 res!1261689) b!3074387))

(assert (= (and b!3074379 (not res!1261686)) b!3074388))

(assert (= (and b!3074388 res!1261685) b!3074378))

(assert (= (and b!3074378 (not res!1261688)) b!3074380))

(assert (= (and b!3074380 (not res!1261682)) b!3074385))

(assert (= (or b!3074375 b!3074378 b!3074381) bm!213746))

(assert (=> b!3074387 m!3386771))

(declare-fun m!3387085 () Bool)

(assert (=> b!3074387 m!3387085))

(assert (=> b!3074384 m!3386771))

(assert (=> b!3074384 m!3387085))

(assert (=> b!3074384 m!3386949))

(assert (=> b!3074384 m!3387085))

(declare-fun m!3387087 () Bool)

(assert (=> b!3074384 m!3387087))

(assert (=> b!3074384 m!3386771))

(declare-fun m!3387089 () Bool)

(assert (=> b!3074384 m!3387089))

(assert (=> b!3074384 m!3387087))

(assert (=> b!3074384 m!3387089))

(declare-fun m!3387091 () Bool)

(assert (=> b!3074384 m!3387091))

(assert (=> bm!213746 m!3386771))

(assert (=> bm!213746 m!3386953))

(assert (=> b!3074380 m!3386771))

(assert (=> b!3074380 m!3387089))

(assert (=> b!3074380 m!3387089))

(declare-fun m!3387093 () Bool)

(assert (=> b!3074380 m!3387093))

(assert (=> b!3074376 m!3386949))

(declare-fun m!3387095 () Bool)

(assert (=> b!3074376 m!3387095))

(assert (=> b!3074383 m!3386771))

(assert (=> b!3074383 m!3387089))

(assert (=> b!3074383 m!3387089))

(assert (=> b!3074383 m!3387093))

(assert (=> b!3074385 m!3386771))

(assert (=> b!3074385 m!3387085))

(assert (=> d!856646 m!3386771))

(assert (=> d!856646 m!3386953))

(assert (=> d!856646 m!3386949))

(declare-fun m!3387097 () Bool)

(assert (=> d!856646 m!3387097))

(assert (=> b!3074113 d!856646))

(declare-fun b!3074409 () Bool)

(declare-fun e!1923765 () Regex!9521)

(declare-fun e!1923767 () Regex!9521)

(assert (=> b!3074409 (= e!1923765 e!1923767)))

(declare-fun c!511422 () Bool)

(assert (=> b!3074409 (= c!511422 ((_ is ElementMatch!9521) r!17423))))

(declare-fun b!3074410 () Bool)

(assert (=> b!3074410 (= e!1923765 EmptyLang!9521)))

(declare-fun b!3074411 () Bool)

(declare-fun c!511419 () Bool)

(assert (=> b!3074411 (= c!511419 ((_ is Union!9521) r!17423))))

(declare-fun e!1923763 () Regex!9521)

(assert (=> b!3074411 (= e!1923767 e!1923763)))

(declare-fun b!3074412 () Bool)

(declare-fun e!1923766 () Regex!9521)

(declare-fun call!213760 () Regex!9521)

(assert (=> b!3074412 (= e!1923766 (Concat!14842 call!213760 r!17423))))

(declare-fun call!213762 () Regex!9521)

(declare-fun b!3074413 () Bool)

(declare-fun call!213761 () Regex!9521)

(declare-fun e!1923764 () Regex!9521)

(assert (=> b!3074413 (= e!1923764 (Union!9521 (Concat!14842 call!213761 (regTwo!19554 r!17423)) call!213762))))

(declare-fun b!3074414 () Bool)

(assert (=> b!3074414 (= e!1923764 (Union!9521 (Concat!14842 call!213761 (regTwo!19554 r!17423)) EmptyLang!9521))))

(declare-fun d!856648 () Bool)

(declare-fun lt!1052098 () Regex!9521)

(assert (=> d!856648 (validRegex!4254 lt!1052098)))

(assert (=> d!856648 (= lt!1052098 e!1923765)))

(declare-fun c!511421 () Bool)

(assert (=> d!856648 (= c!511421 (or ((_ is EmptyExpr!9521) r!17423) ((_ is EmptyLang!9521) r!17423)))))

(assert (=> d!856648 (validRegex!4254 r!17423)))

(assert (=> d!856648 (= (derivativeStep!2763 r!17423 (head!6822 s!11993)) lt!1052098)))

(declare-fun bm!213755 () Bool)

(declare-fun call!213763 () Regex!9521)

(assert (=> bm!213755 (= call!213760 call!213763)))

(declare-fun bm!213756 () Bool)

(assert (=> bm!213756 (= call!213762 (derivativeStep!2763 (ite c!511419 (regOne!19555 r!17423) (regTwo!19554 r!17423)) (head!6822 s!11993)))))

(declare-fun b!3074415 () Bool)

(assert (=> b!3074415 (= e!1923767 (ite (= (head!6822 s!11993) (c!511199 r!17423)) EmptyExpr!9521 EmptyLang!9521))))

(declare-fun b!3074416 () Bool)

(assert (=> b!3074416 (= e!1923763 (Union!9521 call!213762 call!213763))))

(declare-fun c!511418 () Bool)

(declare-fun bm!213757 () Bool)

(assert (=> bm!213757 (= call!213763 (derivativeStep!2763 (ite c!511419 (regTwo!19555 r!17423) (ite c!511418 (reg!9850 r!17423) (regOne!19554 r!17423))) (head!6822 s!11993)))))

(declare-fun b!3074417 () Bool)

(assert (=> b!3074417 (= e!1923763 e!1923766)))

(assert (=> b!3074417 (= c!511418 ((_ is Star!9521) r!17423))))

(declare-fun bm!213758 () Bool)

(assert (=> bm!213758 (= call!213761 call!213760)))

(declare-fun b!3074418 () Bool)

(declare-fun c!511420 () Bool)

(assert (=> b!3074418 (= c!511420 (nullable!3167 (regOne!19554 r!17423)))))

(assert (=> b!3074418 (= e!1923766 e!1923764)))

(assert (= (and d!856648 c!511421) b!3074410))

(assert (= (and d!856648 (not c!511421)) b!3074409))

(assert (= (and b!3074409 c!511422) b!3074415))

(assert (= (and b!3074409 (not c!511422)) b!3074411))

(assert (= (and b!3074411 c!511419) b!3074416))

(assert (= (and b!3074411 (not c!511419)) b!3074417))

(assert (= (and b!3074417 c!511418) b!3074412))

(assert (= (and b!3074417 (not c!511418)) b!3074418))

(assert (= (and b!3074418 c!511420) b!3074413))

(assert (= (and b!3074418 (not c!511420)) b!3074414))

(assert (= (or b!3074413 b!3074414) bm!213758))

(assert (= (or b!3074412 bm!213758) bm!213755))

(assert (= (or b!3074416 bm!213755) bm!213757))

(assert (= (or b!3074416 b!3074413) bm!213756))

(declare-fun m!3387099 () Bool)

(assert (=> d!856648 m!3387099))

(assert (=> d!856648 m!3386761))

(assert (=> bm!213756 m!3386777))

(declare-fun m!3387101 () Bool)

(assert (=> bm!213756 m!3387101))

(assert (=> bm!213757 m!3386777))

(declare-fun m!3387103 () Bool)

(assert (=> bm!213757 m!3387103))

(assert (=> b!3074418 m!3386989))

(assert (=> b!3074113 d!856648))

(assert (=> b!3074113 d!856604))

(assert (=> b!3074113 d!856616))

(assert (=> b!3074153 d!856604))

(assert (=> d!856580 d!856634))

(declare-fun bm!213759 () Bool)

(declare-fun call!213765 () Bool)

(declare-fun call!213766 () Bool)

(assert (=> bm!213759 (= call!213765 call!213766)))

(declare-fun b!3074420 () Bool)

(declare-fun e!1923772 () Bool)

(declare-fun e!1923770 () Bool)

(assert (=> b!3074420 (= e!1923772 e!1923770)))

(declare-fun c!511424 () Bool)

(assert (=> b!3074420 (= c!511424 ((_ is Star!9521) lt!1051985))))

(declare-fun b!3074421 () Bool)

(declare-fun e!1923769 () Bool)

(declare-fun e!1923774 () Bool)

(assert (=> b!3074421 (= e!1923769 e!1923774)))

(declare-fun res!1261691 () Bool)

(assert (=> b!3074421 (=> (not res!1261691) (not e!1923774))))

(assert (=> b!3074421 (= res!1261691 call!213765)))

(declare-fun b!3074422 () Bool)

(declare-fun e!1923771 () Bool)

(assert (=> b!3074422 (= e!1923770 e!1923771)))

(declare-fun res!1261692 () Bool)

(assert (=> b!3074422 (= res!1261692 (not (nullable!3167 (reg!9850 lt!1051985))))))

(assert (=> b!3074422 (=> (not res!1261692) (not e!1923771))))

(declare-fun b!3074423 () Bool)

(declare-fun res!1261694 () Bool)

(assert (=> b!3074423 (=> res!1261694 e!1923769)))

(assert (=> b!3074423 (= res!1261694 (not ((_ is Concat!14842) lt!1051985)))))

(declare-fun e!1923768 () Bool)

(assert (=> b!3074423 (= e!1923768 e!1923769)))

(declare-fun bm!213760 () Bool)

(declare-fun c!511423 () Bool)

(assert (=> bm!213760 (= call!213766 (validRegex!4254 (ite c!511424 (reg!9850 lt!1051985) (ite c!511423 (regTwo!19555 lt!1051985) (regOne!19554 lt!1051985)))))))

(declare-fun b!3074419 () Bool)

(assert (=> b!3074419 (= e!1923770 e!1923768)))

(assert (=> b!3074419 (= c!511423 ((_ is Union!9521) lt!1051985))))

(declare-fun d!856650 () Bool)

(declare-fun res!1261693 () Bool)

(assert (=> d!856650 (=> res!1261693 e!1923772)))

(assert (=> d!856650 (= res!1261693 ((_ is ElementMatch!9521) lt!1051985))))

(assert (=> d!856650 (= (validRegex!4254 lt!1051985) e!1923772)))

(declare-fun b!3074424 () Bool)

(assert (=> b!3074424 (= e!1923771 call!213766)))

(declare-fun b!3074425 () Bool)

(declare-fun e!1923773 () Bool)

(assert (=> b!3074425 (= e!1923773 call!213765)))

(declare-fun bm!213761 () Bool)

(declare-fun call!213764 () Bool)

(assert (=> bm!213761 (= call!213764 (validRegex!4254 (ite c!511423 (regOne!19555 lt!1051985) (regTwo!19554 lt!1051985))))))

(declare-fun b!3074426 () Bool)

(assert (=> b!3074426 (= e!1923774 call!213764)))

(declare-fun b!3074427 () Bool)

(declare-fun res!1261690 () Bool)

(assert (=> b!3074427 (=> (not res!1261690) (not e!1923773))))

(assert (=> b!3074427 (= res!1261690 call!213764)))

(assert (=> b!3074427 (= e!1923768 e!1923773)))

(assert (= (and d!856650 (not res!1261693)) b!3074420))

(assert (= (and b!3074420 c!511424) b!3074422))

(assert (= (and b!3074420 (not c!511424)) b!3074419))

(assert (= (and b!3074422 res!1261692) b!3074424))

(assert (= (and b!3074419 c!511423) b!3074427))

(assert (= (and b!3074419 (not c!511423)) b!3074423))

(assert (= (and b!3074427 res!1261690) b!3074425))

(assert (= (and b!3074423 (not res!1261694)) b!3074421))

(assert (= (and b!3074421 res!1261691) b!3074426))

(assert (= (or b!3074427 b!3074426) bm!213761))

(assert (= (or b!3074425 b!3074421) bm!213759))

(assert (= (or b!3074424 bm!213759) bm!213760))

(declare-fun m!3387105 () Bool)

(assert (=> b!3074422 m!3387105))

(declare-fun m!3387107 () Bool)

(assert (=> bm!213760 m!3387107))

(declare-fun m!3387109 () Bool)

(assert (=> bm!213761 m!3387109))

(assert (=> d!856580 d!856650))

(assert (=> b!3074165 d!856620))

(declare-fun b!3074428 () Bool)

(declare-fun e!1923781 () Bool)

(declare-fun lt!1052099 () Bool)

(declare-fun call!213767 () Bool)

(assert (=> b!3074428 (= e!1923781 (= lt!1052099 call!213767))))

(declare-fun b!3074429 () Bool)

(declare-fun e!1923776 () Bool)

(assert (=> b!3074429 (= e!1923776 (nullable!3167 (derivativeStep!2763 lt!1051989 (head!6822 s!11993))))))

(declare-fun b!3074430 () Bool)

(declare-fun e!1923775 () Bool)

(assert (=> b!3074430 (= e!1923775 (not lt!1052099))))

(declare-fun b!3074431 () Bool)

(declare-fun e!1923777 () Bool)

(declare-fun e!1923778 () Bool)

(assert (=> b!3074431 (= e!1923777 e!1923778)))

(declare-fun res!1261701 () Bool)

(assert (=> b!3074431 (=> res!1261701 e!1923778)))

(assert (=> b!3074431 (= res!1261701 call!213767)))

(declare-fun bm!213762 () Bool)

(assert (=> bm!213762 (= call!213767 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074432 () Bool)

(declare-fun res!1261699 () Bool)

(declare-fun e!1923780 () Bool)

(assert (=> b!3074432 (=> res!1261699 e!1923780)))

(declare-fun e!1923779 () Bool)

(assert (=> b!3074432 (= res!1261699 e!1923779)))

(declare-fun res!1261697 () Bool)

(assert (=> b!3074432 (=> (not res!1261697) (not e!1923779))))

(assert (=> b!3074432 (= res!1261697 lt!1052099)))

(declare-fun b!3074433 () Bool)

(declare-fun res!1261695 () Bool)

(assert (=> b!3074433 (=> res!1261695 e!1923778)))

(assert (=> b!3074433 (= res!1261695 (not (isEmpty!19587 (tail!5048 (tail!5048 s!11993)))))))

(declare-fun b!3074434 () Bool)

(declare-fun res!1261696 () Bool)

(assert (=> b!3074434 (=> (not res!1261696) (not e!1923779))))

(assert (=> b!3074434 (= res!1261696 (not call!213767))))

(declare-fun b!3074435 () Bool)

(declare-fun res!1261700 () Bool)

(assert (=> b!3074435 (=> res!1261700 e!1923780)))

(assert (=> b!3074435 (= res!1261700 (not ((_ is ElementMatch!9521) (derivativeStep!2763 lt!1051989 (head!6822 s!11993)))))))

(assert (=> b!3074435 (= e!1923775 e!1923780)))

(declare-fun d!856652 () Bool)

(assert (=> d!856652 e!1923781))

(declare-fun c!511426 () Bool)

(assert (=> d!856652 (= c!511426 ((_ is EmptyExpr!9521) (derivativeStep!2763 lt!1051989 (head!6822 s!11993))))))

(assert (=> d!856652 (= lt!1052099 e!1923776)))

(declare-fun c!511425 () Bool)

(assert (=> d!856652 (= c!511425 (isEmpty!19587 (tail!5048 s!11993)))))

(assert (=> d!856652 (validRegex!4254 (derivativeStep!2763 lt!1051989 (head!6822 s!11993)))))

(assert (=> d!856652 (= (matchR!4403 (derivativeStep!2763 lt!1051989 (head!6822 s!11993)) (tail!5048 s!11993)) lt!1052099)))

(declare-fun b!3074436 () Bool)

(declare-fun res!1261702 () Bool)

(assert (=> b!3074436 (=> (not res!1261702) (not e!1923779))))

(assert (=> b!3074436 (= res!1261702 (isEmpty!19587 (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074437 () Bool)

(assert (=> b!3074437 (= e!1923776 (matchR!4403 (derivativeStep!2763 (derivativeStep!2763 lt!1051989 (head!6822 s!11993)) (head!6822 (tail!5048 s!11993))) (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074438 () Bool)

(assert (=> b!3074438 (= e!1923778 (not (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 lt!1051989 (head!6822 s!11993))))))))

(declare-fun b!3074439 () Bool)

(assert (=> b!3074439 (= e!1923781 e!1923775)))

(declare-fun c!511427 () Bool)

(assert (=> b!3074439 (= c!511427 ((_ is EmptyLang!9521) (derivativeStep!2763 lt!1051989 (head!6822 s!11993))))))

(declare-fun b!3074440 () Bool)

(assert (=> b!3074440 (= e!1923779 (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 lt!1051989 (head!6822 s!11993)))))))

(declare-fun b!3074441 () Bool)

(assert (=> b!3074441 (= e!1923780 e!1923777)))

(declare-fun res!1261698 () Bool)

(assert (=> b!3074441 (=> (not res!1261698) (not e!1923777))))

(assert (=> b!3074441 (= res!1261698 (not lt!1052099))))

(assert (= (and d!856652 c!511425) b!3074429))

(assert (= (and d!856652 (not c!511425)) b!3074437))

(assert (= (and d!856652 c!511426) b!3074428))

(assert (= (and d!856652 (not c!511426)) b!3074439))

(assert (= (and b!3074439 c!511427) b!3074430))

(assert (= (and b!3074439 (not c!511427)) b!3074435))

(assert (= (and b!3074435 (not res!1261700)) b!3074432))

(assert (= (and b!3074432 res!1261697) b!3074434))

(assert (= (and b!3074434 res!1261696) b!3074436))

(assert (= (and b!3074436 res!1261702) b!3074440))

(assert (= (and b!3074432 (not res!1261699)) b!3074441))

(assert (= (and b!3074441 res!1261698) b!3074431))

(assert (= (and b!3074431 (not res!1261701)) b!3074433))

(assert (= (and b!3074433 (not res!1261695)) b!3074438))

(assert (= (or b!3074428 b!3074431 b!3074434) bm!213762))

(assert (=> b!3074440 m!3386771))

(assert (=> b!3074440 m!3387085))

(assert (=> b!3074437 m!3386771))

(assert (=> b!3074437 m!3387085))

(assert (=> b!3074437 m!3386997))

(assert (=> b!3074437 m!3387085))

(declare-fun m!3387111 () Bool)

(assert (=> b!3074437 m!3387111))

(assert (=> b!3074437 m!3386771))

(assert (=> b!3074437 m!3387089))

(assert (=> b!3074437 m!3387111))

(assert (=> b!3074437 m!3387089))

(declare-fun m!3387113 () Bool)

(assert (=> b!3074437 m!3387113))

(assert (=> bm!213762 m!3386771))

(assert (=> bm!213762 m!3386953))

(assert (=> b!3074433 m!3386771))

(assert (=> b!3074433 m!3387089))

(assert (=> b!3074433 m!3387089))

(assert (=> b!3074433 m!3387093))

(assert (=> b!3074429 m!3386997))

(declare-fun m!3387115 () Bool)

(assert (=> b!3074429 m!3387115))

(assert (=> b!3074436 m!3386771))

(assert (=> b!3074436 m!3387089))

(assert (=> b!3074436 m!3387089))

(assert (=> b!3074436 m!3387093))

(assert (=> b!3074438 m!3386771))

(assert (=> b!3074438 m!3387085))

(assert (=> d!856652 m!3386771))

(assert (=> d!856652 m!3386953))

(assert (=> d!856652 m!3386997))

(declare-fun m!3387117 () Bool)

(assert (=> d!856652 m!3387117))

(assert (=> b!3074178 d!856652))

(declare-fun b!3074442 () Bool)

(declare-fun e!1923784 () Regex!9521)

(declare-fun e!1923786 () Regex!9521)

(assert (=> b!3074442 (= e!1923784 e!1923786)))

(declare-fun c!511432 () Bool)

(assert (=> b!3074442 (= c!511432 ((_ is ElementMatch!9521) lt!1051989))))

(declare-fun b!3074443 () Bool)

(assert (=> b!3074443 (= e!1923784 EmptyLang!9521)))

(declare-fun b!3074444 () Bool)

(declare-fun c!511429 () Bool)

(assert (=> b!3074444 (= c!511429 ((_ is Union!9521) lt!1051989))))

(declare-fun e!1923782 () Regex!9521)

(assert (=> b!3074444 (= e!1923786 e!1923782)))

(declare-fun b!3074445 () Bool)

(declare-fun e!1923785 () Regex!9521)

(declare-fun call!213768 () Regex!9521)

(assert (=> b!3074445 (= e!1923785 (Concat!14842 call!213768 lt!1051989))))

(declare-fun call!213769 () Regex!9521)

(declare-fun b!3074446 () Bool)

(declare-fun e!1923783 () Regex!9521)

(declare-fun call!213770 () Regex!9521)

(assert (=> b!3074446 (= e!1923783 (Union!9521 (Concat!14842 call!213769 (regTwo!19554 lt!1051989)) call!213770))))

(declare-fun b!3074447 () Bool)

(assert (=> b!3074447 (= e!1923783 (Union!9521 (Concat!14842 call!213769 (regTwo!19554 lt!1051989)) EmptyLang!9521))))

(declare-fun d!856654 () Bool)

(declare-fun lt!1052100 () Regex!9521)

(assert (=> d!856654 (validRegex!4254 lt!1052100)))

(assert (=> d!856654 (= lt!1052100 e!1923784)))

(declare-fun c!511431 () Bool)

(assert (=> d!856654 (= c!511431 (or ((_ is EmptyExpr!9521) lt!1051989) ((_ is EmptyLang!9521) lt!1051989)))))

(assert (=> d!856654 (validRegex!4254 lt!1051989)))

(assert (=> d!856654 (= (derivativeStep!2763 lt!1051989 (head!6822 s!11993)) lt!1052100)))

(declare-fun bm!213763 () Bool)

(declare-fun call!213771 () Regex!9521)

(assert (=> bm!213763 (= call!213768 call!213771)))

(declare-fun bm!213764 () Bool)

(assert (=> bm!213764 (= call!213770 (derivativeStep!2763 (ite c!511429 (regOne!19555 lt!1051989) (regTwo!19554 lt!1051989)) (head!6822 s!11993)))))

(declare-fun b!3074448 () Bool)

(assert (=> b!3074448 (= e!1923786 (ite (= (head!6822 s!11993) (c!511199 lt!1051989)) EmptyExpr!9521 EmptyLang!9521))))

(declare-fun b!3074449 () Bool)

(assert (=> b!3074449 (= e!1923782 (Union!9521 call!213770 call!213771))))

(declare-fun bm!213765 () Bool)

(declare-fun c!511428 () Bool)

(assert (=> bm!213765 (= call!213771 (derivativeStep!2763 (ite c!511429 (regTwo!19555 lt!1051989) (ite c!511428 (reg!9850 lt!1051989) (regOne!19554 lt!1051989))) (head!6822 s!11993)))))

(declare-fun b!3074450 () Bool)

(assert (=> b!3074450 (= e!1923782 e!1923785)))

(assert (=> b!3074450 (= c!511428 ((_ is Star!9521) lt!1051989))))

(declare-fun bm!213766 () Bool)

(assert (=> bm!213766 (= call!213769 call!213768)))

(declare-fun b!3074451 () Bool)

(declare-fun c!511430 () Bool)

(assert (=> b!3074451 (= c!511430 (nullable!3167 (regOne!19554 lt!1051989)))))

(assert (=> b!3074451 (= e!1923785 e!1923783)))

(assert (= (and d!856654 c!511431) b!3074443))

(assert (= (and d!856654 (not c!511431)) b!3074442))

(assert (= (and b!3074442 c!511432) b!3074448))

(assert (= (and b!3074442 (not c!511432)) b!3074444))

(assert (= (and b!3074444 c!511429) b!3074449))

(assert (= (and b!3074444 (not c!511429)) b!3074450))

(assert (= (and b!3074450 c!511428) b!3074445))

(assert (= (and b!3074450 (not c!511428)) b!3074451))

(assert (= (and b!3074451 c!511430) b!3074446))

(assert (= (and b!3074451 (not c!511430)) b!3074447))

(assert (= (or b!3074446 b!3074447) bm!213766))

(assert (= (or b!3074445 bm!213766) bm!213763))

(assert (= (or b!3074449 bm!213763) bm!213765))

(assert (= (or b!3074449 b!3074446) bm!213764))

(declare-fun m!3387119 () Bool)

(assert (=> d!856654 m!3387119))

(assert (=> d!856654 m!3387003))

(assert (=> bm!213764 m!3386777))

(declare-fun m!3387121 () Bool)

(assert (=> bm!213764 m!3387121))

(assert (=> bm!213765 m!3386777))

(declare-fun m!3387123 () Bool)

(assert (=> bm!213765 m!3387123))

(declare-fun m!3387125 () Bool)

(assert (=> b!3074451 m!3387125))

(assert (=> b!3074178 d!856654))

(assert (=> b!3074178 d!856604))

(assert (=> b!3074178 d!856616))

(assert (=> d!856574 d!856602))

(assert (=> d!856574 d!856578))

(declare-fun bm!213767 () Bool)

(declare-fun call!213773 () Bool)

(declare-fun call!213774 () Bool)

(assert (=> bm!213767 (= call!213773 call!213774)))

(declare-fun b!3074453 () Bool)

(declare-fun e!1923791 () Bool)

(declare-fun e!1923789 () Bool)

(assert (=> b!3074453 (= e!1923791 e!1923789)))

(declare-fun c!511434 () Bool)

(assert (=> b!3074453 (= c!511434 ((_ is Star!9521) lt!1052073))))

(declare-fun b!3074454 () Bool)

(declare-fun e!1923788 () Bool)

(declare-fun e!1923793 () Bool)

(assert (=> b!3074454 (= e!1923788 e!1923793)))

(declare-fun res!1261704 () Bool)

(assert (=> b!3074454 (=> (not res!1261704) (not e!1923793))))

(assert (=> b!3074454 (= res!1261704 call!213773)))

(declare-fun b!3074455 () Bool)

(declare-fun e!1923790 () Bool)

(assert (=> b!3074455 (= e!1923789 e!1923790)))

(declare-fun res!1261705 () Bool)

(assert (=> b!3074455 (= res!1261705 (not (nullable!3167 (reg!9850 lt!1052073))))))

(assert (=> b!3074455 (=> (not res!1261705) (not e!1923790))))

(declare-fun b!3074456 () Bool)

(declare-fun res!1261707 () Bool)

(assert (=> b!3074456 (=> res!1261707 e!1923788)))

(assert (=> b!3074456 (= res!1261707 (not ((_ is Concat!14842) lt!1052073)))))

(declare-fun e!1923787 () Bool)

(assert (=> b!3074456 (= e!1923787 e!1923788)))

(declare-fun c!511433 () Bool)

(declare-fun bm!213768 () Bool)

(assert (=> bm!213768 (= call!213774 (validRegex!4254 (ite c!511434 (reg!9850 lt!1052073) (ite c!511433 (regTwo!19555 lt!1052073) (regOne!19554 lt!1052073)))))))

(declare-fun b!3074452 () Bool)

(assert (=> b!3074452 (= e!1923789 e!1923787)))

(assert (=> b!3074452 (= c!511433 ((_ is Union!9521) lt!1052073))))

(declare-fun d!856656 () Bool)

(declare-fun res!1261706 () Bool)

(assert (=> d!856656 (=> res!1261706 e!1923791)))

(assert (=> d!856656 (= res!1261706 ((_ is ElementMatch!9521) lt!1052073))))

(assert (=> d!856656 (= (validRegex!4254 lt!1052073) e!1923791)))

(declare-fun b!3074457 () Bool)

(assert (=> b!3074457 (= e!1923790 call!213774)))

(declare-fun b!3074458 () Bool)

(declare-fun e!1923792 () Bool)

(assert (=> b!3074458 (= e!1923792 call!213773)))

(declare-fun bm!213769 () Bool)

(declare-fun call!213772 () Bool)

(assert (=> bm!213769 (= call!213772 (validRegex!4254 (ite c!511433 (regOne!19555 lt!1052073) (regTwo!19554 lt!1052073))))))

(declare-fun b!3074459 () Bool)

(assert (=> b!3074459 (= e!1923793 call!213772)))

(declare-fun b!3074460 () Bool)

(declare-fun res!1261703 () Bool)

(assert (=> b!3074460 (=> (not res!1261703) (not e!1923792))))

(assert (=> b!3074460 (= res!1261703 call!213772)))

(assert (=> b!3074460 (= e!1923787 e!1923792)))

(assert (= (and d!856656 (not res!1261706)) b!3074453))

(assert (= (and b!3074453 c!511434) b!3074455))

(assert (= (and b!3074453 (not c!511434)) b!3074452))

(assert (= (and b!3074455 res!1261705) b!3074457))

(assert (= (and b!3074452 c!511433) b!3074460))

(assert (= (and b!3074452 (not c!511433)) b!3074456))

(assert (= (and b!3074460 res!1261703) b!3074458))

(assert (= (and b!3074456 (not res!1261707)) b!3074454))

(assert (= (and b!3074454 res!1261704) b!3074459))

(assert (= (or b!3074460 b!3074459) bm!213769))

(assert (= (or b!3074458 b!3074454) bm!213767))

(assert (= (or b!3074457 bm!213767) bm!213768))

(declare-fun m!3387127 () Bool)

(assert (=> b!3074455 m!3387127))

(declare-fun m!3387129 () Bool)

(assert (=> bm!213768 m!3387129))

(declare-fun m!3387131 () Bool)

(assert (=> bm!213769 m!3387131))

(assert (=> d!856596 d!856656))

(assert (=> d!856596 d!856528))

(assert (=> d!856586 d!856602))

(assert (=> d!856586 d!856524))

(declare-fun d!856658 () Bool)

(assert (=> d!856658 (= (nullable!3167 (reg!9850 (regOne!19554 r!17423))) (nullableFct!906 (reg!9850 (regOne!19554 r!17423))))))

(declare-fun bs!532696 () Bool)

(assert (= bs!532696 d!856658))

(declare-fun m!3387133 () Bool)

(assert (=> bs!532696 m!3387133))

(assert (=> b!3073667 d!856658))

(declare-fun bm!213770 () Bool)

(declare-fun call!213776 () Bool)

(declare-fun call!213777 () Bool)

(assert (=> bm!213770 (= call!213776 call!213777)))

(declare-fun b!3074462 () Bool)

(declare-fun e!1923798 () Bool)

(declare-fun e!1923796 () Bool)

(assert (=> b!3074462 (= e!1923798 e!1923796)))

(declare-fun c!511436 () Bool)

(assert (=> b!3074462 (= c!511436 ((_ is Star!9521) (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))

(declare-fun b!3074463 () Bool)

(declare-fun e!1923795 () Bool)

(declare-fun e!1923800 () Bool)

(assert (=> b!3074463 (= e!1923795 e!1923800)))

(declare-fun res!1261709 () Bool)

(assert (=> b!3074463 (=> (not res!1261709) (not e!1923800))))

(assert (=> b!3074463 (= res!1261709 call!213776)))

(declare-fun b!3074464 () Bool)

(declare-fun e!1923797 () Bool)

(assert (=> b!3074464 (= e!1923796 e!1923797)))

(declare-fun res!1261710 () Bool)

(assert (=> b!3074464 (= res!1261710 (not (nullable!3167 (reg!9850 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))))

(assert (=> b!3074464 (=> (not res!1261710) (not e!1923797))))

(declare-fun b!3074465 () Bool)

(declare-fun res!1261712 () Bool)

(assert (=> b!3074465 (=> res!1261712 e!1923795)))

(assert (=> b!3074465 (= res!1261712 (not ((_ is Concat!14842) (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423))))))))

(declare-fun e!1923794 () Bool)

(assert (=> b!3074465 (= e!1923794 e!1923795)))

(declare-fun bm!213771 () Bool)

(declare-fun c!511435 () Bool)

(assert (=> bm!213771 (= call!213777 (validRegex!4254 (ite c!511436 (reg!9850 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))) (ite c!511435 (regTwo!19555 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))) (regOne!19554 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423))))))))))

(declare-fun b!3074461 () Bool)

(assert (=> b!3074461 (= e!1923796 e!1923794)))

(assert (=> b!3074461 (= c!511435 ((_ is Union!9521) (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))

(declare-fun d!856660 () Bool)

(declare-fun res!1261711 () Bool)

(assert (=> d!856660 (=> res!1261711 e!1923798)))

(assert (=> d!856660 (= res!1261711 ((_ is ElementMatch!9521) (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))

(assert (=> d!856660 (= (validRegex!4254 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))) e!1923798)))

(declare-fun b!3074466 () Bool)

(assert (=> b!3074466 (= e!1923797 call!213777)))

(declare-fun b!3074467 () Bool)

(declare-fun e!1923799 () Bool)

(assert (=> b!3074467 (= e!1923799 call!213776)))

(declare-fun call!213775 () Bool)

(declare-fun bm!213772 () Bool)

(assert (=> bm!213772 (= call!213775 (validRegex!4254 (ite c!511435 (regOne!19555 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))) (regTwo!19554 (ite c!511325 (reg!9850 r!17423) (ite c!511324 (regTwo!19555 r!17423) (regOne!19554 r!17423)))))))))

(declare-fun b!3074468 () Bool)

(assert (=> b!3074468 (= e!1923800 call!213775)))

(declare-fun b!3074469 () Bool)

(declare-fun res!1261708 () Bool)

(assert (=> b!3074469 (=> (not res!1261708) (not e!1923799))))

(assert (=> b!3074469 (= res!1261708 call!213775)))

(assert (=> b!3074469 (= e!1923794 e!1923799)))

(assert (= (and d!856660 (not res!1261711)) b!3074462))

(assert (= (and b!3074462 c!511436) b!3074464))

(assert (= (and b!3074462 (not c!511436)) b!3074461))

(assert (= (and b!3074464 res!1261710) b!3074466))

(assert (= (and b!3074461 c!511435) b!3074469))

(assert (= (and b!3074461 (not c!511435)) b!3074465))

(assert (= (and b!3074469 res!1261708) b!3074467))

(assert (= (and b!3074465 (not res!1261712)) b!3074463))

(assert (= (and b!3074463 res!1261709) b!3074468))

(assert (= (or b!3074469 b!3074468) bm!213772))

(assert (= (or b!3074467 b!3074463) bm!213770))

(assert (= (or b!3074466 bm!213770) bm!213771))

(declare-fun m!3387135 () Bool)

(assert (=> b!3074464 m!3387135))

(declare-fun m!3387137 () Bool)

(assert (=> bm!213771 m!3387137))

(declare-fun m!3387139 () Bool)

(assert (=> bm!213772 m!3387139))

(assert (=> bm!213704 d!856660))

(declare-fun d!856662 () Bool)

(assert (=> d!856662 (= (isEmptyExpr!578 (ite c!511363 lt!1052075 lt!1052076)) ((_ is EmptyExpr!9521) (ite c!511363 lt!1052075 lt!1052076)))))

(assert (=> bm!213726 d!856662))

(declare-fun d!856664 () Bool)

(assert (=> d!856664 (= (matchR!4403 (regTwo!19554 r!17423) Nil!35262) (matchR!4403 (simplify!476 (regTwo!19554 r!17423)) Nil!35262))))

(assert (=> d!856664 true))

(declare-fun _$95!592 () Unit!49481)

(assert (=> d!856664 (= (choose!18212 (regTwo!19554 r!17423) Nil!35262) _$95!592)))

(declare-fun bs!532697 () Bool)

(assert (= bs!532697 d!856664))

(assert (=> bs!532697 m!3386755))

(assert (=> bs!532697 m!3386733))

(assert (=> bs!532697 m!3386733))

(assert (=> bs!532697 m!3386979))

(assert (=> d!856582 d!856664))

(assert (=> d!856582 d!856596))

(assert (=> d!856582 d!856528))

(declare-fun b!3074470 () Bool)

(declare-fun e!1923807 () Bool)

(declare-fun lt!1052101 () Bool)

(declare-fun call!213778 () Bool)

(assert (=> b!3074470 (= e!1923807 (= lt!1052101 call!213778))))

(declare-fun b!3074471 () Bool)

(declare-fun e!1923802 () Bool)

(assert (=> b!3074471 (= e!1923802 (nullable!3167 (simplify!476 (regTwo!19554 r!17423))))))

(declare-fun b!3074472 () Bool)

(declare-fun e!1923801 () Bool)

(assert (=> b!3074472 (= e!1923801 (not lt!1052101))))

(declare-fun b!3074473 () Bool)

(declare-fun e!1923803 () Bool)

(declare-fun e!1923804 () Bool)

(assert (=> b!3074473 (= e!1923803 e!1923804)))

(declare-fun res!1261719 () Bool)

(assert (=> b!3074473 (=> res!1261719 e!1923804)))

(assert (=> b!3074473 (= res!1261719 call!213778)))

(declare-fun bm!213773 () Bool)

(assert (=> bm!213773 (= call!213778 (isEmpty!19587 Nil!35262))))

(declare-fun b!3074474 () Bool)

(declare-fun res!1261717 () Bool)

(declare-fun e!1923806 () Bool)

(assert (=> b!3074474 (=> res!1261717 e!1923806)))

(declare-fun e!1923805 () Bool)

(assert (=> b!3074474 (= res!1261717 e!1923805)))

(declare-fun res!1261715 () Bool)

(assert (=> b!3074474 (=> (not res!1261715) (not e!1923805))))

(assert (=> b!3074474 (= res!1261715 lt!1052101)))

(declare-fun b!3074475 () Bool)

(declare-fun res!1261713 () Bool)

(assert (=> b!3074475 (=> res!1261713 e!1923804)))

(assert (=> b!3074475 (= res!1261713 (not (isEmpty!19587 (tail!5048 Nil!35262))))))

(declare-fun b!3074476 () Bool)

(declare-fun res!1261714 () Bool)

(assert (=> b!3074476 (=> (not res!1261714) (not e!1923805))))

(assert (=> b!3074476 (= res!1261714 (not call!213778))))

(declare-fun b!3074477 () Bool)

(declare-fun res!1261718 () Bool)

(assert (=> b!3074477 (=> res!1261718 e!1923806)))

(assert (=> b!3074477 (= res!1261718 (not ((_ is ElementMatch!9521) (simplify!476 (regTwo!19554 r!17423)))))))

(assert (=> b!3074477 (= e!1923801 e!1923806)))

(declare-fun d!856666 () Bool)

(assert (=> d!856666 e!1923807))

(declare-fun c!511438 () Bool)

(assert (=> d!856666 (= c!511438 ((_ is EmptyExpr!9521) (simplify!476 (regTwo!19554 r!17423))))))

(assert (=> d!856666 (= lt!1052101 e!1923802)))

(declare-fun c!511437 () Bool)

(assert (=> d!856666 (= c!511437 (isEmpty!19587 Nil!35262))))

(assert (=> d!856666 (validRegex!4254 (simplify!476 (regTwo!19554 r!17423)))))

(assert (=> d!856666 (= (matchR!4403 (simplify!476 (regTwo!19554 r!17423)) Nil!35262) lt!1052101)))

(declare-fun b!3074478 () Bool)

(declare-fun res!1261720 () Bool)

(assert (=> b!3074478 (=> (not res!1261720) (not e!1923805))))

(assert (=> b!3074478 (= res!1261720 (isEmpty!19587 (tail!5048 Nil!35262)))))

(declare-fun b!3074479 () Bool)

(assert (=> b!3074479 (= e!1923802 (matchR!4403 (derivativeStep!2763 (simplify!476 (regTwo!19554 r!17423)) (head!6822 Nil!35262)) (tail!5048 Nil!35262)))))

(declare-fun b!3074480 () Bool)

(assert (=> b!3074480 (= e!1923804 (not (= (head!6822 Nil!35262) (c!511199 (simplify!476 (regTwo!19554 r!17423))))))))

(declare-fun b!3074481 () Bool)

(assert (=> b!3074481 (= e!1923807 e!1923801)))

(declare-fun c!511439 () Bool)

(assert (=> b!3074481 (= c!511439 ((_ is EmptyLang!9521) (simplify!476 (regTwo!19554 r!17423))))))

(declare-fun b!3074482 () Bool)

(assert (=> b!3074482 (= e!1923805 (= (head!6822 Nil!35262) (c!511199 (simplify!476 (regTwo!19554 r!17423)))))))

(declare-fun b!3074483 () Bool)

(assert (=> b!3074483 (= e!1923806 e!1923803)))

(declare-fun res!1261716 () Bool)

(assert (=> b!3074483 (=> (not res!1261716) (not e!1923803))))

(assert (=> b!3074483 (= res!1261716 (not lt!1052101))))

(assert (= (and d!856666 c!511437) b!3074471))

(assert (= (and d!856666 (not c!511437)) b!3074479))

(assert (= (and d!856666 c!511438) b!3074470))

(assert (= (and d!856666 (not c!511438)) b!3074481))

(assert (= (and b!3074481 c!511439) b!3074472))

(assert (= (and b!3074481 (not c!511439)) b!3074477))

(assert (= (and b!3074477 (not res!1261718)) b!3074474))

(assert (= (and b!3074474 res!1261715) b!3074476))

(assert (= (and b!3074476 res!1261714) b!3074478))

(assert (= (and b!3074478 res!1261720) b!3074482))

(assert (= (and b!3074474 (not res!1261717)) b!3074483))

(assert (= (and b!3074483 res!1261716) b!3074473))

(assert (= (and b!3074473 (not res!1261719)) b!3074475))

(assert (= (and b!3074475 (not res!1261713)) b!3074480))

(assert (= (or b!3074470 b!3074473 b!3074476) bm!213773))

(assert (=> b!3074482 m!3386775))

(assert (=> b!3074479 m!3386775))

(assert (=> b!3074479 m!3386733))

(assert (=> b!3074479 m!3386775))

(declare-fun m!3387141 () Bool)

(assert (=> b!3074479 m!3387141))

(assert (=> b!3074479 m!3386769))

(assert (=> b!3074479 m!3387141))

(assert (=> b!3074479 m!3386769))

(declare-fun m!3387143 () Bool)

(assert (=> b!3074479 m!3387143))

(assert (=> bm!213773 m!3386969))

(assert (=> b!3074475 m!3386769))

(assert (=> b!3074475 m!3386769))

(assert (=> b!3074475 m!3386971))

(assert (=> b!3074471 m!3386733))

(declare-fun m!3387145 () Bool)

(assert (=> b!3074471 m!3387145))

(assert (=> b!3074478 m!3386769))

(assert (=> b!3074478 m!3386769))

(assert (=> b!3074478 m!3386971))

(assert (=> b!3074480 m!3386775))

(assert (=> d!856666 m!3386969))

(assert (=> d!856666 m!3386733))

(declare-fun m!3387147 () Bool)

(assert (=> d!856666 m!3387147))

(assert (=> d!856582 d!856666))

(assert (=> d!856582 d!856588))

(declare-fun bm!213774 () Bool)

(declare-fun call!213780 () Bool)

(declare-fun call!213781 () Bool)

(assert (=> bm!213774 (= call!213780 call!213781)))

(declare-fun b!3074485 () Bool)

(declare-fun e!1923812 () Bool)

(declare-fun e!1923810 () Bool)

(assert (=> b!3074485 (= e!1923812 e!1923810)))

(declare-fun c!511441 () Bool)

(assert (=> b!3074485 (= c!511441 ((_ is Star!9521) (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun b!3074486 () Bool)

(declare-fun e!1923809 () Bool)

(declare-fun e!1923814 () Bool)

(assert (=> b!3074486 (= e!1923809 e!1923814)))

(declare-fun res!1261722 () Bool)

(assert (=> b!3074486 (=> (not res!1261722) (not e!1923814))))

(assert (=> b!3074486 (= res!1261722 call!213780)))

(declare-fun b!3074487 () Bool)

(declare-fun e!1923811 () Bool)

(assert (=> b!3074487 (= e!1923810 e!1923811)))

(declare-fun res!1261723 () Bool)

(assert (=> b!3074487 (= res!1261723 (not (nullable!3167 (reg!9850 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))))

(assert (=> b!3074487 (=> (not res!1261723) (not e!1923811))))

(declare-fun b!3074488 () Bool)

(declare-fun res!1261725 () Bool)

(assert (=> b!3074488 (=> res!1261725 e!1923809)))

(assert (=> b!3074488 (= res!1261725 (not ((_ is Concat!14842) (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))))

(declare-fun e!1923808 () Bool)

(assert (=> b!3074488 (= e!1923808 e!1923809)))

(declare-fun bm!213775 () Bool)

(declare-fun c!511440 () Bool)

(assert (=> bm!213775 (= call!213781 (validRegex!4254 (ite c!511441 (reg!9850 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (ite c!511440 (regTwo!19555 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (regOne!19554 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))))))))))

(declare-fun b!3074484 () Bool)

(assert (=> b!3074484 (= e!1923810 e!1923808)))

(assert (=> b!3074484 (= c!511440 ((_ is Union!9521) (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(declare-fun d!856668 () Bool)

(declare-fun res!1261724 () Bool)

(assert (=> d!856668 (=> res!1261724 e!1923812)))

(assert (=> d!856668 (= res!1261724 ((_ is ElementMatch!9521) (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))

(assert (=> d!856668 (= (validRegex!4254 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) e!1923812)))

(declare-fun b!3074489 () Bool)

(assert (=> b!3074489 (= e!1923811 call!213781)))

(declare-fun b!3074490 () Bool)

(declare-fun e!1923813 () Bool)

(assert (=> b!3074490 (= e!1923813 call!213780)))

(declare-fun bm!213776 () Bool)

(declare-fun call!213779 () Bool)

(assert (=> bm!213776 (= call!213779 (validRegex!4254 (ite c!511440 (regOne!19555 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))) (regTwo!19554 (ite c!511213 (reg!9850 (regOne!19554 r!17423)) (ite c!511212 (regTwo!19555 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423))))))))))

(declare-fun b!3074491 () Bool)

(assert (=> b!3074491 (= e!1923814 call!213779)))

(declare-fun b!3074492 () Bool)

(declare-fun res!1261721 () Bool)

(assert (=> b!3074492 (=> (not res!1261721) (not e!1923813))))

(assert (=> b!3074492 (= res!1261721 call!213779)))

(assert (=> b!3074492 (= e!1923808 e!1923813)))

(assert (= (and d!856668 (not res!1261724)) b!3074485))

(assert (= (and b!3074485 c!511441) b!3074487))

(assert (= (and b!3074485 (not c!511441)) b!3074484))

(assert (= (and b!3074487 res!1261723) b!3074489))

(assert (= (and b!3074484 c!511440) b!3074492))

(assert (= (and b!3074484 (not c!511440)) b!3074488))

(assert (= (and b!3074492 res!1261721) b!3074490))

(assert (= (and b!3074488 (not res!1261725)) b!3074486))

(assert (= (and b!3074486 res!1261722) b!3074491))

(assert (= (or b!3074492 b!3074491) bm!213776))

(assert (= (or b!3074490 b!3074486) bm!213774))

(assert (= (or b!3074489 bm!213774) bm!213775))

(declare-fun m!3387149 () Bool)

(assert (=> b!3074487 m!3387149))

(declare-fun m!3387151 () Bool)

(assert (=> bm!213775 m!3387151))

(declare-fun m!3387153 () Bool)

(assert (=> bm!213776 m!3387153))

(assert (=> bm!213633 d!856668))

(declare-fun d!856670 () Bool)

(assert (=> d!856670 (= (nullable!3167 (reg!9850 r!17423)) (nullableFct!906 (reg!9850 r!17423)))))

(declare-fun bs!532698 () Bool)

(assert (= bs!532698 d!856670))

(declare-fun m!3387155 () Bool)

(assert (=> bs!532698 m!3387155))

(assert (=> b!3074121 d!856670))

(declare-fun bm!213777 () Bool)

(declare-fun call!213783 () Bool)

(declare-fun call!213784 () Bool)

(assert (=> bm!213777 (= call!213783 call!213784)))

(declare-fun b!3074494 () Bool)

(declare-fun e!1923819 () Bool)

(declare-fun e!1923817 () Bool)

(assert (=> b!3074494 (= e!1923819 e!1923817)))

(declare-fun c!511443 () Bool)

(assert (=> b!3074494 (= c!511443 ((_ is Star!9521) (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun b!3074495 () Bool)

(declare-fun e!1923816 () Bool)

(declare-fun e!1923821 () Bool)

(assert (=> b!3074495 (= e!1923816 e!1923821)))

(declare-fun res!1261727 () Bool)

(assert (=> b!3074495 (=> (not res!1261727) (not e!1923821))))

(assert (=> b!3074495 (= res!1261727 call!213783)))

(declare-fun b!3074496 () Bool)

(declare-fun e!1923818 () Bool)

(assert (=> b!3074496 (= e!1923817 e!1923818)))

(declare-fun res!1261728 () Bool)

(assert (=> b!3074496 (= res!1261728 (not (nullable!3167 (reg!9850 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))))

(assert (=> b!3074496 (=> (not res!1261728) (not e!1923818))))

(declare-fun b!3074497 () Bool)

(declare-fun res!1261730 () Bool)

(assert (=> b!3074497 (=> res!1261730 e!1923816)))

(assert (=> b!3074497 (= res!1261730 (not ((_ is Concat!14842) (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))))

(declare-fun e!1923815 () Bool)

(assert (=> b!3074497 (= e!1923815 e!1923816)))

(declare-fun c!511442 () Bool)

(declare-fun bm!213778 () Bool)

(assert (=> bm!213778 (= call!213784 (validRegex!4254 (ite c!511443 (reg!9850 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (ite c!511442 (regTwo!19555 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (regOne!19554 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))))))

(declare-fun b!3074493 () Bool)

(assert (=> b!3074493 (= e!1923817 e!1923815)))

(assert (=> b!3074493 (= c!511442 ((_ is Union!9521) (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun d!856672 () Bool)

(declare-fun res!1261729 () Bool)

(assert (=> d!856672 (=> res!1261729 e!1923819)))

(assert (=> d!856672 (= res!1261729 ((_ is ElementMatch!9521) (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(assert (=> d!856672 (= (validRegex!4254 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) e!1923819)))

(declare-fun b!3074498 () Bool)

(assert (=> b!3074498 (= e!1923818 call!213784)))

(declare-fun b!3074499 () Bool)

(declare-fun e!1923820 () Bool)

(assert (=> b!3074499 (= e!1923820 call!213783)))

(declare-fun call!213782 () Bool)

(declare-fun bm!213779 () Bool)

(assert (=> bm!213779 (= call!213782 (validRegex!4254 (ite c!511442 (regOne!19555 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (regTwo!19554 (ite c!511217 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))))

(declare-fun b!3074500 () Bool)

(assert (=> b!3074500 (= e!1923821 call!213782)))

(declare-fun b!3074501 () Bool)

(declare-fun res!1261726 () Bool)

(assert (=> b!3074501 (=> (not res!1261726) (not e!1923820))))

(assert (=> b!3074501 (= res!1261726 call!213782)))

(assert (=> b!3074501 (= e!1923815 e!1923820)))

(assert (= (and d!856672 (not res!1261729)) b!3074494))

(assert (= (and b!3074494 c!511443) b!3074496))

(assert (= (and b!3074494 (not c!511443)) b!3074493))

(assert (= (and b!3074496 res!1261728) b!3074498))

(assert (= (and b!3074493 c!511442) b!3074501))

(assert (= (and b!3074493 (not c!511442)) b!3074497))

(assert (= (and b!3074501 res!1261726) b!3074499))

(assert (= (and b!3074497 (not res!1261730)) b!3074495))

(assert (= (and b!3074495 res!1261727) b!3074500))

(assert (= (or b!3074501 b!3074500) bm!213779))

(assert (= (or b!3074499 b!3074495) bm!213777))

(assert (= (or b!3074498 bm!213777) bm!213778))

(declare-fun m!3387157 () Bool)

(assert (=> b!3074496 m!3387157))

(declare-fun m!3387159 () Bool)

(assert (=> bm!213778 m!3387159))

(declare-fun m!3387161 () Bool)

(assert (=> bm!213779 m!3387161))

(assert (=> bm!213637 d!856672))

(assert (=> b!3074132 d!856608))

(assert (=> b!3074132 d!856610))

(declare-fun lt!1052107 () Regex!9521)

(declare-fun lt!1052102 () Regex!9521)

(declare-fun bm!213780 () Bool)

(declare-fun c!511444 () Bool)

(declare-fun call!213787 () Bool)

(assert (=> bm!213780 (= call!213787 (isEmptyLang!572 (ite c!511444 lt!1052102 lt!1052107)))))

(declare-fun b!3074502 () Bool)

(declare-fun c!511451 () Bool)

(declare-fun call!213785 () Bool)

(assert (=> b!3074502 (= c!511451 call!213785)))

(declare-fun e!1923834 () Regex!9521)

(declare-fun e!1923833 () Regex!9521)

(assert (=> b!3074502 (= e!1923834 e!1923833)))

(declare-fun b!3074503 () Bool)

(declare-fun e!1923824 () Bool)

(declare-fun call!213788 () Bool)

(assert (=> b!3074503 (= e!1923824 call!213788)))

(declare-fun b!3074504 () Bool)

(declare-fun c!511449 () Bool)

(declare-fun e!1923825 () Bool)

(assert (=> b!3074504 (= c!511449 e!1923825)))

(declare-fun res!1261733 () Bool)

(assert (=> b!3074504 (=> res!1261733 e!1923825)))

(declare-fun call!213789 () Bool)

(assert (=> b!3074504 (= res!1261733 call!213789)))

(declare-fun lt!1052106 () Regex!9521)

(declare-fun call!213790 () Regex!9521)

(assert (=> b!3074504 (= lt!1052106 call!213790)))

(declare-fun e!1923832 () Regex!9521)

(declare-fun e!1923827 () Regex!9521)

(assert (=> b!3074504 (= e!1923832 e!1923827)))

(declare-fun b!3074505 () Bool)

(declare-fun e!1923826 () Regex!9521)

(declare-fun lt!1052103 () Regex!9521)

(assert (=> b!3074505 (= e!1923826 (Concat!14842 lt!1052107 lt!1052103))))

(declare-fun b!3074507 () Bool)

(assert (=> b!3074507 (= e!1923825 call!213785)))

(declare-fun b!3074508 () Bool)

(declare-fun e!1923830 () Regex!9521)

(assert (=> b!3074508 (= e!1923830 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))

(declare-fun call!213791 () Regex!9521)

(declare-fun bm!213781 () Bool)

(assert (=> bm!213781 (= call!213791 (simplify!476 (ite c!511444 (regOne!19555 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (regTwo!19554 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))))

(declare-fun b!3074509 () Bool)

(declare-fun e!1923823 () Regex!9521)

(assert (=> b!3074509 (= e!1923823 lt!1052102)))

(declare-fun c!511447 () Bool)

(declare-fun bm!213782 () Bool)

(assert (=> bm!213782 (= call!213785 (isEmptyExpr!578 (ite c!511447 lt!1052106 lt!1052107)))))

(declare-fun b!3074510 () Bool)

(assert (=> b!3074510 (= e!1923833 e!1923826)))

(declare-fun c!511446 () Bool)

(assert (=> b!3074510 (= c!511446 (isEmptyExpr!578 lt!1052103))))

(declare-fun b!3074511 () Bool)

(declare-fun c!511452 () Bool)

(assert (=> b!3074511 (= c!511452 call!213788)))

(declare-fun e!1923835 () Regex!9521)

(assert (=> b!3074511 (= e!1923835 e!1923823)))

(declare-fun b!3074512 () Bool)

(declare-fun lt!1052105 () Regex!9521)

(assert (=> b!3074512 (= e!1923823 (Union!9521 lt!1052102 lt!1052105))))

(declare-fun bm!213783 () Bool)

(assert (=> bm!213783 (= call!213789 (isEmptyLang!572 (ite c!511447 lt!1052106 (ite c!511444 lt!1052105 lt!1052103))))))

(declare-fun b!3074513 () Bool)

(declare-fun e!1923831 () Regex!9521)

(assert (=> b!3074513 (= e!1923831 e!1923830)))

(declare-fun c!511445 () Bool)

(assert (=> b!3074513 (= c!511445 ((_ is ElementMatch!9521) (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun bm!213784 () Bool)

(assert (=> bm!213784 (= call!213790 (simplify!476 (ite c!511447 (reg!9850 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (ite c!511444 (regTwo!19555 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) (regOne!19554 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))))))

(declare-fun b!3074514 () Bool)

(assert (=> b!3074514 (= e!1923827 EmptyExpr!9521)))

(declare-fun b!3074515 () Bool)

(assert (=> b!3074515 (= e!1923835 lt!1052105)))

(declare-fun b!3074516 () Bool)

(assert (=> b!3074516 (= e!1923827 (Star!9521 lt!1052106))))

(declare-fun b!3074517 () Bool)

(declare-fun e!1923822 () Regex!9521)

(assert (=> b!3074517 (= e!1923822 e!1923835)))

(assert (=> b!3074517 (= lt!1052102 call!213791)))

(declare-fun call!213786 () Regex!9521)

(assert (=> b!3074517 (= lt!1052105 call!213786)))

(declare-fun c!511454 () Bool)

(assert (=> b!3074517 (= c!511454 call!213787)))

(declare-fun b!3074518 () Bool)

(declare-fun c!511448 () Bool)

(assert (=> b!3074518 (= c!511448 ((_ is EmptyExpr!9521) (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(declare-fun e!1923828 () Regex!9521)

(assert (=> b!3074518 (= e!1923830 e!1923828)))

(declare-fun b!3074519 () Bool)

(assert (=> b!3074519 (= e!1923826 lt!1052107)))

(declare-fun b!3074520 () Bool)

(assert (=> b!3074520 (= e!1923834 EmptyLang!9521)))

(declare-fun b!3074521 () Bool)

(assert (=> b!3074521 (= e!1923828 EmptyExpr!9521)))

(declare-fun b!3074506 () Bool)

(assert (=> b!3074506 (= c!511444 ((_ is Union!9521) (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(assert (=> b!3074506 (= e!1923832 e!1923822)))

(declare-fun d!856674 () Bool)

(declare-fun e!1923829 () Bool)

(assert (=> d!856674 e!1923829))

(declare-fun res!1261731 () Bool)

(assert (=> d!856674 (=> (not res!1261731) (not e!1923829))))

(declare-fun lt!1052104 () Regex!9521)

(assert (=> d!856674 (= res!1261731 (validRegex!4254 lt!1052104))))

(assert (=> d!856674 (= lt!1052104 e!1923831)))

(declare-fun c!511450 () Bool)

(assert (=> d!856674 (= c!511450 ((_ is EmptyLang!9521) (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(assert (=> d!856674 (validRegex!4254 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))

(assert (=> d!856674 (= (simplify!476 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))) lt!1052104)))

(declare-fun bm!213785 () Bool)

(assert (=> bm!213785 (= call!213786 call!213790)))

(declare-fun b!3074522 () Bool)

(assert (=> b!3074522 (= e!1923831 EmptyLang!9521)))

(declare-fun b!3074523 () Bool)

(assert (=> b!3074523 (= e!1923829 (= (nullable!3167 lt!1052104) (nullable!3167 (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423))))))))

(declare-fun b!3074524 () Bool)

(assert (=> b!3074524 (= e!1923833 lt!1052103)))

(declare-fun bm!213786 () Bool)

(assert (=> bm!213786 (= call!213788 call!213789)))

(declare-fun b!3074525 () Bool)

(assert (=> b!3074525 (= e!1923822 e!1923834)))

(assert (=> b!3074525 (= lt!1052107 call!213786)))

(assert (=> b!3074525 (= lt!1052103 call!213791)))

(declare-fun res!1261732 () Bool)

(assert (=> b!3074525 (= res!1261732 call!213787)))

(assert (=> b!3074525 (=> res!1261732 e!1923824)))

(declare-fun c!511453 () Bool)

(assert (=> b!3074525 (= c!511453 e!1923824)))

(declare-fun b!3074526 () Bool)

(assert (=> b!3074526 (= e!1923828 e!1923832)))

(assert (=> b!3074526 (= c!511447 ((_ is Star!9521) (ite c!511360 (regOne!19555 (regTwo!19554 r!17423)) (regTwo!19554 (regTwo!19554 r!17423)))))))

(assert (= (and d!856674 c!511450) b!3074522))

(assert (= (and d!856674 (not c!511450)) b!3074513))

(assert (= (and b!3074513 c!511445) b!3074508))

(assert (= (and b!3074513 (not c!511445)) b!3074518))

(assert (= (and b!3074518 c!511448) b!3074521))

(assert (= (and b!3074518 (not c!511448)) b!3074526))

(assert (= (and b!3074526 c!511447) b!3074504))

(assert (= (and b!3074526 (not c!511447)) b!3074506))

(assert (= (and b!3074504 (not res!1261733)) b!3074507))

(assert (= (and b!3074504 c!511449) b!3074514))

(assert (= (and b!3074504 (not c!511449)) b!3074516))

(assert (= (and b!3074506 c!511444) b!3074517))

(assert (= (and b!3074506 (not c!511444)) b!3074525))

(assert (= (and b!3074517 c!511454) b!3074515))

(assert (= (and b!3074517 (not c!511454)) b!3074511))

(assert (= (and b!3074511 c!511452) b!3074509))

(assert (= (and b!3074511 (not c!511452)) b!3074512))

(assert (= (and b!3074525 (not res!1261732)) b!3074503))

(assert (= (and b!3074525 c!511453) b!3074520))

(assert (= (and b!3074525 (not c!511453)) b!3074502))

(assert (= (and b!3074502 c!511451) b!3074524))

(assert (= (and b!3074502 (not c!511451)) b!3074510))

(assert (= (and b!3074510 c!511446) b!3074519))

(assert (= (and b!3074510 (not c!511446)) b!3074505))

(assert (= (or b!3074517 b!3074525) bm!213781))

(assert (= (or b!3074517 b!3074525) bm!213785))

(assert (= (or b!3074517 b!3074525) bm!213780))

(assert (= (or b!3074511 b!3074503) bm!213786))

(assert (= (or b!3074507 b!3074502) bm!213782))

(assert (= (or b!3074504 bm!213785) bm!213784))

(assert (= (or b!3074504 bm!213786) bm!213783))

(assert (= (and d!856674 res!1261731) b!3074523))

(declare-fun m!3387163 () Bool)

(assert (=> d!856674 m!3387163))

(declare-fun m!3387165 () Bool)

(assert (=> d!856674 m!3387165))

(declare-fun m!3387167 () Bool)

(assert (=> b!3074523 m!3387167))

(declare-fun m!3387169 () Bool)

(assert (=> b!3074523 m!3387169))

(declare-fun m!3387171 () Bool)

(assert (=> b!3074510 m!3387171))

(declare-fun m!3387173 () Bool)

(assert (=> bm!213780 m!3387173))

(declare-fun m!3387175 () Bool)

(assert (=> bm!213783 m!3387175))

(declare-fun m!3387177 () Bool)

(assert (=> bm!213782 m!3387177))

(declare-fun m!3387179 () Bool)

(assert (=> bm!213781 m!3387179))

(declare-fun m!3387181 () Bool)

(assert (=> bm!213784 m!3387181))

(assert (=> bm!213725 d!856674))

(declare-fun d!856676 () Bool)

(assert (not d!856676))

(assert (=> b!3073695 d!856676))

(declare-fun d!856678 () Bool)

(assert (=> d!856678 (= (isEmptyExpr!578 lt!1052078) ((_ is EmptyExpr!9521) lt!1052078))))

(assert (=> b!3074266 d!856678))

(assert (=> bm!213708 d!856634))

(declare-fun c!511455 () Bool)

(declare-fun call!213794 () Bool)

(declare-fun lt!1052108 () Regex!9521)

(declare-fun lt!1052113 () Regex!9521)

(declare-fun bm!213787 () Bool)

(assert (=> bm!213787 (= call!213794 (isEmptyLang!572 (ite c!511455 lt!1052108 lt!1052113)))))

(declare-fun b!3074527 () Bool)

(declare-fun c!511462 () Bool)

(declare-fun call!213792 () Bool)

(assert (=> b!3074527 (= c!511462 call!213792)))

(declare-fun e!1923848 () Regex!9521)

(declare-fun e!1923847 () Regex!9521)

(assert (=> b!3074527 (= e!1923848 e!1923847)))

(declare-fun b!3074528 () Bool)

(declare-fun e!1923838 () Bool)

(declare-fun call!213795 () Bool)

(assert (=> b!3074528 (= e!1923838 call!213795)))

(declare-fun b!3074529 () Bool)

(declare-fun c!511460 () Bool)

(declare-fun e!1923839 () Bool)

(assert (=> b!3074529 (= c!511460 e!1923839)))

(declare-fun res!1261736 () Bool)

(assert (=> b!3074529 (=> res!1261736 e!1923839)))

(declare-fun call!213796 () Bool)

(assert (=> b!3074529 (= res!1261736 call!213796)))

(declare-fun lt!1052112 () Regex!9521)

(declare-fun call!213797 () Regex!9521)

(assert (=> b!3074529 (= lt!1052112 call!213797)))

(declare-fun e!1923846 () Regex!9521)

(declare-fun e!1923841 () Regex!9521)

(assert (=> b!3074529 (= e!1923846 e!1923841)))

(declare-fun b!3074530 () Bool)

(declare-fun e!1923840 () Regex!9521)

(declare-fun lt!1052109 () Regex!9521)

(assert (=> b!3074530 (= e!1923840 (Concat!14842 lt!1052113 lt!1052109))))

(declare-fun b!3074532 () Bool)

(assert (=> b!3074532 (= e!1923839 call!213792)))

(declare-fun e!1923844 () Regex!9521)

(declare-fun b!3074533 () Bool)

(assert (=> b!3074533 (= e!1923844 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))

(declare-fun bm!213788 () Bool)

(declare-fun call!213798 () Regex!9521)

(assert (=> bm!213788 (= call!213798 (simplify!476 (ite c!511455 (regOne!19555 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (regTwo!19554 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))))

(declare-fun b!3074534 () Bool)

(declare-fun e!1923837 () Regex!9521)

(assert (=> b!3074534 (= e!1923837 lt!1052108)))

(declare-fun c!511458 () Bool)

(declare-fun bm!213789 () Bool)

(assert (=> bm!213789 (= call!213792 (isEmptyExpr!578 (ite c!511458 lt!1052112 lt!1052113)))))

(declare-fun b!3074535 () Bool)

(assert (=> b!3074535 (= e!1923847 e!1923840)))

(declare-fun c!511457 () Bool)

(assert (=> b!3074535 (= c!511457 (isEmptyExpr!578 lt!1052109))))

(declare-fun b!3074536 () Bool)

(declare-fun c!511463 () Bool)

(assert (=> b!3074536 (= c!511463 call!213795)))

(declare-fun e!1923849 () Regex!9521)

(assert (=> b!3074536 (= e!1923849 e!1923837)))

(declare-fun b!3074537 () Bool)

(declare-fun lt!1052111 () Regex!9521)

(assert (=> b!3074537 (= e!1923837 (Union!9521 lt!1052108 lt!1052111))))

(declare-fun bm!213790 () Bool)

(assert (=> bm!213790 (= call!213796 (isEmptyLang!572 (ite c!511458 lt!1052112 (ite c!511455 lt!1052111 lt!1052109))))))

(declare-fun b!3074538 () Bool)

(declare-fun e!1923845 () Regex!9521)

(assert (=> b!3074538 (= e!1923845 e!1923844)))

(declare-fun c!511456 () Bool)

(assert (=> b!3074538 (= c!511456 ((_ is ElementMatch!9521) (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun bm!213791 () Bool)

(assert (=> bm!213791 (= call!213797 (simplify!476 (ite c!511458 (reg!9850 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (ite c!511455 (regTwo!19555 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (regOne!19554 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))))))

(declare-fun b!3074539 () Bool)

(assert (=> b!3074539 (= e!1923841 EmptyExpr!9521)))

(declare-fun b!3074540 () Bool)

(assert (=> b!3074540 (= e!1923849 lt!1052111)))

(declare-fun b!3074541 () Bool)

(assert (=> b!3074541 (= e!1923841 (Star!9521 lt!1052112))))

(declare-fun b!3074542 () Bool)

(declare-fun e!1923836 () Regex!9521)

(assert (=> b!3074542 (= e!1923836 e!1923849)))

(assert (=> b!3074542 (= lt!1052108 call!213798)))

(declare-fun call!213793 () Regex!9521)

(assert (=> b!3074542 (= lt!1052111 call!213793)))

(declare-fun c!511465 () Bool)

(assert (=> b!3074542 (= c!511465 call!213794)))

(declare-fun c!511459 () Bool)

(declare-fun b!3074543 () Bool)

(assert (=> b!3074543 (= c!511459 ((_ is EmptyExpr!9521) (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun e!1923842 () Regex!9521)

(assert (=> b!3074543 (= e!1923844 e!1923842)))

(declare-fun b!3074544 () Bool)

(assert (=> b!3074544 (= e!1923840 lt!1052113)))

(declare-fun b!3074545 () Bool)

(assert (=> b!3074545 (= e!1923848 EmptyLang!9521)))

(declare-fun b!3074546 () Bool)

(assert (=> b!3074546 (= e!1923842 EmptyExpr!9521)))

(declare-fun b!3074531 () Bool)

(assert (=> b!3074531 (= c!511455 ((_ is Union!9521) (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(assert (=> b!3074531 (= e!1923846 e!1923836)))

(declare-fun d!856680 () Bool)

(declare-fun e!1923843 () Bool)

(assert (=> d!856680 e!1923843))

(declare-fun res!1261734 () Bool)

(assert (=> d!856680 (=> (not res!1261734) (not e!1923843))))

(declare-fun lt!1052110 () Regex!9521)

(assert (=> d!856680 (= res!1261734 (validRegex!4254 lt!1052110))))

(assert (=> d!856680 (= lt!1052110 e!1923845)))

(declare-fun c!511461 () Bool)

(assert (=> d!856680 (= c!511461 ((_ is EmptyLang!9521) (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(assert (=> d!856680 (validRegex!4254 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))

(assert (=> d!856680 (= (simplify!476 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) lt!1052110)))

(declare-fun bm!213792 () Bool)

(assert (=> bm!213792 (= call!213793 call!213797)))

(declare-fun b!3074547 () Bool)

(assert (=> b!3074547 (= e!1923845 EmptyLang!9521)))

(declare-fun b!3074548 () Bool)

(assert (=> b!3074548 (= e!1923843 (= (nullable!3167 lt!1052110) (nullable!3167 (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))))

(declare-fun b!3074549 () Bool)

(assert (=> b!3074549 (= e!1923847 lt!1052109)))

(declare-fun bm!213793 () Bool)

(assert (=> bm!213793 (= call!213795 call!213796)))

(declare-fun b!3074550 () Bool)

(assert (=> b!3074550 (= e!1923836 e!1923848)))

(assert (=> b!3074550 (= lt!1052113 call!213793)))

(assert (=> b!3074550 (= lt!1052109 call!213798)))

(declare-fun res!1261735 () Bool)

(assert (=> b!3074550 (= res!1261735 call!213794)))

(assert (=> b!3074550 (=> res!1261735 e!1923838)))

(declare-fun c!511464 () Bool)

(assert (=> b!3074550 (= c!511464 e!1923838)))

(declare-fun b!3074551 () Bool)

(assert (=> b!3074551 (= e!1923842 e!1923846)))

(assert (=> b!3074551 (= c!511458 ((_ is Star!9521) (ite c!511363 (reg!9850 (regTwo!19554 r!17423)) (ite c!511360 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(assert (= (and d!856680 c!511461) b!3074547))

(assert (= (and d!856680 (not c!511461)) b!3074538))

(assert (= (and b!3074538 c!511456) b!3074533))

(assert (= (and b!3074538 (not c!511456)) b!3074543))

(assert (= (and b!3074543 c!511459) b!3074546))

(assert (= (and b!3074543 (not c!511459)) b!3074551))

(assert (= (and b!3074551 c!511458) b!3074529))

(assert (= (and b!3074551 (not c!511458)) b!3074531))

(assert (= (and b!3074529 (not res!1261736)) b!3074532))

(assert (= (and b!3074529 c!511460) b!3074539))

(assert (= (and b!3074529 (not c!511460)) b!3074541))

(assert (= (and b!3074531 c!511455) b!3074542))

(assert (= (and b!3074531 (not c!511455)) b!3074550))

(assert (= (and b!3074542 c!511465) b!3074540))

(assert (= (and b!3074542 (not c!511465)) b!3074536))

(assert (= (and b!3074536 c!511463) b!3074534))

(assert (= (and b!3074536 (not c!511463)) b!3074537))

(assert (= (and b!3074550 (not res!1261735)) b!3074528))

(assert (= (and b!3074550 c!511464) b!3074545))

(assert (= (and b!3074550 (not c!511464)) b!3074527))

(assert (= (and b!3074527 c!511462) b!3074549))

(assert (= (and b!3074527 (not c!511462)) b!3074535))

(assert (= (and b!3074535 c!511457) b!3074544))

(assert (= (and b!3074535 (not c!511457)) b!3074530))

(assert (= (or b!3074542 b!3074550) bm!213788))

(assert (= (or b!3074542 b!3074550) bm!213792))

(assert (= (or b!3074542 b!3074550) bm!213787))

(assert (= (or b!3074536 b!3074528) bm!213793))

(assert (= (or b!3074532 b!3074527) bm!213789))

(assert (= (or b!3074529 bm!213792) bm!213791))

(assert (= (or b!3074529 bm!213793) bm!213790))

(assert (= (and d!856680 res!1261734) b!3074548))

(declare-fun m!3387183 () Bool)

(assert (=> d!856680 m!3387183))

(declare-fun m!3387185 () Bool)

(assert (=> d!856680 m!3387185))

(declare-fun m!3387187 () Bool)

(assert (=> b!3074548 m!3387187))

(declare-fun m!3387189 () Bool)

(assert (=> b!3074548 m!3387189))

(declare-fun m!3387191 () Bool)

(assert (=> b!3074535 m!3387191))

(declare-fun m!3387193 () Bool)

(assert (=> bm!213787 m!3387193))

(declare-fun m!3387195 () Bool)

(assert (=> bm!213790 m!3387195))

(declare-fun m!3387197 () Bool)

(assert (=> bm!213789 m!3387197))

(declare-fun m!3387199 () Bool)

(assert (=> bm!213788 m!3387199))

(declare-fun m!3387201 () Bool)

(assert (=> bm!213791 m!3387201))

(assert (=> bm!213728 d!856680))

(declare-fun d!856682 () Bool)

(assert (=> d!856682 (= (nullable!3167 r!17423) (nullableFct!906 r!17423))))

(declare-fun bs!532699 () Bool)

(assert (= bs!532699 d!856682))

(declare-fun m!3387203 () Bool)

(assert (=> bs!532699 m!3387203))

(assert (=> b!3074105 d!856682))

(declare-fun d!856684 () Bool)

(declare-fun c!511466 () Bool)

(assert (=> d!856684 (= c!511466 ((_ is Nil!35262) lt!1051999))))

(declare-fun e!1923850 () (InoxSet C!19228))

(assert (=> d!856684 (= (content!4812 lt!1051999) e!1923850)))

(declare-fun b!3074552 () Bool)

(assert (=> b!3074552 (= e!1923850 ((as const (Array C!19228 Bool)) false))))

(declare-fun b!3074553 () Bool)

(assert (=> b!3074553 (= e!1923850 ((_ map or) (store ((as const (Array C!19228 Bool)) false) (h!40682 lt!1051999) true) (content!4812 (t!234451 lt!1051999))))))

(assert (= (and d!856684 c!511466) b!3074552))

(assert (= (and d!856684 (not c!511466)) b!3074553))

(declare-fun m!3387205 () Bool)

(assert (=> b!3074553 m!3387205))

(declare-fun m!3387207 () Bool)

(assert (=> b!3074553 m!3387207))

(assert (=> d!856532 d!856684))

(assert (=> d!856532 d!856626))

(assert (=> d!856532 d!856624))

(assert (=> bm!213699 d!856602))

(assert (=> bm!213707 d!856602))

(declare-fun d!856686 () Bool)

(assert (=> d!856686 (= (isEmptyLang!572 (ite c!511363 lt!1052075 (ite c!511360 lt!1052074 lt!1052072))) ((_ is EmptyLang!9521) (ite c!511363 lt!1052075 (ite c!511360 lt!1052074 lt!1052072))))))

(assert (=> bm!213727 d!856686))

(declare-fun d!856688 () Bool)

(assert (=> d!856688 (= (nullable!3167 lt!1051989) (nullableFct!906 lt!1051989))))

(declare-fun bs!532700 () Bool)

(assert (= bs!532700 d!856688))

(declare-fun m!3387209 () Bool)

(assert (=> bs!532700 m!3387209))

(assert (=> b!3074170 d!856688))

(assert (=> d!856588 d!856634))

(assert (=> d!856588 d!856528))

(declare-fun d!856690 () Bool)

(assert (not d!856690))

(assert (=> b!3074136 d!856690))

(declare-fun d!856692 () Bool)

(assert (not d!856692))

(assert (=> b!3074136 d!856692))

(assert (=> b!3074136 d!856620))

(assert (=> b!3074136 d!856610))

(assert (=> b!3074177 d!856614))

(assert (=> b!3074177 d!856616))

(declare-fun b!3074554 () Bool)

(declare-fun e!1923857 () Bool)

(declare-fun lt!1052114 () Bool)

(declare-fun call!213799 () Bool)

(assert (=> b!3074554 (= e!1923857 (= lt!1052114 call!213799))))

(declare-fun b!3074555 () Bool)

(declare-fun e!1923852 () Bool)

(assert (=> b!3074555 (= e!1923852 (nullable!3167 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993))))))

(declare-fun b!3074556 () Bool)

(declare-fun e!1923851 () Bool)

(assert (=> b!3074556 (= e!1923851 (not lt!1052114))))

(declare-fun b!3074557 () Bool)

(declare-fun e!1923853 () Bool)

(declare-fun e!1923854 () Bool)

(assert (=> b!3074557 (= e!1923853 e!1923854)))

(declare-fun res!1261743 () Bool)

(assert (=> b!3074557 (=> res!1261743 e!1923854)))

(assert (=> b!3074557 (= res!1261743 call!213799)))

(declare-fun bm!213794 () Bool)

(assert (=> bm!213794 (= call!213799 (isEmpty!19587 (tail!5048 s!11993)))))

(declare-fun b!3074558 () Bool)

(declare-fun res!1261741 () Bool)

(declare-fun e!1923856 () Bool)

(assert (=> b!3074558 (=> res!1261741 e!1923856)))

(declare-fun e!1923855 () Bool)

(assert (=> b!3074558 (= res!1261741 e!1923855)))

(declare-fun res!1261739 () Bool)

(assert (=> b!3074558 (=> (not res!1261739) (not e!1923855))))

(assert (=> b!3074558 (= res!1261739 lt!1052114)))

(declare-fun b!3074559 () Bool)

(declare-fun res!1261737 () Bool)

(assert (=> b!3074559 (=> res!1261737 e!1923854)))

(assert (=> b!3074559 (= res!1261737 (not (isEmpty!19587 (tail!5048 (tail!5048 s!11993)))))))

(declare-fun b!3074560 () Bool)

(declare-fun res!1261738 () Bool)

(assert (=> b!3074560 (=> (not res!1261738) (not e!1923855))))

(assert (=> b!3074560 (= res!1261738 (not call!213799))))

(declare-fun b!3074561 () Bool)

(declare-fun res!1261742 () Bool)

(assert (=> b!3074561 (=> res!1261742 e!1923856)))

(assert (=> b!3074561 (= res!1261742 (not ((_ is ElementMatch!9521) (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)))))))

(assert (=> b!3074561 (= e!1923851 e!1923856)))

(declare-fun d!856694 () Bool)

(assert (=> d!856694 e!1923857))

(declare-fun c!511468 () Bool)

(assert (=> d!856694 (= c!511468 ((_ is EmptyExpr!9521) (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993))))))

(assert (=> d!856694 (= lt!1052114 e!1923852)))

(declare-fun c!511467 () Bool)

(assert (=> d!856694 (= c!511467 (isEmpty!19587 (tail!5048 s!11993)))))

(assert (=> d!856694 (validRegex!4254 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)))))

(assert (=> d!856694 (= (matchR!4403 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)) (tail!5048 s!11993)) lt!1052114)))

(declare-fun b!3074562 () Bool)

(declare-fun res!1261744 () Bool)

(assert (=> b!3074562 (=> (not res!1261744) (not e!1923855))))

(assert (=> b!3074562 (= res!1261744 (isEmpty!19587 (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074563 () Bool)

(assert (=> b!3074563 (= e!1923852 (matchR!4403 (derivativeStep!2763 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)) (head!6822 (tail!5048 s!11993))) (tail!5048 (tail!5048 s!11993))))))

(declare-fun b!3074564 () Bool)

(assert (=> b!3074564 (= e!1923854 (not (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993))))))))

(declare-fun b!3074565 () Bool)

(assert (=> b!3074565 (= e!1923857 e!1923851)))

(declare-fun c!511469 () Bool)

(assert (=> b!3074565 (= c!511469 ((_ is EmptyLang!9521) (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993))))))

(declare-fun b!3074566 () Bool)

(assert (=> b!3074566 (= e!1923855 (= (head!6822 (tail!5048 s!11993)) (c!511199 (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)))))))

(declare-fun b!3074567 () Bool)

(assert (=> b!3074567 (= e!1923856 e!1923853)))

(declare-fun res!1261740 () Bool)

(assert (=> b!3074567 (=> (not res!1261740) (not e!1923853))))

(assert (=> b!3074567 (= res!1261740 (not lt!1052114))))

(assert (= (and d!856694 c!511467) b!3074555))

(assert (= (and d!856694 (not c!511467)) b!3074563))

(assert (= (and d!856694 c!511468) b!3074554))

(assert (= (and d!856694 (not c!511468)) b!3074565))

(assert (= (and b!3074565 c!511469) b!3074556))

(assert (= (and b!3074565 (not c!511469)) b!3074561))

(assert (= (and b!3074561 (not res!1261742)) b!3074558))

(assert (= (and b!3074558 res!1261739) b!3074560))

(assert (= (and b!3074560 res!1261738) b!3074562))

(assert (= (and b!3074562 res!1261744) b!3074566))

(assert (= (and b!3074558 (not res!1261741)) b!3074567))

(assert (= (and b!3074567 res!1261740) b!3074557))

(assert (= (and b!3074557 (not res!1261743)) b!3074559))

(assert (= (and b!3074559 (not res!1261737)) b!3074564))

(assert (= (or b!3074554 b!3074557 b!3074560) bm!213794))

(assert (=> b!3074566 m!3386771))

(assert (=> b!3074566 m!3387085))

(assert (=> b!3074563 m!3386771))

(assert (=> b!3074563 m!3387085))

(assert (=> b!3074563 m!3386985))

(assert (=> b!3074563 m!3387085))

(declare-fun m!3387211 () Bool)

(assert (=> b!3074563 m!3387211))

(assert (=> b!3074563 m!3386771))

(assert (=> b!3074563 m!3387089))

(assert (=> b!3074563 m!3387211))

(assert (=> b!3074563 m!3387089))

(declare-fun m!3387213 () Bool)

(assert (=> b!3074563 m!3387213))

(assert (=> bm!213794 m!3386771))

(assert (=> bm!213794 m!3386953))

(assert (=> b!3074559 m!3386771))

(assert (=> b!3074559 m!3387089))

(assert (=> b!3074559 m!3387089))

(assert (=> b!3074559 m!3387093))

(assert (=> b!3074555 m!3386985))

(declare-fun m!3387215 () Bool)

(assert (=> b!3074555 m!3387215))

(assert (=> b!3074562 m!3386771))

(assert (=> b!3074562 m!3387089))

(assert (=> b!3074562 m!3387089))

(assert (=> b!3074562 m!3387093))

(assert (=> b!3074564 m!3386771))

(assert (=> b!3074564 m!3387085))

(assert (=> d!856694 m!3386771))

(assert (=> d!856694 m!3386953))

(assert (=> d!856694 m!3386985))

(declare-fun m!3387217 () Bool)

(assert (=> d!856694 m!3387217))

(assert (=> b!3074150 d!856694))

(declare-fun b!3074568 () Bool)

(declare-fun e!1923860 () Regex!9521)

(declare-fun e!1923862 () Regex!9521)

(assert (=> b!3074568 (= e!1923860 e!1923862)))

(declare-fun c!511474 () Bool)

(assert (=> b!3074568 (= c!511474 ((_ is ElementMatch!9521) (regOne!19554 r!17423)))))

(declare-fun b!3074569 () Bool)

(assert (=> b!3074569 (= e!1923860 EmptyLang!9521)))

(declare-fun b!3074570 () Bool)

(declare-fun c!511471 () Bool)

(assert (=> b!3074570 (= c!511471 ((_ is Union!9521) (regOne!19554 r!17423)))))

(declare-fun e!1923858 () Regex!9521)

(assert (=> b!3074570 (= e!1923862 e!1923858)))

(declare-fun b!3074571 () Bool)

(declare-fun e!1923861 () Regex!9521)

(declare-fun call!213800 () Regex!9521)

(assert (=> b!3074571 (= e!1923861 (Concat!14842 call!213800 (regOne!19554 r!17423)))))

(declare-fun b!3074572 () Bool)

(declare-fun call!213802 () Regex!9521)

(declare-fun call!213801 () Regex!9521)

(declare-fun e!1923859 () Regex!9521)

(assert (=> b!3074572 (= e!1923859 (Union!9521 (Concat!14842 call!213801 (regTwo!19554 (regOne!19554 r!17423))) call!213802))))

(declare-fun b!3074573 () Bool)

(assert (=> b!3074573 (= e!1923859 (Union!9521 (Concat!14842 call!213801 (regTwo!19554 (regOne!19554 r!17423))) EmptyLang!9521))))

(declare-fun d!856696 () Bool)

(declare-fun lt!1052115 () Regex!9521)

(assert (=> d!856696 (validRegex!4254 lt!1052115)))

(assert (=> d!856696 (= lt!1052115 e!1923860)))

(declare-fun c!511473 () Bool)

(assert (=> d!856696 (= c!511473 (or ((_ is EmptyExpr!9521) (regOne!19554 r!17423)) ((_ is EmptyLang!9521) (regOne!19554 r!17423))))))

(assert (=> d!856696 (validRegex!4254 (regOne!19554 r!17423))))

(assert (=> d!856696 (= (derivativeStep!2763 (regOne!19554 r!17423) (head!6822 s!11993)) lt!1052115)))

(declare-fun bm!213795 () Bool)

(declare-fun call!213803 () Regex!9521)

(assert (=> bm!213795 (= call!213800 call!213803)))

(declare-fun bm!213796 () Bool)

(assert (=> bm!213796 (= call!213802 (derivativeStep!2763 (ite c!511471 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))) (head!6822 s!11993)))))

(declare-fun b!3074574 () Bool)

(assert (=> b!3074574 (= e!1923862 (ite (= (head!6822 s!11993) (c!511199 (regOne!19554 r!17423))) EmptyExpr!9521 EmptyLang!9521))))

(declare-fun b!3074575 () Bool)

(assert (=> b!3074575 (= e!1923858 (Union!9521 call!213802 call!213803))))

(declare-fun c!511470 () Bool)

(declare-fun bm!213797 () Bool)

(assert (=> bm!213797 (= call!213803 (derivativeStep!2763 (ite c!511471 (regTwo!19555 (regOne!19554 r!17423)) (ite c!511470 (reg!9850 (regOne!19554 r!17423)) (regOne!19554 (regOne!19554 r!17423)))) (head!6822 s!11993)))))

(declare-fun b!3074576 () Bool)

(assert (=> b!3074576 (= e!1923858 e!1923861)))

(assert (=> b!3074576 (= c!511470 ((_ is Star!9521) (regOne!19554 r!17423)))))

(declare-fun bm!213798 () Bool)

(assert (=> bm!213798 (= call!213801 call!213800)))

(declare-fun b!3074577 () Bool)

(declare-fun c!511472 () Bool)

(assert (=> b!3074577 (= c!511472 (nullable!3167 (regOne!19554 (regOne!19554 r!17423))))))

(assert (=> b!3074577 (= e!1923861 e!1923859)))

(assert (= (and d!856696 c!511473) b!3074569))

(assert (= (and d!856696 (not c!511473)) b!3074568))

(assert (= (and b!3074568 c!511474) b!3074574))

(assert (= (and b!3074568 (not c!511474)) b!3074570))

(assert (= (and b!3074570 c!511471) b!3074575))

(assert (= (and b!3074570 (not c!511471)) b!3074576))

(assert (= (and b!3074576 c!511470) b!3074571))

(assert (= (and b!3074576 (not c!511470)) b!3074577))

(assert (= (and b!3074577 c!511472) b!3074572))

(assert (= (and b!3074577 (not c!511472)) b!3074573))

(assert (= (or b!3074572 b!3074573) bm!213798))

(assert (= (or b!3074571 bm!213798) bm!213795))

(assert (= (or b!3074575 bm!213795) bm!213797))

(assert (= (or b!3074575 b!3074572) bm!213796))

(declare-fun m!3387219 () Bool)

(assert (=> d!856696 m!3387219))

(assert (=> d!856696 m!3386723))

(assert (=> bm!213796 m!3386777))

(declare-fun m!3387221 () Bool)

(assert (=> bm!213796 m!3387221))

(assert (=> bm!213797 m!3386777))

(declare-fun m!3387223 () Bool)

(assert (=> bm!213797 m!3387223))

(declare-fun m!3387225 () Bool)

(assert (=> b!3074577 m!3387225))

(assert (=> b!3074150 d!856696))

(assert (=> b!3074150 d!856604))

(assert (=> b!3074150 d!856616))

(assert (=> b!3074160 d!856608))

(assert (=> b!3074160 d!856610))

(declare-fun d!856698 () Bool)

(assert (not d!856698))

(assert (=> b!3073622 d!856698))

(assert (=> b!3073622 d!856610))

(assert (=> b!3073622 d!856616))

(assert (=> d!856576 d!856574))

(assert (=> d!856576 d!856534))

(declare-fun d!856700 () Bool)

(assert (=> d!856700 (= (matchR!4403 r!17423 s!11993) (matchRSpec!1658 r!17423 s!11993))))

(assert (=> d!856700 true))

(declare-fun _$88!3395 () Unit!49481)

(assert (=> d!856700 (= (choose!18211 r!17423 s!11993) _$88!3395)))

(declare-fun bs!532701 () Bool)

(assert (= bs!532701 d!856700))

(assert (=> bs!532701 m!3386741))

(assert (=> bs!532701 m!3386739))

(assert (=> d!856576 d!856700))

(assert (=> d!856576 d!856578))

(assert (=> b!3074146 d!856614))

(assert (=> b!3074146 d!856616))

(declare-fun d!856702 () Bool)

(declare-fun lt!1052116 () Int)

(assert (=> d!856702 (>= lt!1052116 0)))

(declare-fun e!1923863 () Int)

(assert (=> d!856702 (= lt!1052116 e!1923863)))

(declare-fun c!511475 () Bool)

(assert (=> d!856702 (= c!511475 ((_ is Nil!35262) lt!1051998))))

(assert (=> d!856702 (= (size!26567 lt!1051998) lt!1052116)))

(declare-fun b!3074578 () Bool)

(assert (=> b!3074578 (= e!1923863 0)))

(declare-fun b!3074579 () Bool)

(assert (=> b!3074579 (= e!1923863 (+ 1 (size!26567 (t!234451 lt!1051998))))))

(assert (= (and d!856702 c!511475) b!3074578))

(assert (= (and d!856702 (not c!511475)) b!3074579))

(declare-fun m!3387227 () Bool)

(assert (=> b!3074579 m!3387227))

(assert (=> b!3073683 d!856702))

(assert (=> b!3073683 d!856628))

(assert (=> b!3073683 d!856630))

(declare-fun d!856704 () Bool)

(assert (=> d!856704 (= (isEmptyLang!572 (ite c!511371 lt!1052077 lt!1052082)) ((_ is EmptyLang!9521) (ite c!511371 lt!1052077 lt!1052082)))))

(assert (=> bm!213731 d!856704))

(assert (=> b!3074114 d!856604))

(assert (=> b!3074181 d!856604))

(declare-fun d!856706 () Bool)

(assert (=> d!856706 (= (nullable!3167 lt!1051985) (nullableFct!906 lt!1051985))))

(declare-fun bs!532702 () Bool)

(assert (= bs!532702 d!856706))

(declare-fun m!3387229 () Bool)

(assert (=> bs!532702 m!3387229))

(assert (=> b!3074128 d!856706))

(assert (=> b!3074112 d!856614))

(assert (=> b!3074112 d!856616))

(assert (=> b!3074179 d!856604))

(declare-fun d!856708 () Bool)

(assert (not d!856708))

(assert (=> b!3074164 d!856708))

(declare-fun d!856710 () Bool)

(assert (not d!856710))

(assert (=> b!3074164 d!856710))

(assert (=> b!3074164 d!856620))

(assert (=> b!3074164 d!856610))

(declare-fun d!856712 () Bool)

(assert (=> d!856712 (= (nullable!3167 lt!1052079) (nullableFct!906 lt!1052079))))

(declare-fun bs!532703 () Bool)

(assert (= bs!532703 d!856712))

(declare-fun m!3387231 () Bool)

(assert (=> bs!532703 m!3387231))

(assert (=> b!3074279 d!856712))

(declare-fun d!856714 () Bool)

(assert (=> d!856714 (= (nullable!3167 (regOne!19554 r!17423)) (nullableFct!906 (regOne!19554 r!17423)))))

(declare-fun bs!532704 () Bool)

(assert (= bs!532704 d!856714))

(declare-fun m!3387233 () Bool)

(assert (=> bs!532704 m!3387233))

(assert (=> b!3074279 d!856714))

(assert (=> b!3074135 d!856608))

(assert (=> b!3074135 d!856610))

(declare-fun d!856716 () Bool)

(assert (=> d!856716 (= (isEmptyExpr!578 lt!1052072) ((_ is EmptyExpr!9521) lt!1052072))))

(assert (=> b!3074241 d!856716))

(declare-fun b!3074581 () Bool)

(declare-fun e!1923865 () List!35386)

(assert (=> b!3074581 (= e!1923865 (Cons!35262 (h!40682 (t!234451 s!11993)) (++!8472 (t!234451 (t!234451 s!11993)) Nil!35262)))))

(declare-fun b!3074582 () Bool)

(declare-fun res!1261745 () Bool)

(declare-fun e!1923864 () Bool)

(assert (=> b!3074582 (=> (not res!1261745) (not e!1923864))))

(declare-fun lt!1052117 () List!35386)

(assert (=> b!3074582 (= res!1261745 (= (size!26567 lt!1052117) (+ (size!26567 (t!234451 s!11993)) (size!26567 Nil!35262))))))

(declare-fun b!3074580 () Bool)

(assert (=> b!3074580 (= e!1923865 Nil!35262)))

(declare-fun d!856718 () Bool)

(assert (=> d!856718 e!1923864))

(declare-fun res!1261746 () Bool)

(assert (=> d!856718 (=> (not res!1261746) (not e!1923864))))

(assert (=> d!856718 (= res!1261746 (= (content!4812 lt!1052117) ((_ map or) (content!4812 (t!234451 s!11993)) (content!4812 Nil!35262))))))

(assert (=> d!856718 (= lt!1052117 e!1923865)))

(declare-fun c!511476 () Bool)

(assert (=> d!856718 (= c!511476 ((_ is Nil!35262) (t!234451 s!11993)))))

(assert (=> d!856718 (= (++!8472 (t!234451 s!11993) Nil!35262) lt!1052117)))

(declare-fun b!3074583 () Bool)

(assert (=> b!3074583 (= e!1923864 (or (not (= Nil!35262 Nil!35262)) (= lt!1052117 (t!234451 s!11993))))))

(assert (= (and d!856718 c!511476) b!3074580))

(assert (= (and d!856718 (not c!511476)) b!3074581))

(assert (= (and d!856718 res!1261746) b!3074582))

(assert (= (and b!3074582 res!1261745) b!3074583))

(declare-fun m!3387235 () Bool)

(assert (=> b!3074581 m!3387235))

(declare-fun m!3387237 () Bool)

(assert (=> b!3074582 m!3387237))

(assert (=> b!3074582 m!3387065))

(assert (=> b!3074582 m!3386767))

(declare-fun m!3387239 () Bool)

(assert (=> d!856718 m!3387239))

(assert (=> d!856718 m!3387063))

(assert (=> d!856718 m!3386793))

(assert (=> b!3073682 d!856718))

(declare-fun bm!213799 () Bool)

(declare-fun call!213805 () Bool)

(declare-fun call!213806 () Bool)

(assert (=> bm!213799 (= call!213805 call!213806)))

(declare-fun b!3074585 () Bool)

(declare-fun e!1923870 () Bool)

(declare-fun e!1923868 () Bool)

(assert (=> b!3074585 (= e!1923870 e!1923868)))

(declare-fun c!511478 () Bool)

(assert (=> b!3074585 (= c!511478 ((_ is Star!9521) (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun b!3074586 () Bool)

(declare-fun e!1923867 () Bool)

(declare-fun e!1923872 () Bool)

(assert (=> b!3074586 (= e!1923867 e!1923872)))

(declare-fun res!1261748 () Bool)

(assert (=> b!3074586 (=> (not res!1261748) (not e!1923872))))

(assert (=> b!3074586 (= res!1261748 call!213805)))

(declare-fun b!3074587 () Bool)

(declare-fun e!1923869 () Bool)

(assert (=> b!3074587 (= e!1923868 e!1923869)))

(declare-fun res!1261749 () Bool)

(assert (=> b!3074587 (= res!1261749 (not (nullable!3167 (reg!9850 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))))

(assert (=> b!3074587 (=> (not res!1261749) (not e!1923869))))

(declare-fun b!3074588 () Bool)

(declare-fun res!1261751 () Bool)

(assert (=> b!3074588 (=> res!1261751 e!1923867)))

(assert (=> b!3074588 (= res!1261751 (not ((_ is Concat!14842) (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))))

(declare-fun e!1923866 () Bool)

(assert (=> b!3074588 (= e!1923866 e!1923867)))

(declare-fun bm!213800 () Bool)

(declare-fun c!511477 () Bool)

(assert (=> bm!213800 (= call!213806 (validRegex!4254 (ite c!511478 (reg!9850 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (ite c!511477 (regTwo!19555 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (regOne!19554 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))))))

(declare-fun b!3074584 () Bool)

(assert (=> b!3074584 (= e!1923868 e!1923866)))

(assert (=> b!3074584 (= c!511477 ((_ is Union!9521) (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun d!856722 () Bool)

(declare-fun res!1261750 () Bool)

(assert (=> d!856722 (=> res!1261750 e!1923870)))

(assert (=> d!856722 (= res!1261750 ((_ is ElementMatch!9521) (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(assert (=> d!856722 (= (validRegex!4254 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) e!1923870)))

(declare-fun b!3074589 () Bool)

(assert (=> b!3074589 (= e!1923869 call!213806)))

(declare-fun b!3074590 () Bool)

(declare-fun e!1923871 () Bool)

(assert (=> b!3074590 (= e!1923871 call!213805)))

(declare-fun bm!213801 () Bool)

(declare-fun call!213804 () Bool)

(assert (=> bm!213801 (= call!213804 (validRegex!4254 (ite c!511477 (regOne!19555 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (regTwo!19554 (ite c!511212 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))))

(declare-fun b!3074591 () Bool)

(assert (=> b!3074591 (= e!1923872 call!213804)))

(declare-fun b!3074592 () Bool)

(declare-fun res!1261747 () Bool)

(assert (=> b!3074592 (=> (not res!1261747) (not e!1923871))))

(assert (=> b!3074592 (= res!1261747 call!213804)))

(assert (=> b!3074592 (= e!1923866 e!1923871)))

(assert (= (and d!856722 (not res!1261750)) b!3074585))

(assert (= (and b!3074585 c!511478) b!3074587))

(assert (= (and b!3074585 (not c!511478)) b!3074584))

(assert (= (and b!3074587 res!1261749) b!3074589))

(assert (= (and b!3074584 c!511477) b!3074592))

(assert (= (and b!3074584 (not c!511477)) b!3074588))

(assert (= (and b!3074592 res!1261747) b!3074590))

(assert (= (and b!3074588 (not res!1261751)) b!3074586))

(assert (= (and b!3074586 res!1261748) b!3074591))

(assert (= (or b!3074592 b!3074591) bm!213801))

(assert (= (or b!3074590 b!3074586) bm!213799))

(assert (= (or b!3074589 bm!213799) bm!213800))

(declare-fun m!3387241 () Bool)

(assert (=> b!3074587 m!3387241))

(declare-fun m!3387243 () Bool)

(assert (=> bm!213800 m!3387243))

(declare-fun m!3387245 () Bool)

(assert (=> bm!213801 m!3387245))

(assert (=> bm!213634 d!856722))

(declare-fun bs!532705 () Bool)

(declare-fun b!3074602 () Bool)

(assert (= bs!532705 (and b!3074602 b!3074070)))

(declare-fun lambda!114149 () Int)

(assert (=> bs!532705 (= (and (= (reg!9850 (regOne!19555 r!17423)) (reg!9850 r!17423)) (= (regOne!19555 r!17423) r!17423)) (= lambda!114149 lambda!114147))))

(declare-fun bs!532706 () Bool)

(assert (= bs!532706 (and b!3074602 b!3074061)))

(assert (=> bs!532706 (not (= lambda!114149 lambda!114148))))

(assert (=> b!3074602 true))

(assert (=> b!3074602 true))

(declare-fun bs!532707 () Bool)

(declare-fun b!3074593 () Bool)

(assert (= bs!532707 (and b!3074593 b!3074070)))

(declare-fun lambda!114150 () Int)

(assert (=> bs!532707 (not (= lambda!114150 lambda!114147))))

(declare-fun bs!532708 () Bool)

(assert (= bs!532708 (and b!3074593 b!3074061)))

(assert (=> bs!532708 (= (and (= (regOne!19554 (regOne!19555 r!17423)) (regOne!19554 r!17423)) (= (regTwo!19554 (regOne!19555 r!17423)) (regTwo!19554 r!17423))) (= lambda!114150 lambda!114148))))

(declare-fun bs!532709 () Bool)

(assert (= bs!532709 (and b!3074593 b!3074602)))

(assert (=> bs!532709 (not (= lambda!114150 lambda!114149))))

(assert (=> b!3074593 true))

(assert (=> b!3074593 true))

(declare-fun e!1923873 () Bool)

(declare-fun call!213807 () Bool)

(assert (=> b!3074593 (= e!1923873 call!213807)))

(declare-fun bm!213802 () Bool)

(declare-fun c!511479 () Bool)

(assert (=> bm!213802 (= call!213807 (Exists!1784 (ite c!511479 lambda!114149 lambda!114150)))))

(declare-fun b!3074594 () Bool)

(declare-fun c!511482 () Bool)

(assert (=> b!3074594 (= c!511482 ((_ is ElementMatch!9521) (regOne!19555 r!17423)))))

(declare-fun e!1923879 () Bool)

(declare-fun e!1923877 () Bool)

(assert (=> b!3074594 (= e!1923879 e!1923877)))

(declare-fun bm!213803 () Bool)

(declare-fun call!213808 () Bool)

(assert (=> bm!213803 (= call!213808 (isEmpty!19587 s!11993))))

(declare-fun b!3074595 () Bool)

(declare-fun e!1923874 () Bool)

(assert (=> b!3074595 (= e!1923874 e!1923879)))

(declare-fun res!1261754 () Bool)

(assert (=> b!3074595 (= res!1261754 (not ((_ is EmptyLang!9521) (regOne!19555 r!17423))))))

(assert (=> b!3074595 (=> (not res!1261754) (not e!1923879))))

(declare-fun b!3074596 () Bool)

(declare-fun e!1923875 () Bool)

(assert (=> b!3074596 (= e!1923875 e!1923873)))

(assert (=> b!3074596 (= c!511479 ((_ is Star!9521) (regOne!19555 r!17423)))))

(declare-fun b!3074597 () Bool)

(declare-fun e!1923878 () Bool)

(assert (=> b!3074597 (= e!1923878 (matchRSpec!1658 (regTwo!19555 (regOne!19555 r!17423)) s!11993))))

(declare-fun b!3074598 () Bool)

(declare-fun c!511480 () Bool)

(assert (=> b!3074598 (= c!511480 ((_ is Union!9521) (regOne!19555 r!17423)))))

(assert (=> b!3074598 (= e!1923877 e!1923875)))

(declare-fun b!3074599 () Bool)

(assert (=> b!3074599 (= e!1923874 call!213808)))

(declare-fun b!3074600 () Bool)

(assert (=> b!3074600 (= e!1923877 (= s!11993 (Cons!35262 (c!511199 (regOne!19555 r!17423)) Nil!35262)))))

(declare-fun b!3074601 () Bool)

(declare-fun res!1261752 () Bool)

(declare-fun e!1923876 () Bool)

(assert (=> b!3074601 (=> res!1261752 e!1923876)))

(assert (=> b!3074601 (= res!1261752 call!213808)))

(assert (=> b!3074601 (= e!1923873 e!1923876)))

(assert (=> b!3074602 (= e!1923876 call!213807)))

(declare-fun b!3074603 () Bool)

(assert (=> b!3074603 (= e!1923875 e!1923878)))

(declare-fun res!1261753 () Bool)

(assert (=> b!3074603 (= res!1261753 (matchRSpec!1658 (regOne!19555 (regOne!19555 r!17423)) s!11993))))

(assert (=> b!3074603 (=> res!1261753 e!1923878)))

(declare-fun d!856724 () Bool)

(declare-fun c!511481 () Bool)

(assert (=> d!856724 (= c!511481 ((_ is EmptyExpr!9521) (regOne!19555 r!17423)))))

(assert (=> d!856724 (= (matchRSpec!1658 (regOne!19555 r!17423) s!11993) e!1923874)))

(assert (= (and d!856724 c!511481) b!3074599))

(assert (= (and d!856724 (not c!511481)) b!3074595))

(assert (= (and b!3074595 res!1261754) b!3074594))

(assert (= (and b!3074594 c!511482) b!3074600))

(assert (= (and b!3074594 (not c!511482)) b!3074598))

(assert (= (and b!3074598 c!511480) b!3074603))

(assert (= (and b!3074598 (not c!511480)) b!3074596))

(assert (= (and b!3074603 (not res!1261753)) b!3074597))

(assert (= (and b!3074596 c!511479) b!3074601))

(assert (= (and b!3074596 (not c!511479)) b!3074593))

(assert (= (and b!3074601 (not res!1261752)) b!3074602))

(assert (= (or b!3074602 b!3074593) bm!213802))

(assert (= (or b!3074599 b!3074601) bm!213803))

(declare-fun m!3387247 () Bool)

(assert (=> bm!213802 m!3387247))

(assert (=> bm!213803 m!3386729))

(declare-fun m!3387251 () Bool)

(assert (=> b!3074597 m!3387251))

(declare-fun m!3387253 () Bool)

(assert (=> b!3074603 m!3387253))

(assert (=> b!3074071 d!856724))

(assert (=> b!3074116 d!856604))

(declare-fun bm!213804 () Bool)

(declare-fun call!213810 () Bool)

(declare-fun call!213811 () Bool)

(assert (=> bm!213804 (= call!213810 call!213811)))

(declare-fun b!3074611 () Bool)

(declare-fun e!1923887 () Bool)

(declare-fun e!1923885 () Bool)

(assert (=> b!3074611 (= e!1923887 e!1923885)))

(declare-fun c!511487 () Bool)

(assert (=> b!3074611 (= c!511487 ((_ is Star!9521) lt!1052079))))

(declare-fun b!3074612 () Bool)

(declare-fun e!1923884 () Bool)

(declare-fun e!1923889 () Bool)

(assert (=> b!3074612 (= e!1923884 e!1923889)))

(declare-fun res!1261756 () Bool)

(assert (=> b!3074612 (=> (not res!1261756) (not e!1923889))))

(assert (=> b!3074612 (= res!1261756 call!213810)))

(declare-fun b!3074613 () Bool)

(declare-fun e!1923886 () Bool)

(assert (=> b!3074613 (= e!1923885 e!1923886)))

(declare-fun res!1261757 () Bool)

(assert (=> b!3074613 (= res!1261757 (not (nullable!3167 (reg!9850 lt!1052079))))))

(assert (=> b!3074613 (=> (not res!1261757) (not e!1923886))))

(declare-fun b!3074614 () Bool)

(declare-fun res!1261759 () Bool)

(assert (=> b!3074614 (=> res!1261759 e!1923884)))

(assert (=> b!3074614 (= res!1261759 (not ((_ is Concat!14842) lt!1052079)))))

(declare-fun e!1923883 () Bool)

(assert (=> b!3074614 (= e!1923883 e!1923884)))

(declare-fun c!511486 () Bool)

(declare-fun bm!213805 () Bool)

(assert (=> bm!213805 (= call!213811 (validRegex!4254 (ite c!511487 (reg!9850 lt!1052079) (ite c!511486 (regTwo!19555 lt!1052079) (regOne!19554 lt!1052079)))))))

(declare-fun b!3074610 () Bool)

(assert (=> b!3074610 (= e!1923885 e!1923883)))

(assert (=> b!3074610 (= c!511486 ((_ is Union!9521) lt!1052079))))

(declare-fun d!856726 () Bool)

(declare-fun res!1261758 () Bool)

(assert (=> d!856726 (=> res!1261758 e!1923887)))

(assert (=> d!856726 (= res!1261758 ((_ is ElementMatch!9521) lt!1052079))))

(assert (=> d!856726 (= (validRegex!4254 lt!1052079) e!1923887)))

(declare-fun b!3074615 () Bool)

(assert (=> b!3074615 (= e!1923886 call!213811)))

(declare-fun b!3074616 () Bool)

(declare-fun e!1923888 () Bool)

(assert (=> b!3074616 (= e!1923888 call!213810)))

(declare-fun bm!213806 () Bool)

(declare-fun call!213809 () Bool)

(assert (=> bm!213806 (= call!213809 (validRegex!4254 (ite c!511486 (regOne!19555 lt!1052079) (regTwo!19554 lt!1052079))))))

(declare-fun b!3074617 () Bool)

(assert (=> b!3074617 (= e!1923889 call!213809)))

(declare-fun b!3074618 () Bool)

(declare-fun res!1261755 () Bool)

(assert (=> b!3074618 (=> (not res!1261755) (not e!1923888))))

(assert (=> b!3074618 (= res!1261755 call!213809)))

(assert (=> b!3074618 (= e!1923883 e!1923888)))

(assert (= (and d!856726 (not res!1261758)) b!3074611))

(assert (= (and b!3074611 c!511487) b!3074613))

(assert (= (and b!3074611 (not c!511487)) b!3074610))

(assert (= (and b!3074613 res!1261757) b!3074615))

(assert (= (and b!3074610 c!511486) b!3074618))

(assert (= (and b!3074610 (not c!511486)) b!3074614))

(assert (= (and b!3074618 res!1261755) b!3074616))

(assert (= (and b!3074614 (not res!1261759)) b!3074612))

(assert (= (and b!3074612 res!1261756) b!3074617))

(assert (= (or b!3074618 b!3074617) bm!213806))

(assert (= (or b!3074616 b!3074612) bm!213804))

(assert (= (or b!3074615 bm!213804) bm!213805))

(declare-fun m!3387261 () Bool)

(assert (=> b!3074613 m!3387261))

(declare-fun m!3387263 () Bool)

(assert (=> bm!213805 m!3387263))

(declare-fun m!3387265 () Bool)

(assert (=> bm!213806 m!3387265))

(assert (=> d!856598 d!856726))

(assert (=> d!856598 d!856524))

(assert (=> bm!213709 d!856602))

(declare-fun d!856732 () Bool)

(assert (=> d!856732 (= (isEmptyExpr!578 (ite c!511374 lt!1052081 lt!1052082)) ((_ is EmptyExpr!9521) (ite c!511374 lt!1052081 lt!1052082)))))

(assert (=> bm!213733 d!856732))

(assert (=> b!3074139 d!856620))

(declare-fun d!856734 () Bool)

(assert (=> d!856734 (= (nullable!3167 (reg!9850 (regTwo!19554 r!17423))) (nullableFct!906 (reg!9850 (regTwo!19554 r!17423))))))

(declare-fun bs!532710 () Bool)

(assert (= bs!532710 d!856734))

(declare-fun m!3387267 () Bool)

(assert (=> bs!532710 m!3387267))

(assert (=> b!3073688 d!856734))

(declare-fun bm!213807 () Bool)

(declare-fun call!213813 () Bool)

(declare-fun call!213814 () Bool)

(assert (=> bm!213807 (= call!213813 call!213814)))

(declare-fun b!3074622 () Bool)

(declare-fun e!1923895 () Bool)

(declare-fun e!1923893 () Bool)

(assert (=> b!3074622 (= e!1923895 e!1923893)))

(declare-fun c!511490 () Bool)

(assert (=> b!3074622 (= c!511490 ((_ is Star!9521) (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))

(declare-fun b!3074623 () Bool)

(declare-fun e!1923892 () Bool)

(declare-fun e!1923897 () Bool)

(assert (=> b!3074623 (= e!1923892 e!1923897)))

(declare-fun res!1261761 () Bool)

(assert (=> b!3074623 (=> (not res!1261761) (not e!1923897))))

(assert (=> b!3074623 (= res!1261761 call!213813)))

(declare-fun b!3074624 () Bool)

(declare-fun e!1923894 () Bool)

(assert (=> b!3074624 (= e!1923893 e!1923894)))

(declare-fun res!1261762 () Bool)

(assert (=> b!3074624 (= res!1261762 (not (nullable!3167 (reg!9850 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))))

(assert (=> b!3074624 (=> (not res!1261762) (not e!1923894))))

(declare-fun b!3074625 () Bool)

(declare-fun res!1261764 () Bool)

(assert (=> b!3074625 (=> res!1261764 e!1923892)))

(assert (=> b!3074625 (= res!1261764 (not ((_ is Concat!14842) (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423)))))))

(declare-fun e!1923891 () Bool)

(assert (=> b!3074625 (= e!1923891 e!1923892)))

(declare-fun c!511489 () Bool)

(declare-fun bm!213808 () Bool)

(assert (=> bm!213808 (= call!213814 (validRegex!4254 (ite c!511490 (reg!9850 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))) (ite c!511489 (regTwo!19555 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))) (regOne!19554 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423)))))))))

(declare-fun b!3074621 () Bool)

(assert (=> b!3074621 (= e!1923893 e!1923891)))

(assert (=> b!3074621 (= c!511489 ((_ is Union!9521) (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))

(declare-fun d!856736 () Bool)

(declare-fun res!1261763 () Bool)

(assert (=> d!856736 (=> res!1261763 e!1923895)))

(assert (=> d!856736 (= res!1261763 ((_ is ElementMatch!9521) (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))

(assert (=> d!856736 (= (validRegex!4254 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))) e!1923895)))

(declare-fun b!3074626 () Bool)

(assert (=> b!3074626 (= e!1923894 call!213814)))

(declare-fun b!3074627 () Bool)

(declare-fun e!1923896 () Bool)

(assert (=> b!3074627 (= e!1923896 call!213813)))

(declare-fun call!213812 () Bool)

(declare-fun bm!213809 () Bool)

(assert (=> bm!213809 (= call!213812 (validRegex!4254 (ite c!511489 (regOne!19555 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))) (regTwo!19554 (ite c!511324 (regOne!19555 r!17423) (regTwo!19554 r!17423))))))))

(declare-fun b!3074628 () Bool)

(assert (=> b!3074628 (= e!1923897 call!213812)))

(declare-fun b!3074629 () Bool)

(declare-fun res!1261760 () Bool)

(assert (=> b!3074629 (=> (not res!1261760) (not e!1923896))))

(assert (=> b!3074629 (= res!1261760 call!213812)))

(assert (=> b!3074629 (= e!1923891 e!1923896)))

(assert (= (and d!856736 (not res!1261763)) b!3074622))

(assert (= (and b!3074622 c!511490) b!3074624))

(assert (= (and b!3074622 (not c!511490)) b!3074621))

(assert (= (and b!3074624 res!1261762) b!3074626))

(assert (= (and b!3074621 c!511489) b!3074629))

(assert (= (and b!3074621 (not c!511489)) b!3074625))

(assert (= (and b!3074629 res!1261760) b!3074627))

(assert (= (and b!3074625 (not res!1261764)) b!3074623))

(assert (= (and b!3074623 res!1261761) b!3074628))

(assert (= (or b!3074629 b!3074628) bm!213809))

(assert (= (or b!3074627 b!3074623) bm!213807))

(assert (= (or b!3074626 bm!213807) bm!213808))

(declare-fun m!3387269 () Bool)

(assert (=> b!3074624 m!3387269))

(declare-fun m!3387271 () Bool)

(assert (=> bm!213808 m!3387271))

(declare-fun m!3387273 () Bool)

(assert (=> bm!213809 m!3387273))

(assert (=> bm!213705 d!856736))

(declare-fun lt!1052118 () Regex!9521)

(declare-fun call!213817 () Bool)

(declare-fun lt!1052123 () Regex!9521)

(declare-fun c!511491 () Bool)

(declare-fun bm!213810 () Bool)

(assert (=> bm!213810 (= call!213817 (isEmptyLang!572 (ite c!511491 lt!1052118 lt!1052123)))))

(declare-fun b!3074630 () Bool)

(declare-fun c!511498 () Bool)

(declare-fun call!213815 () Bool)

(assert (=> b!3074630 (= c!511498 call!213815)))

(declare-fun e!1923910 () Regex!9521)

(declare-fun e!1923909 () Regex!9521)

(assert (=> b!3074630 (= e!1923910 e!1923909)))

(declare-fun b!3074631 () Bool)

(declare-fun e!1923900 () Bool)

(declare-fun call!213818 () Bool)

(assert (=> b!3074631 (= e!1923900 call!213818)))

(declare-fun b!3074632 () Bool)

(declare-fun c!511496 () Bool)

(declare-fun e!1923901 () Bool)

(assert (=> b!3074632 (= c!511496 e!1923901)))

(declare-fun res!1261767 () Bool)

(assert (=> b!3074632 (=> res!1261767 e!1923901)))

(declare-fun call!213819 () Bool)

(assert (=> b!3074632 (= res!1261767 call!213819)))

(declare-fun lt!1052122 () Regex!9521)

(declare-fun call!213820 () Regex!9521)

(assert (=> b!3074632 (= lt!1052122 call!213820)))

(declare-fun e!1923908 () Regex!9521)

(declare-fun e!1923903 () Regex!9521)

(assert (=> b!3074632 (= e!1923908 e!1923903)))

(declare-fun b!3074633 () Bool)

(declare-fun e!1923902 () Regex!9521)

(declare-fun lt!1052119 () Regex!9521)

(assert (=> b!3074633 (= e!1923902 (Concat!14842 lt!1052123 lt!1052119))))

(declare-fun b!3074635 () Bool)

(assert (=> b!3074635 (= e!1923901 call!213815)))

(declare-fun b!3074636 () Bool)

(declare-fun e!1923906 () Regex!9521)

(assert (=> b!3074636 (= e!1923906 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))

(declare-fun call!213821 () Regex!9521)

(declare-fun bm!213811 () Bool)

(assert (=> bm!213811 (= call!213821 (simplify!476 (ite c!511491 (regOne!19555 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (regTwo!19554 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))))

(declare-fun b!3074637 () Bool)

(declare-fun e!1923899 () Regex!9521)

(assert (=> b!3074637 (= e!1923899 lt!1052118)))

(declare-fun bm!213812 () Bool)

(declare-fun c!511494 () Bool)

(assert (=> bm!213812 (= call!213815 (isEmptyExpr!578 (ite c!511494 lt!1052122 lt!1052123)))))

(declare-fun b!3074638 () Bool)

(assert (=> b!3074638 (= e!1923909 e!1923902)))

(declare-fun c!511493 () Bool)

(assert (=> b!3074638 (= c!511493 (isEmptyExpr!578 lt!1052119))))

(declare-fun b!3074639 () Bool)

(declare-fun c!511499 () Bool)

(assert (=> b!3074639 (= c!511499 call!213818)))

(declare-fun e!1923911 () Regex!9521)

(assert (=> b!3074639 (= e!1923911 e!1923899)))

(declare-fun b!3074640 () Bool)

(declare-fun lt!1052121 () Regex!9521)

(assert (=> b!3074640 (= e!1923899 (Union!9521 lt!1052118 lt!1052121))))

(declare-fun bm!213813 () Bool)

(assert (=> bm!213813 (= call!213819 (isEmptyLang!572 (ite c!511494 lt!1052122 (ite c!511491 lt!1052121 lt!1052119))))))

(declare-fun b!3074641 () Bool)

(declare-fun e!1923907 () Regex!9521)

(assert (=> b!3074641 (= e!1923907 e!1923906)))

(declare-fun c!511492 () Bool)

(assert (=> b!3074641 (= c!511492 ((_ is ElementMatch!9521) (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun bm!213814 () Bool)

(assert (=> bm!213814 (= call!213820 (simplify!476 (ite c!511494 (reg!9850 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (ite c!511491 (regTwo!19555 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) (regOne!19554 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))))))

(declare-fun b!3074642 () Bool)

(assert (=> b!3074642 (= e!1923903 EmptyExpr!9521)))

(declare-fun b!3074643 () Bool)

(assert (=> b!3074643 (= e!1923911 lt!1052121)))

(declare-fun b!3074644 () Bool)

(assert (=> b!3074644 (= e!1923903 (Star!9521 lt!1052122))))

(declare-fun b!3074645 () Bool)

(declare-fun e!1923898 () Regex!9521)

(assert (=> b!3074645 (= e!1923898 e!1923911)))

(assert (=> b!3074645 (= lt!1052118 call!213821)))

(declare-fun call!213816 () Regex!9521)

(assert (=> b!3074645 (= lt!1052121 call!213816)))

(declare-fun c!511501 () Bool)

(assert (=> b!3074645 (= c!511501 call!213817)))

(declare-fun b!3074646 () Bool)

(declare-fun c!511495 () Bool)

(assert (=> b!3074646 (= c!511495 ((_ is EmptyExpr!9521) (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(declare-fun e!1923904 () Regex!9521)

(assert (=> b!3074646 (= e!1923906 e!1923904)))

(declare-fun b!3074647 () Bool)

(assert (=> b!3074647 (= e!1923902 lt!1052123)))

(declare-fun b!3074648 () Bool)

(assert (=> b!3074648 (= e!1923910 EmptyLang!9521)))

(declare-fun b!3074649 () Bool)

(assert (=> b!3074649 (= e!1923904 EmptyExpr!9521)))

(declare-fun b!3074634 () Bool)

(assert (=> b!3074634 (= c!511491 ((_ is Union!9521) (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(assert (=> b!3074634 (= e!1923908 e!1923898)))

(declare-fun d!856742 () Bool)

(declare-fun e!1923905 () Bool)

(assert (=> d!856742 e!1923905))

(declare-fun res!1261765 () Bool)

(assert (=> d!856742 (=> (not res!1261765) (not e!1923905))))

(declare-fun lt!1052120 () Regex!9521)

(assert (=> d!856742 (= res!1261765 (validRegex!4254 lt!1052120))))

(assert (=> d!856742 (= lt!1052120 e!1923907)))

(declare-fun c!511497 () Bool)

(assert (=> d!856742 (= c!511497 ((_ is EmptyLang!9521) (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(assert (=> d!856742 (validRegex!4254 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))

(assert (=> d!856742 (= (simplify!476 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))) lt!1052120)))

(declare-fun bm!213815 () Bool)

(assert (=> bm!213815 (= call!213816 call!213820)))

(declare-fun b!3074650 () Bool)

(assert (=> b!3074650 (= e!1923907 EmptyLang!9521)))

(declare-fun b!3074651 () Bool)

(assert (=> b!3074651 (= e!1923905 (= (nullable!3167 lt!1052120) (nullable!3167 (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423))))))))

(declare-fun b!3074652 () Bool)

(assert (=> b!3074652 (= e!1923909 lt!1052119)))

(declare-fun bm!213816 () Bool)

(assert (=> bm!213816 (= call!213818 call!213819)))

(declare-fun b!3074653 () Bool)

(assert (=> b!3074653 (= e!1923898 e!1923910)))

(assert (=> b!3074653 (= lt!1052123 call!213816)))

(assert (=> b!3074653 (= lt!1052119 call!213821)))

(declare-fun res!1261766 () Bool)

(assert (=> b!3074653 (= res!1261766 call!213817)))

(assert (=> b!3074653 (=> res!1261766 e!1923900)))

(declare-fun c!511500 () Bool)

(assert (=> b!3074653 (= c!511500 e!1923900)))

(declare-fun b!3074654 () Bool)

(assert (=> b!3074654 (= e!1923904 e!1923908)))

(assert (=> b!3074654 (= c!511494 ((_ is Star!9521) (ite c!511371 (regOne!19555 (regOne!19554 r!17423)) (regTwo!19554 (regOne!19554 r!17423)))))))

(assert (= (and d!856742 c!511497) b!3074650))

(assert (= (and d!856742 (not c!511497)) b!3074641))

(assert (= (and b!3074641 c!511492) b!3074636))

(assert (= (and b!3074641 (not c!511492)) b!3074646))

(assert (= (and b!3074646 c!511495) b!3074649))

(assert (= (and b!3074646 (not c!511495)) b!3074654))

(assert (= (and b!3074654 c!511494) b!3074632))

(assert (= (and b!3074654 (not c!511494)) b!3074634))

(assert (= (and b!3074632 (not res!1261767)) b!3074635))

(assert (= (and b!3074632 c!511496) b!3074642))

(assert (= (and b!3074632 (not c!511496)) b!3074644))

(assert (= (and b!3074634 c!511491) b!3074645))

(assert (= (and b!3074634 (not c!511491)) b!3074653))

(assert (= (and b!3074645 c!511501) b!3074643))

(assert (= (and b!3074645 (not c!511501)) b!3074639))

(assert (= (and b!3074639 c!511499) b!3074637))

(assert (= (and b!3074639 (not c!511499)) b!3074640))

(assert (= (and b!3074653 (not res!1261766)) b!3074631))

(assert (= (and b!3074653 c!511500) b!3074648))

(assert (= (and b!3074653 (not c!511500)) b!3074630))

(assert (= (and b!3074630 c!511498) b!3074652))

(assert (= (and b!3074630 (not c!511498)) b!3074638))

(assert (= (and b!3074638 c!511493) b!3074647))

(assert (= (and b!3074638 (not c!511493)) b!3074633))

(assert (= (or b!3074645 b!3074653) bm!213811))

(assert (= (or b!3074645 b!3074653) bm!213815))

(assert (= (or b!3074645 b!3074653) bm!213810))

(assert (= (or b!3074639 b!3074631) bm!213816))

(assert (= (or b!3074635 b!3074630) bm!213812))

(assert (= (or b!3074632 bm!213815) bm!213814))

(assert (= (or b!3074632 bm!213816) bm!213813))

(assert (= (and d!856742 res!1261765) b!3074651))

(declare-fun m!3387275 () Bool)

(assert (=> d!856742 m!3387275))

(declare-fun m!3387277 () Bool)

(assert (=> d!856742 m!3387277))

(declare-fun m!3387279 () Bool)

(assert (=> b!3074651 m!3387279))

(declare-fun m!3387281 () Bool)

(assert (=> b!3074651 m!3387281))

(declare-fun m!3387283 () Bool)

(assert (=> b!3074638 m!3387283))

(declare-fun m!3387285 () Bool)

(assert (=> bm!213810 m!3387285))

(declare-fun m!3387287 () Bool)

(assert (=> bm!213813 m!3387287))

(declare-fun m!3387289 () Bool)

(assert (=> bm!213812 m!3387289))

(declare-fun m!3387291 () Bool)

(assert (=> bm!213811 m!3387291))

(declare-fun m!3387293 () Bool)

(assert (=> bm!213814 m!3387293))

(assert (=> bm!213732 d!856742))

(assert (=> b!3074156 d!856640))

(assert (=> b!3074137 d!856620))

(assert (=> d!856590 d!856602))

(declare-fun bm!213820 () Bool)

(declare-fun call!213826 () Bool)

(declare-fun call!213827 () Bool)

(assert (=> bm!213820 (= call!213826 call!213827)))

(declare-fun b!3074665 () Bool)

(declare-fun e!1923923 () Bool)

(declare-fun e!1923921 () Bool)

(assert (=> b!3074665 (= e!1923923 e!1923921)))

(declare-fun c!511505 () Bool)

(assert (=> b!3074665 (= c!511505 ((_ is Star!9521) lt!1051989))))

(declare-fun b!3074666 () Bool)

(declare-fun e!1923920 () Bool)

(declare-fun e!1923925 () Bool)

(assert (=> b!3074666 (= e!1923920 e!1923925)))

(declare-fun res!1261774 () Bool)

(assert (=> b!3074666 (=> (not res!1261774) (not e!1923925))))

(assert (=> b!3074666 (= res!1261774 call!213826)))

(declare-fun b!3074667 () Bool)

(declare-fun e!1923922 () Bool)

(assert (=> b!3074667 (= e!1923921 e!1923922)))

(declare-fun res!1261775 () Bool)

(assert (=> b!3074667 (= res!1261775 (not (nullable!3167 (reg!9850 lt!1051989))))))

(assert (=> b!3074667 (=> (not res!1261775) (not e!1923922))))

(declare-fun b!3074668 () Bool)

(declare-fun res!1261777 () Bool)

(assert (=> b!3074668 (=> res!1261777 e!1923920)))

(assert (=> b!3074668 (= res!1261777 (not ((_ is Concat!14842) lt!1051989)))))

(declare-fun e!1923919 () Bool)

(assert (=> b!3074668 (= e!1923919 e!1923920)))

(declare-fun c!511504 () Bool)

(declare-fun bm!213821 () Bool)

(assert (=> bm!213821 (= call!213827 (validRegex!4254 (ite c!511505 (reg!9850 lt!1051989) (ite c!511504 (regTwo!19555 lt!1051989) (regOne!19554 lt!1051989)))))))

(declare-fun b!3074664 () Bool)

(assert (=> b!3074664 (= e!1923921 e!1923919)))

(assert (=> b!3074664 (= c!511504 ((_ is Union!9521) lt!1051989))))

(declare-fun d!856748 () Bool)

(declare-fun res!1261776 () Bool)

(assert (=> d!856748 (=> res!1261776 e!1923923)))

(assert (=> d!856748 (= res!1261776 ((_ is ElementMatch!9521) lt!1051989))))

(assert (=> d!856748 (= (validRegex!4254 lt!1051989) e!1923923)))

(declare-fun b!3074669 () Bool)

(assert (=> b!3074669 (= e!1923922 call!213827)))

(declare-fun b!3074670 () Bool)

(declare-fun e!1923924 () Bool)

(assert (=> b!3074670 (= e!1923924 call!213826)))

(declare-fun bm!213822 () Bool)

(declare-fun call!213825 () Bool)

(assert (=> bm!213822 (= call!213825 (validRegex!4254 (ite c!511504 (regOne!19555 lt!1051989) (regTwo!19554 lt!1051989))))))

(declare-fun b!3074671 () Bool)

(assert (=> b!3074671 (= e!1923925 call!213825)))

(declare-fun b!3074672 () Bool)

(declare-fun res!1261773 () Bool)

(assert (=> b!3074672 (=> (not res!1261773) (not e!1923924))))

(assert (=> b!3074672 (= res!1261773 call!213825)))

(assert (=> b!3074672 (= e!1923919 e!1923924)))

(assert (= (and d!856748 (not res!1261776)) b!3074665))

(assert (= (and b!3074665 c!511505) b!3074667))

(assert (= (and b!3074665 (not c!511505)) b!3074664))

(assert (= (and b!3074667 res!1261775) b!3074669))

(assert (= (and b!3074664 c!511504) b!3074672))

(assert (= (and b!3074664 (not c!511504)) b!3074668))

(assert (= (and b!3074672 res!1261773) b!3074670))

(assert (= (and b!3074668 (not res!1261777)) b!3074666))

(assert (= (and b!3074666 res!1261774) b!3074671))

(assert (= (or b!3074672 b!3074671) bm!213822))

(assert (= (or b!3074670 b!3074666) bm!213820))

(assert (= (or b!3074669 bm!213820) bm!213821))

(declare-fun m!3387295 () Bool)

(assert (=> b!3074667 m!3387295))

(declare-fun m!3387297 () Bool)

(assert (=> bm!213821 m!3387297))

(declare-fun m!3387299 () Bool)

(assert (=> bm!213822 m!3387299))

(assert (=> d!856590 d!856748))

(declare-fun bs!532711 () Bool)

(declare-fun b!3074682 () Bool)

(assert (= bs!532711 (and b!3074682 b!3074070)))

(declare-fun lambda!114151 () Int)

(assert (=> bs!532711 (= (and (= (reg!9850 (regTwo!19555 r!17423)) (reg!9850 r!17423)) (= (regTwo!19555 r!17423) r!17423)) (= lambda!114151 lambda!114147))))

(declare-fun bs!532712 () Bool)

(assert (= bs!532712 (and b!3074682 b!3074061)))

(assert (=> bs!532712 (not (= lambda!114151 lambda!114148))))

(declare-fun bs!532713 () Bool)

(assert (= bs!532713 (and b!3074682 b!3074602)))

(assert (=> bs!532713 (= (and (= (reg!9850 (regTwo!19555 r!17423)) (reg!9850 (regOne!19555 r!17423))) (= (regTwo!19555 r!17423) (regOne!19555 r!17423))) (= lambda!114151 lambda!114149))))

(declare-fun bs!532714 () Bool)

(assert (= bs!532714 (and b!3074682 b!3074593)))

(assert (=> bs!532714 (not (= lambda!114151 lambda!114150))))

(assert (=> b!3074682 true))

(assert (=> b!3074682 true))

(declare-fun bs!532715 () Bool)

(declare-fun b!3074673 () Bool)

(assert (= bs!532715 (and b!3074673 b!3074602)))

(declare-fun lambda!114152 () Int)

(assert (=> bs!532715 (not (= lambda!114152 lambda!114149))))

(declare-fun bs!532716 () Bool)

(assert (= bs!532716 (and b!3074673 b!3074682)))

(assert (=> bs!532716 (not (= lambda!114152 lambda!114151))))

(declare-fun bs!532717 () Bool)

(assert (= bs!532717 (and b!3074673 b!3074061)))

(assert (=> bs!532717 (= (and (= (regOne!19554 (regTwo!19555 r!17423)) (regOne!19554 r!17423)) (= (regTwo!19554 (regTwo!19555 r!17423)) (regTwo!19554 r!17423))) (= lambda!114152 lambda!114148))))

(declare-fun bs!532718 () Bool)

(assert (= bs!532718 (and b!3074673 b!3074593)))

(assert (=> bs!532718 (= (and (= (regOne!19554 (regTwo!19555 r!17423)) (regOne!19554 (regOne!19555 r!17423))) (= (regTwo!19554 (regTwo!19555 r!17423)) (regTwo!19554 (regOne!19555 r!17423)))) (= lambda!114152 lambda!114150))))

(declare-fun bs!532719 () Bool)

(assert (= bs!532719 (and b!3074673 b!3074070)))

(assert (=> bs!532719 (not (= lambda!114152 lambda!114147))))

(assert (=> b!3074673 true))

(assert (=> b!3074673 true))

(declare-fun e!1923926 () Bool)

(declare-fun call!213828 () Bool)

(assert (=> b!3074673 (= e!1923926 call!213828)))

(declare-fun bm!213823 () Bool)

(declare-fun c!511506 () Bool)

(assert (=> bm!213823 (= call!213828 (Exists!1784 (ite c!511506 lambda!114151 lambda!114152)))))

(declare-fun b!3074674 () Bool)

(declare-fun c!511509 () Bool)

(assert (=> b!3074674 (= c!511509 ((_ is ElementMatch!9521) (regTwo!19555 r!17423)))))

(declare-fun e!1923932 () Bool)

(declare-fun e!1923930 () Bool)

(assert (=> b!3074674 (= e!1923932 e!1923930)))

(declare-fun bm!213824 () Bool)

(declare-fun call!213829 () Bool)

(assert (=> bm!213824 (= call!213829 (isEmpty!19587 s!11993))))

(declare-fun b!3074675 () Bool)

(declare-fun e!1923927 () Bool)

(assert (=> b!3074675 (= e!1923927 e!1923932)))

(declare-fun res!1261780 () Bool)

(assert (=> b!3074675 (= res!1261780 (not ((_ is EmptyLang!9521) (regTwo!19555 r!17423))))))

(assert (=> b!3074675 (=> (not res!1261780) (not e!1923932))))

(declare-fun b!3074676 () Bool)

(declare-fun e!1923928 () Bool)

(assert (=> b!3074676 (= e!1923928 e!1923926)))

(assert (=> b!3074676 (= c!511506 ((_ is Star!9521) (regTwo!19555 r!17423)))))

(declare-fun b!3074677 () Bool)

(declare-fun e!1923931 () Bool)

(assert (=> b!3074677 (= e!1923931 (matchRSpec!1658 (regTwo!19555 (regTwo!19555 r!17423)) s!11993))))

(declare-fun b!3074678 () Bool)

(declare-fun c!511507 () Bool)

(assert (=> b!3074678 (= c!511507 ((_ is Union!9521) (regTwo!19555 r!17423)))))

(assert (=> b!3074678 (= e!1923930 e!1923928)))

(declare-fun b!3074679 () Bool)

(assert (=> b!3074679 (= e!1923927 call!213829)))

(declare-fun b!3074680 () Bool)

(assert (=> b!3074680 (= e!1923930 (= s!11993 (Cons!35262 (c!511199 (regTwo!19555 r!17423)) Nil!35262)))))

(declare-fun b!3074681 () Bool)

(declare-fun res!1261778 () Bool)

(declare-fun e!1923929 () Bool)

(assert (=> b!3074681 (=> res!1261778 e!1923929)))

(assert (=> b!3074681 (= res!1261778 call!213829)))

(assert (=> b!3074681 (= e!1923926 e!1923929)))

(assert (=> b!3074682 (= e!1923929 call!213828)))

(declare-fun b!3074683 () Bool)

(assert (=> b!3074683 (= e!1923928 e!1923931)))

(declare-fun res!1261779 () Bool)

(assert (=> b!3074683 (= res!1261779 (matchRSpec!1658 (regOne!19555 (regTwo!19555 r!17423)) s!11993))))

(assert (=> b!3074683 (=> res!1261779 e!1923931)))

(declare-fun d!856750 () Bool)

(declare-fun c!511508 () Bool)

(assert (=> d!856750 (= c!511508 ((_ is EmptyExpr!9521) (regTwo!19555 r!17423)))))

(assert (=> d!856750 (= (matchRSpec!1658 (regTwo!19555 r!17423) s!11993) e!1923927)))

(assert (= (and d!856750 c!511508) b!3074679))

(assert (= (and d!856750 (not c!511508)) b!3074675))

(assert (= (and b!3074675 res!1261780) b!3074674))

(assert (= (and b!3074674 c!511509) b!3074680))

(assert (= (and b!3074674 (not c!511509)) b!3074678))

(assert (= (and b!3074678 c!511507) b!3074683))

(assert (= (and b!3074678 (not c!511507)) b!3074676))

(assert (= (and b!3074683 (not res!1261779)) b!3074677))

(assert (= (and b!3074676 c!511506) b!3074681))

(assert (= (and b!3074676 (not c!511506)) b!3074673))

(assert (= (and b!3074681 (not res!1261778)) b!3074682))

(assert (= (or b!3074682 b!3074673) bm!213823))

(assert (= (or b!3074679 b!3074681) bm!213824))

(declare-fun m!3387307 () Bool)

(assert (=> bm!213823 m!3387307))

(assert (=> bm!213824 m!3386729))

(declare-fun m!3387309 () Bool)

(assert (=> b!3074677 m!3387309))

(declare-fun m!3387311 () Bool)

(assert (=> b!3074683 m!3387311))

(assert (=> b!3074065 d!856750))

(declare-fun bm!213832 () Bool)

(declare-fun call!213838 () Bool)

(declare-fun call!213839 () Bool)

(assert (=> bm!213832 (= call!213838 call!213839)))

(declare-fun b!3074710 () Bool)

(declare-fun e!1923951 () Bool)

(declare-fun e!1923949 () Bool)

(assert (=> b!3074710 (= e!1923951 e!1923949)))

(declare-fun c!511522 () Bool)

(assert (=> b!3074710 (= c!511522 ((_ is Star!9521) (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun b!3074711 () Bool)

(declare-fun e!1923948 () Bool)

(declare-fun e!1923953 () Bool)

(assert (=> b!3074711 (= e!1923948 e!1923953)))

(declare-fun res!1261785 () Bool)

(assert (=> b!3074711 (=> (not res!1261785) (not e!1923953))))

(assert (=> b!3074711 (= res!1261785 call!213838)))

(declare-fun b!3074712 () Bool)

(declare-fun e!1923950 () Bool)

(assert (=> b!3074712 (= e!1923949 e!1923950)))

(declare-fun res!1261786 () Bool)

(assert (=> b!3074712 (= res!1261786 (not (nullable!3167 (reg!9850 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))))

(assert (=> b!3074712 (=> (not res!1261786) (not e!1923950))))

(declare-fun b!3074713 () Bool)

(declare-fun res!1261788 () Bool)

(assert (=> b!3074713 (=> res!1261788 e!1923948)))

(assert (=> b!3074713 (= res!1261788 (not ((_ is Concat!14842) (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))))

(declare-fun e!1923947 () Bool)

(assert (=> b!3074713 (= e!1923947 e!1923948)))

(declare-fun bm!213833 () Bool)

(declare-fun c!511521 () Bool)

(assert (=> bm!213833 (= call!213839 (validRegex!4254 (ite c!511522 (reg!9850 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (ite c!511521 (regTwo!19555 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (regOne!19554 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423)))))))))))

(declare-fun b!3074709 () Bool)

(assert (=> b!3074709 (= e!1923949 e!1923947)))

(assert (=> b!3074709 (= c!511521 ((_ is Union!9521) (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(declare-fun d!856764 () Bool)

(declare-fun res!1261787 () Bool)

(assert (=> d!856764 (=> res!1261787 e!1923951)))

(assert (=> d!856764 (= res!1261787 ((_ is ElementMatch!9521) (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))

(assert (=> d!856764 (= (validRegex!4254 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) e!1923951)))

(declare-fun b!3074714 () Bool)

(assert (=> b!3074714 (= e!1923950 call!213839)))

(declare-fun b!3074715 () Bool)

(declare-fun e!1923952 () Bool)

(assert (=> b!3074715 (= e!1923952 call!213838)))

(declare-fun call!213837 () Bool)

(declare-fun bm!213834 () Bool)

(assert (=> bm!213834 (= call!213837 (validRegex!4254 (ite c!511521 (regOne!19555 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))) (regTwo!19554 (ite c!511218 (reg!9850 (regTwo!19554 r!17423)) (ite c!511217 (regTwo!19555 (regTwo!19554 r!17423)) (regOne!19554 (regTwo!19554 r!17423))))))))))

(declare-fun b!3074716 () Bool)

(assert (=> b!3074716 (= e!1923953 call!213837)))

(declare-fun b!3074717 () Bool)

(declare-fun res!1261784 () Bool)

(assert (=> b!3074717 (=> (not res!1261784) (not e!1923952))))

(assert (=> b!3074717 (= res!1261784 call!213837)))

(assert (=> b!3074717 (= e!1923947 e!1923952)))

(assert (= (and d!856764 (not res!1261787)) b!3074710))

(assert (= (and b!3074710 c!511522) b!3074712))

(assert (= (and b!3074710 (not c!511522)) b!3074709))

(assert (= (and b!3074712 res!1261786) b!3074714))

(assert (= (and b!3074709 c!511521) b!3074717))

(assert (= (and b!3074709 (not c!511521)) b!3074713))

(assert (= (and b!3074717 res!1261784) b!3074715))

(assert (= (and b!3074713 (not res!1261788)) b!3074711))

(assert (= (and b!3074711 res!1261785) b!3074716))

(assert (= (or b!3074717 b!3074716) bm!213834))

(assert (= (or b!3074715 b!3074711) bm!213832))

(assert (= (or b!3074714 bm!213832) bm!213833))

(declare-fun m!3387313 () Bool)

(assert (=> b!3074712 m!3387313))

(declare-fun m!3387315 () Bool)

(assert (=> bm!213833 m!3387315))

(declare-fun m!3387317 () Bool)

(assert (=> bm!213834 m!3387317))

(assert (=> bm!213636 d!856764))

(assert (=> b!3074142 d!856714))

(declare-fun e!1923954 () Bool)

(assert (=> b!3074307 (= tp!969298 e!1923954)))

(declare-fun b!3074721 () Bool)

(declare-fun tp!969310 () Bool)

(declare-fun tp!969312 () Bool)

(assert (=> b!3074721 (= e!1923954 (and tp!969310 tp!969312))))

(declare-fun b!3074720 () Bool)

(declare-fun tp!969311 () Bool)

(assert (=> b!3074720 (= e!1923954 tp!969311)))

(declare-fun b!3074718 () Bool)

(assert (=> b!3074718 (= e!1923954 tp_is_empty!16605)))

(declare-fun b!3074719 () Bool)

(declare-fun tp!969313 () Bool)

(declare-fun tp!969314 () Bool)

(assert (=> b!3074719 (= e!1923954 (and tp!969313 tp!969314))))

(assert (= (and b!3074307 ((_ is ElementMatch!9521) (regOne!19554 (regTwo!19555 r!17423)))) b!3074718))

(assert (= (and b!3074307 ((_ is Concat!14842) (regOne!19554 (regTwo!19555 r!17423)))) b!3074719))

(assert (= (and b!3074307 ((_ is Star!9521) (regOne!19554 (regTwo!19555 r!17423)))) b!3074720))

(assert (= (and b!3074307 ((_ is Union!9521) (regOne!19554 (regTwo!19555 r!17423)))) b!3074721))

(declare-fun e!1923955 () Bool)

(assert (=> b!3074307 (= tp!969299 e!1923955)))

(declare-fun b!3074725 () Bool)

(declare-fun tp!969315 () Bool)

(declare-fun tp!969317 () Bool)

(assert (=> b!3074725 (= e!1923955 (and tp!969315 tp!969317))))

(declare-fun b!3074724 () Bool)

(declare-fun tp!969316 () Bool)

(assert (=> b!3074724 (= e!1923955 tp!969316)))

(declare-fun b!3074722 () Bool)

(assert (=> b!3074722 (= e!1923955 tp_is_empty!16605)))

(declare-fun b!3074723 () Bool)

(declare-fun tp!969318 () Bool)

(declare-fun tp!969319 () Bool)

(assert (=> b!3074723 (= e!1923955 (and tp!969318 tp!969319))))

(assert (= (and b!3074307 ((_ is ElementMatch!9521) (regTwo!19554 (regTwo!19555 r!17423)))) b!3074722))

(assert (= (and b!3074307 ((_ is Concat!14842) (regTwo!19554 (regTwo!19555 r!17423)))) b!3074723))

(assert (= (and b!3074307 ((_ is Star!9521) (regTwo!19554 (regTwo!19555 r!17423)))) b!3074724))

(assert (= (and b!3074307 ((_ is Union!9521) (regTwo!19554 (regTwo!19555 r!17423)))) b!3074725))

(declare-fun e!1923956 () Bool)

(assert (=> b!3074316 (= tp!969306 e!1923956)))

(declare-fun b!3074729 () Bool)

(declare-fun tp!969320 () Bool)

(declare-fun tp!969322 () Bool)

(assert (=> b!3074729 (= e!1923956 (and tp!969320 tp!969322))))

(declare-fun b!3074728 () Bool)

(declare-fun tp!969321 () Bool)

(assert (=> b!3074728 (= e!1923956 tp!969321)))

(declare-fun b!3074726 () Bool)

(assert (=> b!3074726 (= e!1923956 tp_is_empty!16605)))

(declare-fun b!3074727 () Bool)

(declare-fun tp!969323 () Bool)

(declare-fun tp!969324 () Bool)

(assert (=> b!3074727 (= e!1923956 (and tp!969323 tp!969324))))

(assert (= (and b!3074316 ((_ is ElementMatch!9521) (reg!9850 (regTwo!19554 r!17423)))) b!3074726))

(assert (= (and b!3074316 ((_ is Concat!14842) (reg!9850 (regTwo!19554 r!17423)))) b!3074727))

(assert (= (and b!3074316 ((_ is Star!9521) (reg!9850 (regTwo!19554 r!17423)))) b!3074728))

(assert (= (and b!3074316 ((_ is Union!9521) (reg!9850 (regTwo!19554 r!17423)))) b!3074729))

(declare-fun b!3074730 () Bool)

(declare-fun e!1923957 () Bool)

(declare-fun tp!969325 () Bool)

(assert (=> b!3074730 (= e!1923957 (and tp_is_empty!16605 tp!969325))))

(assert (=> b!3074287 (= tp!969274 e!1923957)))

(assert (= (and b!3074287 ((_ is Cons!35262) (t!234451 (t!234451 s!11993)))) b!3074730))

(declare-fun e!1923958 () Bool)

(assert (=> b!3074311 (= tp!969303 e!1923958)))

(declare-fun b!3074734 () Bool)

(declare-fun tp!969326 () Bool)

(declare-fun tp!969328 () Bool)

(assert (=> b!3074734 (= e!1923958 (and tp!969326 tp!969328))))

(declare-fun b!3074733 () Bool)

(declare-fun tp!969327 () Bool)

(assert (=> b!3074733 (= e!1923958 tp!969327)))

(declare-fun b!3074731 () Bool)

(assert (=> b!3074731 (= e!1923958 tp_is_empty!16605)))

(declare-fun b!3074732 () Bool)

(declare-fun tp!969329 () Bool)

(declare-fun tp!969330 () Bool)

(assert (=> b!3074732 (= e!1923958 (and tp!969329 tp!969330))))

(assert (= (and b!3074311 ((_ is ElementMatch!9521) (regOne!19554 (regOne!19554 r!17423)))) b!3074731))

(assert (= (and b!3074311 ((_ is Concat!14842) (regOne!19554 (regOne!19554 r!17423)))) b!3074732))

(assert (= (and b!3074311 ((_ is Star!9521) (regOne!19554 (regOne!19554 r!17423)))) b!3074733))

(assert (= (and b!3074311 ((_ is Union!9521) (regOne!19554 (regOne!19554 r!17423)))) b!3074734))

(declare-fun e!1923959 () Bool)

(assert (=> b!3074311 (= tp!969304 e!1923959)))

(declare-fun b!3074738 () Bool)

(declare-fun tp!969331 () Bool)

(declare-fun tp!969333 () Bool)

(assert (=> b!3074738 (= e!1923959 (and tp!969331 tp!969333))))

(declare-fun b!3074737 () Bool)

(declare-fun tp!969332 () Bool)

(assert (=> b!3074737 (= e!1923959 tp!969332)))

(declare-fun b!3074735 () Bool)

(assert (=> b!3074735 (= e!1923959 tp_is_empty!16605)))

(declare-fun b!3074736 () Bool)

(declare-fun tp!969334 () Bool)

(declare-fun tp!969335 () Bool)

(assert (=> b!3074736 (= e!1923959 (and tp!969334 tp!969335))))

(assert (= (and b!3074311 ((_ is ElementMatch!9521) (regTwo!19554 (regOne!19554 r!17423)))) b!3074735))

(assert (= (and b!3074311 ((_ is Concat!14842) (regTwo!19554 (regOne!19554 r!17423)))) b!3074736))

(assert (= (and b!3074311 ((_ is Star!9521) (regTwo!19554 (regOne!19554 r!17423)))) b!3074737))

(assert (= (and b!3074311 ((_ is Union!9521) (regTwo!19554 (regOne!19554 r!17423)))) b!3074738))

(declare-fun e!1923967 () Bool)

(assert (=> b!3074315 (= tp!969308 e!1923967)))

(declare-fun b!3074753 () Bool)

(declare-fun tp!969336 () Bool)

(declare-fun tp!969338 () Bool)

(assert (=> b!3074753 (= e!1923967 (and tp!969336 tp!969338))))

(declare-fun b!3074752 () Bool)

(declare-fun tp!969337 () Bool)

(assert (=> b!3074752 (= e!1923967 tp!969337)))

(declare-fun b!3074750 () Bool)

(assert (=> b!3074750 (= e!1923967 tp_is_empty!16605)))

(declare-fun b!3074751 () Bool)

(declare-fun tp!969339 () Bool)

(declare-fun tp!969340 () Bool)

(assert (=> b!3074751 (= e!1923967 (and tp!969339 tp!969340))))

(assert (= (and b!3074315 ((_ is ElementMatch!9521) (regOne!19554 (regTwo!19554 r!17423)))) b!3074750))

(assert (= (and b!3074315 ((_ is Concat!14842) (regOne!19554 (regTwo!19554 r!17423)))) b!3074751))

(assert (= (and b!3074315 ((_ is Star!9521) (regOne!19554 (regTwo!19554 r!17423)))) b!3074752))

(assert (= (and b!3074315 ((_ is Union!9521) (regOne!19554 (regTwo!19554 r!17423)))) b!3074753))

(declare-fun e!1923968 () Bool)

(assert (=> b!3074315 (= tp!969309 e!1923968)))

(declare-fun b!3074757 () Bool)

(declare-fun tp!969341 () Bool)

(declare-fun tp!969343 () Bool)

(assert (=> b!3074757 (= e!1923968 (and tp!969341 tp!969343))))

(declare-fun b!3074756 () Bool)

(declare-fun tp!969342 () Bool)

(assert (=> b!3074756 (= e!1923968 tp!969342)))

(declare-fun b!3074754 () Bool)

(assert (=> b!3074754 (= e!1923968 tp_is_empty!16605)))

(declare-fun b!3074755 () Bool)

(declare-fun tp!969344 () Bool)

(declare-fun tp!969345 () Bool)

(assert (=> b!3074755 (= e!1923968 (and tp!969344 tp!969345))))

(assert (= (and b!3074315 ((_ is ElementMatch!9521) (regTwo!19554 (regTwo!19554 r!17423)))) b!3074754))

(assert (= (and b!3074315 ((_ is Concat!14842) (regTwo!19554 (regTwo!19554 r!17423)))) b!3074755))

(assert (= (and b!3074315 ((_ is Star!9521) (regTwo!19554 (regTwo!19554 r!17423)))) b!3074756))

(assert (= (and b!3074315 ((_ is Union!9521) (regTwo!19554 (regTwo!19554 r!17423)))) b!3074757))

(declare-fun e!1923969 () Bool)

(assert (=> b!3074301 (= tp!969285 e!1923969)))

(declare-fun b!3074761 () Bool)

(declare-fun tp!969346 () Bool)

(declare-fun tp!969348 () Bool)

(assert (=> b!3074761 (= e!1923969 (and tp!969346 tp!969348))))

(declare-fun b!3074760 () Bool)

(declare-fun tp!969347 () Bool)

(assert (=> b!3074760 (= e!1923969 tp!969347)))

(declare-fun b!3074758 () Bool)

(assert (=> b!3074758 (= e!1923969 tp_is_empty!16605)))

(declare-fun b!3074759 () Bool)

(declare-fun tp!969349 () Bool)

(declare-fun tp!969350 () Bool)

(assert (=> b!3074759 (= e!1923969 (and tp!969349 tp!969350))))

(assert (= (and b!3074301 ((_ is ElementMatch!9521) (regOne!19555 (reg!9850 r!17423)))) b!3074758))

(assert (= (and b!3074301 ((_ is Concat!14842) (regOne!19555 (reg!9850 r!17423)))) b!3074759))

(assert (= (and b!3074301 ((_ is Star!9521) (regOne!19555 (reg!9850 r!17423)))) b!3074760))

(assert (= (and b!3074301 ((_ is Union!9521) (regOne!19555 (reg!9850 r!17423)))) b!3074761))

(declare-fun e!1923970 () Bool)

(assert (=> b!3074301 (= tp!969287 e!1923970)))

(declare-fun b!3074765 () Bool)

(declare-fun tp!969351 () Bool)

(declare-fun tp!969353 () Bool)

(assert (=> b!3074765 (= e!1923970 (and tp!969351 tp!969353))))

(declare-fun b!3074764 () Bool)

(declare-fun tp!969352 () Bool)

(assert (=> b!3074764 (= e!1923970 tp!969352)))

(declare-fun b!3074762 () Bool)

(assert (=> b!3074762 (= e!1923970 tp_is_empty!16605)))

(declare-fun b!3074763 () Bool)

(declare-fun tp!969354 () Bool)

(declare-fun tp!969355 () Bool)

(assert (=> b!3074763 (= e!1923970 (and tp!969354 tp!969355))))

(assert (= (and b!3074301 ((_ is ElementMatch!9521) (regTwo!19555 (reg!9850 r!17423)))) b!3074762))

(assert (= (and b!3074301 ((_ is Concat!14842) (regTwo!19555 (reg!9850 r!17423)))) b!3074763))

(assert (= (and b!3074301 ((_ is Star!9521) (regTwo!19555 (reg!9850 r!17423)))) b!3074764))

(assert (= (and b!3074301 ((_ is Union!9521) (regTwo!19555 (reg!9850 r!17423)))) b!3074765))

(declare-fun e!1923971 () Bool)

(assert (=> b!3074305 (= tp!969290 e!1923971)))

(declare-fun b!3074769 () Bool)

(declare-fun tp!969356 () Bool)

(declare-fun tp!969358 () Bool)

(assert (=> b!3074769 (= e!1923971 (and tp!969356 tp!969358))))

(declare-fun b!3074768 () Bool)

(declare-fun tp!969357 () Bool)

(assert (=> b!3074768 (= e!1923971 tp!969357)))

(declare-fun b!3074766 () Bool)

(assert (=> b!3074766 (= e!1923971 tp_is_empty!16605)))

(declare-fun b!3074767 () Bool)

(declare-fun tp!969359 () Bool)

(declare-fun tp!969360 () Bool)

(assert (=> b!3074767 (= e!1923971 (and tp!969359 tp!969360))))

(assert (= (and b!3074305 ((_ is ElementMatch!9521) (regOne!19555 (regOne!19555 r!17423)))) b!3074766))

(assert (= (and b!3074305 ((_ is Concat!14842) (regOne!19555 (regOne!19555 r!17423)))) b!3074767))

(assert (= (and b!3074305 ((_ is Star!9521) (regOne!19555 (regOne!19555 r!17423)))) b!3074768))

(assert (= (and b!3074305 ((_ is Union!9521) (regOne!19555 (regOne!19555 r!17423)))) b!3074769))

(declare-fun e!1923972 () Bool)

(assert (=> b!3074305 (= tp!969292 e!1923972)))

(declare-fun b!3074773 () Bool)

(declare-fun tp!969361 () Bool)

(declare-fun tp!969363 () Bool)

(assert (=> b!3074773 (= e!1923972 (and tp!969361 tp!969363))))

(declare-fun b!3074772 () Bool)

(declare-fun tp!969362 () Bool)

(assert (=> b!3074772 (= e!1923972 tp!969362)))

(declare-fun b!3074770 () Bool)

(assert (=> b!3074770 (= e!1923972 tp_is_empty!16605)))

(declare-fun b!3074771 () Bool)

(declare-fun tp!969364 () Bool)

(declare-fun tp!969365 () Bool)

(assert (=> b!3074771 (= e!1923972 (and tp!969364 tp!969365))))

(assert (= (and b!3074305 ((_ is ElementMatch!9521) (regTwo!19555 (regOne!19555 r!17423)))) b!3074770))

(assert (= (and b!3074305 ((_ is Concat!14842) (regTwo!19555 (regOne!19555 r!17423)))) b!3074771))

(assert (= (and b!3074305 ((_ is Star!9521) (regTwo!19555 (regOne!19555 r!17423)))) b!3074772))

(assert (= (and b!3074305 ((_ is Union!9521) (regTwo!19555 (regOne!19555 r!17423)))) b!3074773))

(declare-fun e!1923973 () Bool)

(assert (=> b!3074300 (= tp!969286 e!1923973)))

(declare-fun b!3074777 () Bool)

(declare-fun tp!969366 () Bool)

(declare-fun tp!969368 () Bool)

(assert (=> b!3074777 (= e!1923973 (and tp!969366 tp!969368))))

(declare-fun b!3074776 () Bool)

(declare-fun tp!969367 () Bool)

(assert (=> b!3074776 (= e!1923973 tp!969367)))

(declare-fun b!3074774 () Bool)

(assert (=> b!3074774 (= e!1923973 tp_is_empty!16605)))

(declare-fun b!3074775 () Bool)

(declare-fun tp!969369 () Bool)

(declare-fun tp!969370 () Bool)

(assert (=> b!3074775 (= e!1923973 (and tp!969369 tp!969370))))

(assert (= (and b!3074300 ((_ is ElementMatch!9521) (reg!9850 (reg!9850 r!17423)))) b!3074774))

(assert (= (and b!3074300 ((_ is Concat!14842) (reg!9850 (reg!9850 r!17423)))) b!3074775))

(assert (= (and b!3074300 ((_ is Star!9521) (reg!9850 (reg!9850 r!17423)))) b!3074776))

(assert (= (and b!3074300 ((_ is Union!9521) (reg!9850 (reg!9850 r!17423)))) b!3074777))

(declare-fun e!1923974 () Bool)

(assert (=> b!3074309 (= tp!969295 e!1923974)))

(declare-fun b!3074781 () Bool)

(declare-fun tp!969371 () Bool)

(declare-fun tp!969373 () Bool)

(assert (=> b!3074781 (= e!1923974 (and tp!969371 tp!969373))))

(declare-fun b!3074780 () Bool)

(declare-fun tp!969372 () Bool)

(assert (=> b!3074780 (= e!1923974 tp!969372)))

(declare-fun b!3074778 () Bool)

(assert (=> b!3074778 (= e!1923974 tp_is_empty!16605)))

(declare-fun b!3074779 () Bool)

(declare-fun tp!969374 () Bool)

(declare-fun tp!969375 () Bool)

(assert (=> b!3074779 (= e!1923974 (and tp!969374 tp!969375))))

(assert (= (and b!3074309 ((_ is ElementMatch!9521) (regOne!19555 (regTwo!19555 r!17423)))) b!3074778))

(assert (= (and b!3074309 ((_ is Concat!14842) (regOne!19555 (regTwo!19555 r!17423)))) b!3074779))

(assert (= (and b!3074309 ((_ is Star!9521) (regOne!19555 (regTwo!19555 r!17423)))) b!3074780))

(assert (= (and b!3074309 ((_ is Union!9521) (regOne!19555 (regTwo!19555 r!17423)))) b!3074781))

(declare-fun e!1923975 () Bool)

(assert (=> b!3074309 (= tp!969297 e!1923975)))

(declare-fun b!3074785 () Bool)

(declare-fun tp!969376 () Bool)

(declare-fun tp!969378 () Bool)

(assert (=> b!3074785 (= e!1923975 (and tp!969376 tp!969378))))

(declare-fun b!3074784 () Bool)

(declare-fun tp!969377 () Bool)

(assert (=> b!3074784 (= e!1923975 tp!969377)))

(declare-fun b!3074782 () Bool)

(assert (=> b!3074782 (= e!1923975 tp_is_empty!16605)))

(declare-fun b!3074783 () Bool)

(declare-fun tp!969379 () Bool)

(declare-fun tp!969380 () Bool)

(assert (=> b!3074783 (= e!1923975 (and tp!969379 tp!969380))))

(assert (= (and b!3074309 ((_ is ElementMatch!9521) (regTwo!19555 (regTwo!19555 r!17423)))) b!3074782))

(assert (= (and b!3074309 ((_ is Concat!14842) (regTwo!19555 (regTwo!19555 r!17423)))) b!3074783))

(assert (= (and b!3074309 ((_ is Star!9521) (regTwo!19555 (regTwo!19555 r!17423)))) b!3074784))

(assert (= (and b!3074309 ((_ is Union!9521) (regTwo!19555 (regTwo!19555 r!17423)))) b!3074785))

(declare-fun e!1923976 () Bool)

(assert (=> b!3074304 (= tp!969291 e!1923976)))

(declare-fun b!3074789 () Bool)

(declare-fun tp!969381 () Bool)

(declare-fun tp!969383 () Bool)

(assert (=> b!3074789 (= e!1923976 (and tp!969381 tp!969383))))

(declare-fun b!3074788 () Bool)

(declare-fun tp!969382 () Bool)

(assert (=> b!3074788 (= e!1923976 tp!969382)))

(declare-fun b!3074786 () Bool)

(assert (=> b!3074786 (= e!1923976 tp_is_empty!16605)))

(declare-fun b!3074787 () Bool)

(declare-fun tp!969384 () Bool)

(declare-fun tp!969385 () Bool)

(assert (=> b!3074787 (= e!1923976 (and tp!969384 tp!969385))))

(assert (= (and b!3074304 ((_ is ElementMatch!9521) (reg!9850 (regOne!19555 r!17423)))) b!3074786))

(assert (= (and b!3074304 ((_ is Concat!14842) (reg!9850 (regOne!19555 r!17423)))) b!3074787))

(assert (= (and b!3074304 ((_ is Star!9521) (reg!9850 (regOne!19555 r!17423)))) b!3074788))

(assert (= (and b!3074304 ((_ is Union!9521) (reg!9850 (regOne!19555 r!17423)))) b!3074789))

(declare-fun e!1923977 () Bool)

(assert (=> b!3074299 (= tp!969288 e!1923977)))

(declare-fun b!3074793 () Bool)

(declare-fun tp!969386 () Bool)

(declare-fun tp!969388 () Bool)

(assert (=> b!3074793 (= e!1923977 (and tp!969386 tp!969388))))

(declare-fun b!3074792 () Bool)

(declare-fun tp!969387 () Bool)

(assert (=> b!3074792 (= e!1923977 tp!969387)))

(declare-fun b!3074790 () Bool)

(assert (=> b!3074790 (= e!1923977 tp_is_empty!16605)))

(declare-fun b!3074791 () Bool)

(declare-fun tp!969389 () Bool)

(declare-fun tp!969390 () Bool)

(assert (=> b!3074791 (= e!1923977 (and tp!969389 tp!969390))))

(assert (= (and b!3074299 ((_ is ElementMatch!9521) (regOne!19554 (reg!9850 r!17423)))) b!3074790))

(assert (= (and b!3074299 ((_ is Concat!14842) (regOne!19554 (reg!9850 r!17423)))) b!3074791))

(assert (= (and b!3074299 ((_ is Star!9521) (regOne!19554 (reg!9850 r!17423)))) b!3074792))

(assert (= (and b!3074299 ((_ is Union!9521) (regOne!19554 (reg!9850 r!17423)))) b!3074793))

(declare-fun e!1923978 () Bool)

(assert (=> b!3074299 (= tp!969289 e!1923978)))

(declare-fun b!3074797 () Bool)

(declare-fun tp!969391 () Bool)

(declare-fun tp!969393 () Bool)

(assert (=> b!3074797 (= e!1923978 (and tp!969391 tp!969393))))

(declare-fun b!3074796 () Bool)

(declare-fun tp!969392 () Bool)

(assert (=> b!3074796 (= e!1923978 tp!969392)))

(declare-fun b!3074794 () Bool)

(assert (=> b!3074794 (= e!1923978 tp_is_empty!16605)))

(declare-fun b!3074795 () Bool)

(declare-fun tp!969394 () Bool)

(declare-fun tp!969395 () Bool)

(assert (=> b!3074795 (= e!1923978 (and tp!969394 tp!969395))))

(assert (= (and b!3074299 ((_ is ElementMatch!9521) (regTwo!19554 (reg!9850 r!17423)))) b!3074794))

(assert (= (and b!3074299 ((_ is Concat!14842) (regTwo!19554 (reg!9850 r!17423)))) b!3074795))

(assert (= (and b!3074299 ((_ is Star!9521) (regTwo!19554 (reg!9850 r!17423)))) b!3074796))

(assert (= (and b!3074299 ((_ is Union!9521) (regTwo!19554 (reg!9850 r!17423)))) b!3074797))

(declare-fun e!1923979 () Bool)

(assert (=> b!3074313 (= tp!969300 e!1923979)))

(declare-fun b!3074801 () Bool)

(declare-fun tp!969396 () Bool)

(declare-fun tp!969398 () Bool)

(assert (=> b!3074801 (= e!1923979 (and tp!969396 tp!969398))))

(declare-fun b!3074800 () Bool)

(declare-fun tp!969397 () Bool)

(assert (=> b!3074800 (= e!1923979 tp!969397)))

(declare-fun b!3074798 () Bool)

(assert (=> b!3074798 (= e!1923979 tp_is_empty!16605)))

(declare-fun b!3074799 () Bool)

(declare-fun tp!969399 () Bool)

(declare-fun tp!969400 () Bool)

(assert (=> b!3074799 (= e!1923979 (and tp!969399 tp!969400))))

(assert (= (and b!3074313 ((_ is ElementMatch!9521) (regOne!19555 (regOne!19554 r!17423)))) b!3074798))

(assert (= (and b!3074313 ((_ is Concat!14842) (regOne!19555 (regOne!19554 r!17423)))) b!3074799))

(assert (= (and b!3074313 ((_ is Star!9521) (regOne!19555 (regOne!19554 r!17423)))) b!3074800))

(assert (= (and b!3074313 ((_ is Union!9521) (regOne!19555 (regOne!19554 r!17423)))) b!3074801))

(declare-fun e!1923980 () Bool)

(assert (=> b!3074313 (= tp!969302 e!1923980)))

(declare-fun b!3074805 () Bool)

(declare-fun tp!969401 () Bool)

(declare-fun tp!969403 () Bool)

(assert (=> b!3074805 (= e!1923980 (and tp!969401 tp!969403))))

(declare-fun b!3074804 () Bool)

(declare-fun tp!969402 () Bool)

(assert (=> b!3074804 (= e!1923980 tp!969402)))

(declare-fun b!3074802 () Bool)

(assert (=> b!3074802 (= e!1923980 tp_is_empty!16605)))

(declare-fun b!3074803 () Bool)

(declare-fun tp!969404 () Bool)

(declare-fun tp!969405 () Bool)

(assert (=> b!3074803 (= e!1923980 (and tp!969404 tp!969405))))

(assert (= (and b!3074313 ((_ is ElementMatch!9521) (regTwo!19555 (regOne!19554 r!17423)))) b!3074802))

(assert (= (and b!3074313 ((_ is Concat!14842) (regTwo!19555 (regOne!19554 r!17423)))) b!3074803))

(assert (= (and b!3074313 ((_ is Star!9521) (regTwo!19555 (regOne!19554 r!17423)))) b!3074804))

(assert (= (and b!3074313 ((_ is Union!9521) (regTwo!19555 (regOne!19554 r!17423)))) b!3074805))

(declare-fun e!1923981 () Bool)

(assert (=> b!3074308 (= tp!969296 e!1923981)))

(declare-fun b!3074809 () Bool)

(declare-fun tp!969406 () Bool)

(declare-fun tp!969408 () Bool)

(assert (=> b!3074809 (= e!1923981 (and tp!969406 tp!969408))))

(declare-fun b!3074808 () Bool)

(declare-fun tp!969407 () Bool)

(assert (=> b!3074808 (= e!1923981 tp!969407)))

(declare-fun b!3074806 () Bool)

(assert (=> b!3074806 (= e!1923981 tp_is_empty!16605)))

(declare-fun b!3074807 () Bool)

(declare-fun tp!969409 () Bool)

(declare-fun tp!969410 () Bool)

(assert (=> b!3074807 (= e!1923981 (and tp!969409 tp!969410))))

(assert (= (and b!3074308 ((_ is ElementMatch!9521) (reg!9850 (regTwo!19555 r!17423)))) b!3074806))

(assert (= (and b!3074308 ((_ is Concat!14842) (reg!9850 (regTwo!19555 r!17423)))) b!3074807))

(assert (= (and b!3074308 ((_ is Star!9521) (reg!9850 (regTwo!19555 r!17423)))) b!3074808))

(assert (= (and b!3074308 ((_ is Union!9521) (reg!9850 (regTwo!19555 r!17423)))) b!3074809))

(declare-fun e!1923982 () Bool)

(assert (=> b!3074303 (= tp!969293 e!1923982)))

(declare-fun b!3074813 () Bool)

(declare-fun tp!969411 () Bool)

(declare-fun tp!969413 () Bool)

(assert (=> b!3074813 (= e!1923982 (and tp!969411 tp!969413))))

(declare-fun b!3074812 () Bool)

(declare-fun tp!969412 () Bool)

(assert (=> b!3074812 (= e!1923982 tp!969412)))

(declare-fun b!3074810 () Bool)

(assert (=> b!3074810 (= e!1923982 tp_is_empty!16605)))

(declare-fun b!3074811 () Bool)

(declare-fun tp!969414 () Bool)

(declare-fun tp!969415 () Bool)

(assert (=> b!3074811 (= e!1923982 (and tp!969414 tp!969415))))

(assert (= (and b!3074303 ((_ is ElementMatch!9521) (regOne!19554 (regOne!19555 r!17423)))) b!3074810))

(assert (= (and b!3074303 ((_ is Concat!14842) (regOne!19554 (regOne!19555 r!17423)))) b!3074811))

(assert (= (and b!3074303 ((_ is Star!9521) (regOne!19554 (regOne!19555 r!17423)))) b!3074812))

(assert (= (and b!3074303 ((_ is Union!9521) (regOne!19554 (regOne!19555 r!17423)))) b!3074813))

(declare-fun e!1923983 () Bool)

(assert (=> b!3074303 (= tp!969294 e!1923983)))

(declare-fun b!3074817 () Bool)

(declare-fun tp!969416 () Bool)

(declare-fun tp!969418 () Bool)

(assert (=> b!3074817 (= e!1923983 (and tp!969416 tp!969418))))

(declare-fun b!3074816 () Bool)

(declare-fun tp!969417 () Bool)

(assert (=> b!3074816 (= e!1923983 tp!969417)))

(declare-fun b!3074814 () Bool)

(assert (=> b!3074814 (= e!1923983 tp_is_empty!16605)))

(declare-fun b!3074815 () Bool)

(declare-fun tp!969419 () Bool)

(declare-fun tp!969420 () Bool)

(assert (=> b!3074815 (= e!1923983 (and tp!969419 tp!969420))))

(assert (= (and b!3074303 ((_ is ElementMatch!9521) (regTwo!19554 (regOne!19555 r!17423)))) b!3074814))

(assert (= (and b!3074303 ((_ is Concat!14842) (regTwo!19554 (regOne!19555 r!17423)))) b!3074815))

(assert (= (and b!3074303 ((_ is Star!9521) (regTwo!19554 (regOne!19555 r!17423)))) b!3074816))

(assert (= (and b!3074303 ((_ is Union!9521) (regTwo!19554 (regOne!19555 r!17423)))) b!3074817))

(declare-fun e!1923984 () Bool)

(assert (=> b!3074317 (= tp!969305 e!1923984)))

(declare-fun b!3074821 () Bool)

(declare-fun tp!969421 () Bool)

(declare-fun tp!969423 () Bool)

(assert (=> b!3074821 (= e!1923984 (and tp!969421 tp!969423))))

(declare-fun b!3074820 () Bool)

(declare-fun tp!969422 () Bool)

(assert (=> b!3074820 (= e!1923984 tp!969422)))

(declare-fun b!3074818 () Bool)

(assert (=> b!3074818 (= e!1923984 tp_is_empty!16605)))

(declare-fun b!3074819 () Bool)

(declare-fun tp!969424 () Bool)

(declare-fun tp!969425 () Bool)

(assert (=> b!3074819 (= e!1923984 (and tp!969424 tp!969425))))

(assert (= (and b!3074317 ((_ is ElementMatch!9521) (regOne!19555 (regTwo!19554 r!17423)))) b!3074818))

(assert (= (and b!3074317 ((_ is Concat!14842) (regOne!19555 (regTwo!19554 r!17423)))) b!3074819))

(assert (= (and b!3074317 ((_ is Star!9521) (regOne!19555 (regTwo!19554 r!17423)))) b!3074820))

(assert (= (and b!3074317 ((_ is Union!9521) (regOne!19555 (regTwo!19554 r!17423)))) b!3074821))

(declare-fun e!1923985 () Bool)

(assert (=> b!3074317 (= tp!969307 e!1923985)))

(declare-fun b!3074825 () Bool)

(declare-fun tp!969426 () Bool)

(declare-fun tp!969428 () Bool)

(assert (=> b!3074825 (= e!1923985 (and tp!969426 tp!969428))))

(declare-fun b!3074824 () Bool)

(declare-fun tp!969427 () Bool)

(assert (=> b!3074824 (= e!1923985 tp!969427)))

(declare-fun b!3074822 () Bool)

(assert (=> b!3074822 (= e!1923985 tp_is_empty!16605)))

(declare-fun b!3074823 () Bool)

(declare-fun tp!969429 () Bool)

(declare-fun tp!969430 () Bool)

(assert (=> b!3074823 (= e!1923985 (and tp!969429 tp!969430))))

(assert (= (and b!3074317 ((_ is ElementMatch!9521) (regTwo!19555 (regTwo!19554 r!17423)))) b!3074822))

(assert (= (and b!3074317 ((_ is Concat!14842) (regTwo!19555 (regTwo!19554 r!17423)))) b!3074823))

(assert (= (and b!3074317 ((_ is Star!9521) (regTwo!19555 (regTwo!19554 r!17423)))) b!3074824))

(assert (= (and b!3074317 ((_ is Union!9521) (regTwo!19555 (regTwo!19554 r!17423)))) b!3074825))

(declare-fun e!1923986 () Bool)

(assert (=> b!3074312 (= tp!969301 e!1923986)))

(declare-fun b!3074829 () Bool)

(declare-fun tp!969431 () Bool)

(declare-fun tp!969433 () Bool)

(assert (=> b!3074829 (= e!1923986 (and tp!969431 tp!969433))))

(declare-fun b!3074828 () Bool)

(declare-fun tp!969432 () Bool)

(assert (=> b!3074828 (= e!1923986 tp!969432)))

(declare-fun b!3074826 () Bool)

(assert (=> b!3074826 (= e!1923986 tp_is_empty!16605)))

(declare-fun b!3074827 () Bool)

(declare-fun tp!969434 () Bool)

(declare-fun tp!969435 () Bool)

(assert (=> b!3074827 (= e!1923986 (and tp!969434 tp!969435))))

(assert (= (and b!3074312 ((_ is ElementMatch!9521) (reg!9850 (regOne!19554 r!17423)))) b!3074826))

(assert (= (and b!3074312 ((_ is Concat!14842) (reg!9850 (regOne!19554 r!17423)))) b!3074827))

(assert (= (and b!3074312 ((_ is Star!9521) (reg!9850 (regOne!19554 r!17423)))) b!3074828))

(assert (= (and b!3074312 ((_ is Union!9521) (reg!9850 (regOne!19554 r!17423)))) b!3074829))

(check-sat (not b!3074767) (not b!3074720) (not b!3074370) (not b!3074757) (not bm!213790) (not bm!213778) (not d!856688) (not d!856666) (not b!3074824) (not b!3074729) (not b!3074817) (not bm!213781) (not bm!213794) (not b!3074597) (not b!3074724) (not bm!213809) (not b!3074797) (not d!856674) (not b!3074804) (not bm!213782) (not d!856644) (not bm!213757) (not b!3074787) (not bm!213761) (not d!856682) (not b!3074422) (not bm!213796) (not b!3074784) tp_is_empty!16605 (not bm!213800) (not b!3074496) (not d!856680) (not b!3074776) (not b!3074752) (not b!3074479) (not d!856642) (not b!3074563) (not d!856742) (not b!3074471) (not bm!213787) (not b!3074821) (not b!3074760) (not b!3074553) (not bm!213812) (not b!3074753) (not bm!213801) (not bm!213764) (not b!3074795) (not bm!213771) (not b!3074638) (not bm!213765) (not bm!213806) (not bm!213810) (not b!3074773) (not b!3074438) (not b!3074348) (not bm!213772) (not bm!213768) (not d!856640) (not d!856652) (not bm!213797) (not b!3074800) (not b!3074723) (not bm!213813) (not bm!213789) (not b!3074683) (not b!3074788) (not b!3074358) (not b!3074387) (not bm!213741) (not b!3074725) (not bm!213833) (not b!3074385) (not b!3074783) (not b!3074792) (not bm!213775) (not b!3074582) (not bm!213805) (not b!3074764) (not b!3074803) (not b!3074373) (not bm!213773) (not b!3074369) (not b!3074383) (not bm!213834) (not b!3074730) (not b!3074734) (not d!856718) (not b!3074789) (not b!3074360) (not d!856654) (not b!3074440) (not b!3074418) (not b!3074808) (not b!3074651) (not b!3074812) (not b!3074482) (not bm!213823) (not d!856606) (not d!856658) (not b!3074362) (not bm!213742) (not bm!213738) (not b!3074326) (not b!3074827) (not b!3074475) (not b!3074366) (not b!3074487) (not b!3074480) (not b!3074548) (not bm!213762) (not b!3074371) (not b!3074437) (not b!3074756) (not bm!213803) (not bm!213779) (not b!3074801) (not b!3074751) (not bm!213821) (not b!3074464) (not b!3074436) (not bm!213788) (not b!3074356) (not bm!213791) (not b!3074768) (not b!3074737) (not b!3074376) (not b!3074727) (not b!3074451) (not b!3074825) (not bm!213740) (not b!3074823) (not bm!213822) (not b!3074577) (not b!3074799) (not b!3074613) (not b!3074677) (not d!856648) (not bm!213769) (not b!3074805) (not b!3074761) (not b!3074736) (not b!3074478) (not bm!213824) (not bm!213808) (not b!3074339) (not d!856638) (not b!3074719) (not b!3074581) (not b!3074566) (not b!3074733) (not b!3074759) (not bm!213776) (not b!3074562) (not b!3074772) (not b!3074796) (not b!3074667) (not b!3074624) (not b!3074721) (not b!3074579) (not b!3074793) (not b!3074828) (not b!3074564) (not bm!213756) (not b!3074380) (not b!3074559) (not b!3074775) (not bm!213811) (not b!3074433) (not b!3074791) (not b!3074815) (not b!3074763) (not b!3074510) (not b!3074429) (not b!3074813) (not b!3074755) (not b!3074779) (not b!3074384) (not b!3074809) (not b!3074777) (not bm!213745) (not d!856712) (not b!3074712) (not b!3074811) (not bm!213802) (not b!3074732) (not b!3074820) (not b!3074781) (not bm!213780) (not b!3074785) (not d!856700) (not bm!213739) (not d!856734) (not b!3074738) (not b!3074455) (not d!856696) (not b!3074816) (not b!3074829) (not bm!213760) (not bm!213814) (not d!856632) (not bm!213784) (not b!3074555) (not b!3074535) (not d!856714) (not b!3074819) (not d!856694) (not b!3074603) (not b!3074807) (not d!856646) (not b!3074728) (not b!3074769) (not b!3074587) (not b!3074765) (not bm!213746) (not d!856664) (not b!3074350) (not d!856706) (not b!3074780) (not b!3074771) (not d!856670) (not b!3074523) (not bm!213783))
(check-sat)
