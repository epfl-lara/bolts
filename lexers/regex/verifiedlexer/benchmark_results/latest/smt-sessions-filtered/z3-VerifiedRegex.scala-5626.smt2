; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281574 () Bool)

(assert start!281574)

(declare-fun b!2884576 () Bool)

(declare-fun e!1824339 () Bool)

(declare-datatypes ((C!17796 0))(
  ( (C!17797 (val!10932 Int)) )
))
(declare-datatypes ((Regex!8807 0))(
  ( (ElementMatch!8807 (c!468640 C!17796)) (Concat!14128 (regOne!18126 Regex!8807) (regTwo!18126 Regex!8807)) (EmptyExpr!8807) (Star!8807 (reg!9136 Regex!8807)) (EmptyLang!8807) (Union!8807 (regOne!18127 Regex!8807) (regTwo!18127 Regex!8807)) )
))
(declare-fun r!23079 () Regex!8807)

(declare-datatypes ((List!34608 0))(
  ( (Nil!34484) (Cons!34484 (h!39904 C!17796) (t!233651 List!34608)) )
))
(declare-datatypes ((Option!6480 0))(
  ( (None!6479) (Some!6479 (v!34605 List!34608)) )
))
(declare-fun lt!1020497 () Option!6480)

(declare-fun matchR!3785 (Regex!8807 List!34608) Bool)

(assert (=> b!2884576 (= e!1824339 (not (matchR!3785 (regOne!18126 r!23079) (v!34605 lt!1020497))))))

(declare-fun lt!1020496 () Option!6480)

(declare-fun get!10421 (Option!6480) List!34608)

(assert (=> b!2884576 (matchR!3785 (regTwo!18126 r!23079) (get!10421 lt!1020496))))

(declare-datatypes ((Unit!48075 0))(
  ( (Unit!48076) )
))
(declare-fun lt!1020498 () Unit!48075)

(declare-fun lemmaGetWitnessMatches!92 (Regex!8807) Unit!48075)

(assert (=> b!2884576 (= lt!1020498 (lemmaGetWitnessMatches!92 (regTwo!18126 r!23079)))))

(assert (=> b!2884576 (matchR!3785 (regOne!18126 r!23079) (get!10421 lt!1020497))))

(declare-fun lt!1020495 () Unit!48075)

(assert (=> b!2884576 (= lt!1020495 (lemmaGetWitnessMatches!92 (regOne!18126 r!23079)))))

(declare-fun b!2884577 () Bool)

(declare-fun res!1195136 () Bool)

(declare-fun e!1824340 () Bool)

(assert (=> b!2884577 (=> (not res!1195136) (not e!1824340))))

(declare-fun isDefined!5044 (Option!6480) Bool)

(declare-fun getLanguageWitness!514 (Regex!8807) Option!6480)

(assert (=> b!2884577 (= res!1195136 (isDefined!5044 (getLanguageWitness!514 r!23079)))))

(declare-fun b!2884578 () Bool)

(declare-fun e!1824341 () Bool)

(assert (=> b!2884578 (= e!1824341 e!1824339)))

(declare-fun res!1195134 () Bool)

(assert (=> b!2884578 (=> (not res!1195134) (not e!1824339))))

(get-info :version)

(assert (=> b!2884578 (= res!1195134 ((_ is Some!6479) lt!1020496))))

(assert (=> b!2884578 (= lt!1020496 (getLanguageWitness!514 (regTwo!18126 r!23079)))))

(declare-fun b!2884579 () Bool)

(assert (=> b!2884579 (= e!1824340 e!1824341)))

(declare-fun res!1195137 () Bool)

(assert (=> b!2884579 (=> (not res!1195137) (not e!1824341))))

(assert (=> b!2884579 (= res!1195137 ((_ is Some!6479) lt!1020497))))

(assert (=> b!2884579 (= lt!1020497 (getLanguageWitness!514 (regOne!18126 r!23079)))))

(declare-fun b!2884580 () Bool)

(declare-fun e!1824338 () Bool)

(declare-fun tp!925196 () Bool)

(assert (=> b!2884580 (= e!1824338 tp!925196)))

(declare-fun b!2884581 () Bool)

(declare-fun res!1195133 () Bool)

(assert (=> b!2884581 (=> (not res!1195133) (not e!1824340))))

(assert (=> b!2884581 (= res!1195133 (and (not ((_ is EmptyExpr!8807) r!23079)) (not ((_ is EmptyLang!8807) r!23079)) (not ((_ is ElementMatch!8807) r!23079)) (not ((_ is Star!8807) r!23079)) (not ((_ is Union!8807) r!23079))))))

(declare-fun b!2884582 () Bool)

(declare-fun tp_is_empty!15201 () Bool)

(assert (=> b!2884582 (= e!1824338 tp_is_empty!15201)))

(declare-fun res!1195135 () Bool)

(assert (=> start!281574 (=> (not res!1195135) (not e!1824340))))

(declare-fun validRegex!3580 (Regex!8807) Bool)

(assert (=> start!281574 (= res!1195135 (validRegex!3580 r!23079))))

(assert (=> start!281574 e!1824340))

(assert (=> start!281574 e!1824338))

(declare-fun b!2884583 () Bool)

(declare-fun tp!925199 () Bool)

(declare-fun tp!925195 () Bool)

(assert (=> b!2884583 (= e!1824338 (and tp!925199 tp!925195))))

(declare-fun b!2884584 () Bool)

(declare-fun tp!925197 () Bool)

(declare-fun tp!925198 () Bool)

(assert (=> b!2884584 (= e!1824338 (and tp!925197 tp!925198))))

(assert (= (and start!281574 res!1195135) b!2884577))

(assert (= (and b!2884577 res!1195136) b!2884581))

(assert (= (and b!2884581 res!1195133) b!2884579))

(assert (= (and b!2884579 res!1195137) b!2884578))

(assert (= (and b!2884578 res!1195134) b!2884576))

(assert (= (and start!281574 ((_ is ElementMatch!8807) r!23079)) b!2884582))

(assert (= (and start!281574 ((_ is Concat!14128) r!23079)) b!2884584))

(assert (= (and start!281574 ((_ is Star!8807) r!23079)) b!2884580))

(assert (= (and start!281574 ((_ is Union!8807) r!23079)) b!2884583))

(declare-fun m!3300623 () Bool)

(assert (=> b!2884578 m!3300623))

(declare-fun m!3300625 () Bool)

(assert (=> b!2884579 m!3300625))

(declare-fun m!3300627 () Bool)

(assert (=> start!281574 m!3300627))

(declare-fun m!3300629 () Bool)

(assert (=> b!2884576 m!3300629))

(declare-fun m!3300631 () Bool)

(assert (=> b!2884576 m!3300631))

(declare-fun m!3300633 () Bool)

(assert (=> b!2884576 m!3300633))

(declare-fun m!3300635 () Bool)

(assert (=> b!2884576 m!3300635))

(declare-fun m!3300637 () Bool)

(assert (=> b!2884576 m!3300637))

(declare-fun m!3300639 () Bool)

(assert (=> b!2884576 m!3300639))

(assert (=> b!2884576 m!3300629))

(assert (=> b!2884576 m!3300633))

(declare-fun m!3300641 () Bool)

(assert (=> b!2884576 m!3300641))

(declare-fun m!3300643 () Bool)

(assert (=> b!2884577 m!3300643))

(assert (=> b!2884577 m!3300643))

(declare-fun m!3300645 () Bool)

(assert (=> b!2884577 m!3300645))

(check-sat (not b!2884577) tp_is_empty!15201 (not b!2884583) (not b!2884576) (not b!2884579) (not b!2884580) (not b!2884578) (not start!281574) (not b!2884584))
(check-sat)
(get-model)

(declare-fun b!2884603 () Bool)

(declare-fun e!1824358 () Bool)

(declare-fun e!1824360 () Bool)

(assert (=> b!2884603 (= e!1824358 e!1824360)))

(declare-fun c!468646 () Bool)

(assert (=> b!2884603 (= c!468646 ((_ is Star!8807) r!23079))))

(declare-fun b!2884604 () Bool)

