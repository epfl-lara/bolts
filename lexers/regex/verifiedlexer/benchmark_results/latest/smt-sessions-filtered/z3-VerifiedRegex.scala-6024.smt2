; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294836 () Bool)

(assert start!294836)

(declare-fun b!3113301 () Bool)

(declare-fun e!1944624 () Bool)

(declare-fun tp!976707 () Bool)

(declare-fun tp!976708 () Bool)

(assert (=> b!3113301 (= e!1944624 (and tp!976707 tp!976708))))

(declare-fun bm!220640 () Bool)

(declare-datatypes ((Unit!49637 0))(
  ( (Unit!49638) )
))
(declare-fun call!220646 () Unit!49637)

(declare-datatypes ((C!19384 0))(
  ( (C!19385 (val!11728 Int)) )
))
(declare-datatypes ((List!35464 0))(
  ( (Nil!35340) (Cons!35340 (h!40760 C!19384) (t!234529 List!35464)) )
))
(declare-fun s!11993 () List!35464)

(declare-datatypes ((Regex!9599 0))(
  ( (ElementMatch!9599 (c!521257 C!19384)) (Concat!14920 (regOne!19710 Regex!9599) (regTwo!19710 Regex!9599)) (EmptyExpr!9599) (Star!9599 (reg!9928 Regex!9599)) (EmptyLang!9599) (Union!9599 (regOne!19711 Regex!9599) (regTwo!19711 Regex!9599)) )
))
(declare-fun r!17423 () Regex!9599)

(declare-fun c!521256 () Bool)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!88 (Regex!9599 Regex!9599 List!35464) Unit!49637)

(assert (=> bm!220640 (= call!220646 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!88 (ite c!521256 (regOne!19711 r!17423) (regTwo!19711 r!17423)) (ite c!521256 (regTwo!19711 r!17423) (regOne!19711 r!17423)) s!11993))))

(declare-fun b!3113302 () Bool)

(declare-fun e!1944622 () Bool)

(declare-fun tp_is_empty!16761 () Bool)

(declare-fun tp!976709 () Bool)

(assert (=> b!3113302 (= e!1944622 (and tp_is_empty!16761 tp!976709))))

(declare-fun b!3113303 () Bool)

(declare-fun e!1944625 () Unit!49637)

(declare-fun lt!1057867 () Unit!49637)

(assert (=> b!3113303 (= e!1944625 lt!1057867)))

(declare-fun lt!1057864 () Unit!49637)

(declare-fun call!220645 () Unit!49637)

(assert (=> b!3113303 (= lt!1057864 call!220645)))

(declare-fun lt!1057860 () Regex!9599)

(declare-fun matchR!4481 (Regex!9599 List!35464) Bool)

(assert (=> b!3113303 (= (matchR!4481 (regTwo!19711 r!17423) s!11993) (matchR!4481 lt!1057860 s!11993))))

(declare-fun lt!1057865 () Unit!49637)

(assert (=> b!3113303 (= lt!1057865 call!220646)))

(declare-fun call!220648 () Bool)

(assert (=> b!3113303 call!220648))

(declare-fun lemmaReversedUnionAcceptsSameString!28 (Regex!9599 Regex!9599 List!35464) Unit!49637)

(assert (=> b!3113303 (= lt!1057867 (lemmaReversedUnionAcceptsSameString!28 (regTwo!19711 r!17423) (regOne!19711 r!17423) s!11993))))

(declare-fun call!220647 () Bool)

(assert (=> b!3113303 call!220647))

(declare-fun b!3113304 () Bool)

(declare-fun e!1944623 () Bool)

(declare-fun e!1944621 () Bool)

(assert (=> b!3113304 (= e!1944623 e!1944621)))

(declare-fun res!1274512 () Bool)

(assert (=> b!3113304 (=> res!1274512 e!1944621)))

(declare-fun lt!1057870 () Regex!9599)

(declare-fun isEmptyLang!650 (Regex!9599) Bool)

(assert (=> b!3113304 (= res!1274512 (isEmptyLang!650 lt!1057870))))

(declare-fun simplify!554 (Regex!9599) Regex!9599)

(assert (=> b!3113304 (= lt!1057860 (simplify!554 (regTwo!19711 r!17423)))))

