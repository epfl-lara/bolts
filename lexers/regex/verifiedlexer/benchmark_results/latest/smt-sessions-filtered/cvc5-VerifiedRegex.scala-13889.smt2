; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738066 () Bool)

(assert start!738066)

(declare-fun b!7732732 () Bool)

(assert (=> b!7732732 true))

(assert (=> b!7732732 true))

(declare-fun b!7732724 () Bool)

(declare-fun e!4585612 () Bool)

(declare-fun tp!2269046 () Bool)

(declare-fun tp!2269047 () Bool)

(assert (=> b!7732724 (= e!4585612 (and tp!2269046 tp!2269047))))

(declare-fun b!7732725 () Bool)

(declare-fun res!3084331 () Bool)

(declare-fun e!4585611 () Bool)

(assert (=> b!7732725 (=> res!3084331 e!4585611)))

(declare-fun lt!2667334 () Bool)

(assert (=> b!7732725 (= res!3084331 (not lt!2667334))))

(declare-fun b!7732726 () Bool)

(assert (=> b!7732726 (= e!4585611 false)))

(declare-datatypes ((C!41470 0))(
  ( (C!41471 (val!31175 Int)) )
))
(declare-datatypes ((Regex!20572 0))(
  ( (ElementMatch!20572 (c!1425683 C!41470)) (Concat!29417 (regOne!41656 Regex!20572) (regTwo!41656 Regex!20572)) (EmptyExpr!20572) (Star!20572 (reg!20901 Regex!20572)) (EmptyLang!20572) (Union!20572 (regOne!41657 Regex!20572) (regTwo!41657 Regex!20572)) )
))
(declare-fun r!14126 () Regex!20572)

(declare-datatypes ((List!73419 0))(
  ( (Nil!73295) (Cons!73295 (h!79743 C!41470) (t!388154 List!73419)) )
))
(declare-datatypes ((tuple2!69598 0))(
  ( (tuple2!69599 (_1!38102 List!73419) (_2!38102 List!73419)) )
))
(declare-fun lt!2667331 () tuple2!69598)

(declare-fun matchR!10064 (Regex!20572 List!73419) Bool)

(declare-fun ++!17771 (List!73419 List!73419) List!73419)

(assert (=> b!7732726 (matchR!10064 r!14126 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)))))

(declare-datatypes ((Unit!168216 0))(
  ( (Unit!168217) )
))
(declare-fun lt!2667335 () Unit!168216)

(declare-fun s!9605 () List!73419)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!197 (Regex!20572 Regex!20572 List!73419 List!73419 List!73419) Unit!168216)

(assert (=> b!7732726 (= lt!2667335 (lemmaFindSeparationIsDefinedThenConcatMatches!197 (regOne!41656 r!14126) (regTwo!41656 r!14126) (_1!38102 lt!2667331) (_2!38102 lt!2667331) s!9605))))

(declare-datatypes ((Option!17593 0))(
  ( (None!17592) (Some!17592 (v!54727 tuple2!69598)) )
))
(declare-fun lt!2667332 () Option!17593)

(declare-fun get!26049 (Option!17593) tuple2!69598)

(assert (=> b!7732726 (= lt!2667331 (get!26049 lt!2667332))))

(declare-fun b!7732727 () Bool)

(declare-fun tp_is_empty!51499 () Bool)

(assert (=> b!7732727 (= e!4585612 tp_is_empty!51499)))

(declare-fun b!7732728 () Bool)

(declare-fun res!3084330 () Bool)

(declare-fun e!4585613 () Bool)

(assert (=> b!7732728 (=> (not res!3084330) (not e!4585613))))

(assert (=> b!7732728 (= res!3084330 (and (not (is-EmptyExpr!20572 r!14126)) (not (is-EmptyLang!20572 r!14126)) (not (is-ElementMatch!20572 r!14126)) (not (is-Union!20572 r!14126)) (not (is-Star!20572 r!14126))))))

(declare-fun res!3084329 () Bool)

(assert (=> start!738066 (=> (not res!3084329) (not e!4585613))))

(declare-fun validRegex!10990 (Regex!20572) Bool)

(assert (=> start!738066 (= res!3084329 (validRegex!10990 r!14126))))

(assert (=> start!738066 e!4585613))

(assert (=> start!738066 e!4585612))

(declare-fun e!4585610 () Bool)

(assert (=> start!738066 e!4585610))

(declare-fun b!7732729 () Bool)

(declare-fun tp!2269042 () Bool)

(assert (=> b!7732729 (= e!4585610 (and tp_is_empty!51499 tp!2269042))))

(declare-fun b!7732730 () Bool)

(declare-fun tp!2269045 () Bool)

(assert (=> b!7732730 (= e!4585612 tp!2269045)))

(declare-fun b!7732731 () Bool)

(declare-fun tp!2269044 () Bool)

(declare-fun tp!2269043 () Bool)

(assert (=> b!7732731 (= e!4585612 (and tp!2269044 tp!2269043))))

(assert (=> b!7732732 (= e!4585613 (not e!4585611))))

(declare-fun res!3084332 () Bool)

(assert (=> b!7732732 (=> res!3084332 e!4585611)))

(assert (=> b!7732732 (= res!3084332 (matchR!10064 r!14126 s!9605))))

(declare-fun lambda!471340 () Int)

(declare-fun Exists!4693 (Int) Bool)

(assert (=> b!7732732 (= lt!2667334 (Exists!4693 lambda!471340))))

(declare-fun isDefined!14209 (Option!17593) Bool)

(assert (=> b!7732732 (= lt!2667334 (isDefined!14209 lt!2667332))))

(declare-fun findConcatSeparation!3623 (Regex!20572 Regex!20572 List!73419 List!73419 List!73419) Option!17593)

(assert (=> b!7732732 (= lt!2667332 (findConcatSeparation!3623 (regOne!41656 r!14126) (regTwo!41656 r!14126) Nil!73295 s!9605 s!9605))))

(declare-fun lt!2667333 () Unit!168216)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3381 (Regex!20572 Regex!20572 List!73419) Unit!168216)

(assert (=> b!7732732 (= lt!2667333 (lemmaFindConcatSeparationEquivalentToExists!3381 (regOne!41656 r!14126) (regTwo!41656 r!14126) s!9605))))

