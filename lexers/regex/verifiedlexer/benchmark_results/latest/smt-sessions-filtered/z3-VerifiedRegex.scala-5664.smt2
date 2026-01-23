; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282618 () Bool)

(assert start!282618)

(declare-fun b!2903585 () Bool)

(declare-fun res!1199532 () Bool)

(declare-fun e!1833276 () Bool)

(assert (=> b!2903585 (=> (not res!1199532) (not e!1833276))))

(declare-datatypes ((C!17948 0))(
  ( (C!17949 (val!11008 Int)) )
))
(declare-datatypes ((List!34684 0))(
  ( (Nil!34560) (Cons!34560 (h!39980 C!17948) (t!233727 List!34684)) )
))
(declare-fun prefix!1456 () List!34684)

(declare-fun s!13418 () List!34684)

(declare-fun isPrefix!2720 (List!34684 List!34684) Bool)

(assert (=> b!2903585 (= res!1199532 (isPrefix!2720 prefix!1456 s!13418))))

(declare-fun b!2903586 () Bool)

(declare-fun e!1833275 () Bool)

(declare-fun tp!932215 () Bool)

(declare-fun tp!932210 () Bool)

(assert (=> b!2903586 (= e!1833275 (and tp!932215 tp!932210))))

(declare-fun b!2903587 () Bool)

(declare-fun res!1199535 () Bool)

(assert (=> b!2903587 (=> (not res!1199535) (not e!1833276))))

(declare-datatypes ((Regex!8883 0))(
  ( (ElementMatch!8883 (c!473132 C!17948)) (Concat!14204 (regOne!18278 Regex!8883) (regTwo!18278 Regex!8883)) (EmptyExpr!8883) (Star!8883 (reg!9212 Regex!8883)) (EmptyLang!8883) (Union!8883 (regOne!18279 Regex!8883) (regTwo!18279 Regex!8883)) )
))
(declare-fun r!19097 () Regex!8883)

(declare-fun prefixMatch!941 (Regex!8883 List!34684) Bool)

(assert (=> b!2903587 (= res!1199535 (not (prefixMatch!941 r!19097 prefix!1456)))))

(declare-fun res!1199533 () Bool)

(assert (=> start!282618 (=> (not res!1199533) (not e!1833276))))

(declare-fun validRegex!3656 (Regex!8883) Bool)

(assert (=> start!282618 (= res!1199533 (validRegex!3656 r!19097))))

(assert (=> start!282618 e!1833276))

(assert (=> start!282618 e!1833275))

(declare-fun e!1833277 () Bool)

(assert (=> start!282618 e!1833277))

(declare-fun e!1833274 () Bool)

(assert (=> start!282618 e!1833274))

(declare-fun b!2903588 () Bool)

(declare-fun tp_is_empty!15353 () Bool)

(assert (=> b!2903588 (= e!1833275 tp_is_empty!15353)))

(declare-fun b!2903589 () Bool)

(declare-fun tp!932212 () Bool)

(assert (=> b!2903589 (= e!1833274 (and tp_is_empty!15353 tp!932212))))

(declare-fun b!2903590 () Bool)

(declare-fun res!1199534 () Bool)

(assert (=> b!2903590 (=> (not res!1199534) (not e!1833276))))

(get-info :version)

(assert (=> b!2903590 (= res!1199534 (not ((_ is Nil!34560) prefix!1456)))))

(declare-fun b!2903591 () Bool)

(declare-fun tp!932209 () Bool)

(assert (=> b!2903591 (= e!1833277 (and tp_is_empty!15353 tp!932209))))

(declare-fun b!2903592 () Bool)

(declare-fun tp!932214 () Bool)

(declare-fun tp!932213 () Bool)

(assert (=> b!2903592 (= e!1833275 (and tp!932214 tp!932213))))

(declare-fun b!2903593 () Bool)

(declare-fun derivativeStep!2390 (Regex!8883 C!17948) Regex!8883)

(assert (=> b!2903593 (= e!1833276 (not (validRegex!3656 (derivativeStep!2390 r!19097 (h!39980 prefix!1456)))))))

(declare-fun b!2903594 () Bool)

(declare-fun tp!932211 () Bool)

(assert (=> b!2903594 (= e!1833275 tp!932211)))