(assert (=> b!3113304 (= lt!1057870 (simplify!554 (regOne!19711 r!17423)))))

(declare-fun b!3113305 () Bool)

(assert (=> b!3113305 (= e!1944621 false)))

(declare-fun lt!1057861 () Unit!49637)

(assert (=> b!3113305 (= lt!1057861 e!1944625)))

(declare-fun lt!1057862 () Bool)

(assert (=> b!3113305 (= c!521256 lt!1057862)))

(declare-fun e!1944626 () Bool)

(assert (=> b!3113305 e!1944626))

(declare-fun res!1274514 () Bool)

(assert (=> b!3113305 (=> res!1274514 e!1944626)))

(assert (=> b!3113305 (= res!1274514 lt!1057862)))

(assert (=> b!3113305 (= lt!1057862 (matchR!4481 lt!1057870 s!11993))))

(declare-fun lt!1057868 () Unit!49637)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!330 (Regex!9599 Regex!9599 List!35464) Unit!49637)

(assert (=> b!3113305 (= lt!1057868 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!330 lt!1057870 lt!1057860 s!11993))))

(declare-fun b!3113306 () Bool)

(assert (=> b!3113306 (= e!1944626 (matchR!4481 lt!1057860 s!11993))))

(declare-fun b!3113307 () Bool)

(declare-fun e!1944627 () Bool)

(assert (=> b!3113307 (= e!1944627 (not e!1944623))))

(declare-fun res!1274509 () Bool)

(assert (=> b!3113307 (=> res!1274509 e!1944623)))

(declare-fun lt!1057863 () Bool)

(get-info :version)

(assert (=> b!3113307 (= res!1274509 (or lt!1057863 ((_ is Concat!14920) r!17423) (not ((_ is Union!9599) r!17423))))))

(declare-fun matchRSpec!1736 (Regex!9599 List!35464) Bool)

(assert (=> b!3113307 (= lt!1057863 (matchRSpec!1736 r!17423 s!11993))))

(assert (=> b!3113307 (= lt!1057863 (matchR!4481 r!17423 s!11993))))

(declare-fun lt!1057866 () Unit!49637)

(declare-fun mainMatchTheorem!1736 (Regex!9599 List!35464) Unit!49637)

(assert (=> b!3113307 (= lt!1057866 (mainMatchTheorem!1736 r!17423 s!11993))))

(declare-fun b!3113308 () Bool)

(assert (=> b!3113308 (= e!1944624 tp_is_empty!16761)))

(declare-fun b!3113309 () Bool)

(declare-fun res!1274510 () Bool)

(assert (=> b!3113309 (=> res!1274510 e!1944621)))

(assert (=> b!3113309 (= res!1274510 (isEmptyLang!650 lt!1057860))))

(declare-fun b!3113310 () Bool)

(declare-fun tp!976706 () Bool)

(declare-fun tp!976704 () Bool)

(assert (=> b!3113310 (= e!1944624 (and tp!976706 tp!976704))))

(declare-fun b!3113311 () Bool)

(declare-fun lt!1057869 () Unit!49637)

(assert (=> b!3113311 (= e!1944625 lt!1057869)))

(declare-fun lt!1057859 () Unit!49637)

(assert (=> b!3113311 (= lt!1057859 call!220645)))

(assert (=> b!3113311 call!220648))

(assert (=> b!3113311 (= lt!1057869 call!220646)))

(assert (=> b!3113311 call!220647))

(declare-fun res!1274513 () Bool)

(assert (=> start!294836 (=> (not res!1274513) (not e!1944627))))

(declare-fun validRegex!4332 (Regex!9599) Bool)

(assert (=> start!294836 (= res!1274513 (validRegex!4332 r!17423))))

(assert (=> start!294836 e!1944627))

(assert (=> start!294836 e!1944624))

(assert (=> start!294836 e!1944622))

(declare-fun bm!220641 () Bool)

(assert (=> bm!220641 (= call!220648 (matchR!4481 (ite c!521256 (regOne!19711 r!17423) (Union!9599 (regTwo!19711 r!17423) (regOne!19711 r!17423))) s!11993))))

(declare-fun bm!220642 () Bool)

(assert (=> bm!220642 (= call!220647 (matchR!4481 (Union!9599 (regOne!19711 r!17423) (regTwo!19711 r!17423)) s!11993))))