(declare-fun e!1824361 () Bool)

(declare-fun e!1824356 () Bool)

(assert (=> b!2884604 (= e!1824361 e!1824356)))

(declare-fun res!1195149 () Bool)

(assert (=> b!2884604 (=> (not res!1195149) (not e!1824356))))

(declare-fun call!187024 () Bool)

(assert (=> b!2884604 (= res!1195149 call!187024)))

(declare-fun b!2884605 () Bool)

(declare-fun e!1824357 () Bool)

(assert (=> b!2884605 (= e!1824360 e!1824357)))

(declare-fun res!1195152 () Bool)

(declare-fun nullable!2708 (Regex!8807) Bool)

(assert (=> b!2884605 (= res!1195152 (not (nullable!2708 (reg!9136 r!23079))))))

(assert (=> b!2884605 (=> (not res!1195152) (not e!1824357))))

(declare-fun b!2884606 () Bool)

(declare-fun e!1824362 () Bool)

(declare-fun call!187023 () Bool)

(assert (=> b!2884606 (= e!1824362 call!187023)))

(declare-fun b!2884607 () Bool)

(declare-fun call!187025 () Bool)

(assert (=> b!2884607 (= e!1824357 call!187025)))

(declare-fun b!2884608 () Bool)

(declare-fun res!1195148 () Bool)

(assert (=> b!2884608 (=> (not res!1195148) (not e!1824362))))

(assert (=> b!2884608 (= res!1195148 call!187024)))

(declare-fun e!1824359 () Bool)

(assert (=> b!2884608 (= e!1824359 e!1824362)))

(declare-fun bm!187018 () Bool)

(declare-fun c!468645 () Bool)

(assert (=> bm!187018 (= call!187025 (validRegex!3580 (ite c!468646 (reg!9136 r!23079) (ite c!468645 (regTwo!18127 r!23079) (regTwo!18126 r!23079)))))))

(declare-fun b!2884609 () Bool)

(assert (=> b!2884609 (= e!1824356 call!187023)))

(declare-fun bm!187019 () Bool)

(assert (=> bm!187019 (= call!187023 call!187025)))

(declare-fun d!833823 () Bool)

(declare-fun res!1195150 () Bool)

(assert (=> d!833823 (=> res!1195150 e!1824358)))

(assert (=> d!833823 (= res!1195150 ((_ is ElementMatch!8807) r!23079))))

(assert (=> d!833823 (= (validRegex!3580 r!23079) e!1824358)))

(declare-fun bm!187020 () Bool)

(assert (=> bm!187020 (= call!187024 (validRegex!3580 (ite c!468645 (regOne!18127 r!23079) (regOne!18126 r!23079))))))

(declare-fun b!2884610 () Bool)

(declare-fun res!1195151 () Bool)

(assert (=> b!2884610 (=> res!1195151 e!1824361)))

(assert (=> b!2884610 (= res!1195151 (not ((_ is Concat!14128) r!23079)))))

(assert (=> b!2884610 (= e!1824359 e!1824361)))

(declare-fun b!2884611 () Bool)

(assert (=> b!2884611 (= e!1824360 e!1824359)))

(assert (=> b!2884611 (= c!468645 ((_ is Union!8807) r!23079))))

(assert (= (and d!833823 (not res!1195150)) b!2884603))

(assert (= (and b!2884603 c!468646) b!2884605))

(assert (= (and b!2884603 (not c!468646)) b!2884611))

(assert (= (and b!2884605 res!1195152) b!2884607))

(assert (= (and b!2884611 c!468645) b!2884608))

(assert (= (and b!2884611 (not c!468645)) b!2884610))

(assert (= (and b!2884608 res!1195148) b!2884606))

(assert (= (and b!2884610 (not res!1195151)) b!2884604))

(assert (= (and b!2884604 res!1195149) b!2884609))

(assert (= (or b!2884606 b!2884609) bm!187019))

(assert (= (or b!2884608 b!2884604) bm!187020))

(assert (= (or b!2884607 bm!187019) bm!187018))

(declare-fun m!3300655 () Bool)

(assert (=> b!2884605 m!3300655))

(declare-fun m!3300657 () Bool)

(assert (=> bm!187018 m!3300657))

(declare-fun m!3300659 () Bool)

(assert (=> bm!187020 m!3300659))

(assert (=> start!281574 d!833823))

(declare-fun d!833829 () Bool)

(assert (=> d!833829 (matchR!3785 (regTwo!18126 r!23079) (get!10421 (getLanguageWitness!514 (regTwo!18126 r!23079))))))

(declare-fun lt!1020504 () Unit!48075)

(declare-fun choose!17056 (Regex!8807) Unit!48075)

(assert (=> d!833829 (= lt!1020504 (choose!17056 (regTwo!18126 r!23079)))))

(assert (=> d!833829 (validRegex!3580 (regTwo!18126 r!23079))))

(assert (=> d!833829 (= (lemmaGetWitnessMatches!92 (regTwo!18126 r!23079)) lt!1020504)))

(declare-fun bs!523804 () Bool)

(assert (= bs!523804 d!833829))

(declare-fun m!3300661 () Bool)

(assert (=> bs!523804 m!3300661))

(declare-fun m!3300663 () Bool)

(assert (=> bs!523804 m!3300663))

(assert (=> bs!523804 m!3300623))

(declare-fun m!3300665 () Bool)

(assert (=> bs!523804 m!3300665))

(assert (=> bs!523804 m!3300665))

(declare-fun m!3300667 () Bool)

(assert (=> bs!523804 m!3300667))

(assert (=> bs!523804 m!3300623))

(assert (=> b!2884576 d!833829))

(declare-fun d!833831 () Bool)

(assert (=> d!833831 (= (get!10421 lt!1020496) (v!34605 lt!1020496))))

(assert (=> b!2884576 d!833831))

(declare-fun b!2884728 () Bool)

(declare-fun e!1824427 () Bool)

(declare-fun e!1824430 () Bool)

(assert (=> b!2884728 (= e!1824427 e!1824430)))

(declare-fun res!1195220 () Bool)

(assert (=> b!2884728 (=> res!1195220 e!1824430)))

(declare-fun call!187035 () Bool)

(assert (=> b!2884728 (= res!1195220 call!187035)))

(declare-fun b!2884729 () Bool)

(declare-fun res!1195223 () Bool)

(declare-fun e!1824426 () Bool)

(assert (=> b!2884729 (=> res!1195223 e!1824426)))

(declare-fun e!1824429 () Bool)

(assert (=> b!2884729 (= res!1195223 e!1824429)))

(declare-fun res!1195222 () Bool)

(assert (=> b!2884729 (=> (not res!1195222) (not e!1824429))))

(declare-fun lt!1020513 () Bool)

(assert (=> b!2884729 (= res!1195222 lt!1020513)))

(declare-fun b!2884730 () Bool)

(declare-fun res!1195224 () Bool)

(assert (=> b!2884730 (=> (not res!1195224) (not e!1824429))))

(declare-fun isEmpty!18771 (List!34608) Bool)

(declare-fun tail!4596 (List!34608) List!34608)

(assert (=> b!2884730 (= res!1195224 (isEmpty!18771 (tail!4596 (get!10421 lt!1020497))))))

(declare-fun b!2884731 () Bool)

(declare-fun res!1195221 () Bool)

(assert (=> b!2884731 (=> res!1195221 e!1824430)))

(assert (=> b!2884731 (= res!1195221 (not (isEmpty!18771 (tail!4596 (get!10421 lt!1020497)))))))

(declare-fun b!2884732 () Bool)

(declare-fun e!1824432 () Bool)

(declare-fun derivativeStep!2342 (Regex!8807 C!17796) Regex!8807)

(declare-fun head!6371 (List!34608) C!17796)

(assert (=> b!2884732 (= e!1824432 (matchR!3785 (derivativeStep!2342 (regOne!18126 r!23079) (head!6371 (get!10421 lt!1020497))) (tail!4596 (get!10421 lt!1020497))))))

(declare-fun b!2884733 () Bool)

(declare-fun e!1824428 () Bool)