(assert (= (and start!282618 res!1199533) b!2903585))

(assert (= (and b!2903585 res!1199532) b!2903587))

(assert (= (and b!2903587 res!1199535) b!2903590))

(assert (= (and b!2903590 res!1199534) b!2903593))

(assert (= (and start!282618 ((_ is ElementMatch!8883) r!19097)) b!2903588))

(assert (= (and start!282618 ((_ is Concat!14204) r!19097)) b!2903586))

(assert (= (and start!282618 ((_ is Star!8883) r!19097)) b!2903594))

(assert (= (and start!282618 ((_ is Union!8883) r!19097)) b!2903592))

(assert (= (and start!282618 ((_ is Cons!34560) prefix!1456)) b!2903591))

(assert (= (and start!282618 ((_ is Cons!34560) s!13418)) b!2903589))

(declare-fun m!3307017 () Bool)

(assert (=> b!2903585 m!3307017))

(declare-fun m!3307019 () Bool)

(assert (=> b!2903587 m!3307019))

(declare-fun m!3307021 () Bool)

(assert (=> start!282618 m!3307021))

(declare-fun m!3307023 () Bool)

(assert (=> b!2903593 m!3307023))

(assert (=> b!2903593 m!3307023))

(declare-fun m!3307025 () Bool)

(assert (=> b!2903593 m!3307025))

(check-sat (not start!282618) tp_is_empty!15353 (not b!2903593) (not b!2903587) (not b!2903591) (not b!2903585) (not b!2903589) (not b!2903594) (not b!2903592) (not b!2903586))
(check-sat)
(get-model)

(declare-fun d!835679 () Bool)

(declare-fun e!1833307 () Bool)

(assert (=> d!835679 e!1833307))

(declare-fun res!1199560 () Bool)

(assert (=> d!835679 (=> res!1199560 e!1833307)))

(declare-fun lt!1022387 () Bool)

(assert (=> d!835679 (= res!1199560 (not lt!1022387))))

(declare-fun e!1833306 () Bool)

(assert (=> d!835679 (= lt!1022387 e!1833306)))

(declare-fun res!1199561 () Bool)

(assert (=> d!835679 (=> res!1199561 e!1833306)))

(assert (=> d!835679 (= res!1199561 ((_ is Nil!34560) prefix!1456))))

(assert (=> d!835679 (= (isPrefix!2720 prefix!1456 s!13418) lt!1022387)))

(declare-fun b!2903633 () Bool)

(declare-fun size!26363 (List!34684) Int)

(assert (=> b!2903633 (= e!1833307 (>= (size!26363 s!13418) (size!26363 prefix!1456)))))

(declare-fun b!2903631 () Bool)

(declare-fun res!1199562 () Bool)

(declare-fun e!1833305 () Bool)

(assert (=> b!2903631 (=> (not res!1199562) (not e!1833305))))

(declare-fun head!6414 (List!34684) C!17948)

(assert (=> b!2903631 (= res!1199562 (= (head!6414 prefix!1456) (head!6414 s!13418)))))

(declare-fun b!2903632 () Bool)

(declare-fun tail!4643 (List!34684) List!34684)

(assert (=> b!2903632 (= e!1833305 (isPrefix!2720 (tail!4643 prefix!1456) (tail!4643 s!13418)))))

(declare-fun b!2903630 () Bool)

(assert (=> b!2903630 (= e!1833306 e!1833305)))

(declare-fun res!1199559 () Bool)

(assert (=> b!2903630 (=> (not res!1199559) (not e!1833305))))

(assert (=> b!2903630 (= res!1199559 (not ((_ is Nil!34560) s!13418)))))

(assert (= (and d!835679 (not res!1199561)) b!2903630))

(assert (= (and b!2903630 res!1199559) b!2903631))

(assert (= (and b!2903631 res!1199562) b!2903632))

(assert (= (and d!835679 (not res!1199560)) b!2903633))

(declare-fun m!3307027 () Bool)

(assert (=> b!2903633 m!3307027))

(declare-fun m!3307029 () Bool)

(assert (=> b!2903633 m!3307029))

(declare-fun m!3307031 () Bool)

(assert (=> b!2903631 m!3307031))

(declare-fun m!3307033 () Bool)

