; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231966 () Bool)

(assert start!231966)

(declare-fun b!2363417 () Bool)

(assert (=> b!2363417 true))

(assert (=> b!2363417 true))

(declare-fun lambda!87047 () Int)

(declare-fun lambda!87046 () Int)

(assert (=> b!2363417 (not (= lambda!87047 lambda!87046))))

(assert (=> b!2363417 true))

(assert (=> b!2363417 true))

(declare-fun b!2363413 () Bool)

(declare-fun e!1509335 () Bool)

(declare-fun tp!755842 () Bool)

(declare-fun tp!755840 () Bool)

(assert (=> b!2363413 (= e!1509335 (and tp!755842 tp!755840))))

(declare-fun b!2363414 () Bool)

(declare-fun e!1509332 () Bool)

(declare-fun tp!755844 () Bool)

(declare-fun tp!755838 () Bool)

(assert (=> b!2363414 (= e!1509332 (and tp!755844 tp!755838))))

(declare-fun res!1003047 () Bool)

(declare-fun e!1509334 () Bool)

(assert (=> start!231966 (=> (not res!1003047) (not e!1509334))))

(declare-datatypes ((C!14000 0))(
  ( (C!14001 (val!8242 Int)) )
))
(declare-datatypes ((Regex!6921 0))(
  ( (ElementMatch!6921 (c!375623 C!14000)) (Concat!11557 (regOne!14354 Regex!6921) (regTwo!14354 Regex!6921)) (EmptyExpr!6921) (Star!6921 (reg!7250 Regex!6921)) (EmptyLang!6921) (Union!6921 (regOne!14355 Regex!6921) (regTwo!14355 Regex!6921)) )
))
(declare-datatypes ((List!28080 0))(
  ( (Nil!27982) (Cons!27982 (h!33383 Regex!6921) (t!208057 List!28080)) )
))
(declare-fun l!9164 () List!28080)

(declare-fun lambda!87045 () Int)

(declare-fun forall!5555 (List!28080 Int) Bool)

(assert (=> start!231966 (= res!1003047 (forall!5555 l!9164 lambda!87045))))

(assert (=> start!231966 e!1509334))

(assert (=> start!231966 e!1509332))

(assert (=> start!231966 e!1509335))

(declare-fun e!1509333 () Bool)

(assert (=> start!231966 e!1509333))

(declare-fun b!2363415 () Bool)

(declare-fun res!1003048 () Bool)

(assert (=> b!2363415 (=> (not res!1003048) (not e!1509334))))

(declare-fun r!13927 () Regex!6921)

(declare-fun generalisedConcat!22 (List!28080) Regex!6921)

(assert (=> b!2363415 (= res!1003048 (= r!13927 (generalisedConcat!22 l!9164)))))

(declare-fun b!2363416 () Bool)

(declare-fun tp_is_empty!11255 () Bool)

(assert (=> b!2363416 (= e!1509335 tp_is_empty!11255)))

(declare-fun e!1509336 () Bool)

(declare-fun e!1509331 () Bool)

(assert (=> b!2363417 (= e!1509336 e!1509331)))

(declare-fun res!1003046 () Bool)

(assert (=> b!2363417 (=> res!1003046 e!1509331)))

(declare-fun validRegex!2651 (Regex!6921) Bool)

(assert (=> b!2363417 (= res!1003046 (not (validRegex!2651 (regOne!14354 r!13927))))))

(declare-fun Exists!983 (Int) Bool)

(assert (=> b!2363417 (= (Exists!983 lambda!87046) (Exists!983 lambda!87047))))

(declare-datatypes ((Unit!40877 0))(
  ( (Unit!40878) )
))
(declare-fun lt!864834 () Unit!40877)

(declare-datatypes ((List!28081 0))(
  ( (Nil!27983) (Cons!27983 (h!33384 C!14000) (t!208058 List!28081)) )
))
(declare-fun s!9460 () List!28081)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!322 (Regex!6921 Regex!6921 List!28081) Unit!40877)

(assert (=> b!2363417 (= lt!864834 (lemmaExistCutMatchRandMatchRSpecEquivalent!322 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460))))

(declare-datatypes ((tuple2!27706 0))(
  ( (tuple2!27707 (_1!16394 List!28081) (_2!16394 List!28081)) )
))
(declare-datatypes ((Option!5464 0))(
  ( (None!5463) (Some!5463 (v!30871 tuple2!27706)) )
))
(declare-fun isDefined!4292 (Option!5464) Bool)

(declare-fun findConcatSeparation!572 (Regex!6921 Regex!6921 List!28081 List!28081 List!28081) Option!5464)

(assert (=> b!2363417 (= (isDefined!4292 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460)) (Exists!983 lambda!87046))))

(declare-fun lt!864835 () Unit!40877)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!572 (Regex!6921 Regex!6921 List!28081) Unit!40877)

(assert (=> b!2363417 (= lt!864835 (lemmaFindConcatSeparationEquivalentToExists!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460))))

(declare-fun b!2363418 () Bool)

(declare-fun tp!755843 () Bool)

(declare-fun tp!755839 () Bool)

(assert (=> b!2363418 (= e!1509335 (and tp!755843 tp!755839))))

(declare-fun b!2363419 () Bool)

(declare-fun tp!755841 () Bool)

(assert (=> b!2363419 (= e!1509335 tp!755841)))

(declare-fun b!2363420 () Bool)

(assert (=> b!2363420 (= e!1509331 (validRegex!2651 (regTwo!14354 r!13927)))))

(declare-fun b!2363421 () Bool)

(assert (=> b!2363421 (= e!1509334 (not e!1509336))))

(declare-fun res!1003045 () Bool)

(assert (=> b!2363421 (=> res!1003045 e!1509336)))

(get-info :version)

(assert (=> b!2363421 (= res!1003045 (not ((_ is Concat!11557) r!13927)))))

(declare-fun matchR!3038 (Regex!6921 List!28081) Bool)

(declare-fun matchRSpec!770 (Regex!6921 List!28081) Bool)

(assert (=> b!2363421 (= (matchR!3038 r!13927 s!9460) (matchRSpec!770 r!13927 s!9460))))

(declare-fun lt!864836 () Unit!40877)

(declare-fun mainMatchTheorem!770 (Regex!6921 List!28081) Unit!40877)

(assert (=> b!2363421 (= lt!864836 (mainMatchTheorem!770 r!13927 s!9460))))

(declare-fun b!2363422 () Bool)

(declare-fun tp!755845 () Bool)

(assert (=> b!2363422 (= e!1509333 (and tp_is_empty!11255 tp!755845))))

(assert (= (and start!231966 res!1003047) b!2363415))

(assert (= (and b!2363415 res!1003048) b!2363421))

(assert (= (and b!2363421 (not res!1003045)) b!2363417))

(assert (= (and b!2363417 (not res!1003046)) b!2363420))

(assert (= (and start!231966 ((_ is Cons!27982) l!9164)) b!2363414))

(assert (= (and start!231966 ((_ is ElementMatch!6921) r!13927)) b!2363416))

(assert (= (and start!231966 ((_ is Concat!11557) r!13927)) b!2363413))

(assert (= (and start!231966 ((_ is Star!6921) r!13927)) b!2363419))

(assert (= (and start!231966 ((_ is Union!6921) r!13927)) b!2363418))

(assert (= (and start!231966 ((_ is Cons!27983) s!9460)) b!2363422))

(declare-fun m!2774809 () Bool)

(assert (=> b!2363415 m!2774809))

(declare-fun m!2774811 () Bool)

(assert (=> b!2363421 m!2774811))

(declare-fun m!2774813 () Bool)

(assert (=> b!2363421 m!2774813))

(declare-fun m!2774815 () Bool)

(assert (=> b!2363421 m!2774815))

(declare-fun m!2774817 () Bool)

(assert (=> start!231966 m!2774817))

(declare-fun m!2774819 () Bool)

(assert (=> b!2363417 m!2774819))

(declare-fun m!2774821 () Bool)

(assert (=> b!2363417 m!2774821))

(declare-fun m!2774823 () Bool)

(assert (=> b!2363417 m!2774823))

(declare-fun m!2774825 () Bool)

(assert (=> b!2363417 m!2774825))

(assert (=> b!2363417 m!2774819))

(declare-fun m!2774827 () Bool)

(assert (=> b!2363417 m!2774827))

(assert (=> b!2363417 m!2774823))

(declare-fun m!2774829 () Bool)

(assert (=> b!2363417 m!2774829))

(declare-fun m!2774831 () Bool)

(assert (=> b!2363417 m!2774831))

(declare-fun m!2774833 () Bool)

(assert (=> b!2363420 m!2774833))

(check-sat (not b!2363413) tp_is_empty!11255 (not b!2363422) (not b!2363419) (not b!2363420) (not start!231966) (not b!2363415) (not b!2363418) (not b!2363421) (not b!2363417) (not b!2363414))
(check-sat)
(get-model)

(declare-fun b!2363517 () Bool)

(declare-fun res!1003091 () Bool)

(declare-fun e!1509391 () Bool)

(assert (=> b!2363517 (=> res!1003091 e!1509391)))

(assert (=> b!2363517 (= res!1003091 (not ((_ is Concat!11557) (regTwo!14354 r!13927))))))

(declare-fun e!1509394 () Bool)

(assert (=> b!2363517 (= e!1509394 e!1509391)))

(declare-fun b!2363518 () Bool)

(declare-fun res!1003090 () Bool)

(declare-fun e!1509395 () Bool)

(assert (=> b!2363518 (=> (not res!1003090) (not e!1509395))))

(declare-fun call!143765 () Bool)

(assert (=> b!2363518 (= res!1003090 call!143765)))

(assert (=> b!2363518 (= e!1509394 e!1509395)))

(declare-fun b!2363519 () Bool)

(declare-fun e!1509393 () Bool)

(declare-fun e!1509392 () Bool)

(assert (=> b!2363519 (= e!1509393 e!1509392)))

(declare-fun res!1003092 () Bool)

(declare-fun nullable!1985 (Regex!6921) Bool)

(assert (=> b!2363519 (= res!1003092 (not (nullable!1985 (reg!7250 (regTwo!14354 r!13927)))))))

(assert (=> b!2363519 (=> (not res!1003092) (not e!1509392))))

(declare-fun bm!143759 () Bool)

(declare-fun call!143766 () Bool)

(declare-fun call!143764 () Bool)

(assert (=> bm!143759 (= call!143766 call!143764)))

(declare-fun b!2363520 () Bool)

(assert (=> b!2363520 (= e!1509393 e!1509394)))

(declare-fun c!375649 () Bool)

(assert (=> b!2363520 (= c!375649 ((_ is Union!6921) (regTwo!14354 r!13927)))))

(declare-fun b!2363521 () Bool)

(declare-fun e!1509396 () Bool)

(assert (=> b!2363521 (= e!1509391 e!1509396)))

(declare-fun res!1003093 () Bool)

(assert (=> b!2363521 (=> (not res!1003093) (not e!1509396))))

(assert (=> b!2363521 (= res!1003093 call!143766)))

(declare-fun b!2363522 () Bool)

(assert (=> b!2363522 (= e!1509396 call!143765)))

(declare-fun b!2363523 () Bool)

(declare-fun e!1509390 () Bool)

(assert (=> b!2363523 (= e!1509390 e!1509393)))

(declare-fun c!375650 () Bool)

(assert (=> b!2363523 (= c!375650 ((_ is Star!6921) (regTwo!14354 r!13927)))))

(declare-fun bm!143760 () Bool)

(assert (=> bm!143760 (= call!143765 (validRegex!2651 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))

(declare-fun d!694329 () Bool)

(declare-fun res!1003089 () Bool)

(assert (=> d!694329 (=> res!1003089 e!1509390)))

(assert (=> d!694329 (= res!1003089 ((_ is ElementMatch!6921) (regTwo!14354 r!13927)))))

(assert (=> d!694329 (= (validRegex!2651 (regTwo!14354 r!13927)) e!1509390)))

(declare-fun b!2363524 () Bool)

(assert (=> b!2363524 (= e!1509392 call!143764)))

(declare-fun bm!143761 () Bool)

(assert (=> bm!143761 (= call!143764 (validRegex!2651 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))

(declare-fun b!2363525 () Bool)

(assert (=> b!2363525 (= e!1509395 call!143766)))

(assert (= (and d!694329 (not res!1003089)) b!2363523))

(assert (= (and b!2363523 c!375650) b!2363519))

(assert (= (and b!2363523 (not c!375650)) b!2363520))

(assert (= (and b!2363519 res!1003092) b!2363524))

(assert (= (and b!2363520 c!375649) b!2363518))

(assert (= (and b!2363520 (not c!375649)) b!2363517))

(assert (= (and b!2363518 res!1003090) b!2363525))

(assert (= (and b!2363517 (not res!1003091)) b!2363521))

(assert (= (and b!2363521 res!1003093) b!2363522))

(assert (= (or b!2363518 b!2363522) bm!143760))

(assert (= (or b!2363525 b!2363521) bm!143759))

(assert (= (or b!2363524 bm!143759) bm!143761))

(declare-fun m!2774871 () Bool)

(assert (=> b!2363519 m!2774871))

(declare-fun m!2774873 () Bool)

(assert (=> bm!143760 m!2774873))

(declare-fun m!2774875 () Bool)

(assert (=> bm!143761 m!2774875))

(assert (=> b!2363420 d!694329))

(declare-fun bs!460659 () Bool)

(declare-fun d!694335 () Bool)

(assert (= bs!460659 (and d!694335 start!231966)))

(declare-fun lambda!87059 () Int)

(assert (=> bs!460659 (= lambda!87059 lambda!87045)))

(declare-fun b!2363593 () Bool)

(declare-fun e!1509439 () Bool)

(declare-fun e!1509440 () Bool)

(assert (=> b!2363593 (= e!1509439 e!1509440)))

(declare-fun c!375672 () Bool)

(declare-fun isEmpty!15900 (List!28080) Bool)

(declare-fun tail!3359 (List!28080) List!28080)

(assert (=> b!2363593 (= c!375672 (isEmpty!15900 (tail!3359 l!9164)))))

(declare-fun b!2363594 () Bool)

(declare-fun e!1509443 () Regex!6921)

(assert (=> b!2363594 (= e!1509443 (Concat!11557 (h!33383 l!9164) (generalisedConcat!22 (t!208057 l!9164))))))

(declare-fun b!2363596 () Bool)

(declare-fun lt!864848 () Regex!6921)

(declare-fun isEmptyExpr!8 (Regex!6921) Bool)

(assert (=> b!2363596 (= e!1509439 (isEmptyExpr!8 lt!864848))))

(declare-fun b!2363597 () Bool)

(assert (=> b!2363597 (= e!1509443 EmptyExpr!6921)))

(declare-fun b!2363598 () Bool)

(declare-fun e!1509438 () Bool)

(assert (=> b!2363598 (= e!1509438 (isEmpty!15900 (t!208057 l!9164)))))

(declare-fun b!2363599 () Bool)

(declare-fun e!1509441 () Bool)

(assert (=> b!2363599 (= e!1509441 e!1509439)))

(declare-fun c!375673 () Bool)

(assert (=> b!2363599 (= c!375673 (isEmpty!15900 l!9164))))

(declare-fun b!2363600 () Bool)

(declare-fun e!1509442 () Regex!6921)

(assert (=> b!2363600 (= e!1509442 e!1509443)))

(declare-fun c!375674 () Bool)

(assert (=> b!2363600 (= c!375674 ((_ is Cons!27982) l!9164))))

(declare-fun b!2363601 () Bool)

(assert (=> b!2363601 (= e!1509442 (h!33383 l!9164))))

(declare-fun b!2363602 () Bool)

(declare-fun head!5090 (List!28080) Regex!6921)

(assert (=> b!2363602 (= e!1509440 (= lt!864848 (head!5090 l!9164)))))

(assert (=> d!694335 e!1509441))

(declare-fun res!1003121 () Bool)

(assert (=> d!694335 (=> (not res!1003121) (not e!1509441))))

(assert (=> d!694335 (= res!1003121 (validRegex!2651 lt!864848))))

(assert (=> d!694335 (= lt!864848 e!1509442)))

(declare-fun c!375671 () Bool)

(assert (=> d!694335 (= c!375671 e!1509438)))

(declare-fun res!1003122 () Bool)

(assert (=> d!694335 (=> (not res!1003122) (not e!1509438))))

(assert (=> d!694335 (= res!1003122 ((_ is Cons!27982) l!9164))))

(assert (=> d!694335 (forall!5555 l!9164 lambda!87059)))

(assert (=> d!694335 (= (generalisedConcat!22 l!9164) lt!864848)))

(declare-fun b!2363595 () Bool)

(declare-fun isConcat!8 (Regex!6921) Bool)

(assert (=> b!2363595 (= e!1509440 (isConcat!8 lt!864848))))

(assert (= (and d!694335 res!1003122) b!2363598))

(assert (= (and d!694335 c!375671) b!2363601))

(assert (= (and d!694335 (not c!375671)) b!2363600))

(assert (= (and b!2363600 c!375674) b!2363594))

(assert (= (and b!2363600 (not c!375674)) b!2363597))

(assert (= (and d!694335 res!1003121) b!2363599))

(assert (= (and b!2363599 c!375673) b!2363596))

(assert (= (and b!2363599 (not c!375673)) b!2363593))

(assert (= (and b!2363593 c!375672) b!2363602))

(assert (= (and b!2363593 (not c!375672)) b!2363595))

(declare-fun m!2774889 () Bool)

(assert (=> d!694335 m!2774889))

(declare-fun m!2774891 () Bool)

(assert (=> d!694335 m!2774891))

(declare-fun m!2774893 () Bool)

(assert (=> b!2363593 m!2774893))

(assert (=> b!2363593 m!2774893))

(declare-fun m!2774895 () Bool)

(assert (=> b!2363593 m!2774895))

(declare-fun m!2774897 () Bool)

(assert (=> b!2363599 m!2774897))

(declare-fun m!2774899 () Bool)

(assert (=> b!2363602 m!2774899))

(declare-fun m!2774901 () Bool)

(assert (=> b!2363594 m!2774901))

(declare-fun m!2774903 () Bool)

(assert (=> b!2363598 m!2774903))

(declare-fun m!2774905 () Bool)

(assert (=> b!2363596 m!2774905))

(declare-fun m!2774907 () Bool)

(assert (=> b!2363595 m!2774907))

(assert (=> b!2363415 d!694335))

(declare-fun b!2363672 () Bool)

(declare-fun e!1509491 () Bool)

(declare-fun head!5091 (List!28081) C!14000)

(assert (=> b!2363672 (= e!1509491 (not (= (head!5091 s!9460) (c!375623 r!13927))))))

(declare-fun b!2363673 () Bool)

(declare-fun e!1509492 () Bool)

(declare-fun lt!864857 () Bool)

(declare-fun call!143784 () Bool)

(assert (=> b!2363673 (= e!1509492 (= lt!864857 call!143784))))

(declare-fun b!2363674 () Bool)

(declare-fun res!1003171 () Bool)

(declare-fun e!1509493 () Bool)

(assert (=> b!2363674 (=> res!1003171 e!1509493)))

(declare-fun e!1509490 () Bool)

(assert (=> b!2363674 (= res!1003171 e!1509490)))

(declare-fun res!1003170 () Bool)

(assert (=> b!2363674 (=> (not res!1003170) (not e!1509490))))

(assert (=> b!2363674 (= res!1003170 lt!864857)))

(declare-fun b!2363675 () Bool)

(declare-fun e!1509488 () Bool)

(assert (=> b!2363675 (= e!1509488 e!1509491)))

(declare-fun res!1003168 () Bool)

(assert (=> b!2363675 (=> res!1003168 e!1509491)))

(assert (=> b!2363675 (= res!1003168 call!143784)))

(declare-fun b!2363676 () Bool)

(declare-fun res!1003169 () Bool)

(assert (=> b!2363676 (=> res!1003169 e!1509491)))

(declare-fun isEmpty!15901 (List!28081) Bool)

(declare-fun tail!3360 (List!28081) List!28081)

(assert (=> b!2363676 (= res!1003169 (not (isEmpty!15901 (tail!3360 s!9460))))))

(declare-fun b!2363677 () Bool)

(declare-fun res!1003175 () Bool)

(assert (=> b!2363677 (=> res!1003175 e!1509493)))

(assert (=> b!2363677 (= res!1003175 (not ((_ is ElementMatch!6921) r!13927)))))

(declare-fun e!1509487 () Bool)

(assert (=> b!2363677 (= e!1509487 e!1509493)))

(declare-fun d!694343 () Bool)

(assert (=> d!694343 e!1509492))

(declare-fun c!375689 () Bool)

(assert (=> d!694343 (= c!375689 ((_ is EmptyExpr!6921) r!13927))))

(declare-fun e!1509489 () Bool)

(assert (=> d!694343 (= lt!864857 e!1509489)))

(declare-fun c!375687 () Bool)

(assert (=> d!694343 (= c!375687 (isEmpty!15901 s!9460))))

(assert (=> d!694343 (validRegex!2651 r!13927)))

(assert (=> d!694343 (= (matchR!3038 r!13927 s!9460) lt!864857)))

(declare-fun b!2363678 () Bool)

(declare-fun res!1003172 () Bool)

(assert (=> b!2363678 (=> (not res!1003172) (not e!1509490))))

(assert (=> b!2363678 (= res!1003172 (not call!143784))))

(declare-fun b!2363679 () Bool)

(assert (=> b!2363679 (= e!1509489 (nullable!1985 r!13927))))

(declare-fun b!2363680 () Bool)

(assert (=> b!2363680 (= e!1509487 (not lt!864857))))

(declare-fun b!2363681 () Bool)

(assert (=> b!2363681 (= e!1509490 (= (head!5091 s!9460) (c!375623 r!13927)))))

(declare-fun bm!143779 () Bool)

(assert (=> bm!143779 (= call!143784 (isEmpty!15901 s!9460))))

(declare-fun b!2363682 () Bool)

(assert (=> b!2363682 (= e!1509493 e!1509488)))

(declare-fun res!1003174 () Bool)

(assert (=> b!2363682 (=> (not res!1003174) (not e!1509488))))

(assert (=> b!2363682 (= res!1003174 (not lt!864857))))

(declare-fun b!2363683 () Bool)

(declare-fun res!1003173 () Bool)

(assert (=> b!2363683 (=> (not res!1003173) (not e!1509490))))

(assert (=> b!2363683 (= res!1003173 (isEmpty!15901 (tail!3360 s!9460)))))

(declare-fun b!2363684 () Bool)

(declare-fun derivativeStep!1644 (Regex!6921 C!14000) Regex!6921)

(assert (=> b!2363684 (= e!1509489 (matchR!3038 (derivativeStep!1644 r!13927 (head!5091 s!9460)) (tail!3360 s!9460)))))

(declare-fun b!2363685 () Bool)

(assert (=> b!2363685 (= e!1509492 e!1509487)))

(declare-fun c!375688 () Bool)

(assert (=> b!2363685 (= c!375688 ((_ is EmptyLang!6921) r!13927))))

(assert (= (and d!694343 c!375687) b!2363679))

(assert (= (and d!694343 (not c!375687)) b!2363684))

(assert (= (and d!694343 c!375689) b!2363673))

(assert (= (and d!694343 (not c!375689)) b!2363685))

(assert (= (and b!2363685 c!375688) b!2363680))

(assert (= (and b!2363685 (not c!375688)) b!2363677))

(assert (= (and b!2363677 (not res!1003175)) b!2363674))

(assert (= (and b!2363674 res!1003170) b!2363678))

(assert (= (and b!2363678 res!1003172) b!2363683))

(assert (= (and b!2363683 res!1003173) b!2363681))

(assert (= (and b!2363674 (not res!1003171)) b!2363682))

(assert (= (and b!2363682 res!1003174) b!2363675))

(assert (= (and b!2363675 (not res!1003168)) b!2363676))

(assert (= (and b!2363676 (not res!1003169)) b!2363672))

(assert (= (or b!2363673 b!2363675 b!2363678) bm!143779))

(declare-fun m!2774929 () Bool)

(assert (=> b!2363681 m!2774929))

(declare-fun m!2774931 () Bool)

(assert (=> b!2363679 m!2774931))

(declare-fun m!2774935 () Bool)

(assert (=> d!694343 m!2774935))

(declare-fun m!2774937 () Bool)

(assert (=> d!694343 m!2774937))

(assert (=> b!2363684 m!2774929))

(assert (=> b!2363684 m!2774929))

(declare-fun m!2774943 () Bool)

(assert (=> b!2363684 m!2774943))

(declare-fun m!2774947 () Bool)

(assert (=> b!2363684 m!2774947))

(assert (=> b!2363684 m!2774943))

(assert (=> b!2363684 m!2774947))

(declare-fun m!2774949 () Bool)

(assert (=> b!2363684 m!2774949))

(assert (=> b!2363683 m!2774947))

(assert (=> b!2363683 m!2774947))

(declare-fun m!2774951 () Bool)

(assert (=> b!2363683 m!2774951))

(assert (=> b!2363672 m!2774929))

(assert (=> b!2363676 m!2774947))

(assert (=> b!2363676 m!2774947))

(assert (=> b!2363676 m!2774951))

(assert (=> bm!143779 m!2774935))

(assert (=> b!2363421 d!694343))

(declare-fun bs!460673 () Bool)

(declare-fun b!2363801 () Bool)

(assert (= bs!460673 (and b!2363801 b!2363417)))

(declare-fun lambda!87073 () Int)

(assert (=> bs!460673 (not (= lambda!87073 lambda!87046))))

(assert (=> bs!460673 (not (= lambda!87073 lambda!87047))))

(assert (=> b!2363801 true))

(assert (=> b!2363801 true))

(declare-fun bs!460674 () Bool)

(declare-fun b!2363802 () Bool)

(assert (= bs!460674 (and b!2363802 b!2363417)))

(declare-fun lambda!87074 () Int)

(assert (=> bs!460674 (not (= lambda!87074 lambda!87046))))

(assert (=> bs!460674 (= lambda!87074 lambda!87047)))

(declare-fun bs!460675 () Bool)

(assert (= bs!460675 (and b!2363802 b!2363801)))

(assert (=> bs!460675 (not (= lambda!87074 lambda!87073))))

(assert (=> b!2363802 true))

(assert (=> b!2363802 true))

(declare-fun bm!143787 () Bool)

(declare-fun call!143793 () Bool)

(assert (=> bm!143787 (= call!143793 (isEmpty!15901 s!9460))))

(declare-fun b!2363798 () Bool)

(declare-fun res!1003213 () Bool)

(declare-fun e!1509548 () Bool)

(assert (=> b!2363798 (=> res!1003213 e!1509548)))

(assert (=> b!2363798 (= res!1003213 call!143793)))

(declare-fun e!1509552 () Bool)

(assert (=> b!2363798 (= e!1509552 e!1509548)))

(declare-fun b!2363799 () Bool)

(declare-fun c!375707 () Bool)

(assert (=> b!2363799 (= c!375707 ((_ is Union!6921) r!13927))))

(declare-fun e!1509551 () Bool)

(declare-fun e!1509553 () Bool)

(assert (=> b!2363799 (= e!1509551 e!1509553)))

(declare-fun bm!143788 () Bool)

(declare-fun call!143792 () Bool)

(declare-fun c!375706 () Bool)

(assert (=> bm!143788 (= call!143792 (Exists!983 (ite c!375706 lambda!87073 lambda!87074)))))

(declare-fun d!694359 () Bool)

(declare-fun c!375708 () Bool)

(assert (=> d!694359 (= c!375708 ((_ is EmptyExpr!6921) r!13927))))

(declare-fun e!1509550 () Bool)

(assert (=> d!694359 (= (matchRSpec!770 r!13927 s!9460) e!1509550)))

(declare-fun b!2363800 () Bool)

(declare-fun e!1509549 () Bool)

(assert (=> b!2363800 (= e!1509553 e!1509549)))

(declare-fun res!1003212 () Bool)

(assert (=> b!2363800 (= res!1003212 (matchRSpec!770 (regOne!14355 r!13927) s!9460))))

(assert (=> b!2363800 (=> res!1003212 e!1509549)))

(assert (=> b!2363801 (= e!1509548 call!143792)))

(assert (=> b!2363802 (= e!1509552 call!143792)))

(declare-fun b!2363803 () Bool)

(declare-fun c!375709 () Bool)

(assert (=> b!2363803 (= c!375709 ((_ is ElementMatch!6921) r!13927))))

(declare-fun e!1509554 () Bool)

(assert (=> b!2363803 (= e!1509554 e!1509551)))

(declare-fun b!2363804 () Bool)

(assert (=> b!2363804 (= e!1509550 call!143793)))

(declare-fun b!2363805 () Bool)

(assert (=> b!2363805 (= e!1509553 e!1509552)))

(assert (=> b!2363805 (= c!375706 ((_ is Star!6921) r!13927))))

(declare-fun b!2363806 () Bool)

(assert (=> b!2363806 (= e!1509550 e!1509554)))

(declare-fun res!1003214 () Bool)

(assert (=> b!2363806 (= res!1003214 (not ((_ is EmptyLang!6921) r!13927)))))

(assert (=> b!2363806 (=> (not res!1003214) (not e!1509554))))

(declare-fun b!2363807 () Bool)

(assert (=> b!2363807 (= e!1509549 (matchRSpec!770 (regTwo!14355 r!13927) s!9460))))

(declare-fun b!2363808 () Bool)

(assert (=> b!2363808 (= e!1509551 (= s!9460 (Cons!27983 (c!375623 r!13927) Nil!27983)))))

(assert (= (and d!694359 c!375708) b!2363804))

(assert (= (and d!694359 (not c!375708)) b!2363806))

(assert (= (and b!2363806 res!1003214) b!2363803))

(assert (= (and b!2363803 c!375709) b!2363808))

(assert (= (and b!2363803 (not c!375709)) b!2363799))

(assert (= (and b!2363799 c!375707) b!2363800))

(assert (= (and b!2363799 (not c!375707)) b!2363805))

(assert (= (and b!2363800 (not res!1003212)) b!2363807))

(assert (= (and b!2363805 c!375706) b!2363798))

(assert (= (and b!2363805 (not c!375706)) b!2363802))

(assert (= (and b!2363798 (not res!1003213)) b!2363801))

(assert (= (or b!2363801 b!2363802) bm!143788))

(assert (= (or b!2363804 b!2363798) bm!143787))

(assert (=> bm!143787 m!2774935))

(declare-fun m!2774977 () Bool)

(assert (=> bm!143788 m!2774977))

(declare-fun m!2774979 () Bool)

(assert (=> b!2363800 m!2774979))

(declare-fun m!2774981 () Bool)

(assert (=> b!2363807 m!2774981))

(assert (=> b!2363421 d!694359))

(declare-fun d!694363 () Bool)

(assert (=> d!694363 (= (matchR!3038 r!13927 s!9460) (matchRSpec!770 r!13927 s!9460))))

(declare-fun lt!864869 () Unit!40877)

(declare-fun choose!13715 (Regex!6921 List!28081) Unit!40877)

(assert (=> d!694363 (= lt!864869 (choose!13715 r!13927 s!9460))))

(assert (=> d!694363 (validRegex!2651 r!13927)))

(assert (=> d!694363 (= (mainMatchTheorem!770 r!13927 s!9460) lt!864869)))

(declare-fun bs!460676 () Bool)

(assert (= bs!460676 d!694363))

(assert (=> bs!460676 m!2774811))

(assert (=> bs!460676 m!2774813))

(declare-fun m!2774983 () Bool)

(assert (=> bs!460676 m!2774983))

(assert (=> bs!460676 m!2774937))

(assert (=> b!2363421 d!694363))

(declare-fun d!694365 () Bool)

(declare-fun res!1003219 () Bool)

(declare-fun e!1509559 () Bool)

(assert (=> d!694365 (=> res!1003219 e!1509559)))

(assert (=> d!694365 (= res!1003219 ((_ is Nil!27982) l!9164))))

(assert (=> d!694365 (= (forall!5555 l!9164 lambda!87045) e!1509559)))

(declare-fun b!2363813 () Bool)

(declare-fun e!1509560 () Bool)

(assert (=> b!2363813 (= e!1509559 e!1509560)))

(declare-fun res!1003220 () Bool)

(assert (=> b!2363813 (=> (not res!1003220) (not e!1509560))))

(declare-fun dynLambda!12056 (Int Regex!6921) Bool)

(assert (=> b!2363813 (= res!1003220 (dynLambda!12056 lambda!87045 (h!33383 l!9164)))))

(declare-fun b!2363814 () Bool)

(assert (=> b!2363814 (= e!1509560 (forall!5555 (t!208057 l!9164) lambda!87045))))

(assert (= (and d!694365 (not res!1003219)) b!2363813))

(assert (= (and b!2363813 res!1003220) b!2363814))

(declare-fun b_lambda!73823 () Bool)

(assert (=> (not b_lambda!73823) (not b!2363813)))

(declare-fun m!2774985 () Bool)

(assert (=> b!2363813 m!2774985))

(declare-fun m!2774987 () Bool)

(assert (=> b!2363814 m!2774987))

(assert (=> start!231966 d!694365))

(declare-fun d!694367 () Bool)

(declare-fun choose!13716 (Int) Bool)

(assert (=> d!694367 (= (Exists!983 lambda!87047) (choose!13716 lambda!87047))))

(declare-fun bs!460677 () Bool)

(assert (= bs!460677 d!694367))

(declare-fun m!2774989 () Bool)

(assert (=> bs!460677 m!2774989))

(assert (=> b!2363417 d!694367))

(declare-fun d!694369 () Bool)

(declare-fun isEmpty!15902 (Option!5464) Bool)

(assert (=> d!694369 (= (isDefined!4292 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460)) (not (isEmpty!15902 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460))))))

(declare-fun bs!460678 () Bool)

(assert (= bs!460678 d!694369))

(assert (=> bs!460678 m!2774819))

(declare-fun m!2774991 () Bool)

(assert (=> bs!460678 m!2774991))

(assert (=> b!2363417 d!694369))

(declare-fun bs!460679 () Bool)

(declare-fun d!694371 () Bool)

(assert (= bs!460679 (and d!694371 b!2363417)))

(declare-fun lambda!87077 () Int)

(assert (=> bs!460679 (= lambda!87077 lambda!87046)))

(assert (=> bs!460679 (not (= lambda!87077 lambda!87047))))

(declare-fun bs!460680 () Bool)

(assert (= bs!460680 (and d!694371 b!2363801)))

(assert (=> bs!460680 (not (= lambda!87077 lambda!87073))))

(declare-fun bs!460681 () Bool)

(assert (= bs!460681 (and d!694371 b!2363802)))

(assert (=> bs!460681 (not (= lambda!87077 lambda!87074))))

(assert (=> d!694371 true))

(assert (=> d!694371 true))

(assert (=> d!694371 true))

(assert (=> d!694371 (= (isDefined!4292 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460)) (Exists!983 lambda!87077))))

(declare-fun lt!864872 () Unit!40877)

(declare-fun choose!13717 (Regex!6921 Regex!6921 List!28081) Unit!40877)

(assert (=> d!694371 (= lt!864872 (choose!13717 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460))))

(assert (=> d!694371 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694371 (= (lemmaFindConcatSeparationEquivalentToExists!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460) lt!864872)))

(declare-fun bs!460682 () Bool)

(assert (= bs!460682 d!694371))

(declare-fun m!2774993 () Bool)

(assert (=> bs!460682 m!2774993))

(declare-fun m!2774995 () Bool)

(assert (=> bs!460682 m!2774995))

(assert (=> bs!460682 m!2774819))

(assert (=> bs!460682 m!2774819))

(assert (=> bs!460682 m!2774821))

(assert (=> bs!460682 m!2774827))

(assert (=> b!2363417 d!694371))

(declare-fun bs!460683 () Bool)

(declare-fun d!694373 () Bool)

(assert (= bs!460683 (and d!694373 b!2363417)))

(declare-fun lambda!87082 () Int)

(assert (=> bs!460683 (not (= lambda!87082 lambda!87047))))

(assert (=> bs!460683 (= lambda!87082 lambda!87046)))

(declare-fun bs!460684 () Bool)

(assert (= bs!460684 (and d!694373 d!694371)))

(assert (=> bs!460684 (= lambda!87082 lambda!87077)))

(declare-fun bs!460685 () Bool)

(assert (= bs!460685 (and d!694373 b!2363802)))

(assert (=> bs!460685 (not (= lambda!87082 lambda!87074))))

(declare-fun bs!460686 () Bool)

(assert (= bs!460686 (and d!694373 b!2363801)))

(assert (=> bs!460686 (not (= lambda!87082 lambda!87073))))

(assert (=> d!694373 true))

(assert (=> d!694373 true))

(assert (=> d!694373 true))

(declare-fun lambda!87083 () Int)

(assert (=> bs!460683 (not (= lambda!87083 lambda!87046))))

(assert (=> bs!460684 (not (= lambda!87083 lambda!87077))))

(assert (=> bs!460685 (= lambda!87083 lambda!87074)))

(assert (=> bs!460686 (not (= lambda!87083 lambda!87073))))

(declare-fun bs!460687 () Bool)

(assert (= bs!460687 d!694373))

(assert (=> bs!460687 (not (= lambda!87083 lambda!87082))))

(assert (=> bs!460683 (= lambda!87083 lambda!87047)))

(assert (=> d!694373 true))

(assert (=> d!694373 true))

(assert (=> d!694373 true))

(assert (=> d!694373 (= (Exists!983 lambda!87082) (Exists!983 lambda!87083))))

(declare-fun lt!864875 () Unit!40877)

(declare-fun choose!13718 (Regex!6921 Regex!6921 List!28081) Unit!40877)

(assert (=> d!694373 (= lt!864875 (choose!13718 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460))))

(assert (=> d!694373 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694373 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!322 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460) lt!864875)))

