; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740774 () Bool)

(assert start!740774)

(declare-fun b!7788683 () Bool)

(declare-fun e!4612361 () Bool)

(declare-fun tp!2292337 () Bool)

(declare-fun tp!2292338 () Bool)

(assert (=> b!7788683 (= e!4612361 (and tp!2292337 tp!2292338))))

(declare-fun b!7788684 () Bool)

(declare-fun e!4612362 () Bool)

(declare-fun tp_is_empty!52057 () Bool)

(declare-fun tp!2292336 () Bool)

(assert (=> b!7788684 (= e!4612362 (and tp_is_empty!52057 tp!2292336))))

(declare-fun b!7788685 () Bool)

(declare-fun res!3103345 () Bool)

(declare-fun e!4612360 () Bool)

(assert (=> b!7788685 (=> (not res!3103345) (not e!4612360))))

(declare-datatypes ((C!42028 0))(
  ( (C!42029 (val!31454 Int)) )
))
(declare-datatypes ((List!73690 0))(
  ( (Nil!73566) (Cons!73566 (h!80014 C!42028) (t!388425 List!73690)) )
))
(declare-fun s!14292 () List!73690)

(get-info :version)

(assert (=> b!7788685 (= res!3103345 (not ((_ is Cons!73566) s!14292)))))

(declare-fun b!7788686 () Bool)

(declare-fun e!4612363 () Bool)

(declare-fun tp!2292340 () Bool)

(declare-fun tp!2292333 () Bool)

(assert (=> b!7788686 (= e!4612363 (and tp!2292340 tp!2292333))))

(declare-fun b!7788687 () Bool)

(declare-fun tp!2292341 () Bool)

(assert (=> b!7788687 (= e!4612361 tp!2292341)))

(declare-fun res!3103347 () Bool)

(assert (=> start!740774 (=> (not res!3103347) (not e!4612360))))

(declare-datatypes ((Regex!20851 0))(
  ( (ElementMatch!20851 (c!1434530 C!42028)) (Concat!29696 (regOne!42214 Regex!20851) (regTwo!42214 Regex!20851)) (EmptyExpr!20851) (Star!20851 (reg!21180 Regex!20851)) (EmptyLang!20851) (Union!20851 (regOne!42215 Regex!20851) (regTwo!42215 Regex!20851)) )
))
(declare-fun r1!6279 () Regex!20851)

(declare-fun validRegex!11265 (Regex!20851) Bool)

(assert (=> start!740774 (= res!3103347 (validRegex!11265 r1!6279))))

(assert (=> start!740774 e!4612360))

(assert (=> start!740774 e!4612361))

(assert (=> start!740774 e!4612363))

(assert (=> start!740774 e!4612362))

(declare-fun b!7788688 () Bool)

(declare-fun tp!2292342 () Bool)

(declare-fun tp!2292343 () Bool)

(assert (=> b!7788688 (= e!4612363 (and tp!2292342 tp!2292343))))

(declare-fun b!7788689 () Bool)

(declare-fun tp!2292339 () Bool)

(declare-fun tp!2292335 () Bool)

(assert (=> b!7788689 (= e!4612361 (and tp!2292339 tp!2292335))))

(declare-fun b!7788690 () Bool)

(assert (=> b!7788690 (= e!4612361 tp_is_empty!52057)))

(declare-fun b!7788691 () Bool)

(declare-fun res!3103346 () Bool)

(assert (=> b!7788691 (=> (not res!3103346) (not e!4612360))))

(declare-fun r2!6217 () Regex!20851)

(declare-fun nullable!9235 (Regex!20851) Bool)

(assert (=> b!7788691 (= res!3103346 (nullable!9235 r2!6217))))

(declare-fun b!7788692 () Bool)

(assert (=> b!7788692 (= e!4612363 tp_is_empty!52057)))

(declare-fun b!7788693 () Bool)

(declare-fun res!3103343 () Bool)

(assert (=> b!7788693 (=> (not res!3103343) (not e!4612360))))

(assert (=> b!7788693 (= res!3103343 (nullable!9235 r1!6279))))

(declare-fun b!7788694 () Bool)

(declare-fun res!3103348 () Bool)

(assert (=> b!7788694 (=> (not res!3103348) (not e!4612360))))

(declare-fun matchR!10311 (Regex!20851 List!73690) Bool)

(assert (=> b!7788694 (= res!3103348 (matchR!10311 (Concat!29696 r1!6279 r2!6217) s!14292))))

(declare-fun b!7788695 () Bool)

(declare-datatypes ((tuple2!69924 0))(
  ( (tuple2!69925 (_1!38265 List!73690) (_2!38265 List!73690)) )
))
(declare-datatypes ((Option!17756 0))(
  ( (None!17755) (Some!17755 (v!54890 tuple2!69924)) )
))
(declare-fun findConcatSeparation!3786 (Regex!20851 Regex!20851 List!73690 List!73690 List!73690) Option!17756)

(assert (=> b!7788695 (= e!4612360 (not (= (findConcatSeparation!3786 r1!6279 r2!6217 Nil!73566 Nil!73566 Nil!73566) (Some!17755 (tuple2!69925 Nil!73566 Nil!73566)))))))

(declare-fun b!7788696 () Bool)

(declare-fun res!3103344 () Bool)

(assert (=> b!7788696 (=> (not res!3103344) (not e!4612360))))

(assert (=> b!7788696 (= res!3103344 (validRegex!11265 r2!6217))))

(declare-fun b!7788697 () Bool)

(declare-fun tp!2292334 () Bool)

(assert (=> b!7788697 (= e!4612363 tp!2292334)))

(assert (= (and start!740774 res!3103347) b!7788696))

(assert (= (and b!7788696 res!3103344) b!7788694))

(assert (= (and b!7788694 res!3103348) b!7788685))

(assert (= (and b!7788685 res!3103345) b!7788693))

(assert (= (and b!7788693 res!3103343) b!7788691))

(assert (= (and b!7788691 res!3103346) b!7788695))

(assert (= (and start!740774 ((_ is ElementMatch!20851) r1!6279)) b!7788690))

(assert (= (and start!740774 ((_ is Concat!29696) r1!6279)) b!7788689))

(assert (= (and start!740774 ((_ is Star!20851) r1!6279)) b!7788687))

(assert (= (and start!740774 ((_ is Union!20851) r1!6279)) b!7788683))

(assert (= (and start!740774 ((_ is ElementMatch!20851) r2!6217)) b!7788692))

(assert (= (and start!740774 ((_ is Concat!29696) r2!6217)) b!7788686))

(assert (= (and start!740774 ((_ is Star!20851) r2!6217)) b!7788697))

(assert (= (and start!740774 ((_ is Union!20851) r2!6217)) b!7788688))

(assert (= (and start!740774 ((_ is Cons!73566) s!14292)) b!7788684))

(declare-fun m!8231214 () Bool)

(assert (=> b!7788694 m!8231214))

(declare-fun m!8231216 () Bool)

(assert (=> b!7788695 m!8231216))

(declare-fun m!8231218 () Bool)

(assert (=> b!7788691 m!8231218))

(declare-fun m!8231220 () Bool)

(assert (=> b!7788696 m!8231220))

(declare-fun m!8231222 () Bool)

(assert (=> start!740774 m!8231222))

(declare-fun m!8231224 () Bool)

(assert (=> b!7788693 m!8231224))

(check-sat (not start!740774) (not b!7788697) tp_is_empty!52057 (not b!7788687) (not b!7788696) (not b!7788694) (not b!7788686) (not b!7788693) (not b!7788691) (not b!7788689) (not b!7788688) (not b!7788684) (not b!7788695) (not b!7788683))
(check-sat)
(get-model)

(declare-fun b!7788734 () Bool)

(declare-fun e!4612388 () Bool)

(declare-fun lt!2673444 () Option!17756)

(declare-fun isDefined!14366 (Option!17756) Bool)

(assert (=> b!7788734 (= e!4612388 (not (isDefined!14366 lt!2673444)))))

(declare-fun b!7788735 () Bool)

(declare-fun res!3103369 () Bool)

(declare-fun e!4612387 () Bool)

(assert (=> b!7788735 (=> (not res!3103369) (not e!4612387))))

(declare-fun get!26305 (Option!17756) tuple2!69924)

(assert (=> b!7788735 (= res!3103369 (matchR!10311 r2!6217 (_2!38265 (get!26305 lt!2673444))))))

(declare-fun b!7788736 () Bool)

(declare-fun e!4612384 () Option!17756)

(assert (=> b!7788736 (= e!4612384 None!17755)))

(declare-fun b!7788737 () Bool)

(declare-fun ++!17928 (List!73690 List!73690) List!73690)

(assert (=> b!7788737 (= e!4612387 (= (++!17928 (_1!38265 (get!26305 lt!2673444)) (_2!38265 (get!26305 lt!2673444))) Nil!73566))))

(declare-fun b!7788738 () Bool)

(declare-fun e!4612386 () Option!17756)

(assert (=> b!7788738 (= e!4612386 e!4612384)))

(declare-fun c!1434539 () Bool)

(assert (=> b!7788738 (= c!1434539 ((_ is Nil!73566) Nil!73566))))

(declare-fun b!7788739 () Bool)

(declare-datatypes ((Unit!168558 0))(
  ( (Unit!168559) )
))
(declare-fun lt!2673445 () Unit!168558)

(declare-fun lt!2673443 () Unit!168558)

(assert (=> b!7788739 (= lt!2673445 lt!2673443)))

