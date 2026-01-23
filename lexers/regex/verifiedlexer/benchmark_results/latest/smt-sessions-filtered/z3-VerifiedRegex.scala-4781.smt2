; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246412 () Bool)

(assert start!246412)

(declare-fun b!2531122 () Bool)

(declare-fun e!1601712 () Bool)

(declare-fun tp_is_empty!12929 () Bool)

(assert (=> b!2531122 (= e!1601712 tp_is_empty!12929)))

(declare-fun b!2531123 () Bool)

(declare-fun res!1068616 () Bool)

(declare-fun e!1601709 () Bool)

(assert (=> b!2531123 (=> (not res!1068616) (not e!1601709))))

(declare-datatypes ((C!15232 0))(
  ( (C!15233 (val!9268 Int)) )
))
(declare-datatypes ((Regex!7537 0))(
  ( (ElementMatch!7537 (c!404319 C!15232)) (Concat!12233 (regOne!15586 Regex!7537) (regTwo!15586 Regex!7537)) (EmptyExpr!7537) (Star!7537 (reg!7866 Regex!7537)) (EmptyLang!7537) (Union!7537 (regOne!15587 Regex!7537) (regTwo!15587 Regex!7537)) )
))
(declare-fun lt!901194 () Regex!7537)

(declare-fun r!27340 () Regex!7537)

(declare-fun c!14016 () C!15232)

(get-info :version)

(assert (=> b!2531123 (= res!1068616 (and (not ((_ is EmptyExpr!7537) r!27340)) (not ((_ is EmptyLang!7537) r!27340)) ((_ is ElementMatch!7537) r!27340) (= c!14016 (c!404319 r!27340)) (= lt!901194 EmptyExpr!7537)))))

(declare-fun res!1068613 () Bool)

(declare-fun e!1601711 () Bool)

(assert (=> start!246412 (=> (not res!1068613) (not e!1601711))))

(declare-fun validRegex!3163 (Regex!7537) Bool)

(assert (=> start!246412 (= res!1068613 (validRegex!3163 r!27340))))

(assert (=> start!246412 e!1601711))

(assert (=> start!246412 e!1601712))

(assert (=> start!246412 tp_is_empty!12929))

(declare-fun e!1601710 () Bool)

(assert (=> start!246412 e!1601710))

(declare-fun b!2531124 () Bool)

(declare-fun res!1068615 () Bool)

(assert (=> b!2531124 (=> (not res!1068615) (not e!1601709))))

(declare-datatypes ((List!29602 0))(
  ( (Nil!29502) (Cons!29502 (h!34922 C!15232) (t!211301 List!29602)) )
))
(declare-fun tl!4068 () List!29602)

(declare-fun isEmpty!16972 (List!29602) Bool)

(assert (=> b!2531124 (= res!1068615 (not (isEmpty!16972 tl!4068)))))

(declare-fun b!2531125 () Bool)

(declare-fun tp!808265 () Bool)

(assert (=> b!2531125 (= e!1601710 (and tp_is_empty!12929 tp!808265))))

(declare-fun b!2531126 () Bool)

(declare-fun tp!808264 () Bool)

(declare-fun tp!808262 () Bool)

(assert (=> b!2531126 (= e!1601712 (and tp!808264 tp!808262))))

(declare-fun b!2531127 () Bool)

(declare-fun derivativeStep!2106 (Regex!7537 C!15232) Regex!7537)

(declare-fun head!5776 (List!29602) C!15232)

(assert (=> b!2531127 (= e!1601709 (not (= (derivativeStep!2106 lt!901194 (head!5776 tl!4068)) EmptyLang!7537)))))

(declare-fun b!2531128 () Bool)

(assert (=> b!2531128 (= e!1601711 e!1601709)))

(declare-fun res!1068614 () Bool)

(assert (=> b!2531128 (=> (not res!1068614) (not e!1601709))))

(declare-fun nullable!2454 (Regex!7537) Bool)

(declare-fun derivative!232 (Regex!7537 List!29602) Regex!7537)