(assert (=> b!2884733 (= e!1824428 (= lt!1020513 call!187035))))

(declare-fun b!2884734 () Bool)

(declare-fun res!1195219 () Bool)

(assert (=> b!2884734 (=> res!1195219 e!1824426)))

(assert (=> b!2884734 (= res!1195219 (not ((_ is ElementMatch!8807) (regOne!18126 r!23079))))))

(declare-fun e!1824431 () Bool)

(assert (=> b!2884734 (= e!1824431 e!1824426)))

(declare-fun b!2884735 () Bool)

(assert (=> b!2884735 (= e!1824430 (not (= (head!6371 (get!10421 lt!1020497)) (c!468640 (regOne!18126 r!23079)))))))

(declare-fun d!833833 () Bool)

(assert (=> d!833833 e!1824428))

(declare-fun c!468674 () Bool)

(assert (=> d!833833 (= c!468674 ((_ is EmptyExpr!8807) (regOne!18126 r!23079)))))

(assert (=> d!833833 (= lt!1020513 e!1824432)))

(declare-fun c!468673 () Bool)

(assert (=> d!833833 (= c!468673 (isEmpty!18771 (get!10421 lt!1020497)))))

(assert (=> d!833833 (validRegex!3580 (regOne!18126 r!23079))))

(assert (=> d!833833 (= (matchR!3785 (regOne!18126 r!23079) (get!10421 lt!1020497)) lt!1020513)))

(declare-fun b!2884736 () Bool)

(declare-fun res!1195226 () Bool)

(assert (=> b!2884736 (=> (not res!1195226) (not e!1824429))))

(assert (=> b!2884736 (= res!1195226 (not call!187035))))

(declare-fun b!2884737 () Bool)

(assert (=> b!2884737 (= e!1824429 (= (head!6371 (get!10421 lt!1020497)) (c!468640 (regOne!18126 r!23079))))))

(declare-fun b!2884738 () Bool)

(assert (=> b!2884738 (= e!1824426 e!1824427)))

(declare-fun res!1195225 () Bool)

(assert (=> b!2884738 (=> (not res!1195225) (not e!1824427))))

(assert (=> b!2884738 (= res!1195225 (not lt!1020513))))

(declare-fun bm!187030 () Bool)

(assert (=> bm!187030 (= call!187035 (isEmpty!18771 (get!10421 lt!1020497)))))

(declare-fun b!2884739 () Bool)

(assert (=> b!2884739 (= e!1824431 (not lt!1020513))))

(declare-fun b!2884740 () Bool)

(assert (=> b!2884740 (= e!1824432 (nullable!2708 (regOne!18126 r!23079)))))

(declare-fun b!2884741 () Bool)

(assert (=> b!2884741 (= e!1824428 e!1824431)))

(declare-fun c!468672 () Bool)

(assert (=> b!2884741 (= c!468672 ((_ is EmptyLang!8807) (regOne!18126 r!23079)))))

(assert (= (and d!833833 c!468673) b!2884740))

(assert (= (and d!833833 (not c!468673)) b!2884732))

(assert (= (and d!833833 c!468674) b!2884733))

(assert (= (and d!833833 (not c!468674)) b!2884741))

(assert (= (and b!2884741 c!468672) b!2884739))

(assert (= (and b!2884741 (not c!468672)) b!2884734))

(assert (= (and b!2884734 (not res!1195219)) b!2884729))

(assert (= (and b!2884729 res!1195222) b!2884736))

(assert (= (and b!2884736 res!1195226) b!2884730))

(assert (= (and b!2884730 res!1195224) b!2884737))

(assert (= (and b!2884729 (not res!1195223)) b!2884738))

(assert (= (and b!2884738 res!1195225) b!2884728))

(assert (= (and b!2884728 (not res!1195220)) b!2884731))

(assert (= (and b!2884731 (not res!1195221)) b!2884735))

(assert (= (or b!2884733 b!2884728 b!2884736) bm!187030))

(declare-fun m!3300717 () Bool)

(assert (=> b!2884740 m!3300717))

(assert (=> b!2884731 m!3300629))

(declare-fun m!3300719 () Bool)

(assert (=> b!2884731 m!3300719))

(assert (=> b!2884731 m!3300719))

(declare-fun m!3300721 () Bool)

(assert (=> b!2884731 m!3300721))

(assert (=> b!2884730 m!3300629))

(assert (=> b!2884730 m!3300719))

(assert (=> b!2884730 m!3300719))

(assert (=> b!2884730 m!3300721))

(assert (=> b!2884735 m!3300629))

(declare-fun m!3300723 () Bool)

(assert (=> b!2884735 m!3300723))

(assert (=> b!2884732 m!3300629))

(assert (=> b!2884732 m!3300723))

(assert (=> b!2884732 m!3300723))

(declare-fun m!3300725 () Bool)

(assert (=> b!2884732 m!3300725))

(assert (=> b!2884732 m!3300629))

(assert (=> b!2884732 m!3300719))

(assert (=> b!2884732 m!3300725))

(assert (=> b!2884732 m!3300719))

(declare-fun m!3300727 () Bool)

(assert (=> b!2884732 m!3300727))

(assert (=> d!833833 m!3300629))

(declare-fun m!3300729 () Bool)

(assert (=> d!833833 m!3300729))

(declare-fun m!3300731 () Bool)

(assert (=> d!833833 m!3300731))

(assert (=> b!2884737 m!3300629))

(assert (=> b!2884737 m!3300723))

(assert (=> bm!187030 m!3300629))

(assert (=> bm!187030 m!3300729))

(assert (=> b!2884576 d!833833))

(declare-fun b!2884742 () Bool)

(declare-fun e!1824434 () Bool)

(declare-fun e!1824437 () Bool)

(assert (=> b!2884742 (= e!1824434 e!1824437)))

(declare-fun res!1195228 () Bool)

(assert (=> b!2884742 (=> res!1195228 e!1824437)))

(declare-fun call!187040 () Bool)

(assert (=> b!2884742 (= res!1195228 call!187040)))

(declare-fun b!2884743 () Bool)

(declare-fun res!1195231 () Bool)

(declare-fun e!1824433 () Bool)

(assert (=> b!2884743 (=> res!1195231 e!1824433)))

(declare-fun e!1824436 () Bool)

(assert (=> b!2884743 (= res!1195231 e!1824436)))

(declare-fun res!1195230 () Bool)

(assert (=> b!2884743 (=> (not res!1195230) (not e!1824436))))

(declare-fun lt!1020514 () Bool)

(assert (=> b!2884743 (= res!1195230 lt!1020514)))

(declare-fun b!2884744 () Bool)

(declare-fun res!1195232 () Bool)

(assert (=> b!2884744 (=> (not res!1195232) (not e!1824436))))

(assert (=> b!2884744 (= res!1195232 (isEmpty!18771 (tail!4596 (v!34605 lt!1020497))))))

(declare-fun b!2884745 () Bool)

(declare-fun res!1195229 () Bool)

(assert (=> b!2884745 (=> res!1195229 e!1824437)))

(assert (=> b!2884745 (= res!1195229 (not (isEmpty!18771 (tail!4596 (v!34605 lt!1020497)))))))

(declare-fun b!2884746 () Bool)

(declare-fun e!1824439 () Bool)

(assert (=> b!2884746 (= e!1824439 (matchR!3785 (derivativeStep!2342 (regOne!18126 r!23079) (head!6371 (v!34605 lt!1020497))) (tail!4596 (v!34605 lt!1020497))))))

(declare-fun b!2884747 () Bool)

(declare-fun e!1824435 () Bool)

(assert (=> b!2884747 (= e!1824435 (= lt!1020514 call!187040))))

(declare-fun b!2884748 () Bool)

(declare-fun res!1195227 () Bool)

(assert (=> b!2884748 (=> res!1195227 e!1824433)))

(assert (=> b!2884748 (= res!1195227 (not ((_ is ElementMatch!8807) (regOne!18126 r!23079))))))

(declare-fun e!1824438 () Bool)

(assert (=> b!2884748 (= e!1824438 e!1824433)))

(declare-fun b!2884749 () Bool)