(assert (= (and start!738066 res!3084329) b!7732728))

(assert (= (and b!7732728 res!3084330) b!7732732))

(assert (= (and b!7732732 (not res!3084332)) b!7732725))

(assert (= (and b!7732725 (not res!3084331)) b!7732726))

(assert (= (and start!738066 (is-ElementMatch!20572 r!14126)) b!7732727))

(assert (= (and start!738066 (is-Concat!29417 r!14126)) b!7732724))

(assert (= (and start!738066 (is-Star!20572 r!14126)) b!7732730))

(assert (= (and start!738066 (is-Union!20572 r!14126)) b!7732731))

(assert (= (and start!738066 (is-Cons!73295 s!9605)) b!7732729))

(declare-fun m!8206342 () Bool)

(assert (=> b!7732726 m!8206342))

(assert (=> b!7732726 m!8206342))

(declare-fun m!8206344 () Bool)

(assert (=> b!7732726 m!8206344))

(declare-fun m!8206346 () Bool)

(assert (=> b!7732726 m!8206346))

(declare-fun m!8206348 () Bool)

(assert (=> b!7732726 m!8206348))

(declare-fun m!8206350 () Bool)

(assert (=> start!738066 m!8206350))

(declare-fun m!8206352 () Bool)

(assert (=> b!7732732 m!8206352))

(declare-fun m!8206354 () Bool)

(assert (=> b!7732732 m!8206354))

(declare-fun m!8206356 () Bool)

(assert (=> b!7732732 m!8206356))

(declare-fun m!8206358 () Bool)

(assert (=> b!7732732 m!8206358))

(declare-fun m!8206360 () Bool)

(assert (=> b!7732732 m!8206360))

(push 1)

(assert (not b!7732732))

(assert (not b!7732729))

(assert (not b!7732730))

(assert (not b!7732726))

(assert (not start!738066))

(assert tp_is_empty!51499)

(assert (not b!7732731))