(assert (=> b!2531128 (= res!1068614 (nullable!2454 (derivative!232 lt!901194 tl!4068)))))

(assert (=> b!2531128 (= lt!901194 (derivativeStep!2106 r!27340 c!14016))))

(declare-fun b!2531129 () Bool)

(declare-fun tp!808263 () Bool)

(assert (=> b!2531129 (= e!1601712 tp!808263)))

(declare-fun b!2531130 () Bool)

(declare-fun tp!808261 () Bool)

(declare-fun tp!808266 () Bool)

(assert (=> b!2531130 (= e!1601712 (and tp!808261 tp!808266))))

(assert (= (and start!246412 res!1068613) b!2531128))

(assert (= (and b!2531128 res!1068614) b!2531123))

(assert (= (and b!2531123 res!1068616) b!2531124))

(assert (= (and b!2531124 res!1068615) b!2531127))

(assert (= (and start!246412 ((_ is ElementMatch!7537) r!27340)) b!2531122))

(assert (= (and start!246412 ((_ is Concat!12233) r!27340)) b!2531126))

(assert (= (and start!246412 ((_ is Star!7537) r!27340)) b!2531129))

(assert (= (and start!246412 ((_ is Union!7537) r!27340)) b!2531130))

(assert (= (and start!246412 ((_ is Cons!29502) tl!4068)) b!2531125))

(declare-fun m!2882211 () Bool)

(assert (=> start!246412 m!2882211))

(declare-fun m!2882213 () Bool)

(assert (=> b!2531124 m!2882213))

(declare-fun m!2882215 () Bool)

(assert (=> b!2531127 m!2882215))

(assert (=> b!2531127 m!2882215))

(declare-fun m!2882217 () Bool)

(assert (=> b!2531127 m!2882217))

(declare-fun m!2882219 () Bool)

(assert (=> b!2531128 m!2882219))

(assert (=> b!2531128 m!2882219))

(declare-fun m!2882221 () Bool)

(assert (=> b!2531128 m!2882221))

(declare-fun m!2882223 () Bool)

(assert (=> b!2531128 m!2882223))

(check-sat (not b!2531129) (not start!246412) (not b!2531130) (not b!2531127) (not b!2531124) (not b!2531125) (not b!2531128) tp_is_empty!12929 (not b!2531126))
(check-sat)
(get-model)

(declare-fun bm!158607 () Bool)

(declare-fun call!158614 () Bool)

(declare-fun c!404346 () Bool)

(assert (=> bm!158607 (= call!158614 (validRegex!3163 (ite c!404346 (regOne!15587 r!27340) (regTwo!15586 r!27340))))))

(declare-fun b!2531203 () Bool)

(declare-fun res!1068641 () Bool)

(declare-fun e!1601762 () Bool)

(assert (=> b!2531203 (=> res!1068641 e!1601762)))

(assert (=> b!2531203 (= res!1068641 (not ((_ is Concat!12233) r!27340)))))

(declare-fun e!1601761 () Bool)

(assert (=> b!2531203 (= e!1601761 e!1601762)))

(declare-fun b!2531204 () Bool)

(declare-fun e!1601765 () Bool)

(declare-fun e!1601764 () Bool)

(assert (=> b!2531204 (= e!1601765 e!1601764)))

(declare-fun res!1068639 () Bool)

(assert (=> b!2531204 (= res!1068639 (not (nullable!2454 (reg!7866 r!27340))))))

(assert (=> b!2531204 (=> (not res!1068639) (not e!1601764))))

(declare-fun b!2531205 () Bool)

(declare-fun e!1601759 () Bool)

(assert (=> b!2531205 (= e!1601762 e!1601759)))

(declare-fun res!1068637 () Bool)

(assert (=> b!2531205 (=> (not res!1068637) (not e!1601759))))

(declare-fun call!158612 () Bool)

(assert (=> b!2531205 (= res!1068637 call!158612)))

(declare-fun b!2531206 () Bool)