(declare-fun m!2774997 () Bool)

(assert (=> bs!460687 m!2774997))

(declare-fun m!2774999 () Bool)

(assert (=> bs!460687 m!2774999))

(declare-fun m!2775001 () Bool)

(assert (=> bs!460687 m!2775001))

(assert (=> bs!460687 m!2774827))

(assert (=> b!2363417 d!694373))

(declare-fun b!2363845 () Bool)

(declare-fun e!1509578 () Bool)

(declare-fun lt!864883 () Option!5464)

(declare-fun ++!6887 (List!28081 List!28081) List!28081)

(declare-fun get!8494 (Option!5464) tuple2!27706)

(assert (=> b!2363845 (= e!1509578 (= (++!6887 (_1!16394 (get!8494 lt!864883)) (_2!16394 (get!8494 lt!864883))) s!9460))))

(declare-fun b!2363846 () Bool)

(declare-fun lt!864884 () Unit!40877)

(declare-fun lt!864882 () Unit!40877)

(assert (=> b!2363846 (= lt!864884 lt!864882)))

(assert (=> b!2363846 (= (++!6887 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!534 (List!28081 C!14000 List!28081 List!28081) Unit!40877)

(assert (=> b!2363846 (= lt!864882 (lemmaMoveElementToOtherListKeepsConcatEq!534 Nil!27983 (h!33384 s!9460) (t!208058 s!9460) s!9460))))

(declare-fun e!1509577 () Option!5464)

(assert (=> b!2363846 (= e!1509577 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460) s!9460))))

(declare-fun b!2363847 () Bool)

(declare-fun e!1509580 () Option!5464)

(assert (=> b!2363847 (= e!1509580 (Some!5463 (tuple2!27707 Nil!27983 s!9460)))))

(declare-fun b!2363848 () Bool)

(assert (=> b!2363848 (= e!1509577 None!5463)))

(declare-fun b!2363850 () Bool)

(declare-fun res!1003245 () Bool)

(assert (=> b!2363850 (=> (not res!1003245) (not e!1509578))))

(assert (=> b!2363850 (= res!1003245 (matchR!3038 (regTwo!14354 r!13927) (_2!16394 (get!8494 lt!864883))))))

(declare-fun b!2363851 () Bool)

(declare-fun e!1509579 () Bool)

(assert (=> b!2363851 (= e!1509579 (not (isDefined!4292 lt!864883)))))

(declare-fun b!2363852 () Bool)

(declare-fun res!1003246 () Bool)

(assert (=> b!2363852 (=> (not res!1003246) (not e!1509578))))

(assert (=> b!2363852 (= res!1003246 (matchR!3038 (regOne!14354 r!13927) (_1!16394 (get!8494 lt!864883))))))

(declare-fun b!2363853 () Bool)

(declare-fun e!1509581 () Bool)

(assert (=> b!2363853 (= e!1509581 (matchR!3038 (regTwo!14354 r!13927) s!9460))))

(declare-fun b!2363849 () Bool)

(assert (=> b!2363849 (= e!1509580 e!1509577)))

(declare-fun c!375715 () Bool)

(assert (=> b!2363849 (= c!375715 ((_ is Nil!27983) s!9460))))

(declare-fun d!694375 () Bool)

(assert (=> d!694375 e!1509579))

(declare-fun res!1003247 () Bool)

(assert (=> d!694375 (=> res!1003247 e!1509579)))

(assert (=> d!694375 (= res!1003247 e!1509578)))

(declare-fun res!1003244 () Bool)

(assert (=> d!694375 (=> (not res!1003244) (not e!1509578))))

(assert (=> d!694375 (= res!1003244 (isDefined!4292 lt!864883))))

(assert (=> d!694375 (= lt!864883 e!1509580)))

(declare-fun c!375714 () Bool)

(assert (=> d!694375 (= c!375714 e!1509581)))

(declare-fun res!1003243 () Bool)

(assert (=> d!694375 (=> (not res!1003243) (not e!1509581))))

(assert (=> d!694375 (= res!1003243 (matchR!3038 (regOne!14354 r!13927) Nil!27983))))

(assert (=> d!694375 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694375 (= (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460) lt!864883)))

(assert (= (and d!694375 res!1003243) b!2363853))

(assert (= (and d!694375 c!375714) b!2363847))

(assert (= (and d!694375 (not c!375714)) b!2363849))

(assert (= (and b!2363849 c!375715) b!2363848))

(assert (= (and b!2363849 (not c!375715)) b!2363846))

(assert (= (and d!694375 res!1003244) b!2363852))

(assert (= (and b!2363852 res!1003246) b!2363850))

(assert (= (and b!2363850 res!1003245) b!2363845))

(assert (= (and d!694375 (not res!1003247)) b!2363851))

(declare-fun m!2775003 () Bool)

(assert (=> b!2363846 m!2775003))

(assert (=> b!2363846 m!2775003))

(declare-fun m!2775005 () Bool)

(assert (=> b!2363846 m!2775005))

(declare-fun m!2775007 () Bool)

(assert (=> b!2363846 m!2775007))

(assert (=> b!2363846 m!2775003))

(declare-fun m!2775009 () Bool)

(assert (=> b!2363846 m!2775009))

(declare-fun m!2775011 () Bool)

(assert (=> b!2363845 m!2775011))

(declare-fun m!2775013 () Bool)

(assert (=> b!2363845 m!2775013))

(declare-fun m!2775015 () Bool)

(assert (=> b!2363851 m!2775015))

(assert (=> b!2363850 m!2775011))

(declare-fun m!2775017 () Bool)

(assert (=> b!2363850 m!2775017))

(declare-fun m!2775019 () Bool)

(assert (=> b!2363853 m!2775019))

(assert (=> d!694375 m!2775015))

(declare-fun m!2775021 () Bool)

(assert (=> d!694375 m!2775021))

(assert (=> d!694375 m!2774827))

(assert (=> b!2363852 m!2775011))

(declare-fun m!2775023 () Bool)

(assert (=> b!2363852 m!2775023))

(assert (=> b!2363417 d!694375))

(declare-fun d!694377 () Bool)

(assert (=> d!694377 (= (Exists!983 lambda!87046) (choose!13716 lambda!87046))))

(declare-fun bs!460688 () Bool)

(assert (= bs!460688 d!694377))

(declare-fun m!2775025 () Bool)

(assert (=> bs!460688 m!2775025))

(assert (=> b!2363417 d!694377))

(declare-fun b!2363854 () Bool)

(declare-fun res!1003250 () Bool)

(declare-fun e!1509583 () Bool)

(assert (=> b!2363854 (=> res!1003250 e!1509583)))

(assert (=> b!2363854 (= res!1003250 (not ((_ is Concat!11557) (regOne!14354 r!13927))))))

(declare-fun e!1509586 () Bool)

(assert (=> b!2363854 (= e!1509586 e!1509583)))

(declare-fun b!2363855 () Bool)

(declare-fun res!1003249 () Bool)

(declare-fun e!1509587 () Bool)

(assert (=> b!2363855 (=> (not res!1003249) (not e!1509587))))

(declare-fun call!143795 () Bool)

(assert (=> b!2363855 (= res!1003249 call!143795)))

(assert (=> b!2363855 (= e!1509586 e!1509587)))

(declare-fun b!2363856 () Bool)

(declare-fun e!1509585 () Bool)

(declare-fun e!1509584 () Bool)

(assert (=> b!2363856 (= e!1509585 e!1509584)))

(declare-fun res!1003251 () Bool)

(assert (=> b!2363856 (= res!1003251 (not (nullable!1985 (reg!7250 (regOne!14354 r!13927)))))))

(assert (=> b!2363856 (=> (not res!1003251) (not e!1509584))))

(declare-fun bm!143789 () Bool)

(declare-fun call!143796 () Bool)

(declare-fun call!143794 () Bool)

(assert (=> bm!143789 (= call!143796 call!143794)))

(declare-fun b!2363857 () Bool)

(assert (=> b!2363857 (= e!1509585 e!1509586)))

(declare-fun c!375716 () Bool)

(assert (=> b!2363857 (= c!375716 ((_ is Union!6921) (regOne!14354 r!13927)))))

(declare-fun b!2363858 () Bool)

(declare-fun e!1509588 () Bool)

(assert (=> b!2363858 (= e!1509583 e!1509588)))

(declare-fun res!1003252 () Bool)

(assert (=> b!2363858 (=> (not res!1003252) (not e!1509588))))

(assert (=> b!2363858 (= res!1003252 call!143796)))

(declare-fun b!2363859 () Bool)

(assert (=> b!2363859 (= e!1509588 call!143795)))

(declare-fun b!2363860 () Bool)

(declare-fun e!1509582 () Bool)

(assert (=> b!2363860 (= e!1509582 e!1509585)))

(declare-fun c!375717 () Bool)

(assert (=> b!2363860 (= c!375717 ((_ is Star!6921) (regOne!14354 r!13927)))))

(declare-fun bm!143790 () Bool)

(assert (=> bm!143790 (= call!143795 (validRegex!2651 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))

(declare-fun d!694379 () Bool)

(declare-fun res!1003248 () Bool)

(assert (=> d!694379 (=> res!1003248 e!1509582)))

(assert (=> d!694379 (= res!1003248 ((_ is ElementMatch!6921) (regOne!14354 r!13927)))))

(assert (=> d!694379 (= (validRegex!2651 (regOne!14354 r!13927)) e!1509582)))

(declare-fun b!2363861 () Bool)

(assert (=> b!2363861 (= e!1509584 call!143794)))

(declare-fun bm!143791 () Bool)

(assert (=> bm!143791 (= call!143794 (validRegex!2651 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))

(declare-fun b!2363862 () Bool)

(assert (=> b!2363862 (= e!1509587 call!143796)))

(assert (= (and d!694379 (not res!1003248)) b!2363860))

(assert (= (and b!2363860 c!375717) b!2363856))

(assert (= (and b!2363860 (not c!375717)) b!2363857))

(assert (= (and b!2363856 res!1003251) b!2363861))

(assert (= (and b!2363857 c!375716) b!2363855))

(assert (= (and b!2363857 (not c!375716)) b!2363854))

(assert (= (and b!2363855 res!1003249) b!2363862))

(assert (= (and b!2363854 (not res!1003250)) b!2363858))

(assert (= (and b!2363858 res!1003252) b!2363859))

(assert (= (or b!2363855 b!2363859) bm!143790))

(assert (= (or b!2363862 b!2363858) bm!143789))

(assert (= (or b!2363861 bm!143789) bm!143791))

(declare-fun m!2775027 () Bool)

(assert (=> b!2363856 m!2775027))

(declare-fun m!2775029 () Bool)

(assert (=> bm!143790 m!2775029))

(declare-fun m!2775031 () Bool)

(assert (=> bm!143791 m!2775031))

(assert (=> b!2363417 d!694379))

(declare-fun b!2363874 () Bool)

(declare-fun e!1509591 () Bool)

(declare-fun tp!755906 () Bool)

(declare-fun tp!755905 () Bool)

(assert (=> b!2363874 (= e!1509591 (and tp!755906 tp!755905))))

(assert (=> b!2363419 (= tp!755841 e!1509591)))

(declare-fun b!2363876 () Bool)

(declare-fun tp!755908 () Bool)

(declare-fun tp!755909 () Bool)

(assert (=> b!2363876 (= e!1509591 (and tp!755908 tp!755909))))

(declare-fun b!2363873 () Bool)

(assert (=> b!2363873 (= e!1509591 tp_is_empty!11255)))

(declare-fun b!2363875 () Bool)

(declare-fun tp!755907 () Bool)

(assert (=> b!2363875 (= e!1509591 tp!755907)))

(assert (= (and b!2363419 ((_ is ElementMatch!6921) (reg!7250 r!13927))) b!2363873))

(assert (= (and b!2363419 ((_ is Concat!11557) (reg!7250 r!13927))) b!2363874))

(assert (= (and b!2363419 ((_ is Star!6921) (reg!7250 r!13927))) b!2363875))

(assert (= (and b!2363419 ((_ is Union!6921) (reg!7250 r!13927))) b!2363876))

(declare-fun b!2363878 () Bool)

(declare-fun e!1509592 () Bool)

(declare-fun tp!755911 () Bool)

(declare-fun tp!755910 () Bool)

(assert (=> b!2363878 (= e!1509592 (and tp!755911 tp!755910))))

(assert (=> b!2363414 (= tp!755844 e!1509592)))

(declare-fun b!2363880 () Bool)

(declare-fun tp!755913 () Bool)

(declare-fun tp!755914 () Bool)

(assert (=> b!2363880 (= e!1509592 (and tp!755913 tp!755914))))

(declare-fun b!2363877 () Bool)

(assert (=> b!2363877 (= e!1509592 tp_is_empty!11255)))

(declare-fun b!2363879 () Bool)

(declare-fun tp!755912 () Bool)

(assert (=> b!2363879 (= e!1509592 tp!755912)))

(assert (= (and b!2363414 ((_ is ElementMatch!6921) (h!33383 l!9164))) b!2363877))

(assert (= (and b!2363414 ((_ is Concat!11557) (h!33383 l!9164))) b!2363878))

(assert (= (and b!2363414 ((_ is Star!6921) (h!33383 l!9164))) b!2363879))

(assert (= (and b!2363414 ((_ is Union!6921) (h!33383 l!9164))) b!2363880))

(declare-fun b!2363885 () Bool)

(declare-fun e!1509595 () Bool)

(declare-fun tp!755919 () Bool)

(declare-fun tp!755920 () Bool)

(assert (=> b!2363885 (= e!1509595 (and tp!755919 tp!755920))))

(assert (=> b!2363414 (= tp!755838 e!1509595)))

(assert (= (and b!2363414 ((_ is Cons!27982) (t!208057 l!9164))) b!2363885))

(declare-fun b!2363887 () Bool)

(declare-fun e!1509596 () Bool)

(declare-fun tp!755922 () Bool)

(declare-fun tp!755921 () Bool)

(assert (=> b!2363887 (= e!1509596 (and tp!755922 tp!755921))))

(assert (=> b!2363418 (= tp!755843 e!1509596)))

(declare-fun b!2363889 () Bool)

(declare-fun tp!755924 () Bool)

(declare-fun tp!755925 () Bool)

(assert (=> b!2363889 (= e!1509596 (and tp!755924 tp!755925))))

(declare-fun b!2363886 () Bool)

(assert (=> b!2363886 (= e!1509596 tp_is_empty!11255)))

(declare-fun b!2363888 () Bool)

(declare-fun tp!755923 () Bool)

(assert (=> b!2363888 (= e!1509596 tp!755923)))

(assert (= (and b!2363418 ((_ is ElementMatch!6921) (regOne!14355 r!13927))) b!2363886))

(assert (= (and b!2363418 ((_ is Concat!11557) (regOne!14355 r!13927))) b!2363887))

(assert (= (and b!2363418 ((_ is Star!6921) (regOne!14355 r!13927))) b!2363888))

(assert (= (and b!2363418 ((_ is Union!6921) (regOne!14355 r!13927))) b!2363889))

(declare-fun b!2363891 () Bool)

(declare-fun e!1509597 () Bool)

(declare-fun tp!755927 () Bool)

(declare-fun tp!755926 () Bool)

(assert (=> b!2363891 (= e!1509597 (and tp!755927 tp!755926))))

(assert (=> b!2363418 (= tp!755839 e!1509597)))

(declare-fun b!2363893 () Bool)

(declare-fun tp!755929 () Bool)

(declare-fun tp!755930 () Bool)

(assert (=> b!2363893 (= e!1509597 (and tp!755929 tp!755930))))

(declare-fun b!2363890 () Bool)

(assert (=> b!2363890 (= e!1509597 tp_is_empty!11255)))

(declare-fun b!2363892 () Bool)

(declare-fun tp!755928 () Bool)

(assert (=> b!2363892 (= e!1509597 tp!755928)))

(assert (= (and b!2363418 ((_ is ElementMatch!6921) (regTwo!14355 r!13927))) b!2363890))

(assert (= (and b!2363418 ((_ is Concat!11557) (regTwo!14355 r!13927))) b!2363891))

(assert (= (and b!2363418 ((_ is Star!6921) (regTwo!14355 r!13927))) b!2363892))

(assert (= (and b!2363418 ((_ is Union!6921) (regTwo!14355 r!13927))) b!2363893))

(declare-fun b!2363895 () Bool)

(declare-fun e!1509598 () Bool)

(declare-fun tp!755932 () Bool)

(declare-fun tp!755931 () Bool)

(assert (=> b!2363895 (= e!1509598 (and tp!755932 tp!755931))))

(assert (=> b!2363413 (= tp!755842 e!1509598)))

(declare-fun b!2363897 () Bool)

(declare-fun tp!755934 () Bool)

(declare-fun tp!755935 () Bool)

(assert (=> b!2363897 (= e!1509598 (and tp!755934 tp!755935))))

(declare-fun b!2363894 () Bool)

(assert (=> b!2363894 (= e!1509598 tp_is_empty!11255)))

(declare-fun b!2363896 () Bool)

(declare-fun tp!755933 () Bool)

(assert (=> b!2363896 (= e!1509598 tp!755933)))

(assert (= (and b!2363413 ((_ is ElementMatch!6921) (regOne!14354 r!13927))) b!2363894))

(assert (= (and b!2363413 ((_ is Concat!11557) (regOne!14354 r!13927))) b!2363895))

(assert (= (and b!2363413 ((_ is Star!6921) (regOne!14354 r!13927))) b!2363896))

(assert (= (and b!2363413 ((_ is Union!6921) (regOne!14354 r!13927))) b!2363897))

(declare-fun b!2363899 () Bool)

(declare-fun e!1509599 () Bool)

(declare-fun tp!755937 () Bool)

(declare-fun tp!755936 () Bool)

(assert (=> b!2363899 (= e!1509599 (and tp!755937 tp!755936))))

(assert (=> b!2363413 (= tp!755840 e!1509599)))

(declare-fun b!2363901 () Bool)

(declare-fun tp!755939 () Bool)

(declare-fun tp!755940 () Bool)

(assert (=> b!2363901 (= e!1509599 (and tp!755939 tp!755940))))

(declare-fun b!2363898 () Bool)

(assert (=> b!2363898 (= e!1509599 tp_is_empty!11255)))

(declare-fun b!2363900 () Bool)

(declare-fun tp!755938 () Bool)

(assert (=> b!2363900 (= e!1509599 tp!755938)))

(assert (= (and b!2363413 ((_ is ElementMatch!6921) (regTwo!14354 r!13927))) b!2363898))

(assert (= (and b!2363413 ((_ is Concat!11557) (regTwo!14354 r!13927))) b!2363899))

(assert (= (and b!2363413 ((_ is Star!6921) (regTwo!14354 r!13927))) b!2363900))

(assert (= (and b!2363413 ((_ is Union!6921) (regTwo!14354 r!13927))) b!2363901))

(declare-fun b!2363906 () Bool)

(declare-fun e!1509602 () Bool)

(declare-fun tp!755943 () Bool)

(assert (=> b!2363906 (= e!1509602 (and tp_is_empty!11255 tp!755943))))

(assert (=> b!2363422 (= tp!755845 e!1509602)))

(assert (= (and b!2363422 ((_ is Cons!27983) (t!208058 s!9460))) b!2363906))

(declare-fun b_lambda!73825 () Bool)

(assert (= b_lambda!73823 (or start!231966 b_lambda!73825)))

(declare-fun bs!460689 () Bool)

(declare-fun d!694381 () Bool)

(assert (= bs!460689 (and d!694381 start!231966)))

(assert (=> bs!460689 (= (dynLambda!12056 lambda!87045 (h!33383 l!9164)) (validRegex!2651 (h!33383 l!9164)))))

(declare-fun m!2775033 () Bool)

(assert (=> bs!460689 m!2775033))

(assert (=> b!2363813 d!694381))

(check-sat (not b!2363595) (not b_lambda!73825) (not b!2363875) (not b!2363879) (not b!2363874) (not b!2363519) (not b!2363593) (not bs!460689) (not b!2363878) (not b!2363684) (not b!2363885) (not b!2363892) (not b!2363602) tp_is_empty!11255 (not bm!143790) (not b!2363899) (not b!2363851) (not b!2363901) (not bm!143779) (not b!2363596) (not b!2363897) (not b!2363888) (not b!2363895) (not b!2363896) (not d!694343) (not b!2363887) (not b!2363856) (not b!2363893) (not d!694377) (not bm!143760) (not b!2363679) (not d!694375) (not b!2363853) (not b!2363683) (not b!2363880) (not b!2363852) (not b!2363814) (not d!694369) (not d!694335) (not b!2363889) (not b!2363676) (not d!694371) (not b!2363681) (not bm!143761) (not bm!143787) (not b!2363891) (not b!2363672) (not bm!143791) (not b!2363845) (not b!2363598) (not b!2363800) (not b!2363594) (not d!694373) (not b!2363900) (not d!694363) (not d!694367) (not b!2363807) (not b!2363846) (not b!2363599) (not bm!143788) (not b!2363876) (not b!2363906) (not b!2363850))
(check-sat)
(get-model)

(assert (=> d!694363 d!694343))

(assert (=> d!694363 d!694359))

(declare-fun d!694485 () Bool)

(assert (=> d!694485 (= (matchR!3038 r!13927 s!9460) (matchRSpec!770 r!13927 s!9460))))

(assert (=> d!694485 true))

(declare-fun _$88!3256 () Unit!40877)

(assert (=> d!694485 (= (choose!13715 r!13927 s!9460) _$88!3256)))

(declare-fun bs!460751 () Bool)

(assert (= bs!460751 d!694485))

(assert (=> bs!460751 m!2774811))

(assert (=> bs!460751 m!2774813))

(assert (=> d!694363 d!694485))

(declare-fun b!2364273 () Bool)

(declare-fun res!1003373 () Bool)

(declare-fun e!1509781 () Bool)

(assert (=> b!2364273 (=> res!1003373 e!1509781)))

(assert (=> b!2364273 (= res!1003373 (not ((_ is Concat!11557) r!13927)))))

(declare-fun e!1509784 () Bool)

(assert (=> b!2364273 (= e!1509784 e!1509781)))

(declare-fun b!2364274 () Bool)

(declare-fun res!1003372 () Bool)

(declare-fun e!1509785 () Bool)

(assert (=> b!2364274 (=> (not res!1003372) (not e!1509785))))

(declare-fun call!143840 () Bool)

(assert (=> b!2364274 (= res!1003372 call!143840)))

(assert (=> b!2364274 (= e!1509784 e!1509785)))

(declare-fun b!2364275 () Bool)

(declare-fun e!1509783 () Bool)

(declare-fun e!1509782 () Bool)

(assert (=> b!2364275 (= e!1509783 e!1509782)))

(declare-fun res!1003374 () Bool)

(assert (=> b!2364275 (= res!1003374 (not (nullable!1985 (reg!7250 r!13927))))))

(assert (=> b!2364275 (=> (not res!1003374) (not e!1509782))))

(declare-fun bm!143834 () Bool)

(declare-fun call!143841 () Bool)

(declare-fun call!143839 () Bool)

(assert (=> bm!143834 (= call!143841 call!143839)))

(declare-fun b!2364276 () Bool)

(assert (=> b!2364276 (= e!1509783 e!1509784)))

(declare-fun c!375781 () Bool)

(assert (=> b!2364276 (= c!375781 ((_ is Union!6921) r!13927))))

(declare-fun b!2364277 () Bool)

(declare-fun e!1509786 () Bool)

(assert (=> b!2364277 (= e!1509781 e!1509786)))

(declare-fun res!1003375 () Bool)

(assert (=> b!2364277 (=> (not res!1003375) (not e!1509786))))

(assert (=> b!2364277 (= res!1003375 call!143841)))

(declare-fun b!2364278 () Bool)

(assert (=> b!2364278 (= e!1509786 call!143840)))

(declare-fun b!2364279 () Bool)

(declare-fun e!1509780 () Bool)

(assert (=> b!2364279 (= e!1509780 e!1509783)))

(declare-fun c!375782 () Bool)

(assert (=> b!2364279 (= c!375782 ((_ is Star!6921) r!13927))))

(declare-fun bm!143835 () Bool)

(assert (=> bm!143835 (= call!143840 (validRegex!2651 (ite c!375781 (regOne!14355 r!13927) (regTwo!14354 r!13927))))))

(declare-fun d!694487 () Bool)

(declare-fun res!1003371 () Bool)

(assert (=> d!694487 (=> res!1003371 e!1509780)))

(assert (=> d!694487 (= res!1003371 ((_ is ElementMatch!6921) r!13927))))

(assert (=> d!694487 (= (validRegex!2651 r!13927) e!1509780)))

(declare-fun b!2364280 () Bool)

(assert (=> b!2364280 (= e!1509782 call!143839)))

(declare-fun bm!143836 () Bool)

(assert (=> bm!143836 (= call!143839 (validRegex!2651 (ite c!375782 (reg!7250 r!13927) (ite c!375781 (regTwo!14355 r!13927) (regOne!14354 r!13927)))))))

(declare-fun b!2364281 () Bool)

(assert (=> b!2364281 (= e!1509785 call!143841)))

(assert (= (and d!694487 (not res!1003371)) b!2364279))

(assert (= (and b!2364279 c!375782) b!2364275))

(assert (= (and b!2364279 (not c!375782)) b!2364276))

(assert (= (and b!2364275 res!1003374) b!2364280))

(assert (= (and b!2364276 c!375781) b!2364274))

(assert (= (and b!2364276 (not c!375781)) b!2364273))

(assert (= (and b!2364274 res!1003372) b!2364281))

(assert (= (and b!2364273 (not res!1003373)) b!2364277))

(assert (= (and b!2364277 res!1003375) b!2364278))

(assert (= (or b!2364274 b!2364278) bm!143835))

(assert (= (or b!2364281 b!2364277) bm!143834))

(assert (= (or b!2364280 bm!143834) bm!143836))

(declare-fun m!2775271 () Bool)

(assert (=> b!2364275 m!2775271))

(declare-fun m!2775273 () Bool)

(assert (=> bm!143835 m!2775273))

(declare-fun m!2775275 () Bool)

(assert (=> bm!143836 m!2775275))

(assert (=> d!694363 d!694487))

(declare-fun b!2364282 () Bool)

(declare-fun res!1003378 () Bool)

(declare-fun e!1509788 () Bool)

(assert (=> b!2364282 (=> res!1003378 e!1509788)))

(assert (=> b!2364282 (= res!1003378 (not ((_ is Concat!11557) (h!33383 l!9164))))))

(declare-fun e!1509791 () Bool)

(assert (=> b!2364282 (= e!1509791 e!1509788)))

(declare-fun b!2364283 () Bool)

(declare-fun res!1003377 () Bool)

(declare-fun e!1509792 () Bool)

(assert (=> b!2364283 (=> (not res!1003377) (not e!1509792))))

(declare-fun call!143843 () Bool)

(assert (=> b!2364283 (= res!1003377 call!143843)))

(assert (=> b!2364283 (= e!1509791 e!1509792)))

(declare-fun b!2364284 () Bool)

(declare-fun e!1509790 () Bool)

(declare-fun e!1509789 () Bool)

(assert (=> b!2364284 (= e!1509790 e!1509789)))

(declare-fun res!1003379 () Bool)

(assert (=> b!2364284 (= res!1003379 (not (nullable!1985 (reg!7250 (h!33383 l!9164)))))))

(assert (=> b!2364284 (=> (not res!1003379) (not e!1509789))))

(declare-fun bm!143837 () Bool)

(declare-fun call!143844 () Bool)

(declare-fun call!143842 () Bool)

(assert (=> bm!143837 (= call!143844 call!143842)))

(declare-fun b!2364285 () Bool)

(assert (=> b!2364285 (= e!1509790 e!1509791)))

(declare-fun c!375783 () Bool)

(assert (=> b!2364285 (= c!375783 ((_ is Union!6921) (h!33383 l!9164)))))

(declare-fun b!2364286 () Bool)

(declare-fun e!1509793 () Bool)

(assert (=> b!2364286 (= e!1509788 e!1509793)))

(declare-fun res!1003380 () Bool)

(assert (=> b!2364286 (=> (not res!1003380) (not e!1509793))))

(assert (=> b!2364286 (= res!1003380 call!143844)))

(declare-fun b!2364287 () Bool)

(assert (=> b!2364287 (= e!1509793 call!143843)))

(declare-fun b!2364288 () Bool)

(declare-fun e!1509787 () Bool)

(assert (=> b!2364288 (= e!1509787 e!1509790)))

(declare-fun c!375784 () Bool)

(assert (=> b!2364288 (= c!375784 ((_ is Star!6921) (h!33383 l!9164)))))

(declare-fun bm!143838 () Bool)

(assert (=> bm!143838 (= call!143843 (validRegex!2651 (ite c!375783 (regOne!14355 (h!33383 l!9164)) (regTwo!14354 (h!33383 l!9164)))))))

(declare-fun d!694489 () Bool)

(declare-fun res!1003376 () Bool)

(assert (=> d!694489 (=> res!1003376 e!1509787)))

(assert (=> d!694489 (= res!1003376 ((_ is ElementMatch!6921) (h!33383 l!9164)))))

(assert (=> d!694489 (= (validRegex!2651 (h!33383 l!9164)) e!1509787)))

(declare-fun b!2364289 () Bool)

(assert (=> b!2364289 (= e!1509789 call!143842)))

(declare-fun bm!143839 () Bool)

(assert (=> bm!143839 (= call!143842 (validRegex!2651 (ite c!375784 (reg!7250 (h!33383 l!9164)) (ite c!375783 (regTwo!14355 (h!33383 l!9164)) (regOne!14354 (h!33383 l!9164))))))))

(declare-fun b!2364290 () Bool)

(assert (=> b!2364290 (= e!1509792 call!143844)))

(assert (= (and d!694489 (not res!1003376)) b!2364288))

(assert (= (and b!2364288 c!375784) b!2364284))

(assert (= (and b!2364288 (not c!375784)) b!2364285))

(assert (= (and b!2364284 res!1003379) b!2364289))

(assert (= (and b!2364285 c!375783) b!2364283))

(assert (= (and b!2364285 (not c!375783)) b!2364282))

(assert (= (and b!2364283 res!1003377) b!2364290))

(assert (= (and b!2364282 (not res!1003378)) b!2364286))

(assert (= (and b!2364286 res!1003380) b!2364287))

(assert (= (or b!2364283 b!2364287) bm!143838))

(assert (= (or b!2364290 b!2364286) bm!143837))

(assert (= (or b!2364289 bm!143837) bm!143839))

(declare-fun m!2775277 () Bool)

(assert (=> b!2364284 m!2775277))

(declare-fun m!2775279 () Bool)

(assert (=> bm!143838 m!2775279))

(declare-fun m!2775281 () Bool)

(assert (=> bm!143839 m!2775281))

(assert (=> bs!460689 d!694489))

(declare-fun d!694491 () Bool)

(assert (=> d!694491 true))

(assert (=> d!694491 true))

(declare-fun res!1003383 () Bool)

(assert (=> d!694491 (= (choose!13716 lambda!87047) res!1003383)))

(assert (=> d!694367 d!694491))

(declare-fun b!2364291 () Bool)

(declare-fun e!1509798 () Bool)

(assert (=> b!2364291 (= e!1509798 (not (= (head!5091 (_2!16394 (get!8494 lt!864883))) (c!375623 (regTwo!14354 r!13927)))))))

(declare-fun b!2364292 () Bool)

(declare-fun e!1509799 () Bool)

(declare-fun lt!864905 () Bool)

(declare-fun call!143845 () Bool)

(assert (=> b!2364292 (= e!1509799 (= lt!864905 call!143845))))

(declare-fun b!2364293 () Bool)

(declare-fun res!1003387 () Bool)

(declare-fun e!1509800 () Bool)

(assert (=> b!2364293 (=> res!1003387 e!1509800)))

(declare-fun e!1509797 () Bool)

(assert (=> b!2364293 (= res!1003387 e!1509797)))

(declare-fun res!1003386 () Bool)

(assert (=> b!2364293 (=> (not res!1003386) (not e!1509797))))

(assert (=> b!2364293 (= res!1003386 lt!864905)))

(declare-fun b!2364294 () Bool)

(declare-fun e!1509795 () Bool)

(assert (=> b!2364294 (= e!1509795 e!1509798)))

(declare-fun res!1003384 () Bool)

(assert (=> b!2364294 (=> res!1003384 e!1509798)))

(assert (=> b!2364294 (= res!1003384 call!143845)))

(declare-fun b!2364295 () Bool)

(declare-fun res!1003385 () Bool)

(assert (=> b!2364295 (=> res!1003385 e!1509798)))

(assert (=> b!2364295 (= res!1003385 (not (isEmpty!15901 (tail!3360 (_2!16394 (get!8494 lt!864883))))))))

(declare-fun b!2364296 () Bool)

(declare-fun res!1003391 () Bool)

(assert (=> b!2364296 (=> res!1003391 e!1509800)))

(assert (=> b!2364296 (= res!1003391 (not ((_ is ElementMatch!6921) (regTwo!14354 r!13927))))))

(declare-fun e!1509794 () Bool)

(assert (=> b!2364296 (= e!1509794 e!1509800)))

(declare-fun d!694493 () Bool)

(assert (=> d!694493 e!1509799))

(declare-fun c!375787 () Bool)

(assert (=> d!694493 (= c!375787 ((_ is EmptyExpr!6921) (regTwo!14354 r!13927)))))

(declare-fun e!1509796 () Bool)

(assert (=> d!694493 (= lt!864905 e!1509796)))

(declare-fun c!375785 () Bool)

(assert (=> d!694493 (= c!375785 (isEmpty!15901 (_2!16394 (get!8494 lt!864883))))))

(assert (=> d!694493 (validRegex!2651 (regTwo!14354 r!13927))))

(assert (=> d!694493 (= (matchR!3038 (regTwo!14354 r!13927) (_2!16394 (get!8494 lt!864883))) lt!864905)))

(declare-fun b!2364297 () Bool)

(declare-fun res!1003388 () Bool)

(assert (=> b!2364297 (=> (not res!1003388) (not e!1509797))))

(assert (=> b!2364297 (= res!1003388 (not call!143845))))

(declare-fun b!2364298 () Bool)

(assert (=> b!2364298 (= e!1509796 (nullable!1985 (regTwo!14354 r!13927)))))

(declare-fun b!2364299 () Bool)

(assert (=> b!2364299 (= e!1509794 (not lt!864905))))

(declare-fun b!2364300 () Bool)

(assert (=> b!2364300 (= e!1509797 (= (head!5091 (_2!16394 (get!8494 lt!864883))) (c!375623 (regTwo!14354 r!13927))))))

(declare-fun bm!143840 () Bool)

(assert (=> bm!143840 (= call!143845 (isEmpty!15901 (_2!16394 (get!8494 lt!864883))))))

(declare-fun b!2364301 () Bool)

(assert (=> b!2364301 (= e!1509800 e!1509795)))

(declare-fun res!1003390 () Bool)

(assert (=> b!2364301 (=> (not res!1003390) (not e!1509795))))

(assert (=> b!2364301 (= res!1003390 (not lt!864905))))

(declare-fun b!2364302 () Bool)

(declare-fun res!1003389 () Bool)

(assert (=> b!2364302 (=> (not res!1003389) (not e!1509797))))

(assert (=> b!2364302 (= res!1003389 (isEmpty!15901 (tail!3360 (_2!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364303 () Bool)

(assert (=> b!2364303 (= e!1509796 (matchR!3038 (derivativeStep!1644 (regTwo!14354 r!13927) (head!5091 (_2!16394 (get!8494 lt!864883)))) (tail!3360 (_2!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364304 () Bool)

(assert (=> b!2364304 (= e!1509799 e!1509794)))

(declare-fun c!375786 () Bool)

(assert (=> b!2364304 (= c!375786 ((_ is EmptyLang!6921) (regTwo!14354 r!13927)))))

(assert (= (and d!694493 c!375785) b!2364298))

(assert (= (and d!694493 (not c!375785)) b!2364303))

(assert (= (and d!694493 c!375787) b!2364292))

(assert (= (and d!694493 (not c!375787)) b!2364304))

(assert (= (and b!2364304 c!375786) b!2364299))

(assert (= (and b!2364304 (not c!375786)) b!2364296))

(assert (= (and b!2364296 (not res!1003391)) b!2364293))

(assert (= (and b!2364293 res!1003386) b!2364297))

(assert (= (and b!2364297 res!1003388) b!2364302))

(assert (= (and b!2364302 res!1003389) b!2364300))

(assert (= (and b!2364293 (not res!1003387)) b!2364301))

(assert (= (and b!2364301 res!1003390) b!2364294))

(assert (= (and b!2364294 (not res!1003384)) b!2364295))

(assert (= (and b!2364295 (not res!1003385)) b!2364291))

(assert (= (or b!2364292 b!2364294 b!2364297) bm!143840))

(declare-fun m!2775283 () Bool)

(assert (=> b!2364300 m!2775283))

(declare-fun m!2775285 () Bool)

(assert (=> b!2364298 m!2775285))

(declare-fun m!2775287 () Bool)

(assert (=> d!694493 m!2775287))

(assert (=> d!694493 m!2774833))

(assert (=> b!2364303 m!2775283))

(assert (=> b!2364303 m!2775283))

(declare-fun m!2775289 () Bool)

(assert (=> b!2364303 m!2775289))

(declare-fun m!2775291 () Bool)

(assert (=> b!2364303 m!2775291))

(assert (=> b!2364303 m!2775289))

(assert (=> b!2364303 m!2775291))

(declare-fun m!2775293 () Bool)

(assert (=> b!2364303 m!2775293))

(assert (=> b!2364302 m!2775291))

(assert (=> b!2364302 m!2775291))

(declare-fun m!2775295 () Bool)

(assert (=> b!2364302 m!2775295))

(assert (=> b!2364291 m!2775283))

(assert (=> b!2364295 m!2775291))

(assert (=> b!2364295 m!2775291))

(assert (=> b!2364295 m!2775295))

(assert (=> bm!143840 m!2775287))

(assert (=> b!2363850 d!694493))

(declare-fun d!694495 () Bool)

(assert (=> d!694495 (= (get!8494 lt!864883) (v!30871 lt!864883))))

(assert (=> b!2363850 d!694495))

(declare-fun b!2364316 () Bool)

(declare-fun e!1509806 () Bool)

(declare-fun lt!864908 () List!28081)

(assert (=> b!2364316 (= e!1509806 (or (not (= (t!208058 s!9460) Nil!27983)) (= lt!864908 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)))))))

(declare-fun b!2364314 () Bool)

(declare-fun e!1509805 () List!28081)

(assert (=> b!2364314 (= e!1509805 (Cons!27983 (h!33384 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))) (++!6887 (t!208058 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))) (t!208058 s!9460))))))

(declare-fun b!2364313 () Bool)

(assert (=> b!2364313 (= e!1509805 (t!208058 s!9460))))

(declare-fun d!694497 () Bool)

(assert (=> d!694497 e!1509806))

(declare-fun res!1003396 () Bool)

(assert (=> d!694497 (=> (not res!1003396) (not e!1509806))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3801 (List!28081) (InoxSet C!14000))

(assert (=> d!694497 (= res!1003396 (= (content!3801 lt!864908) ((_ map or) (content!3801 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))) (content!3801 (t!208058 s!9460)))))))

(assert (=> d!694497 (= lt!864908 e!1509805)))

(declare-fun c!375790 () Bool)

(assert (=> d!694497 (= c!375790 ((_ is Nil!27983) (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))))))

(assert (=> d!694497 (= (++!6887 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460)) lt!864908)))

(declare-fun b!2364315 () Bool)

(declare-fun res!1003397 () Bool)

(assert (=> b!2364315 (=> (not res!1003397) (not e!1509806))))

(declare-fun size!22139 (List!28081) Int)

(assert (=> b!2364315 (= res!1003397 (= (size!22139 lt!864908) (+ (size!22139 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))) (size!22139 (t!208058 s!9460)))))))

(assert (= (and d!694497 c!375790) b!2364313))

(assert (= (and d!694497 (not c!375790)) b!2364314))

(assert (= (and d!694497 res!1003396) b!2364315))

(assert (= (and b!2364315 res!1003397) b!2364316))

(declare-fun m!2775297 () Bool)

(assert (=> b!2364314 m!2775297))

(declare-fun m!2775299 () Bool)

(assert (=> d!694497 m!2775299))

(assert (=> d!694497 m!2775003))

(declare-fun m!2775301 () Bool)

(assert (=> d!694497 m!2775301))

(declare-fun m!2775303 () Bool)

(assert (=> d!694497 m!2775303))

(declare-fun m!2775305 () Bool)

(assert (=> b!2364315 m!2775305))

(assert (=> b!2364315 m!2775003))

(declare-fun m!2775307 () Bool)

(assert (=> b!2364315 m!2775307))

(declare-fun m!2775309 () Bool)

(assert (=> b!2364315 m!2775309))

(assert (=> b!2363846 d!694497))

(declare-fun b!2364320 () Bool)

(declare-fun e!1509808 () Bool)

(declare-fun lt!864909 () List!28081)

(assert (=> b!2364320 (= e!1509808 (or (not (= (Cons!27983 (h!33384 s!9460) Nil!27983) Nil!27983)) (= lt!864909 Nil!27983)))))

(declare-fun b!2364318 () Bool)

(declare-fun e!1509807 () List!28081)

(assert (=> b!2364318 (= e!1509807 (Cons!27983 (h!33384 Nil!27983) (++!6887 (t!208058 Nil!27983) (Cons!27983 (h!33384 s!9460) Nil!27983))))))

(declare-fun b!2364317 () Bool)

(assert (=> b!2364317 (= e!1509807 (Cons!27983 (h!33384 s!9460) Nil!27983))))

(declare-fun d!694499 () Bool)

(assert (=> d!694499 e!1509808))

(declare-fun res!1003398 () Bool)

(assert (=> d!694499 (=> (not res!1003398) (not e!1509808))))

(assert (=> d!694499 (= res!1003398 (= (content!3801 lt!864909) ((_ map or) (content!3801 Nil!27983) (content!3801 (Cons!27983 (h!33384 s!9460) Nil!27983)))))))

(assert (=> d!694499 (= lt!864909 e!1509807)))

(declare-fun c!375791 () Bool)

(assert (=> d!694499 (= c!375791 ((_ is Nil!27983) Nil!27983))))

(assert (=> d!694499 (= (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) lt!864909)))

(declare-fun b!2364319 () Bool)

(declare-fun res!1003399 () Bool)

(assert (=> b!2364319 (=> (not res!1003399) (not e!1509808))))

(assert (=> b!2364319 (= res!1003399 (= (size!22139 lt!864909) (+ (size!22139 Nil!27983) (size!22139 (Cons!27983 (h!33384 s!9460) Nil!27983)))))))

(assert (= (and d!694499 c!375791) b!2364317))

(assert (= (and d!694499 (not c!375791)) b!2364318))

(assert (= (and d!694499 res!1003398) b!2364319))

(assert (= (and b!2364319 res!1003399) b!2364320))

(declare-fun m!2775311 () Bool)

(assert (=> b!2364318 m!2775311))

(declare-fun m!2775313 () Bool)

(assert (=> d!694499 m!2775313))

(declare-fun m!2775315 () Bool)

(assert (=> d!694499 m!2775315))

(declare-fun m!2775317 () Bool)

(assert (=> d!694499 m!2775317))

(declare-fun m!2775319 () Bool)

(assert (=> b!2364319 m!2775319))

(declare-fun m!2775321 () Bool)

(assert (=> b!2364319 m!2775321))

(declare-fun m!2775323 () Bool)

(assert (=> b!2364319 m!2775323))

(assert (=> b!2363846 d!694499))

(declare-fun d!694501 () Bool)

(assert (=> d!694501 (= (++!6887 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460)) s!9460)))

(declare-fun lt!864912 () Unit!40877)

(declare-fun choose!13719 (List!28081 C!14000 List!28081 List!28081) Unit!40877)

(assert (=> d!694501 (= lt!864912 (choose!13719 Nil!27983 (h!33384 s!9460) (t!208058 s!9460) s!9460))))

(assert (=> d!694501 (= (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) (t!208058 s!9460))) s!9460)))

(assert (=> d!694501 (= (lemmaMoveElementToOtherListKeepsConcatEq!534 Nil!27983 (h!33384 s!9460) (t!208058 s!9460) s!9460) lt!864912)))

(declare-fun bs!460752 () Bool)

(assert (= bs!460752 d!694501))

(assert (=> bs!460752 m!2775003))

(assert (=> bs!460752 m!2775003))

(assert (=> bs!460752 m!2775005))

(declare-fun m!2775325 () Bool)

(assert (=> bs!460752 m!2775325))

(declare-fun m!2775327 () Bool)

(assert (=> bs!460752 m!2775327))

(assert (=> b!2363846 d!694501))

(declare-fun b!2364321 () Bool)

(declare-fun e!1509810 () Bool)

(declare-fun lt!864914 () Option!5464)

(assert (=> b!2364321 (= e!1509810 (= (++!6887 (_1!16394 (get!8494 lt!864914)) (_2!16394 (get!8494 lt!864914))) s!9460))))

(declare-fun b!2364322 () Bool)

(declare-fun lt!864915 () Unit!40877)

(declare-fun lt!864913 () Unit!40877)

(assert (=> b!2364322 (= lt!864915 lt!864913)))

(assert (=> b!2364322 (= (++!6887 (++!6887 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (Cons!27983 (h!33384 (t!208058 s!9460)) Nil!27983)) (t!208058 (t!208058 s!9460))) s!9460)))

(assert (=> b!2364322 (= lt!864913 (lemmaMoveElementToOtherListKeepsConcatEq!534 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (h!33384 (t!208058 s!9460)) (t!208058 (t!208058 s!9460)) s!9460))))

(declare-fun e!1509809 () Option!5464)

(assert (=> b!2364322 (= e!1509809 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) (++!6887 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (Cons!27983 (h!33384 (t!208058 s!9460)) Nil!27983)) (t!208058 (t!208058 s!9460)) s!9460))))