(assert (not b!7732724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7732790 () Bool)

(declare-fun e!4585646 () Bool)

(declare-fun call!715657 () Bool)

(assert (=> b!7732790 (= e!4585646 call!715657)))

(declare-fun b!7732791 () Bool)

(declare-fun res!3084363 () Bool)

(declare-fun e!4585647 () Bool)

(assert (=> b!7732791 (=> res!3084363 e!4585647)))

(assert (=> b!7732791 (= res!3084363 (not (is-Concat!29417 r!14126)))))

(declare-fun e!4585648 () Bool)

(assert (=> b!7732791 (= e!4585648 e!4585647)))

(declare-fun bm!715650 () Bool)

(declare-fun call!715655 () Bool)

(declare-fun c!1425690 () Bool)

(assert (=> bm!715650 (= call!715655 (validRegex!10990 (ite c!1425690 (regTwo!41657 r!14126) (regTwo!41656 r!14126))))))

(declare-fun b!7732792 () Bool)

(declare-fun e!4585643 () Bool)

(declare-fun e!4585645 () Bool)

(assert (=> b!7732792 (= e!4585643 e!4585645)))

(declare-fun c!1425689 () Bool)

(assert (=> b!7732792 (= c!1425689 (is-Star!20572 r!14126))))

(declare-fun b!7732793 () Bool)

(declare-fun e!4585644 () Bool)

(assert (=> b!7732793 (= e!4585644 call!715655)))

(declare-fun b!7732794 () Bool)

(assert (=> b!7732794 (= e!4585645 e!4585646)))

(declare-fun res!3084359 () Bool)

(declare-fun nullable!9045 (Regex!20572) Bool)

(assert (=> b!7732794 (= res!3084359 (not (nullable!9045 (reg!20901 r!14126))))))

(assert (=> b!7732794 (=> (not res!3084359) (not e!4585646))))

(declare-fun b!7732795 () Bool)

(declare-fun e!4585642 () Bool)

(assert (=> b!7732795 (= e!4585642 call!715655)))

(declare-fun b!7732796 () Bool)

(assert (=> b!7732796 (= e!4585647 e!4585644)))

(declare-fun res!3084361 () Bool)

(assert (=> b!7732796 (=> (not res!3084361) (not e!4585644))))

(declare-fun call!715656 () Bool)

(assert (=> b!7732796 (= res!3084361 call!715656)))

(declare-fun bm!715652 () Bool)

(assert (=> bm!715652 (= call!715656 call!715657)))

(declare-fun b!7732797 () Bool)

(declare-fun res!3084362 () Bool)

(assert (=> b!7732797 (=> (not res!3084362) (not e!4585642))))

(assert (=> b!7732797 (= res!3084362 call!715656)))

(assert (=> b!7732797 (= e!4585648 e!4585642)))

(declare-fun b!7732798 () Bool)

(assert (=> b!7732798 (= e!4585645 e!4585648)))

(assert (=> b!7732798 (= c!1425690 (is-Union!20572 r!14126))))

(declare-fun bm!715651 () Bool)

(assert (=> bm!715651 (= call!715657 (validRegex!10990 (ite c!1425689 (reg!20901 r!14126) (ite c!1425690 (regOne!41657 r!14126) (regOne!41656 r!14126)))))))

(declare-fun d!2339654 () Bool)

(declare-fun res!3084360 () Bool)

(assert (=> d!2339654 (=> res!3084360 e!4585643)))

(assert (=> d!2339654 (= res!3084360 (is-ElementMatch!20572 r!14126))))

(assert (=> d!2339654 (= (validRegex!10990 r!14126) e!4585643)))

(assert (= (and d!2339654 (not res!3084360)) b!7732792))

(assert (= (and b!7732792 c!1425689) b!7732794))

(assert (= (and b!7732792 (not c!1425689)) b!7732798))

(assert (= (and b!7732794 res!3084359) b!7732790))

(assert (= (and b!7732798 c!1425690) b!7732797))

(assert (= (and b!7732798 (not c!1425690)) b!7732791))

(assert (= (and b!7732797 res!3084362) b!7732795))

(assert (= (and b!7732791 (not res!3084363)) b!7732796))

(assert (= (and b!7732796 res!3084361) b!7732793))

(assert (= (or b!7732797 b!7732796) bm!715652))

(assert (= (or b!7732795 b!7732793) bm!715650))

(assert (= (or b!7732790 bm!715652) bm!715651))

(declare-fun m!8206382 () Bool)

(assert (=> bm!715650 m!8206382))

(declare-fun m!8206384 () Bool)

(assert (=> b!7732794 m!8206384))

(declare-fun m!8206386 () Bool)

(assert (=> bm!715651 m!8206386))

(assert (=> start!738066 d!2339654))

(declare-fun b!7732827 () Bool)

(declare-fun res!3084380 () Bool)

(declare-fun e!4585665 () Bool)

(assert (=> b!7732827 (=> (not res!3084380) (not e!4585665))))

(declare-fun call!715660 () Bool)

(assert (=> b!7732827 (= res!3084380 (not call!715660))))

(declare-fun b!7732828 () Bool)

(declare-fun res!3084386 () Bool)

(assert (=> b!7732828 (=> (not res!3084386) (not e!4585665))))

(declare-fun isEmpty!41972 (List!73419) Bool)

(declare-fun tail!15344 (List!73419) List!73419)

(assert (=> b!7732828 (= res!3084386 (isEmpty!41972 (tail!15344 s!9605)))))

(declare-fun b!7732829 () Bool)

(declare-fun res!3084385 () Bool)

(declare-fun e!4585664 () Bool)

(assert (=> b!7732829 (=> res!3084385 e!4585664)))

(assert (=> b!7732829 (= res!3084385 e!4585665)))

(declare-fun res!3084381 () Bool)

(assert (=> b!7732829 (=> (not res!3084381) (not e!4585665))))

(declare-fun lt!2667353 () Bool)

(assert (=> b!7732829 (= res!3084381 lt!2667353)))

(declare-fun b!7732830 () Bool)

(declare-fun e!4585666 () Bool)

(assert (=> b!7732830 (= e!4585664 e!4585666)))

(declare-fun res!3084382 () Bool)

(assert (=> b!7732830 (=> (not res!3084382) (not e!4585666))))

(assert (=> b!7732830 (= res!3084382 (not lt!2667353))))

(declare-fun b!7732831 () Bool)

(declare-fun e!4585663 () Bool)

(assert (=> b!7732831 (= e!4585663 (not lt!2667353))))

(declare-fun d!2339656 () Bool)

(declare-fun e!4585669 () Bool)

(assert (=> d!2339656 e!4585669))

(declare-fun c!1425698 () Bool)

(assert (=> d!2339656 (= c!1425698 (is-EmptyExpr!20572 r!14126))))

(declare-fun e!4585668 () Bool)

(assert (=> d!2339656 (= lt!2667353 e!4585668)))

(declare-fun c!1425697 () Bool)

(assert (=> d!2339656 (= c!1425697 (isEmpty!41972 s!9605))))

(assert (=> d!2339656 (validRegex!10990 r!14126)))

(assert (=> d!2339656 (= (matchR!10064 r!14126 s!9605) lt!2667353)))

(declare-fun b!7732832 () Bool)

(declare-fun res!3084384 () Bool)

(declare-fun e!4585667 () Bool)

(assert (=> b!7732832 (=> res!3084384 e!4585667)))

(assert (=> b!7732832 (= res!3084384 (not (isEmpty!41972 (tail!15344 s!9605))))))

(declare-fun b!7732833 () Bool)

(declare-fun res!3084383 () Bool)

(assert (=> b!7732833 (=> res!3084383 e!4585664)))

(assert (=> b!7732833 (= res!3084383 (not (is-ElementMatch!20572 r!14126)))))

(assert (=> b!7732833 (= e!4585663 e!4585664)))

(declare-fun b!7732834 () Bool)

(assert (=> b!7732834 (= e!4585669 e!4585663)))

(declare-fun c!1425699 () Bool)

(assert (=> b!7732834 (= c!1425699 (is-EmptyLang!20572 r!14126))))

(declare-fun bm!715655 () Bool)

(assert (=> bm!715655 (= call!715660 (isEmpty!41972 s!9605))))

(declare-fun b!7732835 () Bool)

(assert (=> b!7732835 (= e!4585668 (nullable!9045 r!14126))))

(declare-fun b!7732836 () Bool)

(assert (=> b!7732836 (= e!4585666 e!4585667)))

(declare-fun res!3084387 () Bool)

(assert (=> b!7732836 (=> res!3084387 e!4585667)))

(assert (=> b!7732836 (= res!3084387 call!715660)))

(declare-fun b!7732837 () Bool)

(declare-fun head!15804 (List!73419) C!41470)

(assert (=> b!7732837 (= e!4585665 (= (head!15804 s!9605) (c!1425683 r!14126)))))

(declare-fun b!7732838 () Bool)

(declare-fun derivativeStep!6004 (Regex!20572 C!41470) Regex!20572)

(assert (=> b!7732838 (= e!4585668 (matchR!10064 (derivativeStep!6004 r!14126 (head!15804 s!9605)) (tail!15344 s!9605)))))

(declare-fun b!7732839 () Bool)

(assert (=> b!7732839 (= e!4585667 (not (= (head!15804 s!9605) (c!1425683 r!14126))))))

(declare-fun b!7732840 () Bool)

(assert (=> b!7732840 (= e!4585669 (= lt!2667353 call!715660))))

(assert (= (and d!2339656 c!1425697) b!7732835))

(assert (= (and d!2339656 (not c!1425697)) b!7732838))

(assert (= (and d!2339656 c!1425698) b!7732840))

(assert (= (and d!2339656 (not c!1425698)) b!7732834))

(assert (= (and b!7732834 c!1425699) b!7732831))

(assert (= (and b!7732834 (not c!1425699)) b!7732833))

(assert (= (and b!7732833 (not res!3084383)) b!7732829))

(assert (= (and b!7732829 res!3084381) b!7732827))

(assert (= (and b!7732827 res!3084380) b!7732828))

(assert (= (and b!7732828 res!3084386) b!7732837))

(assert (= (and b!7732829 (not res!3084385)) b!7732830))

(assert (= (and b!7732830 res!3084382) b!7732836))

(assert (= (and b!7732836 (not res!3084387)) b!7732832))

(assert (= (and b!7732832 (not res!3084384)) b!7732839))

(assert (= (or b!7732840 b!7732827 b!7732836) bm!715655))

(declare-fun m!8206388 () Bool)

(assert (=> b!7732835 m!8206388))

(declare-fun m!8206390 () Bool)

(assert (=> b!7732838 m!8206390))

(assert (=> b!7732838 m!8206390))

(declare-fun m!8206392 () Bool)

(assert (=> b!7732838 m!8206392))

(declare-fun m!8206394 () Bool)

(assert (=> b!7732838 m!8206394))

(assert (=> b!7732838 m!8206392))

(assert (=> b!7732838 m!8206394))

(declare-fun m!8206396 () Bool)

(assert (=> b!7732838 m!8206396))

(assert (=> b!7732837 m!8206390))

(declare-fun m!8206398 () Bool)

(assert (=> d!2339656 m!8206398))

(assert (=> d!2339656 m!8206350))

(assert (=> b!7732839 m!8206390))

(assert (=> bm!715655 m!8206398))

(assert (=> b!7732832 m!8206394))

(assert (=> b!7732832 m!8206394))

(declare-fun m!8206400 () Bool)

(assert (=> b!7732832 m!8206400))

(assert (=> b!7732828 m!8206394))

(assert (=> b!7732828 m!8206394))

(assert (=> b!7732828 m!8206400))

(assert (=> b!7732732 d!2339656))

(declare-fun bs!1963609 () Bool)

(declare-fun d!2339660 () Bool)

(assert (= bs!1963609 (and d!2339660 b!7732732)))

(declare-fun lambda!471346 () Int)

(assert (=> bs!1963609 (= lambda!471346 lambda!471340)))

(assert (=> d!2339660 true))

(assert (=> d!2339660 true))

(assert (=> d!2339660 true))

(assert (=> d!2339660 (= (isDefined!14209 (findConcatSeparation!3623 (regOne!41656 r!14126) (regTwo!41656 r!14126) Nil!73295 s!9605 s!9605)) (Exists!4693 lambda!471346))))

(declare-fun lt!2667358 () Unit!168216)

(declare-fun choose!59322 (Regex!20572 Regex!20572 List!73419) Unit!168216)

(assert (=> d!2339660 (= lt!2667358 (choose!59322 (regOne!41656 r!14126) (regTwo!41656 r!14126) s!9605))))

(assert (=> d!2339660 (validRegex!10990 (regOne!41656 r!14126))))

(assert (=> d!2339660 (= (lemmaFindConcatSeparationEquivalentToExists!3381 (regOne!41656 r!14126) (regTwo!41656 r!14126) s!9605) lt!2667358)))

(declare-fun bs!1963610 () Bool)

(assert (= bs!1963610 d!2339660))

(assert (=> bs!1963610 m!8206354))

(declare-fun m!8206402 () Bool)

(assert (=> bs!1963610 m!8206402))

(declare-fun m!8206404 () Bool)

(assert (=> bs!1963610 m!8206404))

(declare-fun m!8206406 () Bool)

(assert (=> bs!1963610 m!8206406))

(assert (=> bs!1963610 m!8206354))

(declare-fun m!8206408 () Bool)

(assert (=> bs!1963610 m!8206408))

(assert (=> b!7732732 d!2339660))

(declare-fun d!2339662 () Bool)

(declare-fun e!4585705 () Bool)

(assert (=> d!2339662 e!4585705))

(declare-fun res!3084430 () Bool)

(assert (=> d!2339662 (=> res!3084430 e!4585705)))

(declare-fun e!4585703 () Bool)

(assert (=> d!2339662 (= res!3084430 e!4585703)))

(declare-fun res!3084426 () Bool)

(assert (=> d!2339662 (=> (not res!3084426) (not e!4585703))))

(declare-fun lt!2667366 () Option!17593)

(assert (=> d!2339662 (= res!3084426 (isDefined!14209 lt!2667366))))

(declare-fun e!4585707 () Option!17593)

(assert (=> d!2339662 (= lt!2667366 e!4585707)))

(declare-fun c!1425714 () Bool)

(declare-fun e!4585706 () Bool)

(assert (=> d!2339662 (= c!1425714 e!4585706)))

(declare-fun res!3084427 () Bool)

(assert (=> d!2339662 (=> (not res!3084427) (not e!4585706))))

(assert (=> d!2339662 (= res!3084427 (matchR!10064 (regOne!41656 r!14126) Nil!73295))))

(assert (=> d!2339662 (validRegex!10990 (regOne!41656 r!14126))))

(assert (=> d!2339662 (= (findConcatSeparation!3623 (regOne!41656 r!14126) (regTwo!41656 r!14126) Nil!73295 s!9605 s!9605) lt!2667366)))

(declare-fun b!7732905 () Bool)

(assert (=> b!7732905 (= e!4585703 (= (++!17771 (_1!38102 (get!26049 lt!2667366)) (_2!38102 (get!26049 lt!2667366))) s!9605))))

(declare-fun b!7732906 () Bool)

(declare-fun e!4585704 () Option!17593)

(assert (=> b!7732906 (= e!4585704 None!17592)))

(declare-fun b!7732907 () Bool)

(declare-fun lt!2667367 () Unit!168216)

(declare-fun lt!2667368 () Unit!168216)

(assert (=> b!7732907 (= lt!2667367 lt!2667368)))

(assert (=> b!7732907 (= (++!17771 (++!17771 Nil!73295 (Cons!73295 (h!79743 s!9605) Nil!73295)) (t!388154 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3319 (List!73419 C!41470 List!73419 List!73419) Unit!168216)

(assert (=> b!7732907 (= lt!2667368 (lemmaMoveElementToOtherListKeepsConcatEq!3319 Nil!73295 (h!79743 s!9605) (t!388154 s!9605) s!9605))))

(assert (=> b!7732907 (= e!4585704 (findConcatSeparation!3623 (regOne!41656 r!14126) (regTwo!41656 r!14126) (++!17771 Nil!73295 (Cons!73295 (h!79743 s!9605) Nil!73295)) (t!388154 s!9605) s!9605))))

(declare-fun b!7732908 () Bool)

(assert (=> b!7732908 (= e!4585707 e!4585704)))

(declare-fun c!1425713 () Bool)

(assert (=> b!7732908 (= c!1425713 (is-Nil!73295 s!9605))))

(declare-fun b!7732909 () Bool)

(assert (=> b!7732909 (= e!4585705 (not (isDefined!14209 lt!2667366)))))

(declare-fun b!7732910 () Bool)

(declare-fun res!3084428 () Bool)

(assert (=> b!7732910 (=> (not res!3084428) (not e!4585703))))

(assert (=> b!7732910 (= res!3084428 (matchR!10064 (regTwo!41656 r!14126) (_2!38102 (get!26049 lt!2667366))))))

(declare-fun b!7732911 () Bool)

(assert (=> b!7732911 (= e!4585706 (matchR!10064 (regTwo!41656 r!14126) s!9605))))

(declare-fun b!7732912 () Bool)

(declare-fun res!3084429 () Bool)

(assert (=> b!7732912 (=> (not res!3084429) (not e!4585703))))

(assert (=> b!7732912 (= res!3084429 (matchR!10064 (regOne!41656 r!14126) (_1!38102 (get!26049 lt!2667366))))))

(declare-fun b!7732913 () Bool)

(assert (=> b!7732913 (= e!4585707 (Some!17592 (tuple2!69599 Nil!73295 s!9605)))))

(assert (= (and d!2339662 res!3084427) b!7732911))

(assert (= (and d!2339662 c!1425714) b!7732913))

(assert (= (and d!2339662 (not c!1425714)) b!7732908))

(assert (= (and b!7732908 c!1425713) b!7732906))

(assert (= (and b!7732908 (not c!1425713)) b!7732907))

(assert (= (and d!2339662 res!3084426) b!7732912))

(assert (= (and b!7732912 res!3084429) b!7732910))

(assert (= (and b!7732910 res!3084428) b!7732905))

(assert (= (and d!2339662 (not res!3084430)) b!7732909))

(declare-fun m!8206424 () Bool)

(assert (=> b!7732912 m!8206424))

(declare-fun m!8206426 () Bool)

(assert (=> b!7732912 m!8206426))

(declare-fun m!8206428 () Bool)

(assert (=> d!2339662 m!8206428))

(declare-fun m!8206430 () Bool)

(assert (=> d!2339662 m!8206430))

(assert (=> d!2339662 m!8206404))

(assert (=> b!7732910 m!8206424))

(declare-fun m!8206432 () Bool)

(assert (=> b!7732910 m!8206432))

(assert (=> b!7732909 m!8206428))

(assert (=> b!7732905 m!8206424))

(declare-fun m!8206434 () Bool)

(assert (=> b!7732905 m!8206434))

(declare-fun m!8206436 () Bool)

(assert (=> b!7732911 m!8206436))

(declare-fun m!8206438 () Bool)

(assert (=> b!7732907 m!8206438))

(assert (=> b!7732907 m!8206438))

(declare-fun m!8206440 () Bool)

(assert (=> b!7732907 m!8206440))

(declare-fun m!8206442 () Bool)

(assert (=> b!7732907 m!8206442))

(assert (=> b!7732907 m!8206438))

(declare-fun m!8206444 () Bool)

(assert (=> b!7732907 m!8206444))

(assert (=> b!7732732 d!2339662))

(declare-fun d!2339666 () Bool)

(declare-fun isEmpty!41973 (Option!17593) Bool)

(assert (=> d!2339666 (= (isDefined!14209 lt!2667332) (not (isEmpty!41973 lt!2667332)))))

(declare-fun bs!1963611 () Bool)

(assert (= bs!1963611 d!2339666))

(declare-fun m!8206446 () Bool)

(assert (=> bs!1963611 m!8206446))

(assert (=> b!7732732 d!2339666))

(declare-fun d!2339668 () Bool)

(declare-fun choose!59323 (Int) Bool)

(assert (=> d!2339668 (= (Exists!4693 lambda!471340) (choose!59323 lambda!471340))))

(declare-fun bs!1963612 () Bool)

(assert (= bs!1963612 d!2339668))

(declare-fun m!8206448 () Bool)

(assert (=> bs!1963612 m!8206448))

(assert (=> b!7732732 d!2339668))

(declare-fun b!7732914 () Bool)

(declare-fun res!3084431 () Bool)

(declare-fun e!4585710 () Bool)

(assert (=> b!7732914 (=> (not res!3084431) (not e!4585710))))

(declare-fun call!715664 () Bool)

(assert (=> b!7732914 (= res!3084431 (not call!715664))))

(declare-fun b!7732915 () Bool)

(declare-fun res!3084437 () Bool)

(assert (=> b!7732915 (=> (not res!3084437) (not e!4585710))))

(assert (=> b!7732915 (= res!3084437 (isEmpty!41972 (tail!15344 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)))))))

(declare-fun b!7732916 () Bool)

(declare-fun res!3084436 () Bool)

(declare-fun e!4585709 () Bool)

(assert (=> b!7732916 (=> res!3084436 e!4585709)))

(assert (=> b!7732916 (= res!3084436 e!4585710)))

(declare-fun res!3084432 () Bool)

(assert (=> b!7732916 (=> (not res!3084432) (not e!4585710))))

(declare-fun lt!2667369 () Bool)

(assert (=> b!7732916 (= res!3084432 lt!2667369)))

(declare-fun b!7732917 () Bool)

(declare-fun e!4585711 () Bool)

(assert (=> b!7732917 (= e!4585709 e!4585711)))

(declare-fun res!3084433 () Bool)

(assert (=> b!7732917 (=> (not res!3084433) (not e!4585711))))

(assert (=> b!7732917 (= res!3084433 (not lt!2667369))))

(declare-fun b!7732918 () Bool)

(declare-fun e!4585708 () Bool)

(assert (=> b!7732918 (= e!4585708 (not lt!2667369))))

(declare-fun d!2339670 () Bool)

(declare-fun e!4585714 () Bool)

(assert (=> d!2339670 e!4585714))

(declare-fun c!1425716 () Bool)

(assert (=> d!2339670 (= c!1425716 (is-EmptyExpr!20572 r!14126))))

(declare-fun e!4585713 () Bool)

(assert (=> d!2339670 (= lt!2667369 e!4585713)))

(declare-fun c!1425715 () Bool)

(assert (=> d!2339670 (= c!1425715 (isEmpty!41972 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))))))

(assert (=> d!2339670 (validRegex!10990 r!14126)))

(assert (=> d!2339670 (= (matchR!10064 r!14126 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))) lt!2667369)))