(assert (=> b!7788739 (= (++!17928 (++!17928 Nil!73566 (Cons!73566 (h!80014 Nil!73566) Nil!73566)) (t!388425 Nil!73566)) Nil!73566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3399 (List!73690 C!42028 List!73690 List!73690) Unit!168558)

(assert (=> b!7788739 (= lt!2673443 (lemmaMoveElementToOtherListKeepsConcatEq!3399 Nil!73566 (h!80014 Nil!73566) (t!388425 Nil!73566) Nil!73566))))

(assert (=> b!7788739 (= e!4612384 (findConcatSeparation!3786 r1!6279 r2!6217 (++!17928 Nil!73566 (Cons!73566 (h!80014 Nil!73566) Nil!73566)) (t!388425 Nil!73566) Nil!73566))))

(declare-fun b!7788740 () Bool)

(declare-fun e!4612385 () Bool)

(assert (=> b!7788740 (= e!4612385 (matchR!10311 r2!6217 Nil!73566))))

(declare-fun b!7788741 () Bool)

(assert (=> b!7788741 (= e!4612386 (Some!17755 (tuple2!69925 Nil!73566 Nil!73566)))))

(declare-fun d!2345729 () Bool)

(assert (=> d!2345729 e!4612388))

(declare-fun res!3103370 () Bool)

(assert (=> d!2345729 (=> res!3103370 e!4612388)))

(assert (=> d!2345729 (= res!3103370 e!4612387)))

(declare-fun res!3103372 () Bool)

(assert (=> d!2345729 (=> (not res!3103372) (not e!4612387))))

(assert (=> d!2345729 (= res!3103372 (isDefined!14366 lt!2673444))))

(assert (=> d!2345729 (= lt!2673444 e!4612386)))

(declare-fun c!1434540 () Bool)

(assert (=> d!2345729 (= c!1434540 e!4612385)))

(declare-fun res!3103371 () Bool)

(assert (=> d!2345729 (=> (not res!3103371) (not e!4612385))))

(assert (=> d!2345729 (= res!3103371 (matchR!10311 r1!6279 Nil!73566))))

(assert (=> d!2345729 (validRegex!11265 r1!6279)))

(assert (=> d!2345729 (= (findConcatSeparation!3786 r1!6279 r2!6217 Nil!73566 Nil!73566 Nil!73566) lt!2673444)))

(declare-fun b!7788742 () Bool)

(declare-fun res!3103373 () Bool)

(assert (=> b!7788742 (=> (not res!3103373) (not e!4612387))))

(assert (=> b!7788742 (= res!3103373 (matchR!10311 r1!6279 (_1!38265 (get!26305 lt!2673444))))))

(assert (= (and d!2345729 res!3103371) b!7788740))

(assert (= (and d!2345729 c!1434540) b!7788741))

(assert (= (and d!2345729 (not c!1434540)) b!7788738))

(assert (= (and b!7788738 c!1434539) b!7788736))

(assert (= (and b!7788738 (not c!1434539)) b!7788739))

(assert (= (and d!2345729 res!3103372) b!7788742))

(assert (= (and b!7788742 res!3103373) b!7788735))

(assert (= (and b!7788735 res!3103369) b!7788737))

(assert (= (and d!2345729 (not res!3103370)) b!7788734))

(declare-fun m!8231228 () Bool)

(assert (=> d!2345729 m!8231228))

(declare-fun m!8231230 () Bool)

(assert (=> d!2345729 m!8231230))

(assert (=> d!2345729 m!8231222))

(declare-fun m!8231232 () Bool)

(assert (=> b!7788737 m!8231232))

(declare-fun m!8231234 () Bool)

(assert (=> b!7788737 m!8231234))

(assert (=> b!7788742 m!8231232))

(declare-fun m!8231236 () Bool)

(assert (=> b!7788742 m!8231236))

(assert (=> b!7788735 m!8231232))

(declare-fun m!8231238 () Bool)

(assert (=> b!7788735 m!8231238))

(declare-fun m!8231240 () Bool)

(assert (=> b!7788740 m!8231240))

(assert (=> b!7788734 m!8231228))

(declare-fun m!8231242 () Bool)

(assert (=> b!7788739 m!8231242))

(assert (=> b!7788739 m!8231242))

(declare-fun m!8231244 () Bool)

(assert (=> b!7788739 m!8231244))

(declare-fun m!8231246 () Bool)

(assert (=> b!7788739 m!8231246))

(assert (=> b!7788739 m!8231242))

(declare-fun m!8231248 () Bool)

(assert (=> b!7788739 m!8231248))

(assert (=> b!7788695 d!2345729))

(declare-fun b!7788788 () Bool)

(declare-fun res!3103401 () Bool)

(declare-fun e!4612426 () Bool)

(assert (=> b!7788788 (=> res!3103401 e!4612426)))

(assert (=> b!7788788 (= res!3103401 (not ((_ is Concat!29696) r2!6217)))))

(declare-fun e!4612428 () Bool)

(assert (=> b!7788788 (= e!4612428 e!4612426)))

(declare-fun b!7788789 () Bool)

(declare-fun e!4612422 () Bool)

(declare-fun e!4612427 () Bool)

(assert (=> b!7788789 (= e!4612422 e!4612427)))

(declare-fun c!1434552 () Bool)

(assert (=> b!7788789 (= c!1434552 ((_ is Star!20851) r2!6217))))

(declare-fun b!7788790 () Bool)

(declare-fun e!4612424 () Bool)

(assert (=> b!7788790 (= e!4612427 e!4612424)))

(declare-fun res!3103400 () Bool)

(assert (=> b!7788790 (= res!3103400 (not (nullable!9235 (reg!21180 r2!6217))))))

(assert (=> b!7788790 (=> (not res!3103400) (not e!4612424))))

(declare-fun d!2345735 () Bool)

(declare-fun res!3103403 () Bool)

(assert (=> d!2345735 (=> res!3103403 e!4612422)))

(assert (=> d!2345735 (= res!3103403 ((_ is ElementMatch!20851) r2!6217))))

(assert (=> d!2345735 (= (validRegex!11265 r2!6217) e!4612422)))

(declare-fun b!7788791 () Bool)

(assert (=> b!7788791 (= e!4612427 e!4612428)))

(declare-fun c!1434551 () Bool)

(assert (=> b!7788791 (= c!1434551 ((_ is Union!20851) r2!6217))))

(declare-fun b!7788792 () Bool)

(declare-fun e!4612425 () Bool)

(declare-fun call!721883 () Bool)

(assert (=> b!7788792 (= e!4612425 call!721883)))

(declare-fun b!7788793 () Bool)

(declare-fun e!4612423 () Bool)

(assert (=> b!7788793 (= e!4612423 call!721883)))

(declare-fun bm!721876 () Bool)

(declare-fun call!721881 () Bool)

(assert (=> bm!721876 (= call!721881 (validRegex!11265 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))

(declare-fun bm!721877 () Bool)

(declare-fun call!721882 () Bool)

(assert (=> bm!721877 (= call!721883 call!721882)))

(declare-fun bm!721878 () Bool)

(assert (=> bm!721878 (= call!721882 (validRegex!11265 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))

(declare-fun b!7788794 () Bool)

(declare-fun res!3103399 () Bool)

(assert (=> b!7788794 (=> (not res!3103399) (not e!4612425))))

(assert (=> b!7788794 (= res!3103399 call!721881)))

(assert (=> b!7788794 (= e!4612428 e!4612425)))

(declare-fun b!7788795 () Bool)

(assert (=> b!7788795 (= e!4612426 e!4612423)))

(declare-fun res!3103402 () Bool)

(assert (=> b!7788795 (=> (not res!3103402) (not e!4612423))))

(assert (=> b!7788795 (= res!3103402 call!721881)))

(declare-fun b!7788796 () Bool)

(assert (=> b!7788796 (= e!4612424 call!721882)))

(assert (= (and d!2345735 (not res!3103403)) b!7788789))

(assert (= (and b!7788789 c!1434552) b!7788790))

(assert (= (and b!7788789 (not c!1434552)) b!7788791))

(assert (= (and b!7788790 res!3103400) b!7788796))

(assert (= (and b!7788791 c!1434551) b!7788794))

(assert (= (and b!7788791 (not c!1434551)) b!7788788))

(assert (= (and b!7788794 res!3103399) b!7788792))

(assert (= (and b!7788788 (not res!3103401)) b!7788795))

(assert (= (and b!7788795 res!3103402) b!7788793))

(assert (= (or b!7788794 b!7788795) bm!721876))

(assert (= (or b!7788792 b!7788793) bm!721877))

(assert (= (or b!7788796 bm!721877) bm!721878))

(declare-fun m!8231272 () Bool)

(assert (=> b!7788790 m!8231272))

(declare-fun m!8231274 () Bool)

(assert (=> bm!721876 m!8231274))

(declare-fun m!8231276 () Bool)

(assert (=> bm!721878 m!8231276))

(assert (=> b!7788696 d!2345735))

(declare-fun d!2345739 () Bool)

(declare-fun nullableFct!3620 (Regex!20851) Bool)

(assert (=> d!2345739 (= (nullable!9235 r2!6217) (nullableFct!3620 r2!6217))))

(declare-fun bs!1966319 () Bool)

(assert (= bs!1966319 d!2345739))

(declare-fun m!8231278 () Bool)

(assert (=> bs!1966319 m!8231278))

(assert (=> b!7788691 d!2345739))

(declare-fun b!7788806 () Bool)

(declare-fun res!3103411 () Bool)

(declare-fun e!4612440 () Bool)

(assert (=> b!7788806 (=> res!3103411 e!4612440)))

(assert (=> b!7788806 (= res!3103411 (not ((_ is Concat!29696) r1!6279)))))

(declare-fun e!4612442 () Bool)

(assert (=> b!7788806 (= e!4612442 e!4612440)))

(declare-fun b!7788807 () Bool)

(declare-fun e!4612436 () Bool)

(declare-fun e!4612441 () Bool)

(assert (=> b!7788807 (= e!4612436 e!4612441)))

(declare-fun c!1434556 () Bool)

(assert (=> b!7788807 (= c!1434556 ((_ is Star!20851) r1!6279))))

(declare-fun b!7788808 () Bool)

(declare-fun e!4612438 () Bool)

(assert (=> b!7788808 (= e!4612441 e!4612438)))

(declare-fun res!3103410 () Bool)

(assert (=> b!7788808 (= res!3103410 (not (nullable!9235 (reg!21180 r1!6279))))))

(assert (=> b!7788808 (=> (not res!3103410) (not e!4612438))))

(declare-fun d!2345741 () Bool)

(declare-fun res!3103413 () Bool)

(assert (=> d!2345741 (=> res!3103413 e!4612436)))

(assert (=> d!2345741 (= res!3103413 ((_ is ElementMatch!20851) r1!6279))))

(assert (=> d!2345741 (= (validRegex!11265 r1!6279) e!4612436)))

(declare-fun b!7788809 () Bool)

(assert (=> b!7788809 (= e!4612441 e!4612442)))

(declare-fun c!1434555 () Bool)

(assert (=> b!7788809 (= c!1434555 ((_ is Union!20851) r1!6279))))

(declare-fun b!7788810 () Bool)

(declare-fun e!4612439 () Bool)

(declare-fun call!721889 () Bool)

(assert (=> b!7788810 (= e!4612439 call!721889)))

(declare-fun b!7788811 () Bool)

(declare-fun e!4612437 () Bool)

(assert (=> b!7788811 (= e!4612437 call!721889)))

(declare-fun bm!721882 () Bool)

(declare-fun call!721887 () Bool)

(assert (=> bm!721882 (= call!721887 (validRegex!11265 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))

(declare-fun bm!721883 () Bool)

(declare-fun call!721888 () Bool)

(assert (=> bm!721883 (= call!721889 call!721888)))

(declare-fun bm!721884 () Bool)

(assert (=> bm!721884 (= call!721888 (validRegex!11265 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))

(declare-fun b!7788812 () Bool)

(declare-fun res!3103409 () Bool)

(assert (=> b!7788812 (=> (not res!3103409) (not e!4612439))))

(assert (=> b!7788812 (= res!3103409 call!721887)))

(assert (=> b!7788812 (= e!4612442 e!4612439)))

(declare-fun b!7788813 () Bool)

(assert (=> b!7788813 (= e!4612440 e!4612437)))

(declare-fun res!3103412 () Bool)

(assert (=> b!7788813 (=> (not res!3103412) (not e!4612437))))

(assert (=> b!7788813 (= res!3103412 call!721887)))

(declare-fun b!7788814 () Bool)

(assert (=> b!7788814 (= e!4612438 call!721888)))

(assert (= (and d!2345741 (not res!3103413)) b!7788807))

(assert (= (and b!7788807 c!1434556) b!7788808))

(assert (= (and b!7788807 (not c!1434556)) b!7788809))

(assert (= (and b!7788808 res!3103410) b!7788814))

(assert (= (and b!7788809 c!1434555) b!7788812))

(assert (= (and b!7788809 (not c!1434555)) b!7788806))

(assert (= (and b!7788812 res!3103409) b!7788810))

(assert (= (and b!7788806 (not res!3103411)) b!7788813))

(assert (= (and b!7788813 res!3103412) b!7788811))

(assert (= (or b!7788812 b!7788813) bm!721882))

(assert (= (or b!7788810 b!7788811) bm!721883))

(assert (= (or b!7788814 bm!721883) bm!721884))

(declare-fun m!8231286 () Bool)

(assert (=> b!7788808 m!8231286))

(declare-fun m!8231288 () Bool)

(assert (=> bm!721882 m!8231288))

(declare-fun m!8231290 () Bool)

(assert (=> bm!721884 m!8231290))

(assert (=> start!740774 d!2345741))

(declare-fun d!2345745 () Bool)

(assert (=> d!2345745 (= (nullable!9235 r1!6279) (nullableFct!3620 r1!6279))))

(declare-fun bs!1966320 () Bool)

(assert (= bs!1966320 d!2345745))

(declare-fun m!8231292 () Bool)

(assert (=> bs!1966320 m!8231292))

(assert (=> b!7788693 d!2345745))

(declare-fun b!7788894 () Bool)

(declare-fun res!3103459 () Bool)

(declare-fun e!4612487 () Bool)

(assert (=> b!7788894 (=> res!3103459 e!4612487)))

(assert (=> b!7788894 (= res!3103459 (not ((_ is ElementMatch!20851) (Concat!29696 r1!6279 r2!6217))))))

(declare-fun e!4612490 () Bool)

(assert (=> b!7788894 (= e!4612490 e!4612487)))

(declare-fun b!7788895 () Bool)

(declare-fun e!4612489 () Bool)

(declare-fun lt!2673454 () Bool)

(declare-fun call!721898 () Bool)

(assert (=> b!7788895 (= e!4612489 (= lt!2673454 call!721898))))

(declare-fun b!7788896 () Bool)

(declare-fun e!4612485 () Bool)

(assert (=> b!7788896 (= e!4612485 (nullable!9235 (Concat!29696 r1!6279 r2!6217)))))

(declare-fun b!7788897 () Bool)

(declare-fun res!3103466 () Bool)

(declare-fun e!4612486 () Bool)

(assert (=> b!7788897 (=> (not res!3103466) (not e!4612486))))

(declare-fun isEmpty!42203 (List!73690) Bool)

(declare-fun tail!15471 (List!73690) List!73690)

(assert (=> b!7788897 (= res!3103466 (isEmpty!42203 (tail!15471 s!14292)))))

(declare-fun b!7788898 () Bool)

(declare-fun res!3103461 () Bool)

(assert (=> b!7788898 (=> (not res!3103461) (not e!4612486))))

(assert (=> b!7788898 (= res!3103461 (not call!721898))))

(declare-fun b!7788899 () Bool)

(assert (=> b!7788899 (= e!4612489 e!4612490)))

(declare-fun c!1434574 () Bool)

(assert (=> b!7788899 (= c!1434574 ((_ is EmptyLang!20851) (Concat!29696 r1!6279 r2!6217)))))

(declare-fun b!7788900 () Bool)

(declare-fun derivativeStep!6188 (Regex!20851 C!42028) Regex!20851)

(declare-fun head!15930 (List!73690) C!42028)

(assert (=> b!7788900 (= e!4612485 (matchR!10311 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)) (tail!15471 s!14292)))))

(declare-fun b!7788901 () Bool)

(declare-fun res!3103464 () Bool)

(assert (=> b!7788901 (=> res!3103464 e!4612487)))

(assert (=> b!7788901 (= res!3103464 e!4612486)))

(declare-fun res!3103465 () Bool)

(assert (=> b!7788901 (=> (not res!3103465) (not e!4612486))))

(assert (=> b!7788901 (= res!3103465 lt!2673454)))

(declare-fun b!7788902 () Bool)

(assert (=> b!7788902 (= e!4612486 (= (head!15930 s!14292) (c!1434530 (Concat!29696 r1!6279 r2!6217))))))

(declare-fun d!2345747 () Bool)

(assert (=> d!2345747 e!4612489))

(declare-fun c!1434575 () Bool)

(assert (=> d!2345747 (= c!1434575 ((_ is EmptyExpr!20851) (Concat!29696 r1!6279 r2!6217)))))

(assert (=> d!2345747 (= lt!2673454 e!4612485)))

(declare-fun c!1434576 () Bool)

(assert (=> d!2345747 (= c!1434576 (isEmpty!42203 s!14292))))

(assert (=> d!2345747 (validRegex!11265 (Concat!29696 r1!6279 r2!6217))))

(assert (=> d!2345747 (= (matchR!10311 (Concat!29696 r1!6279 r2!6217) s!14292) lt!2673454)))

(declare-fun b!7788903 () Bool)

(declare-fun res!3103460 () Bool)

(declare-fun e!4612491 () Bool)

(assert (=> b!7788903 (=> res!3103460 e!4612491)))

(assert (=> b!7788903 (= res!3103460 (not (isEmpty!42203 (tail!15471 s!14292))))))

(declare-fun b!7788904 () Bool)

(assert (=> b!7788904 (= e!4612491 (not (= (head!15930 s!14292) (c!1434530 (Concat!29696 r1!6279 r2!6217)))))))

(declare-fun b!7788905 () Bool)

(declare-fun e!4612488 () Bool)

(assert (=> b!7788905 (= e!4612487 e!4612488)))

(declare-fun res!3103462 () Bool)

(assert (=> b!7788905 (=> (not res!3103462) (not e!4612488))))

(assert (=> b!7788905 (= res!3103462 (not lt!2673454))))

(declare-fun bm!721893 () Bool)

(assert (=> bm!721893 (= call!721898 (isEmpty!42203 s!14292))))

(declare-fun b!7788906 () Bool)

(assert (=> b!7788906 (= e!4612490 (not lt!2673454))))

(declare-fun b!7788907 () Bool)

(assert (=> b!7788907 (= e!4612488 e!4612491)))

(declare-fun res!3103463 () Bool)

(assert (=> b!7788907 (=> res!3103463 e!4612491)))

(assert (=> b!7788907 (= res!3103463 call!721898)))

(assert (= (and d!2345747 c!1434576) b!7788896))

(assert (= (and d!2345747 (not c!1434576)) b!7788900))

(assert (= (and d!2345747 c!1434575) b!7788895))

(assert (= (and d!2345747 (not c!1434575)) b!7788899))

(assert (= (and b!7788899 c!1434574) b!7788906))

(assert (= (and b!7788899 (not c!1434574)) b!7788894))

(assert (= (and b!7788894 (not res!3103459)) b!7788901))

(assert (= (and b!7788901 res!3103465) b!7788898))

(assert (= (and b!7788898 res!3103461) b!7788897))

(assert (= (and b!7788897 res!3103466) b!7788902))

(assert (= (and b!7788901 (not res!3103464)) b!7788905))

(assert (= (and b!7788905 res!3103462) b!7788907))

(assert (= (and b!7788907 (not res!3103463)) b!7788903))

(assert (= (and b!7788903 (not res!3103460)) b!7788904))

(assert (= (or b!7788895 b!7788898 b!7788907) bm!721893))

(declare-fun m!8231318 () Bool)

(assert (=> b!7788897 m!8231318))

(assert (=> b!7788897 m!8231318))

(declare-fun m!8231320 () Bool)

(assert (=> b!7788897 m!8231320))

(declare-fun m!8231322 () Bool)

(assert (=> bm!721893 m!8231322))

(assert (=> d!2345747 m!8231322))

(declare-fun m!8231324 () Bool)

(assert (=> d!2345747 m!8231324))

(declare-fun m!8231326 () Bool)

(assert (=> b!7788900 m!8231326))

(assert (=> b!7788900 m!8231326))

(declare-fun m!8231328 () Bool)

(assert (=> b!7788900 m!8231328))

(assert (=> b!7788900 m!8231318))

(assert (=> b!7788900 m!8231328))

(assert (=> b!7788900 m!8231318))

(declare-fun m!8231330 () Bool)

(assert (=> b!7788900 m!8231330))

(assert (=> b!7788904 m!8231326))

(assert (=> b!7788902 m!8231326))

(assert (=> b!7788903 m!8231318))

(assert (=> b!7788903 m!8231318))

(assert (=> b!7788903 m!8231320))

(declare-fun m!8231332 () Bool)

(assert (=> b!7788896 m!8231332))

(assert (=> b!7788694 d!2345747))

(declare-fun b!7788939 () Bool)

(declare-fun e!4612502 () Bool)

(declare-fun tp!2292374 () Bool)

(assert (=> b!7788939 (= e!4612502 (and tp_is_empty!52057 tp!2292374))))

(assert (=> b!7788684 (= tp!2292336 e!4612502)))

(assert (= (and b!7788684 ((_ is Cons!73566) (t!388425 s!14292))) b!7788939))

(declare-fun b!7788977 () Bool)

(declare-fun e!4612511 () Bool)

(declare-fun tp!2292415 () Bool)

(declare-fun tp!2292416 () Bool)

(assert (=> b!7788977 (= e!4612511 (and tp!2292415 tp!2292416))))

(assert (=> b!7788689 (= tp!2292339 e!4612511)))

(declare-fun b!7788975 () Bool)

(declare-fun tp!2292418 () Bool)

(declare-fun tp!2292420 () Bool)

(assert (=> b!7788975 (= e!4612511 (and tp!2292418 tp!2292420))))

(declare-fun b!7788976 () Bool)

(declare-fun tp!2292417 () Bool)

(assert (=> b!7788976 (= e!4612511 tp!2292417)))

(declare-fun b!7788974 () Bool)

(assert (=> b!7788974 (= e!4612511 tp_is_empty!52057)))

(assert (= (and b!7788689 ((_ is ElementMatch!20851) (regOne!42214 r1!6279))) b!7788974))

(assert (= (and b!7788689 ((_ is Concat!29696) (regOne!42214 r1!6279))) b!7788975))

(assert (= (and b!7788689 ((_ is Star!20851) (regOne!42214 r1!6279))) b!7788976))

(assert (= (and b!7788689 ((_ is Union!20851) (regOne!42214 r1!6279))) b!7788977))

(declare-fun b!7788985 () Bool)

(declare-fun e!4612513 () Bool)

(declare-fun tp!2292425 () Bool)

(declare-fun tp!2292426 () Bool)

(assert (=> b!7788985 (= e!4612513 (and tp!2292425 tp!2292426))))

(assert (=> b!7788689 (= tp!2292335 e!4612513)))

(declare-fun b!7788983 () Bool)

(declare-fun tp!2292428 () Bool)

(declare-fun tp!2292429 () Bool)

(assert (=> b!7788983 (= e!4612513 (and tp!2292428 tp!2292429))))

(declare-fun b!7788984 () Bool)

(declare-fun tp!2292427 () Bool)

(assert (=> b!7788984 (= e!4612513 tp!2292427)))

(declare-fun b!7788982 () Bool)

(assert (=> b!7788982 (= e!4612513 tp_is_empty!52057)))

(assert (= (and b!7788689 ((_ is ElementMatch!20851) (regTwo!42214 r1!6279))) b!7788982))

(assert (= (and b!7788689 ((_ is Concat!29696) (regTwo!42214 r1!6279))) b!7788983))

(assert (= (and b!7788689 ((_ is Star!20851) (regTwo!42214 r1!6279))) b!7788984))

(assert (= (and b!7788689 ((_ is Union!20851) (regTwo!42214 r1!6279))) b!7788985))

(declare-fun b!7788989 () Bool)

(declare-fun e!4612514 () Bool)

(declare-fun tp!2292430 () Bool)

(declare-fun tp!2292431 () Bool)

(assert (=> b!7788989 (= e!4612514 (and tp!2292430 tp!2292431))))

(assert (=> b!7788686 (= tp!2292340 e!4612514)))

(declare-fun b!7788987 () Bool)

(declare-fun tp!2292433 () Bool)

(declare-fun tp!2292434 () Bool)

(assert (=> b!7788987 (= e!4612514 (and tp!2292433 tp!2292434))))

(declare-fun b!7788988 () Bool)

(declare-fun tp!2292432 () Bool)

(assert (=> b!7788988 (= e!4612514 tp!2292432)))

(declare-fun b!7788986 () Bool)

(assert (=> b!7788986 (= e!4612514 tp_is_empty!52057)))

(assert (= (and b!7788686 ((_ is ElementMatch!20851) (regOne!42214 r2!6217))) b!7788986))

(assert (= (and b!7788686 ((_ is Concat!29696) (regOne!42214 r2!6217))) b!7788987))

(assert (= (and b!7788686 ((_ is Star!20851) (regOne!42214 r2!6217))) b!7788988))

(assert (= (and b!7788686 ((_ is Union!20851) (regOne!42214 r2!6217))) b!7788989))

(declare-fun b!7788993 () Bool)

(declare-fun e!4612515 () Bool)

(declare-fun tp!2292435 () Bool)

(declare-fun tp!2292436 () Bool)

(assert (=> b!7788993 (= e!4612515 (and tp!2292435 tp!2292436))))

(assert (=> b!7788686 (= tp!2292333 e!4612515)))

(declare-fun b!7788991 () Bool)

(declare-fun tp!2292438 () Bool)

(declare-fun tp!2292439 () Bool)

(assert (=> b!7788991 (= e!4612515 (and tp!2292438 tp!2292439))))

(declare-fun b!7788992 () Bool)

(declare-fun tp!2292437 () Bool)

(assert (=> b!7788992 (= e!4612515 tp!2292437)))

(declare-fun b!7788990 () Bool)

(assert (=> b!7788990 (= e!4612515 tp_is_empty!52057)))

(assert (= (and b!7788686 ((_ is ElementMatch!20851) (regTwo!42214 r2!6217))) b!7788990))

(assert (= (and b!7788686 ((_ is Concat!29696) (regTwo!42214 r2!6217))) b!7788991))

(assert (= (and b!7788686 ((_ is Star!20851) (regTwo!42214 r2!6217))) b!7788992))

(assert (= (and b!7788686 ((_ is Union!20851) (regTwo!42214 r2!6217))) b!7788993))

(declare-fun b!7788997 () Bool)

(declare-fun e!4612516 () Bool)

(declare-fun tp!2292440 () Bool)

(declare-fun tp!2292441 () Bool)

(assert (=> b!7788997 (= e!4612516 (and tp!2292440 tp!2292441))))

(assert (=> b!7788697 (= tp!2292334 e!4612516)))

(declare-fun b!7788995 () Bool)

(declare-fun tp!2292443 () Bool)

(declare-fun tp!2292444 () Bool)

(assert (=> b!7788995 (= e!4612516 (and tp!2292443 tp!2292444))))

(declare-fun b!7788996 () Bool)

(declare-fun tp!2292442 () Bool)

(assert (=> b!7788996 (= e!4612516 tp!2292442)))

(declare-fun b!7788994 () Bool)

(assert (=> b!7788994 (= e!4612516 tp_is_empty!52057)))

(assert (= (and b!7788697 ((_ is ElementMatch!20851) (reg!21180 r2!6217))) b!7788994))

(assert (= (and b!7788697 ((_ is Concat!29696) (reg!21180 r2!6217))) b!7788995))

(assert (= (and b!7788697 ((_ is Star!20851) (reg!21180 r2!6217))) b!7788996))

(assert (= (and b!7788697 ((_ is Union!20851) (reg!21180 r2!6217))) b!7788997))

(declare-fun b!7789001 () Bool)

(declare-fun e!4612517 () Bool)

(declare-fun tp!2292445 () Bool)

(declare-fun tp!2292446 () Bool)

(assert (=> b!7789001 (= e!4612517 (and tp!2292445 tp!2292446))))

(assert (=> b!7788687 (= tp!2292341 e!4612517)))

(declare-fun b!7788999 () Bool)

(declare-fun tp!2292448 () Bool)

(declare-fun tp!2292449 () Bool)

(assert (=> b!7788999 (= e!4612517 (and tp!2292448 tp!2292449))))

(declare-fun b!7789000 () Bool)

(declare-fun tp!2292447 () Bool)

(assert (=> b!7789000 (= e!4612517 tp!2292447)))

(declare-fun b!7788998 () Bool)

(assert (=> b!7788998 (= e!4612517 tp_is_empty!52057)))

(assert (= (and b!7788687 ((_ is ElementMatch!20851) (reg!21180 r1!6279))) b!7788998))

(assert (= (and b!7788687 ((_ is Concat!29696) (reg!21180 r1!6279))) b!7788999))

(assert (= (and b!7788687 ((_ is Star!20851) (reg!21180 r1!6279))) b!7789000))

(assert (= (and b!7788687 ((_ is Union!20851) (reg!21180 r1!6279))) b!7789001))

(declare-fun b!7789005 () Bool)

(declare-fun e!4612518 () Bool)

(declare-fun tp!2292450 () Bool)

(declare-fun tp!2292451 () Bool)

(assert (=> b!7789005 (= e!4612518 (and tp!2292450 tp!2292451))))

(assert (=> b!7788688 (= tp!2292342 e!4612518)))

(declare-fun b!7789003 () Bool)

(declare-fun tp!2292453 () Bool)

(declare-fun tp!2292454 () Bool)

(assert (=> b!7789003 (= e!4612518 (and tp!2292453 tp!2292454))))

(declare-fun b!7789004 () Bool)

(declare-fun tp!2292452 () Bool)

(assert (=> b!7789004 (= e!4612518 tp!2292452)))

(declare-fun b!7789002 () Bool)

(assert (=> b!7789002 (= e!4612518 tp_is_empty!52057)))

(assert (= (and b!7788688 ((_ is ElementMatch!20851) (regOne!42215 r2!6217))) b!7789002))

(assert (= (and b!7788688 ((_ is Concat!29696) (regOne!42215 r2!6217))) b!7789003))

(assert (= (and b!7788688 ((_ is Star!20851) (regOne!42215 r2!6217))) b!7789004))

(assert (= (and b!7788688 ((_ is Union!20851) (regOne!42215 r2!6217))) b!7789005))

(declare-fun b!7789009 () Bool)

(declare-fun e!4612519 () Bool)

(declare-fun tp!2292455 () Bool)

(declare-fun tp!2292456 () Bool)

(assert (=> b!7789009 (= e!4612519 (and tp!2292455 tp!2292456))))

(assert (=> b!7788688 (= tp!2292343 e!4612519)))

(declare-fun b!7789007 () Bool)

(declare-fun tp!2292458 () Bool)

(declare-fun tp!2292459 () Bool)

(assert (=> b!7789007 (= e!4612519 (and tp!2292458 tp!2292459))))

(declare-fun b!7789008 () Bool)

(declare-fun tp!2292457 () Bool)

(assert (=> b!7789008 (= e!4612519 tp!2292457)))

(declare-fun b!7789006 () Bool)

(assert (=> b!7789006 (= e!4612519 tp_is_empty!52057)))

(assert (= (and b!7788688 ((_ is ElementMatch!20851) (regTwo!42215 r2!6217))) b!7789006))

(assert (= (and b!7788688 ((_ is Concat!29696) (regTwo!42215 r2!6217))) b!7789007))

(assert (= (and b!7788688 ((_ is Star!20851) (regTwo!42215 r2!6217))) b!7789008))

(assert (= (and b!7788688 ((_ is Union!20851) (regTwo!42215 r2!6217))) b!7789009))

(declare-fun b!7789013 () Bool)

(declare-fun e!4612520 () Bool)

(declare-fun tp!2292460 () Bool)

(declare-fun tp!2292461 () Bool)

(assert (=> b!7789013 (= e!4612520 (and tp!2292460 tp!2292461))))

(assert (=> b!7788683 (= tp!2292337 e!4612520)))

(declare-fun b!7789011 () Bool)

(declare-fun tp!2292463 () Bool)

(declare-fun tp!2292464 () Bool)

(assert (=> b!7789011 (= e!4612520 (and tp!2292463 tp!2292464))))

(declare-fun b!7789012 () Bool)

(declare-fun tp!2292462 () Bool)

(assert (=> b!7789012 (= e!4612520 tp!2292462)))

(declare-fun b!7789010 () Bool)

(assert (=> b!7789010 (= e!4612520 tp_is_empty!52057)))

(assert (= (and b!7788683 ((_ is ElementMatch!20851) (regOne!42215 r1!6279))) b!7789010))

(assert (= (and b!7788683 ((_ is Concat!29696) (regOne!42215 r1!6279))) b!7789011))

(assert (= (and b!7788683 ((_ is Star!20851) (regOne!42215 r1!6279))) b!7789012))

(assert (= (and b!7788683 ((_ is Union!20851) (regOne!42215 r1!6279))) b!7789013))

(declare-fun b!7789017 () Bool)

(declare-fun e!4612521 () Bool)

(declare-fun tp!2292465 () Bool)

(declare-fun tp!2292466 () Bool)

(assert (=> b!7789017 (= e!4612521 (and tp!2292465 tp!2292466))))

(assert (=> b!7788683 (= tp!2292338 e!4612521)))

(declare-fun b!7789015 () Bool)

(declare-fun tp!2292468 () Bool)

(declare-fun tp!2292469 () Bool)

(assert (=> b!7789015 (= e!4612521 (and tp!2292468 tp!2292469))))

(declare-fun b!7789016 () Bool)

(declare-fun tp!2292467 () Bool)

(assert (=> b!7789016 (= e!4612521 tp!2292467)))

(declare-fun b!7789014 () Bool)

(assert (=> b!7789014 (= e!4612521 tp_is_empty!52057)))

(assert (= (and b!7788683 ((_ is ElementMatch!20851) (regTwo!42215 r1!6279))) b!7789014))

(assert (= (and b!7788683 ((_ is Concat!29696) (regTwo!42215 r1!6279))) b!7789015))

(assert (= (and b!7788683 ((_ is Star!20851) (regTwo!42215 r1!6279))) b!7789016))

(assert (= (and b!7788683 ((_ is Union!20851) (regTwo!42215 r1!6279))) b!7789017))

(check-sat (not b!7789003) (not b!7788740) (not b!7788737) (not b!7788896) (not b!7788939) (not b!7789007) (not b!7789005) (not b!7789011) (not d!2345745) (not b!7788808) (not b!7789015) (not b!7788988) (not b!7788995) (not b!7788739) (not b!7788985) (not b!7788993) (not b!7788976) (not b!7788984) (not b!7789008) (not b!7788997) (not b!7788996) (not b!7789009) (not b!7788987) (not b!7789013) (not b!7788983) (not b!7788902) (not bm!721876) tp_is_empty!52057 (not d!2345747) (not b!7789016) (not b!7788735) (not d!2345739) (not b!7788999) (not b!7788991) (not b!7788904) (not d!2345729) (not b!7788897) (not b!7788900) (not b!7789001) (not b!7788903) (not bm!721884) (not b!7788790) (not b!7789012) (not bm!721893) (not b!7788742) (not b!7788989) (not b!7789004) (not bm!721882) (not b!7788992) (not b!7788975) (not b!7789017) (not b!7788734) (not bm!721878) (not b!7788977) (not b!7789000))
(check-sat)
(get-model)

(declare-fun b!7789018 () Bool)

(declare-fun res!3103467 () Bool)

(declare-fun e!4612524 () Bool)

(assert (=> b!7789018 (=> res!3103467 e!4612524)))

(assert (=> b!7789018 (= res!3103467 (not ((_ is ElementMatch!20851) (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)))))))

(declare-fun e!4612527 () Bool)

(assert (=> b!7789018 (= e!4612527 e!4612524)))

(declare-fun b!7789019 () Bool)

(declare-fun e!4612526 () Bool)

(declare-fun lt!2673455 () Bool)

(declare-fun call!721899 () Bool)

(assert (=> b!7789019 (= e!4612526 (= lt!2673455 call!721899))))

(declare-fun b!7789020 () Bool)

(declare-fun e!4612522 () Bool)

(assert (=> b!7789020 (= e!4612522 (nullable!9235 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292))))))

(declare-fun b!7789021 () Bool)

(declare-fun res!3103474 () Bool)

(declare-fun e!4612523 () Bool)

(assert (=> b!7789021 (=> (not res!3103474) (not e!4612523))))

(assert (=> b!7789021 (= res!3103474 (isEmpty!42203 (tail!15471 (tail!15471 s!14292))))))

(declare-fun b!7789022 () Bool)

(declare-fun res!3103469 () Bool)

(assert (=> b!7789022 (=> (not res!3103469) (not e!4612523))))

(assert (=> b!7789022 (= res!3103469 (not call!721899))))

(declare-fun b!7789023 () Bool)

(assert (=> b!7789023 (= e!4612526 e!4612527)))

(declare-fun c!1434577 () Bool)

(assert (=> b!7789023 (= c!1434577 ((_ is EmptyLang!20851) (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292))))))

(declare-fun b!7789024 () Bool)

(assert (=> b!7789024 (= e!4612522 (matchR!10311 (derivativeStep!6188 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)) (head!15930 (tail!15471 s!14292))) (tail!15471 (tail!15471 s!14292))))))

(declare-fun b!7789025 () Bool)

(declare-fun res!3103472 () Bool)

(assert (=> b!7789025 (=> res!3103472 e!4612524)))

(assert (=> b!7789025 (= res!3103472 e!4612523)))

(declare-fun res!3103473 () Bool)

(assert (=> b!7789025 (=> (not res!3103473) (not e!4612523))))

(assert (=> b!7789025 (= res!3103473 lt!2673455)))

(declare-fun b!7789026 () Bool)

(assert (=> b!7789026 (= e!4612523 (= (head!15930 (tail!15471 s!14292)) (c!1434530 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)))))))

(declare-fun d!2345753 () Bool)

(assert (=> d!2345753 e!4612526))

(declare-fun c!1434578 () Bool)

(assert (=> d!2345753 (= c!1434578 ((_ is EmptyExpr!20851) (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292))))))

(assert (=> d!2345753 (= lt!2673455 e!4612522)))

(declare-fun c!1434579 () Bool)

(assert (=> d!2345753 (= c!1434579 (isEmpty!42203 (tail!15471 s!14292)))))

(assert (=> d!2345753 (validRegex!11265 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)))))

(assert (=> d!2345753 (= (matchR!10311 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)) (tail!15471 s!14292)) lt!2673455)))

(declare-fun b!7789027 () Bool)

(declare-fun res!3103468 () Bool)

(declare-fun e!4612528 () Bool)

(assert (=> b!7789027 (=> res!3103468 e!4612528)))

(assert (=> b!7789027 (= res!3103468 (not (isEmpty!42203 (tail!15471 (tail!15471 s!14292)))))))

(declare-fun b!7789028 () Bool)

(assert (=> b!7789028 (= e!4612528 (not (= (head!15930 (tail!15471 s!14292)) (c!1434530 (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292))))))))

(declare-fun b!7789029 () Bool)

(declare-fun e!4612525 () Bool)

(assert (=> b!7789029 (= e!4612524 e!4612525)))

(declare-fun res!3103470 () Bool)

(assert (=> b!7789029 (=> (not res!3103470) (not e!4612525))))

(assert (=> b!7789029 (= res!3103470 (not lt!2673455))))

(declare-fun bm!721894 () Bool)

(assert (=> bm!721894 (= call!721899 (isEmpty!42203 (tail!15471 s!14292)))))

(declare-fun b!7789030 () Bool)

(assert (=> b!7789030 (= e!4612527 (not lt!2673455))))

(declare-fun b!7789031 () Bool)

(assert (=> b!7789031 (= e!4612525 e!4612528)))