(assert (=> b!2884749 (= e!1824437 (not (= (head!6371 (v!34605 lt!1020497)) (c!468640 (regOne!18126 r!23079)))))))

(declare-fun d!833847 () Bool)

(assert (=> d!833847 e!1824435))

(declare-fun c!468677 () Bool)

(assert (=> d!833847 (= c!468677 ((_ is EmptyExpr!8807) (regOne!18126 r!23079)))))

(assert (=> d!833847 (= lt!1020514 e!1824439)))

(declare-fun c!468676 () Bool)

(assert (=> d!833847 (= c!468676 (isEmpty!18771 (v!34605 lt!1020497)))))

(assert (=> d!833847 (validRegex!3580 (regOne!18126 r!23079))))

(assert (=> d!833847 (= (matchR!3785 (regOne!18126 r!23079) (v!34605 lt!1020497)) lt!1020514)))

(declare-fun b!2884750 () Bool)

(declare-fun res!1195234 () Bool)

(assert (=> b!2884750 (=> (not res!1195234) (not e!1824436))))

(assert (=> b!2884750 (= res!1195234 (not call!187040))))

(declare-fun b!2884751 () Bool)

(assert (=> b!2884751 (= e!1824436 (= (head!6371 (v!34605 lt!1020497)) (c!468640 (regOne!18126 r!23079))))))

(declare-fun b!2884752 () Bool)

(assert (=> b!2884752 (= e!1824433 e!1824434)))

(declare-fun res!1195233 () Bool)

(assert (=> b!2884752 (=> (not res!1195233) (not e!1824434))))

(assert (=> b!2884752 (= res!1195233 (not lt!1020514))))

(declare-fun bm!187035 () Bool)

(assert (=> bm!187035 (= call!187040 (isEmpty!18771 (v!34605 lt!1020497)))))

(declare-fun b!2884753 () Bool)

(assert (=> b!2884753 (= e!1824438 (not lt!1020514))))

(declare-fun b!2884754 () Bool)

(assert (=> b!2884754 (= e!1824439 (nullable!2708 (regOne!18126 r!23079)))))

(declare-fun b!2884755 () Bool)

(assert (=> b!2884755 (= e!1824435 e!1824438)))

(declare-fun c!468675 () Bool)

(assert (=> b!2884755 (= c!468675 ((_ is EmptyLang!8807) (regOne!18126 r!23079)))))

(assert (= (and d!833847 c!468676) b!2884754))

(assert (= (and d!833847 (not c!468676)) b!2884746))

(assert (= (and d!833847 c!468677) b!2884747))

(assert (= (and d!833847 (not c!468677)) b!2884755))

(assert (= (and b!2884755 c!468675) b!2884753))

(assert (= (and b!2884755 (not c!468675)) b!2884748))

(assert (= (and b!2884748 (not res!1195227)) b!2884743))

(assert (= (and b!2884743 res!1195230) b!2884750))

(assert (= (and b!2884750 res!1195234) b!2884744))

(assert (= (and b!2884744 res!1195232) b!2884751))

(assert (= (and b!2884743 (not res!1195231)) b!2884752))

(assert (= (and b!2884752 res!1195233) b!2884742))

(assert (= (and b!2884742 (not res!1195228)) b!2884745))

(assert (= (and b!2884745 (not res!1195229)) b!2884749))

(assert (= (or b!2884747 b!2884742 b!2884750) bm!187035))

(assert (=> b!2884754 m!3300717))

(declare-fun m!3300733 () Bool)

(assert (=> b!2884745 m!3300733))

(assert (=> b!2884745 m!3300733))

(declare-fun m!3300735 () Bool)

(assert (=> b!2884745 m!3300735))

(assert (=> b!2884744 m!3300733))

(assert (=> b!2884744 m!3300733))

(assert (=> b!2884744 m!3300735))

(declare-fun m!3300737 () Bool)

(assert (=> b!2884749 m!3300737))

(assert (=> b!2884746 m!3300737))

(assert (=> b!2884746 m!3300737))

(declare-fun m!3300739 () Bool)

(assert (=> b!2884746 m!3300739))

(assert (=> b!2884746 m!3300733))

(assert (=> b!2884746 m!3300739))

(assert (=> b!2884746 m!3300733))

(declare-fun m!3300741 () Bool)

(assert (=> b!2884746 m!3300741))

(declare-fun m!3300743 () Bool)

(assert (=> d!833847 m!3300743))

(assert (=> d!833847 m!3300731))

(assert (=> b!2884751 m!3300737))

(assert (=> bm!187035 m!3300743))

(assert (=> b!2884576 d!833847))

(declare-fun b!2884756 () Bool)

(declare-fun e!1824441 () Bool)

(declare-fun e!1824444 () Bool)

(assert (=> b!2884756 (= e!1824441 e!1824444)))

(declare-fun res!1195236 () Bool)

(assert (=> b!2884756 (=> res!1195236 e!1824444)))

(declare-fun call!187041 () Bool)

(assert (=> b!2884756 (= res!1195236 call!187041)))

(declare-fun b!2884757 () Bool)

(declare-fun res!1195239 () Bool)

(declare-fun e!1824440 () Bool)

(assert (=> b!2884757 (=> res!1195239 e!1824440)))

(declare-fun e!1824443 () Bool)

(assert (=> b!2884757 (= res!1195239 e!1824443)))

(declare-fun res!1195238 () Bool)

(assert (=> b!2884757 (=> (not res!1195238) (not e!1824443))))

(declare-fun lt!1020515 () Bool)

(assert (=> b!2884757 (= res!1195238 lt!1020515)))

(declare-fun b!2884758 () Bool)

(declare-fun res!1195240 () Bool)

(assert (=> b!2884758 (=> (not res!1195240) (not e!1824443))))

(assert (=> b!2884758 (= res!1195240 (isEmpty!18771 (tail!4596 (get!10421 lt!1020496))))))

(declare-fun b!2884759 () Bool)

(declare-fun res!1195237 () Bool)

(assert (=> b!2884759 (=> res!1195237 e!1824444)))

(assert (=> b!2884759 (= res!1195237 (not (isEmpty!18771 (tail!4596 (get!10421 lt!1020496)))))))

(declare-fun b!2884760 () Bool)

(declare-fun e!1824446 () Bool)

(assert (=> b!2884760 (= e!1824446 (matchR!3785 (derivativeStep!2342 (regTwo!18126 r!23079) (head!6371 (get!10421 lt!1020496))) (tail!4596 (get!10421 lt!1020496))))))

(declare-fun b!2884761 () Bool)

(declare-fun e!1824442 () Bool)

(assert (=> b!2884761 (= e!1824442 (= lt!1020515 call!187041))))

(declare-fun b!2884762 () Bool)

(declare-fun res!1195235 () Bool)

(assert (=> b!2884762 (=> res!1195235 e!1824440)))

(assert (=> b!2884762 (= res!1195235 (not ((_ is ElementMatch!8807) (regTwo!18126 r!23079))))))

(declare-fun e!1824445 () Bool)

(assert (=> b!2884762 (= e!1824445 e!1824440)))

(declare-fun b!2884763 () Bool)

(assert (=> b!2884763 (= e!1824444 (not (= (head!6371 (get!10421 lt!1020496)) (c!468640 (regTwo!18126 r!23079)))))))

(declare-fun d!833849 () Bool)

(assert (=> d!833849 e!1824442))

(declare-fun c!468680 () Bool)

(assert (=> d!833849 (= c!468680 ((_ is EmptyExpr!8807) (regTwo!18126 r!23079)))))

(assert (=> d!833849 (= lt!1020515 e!1824446)))

(declare-fun c!468679 () Bool)

(assert (=> d!833849 (= c!468679 (isEmpty!18771 (get!10421 lt!1020496)))))

(assert (=> d!833849 (validRegex!3580 (regTwo!18126 r!23079))))

(assert (=> d!833849 (= (matchR!3785 (regTwo!18126 r!23079) (get!10421 lt!1020496)) lt!1020515)))

(declare-fun b!2884764 () Bool)

(declare-fun res!1195242 () Bool)