(declare-fun b!2364323 () Bool)

(declare-fun e!1509812 () Option!5464)

(assert (=> b!2364323 (= e!1509812 (Some!5463 (tuple2!27707 (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460))))))

(declare-fun b!2364324 () Bool)

(assert (=> b!2364324 (= e!1509809 None!5463)))

(declare-fun b!2364326 () Bool)

(declare-fun res!1003402 () Bool)

(assert (=> b!2364326 (=> (not res!1003402) (not e!1509810))))

(assert (=> b!2364326 (= res!1003402 (matchR!3038 (regTwo!14354 r!13927) (_2!16394 (get!8494 lt!864914))))))

(declare-fun b!2364327 () Bool)

(declare-fun e!1509811 () Bool)

(assert (=> b!2364327 (= e!1509811 (not (isDefined!4292 lt!864914)))))

(declare-fun b!2364328 () Bool)

(declare-fun res!1003403 () Bool)

(assert (=> b!2364328 (=> (not res!1003403) (not e!1509810))))

(assert (=> b!2364328 (= res!1003403 (matchR!3038 (regOne!14354 r!13927) (_1!16394 (get!8494 lt!864914))))))

(declare-fun b!2364329 () Bool)

(declare-fun e!1509813 () Bool)

(assert (=> b!2364329 (= e!1509813 (matchR!3038 (regTwo!14354 r!13927) (t!208058 s!9460)))))

(declare-fun b!2364325 () Bool)

(assert (=> b!2364325 (= e!1509812 e!1509809)))

(declare-fun c!375793 () Bool)

(assert (=> b!2364325 (= c!375793 ((_ is Nil!27983) (t!208058 s!9460)))))

(declare-fun d!694503 () Bool)

(assert (=> d!694503 e!1509811))

(declare-fun res!1003404 () Bool)

(assert (=> d!694503 (=> res!1003404 e!1509811)))

(assert (=> d!694503 (= res!1003404 e!1509810)))

(declare-fun res!1003401 () Bool)

(assert (=> d!694503 (=> (not res!1003401) (not e!1509810))))

(assert (=> d!694503 (= res!1003401 (isDefined!4292 lt!864914))))

(assert (=> d!694503 (= lt!864914 e!1509812)))

(declare-fun c!375792 () Bool)

(assert (=> d!694503 (= c!375792 e!1509813)))

(declare-fun res!1003400 () Bool)

(assert (=> d!694503 (=> (not res!1003400) (not e!1509813))))

(assert (=> d!694503 (= res!1003400 (matchR!3038 (regOne!14354 r!13927) (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983))))))

(assert (=> d!694503 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694503 (= (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) (++!6887 Nil!27983 (Cons!27983 (h!33384 s!9460) Nil!27983)) (t!208058 s!9460) s!9460) lt!864914)))

(assert (= (and d!694503 res!1003400) b!2364329))

(assert (= (and d!694503 c!375792) b!2364323))

(assert (= (and d!694503 (not c!375792)) b!2364325))

(assert (= (and b!2364325 c!375793) b!2364324))

(assert (= (and b!2364325 (not c!375793)) b!2364322))

(assert (= (and d!694503 res!1003401) b!2364328))

(assert (= (and b!2364328 res!1003403) b!2364326))

(assert (= (and b!2364326 res!1003402) b!2364321))

(assert (= (and d!694503 (not res!1003404)) b!2364327))

(assert (=> b!2364322 m!2775003))

(declare-fun m!2775329 () Bool)

(assert (=> b!2364322 m!2775329))

(assert (=> b!2364322 m!2775329))

(declare-fun m!2775331 () Bool)

(assert (=> b!2364322 m!2775331))

(assert (=> b!2364322 m!2775003))

(declare-fun m!2775333 () Bool)

(assert (=> b!2364322 m!2775333))

(assert (=> b!2364322 m!2775329))

(declare-fun m!2775335 () Bool)

(assert (=> b!2364322 m!2775335))

(declare-fun m!2775337 () Bool)