(declare-fun e!1601763 () Bool)

(assert (=> b!2531206 (= e!1601763 e!1601765)))

(declare-fun c!404347 () Bool)

(assert (=> b!2531206 (= c!404347 ((_ is Star!7537) r!27340))))

(declare-fun bm!158608 () Bool)

(declare-fun call!158613 () Bool)

(assert (=> bm!158608 (= call!158613 (validRegex!3163 (ite c!404347 (reg!7866 r!27340) (ite c!404346 (regTwo!15587 r!27340) (regOne!15586 r!27340)))))))

(declare-fun b!2531207 () Bool)

(declare-fun e!1601760 () Bool)

(assert (=> b!2531207 (= e!1601760 call!158612)))

(declare-fun b!2531208 () Bool)

(assert (=> b!2531208 (= e!1601765 e!1601761)))

(assert (=> b!2531208 (= c!404346 ((_ is Union!7537) r!27340))))

(declare-fun bm!158609 () Bool)

(assert (=> bm!158609 (= call!158612 call!158613)))

(declare-fun d!719902 () Bool)

(declare-fun res!1068640 () Bool)

(assert (=> d!719902 (=> res!1068640 e!1601763)))

(assert (=> d!719902 (= res!1068640 ((_ is ElementMatch!7537) r!27340))))

(assert (=> d!719902 (= (validRegex!3163 r!27340) e!1601763)))

(declare-fun b!2531209 () Bool)

(declare-fun res!1068638 () Bool)

(assert (=> b!2531209 (=> (not res!1068638) (not e!1601760))))

(assert (=> b!2531209 (= res!1068638 call!158614)))

(assert (=> b!2531209 (= e!1601761 e!1601760)))

(declare-fun b!2531210 () Bool)

(assert (=> b!2531210 (= e!1601764 call!158613)))

(declare-fun b!2531211 () Bool)

(assert (=> b!2531211 (= e!1601759 call!158614)))

(assert (= (and d!719902 (not res!1068640)) b!2531206))

(assert (= (and b!2531206 c!404347) b!2531204))

(assert (= (and b!2531206 (not c!404347)) b!2531208))

(assert (= (and b!2531204 res!1068639) b!2531210))

(assert (= (and b!2531208 c!404346) b!2531209))

(assert (= (and b!2531208 (not c!404346)) b!2531203))

(assert (= (and b!2531209 res!1068638) b!2531207))

(assert (= (and b!2531203 (not res!1068641)) b!2531205))

(assert (= (and b!2531205 res!1068637) b!2531211))

(assert (= (or b!2531209 b!2531211) bm!158607))

(assert (= (or b!2531207 b!2531205) bm!158609))

(assert (= (or b!2531210 bm!158609) bm!158608))

(declare-fun m!2882243 () Bool)

(assert (=> bm!158607 m!2882243))

(declare-fun m!2882245 () Bool)

(assert (=> b!2531204 m!2882245))

(declare-fun m!2882247 () Bool)

(assert (=> bm!158608 m!2882247))

(assert (=> start!246412 d!719902))

(declare-fun b!2531286 () Bool)

(declare-fun e!1601800 () Regex!7537)

(assert (=> b!2531286 (= e!1601800 EmptyLang!7537)))

(declare-fun call!158633 () Regex!7537)

(declare-fun c!404365 () Bool)

(declare-fun c!404367 () Bool)

(declare-fun bm!158627 () Bool)

(assert (=> bm!158627 (= call!158633 (derivativeStep!2106 (ite c!404367 (regOne!15587 lt!901194) (ite c!404365 (reg!7866 lt!901194) (regOne!15586 lt!901194))) (head!5776 tl!4068)))))

(declare-fun b!2531287 () Bool)

(declare-fun e!1601799 () Regex!7537)

(declare-fun call!158632 () Regex!7537)

(declare-fun call!158634 () Regex!7537)

(assert (=> b!2531287 (= e!1601799 (Union!7537 (Concat!12233 call!158632 (regTwo!15586 lt!901194)) call!158634))))