(assert (=> b!2884764 (=> (not res!1195242) (not e!1824443))))

(assert (=> b!2884764 (= res!1195242 (not call!187041))))

(declare-fun b!2884765 () Bool)

(assert (=> b!2884765 (= e!1824443 (= (head!6371 (get!10421 lt!1020496)) (c!468640 (regTwo!18126 r!23079))))))

(declare-fun b!2884766 () Bool)

(assert (=> b!2884766 (= e!1824440 e!1824441)))

(declare-fun res!1195241 () Bool)

(assert (=> b!2884766 (=> (not res!1195241) (not e!1824441))))

(assert (=> b!2884766 (= res!1195241 (not lt!1020515))))

(declare-fun bm!187036 () Bool)

(assert (=> bm!187036 (= call!187041 (isEmpty!18771 (get!10421 lt!1020496)))))

(declare-fun b!2884767 () Bool)

(assert (=> b!2884767 (= e!1824445 (not lt!1020515))))

(declare-fun b!2884768 () Bool)

(assert (=> b!2884768 (= e!1824446 (nullable!2708 (regTwo!18126 r!23079)))))

(declare-fun b!2884769 () Bool)

(assert (=> b!2884769 (= e!1824442 e!1824445)))

(declare-fun c!468678 () Bool)

(assert (=> b!2884769 (= c!468678 ((_ is EmptyLang!8807) (regTwo!18126 r!23079)))))

(assert (= (and d!833849 c!468679) b!2884768))

(assert (= (and d!833849 (not c!468679)) b!2884760))

(assert (= (and d!833849 c!468680) b!2884761))

(assert (= (and d!833849 (not c!468680)) b!2884769))

(assert (= (and b!2884769 c!468678) b!2884767))

(assert (= (and b!2884769 (not c!468678)) b!2884762))

(assert (= (and b!2884762 (not res!1195235)) b!2884757))

(assert (= (and b!2884757 res!1195238) b!2884764))

(assert (= (and b!2884764 res!1195242) b!2884758))

(assert (= (and b!2884758 res!1195240) b!2884765))

(assert (= (and b!2884757 (not res!1195239)) b!2884766))

(assert (= (and b!2884766 res!1195241) b!2884756))

(assert (= (and b!2884756 (not res!1195236)) b!2884759))

(assert (= (and b!2884759 (not res!1195237)) b!2884763))

(assert (= (or b!2884761 b!2884756 b!2884764) bm!187036))

(declare-fun m!3300745 () Bool)

(assert (=> b!2884768 m!3300745))

(assert (=> b!2884759 m!3300633))

(declare-fun m!3300747 () Bool)

(assert (=> b!2884759 m!3300747))

(assert (=> b!2884759 m!3300747))

(declare-fun m!3300749 () Bool)

(assert (=> b!2884759 m!3300749))

(assert (=> b!2884758 m!3300633))

(assert (=> b!2884758 m!3300747))

(assert (=> b!2884758 m!3300747))

(assert (=> b!2884758 m!3300749))

(assert (=> b!2884763 m!3300633))

(declare-fun m!3300753 () Bool)

(assert (=> b!2884763 m!3300753))

(assert (=> b!2884760 m!3300633))

(assert (=> b!2884760 m!3300753))

(assert (=> b!2884760 m!3300753))

(declare-fun m!3300759 () Bool)

(assert (=> b!2884760 m!3300759))

(assert (=> b!2884760 m!3300633))

(assert (=> b!2884760 m!3300747))

(assert (=> b!2884760 m!3300759))

(assert (=> b!2884760 m!3300747))

(declare-fun m!3300761 () Bool)

(assert (=> b!2884760 m!3300761))

(assert (=> d!833849 m!3300633))

(declare-fun m!3300763 () Bool)

(assert (=> d!833849 m!3300763))

(assert (=> d!833849 m!3300663))

(assert (=> b!2884765 m!3300633))

(assert (=> b!2884765 m!3300753))

(assert (=> bm!187036 m!3300633))

(assert (=> bm!187036 m!3300763))

(assert (=> b!2884576 d!833849))

(declare-fun d!833853 () Bool)

(assert (=> d!833853 (= (get!10421 lt!1020497) (v!34605 lt!1020497))))

(assert (=> b!2884576 d!833853))

(declare-fun d!833855 () Bool)

(assert (=> d!833855 (matchR!3785 (regOne!18126 r!23079) (get!10421 (getLanguageWitness!514 (regOne!18126 r!23079))))))

(declare-fun lt!1020516 () Unit!48075)

(assert (=> d!833855 (= lt!1020516 (choose!17056 (regOne!18126 r!23079)))))

(assert (=> d!833855 (validRegex!3580 (regOne!18126 r!23079))))

(assert (=> d!833855 (= (lemmaGetWitnessMatches!92 (regOne!18126 r!23079)) lt!1020516)))

(declare-fun bs!523806 () Bool)

(assert (= bs!523806 d!833855))

(declare-fun m!3300765 () Bool)

(assert (=> bs!523806 m!3300765))

(assert (=> bs!523806 m!3300731))

(assert (=> bs!523806 m!3300625))

(declare-fun m!3300767 () Bool)

(assert (=> bs!523806 m!3300767))

(assert (=> bs!523806 m!3300767))

(declare-fun m!3300769 () Bool)

(assert (=> bs!523806 m!3300769))

(assert (=> bs!523806 m!3300625))

(assert (=> b!2884576 d!833855))

(declare-fun d!833857 () Bool)

(declare-fun isEmpty!18773 (Option!6480) Bool)

(assert (=> d!833857 (= (isDefined!5044 (getLanguageWitness!514 r!23079)) (not (isEmpty!18773 (getLanguageWitness!514 r!23079))))))

(declare-fun bs!523807 () Bool)

(assert (= bs!523807 d!833857))

(assert (=> bs!523807 m!3300643))

(declare-fun m!3300771 () Bool)

(assert (=> bs!523807 m!3300771))

(assert (=> b!2884577 d!833857))

(declare-fun b!2884909 () Bool)

(declare-fun e!1824514 () Option!6480)

(declare-fun e!1824520 () Option!6480)

(assert (=> b!2884909 (= e!1824514 e!1824520)))

(declare-fun lt!1020540 () Option!6480)

(declare-fun call!187059 () Option!6480)

(assert (=> b!2884909 (= lt!1020540 call!187059)))

(declare-fun c!468742 () Bool)

(assert (=> b!2884909 (= c!468742 ((_ is Some!6479) lt!1020540))))

(declare-fun b!2884910 () Bool)

(declare-fun c!468744 () Bool)

(assert (=> b!2884910 (= c!468744 ((_ is ElementMatch!8807) r!23079))))

(declare-fun e!1824517 () Option!6480)

(declare-fun e!1824515 () Option!6480)

(assert (=> b!2884910 (= e!1824517 e!1824515)))

(declare-fun b!2884912 () Bool)

(declare-fun e!1824516 () Option!6480)

(assert (=> b!2884912 (= e!1824516 (Some!6479 Nil!34484))))

(declare-fun b!2884913 () Bool)

(assert (=> b!2884913 (= e!1824517 None!6479)))

(declare-fun bm!187054 () Bool)

(declare-fun call!187060 () Option!6480)

(declare-fun c!468740 () Bool)

(assert (=> bm!187054 (= call!187060 (getLanguageWitness!514 (ite c!468740 (regTwo!18127 r!23079) (regOne!18126 r!23079))))))

(declare-fun b!2884914 () Bool)

(assert (=> b!2884914 (= c!468740 ((_ is Union!8807) r!23079))))

(declare-fun e!1824521 () Option!6480)

(assert (=> b!2884914 (= e!1824521 e!1824514)))

(declare-fun b!2884915 () Bool)

(assert (=> b!2884915 (= e!1824516 e!1824517)))

(declare-fun c!468745 () Bool)

(assert (=> b!2884915 (= c!468745 ((_ is EmptyLang!8807) r!23079))))

(declare-fun b!2884916 () Bool)

(declare-fun c!468739 () Bool)

(declare-fun lt!1020538 () Option!6480)