(assert (=> b!2364321 m!2775337))

(declare-fun m!2775339 () Bool)

(assert (=> b!2364321 m!2775339))

(declare-fun m!2775341 () Bool)

(assert (=> b!2364327 m!2775341))

(assert (=> b!2364326 m!2775337))

(declare-fun m!2775343 () Bool)

(assert (=> b!2364326 m!2775343))

(declare-fun m!2775345 () Bool)

(assert (=> b!2364329 m!2775345))

(assert (=> d!694503 m!2775341))

(assert (=> d!694503 m!2775003))

(declare-fun m!2775347 () Bool)

(assert (=> d!694503 m!2775347))

(assert (=> d!694503 m!2774827))

(assert (=> b!2364328 m!2775337))

(declare-fun m!2775349 () Bool)

(assert (=> b!2364328 m!2775349))

(assert (=> b!2363846 d!694503))

(declare-fun b!2364330 () Bool)

(declare-fun res!1003407 () Bool)

(declare-fun e!1509815 () Bool)

(assert (=> b!2364330 (=> res!1003407 e!1509815)))

(assert (=> b!2364330 (= res!1003407 (not ((_ is Concat!11557) (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927)))))))))

(declare-fun e!1509818 () Bool)

(assert (=> b!2364330 (= e!1509818 e!1509815)))

(declare-fun b!2364331 () Bool)

(declare-fun res!1003406 () Bool)

(declare-fun e!1509819 () Bool)

(assert (=> b!2364331 (=> (not res!1003406) (not e!1509819))))

(declare-fun call!143847 () Bool)

(assert (=> b!2364331 (= res!1003406 call!143847)))

(assert (=> b!2364331 (= e!1509818 e!1509819)))

(declare-fun b!2364332 () Bool)

(declare-fun e!1509817 () Bool)

(declare-fun e!1509816 () Bool)

(assert (=> b!2364332 (= e!1509817 e!1509816)))

(declare-fun res!1003408 () Bool)

(assert (=> b!2364332 (= res!1003408 (not (nullable!1985 (reg!7250 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))))

(assert (=> b!2364332 (=> (not res!1003408) (not e!1509816))))

(declare-fun bm!143841 () Bool)

(declare-fun call!143848 () Bool)

(declare-fun call!143846 () Bool)

(assert (=> bm!143841 (= call!143848 call!143846)))

(declare-fun b!2364333 () Bool)

(assert (=> b!2364333 (= e!1509817 e!1509818)))

(declare-fun c!375794 () Bool)

(assert (=> b!2364333 (= c!375794 ((_ is Union!6921) (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))

(declare-fun b!2364334 () Bool)

(declare-fun e!1509820 () Bool)

(assert (=> b!2364334 (= e!1509815 e!1509820)))

(declare-fun res!1003409 () Bool)

(assert (=> b!2364334 (=> (not res!1003409) (not e!1509820))))

(assert (=> b!2364334 (= res!1003409 call!143848)))

(declare-fun b!2364335 () Bool)

(assert (=> b!2364335 (= e!1509820 call!143847)))

(declare-fun b!2364336 () Bool)

(declare-fun e!1509814 () Bool)

(assert (=> b!2364336 (= e!1509814 e!1509817)))

(declare-fun c!375795 () Bool)

(assert (=> b!2364336 (= c!375795 ((_ is Star!6921) (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))

(declare-fun bm!143842 () Bool)

(assert (=> bm!143842 (= call!143847 (validRegex!2651 (ite c!375794 (regOne!14355 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))) (regTwo!14354 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))))

(declare-fun d!694505 () Bool)

(declare-fun res!1003405 () Bool)

(assert (=> d!694505 (=> res!1003405 e!1509814)))

(assert (=> d!694505 (= res!1003405 ((_ is ElementMatch!6921) (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))))))

(assert (=> d!694505 (= (validRegex!2651 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))) e!1509814)))

(declare-fun b!2364337 () Bool)

(assert (=> b!2364337 (= e!1509816 call!143846)))

(declare-fun bm!143843 () Bool)

(assert (=> bm!143843 (= call!143846 (validRegex!2651 (ite c!375795 (reg!7250 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))) (ite c!375794 (regTwo!14355 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927))))) (regOne!14354 (ite c!375717 (reg!7250 (regOne!14354 r!13927)) (ite c!375716 (regTwo!14355 (regOne!14354 r!13927)) (regOne!14354 (regOne!14354 r!13927)))))))))))

(declare-fun b!2364338 () Bool)

(assert (=> b!2364338 (= e!1509819 call!143848)))

(assert (= (and d!694505 (not res!1003405)) b!2364336))

(assert (= (and b!2364336 c!375795) b!2364332))

(assert (= (and b!2364336 (not c!375795)) b!2364333))

(assert (= (and b!2364332 res!1003408) b!2364337))

(assert (= (and b!2364333 c!375794) b!2364331))

(assert (= (and b!2364333 (not c!375794)) b!2364330))

(assert (= (and b!2364331 res!1003406) b!2364338))

(assert (= (and b!2364330 (not res!1003407)) b!2364334))

(assert (= (and b!2364334 res!1003409) b!2364335))

(assert (= (or b!2364331 b!2364335) bm!143842))

(assert (= (or b!2364338 b!2364334) bm!143841))

(assert (= (or b!2364337 bm!143841) bm!143843))

(declare-fun m!2775351 () Bool)

(assert (=> b!2364332 m!2775351))

(declare-fun m!2775353 () Bool)

(assert (=> bm!143842 m!2775353))

(declare-fun m!2775355 () Bool)

(assert (=> bm!143843 m!2775355))

(assert (=> bm!143791 d!694505))

(declare-fun bs!460753 () Bool)

(declare-fun b!2364342 () Bool)

(assert (= bs!460753 (and b!2364342 b!2363417)))

(declare-fun lambda!87098 () Int)

(assert (=> bs!460753 (not (= lambda!87098 lambda!87046))))

(declare-fun bs!460754 () Bool)

(assert (= bs!460754 (and b!2364342 d!694373)))

(assert (=> bs!460754 (not (= lambda!87098 lambda!87083))))

(declare-fun bs!460755 () Bool)

(assert (= bs!460755 (and b!2364342 d!694371)))

(assert (=> bs!460755 (not (= lambda!87098 lambda!87077))))

(declare-fun bs!460756 () Bool)

(assert (= bs!460756 (and b!2364342 b!2363802)))

(assert (=> bs!460756 (not (= lambda!87098 lambda!87074))))

(declare-fun bs!460757 () Bool)

(assert (= bs!460757 (and b!2364342 b!2363801)))

(assert (=> bs!460757 (= (and (= (reg!7250 (regOne!14355 r!13927)) (reg!7250 r!13927)) (= (regOne!14355 r!13927) r!13927)) (= lambda!87098 lambda!87073))))

(assert (=> bs!460754 (not (= lambda!87098 lambda!87082))))

(assert (=> bs!460753 (not (= lambda!87098 lambda!87047))))

(assert (=> b!2364342 true))

(assert (=> b!2364342 true))

(declare-fun bs!460758 () Bool)

(declare-fun b!2364343 () Bool)

(assert (= bs!460758 (and b!2364343 b!2363417)))

(declare-fun lambda!87099 () Int)

(assert (=> bs!460758 (not (= lambda!87099 lambda!87046))))

(declare-fun bs!460759 () Bool)

(assert (= bs!460759 (and b!2364343 d!694373)))