(declare-fun b!7732919 () Bool)

(declare-fun res!3084435 () Bool)

(declare-fun e!4585712 () Bool)

(assert (=> b!7732919 (=> res!3084435 e!4585712)))

(assert (=> b!7732919 (= res!3084435 (not (isEmpty!41972 (tail!15344 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))))))))

(declare-fun b!7732920 () Bool)

(declare-fun res!3084434 () Bool)

(assert (=> b!7732920 (=> res!3084434 e!4585709)))

(assert (=> b!7732920 (= res!3084434 (not (is-ElementMatch!20572 r!14126)))))

(assert (=> b!7732920 (= e!4585708 e!4585709)))

(declare-fun b!7732921 () Bool)

(assert (=> b!7732921 (= e!4585714 e!4585708)))

(declare-fun c!1425717 () Bool)

(assert (=> b!7732921 (= c!1425717 (is-EmptyLang!20572 r!14126))))

(declare-fun bm!715659 () Bool)

(assert (=> bm!715659 (= call!715664 (isEmpty!41972 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))))))

(declare-fun b!7732922 () Bool)

(assert (=> b!7732922 (= e!4585713 (nullable!9045 r!14126))))

(declare-fun b!7732923 () Bool)

(assert (=> b!7732923 (= e!4585711 e!4585712)))