(declare-fun b!2531288 () Bool)

(declare-fun e!1601801 () Regex!7537)

(assert (=> b!2531288 (= e!1601801 (Union!7537 call!158633 call!158634))))

(declare-fun bm!158628 () Bool)

(declare-fun call!158635 () Regex!7537)

(assert (=> bm!158628 (= call!158635 call!158633)))

(declare-fun bm!158629 () Bool)

(assert (=> bm!158629 (= call!158634 (derivativeStep!2106 (ite c!404367 (regTwo!15587 lt!901194) (regTwo!15586 lt!901194)) (head!5776 tl!4068)))))

(declare-fun b!2531289 () Bool)

(declare-fun e!1601802 () Regex!7537)

(assert (=> b!2531289 (= e!1601800 e!1601802)))

(declare-fun c!404368 () Bool)

(assert (=> b!2531289 (= c!404368 ((_ is ElementMatch!7537) lt!901194))))

(declare-fun d!719908 () Bool)

(declare-fun lt!901204 () Regex!7537)

(assert (=> d!719908 (validRegex!3163 lt!901204)))

(assert (=> d!719908 (= lt!901204 e!1601800)))

(declare-fun c!404366 () Bool)

(assert (=> d!719908 (= c!404366 (or ((_ is EmptyExpr!7537) lt!901194) ((_ is EmptyLang!7537) lt!901194)))))

(assert (=> d!719908 (validRegex!3163 lt!901194)))

(assert (=> d!719908 (= (derivativeStep!2106 lt!901194 (head!5776 tl!4068)) lt!901204)))

(declare-fun b!2531290 () Bool)

(assert (=> b!2531290 (= e!1601802 (ite (= (head!5776 tl!4068) (c!404319 lt!901194)) EmptyExpr!7537 EmptyLang!7537))))

(declare-fun b!2531291 () Bool)

(declare-fun e!1601798 () Regex!7537)

(assert (=> b!2531291 (= e!1601801 e!1601798)))

(assert (=> b!2531291 (= c!404365 ((_ is Star!7537) lt!901194))))

(declare-fun b!2531292 () Bool)

(assert (=> b!2531292 (= e!1601799 (Union!7537 (Concat!12233 call!158632 (regTwo!15586 lt!901194)) EmptyLang!7537))))

(declare-fun b!2531293 () Bool)

(assert (=> b!2531293 (= e!1601798 (Concat!12233 call!158635 lt!901194))))

(declare-fun b!2531294 () Bool)

(assert (=> b!2531294 (= c!404367 ((_ is Union!7537) lt!901194))))

(assert (=> b!2531294 (= e!1601802 e!1601801)))

(declare-fun b!2531295 () Bool)

(declare-fun c!404369 () Bool)

(assert (=> b!2531295 (= c!404369 (nullable!2454 (regOne!15586 lt!901194)))))

(assert (=> b!2531295 (= e!1601798 e!1601799)))

(declare-fun bm!158630 () Bool)

(assert (=> bm!158630 (= call!158632 call!158635)))

(assert (= (and d!719908 c!404366) b!2531286))

(assert (= (and d!719908 (not c!404366)) b!2531289))

(assert (= (and b!2531289 c!404368) b!2531290))

(assert (= (and b!2531289 (not c!404368)) b!2531294))

(assert (= (and b!2531294 c!404367) b!2531288))

(assert (= (and b!2531294 (not c!404367)) b!2531291))

(assert (= (and b!2531291 c!404365) b!2531293))

(assert (= (and b!2531291 (not c!404365)) b!2531295))

(assert (= (and b!2531295 c!404369) b!2531287))

(assert (= (and b!2531295 (not c!404369)) b!2531292))

(assert (= (or b!2531287 b!2531292) bm!158630))

(assert (= (or b!2531293 bm!158630) bm!158628))

(assert (= (or b!2531288 b!2531287) bm!158629))

(assert (= (or b!2531288 bm!158628) bm!158627))

(assert (=> bm!158627 m!2882215))