(assert (=> b!2884916 (= c!468739 ((_ is Some!6479) lt!1020538))))

(assert (=> b!2884916 (= lt!1020538 call!187059)))

(declare-fun e!1824518 () Option!6480)

(declare-fun e!1824519 () Option!6480)

(assert (=> b!2884916 (= e!1824518 e!1824519)))

(declare-fun b!2884917 () Bool)

(declare-fun lt!1020539 () Option!6480)

(declare-fun ++!8207 (List!34608 List!34608) List!34608)

(assert (=> b!2884917 (= e!1824519 (Some!6479 (++!8207 (v!34605 lt!1020539) (v!34605 lt!1020538))))))

(declare-fun b!2884918 () Bool)

(assert (=> b!2884918 (= e!1824518 None!6479)))

(declare-fun b!2884919 () Bool)

(assert (=> b!2884919 (= e!1824521 (Some!6479 Nil!34484))))

(declare-fun bm!187055 () Bool)

(assert (=> bm!187055 (= call!187059 (getLanguageWitness!514 (ite c!468740 (regOne!18127 r!23079) (regTwo!18126 r!23079))))))

(declare-fun b!2884911 () Bool)

(assert (=> b!2884911 (= e!1824519 None!6479)))

(declare-fun d!833859 () Bool)

(declare-fun c!468743 () Bool)

(assert (=> d!833859 (= c!468743 ((_ is EmptyExpr!8807) r!23079))))

(assert (=> d!833859 (= (getLanguageWitness!514 r!23079) e!1824516)))

(declare-fun b!2884920 () Bool)

(assert (=> b!2884920 (= e!1824520 call!187060)))

(declare-fun b!2884921 () Bool)

(assert (=> b!2884921 (= e!1824520 lt!1020540)))

(declare-fun b!2884922 () Bool)

(assert (=> b!2884922 (= e!1824514 e!1824518)))

(assert (=> b!2884922 (= lt!1020539 call!187060)))

(declare-fun c!468741 () Bool)

(assert (=> b!2884922 (= c!468741 ((_ is Some!6479) lt!1020539))))

(declare-fun b!2884923 () Bool)

(assert (=> b!2884923 (= e!1824515 (Some!6479 (Cons!34484 (c!468640 r!23079) Nil!34484)))))

(declare-fun b!2884924 () Bool)

(assert (=> b!2884924 (= e!1824515 e!1824521)))

(declare-fun c!468746 () Bool)

(assert (=> b!2884924 (= c!468746 ((_ is Star!8807) r!23079))))

(assert (= (and d!833859 c!468743) b!2884912))

(assert (= (and d!833859 (not c!468743)) b!2884915))

(assert (= (and b!2884915 c!468745) b!2884913))

(assert (= (and b!2884915 (not c!468745)) b!2884910))

(assert (= (and b!2884910 c!468744) b!2884923))

(assert (= (and b!2884910 (not c!468744)) b!2884924))

(assert (= (and b!2884924 c!468746) b!2884919))

(assert (= (and b!2884924 (not c!468746)) b!2884914))

(assert (= (and b!2884914 c!468740) b!2884909))

(assert (= (and b!2884914 (not c!468740)) b!2884922))

(assert (= (and b!2884909 c!468742) b!2884921))

(assert (= (and b!2884909 (not c!468742)) b!2884920))

(assert (= (and b!2884922 c!468741) b!2884916))

(assert (= (and b!2884922 (not c!468741)) b!2884918))

(assert (= (and b!2884916 c!468739) b!2884917))

(assert (= (and b!2884916 (not c!468739)) b!2884911))

(assert (= (or b!2884920 b!2884922) bm!187054))

(assert (= (or b!2884909 b!2884916) bm!187055))

(declare-fun m!3300793 () Bool)

(assert (=> bm!187054 m!3300793))

(declare-fun m!3300795 () Bool)

(assert (=> b!2884917 m!3300795))

(declare-fun m!3300797 () Bool)

(assert (=> bm!187055 m!3300797))

(assert (=> b!2884577 d!833859))

(declare-fun b!2884937 () Bool)

(declare-fun e!1824525 () Option!6480)

(declare-fun e!1824531 () Option!6480)

(assert (=> b!2884937 (= e!1824525 e!1824531)))

(declare-fun lt!1020543 () Option!6480)

(declare-fun call!187061 () Option!6480)

(assert (=> b!2884937 (= lt!1020543 call!187061)))

(declare-fun c!468750 () Bool)

(assert (=> b!2884937 (= c!468750 ((_ is Some!6479) lt!1020543))))

(declare-fun b!2884938 () Bool)

(declare-fun c!468752 () Bool)

(assert (=> b!2884938 (= c!468752 ((_ is ElementMatch!8807) (regTwo!18126 r!23079)))))

(declare-fun e!1824528 () Option!6480)

(declare-fun e!1824526 () Option!6480)

(assert (=> b!2884938 (= e!1824528 e!1824526)))

(declare-fun b!2884940 () Bool)

(declare-fun e!1824527 () Option!6480)

(assert (=> b!2884940 (= e!1824527 (Some!6479 Nil!34484))))

(declare-fun b!2884941 () Bool)

(assert (=> b!2884941 (= e!1824528 None!6479)))

(declare-fun bm!187056 () Bool)

(declare-fun call!187062 () Option!6480)

(declare-fun c!468748 () Bool)

(assert (=> bm!187056 (= call!187062 (getLanguageWitness!514 (ite c!468748 (regTwo!18127 (regTwo!18126 r!23079)) (regOne!18126 (regTwo!18126 r!23079)))))))

(declare-fun b!2884942 () Bool)

(assert (=> b!2884942 (= c!468748 ((_ is Union!8807) (regTwo!18126 r!23079)))))

(declare-fun e!1824532 () Option!6480)

(assert (=> b!2884942 (= e!1824532 e!1824525)))

(declare-fun b!2884943 () Bool)

(assert (=> b!2884943 (= e!1824527 e!1824528)))

(declare-fun c!468753 () Bool)

(assert (=> b!2884943 (= c!468753 ((_ is EmptyLang!8807) (regTwo!18126 r!23079)))))

(declare-fun b!2884944 () Bool)

(declare-fun c!468747 () Bool)

(declare-fun lt!1020541 () Option!6480)

(assert (=> b!2884944 (= c!468747 ((_ is Some!6479) lt!1020541))))

(assert (=> b!2884944 (= lt!1020541 call!187061)))

(declare-fun e!1824529 () Option!6480)

(declare-fun e!1824530 () Option!6480)

(assert (=> b!2884944 (= e!1824529 e!1824530)))

(declare-fun b!2884945 () Bool)

(declare-fun lt!1020542 () Option!6480)

(assert (=> b!2884945 (= e!1824530 (Some!6479 (++!8207 (v!34605 lt!1020542) (v!34605 lt!1020541))))))

(declare-fun b!2884946 () Bool)

(assert (=> b!2884946 (= e!1824529 None!6479)))

(declare-fun b!2884947 () Bool)

(assert (=> b!2884947 (= e!1824532 (Some!6479 Nil!34484))))

(declare-fun bm!187057 () Bool)

(assert (=> bm!187057 (= call!187061 (getLanguageWitness!514 (ite c!468748 (regOne!18127 (regTwo!18126 r!23079)) (regTwo!18126 (regTwo!18126 r!23079)))))))

(declare-fun b!2884939 () Bool)

(assert (=> b!2884939 (= e!1824530 None!6479)))

(declare-fun d!833867 () Bool)

(declare-fun c!468751 () Bool)

(assert (=> d!833867 (= c!468751 ((_ is EmptyExpr!8807) (regTwo!18126 r!23079)))))

(assert (=> d!833867 (= (getLanguageWitness!514 (regTwo!18126 r!23079)) e!1824527)))

(declare-fun b!2884948 () Bool)

(assert (=> b!2884948 (= e!1824531 call!187062)))

(declare-fun b!2884949 () Bool)

(assert (=> b!2884949 (= e!1824531 lt!1020543)))

(declare-fun b!2884950 () Bool)