(assert (=> b!2903631 m!3307033))

(declare-fun m!3307035 () Bool)

(assert (=> b!2903632 m!3307035))

(declare-fun m!3307037 () Bool)

(assert (=> b!2903632 m!3307037))

(assert (=> b!2903632 m!3307035))

(assert (=> b!2903632 m!3307037))

(declare-fun m!3307041 () Bool)

(assert (=> b!2903632 m!3307041))

(assert (=> b!2903585 d!835679))

(declare-fun b!2903672 () Bool)

(declare-fun e!1833335 () Bool)

(declare-fun call!189286 () Bool)

(assert (=> b!2903672 (= e!1833335 call!189286)))

(declare-fun call!189284 () Bool)

(declare-fun bm!189279 () Bool)

(declare-fun c!473153 () Bool)

(declare-fun c!473154 () Bool)

(assert (=> bm!189279 (= call!189284 (validRegex!3656 (ite c!473154 (reg!9212 r!19097) (ite c!473153 (regOne!18279 r!19097) (regOne!18278 r!19097)))))))

(declare-fun b!2903673 () Bool)

(declare-fun e!1833332 () Bool)

(assert (=> b!2903673 (= e!1833332 call!189284)))

(declare-fun bm!189280 () Bool)

(assert (=> bm!189280 (= call!189286 (validRegex!3656 (ite c!473153 (regTwo!18279 r!19097) (regTwo!18278 r!19097))))))

(declare-fun b!2903674 () Bool)

(declare-fun e!1833336 () Bool)

(declare-fun e!1833334 () Bool)

(assert (=> b!2903674 (= e!1833336 e!1833334)))

(assert (=> b!2903674 (= c!473153 ((_ is Union!8883) r!19097))))

(declare-fun b!2903675 () Bool)

(declare-fun res!1199575 () Bool)

(declare-fun e!1833333 () Bool)

(assert (=> b!2903675 (=> res!1199575 e!1833333)))

(assert (=> b!2903675 (= res!1199575 (not ((_ is Concat!14204) r!19097)))))

(assert (=> b!2903675 (= e!1833334 e!1833333)))

(declare-fun bm!189281 () Bool)

(declare-fun call!189285 () Bool)

(assert (=> bm!189281 (= call!189285 call!189284)))

(declare-fun d!835681 () Bool)

(declare-fun res!1199577 () Bool)

(declare-fun e!1833338 () Bool)

(assert (=> d!835681 (=> res!1199577 e!1833338)))

(assert (=> d!835681 (= res!1199577 ((_ is ElementMatch!8883) r!19097))))

(assert (=> d!835681 (= (validRegex!3656 r!19097) e!1833338)))

(declare-fun b!2903676 () Bool)

(assert (=> b!2903676 (= e!1833338 e!1833336)))

(assert (=> b!2903676 (= c!473154 ((_ is Star!8883) r!19097))))

(declare-fun b!2903677 () Bool)

(assert (=> b!2903677 (= e!1833336 e!1833332)))

(declare-fun res!1199574 () Bool)

(declare-fun nullable!2773 (Regex!8883) Bool)

(assert (=> b!2903677 (= res!1199574 (not (nullable!2773 (reg!9212 r!19097))))))

(assert (=> b!2903677 (=> (not res!1199574) (not e!1833332))))

(declare-fun b!2903678 () Bool)

(declare-fun res!1199576 () Bool)

(assert (=> b!2903678 (=> (not res!1199576) (not e!1833335))))

(assert (=> b!2903678 (= res!1199576 call!189285)))

(assert (=> b!2903678 (= e!1833334 e!1833335)))

(declare-fun b!2903679 () Bool)

(declare-fun e!1833337 () Bool)

(assert (=> b!2903679 (= e!1833337 call!189286)))

(declare-fun b!2903680 () Bool)

(assert (=> b!2903680 (= e!1833333 e!1833337)))

(declare-fun res!1199573 () Bool)

(assert (=> b!2903680 (=> (not res!1199573) (not e!1833337))))

(assert (=> b!2903680 (= res!1199573 call!189285)))

(assert (= (and d!835681 (not res!1199577)) b!2903676))

(assert (= (and b!2903676 c!473154) b!2903677))