(declare-fun m!2882263 () Bool)

(assert (=> bm!158627 m!2882263))

(assert (=> bm!158629 m!2882215))

(declare-fun m!2882265 () Bool)

(assert (=> bm!158629 m!2882265))

(declare-fun m!2882267 () Bool)

(assert (=> d!719908 m!2882267))

(declare-fun m!2882269 () Bool)

(assert (=> d!719908 m!2882269))

(declare-fun m!2882271 () Bool)

(assert (=> b!2531295 m!2882271))

(assert (=> b!2531127 d!719908))

(declare-fun d!719916 () Bool)

(assert (=> d!719916 (= (head!5776 tl!4068) (h!34922 tl!4068))))

(assert (=> b!2531127 d!719916))

(declare-fun d!719918 () Bool)

(declare-fun nullableFct!690 (Regex!7537) Bool)

(assert (=> d!719918 (= (nullable!2454 (derivative!232 lt!901194 tl!4068)) (nullableFct!690 (derivative!232 lt!901194 tl!4068)))))

(declare-fun bs!469207 () Bool)

(assert (= bs!469207 d!719918))

(assert (=> bs!469207 m!2882219))

(declare-fun m!2882273 () Bool)

(assert (=> bs!469207 m!2882273))

(assert (=> b!2531128 d!719918))

(declare-fun d!719920 () Bool)

(declare-fun lt!901207 () Regex!7537)

(assert (=> d!719920 (validRegex!3163 lt!901207)))

(declare-fun e!1601805 () Regex!7537)

(assert (=> d!719920 (= lt!901207 e!1601805)))

(declare-fun c!404372 () Bool)

(assert (=> d!719920 (= c!404372 ((_ is Cons!29502) tl!4068))))

(assert (=> d!719920 (validRegex!3163 lt!901194)))

(assert (=> d!719920 (= (derivative!232 lt!901194 tl!4068) lt!901207)))

(declare-fun b!2531300 () Bool)

(assert (=> b!2531300 (= e!1601805 (derivative!232 (derivativeStep!2106 lt!901194 (h!34922 tl!4068)) (t!211301 tl!4068)))))

(declare-fun b!2531301 () Bool)

(assert (=> b!2531301 (= e!1601805 lt!901194)))

(assert (= (and d!719920 c!404372) b!2531300))

(assert (= (and d!719920 (not c!404372)) b!2531301))

(declare-fun m!2882275 () Bool)

(assert (=> d!719920 m!2882275))

(assert (=> d!719920 m!2882269))

(declare-fun m!2882277 () Bool)

(assert (=> b!2531300 m!2882277))

(assert (=> b!2531300 m!2882277))

(declare-fun m!2882279 () Bool)

(assert (=> b!2531300 m!2882279))

(assert (=> b!2531128 d!719920))

(declare-fun b!2531302 () Bool)

(declare-fun e!1601808 () Regex!7537)

(assert (=> b!2531302 (= e!1601808 EmptyLang!7537)))

(declare-fun c!404375 () Bool)

(declare-fun call!158637 () Regex!7537)

(declare-fun c!404373 () Bool)

(declare-fun bm!158631 () Bool)

(assert (=> bm!158631 (= call!158637 (derivativeStep!2106 (ite c!404375 (regOne!15587 r!27340) (ite c!404373 (reg!7866 r!27340) (regOne!15586 r!27340))) c!14016))))

(declare-fun e!1601807 () Regex!7537)

(declare-fun call!158636 () Regex!7537)

(declare-fun call!158638 () Regex!7537)

(declare-fun b!2531303 () Bool)

(assert (=> b!2531303 (= e!1601807 (Union!7537 (Concat!12233 call!158636 (regTwo!15586 r!27340)) call!158638))))

(declare-fun b!2531304 () Bool)

(declare-fun e!1601809 () Regex!7537)

(assert (=> b!2531304 (= e!1601809 (Union!7537 call!158637 call!158638))))

(declare-fun bm!158632 () Bool)