(declare-fun res!3084438 () Bool)

(assert (=> b!7732923 (=> res!3084438 e!4585712)))

(assert (=> b!7732923 (= res!3084438 call!715664)))

(declare-fun b!7732924 () Bool)

(assert (=> b!7732924 (= e!4585710 (= (head!15804 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))) (c!1425683 r!14126)))))

(declare-fun b!7732925 () Bool)

(assert (=> b!7732925 (= e!4585713 (matchR!10064 (derivativeStep!6004 r!14126 (head!15804 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)))) (tail!15344 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)))))))

(declare-fun b!7732926 () Bool)

(assert (=> b!7732926 (= e!4585712 (not (= (head!15804 (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331))) (c!1425683 r!14126))))))

(declare-fun b!7732927 () Bool)

(assert (=> b!7732927 (= e!4585714 (= lt!2667369 call!715664))))

(assert (= (and d!2339670 c!1425715) b!7732922))

(assert (= (and d!2339670 (not c!1425715)) b!7732925))

(assert (= (and d!2339670 c!1425716) b!7732927))

(assert (= (and d!2339670 (not c!1425716)) b!7732921))

(assert (= (and b!7732921 c!1425717) b!7732918))

(assert (= (and b!7732921 (not c!1425717)) b!7732920))

(assert (= (and b!7732920 (not res!3084434)) b!7732916))