(assert (= (and b!2903676 (not c!473154)) b!2903674))

(assert (= (and b!2903677 res!1199574) b!2903673))

(assert (= (and b!2903674 c!473153) b!2903678))

(assert (= (and b!2903674 (not c!473153)) b!2903675))

(assert (= (and b!2903678 res!1199576) b!2903672))

(assert (= (and b!2903675 (not res!1199575)) b!2903680))

(assert (= (and b!2903680 res!1199573) b!2903679))

(assert (= (or b!2903678 b!2903680) bm!189281))

(assert (= (or b!2903672 b!2903679) bm!189280))

(assert (= (or b!2903673 bm!189281) bm!189279))

(declare-fun m!3307047 () Bool)

(assert (=> bm!189279 m!3307047))

(declare-fun m!3307049 () Bool)

(assert (=> bm!189280 m!3307049))

(declare-fun m!3307051 () Bool)

(assert (=> b!2903677 m!3307051))

(assert (=> start!282618 d!835681))

(declare-fun b!2903681 () Bool)

(declare-fun e!1833342 () Bool)

(declare-fun call!189293 () Bool)

(assert (=> b!2903681 (= e!1833342 call!189293)))

(declare-fun call!189291 () Bool)

(declare-fun bm!189286 () Bool)

(declare-fun c!473155 () Bool)

(declare-fun c!473156 () Bool)

(assert (=> bm!189286 (= call!189291 (validRegex!3656 (ite c!473156 (reg!9212 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))) (ite c!473155 (regOne!18279 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))) (regOne!18278 (derivativeStep!2390 r!19097 (h!39980 prefix!1456)))))))))

(declare-fun b!2903682 () Bool)

(declare-fun e!1833339 () Bool)

(assert (=> b!2903682 (= e!1833339 call!189291)))

(declare-fun bm!189287 () Bool)

(assert (=> bm!189287 (= call!189293 (validRegex!3656 (ite c!473155 (regTwo!18279 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))) (regTwo!18278 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))))))))

(declare-fun b!2903683 () Bool)

(declare-fun e!1833343 () Bool)

(declare-fun e!1833341 () Bool)

(assert (=> b!2903683 (= e!1833343 e!1833341)))

(assert (=> b!2903683 (= c!473155 ((_ is Union!8883) (derivativeStep!2390 r!19097 (h!39980 prefix!1456))))))

(declare-fun b!2903684 () Bool)

(declare-fun res!1199580 () Bool)

(declare-fun e!1833340 () Bool)

(assert (=> b!2903684 (=> res!1199580 e!1833340)))

(assert (=> b!2903684 (= res!1199580 (not ((_ is Concat!14204) (derivativeStep!2390 r!19097 (h!39980 prefix!1456)))))))

(assert (=> b!2903684 (= e!1833341 e!1833340)))

(declare-fun bm!189288 () Bool)

(declare-fun call!189292 () Bool)

(assert (=> bm!189288 (= call!189292 call!189291)))

(declare-fun d!835685 () Bool)

(declare-fun res!1199582 () Bool)

(declare-fun e!1833345 () Bool)

(assert (=> d!835685 (=> res!1199582 e!1833345)))

(assert (=> d!835685 (= res!1199582 ((_ is ElementMatch!8883) (derivativeStep!2390 r!19097 (h!39980 prefix!1456))))))

(assert (=> d!835685 (= (validRegex!3656 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))) e!1833345)))

(declare-fun b!2903685 () Bool)

(assert (=> b!2903685 (= e!1833345 e!1833343)))

(assert (=> b!2903685 (= c!473156 ((_ is Star!8883) (derivativeStep!2390 r!19097 (h!39980 prefix!1456))))))

(declare-fun b!2903686 () Bool)

(assert (=> b!2903686 (= e!1833343 e!1833339)))

(declare-fun res!1199579 () Bool)

(assert (=> b!2903686 (= res!1199579 (not (nullable!2773 (reg!9212 (derivativeStep!2390 r!19097 (h!39980 prefix!1456))))))))

(assert (=> b!2903686 (=> (not res!1199579) (not e!1833339))))

(declare-fun b!2903687 () Bool)

(declare-fun res!1199581 () Bool)

(assert (=> b!2903687 (=> (not res!1199581) (not e!1833342))))