(declare-fun call!158639 () Regex!7537)

(assert (=> bm!158632 (= call!158639 call!158637)))

(declare-fun bm!158633 () Bool)

(assert (=> bm!158633 (= call!158638 (derivativeStep!2106 (ite c!404375 (regTwo!15587 r!27340) (regTwo!15586 r!27340)) c!14016))))

(declare-fun b!2531305 () Bool)

(declare-fun e!1601810 () Regex!7537)

(assert (=> b!2531305 (= e!1601808 e!1601810)))

(declare-fun c!404376 () Bool)

(assert (=> b!2531305 (= c!404376 ((_ is ElementMatch!7537) r!27340))))

(declare-fun d!719922 () Bool)

(declare-fun lt!901208 () Regex!7537)

(assert (=> d!719922 (validRegex!3163 lt!901208)))

(assert (=> d!719922 (= lt!901208 e!1601808)))

(declare-fun c!404374 () Bool)

(assert (=> d!719922 (= c!404374 (or ((_ is EmptyExpr!7537) r!27340) ((_ is EmptyLang!7537) r!27340)))))

(assert (=> d!719922 (validRegex!3163 r!27340)))

(assert (=> d!719922 (= (derivativeStep!2106 r!27340 c!14016) lt!901208)))

(declare-fun b!2531306 () Bool)

(assert (=> b!2531306 (= e!1601810 (ite (= c!14016 (c!404319 r!27340)) EmptyExpr!7537 EmptyLang!7537))))

(declare-fun b!2531307 () Bool)

(declare-fun e!1601806 () Regex!7537)

(assert (=> b!2531307 (= e!1601809 e!1601806)))

(assert (=> b!2531307 (= c!404373 ((_ is Star!7537) r!27340))))

(declare-fun b!2531308 () Bool)

(assert (=> b!2531308 (= e!1601807 (Union!7537 (Concat!12233 call!158636 (regTwo!15586 r!27340)) EmptyLang!7537))))

(declare-fun b!2531309 () Bool)

(assert (=> b!2531309 (= e!1601806 (Concat!12233 call!158639 r!27340))))

(declare-fun b!2531310 () Bool)

(assert (=> b!2531310 (= c!404375 ((_ is Union!7537) r!27340))))

(assert (=> b!2531310 (= e!1601810 e!1601809)))

(declare-fun b!2531311 () Bool)

(declare-fun c!404377 () Bool)

(assert (=> b!2531311 (= c!404377 (nullable!2454 (regOne!15586 r!27340)))))

(assert (=> b!2531311 (= e!1601806 e!1601807)))

(declare-fun bm!158634 () Bool)

(assert (=> bm!158634 (= call!158636 call!158639)))

(assert (= (and d!719922 c!404374) b!2531302))

(assert (= (and d!719922 (not c!404374)) b!2531305))

(assert (= (and b!2531305 c!404376) b!2531306))

(assert (= (and b!2531305 (not c!404376)) b!2531310))

(assert (= (and b!2531310 c!404375) b!2531304))

(assert (= (and b!2531310 (not c!404375)) b!2531307))

(assert (= (and b!2531307 c!404373) b!2531309))

(assert (= (and b!2531307 (not c!404373)) b!2531311))

(assert (= (and b!2531311 c!404377) b!2531303))

(assert (= (and b!2531311 (not c!404377)) b!2531308))

(assert (= (or b!2531303 b!2531308) bm!158634))

(assert (= (or b!2531309 bm!158634) bm!158632))

(assert (= (or b!2531304 b!2531303) bm!158633))

(assert (= (or b!2531304 bm!158632) bm!158631))

(declare-fun m!2882281 () Bool)

(assert (=> bm!158631 m!2882281))

(declare-fun m!2882283 () Bool)

(assert (=> bm!158633 m!2882283))

(declare-fun m!2882285 () Bool)

(assert (=> d!719922 m!2882285))

(assert (=> d!719922 m!2882211))

(declare-fun m!2882287 () Bool)