(assert (=> bs!460759 (= (and (= (regOne!14354 (regOne!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regOne!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87099 lambda!87083))))

(declare-fun bs!460760 () Bool)

(assert (= bs!460760 (and b!2364343 d!694371)))

(assert (=> bs!460760 (not (= lambda!87099 lambda!87077))))

(declare-fun bs!460761 () Bool)

(assert (= bs!460761 (and b!2364343 b!2363802)))

(assert (=> bs!460761 (= (and (= (regOne!14354 (regOne!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regOne!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87099 lambda!87074))))

(declare-fun bs!460762 () Bool)

(assert (= bs!460762 (and b!2364343 b!2363801)))

(assert (=> bs!460762 (not (= lambda!87099 lambda!87073))))

(assert (=> bs!460759 (not (= lambda!87099 lambda!87082))))

(declare-fun bs!460763 () Bool)

(assert (= bs!460763 (and b!2364343 b!2364342)))

(assert (=> bs!460763 (not (= lambda!87099 lambda!87098))))

(assert (=> bs!460758 (= (and (= (regOne!14354 (regOne!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regOne!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87099 lambda!87047))))

(assert (=> b!2364343 true))

(assert (=> b!2364343 true))

(declare-fun bm!143844 () Bool)

(declare-fun call!143850 () Bool)

(assert (=> bm!143844 (= call!143850 (isEmpty!15901 s!9460))))

(declare-fun b!2364339 () Bool)

(declare-fun res!1003411 () Bool)

(declare-fun e!1509821 () Bool)

(assert (=> b!2364339 (=> res!1003411 e!1509821)))

(assert (=> b!2364339 (= res!1003411 call!143850)))

(declare-fun e!1509825 () Bool)

(assert (=> b!2364339 (= e!1509825 e!1509821)))

(declare-fun b!2364340 () Bool)

(declare-fun c!375797 () Bool)

(assert (=> b!2364340 (= c!375797 ((_ is Union!6921) (regOne!14355 r!13927)))))

(declare-fun e!1509824 () Bool)

(declare-fun e!1509826 () Bool)

(assert (=> b!2364340 (= e!1509824 e!1509826)))

(declare-fun c!375796 () Bool)

(declare-fun bm!143845 () Bool)

(declare-fun call!143849 () Bool)

(assert (=> bm!143845 (= call!143849 (Exists!983 (ite c!375796 lambda!87098 lambda!87099)))))

(declare-fun d!694507 () Bool)

(declare-fun c!375798 () Bool)

(assert (=> d!694507 (= c!375798 ((_ is EmptyExpr!6921) (regOne!14355 r!13927)))))

(declare-fun e!1509823 () Bool)

(assert (=> d!694507 (= (matchRSpec!770 (regOne!14355 r!13927) s!9460) e!1509823)))

(declare-fun b!2364341 () Bool)

(declare-fun e!1509822 () Bool)

(assert (=> b!2364341 (= e!1509826 e!1509822)))

(declare-fun res!1003410 () Bool)

(assert (=> b!2364341 (= res!1003410 (matchRSpec!770 (regOne!14355 (regOne!14355 r!13927)) s!9460))))

(assert (=> b!2364341 (=> res!1003410 e!1509822)))

(assert (=> b!2364342 (= e!1509821 call!143849)))

(assert (=> b!2364343 (= e!1509825 call!143849)))

(declare-fun b!2364344 () Bool)

(declare-fun c!375799 () Bool)

(assert (=> b!2364344 (= c!375799 ((_ is ElementMatch!6921) (regOne!14355 r!13927)))))

(declare-fun e!1509827 () Bool)

(assert (=> b!2364344 (= e!1509827 e!1509824)))

(declare-fun b!2364345 () Bool)

(assert (=> b!2364345 (= e!1509823 call!143850)))

(declare-fun b!2364346 () Bool)

(assert (=> b!2364346 (= e!1509826 e!1509825)))

(assert (=> b!2364346 (= c!375796 ((_ is Star!6921) (regOne!14355 r!13927)))))

(declare-fun b!2364347 () Bool)

(assert (=> b!2364347 (= e!1509823 e!1509827)))

(declare-fun res!1003412 () Bool)

(assert (=> b!2364347 (= res!1003412 (not ((_ is EmptyLang!6921) (regOne!14355 r!13927))))))

(assert (=> b!2364347 (=> (not res!1003412) (not e!1509827))))

(declare-fun b!2364348 () Bool)

(assert (=> b!2364348 (= e!1509822 (matchRSpec!770 (regTwo!14355 (regOne!14355 r!13927)) s!9460))))

(declare-fun b!2364349 () Bool)

(assert (=> b!2364349 (= e!1509824 (= s!9460 (Cons!27983 (c!375623 (regOne!14355 r!13927)) Nil!27983)))))

(assert (= (and d!694507 c!375798) b!2364345))

(assert (= (and d!694507 (not c!375798)) b!2364347))

(assert (= (and b!2364347 res!1003412) b!2364344))

(assert (= (and b!2364344 c!375799) b!2364349))

(assert (= (and b!2364344 (not c!375799)) b!2364340))

(assert (= (and b!2364340 c!375797) b!2364341))

(assert (= (and b!2364340 (not c!375797)) b!2364346))

(assert (= (and b!2364341 (not res!1003410)) b!2364348))

(assert (= (and b!2364346 c!375796) b!2364339))

(assert (= (and b!2364346 (not c!375796)) b!2364343))

(assert (= (and b!2364339 (not res!1003411)) b!2364342))

(assert (= (or b!2364342 b!2364343) bm!143845))

(assert (= (or b!2364345 b!2364339) bm!143844))

(assert (=> bm!143844 m!2774935))

(declare-fun m!2775357 () Bool)

(assert (=> bm!143845 m!2775357))

(declare-fun m!2775359 () Bool)

(assert (=> b!2364341 m!2775359))

(declare-fun m!2775361 () Bool)

(assert (=> b!2364348 m!2775361))

(assert (=> b!2363800 d!694507))

(declare-fun d!694509 () Bool)

(assert (=> d!694509 (= (isEmpty!15901 (tail!3360 s!9460)) ((_ is Nil!27983) (tail!3360 s!9460)))))

(assert (=> b!2363683 d!694509))

(declare-fun d!694511 () Bool)

(assert (=> d!694511 (= (tail!3360 s!9460) (t!208058 s!9460))))

(assert (=> b!2363683 d!694511))

(declare-fun b!2364350 () Bool)

(declare-fun res!1003415 () Bool)

(declare-fun e!1509829 () Bool)

(assert (=> b!2364350 (=> res!1003415 e!1509829)))

(assert (=> b!2364350 (= res!1003415 (not ((_ is Concat!11557) (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927)))))))))

(declare-fun e!1509832 () Bool)

(assert (=> b!2364350 (= e!1509832 e!1509829)))

(declare-fun b!2364351 () Bool)

(declare-fun res!1003414 () Bool)

(declare-fun e!1509833 () Bool)

(assert (=> b!2364351 (=> (not res!1003414) (not e!1509833))))

(declare-fun call!143852 () Bool)

(assert (=> b!2364351 (= res!1003414 call!143852)))

(assert (=> b!2364351 (= e!1509832 e!1509833)))

(declare-fun b!2364352 () Bool)

(declare-fun e!1509831 () Bool)

(declare-fun e!1509830 () Bool)

(assert (=> b!2364352 (= e!1509831 e!1509830)))

(declare-fun res!1003416 () Bool)

(assert (=> b!2364352 (= res!1003416 (not (nullable!1985 (reg!7250 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))))

(assert (=> b!2364352 (=> (not res!1003416) (not e!1509830))))

(declare-fun bm!143846 () Bool)

(declare-fun call!143853 () Bool)

(declare-fun call!143851 () Bool)

(assert (=> bm!143846 (= call!143853 call!143851)))

(declare-fun b!2364353 () Bool)

(assert (=> b!2364353 (= e!1509831 e!1509832)))

(declare-fun c!375800 () Bool)

(assert (=> b!2364353 (= c!375800 ((_ is Union!6921) (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))

(declare-fun b!2364354 () Bool)

(declare-fun e!1509834 () Bool)

(assert (=> b!2364354 (= e!1509829 e!1509834)))

(declare-fun res!1003417 () Bool)

(assert (=> b!2364354 (=> (not res!1003417) (not e!1509834))))

(assert (=> b!2364354 (= res!1003417 call!143853)))

(declare-fun b!2364355 () Bool)

(assert (=> b!2364355 (= e!1509834 call!143852)))

(declare-fun b!2364356 () Bool)

(declare-fun e!1509828 () Bool)

(assert (=> b!2364356 (= e!1509828 e!1509831)))

(declare-fun c!375801 () Bool)

(assert (=> b!2364356 (= c!375801 ((_ is Star!6921) (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))

(declare-fun bm!143847 () Bool)

(assert (=> bm!143847 (= call!143852 (validRegex!2651 (ite c!375800 (regOne!14355 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))) (regTwo!14354 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))))

(declare-fun d!694513 () Bool)

(declare-fun res!1003413 () Bool)

(assert (=> d!694513 (=> res!1003413 e!1509828)))

(assert (=> d!694513 (= res!1003413 ((_ is ElementMatch!6921) (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))))))

(assert (=> d!694513 (= (validRegex!2651 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))) e!1509828)))

(declare-fun b!2364357 () Bool)

(assert (=> b!2364357 (= e!1509830 call!143851)))

(declare-fun bm!143848 () Bool)

(assert (=> bm!143848 (= call!143851 (validRegex!2651 (ite c!375801 (reg!7250 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))) (ite c!375800 (regTwo!14355 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927))))) (regOne!14354 (ite c!375650 (reg!7250 (regTwo!14354 r!13927)) (ite c!375649 (regTwo!14355 (regTwo!14354 r!13927)) (regOne!14354 (regTwo!14354 r!13927)))))))))))

(declare-fun b!2364358 () Bool)

(assert (=> b!2364358 (= e!1509833 call!143853)))

(assert (= (and d!694513 (not res!1003413)) b!2364356))

(assert (= (and b!2364356 c!375801) b!2364352))

(assert (= (and b!2364356 (not c!375801)) b!2364353))

(assert (= (and b!2364352 res!1003416) b!2364357))

(assert (= (and b!2364353 c!375800) b!2364351))

(assert (= (and b!2364353 (not c!375800)) b!2364350))

(assert (= (and b!2364351 res!1003414) b!2364358))

(assert (= (and b!2364350 (not res!1003415)) b!2364354))

(assert (= (and b!2364354 res!1003417) b!2364355))

(assert (= (or b!2364351 b!2364355) bm!143847))

(assert (= (or b!2364358 b!2364354) bm!143846))

(assert (= (or b!2364357 bm!143846) bm!143848))

(declare-fun m!2775363 () Bool)

(assert (=> b!2364352 m!2775363))

(declare-fun m!2775365 () Bool)

(assert (=> bm!143847 m!2775365))

(declare-fun m!2775367 () Bool)

(assert (=> bm!143848 m!2775367))

(assert (=> bm!143761 d!694513))

(declare-fun d!694515 () Bool)

(assert (=> d!694515 (= (isEmpty!15901 s!9460) ((_ is Nil!27983) s!9460))))

(assert (=> d!694343 d!694515))

(assert (=> d!694343 d!694487))

(declare-fun b!2364359 () Bool)

(declare-fun e!1509839 () Bool)

(assert (=> b!2364359 (= e!1509839 (not (= (head!5091 (tail!3360 s!9460)) (c!375623 (derivativeStep!1644 r!13927 (head!5091 s!9460))))))))

(declare-fun b!2364360 () Bool)

(declare-fun e!1509840 () Bool)

(declare-fun lt!864916 () Bool)

(declare-fun call!143854 () Bool)

(assert (=> b!2364360 (= e!1509840 (= lt!864916 call!143854))))

(declare-fun b!2364361 () Bool)

(declare-fun res!1003421 () Bool)

(declare-fun e!1509841 () Bool)

(assert (=> b!2364361 (=> res!1003421 e!1509841)))

(declare-fun e!1509838 () Bool)

(assert (=> b!2364361 (= res!1003421 e!1509838)))

(declare-fun res!1003420 () Bool)

(assert (=> b!2364361 (=> (not res!1003420) (not e!1509838))))

(assert (=> b!2364361 (= res!1003420 lt!864916)))

(declare-fun b!2364362 () Bool)

(declare-fun e!1509836 () Bool)

(assert (=> b!2364362 (= e!1509836 e!1509839)))

(declare-fun res!1003418 () Bool)

(assert (=> b!2364362 (=> res!1003418 e!1509839)))

(assert (=> b!2364362 (= res!1003418 call!143854)))

(declare-fun b!2364363 () Bool)

(declare-fun res!1003419 () Bool)

(assert (=> b!2364363 (=> res!1003419 e!1509839)))

(assert (=> b!2364363 (= res!1003419 (not (isEmpty!15901 (tail!3360 (tail!3360 s!9460)))))))

(declare-fun b!2364364 () Bool)

(declare-fun res!1003425 () Bool)

(assert (=> b!2364364 (=> res!1003425 e!1509841)))

(assert (=> b!2364364 (= res!1003425 (not ((_ is ElementMatch!6921) (derivativeStep!1644 r!13927 (head!5091 s!9460)))))))

(declare-fun e!1509835 () Bool)

(assert (=> b!2364364 (= e!1509835 e!1509841)))

(declare-fun d!694517 () Bool)

(assert (=> d!694517 e!1509840))

(declare-fun c!375804 () Bool)

(assert (=> d!694517 (= c!375804 ((_ is EmptyExpr!6921) (derivativeStep!1644 r!13927 (head!5091 s!9460))))))

(declare-fun e!1509837 () Bool)

(assert (=> d!694517 (= lt!864916 e!1509837)))

(declare-fun c!375802 () Bool)

(assert (=> d!694517 (= c!375802 (isEmpty!15901 (tail!3360 s!9460)))))

(assert (=> d!694517 (validRegex!2651 (derivativeStep!1644 r!13927 (head!5091 s!9460)))))

(assert (=> d!694517 (= (matchR!3038 (derivativeStep!1644 r!13927 (head!5091 s!9460)) (tail!3360 s!9460)) lt!864916)))

(declare-fun b!2364365 () Bool)

(declare-fun res!1003422 () Bool)

(assert (=> b!2364365 (=> (not res!1003422) (not e!1509838))))

(assert (=> b!2364365 (= res!1003422 (not call!143854))))

(declare-fun b!2364366 () Bool)

(assert (=> b!2364366 (= e!1509837 (nullable!1985 (derivativeStep!1644 r!13927 (head!5091 s!9460))))))

(declare-fun b!2364367 () Bool)

(assert (=> b!2364367 (= e!1509835 (not lt!864916))))

(declare-fun b!2364368 () Bool)

(assert (=> b!2364368 (= e!1509838 (= (head!5091 (tail!3360 s!9460)) (c!375623 (derivativeStep!1644 r!13927 (head!5091 s!9460)))))))

(declare-fun bm!143849 () Bool)

(assert (=> bm!143849 (= call!143854 (isEmpty!15901 (tail!3360 s!9460)))))

(declare-fun b!2364369 () Bool)

(assert (=> b!2364369 (= e!1509841 e!1509836)))

(declare-fun res!1003424 () Bool)

(assert (=> b!2364369 (=> (not res!1003424) (not e!1509836))))

(assert (=> b!2364369 (= res!1003424 (not lt!864916))))

(declare-fun b!2364370 () Bool)

(declare-fun res!1003423 () Bool)

(assert (=> b!2364370 (=> (not res!1003423) (not e!1509838))))

(assert (=> b!2364370 (= res!1003423 (isEmpty!15901 (tail!3360 (tail!3360 s!9460))))))

(declare-fun b!2364371 () Bool)

(assert (=> b!2364371 (= e!1509837 (matchR!3038 (derivativeStep!1644 (derivativeStep!1644 r!13927 (head!5091 s!9460)) (head!5091 (tail!3360 s!9460))) (tail!3360 (tail!3360 s!9460))))))

(declare-fun b!2364372 () Bool)

(assert (=> b!2364372 (= e!1509840 e!1509835)))

(declare-fun c!375803 () Bool)

(assert (=> b!2364372 (= c!375803 ((_ is EmptyLang!6921) (derivativeStep!1644 r!13927 (head!5091 s!9460))))))

(assert (= (and d!694517 c!375802) b!2364366))

(assert (= (and d!694517 (not c!375802)) b!2364371))

(assert (= (and d!694517 c!375804) b!2364360))

(assert (= (and d!694517 (not c!375804)) b!2364372))

(assert (= (and b!2364372 c!375803) b!2364367))

(assert (= (and b!2364372 (not c!375803)) b!2364364))

(assert (= (and b!2364364 (not res!1003425)) b!2364361))

(assert (= (and b!2364361 res!1003420) b!2364365))

(assert (= (and b!2364365 res!1003422) b!2364370))

(assert (= (and b!2364370 res!1003423) b!2364368))

(assert (= (and b!2364361 (not res!1003421)) b!2364369))

(assert (= (and b!2364369 res!1003424) b!2364362))

(assert (= (and b!2364362 (not res!1003418)) b!2364363))

(assert (= (and b!2364363 (not res!1003419)) b!2364359))

(assert (= (or b!2364360 b!2364362 b!2364365) bm!143849))

(assert (=> b!2364368 m!2774947))

(declare-fun m!2775369 () Bool)

(assert (=> b!2364368 m!2775369))

(assert (=> b!2364366 m!2774943))

(declare-fun m!2775371 () Bool)

(assert (=> b!2364366 m!2775371))

(assert (=> d!694517 m!2774947))

(assert (=> d!694517 m!2774951))

(assert (=> d!694517 m!2774943))

(declare-fun m!2775373 () Bool)

(assert (=> d!694517 m!2775373))

(assert (=> b!2364371 m!2774947))

(assert (=> b!2364371 m!2775369))

(assert (=> b!2364371 m!2774943))

(assert (=> b!2364371 m!2775369))

(declare-fun m!2775375 () Bool)

(assert (=> b!2364371 m!2775375))

(assert (=> b!2364371 m!2774947))

(declare-fun m!2775377 () Bool)

(assert (=> b!2364371 m!2775377))

(assert (=> b!2364371 m!2775375))

(assert (=> b!2364371 m!2775377))

(declare-fun m!2775379 () Bool)

(assert (=> b!2364371 m!2775379))

(assert (=> b!2364370 m!2774947))

(assert (=> b!2364370 m!2775377))

(assert (=> b!2364370 m!2775377))

(declare-fun m!2775381 () Bool)

(assert (=> b!2364370 m!2775381))

(assert (=> b!2364359 m!2774947))

(assert (=> b!2364359 m!2775369))

(assert (=> b!2364363 m!2774947))

(assert (=> b!2364363 m!2775377))

(assert (=> b!2364363 m!2775377))

(assert (=> b!2364363 m!2775381))

(assert (=> bm!143849 m!2774947))

(assert (=> bm!143849 m!2774951))

(assert (=> b!2363684 d!694517))

(declare-fun d!694519 () Bool)

(declare-fun lt!864919 () Regex!6921)

(assert (=> d!694519 (validRegex!2651 lt!864919)))

(declare-fun e!1509854 () Regex!6921)

(assert (=> d!694519 (= lt!864919 e!1509854)))

(declare-fun c!375815 () Bool)

(assert (=> d!694519 (= c!375815 (or ((_ is EmptyExpr!6921) r!13927) ((_ is EmptyLang!6921) r!13927)))))

(assert (=> d!694519 (validRegex!2651 r!13927)))

(assert (=> d!694519 (= (derivativeStep!1644 r!13927 (head!5091 s!9460)) lt!864919)))

(declare-fun b!2364393 () Bool)

(declare-fun e!1509852 () Regex!6921)

(declare-fun call!143864 () Regex!6921)

(assert (=> b!2364393 (= e!1509852 (Union!6921 (Concat!11557 call!143864 (regTwo!14354 r!13927)) EmptyLang!6921))))

(declare-fun b!2364394 () Bool)

(declare-fun e!1509856 () Regex!6921)

(declare-fun call!143866 () Regex!6921)

(assert (=> b!2364394 (= e!1509856 (Concat!11557 call!143866 r!13927))))

(declare-fun b!2364395 () Bool)

(declare-fun e!1509855 () Regex!6921)

(assert (=> b!2364395 (= e!1509855 (ite (= (head!5091 s!9460) (c!375623 r!13927)) EmptyExpr!6921 EmptyLang!6921))))

(declare-fun bm!143858 () Bool)

(assert (=> bm!143858 (= call!143864 call!143866)))

(declare-fun bm!143859 () Bool)

(declare-fun call!143865 () Regex!6921)

(assert (=> bm!143859 (= call!143866 call!143865)))

(declare-fun call!143863 () Regex!6921)

(declare-fun b!2364396 () Bool)

(assert (=> b!2364396 (= e!1509852 (Union!6921 (Concat!11557 call!143863 (regTwo!14354 r!13927)) call!143864))))

(declare-fun b!2364397 () Bool)

(assert (=> b!2364397 (= e!1509854 EmptyLang!6921)))

(declare-fun b!2364398 () Bool)

(declare-fun e!1509853 () Regex!6921)

(assert (=> b!2364398 (= e!1509853 e!1509856)))

(declare-fun c!375817 () Bool)

(assert (=> b!2364398 (= c!375817 ((_ is Star!6921) r!13927))))

(declare-fun c!375816 () Bool)

(declare-fun bm!143860 () Bool)

(declare-fun c!375819 () Bool)

(assert (=> bm!143860 (= call!143865 (derivativeStep!1644 (ite c!375816 (regTwo!14355 r!13927) (ite c!375817 (reg!7250 r!13927) (ite c!375819 (regTwo!14354 r!13927) (regOne!14354 r!13927)))) (head!5091 s!9460)))))

(declare-fun b!2364399 () Bool)

(assert (=> b!2364399 (= c!375819 (nullable!1985 (regOne!14354 r!13927)))))

(assert (=> b!2364399 (= e!1509856 e!1509852)))

(declare-fun bm!143861 () Bool)

(assert (=> bm!143861 (= call!143863 (derivativeStep!1644 (ite c!375816 (regOne!14355 r!13927) (regOne!14354 r!13927)) (head!5091 s!9460)))))

(declare-fun b!2364400 () Bool)

(assert (=> b!2364400 (= e!1509854 e!1509855)))

(declare-fun c!375818 () Bool)

(assert (=> b!2364400 (= c!375818 ((_ is ElementMatch!6921) r!13927))))

(declare-fun b!2364401 () Bool)

(assert (=> b!2364401 (= e!1509853 (Union!6921 call!143863 call!143865))))

(declare-fun b!2364402 () Bool)

(assert (=> b!2364402 (= c!375816 ((_ is Union!6921) r!13927))))

(assert (=> b!2364402 (= e!1509855 e!1509853)))

(assert (= (and d!694519 c!375815) b!2364397))

(assert (= (and d!694519 (not c!375815)) b!2364400))

(assert (= (and b!2364400 c!375818) b!2364395))

(assert (= (and b!2364400 (not c!375818)) b!2364402))

(assert (= (and b!2364402 c!375816) b!2364401))

(assert (= (and b!2364402 (not c!375816)) b!2364398))

(assert (= (and b!2364398 c!375817) b!2364394))

(assert (= (and b!2364398 (not c!375817)) b!2364399))

(assert (= (and b!2364399 c!375819) b!2364396))

(assert (= (and b!2364399 (not c!375819)) b!2364393))

(assert (= (or b!2364396 b!2364393) bm!143858))

(assert (= (or b!2364394 bm!143858) bm!143859))

(assert (= (or b!2364401 b!2364396) bm!143861))

(assert (= (or b!2364401 bm!143859) bm!143860))

(declare-fun m!2775383 () Bool)

(assert (=> d!694519 m!2775383))

(assert (=> d!694519 m!2774937))

(assert (=> bm!143860 m!2774929))

(declare-fun m!2775385 () Bool)

(assert (=> bm!143860 m!2775385))

(declare-fun m!2775387 () Bool)

(assert (=> b!2364399 m!2775387))

(assert (=> bm!143861 m!2774929))

(declare-fun m!2775389 () Bool)

(assert (=> bm!143861 m!2775389))

(assert (=> b!2363684 d!694519))

(declare-fun d!694521 () Bool)

(assert (=> d!694521 (= (head!5091 s!9460) (h!33384 s!9460))))

(assert (=> b!2363684 d!694521))

(assert (=> b!2363684 d!694511))

(assert (=> bm!143779 d!694515))

(assert (=> b!2363681 d!694521))

(assert (=> d!694371 d!694369))

(declare-fun d!694523 () Bool)

(assert (=> d!694523 (= (Exists!983 lambda!87077) (choose!13716 lambda!87077))))

(declare-fun bs!460764 () Bool)

(assert (= bs!460764 d!694523))

(declare-fun m!2775391 () Bool)

(assert (=> bs!460764 m!2775391))

(assert (=> d!694371 d!694523))

(declare-fun bs!460765 () Bool)

(declare-fun d!694525 () Bool)

(assert (= bs!460765 (and d!694525 b!2363417)))

(declare-fun lambda!87102 () Int)

(assert (=> bs!460765 (= lambda!87102 lambda!87046)))

(declare-fun bs!460766 () Bool)

(assert (= bs!460766 (and d!694525 d!694373)))

(assert (=> bs!460766 (not (= lambda!87102 lambda!87083))))

(declare-fun bs!460767 () Bool)

(assert (= bs!460767 (and d!694525 d!694371)))

(assert (=> bs!460767 (= lambda!87102 lambda!87077)))

(declare-fun bs!460768 () Bool)

(assert (= bs!460768 (and d!694525 b!2363801)))

(assert (=> bs!460768 (not (= lambda!87102 lambda!87073))))

(assert (=> bs!460766 (= lambda!87102 lambda!87082)))

(declare-fun bs!460769 () Bool)

(assert (= bs!460769 (and d!694525 b!2364342)))

(assert (=> bs!460769 (not (= lambda!87102 lambda!87098))))

(assert (=> bs!460765 (not (= lambda!87102 lambda!87047))))

(declare-fun bs!460770 () Bool)

(assert (= bs!460770 (and d!694525 b!2363802)))

(assert (=> bs!460770 (not (= lambda!87102 lambda!87074))))

(declare-fun bs!460771 () Bool)

(assert (= bs!460771 (and d!694525 b!2364343)))

(assert (=> bs!460771 (not (= lambda!87102 lambda!87099))))

(assert (=> d!694525 true))

(assert (=> d!694525 true))

(assert (=> d!694525 true))

(assert (=> d!694525 (= (isDefined!4292 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460)) (Exists!983 lambda!87102))))

(assert (=> d!694525 true))

(declare-fun _$89!1244 () Unit!40877)

(assert (=> d!694525 (= (choose!13717 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460) _$89!1244)))

(declare-fun bs!460772 () Bool)

(assert (= bs!460772 d!694525))

(assert (=> bs!460772 m!2774819))

(assert (=> bs!460772 m!2774819))

(assert (=> bs!460772 m!2774821))

(declare-fun m!2775393 () Bool)

(assert (=> bs!460772 m!2775393))

(assert (=> d!694371 d!694525))

(assert (=> d!694371 d!694379))

(assert (=> d!694371 d!694375))

(declare-fun d!694527 () Bool)

(assert (=> d!694527 (= (head!5090 l!9164) (h!33383 l!9164))))

(assert (=> b!2363602 d!694527))

(declare-fun d!694529 () Bool)

(assert (=> d!694529 (= (Exists!983 (ite c!375706 lambda!87073 lambda!87074)) (choose!13716 (ite c!375706 lambda!87073 lambda!87074)))))

(declare-fun bs!460773 () Bool)

(assert (= bs!460773 d!694529))

(declare-fun m!2775395 () Bool)

(assert (=> bs!460773 m!2775395))

(assert (=> bm!143788 d!694529))

(declare-fun b!2364410 () Bool)

(declare-fun e!1509860 () Bool)

(declare-fun lt!864920 () List!28081)

(assert (=> b!2364410 (= e!1509860 (or (not (= (_2!16394 (get!8494 lt!864883)) Nil!27983)) (= lt!864920 (_1!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364408 () Bool)

(declare-fun e!1509859 () List!28081)

(assert (=> b!2364408 (= e!1509859 (Cons!27983 (h!33384 (_1!16394 (get!8494 lt!864883))) (++!6887 (t!208058 (_1!16394 (get!8494 lt!864883))) (_2!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364407 () Bool)

(assert (=> b!2364407 (= e!1509859 (_2!16394 (get!8494 lt!864883)))))

(declare-fun d!694531 () Bool)

(assert (=> d!694531 e!1509860))

(declare-fun res!1003430 () Bool)

(assert (=> d!694531 (=> (not res!1003430) (not e!1509860))))

(assert (=> d!694531 (= res!1003430 (= (content!3801 lt!864920) ((_ map or) (content!3801 (_1!16394 (get!8494 lt!864883))) (content!3801 (_2!16394 (get!8494 lt!864883))))))))

(assert (=> d!694531 (= lt!864920 e!1509859)))

(declare-fun c!375820 () Bool)

(assert (=> d!694531 (= c!375820 ((_ is Nil!27983) (_1!16394 (get!8494 lt!864883))))))

(assert (=> d!694531 (= (++!6887 (_1!16394 (get!8494 lt!864883)) (_2!16394 (get!8494 lt!864883))) lt!864920)))

(declare-fun b!2364409 () Bool)

(declare-fun res!1003431 () Bool)

(assert (=> b!2364409 (=> (not res!1003431) (not e!1509860))))

(assert (=> b!2364409 (= res!1003431 (= (size!22139 lt!864920) (+ (size!22139 (_1!16394 (get!8494 lt!864883))) (size!22139 (_2!16394 (get!8494 lt!864883))))))))

(assert (= (and d!694531 c!375820) b!2364407))

(assert (= (and d!694531 (not c!375820)) b!2364408))

(assert (= (and d!694531 res!1003430) b!2364409))

(assert (= (and b!2364409 res!1003431) b!2364410))

(declare-fun m!2775397 () Bool)

(assert (=> b!2364408 m!2775397))

(declare-fun m!2775399 () Bool)

(assert (=> d!694531 m!2775399))

(declare-fun m!2775401 () Bool)

(assert (=> d!694531 m!2775401))

(declare-fun m!2775403 () Bool)

(assert (=> d!694531 m!2775403))

(declare-fun m!2775405 () Bool)

(assert (=> b!2364409 m!2775405))

(declare-fun m!2775407 () Bool)

(assert (=> b!2364409 m!2775407))

(declare-fun m!2775409 () Bool)

(assert (=> b!2364409 m!2775409))

(assert (=> b!2363845 d!694531))

(assert (=> b!2363845 d!694495))

(declare-fun d!694533 () Bool)

(assert (=> d!694533 (= (isEmpty!15900 (t!208057 l!9164)) ((_ is Nil!27982) (t!208057 l!9164)))))

(assert (=> b!2363598 d!694533))

(declare-fun d!694535 () Bool)

(declare-fun nullableFct!525 (Regex!6921) Bool)

(assert (=> d!694535 (= (nullable!1985 r!13927) (nullableFct!525 r!13927))))

(declare-fun bs!460774 () Bool)

(assert (= bs!460774 d!694535))

(declare-fun m!2775411 () Bool)

(assert (=> bs!460774 m!2775411))

(assert (=> b!2363679 d!694535))

(declare-fun b!2364411 () Bool)

(declare-fun res!1003434 () Bool)

(declare-fun e!1509862 () Bool)

(assert (=> b!2364411 (=> res!1003434 e!1509862)))

(assert (=> b!2364411 (= res!1003434 (not ((_ is Concat!11557) (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927))))))))

(declare-fun e!1509865 () Bool)

(assert (=> b!2364411 (= e!1509865 e!1509862)))

(declare-fun b!2364412 () Bool)

(declare-fun res!1003433 () Bool)

(declare-fun e!1509866 () Bool)

(assert (=> b!2364412 (=> (not res!1003433) (not e!1509866))))

(declare-fun call!143868 () Bool)

(assert (=> b!2364412 (= res!1003433 call!143868)))

(assert (=> b!2364412 (= e!1509865 e!1509866)))

(declare-fun b!2364413 () Bool)

(declare-fun e!1509864 () Bool)

(declare-fun e!1509863 () Bool)

(assert (=> b!2364413 (= e!1509864 e!1509863)))

(declare-fun res!1003435 () Bool)

(assert (=> b!2364413 (= res!1003435 (not (nullable!1985 (reg!7250 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))))

(assert (=> b!2364413 (=> (not res!1003435) (not e!1509863))))

(declare-fun bm!143862 () Bool)

(declare-fun call!143869 () Bool)

(declare-fun call!143867 () Bool)

(assert (=> bm!143862 (= call!143869 call!143867)))

(declare-fun b!2364414 () Bool)

(assert (=> b!2364414 (= e!1509864 e!1509865)))

(declare-fun c!375821 () Bool)

(assert (=> b!2364414 (= c!375821 ((_ is Union!6921) (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))

(declare-fun b!2364415 () Bool)

(declare-fun e!1509867 () Bool)

(assert (=> b!2364415 (= e!1509862 e!1509867)))

(declare-fun res!1003436 () Bool)

(assert (=> b!2364415 (=> (not res!1003436) (not e!1509867))))

(assert (=> b!2364415 (= res!1003436 call!143869)))

(declare-fun b!2364416 () Bool)

(assert (=> b!2364416 (= e!1509867 call!143868)))

(declare-fun b!2364417 () Bool)

(declare-fun e!1509861 () Bool)

(assert (=> b!2364417 (= e!1509861 e!1509864)))

(declare-fun c!375822 () Bool)

(assert (=> b!2364417 (= c!375822 ((_ is Star!6921) (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))

(declare-fun bm!143863 () Bool)

(assert (=> bm!143863 (= call!143868 (validRegex!2651 (ite c!375821 (regOne!14355 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))) (regTwo!14354 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))))

(declare-fun d!694537 () Bool)

(declare-fun res!1003432 () Bool)

(assert (=> d!694537 (=> res!1003432 e!1509861)))

(assert (=> d!694537 (= res!1003432 ((_ is ElementMatch!6921) (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))))))

(assert (=> d!694537 (= (validRegex!2651 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))) e!1509861)))

(declare-fun b!2364418 () Bool)

(assert (=> b!2364418 (= e!1509863 call!143867)))

(declare-fun bm!143864 () Bool)

(assert (=> bm!143864 (= call!143867 (validRegex!2651 (ite c!375822 (reg!7250 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))) (ite c!375821 (regTwo!14355 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927)))) (regOne!14354 (ite c!375716 (regOne!14355 (regOne!14354 r!13927)) (regTwo!14354 (regOne!14354 r!13927))))))))))

(declare-fun b!2364419 () Bool)

(assert (=> b!2364419 (= e!1509866 call!143869)))

(assert (= (and d!694537 (not res!1003432)) b!2364417))

(assert (= (and b!2364417 c!375822) b!2364413))

(assert (= (and b!2364417 (not c!375822)) b!2364414))

(assert (= (and b!2364413 res!1003435) b!2364418))

(assert (= (and b!2364414 c!375821) b!2364412))

(assert (= (and b!2364414 (not c!375821)) b!2364411))

(assert (= (and b!2364412 res!1003433) b!2364419))

(assert (= (and b!2364411 (not res!1003434)) b!2364415))

(assert (= (and b!2364415 res!1003436) b!2364416))

(assert (= (or b!2364412 b!2364416) bm!143863))

(assert (= (or b!2364419 b!2364415) bm!143862))

(assert (= (or b!2364418 bm!143862) bm!143864))

(declare-fun m!2775413 () Bool)

(assert (=> b!2364413 m!2775413))

(declare-fun m!2775415 () Bool)

(assert (=> bm!143863 m!2775415))

(declare-fun m!2775417 () Bool)

(assert (=> bm!143864 m!2775417))

(assert (=> bm!143790 d!694537))

(declare-fun d!694539 () Bool)

(declare-fun res!1003437 () Bool)

(declare-fun e!1509868 () Bool)

(assert (=> d!694539 (=> res!1003437 e!1509868)))

(assert (=> d!694539 (= res!1003437 ((_ is Nil!27982) (t!208057 l!9164)))))

(assert (=> d!694539 (= (forall!5555 (t!208057 l!9164) lambda!87045) e!1509868)))

(declare-fun b!2364420 () Bool)

(declare-fun e!1509869 () Bool)

(assert (=> b!2364420 (= e!1509868 e!1509869)))

(declare-fun res!1003438 () Bool)

(assert (=> b!2364420 (=> (not res!1003438) (not e!1509869))))

(assert (=> b!2364420 (= res!1003438 (dynLambda!12056 lambda!87045 (h!33383 (t!208057 l!9164))))))

(declare-fun b!2364421 () Bool)

(assert (=> b!2364421 (= e!1509869 (forall!5555 (t!208057 (t!208057 l!9164)) lambda!87045))))

(assert (= (and d!694539 (not res!1003437)) b!2364420))

(assert (= (and b!2364420 res!1003438) b!2364421))

(declare-fun b_lambda!73835 () Bool)

(assert (=> (not b_lambda!73835) (not b!2364420)))

(declare-fun m!2775419 () Bool)

(assert (=> b!2364420 m!2775419))

(declare-fun m!2775421 () Bool)

(assert (=> b!2364421 m!2775421))

(assert (=> b!2363814 d!694539))

(declare-fun d!694541 () Bool)

(assert (=> d!694541 (= (isEmpty!15900 l!9164) ((_ is Nil!27982) l!9164))))

(assert (=> b!2363599 d!694541))

(assert (=> bm!143787 d!694515))

(declare-fun b!2364422 () Bool)

(declare-fun res!1003441 () Bool)

(declare-fun e!1509871 () Bool)

(assert (=> b!2364422 (=> res!1003441 e!1509871)))

(assert (=> b!2364422 (= res!1003441 (not ((_ is Concat!11557) (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927))))))))

(declare-fun e!1509874 () Bool)

(assert (=> b!2364422 (= e!1509874 e!1509871)))

(declare-fun b!2364423 () Bool)

(declare-fun res!1003440 () Bool)

(declare-fun e!1509875 () Bool)

(assert (=> b!2364423 (=> (not res!1003440) (not e!1509875))))

(declare-fun call!143871 () Bool)

(assert (=> b!2364423 (= res!1003440 call!143871)))

(assert (=> b!2364423 (= e!1509874 e!1509875)))

(declare-fun b!2364424 () Bool)

(declare-fun e!1509873 () Bool)

(declare-fun e!1509872 () Bool)

(assert (=> b!2364424 (= e!1509873 e!1509872)))

(declare-fun res!1003442 () Bool)

(assert (=> b!2364424 (= res!1003442 (not (nullable!1985 (reg!7250 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))))

(assert (=> b!2364424 (=> (not res!1003442) (not e!1509872))))

(declare-fun bm!143865 () Bool)

(declare-fun call!143872 () Bool)

(declare-fun call!143870 () Bool)

(assert (=> bm!143865 (= call!143872 call!143870)))

(declare-fun b!2364425 () Bool)

(assert (=> b!2364425 (= e!1509873 e!1509874)))

(declare-fun c!375823 () Bool)

(assert (=> b!2364425 (= c!375823 ((_ is Union!6921) (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))

(declare-fun b!2364426 () Bool)

(declare-fun e!1509876 () Bool)

(assert (=> b!2364426 (= e!1509871 e!1509876)))

(declare-fun res!1003443 () Bool)

(assert (=> b!2364426 (=> (not res!1003443) (not e!1509876))))

(assert (=> b!2364426 (= res!1003443 call!143872)))

(declare-fun b!2364427 () Bool)

(assert (=> b!2364427 (= e!1509876 call!143871)))

(declare-fun b!2364428 () Bool)

(declare-fun e!1509870 () Bool)

(assert (=> b!2364428 (= e!1509870 e!1509873)))

(declare-fun c!375824 () Bool)

(assert (=> b!2364428 (= c!375824 ((_ is Star!6921) (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))

(declare-fun bm!143866 () Bool)

(assert (=> bm!143866 (= call!143871 (validRegex!2651 (ite c!375823 (regOne!14355 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))) (regTwo!14354 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))))

(declare-fun d!694543 () Bool)

(declare-fun res!1003439 () Bool)

(assert (=> d!694543 (=> res!1003439 e!1509870)))

(assert (=> d!694543 (= res!1003439 ((_ is ElementMatch!6921) (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))))))

(assert (=> d!694543 (= (validRegex!2651 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))) e!1509870)))

(declare-fun b!2364429 () Bool)

(assert (=> b!2364429 (= e!1509872 call!143870)))

(declare-fun bm!143867 () Bool)

(assert (=> bm!143867 (= call!143870 (validRegex!2651 (ite c!375824 (reg!7250 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))) (ite c!375823 (regTwo!14355 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927)))) (regOne!14354 (ite c!375649 (regOne!14355 (regTwo!14354 r!13927)) (regTwo!14354 (regTwo!14354 r!13927))))))))))

(declare-fun b!2364430 () Bool)

(assert (=> b!2364430 (= e!1509875 call!143872)))

(assert (= (and d!694543 (not res!1003439)) b!2364428))

(assert (= (and b!2364428 c!375824) b!2364424))

(assert (= (and b!2364428 (not c!375824)) b!2364425))

(assert (= (and b!2364424 res!1003442) b!2364429))

(assert (= (and b!2364425 c!375823) b!2364423))

(assert (= (and b!2364425 (not c!375823)) b!2364422))

(assert (= (and b!2364423 res!1003440) b!2364430))

(assert (= (and b!2364422 (not res!1003441)) b!2364426))

(assert (= (and b!2364426 res!1003443) b!2364427))

(assert (= (or b!2364423 b!2364427) bm!143866))

(assert (= (or b!2364430 b!2364426) bm!143865))

(assert (= (or b!2364429 bm!143865) bm!143867))

(declare-fun m!2775423 () Bool)

(assert (=> b!2364424 m!2775423))

(declare-fun m!2775425 () Bool)

(assert (=> bm!143866 m!2775425))

(declare-fun m!2775427 () Bool)

(assert (=> bm!143867 m!2775427))

(assert (=> bm!143760 d!694543))

(declare-fun d!694545 () Bool)

(assert (=> d!694545 (= (nullable!1985 (reg!7250 (regOne!14354 r!13927))) (nullableFct!525 (reg!7250 (regOne!14354 r!13927))))))

(declare-fun bs!460775 () Bool)

(assert (= bs!460775 d!694545))

(declare-fun m!2775429 () Bool)

(assert (=> bs!460775 m!2775429))

(assert (=> b!2363856 d!694545))

(declare-fun d!694547 () Bool)

(assert (=> d!694547 (= (isConcat!8 lt!864848) ((_ is Concat!11557) lt!864848))))

(assert (=> b!2363595 d!694547))

(assert (=> b!2363676 d!694509))

(assert (=> b!2363676 d!694511))

(declare-fun d!694549 () Bool)

(assert (=> d!694549 (= (nullable!1985 (reg!7250 (regTwo!14354 r!13927))) (nullableFct!525 (reg!7250 (regTwo!14354 r!13927))))))

(declare-fun bs!460776 () Bool)

(assert (= bs!460776 d!694549))

(declare-fun m!2775431 () Bool)

(assert (=> bs!460776 m!2775431))

(assert (=> b!2363519 d!694549))

(declare-fun d!694551 () Bool)

(assert (=> d!694551 (= (isEmptyExpr!8 lt!864848) ((_ is EmptyExpr!6921) lt!864848))))

(assert (=> b!2363596 d!694551))

(declare-fun d!694553 () Bool)

(assert (=> d!694553 (= (Exists!983 lambda!87082) (choose!13716 lambda!87082))))

(declare-fun bs!460777 () Bool)

(assert (= bs!460777 d!694553))

(declare-fun m!2775433 () Bool)

(assert (=> bs!460777 m!2775433))

(assert (=> d!694373 d!694553))

(declare-fun d!694555 () Bool)

(assert (=> d!694555 (= (Exists!983 lambda!87083) (choose!13716 lambda!87083))))

(declare-fun bs!460778 () Bool)

(assert (= bs!460778 d!694555))

(declare-fun m!2775435 () Bool)

(assert (=> bs!460778 m!2775435))

(assert (=> d!694373 d!694555))

(declare-fun bs!460779 () Bool)

(declare-fun d!694557 () Bool)

(assert (= bs!460779 (and d!694557 b!2363417)))

(declare-fun lambda!87107 () Int)

(assert (=> bs!460779 (= lambda!87107 lambda!87046)))

(declare-fun bs!460780 () Bool)

(assert (= bs!460780 (and d!694557 d!694373)))

(assert (=> bs!460780 (not (= lambda!87107 lambda!87083))))

(declare-fun bs!460781 () Bool)

(assert (= bs!460781 (and d!694557 d!694371)))

(assert (=> bs!460781 (= lambda!87107 lambda!87077)))

(declare-fun bs!460782 () Bool)

(assert (= bs!460782 (and d!694557 b!2363801)))

(assert (=> bs!460782 (not (= lambda!87107 lambda!87073))))

(assert (=> bs!460780 (= lambda!87107 lambda!87082)))

(declare-fun bs!460783 () Bool)

(assert (= bs!460783 (and d!694557 b!2364342)))

(assert (=> bs!460783 (not (= lambda!87107 lambda!87098))))

(assert (=> bs!460779 (not (= lambda!87107 lambda!87047))))

(declare-fun bs!460784 () Bool)

(assert (= bs!460784 (and d!694557 b!2363802)))

(assert (=> bs!460784 (not (= lambda!87107 lambda!87074))))

(declare-fun bs!460785 () Bool)

(assert (= bs!460785 (and d!694557 d!694525)))

(assert (=> bs!460785 (= lambda!87107 lambda!87102)))

(declare-fun bs!460786 () Bool)

(assert (= bs!460786 (and d!694557 b!2364343)))

(assert (=> bs!460786 (not (= lambda!87107 lambda!87099))))

(assert (=> d!694557 true))

(assert (=> d!694557 true))

(assert (=> d!694557 true))

(declare-fun lambda!87108 () Int)

(assert (=> bs!460779 (not (= lambda!87108 lambda!87046))))

(assert (=> bs!460780 (= lambda!87108 lambda!87083)))

(assert (=> bs!460781 (not (= lambda!87108 lambda!87077))))

(assert (=> bs!460782 (not (= lambda!87108 lambda!87073))))

(declare-fun bs!460787 () Bool)

(assert (= bs!460787 d!694557))

(assert (=> bs!460787 (not (= lambda!87108 lambda!87107))))

(assert (=> bs!460780 (not (= lambda!87108 lambda!87082))))

(assert (=> bs!460783 (not (= lambda!87108 lambda!87098))))

(assert (=> bs!460779 (= lambda!87108 lambda!87047)))

(assert (=> bs!460784 (= lambda!87108 lambda!87074)))

(assert (=> bs!460785 (not (= lambda!87108 lambda!87102))))

(assert (=> bs!460786 (= (and (= (regOne!14354 r!13927) (regOne!14354 (regOne!14355 r!13927))) (= (regTwo!14354 r!13927) (regTwo!14354 (regOne!14355 r!13927)))) (= lambda!87108 lambda!87099))))

(assert (=> d!694557 true))

(assert (=> d!694557 true))

(assert (=> d!694557 true))

(assert (=> d!694557 (= (Exists!983 lambda!87107) (Exists!983 lambda!87108))))

(assert (=> d!694557 true))

(declare-fun _$90!916 () Unit!40877)

(assert (=> d!694557 (= (choose!13718 (regOne!14354 r!13927) (regTwo!14354 r!13927) s!9460) _$90!916)))

(declare-fun m!2775437 () Bool)

(assert (=> bs!460787 m!2775437))

(declare-fun m!2775439 () Bool)

(assert (=> bs!460787 m!2775439))

(assert (=> d!694373 d!694557))

(assert (=> d!694373 d!694379))

(declare-fun d!694559 () Bool)

(assert (=> d!694559 (= (isDefined!4292 lt!864883) (not (isEmpty!15902 lt!864883)))))

(declare-fun bs!460788 () Bool)

(assert (= bs!460788 d!694559))

(declare-fun m!2775441 () Bool)

(assert (=> bs!460788 m!2775441))

(assert (=> d!694375 d!694559))

(declare-fun b!2364439 () Bool)

(declare-fun e!1509885 () Bool)

(assert (=> b!2364439 (= e!1509885 (not (= (head!5091 Nil!27983) (c!375623 (regOne!14354 r!13927)))))))

(declare-fun b!2364440 () Bool)

(declare-fun e!1509886 () Bool)

(declare-fun lt!864921 () Bool)

(declare-fun call!143873 () Bool)

(assert (=> b!2364440 (= e!1509886 (= lt!864921 call!143873))))

(declare-fun b!2364441 () Bool)

(declare-fun res!1003455 () Bool)

(declare-fun e!1509887 () Bool)

(assert (=> b!2364441 (=> res!1003455 e!1509887)))

(declare-fun e!1509884 () Bool)

(assert (=> b!2364441 (= res!1003455 e!1509884)))

(declare-fun res!1003454 () Bool)

(assert (=> b!2364441 (=> (not res!1003454) (not e!1509884))))

(assert (=> b!2364441 (= res!1003454 lt!864921)))

(declare-fun b!2364442 () Bool)

(declare-fun e!1509882 () Bool)

(assert (=> b!2364442 (= e!1509882 e!1509885)))

(declare-fun res!1003452 () Bool)

(assert (=> b!2364442 (=> res!1003452 e!1509885)))

(assert (=> b!2364442 (= res!1003452 call!143873)))

(declare-fun b!2364443 () Bool)

(declare-fun res!1003453 () Bool)

(assert (=> b!2364443 (=> res!1003453 e!1509885)))

(assert (=> b!2364443 (= res!1003453 (not (isEmpty!15901 (tail!3360 Nil!27983))))))

(declare-fun b!2364444 () Bool)

(declare-fun res!1003459 () Bool)

(assert (=> b!2364444 (=> res!1003459 e!1509887)))

(assert (=> b!2364444 (= res!1003459 (not ((_ is ElementMatch!6921) (regOne!14354 r!13927))))))

(declare-fun e!1509881 () Bool)

(assert (=> b!2364444 (= e!1509881 e!1509887)))

(declare-fun d!694561 () Bool)

(assert (=> d!694561 e!1509886))

(declare-fun c!375827 () Bool)

(assert (=> d!694561 (= c!375827 ((_ is EmptyExpr!6921) (regOne!14354 r!13927)))))

(declare-fun e!1509883 () Bool)

(assert (=> d!694561 (= lt!864921 e!1509883)))

(declare-fun c!375825 () Bool)

(assert (=> d!694561 (= c!375825 (isEmpty!15901 Nil!27983))))

(assert (=> d!694561 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694561 (= (matchR!3038 (regOne!14354 r!13927) Nil!27983) lt!864921)))

(declare-fun b!2364445 () Bool)

(declare-fun res!1003456 () Bool)

(assert (=> b!2364445 (=> (not res!1003456) (not e!1509884))))

(assert (=> b!2364445 (= res!1003456 (not call!143873))))

(declare-fun b!2364446 () Bool)

(assert (=> b!2364446 (= e!1509883 (nullable!1985 (regOne!14354 r!13927)))))

(declare-fun b!2364447 () Bool)

(assert (=> b!2364447 (= e!1509881 (not lt!864921))))

(declare-fun b!2364448 () Bool)

(assert (=> b!2364448 (= e!1509884 (= (head!5091 Nil!27983) (c!375623 (regOne!14354 r!13927))))))

(declare-fun bm!143868 () Bool)

(assert (=> bm!143868 (= call!143873 (isEmpty!15901 Nil!27983))))

(declare-fun b!2364449 () Bool)

(assert (=> b!2364449 (= e!1509887 e!1509882)))

(declare-fun res!1003458 () Bool)

(assert (=> b!2364449 (=> (not res!1003458) (not e!1509882))))

(assert (=> b!2364449 (= res!1003458 (not lt!864921))))

(declare-fun b!2364450 () Bool)

(declare-fun res!1003457 () Bool)

(assert (=> b!2364450 (=> (not res!1003457) (not e!1509884))))

(assert (=> b!2364450 (= res!1003457 (isEmpty!15901 (tail!3360 Nil!27983)))))

(declare-fun b!2364451 () Bool)

(assert (=> b!2364451 (= e!1509883 (matchR!3038 (derivativeStep!1644 (regOne!14354 r!13927) (head!5091 Nil!27983)) (tail!3360 Nil!27983)))))

(declare-fun b!2364452 () Bool)

(assert (=> b!2364452 (= e!1509886 e!1509881)))

(declare-fun c!375826 () Bool)

(assert (=> b!2364452 (= c!375826 ((_ is EmptyLang!6921) (regOne!14354 r!13927)))))

(assert (= (and d!694561 c!375825) b!2364446))

(assert (= (and d!694561 (not c!375825)) b!2364451))

(assert (= (and d!694561 c!375827) b!2364440))

(assert (= (and d!694561 (not c!375827)) b!2364452))

(assert (= (and b!2364452 c!375826) b!2364447))

(assert (= (and b!2364452 (not c!375826)) b!2364444))

(assert (= (and b!2364444 (not res!1003459)) b!2364441))

(assert (= (and b!2364441 res!1003454) b!2364445))

(assert (= (and b!2364445 res!1003456) b!2364450))

(assert (= (and b!2364450 res!1003457) b!2364448))

(assert (= (and b!2364441 (not res!1003455)) b!2364449))

(assert (= (and b!2364449 res!1003458) b!2364442))

(assert (= (and b!2364442 (not res!1003452)) b!2364443))

(assert (= (and b!2364443 (not res!1003453)) b!2364439))

(assert (= (or b!2364440 b!2364442 b!2364445) bm!143868))

(declare-fun m!2775443 () Bool)

(assert (=> b!2364448 m!2775443))

(assert (=> b!2364446 m!2775387))

(declare-fun m!2775445 () Bool)

(assert (=> d!694561 m!2775445))

(assert (=> d!694561 m!2774827))

(assert (=> b!2364451 m!2775443))

(assert (=> b!2364451 m!2775443))

(declare-fun m!2775447 () Bool)

(assert (=> b!2364451 m!2775447))

(declare-fun m!2775449 () Bool)

(assert (=> b!2364451 m!2775449))

(assert (=> b!2364451 m!2775447))

(assert (=> b!2364451 m!2775449))

(declare-fun m!2775451 () Bool)

(assert (=> b!2364451 m!2775451))

(assert (=> b!2364450 m!2775449))

(assert (=> b!2364450 m!2775449))

(declare-fun m!2775453 () Bool)

(assert (=> b!2364450 m!2775453))

(assert (=> b!2364439 m!2775443))

(assert (=> b!2364443 m!2775449))

(assert (=> b!2364443 m!2775449))

(assert (=> b!2364443 m!2775453))

(assert (=> bm!143868 m!2775445))

(assert (=> d!694375 d!694561))

(assert (=> d!694375 d!694379))

(declare-fun d!694563 () Bool)

(assert (=> d!694563 (= (isEmpty!15902 (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460)) (not ((_ is Some!5463) (findConcatSeparation!572 (regOne!14354 r!13927) (regTwo!14354 r!13927) Nil!27983 s!9460 s!9460))))))

(assert (=> d!694369 d!694563))

(declare-fun bs!460789 () Bool)

(declare-fun d!694565 () Bool)

(assert (= bs!460789 (and d!694565 start!231966)))

(declare-fun lambda!87109 () Int)

(assert (=> bs!460789 (= lambda!87109 lambda!87045)))

(declare-fun bs!460790 () Bool)

(assert (= bs!460790 (and d!694565 d!694335)))

(assert (=> bs!460790 (= lambda!87109 lambda!87059)))

(declare-fun b!2364453 () Bool)

(declare-fun e!1509889 () Bool)

(declare-fun e!1509890 () Bool)

(assert (=> b!2364453 (= e!1509889 e!1509890)))

(declare-fun c!375829 () Bool)

(assert (=> b!2364453 (= c!375829 (isEmpty!15900 (tail!3359 (t!208057 l!9164))))))

(declare-fun b!2364454 () Bool)

(declare-fun e!1509893 () Regex!6921)

(assert (=> b!2364454 (= e!1509893 (Concat!11557 (h!33383 (t!208057 l!9164)) (generalisedConcat!22 (t!208057 (t!208057 l!9164)))))))

(declare-fun b!2364456 () Bool)

(declare-fun lt!864922 () Regex!6921)

(assert (=> b!2364456 (= e!1509889 (isEmptyExpr!8 lt!864922))))

(declare-fun b!2364457 () Bool)

(assert (=> b!2364457 (= e!1509893 EmptyExpr!6921)))

(declare-fun b!2364458 () Bool)

(declare-fun e!1509888 () Bool)

(assert (=> b!2364458 (= e!1509888 (isEmpty!15900 (t!208057 (t!208057 l!9164))))))

(declare-fun b!2364459 () Bool)

(declare-fun e!1509891 () Bool)

(assert (=> b!2364459 (= e!1509891 e!1509889)))

(declare-fun c!375830 () Bool)

(assert (=> b!2364459 (= c!375830 (isEmpty!15900 (t!208057 l!9164)))))

(declare-fun b!2364460 () Bool)

(declare-fun e!1509892 () Regex!6921)

(assert (=> b!2364460 (= e!1509892 e!1509893)))

(declare-fun c!375831 () Bool)

(assert (=> b!2364460 (= c!375831 ((_ is Cons!27982) (t!208057 l!9164)))))

(declare-fun b!2364461 () Bool)

(assert (=> b!2364461 (= e!1509892 (h!33383 (t!208057 l!9164)))))

(declare-fun b!2364462 () Bool)

(assert (=> b!2364462 (= e!1509890 (= lt!864922 (head!5090 (t!208057 l!9164))))))

(assert (=> d!694565 e!1509891))

(declare-fun res!1003460 () Bool)

(assert (=> d!694565 (=> (not res!1003460) (not e!1509891))))

(assert (=> d!694565 (= res!1003460 (validRegex!2651 lt!864922))))

(assert (=> d!694565 (= lt!864922 e!1509892)))

(declare-fun c!375828 () Bool)

(assert (=> d!694565 (= c!375828 e!1509888)))

(declare-fun res!1003461 () Bool)

(assert (=> d!694565 (=> (not res!1003461) (not e!1509888))))

(assert (=> d!694565 (= res!1003461 ((_ is Cons!27982) (t!208057 l!9164)))))

(assert (=> d!694565 (forall!5555 (t!208057 l!9164) lambda!87109)))

(assert (=> d!694565 (= (generalisedConcat!22 (t!208057 l!9164)) lt!864922)))

(declare-fun b!2364455 () Bool)

(assert (=> b!2364455 (= e!1509890 (isConcat!8 lt!864922))))

(assert (= (and d!694565 res!1003461) b!2364458))

(assert (= (and d!694565 c!375828) b!2364461))

(assert (= (and d!694565 (not c!375828)) b!2364460))

(assert (= (and b!2364460 c!375831) b!2364454))

(assert (= (and b!2364460 (not c!375831)) b!2364457))

(assert (= (and d!694565 res!1003460) b!2364459))

(assert (= (and b!2364459 c!375830) b!2364456))

(assert (= (and b!2364459 (not c!375830)) b!2364453))

(assert (= (and b!2364453 c!375829) b!2364462))

(assert (= (and b!2364453 (not c!375829)) b!2364455))

(declare-fun m!2775455 () Bool)

(assert (=> d!694565 m!2775455))

(declare-fun m!2775457 () Bool)

(assert (=> d!694565 m!2775457))

(declare-fun m!2775459 () Bool)

(assert (=> b!2364453 m!2775459))

(assert (=> b!2364453 m!2775459))

(declare-fun m!2775461 () Bool)

(assert (=> b!2364453 m!2775461))

(assert (=> b!2364459 m!2774903))

(declare-fun m!2775463 () Bool)

(assert (=> b!2364462 m!2775463))

(declare-fun m!2775465 () Bool)

(assert (=> b!2364454 m!2775465))

(declare-fun m!2775467 () Bool)

(assert (=> b!2364458 m!2775467))

(declare-fun m!2775469 () Bool)

(assert (=> b!2364456 m!2775469))

(declare-fun m!2775471 () Bool)

(assert (=> b!2364455 m!2775471))

(assert (=> b!2363594 d!694565))

(declare-fun d!694567 () Bool)

(assert (=> d!694567 (= (isEmpty!15900 (tail!3359 l!9164)) ((_ is Nil!27982) (tail!3359 l!9164)))))

(assert (=> b!2363593 d!694567))

(declare-fun d!694569 () Bool)

(assert (=> d!694569 (= (tail!3359 l!9164) (t!208057 l!9164))))

(assert (=> b!2363593 d!694569))

(declare-fun b!2364463 () Bool)

(declare-fun res!1003464 () Bool)

(declare-fun e!1509895 () Bool)

(assert (=> b!2364463 (=> res!1003464 e!1509895)))

(assert (=> b!2364463 (= res!1003464 (not ((_ is Concat!11557) lt!864848)))))

(declare-fun e!1509898 () Bool)

(assert (=> b!2364463 (= e!1509898 e!1509895)))

(declare-fun b!2364464 () Bool)

(declare-fun res!1003463 () Bool)

(declare-fun e!1509899 () Bool)

(assert (=> b!2364464 (=> (not res!1003463) (not e!1509899))))

(declare-fun call!143875 () Bool)

(assert (=> b!2364464 (= res!1003463 call!143875)))

(assert (=> b!2364464 (= e!1509898 e!1509899)))

(declare-fun b!2364465 () Bool)

(declare-fun e!1509897 () Bool)

(declare-fun e!1509896 () Bool)

(assert (=> b!2364465 (= e!1509897 e!1509896)))

(declare-fun res!1003465 () Bool)

(assert (=> b!2364465 (= res!1003465 (not (nullable!1985 (reg!7250 lt!864848))))))

(assert (=> b!2364465 (=> (not res!1003465) (not e!1509896))))

(declare-fun bm!143869 () Bool)

(declare-fun call!143876 () Bool)

(declare-fun call!143874 () Bool)

(assert (=> bm!143869 (= call!143876 call!143874)))

(declare-fun b!2364466 () Bool)

(assert (=> b!2364466 (= e!1509897 e!1509898)))

(declare-fun c!375832 () Bool)

(assert (=> b!2364466 (= c!375832 ((_ is Union!6921) lt!864848))))

(declare-fun b!2364467 () Bool)

(declare-fun e!1509900 () Bool)

(assert (=> b!2364467 (= e!1509895 e!1509900)))

(declare-fun res!1003466 () Bool)

(assert (=> b!2364467 (=> (not res!1003466) (not e!1509900))))

(assert (=> b!2364467 (= res!1003466 call!143876)))

(declare-fun b!2364468 () Bool)

(assert (=> b!2364468 (= e!1509900 call!143875)))

(declare-fun b!2364469 () Bool)

(declare-fun e!1509894 () Bool)

(assert (=> b!2364469 (= e!1509894 e!1509897)))

(declare-fun c!375833 () Bool)

(assert (=> b!2364469 (= c!375833 ((_ is Star!6921) lt!864848))))

(declare-fun bm!143870 () Bool)

(assert (=> bm!143870 (= call!143875 (validRegex!2651 (ite c!375832 (regOne!14355 lt!864848) (regTwo!14354 lt!864848))))))

(declare-fun d!694571 () Bool)

(declare-fun res!1003462 () Bool)

(assert (=> d!694571 (=> res!1003462 e!1509894)))

(assert (=> d!694571 (= res!1003462 ((_ is ElementMatch!6921) lt!864848))))

(assert (=> d!694571 (= (validRegex!2651 lt!864848) e!1509894)))

(declare-fun b!2364470 () Bool)

(assert (=> b!2364470 (= e!1509896 call!143874)))

(declare-fun bm!143871 () Bool)

(assert (=> bm!143871 (= call!143874 (validRegex!2651 (ite c!375833 (reg!7250 lt!864848) (ite c!375832 (regTwo!14355 lt!864848) (regOne!14354 lt!864848)))))))

(declare-fun b!2364471 () Bool)

(assert (=> b!2364471 (= e!1509899 call!143876)))

(assert (= (and d!694571 (not res!1003462)) b!2364469))

(assert (= (and b!2364469 c!375833) b!2364465))

(assert (= (and b!2364469 (not c!375833)) b!2364466))

(assert (= (and b!2364465 res!1003465) b!2364470))

(assert (= (and b!2364466 c!375832) b!2364464))

(assert (= (and b!2364466 (not c!375832)) b!2364463))

(assert (= (and b!2364464 res!1003463) b!2364471))

(assert (= (and b!2364463 (not res!1003464)) b!2364467))

(assert (= (and b!2364467 res!1003466) b!2364468))

(assert (= (or b!2364464 b!2364468) bm!143870))

(assert (= (or b!2364471 b!2364467) bm!143869))

(assert (= (or b!2364470 bm!143869) bm!143871))

(declare-fun m!2775473 () Bool)

(assert (=> b!2364465 m!2775473))

(declare-fun m!2775475 () Bool)

(assert (=> bm!143870 m!2775475))

(declare-fun m!2775477 () Bool)

(assert (=> bm!143871 m!2775477))

(assert (=> d!694335 d!694571))

(declare-fun d!694573 () Bool)

(declare-fun res!1003467 () Bool)

(declare-fun e!1509901 () Bool)

(assert (=> d!694573 (=> res!1003467 e!1509901)))

(assert (=> d!694573 (= res!1003467 ((_ is Nil!27982) l!9164))))

(assert (=> d!694573 (= (forall!5555 l!9164 lambda!87059) e!1509901)))

(declare-fun b!2364472 () Bool)

(declare-fun e!1509902 () Bool)

(assert (=> b!2364472 (= e!1509901 e!1509902)))

(declare-fun res!1003468 () Bool)

(assert (=> b!2364472 (=> (not res!1003468) (not e!1509902))))

(assert (=> b!2364472 (= res!1003468 (dynLambda!12056 lambda!87059 (h!33383 l!9164)))))

(declare-fun b!2364473 () Bool)

(assert (=> b!2364473 (= e!1509902 (forall!5555 (t!208057 l!9164) lambda!87059))))

(assert (= (and d!694573 (not res!1003467)) b!2364472))

(assert (= (and b!2364472 res!1003468) b!2364473))

(declare-fun b_lambda!73837 () Bool)

(assert (=> (not b_lambda!73837) (not b!2364472)))

(declare-fun m!2775479 () Bool)

(assert (=> b!2364472 m!2775479))

(declare-fun m!2775481 () Bool)

(assert (=> b!2364473 m!2775481))

(assert (=> d!694335 d!694573))

(declare-fun d!694575 () Bool)

(assert (=> d!694575 true))

(assert (=> d!694575 true))

(declare-fun res!1003469 () Bool)

(assert (=> d!694575 (= (choose!13716 lambda!87046) res!1003469)))

(assert (=> d!694377 d!694575))

(assert (=> b!2363672 d!694521))

(assert (=> b!2363851 d!694559))

(declare-fun bs!460791 () Bool)

(declare-fun b!2364477 () Bool)

(assert (= bs!460791 (and b!2364477 b!2363417)))

(declare-fun lambda!87110 () Int)

(assert (=> bs!460791 (not (= lambda!87110 lambda!87046))))

(declare-fun bs!460792 () Bool)

(assert (= bs!460792 (and b!2364477 d!694373)))

(assert (=> bs!460792 (not (= lambda!87110 lambda!87083))))

(declare-fun bs!460793 () Bool)

(assert (= bs!460793 (and b!2364477 d!694371)))

(assert (=> bs!460793 (not (= lambda!87110 lambda!87077))))

(declare-fun bs!460794 () Bool)

(assert (= bs!460794 (and b!2364477 d!694557)))

(assert (=> bs!460794 (not (= lambda!87110 lambda!87108))))

(declare-fun bs!460795 () Bool)

(assert (= bs!460795 (and b!2364477 b!2363801)))

(assert (=> bs!460795 (= (and (= (reg!7250 (regTwo!14355 r!13927)) (reg!7250 r!13927)) (= (regTwo!14355 r!13927) r!13927)) (= lambda!87110 lambda!87073))))

(assert (=> bs!460794 (not (= lambda!87110 lambda!87107))))

(assert (=> bs!460792 (not (= lambda!87110 lambda!87082))))

(declare-fun bs!460796 () Bool)

(assert (= bs!460796 (and b!2364477 b!2364342)))

(assert (=> bs!460796 (= (and (= (reg!7250 (regTwo!14355 r!13927)) (reg!7250 (regOne!14355 r!13927))) (= (regTwo!14355 r!13927) (regOne!14355 r!13927))) (= lambda!87110 lambda!87098))))

(assert (=> bs!460791 (not (= lambda!87110 lambda!87047))))

(declare-fun bs!460797 () Bool)

(assert (= bs!460797 (and b!2364477 b!2363802)))

(assert (=> bs!460797 (not (= lambda!87110 lambda!87074))))

(declare-fun bs!460798 () Bool)

(assert (= bs!460798 (and b!2364477 d!694525)))

(assert (=> bs!460798 (not (= lambda!87110 lambda!87102))))

(declare-fun bs!460799 () Bool)

(assert (= bs!460799 (and b!2364477 b!2364343)))

(assert (=> bs!460799 (not (= lambda!87110 lambda!87099))))

(assert (=> b!2364477 true))

(assert (=> b!2364477 true))

(declare-fun bs!460800 () Bool)

(declare-fun b!2364478 () Bool)

(assert (= bs!460800 (and b!2364478 b!2363417)))

(declare-fun lambda!87111 () Int)

(assert (=> bs!460800 (not (= lambda!87111 lambda!87046))))

(declare-fun bs!460801 () Bool)

(assert (= bs!460801 (and b!2364478 d!694373)))

(assert (=> bs!460801 (= (and (= (regOne!14354 (regTwo!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regTwo!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87111 lambda!87083))))

(declare-fun bs!460802 () Bool)

(assert (= bs!460802 (and b!2364478 b!2364477)))

(assert (=> bs!460802 (not (= lambda!87111 lambda!87110))))

(declare-fun bs!460803 () Bool)

(assert (= bs!460803 (and b!2364478 d!694371)))

(assert (=> bs!460803 (not (= lambda!87111 lambda!87077))))

(declare-fun bs!460804 () Bool)

(assert (= bs!460804 (and b!2364478 d!694557)))

(assert (=> bs!460804 (= (and (= (regOne!14354 (regTwo!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regTwo!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87111 lambda!87108))))

(declare-fun bs!460805 () Bool)

(assert (= bs!460805 (and b!2364478 b!2363801)))

(assert (=> bs!460805 (not (= lambda!87111 lambda!87073))))

(assert (=> bs!460804 (not (= lambda!87111 lambda!87107))))

(assert (=> bs!460801 (not (= lambda!87111 lambda!87082))))

(declare-fun bs!460806 () Bool)

(assert (= bs!460806 (and b!2364478 b!2364342)))

(assert (=> bs!460806 (not (= lambda!87111 lambda!87098))))

(assert (=> bs!460800 (= (and (= (regOne!14354 (regTwo!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regTwo!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87111 lambda!87047))))

(declare-fun bs!460807 () Bool)

(assert (= bs!460807 (and b!2364478 b!2363802)))

(assert (=> bs!460807 (= (and (= (regOne!14354 (regTwo!14355 r!13927)) (regOne!14354 r!13927)) (= (regTwo!14354 (regTwo!14355 r!13927)) (regTwo!14354 r!13927))) (= lambda!87111 lambda!87074))))

(declare-fun bs!460808 () Bool)

(assert (= bs!460808 (and b!2364478 d!694525)))

(assert (=> bs!460808 (not (= lambda!87111 lambda!87102))))

(declare-fun bs!460809 () Bool)

(assert (= bs!460809 (and b!2364478 b!2364343)))

(assert (=> bs!460809 (= (and (= (regOne!14354 (regTwo!14355 r!13927)) (regOne!14354 (regOne!14355 r!13927))) (= (regTwo!14354 (regTwo!14355 r!13927)) (regTwo!14354 (regOne!14355 r!13927)))) (= lambda!87111 lambda!87099))))

(assert (=> b!2364478 true))

(assert (=> b!2364478 true))

(declare-fun bm!143872 () Bool)

(declare-fun call!143878 () Bool)

(assert (=> bm!143872 (= call!143878 (isEmpty!15901 s!9460))))

(declare-fun b!2364474 () Bool)

(declare-fun res!1003471 () Bool)

(declare-fun e!1509903 () Bool)

(assert (=> b!2364474 (=> res!1003471 e!1509903)))

(assert (=> b!2364474 (= res!1003471 call!143878)))

(declare-fun e!1509907 () Bool)

(assert (=> b!2364474 (= e!1509907 e!1509903)))

(declare-fun b!2364475 () Bool)

(declare-fun c!375835 () Bool)

(assert (=> b!2364475 (= c!375835 ((_ is Union!6921) (regTwo!14355 r!13927)))))

(declare-fun e!1509906 () Bool)

(declare-fun e!1509908 () Bool)

(assert (=> b!2364475 (= e!1509906 e!1509908)))

(declare-fun call!143877 () Bool)

(declare-fun bm!143873 () Bool)

(declare-fun c!375834 () Bool)

(assert (=> bm!143873 (= call!143877 (Exists!983 (ite c!375834 lambda!87110 lambda!87111)))))

(declare-fun d!694577 () Bool)

(declare-fun c!375836 () Bool)

(assert (=> d!694577 (= c!375836 ((_ is EmptyExpr!6921) (regTwo!14355 r!13927)))))

(declare-fun e!1509905 () Bool)

(assert (=> d!694577 (= (matchRSpec!770 (regTwo!14355 r!13927) s!9460) e!1509905)))

(declare-fun b!2364476 () Bool)

(declare-fun e!1509904 () Bool)

(assert (=> b!2364476 (= e!1509908 e!1509904)))

(declare-fun res!1003470 () Bool)

(assert (=> b!2364476 (= res!1003470 (matchRSpec!770 (regOne!14355 (regTwo!14355 r!13927)) s!9460))))

(assert (=> b!2364476 (=> res!1003470 e!1509904)))

(assert (=> b!2364477 (= e!1509903 call!143877)))

(assert (=> b!2364478 (= e!1509907 call!143877)))

(declare-fun b!2364479 () Bool)

(declare-fun c!375837 () Bool)

(assert (=> b!2364479 (= c!375837 ((_ is ElementMatch!6921) (regTwo!14355 r!13927)))))

(declare-fun e!1509909 () Bool)

(assert (=> b!2364479 (= e!1509909 e!1509906)))

(declare-fun b!2364480 () Bool)

(assert (=> b!2364480 (= e!1509905 call!143878)))

(declare-fun b!2364481 () Bool)

(assert (=> b!2364481 (= e!1509908 e!1509907)))

(assert (=> b!2364481 (= c!375834 ((_ is Star!6921) (regTwo!14355 r!13927)))))

(declare-fun b!2364482 () Bool)

(assert (=> b!2364482 (= e!1509905 e!1509909)))

(declare-fun res!1003472 () Bool)

(assert (=> b!2364482 (= res!1003472 (not ((_ is EmptyLang!6921) (regTwo!14355 r!13927))))))

(assert (=> b!2364482 (=> (not res!1003472) (not e!1509909))))

(declare-fun b!2364483 () Bool)

(assert (=> b!2364483 (= e!1509904 (matchRSpec!770 (regTwo!14355 (regTwo!14355 r!13927)) s!9460))))

(declare-fun b!2364484 () Bool)

(assert (=> b!2364484 (= e!1509906 (= s!9460 (Cons!27983 (c!375623 (regTwo!14355 r!13927)) Nil!27983)))))

(assert (= (and d!694577 c!375836) b!2364480))

(assert (= (and d!694577 (not c!375836)) b!2364482))

(assert (= (and b!2364482 res!1003472) b!2364479))

(assert (= (and b!2364479 c!375837) b!2364484))

(assert (= (and b!2364479 (not c!375837)) b!2364475))

(assert (= (and b!2364475 c!375835) b!2364476))

(assert (= (and b!2364475 (not c!375835)) b!2364481))

(assert (= (and b!2364476 (not res!1003470)) b!2364483))

(assert (= (and b!2364481 c!375834) b!2364474))

(assert (= (and b!2364481 (not c!375834)) b!2364478))

(assert (= (and b!2364474 (not res!1003471)) b!2364477))

(assert (= (or b!2364477 b!2364478) bm!143873))

(assert (= (or b!2364480 b!2364474) bm!143872))

(assert (=> bm!143872 m!2774935))

(declare-fun m!2775483 () Bool)

(assert (=> bm!143873 m!2775483))

(declare-fun m!2775485 () Bool)

(assert (=> b!2364476 m!2775485))

(declare-fun m!2775487 () Bool)

(assert (=> b!2364483 m!2775487))

(assert (=> b!2363807 d!694577))

(declare-fun b!2364485 () Bool)

(declare-fun e!1509914 () Bool)

(assert (=> b!2364485 (= e!1509914 (not (= (head!5091 s!9460) (c!375623 (regTwo!14354 r!13927)))))))

(declare-fun b!2364486 () Bool)

(declare-fun e!1509915 () Bool)

(declare-fun lt!864923 () Bool)

(declare-fun call!143879 () Bool)

(assert (=> b!2364486 (= e!1509915 (= lt!864923 call!143879))))

(declare-fun b!2364487 () Bool)

(declare-fun res!1003476 () Bool)

(declare-fun e!1509916 () Bool)

(assert (=> b!2364487 (=> res!1003476 e!1509916)))

(declare-fun e!1509913 () Bool)

(assert (=> b!2364487 (= res!1003476 e!1509913)))

(declare-fun res!1003475 () Bool)

(assert (=> b!2364487 (=> (not res!1003475) (not e!1509913))))

(assert (=> b!2364487 (= res!1003475 lt!864923)))

(declare-fun b!2364488 () Bool)

(declare-fun e!1509911 () Bool)

(assert (=> b!2364488 (= e!1509911 e!1509914)))

(declare-fun res!1003473 () Bool)

(assert (=> b!2364488 (=> res!1003473 e!1509914)))

(assert (=> b!2364488 (= res!1003473 call!143879)))

(declare-fun b!2364489 () Bool)

(declare-fun res!1003474 () Bool)

(assert (=> b!2364489 (=> res!1003474 e!1509914)))

(assert (=> b!2364489 (= res!1003474 (not (isEmpty!15901 (tail!3360 s!9460))))))

(declare-fun b!2364490 () Bool)

(declare-fun res!1003480 () Bool)

(assert (=> b!2364490 (=> res!1003480 e!1509916)))

(assert (=> b!2364490 (= res!1003480 (not ((_ is ElementMatch!6921) (regTwo!14354 r!13927))))))

(declare-fun e!1509910 () Bool)

(assert (=> b!2364490 (= e!1509910 e!1509916)))

(declare-fun d!694579 () Bool)

(assert (=> d!694579 e!1509915))

(declare-fun c!375840 () Bool)

(assert (=> d!694579 (= c!375840 ((_ is EmptyExpr!6921) (regTwo!14354 r!13927)))))

(declare-fun e!1509912 () Bool)

(assert (=> d!694579 (= lt!864923 e!1509912)))

(declare-fun c!375838 () Bool)

(assert (=> d!694579 (= c!375838 (isEmpty!15901 s!9460))))

(assert (=> d!694579 (validRegex!2651 (regTwo!14354 r!13927))))

(assert (=> d!694579 (= (matchR!3038 (regTwo!14354 r!13927) s!9460) lt!864923)))

(declare-fun b!2364491 () Bool)

(declare-fun res!1003477 () Bool)

(assert (=> b!2364491 (=> (not res!1003477) (not e!1509913))))

(assert (=> b!2364491 (= res!1003477 (not call!143879))))

(declare-fun b!2364492 () Bool)

(assert (=> b!2364492 (= e!1509912 (nullable!1985 (regTwo!14354 r!13927)))))

(declare-fun b!2364493 () Bool)

(assert (=> b!2364493 (= e!1509910 (not lt!864923))))

(declare-fun b!2364494 () Bool)

(assert (=> b!2364494 (= e!1509913 (= (head!5091 s!9460) (c!375623 (regTwo!14354 r!13927))))))

(declare-fun bm!143874 () Bool)

(assert (=> bm!143874 (= call!143879 (isEmpty!15901 s!9460))))

(declare-fun b!2364495 () Bool)

(assert (=> b!2364495 (= e!1509916 e!1509911)))

(declare-fun res!1003479 () Bool)

(assert (=> b!2364495 (=> (not res!1003479) (not e!1509911))))

(assert (=> b!2364495 (= res!1003479 (not lt!864923))))

(declare-fun b!2364496 () Bool)

(declare-fun res!1003478 () Bool)

(assert (=> b!2364496 (=> (not res!1003478) (not e!1509913))))

(assert (=> b!2364496 (= res!1003478 (isEmpty!15901 (tail!3360 s!9460)))))

(declare-fun b!2364497 () Bool)

(assert (=> b!2364497 (= e!1509912 (matchR!3038 (derivativeStep!1644 (regTwo!14354 r!13927) (head!5091 s!9460)) (tail!3360 s!9460)))))

(declare-fun b!2364498 () Bool)

(assert (=> b!2364498 (= e!1509915 e!1509910)))

(declare-fun c!375839 () Bool)

(assert (=> b!2364498 (= c!375839 ((_ is EmptyLang!6921) (regTwo!14354 r!13927)))))

(assert (= (and d!694579 c!375838) b!2364492))

(assert (= (and d!694579 (not c!375838)) b!2364497))

(assert (= (and d!694579 c!375840) b!2364486))

(assert (= (and d!694579 (not c!375840)) b!2364498))

(assert (= (and b!2364498 c!375839) b!2364493))

(assert (= (and b!2364498 (not c!375839)) b!2364490))

(assert (= (and b!2364490 (not res!1003480)) b!2364487))

(assert (= (and b!2364487 res!1003475) b!2364491))

(assert (= (and b!2364491 res!1003477) b!2364496))

(assert (= (and b!2364496 res!1003478) b!2364494))

(assert (= (and b!2364487 (not res!1003476)) b!2364495))

(assert (= (and b!2364495 res!1003479) b!2364488))

(assert (= (and b!2364488 (not res!1003473)) b!2364489))

(assert (= (and b!2364489 (not res!1003474)) b!2364485))

(assert (= (or b!2364486 b!2364488 b!2364491) bm!143874))

(assert (=> b!2364494 m!2774929))

(assert (=> b!2364492 m!2775285))

(assert (=> d!694579 m!2774935))

(assert (=> d!694579 m!2774833))

(assert (=> b!2364497 m!2774929))

(assert (=> b!2364497 m!2774929))

(declare-fun m!2775489 () Bool)

(assert (=> b!2364497 m!2775489))

(assert (=> b!2364497 m!2774947))

(assert (=> b!2364497 m!2775489))

(assert (=> b!2364497 m!2774947))

(declare-fun m!2775491 () Bool)

(assert (=> b!2364497 m!2775491))

(assert (=> b!2364496 m!2774947))

(assert (=> b!2364496 m!2774947))

(assert (=> b!2364496 m!2774951))

(assert (=> b!2364485 m!2774929))

(assert (=> b!2364489 m!2774947))

(assert (=> b!2364489 m!2774947))

(assert (=> b!2364489 m!2774951))

(assert (=> bm!143874 m!2774935))

(assert (=> b!2363853 d!694579))

(declare-fun b!2364499 () Bool)

(declare-fun e!1509921 () Bool)

(assert (=> b!2364499 (= e!1509921 (not (= (head!5091 (_1!16394 (get!8494 lt!864883))) (c!375623 (regOne!14354 r!13927)))))))

(declare-fun b!2364500 () Bool)

(declare-fun e!1509922 () Bool)

(declare-fun lt!864924 () Bool)

(declare-fun call!143880 () Bool)

(assert (=> b!2364500 (= e!1509922 (= lt!864924 call!143880))))

(declare-fun b!2364501 () Bool)

(declare-fun res!1003484 () Bool)

(declare-fun e!1509923 () Bool)

(assert (=> b!2364501 (=> res!1003484 e!1509923)))

(declare-fun e!1509920 () Bool)

(assert (=> b!2364501 (= res!1003484 e!1509920)))

(declare-fun res!1003483 () Bool)

(assert (=> b!2364501 (=> (not res!1003483) (not e!1509920))))

(assert (=> b!2364501 (= res!1003483 lt!864924)))

(declare-fun b!2364502 () Bool)

(declare-fun e!1509918 () Bool)

(assert (=> b!2364502 (= e!1509918 e!1509921)))

(declare-fun res!1003481 () Bool)

(assert (=> b!2364502 (=> res!1003481 e!1509921)))

(assert (=> b!2364502 (= res!1003481 call!143880)))

(declare-fun b!2364503 () Bool)

(declare-fun res!1003482 () Bool)

(assert (=> b!2364503 (=> res!1003482 e!1509921)))

(assert (=> b!2364503 (= res!1003482 (not (isEmpty!15901 (tail!3360 (_1!16394 (get!8494 lt!864883))))))))

(declare-fun b!2364504 () Bool)

(declare-fun res!1003488 () Bool)

(assert (=> b!2364504 (=> res!1003488 e!1509923)))

(assert (=> b!2364504 (= res!1003488 (not ((_ is ElementMatch!6921) (regOne!14354 r!13927))))))

(declare-fun e!1509917 () Bool)

(assert (=> b!2364504 (= e!1509917 e!1509923)))

(declare-fun d!694581 () Bool)

(assert (=> d!694581 e!1509922))

(declare-fun c!375843 () Bool)

(assert (=> d!694581 (= c!375843 ((_ is EmptyExpr!6921) (regOne!14354 r!13927)))))

(declare-fun e!1509919 () Bool)

(assert (=> d!694581 (= lt!864924 e!1509919)))

(declare-fun c!375841 () Bool)

(assert (=> d!694581 (= c!375841 (isEmpty!15901 (_1!16394 (get!8494 lt!864883))))))

(assert (=> d!694581 (validRegex!2651 (regOne!14354 r!13927))))

(assert (=> d!694581 (= (matchR!3038 (regOne!14354 r!13927) (_1!16394 (get!8494 lt!864883))) lt!864924)))

(declare-fun b!2364505 () Bool)

(declare-fun res!1003485 () Bool)

(assert (=> b!2364505 (=> (not res!1003485) (not e!1509920))))

(assert (=> b!2364505 (= res!1003485 (not call!143880))))

(declare-fun b!2364506 () Bool)

(assert (=> b!2364506 (= e!1509919 (nullable!1985 (regOne!14354 r!13927)))))

(declare-fun b!2364507 () Bool)

(assert (=> b!2364507 (= e!1509917 (not lt!864924))))

(declare-fun b!2364508 () Bool)

(assert (=> b!2364508 (= e!1509920 (= (head!5091 (_1!16394 (get!8494 lt!864883))) (c!375623 (regOne!14354 r!13927))))))

(declare-fun bm!143875 () Bool)

(assert (=> bm!143875 (= call!143880 (isEmpty!15901 (_1!16394 (get!8494 lt!864883))))))

(declare-fun b!2364509 () Bool)

(assert (=> b!2364509 (= e!1509923 e!1509918)))

(declare-fun res!1003487 () Bool)

(assert (=> b!2364509 (=> (not res!1003487) (not e!1509918))))

(assert (=> b!2364509 (= res!1003487 (not lt!864924))))

(declare-fun b!2364510 () Bool)

(declare-fun res!1003486 () Bool)

(assert (=> b!2364510 (=> (not res!1003486) (not e!1509920))))

(assert (=> b!2364510 (= res!1003486 (isEmpty!15901 (tail!3360 (_1!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364511 () Bool)

(assert (=> b!2364511 (= e!1509919 (matchR!3038 (derivativeStep!1644 (regOne!14354 r!13927) (head!5091 (_1!16394 (get!8494 lt!864883)))) (tail!3360 (_1!16394 (get!8494 lt!864883)))))))

(declare-fun b!2364512 () Bool)

(assert (=> b!2364512 (= e!1509922 e!1509917)))

(declare-fun c!375842 () Bool)

(assert (=> b!2364512 (= c!375842 ((_ is EmptyLang!6921) (regOne!14354 r!13927)))))

(assert (= (and d!694581 c!375841) b!2364506))

(assert (= (and d!694581 (not c!375841)) b!2364511))

(assert (= (and d!694581 c!375843) b!2364500))

(assert (= (and d!694581 (not c!375843)) b!2364512))

(assert (= (and b!2364512 c!375842) b!2364507))

(assert (= (and b!2364512 (not c!375842)) b!2364504))

(assert (= (and b!2364504 (not res!1003488)) b!2364501))

(assert (= (and b!2364501 res!1003483) b!2364505))

(assert (= (and b!2364505 res!1003485) b!2364510))

(assert (= (and b!2364510 res!1003486) b!2364508))

(assert (= (and b!2364501 (not res!1003484)) b!2364509))

(assert (= (and b!2364509 res!1003487) b!2364502))

(assert (= (and b!2364502 (not res!1003481)) b!2364503))

(assert (= (and b!2364503 (not res!1003482)) b!2364499))

(assert (= (or b!2364500 b!2364502 b!2364505) bm!143875))

(declare-fun m!2775493 () Bool)

(assert (=> b!2364508 m!2775493))

(assert (=> b!2364506 m!2775387))

(declare-fun m!2775495 () Bool)

(assert (=> d!694581 m!2775495))

(assert (=> d!694581 m!2774827))

(assert (=> b!2364511 m!2775493))

(assert (=> b!2364511 m!2775493))

(declare-fun m!2775497 () Bool)

(assert (=> b!2364511 m!2775497))

(declare-fun m!2775499 () Bool)

(assert (=> b!2364511 m!2775499))

(assert (=> b!2364511 m!2775497))

(assert (=> b!2364511 m!2775499))

(declare-fun m!2775501 () Bool)

(assert (=> b!2364511 m!2775501))

(assert (=> b!2364510 m!2775499))

(assert (=> b!2364510 m!2775499))

(declare-fun m!2775503 () Bool)

(assert (=> b!2364510 m!2775503))

(assert (=> b!2364499 m!2775493))

(assert (=> b!2364503 m!2775499))

(assert (=> b!2364503 m!2775499))

(assert (=> b!2364503 m!2775503))

(assert (=> bm!143875 m!2775495))

(assert (=> b!2363852 d!694581))

(assert (=> b!2363852 d!694495))

(declare-fun b!2364514 () Bool)

(declare-fun e!1509924 () Bool)

(declare-fun tp!756103 () Bool)

(declare-fun tp!756102 () Bool)

(assert (=> b!2364514 (= e!1509924 (and tp!756103 tp!756102))))

(assert (=> b!2363895 (= tp!755932 e!1509924)))

(declare-fun b!2364516 () Bool)

(declare-fun tp!756105 () Bool)

(declare-fun tp!756106 () Bool)

(assert (=> b!2364516 (= e!1509924 (and tp!756105 tp!756106))))

(declare-fun b!2364513 () Bool)

(assert (=> b!2364513 (= e!1509924 tp_is_empty!11255)))

(declare-fun b!2364515 () Bool)

(declare-fun tp!756104 () Bool)

(assert (=> b!2364515 (= e!1509924 tp!756104)))

(assert (= (and b!2363895 ((_ is ElementMatch!6921) (regOne!14354 (regOne!14354 r!13927)))) b!2364513))

(assert (= (and b!2363895 ((_ is Concat!11557) (regOne!14354 (regOne!14354 r!13927)))) b!2364514))

(assert (= (and b!2363895 ((_ is Star!6921) (regOne!14354 (regOne!14354 r!13927)))) b!2364515))

(assert (= (and b!2363895 ((_ is Union!6921) (regOne!14354 (regOne!14354 r!13927)))) b!2364516))

(declare-fun b!2364518 () Bool)

(declare-fun e!1509925 () Bool)

(declare-fun tp!756108 () Bool)

(declare-fun tp!756107 () Bool)

(assert (=> b!2364518 (= e!1509925 (and tp!756108 tp!756107))))

(assert (=> b!2363895 (= tp!755931 e!1509925)))

(declare-fun b!2364520 () Bool)

(declare-fun tp!756110 () Bool)

(declare-fun tp!756111 () Bool)

(assert (=> b!2364520 (= e!1509925 (and tp!756110 tp!756111))))

(declare-fun b!2364517 () Bool)

(assert (=> b!2364517 (= e!1509925 tp_is_empty!11255)))

(declare-fun b!2364519 () Bool)

(declare-fun tp!756109 () Bool)

(assert (=> b!2364519 (= e!1509925 tp!756109)))

(assert (= (and b!2363895 ((_ is ElementMatch!6921) (regTwo!14354 (regOne!14354 r!13927)))) b!2364517))

(assert (= (and b!2363895 ((_ is Concat!11557) (regTwo!14354 (regOne!14354 r!13927)))) b!2364518))

(assert (= (and b!2363895 ((_ is Star!6921) (regTwo!14354 (regOne!14354 r!13927)))) b!2364519))

(assert (= (and b!2363895 ((_ is Union!6921) (regTwo!14354 (regOne!14354 r!13927)))) b!2364520))

(declare-fun b!2364522 () Bool)

(declare-fun e!1509926 () Bool)

(declare-fun tp!756113 () Bool)

(declare-fun tp!756112 () Bool)

(assert (=> b!2364522 (= e!1509926 (and tp!756113 tp!756112))))

(assert (=> b!2363899 (= tp!755937 e!1509926)))

(declare-fun b!2364524 () Bool)

(declare-fun tp!756115 () Bool)

(declare-fun tp!756116 () Bool)

(assert (=> b!2364524 (= e!1509926 (and tp!756115 tp!756116))))

(declare-fun b!2364521 () Bool)

(assert (=> b!2364521 (= e!1509926 tp_is_empty!11255)))

(declare-fun b!2364523 () Bool)

(declare-fun tp!756114 () Bool)

(assert (=> b!2364523 (= e!1509926 tp!756114)))

(assert (= (and b!2363899 ((_ is ElementMatch!6921) (regOne!14354 (regTwo!14354 r!13927)))) b!2364521))

(assert (= (and b!2363899 ((_ is Concat!11557) (regOne!14354 (regTwo!14354 r!13927)))) b!2364522))

(assert (= (and b!2363899 ((_ is Star!6921) (regOne!14354 (regTwo!14354 r!13927)))) b!2364523))

(assert (= (and b!2363899 ((_ is Union!6921) (regOne!14354 (regTwo!14354 r!13927)))) b!2364524))

(declare-fun b!2364526 () Bool)

(declare-fun e!1509927 () Bool)

(declare-fun tp!756118 () Bool)

(declare-fun tp!756117 () Bool)

(assert (=> b!2364526 (= e!1509927 (and tp!756118 tp!756117))))

(assert (=> b!2363899 (= tp!755936 e!1509927)))

(declare-fun b!2364528 () Bool)

(declare-fun tp!756120 () Bool)

(declare-fun tp!756121 () Bool)

(assert (=> b!2364528 (= e!1509927 (and tp!756120 tp!756121))))

(declare-fun b!2364525 () Bool)

(assert (=> b!2364525 (= e!1509927 tp_is_empty!11255)))

(declare-fun b!2364527 () Bool)

(declare-fun tp!756119 () Bool)

(assert (=> b!2364527 (= e!1509927 tp!756119)))

(assert (= (and b!2363899 ((_ is ElementMatch!6921) (regTwo!14354 (regTwo!14354 r!13927)))) b!2364525))

(assert (= (and b!2363899 ((_ is Concat!11557) (regTwo!14354 (regTwo!14354 r!13927)))) b!2364526))

(assert (= (and b!2363899 ((_ is Star!6921) (regTwo!14354 (regTwo!14354 r!13927)))) b!2364527))

(assert (= (and b!2363899 ((_ is Union!6921) (regTwo!14354 (regTwo!14354 r!13927)))) b!2364528))

(declare-fun b!2364530 () Bool)

(declare-fun e!1509928 () Bool)

(declare-fun tp!756123 () Bool)

(declare-fun tp!756122 () Bool)

(assert (=> b!2364530 (= e!1509928 (and tp!756123 tp!756122))))

(assert (=> b!2363896 (= tp!755933 e!1509928)))

(declare-fun b!2364532 () Bool)

(declare-fun tp!756125 () Bool)

(declare-fun tp!756126 () Bool)

(assert (=> b!2364532 (= e!1509928 (and tp!756125 tp!756126))))

(declare-fun b!2364529 () Bool)

(assert (=> b!2364529 (= e!1509928 tp_is_empty!11255)))

(declare-fun b!2364531 () Bool)

(declare-fun tp!756124 () Bool)

(assert (=> b!2364531 (= e!1509928 tp!756124)))

(assert (= (and b!2363896 ((_ is ElementMatch!6921) (reg!7250 (regOne!14354 r!13927)))) b!2364529))

(assert (= (and b!2363896 ((_ is Concat!11557) (reg!7250 (regOne!14354 r!13927)))) b!2364530))

(assert (= (and b!2363896 ((_ is Star!6921) (reg!7250 (regOne!14354 r!13927)))) b!2364531))

(assert (= (and b!2363896 ((_ is Union!6921) (reg!7250 (regOne!14354 r!13927)))) b!2364532))

(declare-fun b!2364534 () Bool)

(declare-fun e!1509929 () Bool)

(declare-fun tp!756128 () Bool)

(declare-fun tp!756127 () Bool)

(assert (=> b!2364534 (= e!1509929 (and tp!756128 tp!756127))))

(assert (=> b!2363887 (= tp!755922 e!1509929)))

(declare-fun b!2364536 () Bool)

(declare-fun tp!756130 () Bool)

(declare-fun tp!756131 () Bool)

(assert (=> b!2364536 (= e!1509929 (and tp!756130 tp!756131))))

(declare-fun b!2364533 () Bool)

(assert (=> b!2364533 (= e!1509929 tp_is_empty!11255)))

(declare-fun b!2364535 () Bool)

(declare-fun tp!756129 () Bool)

(assert (=> b!2364535 (= e!1509929 tp!756129)))

(assert (= (and b!2363887 ((_ is ElementMatch!6921) (regOne!14354 (regOne!14355 r!13927)))) b!2364533))

(assert (= (and b!2363887 ((_ is Concat!11557) (regOne!14354 (regOne!14355 r!13927)))) b!2364534))

(assert (= (and b!2363887 ((_ is Star!6921) (regOne!14354 (regOne!14355 r!13927)))) b!2364535))

(assert (= (and b!2363887 ((_ is Union!6921) (regOne!14354 (regOne!14355 r!13927)))) b!2364536))

(declare-fun b!2364538 () Bool)

(declare-fun e!1509930 () Bool)

(declare-fun tp!756133 () Bool)

(declare-fun tp!756132 () Bool)

(assert (=> b!2364538 (= e!1509930 (and tp!756133 tp!756132))))

(assert (=> b!2363887 (= tp!755921 e!1509930)))

(declare-fun b!2364540 () Bool)

(declare-fun tp!756135 () Bool)

(declare-fun tp!756136 () Bool)

(assert (=> b!2364540 (= e!1509930 (and tp!756135 tp!756136))))

(declare-fun b!2364537 () Bool)

(assert (=> b!2364537 (= e!1509930 tp_is_empty!11255)))

(declare-fun b!2364539 () Bool)

(declare-fun tp!756134 () Bool)

(assert (=> b!2364539 (= e!1509930 tp!756134)))

(assert (= (and b!2363887 ((_ is ElementMatch!6921) (regTwo!14354 (regOne!14355 r!13927)))) b!2364537))

(assert (= (and b!2363887 ((_ is Concat!11557) (regTwo!14354 (regOne!14355 r!13927)))) b!2364538))

(assert (= (and b!2363887 ((_ is Star!6921) (regTwo!14354 (regOne!14355 r!13927)))) b!2364539))

(assert (= (and b!2363887 ((_ is Union!6921) (regTwo!14354 (regOne!14355 r!13927)))) b!2364540))

(declare-fun b!2364542 () Bool)

(declare-fun e!1509931 () Bool)

(declare-fun tp!756138 () Bool)

(declare-fun tp!756137 () Bool)

(assert (=> b!2364542 (= e!1509931 (and tp!756138 tp!756137))))

(assert (=> b!2363901 (= tp!755939 e!1509931)))

(declare-fun b!2364544 () Bool)

(declare-fun tp!756140 () Bool)

(declare-fun tp!756141 () Bool)

(assert (=> b!2364544 (= e!1509931 (and tp!756140 tp!756141))))

(declare-fun b!2364541 () Bool)

(assert (=> b!2364541 (= e!1509931 tp_is_empty!11255)))

(declare-fun b!2364543 () Bool)

(declare-fun tp!756139 () Bool)

(assert (=> b!2364543 (= e!1509931 tp!756139)))

(assert (= (and b!2363901 ((_ is ElementMatch!6921) (regOne!14355 (regTwo!14354 r!13927)))) b!2364541))

(assert (= (and b!2363901 ((_ is Concat!11557) (regOne!14355 (regTwo!14354 r!13927)))) b!2364542))

(assert (= (and b!2363901 ((_ is Star!6921) (regOne!14355 (regTwo!14354 r!13927)))) b!2364543))

(assert (= (and b!2363901 ((_ is Union!6921) (regOne!14355 (regTwo!14354 r!13927)))) b!2364544))

(declare-fun b!2364546 () Bool)

(declare-fun e!1509932 () Bool)

(declare-fun tp!756143 () Bool)

(declare-fun tp!756142 () Bool)

(assert (=> b!2364546 (= e!1509932 (and tp!756143 tp!756142))))

(assert (=> b!2363901 (= tp!755940 e!1509932)))

(declare-fun b!2364548 () Bool)

(declare-fun tp!756145 () Bool)

(declare-fun tp!756146 () Bool)

(assert (=> b!2364548 (= e!1509932 (and tp!756145 tp!756146))))

(declare-fun b!2364545 () Bool)

(assert (=> b!2364545 (= e!1509932 tp_is_empty!11255)))

(declare-fun b!2364547 () Bool)

(declare-fun tp!756144 () Bool)

(assert (=> b!2364547 (= e!1509932 tp!756144)))

(assert (= (and b!2363901 ((_ is ElementMatch!6921) (regTwo!14355 (regTwo!14354 r!13927)))) b!2364545))

(assert (= (and b!2363901 ((_ is Concat!11557) (regTwo!14355 (regTwo!14354 r!13927)))) b!2364546))

(assert (= (and b!2363901 ((_ is Star!6921) (regTwo!14355 (regTwo!14354 r!13927)))) b!2364547))

(assert (= (and b!2363901 ((_ is Union!6921) (regTwo!14355 (regTwo!14354 r!13927)))) b!2364548))

(declare-fun b!2364550 () Bool)

(declare-fun e!1509933 () Bool)

(declare-fun tp!756148 () Bool)

(declare-fun tp!756147 () Bool)

(assert (=> b!2364550 (= e!1509933 (and tp!756148 tp!756147))))

(assert (=> b!2363900 (= tp!755938 e!1509933)))

(declare-fun b!2364552 () Bool)

(declare-fun tp!756150 () Bool)

(declare-fun tp!756151 () Bool)

(assert (=> b!2364552 (= e!1509933 (and tp!756150 tp!756151))))

(declare-fun b!2364549 () Bool)

(assert (=> b!2364549 (= e!1509933 tp_is_empty!11255)))

(declare-fun b!2364551 () Bool)

(declare-fun tp!756149 () Bool)

(assert (=> b!2364551 (= e!1509933 tp!756149)))

(assert (= (and b!2363900 ((_ is ElementMatch!6921) (reg!7250 (regTwo!14354 r!13927)))) b!2364549))

(assert (= (and b!2363900 ((_ is Concat!11557) (reg!7250 (regTwo!14354 r!13927)))) b!2364550))

(assert (= (and b!2363900 ((_ is Star!6921) (reg!7250 (regTwo!14354 r!13927)))) b!2364551))

(assert (= (and b!2363900 ((_ is Union!6921) (reg!7250 (regTwo!14354 r!13927)))) b!2364552))

(declare-fun b!2364554 () Bool)

(declare-fun e!1509934 () Bool)

(declare-fun tp!756153 () Bool)

(declare-fun tp!756152 () Bool)

(assert (=> b!2364554 (= e!1509934 (and tp!756153 tp!756152))))

(assert (=> b!2363891 (= tp!755927 e!1509934)))

(declare-fun b!2364556 () Bool)

(declare-fun tp!756155 () Bool)

(declare-fun tp!756156 () Bool)

(assert (=> b!2364556 (= e!1509934 (and tp!756155 tp!756156))))

(declare-fun b!2364553 () Bool)

(assert (=> b!2364553 (= e!1509934 tp_is_empty!11255)))

(declare-fun b!2364555 () Bool)

(declare-fun tp!756154 () Bool)

(assert (=> b!2364555 (= e!1509934 tp!756154)))

(assert (= (and b!2363891 ((_ is ElementMatch!6921) (regOne!14354 (regTwo!14355 r!13927)))) b!2364553))

(assert (= (and b!2363891 ((_ is Concat!11557) (regOne!14354 (regTwo!14355 r!13927)))) b!2364554))

(assert (= (and b!2363891 ((_ is Star!6921) (regOne!14354 (regTwo!14355 r!13927)))) b!2364555))

(assert (= (and b!2363891 ((_ is Union!6921) (regOne!14354 (regTwo!14355 r!13927)))) b!2364556))

(declare-fun b!2364558 () Bool)

(declare-fun e!1509935 () Bool)

(declare-fun tp!756158 () Bool)

(declare-fun tp!756157 () Bool)

(assert (=> b!2364558 (= e!1509935 (and tp!756158 tp!756157))))

(assert (=> b!2363891 (= tp!755926 e!1509935)))

(declare-fun b!2364560 () Bool)

(declare-fun tp!756160 () Bool)

(declare-fun tp!756161 () Bool)

(assert (=> b!2364560 (= e!1509935 (and tp!756160 tp!756161))))

(declare-fun b!2364557 () Bool)

(assert (=> b!2364557 (= e!1509935 tp_is_empty!11255)))

(declare-fun b!2364559 () Bool)

(declare-fun tp!756159 () Bool)

(assert (=> b!2364559 (= e!1509935 tp!756159)))

(assert (= (and b!2363891 ((_ is ElementMatch!6921) (regTwo!14354 (regTwo!14355 r!13927)))) b!2364557))

(assert (= (and b!2363891 ((_ is Concat!11557) (regTwo!14354 (regTwo!14355 r!13927)))) b!2364558))

(assert (= (and b!2363891 ((_ is Star!6921) (regTwo!14354 (regTwo!14355 r!13927)))) b!2364559))

(assert (= (and b!2363891 ((_ is Union!6921) (regTwo!14354 (regTwo!14355 r!13927)))) b!2364560))

(declare-fun b!2364562 () Bool)

(declare-fun e!1509936 () Bool)

(declare-fun tp!756163 () Bool)

(declare-fun tp!756162 () Bool)

(assert (=> b!2364562 (= e!1509936 (and tp!756163 tp!756162))))

(assert (=> b!2363876 (= tp!755908 e!1509936)))

(declare-fun b!2364564 () Bool)

(declare-fun tp!756165 () Bool)

(declare-fun tp!756166 () Bool)

(assert (=> b!2364564 (= e!1509936 (and tp!756165 tp!756166))))

(declare-fun b!2364561 () Bool)

(assert (=> b!2364561 (= e!1509936 tp_is_empty!11255)))

(declare-fun b!2364563 () Bool)

(declare-fun tp!756164 () Bool)

(assert (=> b!2364563 (= e!1509936 tp!756164)))

(assert (= (and b!2363876 ((_ is ElementMatch!6921) (regOne!14355 (reg!7250 r!13927)))) b!2364561))

(assert (= (and b!2363876 ((_ is Concat!11557) (regOne!14355 (reg!7250 r!13927)))) b!2364562))

(assert (= (and b!2363876 ((_ is Star!6921) (regOne!14355 (reg!7250 r!13927)))) b!2364563))

(assert (= (and b!2363876 ((_ is Union!6921) (regOne!14355 (reg!7250 r!13927)))) b!2364564))

(declare-fun b!2364566 () Bool)

(declare-fun e!1509937 () Bool)

(declare-fun tp!756168 () Bool)

(declare-fun tp!756167 () Bool)

(assert (=> b!2364566 (= e!1509937 (and tp!756168 tp!756167))))

(assert (=> b!2363876 (= tp!755909 e!1509937)))

(declare-fun b!2364568 () Bool)

(declare-fun tp!756170 () Bool)

(declare-fun tp!756171 () Bool)

(assert (=> b!2364568 (= e!1509937 (and tp!756170 tp!756171))))

(declare-fun b!2364565 () Bool)

(assert (=> b!2364565 (= e!1509937 tp_is_empty!11255)))

(declare-fun b!2364567 () Bool)

(declare-fun tp!756169 () Bool)

(assert (=> b!2364567 (= e!1509937 tp!756169)))

(assert (= (and b!2363876 ((_ is ElementMatch!6921) (regTwo!14355 (reg!7250 r!13927)))) b!2364565))

(assert (= (and b!2363876 ((_ is Concat!11557) (regTwo!14355 (reg!7250 r!13927)))) b!2364566))

(assert (= (and b!2363876 ((_ is Star!6921) (regTwo!14355 (reg!7250 r!13927)))) b!2364567))

(assert (= (and b!2363876 ((_ is Union!6921) (regTwo!14355 (reg!7250 r!13927)))) b!2364568))

(declare-fun b!2364570 () Bool)

(declare-fun e!1509938 () Bool)

(declare-fun tp!756173 () Bool)

(declare-fun tp!756172 () Bool)

(assert (=> b!2364570 (= e!1509938 (and tp!756173 tp!756172))))

(assert (=> b!2363875 (= tp!755907 e!1509938)))

(declare-fun b!2364572 () Bool)

(declare-fun tp!756175 () Bool)

(declare-fun tp!756176 () Bool)

(assert (=> b!2364572 (= e!1509938 (and tp!756175 tp!756176))))

(declare-fun b!2364569 () Bool)

(assert (=> b!2364569 (= e!1509938 tp_is_empty!11255)))

(declare-fun b!2364571 () Bool)

(declare-fun tp!756174 () Bool)

(assert (=> b!2364571 (= e!1509938 tp!756174)))

(assert (= (and b!2363875 ((_ is ElementMatch!6921) (reg!7250 (reg!7250 r!13927)))) b!2364569))

(assert (= (and b!2363875 ((_ is Concat!11557) (reg!7250 (reg!7250 r!13927)))) b!2364570))

(assert (= (and b!2363875 ((_ is Star!6921) (reg!7250 (reg!7250 r!13927)))) b!2364571))

(assert (= (and b!2363875 ((_ is Union!6921) (reg!7250 (reg!7250 r!13927)))) b!2364572))

(declare-fun b!2364574 () Bool)

(declare-fun e!1509939 () Bool)

(declare-fun tp!756178 () Bool)

(declare-fun tp!756177 () Bool)

(assert (=> b!2364574 (= e!1509939 (and tp!756178 tp!756177))))

(assert (=> b!2363880 (= tp!755913 e!1509939)))

(declare-fun b!2364576 () Bool)

(declare-fun tp!756180 () Bool)

(declare-fun tp!756181 () Bool)

(assert (=> b!2364576 (= e!1509939 (and tp!756180 tp!756181))))

(declare-fun b!2364573 () Bool)

(assert (=> b!2364573 (= e!1509939 tp_is_empty!11255)))

(declare-fun b!2364575 () Bool)

(declare-fun tp!756179 () Bool)

(assert (=> b!2364575 (= e!1509939 tp!756179)))

(assert (= (and b!2363880 ((_ is ElementMatch!6921) (regOne!14355 (h!33383 l!9164)))) b!2364573))

(assert (= (and b!2363880 ((_ is Concat!11557) (regOne!14355 (h!33383 l!9164)))) b!2364574))

(assert (= (and b!2363880 ((_ is Star!6921) (regOne!14355 (h!33383 l!9164)))) b!2364575))

(assert (= (and b!2363880 ((_ is Union!6921) (regOne!14355 (h!33383 l!9164)))) b!2364576))

(declare-fun b!2364578 () Bool)

(declare-fun e!1509940 () Bool)

(declare-fun tp!756183 () Bool)

(declare-fun tp!756182 () Bool)

(assert (=> b!2364578 (= e!1509940 (and tp!756183 tp!756182))))

(assert (=> b!2363880 (= tp!755914 e!1509940)))

(declare-fun b!2364580 () Bool)

(declare-fun tp!756185 () Bool)

(declare-fun tp!756186 () Bool)

(assert (=> b!2364580 (= e!1509940 (and tp!756185 tp!756186))))

(declare-fun b!2364577 () Bool)

(assert (=> b!2364577 (= e!1509940 tp_is_empty!11255)))

(declare-fun b!2364579 () Bool)

(declare-fun tp!756184 () Bool)

(assert (=> b!2364579 (= e!1509940 tp!756184)))

(assert (= (and b!2363880 ((_ is ElementMatch!6921) (regTwo!14355 (h!33383 l!9164)))) b!2364577))

(assert (= (and b!2363880 ((_ is Concat!11557) (regTwo!14355 (h!33383 l!9164)))) b!2364578))

(assert (= (and b!2363880 ((_ is Star!6921) (regTwo!14355 (h!33383 l!9164)))) b!2364579))

(assert (= (and b!2363880 ((_ is Union!6921) (regTwo!14355 (h!33383 l!9164)))) b!2364580))

(declare-fun b!2364582 () Bool)

(declare-fun e!1509941 () Bool)

(declare-fun tp!756188 () Bool)

(declare-fun tp!756187 () Bool)

(assert (=> b!2364582 (= e!1509941 (and tp!756188 tp!756187))))

(assert (=> b!2363878 (= tp!755911 e!1509941)))

(declare-fun b!2364584 () Bool)

(declare-fun tp!756190 () Bool)

(declare-fun tp!756191 () Bool)

(assert (=> b!2364584 (= e!1509941 (and tp!756190 tp!756191))))

(declare-fun b!2364581 () Bool)

(assert (=> b!2364581 (= e!1509941 tp_is_empty!11255)))

(declare-fun b!2364583 () Bool)

(declare-fun tp!756189 () Bool)

(assert (=> b!2364583 (= e!1509941 tp!756189)))

(assert (= (and b!2363878 ((_ is ElementMatch!6921) (regOne!14354 (h!33383 l!9164)))) b!2364581))

(assert (= (and b!2363878 ((_ is Concat!11557) (regOne!14354 (h!33383 l!9164)))) b!2364582))

(assert (= (and b!2363878 ((_ is Star!6921) (regOne!14354 (h!33383 l!9164)))) b!2364583))

(assert (= (and b!2363878 ((_ is Union!6921) (regOne!14354 (h!33383 l!9164)))) b!2364584))

(declare-fun b!2364586 () Bool)

(declare-fun e!1509942 () Bool)

(declare-fun tp!756193 () Bool)

(declare-fun tp!756192 () Bool)

(assert (=> b!2364586 (= e!1509942 (and tp!756193 tp!756192))))

(assert (=> b!2363878 (= tp!755910 e!1509942)))

(declare-fun b!2364588 () Bool)

(declare-fun tp!756195 () Bool)

(declare-fun tp!756196 () Bool)

(assert (=> b!2364588 (= e!1509942 (and tp!756195 tp!756196))))

(declare-fun b!2364585 () Bool)

(assert (=> b!2364585 (= e!1509942 tp_is_empty!11255)))

(declare-fun b!2364587 () Bool)

(declare-fun tp!756194 () Bool)

(assert (=> b!2364587 (= e!1509942 tp!756194)))

(assert (= (and b!2363878 ((_ is ElementMatch!6921) (regTwo!14354 (h!33383 l!9164)))) b!2364585))

(assert (= (and b!2363878 ((_ is Concat!11557) (regTwo!14354 (h!33383 l!9164)))) b!2364586))

(assert (= (and b!2363878 ((_ is Star!6921) (regTwo!14354 (h!33383 l!9164)))) b!2364587))

(assert (= (and b!2363878 ((_ is Union!6921) (regTwo!14354 (h!33383 l!9164)))) b!2364588))

(declare-fun b!2364590 () Bool)

(declare-fun e!1509943 () Bool)

(declare-fun tp!756198 () Bool)

(declare-fun tp!756197 () Bool)

(assert (=> b!2364590 (= e!1509943 (and tp!756198 tp!756197))))

(assert (=> b!2363879 (= tp!755912 e!1509943)))

(declare-fun b!2364592 () Bool)

(declare-fun tp!756200 () Bool)

(declare-fun tp!756201 () Bool)

(assert (=> b!2364592 (= e!1509943 (and tp!756200 tp!756201))))

(declare-fun b!2364589 () Bool)

(assert (=> b!2364589 (= e!1509943 tp_is_empty!11255)))

(declare-fun b!2364591 () Bool)

(declare-fun tp!756199 () Bool)

(assert (=> b!2364591 (= e!1509943 tp!756199)))

(assert (= (and b!2363879 ((_ is ElementMatch!6921) (reg!7250 (h!33383 l!9164)))) b!2364589))

(assert (= (and b!2363879 ((_ is Concat!11557) (reg!7250 (h!33383 l!9164)))) b!2364590))

(assert (= (and b!2363879 ((_ is Star!6921) (reg!7250 (h!33383 l!9164)))) b!2364591))

(assert (= (and b!2363879 ((_ is Union!6921) (reg!7250 (h!33383 l!9164)))) b!2364592))

(declare-fun b!2364593 () Bool)

(declare-fun e!1509944 () Bool)

(declare-fun tp!756202 () Bool)

(assert (=> b!2364593 (= e!1509944 (and tp_is_empty!11255 tp!756202))))

(assert (=> b!2363906 (= tp!755943 e!1509944)))

(assert (= (and b!2363906 ((_ is Cons!27983) (t!208058 (t!208058 s!9460)))) b!2364593))

(declare-fun b!2364595 () Bool)

(declare-fun e!1509945 () Bool)

(declare-fun tp!756204 () Bool)

(declare-fun tp!756203 () Bool)

(assert (=> b!2364595 (= e!1509945 (and tp!756204 tp!756203))))

(assert (=> b!2363874 (= tp!755906 e!1509945)))

(declare-fun b!2364597 () Bool)

(declare-fun tp!756206 () Bool)

(declare-fun tp!756207 () Bool)

(assert (=> b!2364597 (= e!1509945 (and tp!756206 tp!756207))))

(declare-fun b!2364594 () Bool)

(assert (=> b!2364594 (= e!1509945 tp_is_empty!11255)))

(declare-fun b!2364596 () Bool)

(declare-fun tp!756205 () Bool)

(assert (=> b!2364596 (= e!1509945 tp!756205)))

(assert (= (and b!2363874 ((_ is ElementMatch!6921) (regOne!14354 (reg!7250 r!13927)))) b!2364594))

(assert (= (and b!2363874 ((_ is Concat!11557) (regOne!14354 (reg!7250 r!13927)))) b!2364595))

(assert (= (and b!2363874 ((_ is Star!6921) (regOne!14354 (reg!7250 r!13927)))) b!2364596))

(assert (= (and b!2363874 ((_ is Union!6921) (regOne!14354 (reg!7250 r!13927)))) b!2364597))

(declare-fun b!2364599 () Bool)

(declare-fun e!1509946 () Bool)

(declare-fun tp!756209 () Bool)

(declare-fun tp!756208 () Bool)

(assert (=> b!2364599 (= e!1509946 (and tp!756209 tp!756208))))

(assert (=> b!2363874 (= tp!755905 e!1509946)))

(declare-fun b!2364601 () Bool)

(declare-fun tp!756211 () Bool)

(declare-fun tp!756212 () Bool)

(assert (=> b!2364601 (= e!1509946 (and tp!756211 tp!756212))))

(declare-fun b!2364598 () Bool)

(assert (=> b!2364598 (= e!1509946 tp_is_empty!11255)))

(declare-fun b!2364600 () Bool)

(declare-fun tp!756210 () Bool)

(assert (=> b!2364600 (= e!1509946 tp!756210)))

(assert (= (and b!2363874 ((_ is ElementMatch!6921) (regTwo!14354 (reg!7250 r!13927)))) b!2364598))

(assert (= (and b!2363874 ((_ is Concat!11557) (regTwo!14354 (reg!7250 r!13927)))) b!2364599))

(assert (= (and b!2363874 ((_ is Star!6921) (regTwo!14354 (reg!7250 r!13927)))) b!2364600))

(assert (= (and b!2363874 ((_ is Union!6921) (regTwo!14354 (reg!7250 r!13927)))) b!2364601))

(declare-fun b!2364603 () Bool)

(declare-fun e!1509947 () Bool)

(declare-fun tp!756214 () Bool)

(declare-fun tp!756213 () Bool)

(assert (=> b!2364603 (= e!1509947 (and tp!756214 tp!756213))))

(assert (=> b!2363888 (= tp!755923 e!1509947)))

(declare-fun b!2364605 () Bool)

(declare-fun tp!756216 () Bool)

(declare-fun tp!756217 () Bool)

(assert (=> b!2364605 (= e!1509947 (and tp!756216 tp!756217))))

(declare-fun b!2364602 () Bool)

(assert (=> b!2364602 (= e!1509947 tp_is_empty!11255)))

(declare-fun b!2364604 () Bool)

(declare-fun tp!756215 () Bool)

(assert (=> b!2364604 (= e!1509947 tp!756215)))

(assert (= (and b!2363888 ((_ is ElementMatch!6921) (reg!7250 (regOne!14355 r!13927)))) b!2364602))

(assert (= (and b!2363888 ((_ is Concat!11557) (reg!7250 (regOne!14355 r!13927)))) b!2364603))

(assert (= (and b!2363888 ((_ is Star!6921) (reg!7250 (regOne!14355 r!13927)))) b!2364604))

(assert (= (and b!2363888 ((_ is Union!6921) (reg!7250 (regOne!14355 r!13927)))) b!2364605))

(declare-fun b!2364607 () Bool)

(declare-fun e!1509948 () Bool)

(declare-fun tp!756219 () Bool)

(declare-fun tp!756218 () Bool)

(assert (=> b!2364607 (= e!1509948 (and tp!756219 tp!756218))))

(assert (=> b!2363893 (= tp!755929 e!1509948)))

(declare-fun b!2364609 () Bool)

(declare-fun tp!756221 () Bool)

(declare-fun tp!756222 () Bool)

(assert (=> b!2364609 (= e!1509948 (and tp!756221 tp!756222))))

(declare-fun b!2364606 () Bool)

(assert (=> b!2364606 (= e!1509948 tp_is_empty!11255)))

(declare-fun b!2364608 () Bool)

(declare-fun tp!756220 () Bool)

(assert (=> b!2364608 (= e!1509948 tp!756220)))

(assert (= (and b!2363893 ((_ is ElementMatch!6921) (regOne!14355 (regTwo!14355 r!13927)))) b!2364606))

(assert (= (and b!2363893 ((_ is Concat!11557) (regOne!14355 (regTwo!14355 r!13927)))) b!2364607))

(assert (= (and b!2363893 ((_ is Star!6921) (regOne!14355 (regTwo!14355 r!13927)))) b!2364608))

(assert (= (and b!2363893 ((_ is Union!6921) (regOne!14355 (regTwo!14355 r!13927)))) b!2364609))

(declare-fun b!2364611 () Bool)

(declare-fun e!1509949 () Bool)

(declare-fun tp!756224 () Bool)

(declare-fun tp!756223 () Bool)

(assert (=> b!2364611 (= e!1509949 (and tp!756224 tp!756223))))

(assert (=> b!2363893 (= tp!755930 e!1509949)))

(declare-fun b!2364613 () Bool)

(declare-fun tp!756226 () Bool)

(declare-fun tp!756227 () Bool)

(assert (=> b!2364613 (= e!1509949 (and tp!756226 tp!756227))))

(declare-fun b!2364610 () Bool)

(assert (=> b!2364610 (= e!1509949 tp_is_empty!11255)))

(declare-fun b!2364612 () Bool)

(declare-fun tp!756225 () Bool)

(assert (=> b!2364612 (= e!1509949 tp!756225)))

(assert (= (and b!2363893 ((_ is ElementMatch!6921) (regTwo!14355 (regTwo!14355 r!13927)))) b!2364610))

(assert (= (and b!2363893 ((_ is Concat!11557) (regTwo!14355 (regTwo!14355 r!13927)))) b!2364611))

(assert (= (and b!2363893 ((_ is Star!6921) (regTwo!14355 (regTwo!14355 r!13927)))) b!2364612))

(assert (= (and b!2363893 ((_ is Union!6921) (regTwo!14355 (regTwo!14355 r!13927)))) b!2364613))

(declare-fun b!2364615 () Bool)

(declare-fun e!1509950 () Bool)

(declare-fun tp!756229 () Bool)

(declare-fun tp!756228 () Bool)

(assert (=> b!2364615 (= e!1509950 (and tp!756229 tp!756228))))

(assert (=> b!2363892 (= tp!755928 e!1509950)))

(declare-fun b!2364617 () Bool)

(declare-fun tp!756231 () Bool)

(declare-fun tp!756232 () Bool)

(assert (=> b!2364617 (= e!1509950 (and tp!756231 tp!756232))))

(declare-fun b!2364614 () Bool)

(assert (=> b!2364614 (= e!1509950 tp_is_empty!11255)))

(declare-fun b!2364616 () Bool)

(declare-fun tp!756230 () Bool)

(assert (=> b!2364616 (= e!1509950 tp!756230)))

(assert (= (and b!2363892 ((_ is ElementMatch!6921) (reg!7250 (regTwo!14355 r!13927)))) b!2364614))

(assert (= (and b!2363892 ((_ is Concat!11557) (reg!7250 (regTwo!14355 r!13927)))) b!2364615))

(assert (= (and b!2363892 ((_ is Star!6921) (reg!7250 (regTwo!14355 r!13927)))) b!2364616))

(assert (= (and b!2363892 ((_ is Union!6921) (reg!7250 (regTwo!14355 r!13927)))) b!2364617))

(declare-fun b!2364619 () Bool)

(declare-fun e!1509951 () Bool)

(declare-fun tp!756234 () Bool)

(declare-fun tp!756233 () Bool)

(assert (=> b!2364619 (= e!1509951 (and tp!756234 tp!756233))))

(assert (=> b!2363897 (= tp!755934 e!1509951)))

(declare-fun b!2364621 () Bool)

(declare-fun tp!756236 () Bool)

(declare-fun tp!756237 () Bool)

(assert (=> b!2364621 (= e!1509951 (and tp!756236 tp!756237))))

(declare-fun b!2364618 () Bool)

(assert (=> b!2364618 (= e!1509951 tp_is_empty!11255)))

(declare-fun b!2364620 () Bool)

(declare-fun tp!756235 () Bool)

(assert (=> b!2364620 (= e!1509951 tp!756235)))

(assert (= (and b!2363897 ((_ is ElementMatch!6921) (regOne!14355 (regOne!14354 r!13927)))) b!2364618))

(assert (= (and b!2363897 ((_ is Concat!11557) (regOne!14355 (regOne!14354 r!13927)))) b!2364619))

(assert (= (and b!2363897 ((_ is Star!6921) (regOne!14355 (regOne!14354 r!13927)))) b!2364620))

(assert (= (and b!2363897 ((_ is Union!6921) (regOne!14355 (regOne!14354 r!13927)))) b!2364621))

(declare-fun b!2364623 () Bool)

(declare-fun e!1509952 () Bool)

(declare-fun tp!756239 () Bool)

(declare-fun tp!756238 () Bool)

(assert (=> b!2364623 (= e!1509952 (and tp!756239 tp!756238))))

(assert (=> b!2363897 (= tp!755935 e!1509952)))

(declare-fun b!2364625 () Bool)

(declare-fun tp!756241 () Bool)

(declare-fun tp!756242 () Bool)

(assert (=> b!2364625 (= e!1509952 (and tp!756241 tp!756242))))

(declare-fun b!2364622 () Bool)

(assert (=> b!2364622 (= e!1509952 tp_is_empty!11255)))

(declare-fun b!2364624 () Bool)

(declare-fun tp!756240 () Bool)

(assert (=> b!2364624 (= e!1509952 tp!756240)))

(assert (= (and b!2363897 ((_ is ElementMatch!6921) (regTwo!14355 (regOne!14354 r!13927)))) b!2364622))

(assert (= (and b!2363897 ((_ is Concat!11557) (regTwo!14355 (regOne!14354 r!13927)))) b!2364623))

(assert (= (and b!2363897 ((_ is Star!6921) (regTwo!14355 (regOne!14354 r!13927)))) b!2364624))

(assert (= (and b!2363897 ((_ is Union!6921) (regTwo!14355 (regOne!14354 r!13927)))) b!2364625))

(declare-fun b!2364627 () Bool)

(declare-fun e!1509953 () Bool)

(declare-fun tp!756244 () Bool)

(declare-fun tp!756243 () Bool)

(assert (=> b!2364627 (= e!1509953 (and tp!756244 tp!756243))))

(assert (=> b!2363885 (= tp!755919 e!1509953)))

(declare-fun b!2364629 () Bool)

(declare-fun tp!756246 () Bool)

(declare-fun tp!756247 () Bool)

(assert (=> b!2364629 (= e!1509953 (and tp!756246 tp!756247))))

(declare-fun b!2364626 () Bool)

(assert (=> b!2364626 (= e!1509953 tp_is_empty!11255)))

(declare-fun b!2364628 () Bool)

(declare-fun tp!756245 () Bool)

(assert (=> b!2364628 (= e!1509953 tp!756245)))

(assert (= (and b!2363885 ((_ is ElementMatch!6921) (h!33383 (t!208057 l!9164)))) b!2364626))

(assert (= (and b!2363885 ((_ is Concat!11557) (h!33383 (t!208057 l!9164)))) b!2364627))

(assert (= (and b!2363885 ((_ is Star!6921) (h!33383 (t!208057 l!9164)))) b!2364628))

(assert (= (and b!2363885 ((_ is Union!6921) (h!33383 (t!208057 l!9164)))) b!2364629))

(declare-fun b!2364630 () Bool)

(declare-fun e!1509954 () Bool)

(declare-fun tp!756248 () Bool)

(declare-fun tp!756249 () Bool)

(assert (=> b!2364630 (= e!1509954 (and tp!756248 tp!756249))))

(assert (=> b!2363885 (= tp!755920 e!1509954)))

(assert (= (and b!2363885 ((_ is Cons!27982) (t!208057 (t!208057 l!9164)))) b!2364630))

(declare-fun b!2364632 () Bool)

(declare-fun e!1509955 () Bool)

(declare-fun tp!756251 () Bool)

(declare-fun tp!756250 () Bool)

(assert (=> b!2364632 (= e!1509955 (and tp!756251 tp!756250))))

(assert (=> b!2363889 (= tp!755924 e!1509955)))

(declare-fun b!2364634 () Bool)

(declare-fun tp!756253 () Bool)

(declare-fun tp!756254 () Bool)

(assert (=> b!2364634 (= e!1509955 (and tp!756253 tp!756254))))

(declare-fun b!2364631 () Bool)

(assert (=> b!2364631 (= e!1509955 tp_is_empty!11255)))

(declare-fun b!2364633 () Bool)

(declare-fun tp!756252 () Bool)

(assert (=> b!2364633 (= e!1509955 tp!756252)))

(assert (= (and b!2363889 ((_ is ElementMatch!6921) (regOne!14355 (regOne!14355 r!13927)))) b!2364631))

(assert (= (and b!2363889 ((_ is Concat!11557) (regOne!14355 (regOne!14355 r!13927)))) b!2364632))

(assert (= (and b!2363889 ((_ is Star!6921) (regOne!14355 (regOne!14355 r!13927)))) b!2364633))

(assert (= (and b!2363889 ((_ is Union!6921) (regOne!14355 (regOne!14355 r!13927)))) b!2364634))

(declare-fun b!2364636 () Bool)

(declare-fun e!1509956 () Bool)

(declare-fun tp!756256 () Bool)

(declare-fun tp!756255 () Bool)

(assert (=> b!2364636 (= e!1509956 (and tp!756256 tp!756255))))

(assert (=> b!2363889 (= tp!755925 e!1509956)))

(declare-fun b!2364638 () Bool)

(declare-fun tp!756258 () Bool)

(declare-fun tp!756259 () Bool)

(assert (=> b!2364638 (= e!1509956 (and tp!756258 tp!756259))))

(declare-fun b!2364635 () Bool)

(assert (=> b!2364635 (= e!1509956 tp_is_empty!11255)))

(declare-fun b!2364637 () Bool)

(declare-fun tp!756257 () Bool)

(assert (=> b!2364637 (= e!1509956 tp!756257)))

(assert (= (and b!2363889 ((_ is ElementMatch!6921) (regTwo!14355 (regOne!14355 r!13927)))) b!2364635))

(assert (= (and b!2363889 ((_ is Concat!11557) (regTwo!14355 (regOne!14355 r!13927)))) b!2364636))

(assert (= (and b!2363889 ((_ is Star!6921) (regTwo!14355 (regOne!14355 r!13927)))) b!2364637))

(assert (= (and b!2363889 ((_ is Union!6921) (regTwo!14355 (regOne!14355 r!13927)))) b!2364638))

(declare-fun b_lambda!73839 () Bool)

(assert (= b_lambda!73835 (or start!231966 b_lambda!73839)))

(declare-fun bs!460810 () Bool)

(declare-fun d!694583 () Bool)

(assert (= bs!460810 (and d!694583 start!231966)))

(assert (=> bs!460810 (= (dynLambda!12056 lambda!87045 (h!33383 (t!208057 l!9164))) (validRegex!2651 (h!33383 (t!208057 l!9164))))))

(declare-fun m!2775505 () Bool)

(assert (=> bs!460810 m!2775505))

(assert (=> b!2364420 d!694583))

(declare-fun b_lambda!73841 () Bool)

(assert (= b_lambda!73837 (or d!694335 b_lambda!73841)))

(declare-fun bs!460811 () Bool)

(declare-fun d!694585 () Bool)

(assert (= bs!460811 (and d!694585 d!694335)))

(assert (=> bs!460811 (= (dynLambda!12056 lambda!87059 (h!33383 l!9164)) (validRegex!2651 (h!33383 l!9164)))))

(assert (=> bs!460811 m!2775033))

(assert (=> b!2364472 d!694585))

(check-sat (not d!694517) (not b!2364550) (not bm!143836) (not b!2364551) (not b!2364601) (not b!2364566) (not b!2364531) (not b!2364506) (not b!2364609) (not b!2364483) (not d!694545) (not d!694529) (not b!2364318) (not b!2364454) (not b!2364570) (not b!2364275) (not b!2364510) (not b!2364532) (not b!2364315) (not b!2364637) (not b!2364627) (not b!2364562) (not b!2364616) (not b!2364446) (not b!2364284) (not d!694555) (not b!2364295) (not b!2364548) (not b!2364514) (not b!2364530) (not b!2364559) (not b!2364359) (not b!2364617) (not b!2364558) (not b!2364348) (not b!2364519) (not b_lambda!73825) (not b!2364564) (not b!2364328) (not bm!143870) (not b!2364575) (not b!2364421) tp_is_empty!11255 (not b!2364520) (not d!694485) (not b!2364615) (not b!2364511) (not b!2364515) (not b!2364586) (not b!2364633) (not b!2364443) (not b!2364291) (not b!2364579) (not b!2364399) (not bm!143840) (not b!2364528) (not b!2364465) (not b!2364563) (not b!2364613) (not b!2364485) (not b!2364448) (not b!2364370) (not b!2364453) (not b!2364300) (not bm!143866) (not b!2364459) (not bm!143842) (not b_lambda!73841) (not b!2364608) (not b!2364590) (not b!2364596) (not b!2364319) (not b!2364462) (not d!694565) (not b!2364409) (not b!2364634) (not b!2364458) (not b!2364595) (not b!2364620) (not b!2364632) (not b!2364547) (not b!2364571) (not d!694501) (not b!2364523) (not b!2364539) (not b!2364503) (not b!2364368) (not b!2364636) (not b!2364591) (not b!2364476) (not bm!143863) (not b!2364322) (not b!2364518) (not d!694553) (not b!2364499) (not b!2364603) (not b!2364552) (not b!2364624) (not b!2364587) (not b!2364424) (not b!2364600) (not b!2364612) (not b!2364302) (not b!2364593) (not b!2364611) (not b!2364623) (not bm!143845) (not b!2364578) (not b!2364408) (not b!2364492) (not bs!460810) (not b!2364543) (not b!2364556) (not bm!143875) (not b!2364314) (not bm!143874) (not b!2364508) (not b!2364625) (not b!2364321) (not bm!143835) (not b!2364298) (not b!2364527) (not b!2364524) (not b!2364536) (not b!2364526) (not d!694561) (not b!2364456) (not b!2364599) (not b!2364371) (not b!2364363) (not b!2364584) (not b!2364619) (not d!694579) (not b!2364592) (not b!2364535) (not b!2364413) (not b!2364629) (not b!2364341) (not b!2364540) (not b!2364494) (not d!694531) (not b!2364638) (not b!2364554) (not b!2364555) (not b!2364544) (not bm!143860) (not d!694519) (not d!694581) (not b!2364451) (not b!2364604) (not b!2364538) (not b!2364546) (not b!2364574) (not b!2364607) (not d!694557) (not b!2364455) (not b!2364439) (not b!2364628) (not b!2364621) (not bm!143873) (not b!2364597) (not d!694493) (not b!2364576) (not bm!143849) (not b!2364583) (not d!694503) (not b!2364329) (not bm!143848) (not b!2364568) (not b!2364582) (not b!2364497) (not b!2364332) (not b!2364366) (not b!2364534) (not bm!143864) (not bm!143839) (not bm!143868) (not bm!143871) (not b!2364588) (not b!2364303) (not bm!143843) (not b!2364496) (not b!2364516) (not b!2364473) (not b!2364605) (not b!2364327) (not bm!143847) (not b_lambda!73839) (not b!2364560) (not d!694549) (not b!2364352) (not b!2364567) (not d!694535) (not bm!143872) (not d!694559) (not bm!143844) (not d!694497) (not d!694499) (not b!2364572) (not bm!143838) (not b!2364522) (not b!2364542) (not bm!143867) (not bm!143861) (not b!2364580) (not d!694523) (not b!2364630) (not d!694525) (not bs!460811) (not b!2364450) (not b!2364489) (not b!2364326))
(check-sat)