(assert (=> b!2903687 (= res!1199581 call!189292)))

(assert (=> b!2903687 (= e!1833341 e!1833342)))

(declare-fun b!2903688 () Bool)

(declare-fun e!1833344 () Bool)

(assert (=> b!2903688 (= e!1833344 call!189293)))

(declare-fun b!2903689 () Bool)

(assert (=> b!2903689 (= e!1833340 e!1833344)))

(declare-fun res!1199578 () Bool)

(assert (=> b!2903689 (=> (not res!1199578) (not e!1833344))))

(assert (=> b!2903689 (= res!1199578 call!189292)))

(assert (= (and d!835685 (not res!1199582)) b!2903685))

(assert (= (and b!2903685 c!473156) b!2903686))

(assert (= (and b!2903685 (not c!473156)) b!2903683))

(assert (= (and b!2903686 res!1199579) b!2903682))

(assert (= (and b!2903683 c!473155) b!2903687))

(assert (= (and b!2903683 (not c!473155)) b!2903684))

(assert (= (and b!2903687 res!1199581) b!2903681))

(assert (= (and b!2903684 (not res!1199580)) b!2903689))

(assert (= (and b!2903689 res!1199578) b!2903688))

(assert (= (or b!2903687 b!2903689) bm!189288))

(assert (= (or b!2903681 b!2903688) bm!189287))

(assert (= (or b!2903682 bm!189288) bm!189286))

(declare-fun m!3307053 () Bool)

(assert (=> bm!189286 m!3307053))

(declare-fun m!3307055 () Bool)

(assert (=> bm!189287 m!3307055))

(declare-fun m!3307057 () Bool)

(assert (=> b!2903686 m!3307057))

(assert (=> b!2903593 d!835685))

(declare-fun b!2903741 () Bool)

(declare-fun e!1833380 () Regex!8883)

(declare-fun call!189311 () Regex!8883)

(assert (=> b!2903741 (= e!1833380 (Union!8883 (Concat!14204 call!189311 (regTwo!18278 r!19097)) EmptyLang!8883))))

(declare-fun b!2903742 () Bool)

(declare-fun c!473177 () Bool)

(assert (=> b!2903742 (= c!473177 ((_ is Union!8883) r!19097))))

(declare-fun e!1833378 () Regex!8883)

(declare-fun e!1833377 () Regex!8883)

(assert (=> b!2903742 (= e!1833378 e!1833377)))

(declare-fun call!189309 () Regex!8883)

(declare-fun bm!189304 () Bool)

(assert (=> bm!189304 (= call!189309 (derivativeStep!2390 (ite c!473177 (regOne!18279 r!19097) (regTwo!18278 r!19097)) (h!39980 prefix!1456)))))

(declare-fun d!835687 () Bool)

(declare-fun lt!1022396 () Regex!8883)

(assert (=> d!835687 (validRegex!3656 lt!1022396)))

(declare-fun e!1833379 () Regex!8883)

(assert (=> d!835687 (= lt!1022396 e!1833379)))

(declare-fun c!473176 () Bool)

(assert (=> d!835687 (= c!473176 (or ((_ is EmptyExpr!8883) r!19097) ((_ is EmptyLang!8883) r!19097)))))

(assert (=> d!835687 (validRegex!3656 r!19097)))

(assert (=> d!835687 (= (derivativeStep!2390 r!19097 (h!39980 prefix!1456)) lt!1022396)))

(declare-fun bm!189305 () Bool)

(declare-fun call!189312 () Regex!8883)

(assert (=> bm!189305 (= call!189311 call!189312)))

(declare-fun b!2903743 () Bool)

(assert (=> b!2903743 (= e!1833379 e!1833378)))

(declare-fun c!473174 () Bool)

(assert (=> b!2903743 (= c!473174 ((_ is ElementMatch!8883) r!19097))))

(declare-fun b!2903744 () Bool)

(declare-fun e!1833381 () Regex!8883)

(assert (=> b!2903744 (= e!1833381 (Concat!14204 call!189312 r!19097))))

(declare-fun b!2903745 () Bool)

(declare-fun c!473175 () Bool)

(assert (=> b!2903745 (= c!473175 (nullable!2773 (regOne!18278 r!19097)))))