(assert (=> b!2531311 m!2882287))

(assert (=> b!2531128 d!719922))

(declare-fun d!719924 () Bool)

(assert (=> d!719924 (= (isEmpty!16972 tl!4068) ((_ is Nil!29502) tl!4068))))

(assert (=> b!2531124 d!719924))

(declare-fun e!1601813 () Bool)

(assert (=> b!2531130 (= tp!808261 e!1601813)))

(declare-fun b!2531324 () Bool)

(declare-fun tp!808317 () Bool)

(assert (=> b!2531324 (= e!1601813 tp!808317)))

(declare-fun b!2531323 () Bool)

(declare-fun tp!808318 () Bool)

(declare-fun tp!808319 () Bool)

(assert (=> b!2531323 (= e!1601813 (and tp!808318 tp!808319))))

(declare-fun b!2531322 () Bool)

(assert (=> b!2531322 (= e!1601813 tp_is_empty!12929)))

(declare-fun b!2531325 () Bool)

(declare-fun tp!808316 () Bool)

(declare-fun tp!808315 () Bool)

(assert (=> b!2531325 (= e!1601813 (and tp!808316 tp!808315))))

(assert (= (and b!2531130 ((_ is ElementMatch!7537) (regOne!15587 r!27340))) b!2531322))

(assert (= (and b!2531130 ((_ is Concat!12233) (regOne!15587 r!27340))) b!2531323))

(assert (= (and b!2531130 ((_ is Star!7537) (regOne!15587 r!27340))) b!2531324))

(assert (= (and b!2531130 ((_ is Union!7537) (regOne!15587 r!27340))) b!2531325))

(declare-fun e!1601814 () Bool)

(assert (=> b!2531130 (= tp!808266 e!1601814)))

(declare-fun b!2531328 () Bool)

(declare-fun tp!808322 () Bool)

(assert (=> b!2531328 (= e!1601814 tp!808322)))

(declare-fun b!2531327 () Bool)

(declare-fun tp!808323 () Bool)

(declare-fun tp!808324 () Bool)

(assert (=> b!2531327 (= e!1601814 (and tp!808323 tp!808324))))

(declare-fun b!2531326 () Bool)

(assert (=> b!2531326 (= e!1601814 tp_is_empty!12929)))

(declare-fun b!2531329 () Bool)

(declare-fun tp!808321 () Bool)

(declare-fun tp!808320 () Bool)

(assert (=> b!2531329 (= e!1601814 (and tp!808321 tp!808320))))

(assert (= (and b!2531130 ((_ is ElementMatch!7537) (regTwo!15587 r!27340))) b!2531326))

(assert (= (and b!2531130 ((_ is Concat!12233) (regTwo!15587 r!27340))) b!2531327))

(assert (= (and b!2531130 ((_ is Star!7537) (regTwo!15587 r!27340))) b!2531328))

(assert (= (and b!2531130 ((_ is Union!7537) (regTwo!15587 r!27340))) b!2531329))

(declare-fun b!2531334 () Bool)

(declare-fun e!1601817 () Bool)

(declare-fun tp!808327 () Bool)

(assert (=> b!2531334 (= e!1601817 (and tp_is_empty!12929 tp!808327))))

(assert (=> b!2531125 (= tp!808265 e!1601817)))

(assert (= (and b!2531125 ((_ is Cons!29502) (t!211301 tl!4068))) b!2531334))

(declare-fun e!1601818 () Bool)

(assert (=> b!2531126 (= tp!808264 e!1601818)))

(declare-fun b!2531337 () Bool)

(declare-fun tp!808330 () Bool)

(assert (=> b!2531337 (= e!1601818 tp!808330)))

(declare-fun b!2531336 () Bool)

(declare-fun tp!808331 () Bool)

(declare-fun tp!808332 () Bool)

(assert (=> b!2531336 (= e!1601818 (and tp!808331 tp!808332))))

(declare-fun b!2531335 () Bool)

(assert (=> b!2531335 (= e!1601818 tp_is_empty!12929)))