(assert (=> b!2884950 (= e!1824525 e!1824529)))

(assert (=> b!2884950 (= lt!1020542 call!187062)))

(declare-fun c!468749 () Bool)

(assert (=> b!2884950 (= c!468749 ((_ is Some!6479) lt!1020542))))

(declare-fun b!2884951 () Bool)

(assert (=> b!2884951 (= e!1824526 (Some!6479 (Cons!34484 (c!468640 (regTwo!18126 r!23079)) Nil!34484)))))

(declare-fun b!2884952 () Bool)

(assert (=> b!2884952 (= e!1824526 e!1824532)))

(declare-fun c!468754 () Bool)

(assert (=> b!2884952 (= c!468754 ((_ is Star!8807) (regTwo!18126 r!23079)))))

(assert (= (and d!833867 c!468751) b!2884940))

(assert (= (and d!833867 (not c!468751)) b!2884943))

(assert (= (and b!2884943 c!468753) b!2884941))

(assert (= (and b!2884943 (not c!468753)) b!2884938))

(assert (= (and b!2884938 c!468752) b!2884951))

(assert (= (and b!2884938 (not c!468752)) b!2884952))

(assert (= (and b!2884952 c!468754) b!2884947))

(assert (= (and b!2884952 (not c!468754)) b!2884942))

(assert (= (and b!2884942 c!468748) b!2884937))

(assert (= (and b!2884942 (not c!468748)) b!2884950))

(assert (= (and b!2884937 c!468750) b!2884949))

(assert (= (and b!2884937 (not c!468750)) b!2884948))

(assert (= (and b!2884950 c!468749) b!2884944))

(assert (= (and b!2884950 (not c!468749)) b!2884946))

(assert (= (and b!2884944 c!468747) b!2884945))

(assert (= (and b!2884944 (not c!468747)) b!2884939))

(assert (= (or b!2884948 b!2884950) bm!187056))

(assert (= (or b!2884937 b!2884944) bm!187057))

(declare-fun m!3300799 () Bool)

(assert (=> bm!187056 m!3300799))

(declare-fun m!3300801 () Bool)

(assert (=> b!2884945 m!3300801))

(declare-fun m!3300803 () Bool)

(assert (=> bm!187057 m!3300803))

(assert (=> b!2884578 d!833867))

(declare-fun b!2884953 () Bool)

(declare-fun e!1824533 () Option!6480)

(declare-fun e!1824539 () Option!6480)

(assert (=> b!2884953 (= e!1824533 e!1824539)))

(declare-fun lt!1020546 () Option!6480)

(declare-fun call!187063 () Option!6480)

(assert (=> b!2884953 (= lt!1020546 call!187063)))

(declare-fun c!468758 () Bool)

(assert (=> b!2884953 (= c!468758 ((_ is Some!6479) lt!1020546))))

(declare-fun b!2884954 () Bool)

(declare-fun c!468760 () Bool)

(assert (=> b!2884954 (= c!468760 ((_ is ElementMatch!8807) (regOne!18126 r!23079)))))

(declare-fun e!1824536 () Option!6480)

(declare-fun e!1824534 () Option!6480)

(assert (=> b!2884954 (= e!1824536 e!1824534)))

(declare-fun b!2884956 () Bool)

(declare-fun e!1824535 () Option!6480)

(assert (=> b!2884956 (= e!1824535 (Some!6479 Nil!34484))))

(declare-fun b!2884957 () Bool)

(assert (=> b!2884957 (= e!1824536 None!6479)))

(declare-fun bm!187058 () Bool)

(declare-fun call!187064 () Option!6480)

(declare-fun c!468756 () Bool)

(assert (=> bm!187058 (= call!187064 (getLanguageWitness!514 (ite c!468756 (regTwo!18127 (regOne!18126 r!23079)) (regOne!18126 (regOne!18126 r!23079)))))))

(declare-fun b!2884958 () Bool)

(assert (=> b!2884958 (= c!468756 ((_ is Union!8807) (regOne!18126 r!23079)))))

(declare-fun e!1824540 () Option!6480)

(assert (=> b!2884958 (= e!1824540 e!1824533)))

(declare-fun b!2884959 () Bool)

(assert (=> b!2884959 (= e!1824535 e!1824536)))

(declare-fun c!468761 () Bool)

(assert (=> b!2884959 (= c!468761 ((_ is EmptyLang!8807) (regOne!18126 r!23079)))))

(declare-fun b!2884960 () Bool)

(declare-fun c!468755 () Bool)

(declare-fun lt!1020544 () Option!6480)

(assert (=> b!2884960 (= c!468755 ((_ is Some!6479) lt!1020544))))

(assert (=> b!2884960 (= lt!1020544 call!187063)))

(declare-fun e!1824537 () Option!6480)

(declare-fun e!1824538 () Option!6480)

(assert (=> b!2884960 (= e!1824537 e!1824538)))

(declare-fun b!2884961 () Bool)

(declare-fun lt!1020545 () Option!6480)

(assert (=> b!2884961 (= e!1824538 (Some!6479 (++!8207 (v!34605 lt!1020545) (v!34605 lt!1020544))))))

(declare-fun b!2884962 () Bool)

(assert (=> b!2884962 (= e!1824537 None!6479)))

(declare-fun b!2884963 () Bool)

(assert (=> b!2884963 (= e!1824540 (Some!6479 Nil!34484))))

(declare-fun bm!187059 () Bool)

(assert (=> bm!187059 (= call!187063 (getLanguageWitness!514 (ite c!468756 (regOne!18127 (regOne!18126 r!23079)) (regTwo!18126 (regOne!18126 r!23079)))))))

(declare-fun b!2884955 () Bool)

(assert (=> b!2884955 (= e!1824538 None!6479)))

(declare-fun d!833869 () Bool)

(declare-fun c!468759 () Bool)

(assert (=> d!833869 (= c!468759 ((_ is EmptyExpr!8807) (regOne!18126 r!23079)))))

(assert (=> d!833869 (= (getLanguageWitness!514 (regOne!18126 r!23079)) e!1824535)))

(declare-fun b!2884964 () Bool)

(assert (=> b!2884964 (= e!1824539 call!187064)))

(declare-fun b!2884965 () Bool)

(assert (=> b!2884965 (= e!1824539 lt!1020546)))

(declare-fun b!2884966 () Bool)

(assert (=> b!2884966 (= e!1824533 e!1824537)))

(assert (=> b!2884966 (= lt!1020545 call!187064)))

(declare-fun c!468757 () Bool)

(assert (=> b!2884966 (= c!468757 ((_ is Some!6479) lt!1020545))))

(declare-fun b!2884967 () Bool)

(assert (=> b!2884967 (= e!1824534 (Some!6479 (Cons!34484 (c!468640 (regOne!18126 r!23079)) Nil!34484)))))

(declare-fun b!2884968 () Bool)

(assert (=> b!2884968 (= e!1824534 e!1824540)))

(declare-fun c!468762 () Bool)

(assert (=> b!2884968 (= c!468762 ((_ is Star!8807) (regOne!18126 r!23079)))))

(assert (= (and d!833869 c!468759) b!2884956))

(assert (= (and d!833869 (not c!468759)) b!2884959))

(assert (= (and b!2884959 c!468761) b!2884957))

(assert (= (and b!2884959 (not c!468761)) b!2884954))

(assert (= (and b!2884954 c!468760) b!2884967))

(assert (= (and b!2884954 (not c!468760)) b!2884968))

(assert (= (and b!2884968 c!468762) b!2884963))

(assert (= (and b!2884968 (not c!468762)) b!2884958))

(assert (= (and b!2884958 c!468756) b!2884953))

(assert (= (and b!2884958 (not c!468756)) b!2884966))

(assert (= (and b!2884953 c!468758) b!2884965))

(assert (= (and b!2884953 (not c!468758)) b!2884964))

(assert (= (and b!2884966 c!468757) b!2884960))

(assert (= (and b!2884966 (not c!468757)) b!2884962))

(assert (= (and b!2884960 c!468755) b!2884961))

(assert (= (and b!2884960 (not c!468755)) b!2884955))