(declare-fun res!3103471 () Bool)

(assert (=> b!7789031 (=> res!3103471 e!4612528)))

(assert (=> b!7789031 (= res!3103471 call!721899)))

(assert (= (and d!2345753 c!1434579) b!7789020))

(assert (= (and d!2345753 (not c!1434579)) b!7789024))

(assert (= (and d!2345753 c!1434578) b!7789019))

(assert (= (and d!2345753 (not c!1434578)) b!7789023))

(assert (= (and b!7789023 c!1434577) b!7789030))

(assert (= (and b!7789023 (not c!1434577)) b!7789018))

(assert (= (and b!7789018 (not res!3103467)) b!7789025))

(assert (= (and b!7789025 res!3103473) b!7789022))

(assert (= (and b!7789022 res!3103469) b!7789021))

(assert (= (and b!7789021 res!3103474) b!7789026))

(assert (= (and b!7789025 (not res!3103472)) b!7789029))

(assert (= (and b!7789029 res!3103470) b!7789031))

(assert (= (and b!7789031 (not res!3103471)) b!7789027))

(assert (= (and b!7789027 (not res!3103468)) b!7789028))

(assert (= (or b!7789019 b!7789022 b!7789031) bm!721894))

(assert (=> b!7789021 m!8231318))

(declare-fun m!8231334 () Bool)

(assert (=> b!7789021 m!8231334))

(assert (=> b!7789021 m!8231334))

(declare-fun m!8231336 () Bool)

(assert (=> b!7789021 m!8231336))

(assert (=> bm!721894 m!8231318))

(assert (=> bm!721894 m!8231320))

(assert (=> d!2345753 m!8231318))

(assert (=> d!2345753 m!8231320))

(assert (=> d!2345753 m!8231328))

(declare-fun m!8231338 () Bool)

(assert (=> d!2345753 m!8231338))

(assert (=> b!7789024 m!8231318))

(declare-fun m!8231340 () Bool)

(assert (=> b!7789024 m!8231340))

(assert (=> b!7789024 m!8231328))

(assert (=> b!7789024 m!8231340))

(declare-fun m!8231342 () Bool)

(assert (=> b!7789024 m!8231342))

(assert (=> b!7789024 m!8231318))

(assert (=> b!7789024 m!8231334))

(assert (=> b!7789024 m!8231342))

(assert (=> b!7789024 m!8231334))

(declare-fun m!8231344 () Bool)

(assert (=> b!7789024 m!8231344))

(assert (=> b!7789028 m!8231318))

(assert (=> b!7789028 m!8231340))

(assert (=> b!7789026 m!8231318))

(assert (=> b!7789026 m!8231340))

(assert (=> b!7789027 m!8231318))

(assert (=> b!7789027 m!8231334))

(assert (=> b!7789027 m!8231334))

(assert (=> b!7789027 m!8231336))

(assert (=> b!7789020 m!8231328))

(declare-fun m!8231346 () Bool)

(assert (=> b!7789020 m!8231346))

(assert (=> b!7788900 d!2345753))

(declare-fun e!4612541 () Regex!20851)

(declare-fun b!7789052 () Bool)

(assert (=> b!7789052 (= e!4612541 (ite (= (head!15930 s!14292) (c!1434530 (Concat!29696 r1!6279 r2!6217))) EmptyExpr!20851 EmptyLang!20851))))

(declare-fun call!721911 () Regex!20851)

(declare-fun c!1434591 () Bool)

(declare-fun bm!721903 () Bool)

(assert (=> bm!721903 (= call!721911 (derivativeStep!6188 (ite c!1434591 (regOne!42215 (Concat!29696 r1!6279 r2!6217)) (regOne!42214 (Concat!29696 r1!6279 r2!6217))) (head!15930 s!14292)))))

(declare-fun bm!721904 () Bool)

(declare-fun call!721909 () Regex!20851)

(declare-fun call!721910 () Regex!20851)

(assert (=> bm!721904 (= call!721909 call!721910)))

(declare-fun call!721908 () Regex!20851)

(declare-fun c!1434592 () Bool)

(declare-fun c!1434594 () Bool)

(declare-fun bm!721905 () Bool)

(assert (=> bm!721905 (= call!721908 (derivativeStep!6188 (ite c!1434591 (regTwo!42215 (Concat!29696 r1!6279 r2!6217)) (ite c!1434592 (reg!21180 (Concat!29696 r1!6279 r2!6217)) (ite c!1434594 (regTwo!42214 (Concat!29696 r1!6279 r2!6217)) (regOne!42214 (Concat!29696 r1!6279 r2!6217))))) (head!15930 s!14292)))))

(declare-fun b!7789053 () Bool)

(declare-fun e!4612539 () Regex!20851)

(assert (=> b!7789053 (= e!4612539 (Union!20851 call!721911 call!721908))))

(declare-fun b!7789054 () Bool)

(declare-fun e!4612542 () Regex!20851)

(assert (=> b!7789054 (= e!4612542 (Union!20851 (Concat!29696 call!721909 (regTwo!42214 (Concat!29696 r1!6279 r2!6217))) EmptyLang!20851))))

(declare-fun b!7789055 () Bool)

(assert (=> b!7789055 (= e!4612542 (Union!20851 (Concat!29696 call!721911 (regTwo!42214 (Concat!29696 r1!6279 r2!6217))) call!721909))))

(declare-fun b!7789056 () Bool)

(declare-fun e!4612543 () Regex!20851)

(assert (=> b!7789056 (= e!4612543 EmptyLang!20851)))

(declare-fun b!7789057 () Bool)

(assert (=> b!7789057 (= c!1434594 (nullable!9235 (regOne!42214 (Concat!29696 r1!6279 r2!6217))))))

(declare-fun e!4612540 () Regex!20851)

(assert (=> b!7789057 (= e!4612540 e!4612542)))

(declare-fun d!2345755 () Bool)

(declare-fun lt!2673458 () Regex!20851)

(assert (=> d!2345755 (validRegex!11265 lt!2673458)))

(assert (=> d!2345755 (= lt!2673458 e!4612543)))

(declare-fun c!1434593 () Bool)

(assert (=> d!2345755 (= c!1434593 (or ((_ is EmptyExpr!20851) (Concat!29696 r1!6279 r2!6217)) ((_ is EmptyLang!20851) (Concat!29696 r1!6279 r2!6217))))))

(assert (=> d!2345755 (validRegex!11265 (Concat!29696 r1!6279 r2!6217))))

(assert (=> d!2345755 (= (derivativeStep!6188 (Concat!29696 r1!6279 r2!6217) (head!15930 s!14292)) lt!2673458)))

(declare-fun b!7789058 () Bool)

(assert (=> b!7789058 (= e!4612539 e!4612540)))

(assert (=> b!7789058 (= c!1434592 ((_ is Star!20851) (Concat!29696 r1!6279 r2!6217)))))

(declare-fun b!7789059 () Bool)

(assert (=> b!7789059 (= e!4612543 e!4612541)))

(declare-fun c!1434590 () Bool)

(assert (=> b!7789059 (= c!1434590 ((_ is ElementMatch!20851) (Concat!29696 r1!6279 r2!6217)))))

(declare-fun bm!721906 () Bool)

(assert (=> bm!721906 (= call!721910 call!721908)))

(declare-fun b!7789060 () Bool)

(assert (=> b!7789060 (= c!1434591 ((_ is Union!20851) (Concat!29696 r1!6279 r2!6217)))))

(assert (=> b!7789060 (= e!4612541 e!4612539)))

(declare-fun b!7789061 () Bool)

(assert (=> b!7789061 (= e!4612540 (Concat!29696 call!721910 (Concat!29696 r1!6279 r2!6217)))))

(assert (= (and d!2345755 c!1434593) b!7789056))

(assert (= (and d!2345755 (not c!1434593)) b!7789059))

(assert (= (and b!7789059 c!1434590) b!7789052))

(assert (= (and b!7789059 (not c!1434590)) b!7789060))

(assert (= (and b!7789060 c!1434591) b!7789053))

(assert (= (and b!7789060 (not c!1434591)) b!7789058))

(assert (= (and b!7789058 c!1434592) b!7789061))

(assert (= (and b!7789058 (not c!1434592)) b!7789057))

(assert (= (and b!7789057 c!1434594) b!7789055))

(assert (= (and b!7789057 (not c!1434594)) b!7789054))

(assert (= (or b!7789055 b!7789054) bm!721904))

(assert (= (or b!7789061 bm!721904) bm!721906))

(assert (= (or b!7789053 bm!721906) bm!721905))

(assert (= (or b!7789053 b!7789055) bm!721903))

(assert (=> bm!721903 m!8231326))

(declare-fun m!8231348 () Bool)

(assert (=> bm!721903 m!8231348))

(assert (=> bm!721905 m!8231326))

(declare-fun m!8231350 () Bool)

(assert (=> bm!721905 m!8231350))

(declare-fun m!8231352 () Bool)

(assert (=> b!7789057 m!8231352))

(declare-fun m!8231354 () Bool)

(assert (=> d!2345755 m!8231354))

(assert (=> d!2345755 m!8231324))

(assert (=> b!7788900 d!2345755))

(declare-fun d!2345757 () Bool)

(assert (=> d!2345757 (= (head!15930 s!14292) (h!80014 s!14292))))

(assert (=> b!7788900 d!2345757))

(declare-fun d!2345759 () Bool)

(assert (=> d!2345759 (= (tail!15471 s!14292) (t!388425 s!14292))))

(assert (=> b!7788900 d!2345759))

(declare-fun b!7789062 () Bool)

(declare-fun res!3103477 () Bool)

(declare-fun e!4612548 () Bool)

(assert (=> b!7789062 (=> res!3103477 e!4612548)))

(assert (=> b!7789062 (= res!3103477 (not ((_ is Concat!29696) (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217)))))))

(declare-fun e!4612550 () Bool)

(assert (=> b!7789062 (= e!4612550 e!4612548)))

(declare-fun b!7789063 () Bool)

(declare-fun e!4612544 () Bool)

(declare-fun e!4612549 () Bool)

(assert (=> b!7789063 (= e!4612544 e!4612549)))

(declare-fun c!1434596 () Bool)