(assert (=> b!2903745 (= e!1833381 e!1833380)))

(declare-fun call!189310 () Regex!8883)

(declare-fun c!473178 () Bool)

(declare-fun bm!189306 () Bool)

(assert (=> bm!189306 (= call!189310 (derivativeStep!2390 (ite c!473177 (regTwo!18279 r!19097) (ite c!473178 (reg!9212 r!19097) (regOne!18278 r!19097))) (h!39980 prefix!1456)))))

(declare-fun b!2903746 () Bool)

(assert (=> b!2903746 (= e!1833378 (ite (= (h!39980 prefix!1456) (c!473132 r!19097)) EmptyExpr!8883 EmptyLang!8883))))

(declare-fun bm!189307 () Bool)

(assert (=> bm!189307 (= call!189312 call!189310)))

(declare-fun b!2903747 () Bool)

(assert (=> b!2903747 (= e!1833377 e!1833381)))

(assert (=> b!2903747 (= c!473178 ((_ is Star!8883) r!19097))))

(declare-fun b!2903748 () Bool)

(assert (=> b!2903748 (= e!1833379 EmptyLang!8883)))

(declare-fun b!2903749 () Bool)

(assert (=> b!2903749 (= e!1833380 (Union!8883 (Concat!14204 call!189311 (regTwo!18278 r!19097)) call!189309))))

(declare-fun b!2903750 () Bool)

(assert (=> b!2903750 (= e!1833377 (Union!8883 call!189309 call!189310))))

(assert (= (and d!835687 c!473176) b!2903748))

(assert (= (and d!835687 (not c!473176)) b!2903743))

(assert (= (and b!2903743 c!473174) b!2903746))

(assert (= (and b!2903743 (not c!473174)) b!2903742))

(assert (= (and b!2903742 c!473177) b!2903750))

(assert (= (and b!2903742 (not c!473177)) b!2903747))

(assert (= (and b!2903747 c!473178) b!2903744))

(assert (= (and b!2903747 (not c!473178)) b!2903745))

(assert (= (and b!2903745 c!473175) b!2903749))

(assert (= (and b!2903745 (not c!473175)) b!2903741))

(assert (= (or b!2903749 b!2903741) bm!189305))

(assert (= (or b!2903744 bm!189305) bm!189307))

(assert (= (or b!2903750 b!2903749) bm!189304))

(assert (= (or b!2903750 bm!189307) bm!189306))

(declare-fun m!3307087 () Bool)

(assert (=> bm!189304 m!3307087))

(declare-fun m!3307089 () Bool)

(assert (=> d!835687 m!3307089))

(assert (=> d!835687 m!3307021))

(declare-fun m!3307091 () Bool)

(assert (=> b!2903745 m!3307091))

(declare-fun m!3307093 () Bool)

(assert (=> bm!189306 m!3307093))

(assert (=> b!2903593 d!835687))

(declare-fun d!835695 () Bool)

(declare-fun c!473184 () Bool)

(declare-fun isEmpty!18872 (List!34684) Bool)

(assert (=> d!835695 (= c!473184 (isEmpty!18872 prefix!1456))))

(declare-fun e!1833395 () Bool)

(assert (=> d!835695 (= (prefixMatch!941 r!19097 prefix!1456) e!1833395)))

(declare-fun b!2903788 () Bool)

(declare-fun lostCause!862 (Regex!8883) Bool)

(assert (=> b!2903788 (= e!1833395 (not (lostCause!862 r!19097)))))

(declare-fun b!2903789 () Bool)

(assert (=> b!2903789 (= e!1833395 (prefixMatch!941 (derivativeStep!2390 r!19097 (head!6414 prefix!1456)) (tail!4643 prefix!1456)))))

(assert (= (and d!835695 c!473184) b!2903788))

(assert (= (and d!835695 (not c!473184)) b!2903789))

(declare-fun m!3307103 () Bool)

(assert (=> d!835695 m!3307103))

(declare-fun m!3307105 () Bool)

(assert (=> b!2903788 m!3307105))

(assert (=> b!2903789 m!3307031))

(assert (=> b!2903789 m!3307031))

(declare-fun m!3307107 () Bool)

(assert (=> b!2903789 m!3307107))