(declare-fun b!2531338 () Bool)

(declare-fun tp!808329 () Bool)

(declare-fun tp!808328 () Bool)

(assert (=> b!2531338 (= e!1601818 (and tp!808329 tp!808328))))

(assert (= (and b!2531126 ((_ is ElementMatch!7537) (regOne!15586 r!27340))) b!2531335))

(assert (= (and b!2531126 ((_ is Concat!12233) (regOne!15586 r!27340))) b!2531336))

(assert (= (and b!2531126 ((_ is Star!7537) (regOne!15586 r!27340))) b!2531337))

(assert (= (and b!2531126 ((_ is Union!7537) (regOne!15586 r!27340))) b!2531338))

(declare-fun e!1601819 () Bool)

(assert (=> b!2531126 (= tp!808262 e!1601819)))

(declare-fun b!2531341 () Bool)

(declare-fun tp!808335 () Bool)

(assert (=> b!2531341 (= e!1601819 tp!808335)))

(declare-fun b!2531340 () Bool)

(declare-fun tp!808336 () Bool)

(declare-fun tp!808337 () Bool)

(assert (=> b!2531340 (= e!1601819 (and tp!808336 tp!808337))))

(declare-fun b!2531339 () Bool)

(assert (=> b!2531339 (= e!1601819 tp_is_empty!12929)))

(declare-fun b!2531342 () Bool)

(declare-fun tp!808334 () Bool)

(declare-fun tp!808333 () Bool)

(assert (=> b!2531342 (= e!1601819 (and tp!808334 tp!808333))))

(assert (= (and b!2531126 ((_ is ElementMatch!7537) (regTwo!15586 r!27340))) b!2531339))

(assert (= (and b!2531126 ((_ is Concat!12233) (regTwo!15586 r!27340))) b!2531340))

(assert (= (and b!2531126 ((_ is Star!7537) (regTwo!15586 r!27340))) b!2531341))

(assert (= (and b!2531126 ((_ is Union!7537) (regTwo!15586 r!27340))) b!2531342))

(declare-fun e!1601820 () Bool)

(assert (=> b!2531129 (= tp!808263 e!1601820)))

(declare-fun b!2531345 () Bool)

(declare-fun tp!808340 () Bool)

(assert (=> b!2531345 (= e!1601820 tp!808340)))

(declare-fun b!2531344 () Bool)

(declare-fun tp!808341 () Bool)

(declare-fun tp!808342 () Bool)

(assert (=> b!2531344 (= e!1601820 (and tp!808341 tp!808342))))

(declare-fun b!2531343 () Bool)

(assert (=> b!2531343 (= e!1601820 tp_is_empty!12929)))

(declare-fun b!2531346 () Bool)

(declare-fun tp!808339 () Bool)

(declare-fun tp!808338 () Bool)

(assert (=> b!2531346 (= e!1601820 (and tp!808339 tp!808338))))

(assert (= (and b!2531129 ((_ is ElementMatch!7537) (reg!7866 r!27340))) b!2531343))

(assert (= (and b!2531129 ((_ is Concat!12233) (reg!7866 r!27340))) b!2531344))

(assert (= (and b!2531129 ((_ is Star!7537) (reg!7866 r!27340))) b!2531345))

(assert (= (and b!2531129 ((_ is Union!7537) (reg!7866 r!27340))) b!2531346))

(check-sat (not b!2531324) (not b!2531345) (not b!2531204) (not d!719908) (not d!719918) (not bm!158631) (not b!2531325) (not b!2531346) (not b!2531336) (not b!2531337) (not b!2531342) (not b!2531329) (not bm!158629) (not bm!158627) (not b!2531338) (not d!719920) (not b!2531311) tp_is_empty!12929 (not b!2531334) (not b!2531344) (not b!2531327) (not b!2531323) (not bm!158608) (not b!2531328) (not b!2531295) (not bm!158607) (not d!719922) (not b!2531300) (not b!2531341) (not b!2531340) (not bm!158633))
(check-sat)