(assert (= (and b!7732916 res!3084432) b!7732914))

(assert (= (and b!7732914 res!3084431) b!7732915))

(assert (= (and b!7732915 res!3084437) b!7732924))

(assert (= (and b!7732916 (not res!3084436)) b!7732917))

(assert (= (and b!7732917 res!3084433) b!7732923))

(assert (= (and b!7732923 (not res!3084438)) b!7732919))

(assert (= (and b!7732919 (not res!3084435)) b!7732926))

(assert (= (or b!7732927 b!7732914 b!7732923) bm!715659))

(assert (=> b!7732922 m!8206388))

(assert (=> b!7732925 m!8206342))

(declare-fun m!8206450 () Bool)

(assert (=> b!7732925 m!8206450))

(assert (=> b!7732925 m!8206450))

(declare-fun m!8206452 () Bool)

(assert (=> b!7732925 m!8206452))

(assert (=> b!7732925 m!8206342))

(declare-fun m!8206454 () Bool)

(assert (=> b!7732925 m!8206454))

(assert (=> b!7732925 m!8206452))

(assert (=> b!7732925 m!8206454))

(declare-fun m!8206456 () Bool)

(assert (=> b!7732925 m!8206456))

(assert (=> b!7732924 m!8206342))

(assert (=> b!7732924 m!8206450))

(assert (=> d!2339670 m!8206342))

(declare-fun m!8206458 () Bool)

(assert (=> d!2339670 m!8206458))

(assert (=> d!2339670 m!8206350))

(assert (=> b!7732926 m!8206342))

(assert (=> b!7732926 m!8206450))

(assert (=> bm!715659 m!8206342))

(assert (=> bm!715659 m!8206458))

(assert (=> b!7732919 m!8206342))

(assert (=> b!7732919 m!8206454))

(assert (=> b!7732919 m!8206454))

(declare-fun m!8206460 () Bool)

(assert (=> b!7732919 m!8206460))

(assert (=> b!7732915 m!8206342))

(assert (=> b!7732915 m!8206454))

(assert (=> b!7732915 m!8206454))

(assert (=> b!7732915 m!8206460))

(assert (=> b!7732726 d!2339670))

(declare-fun b!7732946 () Bool)

(declare-fun res!3084447 () Bool)

(declare-fun e!4585724 () Bool)

(assert (=> b!7732946 (=> (not res!3084447) (not e!4585724))))

(declare-fun lt!2667374 () List!73419)

(declare-fun size!42631 (List!73419) Int)

(assert (=> b!7732946 (= res!3084447 (= (size!42631 lt!2667374) (+ (size!42631 (_1!38102 lt!2667331)) (size!42631 (_2!38102 lt!2667331)))))))

(declare-fun b!7732944 () Bool)

(declare-fun e!4585723 () List!73419)

(assert (=> b!7732944 (= e!4585723 (_2!38102 lt!2667331))))

(declare-fun b!7732947 () Bool)

(assert (=> b!7732947 (= e!4585724 (or (not (= (_2!38102 lt!2667331) Nil!73295)) (= lt!2667374 (_1!38102 lt!2667331))))))