(assert (=> b!2903789 m!3307035))

(assert (=> b!2903789 m!3307107))

(assert (=> b!2903789 m!3307035))

(declare-fun m!3307109 () Bool)

(assert (=> b!2903789 m!3307109))

(assert (=> b!2903587 d!835695))

(declare-fun e!1833401 () Bool)

(assert (=> b!2903592 (= tp!932214 e!1833401)))

(declare-fun b!2903809 () Bool)

(assert (=> b!2903809 (= e!1833401 tp_is_empty!15353)))

(declare-fun b!2903810 () Bool)

(declare-fun tp!932265 () Bool)

(declare-fun tp!932269 () Bool)

(assert (=> b!2903810 (= e!1833401 (and tp!932265 tp!932269))))

(declare-fun b!2903812 () Bool)

(declare-fun tp!932266 () Bool)

(declare-fun tp!932267 () Bool)

(assert (=> b!2903812 (= e!1833401 (and tp!932266 tp!932267))))

(declare-fun b!2903811 () Bool)

(declare-fun tp!932268 () Bool)

(assert (=> b!2903811 (= e!1833401 tp!932268)))

(assert (= (and b!2903592 ((_ is ElementMatch!8883) (regOne!18279 r!19097))) b!2903809))

(assert (= (and b!2903592 ((_ is Concat!14204) (regOne!18279 r!19097))) b!2903810))

(assert (= (and b!2903592 ((_ is Star!8883) (regOne!18279 r!19097))) b!2903811))

(assert (= (and b!2903592 ((_ is Union!8883) (regOne!18279 r!19097))) b!2903812))

(declare-fun e!1833402 () Bool)

(assert (=> b!2903592 (= tp!932213 e!1833402)))

(declare-fun b!2903813 () Bool)

(assert (=> b!2903813 (= e!1833402 tp_is_empty!15353)))

(declare-fun b!2903814 () Bool)

(declare-fun tp!932270 () Bool)

(declare-fun tp!932274 () Bool)

(assert (=> b!2903814 (= e!1833402 (and tp!932270 tp!932274))))

(declare-fun b!2903816 () Bool)

(declare-fun tp!932271 () Bool)

(declare-fun tp!932272 () Bool)

(assert (=> b!2903816 (= e!1833402 (and tp!932271 tp!932272))))

(declare-fun b!2903815 () Bool)

(declare-fun tp!932273 () Bool)

(assert (=> b!2903815 (= e!1833402 tp!932273)))

(assert (= (and b!2903592 ((_ is ElementMatch!8883) (regTwo!18279 r!19097))) b!2903813))

(assert (= (and b!2903592 ((_ is Concat!14204) (regTwo!18279 r!19097))) b!2903814))

(assert (= (and b!2903592 ((_ is Star!8883) (regTwo!18279 r!19097))) b!2903815))

(assert (= (and b!2903592 ((_ is Union!8883) (regTwo!18279 r!19097))) b!2903816))

(declare-fun e!1833403 () Bool)

(assert (=> b!2903586 (= tp!932215 e!1833403)))

(declare-fun b!2903817 () Bool)

(assert (=> b!2903817 (= e!1833403 tp_is_empty!15353)))

(declare-fun b!2903818 () Bool)

(declare-fun tp!932275 () Bool)

(declare-fun tp!932279 () Bool)

(assert (=> b!2903818 (= e!1833403 (and tp!932275 tp!932279))))

(declare-fun b!2903820 () Bool)

(declare-fun tp!932276 () Bool)

(declare-fun tp!932277 () Bool)

(assert (=> b!2903820 (= e!1833403 (and tp!932276 tp!932277))))

(declare-fun b!2903819 () Bool)

(declare-fun tp!932278 () Bool)

(assert (=> b!2903819 (= e!1833403 tp!932278)))

(assert (= (and b!2903586 ((_ is ElementMatch!8883) (regOne!18278 r!19097))) b!2903817))

(assert (= (and b!2903586 ((_ is Concat!14204) (regOne!18278 r!19097))) b!2903818))

(assert (= (and b!2903586 ((_ is Star!8883) (regOne!18278 r!19097))) b!2903819))

(assert (= (and b!2903586 ((_ is Union!8883) (regOne!18278 r!19097))) b!2903820))