(assert (=> b!7789063 (= c!1434596 ((_ is Star!20851) (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))

(declare-fun b!7789064 () Bool)

(declare-fun e!4612546 () Bool)

(assert (=> b!7789064 (= e!4612549 e!4612546)))

(declare-fun res!3103476 () Bool)

(assert (=> b!7789064 (= res!3103476 (not (nullable!9235 (reg!21180 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))))

(assert (=> b!7789064 (=> (not res!3103476) (not e!4612546))))

(declare-fun d!2345761 () Bool)

(declare-fun res!3103479 () Bool)

(assert (=> d!2345761 (=> res!3103479 e!4612544)))

(assert (=> d!2345761 (= res!3103479 ((_ is ElementMatch!20851) (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))

(assert (=> d!2345761 (= (validRegex!11265 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))) e!4612544)))

(declare-fun b!7789065 () Bool)

(assert (=> b!7789065 (= e!4612549 e!4612550)))

(declare-fun c!1434595 () Bool)

(assert (=> b!7789065 (= c!1434595 ((_ is Union!20851) (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))

(declare-fun b!7789066 () Bool)

(declare-fun e!4612547 () Bool)

(declare-fun call!721914 () Bool)

(assert (=> b!7789066 (= e!4612547 call!721914)))

(declare-fun b!7789067 () Bool)

(declare-fun e!4612545 () Bool)

(assert (=> b!7789067 (= e!4612545 call!721914)))

(declare-fun bm!721907 () Bool)

(declare-fun call!721912 () Bool)

(assert (=> bm!721907 (= call!721912 (validRegex!11265 (ite c!1434595 (regOne!42215 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))) (regOne!42214 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))))

(declare-fun bm!721908 () Bool)

(declare-fun call!721913 () Bool)

(assert (=> bm!721908 (= call!721914 call!721913)))

(declare-fun bm!721909 () Bool)

(assert (=> bm!721909 (= call!721913 (validRegex!11265 (ite c!1434596 (reg!21180 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))) (ite c!1434595 (regTwo!42215 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217))) (regTwo!42214 (ite c!1434551 (regOne!42215 r2!6217) (regOne!42214 r2!6217)))))))))

(declare-fun b!7789068 () Bool)

(declare-fun res!3103475 () Bool)

(assert (=> b!7789068 (=> (not res!3103475) (not e!4612547))))

(assert (=> b!7789068 (= res!3103475 call!721912)))

(assert (=> b!7789068 (= e!4612550 e!4612547)))

(declare-fun b!7789069 () Bool)

(assert (=> b!7789069 (= e!4612548 e!4612545)))

(declare-fun res!3103478 () Bool)

(assert (=> b!7789069 (=> (not res!3103478) (not e!4612545))))

(assert (=> b!7789069 (= res!3103478 call!721912)))

(declare-fun b!7789070 () Bool)

(assert (=> b!7789070 (= e!4612546 call!721913)))

(assert (= (and d!2345761 (not res!3103479)) b!7789063))

(assert (= (and b!7789063 c!1434596) b!7789064))

(assert (= (and b!7789063 (not c!1434596)) b!7789065))

(assert (= (and b!7789064 res!3103476) b!7789070))

(assert (= (and b!7789065 c!1434595) b!7789068))

(assert (= (and b!7789065 (not c!1434595)) b!7789062))

(assert (= (and b!7789068 res!3103475) b!7789066))

(assert (= (and b!7789062 (not res!3103477)) b!7789069))

(assert (= (and b!7789069 res!3103478) b!7789067))

(assert (= (or b!7789068 b!7789069) bm!721907))

(assert (= (or b!7789066 b!7789067) bm!721908))

(assert (= (or b!7789070 bm!721908) bm!721909))

(declare-fun m!8231356 () Bool)

(assert (=> b!7789064 m!8231356))

(declare-fun m!8231358 () Bool)

(assert (=> bm!721907 m!8231358))

(declare-fun m!8231360 () Bool)

(assert (=> bm!721909 m!8231360))

(assert (=> bm!721876 d!2345761))

(declare-fun d!2345763 () Bool)

(declare-fun isEmpty!42205 (Option!17756) Bool)

(assert (=> d!2345763 (= (isDefined!14366 lt!2673444) (not (isEmpty!42205 lt!2673444)))))

(declare-fun bs!1966322 () Bool)

(assert (= bs!1966322 d!2345763))

(declare-fun m!8231362 () Bool)

(assert (=> bs!1966322 m!8231362))

(assert (=> d!2345729 d!2345763))

(declare-fun b!7789071 () Bool)

(declare-fun res!3103480 () Bool)

(declare-fun e!4612553 () Bool)

(assert (=> b!7789071 (=> res!3103480 e!4612553)))

(assert (=> b!7789071 (= res!3103480 (not ((_ is ElementMatch!20851) r1!6279)))))

(declare-fun e!4612556 () Bool)

(assert (=> b!7789071 (= e!4612556 e!4612553)))

(declare-fun b!7789072 () Bool)

(declare-fun e!4612555 () Bool)

(declare-fun lt!2673459 () Bool)

(declare-fun call!721915 () Bool)

(assert (=> b!7789072 (= e!4612555 (= lt!2673459 call!721915))))

(declare-fun b!7789073 () Bool)

(declare-fun e!4612551 () Bool)

(assert (=> b!7789073 (= e!4612551 (nullable!9235 r1!6279))))

(declare-fun b!7789074 () Bool)

(declare-fun res!3103487 () Bool)

(declare-fun e!4612552 () Bool)

(assert (=> b!7789074 (=> (not res!3103487) (not e!4612552))))

(assert (=> b!7789074 (= res!3103487 (isEmpty!42203 (tail!15471 Nil!73566)))))

(declare-fun b!7789075 () Bool)

(declare-fun res!3103482 () Bool)

(assert (=> b!7789075 (=> (not res!3103482) (not e!4612552))))

(assert (=> b!7789075 (= res!3103482 (not call!721915))))

(declare-fun b!7789076 () Bool)

(assert (=> b!7789076 (= e!4612555 e!4612556)))

(declare-fun c!1434597 () Bool)

(assert (=> b!7789076 (= c!1434597 ((_ is EmptyLang!20851) r1!6279))))

(declare-fun b!7789077 () Bool)

(assert (=> b!7789077 (= e!4612551 (matchR!10311 (derivativeStep!6188 r1!6279 (head!15930 Nil!73566)) (tail!15471 Nil!73566)))))

(declare-fun b!7789078 () Bool)

(declare-fun res!3103485 () Bool)

(assert (=> b!7789078 (=> res!3103485 e!4612553)))

(assert (=> b!7789078 (= res!3103485 e!4612552)))

(declare-fun res!3103486 () Bool)

(assert (=> b!7789078 (=> (not res!3103486) (not e!4612552))))

(assert (=> b!7789078 (= res!3103486 lt!2673459)))

(declare-fun b!7789079 () Bool)

(assert (=> b!7789079 (= e!4612552 (= (head!15930 Nil!73566) (c!1434530 r1!6279)))))

(declare-fun d!2345765 () Bool)

(assert (=> d!2345765 e!4612555))

(declare-fun c!1434598 () Bool)

(assert (=> d!2345765 (= c!1434598 ((_ is EmptyExpr!20851) r1!6279))))

(assert (=> d!2345765 (= lt!2673459 e!4612551)))

(declare-fun c!1434599 () Bool)

(assert (=> d!2345765 (= c!1434599 (isEmpty!42203 Nil!73566))))

(assert (=> d!2345765 (validRegex!11265 r1!6279)))

(assert (=> d!2345765 (= (matchR!10311 r1!6279 Nil!73566) lt!2673459)))

(declare-fun b!7789080 () Bool)

(declare-fun res!3103481 () Bool)

(declare-fun e!4612557 () Bool)

(assert (=> b!7789080 (=> res!3103481 e!4612557)))

(assert (=> b!7789080 (= res!3103481 (not (isEmpty!42203 (tail!15471 Nil!73566))))))

(declare-fun b!7789081 () Bool)

(assert (=> b!7789081 (= e!4612557 (not (= (head!15930 Nil!73566) (c!1434530 r1!6279))))))

(declare-fun b!7789082 () Bool)

(declare-fun e!4612554 () Bool)

(assert (=> b!7789082 (= e!4612553 e!4612554)))

(declare-fun res!3103483 () Bool)

(assert (=> b!7789082 (=> (not res!3103483) (not e!4612554))))

(assert (=> b!7789082 (= res!3103483 (not lt!2673459))))

(declare-fun bm!721910 () Bool)

(assert (=> bm!721910 (= call!721915 (isEmpty!42203 Nil!73566))))

(declare-fun b!7789083 () Bool)

(assert (=> b!7789083 (= e!4612556 (not lt!2673459))))

(declare-fun b!7789084 () Bool)

(assert (=> b!7789084 (= e!4612554 e!4612557)))

(declare-fun res!3103484 () Bool)

(assert (=> b!7789084 (=> res!3103484 e!4612557)))

(assert (=> b!7789084 (= res!3103484 call!721915)))

(assert (= (and d!2345765 c!1434599) b!7789073))

(assert (= (and d!2345765 (not c!1434599)) b!7789077))

(assert (= (and d!2345765 c!1434598) b!7789072))

(assert (= (and d!2345765 (not c!1434598)) b!7789076))

(assert (= (and b!7789076 c!1434597) b!7789083))

(assert (= (and b!7789076 (not c!1434597)) b!7789071))

(assert (= (and b!7789071 (not res!3103480)) b!7789078))

(assert (= (and b!7789078 res!3103486) b!7789075))

(assert (= (and b!7789075 res!3103482) b!7789074))

(assert (= (and b!7789074 res!3103487) b!7789079))

(assert (= (and b!7789078 (not res!3103485)) b!7789082))

(assert (= (and b!7789082 res!3103483) b!7789084))

(assert (= (and b!7789084 (not res!3103484)) b!7789080))

(assert (= (and b!7789080 (not res!3103481)) b!7789081))

(assert (= (or b!7789072 b!7789075 b!7789084) bm!721910))

(declare-fun m!8231364 () Bool)

(assert (=> b!7789074 m!8231364))

(assert (=> b!7789074 m!8231364))

(declare-fun m!8231366 () Bool)

(assert (=> b!7789074 m!8231366))

(declare-fun m!8231368 () Bool)

(assert (=> bm!721910 m!8231368))

(assert (=> d!2345765 m!8231368))

(assert (=> d!2345765 m!8231222))

(declare-fun m!8231370 () Bool)

(assert (=> b!7789077 m!8231370))

(assert (=> b!7789077 m!8231370))

(declare-fun m!8231372 () Bool)

(assert (=> b!7789077 m!8231372))

(assert (=> b!7789077 m!8231364))

(assert (=> b!7789077 m!8231372))

(assert (=> b!7789077 m!8231364))

(declare-fun m!8231374 () Bool)

(assert (=> b!7789077 m!8231374))

(assert (=> b!7789081 m!8231370))

(assert (=> b!7789079 m!8231370))

(assert (=> b!7789080 m!8231364))

(assert (=> b!7789080 m!8231364))

(assert (=> b!7789080 m!8231366))

(assert (=> b!7789073 m!8231224))

(assert (=> d!2345729 d!2345765))

(assert (=> d!2345729 d!2345741))

(assert (=> b!7788902 d!2345757))

(declare-fun d!2345767 () Bool)

(assert (=> d!2345767 (= (isEmpty!42203 (tail!15471 s!14292)) ((_ is Nil!73566) (tail!15471 s!14292)))))

(assert (=> b!7788897 d!2345767))

(assert (=> b!7788897 d!2345759))

(declare-fun d!2345769 () Bool)

(assert (=> d!2345769 (= (nullable!9235 (Concat!29696 r1!6279 r2!6217)) (nullableFct!3620 (Concat!29696 r1!6279 r2!6217)))))

(declare-fun bs!1966323 () Bool)

(assert (= bs!1966323 d!2345769))

(declare-fun m!8231376 () Bool)

(assert (=> bs!1966323 m!8231376))

(assert (=> b!7788896 d!2345769))

(declare-fun b!7789085 () Bool)

(declare-fun res!3103488 () Bool)

(declare-fun e!4612560 () Bool)

(assert (=> b!7789085 (=> res!3103488 e!4612560)))

(assert (=> b!7789085 (= res!3103488 (not ((_ is ElementMatch!20851) r1!6279)))))

(declare-fun e!4612563 () Bool)

(assert (=> b!7789085 (= e!4612563 e!4612560)))

(declare-fun b!7789086 () Bool)

(declare-fun e!4612562 () Bool)

(declare-fun lt!2673460 () Bool)

(declare-fun call!721916 () Bool)

(assert (=> b!7789086 (= e!4612562 (= lt!2673460 call!721916))))

(declare-fun b!7789087 () Bool)

(declare-fun e!4612558 () Bool)

(assert (=> b!7789087 (= e!4612558 (nullable!9235 r1!6279))))

(declare-fun b!7789088 () Bool)

(declare-fun res!3103495 () Bool)

(declare-fun e!4612559 () Bool)

(assert (=> b!7789088 (=> (not res!3103495) (not e!4612559))))

(assert (=> b!7789088 (= res!3103495 (isEmpty!42203 (tail!15471 (_1!38265 (get!26305 lt!2673444)))))))

(declare-fun b!7789089 () Bool)

(declare-fun res!3103490 () Bool)

(assert (=> b!7789089 (=> (not res!3103490) (not e!4612559))))

(assert (=> b!7789089 (= res!3103490 (not call!721916))))

(declare-fun b!7789090 () Bool)

(assert (=> b!7789090 (= e!4612562 e!4612563)))

(declare-fun c!1434600 () Bool)

(assert (=> b!7789090 (= c!1434600 ((_ is EmptyLang!20851) r1!6279))))

(declare-fun b!7789091 () Bool)

(assert (=> b!7789091 (= e!4612558 (matchR!10311 (derivativeStep!6188 r1!6279 (head!15930 (_1!38265 (get!26305 lt!2673444)))) (tail!15471 (_1!38265 (get!26305 lt!2673444)))))))

(declare-fun b!7789092 () Bool)

(declare-fun res!3103493 () Bool)

(assert (=> b!7789092 (=> res!3103493 e!4612560)))

(assert (=> b!7789092 (= res!3103493 e!4612559)))

(declare-fun res!3103494 () Bool)

(assert (=> b!7789092 (=> (not res!3103494) (not e!4612559))))

(assert (=> b!7789092 (= res!3103494 lt!2673460)))

(declare-fun b!7789093 () Bool)

(assert (=> b!7789093 (= e!4612559 (= (head!15930 (_1!38265 (get!26305 lt!2673444))) (c!1434530 r1!6279)))))

(declare-fun d!2345771 () Bool)

(assert (=> d!2345771 e!4612562))

(declare-fun c!1434601 () Bool)

(assert (=> d!2345771 (= c!1434601 ((_ is EmptyExpr!20851) r1!6279))))

(assert (=> d!2345771 (= lt!2673460 e!4612558)))

(declare-fun c!1434602 () Bool)

(assert (=> d!2345771 (= c!1434602 (isEmpty!42203 (_1!38265 (get!26305 lt!2673444))))))

(assert (=> d!2345771 (validRegex!11265 r1!6279)))

(assert (=> d!2345771 (= (matchR!10311 r1!6279 (_1!38265 (get!26305 lt!2673444))) lt!2673460)))

(declare-fun b!7789094 () Bool)

(declare-fun res!3103489 () Bool)

(declare-fun e!4612564 () Bool)

(assert (=> b!7789094 (=> res!3103489 e!4612564)))

(assert (=> b!7789094 (= res!3103489 (not (isEmpty!42203 (tail!15471 (_1!38265 (get!26305 lt!2673444))))))))

(declare-fun b!7789095 () Bool)

(assert (=> b!7789095 (= e!4612564 (not (= (head!15930 (_1!38265 (get!26305 lt!2673444))) (c!1434530 r1!6279))))))

(declare-fun b!7789096 () Bool)

(declare-fun e!4612561 () Bool)

(assert (=> b!7789096 (= e!4612560 e!4612561)))

(declare-fun res!3103491 () Bool)

(assert (=> b!7789096 (=> (not res!3103491) (not e!4612561))))

(assert (=> b!7789096 (= res!3103491 (not lt!2673460))))

(declare-fun bm!721911 () Bool)

(assert (=> bm!721911 (= call!721916 (isEmpty!42203 (_1!38265 (get!26305 lt!2673444))))))

(declare-fun b!7789097 () Bool)

(assert (=> b!7789097 (= e!4612563 (not lt!2673460))))

(declare-fun b!7789098 () Bool)

(assert (=> b!7789098 (= e!4612561 e!4612564)))

(declare-fun res!3103492 () Bool)

(assert (=> b!7789098 (=> res!3103492 e!4612564)))

(assert (=> b!7789098 (= res!3103492 call!721916)))

(assert (= (and d!2345771 c!1434602) b!7789087))

(assert (= (and d!2345771 (not c!1434602)) b!7789091))

(assert (= (and d!2345771 c!1434601) b!7789086))

(assert (= (and d!2345771 (not c!1434601)) b!7789090))

(assert (= (and b!7789090 c!1434600) b!7789097))

(assert (= (and b!7789090 (not c!1434600)) b!7789085))

(assert (= (and b!7789085 (not res!3103488)) b!7789092))

(assert (= (and b!7789092 res!3103494) b!7789089))

(assert (= (and b!7789089 res!3103490) b!7789088))

(assert (= (and b!7789088 res!3103495) b!7789093))

(assert (= (and b!7789092 (not res!3103493)) b!7789096))

(assert (= (and b!7789096 res!3103491) b!7789098))

(assert (= (and b!7789098 (not res!3103492)) b!7789094))

(assert (= (and b!7789094 (not res!3103489)) b!7789095))

(assert (= (or b!7789086 b!7789089 b!7789098) bm!721911))

(declare-fun m!8231378 () Bool)

(assert (=> b!7789088 m!8231378))

(assert (=> b!7789088 m!8231378))

(declare-fun m!8231380 () Bool)

(assert (=> b!7789088 m!8231380))

(declare-fun m!8231382 () Bool)

(assert (=> bm!721911 m!8231382))

(assert (=> d!2345771 m!8231382))

(assert (=> d!2345771 m!8231222))

(declare-fun m!8231384 () Bool)

(assert (=> b!7789091 m!8231384))

(assert (=> b!7789091 m!8231384))

(declare-fun m!8231386 () Bool)

(assert (=> b!7789091 m!8231386))

(assert (=> b!7789091 m!8231378))

(assert (=> b!7789091 m!8231386))

(assert (=> b!7789091 m!8231378))

(declare-fun m!8231388 () Bool)

(assert (=> b!7789091 m!8231388))

(assert (=> b!7789095 m!8231384))

(assert (=> b!7789093 m!8231384))

(assert (=> b!7789094 m!8231378))

(assert (=> b!7789094 m!8231378))

(assert (=> b!7789094 m!8231380))

(assert (=> b!7789087 m!8231224))

(assert (=> b!7788742 d!2345771))

(declare-fun d!2345773 () Bool)

(assert (=> d!2345773 (= (get!26305 lt!2673444) (v!54890 lt!2673444))))

(assert (=> b!7788742 d!2345773))

(declare-fun d!2345775 () Bool)

(assert (=> d!2345775 (= (nullable!9235 (reg!21180 r2!6217)) (nullableFct!3620 (reg!21180 r2!6217)))))

(declare-fun bs!1966324 () Bool)

(assert (= bs!1966324 d!2345775))

(declare-fun m!8231390 () Bool)

(assert (=> bs!1966324 m!8231390))

(assert (=> b!7788790 d!2345775))

(declare-fun b!7789113 () Bool)

(declare-fun e!4612577 () Bool)

(declare-fun e!4612582 () Bool)

(assert (=> b!7789113 (= e!4612577 e!4612582)))

(declare-fun c!1434605 () Bool)

(assert (=> b!7789113 (= c!1434605 ((_ is Union!20851) r2!6217))))

(declare-fun bm!721916 () Bool)

(declare-fun call!721922 () Bool)

(assert (=> bm!721916 (= call!721922 (nullable!9235 (ite c!1434605 (regOne!42215 r2!6217) (regOne!42214 r2!6217))))))

(declare-fun b!7789114 () Bool)

(declare-fun e!4612579 () Bool)

(declare-fun call!721921 () Bool)

(assert (=> b!7789114 (= e!4612579 call!721921)))

(declare-fun b!7789115 () Bool)

(assert (=> b!7789115 (= e!4612582 e!4612579)))

(declare-fun res!3103506 () Bool)

(assert (=> b!7789115 (= res!3103506 call!721922)))

(assert (=> b!7789115 (=> res!3103506 e!4612579)))

(declare-fun b!7789116 () Bool)

(declare-fun e!4612581 () Bool)

(assert (=> b!7789116 (= e!4612582 e!4612581)))

(declare-fun res!3103508 () Bool)

(assert (=> b!7789116 (= res!3103508 call!721922)))

(assert (=> b!7789116 (=> (not res!3103508) (not e!4612581))))

(declare-fun bm!721917 () Bool)

(assert (=> bm!721917 (= call!721921 (nullable!9235 (ite c!1434605 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217))))))

(declare-fun d!2345777 () Bool)

(declare-fun res!3103510 () Bool)

(declare-fun e!4612578 () Bool)

(assert (=> d!2345777 (=> res!3103510 e!4612578)))

(assert (=> d!2345777 (= res!3103510 ((_ is EmptyExpr!20851) r2!6217))))

(assert (=> d!2345777 (= (nullableFct!3620 r2!6217) e!4612578)))

(declare-fun b!7789117 () Bool)

(assert (=> b!7789117 (= e!4612581 call!721921)))

(declare-fun b!7789118 () Bool)

(declare-fun e!4612580 () Bool)

(assert (=> b!7789118 (= e!4612578 e!4612580)))

(declare-fun res!3103509 () Bool)

(assert (=> b!7789118 (=> (not res!3103509) (not e!4612580))))

(assert (=> b!7789118 (= res!3103509 (and (not ((_ is EmptyLang!20851) r2!6217)) (not ((_ is ElementMatch!20851) r2!6217))))))

(declare-fun b!7789119 () Bool)

(assert (=> b!7789119 (= e!4612580 e!4612577)))

(declare-fun res!3103507 () Bool)

(assert (=> b!7789119 (=> res!3103507 e!4612577)))

(assert (=> b!7789119 (= res!3103507 ((_ is Star!20851) r2!6217))))

(assert (= (and d!2345777 (not res!3103510)) b!7789118))

(assert (= (and b!7789118 res!3103509) b!7789119))

(assert (= (and b!7789119 (not res!3103507)) b!7789113))

(assert (= (and b!7789113 c!1434605) b!7789115))

(assert (= (and b!7789113 (not c!1434605)) b!7789116))

(assert (= (and b!7789115 (not res!3103506)) b!7789114))

(assert (= (and b!7789116 res!3103508) b!7789117))

(assert (= (or b!7789114 b!7789117) bm!721917))

(assert (= (or b!7789115 b!7789116) bm!721916))

(declare-fun m!8231392 () Bool)

(assert (=> bm!721916 m!8231392))

(declare-fun m!8231394 () Bool)

(assert (=> bm!721917 m!8231394))

(assert (=> d!2345739 d!2345777))

(declare-fun d!2345781 () Bool)

(assert (not d!2345781))

(assert (=> b!7788739 d!2345781))

(declare-fun d!2345783 () Bool)

(assert (not d!2345783))

(assert (=> b!7788739 d!2345783))

(declare-fun d!2345787 () Bool)

(assert (not d!2345787))

(assert (=> b!7788739 d!2345787))

(declare-fun d!2345789 () Bool)

(assert (not d!2345789))

(assert (=> b!7788739 d!2345789))

(declare-fun d!2345791 () Bool)

(assert (=> d!2345791 (= (isEmpty!42203 s!14292) ((_ is Nil!73566) s!14292))))

(assert (=> d!2345747 d!2345791))

(declare-fun b!7789134 () Bool)

(declare-fun res!3103521 () Bool)

(declare-fun e!4612594 () Bool)

(assert (=> b!7789134 (=> res!3103521 e!4612594)))

(assert (=> b!7789134 (= res!3103521 (not ((_ is Concat!29696) (Concat!29696 r1!6279 r2!6217))))))

(declare-fun e!4612596 () Bool)

(assert (=> b!7789134 (= e!4612596 e!4612594)))

(declare-fun b!7789135 () Bool)

(declare-fun e!4612590 () Bool)

(declare-fun e!4612595 () Bool)

(assert (=> b!7789135 (= e!4612590 e!4612595)))

(declare-fun c!1434610 () Bool)

(assert (=> b!7789135 (= c!1434610 ((_ is Star!20851) (Concat!29696 r1!6279 r2!6217)))))

(declare-fun b!7789136 () Bool)

(declare-fun e!4612592 () Bool)

(assert (=> b!7789136 (= e!4612595 e!4612592)))

(declare-fun res!3103520 () Bool)

(assert (=> b!7789136 (= res!3103520 (not (nullable!9235 (reg!21180 (Concat!29696 r1!6279 r2!6217)))))))

(assert (=> b!7789136 (=> (not res!3103520) (not e!4612592))))

(declare-fun d!2345793 () Bool)

(declare-fun res!3103523 () Bool)

(assert (=> d!2345793 (=> res!3103523 e!4612590)))

(assert (=> d!2345793 (= res!3103523 ((_ is ElementMatch!20851) (Concat!29696 r1!6279 r2!6217)))))

(assert (=> d!2345793 (= (validRegex!11265 (Concat!29696 r1!6279 r2!6217)) e!4612590)))

(declare-fun b!7789137 () Bool)

(assert (=> b!7789137 (= e!4612595 e!4612596)))

(declare-fun c!1434609 () Bool)

(assert (=> b!7789137 (= c!1434609 ((_ is Union!20851) (Concat!29696 r1!6279 r2!6217)))))

(declare-fun b!7789138 () Bool)

(declare-fun e!4612593 () Bool)

(declare-fun call!721926 () Bool)

(assert (=> b!7789138 (= e!4612593 call!721926)))

(declare-fun b!7789139 () Bool)

(declare-fun e!4612591 () Bool)

(assert (=> b!7789139 (= e!4612591 call!721926)))

(declare-fun bm!721919 () Bool)

(declare-fun call!721924 () Bool)

(assert (=> bm!721919 (= call!721924 (validRegex!11265 (ite c!1434609 (regOne!42215 (Concat!29696 r1!6279 r2!6217)) (regOne!42214 (Concat!29696 r1!6279 r2!6217)))))))

(declare-fun bm!721920 () Bool)

(declare-fun call!721925 () Bool)

(assert (=> bm!721920 (= call!721926 call!721925)))

(declare-fun bm!721921 () Bool)

(assert (=> bm!721921 (= call!721925 (validRegex!11265 (ite c!1434610 (reg!21180 (Concat!29696 r1!6279 r2!6217)) (ite c!1434609 (regTwo!42215 (Concat!29696 r1!6279 r2!6217)) (regTwo!42214 (Concat!29696 r1!6279 r2!6217))))))))

(declare-fun b!7789140 () Bool)

(declare-fun res!3103519 () Bool)

(assert (=> b!7789140 (=> (not res!3103519) (not e!4612593))))

(assert (=> b!7789140 (= res!3103519 call!721924)))

(assert (=> b!7789140 (= e!4612596 e!4612593)))

(declare-fun b!7789141 () Bool)

(assert (=> b!7789141 (= e!4612594 e!4612591)))

(declare-fun res!3103522 () Bool)

(assert (=> b!7789141 (=> (not res!3103522) (not e!4612591))))

(assert (=> b!7789141 (= res!3103522 call!721924)))

(declare-fun b!7789142 () Bool)

(assert (=> b!7789142 (= e!4612592 call!721925)))

(assert (= (and d!2345793 (not res!3103523)) b!7789135))

(assert (= (and b!7789135 c!1434610) b!7789136))

(assert (= (and b!7789135 (not c!1434610)) b!7789137))

(assert (= (and b!7789136 res!3103520) b!7789142))

(assert (= (and b!7789137 c!1434609) b!7789140))

(assert (= (and b!7789137 (not c!1434609)) b!7789134))

(assert (= (and b!7789140 res!3103519) b!7789138))

(assert (= (and b!7789134 (not res!3103521)) b!7789141))

(assert (= (and b!7789141 res!3103522) b!7789139))

(assert (= (or b!7789140 b!7789141) bm!721919))

(assert (= (or b!7789138 b!7789139) bm!721920))

(assert (= (or b!7789142 bm!721920) bm!721921))

(declare-fun m!8231398 () Bool)

(assert (=> b!7789136 m!8231398))

(declare-fun m!8231400 () Bool)

(assert (=> bm!721919 m!8231400))

(declare-fun m!8231404 () Bool)

(assert (=> bm!721921 m!8231404))

(assert (=> d!2345747 d!2345793))

(declare-fun b!7789143 () Bool)

(declare-fun res!3103524 () Bool)

(declare-fun e!4612599 () Bool)

(assert (=> b!7789143 (=> res!3103524 e!4612599)))

(assert (=> b!7789143 (= res!3103524 (not ((_ is ElementMatch!20851) r2!6217)))))

(declare-fun e!4612602 () Bool)

(assert (=> b!7789143 (= e!4612602 e!4612599)))

(declare-fun b!7789144 () Bool)

(declare-fun e!4612601 () Bool)

(declare-fun lt!2673462 () Bool)

(declare-fun call!721927 () Bool)

(assert (=> b!7789144 (= e!4612601 (= lt!2673462 call!721927))))

(declare-fun b!7789145 () Bool)

(declare-fun e!4612597 () Bool)

(assert (=> b!7789145 (= e!4612597 (nullable!9235 r2!6217))))

(declare-fun b!7789146 () Bool)

(declare-fun res!3103531 () Bool)

(declare-fun e!4612598 () Bool)

(assert (=> b!7789146 (=> (not res!3103531) (not e!4612598))))

(assert (=> b!7789146 (= res!3103531 (isEmpty!42203 (tail!15471 Nil!73566)))))

(declare-fun b!7789147 () Bool)

(declare-fun res!3103526 () Bool)

(assert (=> b!7789147 (=> (not res!3103526) (not e!4612598))))

(assert (=> b!7789147 (= res!3103526 (not call!721927))))

(declare-fun b!7789148 () Bool)

(assert (=> b!7789148 (= e!4612601 e!4612602)))

(declare-fun c!1434611 () Bool)

(assert (=> b!7789148 (= c!1434611 ((_ is EmptyLang!20851) r2!6217))))

(declare-fun b!7789149 () Bool)

(assert (=> b!7789149 (= e!4612597 (matchR!10311 (derivativeStep!6188 r2!6217 (head!15930 Nil!73566)) (tail!15471 Nil!73566)))))

(declare-fun b!7789150 () Bool)

(declare-fun res!3103529 () Bool)

(assert (=> b!7789150 (=> res!3103529 e!4612599)))

(assert (=> b!7789150 (= res!3103529 e!4612598)))

(declare-fun res!3103530 () Bool)

(assert (=> b!7789150 (=> (not res!3103530) (not e!4612598))))

(assert (=> b!7789150 (= res!3103530 lt!2673462)))

(declare-fun b!7789151 () Bool)

(assert (=> b!7789151 (= e!4612598 (= (head!15930 Nil!73566) (c!1434530 r2!6217)))))

(declare-fun d!2345795 () Bool)

(assert (=> d!2345795 e!4612601))

(declare-fun c!1434612 () Bool)

(assert (=> d!2345795 (= c!1434612 ((_ is EmptyExpr!20851) r2!6217))))

(assert (=> d!2345795 (= lt!2673462 e!4612597)))

(declare-fun c!1434613 () Bool)

(assert (=> d!2345795 (= c!1434613 (isEmpty!42203 Nil!73566))))

(assert (=> d!2345795 (validRegex!11265 r2!6217)))

(assert (=> d!2345795 (= (matchR!10311 r2!6217 Nil!73566) lt!2673462)))

(declare-fun b!7789152 () Bool)

(declare-fun res!3103525 () Bool)

(declare-fun e!4612603 () Bool)

(assert (=> b!7789152 (=> res!3103525 e!4612603)))

(assert (=> b!7789152 (= res!3103525 (not (isEmpty!42203 (tail!15471 Nil!73566))))))

(declare-fun b!7789153 () Bool)

(assert (=> b!7789153 (= e!4612603 (not (= (head!15930 Nil!73566) (c!1434530 r2!6217))))))

(declare-fun b!7789154 () Bool)

(declare-fun e!4612600 () Bool)

(assert (=> b!7789154 (= e!4612599 e!4612600)))

(declare-fun res!3103527 () Bool)

(assert (=> b!7789154 (=> (not res!3103527) (not e!4612600))))

(assert (=> b!7789154 (= res!3103527 (not lt!2673462))))

(declare-fun bm!721922 () Bool)

(assert (=> bm!721922 (= call!721927 (isEmpty!42203 Nil!73566))))

(declare-fun b!7789155 () Bool)

(assert (=> b!7789155 (= e!4612602 (not lt!2673462))))

(declare-fun b!7789156 () Bool)

(assert (=> b!7789156 (= e!4612600 e!4612603)))

(declare-fun res!3103528 () Bool)

(assert (=> b!7789156 (=> res!3103528 e!4612603)))

(assert (=> b!7789156 (= res!3103528 call!721927)))

(assert (= (and d!2345795 c!1434613) b!7789145))

(assert (= (and d!2345795 (not c!1434613)) b!7789149))

(assert (= (and d!2345795 c!1434612) b!7789144))

(assert (= (and d!2345795 (not c!1434612)) b!7789148))

(assert (= (and b!7789148 c!1434611) b!7789155))

(assert (= (and b!7789148 (not c!1434611)) b!7789143))

(assert (= (and b!7789143 (not res!3103524)) b!7789150))

(assert (= (and b!7789150 res!3103530) b!7789147))

(assert (= (and b!7789147 res!3103526) b!7789146))

(assert (= (and b!7789146 res!3103531) b!7789151))

(assert (= (and b!7789150 (not res!3103529)) b!7789154))

(assert (= (and b!7789154 res!3103527) b!7789156))

(assert (= (and b!7789156 (not res!3103528)) b!7789152))

(assert (= (and b!7789152 (not res!3103525)) b!7789153))

(assert (= (or b!7789144 b!7789147 b!7789156) bm!721922))

(assert (=> b!7789146 m!8231364))

(assert (=> b!7789146 m!8231364))

(assert (=> b!7789146 m!8231366))

(assert (=> bm!721922 m!8231368))

(assert (=> d!2345795 m!8231368))

(assert (=> d!2345795 m!8231220))

(assert (=> b!7789149 m!8231370))

(assert (=> b!7789149 m!8231370))

(declare-fun m!8231416 () Bool)

(assert (=> b!7789149 m!8231416))

(assert (=> b!7789149 m!8231364))

(assert (=> b!7789149 m!8231416))

(assert (=> b!7789149 m!8231364))

(declare-fun m!8231418 () Bool)

(assert (=> b!7789149 m!8231418))

(assert (=> b!7789153 m!8231370))

(assert (=> b!7789151 m!8231370))

(assert (=> b!7789152 m!8231364))

(assert (=> b!7789152 m!8231364))

(assert (=> b!7789152 m!8231366))

(assert (=> b!7789145 m!8231218))

(assert (=> b!7788740 d!2345795))

(declare-fun b!7789166 () Bool)

(declare-fun res!3103539 () Bool)

(declare-fun e!4612615 () Bool)

(assert (=> b!7789166 (=> res!3103539 e!4612615)))

(assert (=> b!7789166 (= res!3103539 (not ((_ is Concat!29696) (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279)))))))

(declare-fun e!4612617 () Bool)

(assert (=> b!7789166 (= e!4612617 e!4612615)))

(declare-fun b!7789167 () Bool)

(declare-fun e!4612611 () Bool)

(declare-fun e!4612616 () Bool)

(assert (=> b!7789167 (= e!4612611 e!4612616)))

(declare-fun c!1434617 () Bool)

(assert (=> b!7789167 (= c!1434617 ((_ is Star!20851) (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))

(declare-fun b!7789168 () Bool)

(declare-fun e!4612613 () Bool)

(assert (=> b!7789168 (= e!4612616 e!4612613)))

(declare-fun res!3103538 () Bool)

(assert (=> b!7789168 (= res!3103538 (not (nullable!9235 (reg!21180 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))))

(assert (=> b!7789168 (=> (not res!3103538) (not e!4612613))))

(declare-fun d!2345799 () Bool)

(declare-fun res!3103541 () Bool)

(assert (=> d!2345799 (=> res!3103541 e!4612611)))

(assert (=> d!2345799 (= res!3103541 ((_ is ElementMatch!20851) (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))

(assert (=> d!2345799 (= (validRegex!11265 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))) e!4612611)))

(declare-fun b!7789169 () Bool)

(assert (=> b!7789169 (= e!4612616 e!4612617)))

(declare-fun c!1434616 () Bool)

(assert (=> b!7789169 (= c!1434616 ((_ is Union!20851) (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))

(declare-fun b!7789170 () Bool)

(declare-fun e!4612614 () Bool)

(declare-fun call!721933 () Bool)

(assert (=> b!7789170 (= e!4612614 call!721933)))

(declare-fun b!7789171 () Bool)

(declare-fun e!4612612 () Bool)

(assert (=> b!7789171 (= e!4612612 call!721933)))

(declare-fun bm!721926 () Bool)

(declare-fun call!721931 () Bool)

(assert (=> bm!721926 (= call!721931 (validRegex!11265 (ite c!1434616 (regOne!42215 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))) (regOne!42214 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))))

(declare-fun bm!721927 () Bool)

(declare-fun call!721932 () Bool)

(assert (=> bm!721927 (= call!721933 call!721932)))

(declare-fun bm!721928 () Bool)

(assert (=> bm!721928 (= call!721932 (validRegex!11265 (ite c!1434617 (reg!21180 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))) (ite c!1434616 (regTwo!42215 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279))) (regTwo!42214 (ite c!1434555 (regOne!42215 r1!6279) (regOne!42214 r1!6279)))))))))

(declare-fun b!7789172 () Bool)

(declare-fun res!3103537 () Bool)

(assert (=> b!7789172 (=> (not res!3103537) (not e!4612614))))

(assert (=> b!7789172 (= res!3103537 call!721931)))

(assert (=> b!7789172 (= e!4612617 e!4612614)))

(declare-fun b!7789173 () Bool)

(assert (=> b!7789173 (= e!4612615 e!4612612)))

(declare-fun res!3103540 () Bool)

(assert (=> b!7789173 (=> (not res!3103540) (not e!4612612))))

(assert (=> b!7789173 (= res!3103540 call!721931)))

(declare-fun b!7789174 () Bool)

(assert (=> b!7789174 (= e!4612613 call!721932)))

(assert (= (and d!2345799 (not res!3103541)) b!7789167))

(assert (= (and b!7789167 c!1434617) b!7789168))

(assert (= (and b!7789167 (not c!1434617)) b!7789169))

(assert (= (and b!7789168 res!3103538) b!7789174))

(assert (= (and b!7789169 c!1434616) b!7789172))

(assert (= (and b!7789169 (not c!1434616)) b!7789166))

(assert (= (and b!7789172 res!3103537) b!7789170))

(assert (= (and b!7789166 (not res!3103539)) b!7789173))

(assert (= (and b!7789173 res!3103540) b!7789171))

(assert (= (or b!7789172 b!7789173) bm!721926))

(assert (= (or b!7789170 b!7789171) bm!721927))

(assert (= (or b!7789174 bm!721927) bm!721928))

(declare-fun m!8231426 () Bool)

(assert (=> b!7789168 m!8231426))

(declare-fun m!8231428 () Bool)

(assert (=> bm!721926 m!8231428))

(declare-fun m!8231430 () Bool)

(assert (=> bm!721928 m!8231430))

(assert (=> bm!721882 d!2345799))

(declare-fun b!7789175 () Bool)

(declare-fun e!4612618 () Bool)

(declare-fun e!4612623 () Bool)

(assert (=> b!7789175 (= e!4612618 e!4612623)))

(declare-fun c!1434618 () Bool)

(assert (=> b!7789175 (= c!1434618 ((_ is Union!20851) r1!6279))))

(declare-fun bm!721929 () Bool)

(declare-fun call!721935 () Bool)

(assert (=> bm!721929 (= call!721935 (nullable!9235 (ite c!1434618 (regOne!42215 r1!6279) (regOne!42214 r1!6279))))))

(declare-fun b!7789176 () Bool)

(declare-fun e!4612620 () Bool)

(declare-fun call!721934 () Bool)

(assert (=> b!7789176 (= e!4612620 call!721934)))

(declare-fun b!7789177 () Bool)

(assert (=> b!7789177 (= e!4612623 e!4612620)))

(declare-fun res!3103542 () Bool)

(assert (=> b!7789177 (= res!3103542 call!721935)))

(assert (=> b!7789177 (=> res!3103542 e!4612620)))

(declare-fun b!7789178 () Bool)

(declare-fun e!4612622 () Bool)

(assert (=> b!7789178 (= e!4612623 e!4612622)))

(declare-fun res!3103544 () Bool)

(assert (=> b!7789178 (= res!3103544 call!721935)))

(assert (=> b!7789178 (=> (not res!3103544) (not e!4612622))))

(declare-fun bm!721930 () Bool)

(assert (=> bm!721930 (= call!721934 (nullable!9235 (ite c!1434618 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279))))))

(declare-fun d!2345803 () Bool)

(declare-fun res!3103546 () Bool)

(declare-fun e!4612619 () Bool)

(assert (=> d!2345803 (=> res!3103546 e!4612619)))

(assert (=> d!2345803 (= res!3103546 ((_ is EmptyExpr!20851) r1!6279))))

(assert (=> d!2345803 (= (nullableFct!3620 r1!6279) e!4612619)))

(declare-fun b!7789179 () Bool)

(assert (=> b!7789179 (= e!4612622 call!721934)))

(declare-fun b!7789180 () Bool)

(declare-fun e!4612621 () Bool)

(assert (=> b!7789180 (= e!4612619 e!4612621)))

(declare-fun res!3103545 () Bool)

(assert (=> b!7789180 (=> (not res!3103545) (not e!4612621))))

(assert (=> b!7789180 (= res!3103545 (and (not ((_ is EmptyLang!20851) r1!6279)) (not ((_ is ElementMatch!20851) r1!6279))))))

(declare-fun b!7789181 () Bool)

(assert (=> b!7789181 (= e!4612621 e!4612618)))

(declare-fun res!3103543 () Bool)

(assert (=> b!7789181 (=> res!3103543 e!4612618)))

(assert (=> b!7789181 (= res!3103543 ((_ is Star!20851) r1!6279))))

(assert (= (and d!2345803 (not res!3103546)) b!7789180))

(assert (= (and b!7789180 res!3103545) b!7789181))

(assert (= (and b!7789181 (not res!3103543)) b!7789175))

(assert (= (and b!7789175 c!1434618) b!7789177))

(assert (= (and b!7789175 (not c!1434618)) b!7789178))

(assert (= (and b!7789177 (not res!3103542)) b!7789176))

(assert (= (and b!7789178 res!3103544) b!7789179))

(assert (= (or b!7789176 b!7789179) bm!721930))

(assert (= (or b!7789177 b!7789178) bm!721929))

(declare-fun m!8231432 () Bool)

(assert (=> bm!721929 m!8231432))

(declare-fun m!8231434 () Bool)

(assert (=> bm!721930 m!8231434))

(assert (=> d!2345745 d!2345803))

(declare-fun b!7789196 () Bool)

(declare-fun res!3103555 () Bool)

(declare-fun e!4612633 () Bool)

(assert (=> b!7789196 (=> res!3103555 e!4612633)))

(assert (=> b!7789196 (= res!3103555 (not ((_ is ElementMatch!20851) r2!6217)))))

(declare-fun e!4612636 () Bool)

(assert (=> b!7789196 (= e!4612636 e!4612633)))

(declare-fun b!7789197 () Bool)

(declare-fun e!4612635 () Bool)

(declare-fun lt!2673464 () Bool)

(declare-fun call!721937 () Bool)

(assert (=> b!7789197 (= e!4612635 (= lt!2673464 call!721937))))

(declare-fun b!7789198 () Bool)

(declare-fun e!4612631 () Bool)

(assert (=> b!7789198 (= e!4612631 (nullable!9235 r2!6217))))

(declare-fun b!7789199 () Bool)

(declare-fun res!3103562 () Bool)

(declare-fun e!4612632 () Bool)

(assert (=> b!7789199 (=> (not res!3103562) (not e!4612632))))

(assert (=> b!7789199 (= res!3103562 (isEmpty!42203 (tail!15471 (_2!38265 (get!26305 lt!2673444)))))))

(declare-fun b!7789200 () Bool)

(declare-fun res!3103557 () Bool)

(assert (=> b!7789200 (=> (not res!3103557) (not e!4612632))))

(assert (=> b!7789200 (= res!3103557 (not call!721937))))

(declare-fun b!7789201 () Bool)

(assert (=> b!7789201 (= e!4612635 e!4612636)))

(declare-fun c!1434622 () Bool)

(assert (=> b!7789201 (= c!1434622 ((_ is EmptyLang!20851) r2!6217))))

(declare-fun b!7789202 () Bool)

(assert (=> b!7789202 (= e!4612631 (matchR!10311 (derivativeStep!6188 r2!6217 (head!15930 (_2!38265 (get!26305 lt!2673444)))) (tail!15471 (_2!38265 (get!26305 lt!2673444)))))))

(declare-fun b!7789203 () Bool)

(declare-fun res!3103560 () Bool)

(assert (=> b!7789203 (=> res!3103560 e!4612633)))

(assert (=> b!7789203 (= res!3103560 e!4612632)))

(declare-fun res!3103561 () Bool)

(assert (=> b!7789203 (=> (not res!3103561) (not e!4612632))))

(assert (=> b!7789203 (= res!3103561 lt!2673464)))

(declare-fun b!7789204 () Bool)

(assert (=> b!7789204 (= e!4612632 (= (head!15930 (_2!38265 (get!26305 lt!2673444))) (c!1434530 r2!6217)))))

(declare-fun d!2345807 () Bool)

(assert (=> d!2345807 e!4612635))

(declare-fun c!1434623 () Bool)

(assert (=> d!2345807 (= c!1434623 ((_ is EmptyExpr!20851) r2!6217))))

(assert (=> d!2345807 (= lt!2673464 e!4612631)))

(declare-fun c!1434624 () Bool)

(assert (=> d!2345807 (= c!1434624 (isEmpty!42203 (_2!38265 (get!26305 lt!2673444))))))

(assert (=> d!2345807 (validRegex!11265 r2!6217)))

(assert (=> d!2345807 (= (matchR!10311 r2!6217 (_2!38265 (get!26305 lt!2673444))) lt!2673464)))

(declare-fun b!7789205 () Bool)

(declare-fun res!3103556 () Bool)

(declare-fun e!4612637 () Bool)

(assert (=> b!7789205 (=> res!3103556 e!4612637)))

(assert (=> b!7789205 (= res!3103556 (not (isEmpty!42203 (tail!15471 (_2!38265 (get!26305 lt!2673444))))))))

(declare-fun b!7789206 () Bool)

(assert (=> b!7789206 (= e!4612637 (not (= (head!15930 (_2!38265 (get!26305 lt!2673444))) (c!1434530 r2!6217))))))

(declare-fun b!7789207 () Bool)

(declare-fun e!4612634 () Bool)

(assert (=> b!7789207 (= e!4612633 e!4612634)))

(declare-fun res!3103558 () Bool)

(assert (=> b!7789207 (=> (not res!3103558) (not e!4612634))))

(assert (=> b!7789207 (= res!3103558 (not lt!2673464))))

(declare-fun bm!721932 () Bool)

(assert (=> bm!721932 (= call!721937 (isEmpty!42203 (_2!38265 (get!26305 lt!2673444))))))

(declare-fun b!7789208 () Bool)

(assert (=> b!7789208 (= e!4612636 (not lt!2673464))))

(declare-fun b!7789209 () Bool)

(assert (=> b!7789209 (= e!4612634 e!4612637)))

(declare-fun res!3103559 () Bool)

(assert (=> b!7789209 (=> res!3103559 e!4612637)))

(assert (=> b!7789209 (= res!3103559 call!721937)))

(assert (= (and d!2345807 c!1434624) b!7789198))

(assert (= (and d!2345807 (not c!1434624)) b!7789202))

(assert (= (and d!2345807 c!1434623) b!7789197))

(assert (= (and d!2345807 (not c!1434623)) b!7789201))

(assert (= (and b!7789201 c!1434622) b!7789208))

(assert (= (and b!7789201 (not c!1434622)) b!7789196))

(assert (= (and b!7789196 (not res!3103555)) b!7789203))

(assert (= (and b!7789203 res!3103561) b!7789200))

(assert (= (and b!7789200 res!3103557) b!7789199))

(assert (= (and b!7789199 res!3103562) b!7789204))

(assert (= (and b!7789203 (not res!3103560)) b!7789207))

(assert (= (and b!7789207 res!3103558) b!7789209))

(assert (= (and b!7789209 (not res!3103559)) b!7789205))

(assert (= (and b!7789205 (not res!3103556)) b!7789206))

(assert (= (or b!7789197 b!7789200 b!7789209) bm!721932))

(declare-fun m!8231436 () Bool)

(assert (=> b!7789199 m!8231436))

(assert (=> b!7789199 m!8231436))

(declare-fun m!8231440 () Bool)

(assert (=> b!7789199 m!8231440))

(declare-fun m!8231442 () Bool)

(assert (=> bm!721932 m!8231442))

(assert (=> d!2345807 m!8231442))

(assert (=> d!2345807 m!8231220))

(declare-fun m!8231446 () Bool)

(assert (=> b!7789202 m!8231446))

(assert (=> b!7789202 m!8231446))

(declare-fun m!8231448 () Bool)

(assert (=> b!7789202 m!8231448))

(assert (=> b!7789202 m!8231436))

(assert (=> b!7789202 m!8231448))

(assert (=> b!7789202 m!8231436))

(declare-fun m!8231450 () Bool)

(assert (=> b!7789202 m!8231450))

(assert (=> b!7789206 m!8231446))

(assert (=> b!7789204 m!8231446))

(assert (=> b!7789205 m!8231436))

(assert (=> b!7789205 m!8231436))

(assert (=> b!7789205 m!8231440))

(assert (=> b!7789198 m!8231218))

(assert (=> b!7788735 d!2345807))

(assert (=> b!7788735 d!2345773))

(declare-fun b!7789219 () Bool)

(declare-fun res!3103570 () Bool)

(declare-fun e!4612649 () Bool)

(assert (=> b!7789219 (=> res!3103570 e!4612649)))

(assert (=> b!7789219 (= res!3103570 (not ((_ is Concat!29696) (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279))))))))

(declare-fun e!4612651 () Bool)

(assert (=> b!7789219 (= e!4612651 e!4612649)))

(declare-fun b!7789220 () Bool)

(declare-fun e!4612645 () Bool)

(declare-fun e!4612650 () Bool)

(assert (=> b!7789220 (= e!4612645 e!4612650)))

(declare-fun c!1434628 () Bool)

(assert (=> b!7789220 (= c!1434628 ((_ is Star!20851) (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))

(declare-fun b!7789221 () Bool)

(declare-fun e!4612647 () Bool)

(assert (=> b!7789221 (= e!4612650 e!4612647)))

(declare-fun res!3103569 () Bool)

(assert (=> b!7789221 (= res!3103569 (not (nullable!9235 (reg!21180 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))))

(assert (=> b!7789221 (=> (not res!3103569) (not e!4612647))))

(declare-fun d!2345811 () Bool)

(declare-fun res!3103572 () Bool)

(assert (=> d!2345811 (=> res!3103572 e!4612645)))

(assert (=> d!2345811 (= res!3103572 ((_ is ElementMatch!20851) (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))

(assert (=> d!2345811 (= (validRegex!11265 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))) e!4612645)))

(declare-fun b!7789222 () Bool)

(assert (=> b!7789222 (= e!4612650 e!4612651)))

(declare-fun c!1434627 () Bool)

(assert (=> b!7789222 (= c!1434627 ((_ is Union!20851) (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))

(declare-fun b!7789223 () Bool)

(declare-fun e!4612648 () Bool)

(declare-fun call!721943 () Bool)

(assert (=> b!7789223 (= e!4612648 call!721943)))

(declare-fun b!7789224 () Bool)

(declare-fun e!4612646 () Bool)

(assert (=> b!7789224 (= e!4612646 call!721943)))

(declare-fun call!721941 () Bool)

(declare-fun bm!721936 () Bool)

(assert (=> bm!721936 (= call!721941 (validRegex!11265 (ite c!1434627 (regOne!42215 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))) (regOne!42214 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))))))))

(declare-fun bm!721937 () Bool)

(declare-fun call!721942 () Bool)

(assert (=> bm!721937 (= call!721943 call!721942)))

(declare-fun bm!721938 () Bool)

(assert (=> bm!721938 (= call!721942 (validRegex!11265 (ite c!1434628 (reg!21180 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))) (ite c!1434627 (regTwo!42215 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279)))) (regTwo!42214 (ite c!1434556 (reg!21180 r1!6279) (ite c!1434555 (regTwo!42215 r1!6279) (regTwo!42214 r1!6279))))))))))

(declare-fun b!7789225 () Bool)

(declare-fun res!3103568 () Bool)

(assert (=> b!7789225 (=> (not res!3103568) (not e!4612648))))

(assert (=> b!7789225 (= res!3103568 call!721941)))

(assert (=> b!7789225 (= e!4612651 e!4612648)))

(declare-fun b!7789226 () Bool)

(assert (=> b!7789226 (= e!4612649 e!4612646)))

(declare-fun res!3103571 () Bool)

(assert (=> b!7789226 (=> (not res!3103571) (not e!4612646))))

(assert (=> b!7789226 (= res!3103571 call!721941)))

(declare-fun b!7789227 () Bool)

(assert (=> b!7789227 (= e!4612647 call!721942)))

(assert (= (and d!2345811 (not res!3103572)) b!7789220))

(assert (= (and b!7789220 c!1434628) b!7789221))

(assert (= (and b!7789220 (not c!1434628)) b!7789222))

(assert (= (and b!7789221 res!3103569) b!7789227))

(assert (= (and b!7789222 c!1434627) b!7789225))

(assert (= (and b!7789222 (not c!1434627)) b!7789219))

(assert (= (and b!7789225 res!3103568) b!7789223))

(assert (= (and b!7789219 (not res!3103570)) b!7789226))

(assert (= (and b!7789226 res!3103571) b!7789224))

(assert (= (or b!7789225 b!7789226) bm!721936))

(assert (= (or b!7789223 b!7789224) bm!721937))

(assert (= (or b!7789227 bm!721937) bm!721938))

(declare-fun m!8231456 () Bool)

(assert (=> b!7789221 m!8231456))

(declare-fun m!8231460 () Bool)

(assert (=> bm!721936 m!8231460))

(declare-fun m!8231462 () Bool)

(assert (=> bm!721938 m!8231462))

(assert (=> bm!721884 d!2345811))

(declare-fun b!7789261 () Bool)

(declare-fun res!3103590 () Bool)

(declare-fun e!4612670 () Bool)

(assert (=> b!7789261 (=> (not res!3103590) (not e!4612670))))

(declare-fun lt!2673468 () List!73690)

(declare-fun size!42711 (List!73690) Int)

(assert (=> b!7789261 (= res!3103590 (= (size!42711 lt!2673468) (+ (size!42711 (_1!38265 (get!26305 lt!2673444))) (size!42711 (_2!38265 (get!26305 lt!2673444))))))))

(declare-fun b!7789259 () Bool)

(declare-fun e!4612671 () List!73690)

(assert (=> b!7789259 (= e!4612671 (_2!38265 (get!26305 lt!2673444)))))

(declare-fun d!2345817 () Bool)

(assert (=> d!2345817 e!4612670))

(declare-fun res!3103591 () Bool)

(assert (=> d!2345817 (=> (not res!3103591) (not e!4612670))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15608 (List!73690) (InoxSet C!42028))

(assert (=> d!2345817 (= res!3103591 (= (content!15608 lt!2673468) ((_ map or) (content!15608 (_1!38265 (get!26305 lt!2673444))) (content!15608 (_2!38265 (get!26305 lt!2673444))))))))

(assert (=> d!2345817 (= lt!2673468 e!4612671)))

(declare-fun c!1434636 () Bool)

(assert (=> d!2345817 (= c!1434636 ((_ is Nil!73566) (_1!38265 (get!26305 lt!2673444))))))

(assert (=> d!2345817 (= (++!17928 (_1!38265 (get!26305 lt!2673444)) (_2!38265 (get!26305 lt!2673444))) lt!2673468)))

(declare-fun b!7789260 () Bool)

(assert (=> b!7789260 (= e!4612671 (Cons!73566 (h!80014 (_1!38265 (get!26305 lt!2673444))) (++!17928 (t!388425 (_1!38265 (get!26305 lt!2673444))) (_2!38265 (get!26305 lt!2673444)))))))

(declare-fun b!7789262 () Bool)

(assert (=> b!7789262 (= e!4612670 (or (not (= (_2!38265 (get!26305 lt!2673444)) Nil!73566)) (= lt!2673468 (_1!38265 (get!26305 lt!2673444)))))))

(assert (= (and d!2345817 c!1434636) b!7789259))

(assert (= (and d!2345817 (not c!1434636)) b!7789260))

(assert (= (and d!2345817 res!3103591) b!7789261))

(assert (= (and b!7789261 res!3103590) b!7789262))

(declare-fun m!8231486 () Bool)

(assert (=> b!7789261 m!8231486))

(declare-fun m!8231488 () Bool)

(assert (=> b!7789261 m!8231488))

(declare-fun m!8231490 () Bool)

(assert (=> b!7789261 m!8231490))

(declare-fun m!8231492 () Bool)

(assert (=> d!2345817 m!8231492))

(declare-fun m!8231494 () Bool)

(assert (=> d!2345817 m!8231494))

(declare-fun m!8231496 () Bool)

(assert (=> d!2345817 m!8231496))

(declare-fun m!8231498 () Bool)

(assert (=> b!7789260 m!8231498))

(assert (=> b!7788737 d!2345817))

(assert (=> b!7788737 d!2345773))

(assert (=> b!7788734 d!2345763))

(assert (=> bm!721893 d!2345791))

(declare-fun d!2345827 () Bool)

(assert (=> d!2345827 (= (nullable!9235 (reg!21180 r1!6279)) (nullableFct!3620 (reg!21180 r1!6279)))))

(declare-fun bs!1966327 () Bool)

(assert (= bs!1966327 d!2345827))

(declare-fun m!8231500 () Bool)

(assert (=> bs!1966327 m!8231500))

(assert (=> b!7788808 d!2345827))

(declare-fun b!7789263 () Bool)

(declare-fun res!3103594 () Bool)

(declare-fun e!4612676 () Bool)

(assert (=> b!7789263 (=> res!3103594 e!4612676)))

(assert (=> b!7789263 (= res!3103594 (not ((_ is Concat!29696) (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217))))))))

(declare-fun e!4612678 () Bool)

(assert (=> b!7789263 (= e!4612678 e!4612676)))

(declare-fun b!7789264 () Bool)

(declare-fun e!4612672 () Bool)

(declare-fun e!4612677 () Bool)

(assert (=> b!7789264 (= e!4612672 e!4612677)))

(declare-fun c!1434638 () Bool)

(assert (=> b!7789264 (= c!1434638 ((_ is Star!20851) (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))

(declare-fun b!7789265 () Bool)

(declare-fun e!4612674 () Bool)

(assert (=> b!7789265 (= e!4612677 e!4612674)))

(declare-fun res!3103593 () Bool)

(assert (=> b!7789265 (= res!3103593 (not (nullable!9235 (reg!21180 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))))

(assert (=> b!7789265 (=> (not res!3103593) (not e!4612674))))

(declare-fun d!2345829 () Bool)

(declare-fun res!3103596 () Bool)

(assert (=> d!2345829 (=> res!3103596 e!4612672)))

(assert (=> d!2345829 (= res!3103596 ((_ is ElementMatch!20851) (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))

(assert (=> d!2345829 (= (validRegex!11265 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))) e!4612672)))

(declare-fun b!7789266 () Bool)

(assert (=> b!7789266 (= e!4612677 e!4612678)))

(declare-fun c!1434637 () Bool)

(assert (=> b!7789266 (= c!1434637 ((_ is Union!20851) (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))

(declare-fun b!7789267 () Bool)

(declare-fun e!4612675 () Bool)

(declare-fun call!721950 () Bool)

(assert (=> b!7789267 (= e!4612675 call!721950)))

(declare-fun b!7789268 () Bool)

(declare-fun e!4612673 () Bool)

(assert (=> b!7789268 (= e!4612673 call!721950)))

(declare-fun call!721948 () Bool)

(declare-fun bm!721943 () Bool)

(assert (=> bm!721943 (= call!721948 (validRegex!11265 (ite c!1434637 (regOne!42215 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))) (regOne!42214 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))))))))

(declare-fun bm!721944 () Bool)

(declare-fun call!721949 () Bool)

(assert (=> bm!721944 (= call!721950 call!721949)))

(declare-fun bm!721945 () Bool)

(assert (=> bm!721945 (= call!721949 (validRegex!11265 (ite c!1434638 (reg!21180 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))) (ite c!1434637 (regTwo!42215 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217)))) (regTwo!42214 (ite c!1434552 (reg!21180 r2!6217) (ite c!1434551 (regTwo!42215 r2!6217) (regTwo!42214 r2!6217))))))))))

(declare-fun b!7789269 () Bool)

(declare-fun res!3103592 () Bool)

(assert (=> b!7789269 (=> (not res!3103592) (not e!4612675))))

(assert (=> b!7789269 (= res!3103592 call!721948)))

(assert (=> b!7789269 (= e!4612678 e!4612675)))

(declare-fun b!7789270 () Bool)

(assert (=> b!7789270 (= e!4612676 e!4612673)))

(declare-fun res!3103595 () Bool)

(assert (=> b!7789270 (=> (not res!3103595) (not e!4612673))))

(assert (=> b!7789270 (= res!3103595 call!721948)))

(declare-fun b!7789271 () Bool)

(assert (=> b!7789271 (= e!4612674 call!721949)))

(assert (= (and d!2345829 (not res!3103596)) b!7789264))

(assert (= (and b!7789264 c!1434638) b!7789265))

(assert (= (and b!7789264 (not c!1434638)) b!7789266))

(assert (= (and b!7789265 res!3103593) b!7789271))

(assert (= (and b!7789266 c!1434637) b!7789269))

(assert (= (and b!7789266 (not c!1434637)) b!7789263))

(assert (= (and b!7789269 res!3103592) b!7789267))

(assert (= (and b!7789263 (not res!3103594)) b!7789270))

(assert (= (and b!7789270 res!3103595) b!7789268))

(assert (= (or b!7789269 b!7789270) bm!721943))

(assert (= (or b!7789267 b!7789268) bm!721944))

(assert (= (or b!7789271 bm!721944) bm!721945))

(declare-fun m!8231502 () Bool)

(assert (=> b!7789265 m!8231502))

(declare-fun m!8231504 () Bool)

(assert (=> bm!721943 m!8231504))

(declare-fun m!8231506 () Bool)

(assert (=> bm!721945 m!8231506))

(assert (=> bm!721878 d!2345829))

(assert (=> b!7788903 d!2345767))

(assert (=> b!7788903 d!2345759))

(assert (=> b!7788904 d!2345757))

(declare-fun b!7789275 () Bool)

(declare-fun e!4612679 () Bool)

(declare-fun tp!2292470 () Bool)

(declare-fun tp!2292471 () Bool)

(assert (=> b!7789275 (= e!4612679 (and tp!2292470 tp!2292471))))

(assert (=> b!7788975 (= tp!2292418 e!4612679)))

(declare-fun b!7789273 () Bool)

(declare-fun tp!2292473 () Bool)

(declare-fun tp!2292474 () Bool)

(assert (=> b!7789273 (= e!4612679 (and tp!2292473 tp!2292474))))

(declare-fun b!7789274 () Bool)

(declare-fun tp!2292472 () Bool)

(assert (=> b!7789274 (= e!4612679 tp!2292472)))

(declare-fun b!7789272 () Bool)

(assert (=> b!7789272 (= e!4612679 tp_is_empty!52057)))

(assert (= (and b!7788975 ((_ is ElementMatch!20851) (regOne!42214 (regOne!42214 r1!6279)))) b!7789272))

(assert (= (and b!7788975 ((_ is Concat!29696) (regOne!42214 (regOne!42214 r1!6279)))) b!7789273))

(assert (= (and b!7788975 ((_ is Star!20851) (regOne!42214 (regOne!42214 r1!6279)))) b!7789274))

(assert (= (and b!7788975 ((_ is Union!20851) (regOne!42214 (regOne!42214 r1!6279)))) b!7789275))

(declare-fun b!7789279 () Bool)

(declare-fun e!4612680 () Bool)

(declare-fun tp!2292475 () Bool)

(declare-fun tp!2292476 () Bool)

(assert (=> b!7789279 (= e!4612680 (and tp!2292475 tp!2292476))))

(assert (=> b!7788975 (= tp!2292420 e!4612680)))

(declare-fun b!7789277 () Bool)

(declare-fun tp!2292478 () Bool)

(declare-fun tp!2292479 () Bool)

(assert (=> b!7789277 (= e!4612680 (and tp!2292478 tp!2292479))))

(declare-fun b!7789278 () Bool)

(declare-fun tp!2292477 () Bool)

(assert (=> b!7789278 (= e!4612680 tp!2292477)))

(declare-fun b!7789276 () Bool)

(assert (=> b!7789276 (= e!4612680 tp_is_empty!52057)))

(assert (= (and b!7788975 ((_ is ElementMatch!20851) (regTwo!42214 (regOne!42214 r1!6279)))) b!7789276))

(assert (= (and b!7788975 ((_ is Concat!29696) (regTwo!42214 (regOne!42214 r1!6279)))) b!7789277))

(assert (= (and b!7788975 ((_ is Star!20851) (regTwo!42214 (regOne!42214 r1!6279)))) b!7789278))

(assert (= (and b!7788975 ((_ is Union!20851) (regTwo!42214 (regOne!42214 r1!6279)))) b!7789279))

(declare-fun b!7789283 () Bool)

(declare-fun e!4612681 () Bool)

(declare-fun tp!2292480 () Bool)

(declare-fun tp!2292481 () Bool)

(assert (=> b!7789283 (= e!4612681 (and tp!2292480 tp!2292481))))

(assert (=> b!7788976 (= tp!2292417 e!4612681)))

(declare-fun b!7789281 () Bool)

(declare-fun tp!2292483 () Bool)

(declare-fun tp!2292484 () Bool)

(assert (=> b!7789281 (= e!4612681 (and tp!2292483 tp!2292484))))

(declare-fun b!7789282 () Bool)

(declare-fun tp!2292482 () Bool)

(assert (=> b!7789282 (= e!4612681 tp!2292482)))

(declare-fun b!7789280 () Bool)

(assert (=> b!7789280 (= e!4612681 tp_is_empty!52057)))

(assert (= (and b!7788976 ((_ is ElementMatch!20851) (reg!21180 (regOne!42214 r1!6279)))) b!7789280))

(assert (= (and b!7788976 ((_ is Concat!29696) (reg!21180 (regOne!42214 r1!6279)))) b!7789281))

(assert (= (and b!7788976 ((_ is Star!20851) (reg!21180 (regOne!42214 r1!6279)))) b!7789282))

(assert (= (and b!7788976 ((_ is Union!20851) (reg!21180 (regOne!42214 r1!6279)))) b!7789283))

(declare-fun b!7789287 () Bool)

(declare-fun e!4612682 () Bool)

(declare-fun tp!2292485 () Bool)

(declare-fun tp!2292486 () Bool)

(assert (=> b!7789287 (= e!4612682 (and tp!2292485 tp!2292486))))

(assert (=> b!7788985 (= tp!2292425 e!4612682)))

(declare-fun b!7789285 () Bool)

(declare-fun tp!2292488 () Bool)

(declare-fun tp!2292489 () Bool)

(assert (=> b!7789285 (= e!4612682 (and tp!2292488 tp!2292489))))

(declare-fun b!7789286 () Bool)

(declare-fun tp!2292487 () Bool)

(assert (=> b!7789286 (= e!4612682 tp!2292487)))

(declare-fun b!7789284 () Bool)

(assert (=> b!7789284 (= e!4612682 tp_is_empty!52057)))

(assert (= (and b!7788985 ((_ is ElementMatch!20851) (regOne!42215 (regTwo!42214 r1!6279)))) b!7789284))

(assert (= (and b!7788985 ((_ is Concat!29696) (regOne!42215 (regTwo!42214 r1!6279)))) b!7789285))

(assert (= (and b!7788985 ((_ is Star!20851) (regOne!42215 (regTwo!42214 r1!6279)))) b!7789286))

(assert (= (and b!7788985 ((_ is Union!20851) (regOne!42215 (regTwo!42214 r1!6279)))) b!7789287))

(declare-fun b!7789291 () Bool)

(declare-fun e!4612683 () Bool)

(declare-fun tp!2292490 () Bool)

(declare-fun tp!2292491 () Bool)

(assert (=> b!7789291 (= e!4612683 (and tp!2292490 tp!2292491))))

(assert (=> b!7788985 (= tp!2292426 e!4612683)))

(declare-fun b!7789289 () Bool)

(declare-fun tp!2292493 () Bool)

(declare-fun tp!2292494 () Bool)

(assert (=> b!7789289 (= e!4612683 (and tp!2292493 tp!2292494))))

(declare-fun b!7789290 () Bool)

(declare-fun tp!2292492 () Bool)

(assert (=> b!7789290 (= e!4612683 tp!2292492)))

(declare-fun b!7789288 () Bool)

(assert (=> b!7789288 (= e!4612683 tp_is_empty!52057)))

(assert (= (and b!7788985 ((_ is ElementMatch!20851) (regTwo!42215 (regTwo!42214 r1!6279)))) b!7789288))

(assert (= (and b!7788985 ((_ is Concat!29696) (regTwo!42215 (regTwo!42214 r1!6279)))) b!7789289))

(assert (= (and b!7788985 ((_ is Star!20851) (regTwo!42215 (regTwo!42214 r1!6279)))) b!7789290))

(assert (= (and b!7788985 ((_ is Union!20851) (regTwo!42215 (regTwo!42214 r1!6279)))) b!7789291))

(declare-fun b!7789295 () Bool)

(declare-fun e!4612684 () Bool)

(declare-fun tp!2292495 () Bool)

(declare-fun tp!2292496 () Bool)

(assert (=> b!7789295 (= e!4612684 (and tp!2292495 tp!2292496))))

(assert (=> b!7788993 (= tp!2292435 e!4612684)))

(declare-fun b!7789293 () Bool)

(declare-fun tp!2292498 () Bool)

(declare-fun tp!2292499 () Bool)

(assert (=> b!7789293 (= e!4612684 (and tp!2292498 tp!2292499))))

(declare-fun b!7789294 () Bool)

(declare-fun tp!2292497 () Bool)

(assert (=> b!7789294 (= e!4612684 tp!2292497)))

(declare-fun b!7789292 () Bool)

(assert (=> b!7789292 (= e!4612684 tp_is_empty!52057)))

(assert (= (and b!7788993 ((_ is ElementMatch!20851) (regOne!42215 (regTwo!42214 r2!6217)))) b!7789292))

(assert (= (and b!7788993 ((_ is Concat!29696) (regOne!42215 (regTwo!42214 r2!6217)))) b!7789293))

(assert (= (and b!7788993 ((_ is Star!20851) (regOne!42215 (regTwo!42214 r2!6217)))) b!7789294))

(assert (= (and b!7788993 ((_ is Union!20851) (regOne!42215 (regTwo!42214 r2!6217)))) b!7789295))

(declare-fun b!7789299 () Bool)

(declare-fun e!4612685 () Bool)

(declare-fun tp!2292500 () Bool)

(declare-fun tp!2292501 () Bool)

(assert (=> b!7789299 (= e!4612685 (and tp!2292500 tp!2292501))))

(assert (=> b!7788993 (= tp!2292436 e!4612685)))

(declare-fun b!7789297 () Bool)

(declare-fun tp!2292503 () Bool)

(declare-fun tp!2292504 () Bool)

(assert (=> b!7789297 (= e!4612685 (and tp!2292503 tp!2292504))))

(declare-fun b!7789298 () Bool)

(declare-fun tp!2292502 () Bool)

(assert (=> b!7789298 (= e!4612685 tp!2292502)))

(declare-fun b!7789296 () Bool)

(assert (=> b!7789296 (= e!4612685 tp_is_empty!52057)))

(assert (= (and b!7788993 ((_ is ElementMatch!20851) (regTwo!42215 (regTwo!42214 r2!6217)))) b!7789296))

(assert (= (and b!7788993 ((_ is Concat!29696) (regTwo!42215 (regTwo!42214 r2!6217)))) b!7789297))

(assert (= (and b!7788993 ((_ is Star!20851) (regTwo!42215 (regTwo!42214 r2!6217)))) b!7789298))

(assert (= (and b!7788993 ((_ is Union!20851) (regTwo!42215 (regTwo!42214 r2!6217)))) b!7789299))

(declare-fun b!7789303 () Bool)

(declare-fun e!4612686 () Bool)

(declare-fun tp!2292505 () Bool)

(declare-fun tp!2292506 () Bool)

(assert (=> b!7789303 (= e!4612686 (and tp!2292505 tp!2292506))))

(assert (=> b!7789009 (= tp!2292455 e!4612686)))

(declare-fun b!7789301 () Bool)

(declare-fun tp!2292508 () Bool)

(declare-fun tp!2292509 () Bool)

(assert (=> b!7789301 (= e!4612686 (and tp!2292508 tp!2292509))))

(declare-fun b!7789302 () Bool)

(declare-fun tp!2292507 () Bool)

(assert (=> b!7789302 (= e!4612686 tp!2292507)))

(declare-fun b!7789300 () Bool)

(assert (=> b!7789300 (= e!4612686 tp_is_empty!52057)))

(assert (= (and b!7789009 ((_ is ElementMatch!20851) (regOne!42215 (regTwo!42215 r2!6217)))) b!7789300))

(assert (= (and b!7789009 ((_ is Concat!29696) (regOne!42215 (regTwo!42215 r2!6217)))) b!7789301))

(assert (= (and b!7789009 ((_ is Star!20851) (regOne!42215 (regTwo!42215 r2!6217)))) b!7789302))

(assert (= (and b!7789009 ((_ is Union!20851) (regOne!42215 (regTwo!42215 r2!6217)))) b!7789303))

(declare-fun b!7789307 () Bool)

(declare-fun e!4612687 () Bool)

(declare-fun tp!2292510 () Bool)

(declare-fun tp!2292511 () Bool)

(assert (=> b!7789307 (= e!4612687 (and tp!2292510 tp!2292511))))

(assert (=> b!7789009 (= tp!2292456 e!4612687)))

(declare-fun b!7789305 () Bool)

(declare-fun tp!2292513 () Bool)

(declare-fun tp!2292514 () Bool)

(assert (=> b!7789305 (= e!4612687 (and tp!2292513 tp!2292514))))

(declare-fun b!7789306 () Bool)

(declare-fun tp!2292512 () Bool)

(assert (=> b!7789306 (= e!4612687 tp!2292512)))

(declare-fun b!7789304 () Bool)

(assert (=> b!7789304 (= e!4612687 tp_is_empty!52057)))

(assert (= (and b!7789009 ((_ is ElementMatch!20851) (regTwo!42215 (regTwo!42215 r2!6217)))) b!7789304))

(assert (= (and b!7789009 ((_ is Concat!29696) (regTwo!42215 (regTwo!42215 r2!6217)))) b!7789305))

(assert (= (and b!7789009 ((_ is Star!20851) (regTwo!42215 (regTwo!42215 r2!6217)))) b!7789306))

(assert (= (and b!7789009 ((_ is Union!20851) (regTwo!42215 (regTwo!42215 r2!6217)))) b!7789307))

(declare-fun b!7789311 () Bool)

(declare-fun e!4612688 () Bool)

(declare-fun tp!2292515 () Bool)

(declare-fun tp!2292516 () Bool)

(assert (=> b!7789311 (= e!4612688 (and tp!2292515 tp!2292516))))

(assert (=> b!7789000 (= tp!2292447 e!4612688)))

(declare-fun b!7789309 () Bool)

(declare-fun tp!2292518 () Bool)

(declare-fun tp!2292519 () Bool)

(assert (=> b!7789309 (= e!4612688 (and tp!2292518 tp!2292519))))

(declare-fun b!7789310 () Bool)

(declare-fun tp!2292517 () Bool)

(assert (=> b!7789310 (= e!4612688 tp!2292517)))

(declare-fun b!7789308 () Bool)

(assert (=> b!7789308 (= e!4612688 tp_is_empty!52057)))

(assert (= (and b!7789000 ((_ is ElementMatch!20851) (reg!21180 (reg!21180 r1!6279)))) b!7789308))

(assert (= (and b!7789000 ((_ is Concat!29696) (reg!21180 (reg!21180 r1!6279)))) b!7789309))

(assert (= (and b!7789000 ((_ is Star!20851) (reg!21180 (reg!21180 r1!6279)))) b!7789310))

(assert (= (and b!7789000 ((_ is Union!20851) (reg!21180 (reg!21180 r1!6279)))) b!7789311))

(declare-fun b!7789315 () Bool)

(declare-fun e!4612689 () Bool)

(declare-fun tp!2292520 () Bool)

(declare-fun tp!2292521 () Bool)

(assert (=> b!7789315 (= e!4612689 (and tp!2292520 tp!2292521))))

(assert (=> b!7788983 (= tp!2292428 e!4612689)))

(declare-fun b!7789313 () Bool)

(declare-fun tp!2292523 () Bool)

(declare-fun tp!2292524 () Bool)

(assert (=> b!7789313 (= e!4612689 (and tp!2292523 tp!2292524))))

(declare-fun b!7789314 () Bool)

(declare-fun tp!2292522 () Bool)

(assert (=> b!7789314 (= e!4612689 tp!2292522)))

(declare-fun b!7789312 () Bool)

(assert (=> b!7789312 (= e!4612689 tp_is_empty!52057)))

(assert (= (and b!7788983 ((_ is ElementMatch!20851) (regOne!42214 (regTwo!42214 r1!6279)))) b!7789312))

(assert (= (and b!7788983 ((_ is Concat!29696) (regOne!42214 (regTwo!42214 r1!6279)))) b!7789313))

(assert (= (and b!7788983 ((_ is Star!20851) (regOne!42214 (regTwo!42214 r1!6279)))) b!7789314))

(assert (= (and b!7788983 ((_ is Union!20851) (regOne!42214 (regTwo!42214 r1!6279)))) b!7789315))

(declare-fun b!7789319 () Bool)

(declare-fun e!4612690 () Bool)

(declare-fun tp!2292525 () Bool)

(declare-fun tp!2292526 () Bool)

(assert (=> b!7789319 (= e!4612690 (and tp!2292525 tp!2292526))))

(assert (=> b!7788983 (= tp!2292429 e!4612690)))

(declare-fun b!7789317 () Bool)

(declare-fun tp!2292528 () Bool)

(declare-fun tp!2292529 () Bool)

(assert (=> b!7789317 (= e!4612690 (and tp!2292528 tp!2292529))))

(declare-fun b!7789318 () Bool)

(declare-fun tp!2292527 () Bool)

(assert (=> b!7789318 (= e!4612690 tp!2292527)))

(declare-fun b!7789316 () Bool)

(assert (=> b!7789316 (= e!4612690 tp_is_empty!52057)))

(assert (= (and b!7788983 ((_ is ElementMatch!20851) (regTwo!42214 (regTwo!42214 r1!6279)))) b!7789316))

(assert (= (and b!7788983 ((_ is Concat!29696) (regTwo!42214 (regTwo!42214 r1!6279)))) b!7789317))

(assert (= (and b!7788983 ((_ is Star!20851) (regTwo!42214 (regTwo!42214 r1!6279)))) b!7789318))

(assert (= (and b!7788983 ((_ is Union!20851) (regTwo!42214 (regTwo!42214 r1!6279)))) b!7789319))

(declare-fun b!7789323 () Bool)

(declare-fun e!4612691 () Bool)

(declare-fun tp!2292530 () Bool)

(declare-fun tp!2292531 () Bool)

(assert (=> b!7789323 (= e!4612691 (and tp!2292530 tp!2292531))))

(assert (=> b!7788991 (= tp!2292438 e!4612691)))

(declare-fun b!7789321 () Bool)

(declare-fun tp!2292533 () Bool)

(declare-fun tp!2292534 () Bool)

(assert (=> b!7789321 (= e!4612691 (and tp!2292533 tp!2292534))))

(declare-fun b!7789322 () Bool)

(declare-fun tp!2292532 () Bool)

(assert (=> b!7789322 (= e!4612691 tp!2292532)))

(declare-fun b!7789320 () Bool)

(assert (=> b!7789320 (= e!4612691 tp_is_empty!52057)))

(assert (= (and b!7788991 ((_ is ElementMatch!20851) (regOne!42214 (regTwo!42214 r2!6217)))) b!7789320))

(assert (= (and b!7788991 ((_ is Concat!29696) (regOne!42214 (regTwo!42214 r2!6217)))) b!7789321))

(assert (= (and b!7788991 ((_ is Star!20851) (regOne!42214 (regTwo!42214 r2!6217)))) b!7789322))

(assert (= (and b!7788991 ((_ is Union!20851) (regOne!42214 (regTwo!42214 r2!6217)))) b!7789323))

(declare-fun b!7789327 () Bool)

(declare-fun e!4612692 () Bool)

(declare-fun tp!2292535 () Bool)

(declare-fun tp!2292536 () Bool)

(assert (=> b!7789327 (= e!4612692 (and tp!2292535 tp!2292536))))

(assert (=> b!7788991 (= tp!2292439 e!4612692)))

(declare-fun b!7789325 () Bool)

(declare-fun tp!2292538 () Bool)

(declare-fun tp!2292539 () Bool)

(assert (=> b!7789325 (= e!4612692 (and tp!2292538 tp!2292539))))

(declare-fun b!7789326 () Bool)

(declare-fun tp!2292537 () Bool)

(assert (=> b!7789326 (= e!4612692 tp!2292537)))

(declare-fun b!7789324 () Bool)

(assert (=> b!7789324 (= e!4612692 tp_is_empty!52057)))

(assert (= (and b!7788991 ((_ is ElementMatch!20851) (regTwo!42214 (regTwo!42214 r2!6217)))) b!7789324))

(assert (= (and b!7788991 ((_ is Concat!29696) (regTwo!42214 (regTwo!42214 r2!6217)))) b!7789325))

(assert (= (and b!7788991 ((_ is Star!20851) (regTwo!42214 (regTwo!42214 r2!6217)))) b!7789326))

(assert (= (and b!7788991 ((_ is Union!20851) (regTwo!42214 (regTwo!42214 r2!6217)))) b!7789327))

(declare-fun b!7789331 () Bool)

(declare-fun e!4612693 () Bool)

(declare-fun tp!2292540 () Bool)

(declare-fun tp!2292541 () Bool)

(assert (=> b!7789331 (= e!4612693 (and tp!2292540 tp!2292541))))

(assert (=> b!7789001 (= tp!2292445 e!4612693)))

(declare-fun b!7789329 () Bool)

(declare-fun tp!2292543 () Bool)

(declare-fun tp!2292544 () Bool)

(assert (=> b!7789329 (= e!4612693 (and tp!2292543 tp!2292544))))

(declare-fun b!7789330 () Bool)

(declare-fun tp!2292542 () Bool)

(assert (=> b!7789330 (= e!4612693 tp!2292542)))

(declare-fun b!7789328 () Bool)

(assert (=> b!7789328 (= e!4612693 tp_is_empty!52057)))

(assert (= (and b!7789001 ((_ is ElementMatch!20851) (regOne!42215 (reg!21180 r1!6279)))) b!7789328))

(assert (= (and b!7789001 ((_ is Concat!29696) (regOne!42215 (reg!21180 r1!6279)))) b!7789329))

(assert (= (and b!7789001 ((_ is Star!20851) (regOne!42215 (reg!21180 r1!6279)))) b!7789330))

(assert (= (and b!7789001 ((_ is Union!20851) (regOne!42215 (reg!21180 r1!6279)))) b!7789331))

(declare-fun b!7789335 () Bool)

(declare-fun e!4612694 () Bool)

(declare-fun tp!2292545 () Bool)

(declare-fun tp!2292546 () Bool)

(assert (=> b!7789335 (= e!4612694 (and tp!2292545 tp!2292546))))

(assert (=> b!7789001 (= tp!2292446 e!4612694)))

(declare-fun b!7789333 () Bool)

(declare-fun tp!2292548 () Bool)

(declare-fun tp!2292549 () Bool)

(assert (=> b!7789333 (= e!4612694 (and tp!2292548 tp!2292549))))

(declare-fun b!7789334 () Bool)

(declare-fun tp!2292547 () Bool)

(assert (=> b!7789334 (= e!4612694 tp!2292547)))

(declare-fun b!7789332 () Bool)

(assert (=> b!7789332 (= e!4612694 tp_is_empty!52057)))

(assert (= (and b!7789001 ((_ is ElementMatch!20851) (regTwo!42215 (reg!21180 r1!6279)))) b!7789332))

(assert (= (and b!7789001 ((_ is Concat!29696) (regTwo!42215 (reg!21180 r1!6279)))) b!7789333))

(assert (= (and b!7789001 ((_ is Star!20851) (regTwo!42215 (reg!21180 r1!6279)))) b!7789334))

(assert (= (and b!7789001 ((_ is Union!20851) (regTwo!42215 (reg!21180 r1!6279)))) b!7789335))

(declare-fun b!7789341 () Bool)

(declare-fun e!4612695 () Bool)

(declare-fun tp!2292550 () Bool)

(declare-fun tp!2292551 () Bool)

(assert (=> b!7789341 (= e!4612695 (and tp!2292550 tp!2292551))))

(assert (=> b!7788992 (= tp!2292437 e!4612695)))

(declare-fun b!7789339 () Bool)

(declare-fun tp!2292553 () Bool)

(declare-fun tp!2292554 () Bool)

(assert (=> b!7789339 (= e!4612695 (and tp!2292553 tp!2292554))))

(declare-fun b!7789340 () Bool)

(declare-fun tp!2292552 () Bool)

(assert (=> b!7789340 (= e!4612695 tp!2292552)))

(declare-fun b!7789338 () Bool)

(assert (=> b!7789338 (= e!4612695 tp_is_empty!52057)))

(assert (= (and b!7788992 ((_ is ElementMatch!20851) (reg!21180 (regTwo!42214 r2!6217)))) b!7789338))

(assert (= (and b!7788992 ((_ is Concat!29696) (reg!21180 (regTwo!42214 r2!6217)))) b!7789339))

(assert (= (and b!7788992 ((_ is Star!20851) (reg!21180 (regTwo!42214 r2!6217)))) b!7789340))

(assert (= (and b!7788992 ((_ is Union!20851) (reg!21180 (regTwo!42214 r2!6217)))) b!7789341))

(declare-fun b!7789351 () Bool)

(declare-fun e!4612698 () Bool)

(declare-fun tp!2292555 () Bool)

(declare-fun tp!2292556 () Bool)

(assert (=> b!7789351 (= e!4612698 (and tp!2292555 tp!2292556))))

(assert (=> b!7788984 (= tp!2292427 e!4612698)))

(declare-fun b!7789347 () Bool)

(declare-fun tp!2292558 () Bool)

(declare-fun tp!2292559 () Bool)

(assert (=> b!7789347 (= e!4612698 (and tp!2292558 tp!2292559))))

(declare-fun b!7789349 () Bool)

(declare-fun tp!2292557 () Bool)

(assert (=> b!7789349 (= e!4612698 tp!2292557)))

(declare-fun b!7789344 () Bool)

(assert (=> b!7789344 (= e!4612698 tp_is_empty!52057)))

(assert (= (and b!7788984 ((_ is ElementMatch!20851) (reg!21180 (regTwo!42214 r1!6279)))) b!7789344))

(assert (= (and b!7788984 ((_ is Concat!29696) (reg!21180 (regTwo!42214 r1!6279)))) b!7789347))

(assert (= (and b!7788984 ((_ is Star!20851) (reg!21180 (regTwo!42214 r1!6279)))) b!7789349))

(assert (= (and b!7788984 ((_ is Union!20851) (reg!21180 (regTwo!42214 r1!6279)))) b!7789351))

(declare-fun b!7789367 () Bool)

(declare-fun e!4612705 () Bool)

(declare-fun tp!2292560 () Bool)

(declare-fun tp!2292561 () Bool)

(assert (=> b!7789367 (= e!4612705 (and tp!2292560 tp!2292561))))

(assert (=> b!7789016 (= tp!2292467 e!4612705)))

(declare-fun b!7789365 () Bool)

(declare-fun tp!2292563 () Bool)

(declare-fun tp!2292564 () Bool)

(assert (=> b!7789365 (= e!4612705 (and tp!2292563 tp!2292564))))

(declare-fun b!7789366 () Bool)

(declare-fun tp!2292562 () Bool)

(assert (=> b!7789366 (= e!4612705 tp!2292562)))

(declare-fun b!7789364 () Bool)

(assert (=> b!7789364 (= e!4612705 tp_is_empty!52057)))

(assert (= (and b!7789016 ((_ is ElementMatch!20851) (reg!21180 (regTwo!42215 r1!6279)))) b!7789364))

(assert (= (and b!7789016 ((_ is Concat!29696) (reg!21180 (regTwo!42215 r1!6279)))) b!7789365))

(assert (= (and b!7789016 ((_ is Star!20851) (reg!21180 (regTwo!42215 r1!6279)))) b!7789366))

(assert (= (and b!7789016 ((_ is Union!20851) (reg!21180 (regTwo!42215 r1!6279)))) b!7789367))

(declare-fun b!7789371 () Bool)

(declare-fun e!4612708 () Bool)

(declare-fun tp!2292565 () Bool)

(declare-fun tp!2292566 () Bool)

(assert (=> b!7789371 (= e!4612708 (and tp!2292565 tp!2292566))))

(assert (=> b!7789007 (= tp!2292458 e!4612708)))

(declare-fun b!7789369 () Bool)

(declare-fun tp!2292568 () Bool)

(declare-fun tp!2292569 () Bool)

(assert (=> b!7789369 (= e!4612708 (and tp!2292568 tp!2292569))))

(declare-fun b!7789370 () Bool)

(declare-fun tp!2292567 () Bool)

(assert (=> b!7789370 (= e!4612708 tp!2292567)))

(declare-fun b!7789368 () Bool)

(assert (=> b!7789368 (= e!4612708 tp_is_empty!52057)))

(assert (= (and b!7789007 ((_ is ElementMatch!20851) (regOne!42214 (regTwo!42215 r2!6217)))) b!7789368))

(assert (= (and b!7789007 ((_ is Concat!29696) (regOne!42214 (regTwo!42215 r2!6217)))) b!7789369))

(assert (= (and b!7789007 ((_ is Star!20851) (regOne!42214 (regTwo!42215 r2!6217)))) b!7789370))

(assert (= (and b!7789007 ((_ is Union!20851) (regOne!42214 (regTwo!42215 r2!6217)))) b!7789371))

(declare-fun b!7789375 () Bool)

(declare-fun e!4612709 () Bool)

(declare-fun tp!2292570 () Bool)

(declare-fun tp!2292571 () Bool)

(assert (=> b!7789375 (= e!4612709 (and tp!2292570 tp!2292571))))

(assert (=> b!7789007 (= tp!2292459 e!4612709)))

(declare-fun b!7789373 () Bool)

(declare-fun tp!2292573 () Bool)

(declare-fun tp!2292574 () Bool)

(assert (=> b!7789373 (= e!4612709 (and tp!2292573 tp!2292574))))

(declare-fun b!7789374 () Bool)

(declare-fun tp!2292572 () Bool)

(assert (=> b!7789374 (= e!4612709 tp!2292572)))

(declare-fun b!7789372 () Bool)

(assert (=> b!7789372 (= e!4612709 tp_is_empty!52057)))

(assert (= (and b!7789007 ((_ is ElementMatch!20851) (regTwo!42214 (regTwo!42215 r2!6217)))) b!7789372))

(assert (= (and b!7789007 ((_ is Concat!29696) (regTwo!42214 (regTwo!42215 r2!6217)))) b!7789373))

(assert (= (and b!7789007 ((_ is Star!20851) (regTwo!42214 (regTwo!42215 r2!6217)))) b!7789374))

(assert (= (and b!7789007 ((_ is Union!20851) (regTwo!42214 (regTwo!42215 r2!6217)))) b!7789375))

(declare-fun b!7789379 () Bool)

(declare-fun e!4612710 () Bool)

(declare-fun tp!2292575 () Bool)

(declare-fun tp!2292576 () Bool)

(assert (=> b!7789379 (= e!4612710 (and tp!2292575 tp!2292576))))

(assert (=> b!7789017 (= tp!2292465 e!4612710)))

(declare-fun b!7789377 () Bool)

(declare-fun tp!2292578 () Bool)

(declare-fun tp!2292579 () Bool)

(assert (=> b!7789377 (= e!4612710 (and tp!2292578 tp!2292579))))

(declare-fun b!7789378 () Bool)

(declare-fun tp!2292577 () Bool)

(assert (=> b!7789378 (= e!4612710 tp!2292577)))

(declare-fun b!7789376 () Bool)

(assert (=> b!7789376 (= e!4612710 tp_is_empty!52057)))

(assert (= (and b!7789017 ((_ is ElementMatch!20851) (regOne!42215 (regTwo!42215 r1!6279)))) b!7789376))

(assert (= (and b!7789017 ((_ is Concat!29696) (regOne!42215 (regTwo!42215 r1!6279)))) b!7789377))

(assert (= (and b!7789017 ((_ is Star!20851) (regOne!42215 (regTwo!42215 r1!6279)))) b!7789378))

(assert (= (and b!7789017 ((_ is Union!20851) (regOne!42215 (regTwo!42215 r1!6279)))) b!7789379))

(declare-fun b!7789383 () Bool)

(declare-fun e!4612711 () Bool)

(declare-fun tp!2292580 () Bool)

(declare-fun tp!2292581 () Bool)

(assert (=> b!7789383 (= e!4612711 (and tp!2292580 tp!2292581))))

(assert (=> b!7789017 (= tp!2292466 e!4612711)))

(declare-fun b!7789381 () Bool)

(declare-fun tp!2292583 () Bool)

(declare-fun tp!2292584 () Bool)

(assert (=> b!7789381 (= e!4612711 (and tp!2292583 tp!2292584))))

(declare-fun b!7789382 () Bool)

(declare-fun tp!2292582 () Bool)

(assert (=> b!7789382 (= e!4612711 tp!2292582)))

(declare-fun b!7789380 () Bool)

(assert (=> b!7789380 (= e!4612711 tp_is_empty!52057)))

(assert (= (and b!7789017 ((_ is ElementMatch!20851) (regTwo!42215 (regTwo!42215 r1!6279)))) b!7789380))

(assert (= (and b!7789017 ((_ is Concat!29696) (regTwo!42215 (regTwo!42215 r1!6279)))) b!7789381))

(assert (= (and b!7789017 ((_ is Star!20851) (regTwo!42215 (regTwo!42215 r1!6279)))) b!7789382))

(assert (= (and b!7789017 ((_ is Union!20851) (regTwo!42215 (regTwo!42215 r1!6279)))) b!7789383))

(declare-fun b!7789387 () Bool)

(declare-fun e!4612712 () Bool)

(declare-fun tp!2292585 () Bool)

(declare-fun tp!2292586 () Bool)

(assert (=> b!7789387 (= e!4612712 (and tp!2292585 tp!2292586))))

(assert (=> b!7789008 (= tp!2292457 e!4612712)))

(declare-fun b!7789385 () Bool)

(declare-fun tp!2292588 () Bool)

(declare-fun tp!2292589 () Bool)

(assert (=> b!7789385 (= e!4612712 (and tp!2292588 tp!2292589))))

(declare-fun b!7789386 () Bool)

(declare-fun tp!2292587 () Bool)

(assert (=> b!7789386 (= e!4612712 tp!2292587)))

(declare-fun b!7789384 () Bool)

(assert (=> b!7789384 (= e!4612712 tp_is_empty!52057)))

(assert (= (and b!7789008 ((_ is ElementMatch!20851) (reg!21180 (regTwo!42215 r2!6217)))) b!7789384))

(assert (= (and b!7789008 ((_ is Concat!29696) (reg!21180 (regTwo!42215 r2!6217)))) b!7789385))

(assert (= (and b!7789008 ((_ is Star!20851) (reg!21180 (regTwo!42215 r2!6217)))) b!7789386))

(assert (= (and b!7789008 ((_ is Union!20851) (reg!21180 (regTwo!42215 r2!6217)))) b!7789387))

(declare-fun b!7789391 () Bool)

(declare-fun e!4612713 () Bool)

(declare-fun tp!2292590 () Bool)

(declare-fun tp!2292591 () Bool)

(assert (=> b!7789391 (= e!4612713 (and tp!2292590 tp!2292591))))

(assert (=> b!7788999 (= tp!2292448 e!4612713)))

(declare-fun b!7789389 () Bool)

(declare-fun tp!2292593 () Bool)

(declare-fun tp!2292594 () Bool)

(assert (=> b!7789389 (= e!4612713 (and tp!2292593 tp!2292594))))

(declare-fun b!7789390 () Bool)

(declare-fun tp!2292592 () Bool)

(assert (=> b!7789390 (= e!4612713 tp!2292592)))

(declare-fun b!7789388 () Bool)

(assert (=> b!7789388 (= e!4612713 tp_is_empty!52057)))

(assert (= (and b!7788999 ((_ is ElementMatch!20851) (regOne!42214 (reg!21180 r1!6279)))) b!7789388))

(assert (= (and b!7788999 ((_ is Concat!29696) (regOne!42214 (reg!21180 r1!6279)))) b!7789389))

(assert (= (and b!7788999 ((_ is Star!20851) (regOne!42214 (reg!21180 r1!6279)))) b!7789390))

(assert (= (and b!7788999 ((_ is Union!20851) (regOne!42214 (reg!21180 r1!6279)))) b!7789391))

(declare-fun b!7789395 () Bool)

(declare-fun e!4612714 () Bool)

(declare-fun tp!2292595 () Bool)

(declare-fun tp!2292596 () Bool)

(assert (=> b!7789395 (= e!4612714 (and tp!2292595 tp!2292596))))

(assert (=> b!7788999 (= tp!2292449 e!4612714)))

(declare-fun b!7789393 () Bool)

(declare-fun tp!2292598 () Bool)

(declare-fun tp!2292599 () Bool)

(assert (=> b!7789393 (= e!4612714 (and tp!2292598 tp!2292599))))

(declare-fun b!7789394 () Bool)

(declare-fun tp!2292597 () Bool)

(assert (=> b!7789394 (= e!4612714 tp!2292597)))

(declare-fun b!7789392 () Bool)

(assert (=> b!7789392 (= e!4612714 tp_is_empty!52057)))

(assert (= (and b!7788999 ((_ is ElementMatch!20851) (regTwo!42214 (reg!21180 r1!6279)))) b!7789392))

(assert (= (and b!7788999 ((_ is Concat!29696) (regTwo!42214 (reg!21180 r1!6279)))) b!7789393))

(assert (= (and b!7788999 ((_ is Star!20851) (regTwo!42214 (reg!21180 r1!6279)))) b!7789394))

(assert (= (and b!7788999 ((_ is Union!20851) (regTwo!42214 (reg!21180 r1!6279)))) b!7789395))

(declare-fun b!7789399 () Bool)

(declare-fun e!4612715 () Bool)

(declare-fun tp!2292600 () Bool)

(declare-fun tp!2292601 () Bool)

(assert (=> b!7789399 (= e!4612715 (and tp!2292600 tp!2292601))))

(assert (=> b!7789015 (= tp!2292468 e!4612715)))

(declare-fun b!7789397 () Bool)

(declare-fun tp!2292603 () Bool)

(declare-fun tp!2292604 () Bool)

(assert (=> b!7789397 (= e!4612715 (and tp!2292603 tp!2292604))))

(declare-fun b!7789398 () Bool)

(declare-fun tp!2292602 () Bool)

(assert (=> b!7789398 (= e!4612715 tp!2292602)))

(declare-fun b!7789396 () Bool)

(assert (=> b!7789396 (= e!4612715 tp_is_empty!52057)))

(assert (= (and b!7789015 ((_ is ElementMatch!20851) (regOne!42214 (regTwo!42215 r1!6279)))) b!7789396))

(assert (= (and b!7789015 ((_ is Concat!29696) (regOne!42214 (regTwo!42215 r1!6279)))) b!7789397))

(assert (= (and b!7789015 ((_ is Star!20851) (regOne!42214 (regTwo!42215 r1!6279)))) b!7789398))

(assert (= (and b!7789015 ((_ is Union!20851) (regOne!42214 (regTwo!42215 r1!6279)))) b!7789399))

(declare-fun b!7789403 () Bool)

(declare-fun e!4612716 () Bool)

(declare-fun tp!2292605 () Bool)

(declare-fun tp!2292606 () Bool)

(assert (=> b!7789403 (= e!4612716 (and tp!2292605 tp!2292606))))

(assert (=> b!7789015 (= tp!2292469 e!4612716)))

(declare-fun b!7789401 () Bool)

(declare-fun tp!2292608 () Bool)

(declare-fun tp!2292609 () Bool)

(assert (=> b!7789401 (= e!4612716 (and tp!2292608 tp!2292609))))

(declare-fun b!7789402 () Bool)

(declare-fun tp!2292607 () Bool)

(assert (=> b!7789402 (= e!4612716 tp!2292607)))

(declare-fun b!7789400 () Bool)

(assert (=> b!7789400 (= e!4612716 tp_is_empty!52057)))

(assert (= (and b!7789015 ((_ is ElementMatch!20851) (regTwo!42214 (regTwo!42215 r1!6279)))) b!7789400))

(assert (= (and b!7789015 ((_ is Concat!29696) (regTwo!42214 (regTwo!42215 r1!6279)))) b!7789401))

(assert (= (and b!7789015 ((_ is Star!20851) (regTwo!42214 (regTwo!42215 r1!6279)))) b!7789402))

(assert (= (and b!7789015 ((_ is Union!20851) (regTwo!42214 (regTwo!42215 r1!6279)))) b!7789403))

(declare-fun b!7789404 () Bool)

(declare-fun e!4612717 () Bool)

(declare-fun tp!2292610 () Bool)

(assert (=> b!7789404 (= e!4612717 (and tp_is_empty!52057 tp!2292610))))

(assert (=> b!7788939 (= tp!2292374 e!4612717)))

(assert (= (and b!7788939 ((_ is Cons!73566) (t!388425 (t!388425 s!14292)))) b!7789404))

(declare-fun b!7789408 () Bool)

(declare-fun e!4612718 () Bool)

(declare-fun tp!2292611 () Bool)

(declare-fun tp!2292612 () Bool)

(assert (=> b!7789408 (= e!4612718 (and tp!2292611 tp!2292612))))

(assert (=> b!7788995 (= tp!2292443 e!4612718)))

(declare-fun b!7789406 () Bool)

(declare-fun tp!2292614 () Bool)

(declare-fun tp!2292615 () Bool)

(assert (=> b!7789406 (= e!4612718 (and tp!2292614 tp!2292615))))

(declare-fun b!7789407 () Bool)

(declare-fun tp!2292613 () Bool)

(assert (=> b!7789407 (= e!4612718 tp!2292613)))

(declare-fun b!7789405 () Bool)

(assert (=> b!7789405 (= e!4612718 tp_is_empty!52057)))

(assert (= (and b!7788995 ((_ is ElementMatch!20851) (regOne!42214 (reg!21180 r2!6217)))) b!7789405))

(assert (= (and b!7788995 ((_ is Concat!29696) (regOne!42214 (reg!21180 r2!6217)))) b!7789406))

(assert (= (and b!7788995 ((_ is Star!20851) (regOne!42214 (reg!21180 r2!6217)))) b!7789407))

(assert (= (and b!7788995 ((_ is Union!20851) (regOne!42214 (reg!21180 r2!6217)))) b!7789408))

(declare-fun b!7789412 () Bool)

(declare-fun e!4612719 () Bool)

(declare-fun tp!2292616 () Bool)

(declare-fun tp!2292617 () Bool)

(assert (=> b!7789412 (= e!4612719 (and tp!2292616 tp!2292617))))

(assert (=> b!7788995 (= tp!2292444 e!4612719)))

(declare-fun b!7789410 () Bool)

(declare-fun tp!2292619 () Bool)

(declare-fun tp!2292620 () Bool)

(assert (=> b!7789410 (= e!4612719 (and tp!2292619 tp!2292620))))

(declare-fun b!7789411 () Bool)

(declare-fun tp!2292618 () Bool)

(assert (=> b!7789411 (= e!4612719 tp!2292618)))

(declare-fun b!7789409 () Bool)

(assert (=> b!7789409 (= e!4612719 tp_is_empty!52057)))

(assert (= (and b!7788995 ((_ is ElementMatch!20851) (regTwo!42214 (reg!21180 r2!6217)))) b!7789409))

(assert (= (and b!7788995 ((_ is Concat!29696) (regTwo!42214 (reg!21180 r2!6217)))) b!7789410))

(assert (= (and b!7788995 ((_ is Star!20851) (regTwo!42214 (reg!21180 r2!6217)))) b!7789411))

(assert (= (and b!7788995 ((_ is Union!20851) (regTwo!42214 (reg!21180 r2!6217)))) b!7789412))

(declare-fun b!7789416 () Bool)

(declare-fun e!4612720 () Bool)

(declare-fun tp!2292621 () Bool)

(declare-fun tp!2292622 () Bool)

(assert (=> b!7789416 (= e!4612720 (and tp!2292621 tp!2292622))))

(assert (=> b!7788987 (= tp!2292433 e!4612720)))

(declare-fun b!7789414 () Bool)

(declare-fun tp!2292624 () Bool)

(declare-fun tp!2292625 () Bool)

(assert (=> b!7789414 (= e!4612720 (and tp!2292624 tp!2292625))))

(declare-fun b!7789415 () Bool)

(declare-fun tp!2292623 () Bool)

(assert (=> b!7789415 (= e!4612720 tp!2292623)))

(declare-fun b!7789413 () Bool)

(assert (=> b!7789413 (= e!4612720 tp_is_empty!52057)))

(assert (= (and b!7788987 ((_ is ElementMatch!20851) (regOne!42214 (regOne!42214 r2!6217)))) b!7789413))

(assert (= (and b!7788987 ((_ is Concat!29696) (regOne!42214 (regOne!42214 r2!6217)))) b!7789414))

(assert (= (and b!7788987 ((_ is Star!20851) (regOne!42214 (regOne!42214 r2!6217)))) b!7789415))

(assert (= (and b!7788987 ((_ is Union!20851) (regOne!42214 (regOne!42214 r2!6217)))) b!7789416))

(declare-fun b!7789420 () Bool)

(declare-fun e!4612721 () Bool)

(declare-fun tp!2292626 () Bool)

(declare-fun tp!2292627 () Bool)

(assert (=> b!7789420 (= e!4612721 (and tp!2292626 tp!2292627))))

(assert (=> b!7788987 (= tp!2292434 e!4612721)))

(declare-fun b!7789418 () Bool)

(declare-fun tp!2292629 () Bool)

(declare-fun tp!2292630 () Bool)

(assert (=> b!7789418 (= e!4612721 (and tp!2292629 tp!2292630))))

(declare-fun b!7789419 () Bool)

(declare-fun tp!2292628 () Bool)

(assert (=> b!7789419 (= e!4612721 tp!2292628)))

(declare-fun b!7789417 () Bool)

(assert (=> b!7789417 (= e!4612721 tp_is_empty!52057)))

(assert (= (and b!7788987 ((_ is ElementMatch!20851) (regTwo!42214 (regOne!42214 r2!6217)))) b!7789417))

(assert (= (and b!7788987 ((_ is Concat!29696) (regTwo!42214 (regOne!42214 r2!6217)))) b!7789418))

(assert (= (and b!7788987 ((_ is Star!20851) (regTwo!42214 (regOne!42214 r2!6217)))) b!7789419))

(assert (= (and b!7788987 ((_ is Union!20851) (regTwo!42214 (regOne!42214 r2!6217)))) b!7789420))

(declare-fun b!7789424 () Bool)

(declare-fun e!4612722 () Bool)

(declare-fun tp!2292631 () Bool)

(declare-fun tp!2292632 () Bool)

(assert (=> b!7789424 (= e!4612722 (and tp!2292631 tp!2292632))))

(assert (=> b!7789005 (= tp!2292450 e!4612722)))

(declare-fun b!7789422 () Bool)

(declare-fun tp!2292634 () Bool)

(declare-fun tp!2292635 () Bool)

(assert (=> b!7789422 (= e!4612722 (and tp!2292634 tp!2292635))))

(declare-fun b!7789423 () Bool)

(declare-fun tp!2292633 () Bool)

(assert (=> b!7789423 (= e!4612722 tp!2292633)))

(declare-fun b!7789421 () Bool)

(assert (=> b!7789421 (= e!4612722 tp_is_empty!52057)))

(assert (= (and b!7789005 ((_ is ElementMatch!20851) (regOne!42215 (regOne!42215 r2!6217)))) b!7789421))

(assert (= (and b!7789005 ((_ is Concat!29696) (regOne!42215 (regOne!42215 r2!6217)))) b!7789422))

(assert (= (and b!7789005 ((_ is Star!20851) (regOne!42215 (regOne!42215 r2!6217)))) b!7789423))

(assert (= (and b!7789005 ((_ is Union!20851) (regOne!42215 (regOne!42215 r2!6217)))) b!7789424))

(declare-fun b!7789428 () Bool)

(declare-fun e!4612723 () Bool)

(declare-fun tp!2292636 () Bool)

(declare-fun tp!2292637 () Bool)

(assert (=> b!7789428 (= e!4612723 (and tp!2292636 tp!2292637))))

(assert (=> b!7789005 (= tp!2292451 e!4612723)))

(declare-fun b!7789426 () Bool)

(declare-fun tp!2292639 () Bool)

(declare-fun tp!2292640 () Bool)

(assert (=> b!7789426 (= e!4612723 (and tp!2292639 tp!2292640))))

(declare-fun b!7789427 () Bool)

(declare-fun tp!2292638 () Bool)

(assert (=> b!7789427 (= e!4612723 tp!2292638)))

(declare-fun b!7789425 () Bool)

(assert (=> b!7789425 (= e!4612723 tp_is_empty!52057)))

(assert (= (and b!7789005 ((_ is ElementMatch!20851) (regTwo!42215 (regOne!42215 r2!6217)))) b!7789425))

(assert (= (and b!7789005 ((_ is Concat!29696) (regTwo!42215 (regOne!42215 r2!6217)))) b!7789426))

(assert (= (and b!7789005 ((_ is Star!20851) (regTwo!42215 (regOne!42215 r2!6217)))) b!7789427))

(assert (= (and b!7789005 ((_ is Union!20851) (regTwo!42215 (regOne!42215 r2!6217)))) b!7789428))

(declare-fun b!7789432 () Bool)

(declare-fun e!4612724 () Bool)

(declare-fun tp!2292641 () Bool)

(declare-fun tp!2292642 () Bool)

(assert (=> b!7789432 (= e!4612724 (and tp!2292641 tp!2292642))))

(assert (=> b!7788996 (= tp!2292442 e!4612724)))

(declare-fun b!7789430 () Bool)

(declare-fun tp!2292644 () Bool)

(declare-fun tp!2292645 () Bool)

(assert (=> b!7789430 (= e!4612724 (and tp!2292644 tp!2292645))))

(declare-fun b!7789431 () Bool)

(declare-fun tp!2292643 () Bool)

(assert (=> b!7789431 (= e!4612724 tp!2292643)))

(declare-fun b!7789429 () Bool)

(assert (=> b!7789429 (= e!4612724 tp_is_empty!52057)))

(assert (= (and b!7788996 ((_ is ElementMatch!20851) (reg!21180 (reg!21180 r2!6217)))) b!7789429))

(assert (= (and b!7788996 ((_ is Concat!29696) (reg!21180 (reg!21180 r2!6217)))) b!7789430))

(assert (= (and b!7788996 ((_ is Star!20851) (reg!21180 (reg!21180 r2!6217)))) b!7789431))

(assert (= (and b!7788996 ((_ is Union!20851) (reg!21180 (reg!21180 r2!6217)))) b!7789432))

(declare-fun b!7789436 () Bool)

(declare-fun e!4612725 () Bool)

(declare-fun tp!2292646 () Bool)

(declare-fun tp!2292647 () Bool)

(assert (=> b!7789436 (= e!4612725 (and tp!2292646 tp!2292647))))

(assert (=> b!7788988 (= tp!2292432 e!4612725)))

(declare-fun b!7789434 () Bool)

(declare-fun tp!2292649 () Bool)

(declare-fun tp!2292650 () Bool)

(assert (=> b!7789434 (= e!4612725 (and tp!2292649 tp!2292650))))

(declare-fun b!7789435 () Bool)

(declare-fun tp!2292648 () Bool)

(assert (=> b!7789435 (= e!4612725 tp!2292648)))

(declare-fun b!7789433 () Bool)

(assert (=> b!7789433 (= e!4612725 tp_is_empty!52057)))

(assert (= (and b!7788988 ((_ is ElementMatch!20851) (reg!21180 (regOne!42214 r2!6217)))) b!7789433))

(assert (= (and b!7788988 ((_ is Concat!29696) (reg!21180 (regOne!42214 r2!6217)))) b!7789434))

(assert (= (and b!7788988 ((_ is Star!20851) (reg!21180 (regOne!42214 r2!6217)))) b!7789435))

(assert (= (and b!7788988 ((_ is Union!20851) (reg!21180 (regOne!42214 r2!6217)))) b!7789436))

(declare-fun b!7789440 () Bool)

(declare-fun e!4612726 () Bool)

(declare-fun tp!2292651 () Bool)

(declare-fun tp!2292652 () Bool)

(assert (=> b!7789440 (= e!4612726 (and tp!2292651 tp!2292652))))

(assert (=> b!7788997 (= tp!2292440 e!4612726)))

(declare-fun b!7789438 () Bool)

(declare-fun tp!2292654 () Bool)

(declare-fun tp!2292655 () Bool)

(assert (=> b!7789438 (= e!4612726 (and tp!2292654 tp!2292655))))

(declare-fun b!7789439 () Bool)

(declare-fun tp!2292653 () Bool)

(assert (=> b!7789439 (= e!4612726 tp!2292653)))

(declare-fun b!7789437 () Bool)

(assert (=> b!7789437 (= e!4612726 tp_is_empty!52057)))

(assert (= (and b!7788997 ((_ is ElementMatch!20851) (regOne!42215 (reg!21180 r2!6217)))) b!7789437))

(assert (= (and b!7788997 ((_ is Concat!29696) (regOne!42215 (reg!21180 r2!6217)))) b!7789438))

(assert (= (and b!7788997 ((_ is Star!20851) (regOne!42215 (reg!21180 r2!6217)))) b!7789439))

(assert (= (and b!7788997 ((_ is Union!20851) (regOne!42215 (reg!21180 r2!6217)))) b!7789440))

(declare-fun b!7789444 () Bool)

(declare-fun e!4612727 () Bool)

(declare-fun tp!2292656 () Bool)

(declare-fun tp!2292657 () Bool)

(assert (=> b!7789444 (= e!4612727 (and tp!2292656 tp!2292657))))

(assert (=> b!7788997 (= tp!2292441 e!4612727)))

(declare-fun b!7789442 () Bool)

(declare-fun tp!2292659 () Bool)

(declare-fun tp!2292660 () Bool)

(assert (=> b!7789442 (= e!4612727 (and tp!2292659 tp!2292660))))

(declare-fun b!7789443 () Bool)

(declare-fun tp!2292658 () Bool)

(assert (=> b!7789443 (= e!4612727 tp!2292658)))

(declare-fun b!7789441 () Bool)

(assert (=> b!7789441 (= e!4612727 tp_is_empty!52057)))

(assert (= (and b!7788997 ((_ is ElementMatch!20851) (regTwo!42215 (reg!21180 r2!6217)))) b!7789441))

(assert (= (and b!7788997 ((_ is Concat!29696) (regTwo!42215 (reg!21180 r2!6217)))) b!7789442))

(assert (= (and b!7788997 ((_ is Star!20851) (regTwo!42215 (reg!21180 r2!6217)))) b!7789443))

(assert (= (and b!7788997 ((_ is Union!20851) (regTwo!42215 (reg!21180 r2!6217)))) b!7789444))

(declare-fun b!7789448 () Bool)

(declare-fun e!4612728 () Bool)

(declare-fun tp!2292661 () Bool)

(declare-fun tp!2292662 () Bool)

(assert (=> b!7789448 (= e!4612728 (and tp!2292661 tp!2292662))))

(assert (=> b!7788989 (= tp!2292430 e!4612728)))

(declare-fun b!7789446 () Bool)

(declare-fun tp!2292664 () Bool)

(declare-fun tp!2292665 () Bool)

(assert (=> b!7789446 (= e!4612728 (and tp!2292664 tp!2292665))))

(declare-fun b!7789447 () Bool)

(declare-fun tp!2292663 () Bool)

(assert (=> b!7789447 (= e!4612728 tp!2292663)))

(declare-fun b!7789445 () Bool)

(assert (=> b!7789445 (= e!4612728 tp_is_empty!52057)))

(assert (= (and b!7788989 ((_ is ElementMatch!20851) (regOne!42215 (regOne!42214 r2!6217)))) b!7789445))

(assert (= (and b!7788989 ((_ is Concat!29696) (regOne!42215 (regOne!42214 r2!6217)))) b!7789446))

(assert (= (and b!7788989 ((_ is Star!20851) (regOne!42215 (regOne!42214 r2!6217)))) b!7789447))

(assert (= (and b!7788989 ((_ is Union!20851) (regOne!42215 (regOne!42214 r2!6217)))) b!7789448))

(declare-fun b!7789452 () Bool)

(declare-fun e!4612729 () Bool)

(declare-fun tp!2292666 () Bool)

(declare-fun tp!2292667 () Bool)

(assert (=> b!7789452 (= e!4612729 (and tp!2292666 tp!2292667))))

(assert (=> b!7788989 (= tp!2292431 e!4612729)))

(declare-fun b!7789450 () Bool)

(declare-fun tp!2292669 () Bool)

(declare-fun tp!2292670 () Bool)

(assert (=> b!7789450 (= e!4612729 (and tp!2292669 tp!2292670))))

(declare-fun b!7789451 () Bool)

(declare-fun tp!2292668 () Bool)

(assert (=> b!7789451 (= e!4612729 tp!2292668)))

(declare-fun b!7789449 () Bool)

(assert (=> b!7789449 (= e!4612729 tp_is_empty!52057)))

(assert (= (and b!7788989 ((_ is ElementMatch!20851) (regTwo!42215 (regOne!42214 r2!6217)))) b!7789449))

(assert (= (and b!7788989 ((_ is Concat!29696) (regTwo!42215 (regOne!42214 r2!6217)))) b!7789450))

(assert (= (and b!7788989 ((_ is Star!20851) (regTwo!42215 (regOne!42214 r2!6217)))) b!7789451))

(assert (= (and b!7788989 ((_ is Union!20851) (regTwo!42215 (regOne!42214 r2!6217)))) b!7789452))

(declare-fun b!7789456 () Bool)

(declare-fun e!4612730 () Bool)

(declare-fun tp!2292671 () Bool)

(declare-fun tp!2292672 () Bool)

(assert (=> b!7789456 (= e!4612730 (and tp!2292671 tp!2292672))))

(assert (=> b!7789011 (= tp!2292463 e!4612730)))

(declare-fun b!7789454 () Bool)

(declare-fun tp!2292674 () Bool)

(declare-fun tp!2292675 () Bool)

(assert (=> b!7789454 (= e!4612730 (and tp!2292674 tp!2292675))))

(declare-fun b!7789455 () Bool)

(declare-fun tp!2292673 () Bool)

(assert (=> b!7789455 (= e!4612730 tp!2292673)))

(declare-fun b!7789453 () Bool)

(assert (=> b!7789453 (= e!4612730 tp_is_empty!52057)))

(assert (= (and b!7789011 ((_ is ElementMatch!20851) (regOne!42214 (regOne!42215 r1!6279)))) b!7789453))

(assert (= (and b!7789011 ((_ is Concat!29696) (regOne!42214 (regOne!42215 r1!6279)))) b!7789454))

(assert (= (and b!7789011 ((_ is Star!20851) (regOne!42214 (regOne!42215 r1!6279)))) b!7789455))

(assert (= (and b!7789011 ((_ is Union!20851) (regOne!42214 (regOne!42215 r1!6279)))) b!7789456))

(declare-fun b!7789460 () Bool)

(declare-fun e!4612731 () Bool)

(declare-fun tp!2292676 () Bool)

(declare-fun tp!2292677 () Bool)

(assert (=> b!7789460 (= e!4612731 (and tp!2292676 tp!2292677))))

(assert (=> b!7789011 (= tp!2292464 e!4612731)))

(declare-fun b!7789458 () Bool)

(declare-fun tp!2292679 () Bool)

(declare-fun tp!2292680 () Bool)

(assert (=> b!7789458 (= e!4612731 (and tp!2292679 tp!2292680))))

(declare-fun b!7789459 () Bool)

(declare-fun tp!2292678 () Bool)

(assert (=> b!7789459 (= e!4612731 tp!2292678)))

(declare-fun b!7789457 () Bool)

(assert (=> b!7789457 (= e!4612731 tp_is_empty!52057)))

(assert (= (and b!7789011 ((_ is ElementMatch!20851) (regTwo!42214 (regOne!42215 r1!6279)))) b!7789457))

(assert (= (and b!7789011 ((_ is Concat!29696) (regTwo!42214 (regOne!42215 r1!6279)))) b!7789458))

(assert (= (and b!7789011 ((_ is Star!20851) (regTwo!42214 (regOne!42215 r1!6279)))) b!7789459))

(assert (= (and b!7789011 ((_ is Union!20851) (regTwo!42214 (regOne!42215 r1!6279)))) b!7789460))

(declare-fun b!7789464 () Bool)

(declare-fun e!4612732 () Bool)

(declare-fun tp!2292681 () Bool)

(declare-fun tp!2292682 () Bool)

(assert (=> b!7789464 (= e!4612732 (and tp!2292681 tp!2292682))))

(assert (=> b!7789012 (= tp!2292462 e!4612732)))

(declare-fun b!7789462 () Bool)

(declare-fun tp!2292684 () Bool)

(declare-fun tp!2292685 () Bool)

(assert (=> b!7789462 (= e!4612732 (and tp!2292684 tp!2292685))))

(declare-fun b!7789463 () Bool)

(declare-fun tp!2292683 () Bool)

(assert (=> b!7789463 (= e!4612732 tp!2292683)))

(declare-fun b!7789461 () Bool)

(assert (=> b!7789461 (= e!4612732 tp_is_empty!52057)))

(assert (= (and b!7789012 ((_ is ElementMatch!20851) (reg!21180 (regOne!42215 r1!6279)))) b!7789461))

(assert (= (and b!7789012 ((_ is Concat!29696) (reg!21180 (regOne!42215 r1!6279)))) b!7789462))

(assert (= (and b!7789012 ((_ is Star!20851) (reg!21180 (regOne!42215 r1!6279)))) b!7789463))

(assert (= (and b!7789012 ((_ is Union!20851) (reg!21180 (regOne!42215 r1!6279)))) b!7789464))

(declare-fun b!7789468 () Bool)

(declare-fun e!4612733 () Bool)

(declare-fun tp!2292686 () Bool)

(declare-fun tp!2292687 () Bool)

(assert (=> b!7789468 (= e!4612733 (and tp!2292686 tp!2292687))))

(assert (=> b!7789003 (= tp!2292453 e!4612733)))

(declare-fun b!7789466 () Bool)

(declare-fun tp!2292689 () Bool)

(declare-fun tp!2292690 () Bool)

(assert (=> b!7789466 (= e!4612733 (and tp!2292689 tp!2292690))))

(declare-fun b!7789467 () Bool)

(declare-fun tp!2292688 () Bool)

(assert (=> b!7789467 (= e!4612733 tp!2292688)))

(declare-fun b!7789465 () Bool)

(assert (=> b!7789465 (= e!4612733 tp_is_empty!52057)))

(assert (= (and b!7789003 ((_ is ElementMatch!20851) (regOne!42214 (regOne!42215 r2!6217)))) b!7789465))

(assert (= (and b!7789003 ((_ is Concat!29696) (regOne!42214 (regOne!42215 r2!6217)))) b!7789466))

(assert (= (and b!7789003 ((_ is Star!20851) (regOne!42214 (regOne!42215 r2!6217)))) b!7789467))

(assert (= (and b!7789003 ((_ is Union!20851) (regOne!42214 (regOne!42215 r2!6217)))) b!7789468))

(declare-fun b!7789472 () Bool)

(declare-fun e!4612734 () Bool)

(declare-fun tp!2292691 () Bool)

(declare-fun tp!2292692 () Bool)

(assert (=> b!7789472 (= e!4612734 (and tp!2292691 tp!2292692))))

(assert (=> b!7789003 (= tp!2292454 e!4612734)))

(declare-fun b!7789470 () Bool)

(declare-fun tp!2292694 () Bool)

(declare-fun tp!2292695 () Bool)

(assert (=> b!7789470 (= e!4612734 (and tp!2292694 tp!2292695))))

(declare-fun b!7789471 () Bool)

(declare-fun tp!2292693 () Bool)

(assert (=> b!7789471 (= e!4612734 tp!2292693)))

(declare-fun b!7789469 () Bool)

(assert (=> b!7789469 (= e!4612734 tp_is_empty!52057)))

(assert (= (and b!7789003 ((_ is ElementMatch!20851) (regTwo!42214 (regOne!42215 r2!6217)))) b!7789469))

(assert (= (and b!7789003 ((_ is Concat!29696) (regTwo!42214 (regOne!42215 r2!6217)))) b!7789470))

(assert (= (and b!7789003 ((_ is Star!20851) (regTwo!42214 (regOne!42215 r2!6217)))) b!7789471))

(assert (= (and b!7789003 ((_ is Union!20851) (regTwo!42214 (regOne!42215 r2!6217)))) b!7789472))

(declare-fun b!7789476 () Bool)

(declare-fun e!4612735 () Bool)

(declare-fun tp!2292696 () Bool)

(declare-fun tp!2292697 () Bool)

(assert (=> b!7789476 (= e!4612735 (and tp!2292696 tp!2292697))))

(assert (=> b!7788977 (= tp!2292415 e!4612735)))

(declare-fun b!7789474 () Bool)

(declare-fun tp!2292699 () Bool)

(declare-fun tp!2292700 () Bool)

(assert (=> b!7789474 (= e!4612735 (and tp!2292699 tp!2292700))))

(declare-fun b!7789475 () Bool)

(declare-fun tp!2292698 () Bool)

(assert (=> b!7789475 (= e!4612735 tp!2292698)))

(declare-fun b!7789473 () Bool)

(assert (=> b!7789473 (= e!4612735 tp_is_empty!52057)))

(assert (= (and b!7788977 ((_ is ElementMatch!20851) (regOne!42215 (regOne!42214 r1!6279)))) b!7789473))

(assert (= (and b!7788977 ((_ is Concat!29696) (regOne!42215 (regOne!42214 r1!6279)))) b!7789474))

(assert (= (and b!7788977 ((_ is Star!20851) (regOne!42215 (regOne!42214 r1!6279)))) b!7789475))

(assert (= (and b!7788977 ((_ is Union!20851) (regOne!42215 (regOne!42214 r1!6279)))) b!7789476))

(declare-fun b!7789480 () Bool)

(declare-fun e!4612736 () Bool)

(declare-fun tp!2292701 () Bool)

(declare-fun tp!2292702 () Bool)

(assert (=> b!7789480 (= e!4612736 (and tp!2292701 tp!2292702))))

(assert (=> b!7788977 (= tp!2292416 e!4612736)))

(declare-fun b!7789478 () Bool)

(declare-fun tp!2292704 () Bool)

(declare-fun tp!2292705 () Bool)

(assert (=> b!7789478 (= e!4612736 (and tp!2292704 tp!2292705))))

(declare-fun b!7789479 () Bool)

(declare-fun tp!2292703 () Bool)

(assert (=> b!7789479 (= e!4612736 tp!2292703)))

(declare-fun b!7789477 () Bool)

(assert (=> b!7789477 (= e!4612736 tp_is_empty!52057)))

(assert (= (and b!7788977 ((_ is ElementMatch!20851) (regTwo!42215 (regOne!42214 r1!6279)))) b!7789477))

(assert (= (and b!7788977 ((_ is Concat!29696) (regTwo!42215 (regOne!42214 r1!6279)))) b!7789478))

(assert (= (and b!7788977 ((_ is Star!20851) (regTwo!42215 (regOne!42214 r1!6279)))) b!7789479))

(assert (= (and b!7788977 ((_ is Union!20851) (regTwo!42215 (regOne!42214 r1!6279)))) b!7789480))

(declare-fun b!7789484 () Bool)

(declare-fun e!4612737 () Bool)

(declare-fun tp!2292706 () Bool)

(declare-fun tp!2292707 () Bool)

(assert (=> b!7789484 (= e!4612737 (and tp!2292706 tp!2292707))))

(assert (=> b!7789013 (= tp!2292460 e!4612737)))

(declare-fun b!7789482 () Bool)

(declare-fun tp!2292709 () Bool)

(declare-fun tp!2292710 () Bool)

(assert (=> b!7789482 (= e!4612737 (and tp!2292709 tp!2292710))))

(declare-fun b!7789483 () Bool)

(declare-fun tp!2292708 () Bool)

(assert (=> b!7789483 (= e!4612737 tp!2292708)))

(declare-fun b!7789481 () Bool)

(assert (=> b!7789481 (= e!4612737 tp_is_empty!52057)))

(assert (= (and b!7789013 ((_ is ElementMatch!20851) (regOne!42215 (regOne!42215 r1!6279)))) b!7789481))

(assert (= (and b!7789013 ((_ is Concat!29696) (regOne!42215 (regOne!42215 r1!6279)))) b!7789482))

(assert (= (and b!7789013 ((_ is Star!20851) (regOne!42215 (regOne!42215 r1!6279)))) b!7789483))

(assert (= (and b!7789013 ((_ is Union!20851) (regOne!42215 (regOne!42215 r1!6279)))) b!7789484))

(declare-fun b!7789488 () Bool)

(declare-fun e!4612739 () Bool)

(declare-fun tp!2292711 () Bool)

(declare-fun tp!2292712 () Bool)

(assert (=> b!7789488 (= e!4612739 (and tp!2292711 tp!2292712))))

(assert (=> b!7789013 (= tp!2292461 e!4612739)))

(declare-fun b!7789486 () Bool)

(declare-fun tp!2292714 () Bool)

(declare-fun tp!2292715 () Bool)

(assert (=> b!7789486 (= e!4612739 (and tp!2292714 tp!2292715))))

(declare-fun b!7789487 () Bool)

(declare-fun tp!2292713 () Bool)

(assert (=> b!7789487 (= e!4612739 tp!2292713)))

(declare-fun b!7789485 () Bool)

(assert (=> b!7789485 (= e!4612739 tp_is_empty!52057)))

(assert (= (and b!7789013 ((_ is ElementMatch!20851) (regTwo!42215 (regOne!42215 r1!6279)))) b!7789485))

(assert (= (and b!7789013 ((_ is Concat!29696) (regTwo!42215 (regOne!42215 r1!6279)))) b!7789486))

(assert (= (and b!7789013 ((_ is Star!20851) (regTwo!42215 (regOne!42215 r1!6279)))) b!7789487))

(assert (= (and b!7789013 ((_ is Union!20851) (regTwo!42215 (regOne!42215 r1!6279)))) b!7789488))

(declare-fun b!7789502 () Bool)

(declare-fun e!4612744 () Bool)

(declare-fun tp!2292716 () Bool)

(declare-fun tp!2292717 () Bool)

(assert (=> b!7789502 (= e!4612744 (and tp!2292716 tp!2292717))))

(assert (=> b!7789004 (= tp!2292452 e!4612744)))

(declare-fun b!7789500 () Bool)

(declare-fun tp!2292719 () Bool)

(declare-fun tp!2292720 () Bool)

(assert (=> b!7789500 (= e!4612744 (and tp!2292719 tp!2292720))))

(declare-fun b!7789501 () Bool)

(declare-fun tp!2292718 () Bool)

(assert (=> b!7789501 (= e!4612744 tp!2292718)))

(declare-fun b!7789499 () Bool)

(assert (=> b!7789499 (= e!4612744 tp_is_empty!52057)))

(assert (= (and b!7789004 ((_ is ElementMatch!20851) (reg!21180 (regOne!42215 r2!6217)))) b!7789499))

(assert (= (and b!7789004 ((_ is Concat!29696) (reg!21180 (regOne!42215 r2!6217)))) b!7789500))

(assert (= (and b!7789004 ((_ is Star!20851) (reg!21180 (regOne!42215 r2!6217)))) b!7789501))

(assert (= (and b!7789004 ((_ is Union!20851) (reg!21180 (regOne!42215 r2!6217)))) b!7789502))

(check-sat (not b!7789427) (not bm!721922) (not b!7789391) (not b!7789480) (not b!7789471) (not b!7789299) (not b!7789064) (not b!7789386) (not b!7789297) (not b!7789451) (not b!7789321) (not d!2345763) (not bm!721928) (not b!7789366) (not b!7789474) (not b!7789202) (not b!7789309) (not b!7789463) (not b!7789077) (not d!2345769) (not b!7789311) (not b!7789462) (not b!7789407) (not bm!721919) (not b!7789287) (not b!7789403) (not b!7789371) (not b!7789389) (not b!7789381) (not bm!721943) (not b!7789383) (not b!7789221) (not b!7789379) (not b!7789430) (not b!7789319) (not b!7789073) (not b!7789327) (not b!7789340) (not b!7789424) (not bm!721905) (not b!7789027) (not b!7789286) (not b!7789369) (not b!7789476) (not b!7789484) (not b!7789404) (not b!7789295) (not b!7789448) (not b!7789091) (not d!2345827) tp_is_empty!52057 (not b!7789470) (not b!7789486) (not b!7789323) (not b!7789382) (not b!7789146) (not b!7789459) (not b!7789418) (not b!7789301) (not b!7789081) (not b!7789406) (not b!7789298) (not b!7789416) (not b!7789458) (not b!7789151) (not b!7789374) (not b!7789487) (not b!7789273) (not bm!721930) (not b!7789472) (not b!7789478) (not b!7789314) (not b!7789402) (not bm!721921) (not b!7789452) (not b!7789278) (not b!7789464) (not d!2345753) (not b!7789423) (not b!7789277) (not b!7789024) (not b!7789436) (not b!7789500) (not b!7789443) (not b!7789290) (not b!7789455) (not b!7789153) (not b!7789412) (not b!7789428) (not b!7789310) (not b!7789274) (not b!7789435) (not b!7789331) (not b!7789479) (not b!7789074) (not b!7789326) (not b!7789199) (not b!7789205) (not b!7789265) (not b!7789420) (not b!7789422) (not b!7789456) (not b!7789411) (not b!7789079) (not bm!721945) (not b!7789426) (not b!7789450) (not b!7789281) (not b!7789349) (not bm!721894) (not b!7789431) (not b!7789460) (not b!7789307) (not b!7789419) (not b!7789439) (not b!7789283) (not b!7789440) (not d!2345807) (not b!7789333) (not b!7789375) (not b!7789206) (not b!7789502) (not b!7789401) (not b!7789414) (not b!7789438) (not b!7789087) (not b!7789432) (not bm!721926) (not b!7789444) (not b!7789021) (not b!7789204) (not b!7789275) (not b!7789303) (not b!7789467) (not b!7789415) (not bm!721916) (not b!7789410) (not b!7789026) (not bm!721936) (not b!7789261) (not b!7789020) (not b!7789395) (not b!7789291) (not bm!721903) (not b!7789468) (not b!7789446) (not d!2345771) (not b!7789313) (not d!2345795) (not b!7789080) (not b!7789367) (not bm!721911) (not b!7789385) (not b!7789390) (not b!7789393) (not b!7789334) (not bm!721929) (not b!7789341) (not b!7789093) (not d!2345755) (not b!7789370) (not b!7789488) (not b!7789377) (not d!2345775) (not b!7789442) (not b!7789282) (not b!7789322) (not b!7789315) (not b!7789475) (not b!7789335) (not b!7789149) (not b!7789387) (not b!7789294) (not b!7789351) (not b!7789466) (not b!7789325) (not b!7789482) (not b!7789434) (not b!7789365) (not bm!721917) (not b!7789168) (not b!7789318) (not b!7789305) (not b!7789329) (not b!7789394) (not bm!721932) (not b!7789454) (not b!7789373) (not b!7789330) (not b!7789279) (not b!7789293) (not bm!721909) (not b!7789347) (not b!7789028) (not b!7789398) (not b!7789378) (not b!7789198) (not b!7789285) (not b!7789302) (not b!7789094) (not b!7789306) (not b!7789408) (not b!7789501) (not b!7789136) (not d!2345765) (not b!7789317) (not bm!721938) (not b!7789145) (not b!7789483) (not d!2345817) (not b!7789057) (not b!7789088) (not b!7789260) (not bm!721910) (not b!7789447) (not b!7789397) (not b!7789339) (not b!7789095) (not b!7789399) (not b!7789289) (not b!7789152) (not bm!721907))
(check-sat)