(declare-fun b!7732945 () Bool)

(assert (=> b!7732945 (= e!4585723 (Cons!73295 (h!79743 (_1!38102 lt!2667331)) (++!17771 (t!388154 (_1!38102 lt!2667331)) (_2!38102 lt!2667331))))))

(declare-fun d!2339672 () Bool)

(assert (=> d!2339672 e!4585724))

(declare-fun res!3084448 () Bool)

(assert (=> d!2339672 (=> (not res!3084448) (not e!4585724))))

(declare-fun content!15528 (List!73419) (Set C!41470))

(assert (=> d!2339672 (= res!3084448 (= (content!15528 lt!2667374) (set.union (content!15528 (_1!38102 lt!2667331)) (content!15528 (_2!38102 lt!2667331)))))))

(assert (=> d!2339672 (= lt!2667374 e!4585723)))

(declare-fun c!1425722 () Bool)

(assert (=> d!2339672 (= c!1425722 (is-Nil!73295 (_1!38102 lt!2667331)))))

(assert (=> d!2339672 (= (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)) lt!2667374)))

(assert (= (and d!2339672 c!1425722) b!7732944))

(assert (= (and d!2339672 (not c!1425722)) b!7732945))

(assert (= (and d!2339672 res!3084448) b!7732946))

(assert (= (and b!7732946 res!3084447) b!7732947))

(declare-fun m!8206462 () Bool)

(assert (=> b!7732946 m!8206462))

(declare-fun m!8206464 () Bool)

(assert (=> b!7732946 m!8206464))

(declare-fun m!8206466 () Bool)

(assert (=> b!7732946 m!8206466))

(declare-fun m!8206468 () Bool)

(assert (=> b!7732945 m!8206468))

(declare-fun m!8206470 () Bool)

(assert (=> d!2339672 m!8206470))

(declare-fun m!8206472 () Bool)

(assert (=> d!2339672 m!8206472))

(declare-fun m!8206474 () Bool)

(assert (=> d!2339672 m!8206474))

(assert (=> b!7732726 d!2339672))

(declare-fun d!2339674 () Bool)

(assert (=> d!2339674 (matchR!10064 (Concat!29417 (regOne!41656 r!14126) (regTwo!41656 r!14126)) (++!17771 (_1!38102 lt!2667331) (_2!38102 lt!2667331)))))

(declare-fun lt!2667378 () Unit!168216)

(declare-fun choose!59324 (Regex!20572 Regex!20572 List!73419 List!73419 List!73419) Unit!168216)

(assert (=> d!2339674 (= lt!2667378 (choose!59324 (regOne!41656 r!14126) (regTwo!41656 r!14126) (_1!38102 lt!2667331) (_2!38102 lt!2667331) s!9605))))

(assert (=> d!2339674 (validRegex!10990 (regOne!41656 r!14126))))

(assert (=> d!2339674 (= (lemmaFindSeparationIsDefinedThenConcatMatches!197 (regOne!41656 r!14126) (regTwo!41656 r!14126) (_1!38102 lt!2667331) (_2!38102 lt!2667331) s!9605) lt!2667378)))

(declare-fun bs!1963613 () Bool)

(assert (= bs!1963613 d!2339674))

(assert (=> bs!1963613 m!8206342))

(assert (=> bs!1963613 m!8206342))

(declare-fun m!8206490 () Bool)

(assert (=> bs!1963613 m!8206490))

(declare-fun m!8206492 () Bool)

(assert (=> bs!1963613 m!8206492))

(assert (=> bs!1963613 m!8206404))

(assert (=> b!7732726 d!2339674))

(declare-fun d!2339678 () Bool)

(assert (=> d!2339678 (= (get!26049 lt!2667332) (v!54727 lt!2667332))))

(assert (=> b!7732726 d!2339678))

(declare-fun b!7732962 () Bool)

(declare-fun e!4585729 () Bool)

(assert (=> b!7732962 (= e!4585729 tp_is_empty!51499)))

(declare-fun b!7732965 () Bool)

(declare-fun tp!2269077 () Bool)

(declare-fun tp!2269078 () Bool)

(assert (=> b!7732965 (= e!4585729 (and tp!2269077 tp!2269078))))

(assert (=> b!7732731 (= tp!2269044 e!4585729)))

(declare-fun b!7732963 () Bool)

(declare-fun tp!2269080 () Bool)

(declare-fun tp!2269079 () Bool)

(assert (=> b!7732963 (= e!4585729 (and tp!2269080 tp!2269079))))

(declare-fun b!7732964 () Bool)

(declare-fun tp!2269076 () Bool)

(assert (=> b!7732964 (= e!4585729 tp!2269076)))

(assert (= (and b!7732731 (is-ElementMatch!20572 (regOne!41657 r!14126))) b!7732962))

(assert (= (and b!7732731 (is-Concat!29417 (regOne!41657 r!14126))) b!7732963))

(assert (= (and b!7732731 (is-Star!20572 (regOne!41657 r!14126))) b!7732964))

(assert (= (and b!7732731 (is-Union!20572 (regOne!41657 r!14126))) b!7732965))

(declare-fun b!7732966 () Bool)

(declare-fun e!4585730 () Bool)

(assert (=> b!7732966 (= e!4585730 tp_is_empty!51499)))

(declare-fun b!7732969 () Bool)

(declare-fun tp!2269082 () Bool)

(declare-fun tp!2269083 () Bool)

(assert (=> b!7732969 (= e!4585730 (and tp!2269082 tp!2269083))))

(assert (=> b!7732731 (= tp!2269043 e!4585730)))

(declare-fun b!7732967 () Bool)

(declare-fun tp!2269085 () Bool)

(declare-fun tp!2269084 () Bool)

(assert (=> b!7732967 (= e!4585730 (and tp!2269085 tp!2269084))))

(declare-fun b!7732968 () Bool)

(declare-fun tp!2269081 () Bool)

(assert (=> b!7732968 (= e!4585730 tp!2269081)))

(assert (= (and b!7732731 (is-ElementMatch!20572 (regTwo!41657 r!14126))) b!7732966))