(declare-fun e!1833404 () Bool)

(assert (=> b!2903586 (= tp!932210 e!1833404)))

(declare-fun b!2903821 () Bool)

(assert (=> b!2903821 (= e!1833404 tp_is_empty!15353)))

(declare-fun b!2903822 () Bool)

(declare-fun tp!932280 () Bool)

(declare-fun tp!932284 () Bool)

(assert (=> b!2903822 (= e!1833404 (and tp!932280 tp!932284))))

(declare-fun b!2903824 () Bool)

(declare-fun tp!932281 () Bool)

(declare-fun tp!932282 () Bool)

(assert (=> b!2903824 (= e!1833404 (and tp!932281 tp!932282))))

(declare-fun b!2903823 () Bool)

(declare-fun tp!932283 () Bool)

(assert (=> b!2903823 (= e!1833404 tp!932283)))

(assert (= (and b!2903586 ((_ is ElementMatch!8883) (regTwo!18278 r!19097))) b!2903821))

(assert (= (and b!2903586 ((_ is Concat!14204) (regTwo!18278 r!19097))) b!2903822))

(assert (= (and b!2903586 ((_ is Star!8883) (regTwo!18278 r!19097))) b!2903823))

(assert (= (and b!2903586 ((_ is Union!8883) (regTwo!18278 r!19097))) b!2903824))

(declare-fun b!2903829 () Bool)

(declare-fun e!1833407 () Bool)

(declare-fun tp!932287 () Bool)

(assert (=> b!2903829 (= e!1833407 (and tp_is_empty!15353 tp!932287))))

(assert (=> b!2903591 (= tp!932209 e!1833407)))

(assert (= (and b!2903591 ((_ is Cons!34560) (t!233727 prefix!1456))) b!2903829))

(declare-fun b!2903830 () Bool)

(declare-fun e!1833408 () Bool)

(declare-fun tp!932288 () Bool)

(assert (=> b!2903830 (= e!1833408 (and tp_is_empty!15353 tp!932288))))

(assert (=> b!2903589 (= tp!932212 e!1833408)))

(assert (= (and b!2903589 ((_ is Cons!34560) (t!233727 s!13418))) b!2903830))

(declare-fun e!1833409 () Bool)

(assert (=> b!2903594 (= tp!932211 e!1833409)))

(declare-fun b!2903831 () Bool)

(assert (=> b!2903831 (= e!1833409 tp_is_empty!15353)))

(declare-fun b!2903832 () Bool)

(declare-fun tp!932289 () Bool)

(declare-fun tp!932293 () Bool)

(assert (=> b!2903832 (= e!1833409 (and tp!932289 tp!932293))))

(declare-fun b!2903834 () Bool)

(declare-fun tp!932290 () Bool)

(declare-fun tp!932291 () Bool)

(assert (=> b!2903834 (= e!1833409 (and tp!932290 tp!932291))))

(declare-fun b!2903833 () Bool)

(declare-fun tp!932292 () Bool)

(assert (=> b!2903833 (= e!1833409 tp!932292)))

(assert (= (and b!2903594 ((_ is ElementMatch!8883) (reg!9212 r!19097))) b!2903831))

(assert (= (and b!2903594 ((_ is Concat!14204) (reg!9212 r!19097))) b!2903832))

(assert (= (and b!2903594 ((_ is Star!8883) (reg!9212 r!19097))) b!2903833))

(assert (= (and b!2903594 ((_ is Union!8883) (reg!9212 r!19097))) b!2903834))

(check-sat (not b!2903633) (not b!2903745) (not b!2903833) (not b!2903812) (not bm!189286) (not b!2903834) (not b!2903832) (not b!2903824) (not d!835687) (not b!2903819) (not b!2903830) (not bm!189304) (not b!2903822) (not b!2903788) (not b!2903818) (not b!2903811) (not b!2903632) (not bm!189280) tp_is_empty!15353 (not b!2903816) (not b!2903823) (not b!2903810) (not b!2903815) (not b!2903677) (not b!2903829) (not b!2903820) (not b!2903686) (not d!835695) (not b!2903789) (not bm!189287) (not bm!189306) (not b!2903814) (not bm!189279) (not b!2903631))
(check-sat)