(assert (= (or b!2884964 b!2884966) bm!187058))

(assert (= (or b!2884953 b!2884960) bm!187059))

(declare-fun m!3300805 () Bool)

(assert (=> bm!187058 m!3300805))

(declare-fun m!3300807 () Bool)

(assert (=> b!2884961 m!3300807))

(declare-fun m!3300809 () Bool)

(assert (=> bm!187059 m!3300809))

(assert (=> b!2884579 d!833869))

(declare-fun b!2884981 () Bool)

(declare-fun e!1824543 () Bool)

(declare-fun tp!925248 () Bool)

(assert (=> b!2884981 (= e!1824543 tp!925248)))

(declare-fun b!2884979 () Bool)

(assert (=> b!2884979 (= e!1824543 tp_is_empty!15201)))

(declare-fun b!2884982 () Bool)

(declare-fun tp!925247 () Bool)

(declare-fun tp!925246 () Bool)

(assert (=> b!2884982 (= e!1824543 (and tp!925247 tp!925246))))

(declare-fun b!2884980 () Bool)

(declare-fun tp!925249 () Bool)

(declare-fun tp!925245 () Bool)

(assert (=> b!2884980 (= e!1824543 (and tp!925249 tp!925245))))

(assert (=> b!2884580 (= tp!925196 e!1824543)))

(assert (= (and b!2884580 ((_ is ElementMatch!8807) (reg!9136 r!23079))) b!2884979))

(assert (= (and b!2884580 ((_ is Concat!14128) (reg!9136 r!23079))) b!2884980))

(assert (= (and b!2884580 ((_ is Star!8807) (reg!9136 r!23079))) b!2884981))

(assert (= (and b!2884580 ((_ is Union!8807) (reg!9136 r!23079))) b!2884982))

(declare-fun b!2884985 () Bool)

(declare-fun e!1824544 () Bool)

(declare-fun tp!925253 () Bool)

(assert (=> b!2884985 (= e!1824544 tp!925253)))

(declare-fun b!2884983 () Bool)

(assert (=> b!2884983 (= e!1824544 tp_is_empty!15201)))

(declare-fun b!2884986 () Bool)

(declare-fun tp!925252 () Bool)

(declare-fun tp!925251 () Bool)

(assert (=> b!2884986 (= e!1824544 (and tp!925252 tp!925251))))

(declare-fun b!2884984 () Bool)

(declare-fun tp!925254 () Bool)

(declare-fun tp!925250 () Bool)

(assert (=> b!2884984 (= e!1824544 (and tp!925254 tp!925250))))

(assert (=> b!2884583 (= tp!925199 e!1824544)))

(assert (= (and b!2884583 ((_ is ElementMatch!8807) (regOne!18127 r!23079))) b!2884983))

(assert (= (and b!2884583 ((_ is Concat!14128) (regOne!18127 r!23079))) b!2884984))

(assert (= (and b!2884583 ((_ is Star!8807) (regOne!18127 r!23079))) b!2884985))

(assert (= (and b!2884583 ((_ is Union!8807) (regOne!18127 r!23079))) b!2884986))

(declare-fun b!2884989 () Bool)

(declare-fun e!1824545 () Bool)

(declare-fun tp!925258 () Bool)

(assert (=> b!2884989 (= e!1824545 tp!925258)))

(declare-fun b!2884987 () Bool)

(assert (=> b!2884987 (= e!1824545 tp_is_empty!15201)))

(declare-fun b!2884990 () Bool)

(declare-fun tp!925257 () Bool)

(declare-fun tp!925256 () Bool)

(assert (=> b!2884990 (= e!1824545 (and tp!925257 tp!925256))))

(declare-fun b!2884988 () Bool)

(declare-fun tp!925259 () Bool)

(declare-fun tp!925255 () Bool)

(assert (=> b!2884988 (= e!1824545 (and tp!925259 tp!925255))))

(assert (=> b!2884583 (= tp!925195 e!1824545)))

(assert (= (and b!2884583 ((_ is ElementMatch!8807) (regTwo!18127 r!23079))) b!2884987))

(assert (= (and b!2884583 ((_ is Concat!14128) (regTwo!18127 r!23079))) b!2884988))

(assert (= (and b!2884583 ((_ is Star!8807) (regTwo!18127 r!23079))) b!2884989))

(assert (= (and b!2884583 ((_ is Union!8807) (regTwo!18127 r!23079))) b!2884990))

(declare-fun b!2884993 () Bool)

(declare-fun e!1824546 () Bool)

(declare-fun tp!925263 () Bool)

(assert (=> b!2884993 (= e!1824546 tp!925263)))

(declare-fun b!2884991 () Bool)

(assert (=> b!2884991 (= e!1824546 tp_is_empty!15201)))

(declare-fun b!2884994 () Bool)

(declare-fun tp!925262 () Bool)

(declare-fun tp!925261 () Bool)

(assert (=> b!2884994 (= e!1824546 (and tp!925262 tp!925261))))

(declare-fun b!2884992 () Bool)

(declare-fun tp!925264 () Bool)

(declare-fun tp!925260 () Bool)

(assert (=> b!2884992 (= e!1824546 (and tp!925264 tp!925260))))

(assert (=> b!2884584 (= tp!925197 e!1824546)))

(assert (= (and b!2884584 ((_ is ElementMatch!8807) (regOne!18126 r!23079))) b!2884991))

(assert (= (and b!2884584 ((_ is Concat!14128) (regOne!18126 r!23079))) b!2884992))

(assert (= (and b!2884584 ((_ is Star!8807) (regOne!18126 r!23079))) b!2884993))

(assert (= (and b!2884584 ((_ is Union!8807) (regOne!18126 r!23079))) b!2884994))

(declare-fun b!2884997 () Bool)

(declare-fun e!1824547 () Bool)

(declare-fun tp!925268 () Bool)

(assert (=> b!2884997 (= e!1824547 tp!925268)))

(declare-fun b!2884995 () Bool)

(assert (=> b!2884995 (= e!1824547 tp_is_empty!15201)))

(declare-fun b!2884998 () Bool)

(declare-fun tp!925267 () Bool)

(declare-fun tp!925266 () Bool)

(assert (=> b!2884998 (= e!1824547 (and tp!925267 tp!925266))))

(declare-fun b!2884996 () Bool)

(declare-fun tp!925269 () Bool)

(declare-fun tp!925265 () Bool)

(assert (=> b!2884996 (= e!1824547 (and tp!925269 tp!925265))))

(assert (=> b!2884584 (= tp!925198 e!1824547)))

(assert (= (and b!2884584 ((_ is ElementMatch!8807) (regTwo!18126 r!23079))) b!2884995))

(assert (= (and b!2884584 ((_ is Concat!14128) (regTwo!18126 r!23079))) b!2884996))

(assert (= (and b!2884584 ((_ is Star!8807) (regTwo!18126 r!23079))) b!2884997))

(assert (= (and b!2884584 ((_ is Union!8807) (regTwo!18126 r!23079))) b!2884998))

(check-sat (not b!2884997) (not b!2884765) (not b!2884737) (not d!833849) (not b!2884993) (not b!2884917) (not bm!187055) (not b!2884961) (not b!2884740) (not bm!187056) (not b!2884989) (not b!2884988) (not b!2884981) (not b!2884760) (not b!2884732) (not b!2884605) (not bm!187054) (not bm!187035) (not b!2884990) (not bm!187030) (not b!2884980) (not b!2884985) (not b!2884994) (not b!2884758) tp_is_empty!15201 (not b!2884745) (not b!2884746) (not b!2884751) (not bm!187059) (not b!2884763) (not b!2884945) (not b!2884731) (not b!2884749) (not b!2884992) (not bm!187018) (not b!2884759) (not b!2884998) (not d!833855) (not d!833847) (not b!2884735) (not b!2884986) (not b!2884754) (not b!2884996) (not b!2884982) (not d!833857) (not bm!187058) (not d!833829) (not b!2884768) (not b!2884744) (not d!833833) (not b!2884984) (not bm!187020) (not bm!187036) (not bm!187057) (not b!2884730))
(check-sat)