(assert (= (and b!7732731 (is-Concat!29417 (regTwo!41657 r!14126))) b!7732967))

(assert (= (and b!7732731 (is-Star!20572 (regTwo!41657 r!14126))) b!7732968))

(assert (= (and b!7732731 (is-Union!20572 (regTwo!41657 r!14126))) b!7732969))

(declare-fun b!7732974 () Bool)

(declare-fun e!4585733 () Bool)

(declare-fun tp!2269088 () Bool)

(assert (=> b!7732974 (= e!4585733 (and tp_is_empty!51499 tp!2269088))))

(assert (=> b!7732729 (= tp!2269042 e!4585733)))

(assert (= (and b!7732729 (is-Cons!73295 (t!388154 s!9605))) b!7732974))

(declare-fun b!7732975 () Bool)

(declare-fun e!4585734 () Bool)

(assert (=> b!7732975 (= e!4585734 tp_is_empty!51499)))

(declare-fun b!7732978 () Bool)

(declare-fun tp!2269090 () Bool)

(declare-fun tp!2269091 () Bool)

(assert (=> b!7732978 (= e!4585734 (and tp!2269090 tp!2269091))))

(assert (=> b!7732724 (= tp!2269046 e!4585734)))

(declare-fun b!7732976 () Bool)

(declare-fun tp!2269093 () Bool)

(declare-fun tp!2269092 () Bool)

(assert (=> b!7732976 (= e!4585734 (and tp!2269093 tp!2269092))))

(declare-fun b!7732977 () Bool)

(declare-fun tp!2269089 () Bool)

(assert (=> b!7732977 (= e!4585734 tp!2269089)))

(assert (= (and b!7732724 (is-ElementMatch!20572 (regOne!41656 r!14126))) b!7732975))

(assert (= (and b!7732724 (is-Concat!29417 (regOne!41656 r!14126))) b!7732976))

(assert (= (and b!7732724 (is-Star!20572 (regOne!41656 r!14126))) b!7732977))

(assert (= (and b!7732724 (is-Union!20572 (regOne!41656 r!14126))) b!7732978))

(declare-fun b!7732979 () Bool)

(declare-fun e!4585735 () Bool)

(assert (=> b!7732979 (= e!4585735 tp_is_empty!51499)))

(declare-fun b!7732982 () Bool)

(declare-fun tp!2269095 () Bool)

(declare-fun tp!2269096 () Bool)

(assert (=> b!7732982 (= e!4585735 (and tp!2269095 tp!2269096))))

(assert (=> b!7732724 (= tp!2269047 e!4585735)))

(declare-fun b!7732980 () Bool)

(declare-fun tp!2269098 () Bool)

(declare-fun tp!2269097 () Bool)

(assert (=> b!7732980 (= e!4585735 (and tp!2269098 tp!2269097))))

(declare-fun b!7732981 () Bool)

(declare-fun tp!2269094 () Bool)

(assert (=> b!7732981 (= e!4585735 tp!2269094)))

(assert (= (and b!7732724 (is-ElementMatch!20572 (regTwo!41656 r!14126))) b!7732979))

(assert (= (and b!7732724 (is-Concat!29417 (regTwo!41656 r!14126))) b!7732980))

(assert (= (and b!7732724 (is-Star!20572 (regTwo!41656 r!14126))) b!7732981))

(assert (= (and b!7732724 (is-Union!20572 (regTwo!41656 r!14126))) b!7732982))

(declare-fun b!7732983 () Bool)

(declare-fun e!4585736 () Bool)

(assert (=> b!7732983 (= e!4585736 tp_is_empty!51499)))

(declare-fun b!7732986 () Bool)

(declare-fun tp!2269100 () Bool)

(declare-fun tp!2269101 () Bool)

(assert (=> b!7732986 (= e!4585736 (and tp!2269100 tp!2269101))))

(assert (=> b!7732730 (= tp!2269045 e!4585736)))

(declare-fun b!7732984 () Bool)

(declare-fun tp!2269103 () Bool)

(declare-fun tp!2269102 () Bool)

(assert (=> b!7732984 (= e!4585736 (and tp!2269103 tp!2269102))))

(declare-fun b!7732985 () Bool)

(declare-fun tp!2269099 () Bool)

(assert (=> b!7732985 (= e!4585736 tp!2269099)))

(assert (= (and b!7732730 (is-ElementMatch!20572 (reg!20901 r!14126))) b!7732983))

(assert (= (and b!7732730 (is-Concat!29417 (reg!20901 r!14126))) b!7732984))

(assert (= (and b!7732730 (is-Star!20572 (reg!20901 r!14126))) b!7732985))

(assert (= (and b!7732730 (is-Union!20572 (reg!20901 r!14126))) b!7732986))

(push 1)

(assert (not d!2339662))

(assert (not b!7732905))

(assert (not b!7732910))

(assert (not b!7732925))

(assert (not b!7732986))

(assert (not b!7732985))

(assert (not b!7732839))

(assert (not b!7732926))

(assert (not b!7732984))

(assert (not bm!715659))

(assert (not b!7732974))

(assert (not bm!715655))

(assert (not b!7732838))

(assert (not b!7732969))

(assert (not b!7732981))

(assert (not b!7732922))

(assert (not d!2339668))

(assert (not b!7732907))

(assert (not b!7732909))

(assert (not d!2339666))

(assert (not b!7732835))

(assert (not b!7732965))

(assert (not b!7732919))

(assert (not b!7732968))

(assert (not b!7732915))

(assert (not b!7732980))

(assert (not b!7732963))

(assert (not bm!715651))

(assert (not d!2339670))

(assert (not d!2339672))

(assert (not b!7732832))

(assert (not b!7732912))

(assert (not b!7732978))

(assert (not d!2339656))

(assert (not b!7732976))

(assert (not b!7732964))

(assert (not b!7732794))

(assert (not b!7732977))

(assert (not b!7732828))

(assert (not b!7732924))

(assert (not bm!715650))

(assert tp_is_empty!51499)

(assert (not b!7732967))

(assert (not d!2339674))

(assert (not b!7732911))

(assert (not d!2339660))

(assert (not b!7732982))

(assert (not b!7732945))

(assert (not b!7732837))

(assert (not b!7732946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