(declare-fun bm!220643 () Bool)

(declare-fun lemmaSimplifySound!348 (Regex!9599 List!35464) Unit!49637)

(assert (=> bm!220643 (= call!220645 (lemmaSimplifySound!348 (ite c!521256 (regOne!19711 r!17423) (regTwo!19711 r!17423)) s!11993))))

(declare-fun b!3113312 () Bool)

(declare-fun tp!976705 () Bool)

(assert (=> b!3113312 (= e!1944624 tp!976705)))

(declare-fun b!3113313 () Bool)

(declare-fun res!1274511 () Bool)

(assert (=> b!3113313 (=> res!1274511 e!1944621)))

(assert (=> b!3113313 (= res!1274511 (not (matchR!4481 (Union!9599 lt!1057870 lt!1057860) s!11993)))))

(assert (= (and start!294836 res!1274513) b!3113307))

(assert (= (and b!3113307 (not res!1274509)) b!3113304))

(assert (= (and b!3113304 (not res!1274512)) b!3113309))

(assert (= (and b!3113309 (not res!1274510)) b!3113313))

(assert (= (and b!3113313 (not res!1274511)) b!3113305))

(assert (= (and b!3113305 (not res!1274514)) b!3113306))

(assert (= (and b!3113305 c!521256) b!3113311))

(assert (= (and b!3113305 (not c!521256)) b!3113303))

(assert (= (or b!3113311 b!3113303) bm!220640))

(assert (= (or b!3113311 b!3113303) bm!220643))

(assert (= (or b!3113311 b!3113303) bm!220642))

(assert (= (or b!3113311 b!3113303) bm!220641))

(assert (= (and start!294836 ((_ is ElementMatch!9599) r!17423)) b!3113308))

(assert (= (and start!294836 ((_ is Concat!14920) r!17423)) b!3113301))

(assert (= (and start!294836 ((_ is Star!9599) r!17423)) b!3113312))

(assert (= (and start!294836 ((_ is Union!9599) r!17423)) b!3113310))

(assert (= (and start!294836 ((_ is Cons!35340) s!11993)) b!3113302))

(declare-fun m!3405577 () Bool)

(assert (=> bm!220643 m!3405577))

(declare-fun m!3405579 () Bool)

(assert (=> bm!220642 m!3405579))

(declare-fun m!3405581 () Bool)

(assert (=> b!3113305 m!3405581))

(declare-fun m!3405583 () Bool)

(assert (=> b!3113305 m!3405583))

(declare-fun m!3405585 () Bool)

(assert (=> b!3113307 m!3405585))

(declare-fun m!3405587 () Bool)

(assert (=> b!3113307 m!3405587))

(declare-fun m!3405589 () Bool)

(assert (=> b!3113307 m!3405589))

(declare-fun m!3405591 () Bool)

(assert (=> b!3113303 m!3405591))

(declare-fun m!3405593 () Bool)

(assert (=> b!3113303 m!3405593))

(declare-fun m!3405595 () Bool)

(assert (=> b!3113303 m!3405595))

(declare-fun m!3405597 () Bool)

(assert (=> bm!220640 m!3405597))

(declare-fun m!3405599 () Bool)

(assert (=> b!3113309 m!3405599))

(declare-fun m!3405601 () Bool)

(assert (=> start!294836 m!3405601))

(declare-fun m!3405603 () Bool)

(assert (=> b!3113304 m!3405603))

(declare-fun m!3405605 () Bool)

(assert (=> b!3113304 m!3405605))

(declare-fun m!3405607 () Bool)

(assert (=> b!3113304 m!3405607))

(assert (=> b!3113306 m!3405593))

(declare-fun m!3405609 () Bool)

(assert (=> bm!220641 m!3405609))

(declare-fun m!3405611 () Bool)

(assert (=> b!3113313 m!3405611))

(check-sat (not b!3113310) (not bm!220640) (not b!3113306) (not b!3113312) (not b!3113307) tp_is_empty!16761 (not b!3113303) (not b!3113313) (not b!3113304) (not bm!220642) (not b!3113309) (not b!3113302) (not start!294836) (not bm!220641) (not b!3113305) (not b!3113301) (not bm!220643))
(check-sat)
